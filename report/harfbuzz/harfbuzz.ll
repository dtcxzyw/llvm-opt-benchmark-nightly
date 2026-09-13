Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 272
loop-unroll.NumUnrolled: 471
begin_hunk_0_@hb_shape_plan_create_cached2:bb.a
  %i.cj = cmpxchg weak ptr %i.a, ptr %i.o, ptr %i.ch acq_rel monotonic, align 8
  %i.ck = extractvalue { ptr, i1 } %i.cj, 1
  br i1 %i.ck, label %bb.s, label %hb_shape_plan_reference.exit54, !prof !268

bb.s:                                             ; preds = %bb.r
  %i.cl = load atomic i32, ptr %i.cg monotonic, align 4 ; 0 uses
  %i.cm = load atomic i32, ptr %i.cg monotonic, align 4
  %.not.i7.i.i53 = icmp eq i32 %i.cm, 0
  br i1 %.not.i7.i.i53, label %.loopexit, label %bb.t, !prof !267

bb.t:                                             ; preds = %bb.s
  %i.cn = atomicrmw add ptr %i.cg, i32 1 acq_rel, align 4 ; 0 uses
  br label %.loopexit

hb_shape_plan_reference.exit54:                   ; preds = %bb.r
  tail call void @hb_shape_plan_destroy(ptr noundef nonnull %i.cg)
  tail call void @free(ptr noundef nonnull %i.ch) #63
  %i.co = load atomic ptr, ptr %i.a acquire, align 8
  %i.cp = load atomic i32, ptr %0 monotonic, align 8
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %bb.b, label %.thread, !prof !3154

.loopexit:                                        ; preds = %._crit_edge, %hb_shape_plan_reference.exit.thread, %.thread, %bb.s, %bb.t
  %.6.ph = phi ptr [ %i.cg, %bb.t ], [ %i.cg, %bb.s ], [ %.248.ph, %hb_shape_plan_reference.exit.thread ], [ %i.n, %.thread ], [ %i.cg, %._crit_edge ]
  ret ptr %.6.ph
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @hb_shape_list_shapers() local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic ptr, ptr @_ZL18static_shaper_list acquire, align 8 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.a, null
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !607  ; 5 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.n, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !654
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 209 ; 2 uses
  store i8 0, ptr %i.d, align 1, !tbaa !655
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i32 0, ptr %i.e, align 8, !tbaa !606
  %i.f = icmp ugt i32 %i.b, 16777215
  br i1 %i.f, label %_ZN11hb_buffer_t5enterEv.exit, label %bb.c, !prof !267

bb.c:                                             ; preds = %bb.b
  %i.g = shl nuw i32 %i.b, 8
  %.sroa.speculated5.i = tail call i32 @llvm.umax.i32(i32 %i.g, i32 65536)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 220
  store i32 %.sroa.speculated5.i, ptr %i.h, align 4, !tbaa !650
  %i.i = icmp samesign ugt i32 %i.b, 1048575
  br i1 %i.i, label %_ZN11hb_buffer_t5enterEv.exit, label %bb.d, !prof !318

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i32 %i.b, 12
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.j, i32 65536)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i32 %.sroa.speculated.i, ptr %i.k, align 8, !tbaa !651
  br label %_ZN11hb_buffer_t5enterEv.exit

_ZN11hb_buffer_t5enterEv.exit:                    ; preds = %bb.b, %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !587
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
  store i32 1073741823, ptr %i.s, align 4, !tbaa !650
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  store i32 536870911, ptr %i.t, align 8, !tbaa !651
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
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !586, !range !380, !noundef !293
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.031, i64 88
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !586, !range !380, !noundef !293
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
  store i32 1073741823, ptr %i.ak, align 4, !tbaa !650
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i32 536870911, ptr %i.al, align 8, !tbaa !651
  store i8 0, ptr %i.c, align 8, !tbaa !654
  store i8 0, ptr %i.d, align 1, !tbaa !655
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
  %.0203.i.i.i = phi i32 [ 239, %bb.a ], [ %.2.i.i.i, %bb.e ] ; 2 uses
  %.0212.i.i.i = phi i32 [ 0, %bb.a ], [ %.223.i.i.i, %bb.e ] ; 2 uses
  %i.a = add i32 %.0212.i.i.i, %.0203.i.i.i
  %i.b = lshr i32 %i.a, 1                         ; 3 uses
  %i.c = zext nneg i32 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr @_ZL19_hb_ms_language_map, i64 %i.d
  %i.f = load i16, ptr %i.e, align 8, !tbaa !1511
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
  %i.m = load i8, ptr %i.l, align 2, !tbaa !280
  %.not.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i, label %_ZL24_hb_ot_name_language_forjPK20hb_ot_language_map_tj.exit, label %bb.f

bb.f:                                             ; preds = %_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i
  %i.n = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef nonnull readonly %i.l) ; 2 uses
  %.not11.i.i = icmp eq ptr %i.n, null
  br i1 %.not11.i.i, label %_ZL24_hb_ot_name_language_forjPK20hb_ot_language_map_tj.exit, label %bb.g, !prof !267

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !700
  br label %_ZL24_hb_ot_name_language_forjPK20hb_ot_language_map_tj.exit

_ZL24_hb_ot_name_language_forjPK20hb_ot_language_map_tj.exit: ; preds = %bb.e, %_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i, %bb.f, %bb.g
  %.0.i = phi ptr [ %i.p, %bb.g ], [ null, %bb.f ], [ null, %_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i ], [ null, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_Z33_hb_ot_name_language_for_mac_codej(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.a
  %.0203.i.i.i = phi i32 [ 116, %bb.a ], [ %.2.i.i.i, %bb.e ] ; 2 uses
  %.0212.i.i.i = phi i32 [ 0, %bb.a ], [ %.223.i.i.i, %bb.e ] ; 2 uses
  %i.a = add i32 %.0212.i.i.i, %.0203.i.i.i
  %i.b = lshr i32 %i.a, 1                         ; 3 uses
  %i.c = zext nneg i32 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr @_ZL20_hb_mac_language_map, i64 %i.d
  %i.f = load i16, ptr %i.e, align 8, !tbaa !1511
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
  %i.m = load i8, ptr %i.l, align 2, !tbaa !280
  %.not.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i, label %_ZL24_hb_ot_name_language_forjPK20hb_ot_language_map_tj.exit, label %bb.f

bb.f:                                             ; preds = %_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i
  %i.n = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef nonnull readonly %i.l) ; 2 uses
  %.not11.i.i = icmp eq ptr %i.n, null
  br i1 %.not11.i.i, label %_ZL24_hb_ot_name_language_forjPK20hb_ot_language_map_tj.exit, label %bb.g, !prof !267

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !700
  br label %_ZL24_hb_ot_name_language_forjPK20hb_ot_language_map_tj.exit

_ZL24_hb_ot_name_language_forjPK20hb_ot_language_map_tj.exit: ; preds = %bb.e, %_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i, %bb.f, %bb.g
  %.0.i = phi ptr [ %i.p, %bb.g ], [ null, %bb.f ], [ null, %_ZL10hb_bsearchIK20hb_ot_language_map_tjEPT_RKT0_S3_mmPFiPKvS8_E.exit.i ], [ null, %bb.e ]
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
  %i.k = load i32, ptr %2, align 4, !tbaa !1438   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.m = load i32, ptr %i.l, align 4, !tbaa !310
  %i.n = icmp ult i32 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1063
  %i.q = zext i32 %i.k to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !304
  br label %common.ret

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 20
end_hunk_0
begin_hunk_1_@_ZN12hb_ot_font_tD2Ev:bb.a
  %i.t = extractvalue { ptr, i1 } %i.s, 1
  br i1 %i.t, label %bb.o, label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i4

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i.i.i6 = icmp eq ptr %i.r, @_hb_NullPool
  br i1 %.not.i.i.i.i.i6, label %_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.r) #63
  br label %_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit

_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit:    ; preds = %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i4, %bb.o, %bb.p
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit
  %i.v = load atomic ptr, ptr %i.u acquire, align 8 ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i7, label %_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i8, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.w = cmpxchg weak ptr %i.u, ptr %i.v, ptr null acq_rel monotonic, align 8
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %bb.s, label %bb.q

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.v) #63
  br label %_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i8

_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i8: ; preds = %bb.q, %bb.s
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i9

_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i9: ; preds = %bb.t, %_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i8
  %i.z = load atomic ptr, ptr %i.y acquire, align 8 ; 4 uses
  %.not.i1.i.i10 = icmp eq ptr %i.z, null
  br i1 %.not.i1.i.i10, label %_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit12, label %bb.t

bb.t:                                             ; preds = %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i9
  %i.aa = cmpxchg weak ptr %i.y, ptr %i.z, ptr null acq_rel monotonic, align 8
  %i.ab = extractvalue { ptr, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.u, label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i9

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i.i.i11 = icmp eq ptr %i.z, @_hb_NullPool
  br i1 %.not.i.i.i.i.i11, label %_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit12, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @free(ptr noundef nonnull %i.z) #63
  br label %_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit12

_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit12:  ; preds = %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i9, %bb.u, %bb.v
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT9KerxTableIN2OT6KernOTEE5applyEPNS_22hb_aat_apply_context_tERKNS_23kern_accelerator_data_tE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %struct.hb_glyph_position_t, align 4 ; 4 uses
  %4 = alloca %struct.hb_glyph_info_t, align 4    ; 4 uses
  %5 = alloca %struct.hb_glyph_position_t, align 4 ; 4 uses
  %6 = alloca %struct.hb_glyph_info_t, align 4    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !494  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !587
  %i.e = and i32 %i.d, 64
  %i.f = icmp eq i32 %i.e, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !324 ; 5 uses
  br i1 %i.f, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %bb.b, !prof !268

bb.b:                                             ; preds = %bb.a
  %.not98 = icmp eq i32 %.pre, 0
  br i1 %.not98, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread, label %.lr.ph.i

_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 141 ; 2 uses
  store i8 0, ptr %i.h, align 1, !tbaa !588
  br label %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589  ; 5 uses
  %wide.trip.count.i = zext i32 %.pre to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.k = icmp ult i32 %.pre, 4
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.c ]
  %i.l = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !591
  %i.o = or i32 %i.n, 2
  store i32 %i.o, ptr %i.m, align 4, !tbaa !591
  %i.p = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !591
  %i.s = or i32 %i.r, 2
  store i32 %i.s, ptr %i.q, align 4, !tbaa !591
  %i.t = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 44 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !591
  %i.w = or i32 %i.v, 2
  store i32 %i.w, ptr %i.u, align 4, !tbaa !591
  %i.x = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !591
  %i.aa = or i32 %i.z, 2
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !591
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !16

_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa ]
  %lcmp.mod149 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod149)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ab = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv.i.epil
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !591
  %i.ae = or i32 %i.ad, 2
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !591
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %bb.d, !llvm.loop !3687

_ZN11hb_buffer_t16unsafe_to_concatEjj.exit:       ; preds = %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %i.af = icmp ugt i32 %.pre, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 5 uses
  %i.ai = icmp ne ptr %i.ah, null
  %i.aj = select i1 %i.af, i1 %i.ai, i1 false     ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 141 ; 3 uses
  %i.al = zext i1 %i.aj to i8
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !588
  br i1 %i.aj, label %bb.e, label %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit, !prof !592

bb.e:                                             ; preds = %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 36 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !546
  %.not.i.i.i = icmp eq i32 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %.not1.i.i.i = icmp eq i32 %i.ap, 0
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %.not1.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.am, align 4, !tbaa !547
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  store i32 0, ptr %i.aq, align 4, !tbaa !548
  store i32 0, ptr %i.ao, align 4, !tbaa !549
  br label %_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i

_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i: ; preds = %bb.f, %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !589
  tail call void @_ZN12hb_bit_set_t9set_arrayIjEEvbPKT_jj(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i1 noundef zeroext true, ptr noundef %i.as, i32 noundef %.pre, i32 noundef 20)
  br label %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit

_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit: ; preds = %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, %_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i
  %i.at = phi ptr [ %i.h, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread ], [ %i.ak, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit ], [ %i.ak, %_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i ]
  %i.au = phi ptr [ %i.g, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread ], [ %i.ag, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit ], [ %i.ag, %_ZNK11hb_buffer_t18collect_codepointsI12hb_bit_set_tEEvRT_.exit.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 6 uses
  store i32 0, ptr %i.av, align 8, !tbaa !593
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !283 ; 2 uses
  %.not110 = icmp eq i16 %i.ax, 0
  br i1 %.not110, label %._crit_edge, label %.lr.ph109

.lr.ph109:                                        ; preds = %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit
  %i.ay = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax) ; 2 uses
  %i.az = zext i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 3 uses
  %i.bi = add nsw i64 %i.az, -1
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.phi.trans.insert1.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %wide.trip.count118 = zext i16 %i.ay to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.x, %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit
  %.060.lcssa = phi i1 [ false, %_ZN3AAT22hb_aat_apply_context_t22setup_buffer_glyph_setEv.exit ], [ %.161, %bb.x ]
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !1676, !range !380, !noundef !293
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.y, label %bb.aa

bb.g:                                             ; preds = %.lr.ph109, %bb.x
  %indvars.iv116 = phi i64 [ 0, %.lr.ph109 ], [ %indvars.iv.next117, %bb.x ] ; 4 uses
  %.058106 = phi ptr [ %i.ba, %.lr.ph109 ], [ %i.iw, %bb.x ] ; 6 uses
  %.059105 = phi i1 [ false, %.lr.ph109 ], [ %.2, %bb.x ] ; 4 uses
  %.060104 = phi i1 [ false, %.lr.ph109 ], [ %.161, %bb.x ] ; 4 uses
  %i.bp = load i32, ptr %i.bb, align 4, !tbaa !1679
  %i.bq = zext i32 %i.bp to i64
  %.not.i65 = icmp samesign ult i64 %indvars.iv116, %i.bq
  %i.br = load ptr, ptr %i.bc, align 8
  %i.bs = getelementptr inbounds nuw [608 x i8], ptr %i.br, i64 %indvars.iv116
  %.0.i = select i1 %.not.i65, ptr %i.bs, ptr @_hb_NullPool, !prof !268 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.058106, i64 5 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !303
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !494 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !614
  %i.by = and i32 %i.bx, -2
  %i.bz = trunc i8 %i.bu to i1
  %i.ca = icmp ne i32 %i.by, 4
  %.not = xor i1 %i.ca, %i.bz
  br i1 %.not, label %bb.h, label %bb.x

bb.h:                                             ; preds = %bb.g
  store ptr %.0.i, ptr %i.bd, align 8, !tbaa !1680
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  store ptr %i.cb, ptr %i.be, align 8, !tbaa !1681
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i, i64 96
  store ptr %i.cc, ptr %i.bf, align 8, !tbaa !1682
  %i.cd = load i8, ptr %i.at, align 1, !tbaa !588, !range !380, !noundef !293
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit, label %.preheader.i, !prof !268

.preheader.i:                                     ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 96
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !607
  %.not.i66 = icmp eq i32 %i.cg, 0
  br i1 %.not.i66, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread, label %.lr.ph.i67

_ZNK12hb_bit_set_t3hasEj.exit.thread:             ; preds = %bb.m, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i._ZNK12hb_bit_set_t3hasEj.exit.thread_crit_edge, %._crit_edge.i.i.i.i, %_ZNK12hb_bit_set_t3hasEj.exit
  %i.ch = phi ptr [ %.pre123, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i._ZNK12hb_bit_set_t3hasEj.exit.thread_crit_edge ], [ %.pre124, %_ZNK12hb_bit_set_t3hasEj.exit ], [ %i.cm, %._crit_edge.i.i.i.i ], [ %i.cm, %bb.m ] ; 3 uses
  %indvars.iv.next.i69 = add nuw nsw i64 %indvars.iv.i68, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 96
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !607
  %i.ck = zext i32 %i.cj to i64
  %i.cl = icmp samesign ult i64 %indvars.iv.next.i69, %i.ck
  br i1 %i.cl, label %.lr.ph.i67, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread, !llvm.loop !159

