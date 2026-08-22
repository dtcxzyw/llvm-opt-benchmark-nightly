Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-other?download=true
inline.NumInlined: 11065
inline.NumDeleted: 4620
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZNK2OT4glyf6subsetEP19hb_subset_context_t:bb.a
  %i.jr = add i32 %i.jq, %.03243.i39.i            ; 2 uses
  %i.js = call i32 @llvm.bswap.i32(i32 %i.jr)     ; 3 uses
  store i32 %i.js, ptr %.1.lcssa.i44.i, align 1, !tbaa !355
  %i.jt = add i32 %.130.lcssa.i43.i, 1            ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.02845.i37.i, i64 8 ; 2 uses
  %.0.i50.i = getelementptr inbounds nuw i8, ptr %.1.lcssa.i44.i, i64 4 ; 2 uses
  %.not.i51.i = icmp eq ptr %i.ju, %i.ip
  br i1 %.not.i51.i, label %._crit_edge49.i52.i, label %.lr.ph48.i34.i

.lr.ph56.i56.i:                                   ; preds = %.lr.ph56.i56.i.preheader385, %.lr.ph56.i56.i
  %.254.i57.i = phi ptr [ %i.jv, %.lr.ph56.i56.i ], [ %.254.i57.i.ph, %.lr.ph56.i56.i.preheader385 ] ; 2 uses
  %.23153.i58.i = phi i32 [ %i.jw, %.lr.ph56.i56.i ], [ %.23153.i58.i.ph, %.lr.ph56.i56.i.preheader385 ]
  %i.jv = getelementptr inbounds nuw i8, ptr %.254.i57.i, i64 4
  store i32 %.sroa.033.0.lcssa.i53.i, ptr %.254.i57.i, align 1, !tbaa !355
  %i.jw = add nuw i32 %.23153.i58.i, 1            ; 2 uses
  %exitcond62.not.i59.i = icmp eq i32 %i.jw, %i.fp
  br i1 %exitcond62.not.i59.i, label %_ZN2OT9glyf_implL11_write_locaIR10hb_array_tIKjENS_7NumTypeILb1EjLj4EEETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_jEE5valueEvE4typeELPv0EEEvOS9_11hb_vector_tI9hb_pair_tIjjELb1EEbPT0_j.exit.i, label %.lr.ph56.i56.i, !llvm.loop !380

_ZN2OT9glyf_implL11_write_locaIR10hb_array_tIKjENS_7NumTypeILb1EjLj4EEETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_jEE5valueEvE4typeELPv0EEEvOS9_11hb_vector_tI9hb_pair_tIjjELb1EEbPT0_j.exit.i: ; preds = %.lr.ph56.i56.i, %middle.block322, %._crit_edge49.i52.i
  %i.jx = add nsw i32 %.sroa.0.0157166.i, -1
  %spec.select.i.i.i64.i = icmp ult i32 %i.jx, -2
  br i1 %spec.select.i.i.i64.i, label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EED2Ev.exit.sink.split.i, label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EED2Ev.exit.i

_ZN11hb_vector_tI9hb_pair_tIjjELb1EED2Ev.exit.sink.split.i: ; preds = %_ZN2OT9glyf_implL11_write_locaIR10hb_array_tIKjENS_7NumTypeILb1EjLj4EEETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_jEE5valueEvE4typeELPv0EEEvOS9_11hb_vector_tI9hb_pair_tIjjELb1EEbPT0_j.exit.i, %_ZN2OT9glyf_implL11_write_locaIR10hb_array_tIKjENS_7NumTypeILb1EtLj2EEETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_jEE5valueEvE4typeELPv0EEEvOS9_11hb_vector_tI9hb_pair_tIjjELb1EEbPT0_j.exit.i
  %.sroa.13.1158165.sink.i = phi ptr [ %.sroa.13122.1146153.i, %_ZN2OT9glyf_implL11_write_locaIR10hb_array_tIKjENS_7NumTypeILb1EtLj2EEETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_jEE5valueEvE4typeELPv0EEEvOS9_11hb_vector_tI9hb_pair_tIjjELb1EEbPT0_j.exit.i ], [ %.sroa.13.1158165.i, %_ZN2OT9glyf_implL11_write_locaIR10hb_array_tIKjENS_7NumTypeILb1EjLj4EEETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_jEE5valueEvE4typeELPv0EEEvOS9_11hb_vector_tI9hb_pair_tIjjELb1EEbPT0_j.exit.i ]
  call void @hb_free(ptr noundef %.sroa.13.1158165.sink.i) #15
  br label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EED2Ev.exit.i

_ZN11hb_vector_tI9hb_pair_tIjjELb1EED2Ev.exit.i:  ; preds = %_ZN11hb_vector_tI9hb_pair_tIjjELb1EED2Ev.exit.sink.split.i, %_ZN2OT9glyf_implL11_write_locaIR10hb_array_tIKjENS_7NumTypeILb1EjLj4EEETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_jEE5valueEvE4typeELPv0EEEvOS9_11hb_vector_tI9hb_pair_tIjjELb1EEbPT0_j.exit.i, %_ZN2OT9glyf_implL11_write_locaIR10hb_array_tIKjENS_7NumTypeILb1EtLj2EEETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_jEE5valueEvE4typeELPv0EEEvOS9_11hb_vector_tI9hb_pair_tIjjELb1EEbPT0_j.exit.i
  %i.jy = call ptr @hb_blob_create(ptr noundef nonnull %i.fu, i32 noundef %i.fw, i32 noundef 2, ptr noundef nonnull %i.fu, ptr noundef nonnull @hb_free) #15 ; 2 uses
  %i.jz = load ptr, ptr %i.b, align 8, !tbaa !128
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 80
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !143
  %i.kc = call i32 @hb_face_builder_add_table(ptr noundef %i.kb, i32 noundef 1819239265, ptr noundef %i.jy) #15
  %.not167.i = icmp eq i32 %i.kc, 0
  br i1 %.not167.i, label %_ZN2OT9glyf_implL30_add_head_and_set_loca_versionEP16hb_subset_plan_tb.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZN11hb_vector_tI9hb_pair_tIjjELb1EED2Ev.exit.i
  %i.kd = load ptr, ptr %i.b, align 8, !tbaa !128 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store i32 0, ptr %2, align 8, !tbaa !381
  %i.ke = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kf = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr null, ptr %i.kf, align 8, !tbaa !383
  %i.kg = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ke, i8 0, i64 33, i1 false)
  %i.kh = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.ki = getelementptr inbounds nuw i8, ptr %2, i64 61
  store i8 0, ptr %i.ki, align 1, !tbaa !385
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kd, i64 56
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !22 ; 2 uses
  %i.kl = call i32 @hb_face_get_glyph_count(ptr noundef %i.kk) #15
  store i32 %i.kl, ptr %i.kg, align 8, !tbaa !386
  store i8 1, ptr %i.kh, align 4, !tbaa !387
  %i.km = call ptr @hb_face_reference_table(ptr noundef %i.kk, i32 noundef 1751474532) #15
  %i.kn = call noundef ptr @_ZN21hb_sanitize_context_t13sanitize_blobIN2OT4headEEEP9hb_blob_tS4_(ptr noundef nonnull align 8 dereferenceable(62) %2, ptr noundef %i.km) ; 2 uses
  %i.ko = load ptr, ptr %i.kf, align 8, !tbaa !383 ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i65, label %_ZN21hb_sanitize_context_tD2Ev.exit.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @hb_blob_destroy(ptr noundef nonnull %i.ko) #15
  br label %_ZN21hb_sanitize_context_tD2Ev.exit.i.i

_ZN21hb_sanitize_context_tD2Ev.exit.i.i:          ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.kp = call ptr @hb_blob_copy_writable_or_fail(ptr noundef %i.kn) #15 ; 4 uses
  call void @hb_blob_destroy(ptr noundef %i.kn) #15
  %.not.i66.i = icmp eq ptr %i.kp, null
  br i1 %.not.i66.i, label %_ZN2OT9glyf_implL30_add_head_and_set_loca_versionEP16hb_subset_plan_tb.exit.i, label %bb.av, !prof !20

bb.av:                                            ; preds = %_ZN21hb_sanitize_context_tD2Ev.exit.i.i
  %i.kq = call ptr @hb_blob_get_data_writable(ptr noundef nonnull %i.kp, ptr noundef null) #15 ; 6 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 50
  %i.ks = select i1 %spec.select286, i16 0, i16 256
  store i16 %i.ks, ptr %i.kr, align 1, !tbaa !355
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kd, i64 2356
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !330
  %.not27.i.i = icmp eq i32 %i.ku, 0
  br i1 %.not27.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kd, i64 3032
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !388
  %i.kx = trunc i32 %i.kw to i16
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kq, i64 36
  %i.kz = call i16 @llvm.bswap.i16(i16 %i.kx)
  store i16 %i.kz, ptr %i.ky, align 1, !tbaa !355
  %i.la = getelementptr inbounds nuw i8, ptr %i.kd, i64 3036
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !389
  %i.lc = trunc i32 %i.lb to i16
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kq, i64 40
  %i.le = call i16 @llvm.bswap.i16(i16 %i.lc)
  store i16 %i.le, ptr %i.ld, align 1, !tbaa !355
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kd, i64 3040
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !390
  %i.lh = trunc i32 %i.lg to i16
  %i.li = getelementptr inbounds nuw i8, ptr %i.kq, i64 38
  %i.lj = call i16 @llvm.bswap.i16(i16 %i.lh)
  store i16 %i.lj, ptr %i.li, align 1, !tbaa !355
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kd, i64 3044
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !391
  %i.lm = trunc i32 %i.ll to i16
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kq, i64 42
  %i.lo = call i16 @llvm.bswap.i16(i16 %i.lm)
  store i16 %i.lo, ptr %i.ln, align 1, !tbaa !355
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kq, i64 16 ; 2 uses
  %i.lq = load i16, ptr %i.lp, align 1, !tbaa !155
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kd, i64 3072
  %i.ls = load i8, ptr %i.lr, align 8, !tbaa !392, !range !132, !noundef !274
  %i.lt = and i16 %i.lq, -513
  %i.lu = shl nuw nsw i8 %i.ls, 1
  %masksel.i.i = zext nneg i8 %i.lu to i16
  %i.lv = shl nuw nsw i16 %masksel.i.i, 8
  %i.lw = or disjoint i16 %i.lv, %i.lt
  store i16 %i.lw, ptr %i.lp, align 1, !tbaa !355
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.lx = getelementptr inbounds nuw i8, ptr %i.kd, i64 80
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !143
  %i.lz = call i32 @hb_face_builder_add_table(ptr noundef %i.ly, i32 noundef 1751474532, ptr noundef nonnull %i.kp) #15
  %i.ma = icmp ne i32 %i.lz, 0
  call void @hb_blob_destroy(ptr noundef nonnull %i.kp) #15
  br label %_ZN2OT9glyf_implL30_add_head_and_set_loca_versionEP16hb_subset_plan_tb.exit.i

_ZN2OT9glyf_implL30_add_head_and_set_loca_versionEP16hb_subset_plan_tb.exit.i: ; preds = %bb.ax, %_ZN21hb_sanitize_context_tD2Ev.exit.i.i, %_ZN11hb_vector_tI9hb_pair_tIjjELb1EED2Ev.exit.i
  %i.mb = phi i1 [ false, %_ZN11hb_vector_tI9hb_pair_tIjjELb1EED2Ev.exit.i ], [ %i.ma, %bb.ax ], [ false, %_ZN21hb_sanitize_context_tD2Ev.exit.i.i ]
  call void @hb_blob_destroy(ptr noundef %i.jy) #15
  br label %_ZN2OT9glyf_implL18_add_loca_and_headI10hb_array_tIKjETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_jEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tS6_b.exit

_ZN2OT9glyf_implL18_add_loca_and_headI10hb_array_tIKjETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_jEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tS6_b.exit: ; preds = %_ZNK2OT4glyf28_free_compiled_subset_glyphsER11hb_vector_tINS_9glyf_impl11SubsetGlyphELb0EE.exit, %_ZN2OT9glyf_implL30_add_head_and_set_loca_versionEP16hb_subset_plan_tb.exit.i
  %.0.i66 = phi i1 [ %i.mb, %_ZN2OT9glyf_implL30_add_head_and_set_loca_versionEP16hb_subset_plan_tb.exit.i ], [ false, %_ZNK2OT4glyf28_free_compiled_subset_glyphsER11hb_vector_tINS_9glyf_impl11SubsetGlyphELb0EE.exit ]
  %i.mc = getelementptr inbounds nuw i8, ptr %i.fm, i64 44 ; 2 uses
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !105
  %.not.i.i72 = icmp ne i32 %i.md, 0              ; 2 uses
  %brmerge.i = or i1 %.0.i66, %.not.i.i72
  br i1 %brmerge.i, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit.thread, !prof !393

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit.thread: ; preds = %_ZN2OT9glyf_implL18_add_loca_and_headI10hb_array_tIKjETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_jEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tS6_b.exit
  store i32 1, ptr %i.mc, align 4, !tbaa !105
  br label %bb.ay

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %_ZN2OT9glyf_implL18_add_loca_and_headI10hb_array_tIKjETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_jEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tS6_b.exit
  br i1 %.not.i.i72, label %bb.ay, label %bb.az, !prof !281

bb.ay:                                            ; preds = %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit.thread, %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, %bb.k
  %.sroa.28.3 = phi ptr [ %.sroa.28.2, %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit ], [ %.sroa.28.2, %bb.ay ], [ %.sroa.28.10.ph, %bb.k ]
  %.sroa.0.3 = phi i32 [ %.sroa.0.2, %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit ], [ %.sroa.0.2, %bb.ay ], [ %i.ai, %bb.k ]
  %.1 = phi i1 [ %.not27.i, %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit ], [ false, %bb.ay ], [ false, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.me = load i32, ptr %3, align 8, !tbaa !394
  %i.mf = add i32 %i.me, -1
  %spec.select.i.i.i = icmp ult i32 %i.mf, -2
  br i1 %spec.select.i.i.i, label %bb.ba, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit

bb.ba:                                            ; preds = %bb.az
  %i.mg = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.mg, align 4, !tbaa !336
  %i.mh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !333
  call void @hb_free(ptr noundef %i.mi) #15
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit

_ZN11hb_vector_tIjLb0EE5allocEjb.exit:            ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.mj = add i32 %.sroa.0.3, -1
  %spec.select.i.i.i73 = icmp ult i32 %i.mj, -2
  br i1 %spec.select.i.i.i73, label %bb.bb, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.bb:                                            ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit
  call void @hb_free(ptr noundef %.sroa.28.3) #15
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %.thread.i, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %_ZNK16hb_lazy_loader_tIN2OT4headE22hb_table_lazy_loader_tIS1_Lj1ELb1EE9hb_face_tLj1E9hb_blob_tEdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS9_v.exit.i, %bb.bb, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit, %bb.i, %_ZN2OT4glyf21has_valid_glyf_formatEPK9hb_face_t.exit
  %.4 = phi i1 [ false, %bb.i ], [ false, %_ZN2OT4glyf21has_valid_glyf_formatEPK9hb_face_t.exit ], [ %.1, %bb.bb ], [ false, %_ZNK16hb_lazy_loader_tIN2OT4headE22hb_table_lazy_loader_tIS1_Lj1ELb1EE9hb_face_tLj1E9hb_blob_tEdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS9_v.exit.i ], [ %.1, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ], [ false, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ false, %.thread.i ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIcEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !105
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !264  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !20

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  store ptr %i.f, ptr %i.d, align 8, !tbaa !264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !395
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !142

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #15 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !267
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !20

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !267
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !120
  store ptr %i.p, ptr %i.d, align 8, !tbaa !264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !105
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !105
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !396
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !396
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !133
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !307
  store ptr %i.r, ptr %i.u, align 8, !tbaa !133
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !106
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !271    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !137
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !20

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !397

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 536870911
  br i1 %i.j, label %.critedge, label %bb.e, !prof !20

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !266
  tail call void @hb_free(ptr noundef %i.m) #15
  br label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !266  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 3
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #15 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !265  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !266
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !398
  br label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 3
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #15 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, !prof !118

_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !271   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !266
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !271
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !265  ; 3 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !271
  %.not = icmp slt i32 %i.b, %i.c
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, 1
  %i.e = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.d, i1 noundef zeroext false)
  br i1 %i.e, label %..critedge_crit_edge, label %bb.c, !prof !142

..critedge_crit_edge:                             ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 4, !tbaa !265
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %bb.d

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.a
  %i.g = phi i32 [ %.pre, %..critedge_crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !266
  %i.j = add i32 %i.g, 1
  store i32 %i.j, ptr %i.a, align 4, !tbaa !265
  %i.k = zext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !267
  store ptr %i.m, ptr %i.l, align 8, !tbaa !267
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %.0 = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.l, %.critedge ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !120
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !120
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !120
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !120
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !120
end_hunk_0
begin_hunk_1_@_ZN5graph9serializeERKNS_7graph_tE:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr null, ptr %i.bs, align 8, !tbaa !108
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 0, ptr %i.bt, align 8, !tbaa !109
  call void @_ZN22hb_serialize_context_t4finiEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 5 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !110 ; 3 uses
  %i.bw = load i32, ptr %i.bi, align 8, !tbaa !111 ; 6 uses
  %.not.i.i.i = icmp slt i32 %i.bv, %i.bw
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i
  %i.bx = add i32 %i.bv, 1                        ; 2 uses
  %i.by = icmp slt i32 %i.bw, 0
  br i1 %i.by, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread101, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  %.not.i56 = icmp ugt i32 %i.bx, %i.bw
  br i1 %.not.i56, label %.preheader.i58, label %..critedge_crit_edge.i.i.i, !prof !20

.preheader.i58:                                   ; preds = %bb.d, %.preheader.i58
  %.043.i = phi i32 [ %i.cb, %.preheader.i58 ], [ %i.bw, %bb.d ] ; 2 uses
  %i.bz = lshr i32 %.043.i, 1
  %i.ca = add i32 %.043.i, 8
  %i.cb = add i32 %i.ca, %i.bz                    ; 7 uses
  %i.cc = icmp ugt i32 %i.bx, %i.cb
  br i1 %i.cc, label %.preheader.i58, label %.thread.i, !llvm.loop !112

.thread.i:                                        ; preds = %.preheader.i58
  %i.cd = icmp ugt i32 %i.cb, 536870911
  br i1 %i.cd, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread104, label %bb.e, !prof !20

bb.e:                                             ; preds = %.thread.i
  %.not49.i = icmp eq i32 %i.bw, 0
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !113 ; 2 uses
  br i1 %.not49.i, label %bb.f, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i.i65 = icmp eq ptr %i.cf, null
  br i1 %.not9.i.i.i65, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cg = shl nuw i32 %i.cb, 3
  %i.ch = zext i32 %i.cg to i64
  %i.ci = call ptr @hb_malloc(i64 noundef %i.ch) #15 ; 4 uses
  %.not10.i.i.i66 = icmp eq ptr %i.ci, null
  br i1 %.not10.i.i.i66, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, label %bb.h, !prof !20

bb.h:                                             ; preds = %bb.g
  %i.cj = load i32, ptr %i.bu, align 4, !tbaa !110 ; 2 uses
  %.not.i.i.i.i67 = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i.i67, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.ck = zext i32 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = load ptr, ptr %i.ce, align 8, !tbaa !113
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr readonly align 1 %i.cm, i64 %i.cl, i1 false), !alias.scope !987
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i: ; preds = %bb.f, %bb.e
  %i.cn = phi ptr [ null, %bb.f ], [ %i.cf, %bb.e ]
  %i.co = shl nuw i32 %i.cb, 3
  %i.cp = zext i32 %i.co to i64
  %i.cq = call ptr @hb_realloc(ptr noundef %i.cn, i64 noundef %i.cp) #15 ; 2 uses
  %.not22.i60 = icmp eq ptr %i.cq, null
  br i1 %.not22.i60, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit, !prof !118

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, %bb.g
  %i.cr = load i32, ptr %i.bi, align 8, !tbaa !111 ; 2 uses
  %.not23.i64 = icmp ugt i32 %i.cb, %i.cr
  br i1 %.not23.i64, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread104, label %..critedge_crit_edge.i.i.i, !prof !119

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread104: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, %.thread.i
  %.sink.i62.ph.in = phi i32 [ %i.bw, %.thread.i ], [ %i.cr, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i ]
  %.sink.i62.ph = xor i32 %.sink.i62.ph.in, -1
  store i32 %.sink.i62.ph, ptr %i.bi, align 8, !tbaa !111
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread101

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit: ; preds = %bb.h, %bb.i, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i
  %.1.i.i42.i = phi ptr [ %i.cq, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i ], [ %i.ci, %bb.i ], [ %i.ci, %bb.h ]
  store ptr %.1.i.i42.i, ptr %i.ce, align 8, !tbaa !113
  store i32 %i.cb, ptr %i.bi, align 8, !tbaa !111
  br label %..critedge_crit_edge.i.i.i

..critedge_crit_edge.i.i.i:                       ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, %bb.d, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit
  %.pre.i.i.i = load i32, ptr %i.bu, align 4, !tbaa !110
  br label %.critedge.i.i.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread101: ; preds = %bb.c, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread104
  %i.cs = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.cs, ptr @_hb_CrapPool, align 16
  br label %_ZN22hb_serialize_context_tC2EPvm.exit

.critedge.i.i.i:                                  ; preds = %..critedge_crit_edge.i.i.i, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i
  %i.ct = phi i32 [ %.pre.i.i.i, %..critedge_crit_edge.i.i.i ], [ %i.bv, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !113
  %i.cw = add i32 %i.ct, 1
  store i32 %i.cw, ptr %i.bu, align 4, !tbaa !110
  %i.cx = zext i32 %i.ct to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cx
  store ptr null, ptr %i.cy, align 8, !tbaa !120
  br label %_ZN22hb_serialize_context_tC2EPvm.exit

_ZN22hb_serialize_context_tC2EPvm.exit:           ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread101, %.critedge.i.i.i
  store atomic i32 1, ptr %i.bj monotonic, align 8
  store atomic i8 1, ptr %i.bk monotonic, align 4
  store atomic ptr null, ptr %i.bl monotonic, align 8
  store i8 1, ptr %i.bm, align 8, !tbaa !103
  store ptr null, ptr %i.bo, align 8, !tbaa !104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.bn, i8 0, i64 18, i1 false)
  %i.cz = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !991 ; 6 uses
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit, label %bb.j, !prof !20

bb.j:                                             ; preds = %_ZN22hb_serialize_context_tC2EPvm.exit
  %.not.i69.not = icmp eq i32 %i.db, 0
  br i1 %.not.i69.not, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread, label %.preheader.i71, !prof !142

.preheader.i71:                                   ; preds = %bb.j, %.preheader.i71
  %.043.i72 = phi i32 [ %i.df, %.preheader.i71 ], [ 0, %bb.j ] ; 2 uses
  %i.dd = lshr i32 %.043.i72, 1
  %i.de = add nuw i32 %.043.i72, 8
  %i.df = add nuw i32 %i.de, %i.dd                ; 6 uses
  %i.dg = icmp ugt i32 %i.db, %i.df
  br i1 %i.dg, label %.preheader.i71, label %.thread.i73, !llvm.loop !345

.thread.i73:                                      ; preds = %.preheader.i71
  %i.dh = icmp ugt i32 %i.df, 1073741823
  br i1 %i.dh, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread109, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, !prof !20

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %.thread.i73
  %i.di = shl nuw i32 %i.df, 2
  %i.dj = zext i32 %i.di to i64
  %i.dk = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.dj) #15 ; 2 uses
  %.not22.i76 = icmp eq ptr %i.dk, null
  br i1 %.not22.i76, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit, !prof !118

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %.pre = load i32, ptr %2, align 8, !tbaa !472   ; 2 uses
  %.not23.i81 = icmp ugt i32 %i.df, %.pre
  br i1 %.not23.i81, label %bb.k, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread

