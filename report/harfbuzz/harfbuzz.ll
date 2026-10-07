Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 274
loop-unroll.NumUnrolled: 473
begin_hunk_0_@_ZN18hb_ot_shape_plan_tD2Ev:bb.a
  %spec.select.i.i.i7.i = icmp ult i32 %i.ak, -2
  br i1 %spec.select.i.i.i7.i, label %bb.g, label %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EED2Ev.exit.i

bb.g:                                             ; preds = %_ZN11hb_vector_tIN11hb_ot_map_t11stage_map_tELb0EED2Ev.exit.1.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.al, align 4, !tbaa !1259
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1323
  tail call void @free(ptr noundef %i.an) #63
  br label %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EED2Ev.exit.i

_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EED2Ev.exit.i: ; preds = %bb.g, %_ZN11hb_vector_tIN11hb_ot_map_t11stage_map_tELb0EED2Ev.exit.1.i
  %.ptr5.1.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load i32, ptr %.ptr5.1.i, align 8, !tbaa !1322
  %i.ap = add i32 %i.ao, -1
  %spec.select.i.i.i7.1.i = icmp ult i32 %i.ap, -2
  br i1 %spec.select.i.i.i7.1.i, label %bb.h, label %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EED2Ev.exit.1.i

bb.h:                                             ; preds = %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EED2Ev.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.aq, align 4, !tbaa !1259
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1323
  tail call void @free(ptr noundef %i.as) #63
  br label %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EED2Ev.exit.1.i

_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EED2Ev.exit.1.i: ; preds = %bb.h, %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EED2Ev.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = load i32, ptr %i.at, align 8, !tbaa !1392
  %i.av = add i32 %i.au, -1
  %spec.select.i.i.i8.i = icmp ult i32 %i.av, -2
  br i1 %spec.select.i.i.i8.i, label %bb.i, label %_ZN11hb_ot_map_tD2Ev.exit

bb.i:                                             ; preds = %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EED2Ev.exit.1.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.aw, align 4, !tbaa !1334
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1335
  tail call void @free(ptr noundef %i.ay) #63
  br label %_ZN11hb_ot_map_tD2Ev.exit

_ZN11hb_ot_map_tD2Ev.exit:                        ; preds = %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EED2Ev.exit.1.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK17hb_data_wrapper_tIvLj0EE11call_createIPKc28hb_shaper_list_lazy_loader_tEEPT_v(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(24) ptr @calloc(i64 noundef 3, i64 noundef 8) #64 ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN28hb_shaper_list_lazy_loader_t6createEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic ptr, ptr @_ZL14static_shapers acquire, align 8 ; 2 uses
  %.not19.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not19.i.i.i.i, label %.lr.ph.i.i.i.i, label %_Z15_hb_shapers_getv.exit.i, !prof !265

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZN16hb_lazy_loader_tI17hb_shaper_entry_t24hb_shapers_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i.i.i.i
  %i.c = tail call noundef ptr @_ZN24hb_shapers_lazy_loader_t6createEv() ; 5 uses
  %.not10.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i.i, label %.thread.i.i.i.i, label %bb.c, !prof !267

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.d = cmpxchg weak ptr @_ZL14static_shapers, ptr null, ptr %i.c acq_rel monotonic, align 8
  %i.e = extractvalue { ptr, i1 } %i.d, 1
  br i1 %i.e, label %_Z15_hb_shapers_getv.exit.i, label %bb.d, !prof !268

.thread.i.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i
  %i.f = cmpxchg weak ptr @_ZL14static_shapers, ptr null, ptr @_ZL15_hb_all_shapers acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_Z15_hb_shapers_getv.exit.i, label %_ZN16hb_lazy_loader_tI17hb_shaper_entry_t24hb_shapers_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i.i.i.i, !prof !268

bb.d:                                             ; preds = %bb.c
  %.not3.i.i.i.i.i = icmp eq ptr %i.c, @_ZL15_hb_all_shapers
  br i1 %.not3.i.i.i.i.i, label %_ZN16hb_lazy_loader_tI17hb_shaper_entry_t24hb_shapers_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.c) #63
  br label %_ZN16hb_lazy_loader_tI17hb_shaper_entry_t24hb_shapers_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i.i.i.i