.lr.ph.i67:                                       ; preds = %.preheader.i, %_ZNK12hb_bit_set_t3hasEj.exit.thread
  %i.cm = phi ptr [ %i.ch, %_ZNK12hb_bit_set_t3hasEj.exit.thread ], [ %i.bv, %.preheader.i ] ; 3 uses
  %indvars.iv.i68 = phi i64 [ %indvars.iv.next.i69, %_ZNK12hb_bit_set_t3hasEj.exit.thread ], [ 0, %.preheader.i ] ; 2 uses
  %i.cn = load ptr, ptr %i.bd, align 8, !tbaa !1680 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 112
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !589
  %i.cq = getelementptr inbounds nuw [20 x i8], ptr %i.cp, i64 %indvars.iv.i68
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !637 ; 3 uses
  %i.cs = lshr i32 %i.cr, 9                       ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cu = load atomic i32, ptr %i.ct monotonic, align 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 20
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !1233 ; 3 uses
  %i.cx = icmp ult i32 %i.cu, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !553 ; 3 uses
  br i1 %i.cx, label %bb.i, label %._crit_edge.i.i.i.i, !prof !268

bb.i:                                             ; preds = %.lr.ph.i67
  %i.da = zext i32 %i.cu to i64                   ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !1235
  %.not.i.i.i.i = icmp eq i32 %i.dc, %i.cs
  br i1 %.not.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.i, %.lr.ph.i67
  %.not1.i.i.i.i.i.i.i.i = icmp sgt i32 %i.cw, 0
  br i1 %.not1.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t3hasEj.exit.thread

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i
  %i.dd = add nsw i32 %i.cw, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.m, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i, %bb.m ], [ %i.dd, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i, %bb.m ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.de = add i32 %.0212.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i
  %i.df = lshr i32 %i.de, 1                       ; 4 uses
  %i.dg = zext nneg i32 %i.df to i64              ; 2 uses
  %i.dh = shl nuw nsw i64 %i.dg, 3
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !1235 ; 2 uses
  %i.dk = icmp slt i32 %i.cs, %i.dj
  br i1 %i.dk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.dl = add nsw i32 %i.df, -1
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i = icmp eq i32 %i.cs, %i.dj
  br i1 %.not28.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dm = add nuw nsw i32 %i.df, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.223.i.i.i.i.i.i.i.i = phi i32 [ %i.dm, %bb.l ], [ %.0212.i.i.i.i.i.i.i.i, %bb.j ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i, %bb.l ], [ %i.dl, %bb.j ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t3hasEj.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !135

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i: ; preds = %bb.k
  store atomic i32 %i.df, ptr %i.ct monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i:         ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i, %bb.i
  %i.dn = phi i64 [ %i.dg, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i ], [ %i.da, %bb.i ]
  %.sink.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %.sink.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i, align 8, !tbaa !1236 ; 2 uses
  %.not.i.i.i89 = icmp eq ptr %.sink.i.i.i.i, null
  br i1 %.not.i.i.i89, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i._ZNK12hb_bit_set_t3hasEj.exit.thread_crit_edge, label %_ZNK12hb_bit_set_t3hasEj.exit

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i._ZNK12hb_bit_set_t3hasEj.exit.thread_crit_edge: ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i
  %.pre123 = load ptr, ptr %i.a, align 8, !tbaa !494
  br label %_ZNK12hb_bit_set_t3hasEj.exit.thread

_ZNK12hb_bit_set_t3hasEj.exit:                    ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !1238
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = lshr i32 %i.cr, 6
  %i.dv = and i32 %i.du, 7
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !1240
  %i.dz = and i32 %i.cr, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = and i64 %i.dy, %i.eb
  %.not99 = icmp eq i64 %i.ec, 0
  %.pre124 = load ptr, ptr %i.a, align 8, !tbaa !494 ; 2 uses
  br i1 %.not99, label %_ZNK12hb_bit_set_t3hasEj.exit.thread, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread96

_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit: ; preds = %bb.h
  %i.ed = load ptr, ptr %i.au, align 8, !tbaa !551
  %i.ee = tail call noundef zeroext i1 @_ZNK12hb_bit_set_t10intersectsERKS_(ptr noundef nonnull align 8 dereferenceable(48) %i.ed, ptr noundef nonnull align 8 dereferenceable(48) %.0.i)
  %.pre122 = load ptr, ptr %i.a, align 8, !tbaa !494 ; 2 uses
  br i1 %i.ee, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread96, label %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread

_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread: ; preds = %_ZNK12hb_bit_set_t3hasEj.exit.thread, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit, %.preheader.i
  %i.ef = phi ptr [ %i.bv, %.preheader.i ], [ %.pre122, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit ], [ %i.ch, %_ZNK12hb_bit_set_t3hasEj.exit.thread ]
  %i.eg = load ptr, ptr %i.bg, align 8, !tbaa !492
  %i.eh = load i32, ptr %i.av, align 8, !tbaa !593
  %i.ei = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %i.ef, ptr noundef %i.eg, ptr noundef nonnull @.str.104, i32 noundef %i.eh) ; 0 uses
  br label %bb.x

_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread96: ; preds = %_ZNK12hb_bit_set_t3hasEj.exit, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit
  %i.ej = phi ptr [ %.pre122, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit ], [ %.pre124, %_ZNK12hb_bit_set_t3hasEj.exit ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !614
  %i.em = and i32 %i.el, -3
  %i.en = icmp eq i32 %i.em, 5
  %i.eo = load ptr, ptr %i.bg, align 8, !tbaa !492
  %i.ep = load i32, ptr %i.av, align 8, !tbaa !593
  %i.eq = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %i.ej, ptr noundef %i.eo, ptr noundef nonnull @.str.105, i32 noundef %i.ep)
  br i1 %i.eq, label %bb.n, label %bb.x

bb.n:                                             ; preds = %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread96
  br i1 %.059105, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.er = load i8, ptr %i.bt, align 1, !tbaa !303
  %i.es = and i8 %i.er, 4
  %.not63 = icmp eq i8 %i.es, 0
  br i1 %.not63, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.et = load ptr, ptr %i.a, align 8, !tbaa !494 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 128
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !611 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !607 ; 4 uses
  %.not111 = icmp eq i32 %i.ex, 0
  br i1 %.not111, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.p
  %wide.trip.count = zext i32 %i.ex to i64        ; 2 uses
  %xtraiter150 = and i64 %wide.trip.count, 1
  %i.ey = icmp eq i32 %i.ex, 1
  br i1 %i.ey, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter154 = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %niter155 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter155.next.1, %.lr.ph ]
  %i.ez = getelementptr inbounds nuw [20 x i8], ptr %i.ev, i64 %indvars.iv ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 18
  store i8 2, ptr %i.fb, align 2, !tbaa !280
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !494
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !614
  %i.ff = and i32 %i.fe, -3
  %i.fg = icmp eq i32 %i.ff, 4
  %i.fh = select i1 %i.fg, i16 -1, i16 1
  store i16 %i.fh, ptr %i.fa, align 4, !tbaa !280
  %i.fi = getelementptr inbounds nuw [20 x i8], ptr %i.ev, i64 %indvars.iv ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 36
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 38
  store i8 2, ptr %i.fk, align 2, !tbaa !280
  %i.fl = load ptr, ptr %i.a, align 8, !tbaa !494
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 56
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !614
  %i.fo = and i32 %i.fn, -3
  %i.fp = icmp eq i32 %i.fo, 4
  %i.fq = select i1 %i.fp, i16 -1, i16 1
  store i16 %i.fq, ptr %i.fj, align 4, !tbaa !280
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter155.next.1 = add i64 %niter155, 2         ; 2 uses
  %niter155.ncmp.1 = icmp eq i64 %niter155.next.1, %unroll_iter154
  br i1 %niter155.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3688

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod152.not = icmp eq i64 %xtraiter150, 0
  br i1 %lcmp.mod152.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod153 = trunc i32 %i.ex to i1
  tail call void @llvm.assume(i1 %lcmp.mod153)
  %i.fr = getelementptr inbounds nuw [20 x i8], ptr %i.ev, i64 %indvars.iv.epil.init ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 18
  store i8 2, ptr %i.ft, align 2, !tbaa !280
  %i.fu = load ptr, ptr %i.a, align 8, !tbaa !494
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 56
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !614
  %i.fx = and i32 %i.fw, -3
  %i.fy = icmp eq i32 %i.fx, 4
  %i.fz = select i1 %i.fy, i16 -1, i16 1
  store i16 %i.fz, ptr %i.fs, align 4, !tbaa !280
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.p, %bb.o, %bb.n
  %.1 = phi i1 [ true, %bb.n ], [ false, %bb.o ], [ true, %bb.p ], [ true, %.loopexit.loopexit.unr-lcssa ], [ true, %.lr.ph.epil.preheader ]
  %i.ga = load i8, ptr %i.bh, align 4, !tbaa !1676, !range !380, !noundef !293
  %i.gb = zext i1 %i.en to i8
  %.not64 = icmp eq i8 %i.ga, %i.gb
  br i1 %.not64, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.gc = load ptr, ptr %i.a, align 8, !tbaa !494 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 96 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !607 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 112
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !589 ; 2 uses
  %i.gh = icmp ult i32 %i.ge, 2
  br i1 %i.gh, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.q
  %i.gi = lshr i32 %i.ge, 1
  %zext.i.i = zext nneg i32 %i.gi to i64
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.0.in17.i.i.i.i = phi i32 [ %i.ge, %.lr.ph.preheader.i.i.i.i ], [ %.0.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.0.i.i.i.i = add i32 %.0.in17.i.i.i.i, -1      ; 2 uses
  %i.gj = zext i32 %.0.i.i.i.i to i64
  %i.gk = getelementptr inbounds nuw [20 x i8], ptr %i.gg, i64 %i.gj ; 2 uses
  %i.gl = getelementptr inbounds nuw [20 x i8], ptr %i.gg, i64 %indvars.iv.i.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %i.gk, i64 20, i1 false), !tbaa.struct !610
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gk, ptr noundef nonnull align 4 dereferenceable(20) %i.gl, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gl, ptr noundef nonnull align 4 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.gm = icmp eq i64 %indvars.iv.next.i.i.i.i, %zext.i.i
  br i1 %i.gm, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !22

_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.q
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gc, i64 90
  %i.go = load i8, ptr %i.gn, align 2, !tbaa !632, !range !380, !noundef !293
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.r, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit

bb.r:                                             ; preds = %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gc, i64 128
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !611 ; 2 uses
  %i.gs = load i32, ptr %i.gd, align 8, !tbaa !607
  %.sroa.speculated.i5.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.ge, i32 %i.gs) ; 3 uses
  %i.gt = icmp ult i32 %.sroa.speculated.i5.i.i.i, 2
  br i1 %i.gt, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit, label %.lr.ph.preheader.i6.i.i.i

.lr.ph.preheader.i6.i.i.i:                        ; preds = %bb.r
  %i.gu = lshr i32 %.sroa.speculated.i5.i.i.i, 1
  %zext1.i.i = zext nneg i32 %i.gu to i64
  br label %.lr.ph.i8.i.i.i

.lr.ph.i8.i.i.i:                                  ; preds = %.lr.ph.i8.i.i.i, %.lr.ph.preheader.i6.i.i.i
  %indvars.iv.i9.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i6.i.i.i ], [ %indvars.iv.next.i12.i.i.i, %.lr.ph.i8.i.i.i ] ; 2 uses
  %.0.in17.i10.i.i.i = phi i32 [ %.sroa.speculated.i5.i.i.i, %.lr.ph.preheader.i6.i.i.i ], [ %.0.i11.i.i.i, %.lr.ph.i8.i.i.i ]
  %.0.i11.i.i.i = add i32 %.0.in17.i10.i.i.i, -1  ; 2 uses
  %i.gv = zext i32 %.0.i11.i.i.i to i64
  %i.gw = getelementptr inbounds nuw [20 x i8], ptr %i.gr, i64 %i.gv ; 2 uses
  %i.gx = getelementptr inbounds nuw [20 x i8], ptr %i.gr, i64 %indvars.iv.i9.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %i.gw, i64 20, i1 false), !tbaa.struct !612
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gw, ptr noundef nonnull align 4 dereferenceable(20) %i.gx, i64 20, i1 false), !tbaa.struct !612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gx, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !612
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %indvars.iv.next.i12.i.i.i = add nuw nsw i64 %indvars.iv.i9.i.i.i, 1 ; 2 uses
  %i.gy = icmp eq i64 %indvars.iv.next.i12.i.i.i, %zext1.i.i
  br i1 %i.gy, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit, label %.lr.ph.i8.i.i.i, !llvm.loop !23

_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit: ; preds = %.lr.ph.i8.i.i.i, %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i, %bb.r
  %i.gz = load i8, ptr %i.bh, align 4, !tbaa !1676, !range !380, !noundef !293
  %i.ha = xor i8 %i.gz, 1
  store i8 %i.ha, ptr %i.bh, align 4, !tbaa !1676
  br label %bb.s

bb.s:                                             ; preds = %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit, %.loopexit
  %i.hb = icmp samesign ult i64 %indvars.iv116, %i.bi
  %i.hc = select i1 %i.hb, ptr %.058106, ptr null ; 6 uses
  %i.hd = load ptr, ptr %i.bj, align 8, !tbaa !496 ; 3 uses
  %.not.i.i.i70 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i70, label %._crit_edge.i.i.i, label %bb.t

._crit_edge.i.i.i:                                ; preds = %bb.s
  %.pre.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !504
  %.pre2.i.i.i = load ptr, ptr %.phi.trans.insert1.i.i.i, align 8, !tbaa !505
  br label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !275 ; 3 uses
  store ptr %i.hf, ptr %.phi.trans.insert1.i.i.i, align 8, !tbaa !505
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !276
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hi ; 2 uses
  store ptr %i.hj, ptr %i.bk, align 8, !tbaa !504
  br label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i

_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i: ; preds = %bb.t, %._crit_edge.i.i.i
  %i.hk = phi ptr [ %.pre2.i.i.i, %._crit_edge.i.i.i ], [ %i.hf, %bb.t ] ; 2 uses
  %i.hl = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.hj, %bb.t ] ; 2 uses
  %i.hm = ptrtoint ptr %i.hl to i64               ; 2 uses
  %i.hn = ptrtoint ptr %i.hk to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = trunc i64 %i.ho to i32
  store i32 %i.hp, ptr %i.bl, align 8, !tbaa !506
  %.not.i.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i, label %_ZN25hb_sanitize_with_object_tC2IPKN2OT12KernSubTableINS1_20KernOTSubTableHeaderEEEEEP21hb_sanitize_context_tRKT_.exit, label %bb.u

bb.u:                                             ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i
  %i.hq = icmp uge ptr %i.hc, %i.hk
  %.not13.i.i = icmp ugt ptr %i.hl, %i.hc
  %or.cond.i.i = select i1 %i.hq, i1 %.not13.i.i, i1 false, !prof !707
  br i1 %or.cond.i.i, label %bb.v, label %.critedge.i.i, !prof !707

.critedge.i.i:                                    ; preds = %bb.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.phi.trans.insert1.i.i.i, i8 0, i64 20, i1 false)
  br label %_ZN25hb_sanitize_with_object_tC2IPKN2OT12KernSubTableINS1_20KernOTSubTableHeaderEEEEEP21hb_sanitize_context_tRKT_.exit

