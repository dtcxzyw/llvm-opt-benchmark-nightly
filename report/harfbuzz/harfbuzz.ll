Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 272
loop-unroll.NumUnrolled: 471
begin_hunk_0_@hb_shape_list_shapers:bb.a
  br i1 %.not19.i.i, label %.lr.ph.i.i, label %_ZNK16hb_lazy_loader_tIPKc28hb_shaper_list_lazy_loader_tvLj0ES1_E11get_unconstEv.exit, !prof !265

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN16hb_lazy_loader_tIPKc28hb_shaper_list_lazy_loader_tvLj0ES1_E10do_destroyEPS1_.exit.i.i
  %i.b = tail call noundef ptr @_ZNK17hb_data_wrapper_tIvLj0EE11call_createIPKc28hb_shaper_list_lazy_loader_tEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) @_ZL18static_shaper_list) ; 5 uses
  %.not10.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i, label %.thread.i.i, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.c = cmpxchg weak ptr @_ZL18static_shaper_list, ptr null, ptr %i.b acq_rel monotonic, align 8
  %i.d = extractvalue { ptr, i1 } %i.c, 1
  br i1 %i.d, label %_ZNK16hb_lazy_loader_tIPKc28hb_shaper_list_lazy_loader_tvLj0ES1_E11get_unconstEv.exit, label %bb.c, !prof !268

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.e = cmpxchg weak ptr @_ZL18static_shaper_list, ptr null, ptr @_ZL15nil_shaper_list acq_rel monotonic, align 8
  %i.f = extractvalue { ptr, i1 } %i.e, 1
  br i1 %i.f, label %_ZNK16hb_lazy_loader_tIPKc28hb_shaper_list_lazy_loader_tvLj0ES1_E11get_unconstEv.exit, label %_ZN16hb_lazy_loader_tIPKc28hb_shaper_list_lazy_loader_tvLj0ES1_E10do_destroyEPS1_.exit.i.i, !prof !268

bb.c:                                             ; preds = %bb.b
  %.not3.i.i.i = icmp eq ptr %i.b, @_ZL15nil_shaper_list
  br i1 %.not3.i.i.i, label %_ZN16hb_lazy_loader_tIPKc28hb_shaper_list_lazy_loader_tvLj0ES1_E10do_destroyEPS1_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #63
  br label %_ZN16hb_lazy_loader_tIPKc28hb_shaper_list_lazy_loader_tvLj0ES1_E10do_destroyEPS1_.exit.i.i

_ZN16hb_lazy_loader_tIPKc28hb_shaper_list_lazy_loader_tvLj0ES1_E10do_destroyEPS1_.exit.i.i: ; preds = %bb.d, %bb.c, %.thread.i.i
  %i.g = load atomic ptr, ptr @_ZL18static_shaper_list acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_ZNK16hb_lazy_loader_tIPKc28hb_shaper_list_lazy_loader_tvLj0ES1_E11get_unconstEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIPKc28hb_shaper_list_lazy_loader_tvLj0ES1_E11get_unconstEv.exit: ; preds = %bb.b, %.thread.i.i, %_ZN16hb_lazy_loader_tIPKc28hb_shaper_list_lazy_loader_tvLj0ES1_E10do_destroyEPS1_.exit.i.i, %bb.a
  %.19.ph.i.i = phi ptr [ %i.a, %bb.a ], [ @_ZL15nil_shaper_list, %.thread.i.i ], [ %i.g, %_ZN16hb_lazy_loader_tIPKc28hb_shaper_list_lazy_loader_tvLj0ES1_E10do_destroyEPS1_.exit.i.i ], [ %i.b, %bb.b ]
  ret ptr %.19.ph.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_shape_full(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !609  ; 5 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.n, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !656
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 209 ; 2 uses
  store i8 0, ptr %i.d, align 1, !tbaa !657
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i32 0, ptr %i.e, align 8, !tbaa !608
  %i.f = icmp ugt i32 %i.b, 16777215
  br i1 %i.f, label %_ZN11hb_buffer_t5enterEv.exit, label %bb.c, !prof !267

bb.c:                                             ; preds = %bb.b
  %i.g = shl nuw i32 %i.b, 8
  %.sroa.speculated5.i = tail call i32 @llvm.umax.i32(i32 %i.g, i32 65536)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 220
  store i32 %.sroa.speculated5.i, ptr %i.h, align 4, !tbaa !652
  %i.i = icmp samesign ugt i32 %i.b, 1048575
  br i1 %i.i, label %_ZN11hb_buffer_t5enterEv.exit, label %bb.d, !prof !320

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i32 %i.b, 12
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.j, i32 65536)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i32 %.sroa.speculated.i, ptr %i.k, align 8, !tbaa !653
  br label %_ZN11hb_buffer_t5enterEv.exit

_ZN11hb_buffer_t5enterEv.exit:                    ; preds = %bb.b, %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !589
  %i.n = and i32 %i.m, 32
  %.not35 = icmp eq i32 %i.n, 0
  br i1 %.not35, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN11hb_buffer_t5enterEv.exit
  %i.o = tail call noalias noundef dereferenceable_or_null(280) ptr @calloc(i64 noundef 1, i64 noundef 280) #64 ; 9 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %hb_buffer_create.exit, label %bb.f, !prof !267

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store atomic i32 1, ptr %i.o monotonic, align 4
  store atomic i8 1, ptr %i.p monotonic, align 4
  store atomic ptr null, ptr %i.q monotonic, align 8
  %i.r = load atomic i32, ptr %i.o monotonic, align 8 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 220
  store i32 1073741823, ptr %i.s, align 4, !tbaa !652
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  store i32 536870911, ptr %i.t, align 8, !tbaa !653
  tail call void @_ZN11hb_buffer_t5resetEv(ptr noundef nonnull align 8 dereferenceable(276) %i.o)
  br label %hb_buffer_create.exit

hb_buffer_create.exit:                            ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.o, %bb.f ], [ @_hb_Null_hb_buffer_t, %bb.e ] ; 2 uses
  tail call void @hb_buffer_append(ptr noundef nonnull %.0.i, ptr noundef nonnull %1, i32 noundef 0, i32 noundef -1)
  br label %bb.g