bb.k:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i
  %i.dl = xor i32 %.pre, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread109

_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread109:  ; preds = %bb.k, %.thread.i73
  %.sink.i79.ph = phi i32 [ -1, %.thread.i73 ], [ %i.dl, %bb.k ]
  store i32 %.sink.i79.ph, ptr %2, align 8, !tbaa !472
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit

_ZN11hb_vector_tIjLb0EE5allocEjb.exit:            ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !473
  store i32 %i.df, ptr %2, align 8, !tbaa !472
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread:     ; preds = %bb.j, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !474 ; 3 uses
  %i.dp = icmp ugt i32 %i.db, %i.do
  br i1 %i.dp, label %bb.l, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i

bb.l:                                             ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread
  %i.dq = sub nuw nsw i32 %i.db, %i.do
  %i.dr = shl i32 %i.dq, 2                        ; 2 uses
  %.not.i.i.i.i43 = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i.i.i43, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, label %bb.m, !prof !20

bb.m:                                             ; preds = %bb.l
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !473
  %i.du = zext nneg i32 %i.do to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.du
  %i.dw = zext i32 %i.dr to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.dv, i8 0, i64 %i.dw, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i

_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.m, %bb.l, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread
  store i32 %i.db, ptr %i.dn, align 4, !tbaa !474
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit

_ZN11hb_vector_tIjLb0EE6resizeEi.exit:            ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread109, %_ZN22hb_serialize_context_tC2EPvm.exit, %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i
  %i.dx = load i32, ptr %i.da, align 4, !tbaa !991
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
  %i.ed = load i32, ptr %i.da, align 4, !tbaa !474
  %.not.i44 = icmp ult i32 %.035139, %i.ed
  %i.ee = load ptr, ptr %i.dz, align 8
  %3 = zext nneg i32 %.035139 to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %3
  %.0.i = select i1 %.not.i44, ptr %i.ef, ptr @_hb_NullPool, !prof !142
  %i.eg = load i32, ptr %.0.i, align 4, !tbaa !137 ; 3 uses
  %i.eh = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 0 uses
  %i.ei = load i32, ptr %i.a, align 4, !tbaa !842
  %.not.i45 = icmp ult i32 %i.eg, %i.ei
  %i.ej = load ptr, ptr %i.c, align 8
  %i.ek = zext i32 %i.eg to i64                   ; 2 uses
  %i.el = getelementptr inbounds nuw [216 x i8], ptr %i.ej, i64 %i.ek
  %.0.i46 = select i1 %.not.i45, ptr %i.el, ptr @_hb_NullPool, !prof !142 ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i46, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !918 ; 2 uses
  %i.eo = load ptr, ptr %.0.i46, align 8, !tbaa !919 ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq                    ; 7 uses
  %i.es = load i32, ptr %i.bp, align 4, !tbaa !105
  %.not.i47 = icmp eq i32 %i.es, 0
  br i1 %.not.i47, label %bb.o, label %.thread122, !prof !142

bb.o:                                             ; preds = %bb.n
  %i.et = icmp ugt i64 %i.er, 2147483647
  br i1 %i.et, label %.critedge.i, label %bb.p, !prof !20

bb.p:                                             ; preds = %bb.o
  %i.eu = load ptr, ptr %i.br, align 8, !tbaa !107
  %i.ev = load ptr, ptr %i.bq, align 8, !tbaa !106 ; 5 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = icmp slt i64 %i.ey, %i.er
  br i1 %i.ez, label %.critedge.i, label %bb.q, !prof !20

.critedge.i:                                      ; preds = %bb.p, %bb.o
  store i32 4, ptr %i.bp, align 4, !tbaa !105
  br label %.thread122

bb.q:                                             ; preds = %bb.p
  %.not.i.i.not = icmp eq ptr %i.en, %i.eo
  br i1 %.not.i.i.not, label %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.thread116, label %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit, !prof !77

_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit: ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr align 1 %i.ev, i8 0, i64 %i.er, i1 false)
  %.pre.i = load ptr, ptr %i.bq, align 8, !tbaa !106 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.er
  store ptr %i.fa, ptr %i.bq, align 8, !tbaa !106
  %.not40.not = icmp eq ptr %.pre.i, null
  br i1 %.not40.not, label %.thread122, label %bb.r

_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.thread116: ; preds = %bb.q
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.er
  store ptr %i.fb, ptr %i.bq, align 8, !tbaa !106
  %.not40.not117 = icmp eq ptr %i.ev, null
  br i1 %.not40.not117, label %.thread122, label %_ZL9hb_memcpyPvPKvm.exit

bb.r:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit
  %i.fc = load ptr, ptr %.0.i46, align 8, !tbaa !919
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.pre.i, ptr readonly align 1 %i.fc, i64 %i.er, i1 false), !alias.scope !992
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.thread116, %bb.r
  %i.fd = phi ptr [ %.pre.i, %bb.r ], [ %i.ev, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.thread116 ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i46, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !306 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i46, i64 20
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !305 ; 2 uses
  %i.fi = zext i32 %i.fh to i64
  %.idx = mul nuw nsw i64 %i.fi, 12
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx
  %.not41136 = icmp eq i32 %i.fh, 0
  br i1 %.not41136, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL9hb_memcpyPvPKvm.exit
  %i.fk = trunc nuw nsw i64 %i.er to i32
  br label %bb.u

._crit_edge:                                      ; preds = %bb.u, %_ZL9hb_memcpyPvPKvm.exit
  %i.fl = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext false)
  %i.fm = load i32, ptr %i.ea, align 4, !tbaa !474
  %.not.i50 = icmp ult i32 %i.eg, %i.fm
  br i1 %.not.i50, label %bb.t, label %bb.s, !prof !142

bb.s:                                             ; preds = %._crit_edge
  store i32 %i.eb, ptr @_hb_CrapPool, align 16
  br label %bb.v

bb.t:                                             ; preds = %._crit_edge
  %i.fn = load ptr, ptr %i.ec, align 8, !tbaa !473
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.ek
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph, %bb.u
  %.034137 = phi ptr [ %i.ff, %.lr.ph ], [ %i.fp, %bb.u ] ; 2 uses
  call void @_ZN5graph14serialize_linkERKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS0_(ptr noundef nonnull align 4 dereferenceable(12) %.034137, ptr noundef nonnull %i.fd, i32 noundef %i.fk, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %1)
  %i.fp = getelementptr inbounds nuw i8, ptr %.034137, i64 12 ; 2 uses
  %.not41 = icmp eq ptr %i.fp, %i.fj
  br i1 %.not41, label %._crit_edge, label %bb.u

bb.v:                                             ; preds = %bb.t, %bb.s
  %.0.i51 = phi ptr [ @_hb_CrapPool, %bb.s ], [ %i.fo, %bb.t ]
  store i32 %i.fl, ptr %.0.i51, align 4, !tbaa !137
  %.035 = add nsw i32 %.035139, -1
  %i.fq = icmp slt i32 %.035139, 1
  br i1 %i.fq, label %.critedge, label %bb.n, !llvm.loop !996

.critedge:                                        ; preds = %bb.v, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit
  %i.fr = load i32, ptr %i.bp, align 4, !tbaa !105 ; 5 uses
  %i.fs = load i32, ptr %i.bi, align 8, !tbaa !111
  %i.ft = icmp sgt i32 %i.fs, -1
  %.not.i.i.i.i.i = icmp ne i32 %i.fr, 0
  %i.fu = load i8, ptr %i.bm, align 8, !range !132
  %i.fv = trunc nuw i8 %i.fu to i1
  %i.fw = select i1 %i.ft, i1 %i.fv, i1 false
  %or.cond6.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.fw
  br i1 %or.cond6.i, label %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i, label %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.thread.i

_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i: ; preds = %.critedge
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !133
  %.not.i52 = icmp eq ptr %i.fy, null
  br i1 %.not.i52, label %_ZN22hb_serialize_context_t13end_serializeEv.exit, label %bb.w, !prof !20

_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.thread.i: ; preds = %.critedge
  store i32 1, ptr %i.bp, align 4, !tbaa !105
  br label %.thread122

bb.w:                                             ; preds = %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i
  %.not7.i = icmp eq i32 %i.fr, 0
  br i1 %.not7.i, label %bb.z, label %bb.x, !prof !134

bb.x:                                             ; preds = %bb.w
  %i.fz = and i32 %i.fr, 2
  %.not8.i = icmp eq i32 %i.fz, 0
  br i1 %.not8.i, label %.thread122, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ga = or i32 %i.fr, 1
  store i32 %i.ga, ptr %i.bp, align 4, !tbaa !105
  br label %.thread122

bb.z:                                             ; preds = %bb.w
  %i.gb = load i32, ptr %i.bu, align 4, !tbaa !135
  %i.gc = icmp ult i32 %i.gb, 2
  br i1 %i.gc, label %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gd = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext false) ; 0 uses
  call void @_ZN22hb_serialize_context_t13resolve_linksEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %.pr.pre = load i32, ptr %i.bp, align 4, !tbaa !105
  br label %_ZN22hb_serialize_context_t13end_serializeEv.exit

_ZN22hb_serialize_context_t13end_serializeEv.exit: ; preds = %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i, %bb.aa
  %.pr = phi i32 [ %i.fr, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i ], [ %.pr.pre, %bb.aa ]
  %.not129 = icmp eq i32 %.pr, 0
  br i1 %.not129, label %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread, label %.thread122

_ZN22hb_serialize_context_t13end_serializeEv.exit.thread: ; preds = %bb.z, %_ZN22hb_serialize_context_t13end_serializeEv.exit
  %i.ge = load ptr, ptr %i.bq, align 8, !tbaa !106
  %i.gf = load ptr, ptr %1, align 8, !tbaa !90
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = load ptr, ptr %i.bf, align 8, !tbaa !102
  %i.gj = load ptr, ptr %i.br, align 8, !tbaa !107
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = add i64 %i.gg, %i.gk
  %i.gn = add i64 %i.gh, %i.gl
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = and i64 %i.go, 4294967295               ; 4 uses
  %.not.i.i53 = icmp eq i64 %i.gp, 0
  br i1 %.not.i.i53, label %_ZNK22hb_serialize_context_t9copy_blobEv.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread
  %i.gq = call ptr @hb_malloc(i64 noundef %i.gp) #15 ; 5 uses
  %.not7.i.i = icmp eq ptr %i.gq, null
  br i1 %.not7.i.i, label %_ZNK22hb_serialize_context_t9copy_blobEv.exit, label %bb.ac, !prof !20

bb.ac:                                            ; preds = %bb.ab
  %i.gr = load ptr, ptr %1, align 8, !tbaa !90    ; 3 uses
  %i.gs = load ptr, ptr %i.bq, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %i.gs, %i.gr
  br i1 %.not.i.i.i54, label %_ZL9hb_memcpyPvPKvm.exit.i.i, label %bb.ad, !prof !20

bb.ad:                                            ; preds = %bb.ac
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gu, %i.gt
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gq, ptr readonly align 1 %i.gr, i64 %i.gv, i1 false), !alias.scope !997
  br label %_ZL9hb_memcpyPvPKvm.exit.i.i

_ZL9hb_memcpyPvPKvm.exit.i.i:                     ; preds = %bb.ad, %bb.ac
  %i.gw = load ptr, ptr %i.br, align 8, !tbaa !107 ; 3 uses
  %i.gx = load ptr, ptr %i.bf, align 8, !tbaa !102 ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.gx, %i.gw
  br i1 %.not.i8.i.i, label %_ZNK22hb_serialize_context_t9copy_blobEv.exit, label %bb.ae, !prof !20

bb.ae:                                            ; preds = %_ZL9hb_memcpyPvPKvm.exit.i.i
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gz, %i.gy
  %i.hb = load ptr, ptr %i.bq, align 8, !tbaa !106
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = load ptr, ptr %1, align 8, !tbaa !90
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = sub i64 %i.hc, %i.he
  %i.hg = getelementptr inbounds i8, ptr %i.gq, i64 %i.hf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hg, ptr readonly align 1 %i.gw, i64 %i.ha, i1 false), !alias.scope !1001
  br label %_ZNK22hb_serialize_context_t9copy_blobEv.exit

_ZNK22hb_serialize_context_t9copy_blobEv.exit:    ; preds = %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread, %bb.ab, %_ZL9hb_memcpyPvPKvm.exit.i.i, %bb.ae
  %.sroa.0.0.i.i = phi ptr [ null, %bb.ab ], [ null, %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread ], [ %i.gq, %_ZL9hb_memcpyPvPKvm.exit.i.i ], [ %i.gq, %bb.ae ] ; 2 uses
  %.sroa.6.0.i.i = phi i64 [ 0, %bb.ab ], [ 0, %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread ], [ %i.gp, %_ZL9hb_memcpyPvPKvm.exit.i.i ], [ %i.gp, %bb.ae ]
  %.sroa.5.8.extract.trunc.i = trunc nuw i64 %.sroa.6.0.i.i to i32
  %i.hh = call noundef ptr @hb_blob_create(ptr noundef %.sroa.0.0.i.i, i32 noundef %.sroa.5.8.extract.trunc.i, i32 noundef 2, ptr noundef %.sroa.0.0.i.i, ptr noundef nonnull @hb_free) #15
  br label %.thread122