bb.v:                                             ; preds = %bb.u
  store ptr %i.hc, ptr %.phi.trans.insert1.i.i.i, align 8, !tbaa !505
  %i.hr = ptrtoint ptr %i.hc to i64
  %i.hs = sub i64 %i.hm, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %.058106, i64 2
  %i.hu = load i16, ptr %i.ht, align 1, !tbaa !283
  %i.hv = tail call noundef i16 @llvm.bswap.i16(i16 %i.hu)
  %i.hw = zext i16 %i.hv to i64
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.hs, i64 %i.hw) ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hc, i64 %.sroa.speculated.i.i
  store ptr %i.hx, ptr %i.bk, align 8, !tbaa !504
  %i.hy = trunc nuw nsw i64 %.sroa.speculated.i.i to i32
  store i32 %i.hy, ptr %i.bl, align 8, !tbaa !506
  br label %_ZN25hb_sanitize_with_object_tC2IPKN2OT12KernSubTableINS1_20KernOTSubTableHeaderEEEEEP21hb_sanitize_context_tRKT_.exit

_ZN25hb_sanitize_with_object_tC2IPKN2OT12KernSubTableINS1_20KernOTSubTableHeaderEEEEEP21hb_sanitize_context_tRKT_.exit: ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i.i, %.critedge.i.i, %bb.v
  %i.hz = tail call noundef zeroext i1 @_ZNK2OT12KernSubTableINS_20KernOTSubTableHeaderEE8dispatchIN3AAT22hb_aat_apply_context_tEJEEENT_8return_tEPS6_DpOT0_(ptr noundef nonnull align 1 dereferenceable(20) %.058106, ptr noundef nonnull %1)
  %i.ia = or i1 %.060104, %i.hz
  %i.ib = load ptr, ptr %i.bj, align 8, !tbaa !496 ; 3 uses
  %.not.i.i71 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i71, label %._crit_edge.i.i, label %bb.w

._crit_edge.i.i:                                  ; preds = %_ZN25hb_sanitize_with_object_tC2IPKN2OT12KernSubTableINS1_20KernOTSubTableHeaderEEEEEP21hb_sanitize_context_tRKT_.exit
  %.pre.i.i = load ptr, ptr %i.bk, align 8, !tbaa !504
  %.pre2.i.i = load ptr, ptr %.phi.trans.insert1.i.i.i, align 8, !tbaa !505
  br label %_ZN25hb_sanitize_with_object_tD2Ev.exit

bb.w:                                             ; preds = %_ZN25hb_sanitize_with_object_tC2IPKN2OT12KernSubTableINS1_20KernOTSubTableHeaderEEEEEP21hb_sanitize_context_tRKT_.exit
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !275 ; 3 uses
  store ptr %i.id, ptr %.phi.trans.insert1.i.i.i, align 8, !tbaa !505
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !276
  %i.ig = zext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ig ; 2 uses
  store ptr %i.ih, ptr %i.bk, align 8, !tbaa !504
  br label %_ZN25hb_sanitize_with_object_tD2Ev.exit

_ZN25hb_sanitize_with_object_tD2Ev.exit:          ; preds = %._crit_edge.i.i, %bb.w
  %i.ii = phi ptr [ %.pre2.i.i, %._crit_edge.i.i ], [ %i.id, %bb.w ]
  %i.ij = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ih, %bb.w ]
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = ptrtoint ptr %i.ii to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = trunc i64 %i.im to i32
  store i32 %i.in, ptr %i.bl, align 8, !tbaa !506
  %i.io = load ptr, ptr %i.a, align 8, !tbaa !494
  %i.ip = load ptr, ptr %i.bg, align 8, !tbaa !492
  %i.iq = load i32, ptr %i.av, align 8, !tbaa !593
  %i.ir = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %i.io, ptr noundef %i.ip, ptr noundef nonnull @.str.106, i32 noundef %i.iq) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread96, %bb.g, %_ZN25hb_sanitize_with_object_tD2Ev.exit, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread
  %.161 = phi i1 [ %.060104, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread ], [ %.060104, %bb.g ], [ %i.ia, %_ZN25hb_sanitize_with_object_tD2Ev.exit ], [ %.060104, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread96 ] ; 2 uses
  %.2 = phi i1 [ %.059105, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread ], [ %.059105, %bb.g ], [ %.1, %_ZN25hb_sanitize_with_object_tD2Ev.exit ], [ %.059105, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread96 ]
  %i.is = getelementptr inbounds nuw i8, ptr %.058106, i64 2
  %i.it = load i16, ptr %i.is, align 1, !tbaa !283
  %i.iu = tail call noundef i16 @llvm.bswap.i16(i16 %i.it)
  %i.iv = zext i16 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %.058106, i64 %i.iv
  %i.ix = load i32, ptr %i.av, align 8, !tbaa !593
  %i.iy = add i32 %i.ix, 1
  store i32 %i.iy, ptr %i.av, align 8, !tbaa !593
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count118
  br i1 %exitcond119.not, label %._crit_edge, label %bb.g, !llvm.loop !3689

bb.y:                                             ; preds = %._crit_edge
  %i.iz = load ptr, ptr %i.a, align 8, !tbaa !494 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 96 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !607 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 112
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !589 ; 2 uses
  %i.je = icmp ult i32 %i.jb, 2
  br i1 %i.je, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i79, label %.lr.ph.preheader.i.i.i.i72

.lr.ph.preheader.i.i.i.i72:                       ; preds = %bb.y
  %i.jf = lshr i32 %i.jb, 1
  %zext.i.i73 = zext nneg i32 %i.jf to i64
  br label %.lr.ph.i.i.i.i74

.lr.ph.i.i.i.i74:                                 ; preds = %.lr.ph.i.i.i.i74, %.lr.ph.preheader.i.i.i.i72
  %indvars.iv.i.i.i.i75 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i72 ], [ %indvars.iv.next.i.i.i.i78, %.lr.ph.i.i.i.i74 ] ; 2 uses
  %.0.in17.i.i.i.i76 = phi i32 [ %i.jb, %.lr.ph.preheader.i.i.i.i72 ], [ %.0.i.i.i.i77, %.lr.ph.i.i.i.i74 ]
  %.0.i.i.i.i77 = add i32 %.0.in17.i.i.i.i76, -1  ; 2 uses
  %i.jg = zext i32 %.0.i.i.i.i77 to i64
  %i.jh = getelementptr inbounds nuw [20 x i8], ptr %i.jd, i64 %i.jg ; 2 uses
  %i.ji = getelementptr inbounds nuw [20 x i8], ptr %i.jd, i64 %indvars.iv.i.i.i.i75 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.jh, i64 20, i1 false), !tbaa.struct !610
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.jh, ptr noundef nonnull align 4 dereferenceable(20) %i.ji, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ji, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %indvars.iv.next.i.i.i.i78 = add nuw nsw i64 %indvars.iv.i.i.i.i75, 1 ; 2 uses
  %i.jj = icmp eq i64 %indvars.iv.next.i.i.i.i78, %zext.i.i73
  br i1 %i.jj, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i79, label %.lr.ph.i.i.i.i74, !llvm.loop !22

_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i79: ; preds = %.lr.ph.i.i.i.i74, %bb.y
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iz, i64 90
  %i.jl = load i8, ptr %i.jk, align 2, !tbaa !632, !range !380, !noundef !293
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %bb.z, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit88

bb.z:                                             ; preds = %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i79
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iz, i64 128
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !611 ; 2 uses
  %i.jp = load i32, ptr %i.ja, align 8, !tbaa !607
  %.sroa.speculated.i5.i.i.i80 = tail call i32 @llvm.umin.i32(i32 %i.jb, i32 %i.jp) ; 3 uses
  %i.jq = icmp ult i32 %.sroa.speculated.i5.i.i.i80, 2
  br i1 %i.jq, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit88, label %.lr.ph.preheader.i6.i.i.i81

.lr.ph.preheader.i6.i.i.i81:                      ; preds = %bb.z
  %i.jr = lshr i32 %.sroa.speculated.i5.i.i.i80, 1
  %zext1.i.i82 = zext nneg i32 %i.jr to i64
  br label %.lr.ph.i8.i.i.i83

.lr.ph.i8.i.i.i83:                                ; preds = %.lr.ph.i8.i.i.i83, %.lr.ph.preheader.i6.i.i.i81
  %indvars.iv.i9.i.i.i84 = phi i64 [ 0, %.lr.ph.preheader.i6.i.i.i81 ], [ %indvars.iv.next.i12.i.i.i87, %.lr.ph.i8.i.i.i83 ] ; 2 uses
  %.0.in17.i10.i.i.i85 = phi i32 [ %.sroa.speculated.i5.i.i.i80, %.lr.ph.preheader.i6.i.i.i81 ], [ %.0.i11.i.i.i86, %.lr.ph.i8.i.i.i83 ]
  %.0.i11.i.i.i86 = add i32 %.0.in17.i10.i.i.i85, -1 ; 2 uses
  %i.js = zext i32 %.0.i11.i.i.i86 to i64
  %i.jt = getelementptr inbounds nuw [20 x i8], ptr %i.jo, i64 %i.js ; 2 uses
  %i.ju = getelementptr inbounds nuw [20 x i8], ptr %i.jo, i64 %indvars.iv.i9.i.i.i84 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.jt, i64 20, i1 false), !tbaa.struct !612
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.jt, ptr noundef nonnull align 4 dereferenceable(20) %i.ju, i64 20, i1 false), !tbaa.struct !612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ju, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !612
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %indvars.iv.next.i12.i.i.i87 = add nuw nsw i64 %indvars.iv.i9.i.i.i84, 1 ; 2 uses
  %i.jv = icmp eq i64 %indvars.iv.next.i12.i.i.i87, %zext1.i.i82
  br i1 %i.jv, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit88, label %.lr.ph.i8.i.i.i83, !llvm.loop !23

_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit88: ; preds = %.lr.ph.i8.i.i.i83, %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i79, %bb.z
  %i.jw = load i8, ptr %i.bm, align 4, !tbaa !1676, !range !380, !noundef !293
  %i.jx = xor i8 %i.jw, 1
  store i8 %i.jx, ptr %i.bm, align 4, !tbaa !1676
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit88, %._crit_edge
  ret i1 %.060.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT12KernSubTableINS_20KernOTSubTableHeaderEE8dispatchIN3AAT22hb_aat_apply_context_tEJEEENT_8return_tEPS6_DpOT0_(ptr noundef nonnull align 1 dereferenceable(20) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.OT::hb_kern_machine_t.1012", align 8 ; 5 uses
  %3 = alloca %"struct.AAT::KerxSubTableFormat2<OT::KernOTSubTableHeader>::accelerator_t", align 8 ; 5 uses
  %4 = alloca %"struct.OT::hb_kern_machine_t.1009", align 8 ; 5 uses
  %5 = alloca %"struct.AAT::KerxSubTableFormat1<OT::KernOTSubTableHeader>::driver_context_t", align 8 ; 8 uses
  %6 = alloca %"struct.AAT::StateTableDriver", align 8 ; 5 uses
  %7 = alloca %"struct.AAT::KerxSubTableFormat0<OT::KernOTSubTableHeader>::accelerator_t", align 8 ; 5 uses
  %8 = alloca %"struct.OT::hb_kern_machine_t.983", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 1, !tbaa !303
  switch i8 %i.b, label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_19KerxSubTableFormat0IN2OT20KernOTSubTableHeaderEEEJEEEbRKT_DpOT0_.exit [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
end_hunk_1
begin_hunk_2_@_ZN2OTL31context_closure_recurse_lookupsINS_7NumTypeILb1EtLj2EEEEEvPNS_20hb_closure_context_tEjPKT_jPKNS_12LookupRecordEjNS_13ContextFormatEPKvPFvPK8hb_set_tSD_jPSE_PvESI_:bb.a
  %.sink.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 52 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 5 uses
  %.not52 = icmp eq i32 %6, 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = icmp eq i32 %6, 3
  %i.z = zext i1 %i.y to i32
  %spec.select = add i32 %1, %i.z
  %wide.trip.count = zext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.am
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.am ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !283 ; 2 uses
  %i.ac = call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = zext i16 %i.ac to i32                   ; 8 uses
  %.not = icmp ugt i32 %1, %i.ad
  br i1 %.not, label %bb.c, label %bb.am

bb.c:                                             ; preds = %bb.b
  %i.ae = lshr i32 %i.ad, 9                       ; 3 uses
  %i.af = load atomic i32, ptr %i.e monotonic, align 8 ; 2 uses
  %i.ag = load i32, ptr %i.m, align 4, !tbaa !1233 ; 3 uses
  %i.ah = icmp ult i32 %i.af, %i.ag
  %i.ai = load ptr, ptr %i.n, align 8, !tbaa !553 ; 3 uses
  br i1 %i.ah, label %bb.d, label %._crit_edge.i.i.i.i.i.i, !prof !268

bb.d:                                             ; preds = %bb.c
  %i.aj = zext i32 %i.af to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !1235
  %.not.i.i.i.i.i.i = icmp eq i32 %i.al, %i.ae
  br i1 %.not.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.d, %bb.c
  %.not1.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.ag, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.am = add nsw i32 %i.ag, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.h, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i, %bb.h ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i, %bb.h ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.an = add i32 %.0212.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i
  %i.ao = lshr i32 %i.an, 1                       ; 4 uses
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !1235 ; 2 uses
  %i.at = icmp slt i32 %i.ae, %i.as
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.au = add nsw i32 %i.ao, -1
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, %i.as
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = add nuw nsw i32 %i.ao, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.223.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.av, %bb.g ], [ %.0212.i.i.i.i.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i, %bb.g ], [ %i.au, %bb.e ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !135

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i: ; preds = %bb.f
  store atomic i32 %i.ao, ptr %i.e monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i:     ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, %bb.d
  %i.aw = phi i64 [ %i.ap, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i ], [ %i.aj, %bb.d ]
  %.sink.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i, align 8, !tbaa !1236 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !1238
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = lshr i32 %i.ad, 6
  %i.be = and i32 %i.bd, 7
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1240
  %i.bi = and i32 %i.ad, 63
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = lshr i64 %i.bh, %i.bj
  %i.bl = trunc i64 %i.bk to i8
  %i.bm = and i8 %i.bl, 1
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit: ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, %bb.i
  %.0.i.i.i.i.i = phi i8 [ %i.bm, %bb.i ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.h ]
  %i.bn = load i8, ptr %i.o, align 8, !tbaa !946, !range !380, !noundef !293
  %.not61 = icmp eq i8 %i.bn, %.0.i.i.i.i.i       ; 2 uses
  br i1 %.not61, label %bb.j, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.j:                                             ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit
  %i.bo = load i32, ptr %i.p, align 4, !tbaa !546
  %.not.i.i.i = icmp eq i32 %i.bo, 0
  %i.bp = load i32, ptr %i.j, align 4
  %.not1.i.i.i = icmp eq i32 %i.bp, 0
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %.not1.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %_ZN12hb_bit_set_t5clearEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.p, align 4, !tbaa !547
  store i32 0, ptr %i.q, align 4, !tbaa !548
  store i32 0, ptr %i.j, align 4, !tbaa !549
  br label %_ZN12hb_bit_set_t5clearEv.exit.i.i

_ZN12hb_bit_set_t5clearEv.exit.i.i:               ; preds = %bb.k, %bb.j
  %i.bq = load i8, ptr %i.i, align 8, !tbaa !1504, !range !380, !noundef !293
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.l, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit, !prof !268

bb.l:                                             ; preds = %_ZN12hb_bit_set_t5clearEv.exit.i.i
  store i8 0, ptr %i.r, align 8, !tbaa !946
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit: ; preds = %_ZN12hb_bit_set_t5clearEv.exit.i.i, %bb.l
  %i.bs = icmp eq i16 %i.ab, 0
  br i1 %i.bs, label %bb.m, label %bb.t

bb.m:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit
  switch i32 %6, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit [
    i32 1, label %bb.n
    i32 2, label %bb.q
    i32 3, label %bb.r
  ]

bb.n:                                             ; preds = %bb.m
  %i.bt = load i8, ptr %i.r, align 8, !tbaa !946, !range !380, !noundef !293
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.o, label %bb.p, !prof !267

bb.o:                                             ; preds = %bb.n
  call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.i, i32 noundef %5)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.p:                                             ; preds = %bb.n
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.i, i32 noundef %5)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.q:                                             ; preds = %bb.m
  %i.bv = load i32, ptr %i.t, align 4, !tbaa !1230 ; 2 uses
  %.not.i = icmp eq i32 %i.bv, 0
  %i.bw = add i32 %i.bv, -1
  %i.bx = load ptr, ptr %i.u, align 8
  %i.by = zext i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [72 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load ptr, ptr %i.s, align 8
  %.0.i = select i1 %.not.i, ptr %i.ca, ptr %i.bz
  call void %8(ptr noundef nonnull %.0.i, ptr noundef %7, i32 noundef %5, ptr noundef nonnull %12, ptr noundef %9) #63
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.r:                                             ; preds = %bb.m
  %i.cb = load i32, ptr %i.t, align 4, !tbaa !1230 ; 2 uses
  %.not.i54 = icmp eq i32 %i.cb, 0
  %i.cc = add i32 %i.cb, -1
  %i.cd = load ptr, ptr %i.u, align 8
  %i.ce = zext i32 %i.cc to i64
  %i.cf = getelementptr inbounds nuw [72 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load ptr, ptr %i.s, align 8
  %.0.i55 = select i1 %.not.i54, ptr %i.cg, ptr %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i55, i64 16
  call void @_ZN12hb_bit_set_t3setERKS_b(ptr noundef nonnull align 8 dereferenceable(49) %i.i, ptr noundef nonnull align 8 dereferenceable(49) %i.ch, i1 noundef zeroext false)
  %i.ci = load i8, ptr %i.i, align 8, !tbaa !1504, !range !380, !noundef !293
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.s, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit, !prof !268

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i55, i64 64
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !946, !range !380, !noundef !293
  store i8 %i.cl, ptr %i.r, align 8, !tbaa !946
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.t:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit
  %i.cm = add nsw i32 %i.ad, -1                   ; 2 uses
  br i1 %.not52, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 1, !tbaa !283
  %i.cq = call noundef i16 @llvm.bswap.i16(i16 %i.cp)
  %i.cr = zext i16 %i.cq to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.046 = phi ptr [ %7, %bb.u ], [ %2, %bb.t ]
  %.045 = phi i32 [ %i.cr, %bb.u ], [ %i.cm, %bb.t ]
  %i.cs = load ptr, ptr %i.s, align 8, !tbaa !1223
  call void %8(ptr noundef %i.cs, ptr noundef %.046, i32 noundef %.045, ptr noundef nonnull %12, ptr noundef %9) #63
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit: ; preds = %bb.s, %bb.r, %bb.p, %bb.o, %bb.v, %bb.q, %bb.m, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit
  %i.ct = load i8, ptr %i.o, align 8, !tbaa !946, !range !380, !noundef !293
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.w, label %bb.x, !prof !267

bb.w:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.c, i32 noundef %i.ad)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit56

bb.x:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.c, i32 noundef %i.ad)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit56

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit56: ; preds = %bb.w, %bb.x
  %i.cv = load i32, ptr %i.t, align 4, !tbaa !1230 ; 2 uses
  %i.cw = add i32 %i.cv, 1                        ; 7 uses
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %bb.ae, label %bb.y, !prof !267