_ZN16hb_lazy_loader_tI17hb_shaper_entry_t24hb_shapers_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i.i.i.i: ; preds = %bb.e, %bb.d, %.thread.i.i.i.i
  %i.h = load atomic ptr, ptr @_ZL14static_shapers acquire, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_Z15_hb_shapers_getv.exit.i, !prof !269

_Z15_hb_shapers_getv.exit.i:                      ; preds = %_ZN16hb_lazy_loader_tI17hb_shaper_entry_t24hb_shapers_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i.i.i.i, %.thread.i.i.i.i, %bb.c, %bb.b
  %.19.ph.i.i.i.i = phi ptr [ %i.b, %bb.b ], [ @_ZL15_hb_all_shapers, %.thread.i.i.i.i ], [ %i.h, %_ZN16hb_lazy_loader_tI17hb_shaper_entry_t24hb_shapers_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i.i.i.i ], [ %i.c, %bb.c ] ; 2 uses
  store ptr %.19.ph.i.i.i.i, ptr %i.a, align 8, !tbaa !631
  %i.i = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i.i, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !631
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.k, align 8, !tbaa !631
  %i.l = tail call i32 @atexit(ptr noundef nonnull @_ZL23free_static_shaper_listv) #63 ; 0 uses
  br label %_ZN28hb_shaper_list_lazy_loader_t6createEv.exit

_ZN28hb_shaper_list_lazy_loader_t6createEv.exit:  ; preds = %bb.a, %_Z15_hb_shapers_getv.exit.i
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZL23free_static_shaper_listv() #16 {
bb.a:
  br label %_ZN16hb_lazy_loader_tIPKc28hb_shaper_list_lazy_loader_tvLj0ES1_E10do_destroyEPS1_.exit.i

_ZN16hb_lazy_loader_tIPKc28hb_shaper_list_lazy_loader_tvLj0ES1_E10do_destroyEPS1_.exit.i: ; preds = %bb.b, %bb.a
  %i.a = load atomic ptr, ptr @_ZL18static_shaper_list acquire, align 8 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN16hb_lazy_loader_tIPKc28hb_shaper_list_lazy_loader_tvLj0ES1_E13free_instanceEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN16hb_lazy_loader_tIPKc28hb_shaper_list_lazy_loader_tvLj0ES1_E10do_destroyEPS1_.exit.i
  %i.b = cmpxchg weak ptr @_ZL18static_shaper_list, ptr %i.a, ptr null acq_rel monotonic, align 8
  %i.c = extractvalue { ptr, i1 } %i.b, 1
  br i1 %i.c, label %.critedge.i, label %_ZN16hb_lazy_loader_tIPKc28hb_shaper_list_lazy_loader_tvLj0ES1_E10do_destroyEPS1_.exit.i, !prof !268

.critedge.i:                                      ; preds = %bb.b
  %.not3.i.i = icmp eq ptr %i.a, @_ZL15nil_shaper_list
  br i1 %.not3.i.i, label %_ZN16hb_lazy_loader_tIPKc28hb_shaper_list_lazy_loader_tvLj0ES1_E13free_instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  tail call void @free(ptr noundef nonnull %i.a) #63
  br label %_ZN16hb_lazy_loader_tIPKc28hb_shaper_list_lazy_loader_tvLj0ES1_E13free_instanceEv.exit