.thread122:                                       ; preds = %bb.n, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.thread116, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit, %bb.x, %bb.y, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.thread.i, %.critedge.i, %_ZN22hb_serialize_context_t13end_serializeEv.exit, %_ZNK22hb_serialize_context_t9copy_blobEv.exit
  %.3 = phi ptr [ null, %bb.y ], [ %i.hh, %_ZNK22hb_serialize_context_t9copy_blobEv.exit ], [ null, %_ZN22hb_serialize_context_t13end_serializeEv.exit ], [ null, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.thread.i ], [ null, %.critedge.i ], [ null, %bb.x ], [ null, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit ], [ null, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.thread116 ], [ null, %bb.n ] ; 2 uses
  %i.hi = load i32, ptr %2, align 8, !tbaa !472
  %i.hj = add i32 %i.hi, -1
  %spec.select.i.i.i = icmp ult i32 %i.hj, -2
  br i1 %spec.select.i.i.i, label %bb.af, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit

bb.af:                                            ; preds = %.thread122
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.hk, align 4, !tbaa !474
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !473
  call void @hb_free(ptr noundef %i.hm) #15
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit

_ZN11hb_vector_tIcLb0EE5allocEjb.exit:            ; preds = %bb.af, %.thread122
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @_ZN22hb_serialize_context_tD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %i.hn = add i32 %.sroa.0.1.ph, -1
  %spec.select.i.i.i55 = icmp ult i32 %i.hn, -2
  br i1 %spec.select.i.i.i55, label %bb.ag, label %_ZN11hb_vector_tIcLb0EED2Ev.exit

bb.ag:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit
  call void @hb_free(ptr noundef %.sroa.9.2.ph) #15
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit

_ZN11hb_vector_tIcLb0EED2Ev.exit:                 ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i, %_ZNK5graph7graph_t19total_size_in_bytesEv.exit.thread, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit, %bb.ag
  %.4128 = phi ptr [ %.3, %bb.ag ], [ %.3, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit ], [ null, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i ], [ %i.ax, %_ZNK5graph7graph_t19total_size_in_bytesEv.exit.thread ]
  ret ptr %.4128
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5graph7graph_tD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1005 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1006 ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not14 = icmp eq i32 %i.e, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.h = load i32, ptr %i.a, align 8, !tbaa !1007
  %i.i = add i32 %i.h, -1
  %spec.select.i.i.i = icmp ult i32 %i.i, -2
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZN11hb_vector_tIPcLb0EED2Ev.exit

bb.b:                                             ; preds = %._crit_edge
  store i32 0, ptr %i.d, align 4, !tbaa !1006
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !1005
  tail call void @hb_free(ptr noundef %i.j) #15
  br label %_ZN11hb_vector_tIPcLb0EED2Ev.exit

_ZN11hb_vector_tIPcLb0EED2Ev.exit:                ; preds = %._crit_edge, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !472
  %i.m = add i32 %i.l, -1
  %spec.select.i.i.i8 = icmp ult i32 %i.m, -2
  br i1 %spec.select.i.i.i8, label %bb.c, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.c:                                             ; preds = %_ZN11hb_vector_tIPcLb0EED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.n, align 4, !tbaa !474
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !473
  tail call void @hb_free(ptr noundef %i.p) #15
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %_ZN11hb_vector_tIPcLb0EED2Ev.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !472
  %i.s = add i32 %i.r, -1
  %spec.select.i.i.i9 = icmp ult i32 %i.s, -2
  br i1 %spec.select.i.i.i9, label %bb.d, label %_ZN11hb_vector_tIjLb0EED2Ev.exit10

bb.d:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.t, align 4, !tbaa !474
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !473
  tail call void @hb_free(ptr noundef %i.v) #15
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit10
end_hunk_1
begin_hunk_2_@_ZN5graph7graph_tD2Ev:bb.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5graph7graph_t8vertex_t20link_positions_validEjb(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.hb_set_t, align 8           ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store atomic i32 1, ptr %3 monotonic, align 8
  store atomic i8 1, ptr %i.d monotonic, align 4
  store atomic ptr null, ptr %i.e monotonic, align 8
  store i8 1, ptr %i.f, align 8, !tbaa !880
  store i32 0, ptr %i.g, align 4, !tbaa !292
  store atomic i32 0, ptr %i.h monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.i, i8 0, i64 33, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !306  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !305  ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.idx = mul nuw nsw i64 %i.n, 12
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %.not37 = icmp eq i32 %i.m, 0
  br i1 %.not37, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit
  %.02638 = phi ptr [ %i.k, %.lr.ph ], [ %i.ay, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02638, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !812  ; 2 uses
  %.not32 = icmp uge i32 %i.s, %1
  %.not33 = icmp eq i32 %i.s, 0
  %or.cond = and i1 %2, %.not33
  %or.cond36 = or i1 %.not32, %or.cond
  br i1 %or.cond36, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.02638, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !814  ; 5 uses
  %i.v = load i32, ptr %.02638, align 4
  %i.w = and i32 %i.v, 7                          ; 2 uses
  %i.x = add i32 %i.u, -1                         ; 6 uses
  %i.y = add i32 %i.x, %i.w                       ; 4 uses
  %i.z = add nsw i32 %i.w, -5
  %spec.select = icmp ult i32 %i.z, -3
  br i1 %spec.select, label %.critedge, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.aa = zext i32 %i.y to i64
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !918
  %i.ac = load ptr, ptr %0, align 8, !tbaa !919
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %.not34 = icmp ugt i64 %i.af, %i.aa
  br i1 %.not34, label %bb.e, label %.critedge, !prof !142

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 %i.x, ptr %i.c, align 4, !tbaa !137
  %i.ag = load i8, ptr %i.q, align 8, !tbaa !291, !range !132, !noundef !274
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.g, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.ai = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull %i.c)
  %.pre.i.i = load i32, ptr %i.c, align 4
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 %i.x, ptr %i.a, align 4, !tbaa !137
  %i.aj = icmp eq i32 %i.x, -2
  br i1 %i.aj, label %bb.k, label %bb.h, !prof !20

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 %i.x, ptr %i.b, align 4, !tbaa !137
  %i.ak = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull %i.b) ; 0 uses
  %i.al = load i32, ptr %i.b, align 4, !tbaa !137
  %i.am = icmp ult i32 %i.u, %i.al
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.x, ptr %i.b, align 4, !tbaa !137
  %i.an = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !137
  %i.ap = add i32 %i.ao, 1                        ; 2 uses
  %i.aq = icmp ne i32 %i.ap, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i.i.i = phi i32 [ %i.ap, %bb.i ], [ %i.u, %bb.h ]
  %.0.i.i.i = phi i1 [ %i.aq, %bb.i ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.ar = phi i32 [ %.sink.i.i.i, %bb.j ], [ -1, %bb.g ]
  %.1.i.i.i = phi i1 [ %.0.i.i.i, %bb.j ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit: ; preds = %bb.f, %bb.k
  %i.as = phi i32 [ %.pre.i.i, %bb.f ], [ %i.ar, %bb.k ]
  %.2.i.i.i = phi i1 [ %i.ai, %bb.f ], [ %.1.i.i.i, %bb.k ]
  %i.at = icmp ule i32 %i.as, %i.y
  %i.au = select i1 %.2.i.i.i, i1 %i.at, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br i1 %i.au, label %.critedge, label %bb.l, !prof !20

bb.l:                                             ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit
  %i.av = load i8, ptr %i.q, align 8, !tbaa !291, !range !132, !noundef !274
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.m, label %bb.n, !prof !20

bb.m:                                             ; preds = %bb.l
  call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.f, i32 noundef %i.u, i32 noundef %i.y)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit

bb.n:                                             ; preds = %bb.l
  %i.ax = call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.f, i32 noundef %i.u, i32 noundef %i.y) ; 0 uses
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit: ; preds = %bb.m, %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %.02638, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.ay, %i.o
  br i1 %.not, label %.critedge35.loopexit, label %bb.b

.critedge35.loopexit:                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit
  %.pre = load i8, ptr %i.f, align 8, !tbaa !880, !range !132
  %i.az = trunc nuw i8 %.pre to i1
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.d, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit, %bb.a, %.critedge35.loopexit
  %.4 = phi i1 [ true, %bb.a ], [ %i.az, %.critedge35.loopexit ], [ false, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !848
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %.sink.split, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = mul nuw nsw i64 %i.c, 216
  %i.e = tail call ptr @hb_malloc(i64 noundef %i.d) #15 ; 4 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.k, label %.preheader, !prof !20

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !842
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5graph7graph_t8vertex_tD2Ev.exit, %.preheader
  %i.i = load i32, ptr %0, align 8, !tbaa !848
  %i.j = add i32 %i.i, -1
  %spec.select.i17 = icmp ult i32 %i.j, -2
  br i1 %spec.select.i17, label %.sink.split, label %bb.k

bb.d:                                             ; preds = %.lr.ph, %_ZN5graph7graph_t8vertex_tD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5graph7graph_t8vertex_tD2Ev.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw [216 x i8], ptr %i.e, i64 %indvars.iv ; 28 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.k, i8 0, i64 216, i1 false)
  store i32 -1, ptr %i.n, align 4, !tbaa !943
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 100
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store atomic i32 1, ptr %i.o monotonic, align 4
  store atomic i8 1, ptr %i.p monotonic, align 4
  store atomic ptr null, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  store i8 1, ptr %i.r, align 8, !tbaa !1008
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 114 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 136 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !948
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.s, i8 0, i64 18, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 148
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 160 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 164
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  store atomic i32 1, ptr %i.u monotonic, align 8
  store atomic i8 1, ptr %i.v monotonic, align 4
  store atomic ptr null, ptr %i.w monotonic, align 8
  store i8 1, ptr %i.x, align 8, !tbaa !880
  store i32 0, ptr %i.y, align 4, !tbaa !292
  store atomic i32 0, ptr %i.z monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.aa, i8 0, i64 33, i1 false)
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !850
  %i.ac = getelementptr inbounds nuw [216 x i8], ptr %i.ab, i64 %indvars.iv ; 17 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.k, ptr noundef nonnull align 8 dereferenceable(216) %i.ac, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !137
  store i32 %i.ae, ptr %i.l, align 8, !tbaa !137
  store i32 0, ptr %i.ad, align 4, !tbaa !137
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 20 ; 2 uses
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !137
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !137
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !137
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !137
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1009
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !1009
  store ptr null, ptr %i.ak, align 8, !tbaa !1009
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.ao = load i32, ptr %i.am, align 8, !tbaa !137
  %i.ap = load i32, ptr %i.an, align 8, !tbaa !137
  store i32 %i.ap, ptr %i.am, align 8, !tbaa !137
  store i32 %i.ao, ptr %i.an, align 8, !tbaa !137
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 36 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 36 ; 2 uses
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !137
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !137
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !137
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !137
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !1009
  %i.ax = load <2 x ptr>, ptr %i.av, align 8, !tbaa !316
  store <2 x ptr> %i.ax, ptr %i.au, align 8, !tbaa !316
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !1009
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.m, ptr noundef nonnull align 8 dereferenceable(33) %i.ay, i64 33, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.ba = load i8, ptr %i.az, align 8, !range !132
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.e, label %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i, !prof !142

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 114 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !1010
  store i16 %i.bd, ptr %i.s, align 2, !tbaa !1010
  store i16 0, ptr %i.bc, align 2, !tbaa !1010
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 116 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 116 ; 2 uses
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !137
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !137
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !137
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !137
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 120 ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 8, !tbaa !137
  %i.bl = load i32, ptr %i.bj, align 8, !tbaa !137
  store i32 %i.bl, ptr %i.bi, align 8, !tbaa !137
  store i32 %i.bk, ptr %i.bj, align 8, !tbaa !137
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 124 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ac, i64 124 ; 2 uses
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !137
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !137
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !137
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !137
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ac, i64 128 ; 2 uses
  %i.bs = load i32, ptr %i.bq, align 8, !tbaa !137
  %i.bt = load i32, ptr %i.br, align 8, !tbaa !137
  store i32 %i.bt, ptr %i.bq, align 8, !tbaa !137
  store i32 %i.bs, ptr %i.br, align 8, !tbaa !137
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ac, i64 136 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1011
  store ptr %i.bv, ptr %i.t, align 8, !tbaa !1011
  store ptr null, ptr %i.bu, align 8, !tbaa !1011
  br label %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i

_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i:          ; preds = %bb.e, %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ac, i64 160 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !range !132
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.f, label %_ZN5graph7graph_t8vertex_taSEOS1_.exit, !prof !20

bb.f:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ac, i64 208 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !255, !range !132, !noundef !274
  store i8 %i.cb, ptr %i.bz, align 8, !tbaa !255
  store i8 0, ptr %i.ca, align 8, !tbaa !255
  tail call fastcc void @"_ZNK3$_9clI12hb_bit_set_tEEvRT_S3_"(ptr noundef nonnull align 8 dereferenceable(49) %i.x, ptr noundef nonnull align 8 dereferenceable(49) %i.bw)
  br label %_ZN5graph7graph_t8vertex_taSEOS1_.exit

_ZN5graph7graph_t8vertex_taSEOS1_.exit:           ; preds = %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i, %bb.f
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !850
  %i.cd = getelementptr inbounds nuw [216 x i8], ptr %i.cc, i64 %indvars.iv ; 10 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 144
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.ce) #15
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 96
  store atomic i32 -57005, ptr %i.cf monotonic, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 104 ; 2 uses
  %i.ch = load atomic ptr, ptr %i.cg acquire, align 8 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN5graph7graph_t8vertex_taSEOS1_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(56) %i.ch)
  %i.cj = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.ch) #15 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.ch) #15
  store atomic ptr null, ptr %i.cg monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN5graph7graph_t8vertex_taSEOS1_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 136
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !948 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i, label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i, label %bb.h, !prof !20

bb.h:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  tail call void @hb_free(ptr noundef nonnull %i.cl) #15
  br label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i

_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i:             ; preds = %bb.h, %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !302
  %i.co = add i32 %i.cn, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.co, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

bb.i:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 36
  store i32 0, ptr %i.cp, align 4, !tbaa !305
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !306
  tail call void @hb_free(ptr noundef %i.cr) #15
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i: ; preds = %bb.i, %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !302
  %i.cu = add i32 %i.ct, -1
  %spec.select.i.i.i1.i.i = icmp ult i32 %i.cu, -2
  br i1 %spec.select.i.i.i1.i.i, label %bb.j, label %_ZN5graph7graph_t8vertex_tD2Ev.exit

bb.j:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  store i32 0, ptr %i.cv, align 4, !tbaa !305
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !306
  tail call void @hb_free(ptr noundef %i.cx) #15
  br label %_ZN5graph7graph_t8vertex_tD2Ev.exit

_ZN5graph7graph_t8vertex_tD2Ev.exit:              ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = load i32, ptr %i.f, align 4, !tbaa !842
  %i.cz = zext i32 %i.cy to i64
  %i.da = icmp samesign ult i64 %indvars.iv.next, %i.cz
  br i1 %i.da, label %bb.d, label %._crit_edge, !llvm.loop !1012

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.013.ph = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !850
  tail call void @hb_free(ptr noundef %i.dc) #15
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.c, %._crit_edge, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %._crit_edge ], [ %.013.ph, %.sink.split ]
  ret ptr %.013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZNK3$_9clI12hb_bit_set_tEEvRT_S3_"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !880, !range !132, !noundef !274
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr %1, align 8, !range !132
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 %i.d, i1 false
  br i1 %i.e, label %bb.b, label %_Z4swapR12hb_bit_set_tS0_.exit, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.f, align 4, !tbaa !137
  %i.i = load i32, ptr %i.g, align 4, !tbaa !137
  store i32 %i.i, ptr %i.f, align 4, !tbaa !137
  store i32 %i.h, ptr %i.g, align 4, !tbaa !137
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.j, align 8, !tbaa !137
  %i.l = load i32, ptr %i.k, align 8, !tbaa !137
  store i32 %i.l, ptr %i.j, align 8, !tbaa !137
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.k, align 8, !tbaa !137
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.m, align 8, !tbaa !137
  %i.p = load i32, ptr %i.n, align 8, !tbaa !137
  store i32 %i.p, ptr %i.m, align 8, !tbaa !137
  store i32 %i.o, ptr %i.n, align 8, !tbaa !137
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !137
  %i.t = load i32, ptr %i.r, align 4, !tbaa !137
  store i32 %i.t, ptr %i.q, align 4, !tbaa !137
  store i32 %i.s, ptr %i.r, align 4, !tbaa !137
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !1013
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !1013
  store ptr %i.x, ptr %i.u, align 8, !tbaa !1013
  store ptr %i.w, ptr %i.v, align 8, !tbaa !1013
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !137
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !137
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !137
  store i32 %i.aa, ptr %i.z, align 8, !tbaa !137
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !137
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !137
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !137
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !137
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !1014
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !1014
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !1014
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !1014
  br label %_Z4swapR12hb_bit_set_tS0_.exit

_Z4swapR12hb_bit_set_tS0_.exit:                   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store atomic i32 -57005, ptr %0 monotonic, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.d = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #15 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.b) #15
  store atomic ptr null, ptr %i.a monotonic, align 8
  br label %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i

_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !1015
  %i.g = add i32 %i.f, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.g, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.c, label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i

bb.c:                                             ; preds = %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.h, align 4, !tbaa !1016
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !961
  tail call void @hb_free(ptr noundef %i.j) #15
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i

_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i: ; preds = %bb.c, %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1017
  %i.m = add i32 %i.l, -1
  %spec.select.i.i1.i.i.i = icmp ult i32 %i.m, -2
  br i1 %spec.select.i.i1.i.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit, label %_ZN23hb_bit_set_invertible_tD2Ev.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit: ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.n, align 4, !tbaa !1018
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1019
  tail call void @hb_free(ptr noundef %i.p) #15
  %.pre = load i32, ptr %i.e, align 8, !tbaa !1015
  %i.q = add i32 %.pre, -1
  %i.r = icmp ult i32 %i.q, -2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %_ZN23hb_bit_set_invertible_tD2Ev.exit

bb.d:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.s, align 4, !tbaa !1016
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !961
  tail call void @hb_free(ptr noundef %i.u) #15
  br label %_ZN23hb_bit_set_invertible_tD2Ev.exit

_ZN23hb_bit_set_invertible_tD2Ev.exit:            ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !848    ; 6 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !137
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.e) ; 3 uses
  %.not19.i = icmp ugt i32 %.sroa.speculated.i, %i.b
  %i.f = lshr i32 %i.b, 2
  %.not20.i = icmp ult i32 %.sroa.speculated.i, %i.f
  %or.cond.i = or i1 %.not19.i, %.not20.i
  br i1 %or.cond.i, label %.thread.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp samesign ugt i32 %1, %i.b
  br i1 %.not.i, label %.preheader.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread, !prof !20

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.039.i = phi i32 [ %i.i, %.preheader.i ], [ %i.b, %bb.e ] ; 2 uses
  %i.g = lshr i32 %.039.i, 1
  %i.h = add nuw i32 %.039.i, 8
  %i.i = add nuw i32 %i.h, %i.g                   ; 3 uses
  %i.j = icmp ugt i32 %1, %i.i
  br i1 %i.j, label %.preheader.i, label %.thread.i, !llvm.loop !849