bb.y:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit56
  %i.cy = call noundef zeroext i1 @_ZN11hb_vector_tI8hb_set_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i32 noundef %i.cw, i1 noundef zeroext false)
  br i1 %i.cy, label %bb.z, label %bb.ae, !prof !525

bb.z:                                             ; preds = %bb.y
  %i.cz = load i32, ptr %i.t, align 4, !tbaa !1230 ; 5 uses
  %i.da = icmp ugt i32 %i.cw, %i.cz
  br i1 %i.da, label %.preheader, label %bb.aa

.preheader:                                       ; preds = %bb.z, %.preheader
  %i.db = phi i32 [ %i.dm, %.preheader ], [ %i.cz, %bb.z ]
  %i.dc = load ptr, ptr %i.u, align 8, !tbaa !1231
  %i.dd = zext nneg i32 %i.db to i64
  %i.de = getelementptr inbounds nuw [72 x i8], ptr %i.dc, i64 %i.dd ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  store atomic i32 1, ptr %i.de monotonic, align 4
  store atomic i8 1, ptr %i.df monotonic, align 4
  store atomic ptr null, ptr %i.dg monotonic, align 8
  store i8 1, ptr %i.dh, align 8, !tbaa !550
  store i32 0, ptr %i.di, align 4, !tbaa !549
  store atomic i32 0, ptr %i.dj monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.dk, i8 0, i64 33, i1 false)
  %i.dl = load i32, ptr %i.t, align 4, !tbaa !1230
  %i.dm = add i32 %i.dl, 1                        ; 3 uses
  store i32 %i.dm, ptr %i.t, align 4, !tbaa !1230
  %i.dn = icmp ult i32 %i.dm, %i.cw
  br i1 %i.dn, label %.preheader, label %.loopexit.i.i, !llvm.loop !172

bb.aa:                                            ; preds = %bb.z
  %i.do = icmp ult i32 %i.cw, %i.cz
  br i1 %i.do, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.aa
  %i.dp = sub nuw i32 %i.cz, %i.cw
  %i.dq = load ptr, ptr %i.u, align 8, !tbaa !1231
  %i.dr = zext i32 %i.cz to i64
  %i.ds = getelementptr inbounds nuw [72 x i8], ptr %i.dq, i64 %i.dr
  br label %.lr.ph.i15.i.i.i.i

.lr.ph.i15.i.i.i.i:                               ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev.exit, %.lr.ph.preheader.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.du, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev.exit ], [ %i.ds, %.lr.ph.preheader.i.i.i.i.i ] ; 10 uses
  %.046.i.i.i.i.i = phi i32 [ %i.dt, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev.exit ], [ %i.dp, %.lr.ph.preheader.i.i.i.i.i ]
  %i.dt = add i32 %.046.i.i.i.i.i, -1             ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -72 ; 2 uses
  store atomic i32 -57005, ptr %i.du monotonic, align 4
  %i.dv = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -64 ; 2 uses
  %i.dw = load atomic ptr, ptr %i.dv acquire, align 8 ; 5 uses
  %.not.i.i.i59 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i59, label %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i15.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(56) %i.dw)
  %i.dy = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.dw) #63 ; 0 uses
  call void @free(ptr noundef nonnull %i.dw) #63
  store atomic ptr null, ptr %i.dv monotonic, align 8
  br label %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i.i

_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i.i: ; preds = %bb.ab, %.lr.ph.i15.i.i.i.i
  %i.dz = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -40 ; 3 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !552
  %i.eb = add i32 %i.ea, -1
  %spec.select.i.i.i.i.i.i = icmp ult i32 %i.eb, -2
  br i1 %spec.select.i.i.i.i.i.i, label %bb.ac, label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i.i

bb.ac:                                            ; preds = %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i.i
  %i.ec = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -36
  store i32 0, ptr %i.ec, align 4, !tbaa !548
  %i.ed = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !553
  call void @free(ptr noundef %i.ee) #63
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i.i

_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i.i: ; preds = %bb.ac, %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i8 0, i64 16, i1 false)
  %i.ef = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -24 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !554
  %i.eh = add i32 %i.eg, -1
  %spec.select.i.i1.i.i.i.i = icmp ult i32 %i.eh, -2
  br i1 %spec.select.i.i1.i.i.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit.i: ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i.i
  %i.ei = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -20
  store i32 0, ptr %i.ei, align 4, !tbaa !547
  %i.ej = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !555
  call void @free(ptr noundef %i.ek) #63
  %.pre.i = load i32, ptr %i.dz, align 8, !tbaa !552
  %i.el = add i32 %.pre.i, -1
  %i.em = icmp ult i32 %i.el, -2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, i8 0, i64 16, i1 false)
  br i1 %i.em, label %bb.ad, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev.exit

bb.ad:                                            ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit.i
  %i.en = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -36
  store i32 0, ptr %i.en, align 4, !tbaa !548
  %i.eo = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -32
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !553
  call void @free(ptr noundef %i.ep) #63
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev.exit: ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit.i, %bb.ad
  %.not.i.i.i.i.i57 = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i.i.i.i57, label %.loopexit.i.i, label %.lr.ph.i15.i.i.i.i, !llvm.loop !101

bb.ae:                                            ; preds = %bb.y, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @_hb_CrapPool, i8 0, i64 72, i1 false)
  br label %_ZN2OT20hb_closure_context_t22push_cur_active_glyphsEv.exit

.loopexit.i.i:                                    ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev.exit, %.preheader, %bb.aa
  store i32 %i.cw, ptr %i.t, align 4, !tbaa !1230
  %i.eq = load ptr, ptr %i.u, align 8, !tbaa !1231
  %i.er = zext i32 %i.cv to i64
  %i.es = getelementptr inbounds nuw [72 x i8], ptr %i.eq, i64 %i.er
  br label %_ZN2OT20hb_closure_context_t22push_cur_active_glyphsEv.exit

_ZN2OT20hb_closure_context_t22push_cur_active_glyphsEv.exit: ; preds = %bb.ae, %.loopexit.i.i
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.ae ], [ %i.es, %.loopexit.i.i ] ; 5 uses
  %i.et = load i32, ptr %i.v, align 8, !tbaa !1229
  %i.eu = icmp slt i32 %i.et, 0
  %.not5362 = icmp eq ptr %.0.i.i, null
  %.not53 = select i1 %i.eu, i1 true, i1 %.not5362, !prof !267
  br i1 %.not53, label %_ZN2OT20hb_closure_context_t22push_cur_active_glyphsEv.exit._crit_edge, label %bb.af, !prof !267

bb.af:                                            ; preds = %_ZN2OT20hb_closure_context_t22push_cur_active_glyphsEv.exit
  br i1 %.not61, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 8, !tbaa !1504, !range !380, !noundef !293
  %i.ex = trunc nuw i8 %i.ew to i1
  %i.ey = load i8, ptr %i.i, align 8, !range !380
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = select i1 %i.ex, i1 %i.ez, i1 false
  br i1 %i.fa, label %bb.ah, label %_ZN8hb_set_taSEOS_.exit, !prof !267

bb.ah:                                            ; preds = %bb.ag
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !570, !range !380, !noundef !293
  %i.fd = load i8, ptr %i.r, align 8, !tbaa !570, !range !380, !noundef !293
  store i8 %i.fd, ptr %i.fb, align 8, !tbaa !570
  store i8 %i.fc, ptr %i.r, align 8, !tbaa !570
  call fastcc void @"_ZNK4$_22clI12hb_bit_set_tEEvRT_S3_"(ptr noundef nonnull align 8 dereferenceable(49) %i.ev, ptr noundef nonnull align 8 dereferenceable(49) %i.i)
  br label %_ZN8hb_set_taSEOS_.exit

bb.ai:                                            ; preds = %bb.af
  %i.fe = load ptr, ptr %i.s, align 8, !tbaa !1223 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  call void @_ZN12hb_bit_set_t3setERKS_b(ptr noundef nonnull align 8 dereferenceable(49) %i.ff, ptr noundef nonnull align 8 dereferenceable(49) %i.fg, i1 noundef zeroext false)
  %i.fh = load i8, ptr %i.ff, align 8, !tbaa !1504, !range !380, !noundef !293
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.aj, label %_ZN8hb_set_taSEOS_.exit, !prof !268

bb.aj:                                            ; preds = %bb.ai
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 64
  %i.fk = load i8, ptr %i.fj, align 8, !tbaa !946, !range !380, !noundef !293
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  store i8 %i.fk, ptr %i.fl, align 8, !tbaa !946
  br label %_ZN8hb_set_taSEOS_.exit

_ZN8hb_set_taSEOS_.exit:                          ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %i.fm = load i32, ptr %i.w, align 8, !tbaa !1224 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK2OT7RuleSetINS_6Layout10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tERKNS_25ContextApplyLookupContextE:bb.a
  store ptr @_ZN2OTL12match_alwaysER15hb_glyph_info_tjPKv, ptr %i.aw, align 8, !tbaa !1722
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = tail call noundef zeroext i1 @_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE4nextEPj(ptr noundef nonnull align 8 dereferenceable(60) %i.ab, ptr noundef null)
  br i1 %i.ay, label %bb.d, label %bb.s, !prof !268

bb.d:                                             ; preds = %bb.c
  %i.az = load ptr, ptr %i.ac, align 8, !tbaa !1278
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !589
  %i.bc = load i32, ptr %i.ab, align 8, !tbaa !1366
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [20 x i8], ptr %i.bb, i64 %i.bd ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bg = load ptr, ptr %i.ag, align 8, !tbaa !1287 ; 2 uses
  %i.bh = load i32, ptr %i.bf, align 8, !tbaa !1289 ; 4 uses
  %i.bi = getelementptr i8, ptr %i.be, i64 12     ; 2 uses
  %.val = load i16, ptr %i.bi, align 4, !tbaa !280
  %i.bj = zext i16 %.val to i32                   ; 3 uses
  %i.bk = and i32 %i.bh, 14
  %i.bl = and i32 %i.bk, %i.bj
  %.not.i.i93 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i93, label %bb.e, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exitthread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.bm = and i32 %i.bj, 8
  %.not8.i.i98 = icmp eq i32 %i.bm, 0
  br i1 %.not8.i.i98, label %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.i94.thread233, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = and i32 %i.bh, 16
  %.not.i3.i99 = icmp eq i32 %i.bn, 0
  br i1 %.not.i3.i99, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = lshr i32 %i.bh, 16                      ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 248
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1279, !nonnull !293, !align !294
  %i.br = load i32, ptr %i.be, align 4, !tbaa !637 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1720
  %i.bu = zext nneg i32 %i.bo to i64              ; 2 uses
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.bu ; 3 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !357
  %i.bx = lshr i32 %i.br, 4
  %i.by = and i32 %i.bx, 63
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = shl nuw i64 1, %i.bz
  %i.cb = and i64 %i.ca, %i.bw
  %.not.i6.i105 = icmp eq i64 %i.cb, 0
  br i1 %.not.i6.i105, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exitthread-pre-split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !357
  %i.ce = and i32 %i.br, 63
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = and i64 %i.cg, %i.cd
  %.not.i6.i105.1 = icmp eq i64 %i.ch, 0
  br i1 %.not.i6.i105.1, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exitthread-pre-split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !357
  %i.ck = lshr i32 %i.br, 6
  %i.cl = and i32 %i.ck, 63
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = shl nuw i64 1, %i.cm
  %i.co = and i64 %i.cn, %i.cj
  %.not.i6.i105.2 = icmp eq i64 %i.co, 0
  br i1 %.not.i6.i105.2, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exitthread-pre-split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bg, i64 240
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1715, !nonnull !293 ; 4 uses
  %i.cr = load i16, ptr %i.cq, align 1, !tbaa !283
  %cond.i.i = icmp eq i16 %i.cr, 256
  br i1 %cond.i.i, label %bb.k, label %_ZNK2OT4GDEF19get_mark_glyph_setsEv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.cs = load i32, ptr %i.cq, align 1
  %i.ct = tail call noundef i32 @llvm.bswap.i32(i32 %i.cs)
  %i.cu = icmp ugt i32 %i.ct, 65537
  br i1 %i.cu, label %bb.l, label %_ZNK2OT4GDEF19get_mark_glyph_setsEv.exit.i

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.cw = load i16, ptr %i.cv, align 1, !tbaa !283 ; 2 uses
  %i.cx = icmp eq i16 %i.cw, 0
  %i.cy = tail call i16 @llvm.bswap.i16(i16 %i.cw)
  %i.cz = zext i16 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cz
  %.0.i.i.i.i = select i1 %i.cx, ptr @_hb_NullPool, ptr %i.da, !prof !267
  br label %_ZNK2OT4GDEF19get_mark_glyph_setsEv.exit.i