bb.g:                                             ; preds = %hb_buffer_create.exit, %_ZN11hb_buffer_t5enterEv.exit
  %.031 = phi ptr [ %.0.i, %hb_buffer_create.exit ], [ null, %_ZN11hb_buffer_t5enterEv.exit ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !264
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !309
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !310
  %i.ab = tail call ptr @hb_shape_plan_create_cached2(ptr noundef %i.v, ptr noundef nonnull %i.w, ptr noundef %2, i32 noundef %3, ptr noundef %i.y, i32 noundef %i.aa, ptr noundef %4) ; 2 uses
  %i.ac = tail call i32 @hb_shape_plan_execute(ptr noundef %i.ab, ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) ; 2 uses
  tail call void @hb_shape_plan_destroy(ptr noundef %i.ab)
  %.not36 = icmp eq ptr %.031, null
  br i1 %.not36, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not37 = icmp eq i32 %i.ac, 0
  br i1 %.not37, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !588, !range !382, !noundef !293
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.031, i64 88
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !588, !range !382, !noundef !293
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call noundef zeroext i1 @_ZN11hb_buffer_t6verifyEPS_P9hb_font_tPK12hb_feature_tjPKPKc(ptr noundef nonnull align 8 dereferenceable(276) %1, ptr noundef nonnull %.031, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  %spec.select = zext i1 %i.aj to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.0 = phi i32 [ %spec.select, %bb.k ], [ 0, %bb.h ], [ 1, %bb.j ], [ 1, %bb.i ]
  tail call void @hb_buffer_destroy(ptr noundef nonnull %.031)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.1 = phi i32 [ %.0, %bb.l ], [ %i.ac, %bb.g ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 220
  store i32 1073741823, ptr %i.ak, align 4, !tbaa !652
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i32 536870911, ptr %i.al, align 8, !tbaa !653
  store i8 0, ptr %i.c, align 8, !tbaa !656
  store i8 0, ptr %i.d, align 1, !tbaa !657
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  %.032 = phi i32 [ %.1, %bb.m ], [ 1, %bb.a ]
  ret i32 %.032
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_shape(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @hb_shape_full(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef null) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_Z32_hb_ot_name_language_for_ms_codej(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.a
  %.0203.i.i.i = phi i32 [ %.2.i.i.i, %bb.e ], [ 239, %bb.a ] ; 2 uses
  %.0212.i.i.i = phi i32 [ %.223.i.i.i, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %i.a = add i32 %.0212.i.i.i, %.0203.i.i.i
  %i.b = lshr i32 %i.a, 1                         ; 3 uses
  %i.c = zext nneg i32 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr @_ZL19_hb_ms_language_map, i64 %i.d
  %i.f = load i16, ptr %i.e, align 8, !tbaa !1513
  %i.g = zext i16 %i.f to i32                     ; 2 uses
  %i.h = icmp ult i32 %0, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.i = add nsw i32 %i.b, -1
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %.not28.i.i.i = icmp eq i32 %0, %i.g
  br i1 %.not28.i.i.i, label %_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw nsw i32 %i.b, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.223.i.i.i = phi i32 [ %i.j, %bb.d ], [ %.0212.i.i.i, %bb.b ] ; 2 uses
  %.2.i.i.i = phi i32 [ %.0203.i.i.i, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %.not.not.i.i.i = icmp sgt i32 %.223.i.i.i, %.2.i.i.i
  br i1 %.not.not.i.i.i, label %_ZL24_hb_ot_name_language_forjPK20hb_ot_language_map_tj.exit, label %.lr.ph.i.i.i, !llvm.loop !137

_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr @_ZL19_hb_ms_language_map, i64 %i.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %1 = load i8, ptr %i.l, align 2, !tbaa !280
  %.not.i.i = icmp eq i8 %1, 0
  br i1 %.not.i.i, label %_ZL24_hb_ot_name_language_forjPK20hb_ot_language_map_tj.exit, label %2

2:                                                ; preds = %_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i
  %3 = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef nonnull readonly %i.l) ; 2 uses
  %.not11.i.i = icmp eq ptr %3, null
  br i1 %.not11.i.i, label %_ZL24_hb_ot_name_language_forjPK20hb_ot_language_map_tj.exit, label %bb.f, !prof !267

bb.f:                                             ; preds = %2
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !702
  br label %_ZL24_hb_ot_name_language_forjPK20hb_ot_language_map_tj.exit

_ZL24_hb_ot_name_language_forjPK20hb_ot_language_map_tj.exit: ; preds = %bb.e, %_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i, %2, %bb.f
  %.0.i = phi ptr [ %i.n, %bb.f ], [ null, %2 ], [ null, %_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i ], [ null, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_Z33_hb_ot_name_language_for_mac_codej(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.a
  %.0203.i.i.i = phi i32 [ %.2.i.i.i, %bb.e ], [ 116, %bb.a ] ; 2 uses
  %.0212.i.i.i = phi i32 [ %.223.i.i.i, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %i.a = add i32 %.0212.i.i.i, %.0203.i.i.i
  %i.b = lshr i32 %i.a, 1                         ; 3 uses
  %i.c = zext nneg i32 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr @_ZL20_hb_mac_language_map, i64 %i.d
  %i.f = load i16, ptr %i.e, align 8, !tbaa !1513
  %i.g = zext i16 %i.f to i32                     ; 2 uses
  %i.h = icmp ult i32 %0, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.i = add nsw i32 %i.b, -1
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %.not28.i.i.i = icmp eq i32 %0, %i.g
  br i1 %.not28.i.i.i, label %_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw nsw i32 %i.b, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.223.i.i.i = phi i32 [ %i.j, %bb.d ], [ %.0212.i.i.i, %bb.b ] ; 2 uses
  %.2.i.i.i = phi i32 [ %.0203.i.i.i, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %.not.not.i.i.i = icmp sgt i32 %.223.i.i.i, %.2.i.i.i
  br i1 %.not.not.i.i.i, label %_ZL24_hb_ot_name_language_forjPK20hb_ot_language_map_tj.exit, label %.lr.ph.i.i.i, !llvm.loop !137

_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr @_ZL20_hb_mac_language_map, i64 %i.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %1 = load i8, ptr %i.l, align 2, !tbaa !280
  %.not.i.i = icmp eq i8 %1, 0
  br i1 %.not.i.i, label %_ZL24_hb_ot_name_language_forjPK20hb_ot_language_map_tj.exit, label %2

2:                                                ; preds = %_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i
  %3 = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef nonnull readonly %i.l) ; 2 uses
  %.not11.i.i = icmp eq ptr %3, null
  br i1 %.not11.i.i, label %_ZL24_hb_ot_name_language_forjPK20hb_ot_language_map_tj.exit, label %bb.f, !prof !267

bb.f:                                             ; preds = %2
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !702
  br label %_ZL24_hb_ot_name_language_forjPK20hb_ot_language_map_tj.exit

_ZL24_hb_ot_name_language_forjPK20hb_ot_language_map_tj.exit: ; preds = %bb.e, %_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i, %2, %bb.f
  %.0.i = phi ptr [ %i.n, %bb.f ], [ null, %2 ], [ null, %_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i ], [ null, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 65536) i32 @_ZNK9hb_face_t15load_num_glyphsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(448) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i19 = icmp eq ptr %i.c, null
  br i1 %.not.i19, label %.lr.ph, label %_ZNK16hb_lazy_loader_tIN2OT4maxpE22hb_table_lazy_loader_tIS1_Lj2ELb1EE9hb_face_tLj2E9hb_blob_tE10get_storedEv.exit, !prof !265

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !266  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4maxpE22hb_table_lazy_loader_tIS1_Lj2ELb1EE9hb_face_tLj2E9hb_blob_tE10get_storedEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph
  %i.e = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4maxpELj2ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.d), !inline_history !3155 ; 2 uses
  %.not10.i = icmp eq ptr %i.e, null
  br i1 %.not10.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN2OT4maxpE22hb_table_lazy_loader_tIS1_Lj2ELb1EE9hb_face_tLj2E9hb_blob_tE10get_storedEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT4maxpE22hb_table_lazy_loader_tIS1_Lj2ELb1EE9hb_face_tLj2E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i), !inline_history !3156
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %.lr.ph, label %_ZNK16hb_lazy_loader_tIN2OT4maxpE22hb_table_lazy_loader_tIS1_Lj2ELb1EE9hb_face_tLj2E9hb_blob_tE10get_storedEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT4maxpE22hb_table_lazy_loader_tIS1_Lj2ELb1EE9hb_face_tLj2E9hb_blob_tE10get_storedEv.exit: ; preds = %.lr.ph, %bb.d, %bb.e, %bb.a
  %.19.i.ph = phi ptr [ %i.c, %bb.a ], [ %.07.i, %bb.d ], [ %i.h, %bb.e ], [ @_hb_NullPool, %.lr.ph ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.ph, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.ph, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !276
  %i.m = icmp ult i32 %i.l, 6
  %spec.select.i.i.i = select i1 %i.m, ptr @_hb_NullPool, ptr %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 4
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %i.q = zext i16 %i.p to i32                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic i32 %i.q, ptr %i.r monotonic, align 8
  ret i32 %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 16, 16385) i32 @_ZNK9hb_face_t9load_upemEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(448) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4headE22hb_table_lazy_loader_tIS1_Lj1ELb1EE9hb_face_tLj1E9hb_blob_tEptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4headE22hb_table_lazy_loader_tIS1_Lj1ELb1EE9hb_face_tLj1E9hb_blob_tEptEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4headELj1ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.d) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN2OT4headE22hb_table_lazy_loader_tIS1_Lj1ELb1EE9hb_face_tLj1E9hb_blob_tEptEv.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT4headE22hb_table_lazy_loader_tIS1_Lj1ELb1EE9hb_face_tLj1E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4headE22hb_table_lazy_loader_tIS1_Lj1ELb1EE9hb_face_tLj1E9hb_blob_tEptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT4headE22hb_table_lazy_loader_tIS1_Lj1ELb1EE9hb_face_tLj1E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !276
  %i.m = icmp ult i32 %i.l, 54
  %spec.select.i.i.i.i.i = select i1 %i.m, ptr @_hb_NullPool, ptr %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 18
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o) ; 2 uses
  %i.q = add i16 %i.p, -16
  %or.cond.i = icmp ult i16 %i.q, 16369
  %narrow.i = select i1 %or.cond.i, i16 %i.p, i16 1000
  %i.r = zext nneg i16 %narrow.i to i32           ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  store atomic i32 %i.r, ptr %i.s monotonic, align 4
  ret i32 %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define float @hb_style_get_value(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.hb_ot_var_axis_info_t, align 4 ; 5 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = icmp eq i32 %1, 1399615092
  br i1 %i.c, label %bb.b, label %bb.c, !prof !267

common.ret138:                                    ; preds = %bb.b, %common.ret
  %common.ret138.op = phi float [ %.1, %common.ret ], [ %i.g, %bb.b ]
  ret float %common.ret138.op

bb.b:                                             ; preds = %bb.a
  %i.d = tail call float @hb_style_get_value(ptr noundef %0, i32 noundef 1936486004)
  %i.e = fmul float %i.d, f0xC0490FDB
  %i.f = fdiv float %i.e, 1.800000e+02
  %i.g = tail call noundef float @tanf(float noundef %i.f) #63
  br label %common.ret138

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !264  ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.j = call i32 @hb_ot_var_find_axis_info(ptr noundef %i.i, i32 noundef %1, ptr noundef nonnull %2)
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %2, align 4, !tbaa !1440   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.m = load i32, ptr %i.l, align 4, !tbaa !310
  %i.n = icmp ult i32 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1065
  %i.q = zext i32 %i.k to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !304
  br label %common.ret

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.u = load float, ptr %i.t, align 4, !tbaa !3157
  br label %common.ret

bb.g:                                             ; preds = %bb.c
  %i.v = icmp eq i32 %1, 1869640570
  br i1 %i.v, label %bb.l, label %.split

.split:                                           ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 176 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.y = load atomic ptr, ptr %i.w acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4STATE22hb_table_lazy_loader_tIS1_Lj9ELb1EE9hb_face_tLj9E9hb_blob_tEptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %.split, %bb.k
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4STATE22hb_table_lazy_loader_tIS1_Lj9ELb1EE9hb_face_tLj9E9hb_blob_tEptEv.exit, label %bb.h, !prof !267

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4STATELj9ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.z) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not10.i.i.i, label %bb.i, label %bb.j, !prof !267

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.i ], [ %i.aa, %bb.h ] ; 3 uses
  %i.ab = cmpxchg weak ptr %i.w, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.ac = extractvalue { ptr, i1 } %i.ab, 1
  br i1 %i.ac, label %_ZNK16hb_lazy_loader_tIN2OT4STATE22hb_table_lazy_loader_tIS1_Lj9ELb1EE9hb_face_tLj9E9hb_blob_tEptEv.exit, label %bb.k, !prof !268

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN16hb_lazy_loader_tIN2OT4STATE22hb_table_lazy_loader_tIS1_Lj9ELb1EE9hb_face_tLj9E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.ad = load atomic ptr, ptr %i.w acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4STATE22hb_table_lazy_loader_tIS1_Lj9ELb1EE9hb_face_tLj9E9hb_blob_tEptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT4STATE22hb_table_lazy_loader_tIS1_Lj9ELb1EE9hb_face_tLj9E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.j, %bb.k, %.split
  %.19.ph.i.i.i = phi ptr [ %i.y, %.split ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.ad, %bb.k ], [ %.07.i.i.i, %bb.j ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !275
  %i.ag = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !276
  %i.ai = icmp ult i32 %i.ah, 20
end_hunk_0
begin_hunk_1_@_ZZN2OT4cmap13accelerator_tC1EP9hb_face_tENKUlPFbPKvjPjEE_clES8_:bb.a
  %i.aj = shl nuw nsw i32 %i.w, 3
  %i.ak = add nuw nsw i32 %i.aj, 16               ; 2 uses
  %i.al = icmp ugt i32 %.1.i, %i.ak
  %i.am = sub i32 %.1.i, %i.ak
  %i.an = lshr i32 %i.am, 1
  %i.ao = select i1 %i.al, i32 %i.an, i32 0
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !1609
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.b, ptr %i.aq, align 8, !tbaa !1624
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.ar, align 8, !tbaa !1622
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2OT4cmap13accelerator_t21get_glyph_from_symbolINS_19CmapSubtableFormat413accelerator_tEXadL_ZNS_L18_hb_symbol_pua_mapEjEEEEbPKvjPj(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2)
  br i1 %i.a, label %bb.d, label %bb.b, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %1, 256
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = or disjoint i32 %1, 61440
  %i.d = tail call noundef zeroext i1 @_ZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.c, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ %i.d, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2OT4cmap13accelerator_t21get_glyph_from_symbolINS_12CmapSubtableEXadL_ZNS_L18_hb_symbol_pua_mapEjEEEEbPKvjPj(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT12CmapSubtable9get_glyphEjPjj(ptr noundef nonnull align 1 dereferenceable(262) %0, i32 noundef %1, ptr noundef %2, i32 noundef 0)
  br i1 %i.a, label %bb.d, label %bb.b, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %1, 256
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = or disjoint i32 %1, 61440
  %i.d = tail call noundef zeroext i1 @_ZNK2OT12CmapSubtable9get_glyphEjPjj(ptr noundef nonnull align 1 dereferenceable(262) %0, i32 noundef %i.c, ptr noundef %2, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ %i.d, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2OT4cmap13accelerator_t21get_glyph_from_symbolINS_19CmapSubtableFormat413accelerator_tEXadL_ZL23_hb_arabic_pua_simp_mapjEEEEbPKvjPj(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2)
  br i1 %i.a, label %bb.d, label %bb.b, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef zeroext i16 @_ZL23_hb_arabic_pua_simp_mapj(i32 noundef %1) ; 2 uses
  %.not.not = icmp eq i16 %i.b, 0
  br i1 %.not.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = zext i16 %i.b to i32
  %i.d = tail call noundef zeroext i1 @_ZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.c, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ %i.d, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2OT4cmap13accelerator_t21get_glyph_from_symbolINS_12CmapSubtableEXadL_ZL23_hb_arabic_pua_simp_mapjEEEEbPKvjPj(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT12CmapSubtable9get_glyphEjPjj(ptr noundef nonnull align 1 dereferenceable(262) %0, i32 noundef %1, ptr noundef %2, i32 noundef 0)
  br i1 %i.a, label %bb.d, label %bb.b, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef zeroext i16 @_ZL23_hb_arabic_pua_simp_mapj(i32 noundef %1) ; 2 uses
  %.not.not = icmp eq i16 %i.b, 0
  br i1 %.not.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = zext i16 %i.b to i32
  %i.d = tail call noundef zeroext i1 @_ZNK2OT12CmapSubtable9get_glyphEjPjj(ptr noundef nonnull align 1 dereferenceable(262) %0, i32 noundef %i.c, ptr noundef %2, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ %i.d, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2OT4cmap13accelerator_t21get_glyph_from_symbolINS_19CmapSubtableFormat413accelerator_tEXadL_ZL23_hb_arabic_pua_trad_mapjEEEEbPKvjPj(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2)
  br i1 %i.a, label %bb.d, label %bb.b, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef zeroext i16 @_ZL23_hb_arabic_pua_trad_mapj(i32 noundef %1) ; 2 uses
  %.not.not = icmp eq i16 %i.b, 0
  br i1 %.not.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = zext i16 %i.b to i32
  %i.d = tail call noundef zeroext i1 @_ZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.c, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ %i.d, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2OT4cmap13accelerator_t21get_glyph_from_symbolINS_12CmapSubtableEXadL_ZL23_hb_arabic_pua_trad_mapjEEEEbPKvjPj(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT12CmapSubtable9get_glyphEjPjj(ptr noundef nonnull align 1 dereferenceable(262) %0, i32 noundef %1, ptr noundef %2, i32 noundef 0)
  br i1 %i.a, label %bb.d, label %bb.b, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef zeroext i16 @_ZL23_hb_arabic_pua_trad_mapj(i32 noundef %1) ; 2 uses
  %.not.not = icmp eq i16 %i.b, 0
  br i1 %.not.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = zext i16 %i.b to i32
  %i.d = tail call noundef zeroext i1 @_ZNK2OT12CmapSubtable9get_glyphEjPjj(ptr noundef nonnull align 1 dereferenceable(262) %0, i32 noundef %i.c, ptr noundef %2, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ %i.d, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT4cmap13accelerator_t14get_glyph_fromINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT4cmap13accelerator_t14get_glyph_fromINS_12CmapSubtableEEEbPKvjPj(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT12CmapSubtable9get_glyphEjPjj(ptr noundef nonnull align 1 dereferenceable(262) %0, i32 noundef %1, ptr noundef %2, i32 noundef 0)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT4cmap13accelerator_t23get_glyph_from_macromanINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 128
  br i1 %i.a, label %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj.exit, label %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj.exit.thread

_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj.exit: ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2)
  br i1 %i.b, label %_ZN2OTL19unicode_to_macromanEj.exit.thread, label %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj.exit.thread

_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj.exit.thread: ; preds = %bb.a, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj.exit
  %.sroa.0.0.extract.trunc.i = trunc i32 %1 to i16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj.exit.thread
  %.0202.i.i.i = phi i32 [ 127, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj.exit.thread ], [ %.2.i.i.i, %bb.f ] ; 2 uses
  %.0211.i.i.i = phi i32 [ 0, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj.exit.thread ], [ %.223.i.i.i, %bb.f ] ; 2 uses
  %i.c = add i32 %.0211.i.i.i, %.0202.i.i.i
  %i.d = lshr i32 %i.c, 1                         ; 3 uses
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 2                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr @_ZZN2OTL19unicode_to_macromanEjE7mapping, i64 %i.f
  %i.h = load i16, ptr %i.g, align 4, !tbaa !649  ; 2 uses
  %i.i = icmp ugt i16 %i.h, %.sroa.0.0.extract.trunc.i
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %i.d, -1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not28.i.i.i = icmp eq i16 %i.h, %.sroa.0.0.extract.trunc.i
  br i1 %.not28.i.i.i, label %_ZN2OTL19unicode_to_macromanEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw nsw i32 %i.d, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.223.i.i.i = phi i32 [ %i.k, %bb.e ], [ %.0211.i.i.i, %bb.c ] ; 2 uses
  %.2.i.i.i = phi i32 [ %.0202.i.i.i, %bb.e ], [ %i.j, %bb.c ] ; 2 uses
  %.not.not.i.i.i = icmp sgt i32 %.223.i.i.i, %.2.i.i.i
  br i1 %.not.not.i.i.i, label %_ZN2OTL19unicode_to_macromanEj.exit.thread, label %bb.b, !llvm.loop !205

_ZN2OTL19unicode_to_macromanEj.exit:              ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr @_ZZN2OTL19unicode_to_macromanEjE7mapping, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.n = load i8, ptr %i.m, align 2, !tbaa !2061  ; 2 uses
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %_ZN2OTL19unicode_to_macromanEj.exit.thread, label %3

3:                                                ; preds = %_ZN2OTL19unicode_to_macromanEj.exit
  %4 = zext i8 %i.n to i32
  %5 = tail call noundef zeroext i1 @_ZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %4, ptr noundef %2)
  br label %_ZN2OTL19unicode_to_macromanEj.exit.thread

_ZN2OTL19unicode_to_macromanEj.exit.thread:       ; preds = %bb.f, %_ZN2OTL19unicode_to_macromanEj.exit, %3, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj.exit
  %.0 = phi i1 [ true, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj.exit ], [ false, %_ZN2OTL19unicode_to_macromanEj.exit ], [ %5, %3 ], [ false, %bb.f ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT4cmap13accelerator_t23get_glyph_from_macromanINS_12CmapSubtableEEEbPKvjPj(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 128
  br i1 %i.a, label %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj.exit, label %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj.exit.thread

_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj.exit: ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK2OT12CmapSubtable9get_glyphEjPjj(ptr noundef nonnull align 1 dereferenceable(262) %0, i32 noundef %1, ptr noundef %2, i32 noundef 0)
  br i1 %i.b, label %_ZN2OTL19unicode_to_macromanEj.exit.thread, label %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj.exit.thread

_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj.exit.thread: ; preds = %bb.a, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj.exit
  %.sroa.0.0.extract.trunc.i = trunc i32 %1 to i16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj.exit.thread
  %.0202.i.i.i = phi i32 [ 127, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj.exit.thread ], [ %.2.i.i.i, %bb.f ] ; 2 uses
  %.0211.i.i.i = phi i32 [ 0, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj.exit.thread ], [ %.223.i.i.i, %bb.f ] ; 2 uses
  %i.c = add i32 %.0211.i.i.i, %.0202.i.i.i
  %i.d = lshr i32 %i.c, 1                         ; 3 uses
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 2                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr @_ZZN2OTL19unicode_to_macromanEjE7mapping, i64 %i.f
  %i.h = load i16, ptr %i.g, align 4, !tbaa !649  ; 2 uses
  %i.i = icmp ugt i16 %i.h, %.sroa.0.0.extract.trunc.i
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %i.d, -1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not28.i.i.i = icmp eq i16 %i.h, %.sroa.0.0.extract.trunc.i
  br i1 %.not28.i.i.i, label %_ZN2OTL19unicode_to_macromanEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw nsw i32 %i.d, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.223.i.i.i = phi i32 [ %i.k, %bb.e ], [ %.0211.i.i.i, %bb.c ] ; 2 uses
  %.2.i.i.i = phi i32 [ %.0202.i.i.i, %bb.e ], [ %i.j, %bb.c ] ; 2 uses
  %.not.not.i.i.i = icmp sgt i32 %.223.i.i.i, %.2.i.i.i
  br i1 %.not.not.i.i.i, label %_ZN2OTL19unicode_to_macromanEj.exit.thread, label %bb.b, !llvm.loop !205

_ZN2OTL19unicode_to_macromanEj.exit:              ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr @_ZZN2OTL19unicode_to_macromanEjE7mapping, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.n = load i8, ptr %i.m, align 2, !tbaa !2061  ; 2 uses
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %_ZN2OTL19unicode_to_macromanEj.exit.thread, label %3

3:                                                ; preds = %_ZN2OTL19unicode_to_macromanEj.exit
  %4 = zext i8 %i.n to i32
  %5 = tail call noundef zeroext i1 @_ZNK2OT12CmapSubtable9get_glyphEjPjj(ptr noundef nonnull align 1 dereferenceable(262) %0, i32 noundef %4, ptr noundef %2, i32 noundef 0)
  br label %_ZN2OTL19unicode_to_macromanEj.exit.thread

_ZN2OTL19unicode_to_macromanEj.exit.thread:       ; preds = %bb.f, %_ZN2OTL19unicode_to_macromanEj.exit, %3, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj.exit
  %.0 = phi i1 [ true, %_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj.exit ], [ false, %_ZN2OTL19unicode_to_macromanEj.exit ], [ %5, %3 ], [ false, %bb.f ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_19CmapSubtableFormat413accelerator_tEEEbPKvjPj(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT4cmap13accelerator_t20get_glyph_from_asciiINS_12CmapSubtableEEEbPKvjPj(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK2OT12CmapSubtable9get_glyphEjPjj(ptr noundef nonnull align 1 dereferenceable(262) %0, i32 noundef %1, ptr noundef %2, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT4cmap13accelerator_t14get_glyph_fromINS_20CmapSubtableFormat12EEEbPKvjPj(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.a, align 1, !tbaa !278
  %i.d = tail call noundef i32 @llvm.bswap.i32(i32 %i.c) ; 2 uses
  %.not2.i.i.i.i.i.i = icmp sgt i32 %i.d, 0
  br i1 %.not2.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZNK2OT13SortedArrayOfINS_21CmapSubtableLongGroupENS_7NumTypeILb1EjLj4EEEE7bsearchIjEERKS1_RKT_S7_.exit.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.e = add nsw i32 %i.d, -1
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i.i.i
  %.0204.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i, %bb.e ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0213.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i, %bb.e ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.f = add i32 %.0213.i.i.i.i.i.i, %.0204.i.i.i.i.i.i
  %i.g = lshr i32 %i.f, 1                         ; 3 uses
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = mul nuw nsw i64 %i.h, 12
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 1, !tbaa !278
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = icmp ult i32 %1, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.n = add nsw i32 %i.g, -1
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.p = load i32, ptr %i.o, align 1
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)
  %.not1.i.i.i.i.i.i = icmp ugt i32 %1, %i.q
  br i1 %.not1.i.i.i.i.i.i, label %bb.d, label %_ZNK17hb_sorted_array_tIKN2OT21CmapSubtableLongGroupEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.r = add nuw nsw i32 %i.g, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.223.i.i.i.i.i.i = phi i32 [ %i.r, %bb.d ], [ %.0213.i.i.i.i.i.i, %bb.b ] ; 2 uses
  %.2.i.i.i.i.i.i = phi i32 [ %.0204.i.i.i.i.i.i, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i, %.2.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i, label %_ZNK2OT13SortedArrayOfINS_21CmapSubtableLongGroupENS_7NumTypeILb1EjLj4EEEE7bsearchIjEERKS1_RKT_S7_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !206

_ZNK17hb_sorted_array_tIKN2OT21CmapSubtableLongGroupEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.h
  br label %_ZNK2OT13SortedArrayOfINS_21CmapSubtableLongGroupENS_7NumTypeILb1EjLj4EEEE7bsearchIjEERKS1_RKT_S7_.exit.i

_ZNK2OT13SortedArrayOfINS_21CmapSubtableLongGroupENS_7NumTypeILb1EjLj4EEEE7bsearchIjEERKS1_RKT_S7_.exit.i: ; preds = %bb.e, %_ZNK17hb_sorted_array_tIKN2OT21CmapSubtableLongGroupEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i, %bb.a
  %i.t = phi ptr [ %i.s, %_ZNK17hb_sorted_array_tIKN2OT21CmapSubtableLongGroupEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i ], [ @_hb_Null_OT_CmapSubtableLongGroup, %bb.a ], [ @_hb_Null_OT_CmapSubtableLongGroup, %bb.e ] ; 3 uses
  %i.u = load i32, ptr %i.t, align 1, !tbaa !278
  %i.v = tail call noundef i32 @llvm.bswap.i32(i32 %i.u) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.x = load i32, ptr %i.w, align 1, !tbaa !278
  %i.y = tail call noundef i32 @llvm.bswap.i32(i32 %i.x)
  %.not.i.i = icmp ugt i32 %i.v, %i.y
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = sub i32 %1, %i.v
  %i.ad = add i32 %i.ac, %i.ab
  %i.ae = select i1 %.not.i.i, i32 0, i32 %i.ad, !prof !267 ; 2 uses
  %.not.i = icmp ne i32 %i.ae, 0                  ; 2 uses
  br i1 %.not.i, label %bb.f, label %_ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE9get_glyphEjPj.exit, !prof !268

bb.f:                                             ; preds = %_ZNK2OT13SortedArrayOfINS_21CmapSubtableLongGroupENS_7NumTypeILb1EjLj4EEEE7bsearchIjEERKS1_RKT_S7_.exit.i
  store i32 %i.ae, ptr %2, align 4, !tbaa !326
  br label %_ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE9get_glyphEjPj.exit

_ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE9get_glyphEjPj.exit: ; preds = %_ZNK2OT13SortedArrayOfINS_21CmapSubtableLongGroupENS_7NumTypeILb1EjLj4EEEE7bsearchIjEERKS1_RKT_S7_.exit.i, %bb.f
  ret i1 %.not.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT19CmapSubtableFormat413accelerator_t14get_glyph_funcEPKvjPj(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN21hb_sanitize_context_t13sanitize_blobIN2OT4cmapEEEP9hb_blob_tS4_(ptr noundef nonnull align 8 dereferenceable(62) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i.i.i.i = icmp eq ptr %1, null            ; 2 uses
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %1 monotonic, align 4 ; 0 uses
  %i.b = load atomic i32, ptr %1 monotonic, align 4
  %.not.i7.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i7.i.i.i, label %bb.d, label %bb.c, !prof !267

bb.c:                                             ; preds = %bb.b
  %i.c = atomicrmw add ptr %1, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !498
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.e, align 8, !tbaa !505
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !506
  %.pre2.i.i = load ptr, ptr %i.f, align 8, !tbaa !507
  br label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !498
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.h, align 8, !tbaa !505
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !275  ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !507
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !276
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !506
  br label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i

_ZN21hb_sanitize_context_t12reset_objectEv.exit.i: ; preds = %bb.d, %._crit_edge.i.i
  %i.q = phi ptr [ %i.f, %._crit_edge.i.i ], [ %i.i, %bb.d ]
  %i.r = phi ptr [ %i.d, %._crit_edge.i.i ], [ %i.g, %bb.d ] ; 2 uses
  %i.s = phi ptr [ %.pre2.i.i, %._crit_edge.i.i ], [ %i.k, %bb.d ] ; 3 uses
  %i.t = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.o, %bb.d ]
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32                    ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.x, ptr %i.y, align 8, !tbaa !508
  %i.z = icmp ugt i32 %i.x, 67108863
  br i1 %i.z, label %_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit, label %bb.e, !prof !267

bb.e:                                             ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i
  %i.aa = shl nuw i32 %i.x, 6
  %.not.i3.i.i = icmp samesign ugt i32 %i.x, 16777215
  %.sroa.speculate.load.false.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 16384)
  %.sroa.speculated.i = select i1 %.not.i3.i.i, i32 1073741823, i32 %.sroa.speculate.load.false.sroa.speculated.i
  br label %_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit

_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit: ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i, %bb.e
  %.sroa.speculated.sink.i = phi i32 [ %.sroa.speculated.i, %bb.e ], [ 1073741823, %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.speculated.sink.i, ptr %i.ab, align 4, !tbaa !510
  store i32 0, ptr %0, align 8, !tbaa !497
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.ac, align 4, !tbaa !509
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.f, label %bb.g, !prof !267

bb.f:                                             ; preds = %_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit
  tail call void @_ZN21hb_sanitize_context_t14end_processingEv(ptr noundef nonnull align 8 dereferenceable(62) %0)
  br label %hb_blob_make_immutable.exit

bb.g:                                             ; preds = %_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit
  %i.ad = tail call noundef zeroext i1 @_ZNK2OT4cmap8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(12) %i.s, ptr noundef nonnull %0)
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !498 ; 9 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, null
end_hunk_1
begin_hunk_2_@_ZN2OT4name13accelerator_tC2EP9hb_face_t:bb.a
bb.z:                                             ; preds = %bb.y
  %i.cw = icmp eq i16 %i.cj, 256
  %or.cond19.i = and i1 %i.cw, %i.cu
  %..i = select i1 %or.cond19.i, i16 10, i16 42
  br label %_ZNK2OT10NameRecord5scoreEv.exit

_ZNK2OT10NameRecord5scoreEv.exit:                 ; preds = %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EE4pushEv.exit, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z
  %.0.i43 = phi i16 [ 8, %bb.y ], [ 0, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EE4pushEv.exit ], [ 1, %bb.r ], [ 2, %bb.s ], [ 3, %bb.t ], [ 4, %bb.u ], [ 5, %bb.v ], [ 6, %bb.w ], [ 7, %bb.x ], [ %..i, %bb.z ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i16 %.0.i43, ptr %i.cx, align 4, !tbaa !280
  %i.cy = trunc i64 %indvars.iv to i16
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i, i64 6
  store i16 %i.cy, ptr %i.cz, align 2, !tbaa !280
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !6083

._crit_edge79:                                    ; preds = %bb.ah
  %i.da = icmp slt i32 %.1, 0
  br i1 %i.da, label %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EE6resizeEi.exit, label %._crit_edge79.thread, !prof !6085

._crit_edge79.thread:                             ; preds = %._crit_edge, %bb.j, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EE5qsortIPFiPKvS4_EEEvT_.exit, %._crit_edge79
  %.024.lcssa121 = phi i32 [ %.1, %._crit_edge79 ], [ %.1.peel, %bb.j ], [ 0, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EE5qsortIPFiPKvS4_EEEvT_.exit ], [ 0, %._crit_edge ] ; 4 uses
  %i.db = call noundef zeroext i1 @_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i32 noundef %.024.lcssa121, i1 noundef zeroext false)
  br i1 %i.db, label %bb.aa, label %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EE6resizeEi.exit

bb.aa:                                            ; preds = %._crit_edge79.thread
  %i.dc = load i32, ptr %i.az, align 4, !tbaa !2073 ; 3 uses
  %i.dd = icmp ugt i32 %.024.lcssa121, %i.dc
  br i1 %i.dd, label %bb.ab, label %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.de = sub nuw nsw i32 %.024.lcssa121, %i.dc
  %i.df = shl i32 %i.de, 4                        ; 2 uses
  %.not.i.i.i.i44 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i.i.i44, label %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, label %bb.ac, !prof !267

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !1353
  %i.di = zext nneg i32 %i.dc to i64
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.di
  %i.dk = zext i32 %i.df to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.dj, i8 0, i64 %i.dk, i1 false)
  br label %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i

_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  store i32 %.024.lcssa121, ptr %i.az, align 4, !tbaa !2073
  br label %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EE6resizeEi.exit

_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EE6resizeEi.exit: ; preds = %._crit_edge79, %._crit_edge79.thread, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i
  ret void

.peel.next:                                       ; preds = %bb.j, %bb.ah
  %i.dl = phi i32 [ %i.en, %bb.ah ], [ %.pre-phi.in, %bb.j ] ; 6 uses
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %bb.ah ], [ 1, %bb.j ] ; 9 uses
  %.02475 = phi i32 [ %.1, %bb.ah ], [ %.1.peel, %bb.j ] ; 7 uses
  %i.dm = zext i32 %i.dl to i64                   ; 6 uses
  %.not.i45 = icmp samesign ult i64 %indvars.iv83, %i.dm
  br i1 %.not.i45, label %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit, label %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit49.thread, !prof !268

_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit: ; preds = %.peel.next
  %i.dn = load ptr, ptr %i.bd, align 8, !tbaa !1353
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dn, i64 %indvars.iv83
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %.pre89 = load i16, ptr %.phi.trans.insert, align 4, !tbaa !280
  %i.dp = icmp eq i16 %.pre89, 42
  br i1 %i.dp, label %bb.ah, label %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit49

_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit49.thread: ; preds = %.peel.next
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, i8 0, i64 16, i1 false)
  br label %bb.ah

_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit49: ; preds = %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit
  %i.dq = load ptr, ptr %i.bd, align 8, !tbaa !1353
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %indvars.iv83
  %.phi.trans.insert90 = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.pre91 = load ptr, ptr %.phi.trans.insert90, align 8, !tbaa !2078
  %i.ds = icmp eq ptr %.pre91, null
  br i1 %i.ds, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit49
  %i.dt = add nsw i64 %indvars.iv83, -1           ; 3 uses
  %.not.i50.wide = icmp samesign ult i64 %i.dt, %i.dm
  br i1 %.not.i50.wide, label %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit55, label %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit55.thread, !prof !268

_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit55: ; preds = %bb.ad
  %i.du = load ptr, ptr %i.bd, align 8, !tbaa !1353 ; 2 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.dt
  %.pre93 = load i32, ptr %i.dv, align 8, !tbaa !2079
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %indvars.iv83
  %.pre94 = load i32, ptr %i.dw, align 8, !tbaa !2079
  %i.dx = icmp eq i32 %.pre93, %.pre94
  br i1 %i.dx, label %bb.ae, label %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit64

_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit55.thread: ; preds = %bb.ad
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, i8 0, i64 16, i1 false)
  %i.dy = load ptr, ptr %i.bd, align 8, !tbaa !1353
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %indvars.iv83
  %.pre94122 = load i32, ptr %i.dz, align 8, !tbaa !2079
  %i.ea = icmp eq i32 %.pre94122, 0
  br i1 %i.ea, label %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit61, label %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit64

bb.ae:                                            ; preds = %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit55
  %i.eb = load ptr, ptr %i.bd, align 8, !tbaa !1353
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %i.dt
  %.phi.trans.insert95 = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.pre96 = load ptr, ptr %.phi.trans.insert95, align 8, !tbaa !2078
  br label %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit61

_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit61: ; preds = %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit55.thread, %bb.ae
  %i.ed = phi ptr [ %.pre96, %bb.ae ], [ null, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit55.thread ]
  %i.ee = load ptr, ptr %i.bd, align 8, !tbaa !1353
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %indvars.iv83
  %.phi.trans.insert97 = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.pre98 = load ptr, ptr %.phi.trans.insert97, align 8, !tbaa !2078
  %i.eg = icmp eq ptr %i.ed, %.pre98
  br i1 %i.eg, label %bb.ah, label %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit64

_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit64: ; preds = %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit55.thread, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit61, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit55
  %i.eh = load ptr, ptr %i.bd, align 8, !tbaa !1353
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %indvars.iv83
  %i.ej = add i32 %.02475, 1
  %.not.i65 = icmp ult i32 %.02475, %i.dl
  br i1 %.not.i65, label %bb.ag, label %bb.af, !prof !268

bb.af:                                            ; preds = %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, i8 0, i64 16, i1 false)
  br label %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit67

bb.ag:                                            ; preds = %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit64
  %i.ek = load ptr, ptr %i.bd, align 8, !tbaa !1353
  %i.el = zext i32 %.02475 to i64
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %i.el
  br label %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit67

_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit67: ; preds = %bb.af, %bb.ag
  %.0.i66 = phi ptr [ @_hb_CrapPool, %bb.af ], [ %i.em, %bb.ag ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i66, ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i64 16, i1 false), !tbaa.struct !6086
  %.pre99 = load i32, ptr %i.az, align 4, !tbaa !1352 ; 2 uses
  %.pre101 = zext i32 %.pre99 to i64
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit49.thread, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit61, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit49, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit67
  %.pre-phi102 = phi i64 [ %i.dm, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit61 ], [ %i.dm, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit ], [ %i.dm, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit49 ], [ %.pre101, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit67 ], [ %i.dm, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit49.thread ]
  %i.en = phi i32 [ %i.dl, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit61 ], [ %i.dl, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit ], [ %i.dl, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit49 ], [ %.pre99, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit67 ], [ %i.dl, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit49.thread ]
  %.1 = phi i32 [ %.02475, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit61 ], [ %.02475, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit ], [ %.02475, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit49 ], [ %i.ej, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit67 ], [ %.02475, %_ZN11hb_vector_tI18hb_ot_name_entry_tLb0EEixEi.exit49.thread ] ; 3 uses
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.eo = icmp samesign ult i64 %indvars.iv.next84, %.pre-phi102
  br i1 %i.eo, label %.peel.next, label %._crit_edge79, !llvm.loop !6084
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2OT10NameRecord8languageEP9hb_face_t(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = load i16, ptr %0, align 1, !tbaa !283
  %i.c = tail call noundef i16 @llvm.bswap.i16(i16 %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i16, ptr %i.d, align 1, !tbaa !283
  %i.f = tail call noundef i16 @llvm.bswap.i16(i16 %i.e) ; 6 uses
  %i.g = zext i16 %i.f to i32
  switch i16 %i.c, label %_Z32_hb_ot_name_language_for_ms_codej.exit [
    i16 3, label %.lr.ph.i.i.i.i
    i16 1, label %.lr.ph.i.i.i.i9
    i16 0, label %bb.j
  ]

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.e
  %.0203.i.i.i.i = phi i32 [ %.2.i.i.i.i, %bb.e ], [ 239, %bb.a ] ; 2 uses
  %.0212.i.i.i.i = phi i32 [ %.223.i.i.i.i, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %i.h = add i32 %.0212.i.i.i.i, %.0203.i.i.i.i
  %i.i = lshr i32 %i.h, 1                         ; 3 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 3                  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr @_ZL19_hb_ms_language_map, i64 %i.k
  %i.m = load i16, ptr %i.l, align 8, !tbaa !1513 ; 2 uses
  %i.n = icmp ult i16 %i.f, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.o = add nsw i32 %i.i, -1
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %.not28.i.i.i.i = icmp eq i16 %i.f, %i.m
  br i1 %.not28.i.i.i.i, label %_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i32 %i.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.223.i.i.i.i = phi i32 [ %i.p, %bb.d ], [ %.0212.i.i.i.i, %bb.b ] ; 2 uses
  %.2.i.i.i.i = phi i32 [ %.0203.i.i.i.i, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %.not.not.i.i.i.i = icmp sgt i32 %.223.i.i.i.i, %.2.i.i.i.i
  br i1 %.not.not.i.i.i.i, label %_Z32_hb_ot_name_language_for_ms_codej.exit, label %.lr.ph.i.i.i.i, !llvm.loop !137

_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i.i: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr @_ZL19_hb_ms_language_map, i64 %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 2 uses
  %2 = load i8, ptr %i.r, align 2, !tbaa !280
  %.not.i.i.i.a = icmp eq i8 %2, 0
  br i1 %.not.i.i.i.a, label %_Z32_hb_ot_name_language_for_ms_codej.exit, label %3

3:                                                ; preds = %_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i.i
  %4 = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef nonnull readonly %i.r) ; 2 uses
  %.not11.i.i.i = icmp eq ptr %4, null
  br i1 %.not11.i.i.i, label %_Z32_hb_ot_name_language_for_ms_codej.exit, label %_Z32_hb_ot_name_language_for_ms_codej.exit.sink.split, !prof !267

.lr.ph.i.i.i.i9:                                  ; preds = %bb.a, %bb.i
  %.0203.i.i.i.i10 = phi i32 [ %.2.i.i.i.i14, %bb.i ], [ 116, %bb.a ] ; 2 uses
  %.0212.i.i.i.i11 = phi i32 [ %.223.i.i.i.i13, %bb.i ], [ 0, %bb.a ] ; 2 uses
  %i.s = add i32 %.0212.i.i.i.i11, %.0203.i.i.i.i10
  %i.t = lshr i32 %i.s, 1                         ; 3 uses
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr @_ZL20_hb_mac_language_map, i64 %i.v
  %i.x = load i16, ptr %i.w, align 8, !tbaa !1513 ; 2 uses
  %i.y = icmp ult i16 %i.f, %i.x
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i.i9
  %i.z = add nsw i32 %i.t, -1
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i9
  %.not28.i.i.i.i12 = icmp eq i16 %i.f, %i.x
  br i1 %.not28.i.i.i.i12, label %_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = add nuw nsw i32 %i.t, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.223.i.i.i.i13 = phi i32 [ %i.aa, %bb.h ], [ %.0212.i.i.i.i11, %bb.f ] ; 2 uses
  %.2.i.i.i.i14 = phi i32 [ %.0203.i.i.i.i10, %bb.h ], [ %i.z, %bb.f ] ; 2 uses
  %.not.not.i.i.i.i15 = icmp sgt i32 %.223.i.i.i.i13, %.2.i.i.i.i14
  br i1 %.not.not.i.i.i.i15, label %_Z32_hb_ot_name_language_for_ms_codej.exit, label %.lr.ph.i.i.i.i9, !llvm.loop !137

_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i.i17: ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZL20_hb_mac_language_map, i64 %i.v
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2 ; 2 uses
  %5 = load i8, ptr %i.ac, align 2, !tbaa !280
  %.not.i.i.i18 = icmp eq i8 %5, 0
  br i1 %.not.i.i.i18, label %_Z32_hb_ot_name_language_for_ms_codej.exit, label %6

6:                                                ; preds = %_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i.i17
  %7 = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef nonnull readonly %i.ac) ; 2 uses
  %.not11.i.i.i19 = icmp eq ptr %7, null
  br i1 %.not11.i.i.i19, label %_Z32_hb_ot_name_language_for_ms_codej.exit, label %_Z32_hb_ot_name_language_for_ms_codej.exit.sink.split, !prof !267

bb.j:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.af = load atomic ptr, ptr %i.ad acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4ltagE22hb_table_lazy_loader_tIS1_Lj34ELb0EE9hb_face_tLj34E9hb_blob_tEptEv.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.j, %bb.n
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4ltagE22hb_table_lazy_loader_tIS1_Lj34ELb0EE9hb_face_tLj34E9hb_blob_tEptEv.exit, label %bb.k, !prof !267

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN3AAT4ltagELj34ELb0EE6createEP9hb_face_t(ptr noundef nonnull %i.ag) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not10.i.i.i, label %bb.l, label %bb.m, !prof !267

bb.l:                                             ; preds = %bb.k
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.l ], [ %i.ah, %bb.k ] ; 3 uses
  %i.ai = cmpxchg weak ptr %i.ad, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.aj = extractvalue { ptr, i1 } %i.ai, 1
  br i1 %i.aj, label %_ZNK16hb_lazy_loader_tIN3AAT4ltagE22hb_table_lazy_loader_tIS1_Lj34ELb0EE9hb_face_tLj34E9hb_blob_tEptEv.exit, label %bb.n, !prof !268

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN16hb_lazy_loader_tIN3AAT4ltagE22hb_table_lazy_loader_tIS1_Lj34ELb0EE9hb_face_tLj34E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.ak = load atomic ptr, ptr %i.ad acquire, align 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i20, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4ltagE22hb_table_lazy_loader_tIS1_Lj34ELb0EE9hb_face_tLj34E9hb_blob_tEptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN3AAT4ltagE22hb_table_lazy_loader_tIS1_Lj34ELb0EE9hb_face_tLj34E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.m, %bb.n, %bb.j
  %.19.ph.i.i.i = phi ptr [ %i.af, %bb.j ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.ak, %bb.n ], [ %.07.i.i.i, %bb.m ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !275
  %i.an = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !276
  %i.ap = icmp ult i32 %i.ao, 12
  %spec.select.i.i.i.i.i = select i1 %i.ap, ptr @_hb_NullPool, ptr %i.am ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 8
  %i.ar = load i32, ptr %i.aq, align 1, !tbaa !278
  %i.as = tail call noundef i32 @llvm.bswap.i32(i32 %i.ar)
  %.not.i.i = icmp ugt i32 %i.as, %i.g
  br i1 %.not.i.i, label %bb.o, label %_ZNK2OT7ArrayOfIN3AAT13FTStringRangeENS_7NumTypeILb1EjLj4EEEEixEi.exit.i, !prof !268

bb.o:                                             ; preds = %_ZNK16hb_lazy_loader_tIN3AAT4ltagE22hb_table_lazy_loader_tIS1_Lj34ELb0EE9hb_face_tLj34E9hb_blob_tEptEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.at = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 12
  %i.au = zext i16 %i.f to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  br label %_ZNK2OT7ArrayOfIN3AAT13FTStringRangeENS_7NumTypeILb1EjLj4EEEEixEi.exit.i

_ZNK2OT7ArrayOfIN3AAT13FTStringRangeENS_7NumTypeILb1EjLj4EEEEixEi.exit.i: ; preds = %bb.o, %_ZNK16hb_lazy_loader_tIN3AAT4ltagE22hb_table_lazy_loader_tIS1_Lj34ELb0EE9hb_face_tLj34E9hb_blob_tEptEv.exit
  %.0.i.i21 = phi ptr [ %i.av, %bb.o ], [ @_hb_NullPool, %_ZNK16hb_lazy_loader_tIN3AAT4ltagE22hb_table_lazy_loader_tIS1_Lj34ELb0EE9hb_face_tLj34E9hb_blob_tEptEv.exit ] ; 2 uses
  %i.aw = load i16, ptr %.0.i.i21, align 1, !tbaa !283
  %i.ax = tail call noundef i16 @llvm.bswap.i16(i16 %i.aw)
  %i.ay = zext i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i21, i64 2
  %i.bb = load i16, ptr %i.ba, align 1, !tbaa !283 ; 2 uses
  %i.bc = tail call noundef i16 @llvm.bswap.i16(i16 %i.bb)
  %.not.i = icmp eq i16 %i.bb, 0
  br i1 %.not.i, label %_Z32_hb_ot_name_language_for_ms_codej.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK2OT7ArrayOfIN3AAT13FTStringRangeENS_7NumTypeILb1EjLj4EEEEixEi.exit.i
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !280
  %.not.i3.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i3.i, label %_Z32_hb_ot_name_language_for_ms_codej.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.be = tail call i16 @llvm.umin.i16(i16 %i.bc, i16 63)
  %i.bf = zext nneg i16 %i.be to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.az, i64 %i.bf, i1 false), !alias.scope !6090
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bf
  store i8 0, ptr %i.bg, align 1, !tbaa !280
  %i.bh = call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  %.not11.i.i = icmp eq ptr %i.bh, null
  br i1 %.not11.i.i, label %_Z32_hb_ot_name_language_for_ms_codej.exit, label %_Z32_hb_ot_name_language_for_ms_codej.exit.sink.split, !prof !267

_Z32_hb_ot_name_language_for_ms_codej.exit.sink.split: ; preds = %bb.q, %6, %3
  %.sink48 = phi ptr [ %7, %6 ], [ %4, %3 ], [ %i.bh, %bb.q ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sink48, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !702
  br label %_Z32_hb_ot_name_language_for_ms_codej.exit

_Z32_hb_ot_name_language_for_ms_codej.exit:       ; preds = %bb.i, %bb.e, %_Z32_hb_ot_name_language_for_ms_codej.exit.sink.split, %bb.q, %bb.p, %_ZNK2OT7ArrayOfIN3AAT13FTStringRangeENS_7NumTypeILb1EjLj4EEEEixEi.exit.i, %6, %_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i.i17, %3, %_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i.i, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.q ], [ %i.bj, %_Z32_hb_ot_name_language_for_ms_codej.exit.sink.split ], [ null, %bb.p ], [ null, %3 ], [ null, %_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i.i ], [ null, %bb.e ], [ null, %6 ], [ null, %_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i.i17 ], [ null, %_ZNK2OT7ArrayOfIN3AAT13FTStringRangeENS_7NumTypeILb1EjLj4EEEEixEi.exit.i ], [ null, %bb.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_ZN2OTL21_hb_ot_name_entry_cmpEPKvS1_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #21 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !2079   ; 2 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !2079   ; 2 uses
  %.not24.i = icmp eq i32 %i.a, %i.b
  br i1 %.not24.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub i32 %i.a, %i.b
  br label %_ZN2OTL25_hb_ot_name_entry_cmp_keyEPKvS1_b.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2078 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2078 ; 3 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZN2OTL25_hb_ot_name_entry_cmp_keyEPKvS1_b.exit.thread23, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not25.i = icmp eq ptr %i.e, null
  br i1 %.not25.i, label %_ZN2OTL25_hb_ot_name_entry_cmp_keyEPKvS1_b.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not26.i = icmp eq ptr %i.g, null
  br i1 %.not26.i, label %_ZN2OTL25_hb_ot_name_entry_cmp_keyEPKvS1_b.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) %i.g) #68
  br label %_ZN2OTL25_hb_ot_name_entry_cmp_keyEPKvS1_b.exit

_ZN2OTL25_hb_ot_name_entry_cmp_keyEPKvS1_b.exit:  ; preds = %bb.b, %bb.f
  %.1.i = phi i32 [ %i.c, %bb.b ], [ %i.i, %bb.f ] ; 2 uses
  %.not = icmp eq i32 %.1.i, 0
  br i1 %.not, label %_ZN2OTL25_hb_ot_name_entry_cmp_keyEPKvS1_b.exit.thread23, label %_ZN2OTL25_hb_ot_name_entry_cmp_keyEPKvS1_b.exit.thread

_ZN2OTL25_hb_ot_name_entry_cmp_keyEPKvS1_b.exit.thread23: ; preds = %bb.c, %_ZN2OTL25_hb_ot_name_entry_cmp_keyEPKvS1_b.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i16, ptr %i.j, align 4, !tbaa !280  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i16, ptr %i.l, align 4, !tbaa !280  ; 2 uses
  %.not19 = icmp eq i16 %i.k, %i.m
  br i1 %.not19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN2OTL25_hb_ot_name_entry_cmp_keyEPKvS1_b.exit.thread23
  %i.n = zext i16 %i.m to i32
  %i.o = zext i16 %i.k to i32
  %i.p = sub nsw i32 %i.o, %i.n
  br label %_ZN2OTL25_hb_ot_name_entry_cmp_keyEPKvS1_b.exit.thread

bb.h:                                             ; preds = %_ZN2OTL25_hb_ot_name_entry_cmp_keyEPKvS1_b.exit.thread23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.r = load i16, ptr %i.q, align 2, !tbaa !280  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.t = load i16, ptr %i.s, align 2, !tbaa !280  ; 2 uses
  %.not20 = icmp eq i16 %i.r, %i.t
  br i1 %.not20, label %_ZN2OTL25_hb_ot_name_entry_cmp_keyEPKvS1_b.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = zext i16 %i.t to i32
  %i.v = zext i16 %i.r to i32
  %i.w = sub nsw i32 %i.v, %i.u
  br label %_ZN2OTL25_hb_ot_name_entry_cmp_keyEPKvS1_b.exit.thread

_ZN2OTL25_hb_ot_name_entry_cmp_keyEPKvS1_b.exit.thread: ; preds = %bb.d, %bb.e, %bb.g, %bb.i, %bb.h, %_ZN2OTL25_hb_ot_name_entry_cmp_keyEPKvS1_b.exit
  %.1 = phi i32 [ %.1.i, %_ZN2OTL25_hb_ot_name_entry_cmp_keyEPKvS1_b.exit ], [ %i.p, %bb.g ], [ %i.w, %bb.i ], [ 0, %bb.h ], [ -1, %bb.d ], [ 1, %bb.e ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN21hb_sanitize_context_t13sanitize_blobIN2OT4nameEEEP9hb_blob_tS4_(ptr noundef nonnull align 8 dereferenceable(62) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i.i.i.i = icmp eq ptr %1, null            ; 2 uses
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %1 monotonic, align 4 ; 0 uses
  %i.b = load atomic i32, ptr %1 monotonic, align 4
  %.not.i7.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i7.i.i.i, label %bb.d, label %bb.c, !prof !267

bb.c:                                             ; preds = %bb.b
  %i.c = atomicrmw add ptr %1, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !498
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.e, align 8, !tbaa !505
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !506
  %.pre2.i.i = load ptr, ptr %i.f, align 8, !tbaa !507
  br label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !498
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.h, align 8, !tbaa !505
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !275  ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !507
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !276
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !506
  br label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i

_ZN21hb_sanitize_context_t12reset_objectEv.exit.i: ; preds = %bb.d, %._crit_edge.i.i
  %i.q = phi ptr [ %i.f, %._crit_edge.i.i ], [ %i.i, %bb.d ] ; 2 uses
  %i.r = phi ptr [ %i.d, %._crit_edge.i.i ], [ %i.g, %bb.d ] ; 2 uses
  %i.s = phi ptr [ %.pre2.i.i, %._crit_edge.i.i ], [ %i.k, %bb.d ] ; 7 uses
  %i.t = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.o, %bb.d ]
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = trunc i64 %i.w to i32                    ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 %i.x, ptr %i.y, align 8, !tbaa !508
  %i.z = icmp ugt i32 %i.x, 67108863
  br i1 %i.z, label %_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit, label %bb.e, !prof !267

bb.e:                                             ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i
  %i.aa = shl nuw i32 %i.x, 6
  %.not.i3.i.i = icmp samesign ugt i32 %i.x, 16777215
  %.sroa.speculate.load.false.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 16384)
  %.sroa.speculated.i = select i1 %.not.i3.i.i, i32 1073741823, i32 %.sroa.speculate.load.false.sroa.speculated.i
  br label %_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit

_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit: ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i, %bb.e
  %.sroa.speculated.sink.i = phi i32 [ %.sroa.speculated.i, %bb.e ], [ 1073741823, %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  store i32 %.sroa.speculated.sink.i, ptr %i.ab, align 4, !tbaa !510
  store i32 0, ptr %0, align 8, !tbaa !497
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.ac, align 4, !tbaa !509
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.f, label %bb.g, !prof !267

bb.f:                                             ; preds = %_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit
  tail call void @_ZN21hb_sanitize_context_t14end_processingEv(ptr noundef nonnull align 8 dereferenceable(62) %0)
  br label %hb_blob_make_immutable.exit

bb.g:                                             ; preds = %_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.ae = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.af = and i64 %i.w, 4294967294
  %.not.i = icmp samesign ult i64 %i.af, 6
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  br i1 %.not.i, label %_ZNK2OT4name8sanitizeEP21hb_sanitize_context_t.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ah = load i16, ptr %i.s, align 1, !tbaa !283
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah)
  %switch.i = icmp ult i16 %i.ai, 2
  br i1 %switch.i, label %.critedge.i, label %_ZNK2OT4name8sanitizeEP21hb_sanitize_context_t.exit, !prof !2071

.critedge.i:                                      ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.ak = load i16, ptr %i.aj, align 1, !tbaa !283
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32
  %i.an = mul nuw nsw i32 %i.am, 12               ; 2 uses
  %i.ao = load ptr, ptr %i.q, align 8, !tbaa !507
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.aq = sub i64 %i.ae, %i.ap
  %i.ar = load i32, ptr %i.y, align 8, !tbaa !508
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %.not.i.i.i.i9 = icmp ugt i64 %i.aq, %i.as
  br i1 %.not.i.i.i.i9, label %_ZNK2OT4name8sanitizeEP21hb_sanitize_context_t.exit, label %bb.i

bb.i:                                             ; preds = %.critedge.i
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !506
  %i.au = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.av = sub i64 %i.au, %i.ae
  %i.aw = trunc i64 %i.av to i32
  %.not12.i.i.i.i = icmp ugt i32 %i.an, %i.aw
  br i1 %.not12.i.i.i.i, label %_ZNK2OT4name8sanitizeEP21hb_sanitize_context_t.exit, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT10NameRecordEEEbPKT_j.exit.i

_ZNK21hb_sanitize_context_t11check_arrayIN2OT10NameRecordEEEbPKT_j.exit.i: ; preds = %bb.i
  %i.ax = load i32, ptr %i.ab, align 4, !tbaa !510
  %i.ay = sub i32 %i.ax, %i.an                    ; 3 uses
  store i32 %i.ay, ptr %i.ab, align 4, !tbaa !510
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %bb.j, label %_ZNK2OT4name8sanitizeEP21hb_sanitize_context_t.exit

bb.j:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN2OT10NameRecordEEEbPKT_j.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.bb = load i16, ptr %i.ba, align 1, !tbaa !283
  %i.bc = tail call noundef i16 @llvm.bswap.i16(i16 %i.bb)
end_hunk_2
