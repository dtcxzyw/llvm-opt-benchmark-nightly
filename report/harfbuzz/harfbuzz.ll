Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 288
loop-unroll.NumUnrolled: 487
begin_hunk_0_@_ZNK2OT4cff213accelerator_t11get_path_atEP9hb_font_tjR17hb_draw_session_t10hb_array_tIKiEPl:bb.a
  br i1 %spec.select.i.i.i.i, label %bb.o, label %_ZN11hb_vector_tIfLb0EE4finiEv.exit.i.i

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.de, align 4, !tbaa !78
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !91
  call void @free(ptr noundef %i.dl) #63
  br label %_ZN11hb_vector_tIfLb0EE4finiEv.exit.i.i

_ZN11hb_vector_tIfLb0EE4finiEv.exit.i.i:          ; preds = %bb.o, %bb.n
  call void @free(ptr noundef nonnull %i.dd) #63
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEED2Ev.exit

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEED2Ev.exit: ; preds = %_ZN3CFF16cs_interpreter_tINS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_cs_opset_path_t17cff2_path_param_tE9interpretERS5_Pl.exit, %bb.m, %_ZN11hb_vector_tIfLb0EE4finiEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #63
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEED2Ev.exit
  %.1 = phi i1 [ %.06.i, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK16hb_lazy_loader_tIN2OT18cff1_accelerator_tE21hb_face_lazy_loader_tIS1_Lj16EE9hb_face_tLj16ES1_EptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -128
  %i.b = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.b, null
  br i1 %.not14.i.i, label %.lr.ph.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18cff1_accelerator_tE21hb_face_lazy_loader_tIS1_Lj16EE9hb_face_tLj16ES1_E3getEv.exit, !prof !46

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.e
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !47
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18cff1_accelerator_tE21hb_face_lazy_loader_tIS1_Lj16EE9hb_face_tLj16ES1_E3getEv.exit, label %bb.b, !prof !48

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj16EE11call_createIN2OT18cff1_accelerator_tE21hb_face_lazy_loader_tIS4_Lj16EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not10.i.i = icmp eq ptr %i.d, null
  br i1 %.not10.i.i, label %bb.c, label %bb.d, !prof !48

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.d, %bb.b ] ; 3 uses
  %i.e = cmpxchg weak ptr %0, ptr null, ptr %.07.i.i acq_rel monotonic, align 8
  %i.f = extractvalue { ptr, i1 } %i.e, 1
  br i1 %i.f, label %_ZNK16hb_lazy_loader_tIN2OT18cff1_accelerator_tE21hb_face_lazy_loader_tIS1_Lj16EE9hb_face_tLj16ES1_E3getEv.exit, label %bb.e, !prof !49

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT18cff1_accelerator_tE21hb_face_lazy_loader_tIS1_Lj16EE9hb_face_tLj16ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i)
  %i.g = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18cff1_accelerator_tE21hb_face_lazy_loader_tIS1_Lj16EE9hb_face_tLj16ES1_E3getEv.exit, !prof !50

_ZNK16hb_lazy_loader_tIN2OT18cff1_accelerator_tE21hb_face_lazy_loader_tIS1_Lj16EE9hb_face_tLj16ES1_E3getEv.exit: ; preds = %.lr.ph.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i = phi ptr [ %i.b, %bb.a ], [ %.07.i.i, %bb.d ], [ %i.g, %bb.e ], [ @_hb_NullPool, %.lr.ph.i.i ]
  ret ptr %.19.ph.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2OT4cff113accelerator_t8get_pathEP9hb_font_tjR17hb_draw_session_tPl(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZL9_get_pathPKN2OT4cff113accelerator_tEP9hb_font_tjR17hb_draw_session_tbPN3CFF7point_tEPl(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i1 noundef zeroext false, ptr noundef null, ptr noundef %4)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT18glyf_accelerator_t14get_extents_atEP9hb_font_tjP18hb_glyph_extents_t10hb_array_tIKiEPl(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr %4, i64 %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %"struct.OT::glyf_accelerator_t::points_aggregator_t", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !179
  %.not = icmp ult i32 %2, %i.b
  br i1 %.not, label %bb.b, label %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %5, 4294967295
  %.not34 = icmp eq i64 %i.c, 0
  br i1 %.not34, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = cmpxchg weak ptr %i.d, ptr %i.e, ptr null acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit, !prof !49

_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit: ; preds = %bb.c, %bb.d
  %i.h = tail call noalias noundef dereferenceable_or_null(152) ptr @calloc(i64 noundef 1, i64 noundef 152) #64 ; 2 uses
  %.not18 = icmp eq ptr %i.h, null
  br i1 %.not18, label %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit, label %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread, !prof !311

_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread: ; preds = %bb.d, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit
  %.1.i30 = phi ptr [ %i.h, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit ], [ %i.e, %bb.d ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 28
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, ptr %i.i, align 4, !tbaa !94
  store ptr %1, ptr %7, align 8, !tbaa !312
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %3, ptr %i.j, align 8, !tbaa !316
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.k, align 8, !tbaa !317
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 1, ptr %i.l, align 8, !tbaa !318
  %.not.i20 = icmp eq ptr %3, null
  br i1 %.not.i20, label %_ZN2OT18glyf_accelerator_t19points_aggregator_tC2EP9hb_font_tP18hb_glyph_extents_tP15contour_point_tb.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 40
  store float f0xFF7FFFFF, ptr %i.m, align 8, !tbaa !94
  br label %_ZN2OT18glyf_accelerator_t19points_aggregator_tC2EP9hb_font_tP18hb_glyph_extents_tP15contour_point_tb.exit

_ZN2OT18glyf_accelerator_t19points_aggregator_tC2EP9hb_font_tP18hb_glyph_extents_tP15contour_point_tb.exit: ; preds = %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit.thread, %bb.e
  %i.n = tail call noundef zeroext i1 @_ZNK2OT18glyf_accelerator_t10get_pointsINS0_19points_aggregator_tEEEbP9hb_font_tjT_10hb_array_tIKiER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull byval(%"struct.OT::glyf_accelerator_t::points_aggregator_t") align 8 %7, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(152) %.1.i30, ptr noundef null) ; 2 uses
  %.not19 = icmp eq ptr %6, null
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2OT18glyf_accelerator_t19points_aggregator_tC2EP9hb_font_tP18hb_glyph_extents_tP15contour_point_tb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.1.i30, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !193
  %i.q = zext i32 %i.p to i64
  %i.r = load i64, ptr %6, align 8, !tbaa !196
  %i.s = sub nsw i64 %i.r, %i.q
  store i64 %i.s, ptr %6, align 8, !tbaa !196
  br label %bb.g

bb.g:                                             ; preds = %_ZN2OT18glyf_accelerator_t19points_aggregator_tC2EP9hb_font_tP18hb_glyph_extents_tP15contour_point_tb.exit, %bb.f
  %i.t = cmpxchg weak ptr %i.d, ptr null, ptr %.1.i30 acq_rel monotonic, align 8
  %i.u = extractvalue { ptr, i1 } %i.t, 1
  br i1 %i.u, label %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN17hb_glyf_scratch_tD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %.1.i30) #63
  tail call void @free(ptr noundef nonnull %.1.i30) #63
  br label %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit

bb.i:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i8, ptr %i.v, align 8, !tbaa !319, !range !220, !noalias !320, !noundef !74
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !51, !noalias !320 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !54, !noalias !320 ; 4 uses
  %i.ac = zext i32 %2 to i64                      ; 2 uses
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !62, !noalias !320
  %i.af = tail call noundef i16 @llvm.bswap.i16(i16 %i.ae)
  %i.ag = zext i16 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 1
  %i.ai = add nuw i32 %2, 1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 1, !tbaa !62, !noalias !320
  %i.am = tail call noundef i16 @llvm.bswap.i16(i16 %i.al)
  %i.an = zext i16 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ac
  %i.aq = load i32, ptr %i.ap, align 1, !tbaa !58, !noalias !320
  %i.ar = tail call noundef i32 @llvm.bswap.i32(i32 %i.aq)
  %i.as = add nuw i32 %2, 1
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.at
  %i.av = load i32, ptr %i.au, align 1, !tbaa !58, !noalias !320
  %i.aw = tail call noundef i32 @llvm.bswap.i32(i32 %i.av)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.018.i = phi i32 [ %i.ao, %bb.j ], [ %i.aw, %bb.k ] ; 3 uses
  %.0.i = phi i32 [ %i.ah, %bb.j ], [ %i.ar, %bb.k ] ; 3 uses
  %i.ax = icmp ugt i32 %.0.i, %.018.i
  br i1 %i.ax, label %bb.o, label %bb.m, !prof !48

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !51, !noalias !320 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, null
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr @_hb_NullPool, ptr %i.az ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !57, !noalias !320
  %i.bc = icmp ugt i32 %.018.i, %i.bb
  br i1 %i.bc, label %bb.o, label %bb.n, !prof !48

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !54, !noalias !320
  %i.bf = zext i32 %.0.i to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf
  %i.bh = sub nuw i32 %.018.i, %.0.i
  %i.bi = icmp ult i32 %i.bh, 10
  %spec.select.i.i24.i = select i1 %i.bi, ptr @_hb_NullPool, ptr %i.bg ; 2 uses
  %i.bj = load i16, ptr %spec.select.i.i24.i, align 1, !tbaa !62, !noalias !320
  %i.bk = icmp eq i16 %i.bj, 0
  br i1 %i.bk, label %bb.o, label %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit, !prof !48

_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit: ; preds = %bb.n
  %i.bl = tail call noundef zeroext i1 @_ZNK2OT9glyf_impl11GlyphHeader30get_extents_without_var_scaledINS_18glyf_accelerator_tEEEbP9hb_font_tRKT_jP18hb_glyph_extents_t(ptr noundef nonnull align 1 dereferenceable(10) %spec.select.i.i24.i, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %2, ptr noundef %3)
  br label %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit

_ZNK2OT18glyf_accelerator_t15release_scratchEP17hb_glyf_scratch_t.exit: ; preds = %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit, %bb.o, %bb.h, %bb.g, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit, %bb.a
  %.1 = phi i1 [ %i.n, %bb.h ], [ false, %bb.a ], [ false, %_ZNK2OT18glyf_accelerator_t15acquire_scratchEv.exit ], [ %i.n, %bb.g ], [ true, %bb.o ], [ %i.bl, %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2OT4cff213accelerator_t14get_extents_atEP9hb_font_tjP18hb_glyph_extents_t10hb_array_tIKiEPl(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr %4, i64 %5, ptr nofree noundef captures(address_is_null) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.CFF::cff2_cs_interp_env_t", align 8 ; 47 uses
  %8 = alloca %struct.cff2_extents_param_t, align 8 ; 8 uses
  %.sroa.2.8.extract.trunc = trunc i64 %5 to i32  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !231
  %i.c = icmp eq ptr %i.b, null
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 5 uses
  %.sroa.gep26 = getelementptr inbounds nuw i8, ptr %7, i64 4172 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp uge i32 %2, %i.e
  %or.cond = select i1 %i.c, i1 true, i1 %i.f, !prof !252
  br i1 %or.cond, label %.critedge, label %bb.b, !prof !252

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !253
  %i.i = tail call noundef i32 @_ZNK3CFF12CFF2FDSelect6get_fdEj(ptr noundef nonnull align 1 dereferenceable(11) %i.h, i32 noundef %2) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !254
  %i.l = tail call { ptr, i64 } @_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEEixEj(ptr noundef nonnull align 1 dereferenceable(6) %i.k, i32 noundef %2) ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0        ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.l, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !255  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.r = load i32, ptr %i.q, align 4, !tbaa !256
  %.not.i.i = icmp ult i32 %i.i, %i.r
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = zext i32 %i.i to i64
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.u
  %.0.i.i = select i1 %.not.i.i, ptr %i.v, ptr @_hb_NullPool, !prof !49 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !257  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4108) %i.y, i8 0, i64 4108, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 0, ptr %i.z, align 8
  store ptr %i.m, ptr %7, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 %i.n, ptr %.sroa.5.0..sroa_idx, align 8
  store i32 0, ptr %.sroa.gep, align 4, !tbaa !263
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 4128
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 4168 ; 2 uses
  store i8 0, ptr %i.ab, align 8, !tbaa !265
  %.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 4200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.2.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 4224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.2.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.3.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 4248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.3.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.4.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 4272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.4.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.5.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 4296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.5.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.6.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 4320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.6.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.7.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 4344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.7.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.8.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 4368
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.8.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.9.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 4392
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.9.i.i.i.i, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.gep26, i8 0, i64 20, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 4448
  %.sroa.2.12.insert.mask.i.i = and i64 %i.n, 4294967295
  store ptr %i.m, ptr %i.aa, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 4136
  store i64 %.sroa.2.12.insert.mask.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 4144
  store i32 0, ptr %i.ad, align 8, !tbaa !267
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 4148
  store i32 0, ptr %i.ae, align 4, !tbaa !270
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 4153
  store i8 1, ptr %i.af, align 1, !tbaa !271
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 4154
  store i8 0, ptr %i.ag, align 2, !tbaa !281
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 4156
  store i32 0, ptr %i.ah, align 4, !tbaa !282
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 4160
  store i32 0, ptr %i.ai, align 8, !tbaa !283
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 4164
  store i32 0, ptr %i.aj, align 4, !tbaa !284
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 4416
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 4424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store ptr %i.p, ptr %i.al, align 8, !tbaa !285
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  %i.am = trunc i64 %i.n to i32
  br i1 %.not.i.i.i.i, label %_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE4initEPKS5_.exit.i.i, label %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE9get_countEv.exit.i.i.i

_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE9get_countEv.exit.i.i.i: ; preds = %bb.b
  %i.an = load i32, ptr %i.p, align 1, !tbaa !58
  %i.ao = tail call noundef i32 @llvm.bswap.i32(i32 %i.an) ; 2 uses
  %i.ap = icmp ult i32 %i.ao, 1240
  br i1 %i.ap, label %_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE4initEPKS5_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE9get_countEv.exit.i.i.i
  %i.aq = icmp ult i32 %i.ao, 33900
  %..i.i.i = select i1 %i.aq, i32 1131, i32 32768
  br label %_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE4initEPKS5_.exit.i.i

_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE4initEPKS5_.exit.i.i: ; preds = %bb.c, %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE9get_countEv.exit.i.i.i, %bb.b
  %.sink.i.i.i = phi i32 [ %..i.i.i, %bb.c ], [ 107, %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE9get_countEv.exit.i.i.i ], [ 107, %bb.b ]
  store i32 %.sink.i.i.i, ptr %i.ak, align 8, !tbaa !286
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 4440
  store ptr %i.x, ptr %i.ar, align 8, !tbaa !285
  %.not.i.i5.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i5.i.i, label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEC2ERK10hb_array_tIKhEPKS6_SE_.exit.i, label %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE9get_countEv.exit.i6.i.i

_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE9get_countEv.exit.i6.i.i: ; preds = %_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE4initEPKS5_.exit.i.i
  %i.as = load i32, ptr %i.x, align 1, !tbaa !58
  %i.at = tail call noundef i32 @llvm.bswap.i32(i32 %i.as) ; 2 uses
  %i.au = icmp ult i32 %i.at, 1240
  br i1 %i.au, label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEC2ERK10hb_array_tIKhEPKS6_SE_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE9get_countEv.exit.i6.i.i
  %i.av = icmp ult i32 %i.at, 33900
  %..i7.i.i = select i1 %i.av, i32 1131, i32 32768
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEC2ERK10hb_array_tIKhEPKS6_SE_.exit.i

_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEC2ERK10hb_array_tIKhEPKS6_SE_.exit.i: ; preds = %bb.d, %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE9get_countEv.exit.i6.i.i, %_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE4initEPKS5_.exit.i.i
  %.sink.i8.i.i = phi i32 [ %..i7.i.i, %bb.d ], [ 107, %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE9get_countEv.exit.i6.i.i ], [ 107, %_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE4initEPKS5_.exit.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 4432
  store i32 %.sink.i8.i.i, ptr %i.aw, align 8, !tbaa !286
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 4488
  store i32 0, ptr %i.ax, align 8, !tbaa !287
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 4504 ; 2 uses
  store ptr null, ptr %i.ay, align 8, !tbaa !290
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 4512 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !291
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 4521
  store i8 0, ptr %i.bb, align 1, !tbaa !292
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 4522
  store i8 0, ptr %i.bc, align 2, !tbaa !293
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 4464
  store ptr %4, ptr %i.bd, align 8, !tbaa !294
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 4472
  store i32 %.sroa.2.8.extract.trunc, ptr %i.be, align 8, !tbaa !295
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !296 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 4480
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !297
  %.not.i = icmp eq i32 %.sroa.2.8.extract.trunc, 0
  br i1 %.not.i, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEEC2IKN2OT4cff213accelerator_tEEERK10hb_array_tIKhERT_jPKij.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEC2ERK10hb_array_tIKhEPKS6_SE_.exit.i
  %i.bi = load i16, ptr %i.bg, align 1, !tbaa !62
  %i.bj = icmp ne i16 %i.bi, 0
  %i.bk = zext i1 %i.bj to i8
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEEC2IKN2OT4cff213accelerator_tEEERK10hb_array_tIKhERT_jPKij.exit

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEEC2IKN2OT4cff213accelerator_tEEERK10hb_array_tIKhERT_jPKij.exit: ; preds = %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEC2ERK10hb_array_tIKhEPKS6_SE_.exit.i, %bb.e
  %i.bl = phi i8 [ 0, %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEC2ERK10hb_array_tIKhEPKS6_SE_.exit.i ], [ %i.bk, %bb.e ]
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 4520
  store i8 %i.bl, ptr %i.bm, align 8, !tbaa !298
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !299 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 4496
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !300
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 4492
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #63
  store i8 0, ptr %8, align 8, !tbaa !323
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 32
  store <2 x double> splat (double f0x41DFFFFFFFC00000), ptr %i.br, align 8, !tbaa !325
  store <2 x double> splat (double f0xC1E0000000000000), ptr %i.bt, align 8, !tbaa !325
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 4152 ; 2 uses
  store i8 0, ptr %i.bv, align 8, !tbaa !305
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.f

end_hunk_0
begin_hunk_1_@hb_blob_create_or_fail:bb.a
  store ptr @hb_free, ptr %i.j, align 8, !tbaa !364
  br label %hb_blob_destroy.exit

_ZN9hb_blob_t17try_make_writableEv.exit:          ; preds = %bb.f
  %i.n = load atomic i32, ptr %i.b monotonic, align 8 ; 0 uses
  %i.o = load atomic i32, ptr %i.b monotonic, align 8
  %.not.i7.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i7.i.i.i, label %hb_blob_destroy.exit, label %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i, !prof !48

_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i: ; preds = %_ZN9hb_blob_t17try_make_writableEv.exit
  %i.p = atomicrmw add ptr %i.b, i32 -1 acq_rel, align 4
  %.not6.i.i.i = icmp eq i32 %i.p, 1
  br i1 %.not6.i.i.i, label %bb.h, label %hb_blob_destroy.exit

bb.h:                                             ; preds = %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i
  store atomic i32 -57005, ptr %i.b monotonic, align 8
  %i.q = load atomic ptr, ptr %i.d acquire, align 8 ; 5 uses
  %.not.i.i3.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i3.i.i, label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.q)
  %i.s = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.q) #63 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.q) #63
  store atomic ptr null, ptr %i.d monotonic, align 8
  br label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i

_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i:   ; preds = %bb.i, %bb.h
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !364  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !365
  tail call void %i.t(ptr noundef %i.u) #63, !inline_history !367
  br label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i

_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i:    ; preds = %bb.j, %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i
  tail call void @free(ptr noundef nonnull %i.b) #63
  br label %hb_blob_destroy.exit

hb_blob_destroy.exit:                             ; preds = %.thread.i, %_ZN9hb_blob_t17destroy_user_dataEv.exit.i, %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i, %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i, %_ZN9hb_blob_t17try_make_writableEv.exit, %bb.d, %_ZL16hb_object_createI9hb_blob_tJEEPT_DpT0_.exit.thread, %bb.c
  %.0 = phi ptr [ %i.b, %bb.d ], [ null, %_ZL16hb_object_createI9hb_blob_tJEEPT_DpT0_.exit.thread ], [ null, %bb.c ], [ null, %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i ], [ null, %_ZN9hb_blob_t17try_make_writableEv.exit ], [ null, %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i ], [ %i.b, %_ZN9hb_blob_t17destroy_user_dataEv.exit.i ], [ %i.b, %.thread.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN9hb_blob_t17try_make_writableEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  br i1 %.not, label %.thread, label %bb.b, !prof !48

.thread:                                          ; preds = %bb.a
  store i32 2, ptr %i.c, align 4, !tbaa !541
  br label %_ZN9hb_blob_t25try_make_writable_inplaceEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %.pre = load i32, ptr %i.c, align 4, !tbaa !541
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  switch i32 %.pre, label %bb.d [
    i32 2, label %_ZN9hb_blob_t25try_make_writable_inplaceEv.exit.thread
    i32 3, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef zeroext i1 @_ZN9hb_blob_t30try_make_writable_inplace_unixEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br i1 %i.e, label %_ZN9hb_blob_t25try_make_writable_inplaceEv.exit.thread, label %_ZN9hb_blob_t25try_make_writable_inplaceEv.exit

_ZN9hb_blob_t25try_make_writable_inplaceEv.exit:  ; preds = %bb.c
  store i32 1, ptr %i.d, align 4, !tbaa !541
  %.pre9 = load i32, ptr %i.a, align 8, !tbaa !57
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %_ZN9hb_blob_t25try_make_writable_inplaceEv.exit
  %i.f = phi i32 [ %i.b, %bb.b ], [ %.pre9, %_ZN9hb_blob_t25try_make_writable_inplaceEv.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = zext i32 %i.f to i64                     ; 2 uses
  %i.i = tail call noalias noundef ptr @malloc(i64 noundef %i.h) #65 ; 4 uses
  %.not7.not = icmp eq ptr %i.i, null
  br i1 %.not7.not, label %_ZN9hb_blob_t25try_make_writable_inplaceEv.exit.thread, label %bb.e, !prof !48

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZL9hb_memcpyPvPKvm.exit, label %bb.f, !prof !48

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr readonly align 1 %i.j, i64 %i.h, i1 false), !alias.scope !547
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.e, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !364  ; 2 uses
  %.not.i8 = icmp eq ptr %i.l, null
  br i1 %.not.i8, label %_ZN9hb_blob_t17destroy_user_dataEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !365
  tail call void %i.l(ptr noundef %i.n) #63, !inline_history !551
  br label %_ZN9hb_blob_t17destroy_user_dataEv.exit

_ZN9hb_blob_t17destroy_user_dataEv.exit:          ; preds = %_ZL9hb_memcpyPvPKvm.exit, %bb.g
  store i32 2, ptr %i.d, align 4, !tbaa !541
  store ptr %i.i, ptr %i.g, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.i, ptr %i.o, align 8, !tbaa !365
  store ptr @hb_free, ptr %i.k, align 8, !tbaa !364
  br label %_ZN9hb_blob_t25try_make_writable_inplaceEv.exit.thread

_ZN9hb_blob_t25try_make_writable_inplaceEv.exit.thread: ; preds = %.thread, %bb.c, %_ZN9hb_blob_t17destroy_user_dataEv.exit, %bb.d, %bb.b
  %.1 = phi i1 [ true, %_ZN9hb_blob_t17destroy_user_dataEv.exit ], [ true, %bb.b ], [ false, %bb.d ], [ true, %bb.c ], [ true, %.thread ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_blob_destroy(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not.i.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i.i, label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4 ; 0 uses
  %i.b = load atomic i32, ptr %0 monotonic, align 4
  %.not.i7.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i7.i.i, label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.thread, label %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i, !prof !48

_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i: ; preds = %bb.b
  %i.c = atomicrmw add ptr %0, i32 -1 acq_rel, align 4
  %.not6.i.i = icmp eq i32 %i.c, 1
  br i1 %.not6.i.i, label %bb.c, label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.thread

bb.c:                                             ; preds = %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i
  store atomic i32 -57005, ptr %0 monotonic, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 5 uses
  %.not.i.i3.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i3.i, label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.e)
  %i.g = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.e) #63 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.e) #63
  store atomic ptr null, ptr %i.d monotonic, align 8
  br label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i

_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i:     ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !364  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !365
  tail call void %i.i(ptr noundef %i.k) #63, !inline_history !552
  br label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit

_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit:      ; preds = %bb.e, %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i
  tail call void @free(ptr noundef nonnull %0) #63
  br label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.thread

_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.thread: ; preds = %bb.a, %bb.b, %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i, %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define nonnull ptr @hb_blob_create_sub_blob(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i32 %2, 0
  %i.b = icmp ne ptr %0, null
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %hb_blob_create.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not = icmp ult i32 %1, %i.d
  br i1 %.not, label %bb.c, label %hb_blob_create.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load atomic i8, ptr %i.e monotonic, align 4, !range !220, !noundef !74
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store atomic i8 0, ptr %i.e monotonic, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = zext i32 %1 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = sub nuw i32 %i.d, %1
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.l) ; 2 uses
  %i.m = load atomic i32, ptr %0 monotonic, align 8 ; 0 uses
  %i.n = load atomic i32, ptr %0 monotonic, align 8
  %.not.i7.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i7.i.i, label %hb_blob_reference.exit, label %bb.f, !prof !48

bb.f:                                             ; preds = %bb.e
  %i.o = atomicrmw add ptr %0, i32 1 acq_rel, align 4 ; 0 uses
  br label %hb_blob_reference.exit

hb_blob_reference.exit:                           ; preds = %bb.f, %bb.e
  %i.p = icmp slt i32 %.sroa.speculated, 0
  br i1 %i.p, label %_ZL16hb_object_createI9hb_blob_tJEEPT_DpT0_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %hb_blob_reference.exit
  %i.q = tail call noalias noundef dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #64 ; 11 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZL16hb_object_createI9hb_blob_tJEEPT_DpT0_.exit.thread.i, label %hb_blob_create_or_fail.exit, !prof !48

_ZL16hb_object_createI9hb_blob_tJEEPT_DpT0_.exit.thread.i: ; preds = %hb_blob_reference.exit, %bb.g
  %i.r = load atomic i32, ptr %0 monotonic, align 8 ; 0 uses
  %i.s = load atomic i32, ptr %0 monotonic, align 8
  %.not.i7.i.i.i.i16 = icmp eq i32 %i.s, 0
  br i1 %.not.i7.i.i.i.i16, label %hb_blob_create.exit, label %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i17, !prof !48

_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i17: ; preds = %_ZL16hb_object_createI9hb_blob_tJEEPT_DpT0_.exit.thread.i
  %i.t = atomicrmw add ptr %0, i32 -1 acq_rel, align 4
  %.not6.i.i.i.i18 = icmp eq i32 %i.t, 1
  br i1 %.not6.i.i.i.i18, label %bb.h, label %hb_blob_create.exit

bb.h:                                             ; preds = %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i17
  store atomic i32 -57005, ptr %0 monotonic, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load atomic ptr, ptr %i.u acquire, align 8 ; 5 uses
  %.not.i.i3.i.i.i19 = icmp eq ptr %i.v, null
  br i1 %.not.i.i3.i.i.i19, label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %i.v)
  %i.x = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.v) #63 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.v) #63
  store atomic ptr null, ptr %i.u monotonic, align 8
  br label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i20

_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i20: ; preds = %bb.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !364  ; 2 uses
  %.not.i.i.i.i.i.i21 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i21, label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i22, label %bb.j

bb.j:                                             ; preds = %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !365
  tail call void %i.z(ptr noundef %i.ab) #63, !inline_history !553
  br label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i22

_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i22: ; preds = %bb.j, %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i20
  tail call void @free(ptr noundef nonnull %0) #63
  br label %hb_blob_create.exit

hb_blob_create_or_fail.exit:                      ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store atomic i32 1, ptr %i.q monotonic, align 4
  store atomic i8 1, ptr %i.ac monotonic, align 4
  store atomic ptr null, ptr %i.ad monotonic, align 8
  %i.ae = load atomic i32, ptr %i.q monotonic, align 8 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.k, ptr %i.af, align 8, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i32 %.sroa.speculated, ptr %i.ag, align 8, !tbaa !57
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  store i32 1, ptr %i.ah, align 4, !tbaa !541
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %0, ptr %i.ai, align 8, !tbaa !365
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr @_ZL16_hb_blob_destroyPv, ptr %i.aj, align 8, !tbaa !364
  br label %hb_blob_create.exit

hb_blob_create.exit:                              ; preds = %hb_blob_create_or_fail.exit, %_ZL16hb_object_createI9hb_blob_tJEEPT_DpT0_.exit.thread.i, %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i17, %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i22, %bb.a, %bb.b
  %.0 = phi ptr [ @_hb_NullPool, %bb.a ], [ @_hb_NullPool, %bb.b ], [ %i.q, %hb_blob_create_or_fail.exit ], [ @_hb_NullPool, %_ZL16hb_object_createI9hb_blob_tJEEPT_DpT0_.exit.thread.i ], [ @_hb_NullPool, %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i22 ], [ @_hb_NullPool, %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i17 ]
  ret ptr %.0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define void @hb_blob_make_immutable(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load atomic i8, ptr %i.a monotonic, align 1, !range !220, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store atomic i8 0, ptr %i.a monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef ptr @hb_blob_reference(ptr nofree noundef returned captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #6 {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %_ZL19hb_object_referenceI9hb_blob_tEPT_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4 ; 0 uses
  %i.b = load atomic i32, ptr %0 monotonic, align 4
  %.not.i7.i = icmp eq i32 %i.b, 0
  br i1 %.not.i7.i, label %_ZL19hb_object_referenceI9hb_blob_tEPT_S2_.exit, label %bb.c, !prof !48

bb.c:                                             ; preds = %bb.b
  %i.c = atomicrmw add ptr %0, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZL19hb_object_referenceI9hb_blob_tEPT_S2_.exit

_ZL19hb_object_referenceI9hb_blob_tEPT_S2_.exit:  ; preds = %bb.a, %bb.b, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL16_hb_blob_destroyPv(ptr noundef captures(address_is_null) %0) #0 {
bb.a:
  %.not.i.i.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i.i.i, label %hb_blob_destroy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4 ; 0 uses
  %i.b = load atomic i32, ptr %0 monotonic, align 4
  %.not.i7.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i7.i.i.i, label %hb_blob_destroy.exit, label %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i, !prof !48

_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i: ; preds = %bb.b
  %i.c = atomicrmw add ptr %0, i32 -1 acq_rel, align 4
  %.not6.i.i.i = icmp eq i32 %i.c, 1
  br i1 %.not6.i.i.i, label %bb.c, label %hb_blob_destroy.exit

bb.c:                                             ; preds = %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i
  store atomic i32 -57005, ptr %0 monotonic, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 5 uses
  %.not.i.i3.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i3.i.i, label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.e)
  %i.g = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.e) #63 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.e) #63
  store atomic ptr null, ptr %i.d monotonic, align 8
  br label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i

_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i:   ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !364  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !365
  tail call void %i.i(ptr noundef %i.k) #63, !inline_history !367
  br label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i

_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i:    ; preds = %bb.e, %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i
  tail call void @free(ptr noundef nonnull %0) #63
  br label %hb_blob_destroy.exit

hb_blob_destroy.exit:                             ; preds = %bb.a, %bb.b, %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i, %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @hb_blob_copy_writable_or_fail(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %hb_blob_create.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.e = tail call ptr @hb_blob_create_or_fail(ptr noundef %i.d, i32 noundef %i.b, i32 noundef 0, ptr noundef null, ptr noundef null) ; 3 uses
  %.not15.i = icmp eq ptr %i.e, null
  %i.f = icmp eq ptr %i.e, @_hb_NullPool
  %or.cond = or i1 %.not15.i, %i.f
  br i1 %or.cond, label %hb_blob_create.exit.thread, label %bb.c, !prof !554

hb_blob_create.exit.thread:                       ; preds = %bb.b, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %hb_blob_create.exit.thread
  %.0 = phi ptr [ null, %hb_blob_create.exit.thread ], [ %i.e, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @hb_free(ptr noundef captures(none) %0) #7 {
end_hunk_1
begin_hunk_2_@hb_buffer_serialize:bb.a
    i32 2, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @hb_buffer_serialize_glyphs(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8)
  br label %_ZL28_hb_buffer_serialize_invalidP11hb_buffer_tjjPcjPj28hb_buffer_serialize_format_t27hb_buffer_serialize_flags_t.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @hb_buffer_serialize_unicode(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %7, i32 noundef %8)
  br label %_ZL28_hb_buffer_serialize_invalidP11hb_buffer_tjjPcjPj28hb_buffer_serialize_format_t27hb_buffer_serialize_flags_t.exit

bb.d:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %5, null
  %i.e = icmp ult i32 %4, 3
  br i1 %i.e, label %_ZL28_hb_buffer_serialize_invalidP11hb_buffer_tjjPcjPj28hb_buffer_serialize_format_t27hb_buffer_serialize_flags_t.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i32 %7, label %bb.g [
    i32 1246973774, label %.sink.split.i
    i32 1413830740, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.e
  %.sink.i = phi i8 [ 33, %bb.f ], [ 91, %bb.e ]
  %.sink1.i = phi i8 [ 33, %bb.f ], [ 93, %bb.e ]
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %.sink.i, ptr %3, align 1, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %.sink1.i, ptr %i.f, align 1, !tbaa !61
  store i8 0, ptr %i.g, align 1, !tbaa !61
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i, %bb.e
  br i1 %.not.i, label %_ZL28_hb_buffer_serialize_invalidP11hb_buffer_tjjPcjPj28hb_buffer_serialize_format_t27hb_buffer_serialize_flags_t.exit, label %.else.i

.else.i:                                          ; preds = %bb.g
  store i32 2, ptr %5, align 4, !tbaa !139
  br label %_ZL28_hb_buffer_serialize_invalidP11hb_buffer_tjjPcjPj28hb_buffer_serialize_format_t27hb_buffer_serialize_flags_t.exit

_ZL28_hb_buffer_serialize_invalidP11hb_buffer_tjjPcjPj28hb_buffer_serialize_format_t27hb_buffer_serialize_flags_t.exit: ; preds = %.else.i, %bb.g, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.d, %bb.c ], [ %i.c, %bb.b ], [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %.else.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_buffer_deserialize_glyphs(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 9 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 9 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca [32 x i8], align 16               ; 9 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca [32 x i8], align 16               ; 9 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca [32 x i8], align 16               ; 9 uses
  %i.j = alloca ptr, align 8                      ; 6 uses
  %i.k = alloca [32 x i8], align 16               ; 9 uses
  %i.l = alloca ptr, align 8                      ; 6 uses
  %6 = alloca %struct.hb_glyph_info_t, align 4    ; 17 uses
  %i.m = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #63
  %.not = icmp eq ptr %3, null
  %spec.store.select = select i1 %.not, ptr %i.m, ptr %3 ; 7 uses
  store ptr %1, ptr %spec.store.select, align 8, !tbaa !574
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.o = load atomic i8, ptr %i.n monotonic, align 1, !range !220, !noundef !74
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %spec.store.select, align 8, !tbaa !574
  br label %bb.ar

bb.c:                                             ; preds = %bb.a
  %i.q = icmp eq i32 %2, -1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #68
  %i.s = trunc i64 %i.r to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.028 = phi i32 [ %i.s, %bb.d ], [ %2, %bb.c ]  ; 3 uses
  %.not31 = icmp eq i32 %.028, 0
  br i1 %.not31, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %1, ptr %spec.store.select, align 8, !tbaa !574
  br label %bb.ar

bb.g:                                             ; preds = %bb.e
  %.not32 = icmp eq ptr %4, null
  %spec.select = select i1 %.not32, ptr @_hb_Null_hb_font_t, ptr %4 ; 5 uses
  switch i32 %5, label %bb.ar [
    i32 1413830740, label %bb.h
    i32 1246973774, label %bb.ap
  ]

bb.h:                                             ; preds = %bb.g
  %i.t = load atomic i8, ptr %i.n monotonic, align 1, !range !220, !noundef !74
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.i, label %hb_buffer_set_content_type.exit, !prof !49

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.v, align 8, !tbaa !619
  br label %hb_buffer_set_content_type.exit

hb_buffer_set_content_type.exit:                  ; preds = %bb.h, %bb.i
  %i.w = zext i32 %.028 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 2 uses
  %i.z = load i8, ptr %i.y, align 2, !tbaa !575, !range !220, !noundef !74
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %hb_buffer_get_glyph_positions.exit.i, label %bb.j

bb.j:                                             ; preds = %hb_buffer_set_content_type.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !576
  %.not9.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not9.i.i, label %bb.k, label %hb_buffer_get_glyph_positions.exit.i, !prof !49

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 0, ptr %i.ad, align 1, !tbaa !577
  store i8 1, ptr %i.y, align 2, !tbaa !575
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.ae, align 4, !tbaa !578
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !499
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !579
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !522
  %i.ak = mul i32 %i.aj, 20                       ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i, label %hb_buffer_get_glyph_positions.exit.i, label %bb.l, !prof !48

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !527
  %i.an = zext i32 %i.ak to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.am, i8 0, i64 %i.an, i1 false)
  br label %hb_buffer_get_glyph_positions.exit.i

hb_buffer_get_glyph_positions.exit.i:             ; preds = %bb.l, %bb.k, %bb.j, %hb_buffer_set_content_type.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i64 20, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 15 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.au = ptrtoint ptr %i.a to i64
  %i.av = ptrtoint ptr %i.c to i64
  %i.aw = ptrtoint ptr %i.e to i64
  %i.ax = ptrtoint ptr %i.g to i64
  %i.ay = ptrtoint ptr %i.i to i64
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ba = ptrtoint ptr %i.k to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.am, %hb_buffer_get_glyph_positions.exit.i
  %.sroa.0.0.i = phi i32 [ 0, %hb_buffer_get_glyph_positions.exit.i ], [ %.sroa.0.1.i, %bb.am ] ; 10 uses
  %.sroa.12.0.i = phi i32 [ 0, %hb_buffer_get_glyph_positions.exit.i ], [ %.sroa.12.1.i, %bb.am ] ; 10 uses
  %.sroa.13.0.i = phi i32 [ 0, %hb_buffer_get_glyph_positions.exit.i ], [ %.sroa.13.1.i, %bb.am ] ; 10 uses
  %.sroa.14.0.i = phi i32 [ 0, %hb_buffer_get_glyph_positions.exit.i ], [ %.sroa.14.1.i, %bb.am ] ; 10 uses
  %.084.i = phi ptr [ %1, %hb_buffer_get_glyph_positions.exit.i ], [ %i.hn, %bb.am ] ; 21 uses
  %.082.i = phi ptr [ null, %hb_buffer_get_glyph_positions.exit.i ], [ %.183.i, %bb.am ] ; 24 uses
  %.081.i = phi i32 [ 46, %hb_buffer_get_glyph_positions.exit.i ], [ %i.cb, %bb.am ] ; 2 uses
  %i.bb = shl nsw i32 %.081.i, 1
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr @_ZL35_deserialize_text_glyphs_trans_keys, i64 %i.bc ; 2 uses
  %i.be = sext i32 %.081.i to i64                 ; 2 uses
  %i.bf = getelementptr inbounds [2 x i8], ptr @_ZL38_deserialize_text_glyphs_index_offsets, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !620
  %i.bh = sext i16 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr @_ZL33_deserialize_text_glyphs_indicies, i64 %i.bh
  %i.bj = getelementptr inbounds i8, ptr @_ZL34_deserialize_text_glyphs_key_spans, i64 %i.be
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !61
  %i.bl = sext i8 %i.bk to i32                    ; 2 uses
  %i.bm = load i8, ptr %i.bd, align 2, !tbaa !61
  %i.bn = zext i8 %i.bm to i32                    ; 2 uses
  %i.bo = load i8, ptr %.084.i, align 1, !tbaa !61
  %i.bp = sext i8 %i.bo to i32                    ; 3 uses
  %.not.i = icmp sgt i32 %i.bn, %i.bp
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !61
  %i.bs = zext i8 %i.br to i32
  %.not97.i = icmp samesign ugt i32 %i.bp, %i.bs
  %i.bt = sub nuw nsw i32 %i.bp, %i.bn
  %spec.select.i = select i1 %.not97.i, i32 %i.bl, i32 %i.bt
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bu = phi i32 [ %i.bl, %bb.m ], [ %spec.select.i, %bb.n ]
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %i.bi, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !61  ; 2 uses
  %i.by = sext i8 %i.bx to i64                    ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr @_ZL36_deserialize_text_glyphs_trans_targs, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !61  ; 2 uses
  %i.cb = sext i8 %i.ca to i32
  %i.cc = getelementptr inbounds i8, ptr @_ZL38_deserialize_text_glyphs_trans_actions, i64 %i.by
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !61
  switch i8 %i.cd, label %bb.al [
    i8 13, label %bb.aj
    i8 2, label %bb.p
    i8 1, label %bb.q
    i8 6, label %bb.r
    i8 7, label %bb.t
    i8 8, label %bb.v
    i8 4, label %bb.x
    i8 5, label %bb.z
    i8 3, label %bb.ab
    i8 9, label %bb.ad
    i8 10, label %bb.ae
    i8 12, label %bb.af
    i8 14, label %bb.ah
  ]

bb.p:                                             ; preds = %bb.o
  br label %bb.al

bb.q:                                             ; preds = %bb.o
  %i.ce = ptrtoint ptr %.084.i to i64
  %i.cf = ptrtoint ptr %.082.i to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = call noundef i32 @_ZN9hb_font_t17glyph_from_stringEPKciPj(ptr noundef nonnull align 8 dereferenceable(192) %spec.select, ptr noundef %.082.i, i32 noundef %i.ch, ptr noundef nonnull %6)
  %.not101.i = icmp eq i32 %i.ci, 0
  br i1 %.not101.i, label %_ZL34_hb_buffer_deserialize_text_glyphsP11hb_buffer_tPKcjPS2_P9hb_font_t.exit, label %bb.al

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #63
  %i.cj = ptrtoint ptr %.084.i to i64
  %i.ck = ptrtoint ptr %.082.i to i64
  %i.cl = sub i64 %i.cj, %i.ck                    ; 2 uses
  %i.cm = trunc i64 %i.cl to i32
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.cm, i32 31)
  %i.cn = zext nneg i32 %.sroa.speculated.i.i.i.i to i64 ; 2 uses
  %i.co = call ptr @strncpy(ptr noundef nonnull %i.k, ptr noundef %.082.i, i64 noundef %i.cn) #63 ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cn
  store i8 0, ptr %i.cp, align 1, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #63
  store ptr %i.k, ptr %i.l, align 8, !tbaa !574
  %i.cq = tail call ptr @__errno_location() #67   ; 2 uses
  store i32 0, ptr %i.cq, align 4, !tbaa !139
  %i.cr = call noundef i64 @__isoc23_strtoul(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, i32 noundef 10) #63
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = load i32, ptr %i.cq, align 4, !tbaa !139
  %.not.i.i.i103.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i.i103.i, label %bb.s, label %_ZL10parse_uintPKcS0_Pj.exit.i, !prof !49

bb.s:                                             ; preds = %bb.r
  %i.cu = load ptr, ptr %i.l, align 8, !tbaa !574 ; 2 uses
  %i.cv = icmp ne ptr %i.k, %i.cu
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cw, %i.ba
  %.not22.i.i.i.i = icmp eq i64 %i.cx, %i.cl
  %or.cond.i.i = and i1 %i.cv, %.not22.i.i.i.i
  br i1 %or.cond.i.i, label %_ZL10parse_uintPKcS0_Pj.exit.thread.i, label %_ZL10parse_uintPKcS0_Pj.exit.i, !prof !621

_ZL10parse_uintPKcS0_Pj.exit.thread.i:            ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #63
  store i32 %i.cs, ptr %i.az, align 4, !tbaa !139
  br label %bb.al

_ZL10parse_uintPKcS0_Pj.exit.i:                   ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #63
  br label %_ZL34_hb_buffer_deserialize_text_glyphsP11hb_buffer_tPKcjPS2_P9hb_font_t.exit

bb.t:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #63
  %i.cy = ptrtoint ptr %.084.i to i64
  %i.cz = ptrtoint ptr %.082.i to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 2 uses
  %i.db = trunc i64 %i.da to i32
  %.sroa.speculated.i.i.i104.i = call i32 @llvm.umin.i32(i32 %i.db, i32 31)
  %i.dc = zext nneg i32 %.sroa.speculated.i.i.i104.i to i64 ; 2 uses
  %i.dd = call ptr @strncpy(ptr noundef nonnull %i.i, ptr noundef %.082.i, i64 noundef %i.dc) #63 ; 0 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.dc
  store i8 0, ptr %i.de, align 1, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #63
  store ptr %i.i, ptr %i.j, align 8, !tbaa !574
  %i.df = tail call ptr @__errno_location() #67   ; 2 uses
  store i32 0, ptr %i.df, align 4, !tbaa !139
  %i.dg = call noundef i64 @__isoc23_strtol(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, i32 noundef 10) #63
  %i.dh = trunc i64 %i.dg to i32
  %i.di = load i32, ptr %i.df, align 4, !tbaa !139
  %.not.i.i.i105.i = icmp eq i32 %i.di, 0
  br i1 %.not.i.i.i105.i, label %bb.u, label %_ZL9parse_intPKcS0_Pi.exit.i, !prof !49

bb.u:                                             ; preds = %bb.t
  %i.dj = load ptr, ptr %i.j, align 8, !tbaa !574 ; 2 uses
  %i.dk = icmp ne ptr %i.i, %i.dj
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dl, %i.ay
  %.not22.i.i.i107.i = icmp eq i64 %i.dm, %i.da
  %or.cond.i108.i = and i1 %i.dk, %.not22.i.i.i107.i
  br i1 %or.cond.i108.i, label %_ZL9parse_intPKcS0_Pi.exit.thread.i, label %_ZL9parse_intPKcS0_Pi.exit.i, !prof !621

_ZL9parse_intPKcS0_Pi.exit.thread.i:              ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #63
  br label %bb.al

_ZL9parse_intPKcS0_Pi.exit.i:                     ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #63
  br label %_ZL34_hb_buffer_deserialize_text_glyphsP11hb_buffer_tPKcjPS2_P9hb_font_t.exit

bb.v:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #63
  %i.dn = ptrtoint ptr %.084.i to i64
  %i.do = ptrtoint ptr %.082.i to i64
  %i.dp = sub i64 %i.dn, %i.do                    ; 2 uses
  %i.dq = trunc i64 %i.dp to i32
  %.sroa.speculated.i.i.i109.i = call i32 @llvm.umin.i32(i32 %i.dq, i32 31)
  %i.dr = zext nneg i32 %.sroa.speculated.i.i.i109.i to i64 ; 2 uses
  %i.ds = call ptr @strncpy(ptr noundef nonnull %i.g, ptr noundef %.082.i, i64 noundef %i.dr) #63 ; 0 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dr
  store i8 0, ptr %i.dt, align 1, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #63
  store ptr %i.g, ptr %i.h, align 8, !tbaa !574
  %i.du = tail call ptr @__errno_location() #67   ; 2 uses
  store i32 0, ptr %i.du, align 4, !tbaa !139
  %i.dv = call noundef i64 @__isoc23_strtol(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, i32 noundef 10) #63
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = load i32, ptr %i.du, align 4, !tbaa !139
  %.not.i.i.i110.i = icmp eq i32 %i.dx, 0
  br i1 %.not.i.i.i110.i, label %bb.w, label %_ZL9parse_intPKcS0_Pi.exit115.i, !prof !49

bb.w:                                             ; preds = %bb.v
  %i.dy = load ptr, ptr %i.h, align 8, !tbaa !574 ; 2 uses
  %i.dz = icmp ne ptr %i.g, %i.dy
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.ea, %i.ax
  %.not22.i.i.i113.i = icmp eq i64 %i.eb, %i.dp
  %or.cond.i114.i = and i1 %i.dz, %.not22.i.i.i113.i
  br i1 %or.cond.i114.i, label %_ZL9parse_intPKcS0_Pi.exit115.thread.i, label %_ZL9parse_intPKcS0_Pi.exit115.i, !prof !621

_ZL9parse_intPKcS0_Pi.exit115.thread.i:           ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #63
  br label %bb.al

_ZL9parse_intPKcS0_Pi.exit115.i:                  ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #63
  br label %_ZL34_hb_buffer_deserialize_text_glyphsP11hb_buffer_tPKcjPS2_P9hb_font_t.exit

bb.x:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #63
  %i.ec = ptrtoint ptr %.084.i to i64
  %i.ed = ptrtoint ptr %.082.i to i64
  %i.ee = sub i64 %i.ec, %i.ed                    ; 2 uses
  %i.ef = trunc i64 %i.ee to i32
  %.sroa.speculated.i.i.i116.i = call i32 @llvm.umin.i32(i32 %i.ef, i32 31)
  %i.eg = zext nneg i32 %.sroa.speculated.i.i.i116.i to i64 ; 2 uses
  %i.eh = call ptr @strncpy(ptr noundef nonnull %i.e, ptr noundef %.082.i, i64 noundef %i.eg) #63 ; 0 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.eg
  store i8 0, ptr %i.ei, align 1, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #63
  store ptr %i.e, ptr %i.f, align 8, !tbaa !574
  %i.ej = tail call ptr @__errno_location() #67   ; 2 uses
  store i32 0, ptr %i.ej, align 4, !tbaa !139
  %i.ek = call noundef i64 @__isoc23_strtol(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef 10) #63
  %i.el = trunc i64 %i.ek to i32
  %i.em = load i32, ptr %i.ej, align 4, !tbaa !139
  %.not.i.i.i117.i = icmp eq i32 %i.em, 0
  br i1 %.not.i.i.i117.i, label %bb.y, label %_ZL9parse_intPKcS0_Pi.exit122.i, !prof !49

bb.y:                                             ; preds = %bb.x
  %i.en = load ptr, ptr %i.f, align 8, !tbaa !574 ; 2 uses
  %i.eo = icmp ne ptr %i.e, %i.en
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.ep, %i.aw
  %.not22.i.i.i120.i = icmp eq i64 %i.eq, %i.ee
  %or.cond.i121.i = and i1 %i.eo, %.not22.i.i.i120.i
  br i1 %or.cond.i121.i, label %_ZL9parse_intPKcS0_Pi.exit122.thread.i, label %_ZL9parse_intPKcS0_Pi.exit122.i, !prof !621

_ZL9parse_intPKcS0_Pi.exit122.thread.i:           ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #63
  br label %bb.al

_ZL9parse_intPKcS0_Pi.exit122.i:                  ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #63
end_hunk_2
begin_hunk_3_@hb_buffer_deserialize_glyphs:bb.a
  %.not.i.i143.i = icmp eq i32 %i.hp, 0
  %i.hq = load i32, ptr %i.ap, align 8
  %i.hr = icmp ult i32 %i.hp, %i.hq
  %i.hs = select i1 %.not.i.i143.i, i1 true, i1 %i.hr
  br i1 %i.hs, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i147.i, label %_ZN11hb_buffer_t6ensureEj.exit.i144.i, !prof !49

_ZN11hb_buffer_t6ensureEj.exit.i144.i:            ; preds = %bb.ao
  %i.ht = call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.hp)
  br i1 %i.ht, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i145.i, label %_ZN11hb_buffer_t16add_info_and_posERK15hb_glyph_info_tRK19hb_glyph_position_t.exit148.i, !prof !124

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i145.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i144.i
  %.pre.i146.i = load i32, ptr %i.ao, align 8, !tbaa !522
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i147.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i147.i:     ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i145.i, %bb.ao
  %i.hu = phi i32 [ %.pre.i146.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i145.i ], [ %i.ho, %bb.ao ]
  %i.hv = load ptr, ptr %i.aq, align 8, !tbaa !499
  %i.hw = zext i32 %i.hu to i64
  %i.hx = getelementptr inbounds nuw [20 x i8], ptr %i.hv, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.hx, ptr noundef nonnull readonly align 4 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !526
  %i.hy = load ptr, ptr %i.ar, align 8, !tbaa !527
  %i.hz = load i32, ptr %i.ao, align 8, !tbaa !522
  %i.ia = zext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [20 x i8], ptr %i.hy, i64 %i.ia ; 5 uses
  store i32 %.sroa.0.1.i, ptr %i.ib, align 4, !tbaa !139
  %.sroa.12.0..sroa_idx153.i = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  store i32 %.sroa.12.1.i, ptr %.sroa.12.0..sroa_idx153.i, align 4, !tbaa !139
  %.sroa.13.0..sroa_idx157.i = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store i32 %.sroa.13.1.i, ptr %.sroa.13.0..sroa_idx157.i, align 4, !tbaa !139
  %.sroa.14.0..sroa_idx161.i = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  store i32 %.sroa.14.1.i, ptr %.sroa.14.0..sroa_idx161.i, align 4, !tbaa !139
  %.sroa.15.0..sroa_idx165.i = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  store i32 0, ptr %.sroa.15.0..sroa_idx165.i, align 4, !tbaa !61
  %i.ic = load i32, ptr %i.ao, align 8, !tbaa !522
  %i.id = add i32 %i.ic, 1
  store i32 %i.id, ptr %i.ao, align 8, !tbaa !522
  br label %_ZN11hb_buffer_t16add_info_and_posERK15hb_glyph_info_tRK19hb_glyph_position_t.exit148.i

_ZN11hb_buffer_t16add_info_and_posERK15hb_glyph_info_tRK19hb_glyph_position_t.exit148.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i147.i, %_ZN11hb_buffer_t6ensureEj.exit.i144.i
  %i.ie = load i8, ptr %i.as, align 8, !tbaa !496, !range !220, !noundef !74
  %i.if = trunc nuw i8 %i.ie to i1
  br i1 %i.if, label %.loopexit.i, label %_ZL34_hb_buffer_deserialize_text_glyphsP11hb_buffer_tPKcjPS2_P9hb_font_t.exit, !prof !49

.loopexit.i:                                      ; preds = %bb.al, %_ZN11hb_buffer_t16add_info_and_posERK15hb_glyph_info_tRK19hb_glyph_position_t.exit148.i, %bb.an
  %.3.i = phi ptr [ %i.x, %bb.an ], [ %i.x, %_ZN11hb_buffer_t16add_info_and_posERK15hb_glyph_info_tRK19hb_glyph_position_t.exit148.i ], [ %.084.i, %bb.al ] ; 2 uses
  store ptr %.3.i, ptr %spec.store.select, align 8, !tbaa !574
  %i.ig = icmp eq ptr %.3.i, %i.x
  %i.ih = zext i1 %i.ig to i32
  br label %_ZL34_hb_buffer_deserialize_text_glyphsP11hb_buffer_tPKcjPS2_P9hb_font_t.exit

_ZL34_hb_buffer_deserialize_text_glyphsP11hb_buffer_tPKcjPS2_P9hb_font_t.exit: ; preds = %bb.q, %bb.ae, %_ZN11hb_buffer_t16add_info_and_posERK15hb_glyph_info_tRK19hb_glyph_position_t.exit.i, %bb.ah, %_ZN11hb_buffer_t16add_info_and_posERK15hb_glyph_info_tRK19hb_glyph_position_t.exit142.i, %bb.ak, %_ZL10parse_uintPKcS0_Pj.exit.i, %_ZL9parse_intPKcS0_Pi.exit.i, %_ZL9parse_intPKcS0_Pi.exit115.i, %_ZL9parse_intPKcS0_Pi.exit122.i, %_ZL9parse_intPKcS0_Pi.exit129.i, %_ZL10parse_uintPKcS0_Pj.exit136.i, %_ZN11hb_buffer_t16add_info_and_posERK15hb_glyph_info_tRK19hb_glyph_position_t.exit148.i, %.loopexit.i
  %.187.i = phi i32 [ %i.ih, %.loopexit.i ], [ 0, %_ZL9parse_intPKcS0_Pi.exit.i ], [ 0, %_ZL10parse_uintPKcS0_Pj.exit.i ], [ 0, %_ZN11hb_buffer_t16add_info_and_posERK15hb_glyph_info_tRK19hb_glyph_position_t.exit148.i ], [ 0, %_ZL10parse_uintPKcS0_Pj.exit136.i ], [ 0, %_ZL9parse_intPKcS0_Pi.exit129.i ], [ 0, %_ZL9parse_intPKcS0_Pi.exit122.i ], [ 0, %_ZL9parse_intPKcS0_Pi.exit115.i ], [ 0, %bb.ak ], [ 0, %_ZN11hb_buffer_t16add_info_and_posERK15hb_glyph_info_tRK19hb_glyph_position_t.exit142.i ], [ 0, %bb.ah ], [ 0, %_ZN11hb_buffer_t16add_info_and_posERK15hb_glyph_info_tRK19hb_glyph_position_t.exit.i ], [ 0, %bb.ae ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #63
  br label %bb.ar

bb.ap:                                            ; preds = %bb.g
  %i.ii = load atomic i8, ptr %i.n monotonic, align 1, !range !220, !noundef !74
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %bb.aq, label %hb_buffer_set_content_type.exit33, !prof !49

bb.aq:                                            ; preds = %bb.ap
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.ik, align 8, !tbaa !619
  br label %hb_buffer_set_content_type.exit33

hb_buffer_set_content_type.exit33:                ; preds = %bb.ap, %bb.aq
  %i.il = call fastcc noundef i32 @_ZL27_hb_buffer_deserialize_jsonP11hb_buffer_tPKcjPS2_P9hb_font_t(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %.028, ptr noundef nonnull %spec.store.select, ptr noundef %spec.select)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.g, %hb_buffer_set_content_type.exit33, %_ZL34_hb_buffer_deserialize_text_glyphsP11hb_buffer_tPKcjPS2_P9hb_font_t.exit, %bb.f, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.f ], [ %.187.i, %_ZL34_hb_buffer_deserialize_text_glyphsP11hb_buffer_tPKcjPS2_P9hb_font_t.exit ], [ %i.il, %hb_buffer_set_content_type.exit33 ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #63
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define void @hb_buffer_set_content_type(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i8, ptr %i.a monotonic, align 1, !range !220, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %1, ptr %i.d, align 8, !tbaa !619
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL27_hb_buffer_deserialize_jsonP11hb_buffer_tPKcjPS2_P9hb_font_t(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef range(i32 1, 0) %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 9 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 9 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca [32 x i8], align 16               ; 9 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca [32 x i8], align 16               ; 9 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca [32 x i8], align 16               ; 9 uses
  %i.j = alloca ptr, align 8                      ; 6 uses
  %i.k = alloca [32 x i8], align 16               ; 9 uses
  %i.l = alloca ptr, align 8                      ; 6 uses
  %i.m = alloca [32 x i8], align 16               ; 9 uses
  %i.n = alloca ptr, align 8                      ; 6 uses
  %5 = alloca %struct.hb_glyph_info_t, align 4    ; 9 uses
  %i.o = zext i32 %2 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 2 uses
  %i.r = load i8, ptr %i.q, align 2, !tbaa !575, !range !220, !noundef !74
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %hb_buffer_get_glyph_positions.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.u = load i32, ptr %i.t, align 8, !tbaa !576
  %.not9.i = icmp eq i32 %i.u, 0
  br i1 %.not9.i, label %bb.c, label %hb_buffer_get_glyph_positions.exit, !prof !49

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 0, ptr %i.v, align 1, !tbaa !577
  store i8 1, ptr %i.q, align 2, !tbaa !575
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.w, align 4, !tbaa !578
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !499
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.y, ptr %i.z, align 8, !tbaa !579
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !522
  %i.ac = mul i32 %i.ab, 20                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i, label %hb_buffer_get_glyph_positions.exit, label %bb.d, !prof !48

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !527
  %i.af = zext i32 %i.ac to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ae, i8 0, i64 %i.af, i1 false)
  br label %hb_buffer_get_glyph_positions.exit

hb_buffer_get_glyph_positions.exit:               ; preds = %bb.a, %bb.c, %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ai = ptrtoint ptr %i.a to i64
  %i.aj = ptrtoint ptr %i.c to i64
  %i.ak = ptrtoint ptr %i.e to i64
  %i.al = ptrtoint ptr %i.g to i64
  %i.am = ptrtoint ptr %i.i to i64
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = ptrtoint ptr %i.k to i64
  %i.ap = ptrtoint ptr %i.m to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.e

bb.e:                                             ; preds = %hb_buffer_get_glyph_positions.exit, %bb.ai
  %.sroa.0.0 = phi i32 [ 0, %hb_buffer_get_glyph_positions.exit ], [ %.sroa.0.1, %bb.ai ] ; 19 uses
  %.sroa.6.0 = phi i32 [ 0, %hb_buffer_get_glyph_positions.exit ], [ %.sroa.6.1, %bb.ai ] ; 19 uses
  %.sroa.7.0 = phi i32 [ 0, %hb_buffer_get_glyph_positions.exit ], [ %.sroa.7.1, %bb.ai ] ; 19 uses
  %.sroa.8.0 = phi i32 [ 0, %hb_buffer_get_glyph_positions.exit ], [ %.sroa.8.1, %bb.ai ] ; 19 uses
  %.064 = phi ptr [ %1, %hb_buffer_get_glyph_positions.exit ], [ %i.he, %bb.ai ] ; 17 uses
  %.063 = phi ptr [ null, %hb_buffer_get_glyph_positions.exit ], [ %.1, %bb.ai ] ; 31 uses
  %.062 = phi i32 [ 61, %hb_buffer_get_glyph_positions.exit ], [ %i.bv, %bb.ai ] ; 2 uses
  %i.av = shl nsw i32 %.062, 1
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr @_ZL28_deserialize_json_trans_keys, i64 %i.aw ; 2 uses
  %i.ay = sext i32 %.062 to i64                   ; 2 uses
  %i.az = getelementptr inbounds [2 x i8], ptr @_ZL31_deserialize_json_index_offsets, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !620
  %i.bb = sext i16 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr @_ZL26_deserialize_json_indicies, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr @_ZL27_deserialize_json_key_spans, i64 %i.ay
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !61
  %i.bf = sext i8 %i.be to i32                    ; 2 uses
  %i.bg = load i8, ptr %i.ax, align 2, !tbaa !61
  %i.bh = zext i8 %i.bg to i32                    ; 2 uses
  %i.bi = load i8, ptr %.064, align 1, !tbaa !61
  %i.bj = sext i8 %i.bi to i32                    ; 3 uses
  %.not = icmp sgt i32 %i.bh, %i.bj
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !61
  %i.bm = zext i8 %i.bl to i32
  %.not76 = icmp samesign ugt i32 %i.bj, %i.bm
  %i.bn = sub nuw nsw i32 %i.bj, %i.bh
  %spec.select = select i1 %.not76, i32 %i.bf, i32 %i.bn
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bo = phi i32 [ %i.bf, %bb.e ], [ %spec.select, %bb.f ]
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bc, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !61  ; 2 uses
  %i.bs = sext i8 %i.br to i64                    ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr @_ZL29_deserialize_json_trans_targs, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !61
  %i.bv = sext i8 %i.bu to i32
  %i.bw = getelementptr inbounds i8, ptr @_ZL31_deserialize_json_trans_actions, i64 %i.bs
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !61
  switch i8 %i.bx, label %_ZN11hb_buffer_t13ensure_glyphsEv.exit.thread [
    i8 13, label %bb.ag
    i8 15, label %bb.h
    i8 3, label %bb.i
    i8 1, label %bb.k
    i8 10, label %bb.l
    i8 14, label %bb.n
    i8 11, label %bb.p
    i8 12, label %bb.q
    i8 5, label %bb.s
    i8 6, label %bb.u
    i8 7, label %bb.w
    i8 2, label %bb.y
    i8 4, label %bb.aa
    i8 8, label %bb.ac
    i8 9, label %bb.ae
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  br label %_ZN11hb_buffer_t13ensure_glyphsEv.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.by = load i32, ptr %i.aq, align 8, !tbaa !522 ; 2 uses
  %i.bz = add i32 %i.by, 1                        ; 3 uses
  %.not.i.i = icmp eq i32 %i.bz, 0
  %i.ca = load i32, ptr %i.ar, align 8
  %i.cb = icmp ult i32 %i.bz, %i.ca
  %i.cc = select i1 %.not.i.i, i1 true, i1 %i.cb
  br i1 %i.cc, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i, label %_ZN11hb_buffer_t6ensureEj.exit.i, !prof !49

_ZN11hb_buffer_t6ensureEj.exit.i:                 ; preds = %bb.i
  %i.cd = call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.bz)
  br i1 %i.cd, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, label %_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t.exit, !prof !124

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i
  %.pre.i = load i32, ptr %i.aq, align 8, !tbaa !522
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i:          ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, %bb.i
  %i.ce = phi i32 [ %.pre.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %i.by, %bb.i ]
  %i.cf = load ptr, ptr %i.as, align 8, !tbaa !499
  %i.cg = zext i32 %i.ce to i64
  %i.ch = getelementptr inbounds nuw [20 x i8], ptr %i.cf, i64 %i.cg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ch, ptr noundef nonnull readonly align 4 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !526
  %i.ci = load i32, ptr %i.aq, align 8, !tbaa !522
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.aq, align 8, !tbaa !522
  br label %_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t.exit

_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t.exit: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i, %_ZN11hb_buffer_t6ensureEj.exit.thread.i
  %i.ck = load i8, ptr %i.at, align 8, !tbaa !496, !range !220, !noundef !74
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.j, label %.critedge, !prof !49

bb.j:                                             ; preds = %_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t.exit
  %i.cm = load ptr, ptr %i.au, align 8, !tbaa !527
  %i.cn = load i32, ptr %i.aq, align 8, !tbaa !522
  %i.co = add i32 %i.cn, -1
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [20 x i8], ptr %i.cm, i64 %i.cp ; 5 uses
  store i32 %.sroa.0.0, ptr %i.cq, align 4, !tbaa !139
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !139
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !139
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !139
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !61
  store ptr %.064, ptr %3, align 8, !tbaa !574
  br label %_ZN11hb_buffer_t13ensure_glyphsEv.exit.thread

bb.k:                                             ; preds = %bb.g
  br label %_ZN11hb_buffer_t13ensure_glyphsEv.exit.thread

bb.l:                                             ; preds = %bb.g
  %i.cr = load i32, ptr %i.ag, align 8, !tbaa !619
  switch i32 %i.cr, label %.critedge [
    i32 2, label %_ZN11hb_buffer_t13ensure_glyphsEv.exit.thread
    i32 0, label %bb.m
  ], !prof !622

bb.m:                                             ; preds = %bb.l
  store i32 2, ptr %i.ag, align 8, !tbaa !619
  br label %_ZN11hb_buffer_t13ensure_glyphsEv.exit.thread

bb.n:                                             ; preds = %bb.g
  %i.cs = load i32, ptr %i.ag, align 8, !tbaa !619
  switch i32 %i.cs, label %.critedge [
    i32 1, label %_ZN11hb_buffer_t13ensure_glyphsEv.exit.thread
    i32 0, label %bb.o
  ], !prof !622

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %i.ag, align 8, !tbaa !619
  br label %_ZN11hb_buffer_t13ensure_glyphsEv.exit.thread

bb.p:                                             ; preds = %bb.g
  %i.ct = getelementptr inbounds nuw i8, ptr %.063, i64 1
  %i.cu = ptrtoint ptr %.064 to i64
  %i.cv = ptrtoint ptr %.063 to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = add i32 %i.cx, -2
  %i.cz = call noundef i32 @_ZN9hb_font_t17glyph_from_stringEPKciPj(ptr noundef nonnull align 8 dereferenceable(192) %4, ptr noundef nonnull %i.ct, i32 noundef %i.cy, ptr noundef nonnull %5)
  %.not77 = icmp eq i32 %i.cz, 0
  br i1 %.not77, label %.critedge, label %_ZN11hb_buffer_t13ensure_glyphsEv.exit.thread

bb.q:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #63
  %i.da = ptrtoint ptr %.064 to i64
  %i.db = ptrtoint ptr %.063 to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 2 uses
  %i.dd = trunc i64 %i.dc to i32
  %.sroa.speculated.i.i.i = call i32 @llvm.umin.i32(i32 %i.dd, i32 31)
  %i.de = zext nneg i32 %.sroa.speculated.i.i.i to i64 ; 2 uses
  %i.df = call ptr @strncpy(ptr noundef nonnull %i.m, ptr noundef %.063, i64 noundef %i.de) #63 ; 0 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.de
  store i8 0, ptr %i.dg, align 1, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #63
  store ptr %i.m, ptr %i.n, align 8, !tbaa !574
  %i.dh = tail call ptr @__errno_location() #67   ; 2 uses
  store i32 0, ptr %i.dh, align 4, !tbaa !139
  %i.di = call noundef i64 @__isoc23_strtoul(ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, i32 noundef 10) #63
  %i.dj = trunc i64 %i.di to i32
  %i.dk = load i32, ptr %i.dh, align 4, !tbaa !139
  %.not.i.i.i81 = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i.i81, label %bb.r, label %_ZL10parse_uintPKcS0_Pj.exit, !prof !49

bb.r:                                             ; preds = %bb.q
  %i.dl = load ptr, ptr %i.n, align 8, !tbaa !574 ; 2 uses
  %i.dm = icmp ne ptr %i.m, %i.dl
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dn, %i.ap
  %.not22.i.i.i = icmp eq i64 %i.do, %i.dc
  %or.cond.i = and i1 %i.dm, %.not22.i.i.i
  br i1 %or.cond.i, label %_ZL10parse_uintPKcS0_Pj.exit.thread, label %_ZL10parse_uintPKcS0_Pj.exit, !prof !621

_ZL10parse_uintPKcS0_Pj.exit.thread:              ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #63
  store i32 %i.dj, ptr %5, align 4, !tbaa !139
  br label %_ZN11hb_buffer_t13ensure_glyphsEv.exit.thread

_ZL10parse_uintPKcS0_Pj.exit:                     ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #63
  br label %.critedge

bb.s:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #63
  %i.dp = ptrtoint ptr %.064 to i64
  %i.dq = ptrtoint ptr %.063 to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 2 uses
  %i.ds = trunc i64 %i.dr to i32
  %.sroa.speculated.i.i.i82 = call i32 @llvm.umin.i32(i32 %i.ds, i32 31)
  %i.dt = zext nneg i32 %.sroa.speculated.i.i.i82 to i64 ; 2 uses
  %i.du = call ptr @strncpy(ptr noundef nonnull %i.k, ptr noundef %.063, i64 noundef %i.dt) #63 ; 0 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.dt
  store i8 0, ptr %i.dv, align 1, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #63
  store ptr %i.k, ptr %i.l, align 8, !tbaa !574
  %i.dw = tail call ptr @__errno_location() #67   ; 2 uses
  store i32 0, ptr %i.dw, align 4, !tbaa !139
  %i.dx = call noundef i64 @__isoc23_strtoul(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, i32 noundef 10) #63
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = load i32, ptr %i.dw, align 4, !tbaa !139
  %.not.i.i.i83 = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i.i83, label %bb.t, label %_ZL10parse_uintPKcS0_Pj.exit88, !prof !49

bb.t:                                             ; preds = %bb.s
  %i.ea = load ptr, ptr %i.l, align 8, !tbaa !574 ; 2 uses
  %i.eb = icmp ne ptr %i.k, %i.ea
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.ec, %i.ao
  %.not22.i.i.i86 = icmp eq i64 %i.ed, %i.dr
  %or.cond.i87 = and i1 %i.eb, %.not22.i.i.i86
  br i1 %or.cond.i87, label %_ZL10parse_uintPKcS0_Pj.exit88.thread, label %_ZL10parse_uintPKcS0_Pj.exit88, !prof !621

_ZL10parse_uintPKcS0_Pj.exit88.thread:            ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #63
  store i32 %i.dy, ptr %i.an, align 4, !tbaa !139
  br label %_ZN11hb_buffer_t13ensure_glyphsEv.exit.thread

end_hunk_3
begin_hunk_4_@_ZL27_hb_buffer_deserialize_jsonP11hb_buffer_tPKcjPS2_P9hb_font_t:bb.a
  %or.cond.i113 = and i1 %i.gj, %.not22.i.i.i112
  br i1 %or.cond.i113, label %_ZL9parse_intPKcS0_Pi.exit114.thread, label %_ZL9parse_intPKcS0_Pi.exit114, !prof !621

_ZL9parse_intPKcS0_Pi.exit114.thread:             ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #63
  br label %_ZN11hb_buffer_t13ensure_glyphsEv.exit.thread

_ZL9parse_intPKcS0_Pi.exit114:                    ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #63
  br label %.critedge

bb.ac:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.gm = ptrtoint ptr %.064 to i64
  %i.gn = ptrtoint ptr %.063 to i64
  %i.go = sub i64 %i.gm, %i.gn                    ; 2 uses
  %i.gp = trunc i64 %i.go to i32
  %.sroa.speculated.i.i.i115 = call i32 @llvm.umin.i32(i32 %i.gp, i32 31)
  %i.gq = zext nneg i32 %.sroa.speculated.i.i.i115 to i64 ; 2 uses
  %i.gr = call ptr @strncpy(ptr noundef nonnull %i.a, ptr noundef %.063, i64 noundef %i.gq) #63 ; 0 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gq
  store i8 0, ptr %i.gs, align 1, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  store ptr %i.a, ptr %i.b, align 8, !tbaa !574
  %i.gt = tail call ptr @__errno_location() #67   ; 2 uses
  store i32 0, ptr %i.gt, align 4, !tbaa !139
  %i.gu = call noundef i64 @__isoc23_strtoul(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 10) #63
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = load i32, ptr %i.gt, align 4, !tbaa !139
  %.not.i.i.i116 = icmp eq i32 %i.gw, 0
  br i1 %.not.i.i.i116, label %bb.ad, label %_ZL10parse_uintPKcS0_Pj.exit121, !prof !49

bb.ad:                                            ; preds = %bb.ac
  %i.gx = load ptr, ptr %i.b, align 8, !tbaa !574 ; 2 uses
  %i.gy = icmp ne ptr %i.a, %i.gx
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gz, %i.ai
  %.not22.i.i.i119 = icmp eq i64 %i.ha, %i.go
  %or.cond.i120 = and i1 %i.gy, %.not22.i.i.i119
  br i1 %or.cond.i120, label %_ZL10parse_uintPKcS0_Pj.exit121.thread, label %_ZL10parse_uintPKcS0_Pj.exit121, !prof !621

_ZL10parse_uintPKcS0_Pj.exit121.thread:           ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  store i32 %i.gv, ptr %i.ah, align 4, !tbaa !139
  br label %_ZN11hb_buffer_t13ensure_glyphsEv.exit.thread

_ZL10parse_uintPKcS0_Pj.exit121:                  ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %.critedge

bb.ae:                                            ; preds = %bb.g
  %i.hb = load i32, ptr %i.ag, align 8, !tbaa !619
  switch i32 %i.hb, label %.critedge [
    i32 2, label %_ZN11hb_buffer_t13ensure_glyphsEv.exit.thread
    i32 0, label %bb.af
  ], !prof !622

bb.af:                                            ; preds = %bb.ae
  store i32 2, ptr %i.ag, align 8, !tbaa !619
  br label %_ZN11hb_buffer_t13ensure_glyphsEv.exit.thread

bb.ag:                                            ; preds = %bb.g
  %i.hc = load i32, ptr %i.ag, align 8, !tbaa !619
  switch i32 %i.hc, label %.critedge [
    i32 1, label %_ZN11hb_buffer_t13ensure_glyphsEv.exit.thread
    i32 0, label %bb.ah
  ], !prof !622

bb.ah:                                            ; preds = %bb.ag
  store i32 1, ptr %i.ag, align 8, !tbaa !619
  br label %_ZN11hb_buffer_t13ensure_glyphsEv.exit.thread

_ZN11hb_buffer_t13ensure_glyphsEv.exit.thread:    ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.o, %bb.n, %bb.m, %bb.l, %_ZL10parse_uintPKcS0_Pj.exit121.thread, %_ZL9parse_intPKcS0_Pi.exit114.thread, %_ZL9parse_intPKcS0_Pi.exit107.thread, %_ZL9parse_intPKcS0_Pi.exit100.thread, %_ZL9parse_intPKcS0_Pi.exit.thread, %_ZL10parse_uintPKcS0_Pj.exit88.thread, %_ZL10parse_uintPKcS0_Pj.exit.thread, %bb.g, %bb.h, %bb.j, %bb.k, %bb.p
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %bb.af ], [ 0, %bb.h ], [ %.sroa.0.0, %bb.j ], [ %.sroa.0.0, %bb.k ], [ %.sroa.0.0, %bb.o ], [ %.sroa.0.0, %bb.m ], [ %.sroa.0.0, %bb.p ], [ %.sroa.0.0, %_ZL10parse_uintPKcS0_Pj.exit.thread ], [ %.sroa.0.0, %_ZL10parse_uintPKcS0_Pj.exit88.thread ], [ %.sroa.0.0, %_ZL9parse_intPKcS0_Pi.exit.thread ], [ %.sroa.0.0, %_ZL9parse_intPKcS0_Pi.exit100.thread ], [ %i.fr, %_ZL9parse_intPKcS0_Pi.exit107.thread ], [ %.sroa.0.0, %_ZL9parse_intPKcS0_Pi.exit114.thread ], [ %.sroa.0.0, %_ZL10parse_uintPKcS0_Pj.exit121.thread ], [ %.sroa.0.0, %bb.l ], [ %.sroa.0.0, %bb.n ], [ %.sroa.0.0, %bb.ae ], [ %.sroa.0.0, %bb.ag ], [ %.sroa.0.0, %bb.ah ]
  %.sroa.6.1 = phi i32 [ %.sroa.6.0, %bb.g ], [ %.sroa.6.0, %bb.af ], [ 0, %bb.h ], [ %.sroa.6.0, %bb.j ], [ %.sroa.6.0, %bb.k ], [ %.sroa.6.0, %bb.o ], [ %.sroa.6.0, %bb.m ], [ %.sroa.6.0, %bb.p ], [ %.sroa.6.0, %_ZL10parse_uintPKcS0_Pj.exit.thread ], [ %.sroa.6.0, %_ZL10parse_uintPKcS0_Pj.exit88.thread ], [ %.sroa.6.0, %_ZL9parse_intPKcS0_Pi.exit.thread ], [ %.sroa.6.0, %_ZL9parse_intPKcS0_Pi.exit100.thread ], [ %.sroa.6.0, %_ZL9parse_intPKcS0_Pi.exit107.thread ], [ %i.gg, %_ZL9parse_intPKcS0_Pi.exit114.thread ], [ %.sroa.6.0, %_ZL10parse_uintPKcS0_Pj.exit121.thread ], [ %.sroa.6.0, %bb.l ], [ %.sroa.6.0, %bb.n ], [ %.sroa.6.0, %bb.ae ], [ %.sroa.6.0, %bb.ag ], [ %.sroa.6.0, %bb.ah ]
  %.sroa.7.1 = phi i32 [ %.sroa.7.0, %bb.g ], [ %.sroa.7.0, %bb.af ], [ 0, %bb.h ], [ %.sroa.7.0, %bb.j ], [ %.sroa.7.0, %bb.k ], [ %.sroa.7.0, %bb.o ], [ %.sroa.7.0, %bb.m ], [ %.sroa.7.0, %bb.p ], [ %.sroa.7.0, %_ZL10parse_uintPKcS0_Pj.exit.thread ], [ %.sroa.7.0, %_ZL10parse_uintPKcS0_Pj.exit88.thread ], [ %i.en, %_ZL9parse_intPKcS0_Pi.exit.thread ], [ %.sroa.7.0, %_ZL9parse_intPKcS0_Pi.exit100.thread ], [ %.sroa.7.0, %_ZL9parse_intPKcS0_Pi.exit107.thread ], [ %.sroa.7.0, %_ZL9parse_intPKcS0_Pi.exit114.thread ], [ %.sroa.7.0, %_ZL10parse_uintPKcS0_Pj.exit121.thread ], [ %.sroa.7.0, %bb.l ], [ %.sroa.7.0, %bb.n ], [ %.sroa.7.0, %bb.ae ], [ %.sroa.7.0, %bb.ag ], [ %.sroa.7.0, %bb.ah ]
  %.sroa.8.1 = phi i32 [ %.sroa.8.0, %bb.g ], [ %.sroa.8.0, %bb.af ], [ 0, %bb.h ], [ %.sroa.8.0, %bb.j ], [ %.sroa.8.0, %bb.k ], [ %.sroa.8.0, %bb.o ], [ %.sroa.8.0, %bb.m ], [ %.sroa.8.0, %bb.p ], [ %.sroa.8.0, %_ZL10parse_uintPKcS0_Pj.exit.thread ], [ %.sroa.8.0, %_ZL10parse_uintPKcS0_Pj.exit88.thread ], [ %.sroa.8.0, %_ZL9parse_intPKcS0_Pi.exit.thread ], [ %i.fc, %_ZL9parse_intPKcS0_Pi.exit100.thread ], [ %.sroa.8.0, %_ZL9parse_intPKcS0_Pi.exit107.thread ], [ %.sroa.8.0, %_ZL9parse_intPKcS0_Pi.exit114.thread ], [ %.sroa.8.0, %_ZL10parse_uintPKcS0_Pj.exit121.thread ], [ %.sroa.8.0, %bb.l ], [ %.sroa.8.0, %bb.n ], [ %.sroa.8.0, %bb.ae ], [ %.sroa.8.0, %bb.ag ], [ %.sroa.8.0, %bb.ah ]
  %.1 = phi ptr [ %.063, %bb.g ], [ %.064, %bb.af ], [ %.063, %bb.h ], [ %.063, %bb.j ], [ %.064, %bb.k ], [ %.063, %bb.o ], [ %.063, %bb.m ], [ %.063, %bb.p ], [ %.063, %_ZL10parse_uintPKcS0_Pj.exit.thread ], [ %.063, %_ZL10parse_uintPKcS0_Pj.exit88.thread ], [ %.063, %_ZL9parse_intPKcS0_Pi.exit.thread ], [ %.063, %_ZL9parse_intPKcS0_Pi.exit100.thread ], [ %.063, %_ZL9parse_intPKcS0_Pi.exit107.thread ], [ %.063, %_ZL9parse_intPKcS0_Pi.exit114.thread ], [ %.063, %_ZL10parse_uintPKcS0_Pj.exit121.thread ], [ %.063, %bb.l ], [ %.063, %bb.n ], [ %.064, %bb.ae ], [ %.064, %bb.ag ], [ %.064, %bb.ah ]
  %i.hd = icmp eq i8 %i.br, 1
  br i1 %i.hd, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZN11hb_buffer_t13ensure_glyphsEv.exit.thread
  %i.he = getelementptr inbounds nuw i8, ptr %.064, i64 1 ; 2 uses
  %.not78 = icmp eq ptr %i.he, %i.p
  br i1 %.not78, label %bb.aj, label %bb.e

bb.aj:                                            ; preds = %bb.ai, %_ZN11hb_buffer_t13ensure_glyphsEv.exit.thread
  %.2 = phi ptr [ %.064, %_ZN11hb_buffer_t13ensure_glyphsEv.exit.thread ], [ %i.p, %bb.ai ] ; 2 uses
  store ptr %.2, ptr %3, align 8, !tbaa !574
  %i.hf = icmp eq ptr %.2, %i.p
  %i.hg = zext i1 %i.hf to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.ag, %bb.ae, %bb.n, %bb.l, %_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t.exit, %bb.p, %_ZL10parse_uintPKcS0_Pj.exit121, %_ZL9parse_intPKcS0_Pi.exit114, %_ZL9parse_intPKcS0_Pi.exit107, %_ZL9parse_intPKcS0_Pi.exit100, %_ZL9parse_intPKcS0_Pi.exit, %_ZL10parse_uintPKcS0_Pj.exit88, %_ZL10parse_uintPKcS0_Pj.exit, %bb.aj
  %.167 = phi i32 [ %i.hg, %bb.aj ], [ 0, %_ZL10parse_uintPKcS0_Pj.exit121 ], [ 0, %_ZL9parse_intPKcS0_Pi.exit114 ], [ 0, %_ZL9parse_intPKcS0_Pi.exit107 ], [ 0, %_ZL9parse_intPKcS0_Pi.exit100 ], [ 0, %_ZL9parse_intPKcS0_Pi.exit ], [ 0, %_ZL10parse_uintPKcS0_Pj.exit88 ], [ 0, %_ZL10parse_uintPKcS0_Pj.exit ], [ 0, %bb.p ], [ 0, %_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t.exit ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.ae ], [ 0, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #63
  ret i32 %.167
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_buffer_deserialize_unicode(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 9 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 9 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #63
  %.not = icmp eq ptr %3, null
  %spec.store.select = select i1 %.not, ptr %i.e, ptr %3 ; 6 uses
  store ptr %1, ptr %spec.store.select, align 8, !tbaa !574
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load atomic i8, ptr %i.f monotonic, align 1, !range !220, !noundef !74
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %spec.store.select, align 8, !tbaa !574
  br label %_ZL35_hb_buffer_deserialize_text_unicodeP11hb_buffer_tPKcjPS2_P9hb_font_t.exit

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %2, -1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #68
  %i.k = trunc i64 %i.j to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.026 = phi i32 [ %i.k, %bb.d ], [ %2, %bb.c ]  ; 3 uses
  %.not28 = icmp eq i32 %.026, 0
  br i1 %.not28, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %1, ptr %spec.store.select, align 8, !tbaa !574
  br label %_ZL35_hb_buffer_deserialize_text_unicodeP11hb_buffer_tPKcjPS2_P9hb_font_t.exit

bb.g:                                             ; preds = %bb.e
  switch i32 %4, label %_ZL35_hb_buffer_deserialize_text_unicodeP11hb_buffer_tPKcjPS2_P9hb_font_t.exit [
    i32 1413830740, label %bb.h
    i32 1246973774, label %bb.ad
  ]

bb.h:                                             ; preds = %bb.g
  %i.l = load atomic i8, ptr %i.f monotonic, align 1, !range !220, !noundef !74
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.i, label %hb_buffer_set_content_type.exit, !prof !49

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.n, align 8, !tbaa !619
  br label %hb_buffer_set_content_type.exit

hb_buffer_set_content_type.exit:                  ; preds = %bb.h, %bb.i
  %i.o = zext i32 %.026 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.w = ptrtoint ptr %i.a to i64
  %i.x = ptrtoint ptr %i.c to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.y, %hb_buffer_set_content_type.exit
  %.sroa.0.0.i = phi i32 [ 0, %hb_buffer_set_content_type.exit ], [ %.sroa.0.2.i, %bb.y ] ; 5 uses
  %.sroa.84.0.i = phi i32 [ 0, %hb_buffer_set_content_type.exit ], [ %.sroa.84.2.i, %bb.y ] ; 5 uses
  %.056.i = phi ptr [ %1, %hb_buffer_set_content_type.exit ], [ %i.dd, %bb.y ] ; 7 uses
  %.054.i = phi ptr [ null, %hb_buffer_set_content_type.exit ], [ %.155.i, %bb.y ] ; 10 uses
  %.053.i = phi i32 [ 7, %hb_buffer_set_content_type.exit ], [ %i.ay, %bb.y ] ; 2 uses
  %i.y = shl nsw i32 %.053.i, 1
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr @_ZL36_deserialize_text_unicode_trans_keys, i64 %i.z ; 2 uses
  %i.ab = sext i32 %.053.i to i64                 ; 2 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr @_ZL39_deserialize_text_unicode_index_offsets, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !620
  %i.ae = sext i16 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr @_ZL34_deserialize_text_unicode_indicies, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr @_ZL35_deserialize_text_unicode_key_spans, i64 %i.ab
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !61
  %i.ai = sext i8 %i.ah to i32                    ; 2 uses
  %i.aj = load i8, ptr %i.aa, align 2, !tbaa !61
  %i.ak = zext i8 %i.aj to i32                    ; 2 uses
  %i.al = load i8, ptr %.056.i, align 1, !tbaa !61
  %i.am = sext i8 %i.al to i32                    ; 3 uses
  %.not.i = icmp sgt i32 %i.ak, %i.am
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !61
  %i.ap = zext i8 %i.ao to i32
  %.not69.i = icmp samesign ugt i32 %i.am, %i.ap
  %i.aq = sub nuw nsw i32 %i.am, %i.ak
  %spec.select.i = select i1 %.not69.i, i32 %i.ai, i32 %i.aq
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = phi i32 [ %i.ai, %bb.j ], [ %spec.select.i, %bb.k ]
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.af, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !61  ; 3 uses
  %i.av = sext i8 %i.au to i64                    ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr @_ZL37_deserialize_text_unicode_trans_targs, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !61
  %i.ay = sext i8 %i.ax to i32
  %i.az = shl nuw i64 1, %i.av
  %i.ba = and i64 %i.az, 1547
  %.not70.i = icmp eq i64 %i.ba, 0
  br i1 %.not70.i, label %bb.m, label %bb.x

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds i8, ptr @_ZL39_deserialize_text_unicode_trans_actions, i64 %i.av
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !61
  switch i8 %i.bc, label %bb.x [
    i8 4, label %bb.n
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.r
    i8 6, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  br label %bb.x

bb.o:                                             ; preds = %bb.m
  br label %bb.x

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #63
  %i.bd = ptrtoint ptr %.056.i to i64
  %i.be = ptrtoint ptr %.054.i to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = trunc i64 %i.bf to i32
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.bg, i32 31)
  %i.bh = zext nneg i32 %.sroa.speculated.i.i.i.i to i64 ; 2 uses
  %i.bi = call ptr @strncpy(ptr noundef nonnull %i.c, ptr noundef %.054.i, i64 noundef %i.bh) #63 ; 0 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bh
  store i8 0, ptr %i.bj, align 1, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #63
  store ptr %i.c, ptr %i.d, align 8, !tbaa !574
  %i.bk = tail call ptr @__errno_location() #67   ; 2 uses
  store i32 0, ptr %i.bk, align 4, !tbaa !139
  %i.bl = call noundef i64 @__isoc23_strtoul(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 16) #63
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !139
  %.not.i.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %_ZL9parse_hexPKcS0_Pj.exit.i, !prof !49

bb.q:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !574 ; 2 uses
  %i.bp = icmp ne ptr %i.c, %i.bo
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bq, %i.x
  %.not22.i.i.i.i = icmp eq i64 %i.br, %i.bf
  %or.cond.i.i = and i1 %i.bp, %.not22.i.i.i.i
  br i1 %or.cond.i.i, label %_ZL9parse_hexPKcS0_Pj.exit.thread.i, label %_ZL9parse_hexPKcS0_Pj.exit.i, !prof !621

_ZL9parse_hexPKcS0_Pj.exit.thread.i:              ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #63
  br label %bb.x

_ZL9parse_hexPKcS0_Pj.exit.i:                     ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #63
  br label %_ZL35_hb_buffer_deserialize_text_unicodeP11hb_buffer_tPKcjPS2_P9hb_font_t.exit

bb.r:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.bs = ptrtoint ptr %.056.i to i64
  %i.bt = ptrtoint ptr %.054.i to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 2 uses
  %i.bv = trunc i64 %i.bu to i32
  %.sroa.speculated.i.i.i72.i = call i32 @llvm.umin.i32(i32 %i.bv, i32 31)
  %i.bw = zext nneg i32 %.sroa.speculated.i.i.i72.i to i64 ; 2 uses
  %i.bx = call ptr @strncpy(ptr noundef nonnull %i.a, ptr noundef %.054.i, i64 noundef %i.bw) #63 ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  store ptr %i.a, ptr %i.b, align 8, !tbaa !574
  %i.bz = tail call ptr @__errno_location() #67   ; 2 uses
  store i32 0, ptr %i.bz, align 4, !tbaa !139
  %i.ca = call noundef i64 @__isoc23_strtoul(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 10) #63
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = load i32, ptr %i.bz, align 4, !tbaa !139
  %.not.i.i.i73.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i.i73.i, label %bb.s, label %_ZL10parse_uintPKcS0_Pj.exit.i, !prof !49

bb.s:                                             ; preds = %bb.r
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !574 ; 2 uses
  %i.ce = icmp ne ptr %i.a, %i.cd
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.cf, %i.w
  %.not22.i.i.i76.i = icmp eq i64 %i.cg, %i.bu
  %or.cond.i77.i = and i1 %i.ce, %.not22.i.i.i76.i
  br i1 %or.cond.i77.i, label %_ZL10parse_uintPKcS0_Pj.exit.thread.i, label %_ZL10parse_uintPKcS0_Pj.exit.i, !prof !621

_ZL10parse_uintPKcS0_Pj.exit.thread.i:            ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %bb.x

_ZL10parse_uintPKcS0_Pj.exit.i:                   ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %_ZL35_hb_buffer_deserialize_text_unicodeP11hb_buffer_tPKcjPS2_P9hb_font_t.exit

bb.t:                                             ; preds = %bb.m
  %i.ch = load i32, ptr %i.q, align 8, !tbaa !522 ; 2 uses
  %i.ci = add i32 %i.ch, 1                        ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.ci, 0
  %i.cj = load i32, ptr %i.r, align 8
  %i.ck = icmp ult i32 %i.ci, %i.cj
  %i.cl = select i1 %.not.i.i.i, i1 true, i1 %i.ck
  br i1 %i.cl, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, label %_ZN11hb_buffer_t6ensureEj.exit.i.i, !prof !49

_ZN11hb_buffer_t6ensureEj.exit.i.i:               ; preds = %bb.t
  %i.cm = call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.ci)
  br i1 %i.cm, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i, label %_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t.exit.i, !prof !124

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i.i
  %.pre.i.i = load i32, ptr %i.q, align 8, !tbaa !522
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i.i:        ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i, %bb.t
  %i.cn = phi i32 [ %.pre.i.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i ], [ %i.ch, %bb.t ]
  %i.co = load ptr, ptr %i.s, align 8, !tbaa !499
  %i.cp = zext i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw [20 x i8], ptr %i.co, i64 %i.cp ; 4 uses
  store i32 %.sroa.0.0.i, ptr %i.cq, align 4, !tbaa !139
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i32 0, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !139
  %.sroa.84.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 %.sroa.84.0.i, ptr %.sroa.84.0..sroa_idx.i, align 4, !tbaa !139
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i64 0, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.cr = load i32, ptr %i.q, align 8, !tbaa !522
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.q, align 8, !tbaa !522
  br label %_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t.exit.i

_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t.exit.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, %_ZN11hb_buffer_t6ensureEj.exit.i.i
  %i.ct = load i8, ptr %i.t, align 8, !tbaa !496, !range !220, !noundef !74
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.u, label %_ZL35_hb_buffer_deserialize_text_unicodeP11hb_buffer_tPKcjPS2_P9hb_font_t.exit, !prof !49

bb.u:                                             ; preds = %_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t.exit.i
  %i.cv = load i8, ptr %i.u, align 2, !tbaa !575, !range !220, !noundef !74
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.v, align 8, !tbaa !527
  %i.cy = load i32, ptr %i.q, align 8, !tbaa !522
  %i.cz = add i32 %i.cy, -1
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [20 x i8], ptr %i.cx, i64 %i.da
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.db, i8 0, i64 20, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store ptr %.056.i, ptr %spec.store.select, align 8, !tbaa !574
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZL10parse_uintPKcS0_Pj.exit.thread.i, %_ZL9parse_hexPKcS0_Pj.exit.thread.i, %bb.o, %bb.n, %bb.m, %bb.l
  %.sroa.0.2.i = phi i32 [ %.sroa.0.0.i, %bb.m ], [ 0, %bb.n ], [ %.sroa.0.0.i, %bb.o ], [ %i.bm, %_ZL9parse_hexPKcS0_Pj.exit.thread.i ], [ %.sroa.0.0.i, %_ZL10parse_uintPKcS0_Pj.exit.thread.i ], [ 0, %bb.w ], [ %.sroa.0.0.i, %bb.l ] ; 2 uses
  %.sroa.84.2.i = phi i32 [ %.sroa.84.0.i, %bb.m ], [ 0, %bb.n ], [ %.sroa.84.0.i, %bb.o ], [ %.sroa.84.0.i, %_ZL9parse_hexPKcS0_Pj.exit.thread.i ], [ %i.cb, %_ZL10parse_uintPKcS0_Pj.exit.thread.i ], [ 0, %bb.w ], [ %.sroa.84.0.i, %bb.l ] ; 2 uses
  %.155.i = phi ptr [ %.054.i, %bb.m ], [ %.054.i, %bb.n ], [ %.056.i, %bb.o ], [ %.054.i, %_ZL9parse_hexPKcS0_Pj.exit.thread.i ], [ %.054.i, %_ZL10parse_uintPKcS0_Pj.exit.thread.i ], [ %.054.i, %bb.w ], [ %.054.i, %bb.l ]
  %i.dc = icmp eq i8 %i.au, 1
  br i1 %i.dc, label %.loopexit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %.056.i, i64 1 ; 2 uses
  %.not71.i = icmp eq ptr %i.dd, %i.p
  br i1 %.not71.i, label %bb.z, label %bb.j

bb.z:                                             ; preds = %bb.y
  switch i8 %i.au, label %.loopexit.i [
    i8 8, label %bb.aa
    i8 5, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  %i.de = load i32, ptr %i.q, align 8, !tbaa !522 ; 2 uses
  %i.df = add i32 %i.de, 1                        ; 3 uses
  %.not.i.i78.i = icmp eq i32 %i.df, 0
  %i.dg = load i32, ptr %i.r, align 8
  %i.dh = icmp ult i32 %i.df, %i.dg
  %i.di = select i1 %.not.i.i78.i, i1 true, i1 %i.dh
  br i1 %i.di, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i82.i, label %_ZN11hb_buffer_t6ensureEj.exit.i79.i, !prof !49

_ZN11hb_buffer_t6ensureEj.exit.i79.i:             ; preds = %bb.aa
  %i.dj = call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.df)
end_hunk_4
begin_hunk_5_@_ZN11hb_buffer_t7reverseEv:bb.a
  %1 = alloca %struct.hb_glyph_position_t, align 4 ; 4 uses
  %2 = alloca %struct.hb_glyph_info_t, align 4    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !522  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !499  ; 2 uses
  %i.e = icmp ult i32 %i.b, 2
  br i1 %i.e, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.f = lshr i32 %i.b, 1
  %zext = zext nneg i32 %i.f to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %.0.in17.i.i = phi i32 [ %i.b, %.lr.ph.preheader.i.i ], [ %.0.i.i, %.lr.ph.i.i ]
  %.0.i.i = add i32 %.0.in17.i.i, -1              ; 2 uses
  %i.g = zext i32 %.0.i.i to i64
  %i.h = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %indvars.iv.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.h, i64 20, i1 false), !tbaa.struct !526
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.h, ptr noundef nonnull align 4 dereferenceable(20) %i.i, i64 20, i1 false), !tbaa.struct !526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.i, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !526
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.j = icmp eq i64 %indvars.iv.next.i.i, %zext
  br i1 %i.j, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i, label %.lr.ph.i.i, !llvm.loop !642

_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.l = load i8, ptr %i.k, align 2, !tbaa !575, !range !220, !noundef !74
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.b, label %_ZN11hb_buffer_t13reverse_rangeEjj.exit

bb.b:                                             ; preds = %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !527  ; 2 uses
  %i.p = load i32, ptr %i.a, align 8, !tbaa !522
  %.sroa.speculated.i5.i = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %i.p) ; 3 uses
  %i.q = icmp ult i32 %.sroa.speculated.i5.i, 2
  br i1 %i.q, label %_ZN11hb_buffer_t13reverse_rangeEjj.exit, label %.lr.ph.preheader.i6.i

.lr.ph.preheader.i6.i:                            ; preds = %bb.b
  %i.r = lshr i32 %.sroa.speculated.i5.i, 1
  %zext1 = zext nneg i32 %i.r to i64
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i, %.lr.ph.preheader.i6.i
  %indvars.iv.i9.i = phi i64 [ 0, %.lr.ph.preheader.i6.i ], [ %indvars.iv.next.i12.i, %.lr.ph.i8.i ] ; 2 uses
  %.0.in17.i10.i = phi i32 [ %.sroa.speculated.i5.i, %.lr.ph.preheader.i6.i ], [ %.0.i11.i, %.lr.ph.i8.i ]
  %.0.i11.i = add i32 %.0.in17.i10.i, -1          ; 2 uses
  %i.s = zext i32 %.0.i11.i to i64
  %i.t = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv.i9.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1, ptr noundef nonnull align 4 dereferenceable(20) %i.t, i64 20, i1 false), !tbaa.struct !528
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.t, ptr noundef nonnull align 4 dereferenceable(20) %i.u, i64 20, i1 false), !tbaa.struct !528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.u, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !528
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %indvars.iv.next.i12.i = add nuw nsw i64 %indvars.iv.i9.i, 1 ; 2 uses
  %i.v = icmp eq i64 %indvars.iv.next.i12.i, %zext1
  br i1 %i.v, label %_ZN11hb_buffer_t13reverse_rangeEjj.exit, label %.lr.ph.i8.i, !llvm.loop !643

_ZN11hb_buffer_t13reverse_rangeEjj.exit:          ; preds = %.lr.ph.i8.i, %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @hb_buffer_reverse_range(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #20 {
bb.a:
  %3 = alloca %struct.hb_glyph_position_t, align 4 ; 4 uses
  %4 = alloca %struct.hb_glyph_info_t, align 4    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !499  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !522  ; 2 uses
  %.sroa.speculated12.i.i = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.d) ; 5 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.d) ; 3 uses
  %i.e = add i32 %.sroa.speculated12.i.i, 2
  %i.f = icmp ult i32 %.sroa.speculated.i.i, %i.e
  br i1 %i.f, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i32 %.sroa.speculated.i.i, %.sroa.speculated12.i.i
  %i.h = lshr i32 %i.g, 1
  %i.i = add i32 %i.h, %.sroa.speculated12.i.i    ; 2 uses
  %i.j = icmp ult i32 %.sroa.speculated12.i.i, %i.i
  br i1 %i.j, label %.lr.ph.preheader.i.i, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %umin.i.i = zext i32 %.sroa.speculated12.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %umin.i.i, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %.0.in17.i.i = phi i32 [ %.sroa.speculated.i.i, %.lr.ph.preheader.i.i ], [ %.0.i.i, %.lr.ph.i.i ]
  %.0.i.i = add i32 %.0.in17.i.i, -1              ; 2 uses
  %i.k = zext i32 %.0.i.i to i64
  %i.l = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %indvars.iv.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.l, i64 20, i1 false), !tbaa.struct !526
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.l, ptr noundef nonnull align 4 dereferenceable(20) %i.m, i64 20, i1 false), !tbaa.struct !526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.m, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !526
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond.not.i.i = icmp eq i32 %i.i, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i, label %.lr.ph.i.i, !llvm.loop !642

_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i: ; preds = %.lr.ph.i.i, %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.o = load i8, ptr %i.n, align 2, !tbaa !575, !range !220, !noundef !74
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %_ZN11hb_buffer_t13reverse_rangeEjj.exit

bb.c:                                             ; preds = %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !527  ; 2 uses
  %i.s = load i32, ptr %i.c, align 8, !tbaa !522  ; 2 uses
  %.sroa.speculated12.i4.i = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.s) ; 5 uses
  %.sroa.speculated.i5.i = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.s) ; 3 uses
  %i.t = add i32 %.sroa.speculated12.i4.i, 2
  %i.u = icmp ult i32 %.sroa.speculated.i5.i, %i.t
  br i1 %i.u, label %_ZN11hb_buffer_t13reverse_rangeEjj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = sub i32 %.sroa.speculated.i5.i, %.sroa.speculated12.i4.i
  %i.w = lshr i32 %i.v, 1
  %i.x = add i32 %i.w, %.sroa.speculated12.i4.i   ; 2 uses
  %i.y = icmp ult i32 %.sroa.speculated12.i4.i, %i.x
  br i1 %i.y, label %.lr.ph.preheader.i6.i, label %_ZN11hb_buffer_t13reverse_rangeEjj.exit

.lr.ph.preheader.i6.i:                            ; preds = %bb.d
  %umin.i7.i = zext i32 %.sroa.speculated12.i4.i to i64
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i, %.lr.ph.preheader.i6.i
  %indvars.iv.i9.i = phi i64 [ %umin.i7.i, %.lr.ph.preheader.i6.i ], [ %indvars.iv.next.i12.i, %.lr.ph.i8.i ] ; 2 uses
  %.0.in17.i10.i = phi i32 [ %.sroa.speculated.i5.i, %.lr.ph.preheader.i6.i ], [ %.0.i11.i, %.lr.ph.i8.i ]
  %.0.i11.i = add i32 %.0.in17.i10.i, -1          ; 2 uses
  %i.z = zext i32 %.0.i11.i to i64
  %i.aa = getelementptr inbounds nuw [20 x i8], ptr %i.r, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw [20 x i8], ptr %i.r, i64 %indvars.iv.i9.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.aa, i64 20, i1 false), !tbaa.struct !528
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aa, ptr noundef nonnull align 4 dereferenceable(20) %i.ab, i64 20, i1 false), !tbaa.struct !528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ab, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !528
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %indvars.iv.next.i12.i = add nuw nsw i64 %indvars.iv.i9.i, 1 ; 2 uses
  %lftr.wideiv.i13.i = trunc i64 %indvars.iv.next.i12.i to i32
  %exitcond.not.i14.i = icmp eq i32 %i.x, %lftr.wideiv.i13.i
  br i1 %exitcond.not.i14.i, label %_ZN11hb_buffer_t13reverse_rangeEjj.exit, label %.lr.ph.i8.i, !llvm.loop !643

_ZN11hb_buffer_t13reverse_rangeEjj.exit:          ; preds = %.lr.ph.i8.i, %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_buffer_reverse_clusters(ptr noundef nonnull %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN11hb_buffer_t14reverse_groupsIFbRK15hb_glyph_info_tS3_EEEvRKT_b(ptr noundef nonnull align 8 dereferenceable(276) %0, ptr noundef nonnull @_ZN11hb_buffer_t19_cluster_group_funcERK15hb_glyph_info_tS2_, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_buffer_guess_segment_properties(ptr nofree noundef nonnull captures(none) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN11hb_buffer_t24guess_segment_propertiesEv(ptr noundef nonnull align 8 dereferenceable(276) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_buffer_add_utf8(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !726  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load atomic i8, ptr %i.d monotonic, align 4, !range !220, !noundef !74
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZL17hb_buffer_add_utfI9hb_utf8_tEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %2, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #68
  %i.i = trunc i64 %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ %i.i, %bb.c ], [ %2, %bb.b ]  ; 4 uses
  %i.j = icmp eq i32 %4, -1
  %i.k = sub i32 %.0.i, %3
  %spec.select.i = select i1 %i.j, i32 %i.k, i32 %4
  %.sroa.speculated72.i = tail call i32 @llvm.umin.i32(i32 %3, i32 %.0.i) ; 4 uses
  %i.l = sub nuw nsw i32 %.0.i, %.sroa.speculated72.i
  %i.m = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 0)
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.m, i32 %i.l) ; 4 uses
  %or.cond.i = icmp ugt i32 %.sroa.speculated.i, 268435455
  br i1 %or.cond.i, label %_ZL17hb_buffer_add_utfI9hb_utf8_tEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit, label %bb.e, !prof !252

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !522  ; 2 uses
  %i.p = lshr i32 %.sroa.speculated.i, 2
  %i.q = add i32 %i.o, %i.p                       ; 3 uses
  %.not.i58.i = icmp eq i32 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp ult i32 %i.q, %i.s
  %i.u = select i1 %.not.i58.i, i1 true, i1 %i.t
  br i1 %i.u, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i, label %_ZN11hb_buffer_t6ensureEj.exit.i, !prof !49

_ZN11hb_buffer_t6ensureEj.exit.i:                 ; preds = %bb.e
  %i.v = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.q)
  br i1 %i.v, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, label %_ZL17hb_buffer_add_utfI9hb_utf8_tEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit, !prof !124

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i
  %.pre.i = load i32, ptr %i.n, align 8, !tbaa !522
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i:          ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, %bb.e
  %i.w = phi i32 [ %.pre.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %i.o, %bb.e ]
  %i.x = icmp eq i32 %i.w, 0
  %i.y = icmp ne i32 %.sroa.speculated72.i, 0
  %or.cond3.i = and i1 %i.y, %i.x
  br i1 %or.cond3.i, label %.lr.ph.i, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge

_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i
  %.pre = zext i32 %.sroa.speculated72.i to i64
  br label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  store i32 0, ptr %i.z, align 8, !tbaa !139
  %i.aa = zext i32 %.sroa.speculated72.i to i64   ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.f

thread-pre-split.i:                               ; preds = %bb.f
  %.pr.i = load i32, ptr %i.z, align 8, !tbaa !139
  %i.ad = icmp ult i32 %.pr.i, 5
  br i1 %i.ad, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %.lr.ph.i, %thread-pre-split.i
  %.05086.i4 = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.ae, %thread-pre-split.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.ae = call noundef ptr @_ZN9hb_utf8_t4prevEPKhS1_Pjj(ptr noundef nonnull %.05086.i4, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef %i.c) ; 2 uses
  %i.af = load i32, ptr %i.a, align 4, !tbaa !139
  %i.ag = load i32, ptr %i.z, align 8, !tbaa !139 ; 2 uses
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.z, align 8, !tbaa !139
  %i.ai = zext i32 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ai
  store i32 %i.af, ptr %i.aj, align 4, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  %i.ak = icmp ult ptr %1, %i.ae
  br i1 %i.ak, label %thread-pre-split.i, label %.critedge.i, !llvm.loop !728

.critedge.i:                                      ; preds = %bb.f, %thread-pre-split.i, %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge
  %.pre-phi = phi i64 [ %.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge ], [ %i.aa, %thread-pre-split.i ], [ %i.aa, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %.pre-phi ; 3 uses
  %i.am = zext nneg i32 %.sroa.speculated.i to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am ; 3 uses
  %.not.i = icmp eq i32 %.sroa.speculated.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph90.i

.lr.ph90.i:                                       ; preds = %.critedge.i
  %i.ao = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.ap = ptrtoint ptr %1 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.g

bb.g:                                             ; preds = %_ZN11hb_buffer_t3addEjj.exit.i, %.lr.ph90.i
  %.04988.i = phi ptr [ %i.al, %.lr.ph90.i ], [ %.050.i.i, %_ZN11hb_buffer_t3addEjj.exit.i ] ; 9 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.04988.i, i64 1 ; 8 uses
  %i.as = load i8, ptr %.04988.i, align 1, !tbaa !61 ; 4 uses
  %i.at = zext i8 %i.as to i32                    ; 5 uses
  %i.au = icmp slt i8 %i.as, 0
  br i1 %i.au, label %bb.h, label %_ZN9hb_utf8_t4nextEPKhS1_Pjj.exit.i

bb.h:                                             ; preds = %bb.g
  %i.av = add nsw i8 %i.as, 62
  %i.aw = icmp ult i8 %i.av, 30
  br i1 %i.aw, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ax = icmp ult ptr %i.ar, %i.an
  br i1 %i.ax, label %bb.j, label %.critedge.thread.i.i, !prof !49

bb.j:                                             ; preds = %bb.i
  %i.ay = load i8, ptr %i.ar, align 1, !tbaa !61
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nsw i32 %i.az, -128                 ; 2 uses
  %i.bb = icmp ult i32 %i.ba, 64
  br i1 %i.bb, label %.critedge.i.i, label %.critedge.thread.i.i, !prof !49

.critedge.i.i:                                    ; preds = %bb.j
  %i.bc = shl nuw nsw i32 %i.at, 6
  %i.bd = and i32 %i.bc, 1984
  %i.be = or disjoint i32 %i.ba, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.04988.i, i64 2
  br label %_ZN9hb_utf8_t4nextEPKhS1_Pjj.exit.i

bb.k:                                             ; preds = %bb.h
  %i.bg = and i32 %i.at, 240
  %i.bh = icmp eq i32 %i.bg, 224
  br i1 %i.bh, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bi = ptrtoint ptr %i.ar to i64
  %i.bj = sub i64 %i.ao, %i.bi
  %i.bk = icmp sgt i64 %i.bj, 1
  br i1 %i.bk, label %bb.m, label %.critedge.thread.i.i, !prof !49

bb.m:                                             ; preds = %bb.l
  %i.bl = load i8, ptr %i.ar, align 1, !tbaa !61
  %i.bm = zext i8 %i.bl to i32
  %i.bn = add nsw i32 %i.bm, -128                 ; 2 uses
  %i.bo = icmp ult i32 %i.bn, 64
  br i1 %i.bo, label %bb.n, label %.critedge.thread.i.i, !prof !49

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %.04988.i, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !61
  %i.br = zext i8 %i.bq to i32
  %i.bs = add nsw i32 %i.br, -128                 ; 2 uses
  %i.bt = icmp ult i32 %i.bs, 64
  br i1 %i.bt, label %bb.o, label %.critedge.thread.i.i, !prof !49

bb.o:                                             ; preds = %bb.n
  %i.bu = shl nuw nsw i32 %i.at, 12
  %i.bv = and i32 %i.bu, 61440
  %i.bw = shl nuw nsw i32 %i.bn, 6
  %i.bx = or disjoint i32 %i.bw, %i.bv            ; 2 uses
  %i.by = or disjoint i32 %i.bs, %i.bx            ; 2 uses
  %i.bz = icmp samesign ult i32 %i.by, 2048
  %i.ca = and i32 %i.bx, 63488
  %i.cb = icmp eq i32 %i.ca, 55296
  %i.cc = getelementptr inbounds nuw i8, ptr %.04988.i, i64 3
  %or.cond89.i.i = or i1 %i.cb, %i.bz
  br i1 %or.cond89.i.i, label %.critedge.thread.i.i, label %_ZN9hb_utf8_t4nextEPKhS1_Pjj.exit.i, !prof !252

bb.p:                                             ; preds = %bb.k
  %i.cd = add nsw i8 %i.as, 16
  %i.ce = icmp ult i8 %i.cd, 5
  %i.cf = ptrtoint ptr %i.ar to i64
  %i.cg = sub i64 %i.ao, %i.cf
  %i.ch = icmp sgt i64 %i.cg, 2
  %or.cond.i.i = select i1 %i.ce, i1 %i.ch, i1 false, !prof !729
  br i1 %or.cond.i.i, label %bb.q, label %.critedge.thread.i.i, !prof !729

bb.q:                                             ; preds = %bb.p
  %i.ci = load i8, ptr %i.ar, align 1, !tbaa !61
  %i.cj = zext i8 %i.ci to i32
  %i.ck = add nsw i32 %i.cj, -128                 ; 2 uses
  %i.cl = icmp ult i32 %i.ck, 64
  br i1 %i.cl, label %bb.r, label %.critedge.thread.i.i, !prof !49

bb.r:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %.04988.i, i64 2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !61
  %i.co = zext i8 %i.cn to i32
  %i.cp = add nsw i32 %i.co, -128                 ; 2 uses
  %i.cq = icmp ult i32 %i.cp, 64
  br i1 %i.cq, label %bb.s, label %.critedge.thread.i.i, !prof !49

bb.s:                                             ; preds = %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %.04988.i, i64 3
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !61
  %i.ct = zext i8 %i.cs to i32
  %i.cu = add nsw i32 %i.ct, -128                 ; 2 uses
  %i.cv = icmp ult i32 %i.cu, 64
  br i1 %i.cv, label %bb.t, label %.critedge.thread.i.i, !prof !49

bb.t:                                             ; preds = %bb.s
  %i.cw = shl nuw nsw i32 %i.at, 18
  %i.cx = and i32 %i.cw, 1835008
  %i.cy = shl nuw nsw i32 %i.ck, 12
  %i.cz = or disjoint i32 %i.cy, %i.cx
  %i.da = shl nuw nsw i32 %i.cp, 6
  %i.db = or disjoint i32 %i.da, %i.cz
  %i.dc = or disjoint i32 %i.cu, %i.db            ; 2 uses
  %i.dd = add nsw i32 %i.dc, -65536
  %i.de = icmp ult i32 %i.dd, 1048576
  %i.df = getelementptr inbounds nuw i8, ptr %.04988.i, i64 4
  br i1 %i.de, label %_ZN9hb_utf8_t4nextEPKhS1_Pjj.exit.i, label %.critedge.thread.i.i, !prof !49

.critedge.thread.i.i:                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.i
  br label %_ZN9hb_utf8_t4nextEPKhS1_Pjj.exit.i

_ZN9hb_utf8_t4nextEPKhS1_Pjj.exit.i:              ; preds = %.critedge.thread.i.i, %bb.t, %bb.o, %.critedge.i.i, %bb.g
  %storemerge.i.i = phi i32 [ %i.c, %.critedge.thread.i.i ], [ %i.be, %.critedge.i.i ], [ %i.at, %bb.g ], [ %i.by, %bb.o ], [ %i.dc, %bb.t ]
  %.050.i.i = phi ptr [ %i.ar, %.critedge.thread.i.i ], [ %i.bf, %.critedge.i.i ], [ %i.ar, %bb.g ], [ %i.cc, %bb.o ], [ %i.df, %bb.t ] ; 3 uses
  %i.dg = ptrtoint ptr %.04988.i to i64
end_hunk_5
begin_hunk_6_@hb_buffer_add_utf8:bb.a
  %i.dw = load i32, ptr %i.n, align 8, !tbaa !522
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.n, align 8, !tbaa !522
  br label %_ZN11hb_buffer_t3addEjj.exit.i

_ZN11hb_buffer_t3addEjj.exit.i:                   ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, %_ZN11hb_buffer_t6ensureEj.exit.i.i
  %i.dy = icmp ult ptr %.050.i.i, %i.an
  br i1 %i.dy, label %bb.g, label %._crit_edge.i, !llvm.loop !730

._crit_edge.i:                                    ; preds = %_ZN11hb_buffer_t3addEjj.exit.i, %.critedge.i
  %.049.lcssa.i = phi ptr [ %i.al, %.critedge.i ], [ %.050.i.i, %_ZN11hb_buffer_t3addEjj.exit.i ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 3 uses
  store i32 0, ptr %i.dz, align 4, !tbaa !139
  %i.ea = sext i32 %.0.i to i64
  %i.eb = getelementptr inbounds i8, ptr %1, i64 %i.ea ; 4 uses
  %i.ec = icmp ult ptr %.049.lcssa.i, %i.eb
  br i1 %i.ec, label %.lr.ph93.i, label %.critedge5.i

.lr.ph93.i:                                       ; preds = %._crit_edge.i
  %i.ed = ptrtoint ptr %i.eb to i64               ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 156
  br label %bb.u

bb.u:                                             ; preds = %_ZN9hb_utf8_t4nextEPKhS1_Pjj.exit66.i, %.lr.ph93.i
  %.191.i = phi ptr [ %.049.lcssa.i, %.lr.ph93.i ], [ %.050.i61.i, %_ZN9hb_utf8_t4nextEPKhS1_Pjj.exit66.i ] ; 8 uses
  %i.ef = load i32, ptr %i.dz, align 4, !tbaa !139 ; 3 uses
  %i.eg = icmp ult i32 %i.ef, 5
  br i1 %i.eg, label %bb.v, label %.critedge5.i

bb.v:                                             ; preds = %bb.u
  %i.eh = getelementptr inbounds nuw i8, ptr %.191.i, i64 1 ; 8 uses
  %i.ei = load i8, ptr %.191.i, align 1, !tbaa !61 ; 4 uses
  %i.ej = zext i8 %i.ei to i32                    ; 5 uses
  %i.ek = icmp slt i8 %i.ei, 0
  br i1 %i.ek, label %bb.w, label %_ZN9hb_utf8_t4nextEPKhS1_Pjj.exit66.i

bb.w:                                             ; preds = %bb.v
  %i.el = add nsw i8 %i.ei, 62
  %i.em = icmp ult i8 %i.el, 30
  br i1 %i.em, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.en = icmp ult ptr %i.eh, %i.eb
  br i1 %i.en, label %bb.y, label %.critedge.thread.i63.i, !prof !49

bb.y:                                             ; preds = %bb.x
  %i.eo = load i8, ptr %i.eh, align 1, !tbaa !61
  %i.ep = zext i8 %i.eo to i32
  %i.eq = add nsw i32 %i.ep, -128                 ; 2 uses
  %i.er = icmp ult i32 %i.eq, 64
  br i1 %i.er, label %.critedge.i65.i, label %.critedge.thread.i63.i, !prof !49

.critedge.i65.i:                                  ; preds = %bb.y
  %i.es = shl nuw nsw i32 %i.ej, 6
  %i.et = and i32 %i.es, 1984
  %i.eu = or disjoint i32 %i.eq, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %.191.i, i64 2
  br label %_ZN9hb_utf8_t4nextEPKhS1_Pjj.exit66.i

bb.z:                                             ; preds = %bb.w
  %i.ew = and i32 %i.ej, 240
  %i.ex = icmp eq i32 %i.ew, 224
  br i1 %i.ex, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.ey = ptrtoint ptr %i.eh to i64
  %i.ez = sub i64 %i.ed, %i.ey
  %i.fa = icmp sgt i64 %i.ez, 1
  br i1 %i.fa, label %bb.ab, label %.critedge.thread.i63.i, !prof !49

bb.ab:                                            ; preds = %bb.aa
  %i.fb = load i8, ptr %i.eh, align 1, !tbaa !61
  %i.fc = zext i8 %i.fb to i32
  %i.fd = add nsw i32 %i.fc, -128                 ; 2 uses
  %i.fe = icmp ult i32 %i.fd, 64
  br i1 %i.fe, label %bb.ac, label %.critedge.thread.i63.i, !prof !49

bb.ac:                                            ; preds = %bb.ab
  %i.ff = getelementptr inbounds nuw i8, ptr %.191.i, i64 2
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !61
  %i.fh = zext i8 %i.fg to i32
  %i.fi = add nsw i32 %i.fh, -128                 ; 2 uses
  %i.fj = icmp ult i32 %i.fi, 64
  br i1 %i.fj, label %bb.ad, label %.critedge.thread.i63.i, !prof !49

bb.ad:                                            ; preds = %bb.ac
  %i.fk = shl nuw nsw i32 %i.ej, 12
  %i.fl = and i32 %i.fk, 61440
  %i.fm = shl nuw nsw i32 %i.fd, 6
  %i.fn = or disjoint i32 %i.fm, %i.fl            ; 2 uses
  %i.fo = or disjoint i32 %i.fi, %i.fn            ; 2 uses
  %i.fp = icmp samesign ult i32 %i.fo, 2048
  %i.fq = and i32 %i.fn, 63488
  %i.fr = icmp eq i32 %i.fq, 55296
  %i.fs = getelementptr inbounds nuw i8, ptr %.191.i, i64 3
  %or.cond89.i64.i = or i1 %i.fr, %i.fp
  br i1 %or.cond89.i64.i, label %.critedge.thread.i63.i, label %_ZN9hb_utf8_t4nextEPKhS1_Pjj.exit66.i, !prof !252

bb.ae:                                            ; preds = %bb.z
  %i.ft = add nsw i8 %i.ei, 16
  %i.fu = icmp ult i8 %i.ft, 5
  %i.fv = ptrtoint ptr %i.eh to i64
  %i.fw = sub i64 %i.ed, %i.fv
  %i.fx = icmp sgt i64 %i.fw, 2
  %or.cond.i62.i = select i1 %i.fu, i1 %i.fx, i1 false, !prof !729
  br i1 %or.cond.i62.i, label %bb.af, label %.critedge.thread.i63.i, !prof !729

bb.af:                                            ; preds = %bb.ae
  %i.fy = load i8, ptr %i.eh, align 1, !tbaa !61
  %i.fz = zext i8 %i.fy to i32
  %i.ga = add nsw i32 %i.fz, -128                 ; 2 uses
  %i.gb = icmp ult i32 %i.ga, 64
  br i1 %i.gb, label %bb.ag, label %.critedge.thread.i63.i, !prof !49

bb.ag:                                            ; preds = %bb.af
  %i.gc = getelementptr inbounds nuw i8, ptr %.191.i, i64 2
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !61
  %i.ge = zext i8 %i.gd to i32
  %i.gf = add nsw i32 %i.ge, -128                 ; 2 uses
  %i.gg = icmp ult i32 %i.gf, 64
  br i1 %i.gg, label %bb.ah, label %.critedge.thread.i63.i, !prof !49

bb.ah:                                            ; preds = %bb.ag
  %i.gh = getelementptr inbounds nuw i8, ptr %.191.i, i64 3
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !61
  %i.gj = zext i8 %i.gi to i32
  %i.gk = add nsw i32 %i.gj, -128                 ; 2 uses
  %i.gl = icmp ult i32 %i.gk, 64
  br i1 %i.gl, label %bb.ai, label %.critedge.thread.i63.i, !prof !49

bb.ai:                                            ; preds = %bb.ah
  %i.gm = shl nuw nsw i32 %i.ej, 18
  %i.gn = and i32 %i.gm, 1835008
  %i.go = shl nuw nsw i32 %i.ga, 12
  %i.gp = or disjoint i32 %i.go, %i.gn
  %i.gq = shl nuw nsw i32 %i.gf, 6
  %i.gr = or disjoint i32 %i.gq, %i.gp
  %i.gs = or disjoint i32 %i.gk, %i.gr            ; 2 uses
  %i.gt = add nsw i32 %i.gs, -65536
  %i.gu = icmp ult i32 %i.gt, 1048576
  %i.gv = getelementptr inbounds nuw i8, ptr %.191.i, i64 4
  br i1 %i.gu, label %_ZN9hb_utf8_t4nextEPKhS1_Pjj.exit66.i, label %.critedge.thread.i63.i, !prof !49

.critedge.thread.i63.i:                           ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  br label %_ZN9hb_utf8_t4nextEPKhS1_Pjj.exit66.i

_ZN9hb_utf8_t4nextEPKhS1_Pjj.exit66.i:            ; preds = %.critedge.thread.i63.i, %bb.ai, %bb.ad, %.critedge.i65.i, %bb.v
  %storemerge.i60.i = phi i32 [ %i.c, %.critedge.thread.i63.i ], [ %i.eu, %.critedge.i65.i ], [ %i.ej, %bb.v ], [ %i.fo, %bb.ad ], [ %i.gs, %bb.ai ]
  %.050.i61.i = phi ptr [ %i.eh, %.critedge.thread.i63.i ], [ %i.ev, %.critedge.i65.i ], [ %i.eh, %bb.v ], [ %i.fs, %bb.ad ], [ %i.gv, %bb.ai ] ; 2 uses
  %i.gw = add nuw nsw i32 %i.ef, 1
  store i32 %i.gw, ptr %i.dz, align 4, !tbaa !139
  %i.gx = zext nneg i32 %i.ef to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.gx
  store i32 %storemerge.i60.i, ptr %i.gy, align 4, !tbaa !139
  %i.gz = icmp ult ptr %.050.i61.i, %i.eb
  br i1 %i.gz, label %bb.u, label %.critedge5.i, !llvm.loop !731

.critedge5.i:                                     ; preds = %_ZN9hb_utf8_t4nextEPKhS1_Pjj.exit66.i, %bb.u, %._crit_edge.i
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.ha, align 8, !tbaa !619
  br label %_ZL17hb_buffer_add_utfI9hb_utf8_tEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit

_ZL17hb_buffer_add_utfI9hb_utf8_tEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit: ; preds = %bb.a, %bb.d, %_ZN11hb_buffer_t6ensureEj.exit.i, %.critedge5.i
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define void @hb_buffer_add_utf16(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !726  ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load atomic i8, ptr %i.c monotonic, align 4, !range !220, !noundef !74
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZL17hb_buffer_add_utfI13hb_utf16_xe_tItEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %2, -1
  br i1 %i.f, label %bb.c, label %_ZN13hb_utf16_xe_tItE6strlenEPKt.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = load i16, ptr %1, align 2, !tbaa !620
  %.not3.i.i = icmp eq i16 %i.g, 0
  br i1 %.not3.i.i, label %_ZN13hb_utf16_xe_tItE6strlenEPKt.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.i, %.lr.ph.i.i ], [ 0, %bb.c ]
  %.024.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %1, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 2 ; 2 uses
  %i.i = add i32 %.05.i.i, 1                      ; 2 uses
  %i.j = load i16, ptr %i.h, align 2, !tbaa !620
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %_ZN13hb_utf16_xe_tItE6strlenEPKt.exit.i, label %.lr.ph.i.i, !llvm.loop !732

_ZN13hb_utf16_xe_tItE6strlenEPKt.exit.i:          ; preds = %.lr.ph.i.i, %bb.c, %bb.b
  %.0.i = phi i32 [ %2, %bb.b ], [ 0, %bb.c ], [ %i.i, %.lr.ph.i.i ] ; 4 uses
  %i.k = icmp eq i32 %4, -1
  %i.l = sub i32 %.0.i, %3
  %spec.select.i = select i1 %i.k, i32 %i.l, i32 %4
  %.sroa.speculated72.i = tail call i32 @llvm.umin.i32(i32 %3, i32 %.0.i) ; 5 uses
  %i.m = sub nuw nsw i32 %.0.i, %.sroa.speculated72.i
  %i.n = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 0)
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %i.m) ; 4 uses
  %or.cond.i = icmp ugt i32 %.sroa.speculated.i, 268435455
  br i1 %or.cond.i, label %_ZL17hb_buffer_add_utfI13hb_utf16_xe_tItEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit, label %bb.d, !prof !252

bb.d:                                             ; preds = %_ZN13hb_utf16_xe_tItE6strlenEPKt.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !522  ; 2 uses
  %i.q = lshr i32 %.sroa.speculated.i, 1
  %i.r = add i32 %i.p, %i.q                       ; 3 uses
  %.not.i59.i = icmp eq i32 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp ult i32 %i.r, %i.t
  %i.v = select i1 %.not.i59.i, i1 true, i1 %i.u
  br i1 %i.v, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i, label %_ZN11hb_buffer_t6ensureEj.exit.i, !prof !49

_ZN11hb_buffer_t6ensureEj.exit.i:                 ; preds = %bb.d
  %i.w = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.r)
  br i1 %i.w, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, label %_ZL17hb_buffer_add_utfI13hb_utf16_xe_tItEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit, !prof !124

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i
  %.pre.i = load i32, ptr %i.o, align 8, !tbaa !522
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i:          ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, %bb.d
  %i.x = phi i32 [ %.pre.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %i.p, %bb.d ]
  %i.y = icmp eq i32 %i.x, 0
  %i.z = icmp ne i32 %.sroa.speculated72.i, 0
  %or.cond3.i = and i1 %i.z, %i.y
  br i1 %or.cond3.i, label %.lr.ph.i, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge

_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i
  %.pre = zext i32 %.sroa.speculated72.i to i64
  br label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ab = zext i32 %.sroa.speculated72.i to i64   ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ab, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -2 ; 4 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !620 ; 2 uses
  %i.ag = zext i16 %i.af to i32                   ; 3 uses
  %i.ah = and i32 %i.ag, 63488
  %i.ai = icmp eq i32 %i.ah, 55296
  br i1 %i.ai, label %bb.e, label %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i, !prof !48

bb.e:                                             ; preds = %.lr.ph.i
  %i.aj = icmp ugt i16 %i.af, -9217
  %i.ak = icmp ugt i32 %.sroa.speculated72.i, 1
  %i.al = and i1 %i.ak, %i.aj
  br i1 %i.al, label %bb.f, label %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i, !prof !49

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !620
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = and i32 %i.ao, 64512
  %i.aq = icmp eq i32 %i.ap, 55296
  br i1 %i.aq, label %.thread.i.i, label %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i, !prof !49

.thread.i.i:                                      ; preds = %bb.f
  %i.ar = shl nuw nsw i32 %i.ao, 10
  %i.as = add nuw nsw i32 %i.ag, -56613888
  %i.at = add nsw i32 %i.as, %i.ar
  br label %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i

_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i:      ; preds = %.thread.i.i, %bb.f, %bb.e, %.lr.ph.i
  %.sink.i.i = phi i32 [ %i.at, %.thread.i.i ], [ %i.ag, %.lr.ph.i ], [ %i.b, %bb.f ], [ %i.b, %bb.e ]
  %.1.i.i = phi ptr [ %i.am, %.thread.i.i ], [ %i.ae, %.lr.ph.i ], [ %i.ae, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  store i32 %.sink.i.i, ptr %i.ad, align 8, !tbaa !139
  %i.au = icmp ult ptr %1, %.1.i.i
  br i1 %i.au, label %bb.g, label %.critedge.i.loopexit

bb.g:                                             ; preds = %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i
  %i.av = getelementptr inbounds i8, ptr %.1.i.i, i64 -2 ; 5 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !620 ; 2 uses
  %i.ax = zext i16 %i.aw to i32                   ; 3 uses
  %i.ay = and i32 %i.ax, 63488
  %i.az = icmp eq i32 %i.ay, 55296
  br i1 %i.az, label %bb.h, label %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.1, !prof !48

bb.h:                                             ; preds = %bb.g
  %i.ba = icmp ugt i16 %i.aw, -9217
  %i.bb = icmp ult ptr %1, %i.av
  %i.bc = and i1 %i.bb, %i.ba
  br i1 %i.bc, label %bb.i, label %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.1, !prof !49

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds i8, ptr %.1.i.i, i64 -4 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !620
  %i.bf = zext i16 %i.be to i32                   ; 2 uses
  %i.bg = and i32 %i.bf, 64512
  %i.bh = icmp eq i32 %i.bg, 55296
  br i1 %i.bh, label %.thread.i.i.1, label %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.1, !prof !49

.thread.i.i.1:                                    ; preds = %bb.i
  %i.bi = shl nuw nsw i32 %i.bf, 10
  %i.bj = add nuw nsw i32 %i.ax, -56613888
  %i.bk = add nsw i32 %i.bj, %i.bi
  br label %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.1

_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.1:    ; preds = %.thread.i.i.1, %bb.i, %bb.h, %bb.g
  %.sink.i.i.1 = phi i32 [ %i.bk, %.thread.i.i.1 ], [ %i.ax, %bb.g ], [ %i.b, %bb.i ], [ %i.b, %bb.h ]
  %.1.i.i.1 = phi ptr [ %i.bd, %.thread.i.i.1 ], [ %i.av, %bb.g ], [ %i.av, %bb.i ], [ %i.av, %bb.h ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %.sink.i.i.1, ptr %i.bl, align 4, !tbaa !139
  %i.bm = icmp ult ptr %1, %.1.i.i.1
  br i1 %i.bm, label %bb.j, label %.critedge.i.loopexit

bb.j:                                             ; preds = %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.1
  %i.bn = getelementptr inbounds i8, ptr %.1.i.i.1, i64 -2 ; 5 uses
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !620 ; 2 uses
  %i.bp = zext i16 %i.bo to i32                   ; 3 uses
  %i.bq = and i32 %i.bp, 63488
  %i.br = icmp eq i32 %i.bq, 55296
  br i1 %i.br, label %bb.k, label %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.2, !prof !48

bb.k:                                             ; preds = %bb.j
  %i.bs = icmp ugt i16 %i.bo, -9217
  %i.bt = icmp ult ptr %1, %i.bn
  %i.bu = and i1 %i.bt, %i.bs
  br i1 %i.bu, label %bb.l, label %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.2, !prof !49

bb.l:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds i8, ptr %.1.i.i.1, i64 -4 ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !620
  %i.bx = zext i16 %i.bw to i32                   ; 2 uses
  %i.by = and i32 %i.bx, 64512
  %i.bz = icmp eq i32 %i.by, 55296
  br i1 %i.bz, label %.thread.i.i.2, label %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.2, !prof !49

.thread.i.i.2:                                    ; preds = %bb.l
  %i.ca = shl nuw nsw i32 %i.bx, 10
  %i.cb = add nuw nsw i32 %i.bp, -56613888
  %i.cc = add nsw i32 %i.cb, %i.ca
  br label %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.2

_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.2:    ; preds = %.thread.i.i.2, %bb.l, %bb.k, %bb.j
  %.sink.i.i.2 = phi i32 [ %i.cc, %.thread.i.i.2 ], [ %i.bp, %bb.j ], [ %i.b, %bb.l ], [ %i.b, %bb.k ]
  %.1.i.i.2 = phi ptr [ %i.bv, %.thread.i.i.2 ], [ %i.bn, %bb.j ], [ %i.bn, %bb.l ], [ %i.bn, %bb.k ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %.sink.i.i.2, ptr %i.cd, align 8, !tbaa !139
  %i.ce = icmp ult ptr %1, %.1.i.i.2
  br i1 %i.ce, label %bb.m, label %.critedge.i.loopexit

bb.m:                                             ; preds = %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.2
  %i.cf = getelementptr inbounds i8, ptr %.1.i.i.2, i64 -2 ; 5 uses
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !620 ; 2 uses
  %i.ch = zext i16 %i.cg to i32                   ; 3 uses
  %i.ci = and i32 %i.ch, 63488
  %i.cj = icmp eq i32 %i.ci, 55296
  br i1 %i.cj, label %bb.n, label %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.3, !prof !48

bb.n:                                             ; preds = %bb.m
  %i.ck = icmp ugt i16 %i.cg, -9217
  %i.cl = icmp ult ptr %1, %i.cf
  %i.cm = and i1 %i.cl, %i.ck
  br i1 %i.cm, label %bb.o, label %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.3, !prof !49

bb.o:                                             ; preds = %bb.n
  %i.cn = getelementptr inbounds i8, ptr %.1.i.i.2, i64 -4 ; 2 uses
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !620
  %i.cp = zext i16 %i.co to i32                   ; 2 uses
  %i.cq = and i32 %i.cp, 64512
  %i.cr = icmp eq i32 %i.cq, 55296
  br i1 %i.cr, label %.thread.i.i.3, label %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.3, !prof !49

.thread.i.i.3:                                    ; preds = %bb.o
  %i.cs = shl nuw nsw i32 %i.cp, 10
  %i.ct = add nuw nsw i32 %i.ch, -56613888
  %i.cu = add nsw i32 %i.ct, %i.cs
  br label %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.3

_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.3:    ; preds = %.thread.i.i.3, %bb.o, %bb.n, %bb.m
  %.sink.i.i.3 = phi i32 [ %i.cu, %.thread.i.i.3 ], [ %i.ch, %bb.m ], [ %i.b, %bb.o ], [ %i.b, %bb.n ]
  %.1.i.i.3 = phi ptr [ %i.cn, %.thread.i.i.3 ], [ %i.cf, %bb.m ], [ %i.cf, %bb.o ], [ %i.cf, %bb.n ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %.sink.i.i.3, ptr %i.cv, align 4, !tbaa !139
  %i.cw = icmp ult ptr %1, %.1.i.i.3
  br i1 %i.cw, label %bb.p, label %.critedge.i.loopexit

bb.p:                                             ; preds = %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.3
  %i.cx = getelementptr inbounds i8, ptr %.1.i.i.3, i64 -2 ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !620 ; 2 uses
  %i.cz = zext i16 %i.cy to i32                   ; 3 uses
  %i.da = and i32 %i.cz, 63488
  %i.db = icmp eq i32 %i.da, 55296
  br i1 %i.db, label %bb.q, label %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.4, !prof !48

bb.q:                                             ; preds = %bb.p
  %i.dc = icmp ugt i16 %i.cy, -9217
  %i.dd = icmp ult ptr %1, %i.cx
  %i.de = and i1 %i.dd, %i.dc
  br i1 %i.de, label %bb.r, label %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.4, !prof !49

bb.r:                                             ; preds = %bb.q
  %i.df = getelementptr inbounds i8, ptr %.1.i.i.3, i64 -4
end_hunk_6
begin_hunk_7_@hb_buffer_add_utf16:bb.a
  %i.dm = add nsw i32 %i.dl, %i.dk
  br label %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.4

_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.4:    ; preds = %.thread.i.i.4, %bb.r, %bb.q, %bb.p
  %.sink.i.i.4 = phi i32 [ %i.dm, %.thread.i.i.4 ], [ %i.cz, %bb.p ], [ %i.b, %bb.r ], [ %i.b, %bb.q ]
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %.sink.i.i.4, ptr %i.dn, align 8, !tbaa !139
  br label %.critedge.i.loopexit

.critedge.i.loopexit:                             ; preds = %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.4, %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.3, %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.2, %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.1, %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i
  %indvars.iv.next.lcssa = phi i32 [ 1, %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i ], [ 2, %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.1 ], [ 3, %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.2 ], [ 4, %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.3 ], [ 5, %_ZN13hb_utf16_xe_tItE4prevEPKtS2_Pjj.exit.i.4 ]
  store i32 %indvars.iv.next.lcssa, ptr %i.aa, align 8, !tbaa !139
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge, %.critedge.i.loopexit
  %.pre-phi = phi i64 [ %.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge ], [ %i.ab, %.critedge.i.loopexit ]
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.pre-phi ; 3 uses
  %i.dp = shl nuw nsw i32 %.sroa.speculated.i, 1
  %.idx96.i = zext nneg i32 %i.dp to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx96.i ; 2 uses
  %.not.i = icmp eq i32 %.sroa.speculated.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph91.i

.lr.ph91.i:                                       ; preds = %.critedge.i
  %i.dr = ptrtoint ptr %1 to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.s

bb.s:                                             ; preds = %_ZN11hb_buffer_t3addEjj.exit.i, %.lr.ph91.i
  %.04990.i = phi ptr [ %i.do, %.lr.ph91.i ], [ %.1.i60.i, %_ZN11hb_buffer_t3addEjj.exit.i ] ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.04990.i, i64 2 ; 5 uses
  %i.du = load i16, ptr %.04990.i, align 2, !tbaa !620 ; 2 uses
  %i.dv = zext i16 %i.du to i32                   ; 3 uses
  %i.dw = and i32 %i.dv, 63488
  %i.dx = icmp eq i32 %i.dw, 55296
  br i1 %i.dx, label %bb.t, label %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit.i, !prof !48

bb.t:                                             ; preds = %bb.s
  %i.dy = icmp ult i16 %i.du, -9216
  %i.dz = icmp ult ptr %i.dt, %i.dq
  %i.ea = select i1 %i.dy, i1 %i.dz, i1 false, !prof !49
  br i1 %i.ea, label %bb.u, label %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit.i, !prof !49

bb.u:                                             ; preds = %bb.t
  %i.eb = load i16, ptr %i.dt, align 2, !tbaa !620
  %i.ec = zext i16 %i.eb to i32                   ; 2 uses
  %i.ed = and i32 %i.ec, 64512
  %i.ee = icmp eq i32 %i.ed, 56320
  br i1 %i.ee, label %.thread.i61.i, label %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit.i, !prof !49

.thread.i61.i:                                    ; preds = %bb.u
  %i.ef = shl nuw nsw i32 %i.dv, 10
  %i.eg = add nsw i32 %i.ef, -56613888
  %i.eh = add nuw nsw i32 %i.eg, %i.ec
  %i.ei = getelementptr inbounds nuw i8, ptr %.04990.i, i64 4
  br label %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit.i

_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit.i:      ; preds = %.thread.i61.i, %bb.u, %bb.t, %bb.s
  %.086.i = phi i32 [ %i.eh, %.thread.i61.i ], [ %i.dv, %bb.s ], [ %i.b, %bb.u ], [ %i.b, %bb.t ]
  %.1.i60.i = phi ptr [ %i.ei, %.thread.i61.i ], [ %i.dt, %bb.s ], [ %i.dt, %bb.u ], [ %i.dt, %bb.t ] ; 3 uses
  %i.ej = ptrtoint ptr %.04990.i to i64
  %i.ek = sub i64 %i.ej, %i.dr
  %i.el = lshr exact i64 %i.ek, 1
  %i.em = trunc i64 %i.el to i32
  %i.en = load i32, ptr %i.o, align 8, !tbaa !522 ; 2 uses
  %i.eo = add i32 %i.en, 1                        ; 3 uses
  %.not.i.i62.i = icmp eq i32 %i.eo, 0
  %i.ep = load i32, ptr %i.s, align 8
  %i.eq = icmp ult i32 %i.eo, %i.ep
  %i.er = select i1 %.not.i.i62.i, i1 true, i1 %i.eq
  br i1 %i.er, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, label %_ZN11hb_buffer_t6ensureEj.exit.i.i, !prof !49

_ZN11hb_buffer_t6ensureEj.exit.i.i:               ; preds = %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit.i
  %i.es = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.eo)
  br i1 %i.es, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i, label %_ZN11hb_buffer_t3addEjj.exit.i, !prof !124

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i.i
  %.pre.i.i = load i32, ptr %i.o, align 8, !tbaa !522
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i.i:        ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i, %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit.i
  %i.et = phi i32 [ %.pre.i.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i ], [ %i.en, %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit.i ]
  %i.eu = load ptr, ptr %i.ds, align 8, !tbaa !499
  %i.ev = zext i32 %i.et to i64
  %i.ew = getelementptr inbounds nuw [20 x i8], ptr %i.eu, i64 %i.ev ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  store i64 0, ptr %i.ex, align 1
  store i32 %.086.i, ptr %i.ew, align 4, !tbaa !582
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  store i32 0, ptr %i.ey, align 4, !tbaa !500
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i32 %i.em, ptr %i.ez, align 4, !tbaa !523
  %i.fa = load i32, ptr %i.o, align 8, !tbaa !522
  %i.fb = add i32 %i.fa, 1
  store i32 %i.fb, ptr %i.o, align 8, !tbaa !522
  br label %_ZN11hb_buffer_t3addEjj.exit.i

_ZN11hb_buffer_t3addEjj.exit.i:                   ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, %_ZN11hb_buffer_t6ensureEj.exit.i.i
  %i.fc = icmp ult ptr %.1.i60.i, %i.dq
  br i1 %i.fc, label %bb.s, label %._crit_edge.i, !llvm.loop !733

._crit_edge.i:                                    ; preds = %_ZN11hb_buffer_t3addEjj.exit.i, %.critedge.i
  %.049.lcssa.i = phi ptr [ %i.do, %.critedge.i ], [ %.1.i60.i, %_ZN11hb_buffer_t3addEjj.exit.i ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 3 uses
  store i32 0, ptr %i.fd, align 4, !tbaa !139
  %i.fe = sext i32 %.0.i to i64
  %i.ff = getelementptr inbounds [2 x i8], ptr %1, i64 %i.fe ; 3 uses
  %i.fg = icmp ult ptr %.049.lcssa.i, %i.ff
  br i1 %i.fg, label %.lr.ph94.i, label %.critedge5.i

.lr.ph94.i:                                       ; preds = %._crit_edge.i
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 156
  br label %bb.v

bb.v:                                             ; preds = %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit65.i, %.lr.ph94.i
  %.192.i = phi ptr [ %.049.lcssa.i, %.lr.ph94.i ], [ %.1.i63.i, %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit65.i ] ; 3 uses
  %i.fi = load i32, ptr %i.fd, align 4, !tbaa !139 ; 3 uses
  %i.fj = icmp ult i32 %i.fi, 5
  br i1 %i.fj, label %bb.w, label %.critedge5.i

bb.w:                                             ; preds = %bb.v
  %i.fk = getelementptr inbounds nuw i8, ptr %.192.i, i64 2 ; 5 uses
  %i.fl = load i16, ptr %.192.i, align 2, !tbaa !620 ; 2 uses
  %i.fm = zext i16 %i.fl to i32                   ; 3 uses
  %i.fn = and i32 %i.fm, 63488
  %i.fo = icmp eq i32 %i.fn, 55296
  br i1 %i.fo, label %bb.x, label %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit65.i, !prof !48

bb.x:                                             ; preds = %bb.w
  %i.fp = icmp ult i16 %i.fl, -9216
  %i.fq = icmp ult ptr %i.fk, %i.ff
  %i.fr = select i1 %i.fp, i1 %i.fq, i1 false, !prof !49
  br i1 %i.fr, label %bb.y, label %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit65.i, !prof !49

bb.y:                                             ; preds = %bb.x
  %i.fs = load i16, ptr %i.fk, align 2, !tbaa !620
  %i.ft = zext i16 %i.fs to i32                   ; 2 uses
  %i.fu = and i32 %i.ft, 64512
  %i.fv = icmp eq i32 %i.fu, 56320
  br i1 %i.fv, label %.thread.i64.i, label %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit65.i, !prof !49

.thread.i64.i:                                    ; preds = %bb.y
  %i.fw = shl nuw nsw i32 %i.fm, 10
  %i.fx = add nsw i32 %i.fw, -56613888
  %i.fy = add nuw nsw i32 %i.fx, %i.ft
  %i.fz = getelementptr inbounds nuw i8, ptr %.192.i, i64 4
  br label %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit65.i

_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit65.i:    ; preds = %.thread.i64.i, %bb.y, %bb.x, %bb.w
  %.085.i = phi i32 [ %i.fy, %.thread.i64.i ], [ %i.fm, %bb.w ], [ %i.b, %bb.y ], [ %i.b, %bb.x ]
  %.1.i63.i = phi ptr [ %i.fz, %.thread.i64.i ], [ %i.fk, %bb.w ], [ %i.fk, %bb.y ], [ %i.fk, %bb.x ] ; 2 uses
  %i.ga = add nuw nsw i32 %i.fi, 1
  store i32 %i.ga, ptr %i.fd, align 4, !tbaa !139
  %i.gb = zext nneg i32 %i.fi to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.gb
  store i32 %.085.i, ptr %i.gc, align 4, !tbaa !139
  %i.gd = icmp ult ptr %.1.i63.i, %i.ff
  br i1 %i.gd, label %bb.v, label %.critedge5.i, !llvm.loop !734

.critedge5.i:                                     ; preds = %_ZN13hb_utf16_xe_tItE4nextEPKtS2_Pjj.exit65.i, %bb.v, %._crit_edge.i
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.ge, align 8, !tbaa !619
  br label %_ZL17hb_buffer_add_utfI13hb_utf16_xe_tItEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit

_ZL17hb_buffer_add_utfI13hb_utf16_xe_tItEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit: ; preds = %bb.a, %_ZN13hb_utf16_xe_tItE6strlenEPKt.exit.i, %_ZN11hb_buffer_t6ensureEj.exit.i, %.critedge5.i
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define void @hb_buffer_add_utf32(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !726  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load atomic i8, ptr %i.c monotonic, align 4, !range !220, !noundef !74
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZL17hb_buffer_add_utfI13hb_utf32_xe_tIjLb1EEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %2, -1
  br i1 %i.f, label %bb.c, label %_ZN13hb_utf32_xe_tIjLb1EE6strlenEPKj.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %1, align 4, !tbaa !139
  %.not3.i.i = icmp eq i32 %i.g, 0
  br i1 %.not3.i.i, label %_ZN13hb_utf32_xe_tIjLb1EE6strlenEPKj.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %scevgep.i.i = getelementptr i8, ptr %1, i64 4
  %wcslen.i.i = tail call i64 @wcslen(ptr %scevgep.i.i)
  %i.h = trunc i64 %wcslen.i.i to i32
  %i.i = add i32 %i.h, 1
  br label %_ZN13hb_utf32_xe_tIjLb1EE6strlenEPKj.exit.i

_ZN13hb_utf32_xe_tIjLb1EE6strlenEPKj.exit.i:      ; preds = %.lr.ph.preheader.i.i, %bb.c, %bb.b
  %.0.i = phi i32 [ %2, %bb.b ], [ 0, %bb.c ], [ %i.i, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.j = icmp eq i32 %4, -1
  %i.k = sub i32 %.0.i, %3
  %spec.select.i = select i1 %i.j, i32 %i.k, i32 %4
  %.sroa.speculated69.i = tail call i32 @llvm.umin.i32(i32 %3, i32 %.0.i) ; 5 uses
  %i.l = sub nuw nsw i32 %.0.i, %.sroa.speculated69.i
  %i.m = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 0)
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.m, i32 %i.l) ; 4 uses
  %or.cond.i = icmp ugt i32 %.sroa.speculated.i, 268435455
  br i1 %or.cond.i, label %_ZL17hb_buffer_add_utfI13hb_utf32_xe_tIjLb1EEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit, label %bb.d, !prof !252

bb.d:                                             ; preds = %_ZN13hb_utf32_xe_tIjLb1EE6strlenEPKj.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !522  ; 2 uses
  %i.p = add i32 %i.o, %.sroa.speculated.i        ; 3 uses
  %.not.i58.i = icmp eq i32 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp ult i32 %i.p, %i.r
  %i.t = select i1 %.not.i58.i, i1 true, i1 %i.s
  br i1 %i.t, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i, label %_ZN11hb_buffer_t6ensureEj.exit.i, !prof !49

_ZN11hb_buffer_t6ensureEj.exit.i:                 ; preds = %bb.d
  %i.u = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.p)
  br i1 %i.u, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, label %_ZL17hb_buffer_add_utfI13hb_utf32_xe_tIjLb1EEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit, !prof !124

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i
  %.pre.i = load i32, ptr %i.n, align 8, !tbaa !522
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i:          ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, %bb.d
  %i.v = phi i32 [ %.pre.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %i.o, %bb.d ]
  %i.w = icmp eq i32 %i.v, 0
  %i.x = icmp ne i32 %.sroa.speculated69.i, 0
  %or.cond3.i = and i1 %i.x, %i.w
  br i1 %or.cond3.i, label %.lr.ph.i, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge

_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i
  %.pre = zext i32 %.sroa.speculated69.i to i64
  br label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  store i32 0, ptr %i.y, align 8, !tbaa !139
  %i.z = zext i32 %.sroa.speculated69.i to i64    ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.idx.i = shl nuw nsw i64 %i.z, 2
  %i.ab = getelementptr i8, ptr %1, i64 %.idx.i   ; 5 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !139 ; 3 uses
  %i.ae = icmp ugt i32 %i.ad, 55295
  %i.af = add i32 %i.ad, -1114112
  %i.ag = icmp ult i32 %i.af, -1056768
  %i.ah = and i1 %i.ae, %i.ag
  br i1 %i.ah, label %bb.e, label %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i, !prof !48

bb.e:                                             ; preds = %.lr.ph.i
  br label %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i

_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i:  ; preds = %bb.e, %.lr.ph.i
  %storemerge.i.i = phi i32 [ %i.b, %bb.e ], [ %i.ad, %.lr.ph.i ]
  store i32 1, ptr %i.y, align 8, !tbaa !139
  store i32 %storemerge.i.i, ptr %i.aa, align 8, !tbaa !139
  %i.ai = icmp ugt i32 %.sroa.speculated69.i, 1
  br i1 %i.ai, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i
  %i.aj = getelementptr i8, ptr %i.ab, i64 -8     ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !139 ; 3 uses
  %i.al = icmp ugt i32 %i.ak, 55295
  %i.am = add i32 %i.ak, -1114112
  %i.an = icmp ult i32 %i.am, -1056768
  %i.ao = and i1 %i.al, %i.an
  br i1 %i.ao, label %bb.g, label %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.1, !prof !48

bb.g:                                             ; preds = %bb.f
  br label %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.1

_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.1: ; preds = %bb.g, %bb.f
  %storemerge.i.i.1 = phi i32 [ %i.b, %bb.g ], [ %i.ak, %bb.f ]
  store i32 2, ptr %i.y, align 8, !tbaa !139
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %storemerge.i.i.1, ptr %i.ap, align 4, !tbaa !139
  %i.aq = icmp ult ptr %1, %i.aj
  br i1 %i.aq, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.1
  %i.ar = getelementptr i8, ptr %i.ab, i64 -12    ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !139 ; 3 uses
  %i.at = icmp ugt i32 %i.as, 55295
  %i.au = add i32 %i.as, -1114112
  %i.av = icmp ult i32 %i.au, -1056768
  %i.aw = and i1 %i.at, %i.av
  br i1 %i.aw, label %bb.i, label %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.2, !prof !48

bb.i:                                             ; preds = %bb.h
  br label %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.2

_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.2: ; preds = %bb.i, %bb.h
  %storemerge.i.i.2 = phi i32 [ %i.b, %bb.i ], [ %i.as, %bb.h ]
  store i32 3, ptr %i.y, align 8, !tbaa !139
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %storemerge.i.i.2, ptr %i.ax, align 8, !tbaa !139
  %i.ay = icmp ult ptr %1, %i.ar
  br i1 %i.ay, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.2
  %i.az = getelementptr i8, ptr %i.ab, i64 -16    ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !139 ; 3 uses
  %i.bb = icmp ugt i32 %i.ba, 55295
  %i.bc = add i32 %i.ba, -1114112
  %i.bd = icmp ult i32 %i.bc, -1056768
  %i.be = and i1 %i.bb, %i.bd
  br i1 %i.be, label %bb.k, label %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.3, !prof !48

bb.k:                                             ; preds = %bb.j
  br label %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.3

_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.3: ; preds = %bb.k, %bb.j
  %storemerge.i.i.3 = phi i32 [ %i.b, %bb.k ], [ %i.ba, %bb.j ]
  store i32 4, ptr %i.y, align 8, !tbaa !139
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %storemerge.i.i.3, ptr %i.bf, align 4, !tbaa !139
  %i.bg = icmp ult ptr %1, %i.az
  br i1 %i.bg, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.3
  %i.bh = getelementptr i8, ptr %i.ab, i64 -20
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !139 ; 3 uses
  %i.bj = icmp ugt i32 %i.bi, 55295
  %i.bk = add i32 %i.bi, -1114112
  %i.bl = icmp ult i32 %i.bk, -1056768
  %i.bm = and i1 %i.bj, %i.bl
  br i1 %i.bm, label %bb.m, label %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.4, !prof !48

bb.m:                                             ; preds = %bb.l
  br label %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.4

_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.4: ; preds = %bb.m, %bb.l
  %storemerge.i.i.4 = phi i32 [ %i.b, %bb.m ], [ %i.bi, %bb.l ]
  store i32 5, ptr %i.y, align 8, !tbaa !139
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %storemerge.i.i.4, ptr %i.bn, align 8, !tbaa !139
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i, %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.1, %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.2, %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.3, %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.4, %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge
  %.pre-phi = phi i64 [ %.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge ], [ %i.z, %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.4 ], [ %i.z, %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.3 ], [ %i.z, %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.2 ], [ %i.z, %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i.1 ], [ %i.z, %_ZN13hb_utf32_xe_tIjLb1EE4prevEPKjS2_Pjj.exit.i ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pre-phi ; 3 uses
  %i.bp = shl nuw nsw i32 %.sroa.speculated.i, 2
  %.idx91.i = zext nneg i32 %i.bp to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx91.i
  %.not.i = icmp eq i32 %.sroa.speculated.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph86.i

.lr.ph86.i:                                       ; preds = %.critedge.i
  %i.br = ptrtoint ptr %1 to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.n

bb.n:                                             ; preds = %_ZN11hb_buffer_t3addEjj.exit.i, %.lr.ph86.i
  %.04985.i = phi ptr [ %i.bo, %.lr.ph86.i ], [ %i.by, %_ZN11hb_buffer_t3addEjj.exit.i ] ; 3 uses
  %i.bt = load i32, ptr %.04985.i, align 4, !tbaa !139 ; 3 uses
  %i.bu = icmp ugt i32 %i.bt, 55295
  %i.bv = add i32 %i.bt, -1114112
  %i.bw = icmp ult i32 %i.bv, -1056768
  %i.bx = and i1 %i.bu, %i.bw
  br i1 %i.bx, label %bb.o, label %_ZN13hb_utf32_xe_tIjLb1EE4nextEPKjS2_Pjj.exit.i, !prof !48

bb.o:                                             ; preds = %bb.n
  br label %_ZN13hb_utf32_xe_tIjLb1EE4nextEPKjS2_Pjj.exit.i

_ZN13hb_utf32_xe_tIjLb1EE4nextEPKjS2_Pjj.exit.i:  ; preds = %bb.o, %bb.n
  %storemerge.i59.i = phi i32 [ %i.b, %bb.o ], [ %i.bt, %bb.n ]
  %i.by = getelementptr inbounds nuw i8, ptr %.04985.i, i64 4 ; 3 uses
  %i.bz = ptrtoint ptr %.04985.i to i64
  %i.ca = sub i64 %i.bz, %i.br
  %i.cb = lshr exact i64 %i.ca, 2
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = load i32, ptr %i.n, align 8, !tbaa !522 ; 2 uses
  %i.ce = add i32 %i.cd, 1                        ; 3 uses
  %.not.i.i60.i = icmp eq i32 %i.ce, 0
  %i.cf = load i32, ptr %i.q, align 8
  %i.cg = icmp ult i32 %i.ce, %i.cf
  %i.ch = select i1 %.not.i.i60.i, i1 true, i1 %i.cg
  br i1 %i.ch, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, label %_ZN11hb_buffer_t6ensureEj.exit.i.i, !prof !49

_ZN11hb_buffer_t6ensureEj.exit.i.i:               ; preds = %_ZN13hb_utf32_xe_tIjLb1EE4nextEPKjS2_Pjj.exit.i
  %i.ci = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.ce)
  br i1 %i.ci, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i, label %_ZN11hb_buffer_t3addEjj.exit.i, !prof !124

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i.i
  %.pre.i.i = load i32, ptr %i.n, align 8, !tbaa !522
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i.i:        ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i, %_ZN13hb_utf32_xe_tIjLb1EE4nextEPKjS2_Pjj.exit.i
  %i.cj = phi i32 [ %.pre.i.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i ], [ %i.cd, %_ZN13hb_utf32_xe_tIjLb1EE4nextEPKjS2_Pjj.exit.i ]
  %i.ck = load ptr, ptr %i.bs, align 8, !tbaa !499
  %i.cl = zext i32 %i.cj to i64
  %i.cm = getelementptr inbounds nuw [20 x i8], ptr %i.ck, i64 %i.cl ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  store i64 0, ptr %i.cn, align 1
  store i32 %storemerge.i59.i, ptr %i.cm, align 4, !tbaa !582
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 0, ptr %i.co, align 4, !tbaa !500
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i32 %i.cc, ptr %i.cp, align 4, !tbaa !523
  %i.cq = load i32, ptr %i.n, align 8, !tbaa !522
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.n, align 8, !tbaa !522
  br label %_ZN11hb_buffer_t3addEjj.exit.i

_ZN11hb_buffer_t3addEjj.exit.i:                   ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, %_ZN11hb_buffer_t6ensureEj.exit.i.i
  %i.cs = icmp ult ptr %i.by, %i.bq
  br i1 %i.cs, label %bb.n, label %._crit_edge.i, !llvm.loop !735

._crit_edge.i:                                    ; preds = %_ZN11hb_buffer_t3addEjj.exit.i, %.critedge.i
  %.049.lcssa.i = phi ptr [ %i.bo, %.critedge.i ], [ %i.by, %_ZN11hb_buffer_t3addEjj.exit.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 3 uses
  store i32 0, ptr %i.ct, align 4, !tbaa !139
  %i.cu = sext i32 %.0.i to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cu ; 2 uses
  %i.cw = icmp ult ptr %.049.lcssa.i, %i.cv
  br i1 %i.cw, label %.lr.ph89.i, label %.critedge5.i

.lr.ph89.i:                                       ; preds = %._crit_edge.i
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 156
  br label %bb.p

bb.p:                                             ; preds = %_ZN13hb_utf32_xe_tIjLb1EE4nextEPKjS2_Pjj.exit62.i, %.lr.ph89.i
  %.187.i = phi ptr [ %.049.lcssa.i, %.lr.ph89.i ], [ %i.df, %_ZN13hb_utf32_xe_tIjLb1EE4nextEPKjS2_Pjj.exit62.i ] ; 2 uses
  %i.cy = load i32, ptr %i.ct, align 4, !tbaa !139 ; 3 uses
  %i.cz = icmp ult i32 %i.cy, 5
  br i1 %i.cz, label %bb.q, label %.critedge5.i

bb.q:                                             ; preds = %bb.p
  %i.da = load i32, ptr %.187.i, align 4, !tbaa !139 ; 3 uses
  %i.db = icmp ugt i32 %i.da, 55295
  %i.dc = add i32 %i.da, -1114112
  %i.dd = icmp ult i32 %i.dc, -1056768
  %i.de = and i1 %i.db, %i.dd
  br i1 %i.de, label %bb.r, label %_ZN13hb_utf32_xe_tIjLb1EE4nextEPKjS2_Pjj.exit62.i, !prof !48

bb.r:                                             ; preds = %bb.q
  br label %_ZN13hb_utf32_xe_tIjLb1EE4nextEPKjS2_Pjj.exit62.i

_ZN13hb_utf32_xe_tIjLb1EE4nextEPKjS2_Pjj.exit62.i: ; preds = %bb.r, %bb.q
  %storemerge.i61.i = phi i32 [ %i.b, %bb.r ], [ %i.da, %bb.q ]
  %i.df = getelementptr inbounds nuw i8, ptr %.187.i, i64 4 ; 2 uses
  %i.dg = add nuw nsw i32 %i.cy, 1
  store i32 %i.dg, ptr %i.ct, align 4, !tbaa !139
  %i.dh = zext nneg i32 %i.cy to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.dh
  store i32 %storemerge.i61.i, ptr %i.di, align 4, !tbaa !139
  %i.dj = icmp ult ptr %i.df, %i.cv
  br i1 %i.dj, label %bb.p, label %.critedge5.i, !llvm.loop !736

.critedge5.i:                                     ; preds = %_ZN13hb_utf32_xe_tIjLb1EE4nextEPKjS2_Pjj.exit62.i, %bb.p, %._crit_edge.i
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.dk, align 8, !tbaa !619
  br label %_ZL17hb_buffer_add_utfI13hb_utf32_xe_tIjLb1EEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit

_ZL17hb_buffer_add_utfI13hb_utf32_xe_tIjLb1EEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit: ; preds = %bb.a, %_ZN13hb_utf32_xe_tIjLb1EE6strlenEPKj.exit.i, %_ZN11hb_buffer_t6ensureEj.exit.i, %.critedge5.i
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define void @hb_buffer_add_latin1(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #17 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !range !220, !noundef !74
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZL17hb_buffer_add_utfI11hb_latin1_tEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %2, -1
  br i1 %i.e, label %bb.c, label %_ZN11hb_latin1_t6strlenEPKh.exit.i

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %1, align 1, !tbaa !61
  %.not3.i.i = icmp eq i8 %i.f, 0
  br i1 %.not3.i.i, label %_ZN11hb_latin1_t6strlenEPKh.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %scevgep.i.i = getelementptr i8, ptr %1, i64 1
  %strlen.i.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep.i.i)
  %i.g = trunc i64 %strlen.i.i to i32
  %i.h = add i32 %i.g, 1
  br label %_ZN11hb_latin1_t6strlenEPKh.exit.i

_ZN11hb_latin1_t6strlenEPKh.exit.i:               ; preds = %.lr.ph.preheader.i.i, %bb.c, %bb.b
  %.0.i = phi i32 [ %2, %bb.b ], [ 0, %bb.c ], [ %i.h, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.i = icmp eq i32 %4, -1
  %i.j = sub i32 %.0.i, %3
  %spec.select.i = select i1 %i.i, i32 %i.j, i32 %4
  %.sroa.speculated66.i = tail call i32 @llvm.umin.i32(i32 %3, i32 %.0.i) ; 5 uses
  %i.k = sub nuw nsw i32 %.0.i, %.sroa.speculated66.i
  %i.l = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 0)
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %i.k) ; 4 uses
  %or.cond.i = icmp ugt i32 %.sroa.speculated.i, 268435455
  br i1 %or.cond.i, label %_ZL17hb_buffer_add_utfI11hb_latin1_tEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit, label %bb.d, !prof !252

bb.d:                                             ; preds = %_ZN11hb_latin1_t6strlenEPKh.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !522  ; 2 uses
  %i.o = lshr i32 %.sroa.speculated.i, 2
  %i.p = add i32 %i.n, %i.o                       ; 3 uses
  %.not.i58.i = icmp eq i32 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp ult i32 %i.p, %i.r
  %i.t = select i1 %.not.i58.i, i1 true, i1 %i.s
  br i1 %i.t, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i, label %_ZN11hb_buffer_t6ensureEj.exit.i, !prof !49

_ZN11hb_buffer_t6ensureEj.exit.i:                 ; preds = %bb.d
  %i.u = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.p)
  br i1 %i.u, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, label %_ZL17hb_buffer_add_utfI11hb_latin1_tEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit, !prof !124

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i
  %.pre.i = load i32, ptr %i.m, align 8, !tbaa !522
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i:          ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, %bb.d
  %i.v = phi i32 [ %.pre.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %i.n, %bb.d ]
  %i.w = icmp eq i32 %i.v, 0
  %i.x = icmp ne i32 %.sroa.speculated66.i, 0
  %or.cond3.i = and i1 %i.x, %i.w
  br i1 %or.cond3.i, label %.lr.ph.i, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge

_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i
  %.pre = zext i32 %.sroa.speculated66.i to i64
  br label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  store i32 0, ptr %i.y, align 8, !tbaa !139
  %i.z = zext i32 %.sroa.speculated66.i to i64    ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ab = getelementptr i8, ptr %1, i64 %i.z      ; 5 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !61
  %i.ae = zext i8 %i.ad to i32
  store i32 1, ptr %i.y, align 8, !tbaa !139
  store i32 %i.ae, ptr %i.aa, align 8, !tbaa !139
  %i.af = icmp ugt i32 %.sroa.speculated66.i, 1
  br i1 %i.af, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr i8, ptr %i.ab, i64 -2     ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !61
  %i.ai = zext i8 %i.ah to i32
  store i32 2, ptr %i.y, align 8, !tbaa !139
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !139
  %i.ak = icmp ult ptr %1, %i.ag
  br i1 %i.ak, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr i8, ptr %i.ab, i64 -3     ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !61
  %i.an = zext i8 %i.am to i32
  store i32 3, ptr %i.y, align 8, !tbaa !139
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !139
  %i.ap = icmp ult ptr %1, %i.al
  br i1 %i.ap, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr i8, ptr %i.ab, i64 -4     ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !61
  %i.as = zext i8 %i.ar to i32
  store i32 4, ptr %i.y, align 8, !tbaa !139
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %i.as, ptr %i.at, align 4, !tbaa !139
  %i.au = icmp ult ptr %1, %i.aq
  br i1 %i.au, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr i8, ptr %i.ab, i64 -5
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !61
  %i.ax = zext i8 %i.aw to i32
  store i32 5, ptr %i.y, align 8, !tbaa !139
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !139
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i, %bb.e, %bb.f, %bb.g, %bb.h, %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge
  %.pre-phi = phi i64 [ %.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge ], [ %i.z, %bb.h ], [ %i.z, %bb.g ], [ %i.z, %bb.f ], [ %i.z, %bb.e ], [ %i.z, %.lr.ph.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %.pre-phi ; 3 uses
  %i.ba = zext nneg i32 %.sroa.speculated.i to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  %.not.i = icmp eq i32 %.sroa.speculated.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph83.i

.lr.ph83.i:                                       ; preds = %.critedge.i
  %i.bc = ptrtoint ptr %1 to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.i

bb.i:                                             ; preds = %_ZN11hb_buffer_t3addEjj.exit.i, %.lr.ph83.i
  %.04982.i = phi ptr [ %i.az, %.lr.ph83.i ], [ %i.be, %_ZN11hb_buffer_t3addEjj.exit.i ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.04982.i, i64 1 ; 3 uses
  %i.bf = load i8, ptr %.04982.i, align 1, !tbaa !61
  %i.bg = zext i8 %i.bf to i32
  %i.bh = ptrtoint ptr %.04982.i to i64
  %i.bi = sub i64 %i.bh, %i.bc
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = load i32, ptr %i.m, align 8, !tbaa !522 ; 2 uses
  %i.bl = add i32 %i.bk, 1                        ; 3 uses
  %.not.i.i59.i = icmp eq i32 %i.bl, 0
  %i.bm = load i32, ptr %i.q, align 8
  %i.bn = icmp ult i32 %i.bl, %i.bm
  %i.bo = select i1 %.not.i.i59.i, i1 true, i1 %i.bn
  br i1 %i.bo, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, label %_ZN11hb_buffer_t6ensureEj.exit.i.i, !prof !49

_ZN11hb_buffer_t6ensureEj.exit.i.i:               ; preds = %bb.i
  %i.bp = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.bl)
  br i1 %i.bp, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i, label %_ZN11hb_buffer_t3addEjj.exit.i, !prof !124

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i.i
  %.pre.i.i = load i32, ptr %i.m, align 8, !tbaa !522
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i.i:        ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i, %bb.i
  %i.bq = phi i32 [ %.pre.i.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i ], [ %i.bk, %bb.i ]
  %i.br = load ptr, ptr %i.bd, align 8, !tbaa !499
  %i.bs = zext i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [20 x i8], ptr %i.br, i64 %i.bs ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i64 0, ptr %i.bu, align 1
  store i32 %i.bg, ptr %i.bt, align 4, !tbaa !582
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 0, ptr %i.bv, align 4, !tbaa !500
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i32 %i.bj, ptr %i.bw, align 4, !tbaa !523
  %i.bx = load i32, ptr %i.m, align 8, !tbaa !522
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.m, align 8, !tbaa !522
  br label %_ZN11hb_buffer_t3addEjj.exit.i

_ZN11hb_buffer_t3addEjj.exit.i:                   ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, %_ZN11hb_buffer_t6ensureEj.exit.i.i
  %i.bz = icmp ult ptr %i.be, %i.bb
  br i1 %i.bz, label %bb.i, label %._crit_edge.i, !llvm.loop !737

._crit_edge.i:                                    ; preds = %_ZN11hb_buffer_t3addEjj.exit.i, %.critedge.i
  %.049.lcssa.i = phi ptr [ %i.az, %.critedge.i ], [ %i.be, %_ZN11hb_buffer_t3addEjj.exit.i ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 3 uses
  store i32 0, ptr %i.ca, align 4, !tbaa !139
  %i.cb = sext i32 %.0.i to i64                   ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %1, i64 %i.cb
  %i.cd = icmp ult ptr %.049.lcssa.i, %i.cc
  br i1 %i.cd, label %.lr.ph86.i, label %.critedge5.i

.lr.ph86.i:                                       ; preds = %._crit_edge.i
  %.049.lcssa88.i = ptrtoaddr ptr %.049.lcssa.i to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.cf = add i64 %i.cb, %i.a
  %i.cg = sub i64 %i.cf, %.049.lcssa88.i
  %scevgep.i = getelementptr i8, ptr %.049.lcssa.i, i64 %i.cg
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph86.i
  %.184.i = phi ptr [ %.049.lcssa.i, %.lr.ph86.i ], [ %i.cj, %bb.k ] ; 2 uses
  %i.ch = load i32, ptr %i.ca, align 4, !tbaa !139 ; 3 uses
  %i.ci = icmp ult i32 %i.ch, 5
  br i1 %i.ci, label %bb.k, label %.critedge5.i

bb.k:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %.184.i, i64 1 ; 2 uses
  %i.ck = load i8, ptr %.184.i, align 1, !tbaa !61
  %i.cl = zext i8 %i.ck to i32
  %i.cm = add nuw nsw i32 %i.ch, 1
  store i32 %i.cm, ptr %i.ca, align 4, !tbaa !139
  %i.cn = zext nneg i32 %i.ch to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cn
  store i32 %i.cl, ptr %i.co, align 4, !tbaa !139
  %exitcond.not.i = icmp eq ptr %i.cj, %scevgep.i
  br i1 %exitcond.not.i, label %.critedge5.i, label %bb.j, !llvm.loop !738

.critedge5.i:                                     ; preds = %bb.k, %bb.j, %._crit_edge.i
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.cp, align 8, !tbaa !619
  br label %_ZL17hb_buffer_add_utfI11hb_latin1_tEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit

_ZL17hb_buffer_add_utfI11hb_latin1_tEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit: ; preds = %bb.a, %_ZN11hb_latin1_t6strlenEPKh.exit.i, %_ZN11hb_buffer_t6ensureEj.exit.i, %.critedge5.i
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define void @hb_buffer_add_codepoints(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i8, ptr %i.a monotonic, align 1, !range !220, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZL17hb_buffer_add_utfI13hb_utf32_xe_tIjLb0EEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %2, -1
  br i1 %i.d, label %bb.c, label %_ZN13hb_utf32_xe_tIjLb0EE6strlenEPKj.exit.i

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %1, align 4, !tbaa !139
  %.not3.i.i = icmp eq i32 %i.e, 0
  br i1 %.not3.i.i, label %_ZN13hb_utf32_xe_tIjLb0EE6strlenEPKj.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %scevgep.i.i = getelementptr i8, ptr %1, i64 4
  %wcslen.i.i = tail call i64 @wcslen(ptr %scevgep.i.i)
  %i.f = trunc i64 %wcslen.i.i to i32
  %i.g = add i32 %i.f, 1
  br label %_ZN13hb_utf32_xe_tIjLb0EE6strlenEPKj.exit.i

_ZN13hb_utf32_xe_tIjLb0EE6strlenEPKj.exit.i:      ; preds = %.lr.ph.preheader.i.i, %bb.c, %bb.b
  %.0.i = phi i32 [ %2, %bb.b ], [ 0, %bb.c ], [ %i.g, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.h = icmp eq i32 %4, -1
  %i.i = sub i32 %.0.i, %3
  %spec.select.i = select i1 %i.h, i32 %i.i, i32 %4
  %.sroa.speculated66.i = tail call i32 @llvm.umin.i32(i32 %3, i32 %.0.i) ; 5 uses
  %i.j = sub nuw nsw i32 %.0.i, %.sroa.speculated66.i
  %i.k = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 0)
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.j) ; 4 uses
  %or.cond.i = icmp ugt i32 %.sroa.speculated.i, 268435455
  br i1 %or.cond.i, label %_ZL17hb_buffer_add_utfI13hb_utf32_xe_tIjLb0EEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit, label %bb.d, !prof !252

bb.d:                                             ; preds = %_ZN13hb_utf32_xe_tIjLb0EE6strlenEPKj.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !522  ; 2 uses
  %i.n = add i32 %i.m, %.sroa.speculated.i        ; 3 uses
  %.not.i58.i = icmp eq i32 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp ult i32 %i.n, %i.p
  %i.r = select i1 %.not.i58.i, i1 true, i1 %i.q
  br i1 %i.r, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i, label %_ZN11hb_buffer_t6ensureEj.exit.i, !prof !49

_ZN11hb_buffer_t6ensureEj.exit.i:                 ; preds = %bb.d
  %i.s = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.n)
  br i1 %i.s, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, label %_ZL17hb_buffer_add_utfI13hb_utf32_xe_tIjLb0EEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit, !prof !124

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i
  %.pre.i = load i32, ptr %i.l, align 8, !tbaa !522
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i:          ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, %bb.d
  %i.t = phi i32 [ %.pre.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %i.m, %bb.d ]
  %i.u = icmp eq i32 %i.t, 0
  %i.v = icmp ne i32 %.sroa.speculated66.i, 0
  %or.cond3.i = and i1 %i.v, %i.u
  br i1 %or.cond3.i, label %.lr.ph.i, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge

_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i
  %.pre = zext i32 %.sroa.speculated66.i to i64
  br label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  store i32 0, ptr %i.w, align 8, !tbaa !139
  %i.x = zext i32 %.sroa.speculated66.i to i64    ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.idx.i = shl nuw nsw i64 %i.x, 2
  %i.z = getelementptr i8, ptr %1, i64 %.idx.i    ; 5 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !139
  store i32 1, ptr %i.w, align 8, !tbaa !139
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !139
  %i.ac = icmp ugt i32 %.sroa.speculated66.i, 1
  br i1 %i.ac, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.ad = getelementptr i8, ptr %i.z, i64 -8      ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !139
  store i32 2, ptr %i.w, align 8, !tbaa !139
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !139
  %i.ag = icmp ult ptr %1, %i.ad
  br i1 %i.ag, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr i8, ptr %i.z, i64 -12     ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !139
  store i32 3, ptr %i.w, align 8, !tbaa !139
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !139
  %i.ak = icmp ult ptr %1, %i.ah
  br i1 %i.ak, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr i8, ptr %i.z, i64 -16     ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !139
  store i32 4, ptr %i.w, align 8, !tbaa !139
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %i.am, ptr %i.an, align 4, !tbaa !139
  %i.ao = icmp ult ptr %1, %i.al
  br i1 %i.ao, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr i8, ptr %i.z, i64 -20
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !139
  store i32 5, ptr %i.w, align 8, !tbaa !139
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !139
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i, %bb.e, %bb.f, %bb.g, %bb.h, %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge
  %.pre-phi = phi i64 [ %.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i..critedge.i_crit_edge ], [ %i.x, %bb.h ], [ %i.x, %bb.g ], [ %i.x, %bb.f ], [ %i.x, %bb.e ], [ %i.x, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pre-phi ; 3 uses
  %i.at = shl nuw nsw i32 %.sroa.speculated.i, 2
  %.idx88.i = zext nneg i32 %i.at to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx88.i
  %.not.i = icmp eq i32 %.sroa.speculated.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph83.i

.lr.ph83.i:                                       ; preds = %.critedge.i
  %i.av = ptrtoint ptr %1 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.i

bb.i:                                             ; preds = %_ZN11hb_buffer_t3addEjj.exit.i, %.lr.ph83.i
  %.04982.i = phi ptr [ %i.as, %.lr.ph83.i ], [ %i.ax, %_ZN11hb_buffer_t3addEjj.exit.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04982.i, i64 4 ; 3 uses
  %i.ay = load i32, ptr %.04982.i, align 4, !tbaa !139
  %i.az = ptrtoint ptr %.04982.i to i64
  %i.ba = sub i64 %i.az, %i.av
  %i.bb = lshr exact i64 %i.ba, 2
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = load i32, ptr %i.l, align 8, !tbaa !522 ; 2 uses
  %i.be = add i32 %i.bd, 1                        ; 3 uses
  %.not.i.i59.i = icmp eq i32 %i.be, 0
  %i.bf = load i32, ptr %i.o, align 8
  %i.bg = icmp ult i32 %i.be, %i.bf
  %i.bh = select i1 %.not.i.i59.i, i1 true, i1 %i.bg
  br i1 %i.bh, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, label %_ZN11hb_buffer_t6ensureEj.exit.i.i, !prof !49

_ZN11hb_buffer_t6ensureEj.exit.i.i:               ; preds = %bb.i
  %i.bi = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.be)
  br i1 %i.bi, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i, label %_ZN11hb_buffer_t3addEjj.exit.i, !prof !124

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i.i
  %.pre.i.i = load i32, ptr %i.l, align 8, !tbaa !522
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i.i:        ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i, %bb.i
  %i.bj = phi i32 [ %.pre.i.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i ], [ %i.bd, %bb.i ]
  %i.bk = load ptr, ptr %i.aw, align 8, !tbaa !499
  %i.bl = zext i32 %i.bj to i64
  %i.bm = getelementptr inbounds nuw [20 x i8], ptr %i.bk, i64 %i.bl ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i64 0, ptr %i.bn, align 1
  store i32 %i.ay, ptr %i.bm, align 4, !tbaa !582
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store i32 0, ptr %i.bo, align 4, !tbaa !500
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i32 %i.bc, ptr %i.bp, align 4, !tbaa !523
  %i.bq = load i32, ptr %i.l, align 8, !tbaa !522
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.l, align 8, !tbaa !522
  br label %_ZN11hb_buffer_t3addEjj.exit.i

_ZN11hb_buffer_t3addEjj.exit.i:                   ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, %_ZN11hb_buffer_t6ensureEj.exit.i.i
  %i.bs = icmp ult ptr %i.ax, %i.au
  br i1 %i.bs, label %bb.i, label %._crit_edge.i, !llvm.loop !739

._crit_edge.i:                                    ; preds = %_ZN11hb_buffer_t3addEjj.exit.i, %.critedge.i
  %.049.lcssa.i = phi ptr [ %i.as, %.critedge.i ], [ %i.ax, %_ZN11hb_buffer_t3addEjj.exit.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 3 uses
  store i32 0, ptr %i.bt, align 4, !tbaa !139
  %i.bu = sext i32 %.0.i to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bu ; 2 uses
  %i.bw = icmp ult ptr %.049.lcssa.i, %i.bv
  br i1 %i.bw, label %.lr.ph86.i, label %.critedge5.i

.lr.ph86.i:                                       ; preds = %._crit_edge.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 156
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph86.i
  %.184.i = phi ptr [ %.049.lcssa.i, %.lr.ph86.i ], [ %i.ca, %bb.k ] ; 2 uses
  %i.by = load i32, ptr %i.bt, align 4, !tbaa !139 ; 3 uses
  %i.bz = icmp ult i32 %i.by, 5
  br i1 %i.bz, label %bb.k, label %.critedge5.i

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.184.i, i64 4 ; 2 uses
  %i.cb = load i32, ptr %.184.i, align 4, !tbaa !139
  %i.cc = add nuw nsw i32 %i.by, 1
  store i32 %i.cc, ptr %i.bt, align 4, !tbaa !139
  %i.cd = zext nneg i32 %i.by to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.cd
  store i32 %i.cb, ptr %i.ce, align 4, !tbaa !139
  %i.cf = icmp ult ptr %i.ca, %i.bv
  br i1 %i.cf, label %bb.j, label %.critedge5.i, !llvm.loop !740

.critedge5.i:                                     ; preds = %bb.k, %bb.j, %._crit_edge.i
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.cg, align 8, !tbaa !619
  br label %_ZL17hb_buffer_add_utfI13hb_utf32_xe_tIjLb0EEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit

_ZL17hb_buffer_add_utfI13hb_utf32_xe_tIjLb0EEEvP11hb_buffer_tPKNT_11codepoint_tEiji.exit: ; preds = %bb.a, %_ZN13hb_utf32_xe_tIjLb0EE6strlenEPKj.exit.i, %_ZN11hb_buffer_t6ensureEj.exit.i, %.critedge5.i
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define void @hb_buffer_append(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !522  ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %3, i32 %i.b) ; 4 uses
  %.082 = tail call i32 @llvm.umin.i32(i32 %2, i32 %spec.select) ; 4 uses
  %.not99 = icmp ugt i32 %spec.select, %2
  br i1 %.not99, label %bb.b, label %.critedge6

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !522  ; 5 uses
  %i.e = sub nuw i32 %spec.select, %.082          ; 2 uses
  %i.f = add i32 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ult i32 %i.f, %i.d
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.h, align 8, !tbaa !496
  br label %.critedge6

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4, !range !220, !noundef !74
  %i.k = trunc nuw i8 %i.j to i1
  %.not.i.i = icmp eq i32 %i.f, 0                 ; 2 uses
  br i1 %i.k, label %bb.e, label %hb_buffer_set_length.exit, !prof !49

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp ult i32 %i.f, %i.m
  %i.o = select i1 %.not.i.i, i1 true, i1 %i.n
  br i1 %i.o, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i, label %_ZN11hb_buffer_t6ensureEj.exit.i, !prof !49

_ZN11hb_buffer_t6ensureEj.exit.i:                 ; preds = %bb.e
  %i.p = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.f)
  br i1 %i.p, label %_ZN11hb_buffer_t6ensureEj.exit.i._ZN11hb_buffer_t6ensureEj.exit.thread.i_crit_edge, label %hb_buffer_set_length.exit, !prof !124

_ZN11hb_buffer_t6ensureEj.exit.i._ZN11hb_buffer_t6ensureEj.exit.thread.i_crit_edge: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i
  %.pre = load i32, ptr %i.c, align 8, !tbaa !522
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i:          ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i._ZN11hb_buffer_t6ensureEj.exit.thread.i_crit_edge, %bb.e
  %i.q = phi i32 [ %.pre, %_ZN11hb_buffer_t6ensureEj.exit.i._ZN11hb_buffer_t6ensureEj.exit.thread.i_crit_edge ], [ %i.d, %bb.e ] ; 3 uses
  %i.r = icmp ugt i32 %i.f, %i.q
  br i1 %i.r, label %bb.f, label %_ZL9hb_memsetPvij.exit25.i

bb.f:                                             ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i
  %i.s = sub nuw i32 %i.f, %i.q
  %i.t = mul i32 %i.s, 20                         ; 2 uses
  %.not.i23.i = icmp eq i32 %i.t, 0
  br i1 %.not.i23.i, label %_ZL9hb_memsetPvij.exit.i, label %bb.g, !prof !48

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !499
  %i.w = zext i32 %i.q to i64
  %i.x = getelementptr inbounds nuw [20 x i8], ptr %i.v, i64 %i.w
  %i.y = zext i32 %i.t to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.x, i8 0, i64 %i.y, i1 false)
  br label %_ZL9hb_memsetPvij.exit.i

_ZL9hb_memsetPvij.exit.i:                         ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !575, !range !220, !noundef !74
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.h, label %_ZL9hb_memsetPvij.exit25.thread.i

bb.h:                                             ; preds = %_ZL9hb_memsetPvij.exit.i
  %i.ac = load i32, ptr %i.c, align 8, !tbaa !522 ; 2 uses
  %i.ad = sub i32 %i.f, %i.ac
  %i.ae = mul i32 %i.ad, 20                       ; 2 uses
  %.not.i24.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i24.i, label %_ZL9hb_memsetPvij.exit25.thread.i, label %bb.i, !prof !48

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !527
  %i.ah = zext i32 %i.ac to i64
  %i.ai = getelementptr inbounds nuw [20 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = zext i32 %i.ae to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ai, i8 0, i64 %i.aj, i1 false)
  br label %_ZL9hb_memsetPvij.exit25.thread.i

_ZL9hb_memsetPvij.exit25.thread.i:                ; preds = %bb.i, %bb.h, %_ZL9hb_memsetPvij.exit.i
  store i32 %i.f, ptr %i.c, align 8, !tbaa !522
  br label %bb.k

_ZL9hb_memsetPvij.exit25.i:                       ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i
  store i32 %i.f, ptr %i.c, align 8, !tbaa !522
  br i1 %.not.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZL9hb_memsetPvij.exit25.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.ak, align 8, !tbaa !619
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.al, align 8, !tbaa !139
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZL9hb_memsetPvij.exit25.i, %_ZL9hb_memsetPvij.exit25.thread.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 0, ptr %i.am, align 4, !tbaa !139
  br label %hb_buffer_set_length.exit

hb_buffer_set_length.exit:                        ; preds = %bb.d, %_ZN11hb_buffer_t6ensureEj.exit.i, %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !496, !range !220, !noundef !74
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.l, label %.critedge6, !prof !49

bb.l:                                             ; preds = %hb_buffer_set_length.exit
  %.not = icmp eq i32 %i.d, 0                     ; 2 uses
  br i1 %.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !619
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !619
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 3 uses
  %i.au = load i8, ptr %i.at, align 2, !tbaa !575, !range !220, !noundef !74
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %_ZN11hb_buffer_t15clear_positionsEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 90
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !575, !range !220, !noundef !74
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.p, label %_ZN11hb_buffer_t15clear_positionsEv.exit

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 0, ptr %i.az, align 1, !tbaa !577
  store i8 1, ptr %i.at, align 2, !tbaa !575
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.ba, align 4, !tbaa !578
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !499
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !579
  %i.be = load i32, ptr %i.c, align 8, !tbaa !522
  %i.bf = mul i32 %i.be, 20                       ; 2 uses
  %.not.i.i95 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i95, label %_ZN11hb_buffer_t15clear_positionsEv.exit, label %bb.q, !prof !48

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !527
  %i.bi = zext i32 %i.bf to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bh, i8 0, i64 %i.bi, i1 false)
  br label %_ZN11hb_buffer_t15clear_positionsEv.exit

_ZN11hb_buffer_t15clear_positionsEv.exit:         ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bl = load i32, ptr %i.bj, align 8, !tbaa !662 ; 2 uses
  %.not16.i = icmp eq i32 %i.bl, 0
  %.pre.i = load i32, ptr %i.bk, align 8, !tbaa !662 ; 2 uses
  br i1 %.not16.i, label %.thread.i, label %bb.r

.thread.i:                                        ; preds = %_ZN11hb_buffer_t15clear_positionsEv.exit
  store i32 %.pre.i, ptr %i.bj, align 8, !tbaa !662
  br label %bb.s

bb.r:                                             ; preds = %_ZN11hb_buffer_t15clear_positionsEv.exit
  %.not17.i = icmp eq i32 %i.bl, %.pre.i
  br i1 %.not17.i, label %bb.s, label %hb_segment_properties_overlay.exit

bb.s:                                             ; preds = %bb.r, %.thread.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !663 ; 2 uses
  %.not18.i = icmp eq i32 %i.bn, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !663 ; 2 uses
  br i1 %.not18.i, label %.thread26.i, label %bb.t

.thread26.i:                                      ; preds = %bb.s
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !663
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bq = icmp eq i32 %i.bn, %i.bp
  br i1 %i.bq, label %bb.u, label %hb_segment_properties_overlay.exit

bb.u:                                             ; preds = %bb.t, %.thread26.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !664
  %.not20.i = icmp eq ptr %i.bs, null
  br i1 %.not20.i, label %bb.v, label %hb_segment_properties_overlay.exit

bb.v:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !664
  store ptr %i.bu, ptr %i.br, align 8, !tbaa !664
  br label %hb_segment_properties_overlay.exit

hb_segment_properties_overlay.exit:               ; preds = %bb.r, %bb.t, %bb.u, %bb.v
  %i.bv = zext i32 %i.d to i64                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.bx = zext i32 %.082 to i64                   ; 2 uses
  %i.by = zext i32 %i.e to i64
  %i.bz = mul nuw nsw i64 %i.by, 20               ; 2 uses
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !499
  %i.cb = getelementptr inbounds nuw [20 x i8], ptr %i.ca, i64 %i.bx
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !499
  %i.ce = getelementptr inbounds nuw [20 x i8], ptr %i.cd, i64 %i.bv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr readonly align 1 %i.cb, i64 %i.bz, i1 false), !alias.scope !741
end_hunk_7
begin_hunk_8_@hb_feature_from_string:bb.a
  %or.cond.i21.i.i.i = icmp ult i8 %i.er, 26
  %i.es = add nuw nsw i8 %i.eq, 32
  %i.et = select i1 %or.cond.i21.i.i.i, i8 %i.es, i8 %i.eq
  %i.eu = icmp eq i8 %i.et, 111
  br i1 %i.eu, label %bb.am, label %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i

bb.am:                                            ; preds = %bb.al
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !61  ; 3 uses
  %i.ex = add i8 %i.ew, -65
  %or.cond.i22.i.i.i = icmp ult i8 %i.ex, 26
  %i.ey = add nuw nsw i8 %i.ew, 32
  %i.ez = select i1 %or.cond.i22.i.i.i, i8 %i.ey, i8 %i.ew
  %i.fa = icmp eq i8 %i.ez, 102
  br i1 %i.fa, label %bb.an, label %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i

bb.an:                                            ; preds = %bb.am
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !61  ; 3 uses
  %i.fd = add i8 %i.fc, -65
  %or.cond.i23.i.i.i = icmp ult i8 %i.fd, 26
  %i.fe = add nuw nsw i8 %i.fc, 32
  %i.ff = select i1 %or.cond.i23.i.i.i, i8 %i.fe, i8 %i.fc
  %i.fg = icmp eq i8 %i.ff, 102
  br i1 %i.fg, label %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.thread.i, label %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i

_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.thread.i: ; preds = %bb.an, %bb.ak, %_ZL12parse_uint32PPKcS0_Pj.exit.thread.i.i
  %.promoted.i47.i = phi ptr [ %i.dk, %_ZL12parse_uint32PPKcS0_Pj.exit.thread.i.i ], [ %.promoted.i48.i, %bb.ak ], [ %.promoted.i48.i, %bb.an ]
  %storemerge.i.sink.i.i = phi i32 [ %i.dh, %_ZL12parse_uint32PPKcS0_Pj.exit.thread.i.i ], [ 1, %bb.ak ], [ 0, %bb.an ]
  store i32 %storemerge.i.sink.i.i, ptr %i.ac, align 4, !tbaa !139
  br label %bb.ao

_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %.critedge.i.i.i
  br i1 %not..i.i, label %bb.ao, label %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread, !prof !383

bb.ao:                                            ; preds = %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i, %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.thread.i
  %.promoted.i.i = phi ptr [ %.promoted.i47.i, %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.thread.i ], [ %.promoted.i48.i, %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i ] ; 3 uses
  %i.fh = icmp ult ptr %.promoted.i.i, %i.m
  br i1 %i.fh, label %.lr.ph.i.i, label %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit

.lr.ph.i.i:                                       ; preds = %bb.ao, %bb.ap
  %i.fi = phi ptr [ %i.fk, %bb.ap ], [ %.promoted.i.i, %bb.ao ] ; 3 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !61
  switch i8 %i.fj, label %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit [
    i8 32, label %bb.ap
    i8 13, label %bb.ap
    i8 12, label %bb.ap
    i8 10, label %bb.ap
    i8 9, label %bb.ap
    i8 11, label %bb.ap
  ]

bb.ap:                                            ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 1 ; 3 uses
  store ptr %i.fk, ptr %i.h, align 8, !tbaa !574
  %exitcond.not.i.i = icmp eq ptr %i.fk, %i.m
  br i1 %exitcond.not.i.i, label %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread10, label %.lr.ph.i.i, !llvm.loop !784

_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit: ; preds = %.lr.ph.i.i, %bb.ao
  %i.fl = phi ptr [ %.promoted.i.i, %bb.ao ], [ %i.fi, %.lr.ph.i.i ]
  %i.fm = icmp eq ptr %i.fl, %i.m
  br i1 %i.fm, label %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread10, label %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread, !prof !669

_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread10: ; preds = %bb.ap, %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit
  %.not9 = icmp eq ptr %2, null
  br i1 %.not9, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !789
  br label %bb.as

_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread: ; preds = %bb.z, %_ZL11parse_spacePPKcS0_.exit.i47.i.i, %_ZL26parse_feature_value_prefixPPKcS0_P12hb_feature_t.exit.i, %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i, %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread, %bb.ar, %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread10, %bb.aq
  %.0 = phi i32 [ 1, %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread10 ], [ 1, %bb.aq ], [ 0, %bb.ar ], [ 0, %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @hb_feature_to_string(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 19 uses
  %.not = icmp eq i32 %2, 0
  %.0.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br i1 %.not, label %bb.v, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !427  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 45, ptr %i.a, align 16, !tbaa !61
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.sroa.phi = phi ptr [ %.0.sroa.gep, %bb.c ], [ %i.a, %bb.b ] ; 4 uses
  %.0 = phi i64 [ 5, %bb.c ], [ 4, %bb.b ]        ; 6 uses
  %i.e = load i32, ptr %0, align 4, !tbaa !421    ; 4 uses
  %i.f = lshr i32 %i.e, 24
  %i.g = trunc nuw i32 %i.f to i8
  store i8 %i.g, ptr %.0.sroa.phi, align 1, !tbaa !61
  %i.h = lshr i32 %i.e, 16
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %.0.sroa.phi, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !61
  %i.k = lshr i32 %i.e, 8
  %i.l = trunc i32 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %.0.sroa.phi, i64 2
  store i8 %i.l, ptr %i.m, align 1, !tbaa !61
  %i.n = trunc i32 %i.e to i8
  %i.o = getelementptr inbounds nuw i8, ptr %.0.sroa.phi, i64 3
  store i8 %i.n, ptr %i.o, align 1, !tbaa !61
  %i.p = add nsw i64 %.0, -1                      ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !61
  %i.s = icmp eq i8 %i.r, 32
  br i1 %i.s, label %bb.e, label %.critedge.split.loop.exit70, !llvm.loop !790

bb.e:                                             ; preds = %bb.d
  %.not15 = icmp eq i64 %i.p, 0
  br i1 %.not15, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i64 %.0, -2                      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !61
  %i.w = icmp eq i8 %i.v, 32
  br i1 %i.w, label %bb.g, label %.critedge.split.loop.exit70, !llvm.loop !790

bb.g:                                             ; preds = %bb.f
  %i.x = add nsw i64 %.0, -3                      ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !61
  %i.aa = icmp eq i8 %i.z, 32
  br i1 %i.aa, label %bb.h, label %.critedge.split.loop.exit70, !llvm.loop !790

bb.h:                                             ; preds = %bb.g
  %.not15.2 = icmp eq i64 %i.x, 0
  br i1 %.not15.2, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nsw i64 %.0, -4                     ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !61
  %i.ae = icmp eq i8 %i.ad, 32
  br i1 %i.ae, label %bb.j, label %.critedge.split.loop.exit70, !llvm.loop !790

bb.j:                                             ; preds = %bb.i
  %.not15.3 = icmp eq i64 %i.ab, 0
  br i1 %.not15.3, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr i8, ptr %i.a, i64 %.0
  %i.ag = getelementptr i8, ptr %i.af, i64 -5
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !61
  %i.ai = icmp eq i8 %i.ah, 32
  br i1 %i.ai, label %.critedge, label %.critedge.split.loop.exit70, !llvm.loop !790

.critedge.split.loop.exit70:                      ; preds = %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  %indvars.iv73.lcssa = phi i64 [ %.0, %bb.d ], [ %i.p, %bb.f ], [ %i.t, %bb.g ], [ %i.x, %bb.i ], [ %i.ab, %bb.k ]
  %i.aj = trunc nuw i64 %indvars.iv73.lcssa to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.h, %bb.j, %bb.k, %.critedge.split.loop.exit70
  %storemerge.lcssa = phi i32 [ %i.aj, %.critedge.split.loop.exit70 ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.e ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !785 ; 2 uses
  %.not16 = icmp eq i32 %i.al, 0
  br i1 %.not16, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !786 ; 2 uses
  %.not17 = icmp eq i32 %i.an, -1
  br i1 %.not17, label %bb.r, label %.thread

.thread:                                          ; preds = %bb.l
  %i.ao = add i32 %storemerge.lcssa, 1
  %i.ap = zext i32 %storemerge.lcssa to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ap
  store i8 91, ptr %i.aq, align 1, !tbaa !61
  br label %bb.n

bb.m:                                             ; preds = %.critedge
  %i.ar = add i32 %storemerge.lcssa, 1            ; 2 uses
  %i.as = zext i32 %storemerge.lcssa to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.as
  store i8 91, ptr %i.at, align 1, !tbaa !61
  %i.au = zext i32 %i.ar to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.au
  %i.aw = sub nuw i32 127, %storemerge.lcssa
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.av, i64 noundef %i.ax, ptr noundef nonnull @.str.21, i32 noundef %i.al) #63
  %.sroa.speculated39 = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 0)
  %i.az = add i32 %.sroa.speculated39, %i.ar
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !786
  %.pre63 = load i32, ptr %i.ak, align 4, !tbaa !785
  %i.ba = add i32 %.pre63, 1
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  %i.bb = phi i32 [ 1, %.thread ], [ %i.ba, %bb.m ]
  %i.bc = phi i32 [ %i.an, %.thread ], [ %.pre, %bb.m ] ; 3 uses
  %.1 = phi i32 [ %i.ao, %.thread ], [ %i.az, %bb.m ] ; 4 uses
  %.not19 = icmp eq i32 %i.bc, %i.bb
  br i1 %.not19, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = add i32 %.1, 1                          ; 3 uses
  %i.be = zext i32 %.1 to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  store i8 58, ptr %i.bf, align 1, !tbaa !61
  %.not20 = icmp eq i32 %i.bc, -1
  br i1 %.not20, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = zext i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  %i.bi = sub nuw i32 127, %.1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bh, i64 noundef %i.bj, ptr noundef nonnull @.str.21, i32 noundef %i.bc) #63
  %.sroa.speculated33 = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 0)
  %i.bl = add i32 %.sroa.speculated33, %i.bd
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.2 = phi i32 [ %.1, %bb.n ], [ %i.bd, %bb.o ], [ %i.bl, %bb.p ] ; 2 uses
  %i.bm = add i32 %.2, 1
  %i.bn = zext i32 %.2 to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  store i8 93, ptr %i.bo, align 1, !tbaa !61
  %.pre64 = load i32, ptr %i.b, align 4, !tbaa !427
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %i.bp = phi i32 [ %i.c, %bb.l ], [ %.pre64, %bb.q ] ; 2 uses
  %.3 = phi i32 [ %storemerge.lcssa, %bb.l ], [ %i.bm, %bb.q ] ; 4 uses
  %i.bq = icmp ugt i32 %i.bp, 1
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.br = add i32 %.3, 1                          ; 2 uses
  %i.bs = zext i32 %.3 to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bs
  store i8 61, ptr %i.bt, align 1, !tbaa !61
  %i.bu = zext i32 %i.br to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bu
  %i.bw = sub nuw i32 127, %.3
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bv, i64 noundef %i.bx, ptr noundef nonnull @.str.21, i32 noundef %i.bp) #63
  %.sroa.speculated27 = tail call i32 @llvm.smax.i32(i32 %i.by, i32 0)
  %i.bz = add i32 %.sroa.speculated27, %i.br
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.4 = phi i32 [ %i.bz, %bb.s ], [ %.3, %bb.r ]
  %i.ca = add i32 %2, -1
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %.4, i32 %i.ca) ; 2 uses
  %i.cb = zext i32 %.sroa.speculated to i64       ; 2 uses
  %.not.i24 = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not.i24, label %_ZL9hb_memcpyPvPKvm.exit, label %bb.u, !prof !48

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull readonly align 16 %i.a, i64 %i.cb, i1 false), !alias.scope !791
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.t, %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cb
  store i8 0, ptr %i.cc, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %_ZL9hb_memcpyPvPKvm.exit
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #23

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @hb_variation_from_string(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #24 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %struct.hb_variation_t, align 8     ; 5 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !574
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  %i.d = icmp slt i32 %1, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #68
  %i.f = trunc i64 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.06 = phi i32 [ %i.f, %bb.b ], [ %1, %bb.a ]
  %i.g = sext i32 %.06 to i64                     ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g ; 8 uses
  %i.i = call fastcc noundef zeroext i1 @_ZL9parse_tagPPKcS0_Pj(ptr noundef nonnull %i.c, ptr noundef readnone %i.h, ptr noundef nonnull %3)
  br i1 %i.i, label %bb.d, label %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread, !prof !383

bb.d:                                             ; preds = %bb.c
  %.promoted.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !574 ; 5 uses
  %i.j = icmp ult ptr %.promoted.i.i.i.i, %i.h
  br i1 %i.j, label %.lr.ph.i.i.i.i.preheader, label %_ZL11parse_spacePPKcS0_.exit.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %.promoted.i.i.i.i19 = ptrtoaddr ptr %.promoted.i.i.i.i to i64
  %i.k = add i64 %i.a, %i.g
  %i.l = sub i64 %i.k, %.promoted.i.i.i.i19
  %scevgep = getelementptr i8, ptr %.promoted.i.i.i.i, i64 %i.l
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.e
  %i.m = phi ptr [ %i.o, %bb.e ], [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !61
  switch i8 %i.n, label %_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit [
    i8 32, label %bb.e
    i8 13, label %bb.e
    i8 12, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 11, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq ptr %i.o, %i.h
  br i1 %exitcond.not.i.i.i.i, label %_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !784

_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit:      ; preds = %.lr.ph.i.i.i.i, %bb.e
  %i.p = phi ptr [ %scevgep, %bb.e ], [ %i.m, %.lr.ph.i.i.i.i ] ; 2 uses
  store ptr %i.p, ptr %i.c, align 8
  br label %_ZL11parse_spacePPKcS0_.exit.i.i.i

_ZL11parse_spacePPKcS0_.exit.i.i.i:               ; preds = %_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit, %bb.d
  %i.q = phi ptr [ %.promoted.i.i.i.i, %bb.d ], [ %i.p, %_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit ] ; 3 uses
  %i.r = icmp eq ptr %i.q, %i.h
  br i1 %i.r, label %_ZL10parse_charPPKcS0_c.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZL11parse_spacePPKcS0_.exit.i.i.i
  %i.s = load i8, ptr %i.q, align 1, !tbaa !61
  %.not.i.i.i = icmp eq i8 %i.s, 61
  br i1 %.not.i.i.i, label %bb.g, label %_ZL10parse_charPPKcS0_c.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.t, ptr %i.c, align 8, !tbaa !574
  br label %_ZL10parse_charPPKcS0_c.exit.i.i

_ZL10parse_charPPKcS0_c.exit.i.i:                 ; preds = %bb.g, %bb.f, %_ZL11parse_spacePPKcS0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  %i.u = call noundef zeroext i1 @_Z15hb_parse_doublePPKcS0_Pdb(ptr noundef nonnull %i.c, ptr noundef readnone %i.h, ptr noundef nonnull %i.b, i1 noundef zeroext false)
  br i1 %i.u, label %bb.h, label %_ZL21parse_variation_valuePPKcS0_P14hb_variation_t.exit.i, !prof !49

_ZL21parse_variation_valuePPKcS0_P14hb_variation_t.exit.i: ; preds = %_ZL10parse_charPPKcS0_c.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  br label %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread

bb.h:                                             ; preds = %_ZL10parse_charPPKcS0_c.exit.i.i
  %i.v = load double, ptr %i.b, align 8, !tbaa !795
  %i.w = fptrunc double %i.v to float
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.w, ptr %i.x, align 4, !tbaa !796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  %.promoted.i.i = load ptr, ptr %i.c, align 8, !tbaa !574 ; 3 uses
  %i.y = icmp ult ptr %.promoted.i.i, %i.h
  br i1 %i.y, label %.lr.ph.i.i, label %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %i.z = phi ptr [ %i.ab, %bb.i ], [ %.promoted.i.i, %bb.h ] ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !61
  switch i8 %i.aa, label %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit [
    i8 32, label %bb.i
    i8 13, label %bb.i
    i8 12, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 11, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.ab, %i.h
  br i1 %exitcond.not.i.i, label %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread10, label %.lr.ph.i.i, !llvm.loop !784

_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit: ; preds = %.lr.ph.i.i, %bb.h
  %i.ac = phi ptr [ %.promoted.i.i, %bb.h ], [ %i.z, %.lr.ph.i.i ]
  %i.ad = icmp eq ptr %i.ac, %i.h
  br i1 %i.ad, label %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread10, label %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread, !prof !669

_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread10: ; preds = %bb.i, %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit
  %.not9 = icmp eq ptr %2, null
  br i1 %.not9, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread10
  %i.ae = load i64, ptr %3, align 8
  store i64 %i.ae, ptr %2, align 4
  br label %bb.l

_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread: ; preds = %bb.c, %_ZL21parse_variation_valuePPKcS0_P14hb_variation_t.exit.i, %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread
  store i64 0, ptr %2, align 1
  br label %bb.l

bb.l:                                             ; preds = %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread, %bb.k, %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread10, %bb.j
  %.0 = phi i32 [ 1, %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread10 ], [ 1, %bb.j ], [ 0, %bb.k ], [ 0, %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @hb_variation_to_string(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 9 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.g, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.b = load i32, ptr %0, align 4, !tbaa !798    ; 4 uses
  %i.c = lshr i32 %i.b, 24                        ; 2 uses
  %i.d = trunc nuw i32 %i.c to i8
  store i8 %i.d, ptr %i.a, align 16, !tbaa !61
  %i.e = lshr i32 %i.b, 16
  %i.f = trunc i32 %i.e to i8                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.g, align 1, !tbaa !61
  %i.h = lshr i32 %i.b, 8
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.i, ptr %i.j, align 2, !tbaa !61
  %i.k = trunc i32 %i.b to i8                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.k, ptr %i.l, align 1, !tbaa !61
  %i.m = icmp eq i8 %i.k, 32
  br i1 %i.m, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i8 %i.i, 32
  br i1 %i.n, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i8 %i.f, 32
end_hunk_8
begin_hunk_9_@_Z12hb_parse_intPPKcS0_Pib:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  store ptr %i.a, ptr %i.b, align 8, !tbaa !574
  %i.k = tail call ptr @__errno_location() #67    ; 2 uses
  store i32 0, ptr %i.k, align 4, !tbaa !139
  %i.l = call noundef i64 @__isoc23_strtol(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 10) #63
  %i.m = trunc i64 %i.l to i32
  store i32 %i.m, ptr %2, align 4, !tbaa !139
  %i.n = load i32, ptr %i.k, align 4, !tbaa !139
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.b, label %"_ZL13_parse_numberIiZ12hb_parse_intPPKcS1_PibE3$_0EbS2_S1_PT_bT0_.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !574  ; 3 uses
  %i.p = icmp ne ptr %i.a, %i.o                   ; 2 uses
  %brmerge.not.i = and i1 %3, %i.p
  br i1 %brmerge.not.i, label %.split.i, label %bb.c, !prof !729

.split.i:                                         ; preds = %bb.b
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.a to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !574    ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.d, %i.u
  %.not22.i = icmp eq i64 %i.s, %i.v
  br i1 %.not22.i, label %bb.d, label %"_ZL13_parse_numberIiZ12hb_parse_intPPKcS1_PibE3$_0EbS2_S1_PT_bT0_.exit", !prof !669

bb.c:                                             ; preds = %bb.b
  br i1 %i.p, label %._crit_edge.i, label %"_ZL13_parse_numberIiZ12hb_parse_intPPKcS1_PibE3$_0EbS2_S1_PT_bT0_.exit", !prof !669

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !574
  %.pre23.i = ptrtoint ptr %i.o to i64
  %.pre24.i = ptrtoint ptr %i.a to i64
  %.pre26.i = sub i64 %.pre23.i, %.pre24.i
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.split.i
  %.pre-phi27.i = phi i64 [ %.pre26.i, %._crit_edge.i ], [ %i.s, %.split.i ]
  %i.w = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.t, %.split.i ]
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %.pre-phi27.i
  store ptr %i.x, ptr %0, align 8, !tbaa !574
  br label %"_ZL13_parse_numberIiZ12hb_parse_intPPKcS1_PibE3$_0EbS2_S1_PT_bT0_.exit"

"_ZL13_parse_numberIiZ12hb_parse_intPPKcS1_PibE3$_0EbS2_S1_PT_bT0_.exit": ; preds = %bb.a, %.split.i, %bb.c, %bb.d
  %.0.i = phi i1 [ false, %.split.i ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_Z13hb_parse_uintPPKcS0_Pjbi(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.c = load ptr, ptr %0, align 8, !tbaa !574    ; 2 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 31)
  %i.h = zext nneg i32 %.sroa.speculated.i to i64 ; 2 uses
  %i.i = call ptr @strncpy(ptr noundef nonnull %i.a, ptr noundef %i.c, i64 noundef %i.h) #63 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  store ptr %i.a, ptr %i.b, align 8, !tbaa !574
  %i.k = tail call ptr @__errno_location() #67    ; 2 uses
  store i32 0, ptr %i.k, align 4, !tbaa !139
  %i.l = call noundef i64 @__isoc23_strtoul(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %4) #63
  %i.m = trunc i64 %i.l to i32
  store i32 %i.m, ptr %2, align 4, !tbaa !139
  %i.n = load i32, ptr %i.k, align 4, !tbaa !139
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.b, label %"_ZL13_parse_numberIjZ13hb_parse_uintPPKcS1_PjbiE3$_0EbS2_S1_PT_bT0_.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !574  ; 3 uses
  %i.p = icmp ne ptr %i.a, %i.o                   ; 2 uses
  %brmerge.not.i = and i1 %3, %i.p
  br i1 %brmerge.not.i, label %.split.i, label %bb.c, !prof !729

.split.i:                                         ; preds = %bb.b
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.a to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !574    ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.d, %i.u
  %.not22.i = icmp eq i64 %i.s, %i.v
  br i1 %.not22.i, label %bb.d, label %"_ZL13_parse_numberIjZ13hb_parse_uintPPKcS1_PjbiE3$_0EbS2_S1_PT_bT0_.exit", !prof !669

bb.c:                                             ; preds = %bb.b
  br i1 %i.p, label %._crit_edge.i, label %"_ZL13_parse_numberIjZ13hb_parse_uintPPKcS1_PjbiE3$_0EbS2_S1_PT_bT0_.exit", !prof !669

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !574
  %.pre23.i = ptrtoint ptr %i.o to i64
  %.pre24.i = ptrtoint ptr %i.a to i64
  %.pre26.i = sub i64 %.pre23.i, %.pre24.i
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.split.i
  %.pre-phi27.i = phi i64 [ %.pre26.i, %._crit_edge.i ], [ %i.s, %.split.i ]
  %i.w = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.t, %.split.i ]
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %.pre-phi27.i
  store ptr %i.x, ptr %0, align 8, !tbaa !574
  br label %"_ZL13_parse_numberIjZ13hb_parse_uintPPKcS1_PjbiE3$_0EbS2_S1_PT_bT0_.exit"

"_ZL13_parse_numberIjZ13hb_parse_uintPPKcS1_PjbiE3$_0EbS2_S1_PT_bT0_.exit": ; preds = %bb.a, %.split.i, %bb.c, %bb.d
  %.0.i = phi i1 [ false, %.split.i ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_Z15hb_parse_doublePPKcS0_Pdb(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef writeonly captures(none) %2, i1 noundef zeroext %3) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !574    ; 6 uses
  %i.b = ptrtoaddr ptr %i.a to i64                ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.d = icmp ult ptr %i.a, %1
  br i1 %i.d, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = sub i64 %i.c, %i.b
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.e
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.078155.i = phi ptr [ %i.g, %bb.b ], [ %i.a, %.lr.ph.preheader.i ] ; 3 uses
  %i.f = load i8, ptr %.078155.i, align 1, !tbaa !61
  switch i8 %i.f, label %.critedge.loopexit.i [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 11, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.078155.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.g, %1
  br i1 %exitcond.not.i, label %.critedge.loopexit.i, label %.lr.ph.i, !llvm.loop !1499

.critedge.loopexit.i:                             ; preds = %bb.b, %.lr.ph.i
  %.078.lcssa.ph.i = phi ptr [ %scevgep.i, %bb.b ], [ %.078155.i, %.lr.ph.i ] ; 2 uses
  %.pre.i = ptrtoaddr ptr %.078.lcssa.ph.i to i64
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.a
  %.078.lcssa158.pre-phi.i = phi i64 [ %.pre.i, %.critedge.loopexit.i ], [ %i.b, %bb.a ]
  %.078.lcssa.i = phi ptr [ %.078.lcssa.ph.i, %.critedge.loopexit.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.h = icmp eq ptr %.078.lcssa.i, %1
  br i1 %i.h, label %_ZL9strtod_rlPKcPS0_.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.critedge.i
  %i.i = sub i64 %i.c, %.078.lcssa158.pre-phi.i
  %scevgep159.i = getelementptr i8, ptr %.078.lcssa.i, i64 %i.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.m, %.preheader.preheader.i
  %.179.i = phi ptr [ %i.bb, %bb.m ], [ %.078.lcssa.i, %.preheader.preheader.i ] ; 3 uses
  %.074.i = phi double [ %.175.i, %bb.m ], [ 0.000000e+00, %.preheader.preheader.i ] ; 8 uses
  %.071.i = phi double [ %.172.i, %bb.m ], [ 0.000000e+00, %.preheader.preheader.i ] ; 9 uses
  %.068.i = phi double [ %.169.i, %bb.m ], [ 0.000000e+00, %.preheader.preheader.i ] ; 8 uses
  %.065.i = phi i32 [ %.166.i, %bb.m ], [ 0, %.preheader.preheader.i ] ; 9 uses
  %.062.i = phi i1 [ %.163.i, %bb.m ], [ false, %.preheader.preheader.i ] ; 7 uses
  %.059.i = phi i8 [ %.160.i, %bb.m ], [ 0, %.preheader.preheader.i ] ; 7 uses
  %.058.i = phi i1 [ %.1.i, %bb.m ], [ false, %.preheader.preheader.i ] ; 8 uses
  %.0.i = phi i32 [ %i.aj, %bb.m ], [ 1, %.preheader.preheader.i ] ; 2 uses
  %i.j = shl nsw i32 %.0.i, 1
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr @_ZL25_double_parser_trans_keys, i64 %i.k ; 2 uses
  %i.m = sext i32 %.0.i to i64                    ; 2 uses
  %i.n = getelementptr inbounds i8, ptr @_ZL28_double_parser_index_offsets, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !61
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZL23_double_parser_indicies, i64 %i.p
  %i.r = getelementptr inbounds i8, ptr @_ZL24_double_parser_key_spans, i64 %i.m
  %i.s = load i8, ptr %i.r, align 1, !tbaa !61
  %i.t = sext i8 %i.s to i32                      ; 2 uses
  %i.u = load i8, ptr %i.l, align 2, !tbaa !61
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = load i8, ptr %.179.i, align 1, !tbaa !61
  %i.x = sext i8 %i.w to i32                      ; 6 uses
  %.not.i = icmp sgt i32 %i.v, %i.x
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !61
  %i.aa = zext i8 %i.z to i32
  %.not88.i = icmp samesign ugt i32 %i.x, %i.aa
  %i.ab = sub nuw nsw i32 %i.x, %i.v
  %spec.select.i = select i1 %.not88.i, i32 %i.t, i32 %i.ab
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %i.ac = phi i32 [ %i.t, %.preheader.i ], [ %spec.select.i, %bb.c ]
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.q, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !61  ; 2 uses
  %i.ag = sext i8 %i.af to i64                    ; 3 uses
  %i.ah = getelementptr inbounds i8, ptr @_ZL26_double_parser_trans_targs, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !61
  %i.aj = sext i8 %i.ai to i32
  %i.ak = shl nuw i64 1, %i.ag
  %i.al = and i64 %i.ak, 587
  %.not89.i = icmp eq i64 %i.al, 0
  br i1 %.not89.i, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds i8, ptr @_ZL28_double_parser_trans_actions, i64 %i.ag
  %i.an = load i8, ptr %i.am, align 1, !tbaa !61
  switch i8 %i.an, label %bb.l [
    i8 1, label %bb.f
    i8 4, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 5, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %i.ao = add nsw i32 %i.x, -48
  %i.ap = sitofp i32 %i.ao to double
  %i.aq = tail call double @llvm.fmuladd.f64(double %.074.i, double 1.000000e+01, double %i.ap)
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  %i.ar = fcmp ugt double %.071.i, f0x42F9999999999990
  br i1 %i.ar, label %bb.l, label %bb.j, !prof !48

bb.j:                                             ; preds = %bb.i
  %i.as = add nsw i32 %i.x, -48
  %i.at = sitofp i32 %i.as to double
  %i.au = tail call double @llvm.fmuladd.f64(double %.071.i, double 1.000000e+01, double %i.at)
  %i.av = fadd double %.068.i, 1.000000e+00
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.aw = mul i32 %.065.i, 10
  %i.ax = add i32 %i.aw, -48
  %i.ay = add i32 %i.ax, %i.x                     ; 2 uses
  %i.az = icmp ugt i32 %i.ay, 2047                ; 2 uses
  %..065.i = select i1 %i.az, i32 %.065.i, i32 %i.ay, !prof !48
  %.058..i = select i1 %i.az, i1 true, i1 %.058.i, !prof !48
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.175.i = phi double [ %.074.i, %bb.d ], [ %.074.i, %bb.e ], [ %.074.i, %bb.f ], [ %.074.i, %bb.g ], [ %i.aq, %bb.h ], [ %.074.i, %bb.j ], [ %.074.i, %bb.i ], [ %.074.i, %bb.k ] ; 3 uses
  %.172.i = phi double [ %.071.i, %bb.d ], [ %.071.i, %bb.e ], [ %.071.i, %bb.f ], [ %.071.i, %bb.g ], [ %.071.i, %bb.h ], [ %i.au, %bb.j ], [ %.071.i, %bb.i ], [ %.071.i, %bb.k ] ; 2 uses
  %.169.i = phi double [ %.068.i, %bb.d ], [ %.068.i, %bb.e ], [ %.068.i, %bb.f ], [ %.068.i, %bb.g ], [ %.068.i, %bb.h ], [ %i.av, %bb.j ], [ %.068.i, %bb.i ], [ %.068.i, %bb.k ] ; 3 uses
  %.166.i = phi i32 [ %.065.i, %bb.d ], [ %.065.i, %bb.e ], [ %.065.i, %bb.f ], [ %.065.i, %bb.g ], [ %.065.i, %bb.h ], [ %.065.i, %bb.j ], [ %.065.i, %bb.i ], [ %..065.i, %bb.k ] ; 4 uses
  %.163.i = phi i1 [ %.062.i, %bb.d ], [ %.062.i, %bb.e ], [ true, %bb.f ], [ %.062.i, %bb.g ], [ %.062.i, %bb.h ], [ %.062.i, %bb.j ], [ %.062.i, %bb.i ], [ %.062.i, %bb.k ] ; 4 uses
  %.160.i = phi i8 [ %.059.i, %bb.d ], [ %.059.i, %bb.e ], [ %.059.i, %bb.f ], [ 1, %bb.g ], [ %.059.i, %bb.h ], [ %.059.i, %bb.j ], [ %.059.i, %bb.i ], [ %.059.i, %bb.k ] ; 3 uses
  %.1.i = phi i1 [ %.058.i, %bb.d ], [ %.058.i, %bb.e ], [ %.058.i, %bb.f ], [ %.058.i, %bb.g ], [ %.058.i, %bb.h ], [ %.058.i, %bb.j ], [ %.058.i, %bb.i ], [ %.058..i, %bb.k ] ; 2 uses
  %i.ba = icmp eq i8 %i.af, 1
  br i1 %i.ba, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %.179.i, i64 1 ; 2 uses
  %.not90.i = icmp eq ptr %i.bb, %1
  br i1 %.not90.i, label %bb.n, label %.preheader.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.280.i = phi ptr [ %scevgep159.i, %bb.m ], [ %.179.i, %bb.l ] ; 6 uses
  %i.bc = fcmp une double %.169.i, 0.000000e+00
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = fptoui double %.169.i to i32            ; 2 uses
  %i.be = and i32 %i.bd, 256
  %.not9.i.i = icmp eq i32 %i.be, 0
  %.1.i.i = select i1 %.not9.i.i, double 1.000000e+00, double 1.000000e+256 ; 2 uses
  %i.bf = fmul nnan double %.1.i.i, 1.000000e+128
  %i.bg = insertelement <8 x i32> poison, i32 %i.bd, i64 0
  %i.bh = shufflevector <8 x i32> %i.bg, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bi = and <8 x i32> %i.bh, <i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128>
  %i.bj = icmp eq <8 x i32> %i.bi, zeroinitializer ; 8 uses
  %i.bk = extractelement <8 x i1> %i.bj, i64 7
  %.1.1.i.i = select i1 %i.bk, double %.1.i.i, double %i.bf ; 2 uses
  %i.bl = fmul nnan double %.1.1.i.i, 1.000000e+64
  %i.bm = extractelement <8 x i1> %i.bj, i64 6
  %.1.2.i.i = select i1 %i.bm, double %.1.1.i.i, double %i.bl ; 2 uses
  %i.bn = fmul nnan double %.1.2.i.i, 1.000000e+32
  %i.bo = extractelement <8 x i1> %i.bj, i64 5
  %.1.3.i.i = select i1 %i.bo, double %.1.2.i.i, double %i.bn ; 2 uses
  %i.bp = fmul nnan double %.1.3.i.i, 1.000000e+16
  %i.bq = extractelement <8 x i1> %i.bj, i64 4
  %.1.4.i.i = select i1 %i.bq, double %.1.3.i.i, double %i.bp ; 2 uses
  %i.br = fmul nnan double %.1.4.i.i, 1.000000e+08
  %i.bs = extractelement <8 x i1> %i.bj, i64 3
  %.1.5.i.i = select i1 %i.bs, double %.1.4.i.i, double %i.br ; 2 uses
  %i.bt = fmul double %.1.5.i.i, 1.000000e+04
  %i.bu = extractelement <8 x i1> %i.bj, i64 2
  %.1.6.i.i = select i1 %i.bu, double %.1.5.i.i, double %i.bt ; 2 uses
  %i.bv = fmul double %.1.6.i.i, 1.000000e+02
  %i.bw = extractelement <8 x i1> %i.bj, i64 1
  %.1.7.i.i = select i1 %i.bw, double %.1.6.i.i, double %i.bv ; 2 uses
  %i.bx = fmul double %.1.7.i.i, 1.000000e+01
  %i.by = extractelement <8 x i1> %i.bj, i64 0
  %.1.8.i.i = select i1 %i.by, double %.1.7.i.i, double %i.bx
  %i.bz = fdiv double %.172.i, %.1.8.i.i
  %i.ca = fadd double %.175.i, %i.bz
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.3.i = phi double [ %i.ca, %bb.o ], [ %.175.i, %bb.n ] ; 3 uses
  %i.cb = fneg double %.3.i
  %.4.i = select i1 %.163.i, double %i.cb, double %.3.i ; 4 uses
  br i1 %.1.i, label %bb.q, label %bb.u, !prof !1500

bb.q:                                             ; preds = %bb.p
  %i.cc = fcmp oeq double %.3.i, 0.000000e+00
  br i1 %i.cc, label %_ZL9strtod_rlPKcPS0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = trunc nuw i8 %.160.i to i1
  br i1 %i.cd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ce = select i1 %.163.i, double f0x8010000000000000, double f0x0010000000000000
  br label %_ZL9strtod_rlPKcPS0_.exit

bb.t:                                             ; preds = %bb.r
  %i.cf = select i1 %.163.i, double f0xFFEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF
  br label %_ZL9strtod_rlPKcPS0_.exit

bb.u:                                             ; preds = %bb.p
  %.not91.i = icmp eq i32 %.166.i, 0
  br i1 %.not91.i, label %_ZL9strtod_rlPKcPS0_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = trunc nuw i8 %.160.i to i1
  %i.ch = and i32 %.166.i, 256
  %.not9.i92.i = icmp eq i32 %i.ch, 0
  %.1.i93.i = select i1 %.not9.i92.i, double 1.000000e+00, double 1.000000e+256 ; 2 uses
  %i.ci = insertelement <8 x i32> poison, i32 %.166.i, i64 0
  %i.cj = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ck = and <8 x i32> %i.cj, <i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128>
  %i.cl = fmul nnan double %.1.i93.i, 1.000000e+128
  %i.cm = icmp eq <8 x i32> %i.ck, zeroinitializer ; 8 uses
  %i.cn = extractelement <8 x i1> %i.cm, i64 7
  %.1.1.i95.i = select i1 %i.cn, double %.1.i93.i, double %i.cl ; 2 uses
  %i.co = fmul nnan double %.1.1.i95.i, 1.000000e+64
  %i.cp = extractelement <8 x i1> %i.cm, i64 6
  %.1.2.i97.i = select i1 %i.cp, double %.1.1.i95.i, double %i.co ; 2 uses
  %i.cq = fmul nnan double %.1.2.i97.i, 1.000000e+32
  %i.cr = extractelement <8 x i1> %i.cm, i64 5
  %.1.3.i99.i = select i1 %i.cr, double %.1.2.i97.i, double %i.cq ; 2 uses
  %i.cs = fmul nnan double %.1.3.i99.i, 1.000000e+16
  %i.ct = extractelement <8 x i1> %i.cm, i64 4
  %.1.4.i101.i = select i1 %i.ct, double %.1.3.i99.i, double %i.cs ; 2 uses
  %i.cu = fmul nnan double %.1.4.i101.i, 1.000000e+08
  %i.cv = extractelement <8 x i1> %i.cm, i64 3
  %.1.5.i103.i = select i1 %i.cv, double %.1.4.i101.i, double %i.cu ; 2 uses
  %i.cw = fmul double %.1.5.i103.i, 1.000000e+04
  %i.cx = extractelement <8 x i1> %i.cm, i64 2
  %.1.6.i105.i = select i1 %i.cx, double %.1.5.i103.i, double %i.cw ; 2 uses
  %i.cy = fmul double %.1.6.i105.i, 1.000000e+02
  %i.cz = extractelement <8 x i1> %i.cm, i64 1
  %.1.7.i107.i = select i1 %i.cz, double %.1.6.i105.i, double %i.cy ; 2 uses
  %i.da = fmul double %.1.7.i107.i, 1.000000e+01
  %i.db = extractelement <8 x i1> %i.cm, i64 0
  %.1.8.i109.i = select i1 %i.db, double %.1.7.i107.i, double %i.da ; 2 uses
  br i1 %i.cg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dc = fdiv double %.4.i, %.1.8.i109.i
  br label %_ZL9strtod_rlPKcPS0_.exit

bb.x:                                             ; preds = %bb.v
  %i.dd = fmul double %.1.8.i109.i, %.4.i
  br label %_ZL9strtod_rlPKcPS0_.exit

_ZL9strtod_rlPKcPS0_.exit:                        ; preds = %.critedge.i, %bb.q, %bb.s, %bb.t, %bb.u, %bb.w, %bb.x
  %.010 = phi ptr [ %.280.i, %bb.x ], [ %.280.i, %bb.q ], [ %.280.i, %bb.s ], [ %.280.i, %bb.t ], [ %.280.i, %bb.u ], [ %.280.i, %bb.w ], [ %.078.lcssa.i, %.critedge.i ] ; 3 uses
  %.077.i = phi double [ %i.dd, %bb.x ], [ %.4.i, %bb.q ], [ %i.ce, %bb.s ], [ %i.cf, %bb.t ], [ %.4.i, %bb.u ], [ %i.dc, %bb.w ], [ 0.000000e+00, %.critedge.i ]
  store double %.077.i, ptr %2, align 8, !tbaa !795
  %i.de = icmp eq ptr %i.a, %.010
  br i1 %i.de, label %bb.z, label %bb.y, !prof !48

bb.y:                                             ; preds = %_ZL9strtod_rlPKcPS0_.exit
  store ptr %.010, ptr %0, align 8, !tbaa !574
  %i.df = icmp eq ptr %1, %.010
  %not. = xor i1 %3, true
  %i.dg = or i1 %i.df, %not.
  br label %bb.z
end_hunk_9
begin_hunk_10_@hb_ot_color_glyph_reference_png:bb.a
  tail call void @_ZN16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i32)
  %i.bk = load atomic ptr, ptr %i.bd acquire, align 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i33, label %.lr.ph.i.i.i29, label %_ZNK16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_EptEv.exit34, !prof !50

_ZNK16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_EptEv.exit34: ; preds = %.lr.ph.i.i.i29, %bb.t, %bb.u, %bb.q
  %.19.ph.i.i.i28 = phi ptr [ %i.bf, %bb.q ], [ @_hb_NullPool, %.lr.ph.i.i.i29 ], [ %i.bk, %bb.u ], [ %.07.i.i.i32, %bb.t ]
  %i.bl = tail call noundef ptr @_ZNK2OT4CBDT13accelerator_t13reference_pngEP9hb_font_tj(ptr noundef nonnull align 8 dereferenceable(20) %.19.ph.i.i.i28, ptr noundef %0, i32 noundef %1)
  br label %bb.v

bb.v:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_EptEv.exit34, %_ZNK16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_EptEv.exit, %bb.k
  %.1 = phi ptr [ %.0, %bb.k ], [ %i.bl, %_ZNK16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_EptEv.exit34 ], [ %.0, %_ZNK16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_EptEv.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2OT4CBDT13accelerator_t13reference_pngEP9hb_font_tj(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr @_hb_NullPool, ptr %i.a ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !57
  %i.f = icmp ult i32 %i.e, 8
  %spec.select.i.i1.i.i = select i1 %i.f, ptr @_hb_NullPool, ptr %i.c ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 4 ; 5 uses
  %i.h = load i32, ptr %i.g, align 1, !tbaa !58   ; 2 uses
  %i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.h) ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit, label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit.i, !prof !48

_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.l = load i32, ptr %i.j, align 4, !tbaa !139
  %i.m = load i32, ptr %i.k, align 4, !tbaa !139
  %i.n = tail call i32 @llvm.umax.i32(i32 %i.l, i32 %i.m) ; 2 uses
  %.not26.i = icmp eq i32 %i.n, 0
  %spec.store.select.i = select i1 %.not26.i, i32 1073741824, i32 %i.n ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.o = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 52
  %i.p = load i32, ptr %i.g, align 1, !tbaa !58
  %.not.i30.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i30.not.i, label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i, label %bb.b, !prof !48

bb.b:                                             ; preds = %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.q = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 8
  br label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i

_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i: ; preds = %bb.b, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit.i
  %.0.i31.i = phi ptr [ %i.q, %bb.b ], [ @_hb_NullPool, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit.i ]
  %i.r = icmp ugt i32 %i.i, 1
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i
  %i.s = load i8, ptr %i.o, align 1, !tbaa !92
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i31.i, i64 45
  %i.u = load i8, ptr %i.t, align 1, !tbaa !92
  %i.v = tail call i8 @llvm.umax.i8(i8 %i.s, i8 %i.u)
  %i.w = zext i8 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 8
  %wide.trip.count.i = zext i32 %i.i to i64
  br label %bb.d

._crit_edge.i:                                    ; preds = %bb.h, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i
  %.022.lcssa.i = phi i32 [ 0, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i ], [ %.123.i, %bb.h ] ; 2 uses
  %i.y = load i32, ptr %i.g, align 1, !tbaa !58
  %i.z = tail call noundef i32 @llvm.bswap.i32(i32 %i.y)
  %.not.i34.i = icmp ult i32 %.022.lcssa.i, %i.z
  br i1 %.not.i34.i, label %bb.c, label %_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit, !prof !49

bb.c:                                             ; preds = %._crit_edge.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 8
  %i.ab = zext i32 %.022.lcssa.i to i64
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %i.ab
  br label %_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 5 uses
  %.02148.i = phi i32 [ %i.w, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 4 uses
  %.02247.i = phi i32 [ 0, %.lr.ph.i ], [ %.123.i, %bb.h ]
  %i.ad = load i32, ptr %i.g, align 1, !tbaa !58
  %i.ae = tail call noundef i32 @llvm.bswap.i32(i32 %i.ad)
  %i.af = zext i32 %i.ae to i64
  %.not.i37.i = icmp samesign ult i64 %indvars.iv.i, %i.af
  br i1 %.not.i37.i, label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i, label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i, !prof !49

_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %indvars.iv.i ; 2 uses
  %.pre.i = load i32, ptr %i.g, align 1, !tbaa !58
  %.pre51.i = tail call noundef i32 @llvm.bswap.i32(i32 %.pre.i)
  %.pre52.i = zext i32 %.pre51.i to i64
  %i.ah = icmp samesign ult i64 %indvars.iv.i, %.pre52.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 44 ; 2 uses
  br i1 %i.ah, label %bb.e, label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i, !prof !669

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  br label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i

_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i: ; preds = %bb.e, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i, %bb.d
  %i.aj = phi ptr [ %i.ai, %bb.e ], [ %i.ai, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i ], [ getelementptr inbounds nuw (i8, ptr @_hb_NullPool, i64 44), %bb.d ]
  %.0.i41.i = phi ptr [ %i.ag, %bb.e ], [ @_hb_NullPool, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i ], [ @_hb_NullPool, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i41.i, i64 45
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !92
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !92
  %i.an = tail call i8 @llvm.umax.i8(i8 %i.al, i8 %i.am)
  %i.ao = zext i8 %i.an to i32                    ; 4 uses
  %.not27.i = icmp ule i32 %spec.store.select.i, %i.ao
  %i.ap = icmp samesign ugt i32 %.02148.i, %i.ao
  %or.cond.i = select i1 %.not27.i, i1 %i.ap, i1 false
  br i1 %or.cond.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i
  %i.aq = icmp ugt i32 %spec.store.select.i, %.02148.i
  %i.ar = icmp samesign ult i32 %.02148.i, %i.ao
  %or.cond28.i = and i1 %i.aq, %i.ar
  br i1 %or.cond28.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i
  %i.as = trunc nuw i64 %indvars.iv.i to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.123.i = phi i32 [ %i.as, %bb.g ], [ %.02247.i, %bb.f ] ; 2 uses
  %.1.i = phi i32 [ %i.ao, %bb.g ], [ %.02148.i, %bb.f ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !1597

_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit:     ; preds = %bb.a, %._crit_edge.i, %bb.c
  %.024.i = phi ptr [ @_hb_NullPool, %bb.a ], [ %i.ac, %bb.c ], [ @_hb_NullPool, %._crit_edge.i ] ; 4 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.at, null
  %spec.select.i.i.i.i20 = select i1 %.not.i.i.i.i19, ptr @_hb_NullPool, ptr %i.at ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i20, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !54
  %i.aw = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i20, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !57
  %i.ay = icmp ult i32 %i.ax, 8
  %spec.select.i.i1.i.i21 = select i1 %i.ay, ptr @_hb_NullPool, ptr %i.av
  %i.az = load i32, ptr %.024.i, align 1, !tbaa !58
  %i.ba = tail call noundef i32 @llvm.bswap.i32(i32 %i.az)
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i21, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.024.i, i64 8
  %i.be = load i32, ptr %i.bd, align 1, !tbaa !58 ; 2 uses
  %.not27.i.i = icmp eq i32 %i.be, 0
  br i1 %.not27.i.i, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit
  %i.bf = tail call noundef i32 @llvm.bswap.i32(i32 %i.be)
  %wide.trip.count.i.i = zext i32 %i.bf to i64
  br label %.lr.ph.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread, label %.lr.ph.i.i, !llvm.loop !1598

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i.i ; 3 uses
  %i.bh = load i16, ptr %i.bg, align 1, !tbaa !62
  %i.bi = tail call noundef i16 @llvm.bswap.i16(i16 %i.bh)
  %i.bj = zext i16 %i.bi to i32                   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bl = load i16, ptr %i.bk, align 1, !tbaa !62
  %i.bm = tail call noundef i16 @llvm.bswap.i16(i16 %i.bl)
  %i.bn = zext i16 %i.bm to i32
  %.not.i.i = icmp ult i32 %2, %i.bj
  %.not17.i.i = icmp ugt i32 %2, %i.bn
  %or.cond.i.i = or i1 %.not.i.i, %.not17.i.i
  br i1 %or.cond.i.i, label %bb.i, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit

_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit: ; preds = %.lr.ph.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.024.i, i64 44
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !92
  %.not17 = icmp eq i8 %i.bp, 0
  br i1 %.not17, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %.024.i, i64 45
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !92
  %.not18 = icmp eq i8 %i.br, 0
  br i1 %.not18, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bt = load i32, ptr %i.bs, align 1, !tbaa !58 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = tail call i32 @llvm.bswap.i32(i32 %i.bt)
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bw
  %.0.i.i.i = select i1 %i.bu, ptr @_hb_NullPool, ptr %i.bx, !prof !48 ; 6 uses
  %i.by = sub nuw nsw i32 %2, %i.bj               ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.ca = load i16, ptr %i.bz, align 1, !tbaa !62
  %i.cb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ca)
  %i.cc = load i16, ptr %.0.i.i.i, align 1, !tbaa !62
  %i.cd = tail call noundef i16 @llvm.bswap.i16(i16 %i.cc)
  switch i16 %i.cd, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread [
    i16 1, label %bb.l
    i16 3, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.cf = zext nneg i32 %i.by to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cf ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %4 = load i32, ptr %3, align 1, !tbaa !58
  %5 = tail call noundef i32 @llvm.bswap.i32(i32 %4) ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 1, !tbaa !58
  %i.ci = tail call noundef i32 @llvm.bswap.i32(i32 %i.ch) ; 3 uses
  %.not.i.i.i = icmp ugt i32 %5, %i.ci
  br i1 %.not.i.i.i, label %bb.m, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread, !prof !49

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.ck = load i32, ptr %i.cj, align 1, !tbaa !58
  %i.cl = tail call noundef i32 @llvm.bswap.i32(i32 %i.ck)
  %i.cm = add i32 %i.cl, %i.ci
  %i.cn = sub nuw i32 %5, %i.ci
  br label %_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit

bb.n:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.cp = zext nneg i32 %i.by to i64
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.cp ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  %7 = load i16, ptr %6, align 1, !tbaa !62
  %8 = tail call noundef i16 @llvm.bswap.i16(i16 %7) ; 2 uses
  %i.cr = load i16, ptr %i.cq, align 1, !tbaa !62
  %i.cs = tail call noundef i16 @llvm.bswap.i16(i16 %i.cr) ; 3 uses
  %.not.i8.i.i = icmp ugt i16 %8, %i.cs
  br i1 %.not.i8.i.i, label %bb.o, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread, !prof !49

bb.o:                                             ; preds = %bb.n
  %i.ct = zext i16 %i.cs to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.cv = load i32, ptr %i.cu, align 1, !tbaa !58
  %i.cw = tail call noundef i32 @llvm.bswap.i32(i32 %i.cv)
  %i.cx = add i32 %i.cw, %i.ct
  %narrow.i.i.i = sub nuw i16 %8, %i.cs
  %i.cy = zext i16 %narrow.i.i.i to i32
  br label %_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit

_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit: ; preds = %bb.o, %bb.m
  %.145 = phi i32 [ %i.cx, %bb.o ], [ %i.cm, %bb.m ] ; 8 uses
  %.043 = phi i32 [ %i.cy, %bb.o ], [ %i.cn, %bb.m ] ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !51 ; 3 uses
  %.not.i.i22 = icmp eq ptr %i.da, null
  %spec.select.i.i = select i1 %.not.i.i22, ptr @_hb_NullPool, ptr %i.da ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 24
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !57 ; 2 uses
  %i.dd = icmp ugt i32 %.145, %i.dc
  %i.de = sub nuw i32 %i.dc, %.145
  %i.df = icmp ult i32 %i.de, %.043
  %i.dg = select i1 %i.dd, i1 true, i1 %i.df, !prof !48
  br i1 %i.dg, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread, label %bb.p, !prof !48

bb.p:                                             ; preds = %_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit
  switch i16 %i.cb, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread [
    i16 17, label %bb.q
    i16 18, label %bb.s
    i16 19, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %i.dh = icmp ult i32 %.043, 9
  br i1 %i.dh, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread, label %bb.r, !prof !48

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !54
  %i.dk = zext i32 %.145 to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dk
  %i.dm = add i32 %.145, 9
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 5
  br label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread.sink.split

bb.s:                                             ; preds = %bb.p
  %i.do = icmp ult i32 %.043, 12
  br i1 %i.do, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread, label %bb.t, !prof !48

bb.t:                                             ; preds = %bb.s
  %i.dp = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !54
  %i.dr = zext i32 %.145 to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dr
  %i.dt = add i32 %.145, 12
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  br label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread.sink.split

bb.u:                                             ; preds = %bb.p
  %i.dv = icmp ult i32 %.043, 4
  br i1 %i.dv, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread, label %bb.v, !prof !48

bb.v:                                             ; preds = %bb.u
  %i.dw = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !54
  %i.dy = zext i32 %.145 to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dy
  %i.ea = add i32 %.145, 4
  br label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread.sink.split

_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread.sink.split: ; preds = %bb.r, %bb.t, %bb.v
  %.sink65.in = phi ptr [ %i.dz, %bb.v ], [ %i.du, %bb.t ], [ %i.dn, %bb.r ]
  %.sink = phi i32 [ %i.ea, %bb.v ], [ %i.dt, %bb.t ], [ %i.dm, %bb.r ]
  %.sink65 = load i32, ptr %.sink65.in, align 1, !tbaa !58
  %i.eb = tail call noundef i32 @llvm.bswap.i32(i32 %.sink65)
  %i.ec = tail call ptr @hb_blob_create_sub_blob(ptr noundef %i.da, i32 noundef %.sink, i32 noundef %i.eb)
  br label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread

_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread: ; preds = %bb.i, %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread.sink.split, %_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit, %bb.n, %bb.k, %bb.l, %_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit, %bb.q, %bb.s, %bb.u, %bb.p, %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit, %bb.j
  %.2 = phi ptr [ @_hb_NullPool, %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit ], [ @_hb_NullPool, %bb.p ], [ @_hb_NullPool, %bb.j ], [ @_hb_NullPool, %_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit ], [ @_hb_NullPool, %bb.l ], [ @_hb_NullPool, %bb.u ], [ @_hb_NullPool, %_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit ], [ @_hb_NullPool, %bb.n ], [ @_hb_NullPool, %bb.q ], [ %i.ec, %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread.sink.split ], [ @_hb_NullPool, %bb.s ], [ @_hb_NullPool, %bb.k ], [ @_hb_NullPool, %bb.i ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @hb_ot_fetch_bits(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.az [
    i32 1718842480, label %bb.b
    i32 1718842220, label %bb.g
    i32 1835234164, label %bb.l
    i32 1719169140, label %bb.q
    i32 1970433585, label %bb.v
    i32 1970433586, label %bb.aa
    i32 1970433587, label %bb.af
    i32 1970433588, label %bb.ak
    i32 1668313649, label %bb.ap
    i32 1668313650, label %bb.au
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT3OS2E22hb_table_lazy_loader_tIS1_Lj6ELb1EE9hb_face_tLj6E9hb_blob_tEptEv.exit, !prof !46

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.f
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT3OS2E22hb_table_lazy_loader_tIS1_Lj6ELb1EE9hb_face_tLj6E9hb_blob_tEptEv.exit, label %bb.c, !prof !48

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT3OS2ELj6ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.d) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.d, label %bb.e, !prof !48

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.d ], [ %i.e, %bb.c ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN2OT3OS2E22hb_table_lazy_loader_tIS1_Lj6ELb1EE9hb_face_tLj6E9hb_blob_tEptEv.exit, label %bb.f, !prof !49

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN16hb_lazy_loader_tIN2OT3OS2E22hb_table_lazy_loader_tIS1_Lj6ELb1EE9hb_face_tLj6E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT3OS2E22hb_table_lazy_loader_tIS1_Lj6ELb1EE9hb_face_tLj6E9hb_blob_tEptEv.exit, !prof !50

_ZNK16hb_lazy_loader_tIN2OT3OS2E22hb_table_lazy_loader_tIS1_Lj6ELb1EE9hb_face_tLj6E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.f, %bb.b
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.b ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.f ], [ %.07.i.i.i, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !57
  %i.m = icmp ult i32 %i.l, 78
  %spec.select.i.i.i.i.i = select i1 %i.m, ptr @_hb_NullPool, ptr %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 8
  %i.o = load i16, ptr %i.n, align 1, !tbaa !62
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %i.q = zext i16 %i.p to i32
  br label %bb.az

bb.g:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load atomic ptr, ptr %i.r acquire, align 8 ; 2 uses
  %.not14.i.i.i11 = icmp eq ptr %i.t, null
  br i1 %.not14.i.i.i11, label %.lr.ph.i.i.i14, label %_ZNK16hb_lazy_loader_tIN2OT3OS2E22hb_table_lazy_loader_tIS1_Lj6ELb1EE9hb_face_tLj6E9hb_blob_tEptEv.exit19, !prof !46

.lr.ph.i.i.i14:                                   ; preds = %bb.g, %bb.k
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !47   ; 2 uses
  %.not.i.i.i.i15 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i15, label %_ZNK16hb_lazy_loader_tIN2OT3OS2E22hb_table_lazy_loader_tIS1_Lj6ELb1EE9hb_face_tLj6E9hb_blob_tEptEv.exit19, label %bb.h, !prof !48

bb.h:                                             ; preds = %.lr.ph.i.i.i14
  %i.v = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT3OS2ELj6ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.u) ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %i.v, null
  br i1 %.not10.i.i.i16, label %bb.i, label %bb.j, !prof !48

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.07.i.i.i17 = phi ptr [ @_hb_NullPool, %bb.i ], [ %i.v, %bb.h ] ; 3 uses
  %i.w = cmpxchg weak ptr %i.r, ptr null, ptr %.07.i.i.i17 acq_rel monotonic, align 8
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %_ZNK16hb_lazy_loader_tIN2OT3OS2E22hb_table_lazy_loader_tIS1_Lj6ELb1EE9hb_face_tLj6E9hb_blob_tEptEv.exit19, label %bb.k, !prof !49

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN16hb_lazy_loader_tIN2OT3OS2E22hb_table_lazy_loader_tIS1_Lj6ELb1EE9hb_face_tLj6E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i17)
  %i.y = load atomic ptr, ptr %i.r acquire, align 8 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i18, label %.lr.ph.i.i.i14, label %_ZNK16hb_lazy_loader_tIN2OT3OS2E22hb_table_lazy_loader_tIS1_Lj6ELb1EE9hb_face_tLj6E9hb_blob_tEptEv.exit19, !prof !50

_ZNK16hb_lazy_loader_tIN2OT3OS2E22hb_table_lazy_loader_tIS1_Lj6ELb1EE9hb_face_tLj6E9hb_blob_tEptEv.exit19: ; preds = %.lr.ph.i.i.i14, %bb.j, %bb.k, %bb.g
  %.19.ph.i.i.i12 = phi ptr [ %i.t, %bb.g ], [ @_hb_NullPool, %.lr.ph.i.i.i14 ], [ %i.y, %bb.k ], [ %.07.i.i.i17, %bb.j ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i12, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i12, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !57
  %i.ad = icmp ult i32 %i.ac, 78
  %spec.select.i.i.i.i.i13 = select i1 %i.ad, ptr @_hb_NullPool, ptr %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i13, i64 62
  %i.af = load i16, ptr %i.ae, align 1, !tbaa !62
  %i.ag = tail call noundef i16 @llvm.bswap.i16(i16 %i.af)
  %i.ah = zext i16 %i.ag to i32
  br label %bb.az

bb.l:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ak = load atomic ptr, ptr %i.ai acquire, align 8 ; 2 uses
  %.not14.i.i.i20 = icmp eq ptr %i.ak, null
  br i1 %.not14.i.i.i20, label %.lr.ph.i.i.i23, label %_ZNK16hb_lazy_loader_tIN2OT4headE22hb_table_lazy_loader_tIS1_Lj1ELb1EE9hb_face_tLj1E9hb_blob_tEptEv.exit, !prof !46

.lr.ph.i.i.i23:                                   ; preds = %bb.l, %bb.p
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i24, label %_ZNK16hb_lazy_loader_tIN2OT4headE22hb_table_lazy_loader_tIS1_Lj1ELb1EE9hb_face_tLj1E9hb_blob_tEptEv.exit, label %bb.m, !prof !48

bb.m:                                             ; preds = %.lr.ph.i.i.i23
  %i.am = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4headELj1ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.al) ; 2 uses
  %.not10.i.i.i25 = icmp eq ptr %i.am, null
  br i1 %.not10.i.i.i25, label %bb.n, label %bb.o, !prof !48
end_hunk_10
begin_hunk_11_@_ZL22preprocess_text_hangulPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ak = load i32, ptr %i.r, align 4, !tbaa !630 ; 2 uses
  %i.al = icmp ult i32 %i.ak, %i.x
  br i1 %i.al, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %i.am = phi i32 [ %i.ts, %.backedge ], [ %i.ak, %bb.a ] ; 13 uses
  %.0161438 = phi i32 [ %.0161.be, %.backedge ], [ 0, %bb.a ] ; 8 uses
  %.0164437 = phi i32 [ %.0164.be, %.backedge ], [ 0, %bb.a ] ; 9 uses
  %i.an = load i8, ptr %i.y, align 8, !tbaa !496, !range !220, !noundef !74
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.ap = load ptr, ptr %i.t, align 8, !tbaa !499 ; 3 uses
  %i.aq = zext i32 %i.am to i64
  %i.ar = getelementptr inbounds nuw [20 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !582 ; 12 uses
  %i.at = and i32 %i.as, -2
  %i.au = icmp eq i32 %i.at, 12334
  br i1 %i.au, label %bb.c, label %bb.am

bb.c:                                             ; preds = %bb.b
  %i.av = icmp ult i32 %.0161438, %.0164437
  br i1 %i.av, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.aw = load i32, ptr %i.s, align 4, !tbaa !578
  %i.ax = icmp eq i32 %.0164437, %i.aw
  br i1 %i.ax, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.ay = sub i32 %i.am, %.0161438
  %i.az = icmp ugt i32 %i.ay, 255
  br i1 %i.az, label %_ZN11hb_buffer_t30unsafe_to_break_from_outbufferEjj.exit, label %bb.f, !prof !48

bb.f:                                             ; preds = %bb.e
  %i.ba = load i32, ptr %i.w, align 8, !tbaa !139
  %.sroa.speculated.i = call i32 @llvm.umin.i32(i32 %i.am, i32 %i.ba)
  call void @_ZN11hb_buffer_t21_set_glyph_flags_implEjjjbb(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef 3, i32 noundef %.0161438, i32 noundef %.sroa.speculated.i, i1 noundef zeroext true, i1 noundef zeroext true)
  %.pre369.pre = load i32, ptr %i.r, align 4
  br label %_ZN11hb_buffer_t30unsafe_to_break_from_outbufferEjj.exit

_ZN11hb_buffer_t30unsafe_to_break_from_outbufferEjj.exit: ; preds = %bb.e, %bb.f
  %.pre369 = phi i32 [ %i.am, %bb.e ], [ %.pre369.pre, %bb.f ] ; 5 uses
  %i.bb = load i8, ptr %i.p, align 1, !tbaa !577, !range !220, !noundef !74
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN11hb_buffer_t30unsafe_to_break_from_outbufferEjj.exit
  %i.bd = load ptr, ptr %i.v, align 8, !tbaa !579 ; 2 uses
  %i.be = load ptr, ptr %i.t, align 8, !tbaa !499 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.be
  %i.bf = load i32, ptr %i.s, align 4, !tbaa !578 ; 3 uses
  %.not2.i = icmp eq i32 %i.bf, %.pre369
  %or.cond.i = select i1 %.not.i, i1 %.not2.i, i1 false
  br i1 %or.cond.i, label %bb.h, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %i.bg = add i32 %i.bf, 1                        ; 3 uses
  %.not.i.i = icmp eq i32 %i.bg, 0
  %i.bh = load i32, ptr %i.ad, align 8
  %i.bi = icmp ult i32 %i.bg, %i.bh
  %i.bj = select i1 %.not.i.i, i1 true, i1 %i.bi
  br i1 %i.bj, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i, label %_ZN11hb_buffer_t6ensureEj.exit.i, !prof !49

_ZN11hb_buffer_t6ensureEj.exit.i:                 ; preds = %._crit_edge.i
  %i.bk = call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.bg)
  br i1 %i.bk, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, label %.critedge, !prof !124

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i
  %.pre3.i = load ptr, ptr %i.t, align 8, !tbaa !499
  %.pre4.i = load ptr, ptr %i.v, align 8, !tbaa !579
  %.pre5.i = load i32, ptr %i.s, align 4, !tbaa !578
  %.pre367 = load i32, ptr %i.r, align 4, !tbaa !630
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i:          ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, %._crit_edge.i
  %i.bl = phi i32 [ %.pre367, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %.pre369, %._crit_edge.i ]
  %i.bm = phi i32 [ %.pre5.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %i.bf, %._crit_edge.i ]
  %i.bn = phi ptr [ %.pre4.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %i.bd, %._crit_edge.i ]
  %i.bo = phi ptr [ %.pre3.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %i.be, %._crit_edge.i ]
  %i.bp = zext i32 %i.bl to i64
  %i.bq = getelementptr inbounds nuw [20 x i8], ptr %i.bo, i64 %i.bp
  %i.br = zext i32 %i.bm to i64
  %i.bs = getelementptr inbounds nuw [20 x i8], ptr %i.bn, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bs, ptr noundef nonnull align 4 dereferenceable(20) %i.bq, i64 20, i1 false), !tbaa.struct !526
  %.pre7.i = load i32, ptr %i.s, align 4, !tbaa !578
  %.pre368.pre = load i32, ptr %i.r, align 4, !tbaa !630
  br label %bb.h

bb.h:                                             ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i, %bb.g
  %.pre368 = phi i32 [ %.pre368.pre, %_ZN11hb_buffer_t6ensureEj.exit.thread.i ], [ %.pre369, %bb.g ]
  %i.bt = phi i32 [ %.pre7.i, %_ZN11hb_buffer_t6ensureEj.exit.thread.i ], [ %.pre369, %bb.g ]
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.s, align 4, !tbaa !578
  br label %bb.i

bb.i:                                             ; preds = %_ZN11hb_buffer_t30unsafe_to_break_from_outbufferEjj.exit, %bb.h
  %i.bv = phi i32 [ %.pre369, %_ZN11hb_buffer_t30unsafe_to_break_from_outbufferEjj.exit ], [ %.pre368, %bb.h ]
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.r, align 4, !tbaa !630
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #63
  store i32 0, ptr %i.i, align 4, !tbaa !139
  %i.bx = load ptr, ptr %i.z, align 8, !tbaa !583 ; 2 uses
  %i.by = load ptr, ptr %i.aa, align 8, !tbaa !584
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !585 ; 2 uses
  %.not.i9.i.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !61
  br i1 %.not.i9.i.i, label %hb_font_get_glyph.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1169
  br label %hb_font_get_glyph.exit.i

hb_font_get_glyph.exit.i:                         ; preds = %bb.j, %bb.i
  %i.cf = phi ptr [ %i.ce, %bb.j ], [ null, %bb.i ]
  %i.cg = call noundef i32 %i.cc(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef %i.by, i32 noundef %i.as, ptr noundef nonnull %i.i, ptr noundef %i.cf) #63, !inline_history !2220
  %.not.i178 = icmp eq i32 %i.cg, 0
  br i1 %.not.i178, label %_ZL18is_zero_width_charP9hb_font_tj.exit.thread, label %bb.k

_ZL18is_zero_width_charP9hb_font_tj.exit.thread:  ; preds = %hb_font_get_glyph.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #63
  br label %bb.p

bb.k:                                             ; preds = %hb_font_get_glyph.exit.i
  %i.ch = load i32, ptr %i.i, align 4, !tbaa !139
  %i.ci = load ptr, ptr %i.z, align 8, !tbaa !583 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !61
  %i.cl = load ptr, ptr %i.aa, align 8, !tbaa !584
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !585 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1171
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cq = phi ptr [ %i.cp, %bb.l ], [ null, %bb.k ]
  %i.cr = call noundef i32 %i.ck(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef %i.cl, i32 noundef %i.ch, ptr noundef %i.cq) #63, !inline_history !2221 ; 4 uses
  %i.cs = load i32, ptr %i.ag, align 8, !tbaa !1173 ; 3 uses
  %.not8.i.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not8.i.i.i, label %_ZL18is_zero_width_charP9hb_font_tj.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = load i8, ptr %i.ah, align 4, !tbaa !1174, !range !220, !noundef !74
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %_ZL18is_zero_width_charP9hb_font_tj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cv = load i32, ptr %i.ai, align 8, !tbaa !1175
  %i.cw = sub nsw i32 0, %i.cs
  %i.cx = icmp slt i32 %i.cv, 0
  %i.cy = select i1 %i.cx, i32 %i.cw, i32 %i.cs
  %.not9.i.i.i = icmp eq i32 %i.cr, 0
  %i.cz = select i1 %.not9.i.i.i, i32 0, i32 %i.cy
  %i.da = add nsw i32 %i.cz, %i.cr
  br label %_ZL18is_zero_width_charP9hb_font_tj.exit

_ZL18is_zero_width_charP9hb_font_tj.exit:         ; preds = %bb.m, %bb.n, %bb.o
  %.0.i.i.i = phi i32 [ %i.cr, %bb.n ], [ %i.da, %bb.o ], [ %i.cr, %bb.m ]
  %i.db = icmp eq i32 %.0.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #63
  br i1 %i.db, label %_ZN11hb_buffer_t10next_glyphEv.exit206, label %bb.p

bb.p:                                             ; preds = %_ZL18is_zero_width_charP9hb_font_tj.exit.thread, %_ZL18is_zero_width_charP9hb_font_tj.exit
  %i.dc = add i32 %.0164437, 1                    ; 2 uses
  %i.dd = sub i32 %i.dc, %.0161438
  %i.de = icmp ult i32 %i.dd, 2
  %i.df = load i32, ptr %i.ae, align 4
  %.not.i179 = icmp ugt i32 %i.df, 1
  %or.cond.i180 = select i1 %i.de, i1 true, i1 %.not.i179
  br i1 %or.cond.i180, label %_ZN11hb_buffer_t18merge_out_clustersEjj.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN11hb_buffer_t23merge_out_clusters_implEjj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %.0161438, i32 noundef %i.dc)
  br label %_ZN11hb_buffer_t18merge_out_clustersEjj.exit

_ZN11hb_buffer_t18merge_out_clustersEjj.exit:     ; preds = %bb.p, %bb.q
  %i.dg = load ptr, ptr %i.v, align 8, !tbaa !579 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.dh = zext i32 %.0164437 to i64
  %i.di = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %i.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.di, i64 20, i1 false), !tbaa.struct !526
  %i.dj = add nuw i32 %.0161438, 1
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %i.dk
  %i.dm = zext i32 %.0161438 to i64
  %i.dn = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %i.dm ; 2 uses
  %i.do = sub nuw i32 %.0164437, %.0161438
  %i.dp = zext i32 %i.do to i64
  %i.dq = mul nuw nsw i64 %i.dp, 20
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dl, ptr align 4 %i.dn, i64 %i.dq, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.dn, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !526
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN11hb_buffer_t10next_glyphEv.exit206

bb.r:                                             ; preds = %bb.d, %bb.c
  %i.dr = load i32, ptr %i.af, align 8, !tbaa !497
  %i.ds = and i32 %i.dr, 16
  %.not175 = icmp eq i32 %i.ds, 0
  br i1 %.not175, label %bb.s, label %bb.ai

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #63
  store i32 0, ptr %i.h, align 4, !tbaa !139
  %i.dt = load ptr, ptr %i.z, align 8, !tbaa !583 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !61
  %i.dw = load ptr, ptr %i.aa, align 8, !tbaa !584
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !585 ; 2 uses
  %.not.i.i181 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i181, label %_ZN9hb_font_t9has_glyphEj.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1169
  br label %_ZN9hb_font_t9has_glyphEj.exit

_ZN9hb_font_t9has_glyphEj.exit:                   ; preds = %bb.s, %bb.t
  %i.eb = phi ptr [ %i.ea, %bb.t ], [ null, %bb.s ]
  %i.ec = call noundef i32 %i.dv(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef %i.dw, i32 noundef 9676, ptr noundef nonnull %i.h, ptr noundef %i.eb) #63, !inline_history !2222
  %.not344 = icmp eq i32 %i.ec, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #63
  br i1 %.not344, label %_ZN9hb_font_t9has_glyphEj.exit._crit_edge, label %bb.u

_ZN9hb_font_t9has_glyphEj.exit._crit_edge:        ; preds = %_ZN9hb_font_t9has_glyphEj.exit
  %.pre366.pre = load i32, ptr %i.r, align 4
  br label %bb.ai

bb.u:                                             ; preds = %_ZN9hb_font_t9has_glyphEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #63
  store i32 0, ptr %i.g, align 4, !tbaa !139
  %i.ed = load ptr, ptr %i.z, align 8, !tbaa !583 ; 2 uses
  %i.ee = load ptr, ptr %i.aa, align 8, !tbaa !584
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !585 ; 2 uses
  %.not.i9.i.i182 = icmp eq ptr %i.eg, null
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !61
  br i1 %.not.i9.i.i182, label %hb_font_get_glyph.exit.i183, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !1169
  br label %hb_font_get_glyph.exit.i183

hb_font_get_glyph.exit.i183:                      ; preds = %bb.v, %bb.u
  %i.el = phi ptr [ %i.ek, %bb.v ], [ null, %bb.u ]
  %i.em = call noundef i32 %i.ei(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef %i.ee, i32 noundef %i.as, ptr noundef nonnull %i.g, ptr noundef %i.el) #63, !inline_history !2220
  %.not.i184 = icmp eq i32 %i.em, 0
  br i1 %.not.i184, label %_ZL18is_zero_width_charP9hb_font_tj.exit190.thread, label %bb.w

_ZL18is_zero_width_charP9hb_font_tj.exit190.thread: ; preds = %hb_font_get_glyph.exit.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #63
  br label %bb.ab

bb.w:                                             ; preds = %hb_font_get_glyph.exit.i183
  %i.en = load i32, ptr %i.g, align 4, !tbaa !139
  %i.eo = load ptr, ptr %i.z, align 8, !tbaa !583 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 72
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !61
  %i.er = load ptr, ptr %i.aa, align 8, !tbaa !584
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !585 ; 2 uses
  %.not.i.i.i185 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i185, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !1171
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ew = phi ptr [ %i.ev, %bb.x ], [ null, %bb.w ]
  %i.ex = call noundef i32 %i.eq(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef %i.er, i32 noundef %i.en, ptr noundef %i.ew) #63, !inline_history !2221 ; 4 uses
  %i.ey = load i32, ptr %i.ag, align 8, !tbaa !1173 ; 3 uses
  %.not8.i.i.i186 = icmp eq i32 %i.ey, 0
  br i1 %.not8.i.i.i186, label %_ZL18is_zero_width_charP9hb_font_tj.exit190, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ez = load i8, ptr %i.ah, align 4, !tbaa !1174, !range !220, !noundef !74
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %_ZL18is_zero_width_charP9hb_font_tj.exit190, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fb = load i32, ptr %i.ai, align 8, !tbaa !1175
  %i.fc = sub nsw i32 0, %i.ey
  %i.fd = icmp slt i32 %i.fb, 0
  %i.fe = select i1 %i.fd, i32 %i.fc, i32 %i.ey
  %.not9.i.i.i187 = icmp eq i32 %i.ex, 0
  %i.ff = select i1 %.not9.i.i.i187, i32 0, i32 %i.fe
  %i.fg = add nsw i32 %i.ff, %i.ex
  br label %_ZL18is_zero_width_charP9hb_font_tj.exit190

_ZL18is_zero_width_charP9hb_font_tj.exit190:      ; preds = %bb.y, %bb.z, %bb.aa
  %.0.i.i.i189 = phi i32 [ %i.ex, %bb.z ], [ %i.fg, %bb.aa ], [ %i.ex, %bb.y ]
  %i.fh = icmp eq i32 %.0.i.i.i189, 0             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #63
  %spec.select435 = select i1 %i.fh, i32 %i.as, i32 9676
  %spec.select436 = select i1 %i.fh, i32 9676, i32 %i.as
  br label %bb.ab

bb.ab:                                            ; preds = %_ZL18is_zero_width_charP9hb_font_tj.exit190, %_ZL18is_zero_width_charP9hb_font_tj.exit190.thread
  %.sroa.5.0 = phi i32 [ %spec.select435, %_ZL18is_zero_width_charP9hb_font_tj.exit190 ], [ 9676, %_ZL18is_zero_width_charP9hb_font_tj.exit190.thread ]
  %.sroa.0.0 = phi i32 [ %spec.select436, %_ZL18is_zero_width_charP9hb_font_tj.exit190 ], [ %i.as, %_ZL18is_zero_width_charP9hb_font_tj.exit190.thread ]
  %i.fi = load i32, ptr %i.s, align 4, !tbaa !578
  %i.fj = add i32 %i.fi, 2                        ; 3 uses
  %.not.i.i.i191 = icmp eq i32 %i.fj, 0
  %i.fk = load i32, ptr %i.ad, align 8
  %i.fl = icmp ult i32 %i.fj, %i.fk
  %i.fm = select i1 %.not.i.i.i191, i1 true, i1 %i.fl
  br i1 %i.fm, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, label %_ZN11hb_buffer_t6ensureEj.exit.i.i, !prof !49

_ZN11hb_buffer_t6ensureEj.exit.i.i:               ; preds = %bb.ab
  %i.fn = call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %1, i32 noundef %i.fj)
  br i1 %i.fn, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, label %_ZN11hb_buffer_t10next_glyphEv.exit206, !prof !124

_ZN11hb_buffer_t6ensureEj.exit.thread.i.i:        ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i.i, %bb.ab
  %i.fo = load ptr, ptr %i.v, align 8, !tbaa !579
  %i.fp = load ptr, ptr %i.t, align 8, !tbaa !499 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  %.pre363 = load i32, ptr %i.r, align 4, !tbaa !630 ; 4 uses
  br i1 %i.fq, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i
  %i.fr = load i32, ptr %i.s, align 4, !tbaa !578 ; 3 uses
  %i.fs = add i32 %i.fr, 2
  %i.ft = add i32 %.pre363, 1
  %i.fu = icmp ugt i32 %i.fs, %i.ft
  br i1 %i.fu, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.fv = load ptr, ptr %i.aj, align 8, !tbaa !527 ; 2 uses
  store ptr %i.fv, ptr %i.v, align 8, !tbaa !579
  %.not.i4.i.i = icmp eq i32 %i.fr, 0
  br i1 %.not.i4.i.i, label %bb.af, label %bb.ae, !prof !48

bb.ae:                                            ; preds = %bb.ad
  %i.fw = zext i32 %i.fr to i64
  %i.fx = mul nuw nsw i64 %i.fw, 20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fv, ptr readonly align 1 %i.fp, i64 %i.fx, i1 false), !alias.scope !2223
  %.pre362 = load i32, ptr %i.r, align 4, !tbaa !630
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i
  %i.fy = phi i32 [ %.pre362, %bb.ae ], [ %.pre363, %bb.ad ], [ %.pre363, %bb.ac ], [ %.pre363, %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i ] ; 2 uses
  %i.fz = load i32, ptr %i.w, align 8, !tbaa !522
  %i.ga = icmp ult i32 %i.fy, %i.fz
  br i1 %i.ga, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gb = load ptr, ptr %i.t, align 8, !tbaa !499
  %i.gc = zext i32 %i.fy to i64
  %i.gd = getelementptr inbounds nuw [20 x i8], ptr %i.gb, i64 %i.gc
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !579
  %.pre22.i = load i32, ptr %i.s, align 4, !tbaa !578
  br label %.lr.ph.i

bb.ah:                                            ; preds = %bb.af
  %i.ge = load ptr, ptr %i.v, align 8, !tbaa !579 ; 2 uses
  %i.gf = load i32, ptr %i.s, align 4, !tbaa !578 ; 2 uses
  %narrow.i = call i32 @llvm.usub.sat.i32(i32 %i.gf, i32 1)
  %i.gg = zext i32 %narrow.i to i64
  %i.gh = getelementptr inbounds nuw [20 x i8], ptr %i.ge, i64 %i.gg
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ah, %bb.ag
  %i.gi = phi i32 [ %.pre22.i, %bb.ag ], [ %i.gf, %bb.ah ]
  %i.gj = phi ptr [ %.pre.i, %bb.ag ], [ %i.ge, %bb.ah ]
  %i.gk = phi ptr [ %i.gd, %bb.ag ], [ %i.gh, %bb.ah ] ; 2 uses
  %i.gl = zext i32 %i.gi to i64
  %i.gm = getelementptr inbounds nuw [20 x i8], ptr %i.gj, i64 %i.gl ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gm, ptr noundef nonnull align 4 dereferenceable(20) %i.gk, i64 20, i1 false), !tbaa.struct !526
  store i32 %.sroa.0.0, ptr %i.gm, align 4, !tbaa !582
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 20 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gn, ptr noundef nonnull align 4 dereferenceable(20) %i.gk, i64 20, i1 false), !tbaa.struct !526
  store i32 %.sroa.5.0, ptr %i.gn, align 4, !tbaa !582
  %.pre23.i = load i32, ptr %i.r, align 4, !tbaa !630
  %.pre24.i = load i32, ptr %i.s, align 4, !tbaa !578
  %i.go = add i32 %.pre23.i, 1
  store i32 %i.go, ptr %i.r, align 4, !tbaa !630
  %i.gp = add i32 %.pre24.i, 2
  store i32 %i.gp, ptr %i.s, align 4, !tbaa !578
  br label %_ZN11hb_buffer_t10next_glyphEv.exit206

bb.ai:                                            ; preds = %_ZN9hb_font_t9has_glyphEj.exit._crit_edge, %bb.r
  %.pre366 = phi i32 [ %.pre366.pre, %_ZN9hb_font_t9has_glyphEj.exit._crit_edge ], [ %i.am, %bb.r ] ; 5 uses
  %i.gq = load i8, ptr %i.p, align 1, !tbaa !577, !range !220, !noundef !74
end_hunk_11
begin_hunk_12_@hb_paint_normalize_color_line:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 36 ; 2 uses
  %i.aa = load float, ptr %i.t, align 4, !tbaa !2457
  %i.ab = load float, ptr %i.v, align 4, !tbaa !2457
  %i.ac = load float, ptr %i.x, align 4, !tbaa !2457
  %i.ad = load float, ptr %i.z, align 4, !tbaa !2457
  %i.ae = insertelement <4 x float> poison, float %i.aa, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.ab, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.ac, i64 2
  %i.ah = insertelement <4 x float> %i.ag, float %i.ad, i64 3
  %i.ai = fsub <4 x float> %i.ah, %broadcast.splat52
  %i.aj = fdiv <4 x float> %i.ai, %broadcast.splat ; 4 uses
  %i.ak = extractelement <4 x float> %i.aj, i64 0
  store float %i.ak, ptr %i.t, align 4, !tbaa !2457
  %i.al = extractelement <4 x float> %i.aj, i64 1
  store float %i.al, ptr %i.v, align 4, !tbaa !2457
  %i.am = extractelement <4 x float> %i.aj, i64 2
  store float %i.am, ptr %i.x, align 4, !tbaa !2457
  %i.an = extractelement <4 x float> %i.aj, i64 3
  store float %i.an, ptr %i.z, align 4, !tbaa !2457
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2462

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.03538 = phi float [ %i.h, %.lr.ph.preheader.new ], [ %.sroa.speculated.1, %.lr.ph ] ; 2 uses
  %.03637 = phi float [ %i.h, %.lr.ph.preheader.new ], [ %.sroa.speculated31.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !94 ; 4 uses
  %i.ar = fcmp ole float %.03637, %i.aq
  %.sroa.speculated31 = select i1 %i.ar, float %.03637, float %i.aq ; 2 uses
  %i.as = fcmp oge float %.03538, %i.aq
  %.sroa.speculated = select i1 %i.as, float %.03538, float %i.aq ; 2 uses
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.av = load float, ptr %i.au, align 4, !tbaa !94 ; 4 uses
  %i.aw = fcmp ole float %.sroa.speculated31, %i.av
  %.sroa.speculated31.1 = select i1 %i.aw, float %.sroa.speculated31, float %i.av ; 3 uses
  %i.ax = fcmp oge float %.sroa.speculated, %i.av
  %.sroa.speculated.1 = select i1 %i.ax, float %.sroa.speculated, float %i.av ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2463

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %scalar.ph ], [ %indvars.iv44.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv44 ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !2457
  %i.ba = fsub float %i.az, %.036.lcssa
  %i.bb = fdiv float %i.ba, %i.p
  store float %i.bb, ptr %i.ay, align 4, !tbaa !2457
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next45, %i.a
  br i1 %exitcond49.not, label %.loopexit, label %scalar.ph, !llvm.loop !2464

.loopexit:                                        ; preds = %scalar.ph, %._crit_edge
  store float %.036.lcssa, ptr %2, align 4, !tbaa !94
  store float %.035.lcssa, ptr %3, align 4, !tbaa !94
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_paint_sweep_gradient_tiles(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3, float noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.hb_color_stop_t, align 4    ; 4 uses
  %i.a = alloca [16 x float], align 16            ; 3 uses
  %i.b = alloca [16 x i32], align 16              ; 3 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp oeq float %3, %4
  br i1 %i.c, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i32 %2, 0
  br i1 %i.d, label %bb.d, label %bb.aj

bb.d:                                             ; preds = %bb.c
  %i.e = fcmp ogt float %3, 0.000000e+00
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !2465 ; 2 uses
  tail call void %5(float noundef 0.000000e+00, i32 noundef %i.g, float noundef %3, i32 noundef %i.g, ptr noundef %6) #63
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = fcmp olt float %4, f0x40C90FDB
  br i1 %i.h, label %bb.g, label %bb.aj

bb.g:                                             ; preds = %bb.f
  %i.i = add i32 %1, -1
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !2465 ; 2 uses
  tail call void %5(float noundef %4, i32 noundef %i.m, float noundef f0x40C90FDB, i32 noundef %i.m, ptr noundef %6) #63
  br label %bb.aj

bb.h:                                             ; preds = %bb.b
  %i.n = fcmp olt float %4, %3
  br i1 %i.n, label %.preheader313, label %.loopexit312

.preheader313:                                    ; preds = %bb.h
  %i.o = add i32 %1, -1                           ; 2 uses
  %.not342 = icmp eq i32 %i.o, 0
  br i1 %.not342, label %.preheader311, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader313
  %i.p = zext i32 %i.o to i64
  br label %.lr.ph

.preheader311:                                    ; preds = %.lr.ph, %.preheader313
  %wide.trip.count = zext i32 %1 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.q = icmp ult i32 %1, 4
  br i1 %i.q, label %.epil.preheader, label %.preheader311.new

.preheader311.new:                                ; preds = %.preheader311
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv360 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next361, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %i.p, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv360 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %i.r, i64 12, i1 false), !tbaa.struct !2460
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, ptr noundef nonnull align 4 dereferenceable(12) %i.s, i64 12, i1 false), !tbaa.struct !2460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !2460
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.t = and i64 %indvars.iv.next, 4294967295
  %i.u = icmp samesign ult i64 %indvars.iv.next361, %i.t
  br i1 %i.u, label %.lr.ph, label %.preheader311, !llvm.loop !2466

bb.i:                                             ; preds = %bb.i, %.preheader311.new
  %indvars.iv365 = phi i64 [ 0, %.preheader311.new ], [ %indvars.iv.next366.3, %bb.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader311.new ], [ %niter.next.3, %bb.i ]
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv365 ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !2457
  %i.x = fsub float 1.000000e+00, %i.w
  store float %i.x, ptr %i.v, align 4, !tbaa !2457
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv365
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !2457
  %i.ab = fsub float 1.000000e+00, %i.aa
  store float %i.ab, ptr %i.z, align 4, !tbaa !2457
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv365
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !2457
  %i.af = fsub float 1.000000e+00, %i.ae
  store float %i.af, ptr %i.ad, align 4, !tbaa !2457
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv365
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 36 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !2457
  %i.aj = fsub float 1.000000e+00, %i.ai
  store float %i.aj, ptr %i.ah, align 4, !tbaa !2457
  %indvars.iv.next366.3 = add nuw nsw i64 %indvars.iv365, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit312.loopexit.unr-lcssa, label %bb.i, !llvm.loop !2467

.loopexit312.loopexit.unr-lcssa:                  ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit312, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit312.loopexit.unr-lcssa, %.preheader311
  %indvars.iv365.epil.init = phi i64 [ 0, %.preheader311 ], [ %indvars.iv.next366.3, %.loopexit312.loopexit.unr-lcssa ]
  %lcmp.mod454 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod454)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv365.epil = phi i64 [ %indvars.iv365.epil.init, %.epil.preheader ], [ %indvars.iv.next366.epil, %bb.j ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv365.epil ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !2457
  %i.am = fsub float 1.000000e+00, %i.al
  store float %i.am, ptr %i.ak, align 4, !tbaa !2457
  %indvars.iv.next366.epil = add nuw nsw i64 %indvars.iv365.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit312, label %bb.j, !llvm.loop !2468

.loopexit312:                                     ; preds = %.loopexit312.loopexit.unr-lcssa, %bb.j, %bb.h
  %.0252 = phi float [ %4, %bb.h ], [ %3, %bb.j ], [ %3, %.loopexit312.loopexit.unr-lcssa ]
  %.0 = phi float [ %3, %bb.h ], [ %4, %bb.j ], [ %4, %.loopexit312.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  %i.an = icmp ugt i32 %1, 16                     ; 2 uses
  %i.ao = zext i32 %1 to i64                      ; 6 uses
  br i1 %i.an, label %bb.k, label %.loopexit312._crit_edge

bb.k:                                             ; preds = %.loopexit312
  %i.ap = shl nuw nsw i64 %i.ao, 2                ; 2 uses
  %i.aq = tail call noalias noundef ptr @malloc(i64 noundef %i.ap) #65 ; 3 uses
  %i.ar = tail call noalias noundef ptr @malloc(i64 noundef %i.ap) #65 ; 3 uses
  %i.as = icmp ne ptr %i.aq, null
  %i.at = icmp ne ptr %i.ar, null
  %or.cond = and i1 %i.as, %i.at
  br i1 %or.cond, label %.loopexit312._crit_edge, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef %i.aq) #63
  tail call void @free(ptr noundef %i.ar) #63
  br label %.loopexit306.thread

.loopexit312._crit_edge:                          ; preds = %.loopexit312, %bb.k
  %.0267 = phi ptr [ %i.ar, %bb.k ], [ %i.b, %.loopexit312 ] ; 15 uses
  %.0266 = phi ptr [ %i.aq, %bb.k ], [ %i.a, %.loopexit312 ] ; 17 uses
  %i.au = fsub float %.0252, %.0                  ; 2 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.loopexit312._crit_edge
  %n.vec = and i64 %i.ao, 4294967292              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert439 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat440 = shufflevector <4 x float> %broadcast.splatinsert439, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 36
  %i.bc = load float, ptr %i.av, align 4, !tbaa !2457
  %i.bd = load float, ptr %i.ax, align 4, !tbaa !2457
  %i.be = load float, ptr %i.az, align 4, !tbaa !2457
  %i.bf = load float, ptr %i.bb, align 4, !tbaa !2457
  %i.bg = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 2
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 3
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> %broadcast.splat, <4 x float> %broadcast.splat440)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %index
  store <4 x float> %i.bk, ptr %i.bl, align 4, !tbaa !94
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 44
  %i.bq = load i32, ptr %i.bm, align 4, !tbaa !2465
  %i.br = load i32, ptr %i.bn, align 4, !tbaa !2465
  %i.bs = load i32, ptr %i.bo, align 4, !tbaa !2465
  %i.bt = load i32, ptr %i.bp, align 4, !tbaa !2465
  %i.bu = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %i.bv = insertelement <4 x i32> %i.bu, i32 %i.br, i64 1
  %i.bw = insertelement <4 x i32> %i.bv, i32 %i.bs, i64 2
  %i.bx = insertelement <4 x i32> %i.bw, i32 %i.bt, i64 3
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %index
  store <4 x i32> %i.bx, ptr %i.by, align 4, !tbaa !139
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !2469

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ao
  br i1 %cmp.n, label %.loopexit441, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.loopexit312._crit_edge, %middle.block
  %indvars.iv369.ph = phi i64 [ 0, %.loopexit312._crit_edge ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.loopexit441:                                     ; preds = %scalar.ph, %middle.block
  %i.ca = icmp eq i32 %2, 0
  br i1 %i.ca, label %bb.m, label %bb.u

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %scalar.ph ], [ %indvars.iv369.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv369 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !2457
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.au, float %.0)
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %indvars.iv369
  store float %i.cd, ptr %i.ce, align 4, !tbaa !94
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !2465
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %indvars.iv369
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !139
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond375.not = icmp eq i64 %indvars.iv.next370, %i.ao
  br i1 %exitcond375.not, label %.loopexit441, label %scalar.ph, !llvm.loop !2470

bb.m:                                             ; preds = %.loopexit441
  %i.ci = load i32, ptr %.0267, align 4, !tbaa !139
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.q
  %indvars.iv384 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next385, %bb.q ] ; 6 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %indvars.iv384
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !94 ; 2 uses
  %i.cl = fcmp ult float %i.ck, 0.000000e+00
  br i1 %i.cl, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not297 = icmp eq i64 %indvars.iv384, 0
  br i1 %.not297, label %.loopexit305, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = trunc nuw i64 %indvars.iv384 to i32
  %i.cn = add nuw i64 %indvars.iv384, 4294967295
  %i.co = and i64 %i.cn, 4294967295               ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !94 ; 2 uses
  %i.cr = fsub float 0.000000e+00, %i.cq
  %i.cs = fsub float %i.ck, %i.cq
  %i.ct = fdiv float %i.cr, %i.cs
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %i.co
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %indvars.iv384
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !139
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !139
  %i.cy = insertelement <4 x i32> poison, i32 %i.cw, i64 0
  %i.cz = shufflevector <4 x i32> %i.cy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.da = lshr <4 x i32> %i.cz, <i32 8, i32 16, i32 24, i32 0>
  %i.db = and <4 x i32> %i.da, <i32 255, i32 255, i32 -1, i32 255> ; 2 uses
  %i.dc = insertelement <4 x i32> poison, i32 %i.cx, i64 0
  %i.dd = shufflevector <4 x i32> %i.dc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.de = lshr <4 x i32> %i.dd, <i32 8, i32 16, i32 24, i32 0>
  %i.df = and <4 x i32> %i.de, <i32 255, i32 255, i32 -1, i32 255>
  %i.dg = uitofp <4 x i32> %i.db to <4 x float>
  %i.dh = sub nsw <4 x i32> %i.df, %i.db
  %i.di = sitofp <4 x i32> %i.dh to <4 x float>
  %i.dj = insertelement <4 x float> poison, float %i.ct, i64 0
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dk, <4 x float> %i.di, <4 x float> %i.dg)
  %i.dm = fadd <4 x float> %i.dl, splat (float 5.000000e-01)
  %i.dn = fptoui <4 x float> %i.dm to <4 x i32>
  %i.do = shl <4 x i32> %i.dn, <i32 16, i32 8, i32 0, i32 24>
  %i.dp = and <4 x i32> %i.do, <i32 16711680, i32 65280, i32 255, i32 -1>
  %i.dq = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.dp)
  br label %.loopexit305

bb.q:                                             ; preds = %bb.n
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1 ; 2 uses
  %exitcond389.not = icmp eq i64 %indvars.iv.next385, %i.ao
  br i1 %exitcond389.not, label %.loopexit305.thread, label %bb.n, !llvm.loop !2471

.loopexit305:                                     ; preds = %bb.o, %bb.p
  %.0269319 = phi i32 [ %i.cm, %bb.p ], [ 0, %bb.o ] ; 4 uses
  %.0268 = phi i32 [ %i.dq, %bb.p ], [ %i.ci, %bb.o ]
  %i.dr = icmp eq i32 %.0269319, %1
  br i1 %i.dr, label %.loopexit305.thread, label %bb.r

.loopexit305.thread:                              ; preds = %bb.q, %.loopexit305
  %i.ds = add i32 %1, -1
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !139 ; 2 uses
  tail call void %5(float noundef 0.000000e+00, i32 noundef %i.dv, float noundef f0x40C90FDB, i32 noundef %i.dv, ptr noundef %6) #63
  br label %.loopexit306

bb.r:                                             ; preds = %.loopexit305
  %i.dw = zext i32 %.0269319 to i64               ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.dw
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !94
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %i.dw
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !139
  tail call void %5(float noundef 0.000000e+00, i32 noundef %.0268, float noundef %i.dy, i32 noundef %i.ea, ptr noundef %6) #63
  %.1270336 = add i32 %.0269319, 1                ; 3 uses
  %i.eb = icmp ult i32 %.1270336, %1
  br i1 %i.eb, label %.lr.ph340.preheader, label %.loopexit

.lr.ph340.preheader:                              ; preds = %bb.r
  %i.ec = zext i32 %.1270336 to i64
  %i.ed = zext i32 %.0269319 to i64
  br label %.lr.ph340

.lr.ph340:                                        ; preds = %.lr.ph340.preheader, %bb.s
  %indvars.iv390 = phi i64 [ %i.ec, %.lr.ph340.preheader ], [ %indvars.iv.next391, %bb.s ] ; 6 uses
  %.1270.in337 = phi i64 [ %i.ed, %.lr.ph340.preheader ], [ %indvars.iv390, %bb.s ] ; 4 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %indvars.iv390
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !94 ; 3 uses
  %i.eg = fcmp ugt float %i.ef, f0x40C90FDB
  br i1 %i.eg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph340
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %.1270.in337
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !94
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %.1270.in337
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !139
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %indvars.iv390
  %i.em = load i32, ptr %i.el, align 4, !tbaa !139
  tail call void %5(float noundef %i.ei, i32 noundef %i.ek, float noundef %i.ef, i32 noundef %i.em, ptr noundef %6) #63
  %indvars.iv.next391 = add nuw nsw i64 %indvars.iv390, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next391 to i32
  %exitcond394.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond394.not, label %.loopexit.thread, label %.lr.ph340, !llvm.loop !2472

bb.t:                                             ; preds = %.lr.ph340
  %i.en = trunc nuw i64 %indvars.iv390 to i32
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %.1270.in337
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !94 ; 3 uses
  %i.eq = fsub float f0x40C90FDB, %i.ep
  %i.er = fsub float %i.ef, %i.ep
  %i.es = fdiv float %i.eq, %i.er
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %.1270.in337
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !139 ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %indvars.iv390
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !139
  %i.ex = tail call fastcc noundef i32 @_ZL13hb_color_lerpjjf(i32 noundef %i.eu, i32 noundef %i.ew, float noundef %i.es)
  tail call void %5(float noundef %i.ep, i32 noundef %i.eu, float noundef f0x40C90FDB, i32 noundef %i.ex, ptr noundef %6) #63
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.t
  %.1270315 = phi i32 [ %i.en, %bb.t ], [ %.1270336, %bb.r ]
  %i.ey = icmp eq i32 %.1270315, %1
  br i1 %i.ey, label %.loopexit.thread, label %.loopexit306

.loopexit.thread:                                 ; preds = %bb.s, %.loopexit
  %i.ez = add i32 %1, -1
  %i.fa = zext i32 %i.ez to i64                   ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !139 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.fa
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !94
  tail call void %5(float noundef %i.fe, i32 noundef %i.fc, float noundef f0x40C90FDB, i32 noundef %i.fc, ptr noundef %6) #63
  br label %.loopexit306

bb.u:                                             ; preds = %.loopexit441
  %i.ff = add i32 %1, -1
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.fg ; 2 uses
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !94 ; 3 uses
  %i.fj = load float, ptr %.0266, align 4, !tbaa !94 ; 4 uses
  %i.fk = fsub float %i.fi, %i.fj                 ; 7 uses
  %i.fl = tail call float @llvm.fabs.f32(float %i.fk) ; 4 uses
  %i.fm = fcmp olt float %i.fl, f0x358637BD
  br i1 %i.fm, label %.loopexit306, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fn = fcmp ult float %i.fj, 0.000000e+00
  br i1 %i.fn, label %.preheader307, label %.preheader309

.preheader309:                                    ; preds = %bb.v
  %i.fo = fcmp ogt float %i.fj, 0.000000e+00
  br i1 %i.fo, label %.lr.ph327, label %.preheader.lr.ph

.lr.ph327:                                        ; preds = %.preheader309
  %i.fp = fcmp ogt float %i.fk, 0.000000e+00      ; 2 uses
  %.1264.v = select i1 %i.fp, i32 -1, i32 1
  %i.fq = fneg float %i.fk
  %.1262.p = select i1 %i.fp, float %i.fq, float %i.fk
  br label %bb.w

.preheader307:                                    ; preds = %bb.v
  %i.fr = fcmp olt float %i.fi, 0.000000e+00
  br i1 %i.fr, label %.lr.ph330, label %.preheader.lr.ph

.lr.ph330:                                        ; preds = %.preheader307
  %i.fs = fcmp ogt float %i.fk, 0.000000e+00      ; 2 uses
  %.3.v = select i1 %i.fs, i32 1, i32 -1
  %i.ft = fneg float %i.fk
  %.1.p = select i1 %i.fs, float %i.fk, float %i.ft
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph327, %bb.w
  %.0261326 = phi float [ %i.fj, %.lr.ph327 ], [ %.1262, %bb.w ]
  %.0263325 = phi i32 [ 0, %.lr.ph327 ], [ %.1264, %bb.w ]
  %.1264 = add nsw i32 %.0263325, %.1264.v        ; 2 uses
  %.1262 = fadd float %.1262.p, %.0261326         ; 2 uses
  %i.fu = fcmp ogt float %.1262, 0.000000e+00
  br i1 %i.fu, label %bb.w, label %.loopexit308, !llvm.loop !2473

bb.x:                                             ; preds = %.lr.ph330, %bb.x
  %.0260329 = phi float [ %i.fi, %.lr.ph330 ], [ %.1, %bb.x ]
  %.2328 = phi i32 [ 0, %.lr.ph330 ], [ %.3, %bb.x ]
  %.3 = add nsw i32 %.2328, %.3.v                 ; 2 uses
  %.1 = fadd float %.1.p, %.0260329               ; 2 uses
  %i.fv = fcmp olt float %.1, 0.000000e+00
  br i1 %i.fv, label %bb.x, label %.loopexit308, !llvm.loop !2474

.loopexit308:                                     ; preds = %bb.w, %bb.x
  %.4 = phi i32 [ %.3, %bb.x ], [ %.1264, %bb.w ] ; 2 uses
  %i.fw = icmp slt i32 %.4, 1000
  br i1 %i.fw, label %.preheader.lr.ph, label %.loopexit306

.preheader.lr.ph:                                 ; preds = %.preheader309, %.preheader307, %.loopexit308
  %.4415 = phi i32 [ %.4, %.loopexit308 ], [ 0, %.preheader307 ], [ 0, %.preheader309 ]
  %.not343 = icmp eq i32 %1, 1
  %i.fx = icmp eq i32 %2, 2
  br i1 %.not343, label %.loopexit306.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count381 = zext i32 %1 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0259334 = phi i32 [ %i.hq, %._crit_edge ], [ %.4415, %.preheader.preheader ] ; 3 uses
  %i.fy = trunc i32 %.0259334 to i1
  %or.cond4 = and i1 %i.fx, %i.fy
  %i.fz = sitofp i32 %.0259334 to float           ; 3 uses
  br label %bb.y

bb.y:                                             ; preds = %.preheader, %bb.ag
  %indvars.iv376 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next377, %bb.ag ] ; 6 uses
  br i1 %or.cond4, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ga = load float, ptr %.0266, align 4, !tbaa !94
  %i.gb = load float, ptr %i.fh, align 4, !tbaa !94
  %i.gc = fadd float %i.ga, %i.gb                 ; 2 uses
  %8 = sub nuw nsw i64 %i.ao, %indvars.iv376      ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %8
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !94
  %i.gf = fsub float %i.gc, %i.ge
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.fz, float %i.fl, float %i.gf)
  %9 = sub nuw nsw i64 %i.fg, %indvars.iv376      ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %9
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !94
  %i.gj = fsub float %i.gc, %i.gi
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.gk = add nsw i64 %indvars.iv376, -1          ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.gk
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !94
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.fz, float %i.fl, float %i.gm)
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %indvars.iv376
  %i.gp = load float, ptr %i.go, align 4, !tbaa !94
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink = phi float [ %i.gp, %bb.aa ], [ %i.gj, %bb.z ]
  %.0257 = phi float [ %i.gn, %bb.aa ], [ %i.gg, %bb.z ] ; 7 uses
  %.pn = phi i64 [ %i.gk, %bb.aa ], [ %8, %bb.z ]
  %.pn296 = phi i64 [ %indvars.iv376, %bb.aa ], [ %9, %bb.z ]
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.fz, float %i.fl, float %.sink) ; 6 uses
  %.0254.in = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %.pn296
  %.0254 = load i32, ptr %.0254.in, align 4, !tbaa !139 ; 4 uses
  %.0255.in = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %.pn
  %.0255 = load i32, ptr %.0255.in, align 4, !tbaa !139 ; 4 uses
  %i.gr = fcmp olt float %i.gq, 0.000000e+00
  br i1 %i.gr, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gs = fcmp olt float %.0257, 0.000000e+00
  br i1 %i.gs, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gt = fsub float 0.000000e+00, %.0257
  %i.gu = fsub float %i.gq, %.0257
  %i.gv = fdiv float %i.gt, %i.gu
  %i.gw = insertelement <4 x i32> poison, i32 %.0255, i64 0
  %i.gx = shufflevector <4 x i32> %i.gw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gy = lshr <4 x i32> %i.gx, <i32 8, i32 16, i32 24, i32 0>
  %i.gz = and <4 x i32> %i.gy, <i32 255, i32 255, i32 -1, i32 255> ; 2 uses
  %i.ha = insertelement <4 x i32> poison, i32 %.0254, i64 0
  %i.hb = shufflevector <4 x i32> %i.ha, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hc = lshr <4 x i32> %i.hb, <i32 8, i32 16, i32 24, i32 0>
  %i.hd = and <4 x i32> %i.hc, <i32 255, i32 255, i32 -1, i32 255>
  %i.he = uitofp <4 x i32> %i.gz to <4 x float>
  %i.hf = sub nsw <4 x i32> %i.hd, %i.gz
  %i.hg = sitofp <4 x i32> %i.hf to <4 x float>
  %i.hh = insertelement <4 x float> poison, float %i.gv, i64 0
  %i.hi = shufflevector <4 x float> %i.hh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hi, <4 x float> %i.hg, <4 x float> %i.he)
  %i.hk = fadd <4 x float> %i.hj, splat (float 5.000000e-01)
  %i.hl = fptoui <4 x float> %i.hk to <4 x i32>
  %i.hm = shl <4 x i32> %i.hl, <i32 16, i32 8, i32 0, i32 24>
  %i.hn = and <4 x i32> %i.hm, <i32 16711680, i32 65280, i32 255, i32 -1>
  %i.ho = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.hn)
  tail call void %5(float noundef 0.000000e+00, i32 noundef %i.ho, float noundef %i.gq, i32 noundef %.0254, ptr noundef %6) #63
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.hp = fcmp ult float %i.gq, f0x40C90FDB
  br i1 %i.hp, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  tail call void %5(float noundef %.0257, i32 noundef %.0255, float noundef %i.gq, i32 noundef %.0254, ptr noundef %6) #63
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ab, %bb.af, %bb.ad
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond382.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count381
  br i1 %exitcond382.not, label %._crit_edge, label %bb.y, !llvm.loop !2475

._crit_edge:                                      ; preds = %bb.ag
  %i.hq = add nsw i32 %.0259334, 1                ; 2 uses
  %exitcond383.not = icmp eq i32 %i.hq, 1000
  br i1 %exitcond383.not, label %.loopexit306, label %.preheader, !llvm.loop !2476

bb.ah:                                            ; preds = %bb.ae
  %i.hr = fsub float f0x40C90FDB, %.0257
  %i.hs = fsub float %i.gq, %.0257
  %i.ht = fdiv float %i.hr, %i.hs
  %i.hu = insertelement <4 x i32> poison, i32 %.0255, i64 0
  %i.hv = shufflevector <4 x i32> %i.hu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hw = lshr <4 x i32> %i.hv, <i32 8, i32 16, i32 24, i32 0>
  %i.hx = and <4 x i32> %i.hw, <i32 255, i32 255, i32 -1, i32 255> ; 2 uses
  %i.hy = insertelement <4 x i32> poison, i32 %.0254, i64 0
  %i.hz = shufflevector <4 x i32> %i.hy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ia = lshr <4 x i32> %i.hz, <i32 8, i32 16, i32 24, i32 0>
  %i.ib = and <4 x i32> %i.ia, <i32 255, i32 255, i32 -1, i32 255>
  %i.ic = uitofp <4 x i32> %i.hx to <4 x float>
  %i.id = sub nsw <4 x i32> %i.ib, %i.hx
  %i.ie = sitofp <4 x i32> %i.id to <4 x float>
  %i.if = insertelement <4 x float> poison, float %i.ht, i64 0
  %i.ig = shufflevector <4 x float> %i.if, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ih = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ig, <4 x float> %i.ie, <4 x float> %i.ic)
  %i.ii = fadd <4 x float> %i.ih, splat (float 5.000000e-01)
  %i.ij = fptoui <4 x float> %i.ii to <4 x i32>
  %i.ik = shl <4 x i32> %i.ij, <i32 16, i32 8, i32 0, i32 24>
  %i.il = and <4 x i32> %i.ik, <i32 16711680, i32 65280, i32 255, i32 -1>
  %i.im = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.il)
  tail call void %5(float noundef %.0257, i32 noundef %.0255, float noundef f0x40C90FDB, i32 noundef %i.im, ptr noundef %6) #63
  br label %.loopexit306

.loopexit306:                                     ; preds = %._crit_edge, %.loopexit308, %bb.u, %bb.ah, %.loopexit305.thread, %.loopexit.thread, %.loopexit
  br i1 %i.an, label %bb.ai, label %.loopexit306.thread

bb.ai:                                            ; preds = %.loopexit306
  call void @free(ptr noundef nonnull %.0266) #63
  call void @free(ptr noundef nonnull %.0267) #63
  br label %.loopexit306.thread

.loopexit306.thread:                              ; preds = %.preheader.lr.ph, %.loopexit306, %bb.ai, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %bb.aj

bb.aj:                                            ; preds = %bb.c, %bb.g, %bb.f, %bb.a, %.loopexit306.thread
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i32 @_ZL13hb_color_lerpjjf(i32 noundef %0, i32 noundef %1, float noundef %2) unnamed_addr #39 {
bb.a:
  %i.a = lshr i32 %0, 8
  %i.b = lshr i32 %0, 16
  %i.c = lshr i32 %0, 24                          ; 2 uses
  %i.d = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.e = insertelement <4 x i32> %i.d, i32 %i.c, i64 1
  %i.f = insertelement <4 x i32> %i.e, i32 %i.b, i64 2
  %i.g = insertelement <4 x i32> %i.f, i32 %i.a, i64 3
  %i.h = and <4 x i32> %i.g, <i32 255, i32 -1, i32 255, i32 255> ; 2 uses
  %i.i = lshr i32 %1, 8
  %i.j = lshr i32 %1, 16
  %i.k = lshr i32 %1, 24
  %i.l = insertelement <4 x i32> poison, i32 %1, i64 0
  %i.m = insertelement <4 x i32> %i.l, i32 %i.k, i64 1
  %i.n = insertelement <4 x i32> %i.m, i32 %i.j, i64 2
  %i.o = insertelement <4 x i32> %i.n, i32 %i.i, i64 3
  %i.p = and <4 x i32> %i.o, <i32 255, i32 -1, i32 255, i32 255>
  %i.q = shufflevector <4 x i32> %i.h, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 poison, i32 0>
  %i.r = insertelement <4 x i32> %i.q, i32 %i.c, i64 2
  %i.s = uitofp nneg <4 x i32> %i.r to <4 x float>
  %i.t = sub nsw <4 x i32> %i.p, %i.h
  %i.u = sitofp <4 x i32> %i.t to <4 x float>
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.w = insertelement <4 x float> poison, float %2, i64 0
  %i.x = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> zeroinitializer
  %i.y = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.v, <4 x float> %i.s)
  %i.z = fadd <4 x float> %i.y, splat (float 5.000000e-01)
  %i.aa = fptoui <4 x float> %i.z to <4 x i32>
  %i.ab = shl <4 x i32> %i.aa, <i32 16, i32 8, i32 0, i32 24>
  %i.ac = and <4 x i32> %i.ab, <i32 16711680, i32 65280, i32 255, i32 -1>
  %i.ad = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ac)
  ret i32 %i.ad
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #30

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @hb_set_get_empty() local_unnamed_addr #4 {
bb.a:
  ret ptr @_hb_NullPool
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef ptr @hb_set_reference(ptr nofree noundef returned captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #6 {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %_ZL19hb_object_referenceI8hb_set_tEPT_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4 ; 0 uses
  %i.b = load atomic i32, ptr %0 monotonic, align 4
  %.not.i7.i = icmp eq i32 %i.b, 0
  br i1 %.not.i7.i, label %_ZL19hb_object_referenceI8hb_set_tEPT_S2_.exit, label %bb.c, !prof !48

bb.c:                                             ; preds = %bb.b
  %i.c = atomicrmw add ptr %0, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZL19hb_object_referenceI8hb_set_tEPT_S2_.exit

_ZL19hb_object_referenceI8hb_set_tEPT_S2_.exit:   ; preds = %bb.a, %bb.b, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_set_set_user_data(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZL23hb_object_set_user_dataI8hb_set_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZL23hb_object_set_user_dataI8hb_set_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit, label %.preheader.i, !prof !48

.preheader.i:                                     ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 2 uses
  %.not1923.i = icmp eq ptr %i.c, null
  br i1 %.not1923.i, label %.lr.ph.i, label %._crit_edge.i, !prof !46

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %i.d = tail call noalias noundef dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #64 ; 8 uses
  %.not20.i = icmp eq ptr %i.d, null
  br i1 %.not20.i, label %_ZL23hb_object_set_user_dataI8hb_set_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit, label %bb.c, !prof !48

bb.c:                                             ; preds = %.lr.ph.i
  %i.e = tail call i32 @pthread_mutex_init(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef null) #63 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = cmpxchg weak ptr %i.b, ptr null, ptr %i.d acq_rel monotonic, align 8
  %i.h = extractvalue { ptr, i1 } %i.g, 1
  br i1 %i.h, label %._crit_edge.i, label %bb.d, !prof !49

._crit_edge.i:                                    ; preds = %bb.d, %bb.c, %.preheader.i
  %.016.i = phi ptr [ %i.c, %.preheader.i ], [ %i.l, %bb.d ], [ %i.d, %bb.c ]
  %i.i = tail call noundef zeroext i1 @_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei(ptr noundef nonnull align 8 dereferenceable(56) %.016.i, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %i.j = zext i1 %i.i to i32
  br label %_ZL23hb_object_set_user_dataI8hb_set_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit

end_hunk_12
begin_hunk_13_@_ZNK2OT12MultiVarData9get_deltaEjPKijRKNS_19SparseVarRegionListE10hb_array_tIfEPNS_17hb_scalar_cache_tE:bb.a
  %i.bt = icmp sgt i16 %i.bn, 0
  %i.bu = and i1 %i.bs, %i.bt
  br i1 %i.bu, label %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.thread.i, label %bb.m, !prof !48

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i = icmp sgt i32 %i.az, %i.bk
  %.not29.i.i.i = icmp slt i32 %i.az, %i.bo
  %or.cond30.i.i.i = and i1 %.not.i.i.i, %.not29.i.i.i
  br i1 %or.cond30.i.i.i, label %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.i, label %_ZNK2OT21SparseVariationRegion8evaluateEPKij.exit

_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.i: ; preds = %bb.m
  %i.bv = icmp slt i32 %i.az, %i.be               ; 2 uses
  %i.bw = sub nsw i32 %i.az, %i.bk
  %i.bx = sub nsw i32 %i.be, %i.bk
  %i.by = sub nsw i32 %i.bo, %i.az
  %i.bz = sub nsw i32 %i.bo, %i.be
  %.sink43.i = select i1 %i.bv, i32 %i.bx, i32 %i.bz
  %.sink.in.i = select i1 %i.bv, i32 %i.bw, i32 %i.by
  %.sink.i = sitofp i32 %.sink.in.i to float
  %i.ca = sitofp i32 %.sink43.i to float
  %i.cb = fdiv float %.sink.i, %i.ca              ; 2 uses
  %i.cc = fcmp une float %i.cb, 0.000000e+00
  %i.cd = fmul float %.01529.i, %i.cb
  br i1 %i.cc, label %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.thread.i, label %_ZNK2OT21SparseVariationRegion8evaluateEPKij.exit

_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.thread.i: ; preds = %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.i, %bb.l, %bb.k, %bb.i
  %.11623.i = phi float [ %i.cd, %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.i ], [ %.01529.i, %bb.i ], [ %.01529.i, %bb.k ], [ %.01529.i, %bb.l ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK2OT21SparseVariationRegion8evaluateEPKij.exit, label %bb.g, !llvm.loop !2531

_ZNK2OT21SparseVariationRegion8evaluateEPKij.exit: ; preds = %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.thread.i, %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.i, %bb.m, %bb.j, %_ZNK2OT7ArrayOfINS_8OffsetToINS_21SparseVariationRegionENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit
  %.3.i = phi float [ 1.000000e+00, %_ZNK2OT7ArrayOfINS_8OffsetToINS_21SparseVariationRegionENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit ], [ 0.000000e+00, %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.i ], [ %.11623.i, %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.thread.i ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.m ] ; 3 uses
  %i.ce = load i32, ptr %6, align 4, !tbaa !328
  %.not.i19 = icmp ugt i32 %i.ce, %i.z
  br i1 %.not.i19, label %bb.n, label %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit, !prof !49

bb.n:                                             ; preds = %_ZNK2OT21SparseVariationRegion8evaluateEPKij.exit
  %i.cf = fmul float %.3.i, f0x4E800000
  %i.cg = fadd float %i.cf, 5.000000e-01
  %i.ch = call noundef float @llvm.floor.f32(float %i.cg)
  %i.ci = fptosi float %i.ch to i32
  store atomic i32 %i.ci, ptr %i.ae monotonic, align 4
  br label %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit

_ZNK2OT7ArrayOfINS_8OffsetToINS_21SparseVariationRegionENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit24: ; preds = %bb.c
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.cj = zext i16 %i.y to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 1, !tbaa !58 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  %i.cn = call i32 @llvm.bswap.i32(i32 %i.cl)
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 %i.co
  %.0.i.i25 = select i1 %i.cm, ptr @_hb_NullPool, ptr %i.cp, !prof !48 ; 2 uses
  %i.cq = load i16, ptr %.0.i.i25, align 1, !tbaa !62 ; 2 uses
  %.not28.not.i26 = icmp eq i16 %i.cq, 0
  br i1 %.not28.not.i26, label %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread55, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_21SparseVariationRegionENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit24
  %i.cr = call noundef i16 @llvm.bswap.i16(i16 %i.cq)
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i25, i64 2
  %wide.trip.count.i28 = zext i16 %i.cr to i64
  br label %bb.o

bb.o:                                             ; preds = %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.thread.i40, %.lr.ph.i27
  %indvars.iv.i29 = phi i64 [ 0, %.lr.ph.i27 ], [ %indvars.iv.next.i42, %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.thread.i40 ] ; 2 uses
  %.01529.i30 = phi float [ 1.000000e+00, %.lr.ph.i27 ], [ %.11623.i41, %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.thread.i40 ] ; 4 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.i29 ; 4 uses
  %i.cu = load i16, ptr %i.ct, align 1, !tbaa !62
  %i.cv = call noundef i16 @llvm.bswap.i16(i16 %i.cu) ; 2 uses
  %i.cw = zext i16 %i.cv to i32
  %i.cx = icmp ugt i32 %3, %i.cw
  br i1 %i.cx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cy = zext i16 %i.cv to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !139
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.db = phi i32 [ %i.da, %bb.p ], [ 0, %bb.o ]  ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.de = load i16, ptr %i.dd, align 1, !tbaa !62 ; 2 uses
  %i.df = call noundef i16 @llvm.bswap.i16(i16 %i.de) ; 3 uses
  %i.dg = sext i16 %i.df to i32                   ; 4 uses
  %i.dh = icmp eq i16 %i.de, 0
  %i.di = icmp eq i32 %i.db, %i.dg
  %or.cond.i.i.i31 = or i1 %i.dh, %i.di
  br i1 %or.cond.i.i.i31, label %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.thread.i40, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dj = icmp eq i32 %i.db, 0
  br i1 %i.dj, label %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dk = load i16, ptr %i.dc, align 1, !tbaa !62
  %i.dl = call noundef i16 @llvm.bswap.i16(i16 %i.dk) ; 3 uses
  %i.dm = sext i16 %i.dl to i32                   ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ct, i64 6
  %i.do = load i16, ptr %i.dn, align 1, !tbaa !62
  %i.dp = call noundef i16 @llvm.bswap.i16(i16 %i.do) ; 3 uses
  %i.dq = sext i16 %i.dp to i32                   ; 3 uses
  %i.dr = icmp sgt i16 %i.dl, %i.df
  %i.ds = icmp sgt i16 %i.df, %i.dp
  %i.dt = or i1 %i.dr, %i.ds
  br i1 %i.dt, label %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.thread.i40, label %bb.t, !prof !48

bb.t:                                             ; preds = %bb.s
  %i.du = icmp slt i16 %i.dl, 0
  %i.dv = icmp sgt i16 %i.dp, 0
  %i.dw = and i1 %i.du, %i.dv
  br i1 %i.dw, label %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.thread.i40, label %bb.u, !prof !48

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i32 = icmp sgt i32 %i.db, %i.dm
  %.not29.i.i.i33 = icmp slt i32 %i.db, %i.dq
  %or.cond30.i.i.i34 = and i1 %.not.i.i.i32, %.not29.i.i.i33
  br i1 %or.cond30.i.i.i34, label %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.i36, label %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread

_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.i36: ; preds = %bb.u
  %i.dx = icmp slt i32 %i.db, %i.dg               ; 2 uses
  %i.dy = sub nsw i32 %i.db, %i.dm
  %i.dz = sub nsw i32 %i.dg, %i.dm
  %i.ea = sub nsw i32 %i.dq, %i.db
  %i.eb = sub nsw i32 %i.dq, %i.dg
  %.sink43.i37 = select i1 %i.dx, i32 %i.dz, i32 %i.eb
  %.sink.in.i38 = select i1 %i.dx, i32 %i.dy, i32 %i.ea
  %.sink.i39 = sitofp i32 %.sink.in.i38 to float
  %i.ec = sitofp i32 %.sink43.i37 to float
  %i.ed = fdiv float %.sink.i39, %i.ec            ; 2 uses
  %i.ee = fcmp une float %i.ed, 0.000000e+00
  %i.ef = fmul float %.01529.i30, %i.ed
  br i1 %i.ee, label %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.thread.i40, label %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread

_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.thread.i40: ; preds = %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.i36, %bb.t, %bb.s, %bb.q
  %.11623.i41 = phi float [ %i.ef, %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.i36 ], [ %.01529.i30, %bb.q ], [ %.01529.i30, %bb.s ], [ %.01529.i30, %bb.t ] ; 2 uses
  %indvars.iv.next.i42 = add nuw nsw i64 %indvars.iv.i29, 1 ; 2 uses
  %exitcond.not.i43 = icmp eq i64 %indvars.iv.next.i42, %wide.trip.count.i28
  br i1 %exitcond.not.i43, label %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit, label %bb.o, !llvm.loop !2531

_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit: ; preds = %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.thread.i40, %bb.f, %_ZNK2OT21SparseVariationRegion8evaluateEPKij.exit, %bb.n
  %.1.i = phi float [ %i.ah, %bb.f ], [ %.3.i, %bb.n ], [ %.3.i, %_ZNK2OT21SparseVariationRegion8evaluateEPKij.exit ], [ %.11623.i41, %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.thread.i40 ] ; 2 uses
  %i.eg = fcmp oeq float %.1.i, 0.000000e+00
  br i1 %i.eg, label %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread, label %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread55

_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread: ; preds = %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.i36, %bb.r, %bb.u, %bb.e, %bb.d, %bb.b, %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit
  %i.eh = add i32 %i.v, %.01566
  br label %bb.w

_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread55: ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_21SparseVariationRegionENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit24, %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit
  %.1.i57 = phi float [ %.1.i, %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit ], [ 1.000000e+00, %_ZNK2OT7ArrayOfINS_8OffsetToINS_21SparseVariationRegionENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit24 ]
  %.not = icmp eq i32 %.01566, 0
  br i1 %.not, label %_ZN2OT11TupleValues9fetcher_t4skipEj.exit, label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread55
  %.pre.i = load i32, ptr %i.n, align 8, !tbaa !2529
  %.promoted = load ptr, ptr %7, align 8
  %.promoted63 = load i32, ptr %i.o, align 4
  %i.ei = load ptr, ptr %i.k, align 8             ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread.i, %.lr.ph.i45
  %.sink.i4965 = phi i32 [ %.promoted63, %.lr.ph.i45 ], [ %.sink.i4964, %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread.i ]
  %i.ej = phi ptr [ %.promoted, %.lr.ph.i45 ], [ %i.fc, %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread.i ] ; 4 uses
  %i.ek = phi i32 [ %.pre.i, %.lr.ph.i45 ], [ %i.ey, %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread.i ] ; 2 uses
  %.010.i = phi i32 [ %.01566, %.lr.ph.i45 ], [ %i.ez, %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread.i ] ; 2 uses
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread.i, label %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.i, !prof !49

_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.i: ; preds = %bb.v
  %.not.i47 = icmp ult ptr %i.ej, %i.ei
  br i1 %.not.i47, label %switch.lookup, label %_ZN2OT11TupleValues9fetcher_t4skipEj.exit.sink.split, !prof !49

switch.lookup:                                    ; preds = %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 1 ; 3 uses
  store ptr %i.em, ptr %7, align 8, !tbaa !2526
  %i.en = load i8, ptr %i.ej, align 1, !tbaa !61
  %i.eo = zext i8 %i.en to i32                    ; 2 uses
  %i.ep = and i32 %i.eo, 63
  %i.eq = add nuw nsw i32 %i.ep, 1                ; 2 uses
  %i.er = lshr i32 %i.eo, 6
  %i.es = zext nneg i32 %i.er to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2OT11TupleValues9fetcher_t11_ensure_runEv, i64 %i.es
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 3 uses
  store i32 %switch.ext, ptr %i.o, align 4, !tbaa !2530
  %i.et = mul nuw nsw i32 %i.eq, %switch.ext
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.eu
  %.not4.i = icmp ugt ptr %i.ev, %i.ei
  br i1 %.not4.i, label %_ZN2OT11TupleValues9fetcher_t4skipEj.exit.sink.split, label %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread.i, !prof !48

_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread.i: ; preds = %switch.lookup, %bb.v
  %.sink.i4964 = phi i32 [ %.sink.i4965, %bb.v ], [ %switch.ext, %switch.lookup ] ; 2 uses
  %i.ew = phi ptr [ %i.ej, %bb.v ], [ %i.em, %switch.lookup ]
  %i.ex = phi i32 [ %i.ek, %bb.v ], [ %i.eq, %switch.lookup ] ; 2 uses
  %.sroa.speculated.i = call i32 @llvm.umin.i32(i32 %.010.i, i32 %i.ex) ; 3 uses
  %i.ey = sub nuw nsw i32 %i.ex, %.sroa.speculated.i ; 2 uses
  store i32 %i.ey, ptr %i.n, align 8, !tbaa !2529
  %i.ez = sub nuw i32 %.010.i, %.sroa.speculated.i ; 2 uses
  %i.fa = mul i32 %.sink.i4964, %.sroa.speculated.i
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fb ; 2 uses
  store ptr %i.fc, ptr %7, align 8, !tbaa !2526
  %.not.i46 = icmp eq i32 %i.ez, 0
  br i1 %.not.i46, label %_ZN2OT11TupleValues9fetcher_t4skipEj.exit, label %bb.v, !llvm.loop !2532

_ZN2OT11TupleValues9fetcher_t4skipEj.exit.sink.split: ; preds = %switch.lookup, %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.i
  store i32 0, ptr %i.n, align 8, !tbaa !2529
  br label %_ZN2OT11TupleValues9fetcher_t4skipEj.exit

_ZN2OT11TupleValues9fetcher_t4skipEj.exit:        ; preds = %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread.i, %_ZN2OT11TupleValues9fetcher_t4skipEj.exit.sink.split, %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread55
  call void @_ZN2OT11TupleValues9fetcher_t7_add_toILb1EEEv10hb_array_tIfEf(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, float noundef %.1.i57)
  br label %bb.w

bb.w:                                             ; preds = %_ZN2OT11TupleValues9fetcher_t4skipEj.exit, %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread
  %.2 = phi i32 [ %i.eh, %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread ], [ 0, %_ZN2OT11TupleValues9fetcher_t4skipEj.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !2533
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #30

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT11TupleValues9fetcher_t11_ensure_runEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2526   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2528 ; 2 uses
  %.not = icmp ult ptr %i.a, %i.c
  br i1 %.not, label %switch.lookup, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !2529
  br label %bb.d

switch.lookup:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !2526
  %i.f = load i8, ptr %i.a, align 1, !tbaa !61
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = and i32 %i.g, 63
  %i.i = add nuw nsw i32 %i.h, 1                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 %i.i, ptr %i.j, align 8, !tbaa !2529
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = lshr i32 %i.g, 6
  %i.m = zext nneg i32 %i.l to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2OT11TupleValues9fetcher_t11_ensure_runEv, i64 %i.m
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 2 uses
  store i32 %switch.ext, ptr %i.k, align 4, !tbaa !2530
  %i.n = mul nuw nsw i32 %i.i, %switch.ext
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.o
  %.not4 = icmp ugt ptr %i.p, %i.c
  br i1 %.not4, label %bb.c, label %bb.d, !prof !48

bb.c:                                             ; preds = %switch.lookup
  store i32 0, ptr %i.j, align 8, !tbaa !2529
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %switch.lookup, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ true, %switch.lookup ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT11TupleValues9fetcher_t7_add_toILb1EEEv10hb_array_tIfEf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, float noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.2.8.extract.trunc = trunc i64 %2 to i32  ; 3 uses
  %.not = icmp eq i32 %.sroa.2.8.extract.trunc, 0
  br i1 %.not, label %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit._crit_edge, label %.lr.ph113

.lr.ph113:                                        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre = load i32, ptr %i.a, align 8, !tbaa !2529
  %broadcast.splatinsert224 = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat225 = shufflevector <4 x float> %broadcast.splatinsert224, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert201 = insertelement <4 x float> poison, float %3, i64 0 ; 2 uses
  %i.c = shufflevector <4 x float> %broadcast.splatinsert201, <4 x float> poison, <8 x i32> zeroinitializer
  %i.d = shufflevector <4 x float> %broadcast.splatinsert201, <4 x float> poison, <8 x i32> zeroinitializer
  %i.e = insertelement <4 x float> poison, float %3, i64 0
  %i.f = shufflevector <4 x float> %i.e, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert181 = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat182 = shufflevector <4 x float> %broadcast.splatinsert181, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert159 = insertelement <4 x float> poison, float %3, i64 0 ; 2 uses
  %i.g = shufflevector <4 x float> %broadcast.splatinsert159, <4 x float> poison, <8 x i32> zeroinitializer
  %i.h = shufflevector <4 x float> %broadcast.splatinsert159, <4 x float> poison, <8 x i32> zeroinitializer
  %i.i = insertelement <4 x float> poison, float %3, i64 0
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph113, %bb.g
  %i.k = phi i32 [ %.pre, %.lr.ph113 ], [ %i.mv, %bb.g ] ; 2 uses
  %.068111 = phi i32 [ 0, %.lr.ph113 ], [ %i.mw, %bb.g ] ; 2 uses
  %.069110 = phi ptr [ %1, %.lr.ph113 ], [ %.6, %bb.g ] ; 20 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread, label %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit, !prof !49

_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit: ; preds = %bb.b
  %i.m = tail call noundef zeroext i1 @_ZN2OT11TupleValues9fetcher_t11_ensure_runEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br i1 %i.m, label %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit._ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread_crit_edge, label %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit._crit_edge, !prof !124

_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit._ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread_crit_edge: ; preds = %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit
  %.pre129 = load i32, ptr %i.a, align 8, !tbaa !2529
  br label %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread

_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread: ; preds = %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit._ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread_crit_edge, %bb.b
  %i.n = phi i32 [ %.pre129, %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit._ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread_crit_edge ], [ %i.k, %bb.b ] ; 3 uses
  %i.o = sub i32 %.sroa.2.8.extract.trunc, %.068111 ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %i.n) ; 19 uses
  %i.p = load i32, ptr %i.b, align 4, !tbaa !2530
  switch i32 %i.p, label %bb.g [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 4, label %bb.f
  ]

bb.c:                                             ; preds = %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread
  %i.q = zext i32 %.sroa.speculated to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.069110, i64 %i.q
  br label %bb.g

bb.d:                                             ; preds = %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread
  %i.s = load ptr, ptr %0, align 8, !tbaa !2526   ; 7 uses
  %i.t = icmp ugt i32 %.sroa.speculated, 3
  br i1 %i.t, label %.lr.ph99.preheader, label %.preheader

.lr.ph99.preheader:                               ; preds = %bb.d
  %i.u = add i32 %.sroa.speculated, -4            ; 2 uses
  %i.v = lshr i32 %i.u, 2
  %narrow240 = add nuw nsw i32 %i.v, 1
  %i.w = zext nneg i32 %narrow240 to i64          ; 2 uses
  %min.iters.check156 = icmp ult i32 %i.u, 12
  br i1 %min.iters.check156, label %.lr.ph99.preheader242, label %vector.ph157

vector.ph157:                                     ; preds = %.lr.ph99.preheader
  %n.vec158 = and i64 %i.w, 2147483644            ; 5 uses
  %i.x = trunc nuw nsw i64 %n.vec158 to i32
  %i.y = shl i32 %i.x, 2
  %i.z = shl nuw nsw i64 %n.vec158, 2
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z    ; 2 uses
  %i.ab = shl nuw nsw i64 %n.vec158, 4
  %i.ac = getelementptr i8, ptr %.069110, i64 %i.ab ; 2 uses
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph157
  %index162 = phi i64 [ 0, %vector.ph157 ], [ %index.next171, %vector.body161 ] ; 3 uses
  %i.ad = shl i64 %index162, 2                    ; 4 uses
  %next.gep163 = getelementptr i8, ptr %i.s, i64 %i.ad ; 4 uses
  %i.ae = getelementptr i8, ptr %i.s, i64 %i.ad   ; 4 uses
  %next.gep164 = getelementptr i8, ptr %i.ae, i64 4
  %i.af = getelementptr i8, ptr %i.s, i64 %i.ad   ; 4 uses
  %next.gep165 = getelementptr i8, ptr %i.af, i64 8
  %i.ag = getelementptr i8, ptr %i.s, i64 %i.ad   ; 4 uses
  %next.gep166 = getelementptr i8, ptr %i.ag, i64 12
  %i.ah = shl i64 %index162, 4                    ; 4 uses
  %next.gep167 = getelementptr i8, ptr %.069110, i64 %i.ah ; 5 uses
  %i.ai = getelementptr i8, ptr %.069110, i64 %i.ah ; 4 uses
  %next.gep168 = getelementptr i8, ptr %i.ai, i64 16
  %i.aj = getelementptr i8, ptr %.069110, i64 %i.ah ; 4 uses
  %next.gep169 = getelementptr i8, ptr %i.aj, i64 32
  %i.ak = getelementptr i8, ptr %.069110, i64 %i.ah ; 4 uses
  %next.gep170 = getelementptr i8, ptr %i.ak, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep163, i64 1
  %i.am = getelementptr i8, ptr %i.ae, i64 5
  %i.an = getelementptr i8, ptr %i.af, i64 9
  %i.ao = getelementptr i8, ptr %i.ag, i64 13
  %i.ap = load i8, ptr %next.gep163, align 1, !tbaa !89
  %i.aq = load i8, ptr %next.gep164, align 1, !tbaa !89
  %i.ar = load i8, ptr %next.gep165, align 1, !tbaa !89
  %i.as = load i8, ptr %next.gep166, align 1, !tbaa !89
  %i.at = insertelement <4 x i8> poison, i8 %i.ap, i64 0
  %i.au = insertelement <4 x i8> %i.at, i8 %i.aq, i64 1
  %i.av = insertelement <4 x i8> %i.au, i8 %i.ar, i64 2
  %i.aw = insertelement <4 x i8> %i.av, i8 %i.as, i64 3
  %i.ax = sitofp <4 x i8> %i.aw to <4 x float>
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep167, i64 4
  %i.az = getelementptr i8, ptr %i.ai, i64 20
  %i.ba = getelementptr i8, ptr %i.aj, i64 36
  %i.bb = getelementptr i8, ptr %i.ak, i64 52
  %i.bc = load float, ptr %next.gep167, align 4, !tbaa !94
  %i.bd = load float, ptr %next.gep168, align 4, !tbaa !94
  %i.be = load float, ptr %next.gep169, align 4, !tbaa !94
  %i.bf = load float, ptr %next.gep170, align 4, !tbaa !94
  %i.bg = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 2
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 3
  %i.bk = getelementptr inbounds nuw i8, ptr %next.gep163, i64 2
  %i.bl = getelementptr i8, ptr %i.ae, i64 6
  %i.bm = getelementptr i8, ptr %i.af, i64 10
end_hunk_13
begin_hunk_14_@_ZN2OTL28hb_transforming_pen_cubic_toEP15hb_draw_funcs_tPvP15hb_draw_state_tffffffS2_:bb.a
  %i.ad = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> %i.ab, <4 x float> %i.ac) ; 4 uses
  %i.ae = extractelement <4 x float> %i.ad, i64 0
  %i.af = tail call float @llvm.fmuladd.f32(float %i.w, float %6, float %i.ae)
  %i.ag = extractelement <4 x float> %i.ad, i64 2
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.x, float %6, float %i.ag)
  %i.ai = extractelement <4 x float> %i.ad, i64 1
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.w, float %4, float %i.ai)
  %i.ak = extractelement <4 x float> %i.ad, i64 3
  %i.al = tail call float @llvm.fmuladd.f32(float %i.x, float %4, float %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.an = insertelement <2 x float> poison, float %8, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.e, <2 x float> %i.ao, <2 x float> %i.v) ; 3 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 0
  %i.ar = extractelement <2 x float> %i.ap, i64 1
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(48) %i.k, float noundef %i.al, float noundef %i.aj, float noundef %i.ah, float noundef %i.af, float noundef %i.aq, float noundef %i.ar, ptr noundef %i.s) #63, !inline_history !816
  store <2 x float> %i.ap, ptr %i.am, align 4, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2OTL30hb_transforming_pen_close_pathEP15hb_draw_funcs_tPvP15hb_draw_state_tS2_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2554 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2555 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !171  ; 8 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !197
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !198 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.k = load float, ptr %i.j, align 4, !tbaa !199
  %i.l = fcmp une float %i.i, %i.k
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !200 ; 2 uses
  br i1 %i.l, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load float, ptr %i.m, align 4, !tbaa !820
  %i.o = fcmp une float %.pre, %i.n
  br i1 %i.o, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !201
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !204  ; 2 uses
  %.not.i4 = icmp eq ptr %i.s, null
  br i1 %.not.i4, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !205
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit: ; preds = %._crit_edge, %bb.d
  %i.v = phi ptr [ %i.u, %bb.d ], [ null, %._crit_edge ]
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef %i.d, ptr noundef nonnull align 4 dereferenceable(48) %i.f, float noundef %i.i, float noundef %.pre, ptr noundef %i.v) #63, !inline_history !821
  br label %bb.e

bb.e:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !208
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !204  ; 2 uses
  %.not.i5 = icmp eq ptr %i.z, null
  br i1 %.not.i5, label %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !209
  br label %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit

_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit: ; preds = %bb.e, %bb.f
  %i.ac = phi ptr [ %i.ab, %bb.f ], [ null, %bb.e ]
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef %i.d, ptr noundef nonnull align 4 dereferenceable(48) %i.f, ptr noundef %i.ac) #63, !inline_history !822
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit: ; preds = %bb.a, %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #23

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2OTL34free_static_transforming_pen_funcsEv() #16 {
bb.a:
  br label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_tN2OT39hb_transforming_pen_funcs_lazy_loader_tEvLj0ES0_E10do_destroyEPS0_.exit.i

_ZN16hb_lazy_loader_tI15hb_draw_funcs_tN2OT39hb_transforming_pen_funcs_lazy_loader_tEvLj0ES0_E10do_destroyEPS0_.exit.i: ; preds = %bb.b, %bb.a
  %i.a = load atomic ptr, ptr @_ZN2OTL29static_transforming_pen_funcsE acquire, align 8 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_tN2OT39hb_transforming_pen_funcs_lazy_loader_tEvLj0ES0_E13free_instanceEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN16hb_lazy_loader_tI15hb_draw_funcs_tN2OT39hb_transforming_pen_funcs_lazy_loader_tEvLj0ES0_E10do_destroyEPS0_.exit.i
  %i.b = cmpxchg weak ptr @_ZN2OTL29static_transforming_pen_funcsE, ptr %i.a, ptr null acq_rel monotonic, align 8
  %i.c = extractvalue { ptr, i1 } %i.b, 1
  br i1 %i.c, label %.critedge.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_tN2OT39hb_transforming_pen_funcs_lazy_loader_tEvLj0ES0_E10do_destroyEPS0_.exit.i, !prof !49

.critedge.i:                                      ; preds = %bb.b
  %.not3.i.i = icmp eq ptr %i.a, @_hb_Null_hb_draw_funcs_t
  br i1 %.not3.i.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_tN2OT39hb_transforming_pen_funcs_lazy_loader_tEvLj0ES0_E13free_instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  tail call void @hb_draw_funcs_destroy(ptr noundef nonnull %i.a)
  br label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_tN2OT39hb_transforming_pen_funcs_lazy_loader_tEvLj0ES0_E13free_instanceEv.exit

_ZN16hb_lazy_loader_tI15hb_draw_funcs_tN2OT39hb_transforming_pen_funcs_lazy_loader_tEvLj0ES0_E13free_instanceEv.exit: ; preds = %_ZN16hb_lazy_loader_tI15hb_draw_funcs_tN2OT39hb_transforming_pen_funcs_lazy_loader_tEvLj0ES0_E10do_destroyEPS0_.exit.i, %.critedge.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT18glyf_accelerator_t10get_pointsINS_9glyf_impl14path_builder_tEEEbP9hb_font_tjT_10hb_array_tIKiER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, ptr noundef byval(%"struct.OT::glyf_impl::path_builder_t") align 8 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(152) %6, ptr noundef %7) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %8 = alloca %"struct.OT::glyf_impl::Glyph", align 8 ; 10 uses
  %9 = alloca %struct.hb_array_t.0, align 8       ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !179
  %.not = icmp ult i32 %2, %i.b
  br i1 %.not, label %bb.b, label %.loopexit522

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #63
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2556)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !319, !range !220, !noalias !2556, !noundef !74
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51, !noalias !2556 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54, !noalias !2556 ; 4 uses
  %i.k = zext i32 %2 to i64                       ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.k
  %i.m = load i16, ptr %i.l, align 1, !tbaa !62, !noalias !2556
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m)
  %i.o = zext i16 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 1
  %i.q = add nuw i32 %2, 1
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.r
  %i.t = load i16, ptr %i.s, align 1, !tbaa !62, !noalias !2556
  %i.u = tail call noundef i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = zext i16 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k
  %i.y = load i32, ptr %i.x, align 1, !tbaa !58, !noalias !2556
  %i.z = tail call noundef i32 @llvm.bswap.i32(i32 %i.y)
  %i.aa = add nuw i32 %2, 1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 1, !tbaa !58, !noalias !2556
  %i.ae = tail call noundef i32 @llvm.bswap.i32(i32 %i.ad)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.018.i = phi i32 [ %i.w, %bb.c ], [ %i.ae, %bb.d ] ; 3 uses
  %.0.i = phi i32 [ %i.p, %bb.c ], [ %i.z, %bb.d ] ; 3 uses
  %i.af = icmp ugt i32 %.0.i, %.018.i
  br i1 %i.af, label %.critedge.i, label %bb.f, !prof !48

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !51, !noalias !2556 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr @_hb_NullPool, ptr %i.ah ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !57, !noalias !2556
  %i.ak = icmp ugt i32 %.018.i, %i.aj
  br i1 %i.ak, label %.critedge.i, label %_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i, !prof !48

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 16, i1 false), !alias.scope !2556
  store ptr @_hb_NullPool, ptr %i.al, align 8, !tbaa !2559, !alias.scope !2556
  br label %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit

_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i: ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !54, !noalias !2556
  %i.ao = zext i32 %.0.i to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = sub nuw i32 %.018.i, %.0.i              ; 2 uses
  %.sroa.2.8.insert.ext.i = zext i32 %i.aq to i64
  %i.ar = icmp ult i32 %i.aq, 10
  %spec.select.i.i24.i = select i1 %i.ar, ptr @_hb_NullPool, ptr %i.ap ; 2 uses
  %i.as = load i16, ptr %spec.select.i.i24.i, align 1, !tbaa !62, !noalias !2556 ; 2 uses
  %i.at = icmp eq i16 %i.as, 0
  %i.au = tail call i16 @llvm.bswap.i16(i16 %i.as)
  %i.av = icmp sgt i16 %i.au, 0
  %spec.select = select i1 %i.av, i32 1, i32 2
  %.sroa.7.0 = select i1 %i.at, i32 0, i32 %spec.select, !prof !48
  store ptr %i.ap, ptr %8, align 8
  %.sroa.4520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.2.8.insert.ext.i, ptr %.sroa.4520.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %spec.select.i.i24.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit

_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit: ; preds = %.critedge.i, %_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i
  %.sink605 = phi i32 [ -1, %.critedge.i ], [ %2, %_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i ]
  %.sink = phi i32 [ 0, %.critedge.i ], [ %.sroa.7.0, %_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %.sink605, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 %.sink, ptr %i.ax, align 4
  store ptr %4, ptr %9, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ay = call noundef zeroext i1 @_ZNK2OT9glyf_impl5Glyph10get_pointsINS_18glyf_accelerator_tEEEbP9hb_font_tRKT_R22contour_point_vector_tR17hb_glyf_scratch_tPS9_P16head_maxp_info_tPjbbb10hb_array_tIKiEPNS_17hb_scalar_cache_tEjSG_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(152) %6, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull byval(%struct.hb_array_t.0) align 8 %9, ptr noundef %7, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #63
  br i1 %i.ay, label %bb.g, label %.loopexit522, !prof !49

bb.g:                                             ; preds = %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit
  %i.az = load i32, ptr %i.c, align 4, !tbaa !193
  %i.ba = add i32 %i.az, -4                       ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !2564 ; 4 uses
  %.not536 = icmp eq i32 %i.ba, 0
  br i1 %.not536, label %.loopexit522, label %.lr.ph535

.lr.ph535:                                        ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %.sroa_idx447 = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 15 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 6 uses
  %.sroa_idx451 = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 15 uses
  %.sroa_idx455 = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 18 uses
  %.sroa.15433.0..sroa_idx436 = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %wide.trip.count = zext i32 %i.ba to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph535, %.loopexit
  %.050533 = phi i32 [ 0, %.lr.ph535 ], [ %i.tn, %.loopexit ] ; 6 uses
  %i.bk = zext i32 %.050533 to i64                ; 4 uses
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !2565
  %i.bo = and i8 %i.bn, 1
  %.not57 = icmp eq i8 %i.bo, 0
  %i.bp = icmp ult i32 %.050533, %i.ba            ; 2 uses
  br i1 %.not57, label %.preheader, label %.preheader521

.preheader521:                                    ; preds = %bb.h
  br i1 %i.bp, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %bb.h
  br i1 %i.bp, label %.lr.ph528, label %.critedge

.lr.ph:                                           ; preds = %.preheader521, %bb.aq
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.aq ], [ %i.bk, %.preheader521 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %indvars.iv ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !2565
  %i.bt = and i8 %i.bs, 1
  %.not.i77 = icmp eq i8 %i.bt, 0                 ; 3 uses
  %i.bu = load ptr, ptr %3, align 8, !tbaa !188
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  %i.bw = load <2 x float>, ptr %i.bq, align 4, !tbaa !94
  %i.bx = load <2 x float>, ptr %i.bv, align 8, !tbaa !94
  %i.by = fmul <2 x float> %i.bw, %i.bx           ; 17 uses
  %i.bz = load i8, ptr %i.bd, align 8, !tbaa !192, !range !220, !noundef !74
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.x, label %bb.i, !prof !49

bb.i:                                             ; preds = %.lr.ph
  br i1 %.not.i77, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.bd, align 8
  store <2 x float> %i.by, ptr %.sroa_idx447, align 4
  %i.cb = load ptr, ptr %i.be, align 8, !tbaa !191 ; 8 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !175 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !178 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 4 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !197
  %.not.i.i96 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i96, label %_ZN17hb_draw_session_t7move_toEff.exit99, label %bb.k, !prof !49

bb.k:                                             ; preds = %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 20
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !198 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !199
  %i.cl = fcmp une float %i.ci, %i.ck
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !200 ; 2 uses
  br i1 %i.cl, label %._crit_edge553, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !820
  %i.co = fcmp une float %.pre, %i.cn
  br i1 %i.co, label %._crit_edge553, label %bb.n

._crit_edge553:                                   ; preds = %bb.k, %bb.l
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !201
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !204 ; 2 uses
  %.not.i138 = icmp eq ptr %i.cs, null
  br i1 %.not.i138, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge553
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !205
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit: ; preds = %._crit_edge553, %bb.m
  %i.cv = phi ptr [ %i.cu, %bb.m ], [ null, %._crit_edge553 ]
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(72) %i.cc, ptr noundef %i.ce, ptr noundef nonnull align 4 dereferenceable(48) %i.cf, float noundef %i.ci, float noundef %.pre, ptr noundef %i.cv) #63, !inline_history !821
  br label %bb.n

bb.n:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit, %bb.l
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !208
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !204 ; 2 uses
  %.not.i139 = icmp eq ptr %i.cz, null
  br i1 %.not.i139, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i98, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !209
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i98

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i98: ; preds = %bb.o, %bb.n
  %i.dc = phi ptr [ %i.db, %bb.o ], [ null, %bb.n ]
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(72) %i.cc, ptr noundef %i.ce, ptr noundef nonnull align 4 dereferenceable(48) %i.cf, ptr noundef %i.dc) #63, !inline_history !822
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cf, i8 0, i64 12, i1 false)
  br label %_ZN17hb_draw_session_t7move_toEff.exit99

_ZN17hb_draw_session_t7move_toEff.exit99:         ; preds = %bb.j, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i98
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  store <2 x float> %i.by, ptr %i.dd, align 4, !tbaa !94
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit95

bb.p:                                             ; preds = %bb.i
  %i.de = load i8, ptr %i.bf, align 4, !tbaa !192, !range !220, !noundef !74
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.dg = load <2 x float>, ptr %.sroa_idx451, align 8, !tbaa !94
  %i.dh = fadd <2 x float> %i.by, %i.dg
  %i.di = fmul <2 x float> %i.dh, splat (float 5.000000e-01) ; 2 uses
  store i32 1, ptr %i.bd, align 8
  store <2 x float> %i.di, ptr %.sroa_idx447, align 4, !tbaa !94
  store i32 1, ptr %i.bg, align 4
  store <2 x float> %i.by, ptr %.sroa_idx455, align 8
  %i.dj = load ptr, ptr %i.be, align 8, !tbaa !191 ; 8 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !175 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !178 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 4 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !197
  %.not.i.i = icmp eq i32 %i.do, 0
  br i1 %.not.i.i, label %_ZN17hb_draw_session_t7move_toEff.exit, label %bb.r, !prof !49

bb.r:                                             ; preds = %bb.q
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !198 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !199
  %i.dt = fcmp une float %i.dq, %i.ds
  %.phi.trans.insert555 = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %.pre556 = load float, ptr %.phi.trans.insert555, align 8, !tbaa !200 ; 2 uses
  br i1 %i.dt, label %._crit_edge554, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dv = load float, ptr %i.du, align 8, !tbaa !820
  %i.dw = fcmp une float %.pre556, %i.dv
  br i1 %i.dw, label %._crit_edge554, label %bb.u

._crit_edge554:                                   ; preds = %bb.r, %bb.s
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !201
end_hunk_14
begin_hunk_15_@_ZNK2OT9glyf_impl5Glyph10get_pointsINS_18glyf_accelerator_tEEEbP9hb_font_tRKT_R22contour_point_vector_tR17hb_glyf_scratch_tPS9_P16head_maxp_info_tPjbbb10hb_array_tIKiEPNS_17hb_scalar_cache_tEjSG_:bb.a
  %i.bo = and i64 %.sroa.2.0.copyload.i, 4294967295
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.bo ; 2 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  br label %_ZNR9hb_iter_tIN2OT9glyf_impl19composite_iter_tmplINS1_20CompositeGlyphRecordEEERKS3_EppEv.exit

_ZNR9hb_iter_tIN2OT9glyf_impl19composite_iter_tmplINS1_20CompositeGlyphRecordEEERKS3_EppEv.exit: ; preds = %bb.ac, %.lr.ph
  %.sroa.6463.0550 = phi ptr [ %i.aw, %.lr.ph ], [ %i.ct, %bb.ac ] ; 4 uses
  %.sroa.13.0549 = phi i32 [ %spec.select.i.i.i.i.i, %.lr.ph ], [ %spec.select.i.i.i.i, %bb.ac ]
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.6463.0550, i64 4 ; 2 uses
  %i.bs = load i16, ptr %.sroa.6463.0550, align 1, !tbaa !62 ; 2 uses
  %i.bt = and i16 %i.bs, 256
  %.not.i.i = icmp eq i16 %i.bt, 0
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNR9hb_iter_tIN2OT9glyf_impl19composite_iter_tmplINS1_20CompositeGlyphRecordEEERKS3_EppEv.exit
  %i.bu = load <2 x i16>, ptr %i.br, align 1, !tbaa !62
  %i.bv = tail call <2 x i16> @llvm.bswap.v2i16(<2 x i16> %i.bu)
  br label %_ZNK2OT9glyf_impl20CompositeGlyphRecord18get_transformationERA4_fR15contour_point_t.exit.i

bb.s:                                             ; preds = %_ZNR9hb_iter_tIN2OT9glyf_impl19composite_iter_tmplINS1_20CompositeGlyphRecordEEERKS3_EppEv.exit
  %i.bw = load <2 x i8>, ptr %i.br, align 1, !tbaa !89
  %i.bx = sext <2 x i8> %i.bw to <2 x i16>
  br label %_ZNK2OT9glyf_impl20CompositeGlyphRecord18get_transformationERA4_fR15contour_point_t.exit.i

_ZNK2OT9glyf_impl20CompositeGlyphRecord18get_transformationERA4_fR15contour_point_t.exit.i: ; preds = %bb.s, %bb.r
  %i.by = phi <2 x i16> [ %i.bv, %bb.r ], [ %i.bx, %bb.s ]
  %i.bz = and i16 %i.bs, 512
  %.not.i.i.i = icmp eq i16 %i.bz, 0
  %i.ca = sitofp <2 x i16> %i.by to <2 x float>
  %i.cb = insertelement <2 x i1> poison, i1 %.not.i.i.i, i64 0
  %i.cc = shufflevector <2 x i1> %i.cb, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cd = select <2 x i1> %i.cc, <2 x float> zeroinitializer, <2 x float> %i.ca
  %i.ce = load i32, ptr %i.y, align 4, !tbaa !193
  %i.cf = add i32 %i.ce, 5
  %i.cg = tail call noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i32 noundef %i.cf, i1 noundef zeroext false)
  br i1 %i.cg, label %bb.t, label %_ZN11hb_vector_tI15contour_point_tLb0EE6resizeEi.exit.thread, !prof !49

bb.t:                                             ; preds = %_ZNK2OT9glyf_impl20CompositeGlyphRecord18get_transformationERA4_fR15contour_point_t.exit.i
  %i.ch = load i32, ptr %i.y, align 4, !tbaa !193 ; 3 uses
  %i.ci = load i32, ptr %i.x, align 8, !tbaa !2590
  %.not.i5.i = icmp slt i32 %i.ch, %i.ci
  br i1 %.not.i5.i, label %.critedge.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = add i32 %i.ch, 1
  %i.ck = tail call noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i32 noundef %i.cj, i1 noundef zeroext false)
  br i1 %i.ck, label %..critedge_crit_edge.i.i, label %bb.v, !prof !49

..critedge_crit_edge.i.i:                         ; preds = %bb.u
  %.pre.i.i = load i32, ptr %i.y, align 4, !tbaa !193
  br label %.critedge.i.i

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %bb.w

.critedge.i.i:                                    ; preds = %..critedge_crit_edge.i.i, %bb.t
  %i.cl = phi i32 [ %.pre.i.i, %..critedge_crit_edge.i.i ], [ %i.ch, %bb.t ] ; 2 uses
  %i.cm = load ptr, ptr %i.bn, align 8, !tbaa !2564
  %i.cn = add i32 %i.cl, 1
  store i32 %i.cn, ptr %i.y, align 4, !tbaa !193
  %i.co = zext i32 %i.cl to i64
  %i.cp = getelementptr inbounds nuw [12 x i8], ptr %i.cm, i64 %i.co ; 3 uses
  store <2 x float> %i.cd, ptr %i.cp, align 4, !tbaa !94
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !61
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 9
  store i8 1, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !444
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.critedge.i.i
  %i.cq = load i16, ptr %.sroa.6463.0550, align 1, !tbaa !62
  %i.cr = and i16 %i.cq, 8192
  %.not.i.i197 = icmp eq i16 %i.cr, 0
  br i1 %.not.i.i197, label %.critedgethread-pre-split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = zext nneg i32 %.sroa.13.0549 to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.6463.0550, i64 %i.cs ; 5 uses
  %.not.i.i.i.i198 = icmp ugt ptr %.sroa.0.0.copyload.i, %i.ct
  br i1 %.not.i.i.i.i198, label %.critedgethread-pre-split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not6.i.i.i.i = icmp ule ptr %i.ct, %i.bp
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = sub i64 %i.bq, %i.cu                    ; 2 uses
  %i.cw = and i64 %i.cv, 4294967292
  %i.cx = icmp ne i64 %i.cw, 0
  %or.cond.i.i.i = and i1 %.not6.i.i.i.i, %i.cx
  br i1 %or.cond.i.i.i, label %bb.z, label %.critedgethread-pre-split

bb.z:                                             ; preds = %bb.y
  %i.cy = load i16, ptr %i.ct, align 1, !tbaa !62
  %i.cz = tail call noundef i16 @llvm.bswap.i16(i16 %i.cy)
  %i.da = zext i16 %i.cz to i32                   ; 4 uses
  %i.db = and i32 %i.da, 8
  %.not6.i6.i.i.i = icmp eq i32 %i.db, 0
  br i1 %.not6.i6.i.i.i, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dc = and i32 %i.da, 64
  %.not7.i.i.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not7.i.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dd = lshr i32 %i.da, 4
  %i.de = and i32 %i.dd, 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.sink.i.i.i.i = phi i32 [ %i.de, %bb.ab ], [ 2, %bb.z ], [ 4, %bb.aa ]
  %i.df = and i32 %i.da, 1
  %.not.i7.i.i.i = icmp eq i32 %i.df, 0
  %..i.i.i.i = select i1 %.not.i7.i.i.i, i32 6, i32 8
  %spec.select.i.i.i.i = add nuw nsw i32 %.sink.i.i.i.i, %..i.i.i.i ; 2 uses
  %i.dg = trunc i64 %i.cv to i32
  %.not.i.i.i199 = icmp ugt i32 %spec.select.i.i.i.i, %i.dg
  br i1 %.not.i.i.i199, label %.critedgethread-pre-split, label %_ZNR9hb_iter_tIN2OT9glyf_impl19composite_iter_tmplINS1_20CompositeGlyphRecordEEERKS3_EppEv.exit

.critedgethread-pre-split:                        ; preds = %bb.ac, %bb.w, %bb.x, %bb.y, %bb.q, %bb.m, %bb.l, %._crit_edge570
  %.pr641 = load i32, ptr %i.y, align 4, !tbaa !193
  br label %.critedge

.critedge:                                        ; preds = %.critedgethread-pre-split, %bb.h
  %i.dh = phi i32 [ %.pr641, %.critedgethread-pre-split ], [ %i.z, %bb.h ] ; 4 uses
  %i.di = add i32 %i.dh, 4                        ; 6 uses
  %i.dj = icmp slt i32 %i.di, 0
  br i1 %i.dj, label %_ZN11hb_vector_tI15contour_point_tLb0EE6resizeEi.exit.thread, label %bb.ad, !prof !48

bb.ad:                                            ; preds = %.critedge
  %i.dk = call noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i32 noundef %i.di, i1 noundef zeroext false)
  br i1 %i.dk, label %bb.ae, label %_ZN11hb_vector_tI15contour_point_tLb0EE6resizeEi.exit.thread, !prof !383

bb.ae:                                            ; preds = %bb.ad
  %i.dl = load i32, ptr %i.y, align 4, !tbaa !193 ; 3 uses
  %i.dm = icmp ugt i32 %i.di, %i.dl
  br i1 %i.dm, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.dn = sub nuw nsw i32 %i.di, %i.dl
  %i.do = mul i32 %i.dn, 12                       ; 2 uses
  %.not.i.i.i.i200 = icmp eq i32 %i.do, 0
  br i1 %.not.i.i.i.i200, label %bb.ah, label %bb.ag, !prof !48

bb.ag:                                            ; preds = %bb.af
  %i.dp = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !2564
  %i.dr = zext nneg i32 %i.dl to i64
  %i.ds = getelementptr inbounds nuw [12 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = zext i32 %i.do to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.ds, i8 0, i64 %i.dt, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  store i32 %i.di, ptr %i.y, align 4, !tbaa !193
  %i.du = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 8 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !2564
  %storemerge.i.i = call i32 @llvm.usub.sat.i32(i32 %i.di, i32 %i.dh) ; 4 uses
  %.sroa.speculated.i.i = call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 4) ; 3 uses
  %i.dw = zext i32 %i.dh to i64
  %i.dx = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %i.dw ; 12 uses
  %.sroa.3.8.insert.ext.i.i = zext nneg i32 %.sroa.speculated.i.i to i64 ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !2591 ; 8 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !2592 ; 13 uses
  %i.ec = load i32, ptr %i.dz, align 8, !tbaa !2593 ; 4 uses
  %i.ed = icmp ult i32 %i.eb, %i.ec
  br i1 %i.ed, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !51 ; 2 uses
  %.not.i.i.i.i.i204 = icmp eq ptr %i.ef, null
  %spec.select.i.i.i.i.i205 = select i1 %.not.i.i.i.i.i204, ptr @_hb_NullPool, ptr %i.ef
  %i.eg = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i205, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !54
  %i.ei = zext i32 %i.eb to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %i.el = load i16, ptr %i.ek, align 1, !tbaa !62
  %i.em = call noundef i16 @llvm.bswap.i16(i16 %i.el)
  %i.en = sext i16 %i.em to i32
  br label %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t40get_leading_bearing_without_var_unscaledEjPi.exit

bb.aj:                                            ; preds = %bb.ah
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !2597
  %.not.i203 = icmp ult i32 %i.eb, %i.ep
  br i1 %.not.i203, label %bb.ak, label %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t40get_leading_bearing_without_var_unscaledEjPi.exit, !prof !49

bb.ak:                                            ; preds = %bb.aj
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !51 ; 2 uses
  %.not.i.i.i.i8.i = icmp eq ptr %i.er, null
  %spec.select.i.i.i.i9.i = select i1 %.not.i.i.i.i8.i, ptr @_hb_NullPool, ptr %i.er
  %i.es = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i9.i, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !54
  %i.eu = zext i32 %i.ec to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.eu
  %i.ew = sub nuw i32 %i.eb, %i.ec
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.ev, i64 %i.ex
  %i.ez = load i16, ptr %i.ey, align 1, !tbaa !62
  %i.fa = call noundef i16 @llvm.bswap.i16(i16 %i.ez)
  %i.fb = sext i16 %i.fa to i32
  br label %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t40get_leading_bearing_without_var_unscaledEjPi.exit

_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t40get_leading_bearing_without_var_unscaledEjPi.exit: ; preds = %bb.ai, %bb.aj, %bb.ak
  %.sink.i = phi i32 [ %i.fb, %bb.ak ], [ %i.en, %bb.ai ], [ 0, %bb.aj ]
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !2559 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.ff = load i16, ptr %i.fe, align 1, !tbaa !62
  %i.fg = call noundef i16 @llvm.bswap.i16(i16 %i.ff)
  %i.fh = sext i16 %i.fg to i32
  %i.fi = sub nsw i32 %i.fh, %.sink.i             ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !2598 ; 8 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !2599 ; 4 uses
  %i.fm = icmp ult i32 %i.eb, %i.fl
  br i1 %i.fm, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t40get_leading_bearing_without_var_unscaledEjPi.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !51 ; 2 uses
  %.not.i.i.i.i.i210 = icmp eq ptr %i.fo, null
  %spec.select.i.i.i.i.i211 = select i1 %.not.i.i.i.i.i210, ptr @_hb_NullPool, ptr %i.fo
  %i.fp = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i211, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !54
  %i.fr = zext i32 %i.eb to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  %i.fu = load i16, ptr %i.ft, align 1, !tbaa !62
  %i.fv = call noundef i16 @llvm.bswap.i16(i16 %i.fu)
  %i.fw = sext i16 %i.fv to i32
  br label %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t40get_leading_bearing_without_var_unscaledEjPi.exit

bb.am:                                            ; preds = %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t40get_leading_bearing_without_var_unscaledEjPi.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !2603
  %.not.i206 = icmp ult i32 %i.eb, %i.fy
  br i1 %.not.i206, label %bb.an, label %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t40get_leading_bearing_without_var_unscaledEjPi.exit, !prof !49

bb.an:                                            ; preds = %bb.am
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !51 ; 2 uses
  %.not.i.i.i.i8.i208 = icmp eq ptr %i.ga, null
  %spec.select.i.i.i.i9.i209 = select i1 %.not.i.i.i.i8.i208, ptr @_hb_NullPool, ptr %i.ga
  %i.gb = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i9.i209, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !54
  %i.gd = zext i32 %i.fl to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.gd
  %i.gf = sub nuw i32 %i.eb, %i.fl
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.ge, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 1, !tbaa !62
  %i.gj = call noundef i16 @llvm.bswap.i16(i16 %i.gi)
  %i.gk = sext i16 %i.gj to i32
  br label %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t40get_leading_bearing_without_var_unscaledEjPi.exit

_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t40get_leading_bearing_without_var_unscaledEjPi.exit: ; preds = %bb.al, %bb.am, %bb.an
  %.sink.i207 = phi i32 [ %i.gk, %bb.an ], [ %i.fw, %bb.al ], [ 0, %bb.am ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.gm = load i16, ptr %i.gl, align 1, !tbaa !62
  %i.gn = call noundef i16 @llvm.bswap.i16(i16 %i.gm)
  %i.go = sext i16 %i.gn to i32
  %i.gp = add nsw i32 %.sink.i207, %i.go          ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !2597
  %i.gs = icmp ult i32 %i.eb, %i.gr
  br i1 %i.gs, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t40get_leading_bearing_without_var_unscaledEjPi.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !51 ; 2 uses
  %.not.i.i.i.i.i213 = icmp eq ptr %i.gu, null
  %spec.select.i.i.i.i.i214 = select i1 %.not.i.i.i.i.i213, ptr @_hb_NullPool, ptr %i.gu
  %i.gv = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i214, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !54
  %i.gx = add i32 %i.ec, -1
  %.sroa.speculated.i = call i32 @llvm.umin.i32(i32 %i.eb, i32 %i.gx)
  %i.gy = zext i32 %.sroa.speculated.i to i64
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.gy
  %i.ha = load i16, ptr %i.gz, align 1, !tbaa !62
  %i.hb = call noundef i16 @llvm.bswap.i16(i16 %i.ha)
  %i.hc = zext i16 %i.hb to i32
  br label %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit

bb.ap:                                            ; preds = %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t40get_leading_bearing_without_var_unscaledEjPi.exit
  %i.hd = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !2604
  %.not.i212 = icmp eq i32 %i.he, 0
  br i1 %.not.i212, label %bb.aq, label %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit, !prof !48

bb.aq:                                            ; preds = %bb.ap
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !2605
  br label %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit

_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit: ; preds = %bb.ao, %bb.ap, %bb.aq
  %.0.i = phi i32 [ %i.hc, %bb.ao ], [ %i.hg, %bb.aq ], [ 0, %bb.ap ]
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !2603
  %i.hj = icmp ult i32 %i.eb, %i.hi
  br i1 %i.hj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !51 ; 2 uses
  %.not.i.i.i.i.i217 = icmp eq ptr %i.hl, null
  %spec.select.i.i.i.i.i218 = select i1 %.not.i.i.i.i.i217, ptr @_hb_NullPool, ptr %i.hl
  %i.hm = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i218, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !54
  %i.ho = add i32 %i.fl, -1
  %.sroa.speculated.i219 = call i32 @llvm.umin.i32(i32 %i.eb, i32 %i.ho)
  %i.hp = zext i32 %.sroa.speculated.i219 to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hp
  %i.hr = load i16, ptr %i.hq, align 1, !tbaa !62
  %i.hs = call noundef i16 @llvm.bswap.i16(i16 %i.hr)
  %i.ht = zext i16 %i.hs to i32
  br label %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit

bb.as:                                            ; preds = %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !2606
  %.not.i215 = icmp eq i32 %i.hv, 0
  br i1 %.not.i215, label %bb.at, label %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit, !prof !48

bb.at:                                            ; preds = %bb.as
  %i.hw = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !2607
  br label %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit

_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit: ; preds = %bb.ar, %bb.as, %bb.at
  %.0.i216 = phi i32 [ %i.ht, %bb.ar ], [ %i.hx, %bb.at ], [ 0, %bb.as ] ; 2 uses
  %i.hy = sitofp i32 %i.fi to float
  %.not.i.i220.not.not = icmp ult i32 %i.dh, -4   ; 4 uses
  br i1 %.not.i.i220.not.not, label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit, label %bb.au, !prof !49

bb.au:                                            ; preds = %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit

_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit: ; preds = %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit, %bb.au
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.au ], [ %i.dx, %_ZNK2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_t32get_advance_without_var_unscaledEj.exit ]
  store float %i.hy, ptr %.0.i.i, align 4, !tbaa !2608
  %.not.i.i221 = icmp samesign ugt i32 %storemerge.i.i, 1
  br i1 %.not.i.i221, label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit223, label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit223.thread, !prof !49

_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit223.thread: ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit226.thread

_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit223: ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit
  %i.hz = add nsw i32 %.0.i, %i.fi
  %i.ia = sitofp i32 %i.hz to float
  %i.ib = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store float %i.ia, ptr %i.ib, align 4, !tbaa !2608
  %.not.i.i224.not = icmp eq i32 %storemerge.i.i, 2
  br i1 %.not.i.i224.not, label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit226.thread, label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit226, !prof !124

_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit226.thread: ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit223, %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit223.thread
  %i.ic = sub nsw i32 %i.gp, %.0.i216
  %i.id = sitofp i32 %i.ic to float
  br label %bb.av

_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit226: ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit223
  %i.ie = sitofp i32 %i.gp to float
  %i.if = getelementptr inbounds nuw i8, ptr %i.dx, i64 28
  store float %i.ie, ptr %i.if, align 4, !tbaa !2609
  %i.ig = sub nsw i32 %i.gp, %.0.i216
  %i.ih = sitofp i32 %i.ig to float               ; 2 uses
  %.not.i.i227 = icmp samesign ugt i32 %storemerge.i.i, 3
  br i1 %.not.i.i227, label %bb.aw, label %bb.av, !prof !669

bb.av:                                            ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit226.thread, %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit226
  %i.ii = phi float [ %i.id, %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit226.thread ], [ %i.ih, %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit226 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit229

bb.aw:                                            ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit226
  %i.ij = getelementptr inbounds nuw i8, ptr %i.dx, i64 36
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit229

_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit229: ; preds = %bb.av, %bb.aw
  %i.ik = phi float [ %i.ii, %bb.av ], [ %i.ih, %bb.aw ]
  %.0.i.i228 = phi ptr [ @_hb_CrapPool, %bb.av ], [ %i.ij, %bb.aw ]
  %i.il = getelementptr inbounds nuw i8, ptr %.0.i.i228, i64 4
  store float %i.ik, ptr %i.il, align 4, !tbaa !2609
  %.val = load ptr, ptr %11, align 8              ; 2 uses
  %.val193 = load i64, ptr %i.j, align 8          ; 3 uses
  %i.im = and i64 %.val193, 4294967295
  %.not8.not.i = icmp eq i64 %i.im, 0
  br i1 %.not8.not.i, label %"_ZNK4$_44clIR10hb_array_tIKiERK3$_8S7_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbOS9_OT0_OT1_.exit.thread", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit229, %_ZNR9hb_iter_tI10hb_array_tIKiERS1_EppEv.exit.i
  %.sroa.0.010.i = phi ptr [ %i.io, %_ZNR9hb_iter_tI10hb_array_tIKiERS1_EppEv.exit.i ], [ %.val, %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit229 ] ; 2 uses
  %.sroa.6.09.i = phi i64 [ %.sroa.6.8.insert.ext.i, %_ZNR9hb_iter_tI10hb_array_tIKiERS1_EppEv.exit.i ], [ %.val193, %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit229 ]
  %.val6.i = load i32, ptr %.sroa.0.010.i, align 4, !tbaa !139
  %.not7.not.i = icmp eq i32 %.val6.i, 0
  br i1 %.not7.not.i, label %_ZNR9hb_iter_tI10hb_array_tIKiERS1_EppEv.exit.i, label %"_ZNK4$_44clIR10hb_array_tIKiERK3$_8S7_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbOS9_OT0_OT1_.exit"

_ZNR9hb_iter_tI10hb_array_tIKiERS1_EppEv.exit.i:  ; preds = %.lr.ph.i
  %i.in = add i64 %.sroa.6.09.i, 4294967295
  %.sroa.6.8.insert.ext.i = and i64 %i.in, 4294967295 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 4
  %.not.not.i = icmp eq i64 %.sroa.6.8.insert.ext.i, 0
  br i1 %.not.not.i, label %"_ZNK4$_44clIR10hb_array_tIKiERK3$_8S7_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbOS9_OT0_OT1_.exit.thread", label %.lr.ph.i, !llvm.loop !2610

"_ZNK4$_44clIR10hb_array_tIKiERK3$_8S7_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbOS9_OT0_OT1_.exit": ; preds = %.lr.ph.i
  %i.ip = load ptr, ptr %2, align 8, !tbaa !2611
  %i.iq = load ptr, ptr %i.du, align 8, !tbaa !2564 ; 2 uses
  %i.ir = load i32, ptr %i.y, align 4, !tbaa !193 ; 2 uses
  %.not526 = icmp eq i32 %i.z, 0
  br i1 %.not526, label %_ZNK10hb_array_tI15contour_point_tE9sub_arrayEjPj.exit, label %bb.ax

bb.ax:                                            ; preds = %"_ZNK4$_44clIR10hb_array_tIKiERK3$_8S7_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbOS9_OT0_OT1_.exit"
  %storemerge.i = call i32 @llvm.usub.sat.i32(i32 %i.ir, i32 %i.z)
  %i.is = zext i32 %i.z to i64
  %i.it = getelementptr inbounds nuw [12 x i8], ptr %i.iq, i64 %i.is
  br label %_ZNK10hb_array_tI15contour_point_tE9sub_arrayEjPj.exit

_ZNK10hb_array_tI15contour_point_tE9sub_arrayEjPj.exit: ; preds = %"_ZNK4$_44clIR10hb_array_tIKiERK3$_8S7_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbOS9_OT0_OT1_.exit", %bb.ax
  %.sroa.3.0.i.in = phi i32 [ %storemerge.i, %bb.ax ], [ %i.ir, %"_ZNK4$_44clIR10hb_array_tIKiERK3$_8S7_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbOS9_OT0_OT1_.exit" ]
  %.sroa.0.0.i = phi ptr [ %i.it, %bb.ax ], [ %i.iq, %"_ZNK4$_44clIR10hb_array_tIKiERK3$_8S7_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbOS9_OT0_OT1_.exit" ]
  %.sroa.3.0.i = zext i32 %.sroa.3.0.i.in to i64
  br i1 %10, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZNK10hb_array_tI15contour_point_tE9sub_arrayEjPj.exit
  %i.iu = load i32, ptr %i.t, align 4, !tbaa !2581
  %i.iv = icmp eq i32 %i.iu, 1
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZNK10hb_array_tI15contour_point_tE9sub_arrayEjPj.exit
  %i.iw = phi i1 [ false, %_ZNK10hb_array_tI15contour_point_tE9sub_arrayEjPj.exit ], [ %i.iv, %bb.ay ]
  %i.ix = call noundef zeroext i1 @_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t22apply_deltas_to_pointsEj10hb_array_tIKiES5_I15contour_point_tER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tEb(ptr noundef nonnull align 8 dereferenceable(12) %i.ip, i32 noundef %i.eb, ptr %.val, i64 %.val193, ptr %.sroa.0.0.i, i64 %.sroa.3.0.i, ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef %12, i1 noundef zeroext %i.iw)
  br i1 %i.ix, label %"_ZNK4$_44clIR10hb_array_tIKiERK3$_8S7_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbOS9_OT0_OT1_.exit.thread", label %_ZN11hb_vector_tI15contour_point_tLb0EE6resizeEi.exit.thread

"_ZNK4$_44clIR10hb_array_tIKiERK3$_8S7_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbOS9_OT0_OT1_.exit.thread": ; preds = %_ZNR9hb_iter_tI10hb_array_tIKiERS1_EppEv.exit.i, %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit229, %bb.az
  %i.iy = icmp ne ptr %5, null
  %i.iz = icmp eq i32 %13, 0                      ; 4 uses
  %or.cond9 = and i1 %i.iy, %i.iz
  br i1 %or.cond9, label %bb.ba, label %_ZN22contour_point_vector_taSERKS_.exitthread-pre-split

bb.ba:                                            ; preds = %"_ZNK4$_44clIR10hb_array_tIKiERK3$_8S7_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbOS9_OT0_OT1_.exit.thread"
  %i.ja = load i32, ptr %i.t, align 4, !tbaa !2581 ; 2 uses
  %i.jb = icmp eq i32 %i.ja, 2
  br i1 %i.jb, label %bb.bb, label %_ZN22contour_point_vector_taSERKS_.exit

bb.bb:                                            ; preds = %bb.ba
  %i.jc = load i32, ptr %5, align 8, !tbaa !2590  ; 2 uses
  %i.jd = icmp slt i32 %i.jc, 0
  br i1 %i.jd, label %bb.bc, label %_ZN11hb_vector_tI15contour_point_tLb0EE5resetEv.exit.i.i, !prof !48
end_hunk_15
begin_hunk_16_@_ZNK2OT9glyf_impl5Glyph10get_pointsINS_18glyf_accelerator_tEEEbP9hb_font_tRKT_R22contour_point_vector_tR17hb_glyf_scratch_tPS9_P16head_maxp_info_tPjbbb10hb_array_tIKiEPNS_17hb_scalar_cache_tEjSG_:bb.a
bb.bj:                                            ; preds = %bb.bi
  %i.ke = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %16, ptr %i.ke, align 8, !tbaa !222
  store ptr %16, ptr %i.kc, align 8, !tbaa !221
  br label %_ZN18hb_decycler_node_tC2ER13hb_decycler_t.exit

bb.bk:                                            ; preds = %bb.bi
  %i.kf = trunc nuw i8 %i.ka to i1
  br i1 %i.kf, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kg = load ptr, ptr %i.kd, align 8, !tbaa !61
  store ptr %i.kg, ptr %i.kc, align 8, !tbaa !221
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.kh = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !222 ; 2 uses
  store ptr %i.ki, ptr %i.jz, align 8, !tbaa !223
  store ptr %16, ptr %i.ki, align 8, !tbaa !61
  store ptr %16, ptr %i.kh, align 8, !tbaa !222
  br label %_ZN18hb_decycler_node_tC2ER13hb_decycler_t.exit

_ZN18hb_decycler_node_tC2ER13hb_decycler_t.exit:  ; preds = %bb.bj, %bb.bm
  %i.kj = load i32, ptr %i.t, align 4, !tbaa !2581, !noalias !2617
  %.not.i244 = icmp eq i32 %i.kj, 2
  br i1 %.not.i244, label %bb.bn, label %._crit_edge

bb.bn:                                            ; preds = %_ZN18hb_decycler_node_tC2ER13hb_decycler_t.exit
  %i.kk = load ptr, ptr %i.fc, align 8, !tbaa !2559, !noalias !2617
  %.sroa.0.0.copyload.i245 = load ptr, ptr %0, align 8, !noalias !2617 ; 4 uses
  %.sroa.2.0..sroa_idx.i246 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i247 = load i64, ptr %.sroa.2.0..sroa_idx.i246, align 8, !noalias !2617 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 10 ; 5 uses
  %.not.i.i.i.i.i249 = icmp ugt ptr %.sroa.0.0.copyload.i245, %i.kl
  br i1 %.not.i.i.i.i.i249, label %._crit_edge, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.km = and i64 %.sroa.2.0.copyload.i247, 4294967295
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i245, i64 %i.km ; 2 uses
  %.not6.i.i.i.i.i250 = icmp ule ptr %i.kl, %i.kn
  %i.ko = ptrtoint ptr %i.kn to i64
  %i.kp = ptrtoint ptr %i.kl to i64
  %i.kq = sub i64 %i.ko, %i.kp                    ; 2 uses
  %i.kr = and i64 %i.kq, 4294967292
  %i.ks = icmp ne i64 %i.kr, 0
  %or.cond.i.i.i.i251 = and i1 %.not6.i.i.i.i.i250, %i.ks
  br i1 %or.cond.i.i.i.i251, label %bb.bp, label %._crit_edge

bb.bp:                                            ; preds = %bb.bo
  %i.kt = load i16, ptr %i.kl, align 1, !tbaa !62, !noalias !2620
  %i.ku = call noundef i16 @llvm.bswap.i16(i16 %i.kt)
  %i.kv = zext i16 %i.ku to i32                   ; 4 uses
  %i.kw = and i32 %i.kv, 8
  %.not6.i6.i.i.i.i255 = icmp eq i32 %i.kw, 0
  br i1 %.not6.i6.i.i.i.i255, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.kx = and i32 %i.kv, 64
  %.not7.i.i.i.i.i263 = icmp eq i32 %i.kx, 0
  br i1 %.not7.i.i.i.i.i263, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ky = lshr i32 %i.kv, 4
  %i.kz = and i32 %i.ky, 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  %.sink.i.i.i.i.i256 = phi i32 [ %i.kz, %bb.br ], [ 2, %bb.bp ], [ 4, %bb.bq ]
  %i.la = and i32 %i.kv, 1
  %.not.i7.i.i.i.i257 = icmp eq i32 %i.la, 0
  %..i.i.i.i.i258 = select i1 %.not.i7.i.i.i.i257, i32 6, i32 8
  %spec.select.i.i.i.i.i259 = add nuw nsw i32 %.sink.i.i.i.i.i256, %..i.i.i.i.i258 ; 2 uses
  %i.lb = trunc i64 %i.kq to i32
  %.not.i.i.i.i260 = icmp ugt i32 %spec.select.i.i.i.i.i259, %i.lb
  br i1 %.not.i.i.i.i260, label %._crit_edge, label %.lr.ph559

.lr.ph559:                                        ; preds = %bb.bs
  %i.lc = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ld = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 6 uses
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.lf = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.lg = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.lh = getelementptr inbounds nuw i8, ptr %17, i64 28
  %i.li = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.lk = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.4495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ll = add nuw nsw i32 %13, 1
  %i.lm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.lo = and i64 %.sroa.2.0.copyload.i247, 4294967295
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i245, i64 %i.lo ; 2 uses
  %i.lq = ptrtoint ptr %i.lp to i64
  br label %_ZNR9hb_iter_tIN2OT9glyf_impl19composite_iter_tmplINS1_20CompositeGlyphRecordEEERKS3_EppEv.exit344

_ZNR9hb_iter_tIN2OT9glyf_impl19composite_iter_tmplINS1_20CompositeGlyphRecordEEERKS3_EppEv.exit344: ; preds = %bb.ea, %.lr.ph559
  %.sroa.5405.0557 = phi ptr [ %i.kl, %.lr.ph559 ], [ %i.vt, %bb.ea ] ; 12 uses
  %.sroa.12408.0556 = phi i32 [ %spec.select.i.i.i.i.i259, %.lr.ph559 ], [ %spec.select.i.i.i.i340, %bb.ea ]
  %.0555 = phi i32 [ 0, %.lr.ph559 ], [ %.2, %bb.ea ] ; 2 uses
  %.sroa.0433.0554 = phi ptr [ %i.dx, %.lr.ph559 ], [ %.sroa.0433.1, %bb.ea ]
  %.sroa.14.0553 = phi i64 [ %.sroa.3.8.insert.ext.i.i, %.lr.ph559 ], [ %.sroa.14.1, %bb.ea ]
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.5405.0557, i64 2
  %i.ls = load i16, ptr %i.lr, align 1, !tbaa !62
  %i.lt = call noundef i16 @llvm.bswap.i16(i16 %i.ls) ; 2 uses
  %i.lu = zext i16 %i.lt to i32                   ; 2 uses
  %i.lv = zext i16 %i.lt to i64                   ; 4 uses
  store i64 %i.lv, ptr %i.lc, align 8, !tbaa !225
  %i.lw = load ptr, ptr %16, align 8, !tbaa !61
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !221 ; 2 uses
  %i.lz = icmp eq ptr %i.ly, %16
  br i1 %i.lz, label %_ZN18hb_decycler_node_t5visitEm.exit.thread, label %_ZN18hb_decycler_node_t5visitEm.exit

_ZN18hb_decycler_node_t5visitEm.exit:             ; preds = %_ZNR9hb_iter_tIN2OT9glyf_impl19composite_iter_tmplINS1_20CompositeGlyphRecordEEERKS3_EppEv.exit344
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !225
  %.not532 = icmp eq i64 %i.mb, %i.lv
  br i1 %.not532, label %_ZN11hb_vector_tI15contour_point_tLb0EE6resizeEi.exit330, label %_ZN18hb_decycler_node_t5visitEm.exit.thread, !prof !226

_ZN18hb_decycler_node_t5visitEm.exit.thread:      ; preds = %_ZNR9hb_iter_tIN2OT9glyf_impl19composite_iter_tmplINS1_20CompositeGlyphRecordEEERKS3_EppEv.exit344, %_ZN18hb_decycler_node_t5visitEm.exit
  %i.mc = load i32, ptr %i.ld, align 4, !tbaa !193 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #63
  br i1 %10, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %_ZN18hb_decycler_node_t5visitEm.exit.thread
  br i1 %9, label %bb.bu, label %.critedge192

bb.bu:                                            ; preds = %bb.bt
  %i.md = load i16, ptr %.sroa.5405.0557, align 1, !tbaa !62
  %i.me = and i16 %i.md, 2
  %.not533 = icmp eq i16 %i.me, 0
  br i1 %.not533, label %.critedge192, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %_ZN18hb_decycler_node_t5visitEm.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !2623)
  %i.mf = load i32, ptr %i.le, align 4, !tbaa !179, !noalias !2623
  %.not.i266 = icmp ugt i32 %i.mf, %i.lu
  br i1 %.not.i266, label %bb.bx, label %bb.bw, !prof !49

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 16, i1 false), !alias.scope !2623
  br label %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit

bb.bx:                                            ; preds = %bb.bv
  %i.mg = load i8, ptr %i.li, align 8, !tbaa !319, !range !220, !noalias !2623, !noundef !74
  %i.mh = trunc nuw i8 %i.mg to i1
  %i.mi = load ptr, ptr %i.lj, align 8, !tbaa !51, !noalias !2623 ; 2 uses
  %.not.i.i.i.i.i267 = icmp eq ptr %i.mi, null
  %spec.select.i.i.i.i.i268 = select i1 %.not.i.i.i.i.i267, ptr @_hb_NullPool, ptr %i.mi
  %i.mj = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i268, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !54, !noalias !2623 ; 2 uses
  br i1 %i.mh, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %i.mk, i64 %i.lv ; 2 uses
  %i.mm = load i16, ptr %i.ml, align 1, !tbaa !62, !noalias !2623
  %i.mn = call noundef i16 @llvm.bswap.i16(i16 %i.mm)
  %i.mo = zext i16 %i.mn to i32
  %i.mp = shl nuw nsw i32 %i.mo, 1
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ml, i64 2
  %i.mr = load i16, ptr %i.mq, align 1, !tbaa !62, !noalias !2623
  %i.ms = call noundef i16 @llvm.bswap.i16(i16 %i.mr)
  %i.mt = zext i16 %i.ms to i32
  %i.mu = shl nuw nsw i32 %i.mt, 1
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.lv ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 1, !tbaa !58, !noalias !2623
  %i.mx = call noundef i32 @llvm.bswap.i32(i32 %i.mw)
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 4
  %i.mz = load i32, ptr %i.my, align 1, !tbaa !58, !noalias !2623
  %i.na = call noundef i32 @llvm.bswap.i32(i32 %i.mz)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.018.i = phi i32 [ %i.mu, %bb.by ], [ %i.na, %bb.bz ] ; 3 uses
  %.0.i269 = phi i32 [ %i.mp, %bb.by ], [ %i.mx, %bb.bz ] ; 3 uses
  %i.nb = icmp ugt i32 %.0.i269, %.018.i
  br i1 %i.nb, label %.critedge.i, label %bb.cb, !prof !48

bb.cb:                                            ; preds = %bb.ca
  %i.nc = load ptr, ptr %i.lk, align 8, !tbaa !51, !noalias !2623 ; 2 uses
  %.not.i.i.i270 = icmp eq ptr %i.nc, null
  %spec.select.i.i.i = select i1 %.not.i.i.i270, ptr @_hb_NullPool, ptr %i.nc ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 24
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !57, !noalias !2623
  %i.nf = icmp ugt i32 %.018.i, %i.ne
  br i1 %i.nf, label %.critedge.i, label %_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i, !prof !48

.critedge.i:                                      ; preds = %bb.cb, %bb.ca
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 16, i1 false), !alias.scope !2623
  br label %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit

_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i: ; preds = %bb.cb
  %i.ng = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 16
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !54, !noalias !2623
  %i.ni = zext i32 %.0.i269 to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.ni ; 2 uses
  %i.nk = sub nuw i32 %.018.i, %.0.i269           ; 2 uses
  %.sroa.2.8.insert.ext.i271 = zext i32 %i.nk to i64
  %i.nl = icmp ult i32 %i.nk, 10
  %spec.select.i.i24.i = select i1 %i.nl, ptr @_hb_NullPool, ptr %i.nj ; 2 uses
  %i.nm = load i16, ptr %spec.select.i.i24.i, align 1, !tbaa !62, !noalias !2623 ; 2 uses
  %i.nn = icmp eq i16 %i.nm, 0
  %i.no = call i16 @llvm.bswap.i16(i16 %i.nm)
  %i.np = icmp sgt i16 %i.no, 0
  %spec.select521 = select i1 %i.np, i32 1, i32 2
  %.sroa.7.0 = select i1 %i.nn, i32 0, i32 %spec.select521, !prof !48
  store ptr %i.nj, ptr %17, align 8
  store i64 %.sroa.2.8.insert.ext.i271, ptr %.sroa.4495.0..sroa_idx, align 8
  br label %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit

_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit: ; preds = %bb.bw, %.critedge.i, %_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i
  %_hb_NullPool.sink = phi ptr [ @_hb_NullPool, %bb.bw ], [ @_hb_NullPool, %.critedge.i ], [ %spec.select.i.i24.i, %_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i ]
  %.sink662 = phi i32 [ -1, %bb.bw ], [ -1, %.critedge.i ], [ %i.lu, %_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i ]
  %.sink = phi i32 [ 0, %bb.bw ], [ 0, %.critedge.i ], [ %.sroa.7.0, %_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i ]
  store ptr %_hb_NullPool.sink, ptr %i.lf, align 8
  store i32 %.sink662, ptr %i.lg, align 8
  store i32 %.sink, ptr %i.lh, align 4
  %i.nq = call noundef zeroext i1 @_ZNK2OT9glyf_impl5Glyph10get_pointsINS_18glyf_accelerator_tEEEbP9hb_font_tRKT_R22contour_point_vector_tR17hb_glyf_scratch_tPS9_P16head_maxp_info_tPjbbb10hb_array_tIKiEPNS_17hb_scalar_cache_tEjSG_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i1 noundef zeroext %10, ptr noundef nonnull byval(%struct.hb_array_t.0) align 8 %11, ptr noundef %12, i32 noundef %i.ll, ptr noundef nonnull %spec.store.select)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #63
  br i1 %i.nq, label %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit._crit_edge, label %bb.cc, !prof !49

_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit._crit_edge: ; preds = %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit
  %.pre572 = load i32, ptr %i.ld, align 4, !tbaa !193
  br label %bb.cd

bb.cc:                                            ; preds = %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit
  %i.nr = call noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i32 noundef %i.z) ; 0 uses
  br label %_ZN11hb_vector_tI15contour_point_tLb0EE6resizeEi.exit355

.critedge192:                                     ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #63
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit._crit_edge, %.critedge192
  %i.ns = phi i32 [ %.pre572, %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit._crit_edge ], [ %i.mc, %.critedge192 ] ; 2 uses
  %i.nt = load ptr, ptr %i.du, align 8, !tbaa !2564
  %i.nu = load i32, ptr %i.y, align 4, !tbaa !193 ; 3 uses
  %i.nv = add i32 %i.nu, -4                       ; 2 uses
  %storemerge.i.i275 = call i32 @llvm.usub.sat.i32(i32 %i.nu, i32 %i.nv) ; 4 uses
  %.sroa.speculated.i.i276 = call i32 @llvm.umin.i32(i32 %storemerge.i.i275, i32 4)
  %i.nw = zext i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw [12 x i8], ptr %i.nt, i64 %i.nw ; 5 uses
  %.sroa.3.8.insert.ext.i.i277 = zext nneg i32 %.sroa.speculated.i.i276 to i64
  %i.ny = load ptr, ptr %i.lm, align 8, !tbaa !2564 ; 2 uses
  %.not534 = icmp eq i32 %i.mc, 0
  br i1 %.not534, label %_ZNK10hb_array_tI15contour_point_tE9sub_arrayEjPj.exit293, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %storemerge.i290 = call i32 @llvm.usub.sat.i32(i32 %i.ns, i32 %i.mc)
  %i.nz = zext i32 %i.mc to i64
  %i.oa = getelementptr inbounds nuw [12 x i8], ptr %i.ny, i64 %i.nz
  br label %_ZNK10hb_array_tI15contour_point_tE9sub_arrayEjPj.exit293

_ZNK10hb_array_tI15contour_point_tE9sub_arrayEjPj.exit293: ; preds = %bb.cd, %bb.ce
  %.sroa.3.0.i286.in = phi i32 [ %storemerge.i290, %bb.ce ], [ %i.ns, %bb.cd ] ; 11 uses
  %.sroa.0.0.i287 = phi ptr [ %i.oa, %bb.ce ], [ %i.ny, %bb.cd ] ; 15 uses
  %.sroa.3.0.i286 = zext i32 %.sroa.3.0.i286.in to i64 ; 4 uses
  br i1 %9, label %bb.cf, label %.loopexit

bb.cf:                                            ; preds = %_ZNK10hb_array_tI15contour_point_tE9sub_arrayEjPj.exit293
  %i.ob = load i16, ptr %.sroa.5405.0557, align 1, !tbaa !62
  %i.oc = and i16 %i.ob, 2
  %.not535 = icmp eq i16 %i.oc, 0
  br i1 %.not535, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.cf
  %.not.i.i294 = icmp ugt i32 %.sroa.3.0.i286.in, 3
  br i1 %.not.i.i294, label %bb.ch, label %bb.cg, !prof !49

bb.cg:                                            ; preds = %.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit296

bb.ch:                                            ; preds = %.preheader
  %i.od = add i32 %.sroa.3.0.i286.in, -4
  %i.oe = zext i32 %i.od to i64
  %i.of = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i287, i64 %i.oe
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit296

_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit296: ; preds = %bb.cg, %bb.ch
  %.0.i.i295 = phi ptr [ @_hb_CrapPool, %bb.cg ], [ %i.of, %bb.ch ]
  %.not.i.i297.not.not = icmp ugt i32 %i.nu, 3
  br i1 %.not.i.i297.not.not, label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit299, label %bb.ci, !prof !49

bb.ci:                                            ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit299

_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit299: ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit296, %bb.ci
  %.0.i.i298 = phi ptr [ @_hb_CrapPool, %bb.ci ], [ %i.nx, %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit296 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0.i.i298, ptr noundef nonnull align 4 dereferenceable(12) %.0.i.i295, i64 12, i1 false), !tbaa.struct !2626
  %.not.i.i294.1 = icmp ugt i32 %.sroa.3.0.i286.in, 2
  br i1 %.not.i.i294.1, label %bb.ck, label %bb.cj, !prof !49

bb.cj:                                            ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit299
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit296.1

bb.ck:                                            ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit299
  %i.og = add i32 %.sroa.3.0.i286.in, -3
  %i.oh = zext i32 %i.og to i64
  %i.oi = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i287, i64 %i.oh
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit296.1

_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit296.1: ; preds = %bb.ck, %bb.cj
  %.0.i.i295.1 = phi ptr [ @_hb_CrapPool, %bb.cj ], [ %i.oi, %bb.ck ]
  %.not.i.i297.1 = icmp ugt i32 %storemerge.i.i275, 1
  br i1 %.not.i.i297.1, label %bb.cm, label %bb.cl, !prof !49

bb.cl:                                            ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit296.1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit299.1

bb.cm:                                            ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit296.1
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nx, i64 12
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit299.1

_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit299.1: ; preds = %bb.cm, %bb.cl
  %.0.i.i298.1 = phi ptr [ @_hb_CrapPool, %bb.cl ], [ %i.oj, %bb.cm ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0.i.i298.1, ptr noundef nonnull align 4 dereferenceable(12) %.0.i.i295.1, i64 12, i1 false), !tbaa.struct !2626
  %.not.i.i294.2 = icmp ugt i32 %.sroa.3.0.i286.in, 1
  br i1 %.not.i.i294.2, label %bb.co, label %bb.cn, !prof !49

bb.cn:                                            ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit299.1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit296.2

bb.co:                                            ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit299.1
  %i.ok = add i32 %.sroa.3.0.i286.in, -2
  %i.ol = zext i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i287, i64 %i.ol
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit296.2

_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit296.2: ; preds = %bb.co, %bb.cn
  %.0.i.i295.2 = phi ptr [ @_hb_CrapPool, %bb.cn ], [ %i.om, %bb.co ]
  %.not.i.i297.2 = icmp ugt i32 %storemerge.i.i275, 2
  br i1 %.not.i.i297.2, label %bb.cq, label %bb.cp, !prof !49

bb.cp:                                            ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit296.2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit299.2

bb.cq:                                            ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit296.2
  %i.on = getelementptr inbounds nuw i8, ptr %i.nx, i64 24
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit299.2

_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit299.2: ; preds = %bb.cq, %bb.cp
  %.0.i.i298.2 = phi ptr [ @_hb_CrapPool, %bb.cp ], [ %i.on, %bb.cq ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0.i.i298.2, ptr noundef nonnull align 4 dereferenceable(12) %.0.i.i295.2, i64 12, i1 false), !tbaa.struct !2626
  %.not.i.i294.3.not = icmp eq i32 %.sroa.3.0.i286.in, 0
  br i1 %.not.i.i294.3.not, label %bb.cr, label %bb.cs, !prof !48

bb.cr:                                            ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit299.2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit296.3

bb.cs:                                            ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit299.2
  %i.oo = add i32 %.sroa.3.0.i286.in, -1
  %i.op = zext i32 %i.oo to i64
  %i.oq = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i287, i64 %i.op
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit296.3

_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit296.3: ; preds = %bb.cs, %bb.cr
  %.0.i.i295.3 = phi ptr [ @_hb_CrapPool, %bb.cr ], [ %i.oq, %bb.cs ]
  %.not.i.i297.3 = icmp ugt i32 %storemerge.i.i275, 3
  br i1 %.not.i.i297.3, label %bb.cu, label %bb.ct, !prof !49

bb.ct:                                            ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit296.3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit299.3

bb.cu:                                            ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit296.3
  %i.or = getelementptr inbounds nuw i8, ptr %i.nx, i64 36
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit299.3

_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit299.3: ; preds = %bb.cu, %bb.ct
  %.0.i.i298.3 = phi ptr [ @_hb_CrapPool, %bb.ct ], [ %i.or, %bb.cu ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0.i.i298.3, ptr noundef nonnull align 4 dereferenceable(12) %.0.i.i295.3, i64 12, i1 false), !tbaa.struct !2626
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit299.3, %bb.cf, %_ZNK10hb_array_tI15contour_point_tE9sub_arrayEjPj.exit293
  %.not536 = icmp eq i32 %.sroa.3.0.i286.in, 0
  br i1 %.not536, label %bb.dd, label %bb.cv

bb.cv:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.b, align 16, !tbaa !94
  %i.os = load i16, ptr %.sroa.5405.0557, align 1, !tbaa !62
  %i.ot = call noundef i16 @llvm.bswap.i16(i16 %i.os)
  %i.ou = zext i16 %i.ot to i32                   ; 4 uses
  %i.ov = and i32 %i.ou, 1
  %.not.i300 = icmp eq i32 %i.ov, 0
  %.037.i.v = select i1 %.not.i300, i64 6, i64 8
  %.037.i = getelementptr inbounds nuw i8, ptr %.sroa.5405.0557, i64 %.037.i.v ; 3 uses
  %i.ow = and i32 %i.ou, 8
  %.not40.i = icmp eq i32 %i.ow, 0
  br i1 %.not40.i, label %bb.cx, label %bb.cw
end_hunk_16
begin_hunk_17_@_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t22apply_deltas_to_pointsEj10hb_array_tIKiES5_I15contour_point_tER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tEb:bb.a
  br i1 %min.iters.check1051, label %scalar.ph1050.preheader, label %vector.body1054

vector.body1054:                                  ; preds = %.lr.ph737, %vector.body1054
  %index1055 = phi i64 [ %index.next1058, %vector.body1054 ], [ 0, %.lr.ph737 ] ; 2 uses
  %i.agk = add nuw i64 %index1055, %i.et          ; 6 uses
  %i.agl = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %i.agk ; 3 uses
  %i.agm = getelementptr [12 x i8], ptr %.sroa.0417.1, i64 %i.agk ; 2 uses
  %i.agn = getelementptr i8, ptr %i.agm, i64 12   ; 2 uses
  %i.ago = getelementptr [12 x i8], ptr %.sroa.0417.1, i64 %i.agk ; 2 uses
  %i.agp = getelementptr i8, ptr %i.ago, i64 24   ; 2 uses
  %i.agq = getelementptr [12 x i8], ptr %.sroa.0417.1, i64 %i.agk ; 2 uses
  %i.agr = getelementptr i8, ptr %i.agq, i64 36   ; 2 uses
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %i.agi, i64 %i.agk
  %wide.load1056 = load <4 x i32>, ptr %i.ags, align 4, !tbaa !139
  %i.agt = sitofp <4 x i32> %wide.load1056 to <4 x float>
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.agj, i64 %i.agk
  %wide.load1057 = load <4 x i32>, ptr %i.agu, align 4, !tbaa !139
  %i.agv = sitofp <4 x i32> %wide.load1057 to <4 x float>
  %i.agw = load float, ptr %i.agl, align 4, !tbaa !2608
  %i.agx = load float, ptr %i.agn, align 4, !tbaa !2608
  %i.agy = load float, ptr %i.agp, align 4, !tbaa !2608
  %i.agz = load float, ptr %i.agr, align 4, !tbaa !2608
  %i.aha = insertelement <4 x float> poison, float %i.agw, i64 0
  %i.ahb = insertelement <4 x float> %i.aha, float %i.agx, i64 1
  %i.ahc = insertelement <4 x float> %i.ahb, float %i.agy, i64 2
  %i.ahd = insertelement <4 x float> %i.ahc, float %i.agz, i64 3
  %i.ahe = fadd <4 x float> %i.ahd, %i.agt        ; 4 uses
  %i.ahf = extractelement <4 x float> %i.ahe, i64 0
  store float %i.ahf, ptr %i.agl, align 4, !tbaa !2608
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agl, i64 4 ; 2 uses
  %i.ahh = getelementptr i8, ptr %i.agm, i64 16
  %i.ahi = getelementptr i8, ptr %i.ago, i64 28
  %i.ahj = getelementptr i8, ptr %i.agq, i64 40
  %i.ahk = load float, ptr %i.ahg, align 4, !tbaa !2609
  %i.ahl = load float, ptr %i.ahh, align 4, !tbaa !2609
  %i.ahm = load float, ptr %i.ahi, align 4, !tbaa !2609
  %i.ahn = load float, ptr %i.ahj, align 4, !tbaa !2609
  %i.aho = insertelement <4 x float> poison, float %i.ahk, i64 0
  %i.ahp = insertelement <4 x float> %i.aho, float %i.ahl, i64 1
  %i.ahq = insertelement <4 x float> %i.ahp, float %i.ahm, i64 2
  %i.ahr = insertelement <4 x float> %i.ahq, float %i.ahn, i64 3
  %i.ahs = fadd <4 x float> %i.ahr, %i.agv        ; 4 uses
  %i.aht = extractelement <4 x float> %i.ahs, i64 0
  store float %i.aht, ptr %i.ahg, align 4, !tbaa !2609
  %i.ahu = shufflevector <4 x float> %i.ahe, <4 x float> %i.ahs, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.ahu, ptr %i.agn, align 4, !tbaa !94
  %i.ahv = shufflevector <4 x float> %i.ahe, <4 x float> %i.ahs, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.ahv, ptr %i.agp, align 4, !tbaa !94
  %i.ahw = shufflevector <4 x float> %i.ahe, <4 x float> %i.ahs, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.ahw, ptr %i.agr, align 4, !tbaa !94
  %index.next1058 = add nuw i64 %index1055, 4     ; 2 uses
  %i.ahx = icmp eq i64 %index.next1058, %n.vec1053
  br i1 %i.ahx, label %scalar.ph1050.preheader, label %vector.body1054, !llvm.loop !2698

scalar.ph1050.preheader:                          ; preds = %vector.body1054, %.lr.ph737
  %indvars.iv852.ph = phi i64 [ %i.et, %.lr.ph737 ], [ %i.fe, %vector.body1054 ]
  br label %scalar.ph1050

scalar.ph1050:                                    ; preds = %scalar.ph1050.preheader, %scalar.ph1050
  %indvars.iv852 = phi i64 [ %indvars.iv.next853, %scalar.ph1050 ], [ %indvars.iv852.ph, %scalar.ph1050.preheader ] ; 4 uses
  %i.ahy = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %indvars.iv852 ; 2 uses
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.agi, i64 %indvars.iv852
  %i.aia = load i32, ptr %i.ahz, align 4, !tbaa !139
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.agj, i64 %indvars.iv852
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !139
  %i.aid = insertelement <2 x i32> poison, i32 %i.aia, i64 0
  %i.aie = insertelement <2 x i32> %i.aid, i32 %i.aic, i64 1
  %i.aif = sitofp <2 x i32> %i.aie to <2 x float>
  %i.aig = load <2 x float>, ptr %i.ahy, align 4, !tbaa !94
  %i.aih = fadd <2 x float> %i.aig, %i.aif
  store <2 x float> %i.aih, ptr %i.ahy, align 4, !tbaa !94
  %indvars.iv.next853 = add nuw nsw i64 %indvars.iv852, 1 ; 2 uses
  %exitcond856.not = icmp eq i64 %indvars.iv.next853, %i.eu
  br i1 %exitcond856.not, label %select.unfold, label %scalar.ph1050, !llvm.loop !2699

bb.cq:                                            ; preds = %.lr.ph733, %bb.cu
  %indvars.iv842 = phi i64 [ 0, %.lr.ph733 ], [ %indvars.iv.next843, %bb.cu ] ; 5 uses
  %.not.i.i387 = icmp samesign ult i64 %indvars.iv842, %i.adg
  br i1 %.not.i.i387, label %bb.cs, label %bb.cr, !prof !49

bb.cr:                                            ; preds = %bb.cq
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZNK9hb_iter_tI10hb_array_tIjERjEixEj.exit389

bb.cs:                                            ; preds = %bb.cq
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv842
  %.pre885 = load i32, ptr %i.aii, align 4, !tbaa !139
  br label %_ZNK9hb_iter_tI10hb_array_tIjERjEixEj.exit389

_ZNK9hb_iter_tI10hb_array_tIjERjEixEj.exit389:    ; preds = %bb.cr, %bb.cs
  %i.aij = phi i32 [ 0, %bb.cr ], [ %.pre885, %bb.cs ] ; 3 uses
  %.not303 = icmp uge i32 %i.aij, %.sroa.18.8.extract.trunc
  %i.aik = icmp ult i32 %i.aij, %i.eq
  %or.cond312 = select i1 %8, i1 %i.aik, i1 false
  %or.cond757 = select i1 %.not303, i1 true, i1 %or.cond312, !prof !160
  br i1 %or.cond757, label %bb.cu, label %bb.ct, !prof !160

bb.ct:                                            ; preds = %_ZNK9hb_iter_tI10hb_array_tIjERjEixEj.exit389
  %i.ail = zext nneg i32 %i.aij to i64
  %i.aim = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %i.ail ; 3 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 8
  store i8 1, ptr %i.ain, align 4, !tbaa !2565
  %i.aio = load ptr, ptr %i.el, align 8, !tbaa !132
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %i.aio, i64 %indvars.iv842
  %i.aiq = load i32, ptr %i.aip, align 4, !tbaa !139
  %i.air = load ptr, ptr %i.en, align 8, !tbaa !132
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.air, i64 %indvars.iv842
  %i.ait = load i32, ptr %i.ais, align 4, !tbaa !139
  %i.aiu = insertelement <2 x i32> poison, i32 %i.aiq, i64 0
  %i.aiv = insertelement <2 x i32> %i.aiu, i32 %i.ait, i64 1
  %i.aiw = sitofp <2 x i32> %i.aiv to <2 x float>
  %i.aix = load <2 x float>, ptr %i.aim, align 4, !tbaa !94
  %i.aiy = fadd <2 x float> %i.aix, %i.aiw
  store <2 x float> %i.aiy, ptr %i.aim, align 4, !tbaa !94
  br label %bb.cu

bb.cu:                                            ; preds = %_ZNK9hb_iter_tI10hb_array_tIjERjEixEj.exit389, %bb.ct
  %indvars.iv.next843 = add nuw nsw i64 %indvars.iv842, 1 ; 2 uses
  %exitcond846.not = icmp eq i64 %indvars.iv.next843, %wide.trip.count845
  br i1 %exitcond846.not, label %.loopexit638, label %bb.cq, !llvm.loop !2700

.loopexit638:                                     ; preds = %bb.cu, %bb.cp, %.preheader642, %.preheader640
  br i1 %8, label %select.unfold, label %.preheader637

.preheader637:                                    ; preds = %.loopexit638, %.thread577
  %.0276 = phi i32 [ %i.ajh, %.thread577 ], [ 0, %.loopexit638 ] ; 10 uses
  %i.aiz = icmp ult i32 %.0276, %.sroa.7.8.extract.trunc
  br i1 %i.aiz, label %.lr.ph741.preheader, label %.critedge

.lr.ph741.preheader:                              ; preds = %.preheader637
  %i.aja = zext i32 %.0276 to i64
  br label %.lr.ph741

.lr.ph741:                                        ; preds = %.lr.ph741.preheader, %bb.cv
  %indvars.iv862 = phi i64 [ %i.aja, %.lr.ph741.preheader ], [ %indvars.iv.next863, %bb.cv ] ; 3 uses
  %i.ajb = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv862
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 9
  %i.ajd = load i8, ptr %i.ajc, align 1, !tbaa !2571, !range !220, !noundef !74
  %i.aje = trunc nuw i8 %i.ajd to i1
  br i1 %i.aje, label %.critedge.loopexit, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph741
  %indvars.iv.next863 = add nuw nsw i64 %indvars.iv862, 1 ; 2 uses
  %exitcond865.not = icmp eq i64 %indvars.iv.next863, %i.eu
  br i1 %exitcond865.not, label %select.unfold, label %.lr.ph741, !llvm.loop !2701

.critedge.loopexit:                               ; preds = %.lr.ph741
  %i.ajf = trunc nuw i64 %indvars.iv862 to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader637
  %.1277.lcssa = phi i32 [ %.0276, %.preheader637 ], [ %i.ajf, %.critedge.loopexit ] ; 6 uses
  %i.ajg = icmp eq i32 %.1277.lcssa, %.sroa.7.8.extract.trunc
  br i1 %i.ajg, label %select.unfold, label %.preheader627, !prof !124

.preheader627:                                    ; preds = %.critedge
  %i.ajh = add i32 %.1277.lcssa, 1                ; 3 uses
  %i.aji = icmp ult i32 %.0276, %i.ajh
  br i1 %i.aji, label %.lr.ph747.preheader, label %._crit_edge

.lr.ph747.preheader:                              ; preds = %.preheader627
  %i.ajj = zext i32 %.0276 to i64                 ; 4 uses
  %wide.trip.count869 = zext i32 %i.ajh to i64    ; 2 uses
  %i.ajk = sub nsw i64 %wide.trip.count869, %i.ajj ; 2 uses
  %xtraiter1194 = and i64 %i.ajk, 3               ; 3 uses
  %i.ajl = sub nsw i64 %i.ajj, %wide.trip.count869
  %i.ajm = icmp ugt i64 %i.ajl, -4
  br i1 %i.ajm, label %.lr.ph747.epil.preheader, label %.lr.ph747.preheader.new

.lr.ph747.preheader.new:                          ; preds = %.lr.ph747.preheader
  %unroll_iter = and i64 %i.ajk, -4
  br label %.lr.ph747

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph747
  %lcmp.mod1195.not = icmp eq i64 %xtraiter1194, 0
  br i1 %lcmp.mod1195.not, label %._crit_edge, label %.lr.ph747.epil.preheader

.lr.ph747.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph747.preheader
  %indvars.iv866.epil.init = phi i64 [ %i.ajj, %.lr.ph747.preheader ], [ %indvars.iv.next867.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0272745.epil.init = phi i32 [ 0, %.lr.ph747.preheader ], [ %i.akp, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod1197 = icmp ne i64 %xtraiter1194, 0
  call void @llvm.assume(i1 %lcmp.mod1197)
  br label %.lr.ph747.epil

.lr.ph747.epil:                                   ; preds = %.lr.ph747.epil, %.lr.ph747.epil.preheader
  %indvars.iv866.epil = phi i64 [ %indvars.iv866.epil.init, %.lr.ph747.epil.preheader ], [ %indvars.iv.next867.epil, %.lr.ph747.epil ] ; 2 uses
  %.0272745.epil = phi i32 [ %.0272745.epil.init, %.lr.ph747.epil.preheader ], [ %i.ajr, %.lr.ph747.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph747.epil.preheader ], [ %epil.iter.next, %.lr.ph747.epil ]
  %i.ajn = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %indvars.iv866.epil
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 8
  %i.ajp = load i8, ptr %i.ajo, align 4, !tbaa !2565
  %i.ajq = zext i8 %i.ajp to i32
  %i.ajr = add i32 %.0272745.epil, %i.ajq         ; 2 uses
  %indvars.iv.next867.epil = add nuw nsw i64 %indvars.iv866.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1194
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph747.epil, !llvm.loop !2702

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph747.epil, %.preheader627
  %.0272.lcssa = phi i32 [ 0, %.preheader627 ], [ %i.akp, %._crit_edge.loopexit.unr-lcssa ], [ %i.ajr, %.lr.ph747.epil ]
  %i.ajs = sub nuw i32 %.1277.lcssa, %.0276       ; 2 uses
  %i.ajt = add i32 %i.ajs, 1
  %i.aju = sub i32 %i.ajt, %.0272.lcssa           ; 2 uses
  %i.ajv = add i32 %i.aju, -1
  %or.cond313.not = icmp ult i32 %i.ajv, %i.ajs
  br i1 %or.cond313.not, label %.preheader626, label %.thread577

.lr.ph747:                                        ; preds = %.lr.ph747, %.lr.ph747.preheader.new
  %indvars.iv866 = phi i64 [ %i.ajj, %.lr.ph747.preheader.new ], [ %indvars.iv.next867.3, %.lr.ph747 ] ; 5 uses
  %.0272745 = phi i32 [ 0, %.lr.ph747.preheader.new ], [ %i.akp, %.lr.ph747 ]
  %niter = phi i64 [ 0, %.lr.ph747.preheader.new ], [ %niter.next.3, %.lr.ph747 ]
  %i.ajw = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %indvars.iv866
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 8
  %i.ajy = load i8, ptr %i.ajx, align 4, !tbaa !2565
  %i.ajz = zext i8 %i.ajy to i32
  %i.aka = add i32 %.0272745, %i.ajz
  %i.akb = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %indvars.iv866
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 20
  %i.akd = load i8, ptr %i.akc, align 4, !tbaa !2565
  %i.ake = zext i8 %i.akd to i32
  %i.akf = add i32 %i.aka, %i.ake
  %i.akg = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %indvars.iv866
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 32
  %i.aki = load i8, ptr %i.akh, align 4, !tbaa !2565
  %i.akj = zext i8 %i.aki to i32
  %i.akk = add i32 %i.akf, %i.akj
  %i.akl = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %indvars.iv866
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 44
  %i.akn = load i8, ptr %i.akm, align 4, !tbaa !2565
  %i.ako = zext i8 %i.akn to i32
  %i.akp = add i32 %i.akk, %i.ako                 ; 3 uses
  %indvars.iv.next867.3 = add nuw nsw i64 %indvars.iv866, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph747, !llvm.loop !2703

.preheader626:                                    ; preds = %bb.cz, %._crit_edge
  %.1273 = phi i32 [ %i.aju, %._crit_edge ], [ %.2274, %bb.cz ]
  %.0268 = phi i32 [ %.0276, %._crit_edge ], [ %i.alc, %bb.cz ]
  br label %bb.cw

bb.cw:                                            ; preds = %.backedge, %.preheader626
  %.1269 = phi i32 [ %.0268, %.preheader626 ], [ %i.akr, %.backedge ] ; 5 uses
  %.not.i390 = icmp ult i32 %.1269, %.1277.lcssa
  %i.akq = add nuw i32 %.1269, 1
  %i.akr = select i1 %.not.i390, i32 %i.akq, i32 %.0276 ; 2 uses
  %i.aks = zext i32 %.1269 to i64                 ; 2 uses
  %i.akt = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %i.aks ; 3 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 8
  %i.akv = load i8, ptr %i.aku, align 4, !tbaa !2565
  %.not305 = icmp eq i8 %i.akv, 0
  br i1 %.not305, label %.backedge, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.akw = zext i32 %i.akr to i64
  %i.akx = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %i.akw
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 8
  %i.akz = load i8, ptr %i.aky, align 4, !tbaa !2565
  %.not306 = icmp eq i8 %i.akz, 0
  br i1 %.not306, label %.preheader625, label %.backedge

.backedge:                                        ; preds = %bb.cx, %bb.cw
  br label %bb.cw, !llvm.loop !2704

.preheader625:                                    ; preds = %bb.cx, %.preheader625.backedge
  %i.ala = phi i8 [ %.be, %.preheader625.backedge ], [ 1, %bb.cx ]
  %.2270 = phi i32 [ %i.alc, %.preheader625.backedge ], [ %.1269, %bb.cx ] ; 2 uses
  %.not.i391 = icmp ult i32 %.2270, %.1277.lcssa
  %i.alb = add nuw i32 %.2270, 1
  %i.alc = select i1 %.not.i391, i32 %i.alb, i32 %.0276 ; 4 uses
  %.not307 = icmp eq i8 %i.ala, 0
  %i.ald = zext i32 %i.alc to i64                 ; 2 uses
  %i.ale = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %i.ald ; 3 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  %i.alg = load i8, ptr %i.alf, align 4, !tbaa !2565 ; 2 uses
  br i1 %.not307, label %bb.cy, label %.preheader625.backedge

.preheader625.backedge:                           ; preds = %.preheader625, %bb.cy
  %.be = phi i8 [ %i.alg, %.preheader625 ], [ 0, %bb.cy ]
  br label %.preheader625, !llvm.loop !2705

bb.cy:                                            ; preds = %.preheader625
  %.not308 = icmp eq i8 %i.alg, 0
  br i1 %.not308, label %.preheader625.backedge, label %.preheader

.preheader:                                       ; preds = %bb.cy
  %i.alh = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0435.1, i64 %i.aks ; 2 uses
  %i.ali = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0435.1, i64 %i.ald ; 2 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alh, i64 4
  %i.alk = getelementptr inbounds nuw i8, ptr %i.ali, i64 4
  %i.all = getelementptr inbounds nuw i8, ptr %i.akt, i64 4
  %i.alm = getelementptr inbounds nuw i8, ptr %i.ale, i64 4
  br label %bb.cz

bb.cz:                                            ; preds = %.preheader, %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit397
  %.2274 = phi i32 [ %i.anl, %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit397 ], [ %.1273, %.preheader ] ; 2 uses
  %.0267 = phi i32 [ %i.alo, %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit397 ], [ %.1269, %.preheader ] ; 2 uses
  %.not.i392 = icmp ult i32 %.0267, %.1277.lcssa
  %i.aln = add nuw i32 %.0267, 1
  %i.alo = select i1 %.not.i392, i32 %i.aln, i32 %.0276 ; 3 uses
  %i.alp = icmp eq i32 %i.alo, %i.alc
  br i1 %i.alp, label %.preheader626, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.alq = zext i32 %i.alo to i64                 ; 2 uses
  %i.alr = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0435.1, i64 %i.alq ; 2 uses
  %i.als = load float, ptr %i.alr, align 4, !tbaa !94 ; 3 uses
  %i.alt = load float, ptr %i.alh, align 4, !tbaa !94 ; 9 uses
  %i.alu = load float, ptr %i.ali, align 4, !tbaa !94 ; 8 uses
  %i.alv = load float, ptr %i.akt, align 4, !tbaa !94 ; 6 uses
  %i.alw = load float, ptr %i.ale, align 4, !tbaa !94 ; 4 uses
  %i.alx = fcmp oeq float %i.alt, %i.alu
  br i1 %i.alx, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.aly = fcmp oeq float %i.alv, %i.alw
  %i.alz = select i1 %i.aly, float %i.alv, float 0.000000e+00
  br label %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit

bb.dc:                                            ; preds = %bb.da
  %i.ama = fcmp ole float %i.alt, %i.alu
  %.sroa.speculated35.i = select i1 %i.ama, float %i.alt, float %i.alu
  %i.amb = fcmp ugt float %i.als, %.sroa.speculated35.i
  br i1 %i.amb, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.amc = fcmp olt float %i.alt, %i.alu
  %i.amd = select i1 %i.amc, float %i.alv, float %i.alw
  br label %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit

bb.de:                                            ; preds = %bb.dc
  %i.ame = fcmp oge float %i.alt, %i.alu
  %.sroa.speculated.i = select i1 %i.ame, float %i.alt, float %i.alu
  %i.amf = fcmp ult float %i.als, %.sroa.speculated.i
  br i1 %i.amf, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.amg = fcmp ogt float %i.alt, %i.alu
  %i.amh = select i1 %i.amg, float %i.alv, float %i.alw
  br label %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit

bb.dg:                                            ; preds = %bb.de
  %i.ami = fsub float %i.als, %i.alt
  %i.amj = fsub float %i.alu, %i.alt
  %i.amk = fdiv float %i.ami, %i.amj
  %i.aml = fsub float %i.alw, %i.alv
  %i.amm = call float @llvm.fmuladd.f32(float %i.amk, float %i.aml, float %i.alv)
  br label %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit

_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit: ; preds = %bb.db, %bb.dd, %bb.df, %bb.dg
  %.0.i393 = phi float [ %i.alz, %bb.db ], [ %i.amd, %bb.dd ], [ %i.amh, %bb.df ], [ %i.amm, %bb.dg ]
  %i.amn = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %i.alq ; 2 uses
  store float %.0.i393, ptr %i.amn, align 4, !tbaa !2608
  %i.amo = getelementptr inbounds nuw i8, ptr %i.alr, i64 4
  %i.amp = load float, ptr %i.amo, align 4, !tbaa !94 ; 3 uses
  %i.amq = load float, ptr %i.alj, align 4, !tbaa !94 ; 9 uses
  %i.amr = load float, ptr %i.alk, align 4, !tbaa !94 ; 8 uses
  %i.ams = load float, ptr %i.all, align 4, !tbaa !94 ; 6 uses
  %i.amt = load float, ptr %i.alm, align 4, !tbaa !94 ; 4 uses
  %i.amu = fcmp oeq float %i.amq, %i.amr
  br i1 %i.amu, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit
  %i.amv = fcmp oeq float %i.ams, %i.amt
  %i.amw = select i1 %i.amv, float %i.ams, float 0.000000e+00
  br label %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit397

bb.di:                                            ; preds = %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit
  %i.amx = fcmp ole float %i.amq, %i.amr
  %.sroa.speculated35.i394 = select i1 %i.amx, float %i.amq, float %i.amr
  %i.amy = fcmp ugt float %i.amp, %.sroa.speculated35.i394
  br i1 %i.amy, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.amz = fcmp olt float %i.amq, %i.amr
  %i.ana = select i1 %i.amz, float %i.ams, float %i.amt
  br label %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit397

bb.dk:                                            ; preds = %bb.di
  %i.anb = fcmp oge float %i.amq, %i.amr
  %.sroa.speculated.i396 = select i1 %i.anb, float %i.amq, float %i.amr
  %i.anc = fcmp ult float %i.amp, %.sroa.speculated.i396
  br i1 %i.anc, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.and = fcmp ogt float %i.amq, %i.amr
  %i.ane = select i1 %i.and, float %i.ams, float %i.amt
  br label %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit397

bb.dm:                                            ; preds = %bb.dk
  %i.anf = fsub float %i.amp, %i.amq
  %i.ang = fsub float %i.amr, %i.amq
  %i.anh = fdiv float %i.anf, %i.ang
  %i.ani = fsub float %i.amt, %i.ams
  %i.anj = call float @llvm.fmuladd.f32(float %i.anh, float %i.ani, float %i.ams)
  br label %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit397

_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit397: ; preds = %bb.dh, %bb.dj, %bb.dl, %bb.dm
  %.0.i395 = phi float [ %i.amw, %bb.dh ], [ %i.ana, %bb.dj ], [ %i.ane, %bb.dl ], [ %i.anj, %bb.dm ]
  %i.ank = getelementptr inbounds nuw i8, ptr %i.amn, i64 4
  store float %.0.i395, ptr %i.ank, align 4, !tbaa !2609
end_hunk_17
begin_hunk_18_@_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t30decompile_deltas_add_to_pointsILb0EEEbRPKNS1_ILb1EhLj1EEE10hb_array_tI15contour_point_tEfS8_j:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !149    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !139
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !48

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !1092

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 1073741823
  br i1 %i.j, label %.critedge, label %bb.e, !prof !48

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not50 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not50, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !138
  tail call void @free(ptr noundef %i.m) #63
  br label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !138  ; 3 uses
  br i1 %.not50, label %bb.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 2
  %i.q = zext i32 %i.p to i64
  %i.r = tail call noalias noundef ptr @malloc(i64 noundef %i.q) #65 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread54, label %bb.k, !prof !48

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !76   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !48

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.o, i64 %i.v, i1 false), !alias.scope !2753
  br label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.x = shl nuw i32 %.138, 2
  %i.y = zext i32 %i.x to i64
  %i.z = tail call noalias noundef ptr @realloc(ptr noundef %i.w, i64 noundef %i.y) #66 ; 2 uses
  %.not22 = icmp eq ptr %i.z, null
  br i1 %.not22, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread54, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, !prof !130

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread54: ; preds = %bb.j, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit
  %i.aa = load i32, ptr %0, align 8, !tbaa !149   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.aa
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread54
  %i.ab = xor i32 %i.aa, -1
  br label %.sink.split

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.z, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ac, align 8, !tbaa !138
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ab, %bb.m ], [ %.138, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !149
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread54, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread54 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT18glyf_accelerator_t10get_pointsINS0_19points_aggregator_tEEEbP9hb_font_tjT_10hb_array_tIKiER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, ptr noundef byval(%"struct.OT::glyf_accelerator_t::points_aggregator_t") align 8 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(152) %6, ptr noundef %7) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %8 = alloca %"struct.OT::glyf_impl::Glyph", align 8 ; 10 uses
  %9 = alloca %struct.hb_array_t.0, align 8       ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !179
  %.not = icmp ult i32 %2, %i.b
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !193
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !316
  %.not58 = icmp eq ptr %i.e, null                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #63
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2757)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i8, ptr %i.f, align 8, !tbaa !319, !range !220, !noalias !2757, !noundef !74
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51, !noalias !2757 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54, !noalias !2757 ; 4 uses
  %i.m = zext i32 %2 to i64                       ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.m
  %i.o = load i16, ptr %i.n, align 1, !tbaa !62, !noalias !2757
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %i.q = zext i16 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 1
  %i.s = add nuw i32 %2, 1
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.t
  %i.v = load i16, ptr %i.u, align 1, !tbaa !62, !noalias !2757
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = zext i16 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  %i.aa = load i32, ptr %i.z, align 1, !tbaa !58, !noalias !2757
  %i.ab = tail call noundef i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = add nuw i32 %2, 1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !58, !noalias !2757
  %i.ag = tail call noundef i32 @llvm.bswap.i32(i32 %i.af)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.018.i = phi i32 [ %i.y, %bb.c ], [ %i.ag, %bb.d ] ; 3 uses
  %.0.i = phi i32 [ %i.r, %bb.c ], [ %i.ab, %bb.d ] ; 3 uses
  %i.ah = icmp ugt i32 %.0.i, %.018.i
  br i1 %i.ah, label %.critedge.i, label %bb.f, !prof !48

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !51, !noalias !2757 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr @_hb_NullPool, ptr %i.aj ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !57, !noalias !2757
  %i.am = icmp ugt i32 %.018.i, %i.al
  br i1 %i.am, label %.critedge.i, label %_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i, !prof !48

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 16, i1 false), !alias.scope !2757
  store ptr @_hb_NullPool, ptr %i.an, align 8, !tbaa !2559, !alias.scope !2757
  br label %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit

_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i: ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !54, !noalias !2757
  %i.aq = zext i32 %.0.i to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = sub nuw i32 %.018.i, %.0.i              ; 2 uses
  %.sroa.2.8.insert.ext.i = zext i32 %i.as to i64
  %i.at = icmp ult i32 %i.as, 10
  %spec.select.i.i24.i = select i1 %i.at, ptr @_hb_NullPool, ptr %i.ar ; 2 uses
  %i.au = load i16, ptr %spec.select.i.i24.i, align 1, !tbaa !62, !noalias !2757 ; 2 uses
  %i.av = icmp eq i16 %i.au, 0
  %i.aw = tail call i16 @llvm.bswap.i16(i16 %i.au)
  %i.ax = icmp sgt i16 %i.aw, 0
  %spec.select = select i1 %i.ax, i32 1, i32 2
  %.sroa.7.0 = select i1 %i.av, i32 0, i32 %spec.select, !prof !48
  store ptr %i.ar, ptr %8, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.2.8.insert.ext.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %spec.select.i.i24.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit

_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit: ; preds = %.critedge.i, %_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i
  %.sink169 = phi i32 [ -1, %.critedge.i ], [ %2, %_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i ]
  %.sink = phi i32 [ 0, %.critedge.i ], [ %.sroa.7.0, %_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %.sink169, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 %.sink, ptr %i.az, align 4
  store ptr %4, ptr %9, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ba = call noundef zeroext i1 @_ZNK2OT9glyf_impl5Glyph10get_pointsINS_18glyf_accelerator_tEEEbP9hb_font_tRKT_R22contour_point_vector_tR17hb_glyf_scratch_tPS9_P16head_maxp_info_tPjbbb10hb_array_tIKiEPNS_17hb_scalar_cache_tEjSG_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(152) %6, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext %.not58, ptr noundef nonnull byval(%struct.hb_array_t.0) align 8 %9, ptr noundef %7, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #63
  br i1 %i.ba, label %bb.g, label %.loopexit, !prof !49

bb.g:                                             ; preds = %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit
  %i.bb = load i32, ptr %i.c, align 4, !tbaa !193 ; 4 uses
  %i.bc = add i32 %i.bb, -4                       ; 7 uses
  br i1 %.not58, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !2564 ; 4 uses
  %.not120 = icmp eq i32 %i.bc, 0
  br i1 %.not120, label %._crit_edge, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %.promoted84 = load float, ptr %i.bf, align 4
  %.promoted = load float, ptr %i.bg, align 8
  %.promoted95 = load float, ptr %i.bh, align 4
  %.promoted101 = load float, ptr %i.bi, align 8
  %i.bj = zext i32 %i.bc to i64                   ; 2 uses
  br label %bb.i

._crit_edge:                                      ; preds = %.loopexit60, %bb.h
  call void @_ZN2OT18glyf_accelerator_t19points_aggregator_t10points_endEv(ptr noundef nonnull align 8 dereferenceable(44) %3)
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph83, %.loopexit60
  %.promoted71106 = phi float [ %.promoted101, %.lr.ph83 ], [ %.promoted71102, %.loopexit60 ] ; 6 uses
  %.promoted70100 = phi float [ %.promoted95, %.lr.ph83 ], [ %.promoted7096, %.loopexit60 ] ; 6 uses
  %.promoted6994 = phi float [ %.promoted, %.lr.ph83 ], [ %.promoted6990, %.loopexit60 ] ; 6 uses
  %.promoted89 = phi float [ %.promoted84, %.lr.ph83 ], [ %.promoted85, %.loopexit60 ] ; 6 uses
  %.05082 = phi i32 [ 0, %.lr.ph83 ], [ %i.dr, %.loopexit60 ] ; 6 uses
  %i.bk = zext i32 %.05082 to i64                 ; 4 uses
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !2565
  %i.bo = and i8 %i.bn, 1
  %.not57 = icmp eq i8 %i.bo, 0
  %i.bp = icmp ult i32 %.05082, %i.bc             ; 2 uses
  br i1 %.not57, label %.preheader61, label %.preheader62

.preheader62:                                     ; preds = %bb.i
  br i1 %i.bp, label %.lr.ph, label %.loopexit60

.preheader61:                                     ; preds = %bb.i
  br i1 %i.bp, label %.lr.ph73, label %.critedge

.lr.ph:                                           ; preds = %.preheader62, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ %i.bk, %.preheader62 ] ; 3 uses
  %i.bq = phi float [ %i.cf, %bb.j ], [ %.promoted71106, %.preheader62 ] ; 2 uses
  %i.br = phi float [ %i.cd, %bb.j ], [ %.promoted70100, %.preheader62 ] ; 2 uses
  %i.bs = phi float [ %i.cb, %bb.j ], [ %.promoted6994, %.preheader62 ] ; 2 uses
  %i.bt = phi float [ %i.bx, %bb.j ], [ %.promoted89, %.preheader62 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %indvars.iv ; 3 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !94 ; 4 uses
  %i.bw = fcmp ole float %i.bt, %i.bv
  %i.bx = select i1 %i.bw, float %i.bt, float %i.bv ; 4 uses
  store float %i.bx, ptr %i.bf, align 4, !tbaa !2760
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bz = load float, ptr %i.by, align 4, !tbaa !94 ; 4 uses
  %i.ca = fcmp ole float %i.bs, %i.bz
  %i.cb = select i1 %i.ca, float %i.bs, float %i.bz ; 4 uses
  store float %i.cb, ptr %i.bg, align 8, !tbaa !2761
  %i.cc = fcmp oge float %i.br, %i.bv
  %i.cd = select i1 %i.cc, float %i.br, float %i.bv ; 4 uses
  store float %i.cd, ptr %i.bh, align 4, !tbaa !2762
  %i.ce = fcmp oge float %i.bq, %i.bz
  %i.cf = select i1 %i.ce, float %i.bq, float %i.bz ; 4 uses
  store float %i.cf, ptr %i.bi, align 8, !tbaa !2763
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 9
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !2571, !range !220, !noundef !74
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %.loopexit60.loopexit151.split.loop.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bj
  br i1 %exitcond.not, label %.loopexit60, label %.lr.ph, !llvm.loop !2764

.lr.ph73:                                         ; preds = %.preheader61, %bb.k
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %bb.k ], [ %i.bk, %.preheader61 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %indvars.iv135 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 9
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !2571, !range !220, !noundef !74
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph73
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next136, %i.bj
  br i1 %exitcond138.not, label %.critedge, label %.lr.ph73, !llvm.loop !2765

bb.l:                                             ; preds = %.lr.ph73
  %i.cn = trunc nuw i64 %indvars.iv135 to i32
  %i.co = load float, ptr %i.cj, align 4, !tbaa !94 ; 4 uses
  %i.cp = fcmp ole float %.promoted89, %i.co
  %i.cq = select i1 %i.cp, float %.promoted89, float %i.co ; 2 uses
  store float %i.cq, ptr %i.bf, align 4, !tbaa !2760
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !94 ; 4 uses
  %i.ct = fcmp ole float %.promoted6994, %i.cs
  %i.cu = select i1 %i.ct, float %.promoted6994, float %i.cs ; 2 uses
  store float %i.cu, ptr %i.bg, align 8, !tbaa !2761
  %i.cv = fcmp oge float %.promoted70100, %i.co
  %i.cw = select i1 %i.cv, float %.promoted70100, float %i.co ; 2 uses
  store float %i.cw, ptr %i.bh, align 4, !tbaa !2762
  %i.cx = fcmp oge float %.promoted71106, %i.cs
  %i.cy = select i1 %i.cx, float %.promoted71106, float %i.cs ; 2 uses
  store float %i.cy, ptr %i.bi, align 8, !tbaa !2763
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %.preheader61, %bb.l
  %.promoted71105 = phi float [ %i.cy, %bb.l ], [ %.promoted71106, %.preheader61 ], [ %.promoted71106, %bb.k ] ; 2 uses
  %.promoted7099 = phi float [ %i.cw, %bb.l ], [ %.promoted70100, %.preheader61 ], [ %.promoted70100, %bb.k ] ; 2 uses
  %.promoted6993 = phi float [ %i.cu, %bb.l ], [ %.promoted6994, %.preheader61 ], [ %.promoted6994, %bb.k ] ; 2 uses
  %.promoted88 = phi float [ %i.cq, %bb.l ], [ %.promoted89, %.preheader61 ], [ %.promoted89, %bb.k ] ; 2 uses
  %.265 = phi i32 [ %i.cn, %bb.l ], [ %.05082, %.preheader61 ], [ %i.bc, %bb.k ] ; 3 uses
  %i.cz = icmp ult i32 %.05082, %.265
  br i1 %i.cz, label %.lr.ph76.preheader, label %.loopexit60

.lr.ph76.preheader:                               ; preds = %.critedge
  %wide.trip.count142 = zext i32 %.265 to i64
  br label %.lr.ph76

.lr.ph76:                                         ; preds = %.lr.ph76.preheader, %.lr.ph76
  %indvars.iv139 = phi i64 [ %i.bk, %.lr.ph76.preheader ], [ %indvars.iv.next140, %.lr.ph76 ] ; 2 uses
  %i.da = phi float [ %.promoted71105, %.lr.ph76.preheader ], [ %i.dp, %.lr.ph76 ] ; 2 uses
  %i.db = phi float [ %.promoted7099, %.lr.ph76.preheader ], [ %i.dn, %.lr.ph76 ] ; 2 uses
  %i.dc = phi float [ %.promoted6993, %.lr.ph76.preheader ], [ %i.dl, %.lr.ph76 ] ; 2 uses
  %i.dd = phi float [ %.promoted88, %.lr.ph76.preheader ], [ %i.dh, %.lr.ph76 ] ; 2 uses
  %i.de = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %indvars.iv139 ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !94 ; 4 uses
  %i.dg = fcmp ole float %i.dd, %i.df
  %i.dh = select i1 %i.dg, float %i.dd, float %i.df ; 3 uses
  store float %i.dh, ptr %i.bf, align 4, !tbaa !2760
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dj = load float, ptr %i.di, align 4, !tbaa !94 ; 4 uses
  %i.dk = fcmp ole float %i.dc, %i.dj
  %i.dl = select i1 %i.dk, float %i.dc, float %i.dj ; 3 uses
  store float %i.dl, ptr %i.bg, align 8, !tbaa !2761
  %i.dm = fcmp oge float %i.db, %i.df
  %i.dn = select i1 %i.dm, float %i.db, float %i.df ; 3 uses
  store float %i.dn, ptr %i.bh, align 4, !tbaa !2762
  %i.do = fcmp oge float %i.da, %i.dj
  %i.dp = select i1 %i.do, float %i.da, float %i.dj ; 3 uses
  store float %i.dp, ptr %i.bi, align 8, !tbaa !2763
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count142
  br i1 %exitcond143.not, label %.loopexit60, label %.lr.ph76, !llvm.loop !2766

.loopexit60.loopexit151.split.loop.exit:          ; preds = %.lr.ph
  %i.dq = trunc nuw i64 %indvars.iv to i32
  br label %.loopexit60

.loopexit60:                                      ; preds = %bb.j, %.lr.ph76, %.loopexit60.loopexit151.split.loop.exit, %.preheader62, %.critedge
  %.promoted71102 = phi float [ %i.dp, %.lr.ph76 ], [ %.promoted71105, %.critedge ], [ %.promoted71106, %.preheader62 ], [ %i.cf, %.loopexit60.loopexit151.split.loop.exit ], [ %i.cf, %bb.j ]
  %.promoted7096 = phi float [ %i.dn, %.lr.ph76 ], [ %.promoted7099, %.critedge ], [ %.promoted70100, %.preheader62 ], [ %i.cd, %.loopexit60.loopexit151.split.loop.exit ], [ %i.cd, %bb.j ]
  %.promoted6990 = phi float [ %i.dl, %.lr.ph76 ], [ %.promoted6993, %.critedge ], [ %.promoted6994, %.preheader62 ], [ %i.cb, %.loopexit60.loopexit151.split.loop.exit ], [ %i.cb, %bb.j ]
  %.promoted85 = phi float [ %i.dh, %.lr.ph76 ], [ %.promoted88, %.critedge ], [ %.promoted89, %.preheader62 ], [ %i.bx, %.loopexit60.loopexit151.split.loop.exit ], [ %i.bx, %bb.j ]
  %.4 = phi i32 [ %.265, %.lr.ph76 ], [ %.05082, %.critedge ], [ %.05082, %.preheader62 ], [ %i.dq, %.loopexit60.loopexit151.split.loop.exit ], [ %i.bc, %bb.j ]
  %i.dr = add i32 %.4, 1                          ; 2 uses
  %i.ds = icmp ult i32 %i.dr, %i.bc
  br i1 %i.ds, label %bb.i, label %._crit_edge, !llvm.loop !2767

bb.m:                                             ; preds = %._crit_edge, %bb.g
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !317 ; 5 uses
  %.not56 = icmp eq ptr %i.du, null
  br i1 %.not56, label %.loopexit, label %.preheader
end_hunk_18
begin_hunk_19_@_ZN2OT18glyf_accelerator_t19points_aggregator_t10points_endEv:bb.a
  %i.z = fadd <2 x float> %i.y, splat (float 5.000000e-01)
  %i.aa = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.z)
  %i.ab = fptosi <2 x float> %i.aa to <2 x i32>   ; 2 uses
  %i.ac = shufflevector <2 x i32> %i.w, <2 x i32> %i.ab, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.ac, ptr %i.d, align 4, !tbaa !139
  br i1 %i.r, label %bb.d, label %_ZN2OT18glyf_accelerator_t19points_aggregator_t16contour_bounds_t11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ae = trunc <2 x i32> %i.w to <2 x i16>
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ag = load <2 x float>, ptr %i.af, align 8, !tbaa !94 ; 2 uses
  %i.ah = sitofp <2 x i16> %i.ae to <2 x float>
  %i.ai = fmul <2 x float> %i.ag, %i.ah
  %i.aj = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ai)
  %i.ak = fptosi <2 x float> %i.aj to <2 x i32>   ; 2 uses
  store <2 x i32> %i.ak, ptr %i.d, align 4, !tbaa !139
  %i.al = add nsw <2 x i32> %i.ab, %i.w
  %i.am = trunc <2 x i32> %i.al to <2 x i16>
  %i.an = sitofp <2 x i16> %i.am to <2 x float>
  %i.ao = fmul <2 x float> %i.ag, %i.an
  %i.ap = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ao)
  %i.aq = sitofp <2 x i32> %i.ak to <2 x float>
  %i.ar = fsub <2 x float> %i.ap, %i.aq
  %i.as = fptosi <2 x float> %i.ar to <2 x i32>
  store <2 x i32> %i.as, ptr %i.ad, align 4, !tbaa !139
  br label %_ZN2OT18glyf_accelerator_t19points_aggregator_t16contour_bounds_t11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit

_ZN2OT18glyf_accelerator_t19points_aggregator_t16contour_bounds_t11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit: ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17hb_glyf_scratch_tD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !149
  %i.c = add i32 %i.b, -1
  %spec.select.i.i.i = icmp ult i32 %i.c, -2
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.d, align 4, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !138
  tail call void @free(ptr noundef %i.f) #63
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load i32, ptr %i.g, align 8, !tbaa !149
  %i.i = add i32 %i.h, -1
  %spec.select.i.i.i1 = icmp ult i32 %i.i, -2
  br i1 %spec.select.i.i.i1, label %bb.c, label %_ZN11hb_vector_tIjLb0EED2Ev.exit2

bb.c:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 0, ptr %i.j, align 4, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !138
  tail call void @free(ptr noundef %i.l) #63
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit2

_ZN11hb_vector_tIjLb0EED2Ev.exit2:                ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load i32, ptr %i.m, align 8, !tbaa !2590
  %i.o = add i32 %i.n, -1
  %spec.select.i.i.i3 = icmp ult i32 %i.o, -2
  br i1 %spec.select.i.i.i3, label %bb.d, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit

bb.d:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.p, align 4, !tbaa !193
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !2564
  tail call void @free(ptr noundef %i.r) #63
  br label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit

_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit: ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit2, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = load i32, ptr %i.s, align 8, !tbaa !131
  %i.u = add i32 %i.t, -1
  %spec.select.i.i.i4 = icmp ult i32 %i.u, -2
  br i1 %spec.select.i.i.i4, label %bb.e, label %_ZN11hb_vector_tIiLb0EED2Ev.exit

bb.e:                                             ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.v, align 4, !tbaa !137
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !132
  tail call void @free(ptr noundef %i.x) #63
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit

_ZN11hb_vector_tIiLb0EED2Ev.exit:                 ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load i32, ptr %i.y, align 8, !tbaa !131
  %i.aa = add i32 %i.z, -1
  %spec.select.i.i.i5 = icmp ult i32 %i.aa, -2
  br i1 %spec.select.i.i.i5, label %bb.f, label %_ZN11hb_vector_tIiLb0EED2Ev.exit6

bb.f:                                             ; preds = %_ZN11hb_vector_tIiLb0EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.ab, align 4, !tbaa !137
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !132
  tail call void @free(ptr noundef %i.ad) #63
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit6

_ZN11hb_vector_tIiLb0EED2Ev.exit6:                ; preds = %_ZN11hb_vector_tIiLb0EED2Ev.exit, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !2590
  %i.ag = add i32 %i.af, -1
  %spec.select.i.i.i7 = icmp ult i32 %i.ag, -2
  br i1 %spec.select.i.i.i7, label %bb.g, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit8

bb.g:                                             ; preds = %_ZN11hb_vector_tIiLb0EED2Ev.exit6
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.ah, align 4, !tbaa !193
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2564
  tail call void @free(ptr noundef %i.aj) #63
  br label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit8

_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit8: ; preds = %_ZN11hb_vector_tIiLb0EED2Ev.exit6, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !2590
  %i.am = add i32 %i.al, -1
  %spec.select.i.i.i9 = icmp ult i32 %i.am, -2
  br i1 %spec.select.i.i.i9, label %bb.h, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit10

bb.h:                                             ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.an, align 4, !tbaa !193
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2564
  tail call void @free(ptr noundef %i.ap) #63
  br label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit10

_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit10: ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit8, %bb.h
  %i.aq = load i32, ptr %0, align 8, !tbaa !2590
  %i.ar = add i32 %i.aq, -1
  %spec.select.i.i.i11 = icmp ult i32 %i.ar, -2
  br i1 %spec.select.i.i.i11, label %bb.i, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit12

bb.i:                                             ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit10
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.as, align 4, !tbaa !193
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !2564
  tail call void @free(ptr noundef %i.au) #63
  br label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit12

_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit12: ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit10, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT9glyf_impl11GlyphHeader30get_extents_without_var_scaledINS_18glyf_accelerator_tEEEbP9hb_font_tRKT_jP18hb_glyph_extents_t(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.c = load i16, ptr %i.a, align 1, !tbaa !62   ; 2 uses
  %i.d = load i16, ptr %i.b, align 1, !tbaa !62   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2591 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !2593 ; 3 uses
  %i.h = icmp ult i32 %3, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.p = load i16, ptr %i.o, align 1, !tbaa !62
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.p)
  %i.r = sext i16 %i.q to i32
  br label %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t40get_leading_bearing_without_var_unscaledEjPi.exit

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !2597
  %.not.i8 = icmp ult i32 %3, %i.t
  br i1 %.not.i8, label %bb.d, label %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t40get_leading_bearing_without_var_unscaledEjPi.exit, !prof !49

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !51   ; 2 uses
  %.not.i.i.i.i8.i = icmp eq ptr %i.v, null
  %spec.select.i.i.i.i9.i = select i1 %.not.i.i.i.i8.i, ptr @_hb_NullPool, ptr %i.v
  %i.w = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i9.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !54
  %i.y = zext i32 %i.g to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = sub nuw i32 %3, %i.g
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !62
  %i.ae = tail call noundef i16 @llvm.bswap.i16(i16 %i.ad)
  %i.af = sext i16 %i.ae to i32
  br label %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t40get_leading_bearing_without_var_unscaledEjPi.exit

_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t40get_leading_bearing_without_var_unscaledEjPi.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sink.i = phi i32 [ %i.af, %bb.d ], [ %i.r, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %i.ag = tail call noundef i16 @llvm.bswap.i16(i16 %i.c) ; 2 uses
  %i.ah = tail call noundef i16 @llvm.bswap.i16(i16 %i.d) ; 2 uses
  %.not.i = icmp sgt i16 %i.ag, %i.ah
  %i.ai = select i1 %.not.i, i16 %i.d, i16 %i.c
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  store i32 %.sink.i, ptr %4, align 4, !tbaa !212
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.am = load i16, ptr %i.ak, align 1, !tbaa !62 ; 2 uses
  %i.an = tail call noundef i16 @llvm.bswap.i16(i16 %i.am) ; 2 uses
  %i.ao = load i16, ptr %i.al, align 1, !tbaa !62 ; 2 uses
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %i.ao) ; 2 uses
  %.not.i9 = icmp slt i16 %i.an, %i.ap
  %i.aq = select i1 %.not.i9, i16 %i.ao, i16 %i.am
  %i.ar = tail call noundef i16 @llvm.bswap.i16(i16 %i.aq) ; 2 uses
  %i.as = sext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.as, ptr %i.at, align 4, !tbaa !214
  %.not.i10 = icmp slt i16 %i.ag, %i.ah
  %i.au = select i1 %.not.i10, ptr %i.b, ptr %i.a
  %i.av = load i16, ptr %i.au, align 1, !tbaa !62
  %i.aw = tail call noundef i16 @llvm.bswap.i16(i16 %i.av)
  %i.ax = sext i16 %i.aw to i32
  %i.ay = sext i16 %i.aj to i32
  %i.az = sub nsw i32 %i.ax, %i.ay                ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !592
  %.not.i12 = icmp sgt i16 %i.an, %i.ap
  %.val = load i16, ptr %i.al, align 1
  %.val16 = load i16, ptr %i.ak, align 1
  %i.bb = select i1 %.not.i12, i16 %.val, i16 %.val16
  %i.bc = tail call noundef i16 @llvm.bswap.i16(i16 %i.bb)
  %i.bd = trunc nsw i32 %.sink.i to i16
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bf = add nsw i32 %i.az, %.sink.i
  %i.bg = trunc i32 %i.bf to i16
  %i.bh = load <2 x float>, ptr %i.be, align 8, !tbaa !94 ; 2 uses
  %i.bi = insertelement <2 x i16> poison, i16 %i.bd, i64 0
  %i.bj = insertelement <2 x i16> %i.bi, i16 %i.ar, i64 1
  %i.bk = sitofp <2 x i16> %i.bj to <2 x float>
  %i.bl = fmul <2 x float> %i.bh, %i.bk
  %i.bm = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.bl)
  %i.bn = fptosi <2 x float> %i.bm to <2 x i32>   ; 2 uses
  store <2 x i32> %i.bn, ptr %4, align 4, !tbaa !139
  %i.bo = insertelement <2 x i16> poison, i16 %i.bg, i64 0
  %i.bp = insertelement <2 x i16> %i.bo, i16 %i.bc, i64 1
  %i.bq = sitofp <2 x i16> %i.bp to <2 x float>
  %i.br = fmul <2 x float> %i.bh, %i.bq
  %i.bs = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.br)
  %i.bt = sitofp <2 x i32> %i.bn to <2 x float>
  %i.bu = fsub <2 x float> %i.bs, %i.bt
  %i.bv = fptosi <2 x float> %i.bu to <2 x i32>
  store <2 x i32> %i.bv, ptr %i.ba, align 4, !tbaa !139
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #42

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #42

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZL23_hb_grapheme_group_funcRK15hb_glyph_info_tS1_(ptr nofree nonnull readnone align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %1) #43 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i16, ptr %i.a, align 4, !tbaa !61
  %i.b = and i16 %.val, 128
  %i.c = icmp ne i16 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK3AAT9TrackData12get_trackingEPKvff(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !62
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a) ; 3 uses
  %i.c = zext i16 %i.b to i32                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 1, !tbaa !58
  %i.f = tail call noundef i32 @llvm.bswap.i32(i32 %i.e)
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i16, ptr %i.i, align 1, !tbaa !62
  %i.k = tail call noundef i16 @llvm.bswap.i16(i16 %i.j)
  %.sroa.2.8.insert.ext.i.i = zext i16 %i.k to i64 ; 4 uses
  switch i16 %i.b, label %.preheader [
    i16 0, label %bb.g
    i16 1, label %bb.b
  ]

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = tail call i32 @llvm.usub.sat.i32(i32 %i.c, i32 1) ; 3 uses
  %wide.trip.count = zext nneg i32 %i.m to i64
  %exitcond.not57 = icmp ult i16 %i.b, 2
  br i1 %exitcond.not57, label %.critedge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = tail call noundef float @_ZNK3AAT15TrackTableEntry9get_valueEfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE(ptr noundef nonnull align 1 dereferenceable(8) %i.n, float noundef %2, ptr noundef %1, ptr %i.h, i64 %.sroa.2.8.insert.ext.i.i)
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !2768

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %indvars.iv58 = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv58, 1 ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.q = load i32, ptr %i.p, align 1, !tbaa !58
  %i.r = tail call noundef i32 @llvm.bswap.i32(i32 %i.q)
  %i.s = sitofp i32 %i.r to float
  %i.t = fmul nnan float %i.s, f0x37800000
  %i.u = fcmp ugt float %i.t, %3
  br i1 %i.u, label %.critedge.split.loop.exit54, label %bb.c, !llvm.loop !2768

.critedge.split.loop.exit54:                      ; preds = %.lr.ph
  %i.v = trunc nuw nsw i64 %indvars.iv58 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.preheader, %.critedge.split.loop.exit54
  %.044.lcssa = phi i32 [ %i.v, %.critedge.split.loop.exit54 ], [ %i.m, %.preheader ], [ %i.m, %bb.c ] ; 2 uses
  %.04559 = add nsw i32 %i.c, -1                  ; 3 uses
  %.not4860 = icmp eq i32 %.04559, 0
  br i1 %.not4860, label %.critedge2, label %.lr.ph63

bb.d:                                             ; preds = %.lr.ph63
  %.045 = add i32 %.04562, -1                     ; 3 uses
  %.not48 = icmp eq i32 %.045, 0
  br i1 %.not48, label %.critedge2, label %.lr.ph63, !llvm.loop !2769

.lr.ph63:                                         ; preds = %.critedge, %bb.d
  %.04562 = phi i32 [ %.045, %bb.d ], [ %.04559, %.critedge ] ; 3 uses
  %.045.in61 = phi i32 [ %.04562, %bb.d ], [ %i.c, %.critedge ]
  %i.w = add i32 %.045.in61, -2
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.x
  %i.z = load i32, ptr %i.y, align 1, !tbaa !58
  %i.aa = tail call noundef i32 @llvm.bswap.i32(i32 %i.z)
  %i.ab = sitofp i32 %i.aa to float
  %i.ac = fmul nnan float %i.ab, f0x37800000
  %i.ad = fcmp ult float %i.ac, %3
  br i1 %i.ad, label %..critedge2_crit_edge64, label %bb.d, !llvm.loop !2769

..critedge2_crit_edge64:                          ; preds = %.lr.ph63
  br label %.critedge2, !llvm.loop !2769

.critedge2:                                       ; preds = %bb.d, %..critedge2_crit_edge64, %.critedge
  %.045.lcssa = phi i32 [ %.04559, %.critedge ], [ %.04562, %..critedge2_crit_edge64 ], [ %.045, %bb.d ] ; 2 uses
  %i.ae = icmp eq i32 %.044.lcssa, %.045.lcssa
  %i.af = zext i32 %.044.lcssa to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.af ; 3 uses
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge2
  %i.ah = tail call noundef float @_ZNK3AAT15TrackTableEntry9get_valueEfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE(ptr noundef nonnull align 1 dereferenceable(8) %i.ag, float noundef %2, ptr noundef %1, ptr %i.h, i64 %.sroa.2.8.insert.ext.i.i)
  br label %bb.g

bb.f:                                             ; preds = %.critedge2
  %i.ai = load i32, ptr %i.ag, align 1, !tbaa !58
  %i.aj = tail call noundef i32 @llvm.bswap.i32(i32 %i.ai)
  %i.ak = sitofp i32 %i.aj to float
  %i.al = fmul nnan float %i.ak, f0x37800000      ; 2 uses
  %i.am = zext i32 %.045.lcssa to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 1, !tbaa !58
  %i.ap = tail call noundef i32 @llvm.bswap.i32(i32 %i.ao)
  %i.aq = sitofp i32 %i.ap to float
  %i.ar = fmul nnan float %i.aq, f0x37800000
  %i.as = fsub float %3, %i.al
  %i.at = fsub float %i.ar, %i.al
  %i.au = fdiv float %i.as, %i.at
  %i.av = tail call noundef float @_ZNK3AAT15TrackTableEntry9get_valueEfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE(ptr noundef nonnull align 1 dereferenceable(8) %i.ag, float noundef %2, ptr noundef %1, ptr %i.h, i64 %.sroa.2.8.insert.ext.i.i) ; 2 uses
  %i.aw = tail call noundef float @_ZNK3AAT15TrackTableEntry9get_valueEfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE(ptr noundef nonnull align 1 dereferenceable(8) %i.an, float noundef %2, ptr noundef %1, ptr %i.h, i64 %.sroa.2.8.insert.ext.i.i)
  %i.ax = fsub float %i.aw, %i.av
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.au, float %i.ax, float %i.av)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a, %bb.b
  %.1 = phi float [ %i.o, %bb.b ], [ 0.000000e+00, %bb.a ], [ %i.ah, %bb.e ], [ %i.ay, %bb.f ]
  ret float %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK3AAT15TrackTableEntry9get_valueEfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE(ptr noundef nonnull align 1 dereferenceable(8) %0, float noundef %1, ptr noundef %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.4.8.extract.trunc = trunc i64 %4 to i32  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
end_hunk_19
begin_hunk_20_@_ZNK2OT14PaintComposite11paint_glyphEPNS_18hb_paint_context_tE:bb.a
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1270 ; 2 uses
  %.not.i17 = icmp eq ptr %i.cm, null
  br i1 %.not.i17, label %_ZN16hb_paint_funcs_t9pop_groupEPv25hb_paint_composite_mode_t.exit18, label %bb.g

bb.g:                                             ; preds = %_ZN16hb_paint_funcs_t9pop_groupEPv25hb_paint_composite_mode_t.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 120
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !2427
  br label %_ZN16hb_paint_funcs_t9pop_groupEPv25hb_paint_composite_mode_t.exit18

_ZN16hb_paint_funcs_t9pop_groupEPv25hb_paint_composite_mode_t.exit18: ; preds = %_ZN16hb_paint_funcs_t9pop_groupEPv25hb_paint_composite_mode_t.exit, %bb.g
  %i.cp = phi ptr [ %i.co, %bb.g ], [ null, %_ZN16hb_paint_funcs_t9pop_groupEPv25hb_paint_composite_mode_t.exit ]
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(176) %i.ch, ptr noundef %i.ci, i32 noundef 3, ptr noundef %i.cp) #63, !inline_history !2455
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT4CBDT13accelerator_t11get_extentsEP9hb_font_tjP18hb_glyph_extents_tb(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr @_hb_NullPool, ptr %i.a ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !57
  %i.f = icmp ult i32 %i.e, 8
  %spec.select.i.i1.i.i = select i1 %i.f, ptr @_hb_NullPool, ptr %i.c ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 4 ; 5 uses
  %i.h = load i32, ptr %i.g, align 1, !tbaa !58   ; 2 uses
  %i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.h) ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit, label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit.i, !prof !48

_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.l = load i32, ptr %i.j, align 4, !tbaa !139
  %i.m = load i32, ptr %i.k, align 4, !tbaa !139
  %i.n = tail call i32 @llvm.umax.i32(i32 %i.l, i32 %i.m) ; 2 uses
  %.not26.i = icmp eq i32 %i.n, 0
  %spec.store.select.i = select i1 %.not26.i, i32 1073741824, i32 %i.n ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.o = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 52
  %i.p = load i32, ptr %i.g, align 1, !tbaa !58
  %.not.i30.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i30.not.i, label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i, label %bb.b, !prof !48

bb.b:                                             ; preds = %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.q = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 8
  br label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i

_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i: ; preds = %bb.b, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit.i
  %.0.i31.i = phi ptr [ %i.q, %bb.b ], [ @_hb_NullPool, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit.i ]
  %i.r = icmp ugt i32 %i.i, 1
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i
  %i.s = load i8, ptr %i.o, align 1, !tbaa !92
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i31.i, i64 45
  %i.u = load i8, ptr %i.t, align 1, !tbaa !92
  %i.v = tail call i8 @llvm.umax.i8(i8 %i.s, i8 %i.u)
  %i.w = zext i8 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 8
  %wide.trip.count.i = zext i32 %i.i to i64
  br label %bb.d

._crit_edge.i:                                    ; preds = %bb.h, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i
  %.022.lcssa.i = phi i32 [ 0, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i ], [ %.123.i, %bb.h ] ; 2 uses
  %i.y = load i32, ptr %i.g, align 1, !tbaa !58
  %i.z = tail call noundef i32 @llvm.bswap.i32(i32 %i.y)
  %.not.i34.i = icmp ult i32 %.022.lcssa.i, %i.z
  br i1 %.not.i34.i, label %bb.c, label %_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit, !prof !49

bb.c:                                             ; preds = %._crit_edge.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 8
  %i.ab = zext i32 %.022.lcssa.i to i64
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %i.ab
  br label %_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 5 uses
  %.02148.i = phi i32 [ %i.w, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 4 uses
  %.02247.i = phi i32 [ 0, %.lr.ph.i ], [ %.123.i, %bb.h ]
  %i.ad = load i32, ptr %i.g, align 1, !tbaa !58
  %i.ae = tail call noundef i32 @llvm.bswap.i32(i32 %i.ad)
  %i.af = zext i32 %i.ae to i64
  %.not.i37.i = icmp samesign ult i64 %indvars.iv.i, %i.af
  br i1 %.not.i37.i, label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i, label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i, !prof !49

_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %indvars.iv.i ; 2 uses
  %.pre.i = load i32, ptr %i.g, align 1, !tbaa !58
  %.pre51.i = tail call noundef i32 @llvm.bswap.i32(i32 %.pre.i)
  %.pre52.i = zext i32 %.pre51.i to i64
  %i.ah = icmp samesign ult i64 %indvars.iv.i, %.pre52.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 44 ; 2 uses
  br i1 %i.ah, label %bb.e, label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i, !prof !669

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  br label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i

_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i: ; preds = %bb.e, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i, %bb.d
  %i.aj = phi ptr [ %i.ai, %bb.e ], [ %i.ai, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i ], [ getelementptr inbounds nuw (i8, ptr @_hb_NullPool, i64 44), %bb.d ]
  %.0.i41.i = phi ptr [ %i.ag, %bb.e ], [ @_hb_NullPool, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i ], [ @_hb_NullPool, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i41.i, i64 45
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !92
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !92
  %i.an = tail call i8 @llvm.umax.i8(i8 %i.al, i8 %i.am)
  %i.ao = zext i8 %i.an to i32                    ; 4 uses
  %.not27.i = icmp ule i32 %spec.store.select.i, %i.ao
  %i.ap = icmp samesign ugt i32 %.02148.i, %i.ao
  %or.cond.i = select i1 %.not27.i, i1 %i.ap, i1 false
  br i1 %or.cond.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i
  %i.aq = icmp ugt i32 %spec.store.select.i, %.02148.i
  %i.ar = icmp samesign ult i32 %.02148.i, %i.ao
  %or.cond28.i = and i1 %i.aq, %i.ar
  br i1 %or.cond28.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i
  %i.as = trunc nuw i64 %indvars.iv.i to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.123.i = phi i32 [ %i.as, %bb.g ], [ %.02247.i, %bb.f ] ; 2 uses
  %.1.i = phi i32 [ %i.ao, %bb.g ], [ %.02148.i, %bb.f ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !1597

_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit:     ; preds = %bb.a, %._crit_edge.i, %bb.c
  %.024.i = phi ptr [ @_hb_NullPool, %bb.a ], [ %i.ac, %bb.c ], [ @_hb_NullPool, %._crit_edge.i ] ; 4 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %.not.i.i.i.i42 = icmp eq ptr %i.at, null
  %spec.select.i.i.i.i43 = select i1 %.not.i.i.i.i42, ptr @_hb_NullPool, ptr %i.at ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i43, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !54
  %i.aw = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i43, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !57
  %i.ay = icmp ult i32 %i.ax, 8
  %spec.select.i.i1.i.i44 = select i1 %i.ay, ptr @_hb_NullPool, ptr %i.av
  %i.az = load i32, ptr %.024.i, align 1, !tbaa !58
  %i.ba = tail call noundef i32 @llvm.bswap.i32(i32 %i.az)
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i44, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.024.i, i64 8
  %i.be = load i32, ptr %i.bd, align 1, !tbaa !58 ; 2 uses
  %.not27.i.i = icmp eq i32 %i.be, 0
  br i1 %.not27.i.i, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit
  %i.bf = tail call noundef i32 @llvm.bswap.i32(i32 %i.be)
  %wide.trip.count.i.i = zext i32 %i.bf to i64
  br label %.lr.ph.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit, label %.lr.ph.i.i, !llvm.loop !1598

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i.i ; 3 uses
  %i.bh = load i16, ptr %i.bg, align 1, !tbaa !62
  %i.bi = tail call noundef i16 @llvm.bswap.i16(i16 %i.bh)
  %i.bj = zext i16 %i.bi to i32                   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bl = load i16, ptr %i.bk, align 1, !tbaa !62
  %i.bm = tail call noundef i16 @llvm.bswap.i16(i16 %i.bl)
  %i.bn = zext i16 %i.bm to i32
  %.not.i.i = icmp ult i32 %2, %i.bj
  %.not17.i.i = icmp ugt i32 %2, %i.bn
  %or.cond.i.i = or i1 %.not.i.i, %.not17.i.i
  br i1 %or.cond.i.i, label %bb.i, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit

_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit: ; preds = %.lr.ph.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.024.i, i64 44 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !92
  %.not40 = icmp eq i8 %i.bp, 0
  br i1 %.not40, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %.024.i, i64 45
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !92
  %.not41 = icmp eq i8 %i.br, 0
  br i1 %.not41, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bt = load i32, ptr %i.bs, align 1, !tbaa !58 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = tail call i32 @llvm.bswap.i32(i32 %i.bt)
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bw
  %.0.i.i.i = select i1 %i.bu, ptr @_hb_NullPool, ptr %i.bx, !prof !48 ; 6 uses
  %i.by = sub nuw nsw i32 %2, %i.bj               ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.ca = load i16, ptr %i.bz, align 1, !tbaa !62
  %i.cb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ca)
  %i.cc = load i16, ptr %.0.i.i.i, align 1, !tbaa !62
  %i.cd = tail call noundef i16 @llvm.bswap.i16(i16 %i.cc)
  switch i16 %i.cd, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit [
    i16 1, label %bb.l
    i16 3, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.cf = zext nneg i32 %i.by to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cf ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %6 = load i32, ptr %5, align 1, !tbaa !58
  %7 = tail call noundef i32 @llvm.bswap.i32(i32 %6) ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 1, !tbaa !58
  %i.ci = tail call noundef i32 @llvm.bswap.i32(i32 %i.ch) ; 3 uses
  %.not.i.i.i = icmp ugt i32 %7, %i.ci
  br i1 %.not.i.i.i, label %bb.m, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit, !prof !49

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.ck = load i32, ptr %i.cj, align 1, !tbaa !58
  %i.cl = tail call noundef i32 @llvm.bswap.i32(i32 %i.ck)
  %i.cm = add i32 %i.cl, %i.ci
  %i.cn = sub nuw i32 %7, %i.ci
  br label %_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit

bb.n:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.cp = zext nneg i32 %i.by to i64
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.cp ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  %9 = load i16, ptr %8, align 1, !tbaa !62
  %10 = tail call noundef i16 @llvm.bswap.i16(i16 %9) ; 2 uses
  %i.cr = load i16, ptr %i.cq, align 1, !tbaa !62
  %i.cs = tail call noundef i16 @llvm.bswap.i16(i16 %i.cr) ; 3 uses
  %.not.i8.i.i = icmp ugt i16 %10, %i.cs
  br i1 %.not.i8.i.i, label %bb.o, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit, !prof !49

bb.o:                                             ; preds = %bb.n
  %i.ct = zext i16 %i.cs to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.cv = load i32, ptr %i.cu, align 1, !tbaa !58
  %i.cw = tail call noundef i32 @llvm.bswap.i32(i32 %i.cv)
  %i.cx = add i32 %i.cw, %i.ct
  %narrow.i.i.i = sub nuw i16 %10, %i.cs
  %i.cy = zext i16 %narrow.i.i.i to i32
  br label %_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit

_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit: ; preds = %bb.o, %bb.m
  %.162 = phi i32 [ %i.cx, %bb.o ], [ %i.cm, %bb.m ] ; 4 uses
  %.060 = phi i32 [ %i.cy, %bb.o ], [ %i.cn, %bb.m ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !51 ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.da, null
  %spec.select.i.i = select i1 %.not.i.i45, ptr @_hb_NullPool, ptr %i.da ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 24
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !57 ; 2 uses
  %i.dd = icmp ugt i32 %.162, %i.dc
  %i.de = sub nuw i32 %i.dc, %.162
  %i.df = icmp ult i32 %i.de, %.060
  %i.dg = select i1 %i.dd, i1 true, i1 %i.df, !prof !48
  br i1 %i.dg, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit, label %bb.p, !prof !48

bb.p:                                             ; preds = %_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit
  switch i16 %i.cb, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit [
    i16 17, label %bb.q
    i16 18, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  %i.dh = icmp ult i32 %.060, 9
  br i1 %i.dh, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit, label %bb.r, !prof !48

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !54
  %i.dk = zext i32 %.162 to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dk ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %i.dn = load <2 x i8>, ptr %i.dm, align 1, !tbaa !89 ; 4 uses
  %i.do = sext <2 x i8> %i.dn to <2 x i32>
  store <2 x i32> %i.do, ptr %3, align 4, !tbaa !139
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !92
  %i.dr = zext i8 %i.dq to i32                    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !592
  %i.dt = load i8, ptr %i.dl, align 1, !tbaa !92
  %i.du = zext i8 %i.dt to i32                    ; 2 uses
  %i.dv = sub nsw i32 0, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !593
  br i1 %4, label %bb.s, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit

bb.s:                                             ; preds = %bb.r
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dy = sitofp <2 x i8> %i.dn to <2 x float>
  %i.dz = load <2 x float>, ptr %i.dx, align 8, !tbaa !94 ; 3 uses
  %i.ea = fmul <2 x float> %i.dz, %i.dy
  %i.eb = extractelement <2 x i8> %i.dn, i64 0
  %i.ec = sext i8 %i.eb to i32
  %i.ed = add nsw i32 %i.dr, %i.ec
  %i.ee = trunc nsw i32 %i.ed to i16
  %i.ef = sitofp i16 %i.ee to float
  %i.eg = extractelement <2 x float> %i.dz, i64 0
  %i.eh = fmul float %i.eg, %i.ef
  %i.ei = extractelement <2 x i8> %i.dn, i64 1
  %i.ej = sext i8 %i.ei to i32
  %i.ek = sub nsw i32 %i.ej, %i.du
  %i.el = extractelement <2 x float> %i.dz, i64 1
  br label %bb.w

bb.t:                                             ; preds = %bb.p
  %i.em = icmp ult i32 %.060, 12
  br i1 %i.em, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit, label %bb.u, !prof !48

bb.u:                                             ; preds = %bb.t
  %i.en = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !54
  %i.ep = zext i32 %.162 to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ep ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  %i.es = load <2 x i8>, ptr %i.er, align 1, !tbaa !89 ; 4 uses
  %i.et = sext <2 x i8> %i.es to <2 x i32>
  store <2 x i32> %i.et, ptr %3, align 4, !tbaa !139
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !92
  %i.ew = zext i8 %i.ev to i32                    ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !592
  %i.ey = load i8, ptr %i.eq, align 1, !tbaa !92
  %i.ez = zext i8 %i.ey to i32                    ; 2 uses
  %i.fa = sub nsw i32 0, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !593
  br i1 %4, label %bb.v, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit

bb.v:                                             ; preds = %bb.u
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fd = sitofp <2 x i8> %i.es to <2 x float>
  %i.fe = load <2 x float>, ptr %i.fc, align 8, !tbaa !94 ; 3 uses
  %i.ff = fmul <2 x float> %i.fe, %i.fd
  %i.fg = extractelement <2 x i8> %i.es, i64 0
  %i.fh = sext i8 %i.fg to i32
  %i.fi = add nsw i32 %i.ew, %i.fh
  %i.fj = trunc nsw i32 %i.fi to i16
  %i.fk = sitofp i16 %i.fj to float
  %i.fl = extractelement <2 x float> %i.fe, i64 0
  %i.fm = fmul float %i.fl, %i.fk
  %i.fn = extractelement <2 x i8> %i.es, i64 1
  %i.fo = sext i8 %i.fn to i32
  %i.fp = sub nsw i32 %i.fo, %i.ez
  %i.fq = extractelement <2 x float> %i.fe, i64 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.sink96 = phi i32 [ %i.fp, %bb.v ], [ %i.ek, %bb.s ]
  %.sink93 = phi float [ %i.fq, %bb.v ], [ %i.el, %bb.s ]
  %.sink89 = phi float [ %i.fm, %bb.v ], [ %i.eh, %bb.s ]
  %i.fr = phi <2 x float> [ %i.ff, %bb.v ], [ %i.ea, %bb.s ]
  %i.fs = trunc nsw i32 %.sink96 to i16
  %i.ft = sitofp i16 %i.fs to float
  %i.fu = fmul float %.sink93, %i.ft
  %i.fv = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.fr)
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !3183
  %i.fy = uitofp i32 %i.fx to float
  %i.fz = load <2 x i8>, ptr %i.bo, align 1, !tbaa !92
  %i.ga = uitofp <2 x i8> %i.fz to <2 x float>
  %i.gb = insertelement <2 x float> poison, float %i.fy, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <4 x i32> zeroinitializer
  %i.gd = shufflevector <2 x float> %i.ga, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ge = fdiv <4 x float> %i.gc, %i.gd
  %i.gf = fptosi <2 x float> %i.fv to <2 x i32>
  %i.gg = tail call float @llvm.ceil.f32(float %i.fu)
  %i.gh = tail call float @llvm.ceil.f32(float %.sink89)
  %i.gi = sitofp <2 x i32> %i.gf to <2 x float>   ; 2 uses
  %i.gj = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.gk = insertelement <2 x float> %i.gj, float %i.gg, i64 1
  %i.gl = fsub <2 x float> %i.gk, %i.gi
  %i.gm = shufflevector <2 x float> %i.gi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gn = shufflevector <2 x float> %i.gl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.go = fptosi <4 x float> %i.gn to <4 x i32>
  %i.gp = sitofp <4 x i32> %i.go to <4 x float>
  %i.gq = shufflevector <4 x float> %i.gm, <4 x float> %i.gp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gr = fmul <4 x float> %i.ge, %i.gq
  %i.gs = fadd <4 x float> %i.gr, splat (float 5.000000e-01)
  %i.gt = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.gs)
  %i.gu = fptosi <4 x float> %i.gt to <4 x i32>
  store <4 x i32> %i.gu, ptr %3, align 4, !tbaa !139
  br label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit

_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit: ; preds = %bb.i, %bb.l, %bb.k, %bb.n, %_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit, %bb.w, %bb.p, %bb.t, %bb.q, %_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit, %bb.u, %bb.r, %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit, %bb.j
  %.2 = phi i1 [ true, %bb.r ], [ false, %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit ], [ false, %bb.j ], [ false, %bb.l ], [ false, %bb.q ], [ false, %bb.t ], [ false, %_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit ], [ false, %bb.p ], [ true, %bb.w ], [ true, %bb.u ], [ false, %_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit ], [ false, %bb.n ], [ false, %bb.k ], [ false, %bb.i ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT4sbix13accelerator_t15get_png_extentsEP9hb_font_tjP18hb_glyph_extents_tb(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.d ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !57
  %i.i = icmp ult i32 %i.h, 8
  %spec.select.i.i1.i.i.i = select i1 %i.i, ptr @_hb_NullPool, ptr %i.f
  %i.j = load i16, ptr %spec.select.i.i1.i.i.i, align 1, !tbaa !62
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  store i32 0, ptr %i.a, align 4, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  store i32 0, ptr %i.b, align 4, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #63
  store i32 0, ptr %i.c, align 4, !tbaa !139
  %i.k = tail call noundef nonnull align 1 dereferenceable(8) ptr @_ZNK2OT4sbix13accelerator_t13choose_strikeEP9hb_font_t(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1)
  %i.l = load ptr, ptr %0, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !1594
  %i.o = call noundef ptr @_ZNK2OT10SBIXStrike14get_glyph_blobEjP9hb_blob_tjPiS3_jPj(ptr noundef nonnull align 1 dereferenceable(8) %i.k, i32 noundef %2, ptr noundef %i.l, i32 noundef 1886283552, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.n, ptr noundef nonnull %i.c) ; 18 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !57
  %i.t = icmp ult i32 %i.s, 29
  %spec.select.i.i = select i1 %i.t, ptr @_hb_NullPool, ptr %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 20
  %i.v = load i32, ptr %i.u, align 1, !tbaa !58
  %i.w = call noundef i32 @llvm.bswap.i32(i32 %i.v) ; 3 uses
  %i.x = icmp ugt i32 %i.w, 65535
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 16
  %i.z = load i32, ptr %i.y, align 1, !tbaa !58
  %i.aa = call noundef i32 @llvm.bswap.i32(i32 %i.z) ; 3 uses
  %i.ab = icmp ugt i32 %i.aa, 65535
end_hunk_20
begin_hunk_21_@_ZNK2OT4cff113accelerator_t14get_glyph_nameEjPcj:bb.a
  %or.cond.not32 = select i1 %.not, i1 true, i1 %i.e, !prof !252
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp ne i32 %i.g, -1
  %or.cond30 = select i1 %or.cond.not32, i1 true, i1 %i.h, !prof !3187
  br i1 %or.cond30, label %bb.n, label %bb.b, !prof !3187

bb.b:                                             ; preds = %bb.a
  %.not19 = icmp eq i32 %3, 0
  br i1 %.not19, label %bb.n, label %bb.c, !prof !48

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2954 ; 2 uses
  %.not.i = icmp eq ptr %i.j, @_hb_NullPool
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef i32 @_ZNK3CFF7Charset7get_sidEjjPNS_11code_pair_tE(ptr noundef nonnull align 1 dereferenceable(5) %i.j, i32 noundef %1, i32 noundef %i.b, ptr noundef null)
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.m = load i32, ptr %i.l, align 4, !tbaa !2955
  switch i32 %i.m, label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit.thread [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = icmp ult i32 %1, 229
  %spec.select = select i1 %i.n, i32 %1, i32 0
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.o = icmp ult i32 %1, 166
  br i1 %i.o, label %bb.h, label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.p = zext nneg i32 %1 to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr @_ZL21expert_charset_to_sid, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !620
  %i.s = zext i16 %i.r to i32
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit

bb.i:                                             ; preds = %bb.e
  %i.t = icmp ult i32 %1, 87
  br i1 %i.t, label %bb.j, label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.u = zext nneg i32 %1 to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr @_ZL28expert_subset_charset_to_sid, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !620
  %i.x = zext i16 %i.w to i32
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit

_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit: ; preds = %bb.d, %bb.h, %bb.j
  %.08.i = phi i32 [ %i.k, %bb.d ], [ %i.x, %bb.j ], [ %i.s, %bb.h ] ; 3 uses
  %i.y = icmp ult i32 %.08.i, 391
  br i1 %i.y, label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit.thread, label %bb.k

_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit.thread: ; preds = %bb.f, %bb.i, %bb.g, %bb.e, %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit
  %.08.i25 = phi i32 [ %.08.i, %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit ], [ 0, %bb.e ], [ 0, %bb.i ], [ %spec.select, %bb.f ], [ 0, %bb.g ]
  %i.z = zext nneg i32 %.08.i25 to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @_ZL23cff1_std_strings_msgidx, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !139 ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZL23cff1_std_strings_msgstr, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !139
  %i.ag = xor i32 %i.ab, -1
  %i.ah = add i32 %i.af, %i.ag
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.ad, 0
  %.sroa.2.8.insert.ext.i = zext i32 %i.ah to i64
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.2.8.insert.ext.i, 1
  br label %bb.l

bb.k:                                             ; preds = %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !3188
  %i.ak = add i32 %.08.i, -391
  %i.al = tail call { ptr, i64 } @_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEEixEj(ptr noundef nonnull align 1 dereferenceable(4) %i.aj, i32 noundef %i.ak)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit.thread
  %.pn = phi { ptr, i64 } [ %i.al, %bb.k ], [ %.fca.1.insert.i, %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit.thread ] ; 2 uses
  %storemerge.in = extractvalue { ptr, i64 } %.pn, 1
  %storemerge = and i64 %storemerge.in, 4294967295 ; 2 uses
  %.not21.not = icmp eq i64 %storemerge, 0
  br i1 %.not21.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.015 = extractvalue { ptr, i64 } %.pn, 0
  %i.am = add i32 %3, -1
  %i.an = zext i32 %i.am to i64
  %..i = tail call noundef range(i64 0, 4294967296) i64 @llvm.umin.i64(i64 %storemerge, i64 %i.an) ; 2 uses
  %i.ao = tail call ptr @strncpy(ptr noundef %2, ptr noundef %.015, i64 noundef %..i) #63 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %..i
  store i8 0, ptr %i.ap, align 1, !tbaa !61
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ true, %bb.m ], [ false, %bb.l ]
  ret i1 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #50

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK3CFF7Charset7get_sidEjjPNS_11code_pair_tE(ptr noundef nonnull align 1 dereferenceable(5) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !92
  switch i8 %i.a, label %_ZNK3CFF8Charset07get_sidEjj.exit [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %.not.i = icmp uge i32 %1, %2
  %i.b = icmp eq i32 %1, 0
  %or.cond.i = or i1 %i.b, %.not.i
  br i1 %or.cond.i, label %_ZNK3CFF8Charset07get_sidEjj.exit, label %bb.c, !prof !252

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.e
  %i.g = load i16, ptr %i.f, align 1, !tbaa !62
  %i.h = tail call noundef i16 @llvm.bswap.i16(i16 %i.g)
  %i.i = zext i16 %i.h to i32
  br label %_ZNK3CFF8Charset07get_sidEjj.exit

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not.i9 = icmp ult i32 %1, %2
  br i1 %.not.i9, label %bb.e, label %_ZNK3CFF8Charset07get_sidEjj.exit, !prof !49

bb.e:                                             ; preds = %bb.d
  %.not40.i = icmp eq ptr %3, null                ; 2 uses
  br i1 %.not40.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3189 ; 2 uses
  %.not41.i = icmp ugt i32 %i.l, %1
  br i1 %.not41.i, label %bb.h, label %bb.g, !prof !48

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %3, align 4, !tbaa !3191
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.n = icmp eq i32 %1, 0
  br i1 %i.n, label %_ZNK3CFF8Charset07get_sidEjj.exit, label %bb.i, !prof !48

bb.i:                                             ; preds = %bb.h, %bb.g
  %.033.i = phi i32 [ %i.m, %bb.g ], [ 0, %bb.h ] ; 3 uses
  %.030.i = phi i32 [ %i.l, %bb.g ], [ 1, %bb.h ] ; 3 uses
  %i.o = sub i32 %1, %.030.i                      ; 3 uses
  %i.p = zext i32 %.033.i to i64
  %i.q = getelementptr inbounds nuw [3 x i8], ptr %i.j, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !92
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %.not4249.i = icmp ugt i32 %i.o, %i.t
  br i1 %.not4249.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.i
  %.134.lcssa.i = phi i32 [ %.033.i, %bb.i ], [ %i.ac, %.lr.ph.i ]
  %.131.lcssa.i = phi i32 [ %.030.i, %bb.i ], [ %i.aa, %.lr.ph.i ]
  %.027.lcssa.i = phi i32 [ %i.o, %bb.i ], [ %i.ab, %.lr.ph.i ]
  %.lcssa.i = phi ptr [ %i.q, %bb.i ], [ %i.ae, %.lr.ph.i ]
  br i1 %.not40.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  store i32 %.134.lcssa.i, ptr %3, align 4, !tbaa !139
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.131.lcssa.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !139
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %i.u = load i16, ptr %.lcssa.i, align 1, !tbaa !62
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u)
  %i.w = zext i16 %i.v to i32
  %i.x = add nuw nsw i32 %.027.lcssa.i, %i.w
  br label %_ZNK3CFF8Charset07get_sidEjj.exit

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %i.y = phi i32 [ %i.ah, %.lr.ph.i ], [ %i.t, %bb.i ]
  %.02752.i = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.o, %bb.i ]
  %.13151.i = phi i32 [ %i.aa, %.lr.ph.i ], [ %.030.i, %bb.i ]
  %.13450.i = phi i32 [ %i.ac, %.lr.ph.i ], [ %.033.i, %bb.i ]
  %i.z = add nuw nsw i32 %i.y, 1                  ; 2 uses
  %i.aa = add i32 %.13151.i, %i.z                 ; 2 uses
  %i.ab = sub nuw i32 %.02752.i, %i.z             ; 3 uses
  %i.ac = add i32 %.13450.i, 1                    ; 3 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [3 x i8], ptr %i.j, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !92
  %i.ah = zext i8 %i.ag to i32                    ; 2 uses
  %.not42.i = icmp ugt i32 %i.ab, %i.ah
  br i1 %.not42.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3192

bb.l:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not.i10 = icmp ult i32 %1, %2
  br i1 %.not.i10, label %bb.m, label %_ZNK3CFF8Charset07get_sidEjj.exit, !prof !49

bb.m:                                             ; preds = %bb.l
  %.not40.i12 = icmp eq ptr %3, null              ; 2 uses
  br i1 %.not40.i12, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3189 ; 2 uses
  %.not41.i13 = icmp ugt i32 %i.ak, %1
  br i1 %.not41.i13, label %bb.p, label %bb.o, !prof !48

bb.o:                                             ; preds = %bb.n
  %i.al = load i32, ptr %3, align 4, !tbaa !3191
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.am = icmp eq i32 %1, 0
  br i1 %i.am, label %_ZNK3CFF8Charset07get_sidEjj.exit, label %bb.q, !prof !48

bb.q:                                             ; preds = %bb.p, %bb.o
  %.033.i14 = phi i32 [ %i.al, %bb.o ], [ 0, %bb.p ] ; 3 uses
  %.030.i15 = phi i32 [ %i.ak, %bb.o ], [ 1, %bb.p ] ; 3 uses
  %i.an = sub i32 %1, %.030.i15                   ; 3 uses
  %i.ao = zext i32 %.033.i14 to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !62
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i32                   ; 2 uses
  %.not4249.i16 = icmp ugt i32 %i.an, %i.at
  br i1 %.not4249.i16, label %.lr.ph.i23, label %._crit_edge.i17

._crit_edge.i17:                                  ; preds = %.lr.ph.i23, %bb.q
  %.134.lcssa.i18 = phi i32 [ %.033.i14, %bb.q ], [ %i.bc, %.lr.ph.i23 ]
  %.131.lcssa.i19 = phi i32 [ %.030.i15, %bb.q ], [ %i.ba, %.lr.ph.i23 ]
  %.027.lcssa.i20 = phi i32 [ %i.an, %bb.q ], [ %i.bb, %.lr.ph.i23 ]
  %.lcssa.i21 = phi ptr [ %i.ap, %bb.q ], [ %i.be, %.lr.ph.i23 ]
  br i1 %.not40.i12, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i17
  store i32 %.134.lcssa.i18, ptr %3, align 4, !tbaa !139
  %.sroa.4.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.131.lcssa.i19, ptr %.sroa.4.0..sroa_idx.i22, align 4, !tbaa !139
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i17
  %i.au = load i16, ptr %.lcssa.i21, align 1, !tbaa !62
  %i.av = tail call noundef i16 @llvm.bswap.i16(i16 %i.au)
  %i.aw = zext i16 %i.av to i32
  %i.ax = add nuw nsw i32 %.027.lcssa.i20, %i.aw
  br label %_ZNK3CFF8Charset07get_sidEjj.exit

.lr.ph.i23:                                       ; preds = %bb.q, %.lr.ph.i23
  %i.ay = phi i32 [ %i.bi, %.lr.ph.i23 ], [ %i.at, %bb.q ]
  %.02752.i24 = phi i32 [ %i.bb, %.lr.ph.i23 ], [ %i.an, %bb.q ]
  %.13151.i25 = phi i32 [ %i.ba, %.lr.ph.i23 ], [ %.030.i15, %bb.q ]
  %.13450.i26 = phi i32 [ %i.bc, %.lr.ph.i23 ], [ %.033.i14, %bb.q ]
  %i.az = add nuw nsw i32 %i.ay, 1                ; 2 uses
  %i.ba = add i32 %.13151.i25, %i.az              ; 2 uses
  %i.bb = sub nuw i32 %.02752.i24, %i.az          ; 3 uses
  %i.bc = add i32 %.13450.i26, 1                  ; 3 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = load i16, ptr %i.bf, align 1, !tbaa !62
  %i.bh = tail call noundef i16 @llvm.bswap.i16(i16 %i.bg)
  %i.bi = zext i16 %i.bh to i32                   ; 2 uses
  %.not42.i27 = icmp ugt i32 %i.bb, %i.bi
  br i1 %.not42.i27, label %.lr.ph.i23, label %._crit_edge.i17, !llvm.loop !3193

_ZNK3CFF8Charset07get_sidEjj.exit:                ; preds = %bb.s, %bb.p, %bb.l, %bb.k, %bb.h, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.i, %bb.c ], [ 0, %bb.d ], [ %i.x, %bb.k ], [ 0, %bb.l ], [ %i.ax, %bb.s ], [ 0, %bb.p ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT4post13accelerator_t19get_glyph_from_nameEPKciPj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %struct.hb_array_t.957, align 8     ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3035
  switch i32 %i.b, label %_ZNK2OT4post13accelerator_t15get_glyph_countEv.exit.thread [
    i32 65536, label %_ZNK2OT4post13accelerator_t15get_glyph_countEv.exit.thread45
    i32 131072, label %_ZNK2OT4post13accelerator_t15get_glyph_countEv.exit
  ]

_ZNK2OT4post13accelerator_t15get_glyph_countEv.exit.thread45: ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  br label %bb.b

_ZNK2OT4post13accelerator_t15get_glyph_countEv.exit: ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3041
  %i.e = load i16, ptr %i.d, align 1, !tbaa !62   ; 2 uses
  %i.f = tail call noundef i16 @llvm.bswap.i16(i16 %i.e)
  %i.g = zext i16 %i.f to i32
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %_ZNK2OT4post13accelerator_t15get_glyph_countEv.exit.thread, label %bb.b, !prof !124

bb.b:                                             ; preds = %_ZNK2OT4post13accelerator_t15get_glyph_countEv.exit.thread45, %_ZNK2OT4post13accelerator_t15get_glyph_countEv.exit
  %.0.i48 = phi i32 [ 258, %_ZNK2OT4post13accelerator_t15get_glyph_countEv.exit.thread45 ], [ %i.g, %_ZNK2OT4post13accelerator_t15get_glyph_countEv.exit ] ; 7 uses
  %i.h = icmp slt i32 %2, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #68
  %i.j = trunc i64 %i.i to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.030 = phi i32 [ %i.j, %bb.c ], [ %2, %bb.b ]  ; 4 uses
  %.not39 = icmp eq i32 %.030, 0
  br i1 %.not39, label %_ZNK2OT4post13accelerator_t15get_glyph_countEv.exit.thread, label %.preheader58, !prof !48

.preheader58:                                     ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.l = load atomic ptr, ptr %i.k acquire, align 8 ; 2 uses
  %.not4062 = icmp eq ptr %i.l, null
  br i1 %.not4062, label %.lr.ph63, label %.lr.ph.i.i, !prof !46

.lr.ph63:                                         ; preds = %.preheader58
  %i.m = shl nuw nsw i32 %.0.i48, 1
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %.not68 = icmp eq i32 %.0.i48, 0
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  br i1 %.not68, label %.lr.ph63.split, label %.lr.ph63.split.us.preheader

.lr.ph63.split.us.preheader:                      ; preds = %.lr.ph63
  %wide.trip.count = zext nneg i32 %.0.i48 to i64 ; 6 uses
  %min.iters.check = icmp samesign ult i32 %.0.i48, 4
  %min.iters.check95 = icmp samesign ult i32 %.0.i48, 16
  %i.q = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 65520        ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  %n.vec96 = and i64 %wide.trip.count, 65532      ; 3 uses
  %cmp.n101 = icmp eq i64 %n.vec96, %wide.trip.count
  br label %.lr.ph63.split.us

.lr.ph63.split.us:                                ; preds = %.lr.ph63.split.us.preheader, %_ZL10hb_bsearchIt10hb_array_tIKcEJPvEEPT_RKT0_S5_mmPFiPKvSA_DpT1_ESC_.exit.us
  %i.r = call noalias noundef ptr @malloc(i64 noundef %i.n) #65 ; 8 uses
  %.not41.us = icmp eq ptr %i.r, null
  br i1 %.not41.us, label %_ZNK2OT4post13accelerator_t15get_glyph_countEv.exit.thread, label %iter.check, !prof !48

iter.check:                                       ; preds = %.lr.ph63.split.us
  br i1 %min.iters.check, label %.preheader.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check95, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.ind = phi <8 x i16> [ %vec.ind.next, %vector.body ], [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.main.loop.iter.check ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <8 x i16> %vec.ind, ptr %i.s, align 2, !tbaa !620
  store <8 x i16> %step.add, ptr %i.t, align 2, !tbaa !620
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !3194

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.preheader.us.preheader, label %vec.epilog.ph, !prof !3195

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.v = trunc nuw i64 %vec.epilog.resume.val to i16
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.v, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index97 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next99, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind98 = phi <4 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next100, %vec.epilog.vector.body ] ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %index97
  store <4 x i16> %vec.ind98, ptr %i.w, align 2, !tbaa !620
  %index.next99 = add nuw i64 %index97, 4         ; 2 uses
  %vec.ind.next100 = add <4 x i16> %vec.ind98, splat (i16 4)
  %i.x = icmp eq i64 %index.next99, %n.vec96
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3196

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n101, label %._crit_edge.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec96, %vec.epilog.middle.block ]
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.preheader.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader.us ], [ %indvars.iv.ph, %.preheader.us.preheader ] ; 3 uses
  %i.y = trunc i64 %indvars.iv to i16
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv
  store i16 %i.y, ptr %i.z, align 2, !tbaa !620
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.preheader.us, !llvm.loop !3197

_ZL10hb_bsearchIt10hb_array_tIKcEJPvEEPT_RKT0_S5_mmPFiPKvSA_DpT1_ESC_.exit.us: ; preds = %._crit_edge.us
  call void @free(ptr noundef nonnull %i.r) #63
  %i.aa = load atomic ptr, ptr %i.k acquire, align 8 ; 2 uses
  %.not40.us = icmp eq ptr %i.aa, null
  br i1 %.not40.us, label %.lr.ph63.split.us, label %.lr.ph.i.i, !prof !50

._crit_edge.us:                                   ; preds = %.preheader.us, %vec.epilog.middle.block, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  store ptr %i.r, ptr %4, align 8, !tbaa !3198
  store i32 %.0.i48, ptr %i.o, align 8, !tbaa !3200
  store i32 0, ptr %i.p, align 4, !tbaa !3201
  %i.ab = call { ptr, i64 } @_ZN10hb_array_tItE5qsortIZNK2OT4post13accelerator_t19get_glyph_from_nameEPKciPjEUlRKtS9_E_EE17hb_sorted_array_tItET_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  %i.ac = cmpxchg weak ptr %i.k, ptr null, ptr %i.r acq_rel monotonic, align 8
  %i.ad = extractvalue { ptr, i1 } %i.ac, 1
  br i1 %i.ad, label %.lr.ph.i.i, label %_ZL10hb_bsearchIt10hb_array_tIKcEJPvEEPT_RKT0_S5_mmPFiPKvSA_DpT1_ESC_.exit.us, !prof !49

.lr.ph63.split:                                   ; preds = %.lr.ph63, %_ZL10hb_bsearchIt10hb_array_tIKcEJPvEEPT_RKT0_S5_mmPFiPKvSA_DpT1_ESC_.exit
  %i.ae = call noalias noundef ptr @malloc(i64 noundef %i.n) #65 ; 5 uses
  %.not41 = icmp eq ptr %i.ae, null
  br i1 %.not41, label %_ZNK2OT4post13accelerator_t15get_glyph_countEv.exit.thread, label %.preheader, !prof !48

.preheader:                                       ; preds = %.lr.ph63.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  store ptr %i.ae, ptr %4, align 8, !tbaa !3198
  store i32 0, ptr %i.o, align 8, !tbaa !3200
  store i32 0, ptr %i.p, align 4, !tbaa !3201
  %i.af = call { ptr, i64 } @_ZN10hb_array_tItE5qsortIZNK2OT4post13accelerator_t19get_glyph_from_nameEPKciPjEUlRKtS9_E_EE17hb_sorted_array_tItET_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  %i.ag = cmpxchg weak ptr %i.k, ptr null, ptr %i.ae acq_rel monotonic, align 8
  %i.ah = extractvalue { ptr, i1 } %i.ag, 1
  br i1 %i.ah, label %.lr.ph.i.i, label %_ZL10hb_bsearchIt10hb_array_tIKcEJPvEEPT_RKT0_S5_mmPFiPKvSA_DpT1_ESC_.exit, !prof !49

.lr.ph.i.i:                                       ; preds = %_ZL10hb_bsearchIt10hb_array_tIKcEJPvEEPT_RKT0_S5_mmPFiPKvSA_DpT1_ESC_.exit.us, %._crit_edge.us, %_ZL10hb_bsearchIt10hb_array_tIKcEJPvEEPT_RKT0_S5_mmPFiPKvSA_DpT1_ESC_.exit, %.preheader, %.preheader58
  %.032 = phi ptr [ %i.ae, %.preheader ], [ %i.l, %.preheader58 ], [ %i.cs, %_ZL10hb_bsearchIt10hb_array_tIKcEJPvEEPT_RKT0_S5_mmPFiPKvSA_DpT1_ESC_.exit ], [ %i.aa, %_ZL10hb_bsearchIt10hb_array_tIKcEJPvEEPT_RKT0_S5_mmPFiPKvSA_DpT1_ESC_.exit.us ], [ %i.r, %._crit_edge.us ] ; 2 uses
  %i.ai = add nsw i32 %.0.i48, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = zext i32 %.030 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.r, %.lr.ph.i.i
  %.0217.i.i = phi i32 [ %i.ai, %.lr.ph.i.i ], [ %.2.i.i, %bb.r ] ; 2 uses
  %.0226.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.224.i.i, %bb.r ] ; 2 uses
  %i.ao = add i32 %.0226.i.i, %.0217.i.i          ; 2 uses
  %i.ap = lshr i32 %i.ao, 1                       ; 2 uses
  %i.aq = and i32 %i.ao, -2
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.032, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !620 ; 4 uses
  %i.au = load i32, ptr %i.a, align 8, !tbaa !3035
  switch i32 %i.au, label %_ZNK2OT4post13accelerator_t15find_glyph_nameEj.exit.i.i.i [
    i32 65536, label %bb.f
end_hunk_21
begin_hunk_22_@_ZNK2OT12LigCaretList14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS_18ItemVariationStoreEjPjPi:bb.a
  %i.w = load i32, ptr %6, align 4, !tbaa !139
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 %i.w) ; 4 uses
  store i32 %.sroa.speculated.i.i, ptr %6, align 4, !tbaa !139
  %.not4.i.i.i = icmp eq i32 %.sroa.speculated.i.i, 0
  br i1 %.not4.i.i.i, label %_ZNK2OT8LigGlyph14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS_18ItemVariationStoreEjPjPi.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %_ZNK10hb_array_tIKN2OT8OffsetToINS0_10CaretValueENS0_7NumTypeILb1EtLj2EEEvLb1EEEE9sub_arrayEjPj.exit.i
  %.sroa.2.8.insert.ext.i.i = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i16, i64 2
  %i.y = zext i32 %5 to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.y
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EEiEppEv.exit.i.i.i", %.lr.ph.i.i.preheader.i
  %.sroa.6.0.i = phi i64 [ %.sroa.6.1.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EEiEppEv.exit.i.i.i" ], [ %.sroa.2.8.insert.ext.i.i, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.sroa.029.0.i = phi ptr [ %.sroa.029.1.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EEiEppEv.exit.i.i.i" ], [ %7, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.val25.i.i.i = phi i32 [ %i.aj, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EEiEppEv.exit.i.i.i" ], [ %.sroa.speculated.i.i, %.lr.ph.i.i.preheader.i ]
  %i.aa = phi ptr [ %i.ak, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EEiEppEv.exit.i.i.i" ], [ %i.z, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.val1.i.i.i.i.i.i.i = load i16, ptr %i.aa, align 1, !tbaa !62 ; 2 uses
  %i.ab = icmp eq i16 %.val1.i.i.i.i.i.i.i, 0
  %i.ac = tail call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i.i.i.i)
  %i.ad = zext i16 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i16, i64 %i.ad
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ab, ptr @_hb_NullPool, ptr %i.ae, !prof !48
  %i.af = tail call noundef i32 @_ZNK2OT10CaretValue15get_caret_valueEP9hb_font_t14hb_direction_tjRKNS_18ItemVariationStoreE(ptr noundef nonnull align 1 dereferenceable(6) %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(12) %4) ; 2 uses
  %i.ag = and i64 %.sroa.6.0.i, 4294967295
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN9hb_iter_tI10hb_array_tIiERiEdeEv.exit.i.i.i.thread.i, label %bb.f, !prof !48

_ZN9hb_iter_tI10hb_array_tIiERiEdeEv.exit.i.i.i.thread.i: ; preds = %.lr.ph.i.i.i
  store i32 %i.af, ptr @_hb_CrapPool, align 16, !tbaa !139
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EEiEppEv.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i
  store i32 %i.af, ptr %.sroa.029.0.i, align 4, !tbaa !139
  %i.ah = add i64 %.sroa.6.0.i, 4294967295
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.029.0.i, i64 4
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EEiEppEv.exit.i.i.i"

"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EEiEppEv.exit.i.i.i": ; preds = %bb.f, %_ZN9hb_iter_tI10hb_array_tIiERiEdeEv.exit.i.i.i.thread.i
  %.sroa.6.1.i = phi i64 [ %.sroa.6.0.i, %_ZN9hb_iter_tI10hb_array_tIiERiEdeEv.exit.i.i.i.thread.i ], [ %i.ah, %bb.f ]
  %.sroa.029.1.i = phi ptr [ %.sroa.029.0.i, %_ZN9hb_iter_tI10hb_array_tIiERiEdeEv.exit.i.i.i.thread.i ], [ %i.ai, %bb.f ]
  %i.aj = add nsw i32 %.val25.i.i.i, -1           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i, label %"_ZorI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EE9hb_sink_tIS1_IiEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS11_6item_tEEE5valueEvE4typeELSJ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS11_Efp_EEEOS11_OS16_.exit.loopexit.i", label %.lr.ph.i.i.i, !llvm.loop !3398

"_ZorI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EE9hb_sink_tIS1_IiEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS11_6item_tEEE5valueEvE4typeELSJ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS11_Efp_EEEOS11_OS16_.exit.loopexit.i": ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EEiEppEv.exit.i.i.i"
  %.pre.i = load i16, ptr %.0.i.i16, align 1, !tbaa !62
  br label %_ZNK2OT8LigGlyph14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS_18ItemVariationStoreEjPjPi.exit

_ZNK2OT8LigGlyph14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS_18ItemVariationStoreEjPjPi.exit: ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_8LigGlyphENS_7NumTypeILb1EtLj2EEEvLb1EEES4_EixEi.exit, %_ZNK10hb_array_tIKN2OT8OffsetToINS0_10CaretValueENS0_7NumTypeILb1EtLj2EEEvLb1EEEE9sub_arrayEjPj.exit.i, %"_ZorI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EE9hb_sink_tIS1_IiEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS11_6item_tEEE5valueEvE4typeELSJ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS11_Efp_EEEOS11_OS16_.exit.loopexit.i"
  %i.al = phi i16 [ %.pre.i, %"_ZorI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EE9hb_sink_tIS1_IiEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS11_6item_tEEE5valueEvE4typeELSJ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS11_Efp_EEEOS11_OS16_.exit.loopexit.i" ], [ %.pre60.i, %_ZNK10hb_array_tIKN2OT8OffsetToINS0_10CaretValueENS0_7NumTypeILb1EtLj2EEEvLb1EEEE9sub_arrayEjPj.exit.i ], [ %.pre60.i, %_ZNK2OT7ArrayOfINS_8OffsetToINS_8LigGlyphENS_7NumTypeILb1EtLj2EEEvLb1EEES4_EixEi.exit ]
  %i.am = tail call noundef i16 @llvm.bswap.i16(i16 %i.al)
  %i.an = zext i16 %i.am to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %_ZNK2OT8LigGlyph14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS_18ItemVariationStoreEjPjPi.exit
  %.0 = phi i32 [ %i.an, %_ZNK2OT8LigGlyph14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS_18ItemVariationStoreEjPjPi.exit ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2OT10CaretValue15get_caret_valueEP9hb_font_t14hb_direction_tjRKNS_18ItemVariationStoreE(ptr noundef nonnull align 1 dereferenceable(6) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(12) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = load i16, ptr %0, align 1, !tbaa !62
  %i.d = tail call noundef i16 @llvm.bswap.i16(i16 %i.c)
  switch i16 %i.d, label %_ZNK2OT17CaretValueFormat315get_caret_valueEP9hb_font_t14hb_direction_tRKNS_18ItemVariationStoreE.exit [
    i16 1, label %bb.b
    i16 2, label %bb.c
    i16 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.e = and i32 %2, -2
  %i.f = icmp eq i32 %i.e, 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i16, ptr %i.g, align 1, !tbaa !62
  %i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.h)
  %i.j = sext i16 %i.i to i64
  %..i = select i1 %i.f, i64 88, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %..i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !196
  %i.m = mul nsw i64 %i.l, %i.j
  %.in.in.i = add nsw i64 %i.m, 32768
  %.in.i = lshr i64 %.in.in.i, 16
  %i.n = trunc i64 %.in.i to i32
  br label %_ZNK2OT17CaretValueFormat315get_caret_valueEP9hb_font_t14hb_direction_tRKNS_18ItemVariationStoreE.exit

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.p = load i16, ptr %i.o, align 1, !tbaa !62
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.p)
  %i.r = zext i16 %i.q to i32
  %i.s = call noundef i32 @_ZN9hb_font_t34get_glyph_contour_point_for_originEjj14hb_direction_tPiS1_(ptr noundef nonnull align 8 dereferenceable(192) %1, i32 noundef %3, i32 noundef %i.r, i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.t = and i32 %2, -2
  %i.u = icmp eq i32 %i.t, 4
  %i.v = load i32, ptr %i.a, align 4
  %i.w = load i32, ptr %i.b, align 4
  %i.x = select i1 %i.u, i32 %i.v, i32 %i.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %_ZNK2OT17CaretValueFormat315get_caret_valueEP9hb_font_t14hb_direction_tRKNS_18ItemVariationStoreE.exit

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.y = and i32 %2, -2
  %i.z = icmp eq i32 %i.y, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !62
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = sext i16 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = load i16, ptr %i.ae, align 1, !tbaa !62 ; 2 uses
  %i.ag = icmp eq i16 %i.af, 0
  %i.ah = tail call i16 @llvm.bswap.i16(i16 %i.af)
  %i.ai = zext i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai
  %.0.i.i.i = select i1 %i.ag, ptr @_hb_NullPool, ptr %i.aj, !prof !48 ; 2 uses
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1328
  %i.am = mul nsw i64 %i.al, %i.ad
  %i.an = add nsw i64 %i.am, 32768
  %i.ao = lshr i64 %i.an, 16
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = tail call noundef i32 @_ZNK2OT6Device11get_x_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i, ptr noundef nonnull %1, ptr noundef nonnull align 1 dereferenceable(12) %4, ptr noundef null)
  %i.ar = add nsw i32 %i.aq, %i.ap
  br label %_ZNK2OT17CaretValueFormat315get_caret_valueEP9hb_font_t14hb_direction_tRKNS_18ItemVariationStoreE.exit

bb.f:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.at = load i64, ptr %i.as, align 8, !tbaa !1327
  %i.au = mul nsw i64 %i.at, %i.ad
  %i.av = add nsw i64 %i.au, 32768
  %i.aw = lshr i64 %i.av, 16
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = tail call noundef i32 @_ZNK2OT6Device11get_y_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i, ptr noundef nonnull %1, ptr noundef nonnull align 1 dereferenceable(12) %4, ptr noundef null)
  %i.az = add nsw i32 %i.ay, %i.ax
  br label %_ZNK2OT17CaretValueFormat315get_caret_valueEP9hb_font_t14hb_direction_tRKNS_18ItemVariationStoreE.exit

_ZNK2OT17CaretValueFormat315get_caret_valueEP9hb_font_t14hb_direction_tRKNS_18ItemVariationStoreE.exit: ; preds = %bb.f, %bb.e, %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.a ], [ %i.n, %bb.b ], [ %i.x, %bb.c ], [ %i.ar, %bb.e ], [ %i.az, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2OT6Device11get_x_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(12) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !62
  %i.c = tail call noundef i16 @llvm.bswap.i16(i16 %i.b)
  switch i16 %i.c, label %_ZNK2OT13HintingDevice11get_x_deltaEP9hb_font_t.exit [
    i16 1, label %bb.b
    i16 2, label %bb.b
    i16 3, label %bb.b
    i16 -32768, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1360 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1175
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNK2OT13HintingDevice11get_x_deltaEP9hb_font_t.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i16, ptr %i.a, align 1, !tbaa !62
  %i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.h) ; 2 uses
  %i.j = zext i16 %i.i to i32                     ; 4 uses
  %i.k = add i16 %i.i, -4
  %i.l = icmp ult i16 %i.k, -3
  br i1 %i.l, label %_ZNK2OT13HintingDevice11get_x_deltaEP9hb_font_t.exit, label %bb.d, !prof !48

bb.d:                                             ; preds = %bb.c
  %i.m = load i16, ptr %0, align 1, !tbaa !62
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m)
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  %i.p = icmp ult i32 %i.e, %i.o
  br i1 %i.p, label %_ZNK2OT13HintingDevice11get_x_deltaEP9hb_font_t.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.r = load i16, ptr %i.q, align 1, !tbaa !62
  %i.s = tail call noundef i16 @llvm.bswap.i16(i16 %i.r)
  %i.t = zext i16 %i.s to i32
  %i.u = icmp ugt i32 %i.e, %i.t
  br i1 %i.u, label %_ZNK2OT13HintingDevice11get_x_deltaEP9hb_font_t.exit, label %_ZNK2OT13HintingDevice16get_delta_pixelsEj.exit.i.i

_ZNK2OT13HintingDevice16get_delta_pixelsEj.exit.i.i: ; preds = %bb.e
  %i.v = sub nuw nsw i32 %i.e, %i.o               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.x = sub nuw nsw i32 4, %i.j
  %i.y = lshr i32 %i.v, %i.x
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !62
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = zext i16 %i.ac to i32
  %i.ae = lshr exact i32 16, %i.j
  %i.af = add nsw i32 %i.ae, -1
  %i.ag = and i32 %i.v, %i.af
  %.neg.i.i.i = xor i32 %i.ag, -1
  %.neg24.i.i.i = shl nsw i32 %.neg.i.i.i, %i.j
  %i.ah = add nsw i32 %.neg24.i.i.i, 16
  %i.ai = lshr i32 %i.ad, %i.ah
  %.neg25.i.i.i = shl nsw i32 -1, %i.j
  %i.aj = add nsw i32 %.neg25.i.i.i, 16
  %i.ak = lshr i32 65535, %i.aj                   ; 2 uses
  %i.al = and i32 %i.ai, %i.ak                    ; 3 uses
  %i.am = add nuw nsw i32 %i.ak, 1                ; 2 uses
  %i.an = lshr exact i32 %i.am, 1
  %.not.i.i.i = icmp samesign ult i32 %i.al, %i.an
  %i.ao = select i1 %.not.i.i.i, i32 0, i32 %i.am ; 2 uses
  %.not9.i.i = icmp eq i32 %i.al, %i.ao
  br i1 %.not9.i.i, label %_ZNK2OT13HintingDevice11get_x_deltaEP9hb_font_t.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK2OT13HintingDevice16get_delta_pixelsEj.exit.i.i
  %spec.select.i.i.i = sub nsw i32 %i.al, %i.ao
  %i.ap = sext i32 %spec.select.i.i.i to i64
  %i.aq = sext i32 %i.g to i64
  %i.ar = mul nsw i64 %i.ap, %i.aq
  %i.as = zext nneg i32 %i.e to i64
  %i.at = sdiv i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i32
  br label %_ZNK2OT13HintingDevice11get_x_deltaEP9hb_font_t.exit

bb.g:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !1348, !range !220, !noundef !74
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.h, label %_ZNK2OT13HintingDevice11get_x_deltaEP9hb_font_t.exit

bb.h:                                             ; preds = %bb.g
  %i.ay = load i32, ptr %0, align 1, !tbaa !58
  %i.az = tail call noundef i32 @llvm.bswap.i32(i32 %i.ay) ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !108
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !109
  %i.be = lshr i32 %i.az, 16                      ; 2 uses
  %i.bf = and i32 %i.az, 65535
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bh = load i16, ptr %i.bg, align 1, !tbaa !62
  %i.bi = tail call noundef i16 @llvm.bswap.i16(i16 %i.bh)
  %i.bj = zext i16 %i.bi to i32
  %.not.i.i.i.i = icmp samesign ult i32 %i.be, %i.bj
  br i1 %.not.i.i.i.i, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i.i.i, label %_ZNK2OT15VariationDevice9get_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE.exit.i, !prof !49

_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i.i.i: ; preds = %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = zext nneg i32 %i.be to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 1, !tbaa !58 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  %i.bp = tail call i32 @llvm.bswap.i32(i32 %i.bn)
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 %i.bq
  %.0.i.i.i.i.i.i = select i1 %i.bo, ptr @_hb_NullPool, ptr %i.br, !prof !48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 4
  %i.bt = load i16, ptr %i.bs, align 1, !tbaa !62
  %.not.i.i.i.i.i = icmp eq i16 %i.bt, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT15VariationDevice9get_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bv = load i32, ptr %i.bu, align 1, !tbaa !58 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  %i.bx = tail call i32 @llvm.bswap.i32(i32 %i.bv)
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %i.by
  %.0.i.i10.i.i.i.i = select i1 %i.bw, ptr @_hb_NullPool, ptr %i.bz, !prof !48
  %i.ca = tail call noundef float @_ZNK2OT7VarData10_get_deltaEjPKijRKNS_13VarRegionListEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i.i.i.i, i32 noundef %i.bf, ptr noundef %i.bb, i32 noundef %i.bd, ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i10.i.i.i.i, ptr noundef %3)
  br label %_ZNK2OT15VariationDevice9get_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE.exit.i

_ZNK2OT15VariationDevice9get_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE.exit.i: ; preds = %bb.i, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i.i.i, %bb.h
  %.0.i.i.i.i = phi float [ 0.000000e+00, %bb.h ], [ %i.ca, %bb.i ], [ 0.000000e+00, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !532
  %i.cd = fmul float %.0.i.i.i.i, %i.cc
  %i.ce = fadd float %i.cd, 5.000000e-01
  %i.cf = tail call noundef float @llvm.floor.f32(float %i.ce)
  %i.cg = fptosi float %i.cf to i32
  br label %_ZNK2OT13HintingDevice11get_x_deltaEP9hb_font_t.exit

_ZNK2OT13HintingDevice11get_x_deltaEP9hb_font_t.exit: ; preds = %_ZNK2OT15VariationDevice9get_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE.exit.i, %bb.g, %bb.f, %_ZNK2OT13HintingDevice16get_delta_pixelsEj.exit.i.i, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.au, %bb.f ], [ 0, %_ZNK2OT13HintingDevice16get_delta_pixelsEj.exit.i.i ], [ 0, %bb.c ], [ 0, %bb.e ], [ %i.cg, %_ZNK2OT15VariationDevice9get_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE.exit.i ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2OT6Device11get_y_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(12) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !62
  %i.c = tail call noundef i16 @llvm.bswap.i16(i16 %i.b)
  switch i16 %i.c, label %_ZNK2OT13HintingDevice11get_y_deltaEP9hb_font_t.exit [
    i16 1, label %bb.b
    i16 2, label %bb.b
    i16 3, label %bb.b
    i16 -32768, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1361 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1183
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNK2OT13HintingDevice11get_y_deltaEP9hb_font_t.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i16, ptr %i.a, align 1, !tbaa !62
  %i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.h) ; 2 uses
  %i.j = zext i16 %i.i to i32                     ; 4 uses
  %i.k = add i16 %i.i, -4
  %i.l = icmp ult i16 %i.k, -3
  br i1 %i.l, label %_ZNK2OT13HintingDevice11get_y_deltaEP9hb_font_t.exit, label %bb.d, !prof !48

bb.d:                                             ; preds = %bb.c
  %i.m = load i16, ptr %0, align 1, !tbaa !62
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m)
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  %i.p = icmp ult i32 %i.e, %i.o
  br i1 %i.p, label %_ZNK2OT13HintingDevice11get_y_deltaEP9hb_font_t.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.r = load i16, ptr %i.q, align 1, !tbaa !62
  %i.s = tail call noundef i16 @llvm.bswap.i16(i16 %i.r)
  %i.t = zext i16 %i.s to i32
  %i.u = icmp ugt i32 %i.e, %i.t
  br i1 %i.u, label %_ZNK2OT13HintingDevice11get_y_deltaEP9hb_font_t.exit, label %_ZNK2OT13HintingDevice16get_delta_pixelsEj.exit.i.i

_ZNK2OT13HintingDevice16get_delta_pixelsEj.exit.i.i: ; preds = %bb.e
  %i.v = sub nuw nsw i32 %i.e, %i.o               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.x = sub nuw nsw i32 4, %i.j
  %i.y = lshr i32 %i.v, %i.x
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !62
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = zext i16 %i.ac to i32
  %i.ae = lshr exact i32 16, %i.j
  %i.af = add nsw i32 %i.ae, -1
  %i.ag = and i32 %i.v, %i.af
  %.neg.i.i.i = xor i32 %i.ag, -1
  %.neg24.i.i.i = shl nsw i32 %.neg.i.i.i, %i.j
  %i.ah = add nsw i32 %.neg24.i.i.i, 16
  %i.ai = lshr i32 %i.ad, %i.ah
  %.neg25.i.i.i = shl nsw i32 -1, %i.j
  %i.aj = add nsw i32 %.neg25.i.i.i, 16
  %i.ak = lshr i32 65535, %i.aj                   ; 2 uses
  %i.al = and i32 %i.ai, %i.ak                    ; 3 uses
  %i.am = add nuw nsw i32 %i.ak, 1                ; 2 uses
  %i.an = lshr exact i32 %i.am, 1
  %.not.i.i.i = icmp samesign ult i32 %i.al, %i.an
  %i.ao = select i1 %.not.i.i.i, i32 0, i32 %i.am ; 2 uses
  %.not9.i.i = icmp eq i32 %i.al, %i.ao
  br i1 %.not9.i.i, label %_ZNK2OT13HintingDevice11get_y_deltaEP9hb_font_t.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK2OT13HintingDevice16get_delta_pixelsEj.exit.i.i
  %spec.select.i.i.i = sub nsw i32 %i.al, %i.ao
  %i.ap = sext i32 %spec.select.i.i.i to i64
  %i.aq = sext i32 %i.g to i64
  %i.ar = mul nsw i64 %i.ap, %i.aq
  %i.as = zext nneg i32 %i.e to i64
  %i.at = sdiv i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i32
  br label %_ZNK2OT13HintingDevice11get_y_deltaEP9hb_font_t.exit

bb.g:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !1348, !range !220, !noundef !74
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.h, label %_ZNK2OT13HintingDevice11get_y_deltaEP9hb_font_t.exit

bb.h:                                             ; preds = %bb.g
  %i.ay = load i32, ptr %0, align 1, !tbaa !58
  %i.az = tail call noundef i32 @llvm.bswap.i32(i32 %i.ay) ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !108
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !109
  %i.be = lshr i32 %i.az, 16                      ; 2 uses
  %i.bf = and i32 %i.az, 65535
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bh = load i16, ptr %i.bg, align 1, !tbaa !62
  %i.bi = tail call noundef i16 @llvm.bswap.i16(i16 %i.bh)
  %i.bj = zext i16 %i.bi to i32
  %.not.i.i.i.i = icmp samesign ult i32 %i.be, %i.bj
  br i1 %.not.i.i.i.i, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i.i.i, label %_ZNK2OT15VariationDevice9get_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE.exit.i, !prof !49

_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i.i.i: ; preds = %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = zext nneg i32 %i.be to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 1, !tbaa !58 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  %i.bp = tail call i32 @llvm.bswap.i32(i32 %i.bn)
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 %i.bq
  %.0.i.i.i.i.i.i = select i1 %i.bo, ptr @_hb_NullPool, ptr %i.br, !prof !48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 4
  %i.bt = load i16, ptr %i.bs, align 1, !tbaa !62
  %.not.i.i.i.i.i = icmp eq i16 %i.bt, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT15VariationDevice9get_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bv = load i32, ptr %i.bu, align 1, !tbaa !58 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  %i.bx = tail call i32 @llvm.bswap.i32(i32 %i.bv)
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %i.by
  %.0.i.i10.i.i.i.i = select i1 %i.bw, ptr @_hb_NullPool, ptr %i.bz, !prof !48
  %i.ca = tail call noundef float @_ZNK2OT7VarData10_get_deltaEjPKijRKNS_13VarRegionListEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i.i.i.i, i32 noundef %i.bf, ptr noundef %i.bb, i32 noundef %i.bd, ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i10.i.i.i.i, ptr noundef %3)
  br label %_ZNK2OT15VariationDevice9get_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE.exit.i

_ZNK2OT15VariationDevice9get_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE.exit.i: ; preds = %bb.i, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i.i.i, %bb.h
  %.0.i.i.i.i = phi float [ 0.000000e+00, %bb.h ], [ %i.ca, %bb.i ], [ 0.000000e+00, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !537
  %i.cd = fmul float %.0.i.i.i.i, %i.cc
  %i.ce = fadd float %i.cd, 5.000000e-01
  %i.cf = tail call noundef float @llvm.floor.f32(float %i.ce)
  %i.cg = fptosi float %i.cf to i32
  br label %_ZNK2OT13HintingDevice11get_y_deltaEP9hb_font_t.exit

_ZNK2OT13HintingDevice11get_y_deltaEP9hb_font_t.exit: ; preds = %_ZNK2OT15VariationDevice9get_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE.exit.i, %bb.g, %bb.f, %_ZNK2OT13HintingDevice16get_delta_pixelsEj.exit.i.i, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.au, %bb.f ], [ 0, %_ZNK2OT13HintingDevice16get_delta_pixelsEj.exit.i.i ], [ 0, %bb.c ], [ 0, %bb.e ], [ %i.cg, %_ZNK2OT15VariationDevice9get_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE.exit.i ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN29hb_collect_features_context_t22compute_feature_filterEPKj(ptr noundef nonnull align 8 dereferenceable(252) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %struct.hb_set_t, align 8           ; 15 uses
  %i.a = icmp eq ptr %1, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 8, !tbaa !1623
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.b, align 8, !tbaa !1623
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  store atomic i32 1, ptr %2 monotonic, align 8
  store atomic i8 1, ptr %i.c monotonic, align 4
  store atomic ptr null, ptr %i.d monotonic, align 8
  store i8 1, ptr %i.e, align 8, !tbaa !413
  store i32 0, ptr %i.f, align 4, !tbaa !412
  store atomic i32 0, ptr %i.g monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.h, i8 0, i64 33, i1 false)
  %i.i = load i32, ptr %1, align 4, !tbaa !139    ; 2 uses
  %.not20 = icmp eq i32 %i.i, 0
  br i1 %.not20, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.d

.preheader:                                       ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sink.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  %i.p = phi i32 [ %i.i, %.lr.ph ], [ %i.t, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit ] ; 2 uses
  %.0921 = phi ptr [ %1, %.lr.ph ], [ %i.s, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit ]
  %i.q = load i8, ptr %i.j, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.f, !prof !48

bb.e:                                             ; preds = %bb.d
  call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.e, i32 noundef %i.p)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.e, i32 noundef %i.p)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit: ; preds = %bb.e, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.0921, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !139  ; 2 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %.preheader, label %bb.d, !llvm.loop !3399

bb.g:                                             ; preds = %.preheader, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit15
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit15 ] ; 5 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !1627, !nonnull !74 ; 3 uses
  %i.v = load i16, ptr %i.u, align 1, !tbaa !62
  %cond.i.i = icmp eq i16 %i.v, 256
  br i1 %cond.i.i, label %bb.h, label %_ZNK2OT8GSUBGPOS17get_feature_countEv.exit

bb.h:                                             ; preds = %bb.g
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  %i.x = load i16, ptr %i.w, align 1, !tbaa !62   ; 2 uses
  %i.y = icmp eq i16 %i.x, 0
  %i.z = call i16 @llvm.bswap.i16(i16 %i.x)
  %i.aa = zext i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.aa
  %.0.i.i.i.i = select i1 %i.y, ptr @_hb_NullPool, ptr %i.ab, !prof !48
  br label %_ZNK2OT8GSUBGPOS17get_feature_countEv.exit

_ZNK2OT8GSUBGPOS17get_feature_countEv.exit:       ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %.0.i.i.i.i, %bb.h ], [ @_hb_NullPool, %bb.g ]
  %i.ac = load i16, ptr %.0.i.i, align 1, !tbaa !62
  %i.ad = call noundef i16 @llvm.bswap.i16(i16 %i.ac)
  %i.ae = zext i16 %i.ad to i64
  %i.af = icmp samesign ult i64 %indvars.iv, %i.ae
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK2OT8GSUBGPOS17get_feature_countEv.exit
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  br label %bb.v

bb.j:                                             ; preds = %_ZNK2OT8GSUBGPOS17get_feature_countEv.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !1627, !nonnull !74 ; 3 uses
end_hunk_22
begin_hunk_23_@_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE9get_valueEjj:bb.a
  %.not.i.i.i.i = icmp eq i16 %i.i, 0
  %.pre.i.i = load i16, ptr %i.f, align 1, !tbaa !62 ; 2 uses
  br i1 %.not.i.i.i.i, label %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit_crit_edge.i.i, label %bb.d, !prof !48

._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit_crit_edge.i.i: ; preds = %bb.c
  %.pre7.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i) ; 2 uses
  %.pre8.i.i = zext i16 %.pre7.i.i to i64
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = zext i16 %i.j to i64
  %i.l = add nuw nsw i64 %i.k, 4294967295
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i) ; 3 uses
  %i.n = zext i16 %i.m to i64                     ; 3 uses
  %i.o = mul nuw nsw i64 %i.l, %i.n
  %i.p = and i64 %i.o, 4294967295
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.p ; 2 uses
  %i.r = load i16, ptr %i.q, align 1, !tbaa !62
  %.not9.i.i.i.i = icmp eq i16 %i.r, -1
  br i1 %.not9.i.i.i.i, label %bb.e, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.t = load i16, ptr %i.s, align 1, !tbaa !62
  %.not9.1.i.i.i.i = icmp eq i16 %i.t, -1
  %i.u = sext i1 %.not9.1.i.i.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i: ; preds = %bb.e, %bb.d, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit_crit_edge.i.i
  %.pre-phi9.i.i = phi i64 [ %.pre8.i.i, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.n, %bb.d ], [ %i.n, %bb.e ]
  %.pre-phi.i.i = phi i16 [ %.pre7.i.i, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.m, %bb.d ], [ %i.m, %bb.e ]
  %.2.i.i.i.i = phi i32 [ 0, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ 0, %bb.d ], [ %i.u, %bb.e ]
  %i.v = zext i16 %i.j to i32
  %i.w = add nsw i32 %.2.i.i.i.i, %i.v            ; 2 uses
  %i.x = zext i16 %.pre-phi.i.i to i32
  %.not29.i.i.i = icmp sgt i32 %i.w, 0
  br i1 %.not29.i.i.i, label %.lr.ph.preheader.i.i.i, label %_ZNK3AAT13LookupFormat2IN2OT7NumTypeILb1EtLj2EEEE9get_valueEj.exit

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i
  %i.y = add nsw i32 %i.w, -1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.preheader.i.i.i
  %.02031.i.i.i = phi i32 [ %.2.i.i.i, %bb.g ], [ %i.y, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.02130.i.i.i = phi i32 [ %.223.i.i.i, %bb.g ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.z = add i32 %.02130.i.i.i, %.02031.i.i.i
  %i.aa = lshr i32 %i.z, 1                        ; 4 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = mul nuw nsw i64 %.pre-phi9.i.i, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.af = load i16, ptr %i.ae, align 1, !tbaa !62
  %i.ag = tail call noundef i16 @llvm.bswap.i16(i16 %i.af)
  %i.ah = zext i16 %i.ag to i32
  %i.ai = icmp ult i32 %1, %i.ah
  br i1 %i.ai, label %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EtLj2EEEEEJEEiPKvS7_DpT1_.exit.thread.i.i, label %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EtLj2EEEEEJEEiPKvS7_DpT1_.exit.i.i

_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EtLj2EEEEEJEEiPKvS7_DpT1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.aj = load i16, ptr %i.ad, align 1, !tbaa !62
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %i.aj)
  %i.al = zext i16 %i.ak to i32
  %.not.i.i2.not.i.i = icmp ugt i32 %1, %i.al
  br i1 %.not.i.i2.not.i.i, label %bb.f, label %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i

_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EtLj2EEEEEJEEiPKvS7_DpT1_.exit.thread.i.i: ; preds = %.lr.ph.i.i.i
  %i.am = add nsw i32 %i.aa, -1
  br label %bb.g

bb.f:                                             ; preds = %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EtLj2EEEEEJEEiPKvS7_DpT1_.exit.i.i
  %i.an = add nuw nsw i32 %i.aa, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EtLj2EEEEEJEEiPKvS7_DpT1_.exit.thread.i.i
  %.223.i.i.i = phi i32 [ %i.an, %bb.f ], [ %.02130.i.i.i, %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EtLj2EEEEEJEEiPKvS7_DpT1_.exit.thread.i.i ] ; 2 uses
  %.2.i.i.i = phi i32 [ %.02031.i.i.i, %bb.f ], [ %i.am, %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EtLj2EEEEEJEEiPKvS7_DpT1_.exit.thread.i.i ] ; 2 uses
  %.not.not.i.i.i = icmp sgt i32 %.223.i.i.i, %.2.i.i.i
  br i1 %.not.not.i.i.i, label %_ZNK3AAT13LookupFormat2IN2OT7NumTypeILb1EtLj2EEEE9get_valueEj.exit, label %.lr.ph.i.i.i, !llvm.loop !5465

_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i: ; preds = %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EtLj2EEEEEJEEiPKvS7_DpT1_.exit.i.i
  %i.ao = mul i32 %i.aa, %i.x
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ap
  br label %_ZNK3AAT13LookupFormat2IN2OT7NumTypeILb1EtLj2EEEE9get_valueEj.exit

_ZNK3AAT13LookupFormat2IN2OT7NumTypeILb1EtLj2EEEE9get_valueEj.exit: ; preds = %bb.g, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i, %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i
  %i.ar = phi ptr [ %i.aq, %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i ], [ null, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i ], [ null, %bb.g ] ; 2 uses
  %.not.i7 = icmp eq ptr %i.ar, null
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = select i1 %.not.i7, ptr null, ptr %i.as
  br label %_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EtLj2EEEE9get_valueEj.exit

bb.h:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !62 ; 2 uses
  %i.ay = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax) ; 2 uses
  %.not.i.i.i.i8 = icmp eq i16 %i.ax, 0
  %.pre.i.i9 = load i16, ptr %i.au, align 1, !tbaa !62 ; 2 uses
  br i1 %.not.i.i.i.i8, label %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit_crit_edge.i.i, label %bb.i, !prof !48

._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit_crit_edge.i.i: ; preds = %bb.h
  %.pre7.i.i24 = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i9) ; 2 uses
  %.pre8.i.i25 = zext i16 %.pre7.i.i24 to i64
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.az = zext i16 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.az, 4294967295
  %i.bb = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i9) ; 3 uses
  %i.bc = zext i16 %i.bb to i64                   ; 3 uses
  %i.bd = mul nuw nsw i64 %i.ba, %i.bc
  %i.be = and i64 %i.bd, 4294967295
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.be ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 1, !tbaa !62
  %.not9.i.i.i.i10 = icmp eq i16 %i.bg, -1
  br i1 %.not9.i.i.i.i10, label %bb.j, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bi = load i16, ptr %i.bh, align 1, !tbaa !62
  %.not9.1.i.i.i.i23 = icmp eq i16 %i.bi, -1
  %i.bj = sext i1 %.not9.1.i.i.i.i23 to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i: ; preds = %bb.j, %bb.i, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit_crit_edge.i.i
  %.pre-phi9.i.i11 = phi i64 [ %.pre8.i.i25, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.bc, %bb.i ], [ %i.bc, %bb.j ]
  %.pre-phi.i.i12 = phi i16 [ %.pre7.i.i24, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.bb, %bb.i ], [ %i.bb, %bb.j ]
  %.2.i.i.i.i13 = phi i32 [ 0, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ 0, %bb.i ], [ %i.bj, %bb.j ]
  %i.bk = zext i16 %i.ay to i32
  %i.bl = add nsw i32 %.2.i.i.i.i13, %i.bk        ; 2 uses
  %i.bm = zext i16 %.pre-phi.i.i12 to i32
  %.not29.i.i.i14 = icmp sgt i32 %i.bl, 0
  br i1 %.not29.i.i.i14, label %.lr.ph.preheader.i.i.i15, label %_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EtLj2EEEE9get_valueEj.exit

.lr.ph.preheader.i.i.i15:                         ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i
  %i.bn = add nsw i32 %i.bl, -1
  br label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %bb.l, %.lr.ph.preheader.i.i.i15
  %.02031.i.i.i17 = phi i32 [ %.2.i.i.i21, %bb.l ], [ %i.bn, %.lr.ph.preheader.i.i.i15 ] ; 2 uses
  %.02130.i.i.i18 = phi i32 [ %.223.i.i.i20, %bb.l ], [ 0, %.lr.ph.preheader.i.i.i15 ] ; 2 uses
  %i.bo = add i32 %.02130.i.i.i18, %.02031.i.i.i17
  %i.bp = lshr i32 %i.bo, 1                       ; 4 uses
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = mul nuw nsw i64 %.pre-phi9.i.i11, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.bu = load i16, ptr %i.bt, align 1, !tbaa !62
  %i.bv = tail call noundef i16 @llvm.bswap.i16(i16 %i.bu)
  %i.bw = zext i16 %i.bv to i32
  %i.bx = icmp ult i32 %1, %i.bw
  br i1 %i.bx, label %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EtLj2EEEEEJEEiPKvS7_DpT1_.exit.thread.i.i, label %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EtLj2EEEEEJEEiPKvS7_DpT1_.exit.i.i

_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EtLj2EEEEEJEEiPKvS7_DpT1_.exit.i.i: ; preds = %.lr.ph.i.i.i16
  %i.by = load i16, ptr %i.bs, align 1, !tbaa !62
  %i.bz = tail call noundef i16 @llvm.bswap.i16(i16 %i.by)
  %i.ca = zext i16 %i.bz to i32
  %.not.i.i2.not.i.i19 = icmp ugt i32 %1, %i.ca
  br i1 %.not.i.i2.not.i.i19, label %bb.k, label %bb.m

_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EtLj2EEEEEJEEiPKvS7_DpT1_.exit.thread.i.i: ; preds = %.lr.ph.i.i.i16
  %i.cb = add nsw i32 %i.bp, -1
  br label %bb.l

bb.k:                                             ; preds = %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EtLj2EEEEEJEEiPKvS7_DpT1_.exit.i.i
  %i.cc = add nuw nsw i32 %i.bp, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EtLj2EEEEEJEEiPKvS7_DpT1_.exit.thread.i.i
  %.223.i.i.i20 = phi i32 [ %i.cc, %bb.k ], [ %.02130.i.i.i18, %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EtLj2EEEEEJEEiPKvS7_DpT1_.exit.thread.i.i ] ; 2 uses
  %.2.i.i.i21 = phi i32 [ %.02031.i.i.i17, %bb.k ], [ %i.cb, %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EtLj2EEEEEJEEiPKvS7_DpT1_.exit.thread.i.i ] ; 2 uses
  %.not.not.i.i.i22 = icmp sgt i32 %.223.i.i.i20, %.2.i.i.i21
  br i1 %.not.not.i.i.i22, label %_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EtLj2EEEE9get_valueEj.exit, label %.lr.ph.i.i.i16, !llvm.loop !5465

bb.m:                                             ; preds = %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EtLj2EEEEEJEEiPKvS7_DpT1_.exit.i.i
  %i.cd = mul i32 %i.bp, %i.bm
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ce ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  %i.ch = load i16, ptr %i.cg, align 1, !tbaa !62
  %i.ci = tail call noundef i16 @llvm.bswap.i16(i16 %i.ch)
  %i.cj = zext i16 %i.ci to i32                   ; 2 uses
  %.not.i.i = icmp samesign ult i32 %1, %i.cj
  br i1 %.not.i.i, label %_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EtLj2EEEE9get_valueEj.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = load i16, ptr %i.cf, align 1, !tbaa !62
  %i.cl = tail call noundef i16 @llvm.bswap.i16(i16 %i.ck)
  %i.cm = zext i16 %i.cl to i32
  %.not3.i.i = icmp samesign ugt i32 %1, %i.cm
  br i1 %.not3.i.i, label %_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EtLj2EEEE9get_valueEj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.co = load i16, ptr %i.cn, align 1, !tbaa !62
  %i.cp = tail call noundef i16 @llvm.bswap.i16(i16 %i.co)
  %i.cq = zext i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %i.cq
  %i.cs = sub nuw nsw i32 %1, %i.cj
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.ct
  br label %_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EtLj2EEEE9get_valueEj.exit

bb.p:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cy = load i16, ptr %i.cx, align 1, !tbaa !62 ; 2 uses
  %i.cz = tail call noundef i16 @llvm.bswap.i16(i16 %i.cy) ; 2 uses
  %.not.i.i.i.i26 = icmp eq i16 %i.cy, 0
  %.pre.i.i27 = load i16, ptr %i.cv, align 1, !tbaa !62 ; 2 uses
  br i1 %.not.i.i.i.i26, label %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit_crit_edge.i.i, label %bb.q, !prof !48

._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit_crit_edge.i.i: ; preds = %bb.p
  %.pre6.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i27) ; 2 uses
  %.pre7.i.i40 = zext i16 %.pre6.i.i to i64
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.da = zext i16 %i.cz to i64
  %i.db = add nuw nsw i64 %i.da, 4294967295
  %i.dc = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i27) ; 2 uses
  %i.dd = zext i16 %i.dc to i64                   ; 2 uses
  %i.de = mul nuw nsw i64 %i.db, %i.dd
  %i.df = and i64 %i.de, 4294967295
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 1, !tbaa !62
  %.not9.not.i.i.i.i = icmp eq i16 %i.dh, -1
  %i.di = sext i1 %.not9.not.i.i.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i: ; preds = %bb.q, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit_crit_edge.i.i
  %.pre-phi8.i.i = phi i64 [ %.pre7.i.i40, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.dd, %bb.q ]
  %.pre-phi.i.i28 = phi i16 [ %.pre6.i.i, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.dc, %bb.q ]
  %.2.i.i.i.i29 = phi i32 [ 0, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.di, %bb.q ]
  %i.dj = zext i16 %i.cz to i32
  %i.dk = add nsw i32 %.2.i.i.i.i29, %i.dj        ; 2 uses
  %i.dl = zext i16 %.pre-phi.i.i28 to i32
  %.not29.i.i.i30 = icmp sgt i32 %i.dk, 0
  br i1 %.not29.i.i.i30, label %.lr.ph.preheader.i.i.i32, label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EtLj2EEEE9get_valueEj.exit

.lr.ph.preheader.i.i.i32:                         ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i
  %i.dm = add nsw i32 %i.dk, -1
  br label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %bb.u, %.lr.ph.preheader.i.i.i32
  %.02031.i.i.i34 = phi i32 [ %.2.i.i.i37, %bb.u ], [ %i.dm, %.lr.ph.preheader.i.i.i32 ] ; 2 uses
  %.02130.i.i.i35 = phi i32 [ %.223.i.i.i36, %bb.u ], [ 0, %.lr.ph.preheader.i.i.i32 ] ; 2 uses
  %i.dn = add i32 %.02130.i.i.i35, %.02031.i.i.i34
  %i.do = lshr i32 %i.dn, 1                       ; 4 uses
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = mul nuw nsw i64 %.pre-phi8.i.i, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 1, !tbaa !62
  %i.dt = tail call noundef i16 @llvm.bswap.i16(i16 %i.ds)
  %i.du = zext i16 %i.dt to i32                   ; 2 uses
  %i.dv = icmp ult i32 %1, %i.du
  br i1 %i.dv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i.i33
  %i.dw = add nsw i32 %i.do, -1
  br label %bb.u

bb.s:                                             ; preds = %.lr.ph.i.i.i33
  %.not28.i.i.i = icmp eq i32 %1, %i.du
  br i1 %.not28.i.i.i, label %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i39, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dx = add nuw nsw i32 %i.do, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.223.i.i.i36 = phi i32 [ %i.dx, %bb.t ], [ %.02130.i.i.i35, %bb.r ] ; 2 uses
  %.2.i.i.i37 = phi i32 [ %.02031.i.i.i34, %bb.t ], [ %i.dw, %bb.r ] ; 2 uses
  %.not.not.i.i.i38 = icmp sgt i32 %.223.i.i.i36, %.2.i.i.i37
  br i1 %.not.not.i.i.i38, label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EtLj2EEEE9get_valueEj.exit, label %.lr.ph.i.i.i33, !llvm.loop !5465

_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i39: ; preds = %bb.s
  %i.dy = mul i32 %i.do, %i.dl
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dz
  br label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EtLj2EEEE9get_valueEj.exit

_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EtLj2EEEE9get_valueEj.exit: ; preds = %bb.u, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i, %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i39
  %i.eb = phi ptr [ %i.ea, %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i39 ], [ null, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i ], [ null, %bb.u ] ; 2 uses
  %.not.i31 = icmp eq ptr %i.eb, null
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %i.ed = select i1 %.not.i31, ptr null, ptr %i.ec
  br label %_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EtLj2EEEE9get_valueEj.exit

bb.v:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ef = load i16, ptr %i.ee, align 1, !tbaa !62
  %i.eg = tail call noundef i16 @llvm.bswap.i16(i16 %i.ef)
  %i.eh = zext i16 %i.eg to i32                   ; 2 uses
  %.not.i41 = icmp ult i32 %1, %i.eh
  br i1 %.not.i41, label %_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EtLj2EEEE9get_valueEj.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ei = sub nuw i32 %1, %i.eh                   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ek = load i16, ptr %i.ej, align 1, !tbaa !62
  %i.el = tail call noundef i16 @llvm.bswap.i16(i16 %i.ek)
  %i.em = zext i16 %i.el to i32
  %i.en = icmp ult i32 %i.ei, %i.em
  br i1 %i.en, label %bb.x, label %_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EtLj2EEEE9get_valueEj.exit

bb.x:                                             ; preds = %bb.w
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ep = zext nneg i32 %i.ei to i64
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.ep
  br label %_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EtLj2EEEE9get_valueEj.exit

_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EtLj2EEEE9get_valueEj.exit: ; preds = %bb.l, %bb.x, %bb.w, %bb.v, %bb.o, %bb.n, %bb.m, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i, %bb.a, %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EtLj2EEEE9get_valueEj.exit, %_ZNK3AAT13LookupFormat2IN2OT7NumTypeILb1EtLj2EEEE9get_valueEj.exit, %bb.b
  %.0 = phi ptr [ null, %bb.v ], [ %.0.i, %bb.b ], [ %i.at, %_ZNK3AAT13LookupFormat2IN2OT7NumTypeILb1EtLj2EEEE9get_valueEj.exit ], [ null, %bb.a ], [ %i.ed, %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EtLj2EEEE9get_valueEj.exit ], [ null, %bb.m ], [ %i.cu, %bb.o ], [ null, %bb.n ], [ null, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i ], [ %i.eq, %bb.x ], [ null, %bb.w ], [ null, %bb.l ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3AAT16StateTableDriverINS_13ExtendedTypesENS_18ContextualSubtableIS1_E9EntryDataENS3_5FlagsEE5driveINS3_16driver_context_tEEEvPT_PNS_22hb_aat_apply_context_tE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !348  ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !513  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !391
  %i.g = icmp ugt i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi ptr [ %i.i, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !5466, !nonnull !74 ; 5 uses
  %i.l = load i32, ptr %i.k, align 1, !tbaa !58
  %.not.i131.not = icmp eq i32 %i.l, 0
  br i1 %.not.i131.not, label %bb.e, label %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_18ContextualSubtableIS1_E9EntryDataEE9get_entryEij.exit, !prof !48

bb.e:                                             ; preds = %bb.d
  br label %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_18ContextualSubtableIS1_E9EntryDataEE9get_entryEij.exit

_ZNK3AAT10StateTableINS_13ExtendedTypesENS_18ContextualSubtableIS1_E9EntryDataEE9get_entryEij.exit: ; preds = %bb.d, %bb.e
  %.0.i132 = phi i64 [ 1, %bb.e ], [ 0, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i32, ptr %i.m, align 1, !tbaa !58
  %i.o = tail call noundef i32 @llvm.bswap.i32(i32 %i.n)
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.s = load i32, ptr %i.r, align 1, !tbaa !58
  %i.t = tail call noundef i32 @llvm.bswap.i32(i32 %i.s)
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.u
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.0.i132
  %i.x = load i16, ptr %i.w, align 1, !tbaa !62
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !62
  %.not.i133 = icmp ne i16 %i.ac, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 6
  %i.ae = load i16, ptr %i.ad, align 1
  %i.af = icmp ne i16 %i.ae, -1
  %i.ag = select i1 %.not.i133, i1 true, i1 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 14 uses
  store i32 0, ptr %i.ah, align 4, !tbaa !630
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 5 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !496, !range !220, !noundef !74
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.lr.ph204, label %_ZN11hb_buffer_t10next_glyphEv.exit176.thread

.lr.ph204:                                        ; preds = %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_18ContextualSubtableIS1_E9EntryDataEE9get_entryEij.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 89 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  br label %bb.f

.loopexit196:                                     ; preds = %bb.s, %_ZN11hb_buffer_t6ensureEj.exit.i169, %bb.ar, %bb.av
  %.4120.ph.shrunk = phi i16 [ %i.de, %bb.av ], [ %i.de, %bb.ar ], [ %i.de, %_ZN11hb_buffer_t6ensureEj.exit.i169 ], [ 0, %bb.s ]
  %.4115.ph = phi ptr [ %.3114, %bb.av ], [ %.3114, %bb.ar ], [ %.3114, %_ZN11hb_buffer_t6ensureEj.exit.i169 ], [ %.2105, %bb.s ]
  %.4120.ph = zext i16 %.4120.ph.shrunk to i32
  %i.av = load i8, ptr %i.ai, align 8, !tbaa !496, !range !220, !noundef !74
end_hunk_23
begin_hunk_24_@_ZNK3AAT6LookupIN2OT11HBGlyphID16EE9get_valueEjj:bb.a
  %.not.i.i.i.i = icmp eq i16 %i.i, 0
  %.pre.i.i = load i16, ptr %i.f, align 1, !tbaa !62 ; 2 uses
  br i1 %.not.i.i.i.i, label %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit_crit_edge.i.i, label %bb.d, !prof !48

._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit_crit_edge.i.i: ; preds = %bb.c
  %.pre7.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i) ; 2 uses
  %.pre8.i.i = zext i16 %.pre7.i.i to i64
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = zext i16 %i.j to i64
  %i.l = add nuw nsw i64 %i.k, 4294967295
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i) ; 3 uses
  %i.n = zext i16 %i.m to i64                     ; 3 uses
  %i.o = mul nuw nsw i64 %i.l, %i.n
  %i.p = and i64 %i.o, 4294967295
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.p ; 2 uses
  %i.r = load i16, ptr %i.q, align 1, !tbaa !62
  %.not9.i.i.i.i = icmp eq i16 %i.r, -1
  br i1 %.not9.i.i.i.i, label %bb.e, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.t = load i16, ptr %i.s, align 1, !tbaa !62
  %.not9.1.i.i.i.i = icmp eq i16 %i.t, -1
  %i.u = sext i1 %.not9.1.i.i.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i: ; preds = %bb.e, %bb.d, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit_crit_edge.i.i
  %.pre-phi9.i.i = phi i64 [ %.pre8.i.i, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.n, %bb.d ], [ %i.n, %bb.e ]
  %.pre-phi.i.i = phi i16 [ %.pre7.i.i, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.m, %bb.d ], [ %i.m, %bb.e ]
  %.2.i.i.i.i = phi i32 [ 0, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit_crit_edge.i.i ], [ 0, %bb.d ], [ %i.u, %bb.e ]
  %i.v = zext i16 %i.j to i32
  %i.w = add nsw i32 %.2.i.i.i.i, %i.v            ; 2 uses
  %i.x = zext i16 %.pre-phi.i.i to i32
  %.not29.i.i.i = icmp sgt i32 %i.w, 0
  br i1 %.not29.i.i.i, label %.lr.ph.preheader.i.i.i, label %_ZNK3AAT13LookupFormat2IN2OT11HBGlyphID16EE9get_valueEj.exit

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i
  %i.y = add nsw i32 %i.w, -1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.preheader.i.i.i
  %.02031.i.i.i = phi i32 [ %.2.i.i.i, %bb.g ], [ %i.y, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.02130.i.i.i = phi i32 [ %.223.i.i.i, %bb.g ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.z = add i32 %.02130.i.i.i, %.02031.i.i.i
  %i.aa = lshr i32 %i.z, 1                        ; 4 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = mul nuw nsw i64 %.pre-phi9.i.i, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.af = load i16, ptr %i.ae, align 1, !tbaa !62
  %i.ag = tail call noundef i16 @llvm.bswap.i16(i16 %i.af)
  %i.ah = zext i16 %i.ag to i32
  %i.ai = icmp ult i32 %1, %i.ah
  br i1 %i.ai, label %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT11HBGlyphID16EEEJEEiPKvS6_DpT1_.exit.thread.i.i, label %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT11HBGlyphID16EEEJEEiPKvS6_DpT1_.exit.i.i

_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT11HBGlyphID16EEEJEEiPKvS6_DpT1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.aj = load i16, ptr %i.ad, align 1, !tbaa !62
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %i.aj)
  %i.al = zext i16 %i.ak to i32
  %.not.i.i2.not.i.i = icmp ugt i32 %1, %i.al
  br i1 %.not.i.i2.not.i.i, label %bb.f, label %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i

_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT11HBGlyphID16EEEJEEiPKvS6_DpT1_.exit.thread.i.i: ; preds = %.lr.ph.i.i.i
  %i.am = add nsw i32 %i.aa, -1
  br label %bb.g

bb.f:                                             ; preds = %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT11HBGlyphID16EEEJEEiPKvS6_DpT1_.exit.i.i
  %i.an = add nuw nsw i32 %i.aa, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT11HBGlyphID16EEEJEEiPKvS6_DpT1_.exit.thread.i.i
  %.223.i.i.i = phi i32 [ %i.an, %bb.f ], [ %.02130.i.i.i, %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT11HBGlyphID16EEEJEEiPKvS6_DpT1_.exit.thread.i.i ] ; 2 uses
  %.2.i.i.i = phi i32 [ %.02031.i.i.i, %bb.f ], [ %i.am, %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT11HBGlyphID16EEEJEEiPKvS6_DpT1_.exit.thread.i.i ] ; 2 uses
  %.not.not.i.i.i = icmp sgt i32 %.223.i.i.i, %.2.i.i.i
  br i1 %.not.not.i.i.i, label %_ZNK3AAT13LookupFormat2IN2OT11HBGlyphID16EE9get_valueEj.exit, label %.lr.ph.i.i.i, !llvm.loop !5465

_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i: ; preds = %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT11HBGlyphID16EEEJEEiPKvS6_DpT1_.exit.i.i
  %i.ao = mul i32 %i.aa, %i.x
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ap
  br label %_ZNK3AAT13LookupFormat2IN2OT11HBGlyphID16EE9get_valueEj.exit

_ZNK3AAT13LookupFormat2IN2OT11HBGlyphID16EE9get_valueEj.exit: ; preds = %bb.g, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i, %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i
  %i.ar = phi ptr [ %i.aq, %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i ], [ null, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i ], [ null, %bb.g ] ; 2 uses
  %.not.i7 = icmp eq ptr %i.ar, null
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = select i1 %.not.i7, ptr null, ptr %i.as
  br label %_ZNK3AAT13LookupFormat4IN2OT11HBGlyphID16EE9get_valueEj.exit

bb.h:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !62 ; 2 uses
  %i.ay = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax) ; 2 uses
  %.not.i.i.i.i8 = icmp eq i16 %i.ax, 0
  %.pre.i.i9 = load i16, ptr %i.au, align 1, !tbaa !62 ; 2 uses
  br i1 %.not.i.i.i.i8, label %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit_crit_edge.i.i, label %bb.i, !prof !48

._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit_crit_edge.i.i: ; preds = %bb.h
  %.pre7.i.i24 = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i9) ; 2 uses
  %.pre8.i.i25 = zext i16 %.pre7.i.i24 to i64
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.az = zext i16 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.az, 4294967295
  %i.bb = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i9) ; 3 uses
  %i.bc = zext i16 %i.bb to i64                   ; 3 uses
  %i.bd = mul nuw nsw i64 %i.ba, %i.bc
  %i.be = and i64 %i.bd, 4294967295
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.be ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 1, !tbaa !62
  %.not9.i.i.i.i10 = icmp eq i16 %i.bg, -1
  br i1 %.not9.i.i.i.i10, label %bb.j, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bi = load i16, ptr %i.bh, align 1, !tbaa !62
  %.not9.1.i.i.i.i23 = icmp eq i16 %i.bi, -1
  %i.bj = sext i1 %.not9.1.i.i.i.i23 to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i: ; preds = %bb.j, %bb.i, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit_crit_edge.i.i
  %.pre-phi9.i.i11 = phi i64 [ %.pre8.i.i25, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.bc, %bb.i ], [ %i.bc, %bb.j ]
  %.pre-phi.i.i12 = phi i16 [ %.pre7.i.i24, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.bb, %bb.i ], [ %i.bb, %bb.j ]
  %.2.i.i.i.i13 = phi i32 [ 0, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit_crit_edge.i.i ], [ 0, %bb.i ], [ %i.bj, %bb.j ]
  %i.bk = zext i16 %i.ay to i32
  %i.bl = add nsw i32 %.2.i.i.i.i13, %i.bk        ; 2 uses
  %i.bm = zext i16 %.pre-phi.i.i12 to i32
  %.not29.i.i.i14 = icmp sgt i32 %i.bl, 0
  br i1 %.not29.i.i.i14, label %.lr.ph.preheader.i.i.i15, label %_ZNK3AAT13LookupFormat4IN2OT11HBGlyphID16EE9get_valueEj.exit

.lr.ph.preheader.i.i.i15:                         ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i
  %i.bn = add nsw i32 %i.bl, -1
  br label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %bb.l, %.lr.ph.preheader.i.i.i15
  %.02031.i.i.i17 = phi i32 [ %.2.i.i.i21, %bb.l ], [ %i.bn, %.lr.ph.preheader.i.i.i15 ] ; 2 uses
  %.02130.i.i.i18 = phi i32 [ %.223.i.i.i20, %bb.l ], [ 0, %.lr.ph.preheader.i.i.i15 ] ; 2 uses
  %i.bo = add i32 %.02130.i.i.i18, %.02031.i.i.i17
  %i.bp = lshr i32 %i.bo, 1                       ; 4 uses
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = mul nuw nsw i64 %.pre-phi9.i.i11, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.bu = load i16, ptr %i.bt, align 1, !tbaa !62
  %i.bv = tail call noundef i16 @llvm.bswap.i16(i16 %i.bu)
  %i.bw = zext i16 %i.bv to i32
  %i.bx = icmp ult i32 %1, %i.bw
  br i1 %i.bx, label %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EEEJEEiPKvS6_DpT1_.exit.thread.i.i, label %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EEEJEEiPKvS6_DpT1_.exit.i.i

_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EEEJEEiPKvS6_DpT1_.exit.i.i: ; preds = %.lr.ph.i.i.i16
  %i.by = load i16, ptr %i.bs, align 1, !tbaa !62
  %i.bz = tail call noundef i16 @llvm.bswap.i16(i16 %i.by)
  %i.ca = zext i16 %i.bz to i32
  %.not.i.i2.not.i.i19 = icmp ugt i32 %1, %i.ca
  br i1 %.not.i.i2.not.i.i19, label %bb.k, label %bb.m

_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EEEJEEiPKvS6_DpT1_.exit.thread.i.i: ; preds = %.lr.ph.i.i.i16
  %i.cb = add nsw i32 %i.bp, -1
  br label %bb.l

bb.k:                                             ; preds = %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EEEJEEiPKvS6_DpT1_.exit.i.i
  %i.cc = add nuw nsw i32 %i.bp, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EEEJEEiPKvS6_DpT1_.exit.thread.i.i
  %.223.i.i.i20 = phi i32 [ %i.cc, %bb.k ], [ %.02130.i.i.i18, %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EEEJEEiPKvS6_DpT1_.exit.thread.i.i ] ; 2 uses
  %.2.i.i.i21 = phi i32 [ %.02031.i.i.i17, %bb.k ], [ %i.cb, %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EEEJEEiPKvS6_DpT1_.exit.thread.i.i ] ; 2 uses
  %.not.not.i.i.i22 = icmp sgt i32 %.223.i.i.i20, %.2.i.i.i21
  br i1 %.not.not.i.i.i22, label %_ZNK3AAT13LookupFormat4IN2OT11HBGlyphID16EE9get_valueEj.exit, label %.lr.ph.i.i.i16, !llvm.loop !5465

bb.m:                                             ; preds = %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EEEJEEiPKvS6_DpT1_.exit.i.i
  %i.cd = mul i32 %i.bp, %i.bm
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ce ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  %i.ch = load i16, ptr %i.cg, align 1, !tbaa !62
  %i.ci = tail call noundef i16 @llvm.bswap.i16(i16 %i.ch)
  %i.cj = zext i16 %i.ci to i32                   ; 2 uses
  %.not.i.i = icmp samesign ult i32 %1, %i.cj
  br i1 %.not.i.i, label %_ZNK3AAT13LookupFormat4IN2OT11HBGlyphID16EE9get_valueEj.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = load i16, ptr %i.cf, align 1, !tbaa !62
  %i.cl = tail call noundef i16 @llvm.bswap.i16(i16 %i.ck)
  %i.cm = zext i16 %i.cl to i32
  %.not3.i.i = icmp samesign ugt i32 %1, %i.cm
  br i1 %.not3.i.i, label %_ZNK3AAT13LookupFormat4IN2OT11HBGlyphID16EE9get_valueEj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.co = load i16, ptr %i.cn, align 1, !tbaa !62
  %i.cp = tail call noundef i16 @llvm.bswap.i16(i16 %i.co)
  %i.cq = zext i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %i.cq
  %i.cs = sub nuw nsw i32 %1, %i.cj
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.ct
  br label %_ZNK3AAT13LookupFormat4IN2OT11HBGlyphID16EE9get_valueEj.exit

bb.p:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cy = load i16, ptr %i.cx, align 1, !tbaa !62 ; 2 uses
  %i.cz = tail call noundef i16 @llvm.bswap.i16(i16 %i.cy) ; 2 uses
  %.not.i.i.i.i26 = icmp eq i16 %i.cy, 0
  %.pre.i.i27 = load i16, ptr %i.cv, align 1, !tbaa !62 ; 2 uses
  br i1 %.not.i.i.i.i26, label %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit_crit_edge.i.i, label %bb.q, !prof !48

._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit_crit_edge.i.i: ; preds = %bb.p
  %.pre6.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i27) ; 2 uses
  %.pre7.i.i40 = zext i16 %.pre6.i.i to i64
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.da = zext i16 %i.cz to i64
  %i.db = add nuw nsw i64 %i.da, 4294967295
  %i.dc = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i27) ; 2 uses
  %i.dd = zext i16 %i.dc to i64                   ; 2 uses
  %i.de = mul nuw nsw i64 %i.db, %i.dd
  %i.df = and i64 %i.de, 4294967295
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 1, !tbaa !62
  %.not9.not.i.i.i.i = icmp eq i16 %i.dh, -1
  %i.di = sext i1 %.not9.not.i.i.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i: ; preds = %bb.q, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit_crit_edge.i.i
  %.pre-phi8.i.i = phi i64 [ %.pre7.i.i40, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.dd, %bb.q ]
  %.pre-phi.i.i28 = phi i16 [ %.pre6.i.i, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.dc, %bb.q ]
  %.2.i.i.i.i29 = phi i32 [ 0, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.di, %bb.q ]
  %i.dj = zext i16 %i.cz to i32
  %i.dk = add nsw i32 %.2.i.i.i.i29, %i.dj        ; 2 uses
  %i.dl = zext i16 %.pre-phi.i.i28 to i32
  %.not29.i.i.i30 = icmp sgt i32 %i.dk, 0
  br i1 %.not29.i.i.i30, label %.lr.ph.preheader.i.i.i32, label %_ZNK3AAT13LookupFormat6IN2OT11HBGlyphID16EE9get_valueEj.exit

.lr.ph.preheader.i.i.i32:                         ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i
  %i.dm = add nsw i32 %i.dk, -1
  br label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %bb.u, %.lr.ph.preheader.i.i.i32
  %.02031.i.i.i34 = phi i32 [ %.2.i.i.i37, %bb.u ], [ %i.dm, %.lr.ph.preheader.i.i.i32 ] ; 2 uses
  %.02130.i.i.i35 = phi i32 [ %.223.i.i.i36, %bb.u ], [ 0, %.lr.ph.preheader.i.i.i32 ] ; 2 uses
  %i.dn = add i32 %.02130.i.i.i35, %.02031.i.i.i34
  %i.do = lshr i32 %i.dn, 1                       ; 4 uses
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = mul nuw nsw i64 %.pre-phi8.i.i, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 1, !tbaa !62
  %i.dt = tail call noundef i16 @llvm.bswap.i16(i16 %i.ds)
  %i.du = zext i16 %i.dt to i32                   ; 2 uses
  %i.dv = icmp ult i32 %1, %i.du
  br i1 %i.dv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i.i33
  %i.dw = add nsw i32 %i.do, -1
  br label %bb.u

bb.s:                                             ; preds = %.lr.ph.i.i.i33
  %.not28.i.i.i = icmp eq i32 %1, %i.du
  br i1 %.not28.i.i.i, label %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i39, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dx = add nuw nsw i32 %i.do, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.223.i.i.i36 = phi i32 [ %i.dx, %bb.t ], [ %.02130.i.i.i35, %bb.r ] ; 2 uses
  %.2.i.i.i37 = phi i32 [ %.02031.i.i.i34, %bb.t ], [ %i.dw, %bb.r ] ; 2 uses
  %.not.not.i.i.i38 = icmp sgt i32 %.223.i.i.i36, %.2.i.i.i37
  br i1 %.not.not.i.i.i38, label %_ZNK3AAT13LookupFormat6IN2OT11HBGlyphID16EE9get_valueEj.exit, label %.lr.ph.i.i.i33, !llvm.loop !5465

_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i39: ; preds = %bb.s
  %i.dy = mul i32 %i.do, %i.dl
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dz
  br label %_ZNK3AAT13LookupFormat6IN2OT11HBGlyphID16EE9get_valueEj.exit

_ZNK3AAT13LookupFormat6IN2OT11HBGlyphID16EE9get_valueEj.exit: ; preds = %bb.u, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i, %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i39
  %i.eb = phi ptr [ %i.ea, %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i39 ], [ null, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i ], [ null, %bb.u ] ; 2 uses
  %.not.i31 = icmp eq ptr %i.eb, null
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %i.ed = select i1 %.not.i31, ptr null, ptr %i.ec
  br label %_ZNK3AAT13LookupFormat4IN2OT11HBGlyphID16EE9get_valueEj.exit

bb.v:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ef = load i16, ptr %i.ee, align 1, !tbaa !62
  %i.eg = tail call noundef i16 @llvm.bswap.i16(i16 %i.ef)
  %i.eh = zext i16 %i.eg to i32                   ; 2 uses
  %.not.i41 = icmp ult i32 %1, %i.eh
  br i1 %.not.i41, label %_ZNK3AAT13LookupFormat4IN2OT11HBGlyphID16EE9get_valueEj.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ei = sub nuw i32 %1, %i.eh                   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ek = load i16, ptr %i.ej, align 1, !tbaa !62
  %i.el = tail call noundef i16 @llvm.bswap.i16(i16 %i.ek)
  %i.em = zext i16 %i.el to i32
  %i.en = icmp ult i32 %i.ei, %i.em
  br i1 %i.en, label %bb.x, label %_ZNK3AAT13LookupFormat4IN2OT11HBGlyphID16EE9get_valueEj.exit

bb.x:                                             ; preds = %bb.w
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ep = zext nneg i32 %i.ei to i64
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.ep
  br label %_ZNK3AAT13LookupFormat4IN2OT11HBGlyphID16EE9get_valueEj.exit

_ZNK3AAT13LookupFormat4IN2OT11HBGlyphID16EE9get_valueEj.exit: ; preds = %bb.l, %bb.x, %bb.w, %bb.v, %bb.o, %bb.n, %bb.m, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i, %bb.a, %_ZNK3AAT13LookupFormat6IN2OT11HBGlyphID16EE9get_valueEj.exit, %_ZNK3AAT13LookupFormat2IN2OT11HBGlyphID16EE9get_valueEj.exit, %bb.b
  %.0 = phi ptr [ null, %bb.v ], [ %.0.i, %bb.b ], [ %i.at, %_ZNK3AAT13LookupFormat2IN2OT11HBGlyphID16EE9get_valueEj.exit ], [ null, %bb.a ], [ %i.ed, %_ZNK3AAT13LookupFormat6IN2OT11HBGlyphID16EE9get_valueEj.exit ], [ null, %bb.m ], [ %i.cu, %bb.o ], [ null, %bb.n ], [ null, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i ], [ %i.eq, %bb.x ], [ null, %bb.w ], [ null, %bb.l ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3AAT16StateTableDriverINS_13ExtendedTypesENS_13LigatureEntryILb1EE9EntryDataENS_16LigatureSubtableIS1_E5FlagsEE5driveINS6_16driver_context_tEEEvPT_PNS_22hb_aat_apply_context_tE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !348  ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 89 ; 6 uses
  store i8 1, ptr %i.c, align 1, !tbaa !577
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 90
  store i8 0, ptr %i.d, align 2, !tbaa !575
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 17 uses
  store i32 0, ptr %i.e, align 4, !tbaa !630
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 15 uses
  store i32 0, ptr %i.f, align 4, !tbaa !578
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 13 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !499
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 9 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !579
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !513  ; 3 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !391
  %i.n = icmp ugt i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !5473, !nonnull !74 ; 5 uses
  %i.s = load i32, ptr %i.r, align 1, !tbaa !58
  %.not.i133.not = icmp eq i32 %i.s, 0
  br i1 %.not.i133.not, label %bb.e, label %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_13LigatureEntryILb1EE9EntryDataEE9get_entryEij.exit, !prof !48

bb.e:                                             ; preds = %bb.d
  br label %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_13LigatureEntryILb1EE9EntryDataEE9get_entryEij.exit

_ZNK3AAT10StateTableINS_13ExtendedTypesENS_13LigatureEntryILb1EE9EntryDataEE9get_entryEij.exit: ; preds = %bb.d, %bb.e
  %.0.i134 = phi i64 [ 1, %bb.e ], [ 0, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 1, !tbaa !58
  %i.v = tail call noundef i32 @llvm.bswap.i32(i32 %i.u)
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.z = load i32, ptr %i.y, align 1, !tbaa !58
  %i.aa = tail call noundef i32 @llvm.bswap.i32(i32 %i.z)
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %.0.i134
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !62
  %i.af = tail call noundef i16 @llvm.bswap.i16(i16 %i.ae)
  %i.ag = zext i16 %i.af to i64
  %i.ah = getelementptr inbounds nuw [6 x i8], ptr %i.ac, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.aj = load i16, ptr %i.ai, align 1, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 6 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !496, !range !220, !noundef !74
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.lr.ph207, label %_ZN11hb_buffer_t10next_glyphEv.exit173.thread.thread, !prof !383

.lr.ph207:                                        ; preds = %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_13LigatureEntryILb1EE9EntryDataEE9get_entryEij.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  br label %bb.f

.loopexit198:                                     ; preds = %bb.s, %_ZN11hb_buffer_t6ensureEj.exit.i166, %bb.ar, %bb.av
  %.4122.ph.shrunk = phi i16 [ %i.dc, %bb.av ], [ %i.dc, %bb.ar ], [ %i.dc, %_ZN11hb_buffer_t6ensureEj.exit.i166 ], [ 0, %bb.s ]
  %.4117.ph = phi ptr [ %.3116, %bb.av ], [ %.3116, %bb.ar ], [ %.3116, %_ZN11hb_buffer_t6ensureEj.exit.i166 ], [ %.2107, %bb.s ]
  %.4122.ph = zext i16 %.4122.ph.shrunk to i32
end_hunk_24
begin_hunk_25_@_ZNK3AAT6LookupIN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEjj:bb.a
  %.not.i.i.i.i = icmp eq i16 %i.i, 0
  %.pre.i.i = load i16, ptr %i.f, align 1, !tbaa !62 ; 2 uses
  br i1 %.not.i.i.i.i, label %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit_crit_edge.i.i, label %bb.d, !prof !48

._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit_crit_edge.i.i: ; preds = %bb.c
  %.pre7.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i) ; 2 uses
  %.pre8.i.i = zext i16 %.pre7.i.i to i64
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = zext i16 %i.j to i64
  %i.l = add nuw nsw i64 %i.k, 4294967295
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i) ; 3 uses
  %i.n = zext i16 %i.m to i64                     ; 3 uses
  %i.o = mul nuw nsw i64 %i.l, %i.n
  %i.p = and i64 %i.o, 4294967295
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.p ; 2 uses
  %i.r = load i16, ptr %i.q, align 1, !tbaa !62
  %.not9.i.i.i.i = icmp eq i16 %i.r, -1
  br i1 %.not9.i.i.i.i, label %bb.e, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.t = load i16, ptr %i.s, align 1, !tbaa !62
  %.not9.1.i.i.i.i = icmp eq i16 %i.t, -1
  %i.u = sext i1 %.not9.1.i.i.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i.i: ; preds = %bb.e, %bb.d, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit_crit_edge.i.i
  %.pre-phi9.i.i = phi i64 [ %.pre8.i.i, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.n, %bb.d ], [ %i.n, %bb.e ]
  %.pre-phi.i.i = phi i16 [ %.pre7.i.i, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.m, %bb.d ], [ %i.m, %bb.e ]
  %.2.i.i.i.i = phi i32 [ 0, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ 0, %bb.d ], [ %i.u, %bb.e ]
  %i.v = zext i16 %i.j to i32
  %i.w = add nsw i32 %.2.i.i.i.i, %i.v            ; 2 uses
  %i.x = zext i16 %.pre-phi.i.i to i32
  %.not29.i.i.i = icmp sgt i32 %i.w, 0
  br i1 %.not29.i.i.i, label %.lr.ph.preheader.i.i.i, label %_ZNK3AAT13LookupFormat2IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEj.exit

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i.i
  %i.y = add nsw i32 %i.w, -1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.preheader.i.i.i
  %.02031.i.i.i = phi i32 [ %.2.i.i.i, %bb.g ], [ %i.y, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.02130.i.i.i = phi i32 [ %.223.i.i.i, %bb.g ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.z = add i32 %.02130.i.i.i, %.02031.i.i.i
  %i.aa = lshr i32 %i.z, 1                        ; 4 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = mul nuw nsw i64 %.pre-phi9.i.i, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.af = load i16, ptr %i.ae, align 1, !tbaa !62
  %i.ag = tail call noundef i16 @llvm.bswap.i16(i16 %i.af)
  %i.ah = zext i16 %i.ag to i32
  %i.ai = icmp ult i32 %1, %i.ah
  br i1 %i.ai, label %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT8OffsetToINS2_7ArrayOfINS0_6AnchorENS2_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEJEEiPKvSD_DpT1_.exit.thread.i.i, label %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT8OffsetToINS2_7ArrayOfINS0_6AnchorENS2_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEJEEiPKvSD_DpT1_.exit.i.i

_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT8OffsetToINS2_7ArrayOfINS0_6AnchorENS2_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEJEEiPKvSD_DpT1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.aj = load i16, ptr %i.ad, align 1, !tbaa !62
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %i.aj)
  %i.al = zext i16 %i.ak to i32
  %.not.i.i2.not.i.i = icmp ugt i32 %1, %i.al
  br i1 %.not.i.i2.not.i.i, label %bb.f, label %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i

_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT8OffsetToINS2_7ArrayOfINS0_6AnchorENS2_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEJEEiPKvSD_DpT1_.exit.thread.i.i: ; preds = %.lr.ph.i.i.i
  %i.am = add nsw i32 %i.aa, -1
  br label %bb.g

bb.f:                                             ; preds = %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT8OffsetToINS2_7ArrayOfINS0_6AnchorENS2_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEJEEiPKvSD_DpT1_.exit.i.i
  %i.an = add nuw nsw i32 %i.aa, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT8OffsetToINS2_7ArrayOfINS0_6AnchorENS2_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEJEEiPKvSD_DpT1_.exit.thread.i.i
  %.223.i.i.i = phi i32 [ %i.an, %bb.f ], [ %.02130.i.i.i, %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT8OffsetToINS2_7ArrayOfINS0_6AnchorENS2_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEJEEiPKvSD_DpT1_.exit.thread.i.i ] ; 2 uses
  %.2.i.i.i = phi i32 [ %.02031.i.i.i, %bb.f ], [ %i.am, %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT8OffsetToINS2_7ArrayOfINS0_6AnchorENS2_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEJEEiPKvSD_DpT1_.exit.thread.i.i ] ; 2 uses
  %.not.not.i.i.i = icmp sgt i32 %.223.i.i.i, %.2.i.i.i
  br i1 %.not.not.i.i.i, label %_ZNK3AAT13LookupFormat2IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEj.exit, label %.lr.ph.i.i.i, !llvm.loop !5465

_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i: ; preds = %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT8OffsetToINS2_7ArrayOfINS0_6AnchorENS2_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEJEEiPKvSD_DpT1_.exit.i.i
  %i.ao = mul i32 %i.aa, %i.x
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ap
  br label %_ZNK3AAT13LookupFormat2IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEj.exit

_ZNK3AAT13LookupFormat2IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEj.exit: ; preds = %bb.g, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i.i, %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i
  %i.ar = phi ptr [ %i.aq, %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i ], [ null, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i.i ], [ null, %bb.g ] ; 2 uses
  %.not.i7 = icmp eq ptr %i.ar, null
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = select i1 %.not.i7, ptr null, ptr %i.as
  br label %_ZNK3AAT13LookupFormat4IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEj.exit

bb.h:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !62 ; 2 uses
  %i.ay = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax) ; 2 uses
  %.not.i.i.i.i8 = icmp eq i16 %i.ax, 0
  %.pre.i.i9 = load i16, ptr %i.au, align 1, !tbaa !62 ; 2 uses
  br i1 %.not.i.i.i.i8, label %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit_crit_edge.i.i, label %bb.i, !prof !48

._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit_crit_edge.i.i: ; preds = %bb.h
  %.pre7.i.i24 = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i9) ; 2 uses
  %.pre8.i.i25 = zext i16 %.pre7.i.i24 to i64
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.az = zext i16 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.az, 4294967295
  %i.bb = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i9) ; 3 uses
  %i.bc = zext i16 %i.bb to i64                   ; 3 uses
  %i.bd = mul nuw nsw i64 %i.ba, %i.bc
  %i.be = and i64 %i.bd, 4294967295
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.be ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 1, !tbaa !62
  %.not9.i.i.i.i10 = icmp eq i16 %i.bg, -1
  br i1 %.not9.i.i.i.i10, label %bb.j, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bi = load i16, ptr %i.bh, align 1, !tbaa !62
  %.not9.1.i.i.i.i23 = icmp eq i16 %i.bi, -1
  %i.bj = sext i1 %.not9.1.i.i.i.i23 to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i.i: ; preds = %bb.j, %bb.i, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit_crit_edge.i.i
  %.pre-phi9.i.i11 = phi i64 [ %.pre8.i.i25, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.bc, %bb.i ], [ %i.bc, %bb.j ]
  %.pre-phi.i.i12 = phi i16 [ %.pre7.i.i24, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.bb, %bb.i ], [ %i.bb, %bb.j ]
  %.2.i.i.i.i13 = phi i32 [ 0, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ 0, %bb.i ], [ %i.bj, %bb.j ]
  %i.bk = zext i16 %i.ay to i32
  %i.bl = add nsw i32 %.2.i.i.i.i13, %i.bk        ; 2 uses
  %i.bm = zext i16 %.pre-phi.i.i12 to i32
  %.not29.i.i.i14 = icmp sgt i32 %i.bl, 0
  br i1 %.not29.i.i.i14, label %.lr.ph.preheader.i.i.i15, label %_ZNK3AAT13LookupFormat4IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEj.exit

.lr.ph.preheader.i.i.i15:                         ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i.i
  %i.bn = add nsw i32 %i.bl, -1
  br label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %bb.l, %.lr.ph.preheader.i.i.i15
  %.02031.i.i.i17 = phi i32 [ %.2.i.i.i21, %bb.l ], [ %i.bn, %.lr.ph.preheader.i.i.i15 ] ; 2 uses
  %.02130.i.i.i18 = phi i32 [ %.223.i.i.i20, %bb.l ], [ 0, %.lr.ph.preheader.i.i.i15 ] ; 2 uses
  %i.bo = add i32 %.02130.i.i.i18, %.02031.i.i.i17
  %i.bp = lshr i32 %i.bo, 1                       ; 4 uses
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = mul nuw nsw i64 %.pre-phi9.i.i11, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.bu = load i16, ptr %i.bt, align 1, !tbaa !62
  %i.bv = tail call noundef i16 @llvm.bswap.i16(i16 %i.bu)
  %i.bw = zext i16 %i.bv to i32
  %i.bx = icmp ult i32 %1, %i.bw
  br i1 %i.bx, label %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT8OffsetToINS2_7ArrayOfINS0_6AnchorENS2_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEJEEiPKvSD_DpT1_.exit.thread.i.i, label %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT8OffsetToINS2_7ArrayOfINS0_6AnchorENS2_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEJEEiPKvSD_DpT1_.exit.i.i

_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT8OffsetToINS2_7ArrayOfINS0_6AnchorENS2_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEJEEiPKvSD_DpT1_.exit.i.i: ; preds = %.lr.ph.i.i.i16
  %i.by = load i16, ptr %i.bs, align 1, !tbaa !62
  %i.bz = tail call noundef i16 @llvm.bswap.i16(i16 %i.by)
  %i.ca = zext i16 %i.bz to i32
  %.not.i.i2.not.i.i19 = icmp ugt i32 %1, %i.ca
  br i1 %.not.i.i2.not.i.i19, label %bb.k, label %bb.m

_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT8OffsetToINS2_7ArrayOfINS0_6AnchorENS2_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEJEEiPKvSD_DpT1_.exit.thread.i.i: ; preds = %.lr.ph.i.i.i16
  %i.cb = add nsw i32 %i.bp, -1
  br label %bb.l

bb.k:                                             ; preds = %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT8OffsetToINS2_7ArrayOfINS0_6AnchorENS2_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEJEEiPKvSD_DpT1_.exit.i.i
  %i.cc = add nuw nsw i32 %i.bp, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT8OffsetToINS2_7ArrayOfINS0_6AnchorENS2_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEJEEiPKvSD_DpT1_.exit.thread.i.i
  %.223.i.i.i20 = phi i32 [ %i.cc, %bb.k ], [ %.02130.i.i.i18, %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT8OffsetToINS2_7ArrayOfINS0_6AnchorENS2_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEJEEiPKvSD_DpT1_.exit.thread.i.i ] ; 2 uses
  %.2.i.i.i21 = phi i32 [ %.02031.i.i.i17, %bb.k ], [ %i.cb, %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT8OffsetToINS2_7ArrayOfINS0_6AnchorENS2_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEJEEiPKvSD_DpT1_.exit.thread.i.i ] ; 2 uses
  %.not.not.i.i.i22 = icmp sgt i32 %.223.i.i.i20, %.2.i.i.i21
  br i1 %.not.not.i.i.i22, label %_ZNK3AAT13LookupFormat4IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEj.exit, label %.lr.ph.i.i.i16, !llvm.loop !5465

bb.m:                                             ; preds = %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT8OffsetToINS2_7ArrayOfINS0_6AnchorENS2_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEJEEiPKvSD_DpT1_.exit.i.i
  %i.cd = mul i32 %i.bp, %i.bm
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ce ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  %i.ch = load i16, ptr %i.cg, align 1, !tbaa !62
  %i.ci = tail call noundef i16 @llvm.bswap.i16(i16 %i.ch)
  %i.cj = zext i16 %i.ci to i32                   ; 2 uses
  %.not.i.i = icmp samesign ult i32 %1, %i.cj
  br i1 %.not.i.i, label %_ZNK3AAT13LookupFormat4IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEj.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = load i16, ptr %i.cf, align 1, !tbaa !62
  %i.cl = tail call noundef i16 @llvm.bswap.i16(i16 %i.ck)
  %i.cm = zext i16 %i.cl to i32
  %.not3.i.i = icmp samesign ugt i32 %1, %i.cm
  br i1 %.not3.i.i, label %_ZNK3AAT13LookupFormat4IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.co = load i16, ptr %i.cn, align 1, !tbaa !62
  %i.cp = tail call noundef i16 @llvm.bswap.i16(i16 %i.co)
  %i.cq = zext i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %i.cq
  %i.cs = sub nuw nsw i32 %1, %i.cj
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.ct
  br label %_ZNK3AAT13LookupFormat4IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEj.exit

bb.p:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cy = load i16, ptr %i.cx, align 1, !tbaa !62 ; 2 uses
  %i.cz = tail call noundef i16 @llvm.bswap.i16(i16 %i.cy) ; 2 uses
  %.not.i.i.i.i26 = icmp eq i16 %i.cy, 0
  %.pre.i.i27 = load i16, ptr %i.cv, align 1, !tbaa !62 ; 2 uses
  br i1 %.not.i.i.i.i26, label %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit_crit_edge.i.i, label %bb.q, !prof !48

._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit_crit_edge.i.i: ; preds = %bb.p
  %.pre6.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i27) ; 2 uses
  %.pre7.i.i40 = zext i16 %.pre6.i.i to i64
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.da = zext i16 %i.cz to i64
  %i.db = add nuw nsw i64 %i.da, 4294967295
  %i.dc = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i27) ; 2 uses
  %i.dd = zext i16 %i.dc to i64                   ; 2 uses
  %i.de = mul nuw nsw i64 %i.db, %i.dd
  %i.df = and i64 %i.de, 4294967295
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 1, !tbaa !62
  %.not9.not.i.i.i.i = icmp eq i16 %i.dh, -1
  %i.di = sext i1 %.not9.not.i.i.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i.i: ; preds = %bb.q, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit_crit_edge.i.i
  %.pre-phi8.i.i = phi i64 [ %.pre7.i.i40, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.dd, %bb.q ]
  %.pre-phi.i.i28 = phi i16 [ %.pre6.i.i, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.dc, %bb.q ]
  %.2.i.i.i.i29 = phi i32 [ 0, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.di, %bb.q ]
  %i.dj = zext i16 %i.cz to i32
  %i.dk = add nsw i32 %.2.i.i.i.i29, %i.dj        ; 2 uses
  %i.dl = zext i16 %.pre-phi.i.i28 to i32
  %.not29.i.i.i30 = icmp sgt i32 %i.dk, 0
  br i1 %.not29.i.i.i30, label %.lr.ph.preheader.i.i.i32, label %_ZNK3AAT13LookupFormat6IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEj.exit

.lr.ph.preheader.i.i.i32:                         ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i.i
  %i.dm = add nsw i32 %i.dk, -1
  br label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %bb.u, %.lr.ph.preheader.i.i.i32
  %.02031.i.i.i34 = phi i32 [ %.2.i.i.i37, %bb.u ], [ %i.dm, %.lr.ph.preheader.i.i.i32 ] ; 2 uses
  %.02130.i.i.i35 = phi i32 [ %.223.i.i.i36, %bb.u ], [ 0, %.lr.ph.preheader.i.i.i32 ] ; 2 uses
  %i.dn = add i32 %.02130.i.i.i35, %.02031.i.i.i34
  %i.do = lshr i32 %i.dn, 1                       ; 4 uses
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = mul nuw nsw i64 %.pre-phi8.i.i, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 1, !tbaa !62
  %i.dt = tail call noundef i16 @llvm.bswap.i16(i16 %i.ds)
  %i.du = zext i16 %i.dt to i32                   ; 2 uses
  %i.dv = icmp ult i32 %1, %i.du
  br i1 %i.dv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i.i33
  %i.dw = add nsw i32 %i.do, -1
  br label %bb.u

bb.s:                                             ; preds = %.lr.ph.i.i.i33
  %.not28.i.i.i = icmp eq i32 %1, %i.du
  br i1 %.not28.i.i.i, label %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i39, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dx = add nuw nsw i32 %i.do, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.223.i.i.i36 = phi i32 [ %i.dx, %bb.t ], [ %.02130.i.i.i35, %bb.r ] ; 2 uses
  %.2.i.i.i37 = phi i32 [ %.02031.i.i.i34, %bb.t ], [ %i.dw, %bb.r ] ; 2 uses
  %.not.not.i.i.i38 = icmp sgt i32 %.223.i.i.i36, %.2.i.i.i37
  br i1 %.not.not.i.i.i38, label %_ZNK3AAT13LookupFormat6IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEj.exit, label %.lr.ph.i.i.i33, !llvm.loop !5465

_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i39: ; preds = %bb.s
  %i.dy = mul i32 %i.do, %i.dl
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dz
  br label %_ZNK3AAT13LookupFormat6IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEj.exit

_ZNK3AAT13LookupFormat6IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEj.exit: ; preds = %bb.u, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i.i, %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i39
  %i.eb = phi ptr [ %i.ea, %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i39 ], [ null, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i.i ], [ null, %bb.u ] ; 2 uses
  %.not.i31 = icmp eq ptr %i.eb, null
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %i.ed = select i1 %.not.i31, ptr null, ptr %i.ec
  br label %_ZNK3AAT13LookupFormat4IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEj.exit

bb.v:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ef = load i16, ptr %i.ee, align 1, !tbaa !62
  %i.eg = tail call noundef i16 @llvm.bswap.i16(i16 %i.ef)
  %i.eh = zext i16 %i.eg to i32                   ; 2 uses
  %.not.i41 = icmp ult i32 %1, %i.eh
  br i1 %.not.i41, label %_ZNK3AAT13LookupFormat4IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEj.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ei = sub nuw i32 %1, %i.eh                   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ek = load i16, ptr %i.ej, align 1, !tbaa !62
  %i.el = tail call noundef i16 @llvm.bswap.i16(i16 %i.ek)
  %i.em = zext i16 %i.el to i32
  %i.en = icmp ult i32 %i.ei, %i.em
  br i1 %i.en, label %bb.x, label %_ZNK3AAT13LookupFormat4IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEj.exit

bb.x:                                             ; preds = %bb.w
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ep = zext nneg i32 %i.ei to i64
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.ep
  br label %_ZNK3AAT13LookupFormat4IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEj.exit

_ZNK3AAT13LookupFormat4IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEj.exit: ; preds = %bb.l, %bb.x, %bb.w, %bb.v, %bb.o, %bb.n, %bb.m, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i.i, %bb.a, %_ZNK3AAT13LookupFormat6IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEj.exit, %_ZNK3AAT13LookupFormat2IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEj.exit, %bb.b
  %.0 = phi ptr [ null, %bb.v ], [ %.0.i, %bb.b ], [ %i.at, %_ZNK3AAT13LookupFormat2IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEj.exit ], [ null, %bb.a ], [ %i.ed, %_ZNK3AAT13LookupFormat6IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE9get_valueEj.exit ], [ null, %bb.m ], [ %i.cu, %bb.o ], [ null, %bb.n ], [ null, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i.i ], [ %i.eq, %bb.x ], [ null, %bb.w ], [ null, %bb.l ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT17hb_kern_machine_tIN3AAT19KerxSubTableFormat6INS1_18KerxSubTableHeaderEE13accelerator_tEE4kernEP9hb_font_tP11hb_buffer_tjb(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"struct.OT::hb_ot_apply_context_t", align 8 ; 36 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %2, ptr noundef %1, ptr noundef nonnull @.str.107)
  br i1 %i.b, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !497
  %i.e = and i32 %i.d, 64
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %bb.c, !prof !49

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.h = load i32, ptr %i.g, align 8, !tbaa !139  ; 3 uses
  %.not79 = icmp eq i32 %i.h, 0
  br i1 %.not79, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !499  ; 5 uses
  %wide.trip.count.i = zext i32 %i.h to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.k = icmp ult i32 %i.h, 4
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.d ]
  %i.l = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !500
  %i.o = or i32 %i.n, 2
  store i32 %i.o, ptr %i.m, align 4, !tbaa !500
  %i.p = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !500
  %i.s = or i32 %i.r, 2
  store i32 %i.s, ptr %i.q, align 4, !tbaa !500
  %i.t = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 44 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !500
  %i.w = or i32 %i.v, 2
  store i32 %i.w, ptr %i.u, align 4, !tbaa !500
  %i.x = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !500
  %i.aa = or i32 %i.z, 2
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !500
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !502

_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa ]
  %lcmp.mod91 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod91)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ab = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i.epil
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !500
  %i.ae = or i32 %i.ad, 2
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !500
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
end_hunk_25
begin_hunk_26_@_ZNK3AAT6LookupIN2OT7NumTypeILb1EjLj4EEEE9get_valueEjj:bb.a
  %.not.i.i.i.i = icmp eq i16 %i.i, 0
  %.pre.i.i = load i16, ptr %i.f, align 1, !tbaa !62 ; 2 uses
  br i1 %.not.i.i.i.i, label %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit_crit_edge.i.i, label %bb.d, !prof !48

._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit_crit_edge.i.i: ; preds = %bb.c
  %.pre7.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i) ; 2 uses
  %.pre8.i.i = zext i16 %.pre7.i.i to i64
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = zext i16 %i.j to i64
  %i.l = add nuw nsw i64 %i.k, 4294967295
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i) ; 3 uses
  %i.n = zext i16 %i.m to i64                     ; 3 uses
  %i.o = mul nuw nsw i64 %i.l, %i.n
  %i.p = and i64 %i.o, 4294967295
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.p ; 2 uses
  %i.r = load i16, ptr %i.q, align 1, !tbaa !62
  %.not9.i.i.i.i = icmp eq i16 %i.r, -1
  br i1 %.not9.i.i.i.i, label %bb.e, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.t = load i16, ptr %i.s, align 1, !tbaa !62
  %.not9.1.i.i.i.i = icmp eq i16 %i.t, -1
  %i.u = sext i1 %.not9.1.i.i.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i: ; preds = %bb.e, %bb.d, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit_crit_edge.i.i
  %.pre-phi9.i.i = phi i64 [ %.pre8.i.i, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.n, %bb.d ], [ %i.n, %bb.e ]
  %.pre-phi.i.i = phi i16 [ %.pre7.i.i, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.m, %bb.d ], [ %i.m, %bb.e ]
  %.2.i.i.i.i = phi i32 [ 0, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ 0, %bb.d ], [ %i.u, %bb.e ]
  %i.v = zext i16 %i.j to i32
  %i.w = add nsw i32 %.2.i.i.i.i, %i.v            ; 2 uses
  %i.x = zext i16 %.pre-phi.i.i to i32
  %.not29.i.i.i = icmp sgt i32 %i.w, 0
  br i1 %.not29.i.i.i, label %.lr.ph.preheader.i.i.i, label %_ZNK3AAT13LookupFormat2IN2OT7NumTypeILb1EjLj4EEEE9get_valueEj.exit

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i
  %i.y = add nsw i32 %i.w, -1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.preheader.i.i.i
  %.02031.i.i.i = phi i32 [ %.2.i.i.i, %bb.g ], [ %i.y, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.02130.i.i.i = phi i32 [ %.223.i.i.i, %bb.g ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.z = add i32 %.02130.i.i.i, %.02031.i.i.i
  %i.aa = lshr i32 %i.z, 1                        ; 4 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = mul nuw nsw i64 %.pre-phi9.i.i, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.af = load i16, ptr %i.ae, align 1, !tbaa !62
  %i.ag = tail call noundef i16 @llvm.bswap.i16(i16 %i.af)
  %i.ah = zext i16 %i.ag to i32
  %i.ai = icmp ult i32 %1, %i.ah
  br i1 %i.ai, label %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EjLj4EEEEEJEEiPKvS7_DpT1_.exit.thread.i.i, label %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EjLj4EEEEEJEEiPKvS7_DpT1_.exit.i.i

_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EjLj4EEEEEJEEiPKvS7_DpT1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.aj = load i16, ptr %i.ad, align 1, !tbaa !62
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %i.aj)
  %i.al = zext i16 %i.ak to i32
  %.not.i.i2.not.i.i = icmp ugt i32 %1, %i.al
  br i1 %.not.i.i2.not.i.i, label %bb.f, label %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i

_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EjLj4EEEEEJEEiPKvS7_DpT1_.exit.thread.i.i: ; preds = %.lr.ph.i.i.i
  %i.am = add nsw i32 %i.aa, -1
  br label %bb.g

bb.f:                                             ; preds = %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EjLj4EEEEEJEEiPKvS7_DpT1_.exit.i.i
  %i.an = add nuw nsw i32 %i.aa, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EjLj4EEEEEJEEiPKvS7_DpT1_.exit.thread.i.i
  %.223.i.i.i = phi i32 [ %i.an, %bb.f ], [ %.02130.i.i.i, %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EjLj4EEEEEJEEiPKvS7_DpT1_.exit.thread.i.i ] ; 2 uses
  %.2.i.i.i = phi i32 [ %.02031.i.i.i, %bb.f ], [ %i.am, %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EjLj4EEEEEJEEiPKvS7_DpT1_.exit.thread.i.i ] ; 2 uses
  %.not.not.i.i.i = icmp sgt i32 %.223.i.i.i, %.2.i.i.i
  br i1 %.not.not.i.i.i, label %_ZNK3AAT13LookupFormat2IN2OT7NumTypeILb1EjLj4EEEE9get_valueEj.exit, label %.lr.ph.i.i.i, !llvm.loop !5465

_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i: ; preds = %_ZL14_hb_cmp_methodIjN3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EjLj4EEEEEJEEiPKvS7_DpT1_.exit.i.i
  %i.ao = mul i32 %i.aa, %i.x
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ap
  br label %_ZNK3AAT13LookupFormat2IN2OT7NumTypeILb1EjLj4EEEE9get_valueEj.exit

_ZNK3AAT13LookupFormat2IN2OT7NumTypeILb1EjLj4EEEE9get_valueEj.exit: ; preds = %bb.g, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i, %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i
  %i.ar = phi ptr [ %i.aq, %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i ], [ null, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i ], [ null, %bb.g ] ; 2 uses
  %.not.i7 = icmp eq ptr %i.ar, null
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = select i1 %.not.i7, ptr null, ptr %i.as
  br label %_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EjLj4EEEE9get_valueEj.exit

bb.h:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !62 ; 2 uses
  %i.ay = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax) ; 2 uses
  %.not.i.i.i.i8 = icmp eq i16 %i.ax, 0
  %.pre.i.i9 = load i16, ptr %i.au, align 1, !tbaa !62 ; 2 uses
  br i1 %.not.i.i.i.i8, label %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit_crit_edge.i.i, label %bb.i, !prof !48

._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit_crit_edge.i.i: ; preds = %bb.h
  %.pre7.i.i24 = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i9) ; 2 uses
  %.pre8.i.i25 = zext i16 %.pre7.i.i24 to i64
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.az = zext i16 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.az, 4294967295
  %i.bb = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i9) ; 3 uses
  %i.bc = zext i16 %i.bb to i64                   ; 3 uses
  %i.bd = mul nuw nsw i64 %i.ba, %i.bc
  %i.be = and i64 %i.bd, 4294967295
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.be ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 1, !tbaa !62
  %.not9.i.i.i.i10 = icmp eq i16 %i.bg, -1
  br i1 %.not9.i.i.i.i10, label %bb.j, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bi = load i16, ptr %i.bh, align 1, !tbaa !62
  %.not9.1.i.i.i.i23 = icmp eq i16 %i.bi, -1
  %i.bj = sext i1 %.not9.1.i.i.i.i23 to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i: ; preds = %bb.j, %bb.i, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit_crit_edge.i.i
  %.pre-phi9.i.i11 = phi i64 [ %.pre8.i.i25, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.bc, %bb.i ], [ %i.bc, %bb.j ]
  %.pre-phi.i.i12 = phi i16 [ %.pre7.i.i24, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.bb, %bb.i ], [ %i.bb, %bb.j ]
  %.2.i.i.i.i13 = phi i32 [ 0, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ 0, %bb.i ], [ %i.bj, %bb.j ]
  %i.bk = zext i16 %i.ay to i32
  %i.bl = add nsw i32 %.2.i.i.i.i13, %i.bk        ; 2 uses
  %i.bm = zext i16 %.pre-phi.i.i12 to i32
  %.not29.i.i.i14 = icmp sgt i32 %i.bl, 0
  br i1 %.not29.i.i.i14, label %.lr.ph.preheader.i.i.i15, label %_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EjLj4EEEE9get_valueEj.exit

.lr.ph.preheader.i.i.i15:                         ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i
  %i.bn = add nsw i32 %i.bl, -1
  br label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %bb.l, %.lr.ph.preheader.i.i.i15
  %.02031.i.i.i17 = phi i32 [ %.2.i.i.i21, %bb.l ], [ %i.bn, %.lr.ph.preheader.i.i.i15 ] ; 2 uses
  %.02130.i.i.i18 = phi i32 [ %.223.i.i.i20, %bb.l ], [ 0, %.lr.ph.preheader.i.i.i15 ] ; 2 uses
  %i.bo = add i32 %.02130.i.i.i18, %.02031.i.i.i17
  %i.bp = lshr i32 %i.bo, 1                       ; 4 uses
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = mul nuw nsw i64 %.pre-phi9.i.i11, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.bu = load i16, ptr %i.bt, align 1, !tbaa !62
  %i.bv = tail call noundef i16 @llvm.bswap.i16(i16 %i.bu)
  %i.bw = zext i16 %i.bv to i32
  %i.bx = icmp ult i32 %1, %i.bw
  br i1 %i.bx, label %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EjLj4EEEEEJEEiPKvS7_DpT1_.exit.thread.i.i, label %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EjLj4EEEEEJEEiPKvS7_DpT1_.exit.i.i

_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EjLj4EEEEEJEEiPKvS7_DpT1_.exit.i.i: ; preds = %.lr.ph.i.i.i16
  %i.by = load i16, ptr %i.bs, align 1, !tbaa !62
  %i.bz = tail call noundef i16 @llvm.bswap.i16(i16 %i.by)
  %i.ca = zext i16 %i.bz to i32
  %.not.i.i2.not.i.i19 = icmp ugt i32 %1, %i.ca
  br i1 %.not.i.i2.not.i.i19, label %bb.k, label %bb.m

_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EjLj4EEEEEJEEiPKvS7_DpT1_.exit.thread.i.i: ; preds = %.lr.ph.i.i.i16
  %i.cb = add nsw i32 %i.bp, -1
  br label %bb.l

bb.k:                                             ; preds = %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EjLj4EEEEEJEEiPKvS7_DpT1_.exit.i.i
  %i.cc = add nuw nsw i32 %i.bp, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EjLj4EEEEEJEEiPKvS7_DpT1_.exit.thread.i.i
  %.223.i.i.i20 = phi i32 [ %i.cc, %bb.k ], [ %.02130.i.i.i18, %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EjLj4EEEEEJEEiPKvS7_DpT1_.exit.thread.i.i ] ; 2 uses
  %.2.i.i.i21 = phi i32 [ %.02031.i.i.i17, %bb.k ], [ %i.cb, %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EjLj4EEEEEJEEiPKvS7_DpT1_.exit.thread.i.i ] ; 2 uses
  %.not.not.i.i.i22 = icmp sgt i32 %.223.i.i.i20, %.2.i.i.i21
  br i1 %.not.not.i.i.i22, label %_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EjLj4EEEE9get_valueEj.exit, label %.lr.ph.i.i.i16, !llvm.loop !5465

bb.m:                                             ; preds = %_ZL14_hb_cmp_methodIjN3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EjLj4EEEEEJEEiPKvS7_DpT1_.exit.i.i
  %i.cd = mul i32 %i.bp, %i.bm
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ce ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  %i.ch = load i16, ptr %i.cg, align 1, !tbaa !62
  %i.ci = tail call noundef i16 @llvm.bswap.i16(i16 %i.ch)
  %i.cj = zext i16 %i.ci to i32                   ; 2 uses
  %.not.i.i = icmp samesign ult i32 %1, %i.cj
  br i1 %.not.i.i, label %_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EjLj4EEEE9get_valueEj.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = load i16, ptr %i.cf, align 1, !tbaa !62
  %i.cl = tail call noundef i16 @llvm.bswap.i16(i16 %i.ck)
  %i.cm = zext i16 %i.cl to i32
  %.not3.i.i = icmp samesign ugt i32 %1, %i.cm
  br i1 %.not3.i.i, label %_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EjLj4EEEE9get_valueEj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.co = load i16, ptr %i.cn, align 1, !tbaa !62
  %i.cp = tail call noundef i16 @llvm.bswap.i16(i16 %i.co)
  %i.cq = zext i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %i.cq
  %i.cs = sub nuw nsw i32 %1, %i.cj
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.ct
  br label %_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EjLj4EEEE9get_valueEj.exit

bb.p:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cy = load i16, ptr %i.cx, align 1, !tbaa !62 ; 2 uses
  %i.cz = tail call noundef i16 @llvm.bswap.i16(i16 %i.cy) ; 2 uses
  %.not.i.i.i.i26 = icmp eq i16 %i.cy, 0
  %.pre.i.i27 = load i16, ptr %i.cv, align 1, !tbaa !62 ; 2 uses
  br i1 %.not.i.i.i.i26, label %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit_crit_edge.i.i, label %bb.q, !prof !48

._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit_crit_edge.i.i: ; preds = %bb.p
  %.pre6.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i27) ; 2 uses
  %.pre7.i.i40 = zext i16 %.pre6.i.i to i64
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.da = zext i16 %i.cz to i64
  %i.db = add nuw nsw i64 %i.da, 4294967295
  %i.dc = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i27) ; 2 uses
  %i.dd = zext i16 %i.dc to i64                   ; 2 uses
  %i.de = mul nuw nsw i64 %i.db, %i.dd
  %i.df = and i64 %i.de, 4294967295
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 1, !tbaa !62
  %.not9.not.i.i.i.i = icmp eq i16 %i.dh, -1
  %i.di = sext i1 %.not9.not.i.i.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i: ; preds = %bb.q, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit_crit_edge.i.i
  %.pre-phi8.i.i = phi i64 [ %.pre7.i.i40, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.dd, %bb.q ]
  %.pre-phi.i.i28 = phi i16 [ %.pre6.i.i, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.dc, %bb.q ]
  %.2.i.i.i.i29 = phi i32 [ 0, %._ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit_crit_edge.i.i ], [ %i.di, %bb.q ]
  %i.dj = zext i16 %i.cz to i32
  %i.dk = add nsw i32 %.2.i.i.i.i29, %i.dj        ; 2 uses
  %i.dl = zext i16 %.pre-phi.i.i28 to i32
  %.not29.i.i.i30 = icmp sgt i32 %i.dk, 0
  br i1 %.not29.i.i.i30, label %.lr.ph.preheader.i.i.i32, label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EjLj4EEEE9get_valueEj.exit

.lr.ph.preheader.i.i.i32:                         ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i
  %i.dm = add nsw i32 %i.dk, -1
  br label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %bb.u, %.lr.ph.preheader.i.i.i32
  %.02031.i.i.i34 = phi i32 [ %.2.i.i.i37, %bb.u ], [ %i.dm, %.lr.ph.preheader.i.i.i32 ] ; 2 uses
  %.02130.i.i.i35 = phi i32 [ %.223.i.i.i36, %bb.u ], [ 0, %.lr.ph.preheader.i.i.i32 ] ; 2 uses
  %i.dn = add i32 %.02130.i.i.i35, %.02031.i.i.i34
  %i.do = lshr i32 %i.dn, 1                       ; 4 uses
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = mul nuw nsw i64 %.pre-phi8.i.i, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 1, !tbaa !62
  %i.dt = tail call noundef i16 @llvm.bswap.i16(i16 %i.ds)
  %i.du = zext i16 %i.dt to i32                   ; 2 uses
  %i.dv = icmp ult i32 %1, %i.du
  br i1 %i.dv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i.i33
  %i.dw = add nsw i32 %i.do, -1
  br label %bb.u

bb.s:                                             ; preds = %.lr.ph.i.i.i33
  %.not28.i.i.i = icmp eq i32 %1, %i.du
  br i1 %.not28.i.i.i, label %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i39, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dx = add nuw nsw i32 %i.do, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.223.i.i.i36 = phi i32 [ %i.dx, %bb.t ], [ %.02130.i.i.i35, %bb.r ] ; 2 uses
  %.2.i.i.i37 = phi i32 [ %.02031.i.i.i34, %bb.t ], [ %i.dw, %bb.r ] ; 2 uses
  %.not.not.i.i.i38 = icmp sgt i32 %.223.i.i.i36, %.2.i.i.i37
  br i1 %.not.not.i.i.i38, label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EjLj4EEEE9get_valueEj.exit, label %.lr.ph.i.i.i33, !llvm.loop !5465

_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i39: ; preds = %bb.s
  %i.dy = mul i32 %i.do, %i.dl
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dz
  br label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EjLj4EEEE9get_valueEj.exit

_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EjLj4EEEE9get_valueEj.exit: ; preds = %bb.u, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i, %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i39
  %i.eb = phi ptr [ %i.ea, %_ZL15hb_bsearch_implIKvjJEEbPjRKT0_PT_mmPFiPS0_S7_DpT1_ES9_.exit.i.i39 ], [ null, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i ], [ null, %bb.u ] ; 2 uses
  %.not.i31 = icmp eq ptr %i.eb, null
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %i.ed = select i1 %.not.i31, ptr null, ptr %i.ec
  br label %_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EjLj4EEEE9get_valueEj.exit

bb.v:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ef = load i16, ptr %i.ee, align 1, !tbaa !62
  %i.eg = tail call noundef i16 @llvm.bswap.i16(i16 %i.ef)
  %i.eh = zext i16 %i.eg to i32                   ; 2 uses
  %.not.i41 = icmp ult i32 %1, %i.eh
  br i1 %.not.i41, label %_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EjLj4EEEE9get_valueEj.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ei = sub nuw i32 %1, %i.eh                   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ek = load i16, ptr %i.ej, align 1, !tbaa !62
  %i.el = tail call noundef i16 @llvm.bswap.i16(i16 %i.ek)
  %i.em = zext i16 %i.el to i32
  %i.en = icmp ult i32 %i.ei, %i.em
  br i1 %i.en, label %bb.x, label %_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EjLj4EEEE9get_valueEj.exit

bb.x:                                             ; preds = %bb.w
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ep = zext nneg i32 %i.ei to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.ep
  br label %_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EjLj4EEEE9get_valueEj.exit

_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EjLj4EEEE9get_valueEj.exit: ; preds = %bb.l, %bb.x, %bb.w, %bb.v, %bb.o, %bb.n, %bb.m, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i, %bb.a, %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EjLj4EEEE9get_valueEj.exit, %_ZNK3AAT13LookupFormat2IN2OT7NumTypeILb1EjLj4EEEE9get_valueEj.exit, %bb.b
  %.0 = phi ptr [ null, %bb.v ], [ %.0.i, %bb.b ], [ %i.at, %_ZNK3AAT13LookupFormat2IN2OT7NumTypeILb1EjLj4EEEE9get_valueEj.exit ], [ null, %bb.a ], [ %i.ed, %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EjLj4EEEE9get_valueEj.exit ], [ null, %bb.m ], [ %i.cu, %bb.o ], [ null, %bb.n ], [ null, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i ], [ %i.eq, %bb.x ], [ null, %bb.w ], [ null, %bb.l ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16hb_lazy_loader_tIN3AAT4trakE22hb_table_lazy_loader_tIS1_Lj33ELb0EE9hb_face_tLj33E9hb_blob_tE10do_destroyEPS5_(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  %.not3 = icmp eq ptr %0, @_hb_NullPool
  %or.cond = or i1 %.not, %.not3
  br i1 %or.cond, label %_ZN22hb_table_lazy_loader_tIN3AAT4trakELj33ELb0EE7destroyEP9hb_blob_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4 ; 0 uses
  %i.b = load atomic i32, ptr %0 monotonic, align 4
  %.not.i7.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i7.i.i.i.i, label %_ZN22hb_table_lazy_loader_tIN3AAT4trakELj33ELb0EE7destroyEP9hb_blob_t.exit, label %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i, !prof !48

_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i: ; preds = %bb.b
  %i.c = atomicrmw add ptr %0, i32 -1 acq_rel, align 4
  %.not6.i.i.i.i = icmp eq i32 %i.c, 1
  br i1 %.not6.i.i.i.i, label %bb.c, label %_ZN22hb_table_lazy_loader_tIN3AAT4trakELj33ELb0EE7destroyEP9hb_blob_t.exit

bb.c:                                             ; preds = %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i
  store atomic i32 -57005, ptr %0 monotonic, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 5 uses
  %.not.i.i3.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i3.i.i.i, label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.e)
  %i.g = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.e) #63 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.e) #63
  store atomic ptr null, ptr %i.d monotonic, align 8
  br label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i

_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !364  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !365
  tail call void %i.i(ptr noundef %i.k) #63, !inline_history !5734
  br label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i

_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i:  ; preds = %bb.e, %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i
  tail call void @free(ptr noundef nonnull %0) #63
  br label %_ZN22hb_table_lazy_loader_tIN3AAT4trakELj33ELb0EE7destroyEP9hb_blob_t.exit

_ZN22hb_table_lazy_loader_tIN3AAT4trakELj33ELb0EE7destroyEP9hb_blob_t.exit: ; preds = %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i, %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN22hb_table_lazy_loader_tIN3AAT4trakELj33ELb0EE6createEP9hb_face_t(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %struct.hb_sanitize_context_t, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #63
  store i32 0, ptr %1, align 8, !tbaa !349
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !350
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.a, i8 0, i64 33, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 61
  store i8 0, ptr %i.e, align 1, !tbaa !353
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load atomic i32, ptr %i.f monotonic, align 4 ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.b, label %bb.c, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZNK9hb_face_t15load_num_glyphsEv(ptr noundef nonnull align 8 dereferenceable(448) %0), !inline_history !3046
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi i32 [ %i.i, %bb.b ], [ %i.g, %bb.a ]
  store i32 %.0.i.i.i, ptr %i.c, align 8, !tbaa !351
end_hunk_26