_ZNK2OT4GDEF19get_mark_glyph_setsEv.exit.i:       ; preds = %bb.l, %bb.k, %bb.j
  %.0.i.i143 = phi ptr [ @_hb_NullPool, %bb.k ], [ %.0.i.i.i.i, %bb.l ], [ @_hb_NullPool, %bb.j ] ; 4 uses
  %i.db = load i16, ptr %.0.i.i143, align 1, !tbaa !283
  %cond.i2.i = icmp eq i16 %i.db, 256
  br i1 %cond.i2.i, label %bb.m, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exitthread-pre-split

bb.m:                                             ; preds = %_ZNK2OT4GDEF19get_mark_glyph_setsEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i143, i64 2
  %i.dd = load i16, ptr %i.dc, align 1, !tbaa !283
  %i.de = tail call noundef i16 @llvm.bswap.i16(i16 %i.dd)
  %i.df = zext i16 %i.de to i32
  %.not.i.i.i.i = icmp samesign ult i32 %i.bo, %i.df
  br i1 %.not.i.i.i.i, label %bb.n, label %_ZNK2OT20MarkGlyphSetsFormat16coversEjj.exit.i.i, !prof !268

bb.n:                                             ; preds = %bb.m
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i.i143, i64 4
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.bu
  br label %_ZNK2OT20MarkGlyphSetsFormat16coversEjj.exit.i.i

_ZNK2OT20MarkGlyphSetsFormat16coversEjj.exit.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i4.i = phi ptr [ %i.dh, %bb.n ], [ @_hb_NullPool, %bb.m ]
  %i.di = load i32, ptr %.0.i.i.i4.i, align 1, !tbaa !278 ; 2 uses
  %i.dj = icmp eq i32 %i.di, 0
  %i.dk = tail call i32 @llvm.bswap.i32(i32 %i.di)
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i.i143, i64 %i.dl
  %.0.i.i.i.i.i = select i1 %i.dj, ptr @_hb_NullPool, ptr %i.dm, !prof !267
  %i.dn = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i.i, i32 noundef %i.br)
  %.not279 = icmp eq i32 %i.dn, -1
  br i1 %.not279, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exitthread-pre-split, label %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.i94.thread233

bb.o:                                             ; preds = %bb.f
  %i.do = and i32 %i.bh, 65280                    ; 2 uses
  %.not11.i.i106 = icmp eq i32 %i.do, 0
  %i.dp = and i32 %i.bj, 65280
  %i.dq = icmp eq i32 %i.do, %i.dp
  %or.cond265 = or i1 %.not11.i.i106, %i.dq
  br i1 %or.cond265, label %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.i94.thread233, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exitthread-pre-split

_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.i94.thread233: ; preds = %bb.e, %bb.o, %_ZNK2OT20MarkGlyphSetsFormat16coversEjj.exit.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.ds = load i16, ptr %i.dr, align 4, !tbaa !280
  %.fr281 = freeze i16 %i.ds                      ; 4 uses
  %i.dt = and i16 %.fr281, 32
  %.not.i = icmp eq i16 %i.dt, 0
  br i1 %.not.i, label %_ZNK2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE8may_skipERK15hb_glyph_info_t.exit107, label %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit

_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit: ; preds = %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.i94.thread233
  %.val.i = load i16, ptr %i.bi, align 4, !tbaa !280
  %i.du = and i16 %.val.i, 16
  %.not2.i = icmp eq i16 %i.du, 0
  br i1 %.not2.i, label %bb.p, label %_ZNK2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE8may_skipERK15hb_glyph_info_t.exit107

bb.p:                                             ; preds = %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dw = load i8, ptr %i.dv, align 8, !tbaa !1291, !range !380, !noundef !293
  %i.dx = trunc nuw i8 %i.dw to i1
  %i.dy = and i16 %.fr281, 543
  %i.dz = icmp ne i16 %i.dy, 513
  %or.cond267.not = or i1 %i.dz, %i.dx
  br i1 %or.cond267.not, label %bb.q, label %_ZNK2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE8may_skipERK15hb_glyph_info_t.exit107

bb.q:                                             ; preds = %bb.p
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 97
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !1292, !range !380, !noundef !293
  %i.ec = trunc nuw i8 %i.eb to i1
  %i.ed = and i16 %.fr281, 287
  %i.ee = icmp ne i16 %i.ed, 257
  %or.cond270.not = or i1 %i.ee, %i.ec
  br i1 %or.cond270.not, label %bb.r, label %_ZNK2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE8may_skipERK15hb_glyph_info_t.exit107

bb.r:                                             ; preds = %bb.q
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.eg = load i8, ptr %i.ef, align 2, !tbaa !1293, !range !380, !noundef !293
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = and i16 %.fr281, 64
  %.not = icmp eq i16 %i.ei, 0
  %or.cond287 = or i1 %.not, %i.eh
  br i1 %or.cond287, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exitthread-pre-split, label %_ZNK2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE8may_skipERK15hb_glyph_info_t.exit107, !prof !1841

_ZNK2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE8may_skipERK15hb_glyph_info_t.exit107: ; preds = %bb.r, %bb.q, %bb.p, %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.i94.thread233, %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit
  %i.ej = load ptr, ptr %i.ac, align 8, !tbaa !1278
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 112
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !589
  %i.em = load i32, ptr %i.ab, align 8, !tbaa !1366 ; 2 uses
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [20 x i8], ptr %i.el, i64 %i.en
  %i.ep = add i32 %i.em, 1
  %i.eq = tail call noundef zeroext i1 @_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE4nextEPj(ptr noundef nonnull align 8 dereferenceable(60) %i.ab, ptr noundef null)
  br i1 %i.eq, label %bb.t, label %bb.ad, !prof !268