_ZN16hb_lazy_loader_tIPKc28hb_shaper_list_lazy_loader_tvLj0ES1_E13free_instanceEv.exit: ; preds = %_ZN16hb_lazy_loader_tIPKc28hb_shaper_list_lazy_loader_tvLj0ES1_E10do_destroyEPS1_.exit.i, %.critedge.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN24hb_shapers_lazy_loader_t6createEv() local_unnamed_addr #0 comdat align 2 {
bb.a:
  %0 = alloca %struct.hb_shaper_entry_t, align 8  ; 8 uses
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.383) #63 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %i.a, align 1, !tbaa !280
  %.not43 = icmp eq i8 %i.b, 0
  br i1 %.not43, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias noundef dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #64 ; 8 uses
  %.not44 = icmp eq ptr %i.c, null
  br i1 %.not44, label %bb.n, label %bb.d, !prof !267

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.c, ptr noundef nonnull align 16 dereferenceable(48) @_ZL15_hb_all_shapers, i64 48, i1 false), !alias.scope !6171
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.037 = phi i32 [ 0, %bb.d ], [ %.1.lcssa, %._crit_edge ] ; 8 uses
  %.035 = phi ptr [ %i.a, %bb.d ], [ %i.ai, %._crit_edge ] ; 6 uses
  %i.e = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.035, i32 noundef 44) #68 ; 2 uses
  %.not45 = icmp eq ptr %i.e, null
  br i1 %.not45, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.035) #68
  %i.g = getelementptr inbounds nuw i8, ptr %.035, i64 %i.f
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.036 = phi ptr [ %i.e, %bb.e ], [ %i.g, %bb.f ] ; 3 uses
  %i.h = icmp ult i32 %.037, 2
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.i = ptrtoint ptr %.036 to i64
  %i.j = ptrtoint ptr %.035 to i64
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = zext nneg i32 %.037 to i64
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.l ; 3 uses
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #68
  %sext.peel = shl i64 %i.n, 32
  %i.o = ashr exact i64 %sext.peel, 32
  %i.p = icmp eq i64 %i.k, %i.o
  br i1 %i.p, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph
  %i.q = tail call i32 @strncmp(ptr noundef nonnull %i.m, ptr noundef nonnull %.035, i64 noundef %i.k) #68
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !6172
  %i.s = add nuw nsw i32 %.037, 1
  %i.t = zext nneg i32 %.037 to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !6172
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph
  %.2.peel = phi i32 [ %i.s, %bb.i ], [ %.037, %bb.h ], [ %.037, %.lr.ph ] ; 6 uses
  %i.v = icmp eq i32 %.037, 0
  br i1 %i.v, label %.lr.ph.peel.newph, label %._crit_edge

.lr.ph.peel.newph:                                ; preds = %bb.j
  %i.w = add nsw i32 %.2.peel, 1                  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.x
  %i.z = zext i32 %.2.peel to i64
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.z ; 2 uses
  %i.ab = sub nsw i32 1, %.2.peel
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, 24
  %i.ae = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #68
  %sext = shl i64 %i.ae, 32
  %i.af = ashr exact i64 %sext, 32
  %i.ag = icmp eq i64 %i.k, %i.af
  br i1 %i.ag, label %bb.k, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %bb.k, %.lr.ph.peel.newph, %bb.j, %bb.g
  %.1.lcssa = phi i32 [ %.037, %bb.g ], [ %.2.peel, %bb.j ], [ %i.w, %bb.l ], [ %.2.peel, %bb.k ], [ %.2.peel, %.lr.ph.peel.newph ]
  %i.ah = load i8, ptr %.036, align 1, !tbaa !280
  %.not46 = icmp eq i8 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.036, i64 1
  br i1 %.not46, label %bb.m, label %bb.e, !llvm.loop !6170

bb.k:                                             ; preds = %.lr.ph.peel.newph
  %i.aj = tail call i32 @strncmp(ptr noundef nonnull %i.d, ptr noundef nonnull %.035, i64 noundef %i.k) #68
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.l, label %._crit_edge

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !6172
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr nonnull align 8 %i.aa, i64 %i.ad, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !6172
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  br label %._crit_edge

bb.m:                                             ; preds = %._crit_edge
  %i.al = tail call i32 @atexit(ptr noundef nonnull @_ZL19free_static_shapersv) #63 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.c, %bb.a, %bb.b
  %.139 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.c, %bb.m ], [ null, %bb.c ]
  ret ptr %.139
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZL19free_static_shapersv() #16 {
bb.a:
  br label %_ZN16hb_lazy_loader_tI17hb_shaper_entry_t24hb_shapers_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i