.thread.i:                                        ; preds = %.preheader.i, %bb.d
  %.138.i = phi i32 [ %.sroa.speculated.i, %bb.d ], [ %i.i, %.preheader.i ] ; 5 uses
  %i.k = icmp ugt i32 %.138.i, 19884107
  br i1 %i.k, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20, label %bb.f, !prof !20

bb.f:                                             ; preds = %.thread.i
  %i.l = tail call noundef ptr @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.138.i) ; 2 uses
  %.not21.i = icmp ne i32 %.138.i, 0
  %.not22.i = icmp eq ptr %i.l, null
  %spec.select.i = and i1 %.not21.i, %.not22.i
  br i1 %spec.select.i, label %bb.g, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit, !prof !20

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %0, align 8, !tbaa !848    ; 2 uses
  %.not23.i = icmp ugt i32 %.138.i, %i.m
  br i1 %.not23.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20: ; preds = %bb.g, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.b, %.thread.i ], [ %i.m, %bb.g ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %0, align 8, !tbaa !848
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !850
  store i32 %.138.i, ptr %0, align 8, !tbaa !848
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread: ; preds = %bb.g, %bb.e, %bb.d, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !842  ; 3 uses
  %i.q = icmp ugt i32 %1, %i.p
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread
  br i1 %2, label %.lr.ph.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %i.s = phi i32 [ %i.p, %.lr.ph.i ], [ %i.al, %bb.i ]
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !850
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [216 x i8], ptr %i.t, i64 %i.u ; 15 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.v, i8 0, i64 216, i1 false)
  store i32 -1, ptr %i.w, align 4, !tbaa !943
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 100
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  store atomic i32 1, ptr %i.x monotonic, align 4
  store atomic i8 1, ptr %i.y monotonic, align 4
  store atomic ptr null, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  store i8 1, ptr %i.aa, align 8, !tbaa !1008
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 114
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  store ptr null, ptr %i.ac, align 8, !tbaa !948
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.ab, i8 0, i64 18, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 148
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 164
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 176
  store atomic i32 1, ptr %i.ad monotonic, align 8
  store atomic i8 1, ptr %i.ae monotonic, align 4
  store atomic ptr null, ptr %i.af monotonic, align 8
  store i8 1, ptr %i.ag, align 8, !tbaa !880
  store i32 0, ptr %i.ah, align 4, !tbaa !292
  store atomic i32 0, ptr %i.ai monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.aj, i8 0, i64 33, i1 false)
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !842
  %i.al = add i32 %i.ak, 1                        ; 3 uses
  store i32 %i.al, ptr %i.o, align 4, !tbaa !842
  %i.am = icmp ult i32 %i.al, %1
  br i1 %i.am, label %bb.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, !llvm.loop !1020

bb.j:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread
  %i.an = icmp ult i32 %1, %i.p
  %or.cond = and i1 %2, %i.an
  br i1 %or.cond, label %bb.k, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE13shrink_vectorEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.h
  store i32 %1, ptr %i.o, align 4, !tbaa !842
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17: ; preds = %bb.b, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20 ], [ true, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE13shrink_vectorEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !842  ; 2 uses
  %i.c = sub i32 %i.b, %1                         ; 2 uses
  %.not5 = icmp eq i32 %i.c, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !850
  %i.f = zext i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [216 x i8], ptr %i.e, i64 %i.f
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5graph7graph_t8vertex_tD2Ev.exit
  %.07 = phi ptr [ %i.i, %_ZN5graph7graph_t8vertex_tD2Ev.exit ], [ %i.g, %.lr.ph.preheader ] ; 11 uses
  %.046 = phi i32 [ %i.h, %_ZN5graph7graph_t8vertex_tD2Ev.exit ], [ %i.c, %.lr.ph.preheader ]
  %i.h = add i32 %.046, -1                        ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.07, i64 -216
  %i.j = getelementptr inbounds i8, ptr %.07, i64 -72
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.j) #15
  %i.k = getelementptr inbounds i8, ptr %.07, i64 -120
  store atomic i32 -57005, ptr %i.k monotonic, align 4
  %i.l = getelementptr inbounds i8, ptr %.07, i64 -112 ; 2 uses
  %i.m = load atomic ptr, ptr %i.l acquire, align 8 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.m)
  %i.o = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.m) #15 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.m) #15
  store atomic ptr null, ptr %i.l monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph
  %i.p = getelementptr inbounds i8, ptr %.07, i64 -80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !948  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i, label %bb.c, !prof !20

bb.c:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  tail call void @hb_free(ptr noundef nonnull %i.q) #15
  br label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i

_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i:             ; preds = %bb.c, %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  %i.r = getelementptr inbounds i8, ptr %.07, i64 -184
  %i.s = load i32, ptr %i.r, align 8, !tbaa !302
  %i.t = add i32 %i.s, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.t, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.d, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

bb.d:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.u = getelementptr inbounds i8, ptr %.07, i64 -180
  store i32 0, ptr %i.u, align 4, !tbaa !305
  %i.v = getelementptr inbounds i8, ptr %.07, i64 -176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !306
  tail call void @hb_free(ptr noundef %i.w) #15
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i: ; preds = %bb.d, %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.x = getelementptr inbounds i8, ptr %.07, i64 -200
  %i.y = load i32, ptr %i.x, align 8, !tbaa !302
  %i.z = add i32 %i.y, -1
  %spec.select.i.i.i1.i.i = icmp ult i32 %i.z, -2
  br i1 %spec.select.i.i.i1.i.i, label %bb.e, label %_ZN5graph7graph_t8vertex_tD2Ev.exit

bb.e:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i
  %i.aa = getelementptr inbounds i8, ptr %.07, i64 -196
  store i32 0, ptr %i.aa, align 4, !tbaa !305
  %i.ab = getelementptr inbounds i8, ptr %.07, i64 -192
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !306
  tail call void @hb_free(ptr noundef %i.ac) #15
  br label %_ZN5graph7graph_t8vertex_tD2Ev.exit

_ZN5graph7graph_t8vertex_tD2Ev.exit:              ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i, %bb.e
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1021

._crit_edge:                                      ; preds = %_ZN5graph7graph_t8vertex_tD2Ev.exit, %bb.a
  store i32 %1, ptr %i.a, align 4, !tbaa !842
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK23hb_bit_set_invertible_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !tbaa !291, !range !132, !noundef !274
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.g = load i32, ptr %1, align 4, !tbaa !137    ; 5 uses
  store i32 %i.g, ptr %i.a, align 4, !tbaa !137
  %i.h = icmp eq i32 %i.g, -2
  br i1 %i.h, label %bb.d, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %1, align 4, !tbaa !137
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 %i.g, ptr %i.b, align 4, !tbaa !137
  %i.i = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b) ; 0 uses
  %i.j = add i32 %i.g, 1                          ; 2 uses
  %i.k = load i32, ptr %i.b, align 4, !tbaa !137
  %i.l = icmp ult i32 %i.j, %i.k
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.g, ptr %i.b, align 4, !tbaa !137
  %i.m = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !137
  %i.o = add i32 %i.n, 1                          ; 2 uses
  %i.p = icmp ne i32 %i.o, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i32 [ %i.o, %bb.f ], [ %i.j, %bb.e ]
  %.0 = phi i1 [ %i.p, %bb.f ], [ true, %bb.e ]
  store i32 %.sink, ptr %1, align 4, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i1 [ false, %bb.d ], [ %.0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %.2 = phi i1 [ %i.f, %bb.b ], [ %.1, %bb.h ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !137    ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !20

end_hunk_2
begin_hunk_3_@_ZN5graph7graph_t22sort_shortest_distanceEv:bb.a
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !836, !range !132, !noundef !274
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN5graph7graph_t13check_successEb.exit.thread, label %_ZN11hb_vector_tIjLb0EED2Ev.exit, !prof !280

_ZN5graph7graph_t13check_successEb.exit.thread:   ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit
  store i8 0, ptr %i.ae, align 1, !tbaa !836
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.f:                                             ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.thread
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !983 ; 6 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.thread396.sink.split, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.f
  %.not.i92.not = icmp eq i32 %i.ah, 0
  br i1 %.not.i92.not, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread, label %.preheader.i94, !prof !142

.preheader.i94:                                   ; preds = %bb.g, %.preheader.i94
  %.043.i95 = phi i32 [ %i.al, %.preheader.i94 ], [ 0, %bb.g ] ; 2 uses
  %i.aj = lshr i32 %.043.i95, 1
  %i.ak = add nuw i32 %.043.i95, 8
  %i.al = add nuw i32 %i.ak, %i.aj                ; 6 uses
  %i.am = icmp ugt i32 %i.ah, %i.al
  br i1 %i.am, label %.preheader.i94, label %.thread.i96, !llvm.loop !345

.thread.i96:                                      ; preds = %.preheader.i94
  %i.an = icmp ugt i32 %i.al, 1073741823
  br i1 %i.an, label %.thread396.sink.split, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, !prof !20

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %.thread.i96
  %i.ao = shl nuw i32 %i.al, 2
  %i.ap = zext i32 %i.ao to i64
  %i.aq = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ap) #15 ; 4 uses
  %.not22.i99 = icmp eq ptr %i.aq, null
  br i1 %.not22.i99, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38, label %bb.h, !prof !118

bb.h:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %i.ar = shl i32 %i.ah, 2                        ; 2 uses
  %.not.i.i.i.i37 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i37, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.as = zext i32 %i.ar to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aq, i8 0, i64 %i.as, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread

_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread:   ; preds = %bb.g, %bb.i, %bb.h
  %.sroa.0189.0.ph = phi i32 [ 0, %bb.g ], [ %i.al, %bb.h ], [ %i.al, %bb.i ] ; 5 uses
  %.sroa.13196.0.ph = phi ptr [ null, %bb.g ], [ %i.aq, %bb.h ], [ %i.aq, %bb.i ] ; 7 uses
  %i.at = load i8, ptr %i.ab, align 1, !tbaa !836, !range !132, !noundef !274
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.j, label %.thread396, !prof !134

_ZN11hb_vector_tIjLb0EE6resizeEi.exit38:          ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %.pre472 = load i8, ptr %i.ab, align 1, !tbaa !836, !range !132
  %i.av = trunc nuw i8 %.pre472 to i1
  br i1 %i.av, label %.thread396.sink.split, label %_ZN11hb_vector_tIjLb0EED2Ev.exit, !prof !89

bb.j:                                             ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread
  tail call void @_ZN5graph7graph_t14update_parentsEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !474
  %.not.i.not.i.i = icmp eq i32 %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %.0.i.i.i = select i1 %.not.i.not.i.i, ptr @_hb_NullPool, ptr %i.az, !prof !20
  %i.ba = load i32, ptr %.0.i.i.i, align 4, !tbaa !137 ; 3 uses
  %i.bb = load i32, ptr %i.b, align 4, !tbaa !842
  %.not.i.i = icmp ult i32 %i.ba, %i.bb
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = zext i32 %i.ba to i64
  %i.bf = getelementptr inbounds nuw [216 x i8], ptr %i.bd, i64 %i.be
  %.0.i.i = select i1 %.not.i.i, ptr %i.bf, ptr @_hb_NullPool, !prof !142 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1077
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 76
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !973 ; 3 uses
  %.not.i.i42 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i42, label %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !918
  %i.bm = load ptr, ptr %.0.i.i, align 8, !tbaa !919
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = icmp eq i32 %i.bj, 1
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.br = sdiv i64 %i.bp, -2
  br label %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit

bb.m:                                             ; preds = %bb.k
  %i.bs = sub nsw i64 0, %i.bp
  br label %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit

_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit: ; preds = %bb.j, %bb.l, %bb.m
  %.1.i.i43 = phi i64 [ 0, %bb.j ], [ %i.br, %bb.l ], [ %i.bs, %bb.m ]
  %i.bt = add nsw i64 %.1.i.i43, %i.bh
  %.sroa.speculate.load.false.sroa.speculated.i = tail call i64 @llvm.smax.i64(i64 %i.bt, i64 0)
  %i.bu = tail call i64 @llvm.umin.i64(i64 %.sroa.speculate.load.false.sroa.speculated.i, i64 8796093022207)
  %i.bv = icmp ugt i32 %i.bj, 2
  %i.bw = shl nuw nsw i64 %i.bu, 18
  %i.bx = select i1 %i.bv, i64 0, i64 %i.bw
  %.not.i45 = icmp sgt i32 %.sroa.0208.11296, 0
  br i1 %.not.i45, label %.lr.ph439, label %bb.n

bb.n:                                             ; preds = %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit
  %i.by = icmp slt i32 %.sroa.0208.11296, 0
  br i1 %i.by, label %_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread, label %.thread.i113, !prof !20

.thread.i113:                                     ; preds = %bb.n
  %.not9.i.i.i125 = icmp eq ptr %.sroa.42.12298, null
  br i1 %.not9.i.i.i125, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116, label %bb.o

bb.o:                                             ; preds = %.thread.i113
  %i.bz = tail call ptr @hb_malloc(i64 noundef 128) #15 ; 2 uses
  %.not10.i.i.i126 = icmp eq ptr %i.bz, null
  br i1 %.not10.i.i.i126, label %_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread, label %.lr.ph439, !prof !20

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116: ; preds = %.thread.i113
  %i.ca = tail call ptr @hb_realloc(ptr noundef null, i64 noundef 128) #15 ; 2 uses
  %.not22.i117 = icmp eq ptr %i.ca, null
  br i1 %.not22.i117, label %_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread, label %.lr.ph439, !prof !118

_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread: ; preds = %bb.n, %bb.o, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116
  %.sroa.42.14 = phi ptr [ %.sroa.42.12298, %bb.n ], [ null, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116 ], [ %.sroa.42.12298, %bb.o ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %.critedge

.lr.ph439:                                        ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116, %bb.o, %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit
  %.sroa.0208.6 = phi i32 [ %.sroa.0208.11296, %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit ], [ 8, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116 ], [ 8, %bb.o ]
  %.sroa.42.6 = phi ptr [ %.sroa.42.12298, %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit ], [ %i.ca, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116 ], [ %i.bz, %bb.o ] ; 3 uses
  store i64 %i.bx, ptr %.sroa.42.6, align 8, !tbaa !825
  %.sroa.4292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.42.6, i64 8
  store i32 %i.ba, ptr %.sroa.4292.0..sroa_idx, align 8, !tbaa !137
  %i.cb = load i32, ptr @_hb_NullPool, align 16   ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.p

.loopexit:                                        ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit
  %i.cd = icmp slt i32 %.sroa.0208.1, 0
  br i1 %i.cd, label %.critedge, label %bb.p, !llvm.loop !1078

bb.p:                                             ; preds = %.lr.ph439, %.loopexit
  %.022438 = phi i32 [ 1, %.lr.ph439 ], [ %.1, %.loopexit ]
  %.023437 = phi i32 [ 0, %.lr.ph439 ], [ %i.dx, %.loopexit ] ; 6 uses
  %.sroa.42.0436 = phi ptr [ %.sroa.42.6, %.lr.ph439 ], [ %.sroa.42.1, %.loopexit ] ; 11 uses
  %.sroa.22.0435 = phi i32 [ 1, %.lr.ph439 ], [ %.sroa.22.1, %.loopexit ] ; 7 uses
  %.sroa.0208.0434 = phi i32 [ %.sroa.0208.6, %.lr.ph439 ], [ %.sroa.0208.1, %.loopexit ] ; 9 uses
  %i.ce = icmp eq i32 %.sroa.22.0435, 0
  br i1 %i.ce, label %_ZN5graph7graph_t13check_successEb.exit81, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.42.0436, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !137 ; 3 uses
  %i.cf = add i32 %.sroa.22.0435, -1              ; 6 uses
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.0436, i64 %i.cg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.42.0436, ptr noundef nonnull align 8 dereferenceable(12) %i.ch, i64 12, i1 false), !tbaa.struct !1079
  %i.ci = icmp slt i32 %i.cf, 0
  br i1 %i.ci, label %.lr.ph428.preheader, label %bb.r, !prof !20

bb.r:                                             ; preds = %bb.q
  %.not.i130 = icmp samesign ugt i32 %i.cf, %.sroa.0208.0434
  br i1 %.not.i130, label %.preheader.i132, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit, !prof !20

.preheader.i132:                                  ; preds = %bb.r, %.preheader.i132
  %.043.i133 = phi i32 [ %i.cl, %.preheader.i132 ], [ %.sroa.0208.0434, %bb.r ] ; 2 uses
  %i.cj = lshr i32 %.043.i133, 1
  %i.ck = add nuw i32 %.043.i133, 8
  %i.cl = add nuw i32 %i.ck, %i.cj                ; 6 uses
  %i.cm = icmp ugt i32 %i.cf, %i.cl
  br i1 %i.cm, label %.preheader.i132, label %.thread.i134, !llvm.loop !1076

.thread.i134:                                     ; preds = %.preheader.i132
  %i.cn = icmp ugt i32 %i.cl, 268435455
  br i1 %i.cn, label %.critedge.i149, label %bb.s, !prof !20

.critedge.i149:                                   ; preds = %.thread.i134
  %i.co = xor i32 %.sroa.0208.0434, -1
  br label %.lr.ph428.preheader

bb.s:                                             ; preds = %.thread.i134
  %.not49.i136 = icmp eq i32 %.sroa.0208.0434, 0
  %i.cp = shl nuw i32 %i.cl, 4
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  br i1 %.not49.i136, label %bb.t, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137

bb.t:                                             ; preds = %bb.s
  %i.cr = tail call ptr @hb_malloc(i64 noundef %i.cq) #15 ; 3 uses
  %.not10.i.i.i147 = icmp eq ptr %i.cr, null
  br i1 %.not10.i.i.i147, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144, label %bb.u, !prof !20

bb.u:                                             ; preds = %bb.t
  %i.cs = zext i32 %.sroa.22.0435 to i64
  %i.ct = shl nuw nsw i64 %i.cs, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr nonnull readonly align 1 %.sroa.42.0436, i64 %i.ct, i1 false), !alias.scope !1080
  br label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137: ; preds = %bb.s
  %i.cu = tail call ptr @hb_realloc(ptr noundef nonnull %.sroa.42.0436, i64 noundef %i.cq) #15 ; 2 uses
  %.not22.i138 = icmp eq ptr %i.cu, null
  br i1 %.not22.i138, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit, !prof !118

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144: ; preds = %bb.t, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137
  %i.cv = xor i32 %.sroa.0208.0434, -1
  br label %.lr.ph428.preheader