bb.s:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.es = load i16, ptr %0, align 1, !tbaa !283   ; 2 uses
  %i.et = tail call noundef i16 @llvm.bswap.i16(i16 %i.es)
  %.sroa.6192.sroa.0.0.extract.trunc = zext i16 %i.et to i32 ; 3 uses
  %.not8.i.i.i = icmp eq i16 %i.es, 0
  br i1 %.not8.i.i.i, label %"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EE24hb_filter_iter_factory_tIZNKSI_5applyEPNS2_21hb_ot_apply_context_tERKNS2_25ContextApplyLookupContextEEUlRKS7_E0_RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS13_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS13_Efp_EEEOS13_OS18_.exit", label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.s
  %4 = shl nuw nsw i32 %.sroa.6192.sroa.0.0.extract.trunc, 1
  %5 = add nsw i32 %4, -2
  %6 = zext i32 %5 to i64
  %i.eu = getelementptr i8, ptr %0, i64 %6
  %scevgep = getelementptr i8, ptr %i.eu, i64 4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i"
  %.sroa.6192.sroa.6.0 = phi i32 [ %i.fc, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i" ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.6192.sroa.0.0 = phi i32 [ %i.fb, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i" ], [ %.sroa.6192.sroa.0.0.extract.trunc, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.0191.0 = phi ptr [ %i.fd, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i" ], [ %i.er, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.val1.i.i.i.i.i = load i16, ptr %.sroa.0191.0, align 1, !tbaa !283, !noalias !4484 ; 2 uses
  %i.ev = icmp eq i16 %.val1.i.i.i.i.i, 0
  %i.ew = tail call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i.i)
  %i.ex = zext i16 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 %i.ex
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ev, ptr @_hb_NullPool, ptr %i.ey, !prof !267
  %.val4.i.i.i = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !283, !noalias !4484
  %i.ez = tail call noundef i16 @llvm.bswap.i16(i16 %.val4.i.i.i)
  %i.fa = icmp ult i16 %i.ez, 2
  br i1 %i.fa, label %"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EE24hb_filter_iter_factory_tIZNKSI_5applyEPNS2_21hb_ot_apply_context_tERKNS2_25ContextApplyLookupContextEEUlRKS7_E0_RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS13_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS13_Efp_EEEOS13_OS18_.exit.loopexit", label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i"

"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i": ; preds = %.lr.ph.i.i.i
  %i.fb = add i32 %.sroa.6192.sroa.0.0, -1        ; 2 uses
  %i.fc = add i32 %.sroa.6192.sroa.6.0, 1
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0191.0, i64 2
  %.not.i.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not.i.i.i, label %"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EE24hb_filter_iter_factory_tIZNKSI_5applyEPNS2_21hb_ot_apply_context_tERKNS2_25ContextApplyLookupContextEEUlRKS7_E0_RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS13_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS13_Efp_EEEOS13_OS18_.exit.loopexit", label %.lr.ph.i.i.i, !llvm.loop !4475

"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EE24hb_filter_iter_factory_tIZNKSI_5applyEPNS2_21hb_ot_apply_context_tERKNS2_25ContextApplyLookupContextEEUlRKS7_E0_RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS13_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS13_Efp_EEEOS13_OS18_.exit.loopexit": ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i", %.lr.ph.i.i.i
  %.sroa.6192.sroa.6.1.ph = phi i32 [ %.sroa.6192.sroa.6.0, %.lr.ph.i.i.i ], [ %.sroa.6192.sroa.0.0.extract.trunc, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i" ]
  %.sroa.6192.sroa.0.1.ph = phi i32 [ %.sroa.6192.sroa.0.0, %.lr.ph.i.i.i ], [ 0, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i" ]
  %.sroa.0191.1.ph = phi ptr [ %.sroa.0191.0, %.lr.ph.i.i.i ], [ %scevgep, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i" ]
  %i.fe = zext i32 %.sroa.6192.sroa.6.1.ph to i64
  %i.ff = shl nuw i64 %i.fe, 32
  %i.fg = zext i32 %.sroa.6192.sroa.0.1.ph to i64
  %i.fh = or disjoint i64 %i.ff, %i.fg
  br label %"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EE24hb_filter_iter_factory_tIZNKSI_5applyEPNS2_21hb_ot_apply_context_tERKNS2_25ContextApplyLookupContextEEUlRKS7_E0_RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS13_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS13_Efp_EEEOS13_OS18_.exit"

"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EE24hb_filter_iter_factory_tIZNKSI_5applyEPNS2_21hb_ot_apply_context_tERKNS2_25ContextApplyLookupContextEEUlRKS7_E0_RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS13_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS13_Efp_EEEOS13_OS18_.exit": ; preds = %"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EE24hb_filter_iter_factory_tIZNKSI_5applyEPNS2_21hb_ot_apply_context_tERKNS2_25ContextApplyLookupContextEEUlRKS7_E0_RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS13_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS13_Efp_EEEOS13_OS18_.exit.loopexit", %bb.s
  %.sroa.0191.1 = phi ptr [ %i.er, %bb.s ], [ %.sroa.0191.1.ph, %"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EE24hb_filter_iter_factory_tIZNKSI_5applyEPNS2_21hb_ot_apply_context_tERKNS2_25ContextApplyLookupContextEEUlRKS7_E0_RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS13_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS13_Efp_EEEOS13_OS18_.exit.loopexit" ]
  %.sroa.6192.sroa.0.0.insert.insert = phi i64 [ 0, %bb.s ], [ %i.fh, %"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EE24hb_filter_iter_factory_tIZNKSI_5applyEPNS2_21hb_ot_apply_context_tERKNS2_25ContextApplyLookupContextEEUlRKS7_E0_RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS13_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS13_Efp_EEEOS13_OS18_.exit.loopexit" ]
  store ptr %.sroa.0191.1, ptr %3, align 8
  %.sroa.6192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.6192.sroa.0.0.insert.insert, ptr %.sroa.6192.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @_ZL6hb_add, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @_ZL11hb_identity, ptr %.sroa.14194.0..sroa_idx, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.a, ptr %i.fi, align 8, !tbaa !1846, !alias.scope !4485
  %.sroa.2.0..sroa_idx.i.i.i.i159 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i.i.i.i159, align 8, !tbaa !4487, !alias.scope !4485
  %i.fj = call fastcc noundef zeroext i1 @"_ZorI13hb_map_iter_tI16hb_filter_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS3_4RuleINS3_6Layout10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS3_7RuleSetIS7_EEEL24hb_function_sortedness_t0ELPv0EEZNKSJ_5applyEPNS3_21hb_ot_apply_context_tERKNS3_25ContextApplyLookupContextEEUlRKS8_E0_RK3$_8LSO_0EEZNKSJ_5applyESR_SU_EUlSW_E1_LSN_0ELSO_0EERK4$_44TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS18_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS18_Efp_EEEOS18_OS1D_"(ptr noundef nonnull align 8 dereferenceable(64) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  br label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread

bb.t:                                             ; preds = %_ZNK2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE8may_skipERK15hb_glyph_info_t.exit107
  %i.fk = load ptr, ptr %i.ac, align 8, !tbaa !1278
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 112
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !589
  %i.fn = load i32, ptr %i.ab, align 8, !tbaa !1366
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [20 x i8], ptr %i.fm, i64 %i.fo ; 3 uses
  %i.fq = load ptr, ptr %i.ag, align 8, !tbaa !1287 ; 2 uses
  %i.fr = load i32, ptr %i.bf, align 8, !tbaa !1289 ; 4 uses
  %i.fs = getelementptr i8, ptr %i.fp, i64 12     ; 2 uses
  %.val108 = load i16, ptr %i.fs, align 4, !tbaa !280
  %i.ft = zext i16 %.val108 to i32                ; 3 uses
  %i.fu = and i32 %i.fr, 14
  %i.fv = and i32 %i.fu, %i.ft
  %.not.i.i = icmp eq i32 %i.fv, 0
  br i1 %.not.i.i, label %bb.u, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exitthread-pre-split

bb.u:                                             ; preds = %bb.t
  %i.fw = and i32 %i.ft, 8
  %.not8.i.i = icmp eq i32 %i.fw, 0
  br i1 %.not8.i.i, label %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.i.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fx = and i32 %i.fr, 16
  %.not.i3.i = icmp eq i32 %i.fx, 0
  br i1 %.not.i3.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fy = lshr i32 %i.fr, 16                      ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fq, i64 248
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !1279, !nonnull !293, !align !294
  %i.gb = load i32, ptr %i.fp, align 4, !tbaa !637 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !1720
  %i.ge = zext nneg i32 %i.fy to i64
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %i.ge ; 3 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !357
  %i.gh = lshr i32 %i.gb, 4
  %i.gi = and i32 %i.gh, 63
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = shl nuw i64 1, %i.gj
  %i.gl = and i64 %i.gk, %i.gg
  %.not.i6.i = icmp eq i64 %i.gl, 0
  br i1 %.not.i6.i, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exitthread-pre-split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !357
  %i.go = and i32 %i.gb, 63
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = shl nuw i64 1, %i.gp
  %i.gr = and i64 %i.gq, %i.gn
  %.not.i6.i.1 = icmp eq i64 %i.gr, 0
  br i1 %.not.i6.i.1, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exitthread-pre-split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !357
  %i.gu = lshr i32 %i.gb, 6
  %i.gv = and i32 %i.gu, 63
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = and i64 %i.gx, %i.gt
  %.not.i6.i.2 = icmp eq i64 %i.gy, 0
  br i1 %.not.i6.i.2, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exitthread-pre-split, label %.split

.split:                                           ; preds = %bb.y
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fq, i64 240
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !1715, !nonnull !293
  %i.hb = tail call noundef zeroext i1 @_ZNK2OT4GDEF15mark_set_coversEjj(ptr noundef nonnull align 1 dereferenceable(18) %i.ha, i32 noundef %i.fy, i32 noundef %i.gb)
  br i1 %i.hb, label %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.i.thread, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exitthread-pre-split

bb.z:                                             ; preds = %bb.v
  %i.hc = and i32 %i.fr, 65280                    ; 2 uses
  %.not11.i.i = icmp eq i32 %i.hc, 0
  %i.hd = and i32 %i.ft, 65280
  %i.he = icmp eq i32 %i.hc, %i.hd
  %or.cond272 = or i1 %.not11.i.i, %i.he
  br i1 %or.cond272, label %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.i.thread, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exitthread-pre-split

_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.i.thread: ; preds = %bb.z, %bb.u, %.split
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.hg = load i16, ptr %i.hf, align 4, !tbaa !280
  %.fr285 = freeze i16 %i.hg                      ; 4 uses
  %i.hh = and i16 %.fr285, 32
  %.not.i160 = icmp eq i16 %i.hh, 0
  br i1 %.not.i160, label %_ZNK2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE8may_skipERK15hb_glyph_info_t.exit, label %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit163

_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit163: ; preds = %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.i.thread
  %.val.i161 = load i16, ptr %i.fs, align 4, !tbaa !280
  %i.hi = and i16 %.val.i161, 16
  %.not2.i162 = icmp eq i16 %i.hi, 0
  br i1 %.not2.i162, label %bb.aa, label %_ZNK2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE8may_skipERK15hb_glyph_info_t.exit

bb.aa:                                            ; preds = %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit163
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.hk = load i8, ptr %i.hj, align 8, !tbaa !1291, !range !380, !noundef !293
  %i.hl = trunc nuw i8 %i.hk to i1
  %i.hm = and i16 %.fr285, 543
  %i.hn = icmp ne i16 %i.hm, 513
  %or.cond275.not = or i1 %i.hn, %i.hl
  br i1 %or.cond275.not, label %bb.ab, label %_ZNK2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE8may_skipERK15hb_glyph_info_t.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 97
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !1292, !range !380, !noundef !293
  %i.hq = trunc nuw i8 %i.hp to i1
  %i.hr = and i16 %.fr285, 287
  %i.hs = icmp ne i16 %i.hr, 257
  %or.cond278.not = or i1 %i.hs, %i.hq
  br i1 %or.cond278.not, label %bb.ac, label %_ZNK2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE8may_skipERK15hb_glyph_info_t.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.hu = load i8, ptr %i.ht, align 2, !tbaa !1293, !range !380, !noundef !293
  %i.hv = trunc nuw i8 %i.hu to i1
  %i.hw = and i16 %.fr285, 64
  %.not284 = icmp eq i16 %i.hw, 0
  %or.cond288 = or i1 %.not284, %i.hv
  br i1 %or.cond288, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exitthread-pre-split, label %_ZNK2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE8may_skipERK15hb_glyph_info_t.exit, !prof !1841

_ZNK2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE8may_skipERK15hb_glyph_info_t.exit: ; preds = %bb.ac, %bb.ab, %bb.aa, %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.i.thread, %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit163
  %i.hx = load ptr, ptr %i.ac, align 8, !tbaa !1278
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 112
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !589
  %i.ia = load i32, ptr %i.ab, align 8, !tbaa !1366 ; 2 uses
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [20 x i8], ptr %i.hz, i64 %i.ib
  %i.id = add i32 %i.ia, 1
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE8may_skipERK15hb_glyph_info_t.exit, %_ZNK2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE8may_skipERK15hb_glyph_info_t.exit107
  %.066 = phi i32 [ %i.id, %_ZNK2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE8may_skipERK15hb_glyph_info_t.exit ], [ 0, %_ZNK2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE8may_skipERK15hb_glyph_info_t.exit107 ]
  %.065 = phi ptr [ %i.ic, %_ZNK2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE8may_skipERK15hb_glyph_info_t.exit ], [ null, %_ZNK2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE8may_skipERK15hb_glyph_info_t.exit107 ] ; 2 uses
  %i.ie = load ptr, ptr %2, align 8, !tbaa !4488  ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !1849 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.ii = icmp ne ptr %i.ie, null                 ; 2 uses
  %.not86 = icmp eq ptr %.065, null
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit92
  %.0296 = phi i32 [ 0, %bb.ad ], [ %i.lz, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit92 ] ; 6 uses
end_hunk_3
begin_hunk_4_@_ZNK3AAT10StateTableINS_13ExtendedTypesEvE22collect_initial_glyphsI12hb_bit_set_tNS_21RearrangementSubtableIS1_EEEEvRT_jRKT0_:bb.a
._crit_edge:                                      ; preds = %bb.f
  %.pre = load i64, ptr %i.i, align 8, !tbaa !1240
  %i.t = and i64 %.pre, 4
  %i.u = icmp eq i64 %i.t, 0
  store i32 %i.an, ptr %4, align 8
  br i1 %i.u, label %bb.h, label %bb.g

_ZNK3AAT10StateTableINS_13ExtendedTypesEvE9get_entryEij.exit: ; preds = %_ZNK3AAT10StateTableINS_13ExtendedTypesEvE9get_entryEij.exit.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %_ZNK3AAT10StateTableINS_13ExtendedTypesEvE9get_entryEij.exit.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.v = phi i32 [ 0, %_ZNK3AAT10StateTableINS_13ExtendedTypesEvE9get_entryEij.exit.lr.ph ], [ %i.an, %bb.f ]
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv
  %i.x = load i16, ptr %i.w, align 1, !tbaa !283
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.z ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !283
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK3AAT10StateTableINS_13ExtendedTypesEvE9get_entryEij.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !283
  %i.af = and i16 %i.ae, 3968
  %or.cond.not = icmp eq i16 %i.af, 0
  br i1 %or.cond.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK3AAT10StateTableINS_13ExtendedTypesEvE9get_entryEij.exit
  %i.ag = and i64 %indvars.iv, 63
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = lshr i64 %indvars.iv, 6
  %i.aj = and i64 %i.ai, 7
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.aj ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1240
  %i.am = or i64 %i.al, %i.ah
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !1240
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.an = phi i32 [ %i.v, %bb.d ], [ -1, %bb.e ]  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK3AAT10StateTableINS_13ExtendedTypesEvE9get_entryEij.exit, !llvm.loop !5518

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 65535)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread, %bb.g, %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ap = load i32, ptr %i.ao, align 1, !tbaa !278
  %i.aq = tail call noundef i32 @llvm.bswap.i32(i32 %i.ap)
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  call void @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_(ptr noundef nonnull align 1 dereferenceable(13) %i.as, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_j(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !283
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  switch i16 %i.b, label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit [
    i16 0, label %bb.b
    i16 2, label %bb.c
    i16 4, label %bb.d
    i16 6, label %bb.e
    i16 8, label %bb.k
    i16 10, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.c = add i32 %2, -1
  %i.d = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 0, i32 noundef %i.c) ; 0 uses
  br label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void @_ZNK3AAT13LookupFormat2IN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void @_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit

bb.e:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.h = tail call noundef i16 @llvm.bswap.i16(i16 %i.g) ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.g, 0
  br i1 %.not.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i, label %bb.f, !prof !267

bb.f:                                             ; preds = %bb.e
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = add nuw nsw i64 %i.i, 4294967295
  %i.l = load i16, ptr %i.e, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  %i.n = zext i16 %i.m to i64
  %i.o = mul nuw nsw i64 %i.k, %i.n
  %i.p = and i64 %i.o, 4294967295
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.r = load i16, ptr %i.q, align 1, !tbaa !283
  %.not9.not.i.i.i = icmp eq i16 %i.r, -1
  %i.s = sext i1 %.not9.not.i.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i: ; preds = %bb.f, %bb.e
  %.2.i.i.i = phi i32 [ 0, %bb.e ], [ %i.s, %bb.f ]
  %i.t = zext i16 %i.h to i32
  %i.u = add nsw i32 %.2.i.i.i, %i.t              ; 2 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNK3AAT12LookupSingleIN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit.i, %.lr.ph.i
  %.05.i = phi i32 [ 0, %.lr.ph.i ], [ %i.au, %_ZNK3AAT12LookupSingleIN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit.i ] ; 3 uses
  %i.w = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w) ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i, label %bb.h, !prof !267

bb.h:                                             ; preds = %bb.g
  %i.y = zext i16 %i.x to i64
  %i.z = add nuw nsw i64 %i.y, 4294967295
  %i.aa = load i16, ptr %i.e, align 1, !tbaa !283
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.z, %i.ac
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !283
  %.not9.not.i.i.i.i = icmp eq i16 %i.ag, -1
  %i.ah = sext i1 %.not9.not.i.i.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i: ; preds = %bb.h, %bb.g
  %.2.i.i.i.i = phi i32 [ 0, %bb.g ], [ %i.ah, %bb.h ]
  %i.ai = zext i16 %i.x to i32
  %i.aj = add nsw i32 %.2.i.i.i.i, %i.ai
  %.not.i.i = icmp ult i32 %.05.i, %i.aj
  br i1 %.not.i.i, label %bb.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEEixEi.exit.i, !prof !268

bb.i:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ak = load i16, ptr %i.e, align 1, !tbaa !283
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32
  %i.an = mul i32 %.05.i, %i.am
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ao
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEEixEi.exit.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEEixEi.exit.i: ; preds = %bb.i, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i
  %.0.i.i = phi ptr [ %i.ap, %bb.i ], [ @_hb_NullPool, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i.i ]
  %i.aq = load i16, ptr %.0.i.i, align 1, !tbaa !283 ; 2 uses
  %i.ar = icmp eq i16 %i.aq, -1
  br i1 %i.ar, label %_ZNK3AAT12LookupSingleIN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEEixEi.exit.i
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.aq)
  %i.at = zext i16 %i.as to i32
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.at)
  br label %_ZNK3AAT12LookupSingleIN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit.i

_ZNK3AAT12LookupSingleIN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit.i: ; preds = %bb.j, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEEixEi.exit.i
  %i.au = add nuw i32 %.05.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.au, %i.u
  br i1 %exitcond.not.i, label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, label %bb.g, !llvm.loop !5519

bb.k:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aw = load i16, ptr %i.av, align 1, !tbaa !283 ; 2 uses
  %i.ax = tail call noundef i16 @llvm.bswap.i16(i16 %i.aw)
  %i.ay = zext i16 %i.ax to i32
  %.not.i7 = icmp eq i16 %i.aw, 0
  br i1 %.not.i7, label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, label %bb.l, !prof !267

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ba = load i16, ptr %i.az, align 1, !tbaa !283 ; 2 uses
  %i.bb = icmp eq i16 %i.ba, -1
  br i1 %i.bb, label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = tail call noundef i16 @llvm.bswap.i16(i16 %i.ba)
  %i.bd = zext i16 %i.bc to i32                   ; 2 uses
  %i.be = add nsw i32 %i.ay, -1
  %i.bf = add nuw nsw i32 %i.be, %i.bd
  %i.bg = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.bd, i32 noundef %i.bf) ; 0 uses
  br label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit

bb.n:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bi = load i16, ptr %i.bh, align 1, !tbaa !283 ; 2 uses
  %i.bj = tail call noundef i16 @llvm.bswap.i16(i16 %i.bi)
  %i.bk = zext i16 %i.bj to i32
  %.not.i8 = icmp eq i16 %i.bi, 0
  br i1 %.not.i8, label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, label %bb.o, !prof !267

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bm = load i16, ptr %i.bl, align 1, !tbaa !283 ; 2 uses
  %i.bn = icmp eq i16 %i.bm, -1
  br i1 %i.bn, label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = tail call noundef i16 @llvm.bswap.i16(i16 %i.bm)
  %i.bp = zext i16 %i.bo to i32                   ; 2 uses
  %i.bq = add nsw i32 %i.bk, -1
  %i.br = add nuw nsw i32 %i.bq, %i.bp
  %i.bs = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.bp, i32 noundef %i.br) ; 0 uses
  br label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit

_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit: ; preds = %_ZNK3AAT12LookupSingleIN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit.i, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit.i, %bb.a, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !283
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  switch i16 %i.b, label %_ZNK3AAT13LookupFormat0IN2OT7NumTypeILb1EtLj2EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_.exit [
    i16 0, label %bb.b
    i16 2, label %bb.f
    i16 4, label %bb.g
    i16 6, label %bb.h
    i16 8, label %bb.i
    i16 10, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %.not8.i = icmp eq i32 %2, 0
  br i1 %.not8.i, label %_ZNK3AAT13LookupFormat0IN2OT7NumTypeILb1EtLj2EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.trip.count.i = zext i32 %2 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.f = load i16, ptr %i.e, align 1, !tbaa !283
  %i.g = tail call noundef i16 @llvm.bswap.i16(i16 %i.f)
  %i.h = zext i16 %i.g to i32                     ; 2 uses
  %i.i = lshr i32 %i.h, 6
  %i.j = and i32 %i.i, 7
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1240
  %i.n = and i32 %i.h, 63
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw i64 1, %i.o
  %i.q = and i64 %i.p, %i.m
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = trunc nuw i64 %indvars.iv.i to i32
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.r)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK3AAT13LookupFormat0IN2OT7NumTypeILb1EtLj2EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_.exit, label %bb.c, !llvm.loop !5520

bb.f:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void @_ZNK3AAT13LookupFormat2IN2OT7NumTypeILb1EtLj2EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_RKT0_(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(72) %3)
  br label %_ZNK3AAT13LookupFormat0IN2OT7NumTypeILb1EtLj2EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_.exit

bb.g:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void @_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EtLj2EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_RKT0_(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(72) %3)
  br label %_ZNK3AAT13LookupFormat0IN2OT7NumTypeILb1EtLj2EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_.exit

bb.h:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void @_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EtLj2EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_RKT0_(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(72) %3)
  br label %_ZNK3AAT13LookupFormat0IN2OT7NumTypeILb1EtLj2EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_.exit

bb.i:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.t = load i16, ptr %i.s, align 1, !tbaa !283  ; 2 uses
  %.not.i13 = icmp eq i16 %i.t, 0
  br i1 %.not.i13, label %_ZNK3AAT13LookupFormat0IN2OT7NumTypeILb1EtLj2EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_.exit, label %bb.j, !prof !267

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.v = load i16, ptr %i.u, align 1, !tbaa !283
  %i.w = icmp eq i16 %i.v, -1
  br i1 %i.w, label %_ZNK3AAT13LookupFormat0IN2OT7NumTypeILb1EtLj2EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_.exit, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.lr.ph.i14
  %i.z = phi i16 [ %i.t, %.lr.ph.i14 ], [ %i.as, %bb.m ]
  %indvars.iv.i15 = phi i64 [ 0, %.lr.ph.i14 ], [ %indvars.iv.next.i16, %bb.m ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.i15
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !283
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = zext i16 %i.ac to i32                   ; 2 uses
  %i.ae = lshr i32 %i.ad, 6
  %i.af = and i32 %i.ae, 7
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !1240
  %i.aj = and i32 %i.ad, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = and i64 %i.al, %i.ai
  %.not7.i = icmp eq i64 %i.am, 0
  br i1 %.not7.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load i16, ptr %i.u, align 1, !tbaa !283
  %i.ao = tail call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %i.ap = zext i16 %i.ao to i32
  %i.aq = trunc nuw nsw i64 %indvars.iv.i15 to i32
  %i.ar = add nuw nsw i32 %i.ap, %i.aq
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.ar)
  %.pre.i = load i16, ptr %i.s, align 1, !tbaa !283
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.as = phi i16 [ %i.z, %bb.k ], [ %.pre.i, %bb.l ] ; 2 uses
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i15, 1 ; 2 uses
  %i.at = tail call noundef i16 @llvm.bswap.i16(i16 %i.as)
  %i.au = zext i16 %i.at to i64
  %i.av = icmp samesign ult i64 %indvars.iv.next.i16, %i.au
  br i1 %i.av, label %bb.k, label %_ZNK3AAT13LookupFormat0IN2OT7NumTypeILb1EtLj2EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_.exit, !llvm.loop !5521

bb.n:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !283 ; 2 uses
  %.not.i17 = icmp eq i16 %i.ax, 0
  br i1 %.not.i17, label %_ZNK3AAT13LookupFormat0IN2OT7NumTypeILb1EtLj2EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_.exit, label %bb.o, !prof !267

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 1, !tbaa !283
  %i.ba = icmp eq i16 %i.az, -1
  br i1 %i.ba, label %_ZNK3AAT13LookupFormat0IN2OT7NumTypeILb1EtLj2EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_.exit, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.lr.ph22.i
  %i.be = phi i16 [ %i.ax, %.lr.ph22.i ], [ %i.cv, %bb.r ]
  %.01220.i = phi i32 [ 0, %.lr.ph22.i ], [ %i.cw, %bb.r ] ; 2 uses
  %.01319.i = phi ptr [ %i.bb, %.lr.ph22.i ], [ %.1.lcssa.i, %bb.r ] ; 4 uses
  %i.bf = load i16, ptr %i.bc, align 1, !tbaa !283 ; 2 uses
  %i.bg = tail call noundef i16 @llvm.bswap.i16(i16 %i.bf) ; 3 uses
  %i.bh = zext i16 %i.bg to i32                   ; 2 uses
  %.not24.i = icmp eq i16 %i.bf, 0
  br i1 %.not24.i, label %._crit_edge.i, label %.lr.ph.i18.preheader

.lr.ph.i18.preheader:                             ; preds = %bb.p
  %xtraiter = and i32 %i.bh, 3                    ; 3 uses
  %i.bi = icmp ult i16 %i.bg, 4
  br i1 %i.bi, label %.lr.ph.i18.epil.preheader, label %.lr.ph.i18.preheader.new

.lr.ph.i18.preheader.new:                         ; preds = %.lr.ph.i18.preheader
  %unroll_iter = and i32 %i.bh, 65532
  br label %.lr.ph.i18

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i18
  %i.bj = load i8, ptr %.115.i, align 1, !tbaa !303
  %i.bk = zext i8 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.115.i, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !303
  %i.bo = zext i8 %i.bn to i32
  %i.bp = shl nuw nsw i32 %i.bo, 8
  %i.bq = or disjoint i32 %i.bl, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.115.i, i64 2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !303
  %i.bt = zext i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.bq, %i.bt
  %i.bv = shl nuw i32 %i.bu, 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.115.i, i64 3
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !303
  %i.by = zext i8 %i.bx to i32
  %i.bz = or disjoint i32 %i.bv, %i.by            ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit, label %.lr.ph.i18.epil.preheader

.lr.ph.i18.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i18.preheader
  %.01116.i.epil.init = phi i32 [ 0, %.lr.ph.i18.preheader ], [ %i.bz, %._crit_edge.i.loopexit.unr-lcssa ]
  %.115.i.epil.init = phi ptr [ %.01319.i, %.lr.ph.i18.preheader ], [ %i.cq, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod39 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %.lr.ph.i18.epil

.lr.ph.i18.epil:                                  ; preds = %.lr.ph.i18.epil, %.lr.ph.i18.epil.preheader
  %.01116.i.epil = phi i32 [ %i.ce, %.lr.ph.i18.epil ], [ %.01116.i.epil.init, %.lr.ph.i18.epil.preheader ]
  %.115.i.epil = phi ptr [ %i.cb, %.lr.ph.i18.epil ], [ %.115.i.epil.init, %.lr.ph.i18.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i18.epil ], [ 0, %.lr.ph.i18.epil.preheader ]
end_hunk_4
begin_hunk_5_@_ZNK3AAT10StateTableINS_13ExtendedTypesENS_13LigatureEntryILb1EE9EntryDataEE22collect_initial_glyphsI12hb_bit_set_tNS_16LigatureSubtableIS1_EEEEvRT_jRKT0_:bb.a
._crit_edge:                                      ; preds = %bb.f
  %.pre = load i64, ptr %i.i, align 8, !tbaa !1240
  %i.t = and i64 %.pre, 4
  %i.u = icmp eq i64 %i.t, 0
  store i32 %i.an, ptr %4, align 8
  br i1 %i.u, label %bb.h, label %bb.g

_ZNK3AAT10StateTableINS_13ExtendedTypesENS_13LigatureEntryILb1EE9EntryDataEE9get_entryEij.exit: ; preds = %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_13LigatureEntryILb1EE9EntryDataEE9get_entryEij.exit.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_13LigatureEntryILb1EE9EntryDataEE9get_entryEij.exit.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.v = phi i32 [ 0, %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_13LigatureEntryILb1EE9EntryDataEE9get_entryEij.exit.lr.ph ], [ %i.an, %bb.f ]
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv
  %i.x = load i16, ptr %i.w, align 1, !tbaa !283
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [6 x i8], ptr %i.s, i64 %i.z ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !283
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_13LigatureEntryILb1EE9EntryDataEE9get_entryEij.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !283
  %i.af = and i16 %i.ae, 160
  %or.cond.not = icmp eq i16 %i.af, 0
  br i1 %or.cond.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_13LigatureEntryILb1EE9EntryDataEE9get_entryEij.exit
  %i.ag = and i64 %indvars.iv, 63
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = lshr i64 %indvars.iv, 6
  %i.aj = and i64 %i.ai, 7
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.aj ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1240
  %i.am = or i64 %i.al, %i.ah
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !1240
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.an = phi i32 [ %i.v, %bb.d ], [ -1, %bb.e ]  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_13LigatureEntryILb1EE9EntryDataEE9get_entryEij.exit, !llvm.loop !5542

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 65535)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread, %bb.g, %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ap = load i32, ptr %i.ao, align 1, !tbaa !278
  %i.aq = tail call noundef i32 @llvm.bswap.i32(i32 %i.ap)
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  call void @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_(ptr noundef nonnull align 1 dereferenceable(13) %i.as, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK3AAT6LookupIN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_j(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !283
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  switch i16 %i.b, label %_ZNK3AAT13LookupFormat6IN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit [
    i16 0, label %bb.b
    i16 2, label %bb.c
    i16 4, label %bb.d
    i16 6, label %bb.e
    i16 8, label %bb.k
    i16 10, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.c = add i32 %2, -1
  %i.d = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 0, i32 noundef %i.c) ; 0 uses
  br label %_ZNK3AAT13LookupFormat6IN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void @_ZNK3AAT13LookupFormat2IN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br label %_ZNK3AAT13LookupFormat6IN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void @_ZNK3AAT13LookupFormat4IN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br label %_ZNK3AAT13LookupFormat6IN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit

bb.e:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.h = tail call noundef i16 @llvm.bswap.i16(i16 %i.g) ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.g, 0
  br i1 %.not.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i, label %bb.f, !prof !267

bb.f:                                             ; preds = %bb.e
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = add nuw nsw i64 %i.i, 4294967295
  %i.l = load i16, ptr %i.e, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  %i.n = zext i16 %i.m to i64
  %i.o = mul nuw nsw i64 %i.k, %i.n
  %i.p = and i64 %i.o, 4294967295
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.r = load i16, ptr %i.q, align 1, !tbaa !283
  %.not9.not.i.i.i = icmp eq i16 %i.r, -1
  %i.s = sext i1 %.not9.not.i.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i: ; preds = %bb.f, %bb.e
  %.2.i.i.i = phi i32 [ 0, %bb.e ], [ %i.s, %bb.f ]
  %i.t = zext i16 %i.h to i32
  %i.u = add nsw i32 %.2.i.i.i, %i.t              ; 2 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_ZNK3AAT13LookupFormat6IN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNK3AAT12LookupSingleIN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit.i, %.lr.ph.i
  %.05.i = phi i32 [ 0, %.lr.ph.i ], [ %i.au, %_ZNK3AAT12LookupSingleIN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit.i ] ; 3 uses
  %i.w = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w) ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i, label %bb.h, !prof !267

bb.h:                                             ; preds = %bb.g
  %i.y = zext i16 %i.x to i64
  %i.z = add nuw nsw i64 %i.y, 4294967295
  %i.aa = load i16, ptr %i.e, align 1, !tbaa !283
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.z, %i.ac
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !283
  %.not9.not.i.i.i.i = icmp eq i16 %i.ag, -1
  %i.ah = sext i1 %.not9.not.i.i.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i: ; preds = %bb.h, %bb.g
  %.2.i.i.i.i = phi i32 [ 0, %bb.g ], [ %i.ah, %bb.h ]
  %i.ai = zext i16 %i.x to i32
  %i.aj = add nsw i32 %.2.i.i.i.i, %i.ai
  %.not.i.i = icmp ult i32 %.05.i, %i.aj
  br i1 %.not.i.i, label %bb.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEEixEi.exit.i, !prof !268

bb.i:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ak = load i16, ptr %i.e, align 1, !tbaa !283
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32
  %i.an = mul i32 %.05.i, %i.am
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ao
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEEixEi.exit.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEEixEi.exit.i: ; preds = %bb.i, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i
  %.0.i.i = phi ptr [ %i.ap, %bb.i ], [ @_hb_NullPool, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i.i ]
  %i.aq = load i16, ptr %.0.i.i, align 1, !tbaa !283 ; 2 uses
  %i.ar = icmp eq i16 %i.aq, -1
  br i1 %i.ar, label %_ZNK3AAT12LookupSingleIN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEEixEi.exit.i
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.aq)
  %i.at = zext i16 %i.as to i32
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.at)
  br label %_ZNK3AAT12LookupSingleIN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit.i