_ZN16hb_lazy_loader_tI17hb_shaper_entry_t24hb_shapers_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i: ; preds = %bb.b, %bb.a
  %i.a = load atomic ptr, ptr @_ZL14static_shapers acquire, align 8 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN16hb_lazy_loader_tI17hb_shaper_entry_t24hb_shapers_lazy_loader_tvLj0ES0_E13free_instanceEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN16hb_lazy_loader_tI17hb_shaper_entry_t24hb_shapers_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i
  %i.b = cmpxchg weak ptr @_ZL14static_shapers, ptr %i.a, ptr null acq_rel monotonic, align 8
  %i.c = extractvalue { ptr, i1 } %i.b, 1
  br i1 %i.c, label %.critedge.i, label %_ZN16hb_lazy_loader_tI17hb_shaper_entry_t24hb_shapers_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i, !prof !268

.critedge.i:                                      ; preds = %bb.b
  %.not3.i.i = icmp eq ptr %i.a, @_ZL15_hb_all_shapers
  br i1 %.not3.i.i, label %_ZN16hb_lazy_loader_tI17hb_shaper_entry_t24hb_shapers_lazy_loader_tvLj0ES0_E13free_instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  tail call void @free(ptr noundef nonnull %i.a) #63
  br label %_ZN16hb_lazy_loader_tI17hb_shaper_entry_t24hb_shapers_lazy_loader_tvLj0ES0_E13free_instanceEv.exit

_ZN16hb_lazy_loader_tI17hb_shaper_entry_t24hb_shapers_lazy_loader_tvLj0ES0_E13free_instanceEv.exit: ; preds = %_ZN16hb_lazy_loader_tI17hb_shaper_entry_t24hb_shapers_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i, %.critedge.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN34hb_ucd_unicode_funcs_lazy_loader_t6createEv() local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(216) ptr @calloc(i64 noundef 1, i64 noundef 216) #64 ; 9 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %hb_unicode_funcs_create.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store atomic i32 1, ptr %i.a monotonic, align 4
  store atomic i8 1, ptr %i.b monotonic, align 4
  store atomic ptr null, ptr %i.c monotonic, align 8
  %i.d = load atomic i32, ptr %i.a monotonic, align 8 ; 0 uses
  %i.e = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_hb_Null_hb_unicode_funcs_t, i64 4) monotonic, align 4, !range !380, !noundef !293
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %hb_unicode_funcs_make_immutable.exit.i

bb.c:                                             ; preds = %bb.b
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @_hb_Null_hb_unicode_funcs_t, i64 4) monotonic, align 4
  br label %hb_unicode_funcs_make_immutable.exit.i

hb_unicode_funcs_make_immutable.exit.i:           ; preds = %bb.c, %bb.b
  %i.g = load atomic i32, ptr @_hb_Null_hb_unicode_funcs_t monotonic, align 8 ; 0 uses
  %i.h = load atomic i32, ptr @_hb_Null_hb_unicode_funcs_t monotonic, align 8
  %.not.i7.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i7.i.i.i, label %hb_unicode_funcs_reference.exit.i, label %bb.d, !prof !267

bb.d:                                             ; preds = %hb_unicode_funcs_make_immutable.exit.i
  %i.i = atomicrmw add ptr @_hb_Null_hb_unicode_funcs_t, i32 1 acq_rel, align 4 ; 0 uses
  br label %hb_unicode_funcs_reference.exit.i

hb_unicode_funcs_reference.exit.i:                ; preds = %bb.d, %hb_unicode_funcs_make_immutable.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_hb_Null_hb_unicode_funcs_t, ptr %i.j, align 8, !tbaa !693
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_hb_Null_hb_unicode_funcs_t, i64 24), i64 64, i1 false), !tbaa.struct !1512
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_hb_Null_hb_unicode_funcs_t, i64 88), i64 64, i1 false), !tbaa.struct !1512
  br label %hb_unicode_funcs_create.exit