_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit: ; preds = %bb.u, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137, %bb.r
  %.sroa.0208.13.ph = phi i32 [ %i.cl, %bb.u ], [ %i.cl, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137 ], [ %.sroa.0208.0434, %bb.r ] ; 2 uses
  %.sroa.42.16.ph = phi ptr [ %i.cr, %bb.u ], [ %i.cu, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137 ], [ %.sroa.42.0436, %bb.r ] ; 2 uses
  %switch = icmp ult i32 %.sroa.22.0435, 3
  br i1 %switch, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit, label %.lr.ph428.preheader

.lr.ph428.preheader:                              ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144, %.critedge.i149, %bb.q
  %.sroa.0208.8364518 = phi i32 [ %.sroa.0208.13.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %i.cv, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144 ], [ %i.co, %.critedge.i149 ], [ %.sroa.0208.0434, %bb.q ] ; 3 uses
  %.sroa.22.5366517 = phi i32 [ %i.cf, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.22.0435, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144 ], [ %.sroa.22.0435, %.critedge.i149 ], [ %.sroa.22.0435, %bb.q ] ; 5 uses
  %.sroa.42.8368516 = phi ptr [ %.sroa.42.16.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.42.0436, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144 ], [ %.sroa.42.0436, %.critedge.i149 ], [ %.sroa.42.0436, %bb.q ] ; 10 uses
  %.pre = load i64, ptr %.sroa.42.8368516, align 8, !tbaa !1084 ; 3 uses
  br label %.lr.ph428

.lr.ph428:                                        ; preds = %.lr.ph428.preheader, %bb.y
  %i.cw = phi i32 [ %i.dr, %bb.y ], [ 2, %.lr.ph428.preheader ] ; 4 uses
  %i.cx = phi i32 [ %i.dq, %bb.y ], [ 1, %.lr.ph428.preheader ] ; 3 uses
  %.020.i427 = phi i32 [ %.0.i33, %bb.y ], [ 0, %.lr.ph428.preheader ]
  %i.cy = icmp ult i32 %i.cw, %.sroa.22.5366517   ; 2 uses
  %i.cz = zext i32 %.020.i427 to i64
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %i.cz ; 2 uses
  %i.db = zext i32 %i.cx to i64                   ; 2 uses
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !1084 ; 3 uses
  %.not.i32 = icmp sgt i64 %.pre, %i.dd
  br i1 %.not.i32, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.lr.ph428
  br i1 %i.cy, label %bb.w, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.w:                                             ; preds = %bb.v
  %i.de = zext i32 %i.cw to i64
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !1084 ; 2 uses
  %.not27.i = icmp sgt i64 %.pre, %i.dg
  br i1 %.not27.i, label %.thread370, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.x:                                             ; preds = %.lr.ph428
  br i1 %i.cy, label %..thread370_crit_edge, label %bb.y

..thread370_crit_edge:                            ; preds = %bb.x
  %.phi.trans.insert = zext i32 %i.cw to i64
  %.phi.trans.insert460 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %.phi.trans.insert
  %.pre461 = load i64, ptr %.phi.trans.insert460, align 8, !tbaa !1084
  br label %.thread370