_ZNK3AAT12LookupSingleIN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit.i: ; preds = %bb.j, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEEixEi.exit.i
  %i.au = add nuw i32 %.05.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.au, %i.u
  br i1 %exitcond.not.i, label %_ZNK3AAT13LookupFormat6IN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, label %bb.g, !llvm.loop !5543

bb.k:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aw = load i16, ptr %i.av, align 1, !tbaa !283 ; 2 uses
  %i.ax = tail call noundef i16 @llvm.bswap.i16(i16 %i.aw)
  %i.ay = zext i16 %i.ax to i32
  %.not.i7 = icmp eq i16 %i.aw, 0
  br i1 %.not.i7, label %_ZNK3AAT13LookupFormat6IN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, label %bb.l, !prof !267

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ba = load i16, ptr %i.az, align 1, !tbaa !283 ; 2 uses
  %i.bb = icmp eq i16 %i.ba, -1
  br i1 %i.bb, label %_ZNK3AAT13LookupFormat6IN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = tail call noundef i16 @llvm.bswap.i16(i16 %i.ba)
  %i.bd = zext i16 %i.bc to i32                   ; 2 uses
  %i.be = add nsw i32 %i.ay, -1
  %i.bf = add nuw nsw i32 %i.be, %i.bd
  %i.bg = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.bd, i32 noundef %i.bf) ; 0 uses
  br label %_ZNK3AAT13LookupFormat6IN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit

bb.n:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bi = load i16, ptr %i.bh, align 1, !tbaa !283 ; 2 uses
  %i.bj = tail call noundef i16 @llvm.bswap.i16(i16 %i.bi)
  %i.bk = zext i16 %i.bj to i32
  %.not.i8 = icmp eq i16 %i.bi, 0
  br i1 %.not.i8, label %_ZNK3AAT13LookupFormat6IN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, label %bb.o, !prof !267

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bm = load i16, ptr %i.bl, align 1, !tbaa !283 ; 2 uses
  %i.bn = icmp eq i16 %i.bm, -1
  br i1 %i.bn, label %_ZNK3AAT13LookupFormat6IN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = tail call noundef i16 @llvm.bswap.i16(i16 %i.bm)
  %i.bp = zext i16 %i.bo to i32                   ; 2 uses
  %i.bq = add nsw i32 %i.bk, -1
  %i.br = add nuw nsw i32 %i.bq, %i.bp
  %i.bs = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.bp, i32 noundef %i.br) ; 0 uses
  br label %_ZNK3AAT13LookupFormat6IN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit

_ZNK3AAT13LookupFormat6IN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit: ; preds = %_ZNK3AAT12LookupSingleIN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit.i, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i, %bb.a, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK3AAT13LookupFormat2IN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i16, ptr %i.b, align 1, !tbaa !283  ; 2 uses
  %i.d = tail call noundef i16 @llvm.bswap.i16(i16 %i.c) ; 2 uses
  %.not.i.i = icmp eq i16 %i.c, 0
  br i1 %.not.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = add nuw nsw i64 %i.e, 4294967295
  %i.h = load i16, ptr %i.a, align 1, !tbaa !283
  %i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.h)
  %i.j = zext i16 %i.i to i64
  %i.k = mul nuw nsw i64 %i.g, %i.j
  %i.l = and i64 %i.k, 4294967295
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.l ; 2 uses
  %i.n = load i16, ptr %i.m, align 1, !tbaa !283
  %.not9.i.i = icmp eq i16 %i.n, -1
  br i1 %.not9.i.i, label %bb.c, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.p = load i16, ptr %i.o, align 1, !tbaa !283
  %.not9.1.i.i = icmp eq i16 %i.p, -1
  %i.q = sext i1 %.not9.1.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.2.i.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.q, %bb.c ]
  %i.r = zext i16 %i.d to i32
  %i.s = add nsw i32 %.2.i.i, %i.r                ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNK3AAT19LookupSegmentSingleIN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNK3AAT19LookupSegmentSingleIN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit
  %.05 = phi i32 [ 0, %.lr.ph ], [ %i.az, %_ZNK3AAT19LookupSegmentSingleIN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit ] ; 3 uses
  %i.u = load i16, ptr %i.b, align 1, !tbaa !283  ; 2 uses
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u) ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i, label %bb.e, !prof !267

bb.e:                                             ; preds = %bb.d
  %i.w = zext i16 %i.v to i64
  %i.x = add nuw nsw i64 %i.w, 4294967295
  %i.y = load i16, ptr %i.a, align 1, !tbaa !283
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y)
  %i.aa = zext i16 %i.z to i64
  %i.ab = mul nuw nsw i64 %i.x, %i.aa
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !283
  %.not9.i.i.i = icmp eq i16 %i.ae, -1
  br i1 %.not9.i.i.i, label %bb.f, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !283
  %.not9.1.i.i.i = icmp eq i16 %i.ag, -1
  %i.ah = sext i1 %.not9.1.i.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.2.i.i.i = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ %i.ah, %bb.f ]
  %i.ai = zext i16 %i.v to i32
  %i.aj = add nsw i32 %.2.i.i.i, %i.ai
  %.not.i = icmp ult i32 %.05, %i.aj
  br i1 %.not.i, label %bb.g, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEEixEi.exit, !prof !268

bb.g:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ak = load i16, ptr %i.a, align 1, !tbaa !283
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32
  %i.an = mul i32 %.05, %i.am
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ao
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEEixEi.exit

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEEixEi.exit: ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i, %bb.g
  %.0.i = phi ptr [ %i.ap, %bb.g ], [ @_hb_NullPool, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEE10get_lengthEv.exit.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !283 ; 2 uses
  %i.as = icmp eq i16 %i.ar, -1
  br i1 %i.as, label %_ZNK3AAT19LookupSegmentSingleIN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEEixEi.exit
  %i.at = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.au = zext i16 %i.at to i32
  %i.av = load i16, ptr %.0.i, align 1, !tbaa !283
  %i.aw = tail call noundef i16 @llvm.bswap.i16(i16 %i.av)
  %i.ax = zext i16 %i.aw to i32
  %i.ay = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.au, i32 noundef %i.ax) ; 0 uses
  br label %_ZNK3AAT19LookupSegmentSingleIN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit

_ZNK3AAT19LookupSegmentSingleIN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit: ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_11HBGlyphID16EEEEixEi.exit, %bb.h
  %i.az = add nuw i32 %.05, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.az, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !5544
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK3AAT13LookupFormat4IN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i16, ptr %i.b, align 1, !tbaa !283  ; 2 uses
  %i.d = tail call noundef i16 @llvm.bswap.i16(i16 %i.c) ; 2 uses
  %.not.i.i = icmp eq i16 %i.c, 0
  br i1 %.not.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = add nuw nsw i64 %i.e, 4294967295
  %i.h = load i16, ptr %i.a, align 1, !tbaa !283
  %i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.h)
  %i.j = zext i16 %i.i to i64
  %i.k = mul nuw nsw i64 %i.g, %i.j
  %i.l = and i64 %i.k, 4294967295
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.l ; 2 uses
  %i.n = load i16, ptr %i.m, align 1, !tbaa !283
  %.not9.i.i = icmp eq i16 %i.n, -1
  br i1 %.not9.i.i, label %bb.c, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.p = load i16, ptr %i.o, align 1, !tbaa !283
  %.not9.1.i.i = icmp eq i16 %i.p, -1
  %i.q = sext i1 %.not9.1.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.2.i.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.q, %bb.c ]
  %i.r = zext i16 %i.d to i32
  %i.s = add nsw i32 %.2.i.i, %i.r                ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNK3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNK3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit
  %.05 = phi i32 [ 0, %.lr.ph ], [ %i.az, %_ZNK3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit ] ; 3 uses
  %i.u = load i16, ptr %i.b, align 1, !tbaa !283  ; 2 uses
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u) ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i, label %bb.e, !prof !267