hb_unicode_funcs_create.exit:                     ; preds = %bb.a, %hb_unicode_funcs_reference.exit.i
  %.010.i = phi ptr [ %i.a, %hb_unicode_funcs_reference.exit.i ], [ @_hb_Null_hb_unicode_funcs_t, %bb.a ] ; 26 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 8 uses
  %i.n = load atomic i8, ptr %i.m monotonic, align 1, !range !380, !noundef !293
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %hb_unicode_funcs_set_combining_class_func.exit

bb.e:                                             ; preds = %hb_unicode_funcs_create.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.010.i, i64 152 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !677  ; 2 uses
  %.not16.i = icmp eq ptr %i.q, null
  br i1 %.not16.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.010.i, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !678
  tail call void %i.q(ptr noundef %i.s) #63, !inline_history !6173
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.010.i, i64 24
  store ptr @_ZL22hb_ucd_combining_classP18hb_unicode_funcs_tjPv, ptr %i.t, align 8, !tbaa !1380
  %i.u = getelementptr inbounds nuw i8, ptr %.010.i, i64 88
  store ptr null, ptr %i.u, align 8, !tbaa !678
  store ptr null, ptr %i.p, align 8, !tbaa !677
  br label %hb_unicode_funcs_set_combining_class_func.exit

hb_unicode_funcs_set_combining_class_func.exit:   ; preds = %hb_unicode_funcs_create.exit, %bb.g
  %i.v = load atomic i8, ptr %i.m monotonic, align 1, !range !380, !noundef !293
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.h, label %hb_unicode_funcs_set_general_category_func.exit

bb.h:                                             ; preds = %hb_unicode_funcs_set_combining_class_func.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.010.i, i64 168 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !681  ; 2 uses
  %.not16.i8 = icmp eq ptr %i.y, null
  br i1 %.not16.i8, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.010.i, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !682
  tail call void %i.y(ptr noundef %i.aa) #63, !inline_history !6174
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %.010.i, i64 40
  store ptr @_ZL23hb_ucd_general_categoryP18hb_unicode_funcs_tjPv, ptr %i.ab, align 8, !tbaa !1379
  %i.ac = getelementptr inbounds nuw i8, ptr %.010.i, i64 104
  store ptr null, ptr %i.ac, align 8, !tbaa !682
  store ptr null, ptr %i.x, align 8, !tbaa !681
  br label %hb_unicode_funcs_set_general_category_func.exit

hb_unicode_funcs_set_general_category_func.exit:  ; preds = %hb_unicode_funcs_set_combining_class_func.exit, %bb.j
  %i.ad = load atomic i8, ptr %i.m monotonic, align 1, !range !380, !noundef !293
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.k, label %hb_unicode_funcs_set_mirroring_func.exit

bb.k:                                             ; preds = %hb_unicode_funcs_set_general_category_func.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.010.i, i64 176 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !683 ; 2 uses
  %.not16.i9 = icmp eq ptr %i.ag, null
  br i1 %.not16.i9, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i, i64 112
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !684
  tail call void %i.ag(ptr noundef %i.ai) #63, !inline_history !6175
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i, i64 48
  store ptr @_ZL16hb_ucd_mirroringP18hb_unicode_funcs_tjPv, ptr %i.aj, align 8, !tbaa !1394
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i, i64 112
  store ptr null, ptr %i.ak, align 8, !tbaa !684
  store ptr null, ptr %i.af, align 8, !tbaa !683
  br label %hb_unicode_funcs_set_mirroring_func.exit

hb_unicode_funcs_set_mirroring_func.exit:         ; preds = %hb_unicode_funcs_set_general_category_func.exit, %bb.m
  %i.al = load atomic i8, ptr %i.m monotonic, align 1, !range !380, !noundef !293
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.n, label %hb_unicode_funcs_set_script_func.exit

bb.n:                                             ; preds = %hb_unicode_funcs_set_mirroring_func.exit
  %i.an = getelementptr inbounds nuw i8, ptr %.010.i, i64 184 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !685 ; 2 uses
  %.not16.i10 = icmp eq ptr %i.ao, null
  br i1 %.not16.i10, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !686
  tail call void %i.ao(ptr noundef %i.aq) #63, !inline_history !6176
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
end_hunk_0