.thread370:                                       ; preds = %..thread370_crit_edge, %bb.w
  %i.dh = phi i64 [ %.pre461, %..thread370_crit_edge ], [ %i.dg, %bb.w ]
  %i.di = icmp slt i64 %i.dd, %i.dh
  %spec.select.i = select i1 %i.di, i32 %i.cx, i32 %i.cw ; 2 uses
  %.pre462 = zext i32 %spec.select.i to i64       ; 2 uses
  %.phi.trans.insert463 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %.pre462
  %.pre464 = load i64, ptr %.phi.trans.insert463, align 8, !tbaa !825
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread370
  %i.dj = phi i64 [ %i.dd, %bb.x ], [ %.pre464, %.thread370 ]
  %.pre-phi = phi i64 [ %i.db, %bb.x ], [ %.pre462, %.thread370 ]
  %.0.i33 = phi i32 [ %i.cx, %bb.x ], [ %spec.select.i, %.thread370 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %.pre-phi ; 2 uses
  store i64 %i.dj, ptr %i.da, align 8, !tbaa !825
  store i64 %.pre, ptr %i.dk, align 8, !tbaa !825
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %i.dn = load i32, ptr %i.dl, align 8, !tbaa !137
  %i.do = load i32, ptr %i.dm, align 8, !tbaa !137
  store i32 %i.do, ptr %i.dl, align 8, !tbaa !137
  store i32 %i.dn, ptr %i.dm, align 8, !tbaa !137
  %i.dp = shl i32 %.0.i33, 1                      ; 2 uses
  %i.dq = or disjoint i32 %i.dp, 1                ; 2 uses
  %i.dr = add nuw i32 %i.dp, 2
  %i.ds = icmp ult i32 %i.dq, %.sroa.22.5366517
  br i1 %i.ds, label %.lr.ph428, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit:  ; preds = %bb.y, %bb.w, %bb.v, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit
  %.sroa.42.8369 = phi ptr [ %.sroa.42.16.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.42.8368516, %bb.v ], [ %.sroa.42.8368516, %bb.w ], [ %.sroa.42.8368516, %bb.y ] ; 3 uses
  %.sroa.22.5367 = phi i32 [ %i.cf, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.22.5366517, %bb.v ], [ %.sroa.22.5366517, %bb.w ], [ %.sroa.22.5366517, %bb.y ]
  %.sroa.0208.8365 = phi i32 [ %.sroa.0208.13.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.0208.8364518, %bb.v ], [ %.sroa.0208.8364518, %bb.w ], [ %.sroa.0208.8364518, %bb.y ] ; 3 uses
  %i.dt = load i32, ptr %i.r, align 4, !tbaa !474 ; 2 uses
  %i.du = icmp uge i32 %.023437, %i.dt
  %i.dv = load i8, ptr %i.ab, align 1, !tbaa !836, !range !132, !noundef !274
  %i.dw = trunc nuw i8 %i.dv to i1                ; 2 uses
  %brmerge.i49.not = and i1 %i.du, %i.dw
  br i1 %brmerge.i49.not, label %.thread396.sink.split, label %_ZN5graph7graph_t13check_successEb.exit50, !prof !280

_ZN5graph7graph_t13check_successEb.exit50:        ; preds = %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit
  br i1 %i.dw, label %bb.z, label %.thread396, !prof !134

bb.z:                                             ; preds = %_ZN5graph7graph_t13check_successEb.exit50
  %i.dx = add i32 %.023437, 1                     ; 2 uses
  %.not.i51 = icmp ult i32 %.023437, %i.dt
  br i1 %.not.i51, label %bb.ab, label %bb.aa, !prof !142

bb.aa:                                            ; preds = %bb.z
  store i32 %i.cb, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

bb.ab:                                            ; preds = %bb.z
  %i.dy = load ptr, ptr %i.cc, align 8, !tbaa !473
  %i.dz = zext i32 %.023437 to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dz
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

_ZN11hb_vector_tIjLb0EEixEi.exit:                 ; preds = %bb.aa, %bb.ab
  %.0.i52 = phi ptr [ @_hb_CrapPool, %bb.aa ], [ %i.ea, %bb.ab ]
  store i32 %.sroa.2.0.copyload.i, ptr %.0.i52, align 4, !tbaa !137
  %i.eb = load i32, ptr %i.b, align 4, !tbaa !842
  %.not.i53 = icmp ult i32 %.sroa.2.0.copyload.i, %i.eb
  br i1 %.not.i53, label %bb.ad, label %bb.ac, !prof !142

bb.ac:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

bb.ad:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  %i.ec = load ptr, ptr %i.bc, align 8, !tbaa !850
  %i.ed = zext i32 %.sroa.2.0.copyload.i to i64
  %i.ee = getelementptr inbounds nuw [216 x i8], ptr %i.ec, i64 %i.ed
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit: ; preds = %bb.ac, %bb.ad
  %.0.i54 = phi ptr [ @_hb_CrapPool, %bb.ac ], [ %i.ee, %bb.ad ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i54, i64 20
  %.val.i = load i32, ptr %i.ef, align 4, !tbaa !305, !noalias !1086 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i54, i64 24
  %.val1.i = load ptr, ptr %i.eg, align 8, !tbaa !306, !noalias !1086 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i54, i64 36
  %.val2.i = load i32, ptr %i.eh, align 4, !tbaa !305, !noalias !1086 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i54, i64 40
  %.val3.i = load ptr, ptr %i.ei, align 8, !tbaa !306, !noalias !1086 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %.val.i to i64
  %.sroa.2.8.insert.ext.i.i.i.i6.i.i = zext i32 %.val2.i to i64
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %.val1.i, i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i
  %i.ek = getelementptr inbounds nuw [12 x i8], ptr %.val3.i, i64 %.sroa.2.8.insert.ext.i.i.i.i6.i.i
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer: ; preds = %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit, %bb.ay
  %.sroa.0208.1.ph.ph = phi i32 [ %.sroa.0208.8365, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.0208.2, %bb.ay ]
  %.sroa.22.1.ph.ph = phi i32 [ %.sroa.22.5367, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.22.2, %bb.ay ]
  %.sroa.42.1.ph.ph = phi ptr [ %.sroa.42.8369, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.42.2, %bb.ay ]
  %.sroa.17.0.ph.ph = phi i32 [ %.val2.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %i.ho, %bb.ay ]
  %.sroa.13.0.ph.ph = phi ptr [ %.val3.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %i.hp, %bb.ay ] ; 3 uses
  %.sroa.7.0.ph.ph = phi i32 [ %.val.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ 0, %bb.ay ]
  %.sroa.0172.0.ph.ph = phi ptr [ %.val1.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.0172.0, %bb.ay ]
  %.1.ph.ph = phi i32 [ %.022438, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.2, %bb.ay ]
  %.not.i3.i = icmp ne ptr %.sroa.13.0.ph.ph, %i.ek
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer, %bb.ax
  %.sroa.0208.1.ph = phi i32 [ %.sroa.0208.2, %bb.ax ], [ %.sroa.0208.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.22.1.ph = phi i32 [ %.sroa.22.2, %bb.ax ], [ %.sroa.22.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.42.1.ph = phi ptr [ %.sroa.42.2, %bb.ax ], [ %.sroa.42.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.17.0.ph = phi i32 [ 0, %bb.ax ], [ %.sroa.17.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ] ; 3 uses
  %.sroa.7.0.ph = phi i32 [ 0, %bb.ax ], [ %.sroa.7.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.0172.0.ph = phi ptr [ %.sroa.0172.0, %bb.ax ], [ %.sroa.0172.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.1.ph = phi i32 [ %.2, %bb.ax ], [ %.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %i.el = icmp ne i32 %.sroa.17.0.ph, 0
  %i.em = select i1 %.not.i3.i, i1 true, i1 %i.el
  %.not.i.i.i.i58 = icmp eq i32 %.sroa.17.0.ph, 0 ; 2 uses
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i58, ptr @_hb_NullPool, ptr %.sroa.13.0.ph.ph, !prof !20
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i
  %.sroa.0208.1 = phi i32 [ %.sroa.0208.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.0208.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 16 uses
  %.sroa.22.1 = phi i32 [ %.sroa.22.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.22.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 11 uses
  %.sroa.42.1 = phi ptr [ %.sroa.42.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.42.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 11 uses
  %.sroa.7.0 = phi i32 [ %i.hm, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.7.0.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 3 uses
  %.sroa.0172.0 = phi ptr [ %i.hn, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.0172.0.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 5 uses
  %.1 = phi i32 [ %.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 4 uses
  %.not.i.i55 = icmp ne ptr %.sroa.0172.0, %i.ej
  %i.en = icmp ne i32 %.sroa.7.0, 0
  %i.eo = select i1 %.not.i.i55, i1 true, i1 %i.en
  %brmerge = select i1 %i.eo, i1 true, i1 %i.em
  br i1 %brmerge, label %_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread, label %.loopexit

_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit
  %.not.i.i56 = icmp eq i32 %.sroa.7.0, 0         ; 2 uses
  %.0.i.i57 = select i1 %.not.i.i56, ptr %spec.select.i.i.i.i, ptr %.sroa.0172.0
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i.i57, i64 8 ; 3 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !812 ; 2 uses
  %.not.i59 = icmp ult i32 %i.eq, %i.ah
  br i1 %.not.i59, label %bb.af, label %bb.ae, !prof !142

bb.ae:                                            ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread
  store i32 %i.cb, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit61

bb.af:                                            ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13196.0.ph, i64 %i.er ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5graph7graph_t16update_distancesEv:bb.a
  %.0.i.i = select i1 %.not.i.not.i, ptr @_hb_NullPool, ptr %i.n, !prof !20
  %i.o = load i32, ptr %.0.i.i, align 4, !tbaa !137 ; 2 uses
  %.not.i42 = icmp ult i32 %i.o, %i.e
  br i1 %.not.i42, label %.thread, label %bb.d, !prof !142

.thread:                                          ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !850
  %i.r = zext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw [216 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i64 0, ptr %i.t, align 8, !tbaa !1077
  br label %.preheader.i.preheader

bb.d:                                             ; preds = %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_hb_CrapPool, i64 56), align 8, !tbaa !1077
  br i1 %.not366, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85, label %.preheader.i.preheader, !prof !134

.preheader.i.preheader:                           ; preds = %.thread, %bb.d
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.043.i = phi i32 [ %i.w, %.preheader.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.u = lshr i32 %.043.i, 1
  %i.v = add i32 %.043.i, 8
  %i.w = add i32 %i.v, %i.u                       ; 5 uses
  %i.x = icmp ugt i32 %i.e, %i.w
  br i1 %i.x, label %.preheader.i, label %.thread.i, !llvm.loop !1076

.thread.i:                                        ; preds = %.preheader.i
  %i.y = icmp ugt i32 %i.w, 268435455
  br i1 %i.y, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, !prof !20

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.z = shl nuw i32 %i.w, 4
  %i.aa = zext i32 %i.z to i64
  %i.ab = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.aa) #15 ; 2 uses
  %.not22.i = icmp eq ptr %i.ab, null
  br i1 %.not22.i, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit, !prof !118

_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i
  %i.ac = load i32, ptr %i.k, align 4, !tbaa !474
  %.not.i.not.i44 = icmp eq i32 %i.ac, 0
  %i.ad = load ptr, ptr %i.m, align 8
  %.0.i.i45 = select i1 %.not.i.not.i44, ptr @_hb_NullPool, ptr %i.ad, !prof !20
  %i.ae = load i32, ptr %.0.i.i45, align 4, !tbaa !137
  br label %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85: ; preds = %bb.d
  %i.af = load i32, ptr %i.k, align 4, !tbaa !474
  %.not.i.not.i44268 = icmp eq i32 %i.af, 0
  %i.ag = load ptr, ptr %i.m, align 8
  %.0.i.i45269 = select i1 %.not.i.not.i44268, ptr @_hb_NullPool, ptr %i.ag, !prof !20
  %i.ah = load i32, ptr %.0.i.i45269, align 4, !tbaa !137
  %i.ai = tail call ptr @hb_realloc(ptr noundef null, i64 noundef 128) #15 ; 2 uses
  %.not22.i86 = icmp eq ptr %i.ai, null
  br i1 %.not22.i86, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread, label %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit, !prof !118

_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, %.thread.i, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN19hb_priority_queue_tIlE6insertElj.exit33

_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85
  %i.aj = phi i32 [ %i.ae, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit ], [ %i.ah, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85 ]
  %.sroa.0178.4 = phi i32 [ %i.w, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit ], [ 8, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85 ]
  %.sroa.43.4 = phi ptr [ %i.ab, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit ], [ %i.ai, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85 ] ; 3 uses
  store i64 0, ptr %.sroa.43.4, align 8, !tbaa !825
  %.sroa.4264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.43.4, i64 8
  store i32 %i.aj, ptr %.sroa.4264.0..sroa_idx, align 8, !tbaa !137
  br label %_ZN19hb_priority_queue_tIlE6insertElj.exit33

_ZN19hb_priority_queue_tIlE6insertElj.exit33:     ; preds = %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread
  %.sroa.43.5284 = phi ptr [ null, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread ], [ %.sroa.43.4, %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit ] ; 2 uses
  %.sroa.22.4283 = phi i32 [ 0, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread ], [ 1, %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit ]
  %.sroa.0178.5282 = phi i32 [ -1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread ], [ %.sroa.0178.4, %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit ] ; 2 uses
  %i.ak = load i32, ptr %i.d, align 4, !tbaa !983 ; 4 uses
  %or.cond = icmp sgt i32 %i.ak, 0
  br i1 %or.cond, label %.preheader.i.i, label %_ZN11hb_vector_tIbLb0EE6resizeEi.exit, !prof !1109

.preheader.i.i:                                   ; preds = %_ZN19hb_priority_queue_tIlE6insertElj.exit33, %.preheader.i.i
  %.053.i.i = phi i32 [ %i.an, %.preheader.i.i ], [ 0, %_ZN19hb_priority_queue_tIlE6insertElj.exit33 ] ; 2 uses
  %i.al = lshr i32 %.053.i.i, 1
  %i.am = add nuw i32 %.053.i.i, 8
  %i.an = add nuw i32 %i.am, %i.al                ; 3 uses
  %i.ao = icmp ugt i32 %i.ak, %i.an
  br i1 %i.ao, label %.preheader.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, !llvm.loop !1110

_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i: ; preds = %.preheader.i.i
  %i.ap = zext i32 %i.an to i64
  %i.aq = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ap) #15 ; 3 uses
  %.not22.i.i = icmp eq ptr %i.aq, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIbLb0EE6resizeEi.exit, label %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, !prof !88

_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i: ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i
  %i.ar = zext nneg i32 %i.ak to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aq, i8 0, i64 %i.ar, i1 false)
  br label %_ZN11hb_vector_tIbLb0EE6resizeEi.exit

_ZN11hb_vector_tIbLb0EE6resizeEi.exit:            ; preds = %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, %_ZN19hb_priority_queue_tIlE6insertElj.exit33
  %.sroa.0158.1 = phi i1 [ false, %_ZN19hb_priority_queue_tIlE6insertElj.exit33 ], [ false, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i ], [ true, %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i ]
  %.sroa.8161.0 = phi i32 [ 0, %_ZN19hb_priority_queue_tIlE6insertElj.exit33 ], [ 0, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i ], [ %i.ak, %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i ] ; 2 uses
  %.sroa.15.1 = phi ptr [ null, %_ZN19hb_priority_queue_tIlE6insertElj.exit33 ], [ null, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i ], [ %i.aq, %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i ] ; 4 uses
  %i.as = icmp slt i32 %.sroa.0178.5282, 0
  br i1 %i.as, label %.critedge, label %.lr.ph363

.lr.ph363:                                        ; preds = %_ZN11hb_vector_tIbLb0EE6resizeEi.exit
  %i.at = load i8, ptr @_hb_NullPool, align 16    ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.e ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.e ]
  %i.av = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  store i64 9223372036854775807, ptr %i.aw, align 8, !tbaa !1077
  %i.ax = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 272
  store i64 9223372036854775807, ptr %i.ay, align 8, !tbaa !1077
  %i.az = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 488
  store i64 9223372036854775807, ptr %i.ba, align 8, !tbaa !1077
  %i.bb = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 704
  store i64 9223372036854775807, ptr %i.bc, align 8, !tbaa !1077
  %i.bd = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 920
  store i64 9223372036854775807, ptr %i.be, align 8, !tbaa !1077
  %i.bf = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1136
  store i64 9223372036854775807, ptr %i.bg, align 8, !tbaa !1077
  %i.bh = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1352
  store i64 9223372036854775807, ptr %i.bi, align 8, !tbaa !1077
  %i.bj = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1568
  store i64 9223372036854775807, ptr %i.bk, align 8, !tbaa !1077
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1111

bb.f:                                             ; preds = %.lr.ph363, %.loopexit
  %.sroa.43.0362 = phi ptr [ %.sroa.43.5284, %.lr.ph363 ], [ %.sroa.43.3, %.loopexit ] ; 12 uses
  %.sroa.22.0361 = phi i32 [ %.sroa.22.4283, %.lr.ph363 ], [ %.sroa.22.3, %.loopexit ] ; 6 uses
  %.sroa.0178.0360 = phi i32 [ %.sroa.0178.5282, %.lr.ph363 ], [ %.sroa.0178.3, %.loopexit ] ; 10 uses
  %i.bl = icmp eq i32 %.sroa.22.0361, 0
  br i1 %i.bl, label %_ZN5graph7graph_t13check_successEb.exit.thread, label %bb.g

_ZN5graph7graph_t13check_successEb.exit.thread:   ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !836, !range !132, !noundef !274
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.am, label %_ZN5graph7graph_t13check_successEb.exit73

bb.g:                                             ; preds = %bb.f
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.43.0362, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !137 ; 5 uses
  %i.bp = add i32 %.sroa.22.0361, -1              ; 7 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.0362, i64 %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.43.0362, ptr noundef nonnull align 8 dereferenceable(12) %i.br, i64 12, i1 false), !tbaa.struct !1079
  %i.bs = icmp slt i32 %i.bp, 0
  br i1 %i.bs, label %.lr.ph353.preheader, label %bb.h, !prof !20

bb.h:                                             ; preds = %bb.g
  %.not.i99 = icmp samesign ugt i32 %i.bp, %.sroa.0178.0360
  br i1 %.not.i99, label %.preheader.i101, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit, !prof !20

.preheader.i101:                                  ; preds = %bb.h, %.preheader.i101
  %.043.i102 = phi i32 [ %i.bv, %.preheader.i101 ], [ %.sroa.0178.0360, %bb.h ] ; 2 uses
  %i.bt = lshr i32 %.043.i102, 1
  %i.bu = add nuw i32 %.043.i102, 8
  %i.bv = add nuw i32 %i.bu, %i.bt                ; 6 uses
  %i.bw = icmp ugt i32 %i.bp, %i.bv
  br i1 %i.bw, label %.preheader.i101, label %.thread.i103, !llvm.loop !1076

.thread.i103:                                     ; preds = %.preheader.i101
  %i.bx = icmp ugt i32 %i.bv, 268435455
  br i1 %i.bx, label %.critedge.i118, label %bb.i, !prof !20

.critedge.i118:                                   ; preds = %.thread.i103
  %i.by = xor i32 %.sroa.0178.0360, -1
  br label %.lr.ph353.preheader

bb.i:                                             ; preds = %.thread.i103
  %.not49.i105 = icmp eq i32 %.sroa.0178.0360, 0
  %i.bz = shl nuw i32 %i.bv, 4
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  br i1 %.not49.i105, label %bb.j, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106

bb.j:                                             ; preds = %bb.i
  %i.cb = tail call ptr @hb_malloc(i64 noundef %i.ca) #15 ; 3 uses
  %.not10.i.i.i116 = icmp eq ptr %i.cb, null
  br i1 %.not10.i.i.i116, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.cc = zext i32 %.sroa.22.0361 to i64
  %i.cd = shl nuw nsw i64 %i.cc, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr nonnull readonly align 1 %.sroa.43.0362, i64 %i.cd, i1 false), !alias.scope !1112
  br label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106: ; preds = %bb.i
  %i.ce = tail call ptr @hb_realloc(ptr noundef nonnull %.sroa.43.0362, i64 noundef %i.ca) #15 ; 2 uses
  %.not22.i107 = icmp eq ptr %i.ce, null
  br i1 %.not22.i107, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread, !prof !118

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113: ; preds = %bb.j, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106
  %i.cf = xor i32 %.sroa.0178.0360, -1
  br label %.lr.ph353.preheader

_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit: ; preds = %bb.h
  %i.cg = icmp eq i32 %i.bp, 0
  br i1 %i.cg, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread

_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106, %bb.k, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit
  %.sroa.43.6305 = phi ptr [ %.sroa.43.0362, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %i.ce, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106 ], [ %i.cb, %bb.k ] ; 2 uses
  %.sroa.0178.6301 = phi i32 [ %.sroa.0178.0360, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %i.bv, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106 ], [ %i.bv, %bb.k ] ; 2 uses
  %i.ch = icmp samesign ugt i32 %i.bp, 1
  br i1 %i.ch, label %.lr.ph353.preheader, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

.lr.ph353.preheader:                              ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113, %.critedge.i118, %bb.g, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread
  %.sroa.0178.6301419 = phi i32 [ %.sroa.0178.6301, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %i.cf, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113 ], [ %i.by, %.critedge.i118 ], [ %.sroa.0178.0360, %bb.g ] ; 3 uses
  %.sroa.22.5303418 = phi i32 [ %i.bp, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %.sroa.22.0361, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113 ], [ %.sroa.22.0361, %.critedge.i118 ], [ %.sroa.22.0361, %bb.g ] ; 5 uses
  %.sroa.43.6305417 = phi ptr [ %.sroa.43.6305, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %.sroa.43.0362, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113 ], [ %.sroa.43.0362, %.critedge.i118 ], [ %.sroa.43.0362, %bb.g ] ; 10 uses
  %.pre = load i64, ptr %.sroa.43.6305417, align 8, !tbaa !1084 ; 3 uses
  br label %.lr.ph353

.lr.ph353:                                        ; preds = %.lr.ph353.preheader, %bb.o
  %i.ci = phi i32 [ %i.dd, %bb.o ], [ 2, %.lr.ph353.preheader ] ; 4 uses
  %i.cj = phi i32 [ %i.dc, %bb.o ], [ 1, %.lr.ph353.preheader ] ; 3 uses
  %.020.i352 = phi i32 [ %.0.i41, %bb.o ], [ 0, %.lr.ph353.preheader ]
  %i.ck = icmp ult i32 %i.ci, %.sroa.22.5303418   ; 2 uses
  %i.cl = zext i32 %.020.i352 to i64
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %i.cl ; 2 uses
  %i.cn = zext i32 %i.cj to i64                   ; 2 uses
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !1084 ; 3 uses
  %.not.i40 = icmp sgt i64 %.pre, %i.cp
  br i1 %.not.i40, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph353
  br i1 %i.ck, label %bb.m, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.m:                                             ; preds = %bb.l
  %i.cq = zext i32 %i.ci to i64
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !1084 ; 2 uses
  %.not27.i = icmp sgt i64 %.pre, %i.cs
  br i1 %.not27.i, label %.thread307, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.n:                                             ; preds = %.lr.ph353
  br i1 %i.ck, label %..thread307_crit_edge, label %bb.o

..thread307_crit_edge:                            ; preds = %bb.n
  %.phi.trans.insert = zext i32 %i.ci to i64
  %.phi.trans.insert373 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %.phi.trans.insert
  %.pre374 = load i64, ptr %.phi.trans.insert373, align 8, !tbaa !1084
  br label %.thread307

.thread307:                                       ; preds = %..thread307_crit_edge, %bb.m
  %i.ct = phi i64 [ %.pre374, %..thread307_crit_edge ], [ %i.cs, %bb.m ]
  %i.cu = icmp slt i64 %i.cp, %i.ct
  %spec.select.i = select i1 %i.cu, i32 %i.cj, i32 %i.ci ; 2 uses
  %.pre375 = zext i32 %spec.select.i to i64       ; 2 uses
  %.phi.trans.insert376 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %.pre375
  %.pre377 = load i64, ptr %.phi.trans.insert376, align 8, !tbaa !825
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread307
  %i.cv = phi i64 [ %i.cp, %bb.n ], [ %.pre377, %.thread307 ]
  %.pre-phi = phi i64 [ %i.cn, %bb.n ], [ %.pre375, %.thread307 ]
  %.0.i41 = phi i32 [ %i.cj, %bb.n ], [ %spec.select.i, %.thread307 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %.pre-phi ; 2 uses
  store i64 %i.cv, ptr %i.cm, align 8, !tbaa !825
  store i64 %.pre, ptr %i.cw, align 8, !tbaa !825
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.cz = load i32, ptr %i.cx, align 8, !tbaa !137
  %i.da = load i32, ptr %i.cy, align 8, !tbaa !137
  store i32 %i.da, ptr %i.cx, align 8, !tbaa !137
  store i32 %i.cz, ptr %i.cy, align 8, !tbaa !137
  %i.db = shl i32 %.0.i41, 1                      ; 2 uses
  %i.dc = or disjoint i32 %i.db, 1                ; 2 uses
  %i.dd = add nuw i32 %i.db, 2
  %i.de = icmp ult i32 %i.dc, %.sroa.22.5303418
  br i1 %i.de, label %.lr.ph353, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit:  ; preds = %bb.o, %bb.m, %bb.l, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit
  %.sroa.43.6306 = phi ptr [ %.sroa.43.0362, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.43.6305, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %.sroa.43.6305417, %bb.l ], [ %.sroa.43.6305417, %bb.m ], [ %.sroa.43.6305417, %bb.o ] ; 2 uses
  %.sroa.22.5304 = phi i32 [ 0, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ 1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %.sroa.22.5303418, %bb.l ], [ %.sroa.22.5303418, %bb.m ], [ %.sroa.22.5303418, %bb.o ] ; 2 uses
  %.sroa.0178.6302 = phi i32 [ %.sroa.0178.0360, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.0178.6301, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %.sroa.0178.6301419, %bb.l ], [ %.sroa.0178.6301419, %bb.m ], [ %.sroa.0178.6301419, %bb.o ] ; 2 uses
  %.not.i49 = icmp ult i32 %.sroa.2.0.copyload.i, %.sroa.8161.0 ; 2 uses
  br i1 %.not.i49, label %bb.q, label %bb.p, !prof !142

bb.p:                                             ; preds = %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit
  store i8 %i.at, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIbLb0EEixEi.exit

bb.q:                                             ; preds = %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit
  %i.df = zext i32 %.sroa.2.0.copyload.i to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.15.1, i64 %i.df
  %.pre378 = load i8, ptr %i.dg, align 1, !tbaa !255, !range !132
  br label %_ZN11hb_vector_tIbLb0EEixEi.exit

_ZN11hb_vector_tIbLb0EEixEi.exit:                 ; preds = %bb.p, %bb.q
  %i.dh = phi i8 [ %i.at, %bb.p ], [ %.pre378, %bb.q ]
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %.loopexit, label %bb.r, !llvm.loop !1116

bb.r:                                             ; preds = %_ZN11hb_vector_tIbLb0EEixEi.exit
  %i.dj = load i32, ptr %i.d, align 4, !tbaa !842
  %.not.i51 = icmp ult i32 %.sroa.2.0.copyload.i, %i.dj
  br i1 %.not.i51, label %bb.t, label %bb.s, !prof !142

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53

bb.t:                                             ; preds = %bb.r
  %i.dk = load ptr, ptr %i.au, align 8, !tbaa !850
  %i.dl = zext i32 %.sroa.2.0.copyload.i to i64
  %i.dm = getelementptr inbounds nuw [216 x i8], ptr %i.dk, i64 %i.dl
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53: ; preds = %bb.s, %bb.t
  %.0.i52 = phi ptr [ @_hb_CrapPool, %bb.s ], [ %i.dm, %bb.t ] ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i52, i64 56
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !1077
  br i1 %.not.i49, label %bb.v, label %bb.u, !prof !142

bb.u:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53
  store i8 %i.at, ptr @_hb_CrapPool, align 16
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

bb.v:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53
  %i.dp = zext i32 %.sroa.2.0.copyload.i to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.15.1, i64 %i.dp
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit: ; preds = %bb.u, %bb.v
  %.0.i55 = phi ptr [ @_hb_CrapPool, %bb.u ], [ %i.dq, %bb.v ]
  store i8 1, ptr %.0.i55, align 1, !tbaa !255
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i52, i64 20
  %.val.i = load i32, ptr %i.dr, align 4, !tbaa !305, !noalias !1117 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i52, i64 24
  %.val1.i = load ptr, ptr %i.ds, align 8, !tbaa !306, !noalias !1117 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i52, i64 36
  %.val2.i = load i32, ptr %i.dt, align 4, !tbaa !305, !noalias !1117 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i52, i64 40
  %.val3.i = load ptr, ptr %i.du, align 8, !tbaa !306, !noalias !1117 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %.val.i to i64
  %.sroa.2.8.insert.ext.i.i.i.i6.i.i = zext i32 %.val2.i to i64
  %i.dv = getelementptr inbounds nuw [12 x i8], ptr %.val1.i, i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i
  %i.dw = getelementptr inbounds nuw [12 x i8], ptr %.val3.i, i64 %.sroa.2.8.insert.ext.i.i.i.i6.i.i
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer: ; preds = %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit, %bb.ak
  %.sroa.0178.1.ph.ph = phi i32 [ %.sroa.0178.6302, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.0178.2, %bb.ak ]
  %.sroa.22.1.ph.ph = phi i32 [ %.sroa.22.5304, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.22.2, %bb.ak ]
  %.sroa.43.1.ph.ph = phi ptr [ %.sroa.43.6306, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.43.2, %bb.ak ]
  %.sroa.17.0.ph.ph = phi i32 [ %.val2.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %i.gq, %bb.ak ]
  %.sroa.13.0.ph.ph = phi ptr [ %.val3.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %i.gr, %bb.ak ] ; 3 uses
  %.sroa.7.0.ph.ph = phi i32 [ %.val.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ 0, %bb.ak ]
  %.sroa.0141.0.ph.ph = phi ptr [ %.val1.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.0141.0, %bb.ak ]
  %.not.i3.i = icmp ne ptr %.sroa.13.0.ph.ph, %i.dw
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer, %bb.aj
  %.sroa.0178.1.ph = phi i32 [ %.sroa.0178.2, %bb.aj ], [ %.sroa.0178.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.22.1.ph = phi i32 [ %.sroa.22.2, %bb.aj ], [ %.sroa.22.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.43.1.ph = phi ptr [ %.sroa.43.2, %bb.aj ], [ %.sroa.43.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.17.0.ph = phi i32 [ 0, %bb.aj ], [ %.sroa.17.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ] ; 3 uses
  %.sroa.7.0.ph = phi i32 [ 0, %bb.aj ], [ %.sroa.7.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.0141.0.ph = phi ptr [ %.sroa.0141.0, %bb.aj ], [ %.sroa.0141.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %i.dx = icmp ne i32 %.sroa.17.0.ph, 0
  %i.dy = select i1 %.not.i3.i, i1 true, i1 %i.dx
  %.not.i.i.i.i = icmp eq i32 %.sroa.17.0.ph, 0   ; 2 uses
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr @_hb_NullPool, ptr %.sroa.13.0.ph.ph, !prof !20
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i
  %.sroa.0178.1 = phi i32 [ %.sroa.0178.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.0178.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 15 uses
  %.sroa.22.1 = phi i32 [ %.sroa.22.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.22.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 12 uses
  %.sroa.43.1 = phi ptr [ %.sroa.43.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.43.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 11 uses
  %.sroa.7.0 = phi i32 [ %i.go, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.7.0.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 3 uses
  %.sroa.0141.0 = phi ptr [ %i.gp, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.0141.0.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 5 uses
  %.not.i.i57 = icmp ne ptr %.sroa.0141.0, %i.dv
  %i.dz = icmp ne i32 %.sroa.7.0, 0
  %i.ea = select i1 %.not.i.i57, i1 true, i1 %i.dz
  %brmerge = select i1 %i.ea, i1 true, i1 %i.dy
  br i1 %brmerge, label %_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread, label %.loopexit

_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit
  %.not.i.i58 = icmp eq i32 %.sroa.7.0, 0         ; 2 uses
  %.0.i.i59 = select i1 %.not.i.i58, ptr %spec.select.i.i.i.i, ptr %.sroa.0141.0 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i.i59, i64 8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !812 ; 5 uses
  %.not.i60 = icmp ult i32 %i.ec, %.sroa.8161.0
  br i1 %.not.i60, label %bb.x, label %bb.w, !prof !142
end_hunk_4
begin_hunk_5_@_ZN5graph22actuate_subtable_splitINS_18MarkBasePosFormat115split_context_tEEE11hb_vector_tIjLb0EERT_RKS4_:bb.a
  br i1 %i.ay, label %bb.m, label %_ZN11hb_vector_tIjLb0EE12ensure_errorEv.exit32, !prof !20

bb.m:                                             ; preds = %bb.l
  %i.az = xor i32 %i.ax, -1
  br label %_ZN11hb_vector_tIjLb0EE12ensure_errorEv.exit32

_ZN11hb_vector_tIjLb0EE12ensure_errorEv.exit32:   ; preds = %bb.l, %bb.m
  %i.ba = phi i32 [ %i.ax, %bb.l ], [ %i.az, %bb.m ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bb, align 4, !tbaa !474
  br label %.critedge.sink.split

bb.n:                                             ; preds = %bb.g, %bb.f
  %i.bc = phi i32 [ %i.ab, %bb.f ], [ %i.ad, %bb.g ]
  store i32 0, ptr %i.f, align 4, !tbaa !474
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %_ZN11hb_vector_tIjLb0EE12ensure_errorEv.exit32, %bb.n
  %.sink45 = phi i32 [ %i.bc, %bb.n ], [ %i.ba, %_ZN11hb_vector_tIjLb0EE12ensure_errorEv.exit32 ]
  %i.bd = xor i32 %.sink45, -1
  store i32 %i.bd, ptr %0, align 8, !tbaa !472
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.a, %.critedge24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5graph18MarkBasePosFormat115split_context_tD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store atomic i32 -57005, ptr %i.a monotonic, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.c)
  %i.e = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #15 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.c) #15
  store atomic ptr null, ptr %i.b monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !948  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit, label %bb.c, !prof !20

bb.c:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i
  tail call void @hb_free(ptr noundef nonnull %i.g) #15
  br label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit

_ZN12hb_hashmap_tIjjLb0EED2Ev.exit:               ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !2019
  %i.j = add i32 %i.i, -1
  %spec.select.i.i.i = icmp ult i32 %i.j, -2
  br i1 %spec.select.i.i.i, label %bb.d, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EED2Ev.exit

bb.d:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !2013 ; 3 uses
  %.not5.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not5.i.i.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE13shrink_vectorEj.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2009
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [88 x i8], ptr %i.n, i64 %i.o
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.07.i.i.i = phi ptr [ %i.r, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i ], [ %i.p, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.046.i.i.i = phi i32 [ %i.q, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i ], [ %i.l, %.lr.ph.preheader.i.i.i ]
  %i.q = add i32 %.046.i.i.i, -1                  ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -88 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !472
  %i.u = add i32 %i.t, -1
  %spec.select.i.i.i.i.i.i.i = icmp ult i32 %i.u, -2
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.e, label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -12
  store i32 0, ptr %i.v, align 4, !tbaa !474
  %i.w = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !473
  tail call void @hb_free(ptr noundef %i.x) #15
  br label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i

_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(88) %i.r) #15
  %.not.i.i.i1 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i1, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE13shrink_vectorEj.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2020

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE13shrink_vectorEj.exit.i.i: ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i, %bb.d
  store i32 0, ptr %i.k, align 4, !tbaa !2013
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2009
  tail call void @hb_free(ptr noundef %i.z) #15
  br label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EED2Ev.exit

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EED2Ev.exit: ; preds = %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE13shrink_vectorEj.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread19, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !2019   ; 6 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread19, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !137
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.e) ; 3 uses
  %.not19.i = icmp ugt i32 %.sroa.speculated.i, %i.b
  %i.f = lshr i32 %i.b, 2
  %.not20.i = icmp ult i32 %.sroa.speculated.i, %i.f
  %or.cond.i = or i1 %.not19.i, %.not20.i
  br i1 %or.cond.i, label %.thread.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp samesign ugt i32 %1, %i.b
  br i1 %.not.i, label %.preheader.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread, !prof !20

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.039.i = phi i32 [ %i.i, %.preheader.i ], [ %i.b, %bb.e ] ; 2 uses
  %i.g = lshr i32 %.039.i, 1
  %i.h = add nuw i32 %.039.i, 8
  %i.i = add nuw i32 %i.h, %i.g                   ; 3 uses
  %i.j = icmp ugt i32 %1, %i.i
  br i1 %i.j, label %.preheader.i, label %.thread.i, !llvm.loop !2029

.thread.i:                                        ; preds = %.preheader.i, %bb.d
  %.138.i = phi i32 [ %.sroa.speculated.i, %bb.d ], [ %i.i, %.preheader.i ] ; 5 uses
  %i.k = icmp ugt i32 %.138.i, 48806446
  br i1 %i.k, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread22, label %bb.f, !prof !20

bb.f:                                             ; preds = %.thread.i
  %i.l = tail call noundef ptr @_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.138.i) ; 2 uses
  %.not21.i = icmp ne i32 %.138.i, 0
  %.not22.i = icmp eq ptr %i.l, null
  %spec.select.i = and i1 %.not21.i, %.not22.i
  br i1 %spec.select.i, label %bb.g, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit, !prof !20

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %0, align 8, !tbaa !2019   ; 2 uses
  %.not23.i = icmp ugt i32 %.138.i, %i.m
  br i1 %.not23.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread22, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread22: ; preds = %bb.g, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.b, %.thread.i ], [ %i.m, %bb.g ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %0, align 8, !tbaa !2019
  br label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread19

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !2009
  store i32 %.138.i, ptr %0, align 8, !tbaa !2019
  br label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread: ; preds = %bb.g, %bb.e, %bb.d, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !2013 ; 5 uses
  %i.q = icmp ugt i32 %1, %i.p
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread
  br i1 %2, label %.lr.ph.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %i.s = phi i32 [ %i.p, %.lr.ph.i ], [ %i.ae, %bb.i ]
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !2009
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [88 x i8], ptr %i.t, i64 %i.u ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.v, i8 0, i64 72, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store atomic i32 1, ptr %i.v monotonic, align 4
  store atomic i8 1, ptr %i.w monotonic, align 4
  store atomic ptr null, ptr %i.x monotonic, align 8
  store i8 1, ptr %i.y, align 8, !tbaa !880
  store i32 0, ptr %i.z, align 4, !tbaa !292
  store atomic i32 0, ptr %i.aa monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ab, i8 0, i64 33, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %i.ad = load i32, ptr %i.o, align 4, !tbaa !2013
  %i.ae = add i32 %i.ad, 1                        ; 3 uses
  store i32 %i.ae, ptr %i.o, align 4, !tbaa !2013
  %i.af = icmp ult i32 %i.ae, %1
  br i1 %i.af, label %bb.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, !llvm.loop !2030

bb.j:                                             ; preds = %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread
  %i.ag = icmp ult i32 %1, %i.p
  %or.cond = and i1 %2, %i.ag
  br i1 %or.cond, label %.lr.ph.preheader.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.ah = sub nuw i32 %i.p, %1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2009
  %i.ak = zext i32 %i.p to i64
  %i.al = getelementptr inbounds nuw [88 x i8], ptr %i.aj, i64 %i.ak
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i, %.lr.ph.preheader.i
  %.07.i = phi ptr [ %i.an, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i ], [ %i.al, %.lr.ph.preheader.i ] ; 4 uses
  %.046.i = phi i32 [ %i.am, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i ], [ %i.ah, %.lr.ph.preheader.i ]
  %i.am = add i32 %.046.i, -1                     ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.07.i, i64 -88 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.07.i, i64 -16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !472
  %i.aq = add i32 %i.ap, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.aq, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.k, label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i

bb.k:                                             ; preds = %.lr.ph.i15
  %i.ar = getelementptr inbounds i8, ptr %.07.i, i64 -12
  store i32 0, ptr %i.ar, align 4, !tbaa !474
  %i.as = getelementptr inbounds i8, ptr %.07.i, i64 -8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !473
  tail call void @hb_free(ptr noundef %i.at) #15
  br label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i

_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i: ; preds = %bb.k, %.lr.ph.i15
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(88) %i.an) #15
  %.not.i16 = icmp eq i32 %i.am, 0
  br i1 %.not.i16, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, label %.lr.ph.i15, !llvm.loop !2020

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit: ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i, %bb.i, %bb.j, %bb.h
  store i32 %1, ptr %i.o, align 4, !tbaa !2013
  br label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread19

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread19: ; preds = %bb.b, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread22, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread22 ], [ true, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !2019
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %.sink.split, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = mul nuw nsw i64 %i.c, 88
  %i.e = tail call ptr @hb_malloc(i64 noundef %i.d) #15 ; 4 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.g, label %.preheader, !prof !20

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !2013
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit, %.preheader
  %i.i = load i32, ptr %0, align 8, !tbaa !2019
  %i.j = add i32 %i.i, -1
  %spec.select.i17 = icmp ult i32 %i.j, -2
  br i1 %spec.select.i17, label %.sink.split, label %bb.g

bb.d:                                             ; preds = %.lr.ph, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %indvars.iv ; 13 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.k, i8 0, i64 72, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store atomic i32 1, ptr %i.k monotonic, align 4
  store atomic i8 1, ptr %i.l monotonic, align 4
  store atomic ptr null, ptr %i.m monotonic, align 8
  store i8 1, ptr %i.n, align 8, !tbaa !880
  store i32 0, ptr %i.o, align 4, !tbaa !292
  store atomic i32 0, ptr %i.p monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.q, i8 0, i64 33, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !2009 ; 2 uses
  %i.t = getelementptr inbounds nuw [88 x i8], ptr %i.s, i64 %indvars.iv ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !range !132
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit, !prof !20

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !255, !range !132, !noundef !274
  store i8 %i.z, ptr %i.x, align 8, !tbaa !255
  store i8 0, ptr %i.y, align 8, !tbaa !255
  tail call fastcc void @"_ZNK3$_9clI12hb_bit_set_tEEvRT_S3_"(ptr noundef nonnull align 8 dereferenceable(49) %i.n, ptr noundef nonnull align 8 dereferenceable(49) %i.u)
  %.pre = load i32, ptr %i.r, align 8, !tbaa !137
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %.pre21 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !926
  %.pre22 = load ptr, ptr %i.h, align 8, !tbaa !2009
  br label %_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit

_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit: ; preds = %bb.d, %bb.e
  %i.aa = phi ptr [ %i.s, %bb.d ], [ %.pre22, %bb.e ]
  %i.ab = phi ptr [ null, %bb.d ], [ %.pre21, %bb.e ]
  %i.ac = phi i32 [ 0, %bb.d ], [ %.pre, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !137
  store i32 %i.ae, ptr %i.r, align 8, !tbaa !137
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !137
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 76 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 76 ; 2 uses
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !137
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !137
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !137
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !137
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !926
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !926
  store ptr %i.ab, ptr %i.ak, align 8, !tbaa !926
  %i.am = getelementptr inbounds nuw [88 x i8], ptr %i.aa, i64 %indvars.iv ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !472
  %i.ap = add i32 %i.ao, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.ap, -2
  br i1 %spec.select.i.i.i.i, label %bb.f, label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit

bb.f:                                             ; preds = %_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 76
  store i32 0, ptr %i.aq, align 4, !tbaa !474
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !473
  tail call void @hb_free(ptr noundef %i.as) #15
  br label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit

_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit: ; preds = %_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit, %bb.f
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(88) %i.am) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = load i32, ptr %i.f, align 4, !tbaa !2013
  %i.au = zext i32 %i.at to i64
  %i.av = icmp samesign ult i64 %indvars.iv.next, %i.au
  br i1 %i.av, label %bb.d, label %._crit_edge, !llvm.loop !2031

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.013.ph = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2009
  tail call void @hb_free(ptr noundef %i.ax) #15
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.c, %._crit_edge, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %._crit_edge ], [ %.013.ph, %.sink.split ]
  ret ptr %.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK5graph18MarkBasePosFormat111clone_rangeERNS0_15split_context_tEjjj(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %struct.hb_map_iter_t.581, align 8  ; 6 uses
  %6 = alloca %struct.hb_zip_iter_t.587, align 8  ; 11 uses
  %7 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 5 uses
  %8 = alloca %struct.hb_sink_t.596, align 8      ; 4 uses
  %9 = alloca %"struct.graph::graph_t::vertex_and_table_t.580", align 8 ; 5 uses
  %10 = alloca %struct.hb_set_t, align 8          ; 13 uses
  %.sroa.0113 = alloca %struct.hb_filter_iter_t.583, align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !2032, !nonnull !274, !align !916 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !911, !nonnull !274, !align !916 ; 4 uses
  %i.d = tail call noundef i32 @_ZN5graph24gsubgpos_graph_context_t11create_nodeEj(ptr noundef nonnull align 8 dereferenceable(168) %i.a, i32 noundef 12) #15 ; 12 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.bj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 9 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !842
  %.not.i.i = icmp ult i32 %i.d, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 9 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = zext i32 %i.d to i64                     ; 5 uses
  %i.k = getelementptr inbounds nuw [216 x i8], ptr %i.i, i64 %i.j
  %.0.i.i = select i1 %.not.i.i, ptr %i.k, ptr @_hb_NullPool, !prof !142
  %i.l = load ptr, ptr %.0.i.i, align 8, !tbaa !354 ; 5 uses
  %i.m = load i16, ptr %0, align 1, !tbaa !355
  store i16 %i.m, ptr %i.l, align 1, !tbaa !355
  %i.n = sub i32 %4, %3
  %i.o = trunc i32 %i.n to i16
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.q = tail call i16 @llvm.bswap.i16(i16 %i.o)
  store i16 %i.q, ptr %i.p, align 1, !tbaa !355
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !2008 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.u = load i32, ptr %i.f, align 4, !tbaa !842  ; 2 uses
  %.not.i.i.i = icmp ult i32 %i.s, %i.u
  %i.v = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.w = zext i32 %i.s to i64
  %i.x = getelementptr inbounds nuw [216 x i8], ptr %i.v, i64 %i.w
  %.0.i.i.i = select i1 %.not.i.i.i, ptr %i.x, ptr @_hb_NullPool, !prof !142 ; 4 uses
  %i.y = load ptr, ptr %.0.i.i.i, align 8, !tbaa !354 ; 2 uses
  %i.z = icmp uge ptr %i.t, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not.i = icmp ult ptr %i.t, %i.ab
  %or.cond.i = select i1 %i.z, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.c, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !819 ; 2 uses
  %.not2427.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not2427.not.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1139
  %wide.trip.count.i = zext i32 %i.ad to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, label %bb.e, !llvm.loop !1140

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %indvars.iv.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !814
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aj
  %.not23.not.i = icmp eq ptr %i.t, %i.ak
  br i1 %.not23.not.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !812
  br label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit

_ZNK5graph7graph_t16index_for_offsetEjPKv.exit:   ; preds = %bb.d, %bb.b, %bb.c, %.thread.i
  %.4.i = phi i32 [ -1, %bb.b ], [ %i.am, %.thread.i ], [ -1, %bb.c ], [ -1, %bb.d ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.not.i.i51 = icmp ult i32 %i.d, %i.u
  br i1 %.not.i.i51, label %bb.g, label %bb.f, !prof !142

bb.f:                                             ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

bb.g:                                             ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit
  %i.ao = getelementptr inbounds nuw [216 x i8], ptr %i.v, i64 %i.j
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i: ; preds = %bb.g, %bb.f
  %.0.i.i52 = phi ptr [ @_hb_CrapPool, %bb.f ], [ %i.ao, %bb.g ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i52, i64 20 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !305 ; 2 uses
  %i.ar = add i32 %i.aq, 1                        ; 5 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.l, label %bb.h, !prof !20

bb.h:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i52, i64 16
  %i.au = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i32 noundef %i.ar, i1 noundef zeroext false)
  br i1 %i.au, label %bb.i, label %bb.l, !prof !393

bb.i:                                             ; preds = %bb.h
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !305 ; 3 uses
  %i.aw = icmp ugt i32 %i.ar, %i.av
  br i1 %i.aw, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ax = sub nuw nsw i32 %i.ar, %i.av
  %i.ay = mul i32 %i.ax, 12                       ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN5graph7graph_t9duplicateEPK8hb_set_tj:bb.a
  store i32 %.sink.i.i.i75, ptr %i.dc, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i73

_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i73: ; preds = %bb.ar, %bb.al
  %i.er = load i32, ptr %i.dg, align 4, !tbaa !890 ; 2 uses
  %.not.i.i74 = icmp eq i32 %i.er, 0
  br i1 %.not.i.i74, label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit76, label %bb.as, !prof !20

bb.as:                                            ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i73
  %i.es = add i32 %i.er, -1
  store i32 %i.es, ptr %i.dg, align 4, !tbaa !890
  br label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit76

_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit76: ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i73, %bb.as
  %i.et = load i32, ptr %i.dc, align 8, !tbaa !891 ; 2 uses
  %.not103 = icmp eq i32 %i.et, -1
  br i1 %.not103, label %._crit_edge112, label %bb.ah

_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit
  %.not.i.i77 = icmp eq i32 %.sroa.7.0, 0
  %.not.i.i77.not = xor i1 %.not.i.i77, true      ; 3 uses
  %.not.i.i.i.i78.not = xor i1 %.not.i.i.i.i78, true
  %brmerge = select i1 %.not.i.i77.not, i1 true, i1 %.not.i.i.i.i78.not, !prof !978
  %.mux = select i1 %.not.i.i77.not, i1 false, i1 true, !prof !978
  %.sroa.082.0.mux = select i1 %.not.i.i77.not, ptr %.sroa.082.0, ptr %.sroa.13.0.ph.ph, !prof !978
  br i1 %brmerge, label %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit, label %bb.at, !prof !979

_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread: ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit
  br i1 %.not.i.i.i.i78, label %bb.at, label %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit, !prof !20

bb.at:                                            ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit

_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit: ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread, %bb.at
  %.not.i.i77132 = phi i1 [ true, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread ], [ true, %bb.at ], [ %.mux, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread ]
  %.0.i.i = phi ptr [ %.sroa.13.0.ph.ph, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread ], [ @_hb_CrapPool, %bb.at ], [ %.sroa.082.0.mux, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread ]
  %i.eu = add i32 %.0, 1                          ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !812
  %.not48 = icmp eq i32 %i.ew, %2
  br i1 %.not48, label %bb.au, label %bb.az

bb.au:                                            ; preds = %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit
  %i.ex = icmp ugt i32 %i.eu, %i.dq
  store i32 %i.da, ptr %i.ev, align 4, !tbaa !812
  %i.ey = load i32, ptr %i.z, align 4, !tbaa !842
  %.not.i.i79 = icmp ult i32 %2, %i.ey
  br i1 %.not.i.i79, label %bb.aw, label %bb.av, !prof !142

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.ez = load ptr, ptr %i.de, align 8, !tbaa !850
  %i.fa = getelementptr inbounds nuw [216 x i8], ptr %i.ez, i64 %i.dh
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i: ; preds = %bb.aw, %bb.av
  %.0.i.i80 = phi ptr [ @_hb_CrapPool, %bb.av ], [ %i.fa, %bb.aw ]
  call void @_ZN5graph7graph_t8vertex_t13remove_parentEj(ptr noundef nonnull align 8 dereferenceable(216) %.0.i.i80, i32 noundef %spec.select)
  %i.fb = load i32, ptr %i.z, align 4, !tbaa !842
  %.not.i8.i = icmp ult i32 %i.da, %i.fb
  br i1 %.not.i8.i, label %bb.ay, label %bb.ax, !prof !142

bb.ax:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN5graph7graph_t13reassign_linkERN22hb_serialize_context_t8object_t6link_tEjjb.exit

bb.ay:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  %i.fc = load ptr, ptr %i.de, align 8, !tbaa !850
  %i.fd = getelementptr inbounds nuw [216 x i8], ptr %i.fc, i64 %i.df
  br label %_ZN5graph7graph_t13reassign_linkERN22hb_serialize_context_t8object_t6link_tEjjb.exit

_ZN5graph7graph_t13reassign_linkERN22hb_serialize_context_t8object_t6link_tEjjb.exit: ; preds = %bb.ax, %bb.ay
  %.0.i9.i = phi ptr [ @_hb_CrapPool, %bb.ax ], [ %i.fd, %bb.ay ]
  call void @_ZN5graph7graph_t8vertex_t10add_parentEjb(ptr noundef nonnull align 8 dereferenceable(216) %.0.i9.i, i32 noundef %spec.select, i1 noundef zeroext %i.ex)
  br label %bb.az

bb.az:                                            ; preds = %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit, %_ZN5graph7graph_t13reassign_linkERN22hb_serialize_context_t8object_t6link_tEjjb.exit
  br i1 %.not.i.i77132, label %bb.ba, label %_ZNR9hb_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEERS3_EppEv.exit.i.i

_ZNR9hb_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEERS3_EppEv.exit.i.i: ; preds = %bb.az
  %i.fe = add i32 %.sroa.7.0, -1
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.082.0, i64 12
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit

bb.ba:                                            ; preds = %bb.az
  %.not.i.i1.i.i = icmp eq i32 %.sroa.17.0.ph, 0
  br i1 %.not.i.i1.i.i, label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.outer, label %bb.bb, !prof !20

bb.bb:                                            ; preds = %bb.ba
  %i.fg = add i32 %.sroa.17.0.ph, -1
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.ph, i64 12
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.outer.outer

bb.bc:                                            ; preds = %._crit_edge, %bb.ae, %bb.af, %._crit_edge112, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE8is_emptyEv.exit
  %.2 = phi i32 [ -1, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE8is_emptyEv.exit ], [ 0, %bb.af ], [ %i.da, %._crit_edge112 ], [ -1, %bb.ae ], [ -1, %._crit_edge ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE4finiEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store atomic i32 -57005, ptr %0 monotonic, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZL14hb_object_finiI12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.d = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #15 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.b) #15
  store atomic ptr null, ptr %i.a monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EEEvPT_.exit

_ZL14hb_object_finiI12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EEEvPT_.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1141 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.c, !prof !20

bb.c:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EEEvPT_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !2424
  %i.i = add i32 %i.h, 1                          ; 2 uses
  %.not5 = icmp eq i32 %i.i, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext i32 %i.i to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE6item_tD2Ev.exit
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !1141
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.j = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.f, %bb.c ]
  tail call void @hb_free(ptr noundef %i.j) #15
  store ptr null, ptr %i.e, align 8, !tbaa !1141
  br label %bb.e

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE6item_tD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE6item_tD2Ev.exit ] ; 2 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !1141
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !472
  %i.o = add i32 %i.n, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.o, -2
  br i1 %spec.select.i.i.i.i, label %bb.d, label %_ZN12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE6item_tD2Ev.exit

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !474
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !473
  tail call void @hb_free(ptr noundef %i.r) #15
  br label %_ZN12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE6item_tD2Ev.exit

_ZN12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE6item_tD2Ev.exit: ; preds = %.lr.ph, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !2606

bb.e:                                             ; preds = %._crit_edge, %_ZL14hb_object_finiI12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EEEvPT_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.s, align 8, !tbaa !2423
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.t, align 4, !tbaa !2426
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !105
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !264  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !20

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  store ptr %i.f, ptr %i.d, align 8, !tbaa !264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !395
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !142

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #15 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !267
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !20

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !267
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !120
  store ptr %i.p, ptr %i.d, align 8, !tbaa !264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !105
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !105
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !396
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !396
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !133
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !307
  store ptr %i.r, ptr %i.u, align 8, !tbaa !133
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !106
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5graph14serialize_linkERKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS0_(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 3 uses
  %i.b = and i32 %i.a, 7
  switch i32 %i.b, label %_ZN5graph22serialize_link_of_typeIN2OT7NumTypeILb1EiLj4EEEEEvRKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS4_.exit [
    i32 3, label %bb.az
    i32 4, label %bb.b
    i32 2, label %bb.aa
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 8
  %.not27 = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !814  ; 3 uses
  %i.f = add i32 %i.e, 4
  %i.g = icmp ugt i32 %i.f, %2                    ; 2 uses
  br i1 %.not27, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.d, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !105
  %i.j = or i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !105
  br label %_ZN5graph22serialize_link_of_typeIN2OT7NumTypeILb1EiLj4EEEEEvRKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.k = zext i32 %i.e to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k ; 2 uses
  store i32 0, ptr %i.l, align 1, !tbaa !355
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !812  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !474
  %.not.i.i = icmp ult i32 %i.n, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = zext i32 %i.n to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  %.0.i.i = select i1 %.not.i.i, ptr %i.t, ptr @_hb_NullPool, !prof !142
  %i.u = load i32, ptr %.0.i.i, align 4, !tbaa !137 ; 2 uses
  %i.v = load i32, ptr %0, align 4                ; 2 uses
  %i.w = and i32 %i.v, 48
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !105
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = icmp eq i32 %i.u, 0
  %or.cond.not.i.i = or i1 %i.aa, %i.z
  br i1 %or.cond.not.i.i, label %_ZN5graph22serialize_link_of_typeIN2OT7NumTypeILb1EiLj4EEEEEvRKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS4_.exit, label %bb.f, !prof !77

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !133 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !305 ; 2 uses
  %i.af = add i32 %i.ae, 1                        ; 5 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i32 noundef %i.af, i1 noundef zeroext false)
  br i1 %i.ai, label %bb.h, label %bb.k, !prof !393

bb.h:                                             ; preds = %bb.g
  %i.aj = load i32, ptr %i.ad, align 4, !tbaa !305 ; 3 uses
  %i.ak = icmp ugt i32 %i.af, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.al = sub nuw nsw i32 %i.af, %i.aj
  %i.am = mul i32 %i.al, 12                       ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.j, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !306
  %i.ap = zext nneg i32 %i.aj to i64
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = zext i32 %i.am to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aq, i8 0, i64 %i.ar, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !305
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !306
  %i.au = zext i32 %i.ae to i64
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %i.at, i64 %i.au
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.k ], [ %i.av, %bb.l ] ; 5 uses
  %i.aw = load ptr, ptr %i.ab, align 8, !tbaa !133
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !302
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i
  %i.ba = load i32, ptr %i.x, align 4, !tbaa !105
  %i.bb = or i32 %i.ba, 1
  store i32 %i.bb, ptr %i.x, align 4, !tbaa !105
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i
  %i.bc = load i32, ptr %.0.i.i.i, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %i.u, ptr %i.bd, align 4, !tbaa !812
  %i.be = and i32 %i.bc, -64
  %i.bf = or disjoint i32 %i.w, %i.be
  %i.bg = or disjoint i32 %i.bf, 12
  store i32 %i.bg, ptr %.0.i.i.i, align 4
  %i.bh = load ptr, ptr %i.ab, align 8, !tbaa !133
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !354
  %i.bj = ptrtoint ptr %i.l to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !814
  %i.bo = and i32 %i.v, -16
  %i.bp = or disjoint i32 %i.bo, 12
  store i32 %i.bp, ptr %.0.i.i.i, align 4
  br label %_ZN5graph22serialize_link_of_typeIN2OT7NumTypeILb1EiLj4EEEEEvRKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS4_.exit

bb.o:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.p, label %bb.q, !prof !20

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !105
  %i.bs = or i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !105
  br label %_ZN5graph22serialize_link_of_typeIN2OT7NumTypeILb1EiLj4EEEEEvRKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS4_.exit

bb.q:                                             ; preds = %bb.o
  %i.bt = zext i32 %i.e to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt ; 2 uses
  store i32 0, ptr %i.bu, align 1, !tbaa !355
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !812 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !474
  %.not.i.i28 = icmp ult i32 %i.bw, %i.by
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = zext i32 %i.bw to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cb
  %.0.i.i29 = select i1 %.not.i.i28, ptr %i.cc, ptr @_hb_NullPool, !prof !142
  %i.cd = load i32, ptr %.0.i.i29, align 4, !tbaa !137 ; 2 uses
  %i.ce = load i32, ptr %0, align 4               ; 2 uses
  %i.cf = and i32 %i.ce, 48
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !105
  %i.ci = icmp ne i32 %i.ch, 0
  %i.cj = icmp eq i32 %i.cd, 0
  %or.cond.not.i.i30 = or i1 %i.cj, %i.ci
  br i1 %or.cond.not.i.i30, label %_ZN5graph22serialize_link_of_typeIN2OT7NumTypeILb1EiLj4EEEEEvRKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS4_.exit, label %bb.r, !prof !77

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE13set_with_hashIjS3_EEbOT_jOT0_b:bb.a
  %i.am = phi i32 [ %spec.select67, %.loopexit ], [ %i.n, %.critedge ]
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !2896
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !2896
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !2899
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !2899
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !137
  store i32 %i.az, ptr %i.ao, align 8, !tbaa !2900
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !2824
  tail call void @hb_set_destroy(ptr noundef %i.bb) #15
  %i.bc = load ptr, ptr %3, align 8, !tbaa !2824
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !2824
  store ptr null, ptr %3, align 8, !tbaa !2824
  %i.bd = shl nuw i32 %i.k, 2
  %i.be = or disjoint i32 %i.bd, 3
  store i32 %i.be, ptr %i.ap, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bg = load <2 x i32>, ptr %i.bf, align 4, !tbaa !137
  %i.bh = add <2 x i32> %i.bg, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bh, ptr %i.bf, align 4, !tbaa !137
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !2902
  %i.bk = zext i16 %i.bj to i32
  %i.bl = icmp ugt i32 %.0283961, %i.bk
  br i1 %i.bl, label %bb.i, label %bb.k, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.bm = extractelement <2 x i32> %i.bh, i64 1
  %i.bn = shl i32 %i.bm, 3
  %i.bo = load i32, ptr %i.h, align 4, !tbaa !2897 ; 2 uses
  %i.bp = icmp ugt i32 %i.bn, %i.bo
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bq = add i32 %i.bo, -8
  %i.br = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bq) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.132
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !2808, !range !132, !noundef !274
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.i, !prof !142

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i32 %1, 1
  %i.e = add i32 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !2897
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2899
  %.sroa.speculated46 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %1)
  %i.k = shl i32 %.sroa.speculated46, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.k, i32 4)
  %i.l = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.speculated, i1 true) ; 2 uses
  %narrow.i = sub nuw nsw i32 32, %i.l            ; 3 uses
  %i.m = shl nuw i32 1, %narrow.i                 ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 4                  ; 2 uses
  %i.p = tail call noundef ptr @hb_malloc(i64 noundef %i.o) #15 ; 3 uses
  %.not39.not = icmp eq ptr %i.p, null
  br i1 %.not39.not, label %bb.e, label %._crit_edge, !prof !20

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.a, align 8, !tbaa !2808
  br label %bb.i

._crit_edge:                                      ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, i8 0, i64 %i.o, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !2897 ; 2 uses
  %.not.i42 = icmp eq i32 %i.r, 0
  %i.s = add i32 %i.r, 1
  %spec.select.i = select i1 %.not.i42, i32 0, i32 %i.s ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2809 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.v, align 8, !tbaa !2896
  store i32 0, ptr %i.i, align 4, !tbaa !2899
  %i.w = add i32 %i.m, -1
  store i32 %i.w, ptr %i.q, align 4, !tbaa !2897
  %i.x = icmp eq i32 %i.l, 0
  br i1 %i.x, label %_ZN12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE9prime_forEj.exit, label %bb.f, !prof !20

bb.f:                                             ; preds = %._crit_edge
  %i.y = zext nneg i32 %narrow.i to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE9prime_forEj.prime_mod, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !137
  br label %_ZN12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE9prime_forEj.exit

_ZN12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE9prime_forEj.exit: ; preds = %._crit_edge, %bb.f
  %.0.i = phi i32 [ %i.aa, %bb.f ], [ 2147483647, %._crit_edge ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0.i, ptr %i.ab, align 8, !tbaa !2822
  %.tr = trunc nuw nsw i32 %narrow.i to i16
  %i.ac = shl nuw nsw i16 %.tr, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !2902
  store ptr %i.p, ptr %i.t, align 8, !tbaa !2809
  %.not60 = icmp eq i32 %spec.select.i, 0
  br i1 %.not60, label %._crit_edge59, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %_ZN12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE9prime_forEj.exit
  %wide.trip.count = zext i32 %spec.select.i to i64
  br label %.lr.ph56

.lr.ph58.preheader:                               ; preds = %bb.h
  %wide.trip.count66 = zext i32 %spec.select.i to i64
  br label %.lr.ph58

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph56.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph56
  %i.ai = lshr i32 %i.ag, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE13set_with_hashIjS3_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ae, i32 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i1 noundef zeroext true) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph56, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph58.preheader, label %.lr.ph56, !llvm.loop !2903

._crit_edge59:                                    ; preds = %.lr.ph58, %_ZN12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE9prime_forEj.exit
  tail call void @hb_free(ptr noundef %i.u) #15
  br label %bb.i

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %.lr.ph58
  %indvars.iv63 = phi i64 [ 0, %.lr.ph58.preheader ], [ %indvars.iv.next64, %.lr.ph58 ] ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv63
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2824
  tail call void @hb_set_destroy(ptr noundef %i.an) #15
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge59, label %.lr.ph58, !llvm.loop !2904

bb.i:                                             ; preds = %bb.e, %._crit_edge59, %bb.c, %bb.a
  %.1 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ true, %._crit_edge59 ], [ false, %bb.e ]
  ret i1 %.1
}

declare void @hb_set_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT12CmapSubtableEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !105
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !264  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !20

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  store ptr %i.f, ptr %i.d, align 8, !tbaa !264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !395
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !142

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #15 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !267
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !20

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !267
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !120
  store ptr %i.p, ptr %i.d, align 8, !tbaa !264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !105
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !105
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !396
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !396
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !133
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !307
  store ptr %i.r, ptr %i.u, align 8, !tbaa !133
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !106
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 12 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !105  ; 2 uses
  switch i32 %i.d, label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread [
    i32 0, label %.critedge
    i32 2, label %.critedge
    i32 8, label %.critedge
    i32 16, label %.critedge
  ]

.critedge:                                        ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !307
  store ptr %i.f, ptr %i.a, align 8, !tbaa !133
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108  ; 2 uses
  %.not6 = icmp eq ptr %i.h, null
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !354
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %i.j = phi ptr [ %i.i, %bb.c ], [ %i.h, %.critedge ]
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.e, label %_ZN22hb_serialize_context_t6revertEPcS0_.exit, !prof !142

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !809
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.m, align 8, !tbaa !106
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.n, align 8, !tbaa !107
  tail call void @_ZN22hb_serialize_context_t21discard_stale_objectsEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %_ZN22hb_serialize_context_t6revertEPcS0_.exit

_ZN22hb_serialize_context_t6revertEPcS0_.exit:    ; preds = %bb.d, %bb.e
  store ptr null, ptr %i.g, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !302
  %i.q = add i32 %i.p, -1
  %spec.select.i.i.i = icmp ult i32 %i.q, -2
  br i1 %spec.select.i.i.i, label %bb.f, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i

bb.f:                                             ; preds = %_ZN22hb_serialize_context_t6revertEPcS0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 0, ptr %i.r, align 4, !tbaa !305
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !306
  tail call void @hb_free(ptr noundef %i.t) #15
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i: ; preds = %bb.f, %_ZN22hb_serialize_context_t6revertEPcS0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !302
  %i.w = add i32 %i.v, -1
  %spec.select.i.i1.i = icmp ult i32 %i.w, -2
  br i1 %spec.select.i.i1.i, label %bb.g, label %_ZN22hb_serialize_context_t8object_t4finiEv.exit

bb.g:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 0, ptr %i.x, align 4, !tbaa !305
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !306
  tail call void @hb_free(ptr noundef %i.z) #15
  br label %_ZN22hb_serialize_context_t8object_t4finiEv.exit

_ZN22hb_serialize_context_t8object_t4finiEv.exit: ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !264
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !120
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !264
  br label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread

_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread: ; preds = %bb.b, %bb.a, %_ZN22hb_serialize_context_t8object_t4finiEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT20CmapSubtableFormat149serializeEP22hb_serialize_context_tPK8hb_set_tS5_PK8hb_map_tPKv(ptr noundef nonnull align 1 dereferenceable(21) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.i.i.i.i = alloca [3 x i8], align 1     ; 4 uses
  %6 = alloca %struct.hb_vector_t.703, align 8    ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106, !noalias !2905 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107, !noalias !2905 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !133, !noalias !2905 ; 4 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK22hb_serialize_context_t6lengthEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !819, !noalias !2905
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2803, !noalias !2905
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !354
  %i.l = ptrtoint ptr %i.b to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.h, i32 0)
  %i.q = tail call i32 @llvm.smax.i32(i32 %i.j, i32 0)
  br label %_ZNK22hb_serialize_context_t6lengthEv.exit

_ZNK22hb_serialize_context_t6lengthEv.exit:       ; preds = %bb.a, %bb.b
  %i.r = phi i32 [ %i.q, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %.sink.i82 = phi i32 [ %i.p, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.0.i = phi i32 [ %i.o, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 6 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !105, !noalias !2905
  %.not11.i.i = icmp eq i32 %i.t, 0
  br i1 %.not11.i.i, label %bb.c, label %_ZN22hb_serialize_context_t10extend_minIN2OT20CmapSubtableFormat14EEEPT_S4_.exit.thread, !prof !142

bb.c:                                             ; preds = %_ZNK22hb_serialize_context_t6lengthEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 4 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w                       ; 4 uses
  %i.y = icmp ugt i64 %i.x, 2147483647
  %i.z = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.aa = sub i64 %i.z, %i.w
  %i.ab = icmp slt i64 %i.aa, %i.x
  %or.cond94 = select i1 %i.y, i1 true, i1 %i.ab, !prof !136
  br i1 %or.cond94, label %.critedge.i.i.i, label %bb.d, !prof !136

.critedge.i.i.i:                                  ; preds = %bb.c
  store i32 4, ptr %i.s, align 4, !tbaa !105
  br label %_ZN22hb_serialize_context_t10extend_minIN2OT20CmapSubtableFormat14EEEPT_S4_.exit.thread

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.not.i = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i.not.i, label %_ZL9hb_memsetPvij.exit.i.i.i, label %bb.e, !prof !77

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.b, i8 0, i64 %i.x, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !106
  br label %_ZL9hb_memsetPvij.exit.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i:                     ; preds = %bb.e, %bb.d
  %i.ac = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.b, %bb.d ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.x
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !106
  %i.ae = icmp eq ptr %i.ac, null
  br i1 %i.ae, label %_ZN22hb_serialize_context_t10extend_minIN2OT20CmapSubtableFormat14EEEPT_S4_.exit.thread, label %_ZN22hb_serialize_context_t10extend_minIN2OT20CmapSubtableFormat14EEEPT_S4_.exit, !prof !20

_ZN22hb_serialize_context_t10extend_minIN2OT20CmapSubtableFormat14EEEPT_S4_.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i
  store i16 3584, ptr %0, align 1, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 6 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 1, !tbaa !153
  %i.ah = tail call noundef i32 @llvm.bswap.i32(i32 %i.ag)
  %.099 = add i32 %i.ah, -1                       ; 2 uses
  %i.ai = icmp sgt i32 %.099, -1
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT20CmapSubtableFormat14EEEPT_S4_.exit
end_hunk_7