bb.e:                                             ; preds = %bb.d
  %i.w = zext i16 %i.v to i64
  %i.x = add nuw nsw i64 %i.w, 4294967295
  %i.y = load i16, ptr %i.a, align 1, !tbaa !283
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y)
  %i.aa = zext i16 %i.z to i64
  %i.ab = mul nuw nsw i64 %i.x, %i.aa
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !283
  %.not9.i.i.i = icmp eq i16 %i.ae, -1
  br i1 %.not9.i.i.i, label %bb.f, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !283
  %.not9.1.i.i.i = icmp eq i16 %i.ag, -1
  %i.ah = sext i1 %.not9.1.i.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.2.i.i.i = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ %i.ah, %bb.f ]
  %i.ai = zext i16 %i.v to i32
  %i.aj = add nsw i32 %.2.i.i.i, %i.ai
  %.not.i = icmp ult i32 %.05, %i.aj
  br i1 %.not.i, label %bb.g, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEEixEi.exit, !prof !268

bb.g:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ak = load i16, ptr %i.a, align 1, !tbaa !283
end_hunk_5
begin_hunk_6_@_ZNK3AAT10StateTableINS_13ExtendedTypesENS_19KerxSubTableFormat4INS_18KerxSubTableHeaderEE9EntryDataEE22collect_initial_glyphsI12hb_bit_set_tS4_EEvRT_jRKT0_:bb.a

_ZNK3AAT10StateTableINS_13ExtendedTypesENS_19KerxSubTableFormat4INS_18KerxSubTableHeaderEE9EntryDataEE9get_entryEij.exit: ; preds = %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_19KerxSubTableFormat4INS_18KerxSubTableHeaderEE9EntryDataEE9get_entryEij.exit.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_19KerxSubTableFormat4INS_18KerxSubTableHeaderEE9EntryDataEE9get_entryEij.exit.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.v = phi i32 [ 0, %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_19KerxSubTableFormat4INS_18KerxSubTableHeaderEE9EntryDataEE9get_entryEij.exit.lr.ph ], [ %i.ao, %bb.g ]
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv
  %i.x = load i16, ptr %i.w, align 1, !tbaa !283
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [6 x i8], ptr %i.s, i64 %i.z ; 3 uses
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !283
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_19KerxSubTableFormat4INS_18KerxSubTableHeaderEE9EntryDataEE9get_entryEij.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !283
  %.mask.i = and i16 %i.ae, 128
  %.not18 = icmp eq i16 %.mask.i, 0
  br i1 %.not18, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !283
  %.not19 = icmp eq i16 %i.ag, -1
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_19KerxSubTableFormat4INS_18KerxSubTableHeaderEE9EntryDataEE9get_entryEij.exit
  %i.ah = and i64 %indvars.iv, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = lshr i64 %indvars.iv, 6
  %i.ak = and i64 %i.aj, 7
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !1240
  %i.an = or i64 %i.am, %i.ai
  store i64 %i.an, ptr %i.al, align 8, !tbaa !1240
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ao = phi i32 [ %i.v, %bb.e ], [ -1, %bb.f ]  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_19KerxSubTableFormat4INS_18KerxSubTableHeaderEE9EntryDataEE9get_entryEij.exit, !llvm.loop !5724

bb.h:                                             ; preds = %._crit_edge
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 65535)
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread, %bb.h, %._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aq = load i32, ptr %i.ap, align 1, !tbaa !278
  %i.ar = tail call noundef i32 @llvm.bswap.i32(i32 %i.aq)
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  call void @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_(ptr noundef nonnull align 1 dereferenceable(13) %i.at, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK3AAT6LookupIN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_j(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !283
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  switch i16 %i.b, label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit [
    i16 0, label %bb.b
    i16 2, label %bb.c
    i16 4, label %bb.d
    i16 6, label %bb.e
    i16 8, label %bb.k
    i16 10, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.c = add i32 %2, -1
  %i.d = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 0, i32 noundef %i.c) ; 0 uses
  br label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void @_ZNK3AAT13LookupFormat2IN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void @_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit

bb.e:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.h = tail call noundef i16 @llvm.bswap.i16(i16 %i.g) ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.g, 0
  br i1 %.not.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i, label %bb.f, !prof !267

bb.f:                                             ; preds = %bb.e
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = add nuw nsw i64 %i.i, 4294967295
  %i.l = load i16, ptr %i.e, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  %i.n = zext i16 %i.m to i64
  %i.o = mul nuw nsw i64 %i.k, %i.n
  %i.p = and i64 %i.o, 4294967295
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.r = load i16, ptr %i.q, align 1, !tbaa !283
  %.not9.not.i.i.i = icmp eq i16 %i.r, -1
  %i.s = sext i1 %.not9.not.i.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i: ; preds = %bb.f, %bb.e
  %.2.i.i.i = phi i32 [ 0, %bb.e ], [ %i.s, %bb.f ]
  %i.t = zext i16 %i.h to i32
  %i.u = add nsw i32 %.2.i.i.i, %i.t              ; 2 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNK3AAT12LookupSingleIN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit.i, %.lr.ph.i
  %.05.i = phi i32 [ 0, %.lr.ph.i ], [ %i.au, %_ZNK3AAT12LookupSingleIN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit.i ] ; 3 uses
  %i.w = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w) ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i, label %bb.h, !prof !267

bb.h:                                             ; preds = %bb.g
  %i.y = zext i16 %i.x to i64
  %i.z = add nuw nsw i64 %i.y, 4294967295
  %i.aa = load i16, ptr %i.e, align 1, !tbaa !283
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.z, %i.ac
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !283
  %.not9.not.i.i.i.i = icmp eq i16 %i.ag, -1
  %i.ah = sext i1 %.not9.not.i.i.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i: ; preds = %bb.h, %bb.g
  %.2.i.i.i.i = phi i32 [ 0, %bb.g ], [ %i.ah, %bb.h ]
  %i.ai = zext i16 %i.x to i32
  %i.aj = add nsw i32 %.2.i.i.i.i, %i.ai
  %.not.i.i = icmp ult i32 %.05.i, %i.aj
  br i1 %.not.i.i, label %bb.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEEixEi.exit.i, !prof !268

bb.i:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ak = load i16, ptr %i.e, align 1, !tbaa !283
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32
  %i.an = mul i32 %.05.i, %i.am
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ao
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEEixEi.exit.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEEixEi.exit.i: ; preds = %bb.i, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i
  %.0.i.i = phi ptr [ %i.ap, %bb.i ], [ @_hb_NullPool, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i.i ]
  %i.aq = load i16, ptr %.0.i.i, align 1, !tbaa !283 ; 2 uses
  %i.ar = icmp eq i16 %i.aq, -1
  br i1 %i.ar, label %_ZNK3AAT12LookupSingleIN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEEixEi.exit.i
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.aq)
  %i.at = zext i16 %i.as to i32
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.at)
  br label %_ZNK3AAT12LookupSingleIN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit.i

_ZNK3AAT12LookupSingleIN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit.i: ; preds = %bb.j, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEEixEi.exit.i
  %i.au = add nuw i32 %.05.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.au, %i.u
  br i1 %exitcond.not.i, label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, label %bb.g, !llvm.loop !5725

bb.k:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aw = load i16, ptr %i.av, align 1, !tbaa !283 ; 2 uses
  %i.ax = tail call noundef i16 @llvm.bswap.i16(i16 %i.aw)
  %i.ay = zext i16 %i.ax to i32
  %.not.i7 = icmp eq i16 %i.aw, 0
  br i1 %.not.i7, label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, label %bb.l, !prof !267

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ba = load i16, ptr %i.az, align 1, !tbaa !283 ; 2 uses
  %i.bb = icmp eq i16 %i.ba, -1
  br i1 %i.bb, label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = tail call noundef i16 @llvm.bswap.i16(i16 %i.ba)
  %i.bd = zext i16 %i.bc to i32                   ; 2 uses
  %i.be = add nsw i32 %i.ay, -1
  %i.bf = add nuw nsw i32 %i.be, %i.bd
  %i.bg = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.bd, i32 noundef %i.bf) ; 0 uses
  br label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit

bb.n:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bi = load i16, ptr %i.bh, align 1, !tbaa !283 ; 2 uses
  %i.bj = tail call noundef i16 @llvm.bswap.i16(i16 %i.bi)
  %i.bk = zext i16 %i.bj to i32
  %.not.i8 = icmp eq i16 %i.bi, 0
  br i1 %.not.i8, label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, label %bb.o, !prof !267

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bm = load i16, ptr %i.bl, align 1, !tbaa !283 ; 2 uses
  %i.bn = icmp eq i16 %i.bm, -1
  br i1 %i.bn, label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = tail call noundef i16 @llvm.bswap.i16(i16 %i.bm)
  %i.bp = zext i16 %i.bo to i32                   ; 2 uses
  %i.bq = add nsw i32 %i.bk, -1
  %i.br = add nuw nsw i32 %i.bq, %i.bp
  %i.bs = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.bp, i32 noundef %i.br) ; 0 uses
  br label %_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit

_ZNK3AAT13LookupFormat6IN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit: ; preds = %_ZNK3AAT12LookupSingleIN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit.i, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i, %bb.a, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK3AAT13LookupFormat2IN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i16, ptr %i.b, align 1, !tbaa !283  ; 2 uses
  %i.d = tail call noundef i16 @llvm.bswap.i16(i16 %i.c) ; 2 uses
  %.not.i.i = icmp eq i16 %i.c, 0
  br i1 %.not.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = add nuw nsw i64 %i.e, 4294967295
  %i.h = load i16, ptr %i.a, align 1, !tbaa !283
  %i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.h)
  %i.j = zext i16 %i.i to i64
  %i.k = mul nuw nsw i64 %i.g, %i.j
  %i.l = and i64 %i.k, 4294967295
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.l ; 2 uses
  %i.n = load i16, ptr %i.m, align 1, !tbaa !283
  %.not9.i.i = icmp eq i16 %i.n, -1
  br i1 %.not9.i.i, label %bb.c, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.p = load i16, ptr %i.o, align 1, !tbaa !283
  %.not9.1.i.i = icmp eq i16 %i.p, -1
  %i.q = sext i1 %.not9.1.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.2.i.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.q, %bb.c ]
  %i.r = zext i16 %i.d to i32
  %i.s = add nsw i32 %.2.i.i, %i.r                ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNK3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNK3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit
  %.05 = phi i32 [ 0, %.lr.ph ], [ %i.az, %_ZNK3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit ] ; 3 uses
  %i.u = load i16, ptr %i.b, align 1, !tbaa !283  ; 2 uses
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u) ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i, label %bb.e, !prof !267

bb.e:                                             ; preds = %bb.d
  %i.w = zext i16 %i.v to i64
  %i.x = add nuw nsw i64 %i.w, 4294967295
  %i.y = load i16, ptr %i.a, align 1, !tbaa !283
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y)
  %i.aa = zext i16 %i.z to i64
  %i.ab = mul nuw nsw i64 %i.x, %i.aa
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !283
  %.not9.i.i.i = icmp eq i16 %i.ae, -1
  br i1 %.not9.i.i.i, label %bb.f, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !283
  %.not9.1.i.i.i = icmp eq i16 %i.ag, -1
  %i.ah = sext i1 %.not9.1.i.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.2.i.i.i = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ %i.ah, %bb.f ]
  %i.ai = zext i16 %i.v to i32
  %i.aj = add nsw i32 %.2.i.i.i, %i.ai
  %.not.i = icmp ult i32 %.05, %i.aj
  br i1 %.not.i, label %bb.g, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEEixEi.exit, !prof !268

bb.g:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ak = load i16, ptr %i.a, align 1, !tbaa !283
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32
  %i.an = mul i32 %.05, %i.am
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ao
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEEixEi.exit

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEEixEi.exit: ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i, %bb.g
  %.0.i = phi ptr [ %i.ap, %bb.g ], [ @_hb_NullPool, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !283 ; 2 uses
  %i.as = icmp eq i16 %i.ar, -1
  br i1 %i.as, label %_ZNK3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEEixEi.exit
  %i.at = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.au = zext i16 %i.at to i32
  %i.av = load i16, ptr %.0.i, align 1, !tbaa !283
  %i.aw = tail call noundef i16 @llvm.bswap.i16(i16 %i.av)
  %i.ax = zext i16 %i.aw to i32
  %i.ay = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.au, i32 noundef %i.ax) ; 0 uses
  br label %_ZNK3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit

_ZNK3AAT19LookupSegmentSingleIN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit: ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_7NumTypeILb1EjLj4EEEEEEixEi.exit, %bb.h
  %i.az = add nuw i32 %.05, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.az, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !5726
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i16, ptr %i.b, align 1, !tbaa !283  ; 2 uses
  %i.d = tail call noundef i16 @llvm.bswap.i16(i16 %i.c) ; 2 uses
  %.not.i.i = icmp eq i16 %i.c, 0
  br i1 %.not.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = add nuw nsw i64 %i.e, 4294967295
  %i.h = load i16, ptr %i.a, align 1, !tbaa !283
  %i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.h)
  %i.j = zext i16 %i.i to i64
  %i.k = mul nuw nsw i64 %i.g, %i.j
  %i.l = and i64 %i.k, 4294967295
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.l ; 2 uses
  %i.n = load i16, ptr %i.m, align 1, !tbaa !283
  %.not9.i.i = icmp eq i16 %i.n, -1
  br i1 %.not9.i.i, label %bb.c, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.p = load i16, ptr %i.o, align 1, !tbaa !283
  %.not9.1.i.i = icmp eq i16 %i.p, -1
  %i.q = sext i1 %.not9.1.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.2.i.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.q, %bb.c ]
  %i.r = zext i16 %i.d to i32
  %i.s = add nsw i32 %.2.i.i, %i.r                ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNK3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNK3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit
  %.05 = phi i32 [ 0, %.lr.ph ], [ %i.az, %_ZNK3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_.exit ] ; 3 uses
  %i.u = load i16, ptr %i.b, align 1, !tbaa !283  ; 2 uses
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u) ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i, label %bb.e, !prof !267

bb.e:                                             ; preds = %bb.d
  %i.w = zext i16 %i.v to i64
  %i.x = add nuw nsw i64 %i.w, 4294967295
  %i.y = load i16, ptr %i.a, align 1, !tbaa !283
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y)
  %i.aa = zext i16 %i.z to i64
  %i.ab = mul nuw nsw i64 %i.x, %i.aa
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !283
  %.not9.i.i.i = icmp eq i16 %i.ae, -1
  br i1 %.not9.i.i.i, label %bb.f, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !283
  %.not9.1.i.i.i = icmp eq i16 %i.ag, -1
  %i.ah = sext i1 %.not9.1.i.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.2.i.i.i = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ %i.ah, %bb.f ]
  %i.ai = zext i16 %i.v to i32
  %i.aj = add nsw i32 %.2.i.i.i, %i.ai
  %.not.i = icmp ult i32 %.05, %i.aj
  br i1 %.not.i, label %bb.g, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEEixEi.exit, !prof !268

bb.g:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ak = load i16, ptr %i.a, align 1, !tbaa !283
end_hunk_6
