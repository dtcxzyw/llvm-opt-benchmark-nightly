inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 288
loop-unroll.NumUnrolled: 487
begin_hunk_0_@_Z22hb_aat_layout_positionPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t:bb.a
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !364 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !365
  call void %i.bw(ptr noundef %i.by) #63, !inline_history !419
  br label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i.i

_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i.i: ; preds = %bb.x, %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i.i
  call void @free(ptr noundef nonnull %i.bn) #63
  br label %_ZN3AAT22hb_aat_apply_context_tD2Ev.exit

_ZN3AAT22hb_aat_apply_context_tD2Ev.exit:         ; preds = %bb.t, %bb.u, %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i.i, %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_aat_layout_has_tracking(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4trakE22hb_table_lazy_loader_tIS1_Lj33ELb0EE9hb_face_tLj33E9hb_blob_tEptEv.exit, !prof !46

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4trakE22hb_table_lazy_loader_tIS1_Lj33ELb0EE9hb_face_tLj33E9hb_blob_tEptEv.exit, label %bb.b, !prof !48

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN3AAT4trakELj33ELb0EE6createEP9hb_face_t(ptr noundef nonnull %i.d) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !48

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN3AAT4trakE22hb_table_lazy_loader_tIS1_Lj33ELb0EE9hb_face_tLj33E9hb_blob_tEptEv.exit, label %bb.e, !prof !49

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN3AAT4trakE22hb_table_lazy_loader_tIS1_Lj33ELb0EE9hb_face_tLj33E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4trakE22hb_table_lazy_loader_tIS1_Lj33ELb0EE9hb_face_tLj33E9hb_blob_tEptEv.exit, !prof !50

_ZNK16hb_lazy_loader_tIN3AAT4trakE22hb_table_lazy_loader_tIS1_Lj33ELb0EE9hb_face_tLj33E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !57
  %i.m = icmp ult i32 %i.l, 12
  %spec.select.i.i.i.i.i = select i1 %i.m, ptr @_hb_NullPool, ptr %i.j
  %i.n = load i32, ptr %spec.select.i.i.i.i.i, align 1
  %i.o = icmp ne i32 %i.n, 0
  %i.p = zext i1 %i.o to i32
  ret i32 %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_Z19hb_aat_layout_trackPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.AAT::hb_aat_apply_context_t", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 368 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.e = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4trakE22hb_table_lazy_loader_tIS1_Lj33ELb0EE9hb_face_tLj33E9hb_blob_tEdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS9_v.exit, !prof !46

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4trakE22hb_table_lazy_loader_tIS1_Lj33ELb0EE9hb_face_tLj33E9hb_blob_tEdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS9_v.exit, label %bb.b, !prof !48

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN3AAT4trakELj33ELb0EE6createEP9hb_face_t(ptr noundef nonnull %i.f) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !48

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.h = cmpxchg weak ptr %i.c, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.i = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4trakE22hb_table_lazy_loader_tIS1_Lj33ELb0EE9hb_face_tLj33E9hb_blob_tEdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS9_v.exit, label %bb.e, !prof !49

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN3AAT4trakE22hb_table_lazy_loader_tIS1_Lj33ELb0EE9hb_face_tLj33E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.j = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4trakE22hb_table_lazy_loader_tIS1_Lj33ELb0EE9hb_face_tLj33E9hb_blob_tEdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS9_v.exit, !prof !50

_ZNK16hb_lazy_loader_tIN3AAT4trakE22hb_table_lazy_loader_tIS1_Lj33ELb0EE9hb_face_tLj33E9hb_blob_tEdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS9_v.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.e, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.j, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !57
  %i.o = icmp ult i32 %i.n, 12
  %spec.select.i.i.i.i.i = select i1 %i.o, ptr @_hb_NullPool, ptr %i.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @_ZN3AAT22hb_aat_apply_context_tC2EPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tP9hb_blob_t(ptr noundef nonnull align 8 dereferenceable(180) %3, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @_hb_NullPool)
  %i.p = call noundef zeroext i1 @_ZNK3AAT4trak5applyEPNS_22hb_aat_apply_context_tEf(ptr noundef nonnull align 1 dereferenceable(12) %spec.select.i.i.i.i.i, ptr noundef nonnull %3, float noundef 0.000000e+00) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !350  ; 9 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3AAT22hb_aat_apply_context_tD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK16hb_lazy_loader_tIN3AAT4trakE22hb_table_lazy_loader_tIS1_Lj33ELb0EE9hb_face_tLj33E9hb_blob_tEdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS9_v.exit
  %i.s = load atomic i32, ptr %i.r monotonic, align 4 ; 0 uses
  %i.t = load atomic i32, ptr %i.r monotonic, align 4
  %.not.i7.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i7.i.i.i.i.i, label %_ZN3AAT22hb_aat_apply_context_tD2Ev.exit, label %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i.i, !prof !48

_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i.i: ; preds = %bb.f
  %i.u = atomicrmw add ptr %i.r, i32 -1 acq_rel, align 4
  %.not6.i.i.i.i.i = icmp eq i32 %i.u, 1
  br i1 %.not6.i.i.i.i.i, label %bb.g, label %_ZN3AAT22hb_aat_apply_context_tD2Ev.exit

bb.g:                                             ; preds = %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i.i
  store atomic i32 -57005, ptr %i.r monotonic, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.w = load atomic ptr, ptr %i.v acquire, align 8 ; 5 uses
  %.not.i.i3.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i3.i.i.i.i, label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(56) %i.w)
  %i.y = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.w) #63 ; 0 uses
  call void @free(ptr noundef nonnull %i.w) #63
  store atomic ptr null, ptr %i.v monotonic, align 8
  br label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i.i

_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !364 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !365
  call void %i.aa(ptr noundef %i.ac) #63, !inline_history !419
  br label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i.i

_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i.i: ; preds = %bb.i, %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i.i
  call void @free(ptr noundef nonnull %i.r) #63
  br label %_ZN3AAT22hb_aat_apply_context_tD2Ev.exit

_ZN3AAT22hb_aat_apply_context_tD2Ev.exit:         ; preds = %_ZNK16hb_lazy_loader_tIN3AAT4trakE22hb_table_lazy_loader_tIS1_Lj33ELb0EE9hb_face_tLj33E9hb_blob_tEdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS9_v.exit, %bb.f, %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i.i, %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT4trak5applyEPNS_22hb_aat_apply_context_tEf(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !346  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load float, ptr %i.c, align 8, !tbaa !530 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !348  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load i32, ptr %i.g, align 8, !tbaa !531
  %i.i = and i32 %i.h, -2
  %i.j = icmp eq i32 %i.i, 4
  %i.k = fcmp ogt float %i.d, 0.000000e+00
  %i.l = select i1 %i.k, float %i.d, float 1.200000e+01 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.o = load i16, ptr %i.n, align 1, !tbaa !62   ; 2 uses
  %i.p = icmp eq i16 %i.o, 0
  %i.q = tail call i16 @llvm.bswap.i16(i16 %i.o)
  %i.r = zext i16 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  %.0.i.i.i = select i1 %i.p, ptr @_hb_NullPool, ptr %i.s, !prof !48
  %i.t = tail call noundef float @_ZNK3AAT9TrackData12get_trackingEPKvff(ptr noundef nonnull align 1 dereferenceable(16) %.0.i.i.i, ptr noundef nonnull align 1 dereferenceable(12) %0, float noundef %i.l, float noundef %2)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.v = load float, ptr %i.u, align 8, !tbaa !532
  %i.w = fmul float %i.t, %i.v
  %i.x = fadd float %i.w, 5.000000e-01
  %i.y = tail call noundef float @llvm.floor.f32(float %i.x)
  %i.z = fptosi float %i.y to i32
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !522 ; 6 uses
  %.not33 = icmp eq i32 %i.aa, 0
  br i1 %.not33, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.ac = add i32 %i.aa, -1                       ; 2 uses
  %wide.trip.count68 = zext i32 %i.ac to i64
  %exitcond69.not88 = icmp eq i32 %i.ac, 0
  br i1 %exitcond69.not88, label %.lr.ph56, label %.lr.ph90.preheader

.lr.ph90.preheader:                               ; preds = %bb.c
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !499
  br label %.lr.ph90

bb.d:                                             ; preds = %.lr.ph90
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %.lr.ph56, label %.lr.ph90, !llvm.loop !533

.lr.ph90:                                         ; preds = %.lr.ph90.preheader, %bb.d
  %indvars.iv6589 = phi i64 [ %indvars.iv.next66, %bb.d ], [ 0, %.lr.ph90.preheader ]
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv6589, 1 ; 4 uses
  %i.ae = getelementptr inbounds nuw [20 x i8], ptr %i.ad, i64 %indvars.iv.next66
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.val.i = load i16, ptr %i.af, align 4, !tbaa !61
  %i.ag = and i16 %.val.i, 128
  %.not46 = icmp eq i16 %i.ag, 0
  br i1 %.not46, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit, label %bb.d, !llvm.loop !533

_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit: ; preds = %.lr.ph90
  %i.ah = trunc nuw i64 %indvars.iv.next66 to i32
  br label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.d, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit, %bb.c
  %i.ai = phi i32 [ %i.ah, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit ], [ %i.aa, %bb.c ], [ %i.aa, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !527
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph56, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35
  %.03155 = phi i32 [ %i.ai, %.lr.ph56 ], [ %.lcssa, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35 ] ; 5 uses
  %.03254 = phi i32 [ 0, %.lr.ph56 ], [ %.03155, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35 ]
  %i.am = zext i32 %.03254 to i64
  %i.an = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !534
  %i.ap = add nsw i32 %i.ao, %i.z
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !534
  %i.aq = add i32 %.03155, 1
  %umax70 = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 %i.aq) ; 3 uses
  %3 = add i32 %umax70, -1                        ; 2 uses
  %exitcond71.not91 = icmp eq i32 %.03155, %3
  br i1 %exitcond71.not91, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %bb.e
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !499
  br label %.lr.ph93

bb.f:                                             ; preds = %.lr.ph93
  %exitcond71.not = icmp eq i32 %4, %3
  br i1 %exitcond71.not, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35, label %.lr.ph93, !llvm.loop !533

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %bb.f
  %.0.i3492 = phi i32 [ %4, %bb.f ], [ %.03155, %.lr.ph93.preheader ]
  %4 = add i32 %.0.i3492, 1                       ; 4 uses
  %5 = zext i32 %4 to i64
  %i.as = getelementptr inbounds nuw [20 x i8], ptr %i.ar, i64 %5
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.val.i41 = load i16, ptr %i.at, align 4, !tbaa !61
  %i.au = and i16 %.val.i41, 128
  %.not47 = icmp eq i16 %i.au, 0
  br i1 %.not47, label %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35_crit_edge95, label %bb.f, !llvm.loop !533

._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35_crit_edge95: ; preds = %.lr.ph93
  br label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35, !llvm.loop !533

_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35: ; preds = %bb.f, %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35_crit_edge95, %bb.e
  %.lcssa = phi i32 [ %umax70, %bb.e ], [ %4, %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35_crit_edge95 ], [ %umax70, %bb.f ]
  %i.av = icmp ult i32 %.03155, %i.aa
  br i1 %i.av, label %bb.e, label %.loopexit, !llvm.loop !536

bb.g:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !62 ; 2 uses
  %i.ay = icmp eq i16 %i.ax, 0
  %i.az = tail call i16 @llvm.bswap.i16(i16 %i.ax)
  %i.ba = zext i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ba
  %.0.i.i.i36 = select i1 %i.ay, ptr @_hb_NullPool, ptr %i.bb, !prof !48
  %i.bc = tail call noundef float @_ZNK3AAT9TrackData12get_trackingEPKvff(ptr noundef nonnull align 1 dereferenceable(16) %.0.i.i.i36, ptr noundef nonnull align 1 dereferenceable(12) %0, float noundef %i.l, float noundef %2)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.be = load float, ptr %i.bd, align 4, !tbaa !537
  %i.bf = fmul float %i.bc, %i.be
  %i.bg = fadd float %i.bf, 5.000000e-01
  %i.bh = tail call noundef float @llvm.floor.f32(float %i.bg)
  %i.bi = fptosi float %i.bh to i32
  %i.bj = load i32, ptr %i.m, align 8, !tbaa !522 ; 6 uses
  %.not = icmp eq i32 %i.bj, 0
  br i1 %.not, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.bl = add i32 %i.bj, -1                       ; 2 uses
  %wide.trip.count = zext i32 %i.bl to i64
  %exitcond.not80 = icmp eq i32 %i.bl, 0
  br i1 %exitcond.not80, label %.lr.ph, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %bb.h
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !499
  br label %.lr.ph82

bb.i:                                             ; preds = %.lr.ph82
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph, label %.lr.ph82, !llvm.loop !533

.lr.ph82:                                         ; preds = %.lr.ph82.preheader, %bb.i
  %indvars.iv81 = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %.lr.ph82.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv81, 1 ; 4 uses
  %i.bn = getelementptr inbounds nuw [20 x i8], ptr %i.bm, i64 %indvars.iv.next
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.val.i42 = load i16, ptr %i.bo, align 4, !tbaa !61
  %i.bp = and i16 %.val.i42, 128
  %.not44 = icmp eq i16 %i.bp, 0
  br i1 %.not44, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit38.split.loop.exit, label %bb.i, !llvm.loop !533

_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit38.split.loop.exit: ; preds = %.lr.ph82
  %i.bq = trunc nuw i64 %indvars.iv.next to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit38.split.loop.exit, %bb.h
  %i.br = phi i32 [ %i.bq, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit38.split.loop.exit ], [ %i.bj, %bb.h ], [ %i.bj, %bb.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !527
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40
  %.053 = phi i32 [ %i.br, %.lr.ph ], [ %.lcssa61, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40 ] ; 5 uses
  %.03052 = phi i32 [ 0, %.lr.ph ], [ %.053, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40 ]
  %i.bv = zext i32 %.03052 to i64
  %i.bw = getelementptr inbounds nuw [20 x i8], ptr %i.bt, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !538
  %i.bz = add nsw i32 %i.by, %i.bi
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !538
  %i.ca = add i32 %.053, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.bj, i32 %i.ca) ; 3 uses
  %6 = add i32 %umax, -1                          ; 2 uses
  %exitcond64.not83 = icmp eq i32 %.053, %6
  br i1 %exitcond64.not83, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %bb.j
  %i.cb = load ptr, ptr %i.bu, align 8, !tbaa !499
  br label %.lr.ph85

bb.k:                                             ; preds = %.lr.ph85
  %exitcond64.not = icmp eq i32 %7, %6
  br i1 %exitcond64.not, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40, label %.lr.ph85, !llvm.loop !533

.lr.ph85:                                         ; preds = %.lr.ph85.preheader, %bb.k
  %.0.i3984 = phi i32 [ %7, %bb.k ], [ %.053, %.lr.ph85.preheader ]
  %7 = add i32 %.0.i3984, 1                       ; 4 uses
  %8 = zext i32 %7 to i64
  %i.cc = getelementptr inbounds nuw [20 x i8], ptr %i.cb, i64 %8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.val.i43 = load i16, ptr %i.cd, align 4, !tbaa !61
  %i.ce = and i16 %.val.i43, 128
  %.not45 = icmp eq i16 %i.ce, 0
  br i1 %.not45, label %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40_crit_edge86, label %bb.k, !llvm.loop !533

._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40_crit_edge86: ; preds = %.lr.ph85
  br label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40, !llvm.loop !533

_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40: ; preds = %bb.k, %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40_crit_edge86, %bb.j
  %.lcssa61 = phi i32 [ %umax, %bb.j ], [ %7, %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40_crit_edge86 ], [ %umax, %bb.k ]
  %i.cf = icmp ult i32 %.053, %i.bj
  br i1 %i.cf, label %bb.j, label %.loopexit, !llvm.loop !539

.loopexit:                                        ; preds = %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit40, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit35, %bb.g, %bb.b
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 65536) i32 @hb_aat_layout_get_feature_types(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit, !prof !46

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit, label %bb.b, !prof !48

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN3AAT4featELj35ELb0EE6createEP9hb_face_t(ptr noundef nonnull %i.d) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !48

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit, label %bb.e, !prof !49

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit, !prof !50

_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !57
  %i.m = icmp ult i32 %i.l, 12
  %spec.select.i.i.i.i.i = select i1 %i.m, ptr @_hb_NullPool, ptr %i.j ; 2 uses
  %i.n = icmp ne ptr %2, null
  %i.o = icmp ne ptr %3, null
  %or.cond.i = and i1 %i.n, %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 4
  %i.q = load i16, ptr %i.p, align 1, !tbaa !62
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  br i1 %or.cond.i, label %_ZNK17hb_sorted_array_tIKN3AAT11FeatureNameEE9sub_arrayEjPj.exit.i, label %_ZNK3AAT4feat17get_feature_typesEjPjP28hb_aat_layout_feature_type_t.exit

_ZNK17hb_sorted_array_tIKN3AAT11FeatureNameEE9sub_arrayEjPj.exit.i: ; preds = %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit
  %storemerge.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.s, i32 %1)
  %i.t = load i32, ptr %2, align 4, !tbaa !139
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i.i, i32 %i.t) ; 7 uses
  store i32 %.sroa.speculated.i.i.i, ptr %2, align 4, !tbaa !139
  %.not4.i.i.i = icmp eq i32 %.sroa.speculated.i.i.i, 0
  br i1 %.not4.i.i.i, label %_ZNK3AAT4feat17get_feature_typesEjPjP28hb_aat_layout_feature_type_t.exit, label %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.preheader.i

_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.preheader.i: ; preds = %_ZNK17hb_sorted_array_tIKN3AAT11FeatureNameEE9sub_arrayEjPj.exit.i
  %.sroa.2.8.insert.ext.i.i = zext nneg i32 %.sroa.speculated.i.i.i to i64 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 12
  %i.v = zext i32 %1 to i64
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.v ; 3 uses
  %xtraiter = and i32 %.sroa.speculated.i.i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol.loopexit, label %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol

_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol: ; preds = %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.preheader.i
  %i.x = load i16, ptr %i.w, align 1, !tbaa !62
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.z = zext i16 %i.y to i32
  store i32 %i.z, ptr %3, align 4, !tbaa !445
  %i.aa = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i, 4294967295
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ac = add nsw i32 %.sroa.speculated.i.i.i, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  br label %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol.loopexit

_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol.loopexit: ; preds = %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.preheader.i
  %.sroa.7.2.i.unr = phi i64 [ %.sroa.2.8.insert.ext.i.i, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.preheader.i ], [ %i.aa, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol ]
  %.sroa.023.2.i.unr = phi ptr [ %3, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.preheader.i ], [ %i.ab, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol ]
  %.unr = phi i32 [ %.sroa.speculated.i.i.i, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.preheader.i ], [ %i.ac, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol ]
  %.unr9 = phi ptr [ %i.w, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.preheader.i ], [ %i.ad, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol ]
  %i.ae = icmp eq i32 %.sroa.speculated.i.i.i, 1
  br i1 %i.ae, label %_ZNK3AAT4feat17get_feature_typesEjPjP28hb_aat_layout_feature_type_t.exit, label %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i

_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i: ; preds = %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol.loopexit, %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i.1
  %.sroa.7.2.i = phi i64 [ %.sroa.7.3.i.1, %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i.1 ], [ %.sroa.7.2.i.unr, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.023.2.i = phi ptr [ %.sroa.023.3.i.1, %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i.1 ], [ %.sroa.023.2.i.unr, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol.loopexit ] ; 3 uses
  %i.af = phi i32 [ %i.au, %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i.1 ], [ %.unr, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol.loopexit ]
  %i.ag = phi ptr [ %i.av, %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i.1 ], [ %.unr9, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol.loopexit ] ; 3 uses
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !62
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = and i64 %.sroa.7.2.i, 4294967295
  %.not.i.i.i.us.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.us.i.i.i, label %_ZN9hb_iter_tI10hb_array_tI28hb_aat_layout_feature_type_tERS1_EdeEv.exit.thread.i.us.i.i.i, label %bb.f, !prof !48

bb.f:                                             ; preds = %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i
  store i32 %i.aj, ptr %.sroa.023.2.i, align 4, !tbaa !445
  %i.al = add i64 %.sroa.7.2.i, 4294967295
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.023.2.i, i64 4
  br label %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i

_ZN9hb_iter_tI10hb_array_tI28hb_aat_layout_feature_type_tERS1_EdeEv.exit.thread.i.us.i.i.i: ; preds = %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i
  store i32 %i.aj, ptr @_hb_CrapPool, align 16, !tbaa !445
  br label %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i

_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tI28hb_aat_layout_feature_type_tERS1_EdeEv.exit.thread.i.us.i.i.i, %bb.f
  %.sroa.7.3.i = phi i64 [ %.sroa.7.2.i, %_ZN9hb_iter_tI10hb_array_tI28hb_aat_layout_feature_type_tERS1_EdeEv.exit.thread.i.us.i.i.i ], [ %i.al, %bb.f ] ; 3 uses
  %.sroa.023.3.i = phi ptr [ %.sroa.023.2.i, %_ZN9hb_iter_tI10hb_array_tI28hb_aat_layout_feature_type_tERS1_EdeEv.exit.thread.i.us.i.i.i ], [ %i.am, %bb.f ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.ao = load i16, ptr %i.an, align 1, !tbaa !62
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %i.ao)
  %i.aq = zext i16 %i.ap to i32                   ; 2 uses
  %i.ar = and i64 %.sroa.7.3.i, 4294967295
  %.not.i.i.i.us.i.i.i.1 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.us.i.i.i.1, label %_ZN9hb_iter_tI10hb_array_tI28hb_aat_layout_feature_type_tERS1_EdeEv.exit.thread.i.us.i.i.i.1, label %bb.g, !prof !48

bb.g:                                             ; preds = %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i
  store i32 %i.aq, ptr %.sroa.023.3.i, align 4, !tbaa !445
  %i.as = add i64 %.sroa.7.3.i, 4294967295
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.023.3.i, i64 4
  br label %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i.1

_ZN9hb_iter_tI10hb_array_tI28hb_aat_layout_feature_type_tERS1_EdeEv.exit.thread.i.us.i.i.i.1: ; preds = %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i
  store i32 %i.aq, ptr @_hb_CrapPool, align 16, !tbaa !445
  br label %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i.1

_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i.1: ; preds = %_ZN9hb_iter_tI10hb_array_tI28hb_aat_layout_feature_type_tERS1_EdeEv.exit.thread.i.us.i.i.i.1, %bb.g
  %.sroa.7.3.i.1 = phi i64 [ %.sroa.7.3.i, %_ZN9hb_iter_tI10hb_array_tI28hb_aat_layout_feature_type_tERS1_EdeEv.exit.thread.i.us.i.i.i.1 ], [ %i.as, %bb.g ]
  %.sroa.023.3.i.1 = phi ptr [ %.sroa.023.3.i, %_ZN9hb_iter_tI10hb_array_tI28hb_aat_layout_feature_type_tERS1_EdeEv.exit.thread.i.us.i.i.i.1 ], [ %i.at, %bb.g ]
  %i.au = add nsw i32 %i.af, -2                   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.not.us.i.i.i.1 = icmp eq i32 %i.au, 0
  br i1 %.not.us.i.i.i.1, label %_ZNK3AAT4feat17get_feature_typesEjPjP28hb_aat_layout_feature_type_t.exit, label %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i, !llvm.loop !540

_ZNK3AAT4feat17get_feature_typesEjPjP28hb_aat_layout_feature_type_t.exit: ; preds = %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EdeEv.exit.us.i.i.i.prol.loopexit, %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN3AAT11FeatureNameEEMS3_KF28hb_aat_layout_feature_type_tvEL24hb_function_sortedness_t0ELPv0EES6_EppEv.exit.us.i.i.i.1, %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv.exit, %_ZNK17hb_sorted_array_tIKN3AAT11FeatureNameEE9sub_arrayEjPj.exit.i
  ret i32 %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -280
  %i.b = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.b, null
  br i1 %.not14.i.i, label %.lr.ph.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tE3getEv.exit, !prof !46

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.e
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tE3getEv.exit, label %bb.b, !prof !48

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN3AAT4featELj35ELb0EE6createEP9hb_face_t(ptr noundef nonnull %i.c) ; 2 uses
  %.not10.i.i = icmp eq ptr %i.d, null
  br i1 %.not10.i.i, label %bb.c, label %bb.d, !prof !48

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.d, %bb.b ] ; 3 uses
  %i.e = cmpxchg weak ptr %0, ptr null, ptr %.07.i.i acq_rel monotonic, align 8
  %i.f = extractvalue { ptr, i1 } %i.e, 1
  br i1 %i.f, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tE3getEv.exit, label %bb.e, !prof !49

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i)
  %i.g = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tE3getEv.exit, !prof !50

_ZNK16hb_lazy_loader_tIN3AAT4featE22hb_table_lazy_loader_tIS1_Lj35ELb0EE9hb_face_tLj35E9hb_blob_tE3getEv.exit: ; preds = %.lr.ph.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i = phi ptr [ %i.b, %bb.a ], [ %.07.i.i, %bb.d ], [ %i.g, %bb.e ], [ @_hb_NullPool, %.lr.ph.i.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.19.ph.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %.19.ph.i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !57
  %i.l = icmp ult i32 %i.k, 12
  %spec.select.i.i.i.i = select i1 %i.l, ptr @_hb_NullPool, ptr %i.i
  ret ptr %spec.select.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 -32768, 32768) i32 @hb_aat_layout_feature_type_get_name_id(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
end_hunk_0
begin_hunk_1_@_ZN11hb_buffer_t6verifyEPS_P9hb_font_tPK12hb_feature_tjPKPKc:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(20) %i.is, i64 20, i1 false), !tbaa.struct !526
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.is, ptr noundef nonnull align 4 dereferenceable(20) %i.it, i64 20, i1 false), !tbaa.struct !526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.it, ptr noundef nonnull align 4 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !526
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.iu = icmp eq i64 %indvars.iv.next.i.i.i.i, %zext.i.i
  br i1 %i.iu, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !642

_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.ay
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.iw = load i8, ptr %i.iv, align 2, !tbaa !575, !range !220, !noundef !74
  %i.ix = trunc nuw i8 %i.iw to i1
  br i1 %i.ix, label %bb.az, label %hb_buffer_reverse.exit

bb.az:                                            ; preds = %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !527 ; 2 uses
  %i.ja = load i32, ptr %i.ie, align 8, !tbaa !522
  %.sroa.speculated.i5.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.if, i32 %i.ja) ; 3 uses
  %i.jb = icmp ult i32 %.sroa.speculated.i5.i.i.i, 2
  br i1 %i.jb, label %hb_buffer_reverse.exit, label %.lr.ph.preheader.i6.i.i.i

.lr.ph.preheader.i6.i.i.i:                        ; preds = %bb.az
  %i.jc = lshr i32 %.sroa.speculated.i5.i.i.i, 1
  %zext1.i.i = zext nneg i32 %i.jc to i64
  br label %.lr.ph.i8.i.i.i

.lr.ph.i8.i.i.i:                                  ; preds = %.lr.ph.i8.i.i.i, %.lr.ph.preheader.i6.i.i.i
  %indvars.iv.i9.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i6.i.i.i ], [ %indvars.iv.next.i12.i.i.i, %.lr.ph.i8.i.i.i ] ; 2 uses
  %.0.in17.i10.i.i.i = phi i32 [ %.sroa.speculated.i5.i.i.i, %.lr.ph.preheader.i6.i.i.i ], [ %.0.i11.i.i.i, %.lr.ph.i8.i.i.i ]
  %.0.i11.i.i.i = add i32 %.0.in17.i10.i.i.i, -1  ; 2 uses
  %i.jd = zext i32 %.0.i11.i.i.i to i64
  %i.je = getelementptr inbounds nuw [20 x i8], ptr %i.iz, i64 %i.jd ; 2 uses
  %i.jf = getelementptr inbounds nuw [20 x i8], ptr %i.iz, i64 %indvars.iv.i9.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %i.je, i64 20, i1 false), !tbaa.struct !528
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.je, ptr noundef nonnull align 4 dereferenceable(20) %i.jf, i64 20, i1 false), !tbaa.struct !528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.jf, ptr noundef nonnull align 4 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !528
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %indvars.iv.next.i12.i.i.i = add nuw nsw i64 %indvars.iv.i9.i.i.i, 1 ; 2 uses
  %i.jg = icmp eq i64 %indvars.iv.next.i12.i.i.i, %zext1.i.i
  br i1 %i.jg, label %hb_buffer_reverse.exit, label %.lr.ph.i8.i.i.i, !llvm.loop !643

hb_buffer_reverse.exit:                           ; preds = %.lr.ph.i8.i.i.i, %bb.az, %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i, %hb_buffer_set_segment_properties.exit
  %i.jh = add i32 %i.if, 1                        ; 2 uses
  %i.ji = icmp ugt i32 %i.jh, 1
  br i1 %i.ji, label %.lr.ph180.preheader, label %._crit_edge

.lr.ph180.preheader:                              ; preds = %hb_buffer_reverse.exit
  %i.jj = zext i32 %i.ij to i64
  %i.jk = zext i32 %i.if to i64                   ; 2 uses
  %wide.trip.count209 = zext i32 %i.jh to i64
  br label %.lr.ph180

._crit_edge:                                      ; preds = %bb.bf, %hb_buffer_reverse.exit
  %i.jl = tail call i32 @hb_shape_full(ptr noundef %2, ptr noundef nonnull %.0.i.i66, ptr noundef %3, i32 noundef %4, ptr noundef %5), !inline_history !644
  %.not91.i24 = icmp eq i32 %i.jl, 0
  br i1 %.not91.i24, label %.split, label %bb.bg

.lr.ph180:                                        ; preds = %.lr.ph180.preheader, %bb.bf
  %indvars.iv206 = phi i64 [ 1, %.lr.ph180.preheader ], [ %indvars.iv.next207, %bb.bf ] ; 6 uses
  %.083.i178 = phi i32 [ 0, %.lr.ph180.preheader ], [ %.3.i, %bb.bf ] ; 5 uses
  %.085.i177 = phi i32 [ 0, %.lr.ph180.preheader ], [ %.186.i, %bb.bf ] ; 3 uses
  %.087.i176 = phi i32 [ 0, %.lr.ph180.preheader ], [ %.188.i, %bb.bf ] ; 4 uses
  %i.jm = icmp samesign ult i64 %indvars.iv206, %i.jk
  br i1 %i.jm, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %.lr.ph180
  %i.jn = getelementptr inbounds nuw [20 x i8], ptr %i.ih, i64 %indvars.iv206 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !523
  %i.jq = getelementptr [20 x i8], ptr %i.ih, i64 %indvars.iv206
  %i.jr = getelementptr i8, ptr %i.jq, i64 -12
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !523
  %i.jt = icmp eq i32 %i.jp, %i.js
  br i1 %i.jt, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !500
  %i.jw = and i32 %i.jv, 2
  %.not95.i = icmp eq i32 %i.jw, 0
  br i1 %.not95.i, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb, %.lr.ph180
  %i.jx = icmp eq i64 %indvars.iv206, %i.jk
  br i1 %i.jx, label %.critedge.i27, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jy = getelementptr inbounds nuw [20 x i8], ptr %i.ih, i64 %indvars.iv206
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !523
  %i.kb = icmp ult i32 %.083.i178, %i.ij
  br i1 %i.kb, label %.lr.ph172.preheader, label %.critedge.i27

.lr.ph172.preheader:                              ; preds = %bb.bd
  %i.kc = zext i32 %.083.i178 to i64
  br label %.lr.ph172

.lr.ph172:                                        ; preds = %.lr.ph172.preheader, %bb.be
  %indvars.iv202 = phi i64 [ %i.kc, %.lr.ph172.preheader ], [ %indvars.iv.next203, %bb.be ] ; 3 uses
  %i.kd = getelementptr inbounds nuw [20 x i8], ptr %i.il, i64 %indvars.iv202
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !523
  %i.kg = icmp ult i32 %i.kf, %i.ka
  br i1 %i.kg, label %bb.be, label %.critedge.i27.loopexit.split.loop.exit

bb.be:                                            ; preds = %.lr.ph172
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond205.not = icmp eq i64 %indvars.iv.next203, %i.jj
  br i1 %exitcond205.not, label %.critedge.i27, label %.lr.ph172, !llvm.loop !645

.critedge.i27.loopexit.split.loop.exit:           ; preds = %.lr.ph172
  %i.kh = trunc nuw i64 %indvars.iv202 to i32
  br label %.critedge.i27

.critedge.i27:                                    ; preds = %bb.be, %.critedge.i27.loopexit.split.loop.exit, %bb.bd, %bb.bc
  %.2.i28 = phi i32 [ %i.ij, %bb.bc ], [ %.083.i178, %bb.bd ], [ %i.kh, %.critedge.i27.loopexit.split.loop.exit ], [ %i.ij, %bb.be ] ; 3 uses
  %i.ki = zext nneg i32 %.087.i176 to i64
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.ki
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !636
  tail call void @hb_buffer_append(ptr noundef %i.kk, ptr noundef %1, i32 noundef %.085.i177, i32 noundef %.2.i28), !inline_history !644
  %i.kl = sub nuw nsw i32 1, %.087.i176
  br label %bb.bf

bb.bf:                                            ; preds = %.critedge.i27, %bb.bb, %bb.ba
  %.188.i = phi i32 [ %.087.i176, %bb.ba ], [ %.087.i176, %bb.bb ], [ %i.kl, %.critedge.i27 ]
  %.186.i = phi i32 [ %.085.i177, %bb.ba ], [ %.085.i177, %bb.bb ], [ %.2.i28, %.critedge.i27 ]
  %.3.i = phi i32 [ %.083.i178, %bb.ba ], [ %.083.i178, %bb.bb ], [ %.2.i28, %.critedge.i27 ]
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count209
  br i1 %exitcond210.not, label %._crit_edge, label %.lr.ph180, !llvm.loop !646

bb.bg:                                            ; preds = %._crit_edge
  %i.km = getelementptr inbounds nuw i8, ptr %.0.i.i66, i64 88
  %i.kn = load i8, ptr %i.km, align 8, !tbaa !496, !range !220, !noundef !74
  %i.ko = trunc nuw i8 %i.kn to i1
  br i1 %i.ko, label %bb.bh, label %.split

bb.bh:                                            ; preds = %bb.bg
  %i.kp = tail call i32 @hb_shape_full(ptr noundef %2, ptr noundef nonnull %.0.i.i60, ptr noundef %3, i32 noundef %4, ptr noundef %5), !inline_history !644
  %.not92.i25 = icmp eq i32 %i.kp, 0
  br i1 %.not92.i25, label %.split, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kq = getelementptr inbounds nuw i8, ptr %.0.i.i60, i64 88
  %i.kr = load i8, ptr %i.kq, align 8, !tbaa !496, !range !220, !noundef !74
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %bb.bj, label %.split

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.io, label %.preheader, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @hb_buffer_reverse(ptr noundef nonnull %.0.i.i66), !inline_history !644
  tail call void @hb_buffer_reverse(ptr noundef nonnull %.0.i.i60), !inline_history !644
  br label %.preheader

.preheader:                                       ; preds = %bb.bk, %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #63
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.i.i66, i64 96
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !522 ; 3 uses
  store i32 %i.ku, ptr %i.c, align 4, !tbaa !139
  %i.kv = getelementptr inbounds nuw i8, ptr %.0.i.i66, i64 112
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !499
  store ptr %i.kw, ptr %i.d, align 16, !tbaa !647
  %i.kx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ky = getelementptr inbounds nuw i8, ptr %.0.i.i60, i64 96
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !522 ; 3 uses
  store i32 %i.kz, ptr %i.kx, align 4, !tbaa !139
  %i.la = getelementptr inbounds nuw i8, ptr %.0.i.i60, i64 112
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !499
  %i.lc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.lb, ptr %i.lc, align 8, !tbaa !647
  %i.ld = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.le = icmp ne i32 %i.ku, 0
  %i.lf = icmp ne i32 %i.kz, 0
  %i.lg = select i1 %i.le, i1 true, i1 %i.lf
  br i1 %i.lg, label %.lr.ph191, label %._crit_edge192

.lr.ph191:                                        ; preds = %.preheader, %.critedge2.i
  %.080.i190 = phi i32 [ %i.ma, %.critedge2.i ], [ 0, %.preheader ] ; 2 uses
  %i.lh = zext nneg i32 %.080.i190 to i64         ; 4 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.lh ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !139 ; 3 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lh
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !139 ; 3 uses
  %.0.i182 = add i32 %i.lj, 1                     ; 3 uses
  %i.lm = icmp ult i32 %.0.i182, %i.ll
  br i1 %i.lm, label %.lr.ph186, label %.critedge2.i

.lr.ph186:                                        ; preds = %.lr.ph191
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.lh
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !647 ; 2 uses
  %i.lp = zext i32 %.0.i182 to i64
  %.phi.trans.insert = zext i32 %i.lj to i64
  %.phi.trans.insert219 = getelementptr inbounds nuw [20 x i8], ptr %i.lo, i64 %.phi.trans.insert
  %.phi.trans.insert220 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert219, i64 8
  %.pre221 = load i32, ptr %.phi.trans.insert220, align 4, !tbaa !523
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph186, %.critedge4.i
  %10 = phi i32 [ %.pre221, %.lr.ph186 ], [ %i.ls, %.critedge4.i ]
  %indvars.iv214 = phi i64 [ %i.lp, %.lr.ph186 ], [ %indvars.iv.next215, %.critedge4.i ] ; 3 uses
  %i.lq = getelementptr inbounds nuw [20 x i8], ptr %i.lo, i64 %indvars.iv214 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !523 ; 2 uses
  %i.lt = icmp eq i32 %i.ls, %10
  br i1 %i.lt, label %.critedge4.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !500
  %i.lw = and i32 %i.lv, 2
  %.not94.i = icmp eq i32 %i.lw, 0
  br i1 %.not94.i, label %.critedge2.i.loopexit.split.loop.exit, label %.critedge4.i

.critedge4.i:                                     ; preds = %bb.bl, %bb.bm
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next215 to i32
  %exitcond217.not = icmp eq i32 %i.ll, %lftr.wideiv
  br i1 %exitcond217.not, label %.critedge2.i, label %bb.bl, !llvm.loop !648

.critedge2.i.loopexit.split.loop.exit:            ; preds = %bb.bm
  %i.lx = trunc nuw i64 %indvars.iv214 to i32
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge4.i, %.critedge2.i.loopexit.split.loop.exit, %.lr.ph191
  %.0.i.lcssa = phi i32 [ %.0.i182, %.lr.ph191 ], [ %i.lx, %.critedge2.i.loopexit.split.loop.exit ], [ %i.ll, %.critedge4.i ] ; 2 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.lh
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !636
  tail call void @hb_buffer_append(ptr noundef nonnull %.0.i.i52, ptr noundef %i.lz, i32 noundef %i.lj, i32 noundef %.0.i.lcssa), !inline_history !644
  store i32 %.0.i.lcssa, ptr %i.li, align 4, !tbaa !139
  %i.ma = xor i32 %.080.i190, 1
  %i.mb = load i32, ptr %i.b, align 8, !tbaa !139
  %i.mc = icmp ult i32 %i.mb, %i.ku
  %i.md = load i32, ptr %i.ld, align 4
  %i.me = icmp ult i32 %i.md, %i.kz
  %i.mf = select i1 %i.mc, i1 true, i1 %i.me
  br i1 %i.mf, label %.lr.ph191, label %._crit_edge192, !llvm.loop !649

._crit_edge192:                                   ; preds = %.critedge2.i, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  br i1 %i.io, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge192
  tail call void @hb_buffer_reverse(ptr noundef nonnull %0), !inline_history !644
  tail call void @hb_buffer_reverse(ptr noundef nonnull %.0.i.i52), !inline_history !644
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %._crit_edge192
  %i.mg = getelementptr inbounds nuw i8, ptr %.0.i.i52, i64 88
  %i.mh = load i8, ptr %i.mg, align 8, !tbaa !496, !range !220, !noundef !74
  %i.mi = trunc nuw i8 %i.mh to i1
  br i1 %i.mi, label %bb.bp, label %.split, !prof !49

bb.bp:                                            ; preds = %bb.bo
  %i.mj = tail call i32 @hb_buffer_diff(ptr noundef nonnull %.0.i.i52, ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0), !inline_history !644
  %i.mk = and i32 %i.mj, 191
  %.not93.i26 = icmp eq i32 %i.mk, 0
  br i1 %.not93.i26, label %.split, label %.critedge

.critedge:                                        ; preds = %bb.bp
  tail call void (ptr, ptr, ptr, ...) @_ZL19buffer_verify_errorP11hb_buffer_tP9hb_font_tPKcz(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.78), !inline_history !644
  %i.ml = tail call i32 @hb_buffer_set_length(ptr noundef nonnull %0, i32 noundef 0), !inline_history !644 ; 0 uses
  tail call void @hb_buffer_append(ptr noundef nonnull %0, ptr noundef nonnull %.0.i.i52, i32 noundef 0, i32 noundef -1), !inline_history !644
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  tail call void @hb_buffer_destroy(ptr noundef nonnull %.0.i.i52)
  tail call void @hb_buffer_destroy(ptr noundef nonnull %.0.i.i60)
  tail call void @hb_buffer_destroy(ptr noundef nonnull %.0.i.i66)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #63
  br label %bb.br

.split:                                           ; preds = %bb.bp, %bb.bo, %bb.bi, %bb.bh, %bb.bg, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  tail call void @hb_buffer_destroy(ptr noundef nonnull %.0.i.i52)
  tail call void @hb_buffer_destroy(ptr noundef nonnull %.0.i.i60)
  tail call void @hb_buffer_destroy(ptr noundef nonnull %.0.i.i66)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #63
  br i1 %.585.i249, label %_ZN11hb_vector_tIcLb0EED2Ev.exit, label %bb.br

_ZL30buffer_verify_unsafe_to_concatP11hb_buffer_tS0_P9hb_font_tPK12hb_feature_tjPKPKc.exit: ; preds = %bb.ah
  br i1 %.585.i249, label %_ZN11hb_vector_tIcLb0EED2Ev.exit, label %bb.br

bb.bq:                                            ; preds = %.thread
  br i1 %.484.i, label %_ZN11hb_vector_tIcLb0EED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %.critedge, %.split, %_ZL30buffer_verify_unsafe_to_concatP11hb_buffer_tS0_P9hb_font_tPK12hb_feature_tjPKPKc.exit, %.thread128, %bb.bq
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !522 ; 3 uses
  %i.mo = mul i32 %i.mn, 10
  %i.mp = add i32 %i.mo, 16                       ; 6 uses
  %i.mq = icmp slt i32 %i.mp, 0
  br i1 %i.mq, label %_ZN11hb_vector_tIcLb0EED2Ev.exit, label %bb.bs, !prof !48

bb.bs:                                            ; preds = %bb.br
  %.not.i.i.not.not = icmp eq i32 %i.mp, 0        ; 2 uses
  br i1 %.not.i.i.not.not, label %.thread148, label %.preheader.i.i, !prof !49

.preheader.i.i:                                   ; preds = %bb.bs, %.preheader.i.i
  %.053.i.i = phi i32 [ %i.mt, %.preheader.i.i ], [ 0, %bb.bs ] ; 2 uses
  %i.mr = lshr i32 %.053.i.i, 1
  %i.ms = add nuw i32 %.053.i.i, 8
  %i.mt = add nuw i32 %i.ms, %i.mr                ; 3 uses
  %i.mu = icmp ugt i32 %i.mp, %i.mt
  br i1 %i.mu, label %.preheader.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i, !llvm.loop !650

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i: ; preds = %.preheader.i.i
  %i.mv = zext i32 %i.mt to i64
  %malloc = tail call ptr @malloc(i64 %i.mv)      ; 4 uses
  %.not22.i.i = icmp eq ptr %malloc, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIcLb0EED2Ev.exit, label %bb.bt, !prof !651

bb.bt:                                            ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i
  %i.mw = zext nneg i32 %i.mp to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %malloc, i8 0, i64 %i.mw, i1 false)
  %i.mx = load i32, ptr %i.mm, align 8, !tbaa !139
  %i.my = tail call i32 @llvm.umin.i32(i32 %i.mn, i32 %i.mx)
  store i8 0, ptr %malloc, align 1, !tbaa !61
  br label %.thread148

.thread148:                                       ; preds = %bb.bs, %bb.bt
  %i.mz = phi i32 [ %i.my, %bb.bt ], [ %i.mn, %bb.bs ] ; 4 uses
  %.sroa.13.1.ph154 = phi ptr [ %malloc, %bb.bt ], [ null, %bb.bs ] ; 5 uses
  %.not127.i.not = icmp eq i32 %i.mz, 0
  br i1 %.not127.i.not, label %_ZN11hb_vector_tIcLb0EE6resizeEi.exit, label %.lr.ph.i.i, !prof !48

.lr.ph.i.i:                                       ; preds = %.thread148
  %i.na = getelementptr i8, ptr %1, i64 112
  %.val.i = load ptr, ptr %i.na, align 8, !tbaa !499 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  %i.nc = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.nd = add i32 %i.mz, -1                       ; 2 uses
  %i.ne = zext i32 %i.nd to i64
  %zext = zext i32 %i.mz to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  store i8 60, ptr %i.a, align 16, !tbaa !61
  %i.nf = load i32, ptr %.val.i, align 4, !tbaa !582
  %i.ng = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.nb, i64 noundef 1023, ptr noundef nonnull @.str.73, i32 noundef %i.nf) #63
  %.sroa.speculated4.i.i.peel = call i32 @llvm.smax.i32(i32 %i.ng, i32 0)
  %i.nh = zext nneg i32 %.sroa.speculated4.i.i.peel to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nh ; 3 uses
  %i.nj = icmp eq i32 %i.nd, 0
  br i1 %i.nj, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph.i.i
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 1
  store i8 62, ptr %i.ni, align 1, !tbaa !61
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.lr.ph.i.i
  %.2.i.i.peel = phi ptr [ %i.nk, %bb.bu ], [ %i.ni, %.lr.ph.i.i ]
  %i.nl = ptrtoint ptr %.2.i.i.peel to i64
  %i.nm = sub i64 %i.nl, %i.nc                    ; 2 uses
  %i.nn = trunc i64 %i.nm to i32                  ; 2 uses
  %i.no = icmp ugt i32 %i.mp, %i.nn
  br i1 %i.no, label %bb.bw, label %.loopexit.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.np = and i64 %i.nm, 4294967295               ; 3 uses
  %.not.i57.i.i.peel = icmp eq i64 %i.np, 0
  br i1 %.not.i57.i.i.peel, label %bb.by, label %bb.bx, !prof !48

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.13.1.ph154, ptr nonnull readonly align 16 %i.a, i64 %i.np, i1 false), !alias.scope !652
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.13.1.ph154, i64 %i.np ; 2 uses
  store i8 0, ptr %i.nq, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  %i.nr = icmp eq i32 %i.mz, 1
  br i1 %i.nr, label %_ZN11hb_vector_tIcLb0EE6resizeEi.exit, label %.lr.ph.split.i.i.peel.next

.lr.ph.split.i.i.peel.next:                       ; preds = %bb.by
  %i.ns = sub nuw nsw i32 %i.mp, %i.nn
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.cd, %.lr.ph.split.i.i.peel.next
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.cd ], [ 1, %.lr.ph.split.i.i.peel.next ] ; 3 uses
  %.04820.i.i = phi ptr [ %i.of, %bb.cd ], [ %i.nq, %.lr.ph.split.i.i.peel.next ] ; 2 uses
  %.05019.i.i = phi i32 [ %i.og, %bb.cd ], [ %i.ns, %.lr.ph.split.i.i.peel.next ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  store i8 124, ptr %i.a, align 16, !tbaa !61
  %i.nt = getelementptr inbounds nuw [20 x i8], ptr %.val.i, i64 %indvars.iv.i.i
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !582
  %i.nv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.nb, i64 noundef 1023, ptr noundef nonnull @.str.73, i32 noundef %i.nu) #63
  %.sroa.speculated4.i.i = call i32 @llvm.smax.i32(i32 %i.nv, i32 0)
  %i.nw = zext nneg i32 %.sroa.speculated4.i.i to i64
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nw ; 3 uses
  %i.ny = icmp eq i64 %indvars.iv.i.i, %i.ne
  br i1 %i.ny, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.lr.ph.split.i.i
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 1
  store i8 62, ptr %i.nx, align 1, !tbaa !61
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %.lr.ph.split.i.i
  %.2.i.i = phi ptr [ %i.nz, %bb.bz ], [ %i.nx, %.lr.ph.split.i.i ]
  %i.oa = ptrtoint ptr %.2.i.i to i64
  %i.ob = sub i64 %i.oa, %i.nc                    ; 2 uses
  %i.oc = trunc i64 %i.ob to i32                  ; 2 uses
  %i.od = icmp ugt i32 %.05019.i.i, %i.oc
  br i1 %i.od, label %bb.cb, label %.loopexit.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.oe = and i64 %i.ob, 4294967295               ; 3 uses
  %.not.i57.i.i = icmp eq i64 %i.oe, 0
  br i1 %.not.i57.i.i, label %bb.cd, label %bb.cc, !prof !48

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.04820.i.i, ptr nonnull readonly align 16 %i.a, i64 %i.oe, i1 false), !alias.scope !652
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.of = getelementptr inbounds nuw i8, ptr %.04820.i.i, i64 %i.oe ; 2 uses
end_hunk_1
begin_hunk_2_@hb_buffer_append:bb.a
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.w, label %_ZL9hb_memcpyPvPKvm.exit98

bb.w:                                             ; preds = %hb_segment_properties_overlay.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !527
  %i.cj = getelementptr inbounds nuw [20 x i8], ptr %i.ci, i64 %i.bv
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !527
  %i.cm = getelementptr inbounds nuw [20 x i8], ptr %i.cl, i64 %i.bx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr readonly align 1 %i.cm, i64 %i.bz, i1 false), !alias.scope !745
  br label %_ZL9hb_memcpyPvPKvm.exit98

_ZL9hb_memcpyPvPKvm.exit98:                       ; preds = %bb.w, %hb_segment_properties_overlay.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !619
  %i.cp = icmp eq i32 %i.co, 1
  br i1 %i.cp, label %bb.x, label %.critedge6

bb.x:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit98
  br i1 %.not, label %bb.y, label %.critedge2

bb.y:                                             ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !139
  %i.cs = sub i32 0, %i.cr
  %.not93 = icmp eq i32 %.082, %i.cs
  br i1 %.not93, label %.critedge2, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  store i32 0, ptr %i.ct, align 8, !tbaa !139
  %.not94100 = icmp eq i32 %2, 0
  br i1 %.not94100, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cv = load ptr, ptr %i.bw, align 8, !tbaa !499
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph
  %.183101133 = phi i32 [ %.082, %.lr.ph ], [ %i.cx, %bb.aa ]
  %i.cw = phi i32 [ 0, %.lr.ph ], [ %i.db, %bb.aa ] ; 2 uses
  %i.cx = add i32 %.183101133, -1                 ; 3 uses
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [20 x i8], ptr %i.cv, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !582
  %i.db = add nuw nsw i32 %i.cw, 1                ; 3 uses
  store i32 %i.db, ptr %i.ct, align 8, !tbaa !139
  %i.dc = zext nneg i32 %i.cw to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.dc
  store i32 %i.da, ptr %i.dd, align 4, !tbaa !139
  %.not94 = icmp ne i32 %i.cx, 0
  %i.de = icmp ult i32 %i.db, 5
  %or.cond = select i1 %.not94, i1 %i.de, i1 false
  br i1 %or.cond, label %bb.aa, label %.critedge, !llvm.loop !749

.critedge:                                        ; preds = %bb.aa, %bb.z
  %i.df = load i32, ptr %i.cq, align 8, !tbaa !139
  %.not112 = icmp eq i32 %i.df, 0
  br i1 %.not112, label %.critedge2, label %.lr.ph104

.lr.ph104:                                        ; preds = %.critedge
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph104, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph104 ], [ %indvars.iv.next, %bb.ac ] ; 2 uses
  %i.di = load i32, ptr %i.ct, align 8, !tbaa !139 ; 3 uses
  %i.dj = icmp ult i32 %i.di, 5
  br i1 %i.dj, label %bb.ac, label %.critedge2

bb.ac:                                            ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !139
  %i.dm = add nuw nsw i32 %i.di, 1
  store i32 %i.dm, ptr %i.ct, align 8, !tbaa !139
  %i.dn = zext nneg i32 %i.di to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dn
  store i32 %i.dl, ptr %i.do, align 4, !tbaa !139
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dp = load i32, ptr %i.cq, align 8, !tbaa !139
  %i.dq = zext i32 %i.dp to i64
  %i.dr = icmp samesign ult i64 %indvars.iv.next, %i.dq
  br i1 %i.dr, label %bb.ab, label %.critedge2, !llvm.loop !750

.critedge2:                                       ; preds = %bb.ac, %bb.ab, %.critedge, %bb.y, %bb.x
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 5 uses
  store i32 0, ptr %i.ds, align 4, !tbaa !139
  %i.dt = load i32, ptr %i.a, align 8, !tbaa !522
  %i.du = icmp ult i32 %spec.select, %i.dt
  br i1 %i.du, label %.lr.ph107, label %.critedge4

.lr.ph107:                                        ; preds = %.critedge2
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.dw = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %3)
  %umin = zext i32 %i.dw to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph107, %bb.ae
  %indvars.iv115 = phi i64 [ %umin, %.lr.ph107 ], [ %indvars.iv.next116, %bb.ae ] ; 2 uses
  %i.dx = load i32, ptr %i.ds, align 4, !tbaa !139 ; 3 uses
  %i.dy = icmp ult i32 %i.dx, 5
  br i1 %i.dy, label %bb.ae, label %.critedge4

bb.ae:                                            ; preds = %bb.ad
  %i.dz = load ptr, ptr %i.bw, align 8, !tbaa !499
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.ea = getelementptr inbounds nuw [20 x i8], ptr %i.dz, i64 %indvars.iv115
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !582
  %i.ec = add nuw nsw i32 %i.dx, 1
  store i32 %i.ec, ptr %i.ds, align 4, !tbaa !139
  %i.ed = zext nneg i32 %i.dx to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.ed
  store i32 %i.eb, ptr %i.ee, align 4, !tbaa !139
  %i.ef = load i32, ptr %i.a, align 8, !tbaa !522
  %i.eg = zext i32 %i.ef to i64
  %i.eh = icmp samesign ult i64 %indvars.iv.next116, %i.eg
  br i1 %i.eh, label %bb.ad, label %.critedge4, !llvm.loop !751

.critedge4:                                       ; preds = %bb.ad, %bb.ae, %.critedge2
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !139
  %.not113 = icmp eq i32 %i.ej, 0
  br i1 %.not113, label %.critedge6, label %.lr.ph110

.lr.ph110:                                        ; preds = %.critedge4
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 156
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph110, %bb.ag
  %indvars.iv117 = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next118, %bb.ag ] ; 2 uses
  %i.em = load i32, ptr %i.ds, align 4, !tbaa !139 ; 3 uses
  %i.en = icmp ult i32 %i.em, 5
  br i1 %i.en, label %bb.ag, label %.critedge6

bb.ag:                                            ; preds = %bb.af
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv117
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !139
  %i.eq = add nuw nsw i32 %i.em, 1
  store i32 %i.eq, ptr %i.ds, align 4, !tbaa !139
  %i.er = zext nneg i32 %i.em to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.er
  store i32 %i.ep, ptr %i.es, align 4, !tbaa !139
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.et = load i32, ptr %i.ei, align 4, !tbaa !139
  %i.eu = zext i32 %i.et to i64
  %i.ev = icmp samesign ult i64 %indvars.iv.next118, %i.eu
  br i1 %i.ev, label %bb.af, label %.critedge6, !llvm.loop !752

.critedge6:                                       ; preds = %bb.ag, %bb.af, %.critedge4, %hb_buffer_set_length.exit, %_ZL9hb_memcpyPvPKvm.exit98, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @hb_buffer_normalize_glyphs(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #20 {
bb.a:
  %1 = alloca %struct.hb_glyph_info_t, align 4    ; 4 uses
  %2 = alloca %struct.hb_glyph_position_t, align 4 ; 4 uses
  %3 = alloca %struct.hb_glyph_info_t, align 4    ; 4 uses
  %4 = alloca %struct.hb_glyph_position_t, align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !531
  %i.c = and i32 %i.b, -3
  %i.d = icmp eq i32 %i.c, 5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !522  ; 8 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %wide.trip.count = zext i32 %i.h to i64
  %exitcond.not60 = icmp eq i32 %i.h, 0
  br i1 %exitcond.not60, label %.lr.ph, label %.lr.ph63.preheader

.lr.ph63.preheader:                               ; preds = %bb.b
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !499  ; 2 uses
  br label %.lr.ph63

bb.c:                                             ; preds = %.lr.ph63
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph, label %.lr.ph63, !llvm.loop !533

.lr.ph63:                                         ; preds = %.lr.ph63.preheader, %bb.c
  %indvars.iv61 = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.lr.ph63.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv61, 1 ; 4 uses
  %i.j = getelementptr inbounds nuw [20 x i8], ptr %i.i, i64 %indvars.iv61
  %i.k = getelementptr inbounds nuw [20 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !523
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !523
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.c, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit, !llvm.loop !533

_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit: ; preds = %.lr.ph63
  %i.q = trunc nuw i64 %indvars.iv.next to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit, %bb.b
  %i.r = phi i32 [ %i.q, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit ], [ %i.f, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  br i1 %i.d, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15.us
  %i.u = phi i32 [ %i.cu, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15.us ], [ %i.f, %.lr.ph ]
  %.023.us = phi i32 [ %.lcssa28, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15.us ], [ %i.r, %.lr.ph ] ; 9 uses
  %.01322.us = phi i32 [ %.023.us, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !527  ; 10 uses
  %i.w = icmp ult i32 %.01322.us, %.023.us
  %i.x = zext i32 %.01322.us to i64               ; 9 uses
  br i1 %i.w, label %.lr.ph.preheader.i.us, label %._crit_edge.i.us

.lr.ph.preheader.i.us:                            ; preds = %.lr.ph.split.us
  %wide.trip.count.i.us = zext i32 %.023.us to i64 ; 4 uses
  %i.y = sub nsw i64 %wide.trip.count.i.us, %i.x  ; 2 uses
  %i.z = xor i64 %i.x, -1
  %i.aa = add nsw i64 %i.z, %wide.trip.count.i.us ; 2 uses
  %xtraiter93 = and i64 %i.y, 3                   ; 2 uses
  %lcmp.mod94.not = icmp eq i64 %xtraiter93, 0
  br i1 %lcmp.mod94.not, label %.lr.ph.i.us.prol.loopexit, label %.lr.ph.i.us.prol

.lr.ph.i.us.prol:                                 ; preds = %.lr.ph.preheader.i.us, %.lr.ph.i.us.prol
  %indvars.iv.i.us.prol = phi i64 [ %indvars.iv.next.i.us.prol, %.lr.ph.i.us.prol ], [ %i.x, %.lr.ph.preheader.i.us ] ; 2 uses
  %i.ab = phi <2 x i32> [ %i.ae, %.lr.ph.i.us.prol ], [ zeroinitializer, %.lr.ph.preheader.i.us ]
  %prol.iter95 = phi i64 [ %prol.iter95.next, %.lr.ph.i.us.prol ], [ 0, %.lr.ph.preheader.i.us ]
  %i.ac = getelementptr inbounds nuw [20 x i8], ptr %i.v, i64 %indvars.iv.i.us.prol
  %i.ad = load <2 x i32>, ptr %i.ac, align 4, !tbaa !139
  %i.ae = add nsw <2 x i32> %i.ad, %i.ab          ; 3 uses
  %indvars.iv.next.i.us.prol = add nuw nsw i64 %indvars.iv.i.us.prol, 1 ; 2 uses
  %prol.iter95.next = add i64 %prol.iter95, 1     ; 2 uses
  %prol.iter95.cmp.not = icmp eq i64 %prol.iter95.next, %xtraiter93
  br i1 %prol.iter95.cmp.not, label %.lr.ph.i.us.prol.loopexit, label %.lr.ph.i.us.prol, !llvm.loop !753

.lr.ph.i.us.prol.loopexit:                        ; preds = %.lr.ph.i.us.prol, %.lr.ph.preheader.i.us
  %.lcssa.unr = phi <2 x i32> [ poison, %.lr.ph.preheader.i.us ], [ %i.ae, %.lr.ph.i.us.prol ]
  %indvars.iv.i.us.unr = phi i64 [ %i.x, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i.us.prol, %.lr.ph.i.us.prol ]
  %.unr96 = phi <2 x i32> [ zeroinitializer, %.lr.ph.preheader.i.us ], [ %i.ae, %.lr.ph.i.us.prol ]
  %i.af = icmp ult i64 %i.aa, 3
  br i1 %i.af, label %.lr.ph104.i.us.preheader, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.prol.loopexit, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.3, %.lr.ph.i.us ], [ %indvars.iv.i.us.unr, %.lr.ph.i.us.prol.loopexit ] ; 5 uses
  %i.ag = phi <2 x i32> [ %i.av, %.lr.ph.i.us ], [ %.unr96, %.lr.ph.i.us.prol.loopexit ]
  %i.ah = getelementptr inbounds nuw [20 x i8], ptr %i.v, i64 %indvars.iv.i.us
  %i.ai = load <2 x i32>, ptr %i.ah, align 4, !tbaa !139
  %i.aj = add nsw <2 x i32> %i.ai, %i.ag
  %i.ak = getelementptr inbounds nuw [20 x i8], ptr %i.v, i64 %indvars.iv.i.us
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.am = load <2 x i32>, ptr %i.al, align 4, !tbaa !139
  %i.an = add nsw <2 x i32> %i.am, %i.aj
  %i.ao = getelementptr inbounds nuw [20 x i8], ptr %i.v, i64 %indvars.iv.i.us
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load <2 x i32>, ptr %i.ap, align 4, !tbaa !139
  %i.ar = add nsw <2 x i32> %i.aq, %i.an
  %i.as = getelementptr inbounds nuw [20 x i8], ptr %i.v, i64 %indvars.iv.i.us
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 60
  %i.au = load <2 x i32>, ptr %i.at, align 4, !tbaa !139
  %i.av = add nsw <2 x i32> %i.au, %i.ar          ; 2 uses
  %indvars.iv.next.i.us.3 = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %exitcond.not.i.us.3 = icmp eq i64 %indvars.iv.next.i.us.3, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us.3, label %.lr.ph104.i.us.preheader, label %.lr.ph.i.us, !llvm.loop !754

.lr.ph104.i.us.preheader:                         ; preds = %.lr.ph.i.us, %.lr.ph.i.us.prol.loopexit
  %.lcssa = phi <2 x i32> [ %.lcssa.unr, %.lr.ph.i.us.prol.loopexit ], [ %i.av, %.lr.ph.i.us ] ; 2 uses
  %xtraiter97 = and i64 %i.y, 1
  %lcmp.mod98.not = icmp eq i64 %xtraiter97, 0
  br i1 %lcmp.mod98.not, label %.lr.ph104.i.us.prol.loopexit, label %.lr.ph104.i.us.prol

.lr.ph104.i.us.prol:                              ; preds = %.lr.ph104.i.us.preheader
  %i.aw = getelementptr inbounds nuw [20 x i8], ptr %i.v, i64 %i.x ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load <2 x i32>, ptr %i.aw, align 4, !tbaa !139
  store i32 0, ptr %i.aw, align 4, !tbaa !534
  store i32 0, ptr %i.ax, align 4, !tbaa !538
  %indvars.iv.next116.i.us.prol = add nuw nsw i64 %i.x, 1
  br label %.lr.ph104.i.us.prol.loopexit

.lr.ph104.i.us.prol.loopexit:                     ; preds = %.lr.ph104.i.us.prol, %.lr.ph104.i.us.preheader
  %indvars.iv115.i.us.unr = phi i64 [ %i.x, %.lr.ph104.i.us.preheader ], [ %indvars.iv.next116.i.us.prol, %.lr.ph104.i.us.prol ]
  %.unr100 = phi <2 x i32> [ zeroinitializer, %.lr.ph104.i.us.preheader ], [ %i.ay, %.lr.ph104.i.us.prol ]
  %i.az = icmp eq i64 %i.aa, 0
  br i1 %i.az, label %._crit_edge.i.us, label %.lr.ph104.i.us

.lr.ph104.i.us:                                   ; preds = %.lr.ph104.i.us.prol.loopexit, %.lr.ph104.i.us
  %indvars.iv115.i.us = phi i64 [ %indvars.iv.next116.i.us.1, %.lr.ph104.i.us ], [ %indvars.iv115.i.us.unr, %.lr.ph104.i.us.prol.loopexit ] ; 3 uses
  %i.ba = phi <2 x i32> [ %i.bp, %.lr.ph104.i.us ], [ %.unr100, %.lr.ph104.i.us.prol.loopexit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [20 x i8], ptr %i.v, i64 %indvars.iv115.i.us ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.be = load <2 x i32>, ptr %i.bc, align 4, !tbaa !139
  %i.bf = add nsw <2 x i32> %i.be, %i.ba
  store <2 x i32> %i.bf, ptr %i.bc, align 4, !tbaa !139
  %i.bg = load <2 x i32>, ptr %i.bb, align 4, !tbaa !139
  %i.bh = add nsw <2 x i32> %i.bg, %i.ba          ; 2 uses
  store i32 0, ptr %i.bb, align 4, !tbaa !534
  store i32 0, ptr %i.bd, align 4, !tbaa !538
  %i.bi = getelementptr inbounds nuw [20 x i8], ptr %i.v, i64 %indvars.iv115.i.us ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 20 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 28 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bm = load <2 x i32>, ptr %i.bk, align 4, !tbaa !139
  %i.bn = add nsw <2 x i32> %i.bm, %i.bh
  store <2 x i32> %i.bn, ptr %i.bk, align 4, !tbaa !139
  %i.bo = load <2 x i32>, ptr %i.bj, align 4, !tbaa !139
  %i.bp = add nsw <2 x i32> %i.bo, %i.bh
  store i32 0, ptr %i.bj, align 4, !tbaa !534
  store i32 0, ptr %i.bl, align 4, !tbaa !538
  %indvars.iv.next116.i.us.1 = add nuw nsw i64 %indvars.iv115.i.us, 2 ; 2 uses
  %exitcond119.not.i.us.1 = icmp eq i64 %indvars.iv.next116.i.us.1, %wide.trip.count.i.us
  br i1 %exitcond119.not.i.us.1, label %._crit_edge.i.us, label %.lr.ph104.i.us, !llvm.loop !755

._crit_edge.i.us:                                 ; preds = %.lr.ph104.i.us.prol.loopexit, %.lr.ph104.i.us, %.lr.ph.split.us
  %i.bq = phi <2 x i32> [ zeroinitializer, %.lr.ph.split.us ], [ %.lcssa, %.lr.ph104.i.us ], [ %.lcssa, %.lr.ph104.i.us.prol.loopexit ]
  %i.br = add i32 %.023.us, -1
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [20 x i8], ptr %i.v, i64 %i.bs
  store <2 x i32> %i.bq, ptr %i.bt, align 4, !tbaa !139
  %i.bu = load ptr, ptr %i.t, align 8, !tbaa !499
  %i.bv = getelementptr inbounds nuw [20 x i8], ptr %i.bu, i64 %i.x ; 4 uses
  %i.bw = xor i32 %.01322.us, -1
  %i.bx = add i32 %.023.us, %i.bw                 ; 2 uses
  %i.by = getelementptr inbounds nuw [20 x i8], ptr %i.v, i64 %i.x ; 3 uses
  %i.bz = icmp ugt i32 %i.bx, 1
  br i1 %i.bz, label %.preheader.lr.ph.i.i.us, label %_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb.exit.us

.preheader.lr.ph.i.i.us:                          ; preds = %._crit_edge.i.us
  %wide.trip.count13.i.i.us = zext i32 %i.bx to i64
  br label %.preheader.i.i.us

.preheader.i.i.us:                                ; preds = %bb.g, %.preheader.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ %indvars.iv.next.i.i.us, %bb.g ], [ 1, %.preheader.lr.ph.i.i.us ] ; 6 uses
  %i.ca = getelementptr inbounds nuw [20 x i8], ptr %i.bv, i64 %indvars.iv.i.i.us ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !582
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %.not.i.i.us = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.us, label %.critedge.i.i.us, label %bb.e, !llvm.loop !756

bb.e:                                             ; preds = %.preheader.i.i.us, %bb.d
  %indvars.iv3.i.i.us70 = phi i64 [ %indvars.iv.i.i.us, %.preheader.i.i.us ], [ %i.cc, %bb.d ] ; 2 uses
  %i.cc = add nsw i64 %indvars.iv3.i.i.us70, -1   ; 3 uses
  %i.cd = getelementptr inbounds nuw [20 x i8], ptr %i.bv, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !582
  %i.cf = icmp sgt i32 %i.cb, %i.ce
  br i1 %i.cf, label %bb.d, label %.critedge.split.loop.exit19.i.i.us, !llvm.loop !756

.critedge.split.loop.exit19.i.i.us:               ; preds = %bb.e
  %i.cg = trunc nuw i64 %indvars.iv3.i.i.us70 to i32
  br label %.critedge.i.i.us

.critedge.i.i.us:                                 ; preds = %bb.d, %.critedge.split.loop.exit19.i.i.us
  %.0.lcssa.i.i.us = phi i32 [ %i.cg, %.critedge.split.loop.exit19.i.i.us ], [ 0, %bb.d ] ; 3 uses
  %i.ch = zext i32 %.0.lcssa.i.i.us to i64        ; 3 uses
  %i.ci = icmp eq i64 %indvars.iv.i.i.us, %i.ch
  br i1 %i.ci, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge.i.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.ca, i64 20, i1 false), !tbaa.struct !526
  %i.cj = add i32 %.0.lcssa.i.i.us, 1
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = getelementptr inbounds nuw [20 x i8], ptr %i.bv, i64 %i.ck
  %i.cm = getelementptr inbounds nuw [20 x i8], ptr %i.bv, i64 %i.ch ; 2 uses
  %i.cn = trunc nuw i64 %indvars.iv.i.i.us to i32
  %i.co = sub i32 %i.cn, %.0.lcssa.i.i.us
  %i.cp = zext i32 %i.co to i64
  %i.cq = mul nuw nsw i64 %i.cp, 20               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cl, ptr align 4 %i.cm, i64 %i.cq, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cm, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !526
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.cr = getelementptr inbounds nuw [20 x i8], ptr %i.by, i64 %indvars.iv.i.i.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.cr, i64 20, i1 false), !tbaa.struct !528
  %i.cs = getelementptr inbounds nuw [20 x i8], ptr %i.by, i64 %i.ck
  %i.ct = getelementptr inbounds nuw [20 x i8], ptr %i.by, i64 %i.ch ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cs, ptr nonnull align 4 %i.ct, i64 %i.cq, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ct, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !528
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge.i.i.us
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count13.i.i.us
  br i1 %exitcond.not.i.i.us, label %_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb.exit.us.loopexit, label %.preheader.i.i.us, !llvm.loop !757

_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb.exit.us.loopexit: ; preds = %bb.g
  %.pre38 = load i32, ptr %i.e, align 8, !tbaa !522
  br label %_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb.exit.us

_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb.exit.us: ; preds = %_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb.exit.us.loopexit, %._crit_edge.i.us
  %i.cu = phi i32 [ %.pre38, %_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb.exit.us.loopexit ], [ %i.u, %._crit_edge.i.us ] ; 2 uses
  %i.cv = add i32 %.023.us, 1
  %umax36 = tail call i32 @llvm.umax.i32(i32 %i.cu, i32 %i.cv) ; 3 uses
  %5 = add i32 %umax36, -1                        ; 2 uses
  %exitcond37.not71 = icmp eq i32 %.023.us, %5
  br i1 %exitcond37.not71, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15.us, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb.exit.us
  %i.cw = load ptr, ptr %i.t, align 8, !tbaa !499 ; 2 uses
  br label %.lr.ph73

bb.h:                                             ; preds = %.lr.ph73
  %exitcond37.not = icmp eq i32 %6, %5
  br i1 %exitcond37.not, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15.us, label %.lr.ph73, !llvm.loop !533

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %bb.h
  %.0.i14.us72 = phi i32 [ %6, %bb.h ], [ %.023.us, %.lr.ph73.preheader ] ; 2 uses
  %6 = add i32 %.0.i14.us72, 1                    ; 4 uses
  %7 = zext i32 %.0.i14.us72 to i64
  %i.cx = getelementptr inbounds nuw [20 x i8], ptr %i.cw, i64 %7
  %8 = zext i32 %6 to i64
  %i.cy = getelementptr inbounds nuw [20 x i8], ptr %i.cw, i64 %8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !523
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !523
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.h, label %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15.us_crit_edge, !llvm.loop !533

._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15.us_crit_edge: ; preds = %.lr.ph73
  br label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15.us, !llvm.loop !533

_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15.us: ; preds = %bb.h, %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15.us_crit_edge, %_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb.exit.us
  %.lcssa28 = phi i32 [ %6, %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15.us_crit_edge ], [ %umax36, %_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb.exit.us ], [ %umax36, %bb.h ]
  %i.de = icmp ult i32 %.023.us, %i.f
  br i1 %i.de, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !758

._crit_edge:                                      ; preds = %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15.us, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15
  %i.df = phi i32 [ %i.hh, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15 ], [ %i.f, %.lr.ph ]
  %.023 = phi i32 [ %.lcssa32, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15 ], [ %i.r, %.lr.ph ] ; 12 uses
  %.01322 = phi i32 [ %.023, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15 ], [ 0, %.lr.ph ] ; 6 uses
  %i.dg = load ptr, ptr %i.s, align 8, !tbaa !527 ; 14 uses
  %i.dh = icmp ult i32 %.01322, %.023
  %i.di = zext i32 %.01322 to i64                 ; 9 uses
  br i1 %i.dh, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.split
  %wide.trip.count.i = zext i32 %.023 to i64      ; 4 uses
  %i.dj = sub nsw i64 %wide.trip.count.i, %i.di   ; 2 uses
  %i.dk = xor i64 %i.di, -1
  %i.dl = add nsw i64 %i.dk, %wide.trip.count.i   ; 2 uses
  %xtraiter = and i64 %i.dj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %i.di, %.lr.ph.preheader.i ] ; 2 uses
  %i.dm = phi <2 x i32> [ %i.dp, %.lr.ph.i.prol ], [ zeroinitializer, %.lr.ph.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.dn = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %indvars.iv.i.prol
  %i.do = load <2 x i32>, ptr %i.dn, align 4, !tbaa !139
  %i.dp = add nsw <2 x i32> %i.do, %i.dm          ; 3 uses
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !759

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.lcssa81.unr = phi <2 x i32> [ poison, %.lr.ph.preheader.i ], [ %i.dp, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %i.di, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.unr = phi <2 x i32> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.dp, %.lr.ph.i.prol ]
  %i.dq = icmp ult i64 %i.dl, 3
  br i1 %i.dq, label %.lr.ph104.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.dr = phi <2 x i32> [ %i.eg, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ]
  %i.ds = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %indvars.iv.i
  %i.dt = load <2 x i32>, ptr %i.ds, align 4, !tbaa !139
  %i.du = add nsw <2 x i32> %i.dt, %i.dr
  %i.dv = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %indvars.iv.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 20
  %i.dx = load <2 x i32>, ptr %i.dw, align 4, !tbaa !139
  %i.dy = add nsw <2 x i32> %i.dx, %i.du
  %i.dz = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %indvars.iv.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.eb = load <2 x i32>, ptr %i.ea, align 4, !tbaa !139
  %i.ec = add nsw <2 x i32> %i.eb, %i.dy
  %i.ed = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %indvars.iv.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 60
  %i.ef = load <2 x i32>, ptr %i.ee, align 4, !tbaa !139
  %i.eg = add nsw <2 x i32> %i.ef, %i.ec          ; 2 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.lr.ph104.i.preheader, label %.lr.ph.i, !llvm.loop !754

.lr.ph104.i.preheader:                            ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa81 = phi <2 x i32> [ %.lcssa81.unr, %.lr.ph.i.prol.loopexit ], [ %i.eg, %.lr.ph.i ] ; 2 uses
  %xtraiter86 = and i64 %i.dj, 1
  %lcmp.mod87.not = icmp eq i64 %xtraiter86, 0
  br i1 %lcmp.mod87.not, label %.lr.ph104.i.prol.loopexit, label %.lr.ph104.i.prol

.lr.ph104.i.prol:                                 ; preds = %.lr.ph104.i.preheader
  %i.eh = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %i.di ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ej = load <2 x i32>, ptr %i.eh, align 4, !tbaa !139
  store i32 0, ptr %i.eh, align 4, !tbaa !534
  store i32 0, ptr %i.ei, align 4, !tbaa !538
  %indvars.iv.next116.i.prol = add nuw nsw i64 %i.di, 1
  br label %.lr.ph104.i.prol.loopexit

.lr.ph104.i.prol.loopexit:                        ; preds = %.lr.ph104.i.prol, %.lr.ph104.i.preheader
  %indvars.iv115.i.unr = phi i64 [ %i.di, %.lr.ph104.i.preheader ], [ %indvars.iv.next116.i.prol, %.lr.ph104.i.prol ]
  %.unr89 = phi <2 x i32> [ zeroinitializer, %.lr.ph104.i.preheader ], [ %i.ej, %.lr.ph104.i.prol ]
  %i.ek = icmp eq i64 %i.dl, 0
  br i1 %i.ek, label %._crit_edge.i, label %.lr.ph104.i

._crit_edge.i:                                    ; preds = %.lr.ph104.i.prol.loopexit, %.lr.ph104.i, %.lr.ph.split
  %i.el = phi <2 x i32> [ zeroinitializer, %.lr.ph.split ], [ %.lcssa81, %.lr.ph104.i ], [ %.lcssa81, %.lr.ph104.i.prol.loopexit ] ; 6 uses
  %i.em = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %i.di ; 3 uses
  %i.en = load <2 x i32>, ptr %i.em, align 4, !tbaa !139
  %i.eo = add nsw <2 x i32> %i.en, %i.el
  store <2 x i32> %i.eo, ptr %i.em, align 4, !tbaa !139
  %.0105.i = add nuw i32 %.01322, 1               ; 2 uses
  %i.ep = icmp ult i32 %.0105.i, %.023
  br i1 %i.ep, label %.lr.ph108.preheader.i, label %._crit_edge109.i

.lr.ph104.i:                                      ; preds = %.lr.ph104.i.prol.loopexit, %.lr.ph104.i
  %indvars.iv115.i = phi i64 [ %indvars.iv.next116.i.1, %.lr.ph104.i ], [ %indvars.iv115.i.unr, %.lr.ph104.i.prol.loopexit ] ; 3 uses
  %i.eq = phi <2 x i32> [ %i.ff, %.lr.ph104.i ], [ %.unr89, %.lr.ph104.i.prol.loopexit ] ; 2 uses
  %i.er = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %indvars.iv115.i ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.eu = load <2 x i32>, ptr %i.es, align 4, !tbaa !139
  %i.ev = add nsw <2 x i32> %i.eu, %i.eq
  store <2 x i32> %i.ev, ptr %i.es, align 4, !tbaa !139
  %i.ew = load <2 x i32>, ptr %i.er, align 4, !tbaa !139
  %i.ex = add nsw <2 x i32> %i.ew, %i.eq          ; 2 uses
  store i32 0, ptr %i.er, align 4, !tbaa !534
  store i32 0, ptr %i.et, align 4, !tbaa !538
  %i.ey = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %indvars.iv115.i ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 20 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 28 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fc = load <2 x i32>, ptr %i.fa, align 4, !tbaa !139
  %i.fd = add nsw <2 x i32> %i.fc, %i.ex
  store <2 x i32> %i.fd, ptr %i.fa, align 4, !tbaa !139
  %i.fe = load <2 x i32>, ptr %i.ez, align 4, !tbaa !139
  %i.ff = add nsw <2 x i32> %i.fe, %i.ex
  store i32 0, ptr %i.ez, align 4, !tbaa !534
  store i32 0, ptr %i.fb, align 4, !tbaa !538
  %indvars.iv.next116.i.1 = add nuw nsw i64 %indvars.iv115.i, 2 ; 2 uses
  %exitcond119.not.i.1 = icmp eq i64 %indvars.iv.next116.i.1, %wide.trip.count.i
  br i1 %exitcond119.not.i.1, label %._crit_edge.i, label %.lr.ph104.i, !llvm.loop !755

.lr.ph108.preheader.i:                            ; preds = %._crit_edge.i
  %i.fg = zext i32 %.0105.i to i64                ; 2 uses
  %i.fh = xor i32 %.01322, -1
  %i.fi = add i32 %.023, %i.fh
  %i.fj = add i32 %.023, -2
  %i.fk = sub i32 %i.fj, %.01322
  %xtraiter90 = and i32 %i.fi, 3                  ; 2 uses
  %lcmp.mod91.not = icmp eq i32 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %.lr.ph108.i.prol.loopexit, label %.lr.ph108.i.prol

.lr.ph108.i.prol:                                 ; preds = %.lr.ph108.preheader.i, %.lr.ph108.i.prol
  %indvars.iv120.i.prol = phi i64 [ %indvars.iv.next121.i.prol, %.lr.ph108.i.prol ], [ %i.fg, %.lr.ph108.preheader.i ] ; 2 uses
  %prol.iter92 = phi i32 [ %prol.iter92.next, %.lr.ph108.i.prol ], [ 0, %.lr.ph108.preheader.i ]
  %i.fl = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %indvars.iv120.i.prol
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.fn = load <2 x i32>, ptr %i.fm, align 4, !tbaa !139
  %i.fo = sub nsw <2 x i32> %i.fn, %i.el
  store <2 x i32> %i.fo, ptr %i.fm, align 4, !tbaa !139
  %indvars.iv.next121.i.prol = add nuw nsw i64 %indvars.iv120.i.prol, 1 ; 2 uses
  %prol.iter92.next = add i32 %prol.iter92, 1     ; 2 uses
  %prol.iter92.cmp.not = icmp eq i32 %prol.iter92.next, %xtraiter90
  br i1 %prol.iter92.cmp.not, label %.lr.ph108.i.prol.loopexit, label %.lr.ph108.i.prol, !llvm.loop !760

.lr.ph108.i.prol.loopexit:                        ; preds = %.lr.ph108.i.prol, %.lr.ph108.preheader.i
  %indvars.iv120.i.unr = phi i64 [ %i.fg, %.lr.ph108.preheader.i ], [ %indvars.iv.next121.i.prol, %.lr.ph108.i.prol ]
  %i.fp = icmp ult i32 %i.fk, 3
  br i1 %i.fp, label %._crit_edge109.i, label %.lr.ph108.i

._crit_edge109.i:                                 ; preds = %.lr.ph108.i.prol.loopexit, %.lr.ph108.i, %._crit_edge.i
  %i.fq = load ptr, ptr %i.t, align 8, !tbaa !499
  %i.fr = getelementptr inbounds nuw [20 x i8], ptr %i.fq, i64 %i.di ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 20 ; 3 uses
  %i.ft = xor i32 %.01322, -1
  %i.fu = add i32 %.023, %i.ft                    ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.em, i64 20 ; 3 uses
  %i.fw = icmp ugt i32 %i.fu, 1
  br i1 %i.fw, label %.preheader.lr.ph.i72.i, label %_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb.exit

.preheader.lr.ph.i72.i:                           ; preds = %._crit_edge109.i
  %wide.trip.count13.i74.i = zext i32 %i.fu to i64
  br label %.preheader.i75.i

.preheader.i75.i:                                 ; preds = %bb.l, %.preheader.lr.ph.i72.i
  %indvars.iv.i76.i = phi i64 [ %indvars.iv.next.i82.i, %bb.l ], [ 1, %.preheader.lr.ph.i72.i ] ; 6 uses
  %i.fx = getelementptr inbounds nuw [20 x i8], ptr %i.fs, i64 %indvars.iv.i76.i ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !582
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.fz = add nsw i64 %indvars.iv3.i77.i64, -1    ; 2 uses
  %.not.i78.i = icmp eq i64 %i.fz, 0
  br i1 %.not.i78.i, label %.critedge.i80.i, label %bb.j, !llvm.loop !756

bb.j:                                             ; preds = %.preheader.i75.i, %bb.i
  %indvars.iv3.i77.i64 = phi i64 [ %indvars.iv.i76.i, %.preheader.i75.i ], [ %i.fz, %bb.i ] ; 3 uses
  %i.ga = getelementptr [20 x i8], ptr %i.fr, i64 %indvars.iv3.i77.i64
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !582
  %i.gc = icmp sgt i32 %i.fy, %i.gb
  br i1 %i.gc, label %bb.i, label %.critedge.split.loop.exit19.i79.i, !llvm.loop !756

.critedge.split.loop.exit19.i79.i:                ; preds = %bb.j
  %i.gd = trunc nuw i64 %indvars.iv3.i77.i64 to i32
  br label %.critedge.i80.i

.critedge.i80.i:                                  ; preds = %bb.i, %.critedge.split.loop.exit19.i79.i
  %.0.lcssa.i81.i = phi i32 [ %i.gd, %.critedge.split.loop.exit19.i79.i ], [ 0, %bb.i ] ; 3 uses
  %i.ge = zext i32 %.0.lcssa.i81.i to i64         ; 3 uses
  %i.gf = icmp eq i64 %indvars.iv.i76.i, %i.ge
  br i1 %i.gf, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge.i80.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1, ptr noundef nonnull align 4 dereferenceable(20) %i.fx, i64 20, i1 false), !tbaa.struct !526
  %i.gg = add i32 %.0.lcssa.i81.i, 1
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  %i.gi = getelementptr inbounds nuw [20 x i8], ptr %i.fs, i64 %i.gh
  %i.gj = getelementptr inbounds nuw [20 x i8], ptr %i.fs, i64 %i.ge ; 2 uses
  %i.gk = trunc nuw i64 %indvars.iv.i76.i to i32
  %i.gl = sub i32 %i.gk, %.0.lcssa.i81.i
  %i.gm = zext i32 %i.gl to i64
  %i.gn = mul nuw nsw i64 %i.gm, 20               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gi, ptr nonnull align 4 %i.gj, i64 %i.gn, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gj, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !526
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.go = getelementptr inbounds nuw [20 x i8], ptr %i.fv, i64 %indvars.iv.i76.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.go, i64 20, i1 false), !tbaa.struct !528
  %i.gp = getelementptr inbounds nuw [20 x i8], ptr %i.fv, i64 %i.gh
  %i.gq = getelementptr inbounds nuw [20 x i8], ptr %i.fv, i64 %i.ge ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gp, ptr nonnull align 4 %i.gq, i64 %i.gn, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gq, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !528
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge.i80.i
  %indvars.iv.next.i82.i = add nuw nsw i64 %indvars.iv.i76.i, 1 ; 2 uses
  %exitcond.not.i83.i = icmp eq i64 %indvars.iv.next.i82.i, %wide.trip.count13.i74.i
  br i1 %exitcond.not.i83.i, label %_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb.exit.loopexit, label %.preheader.i75.i, !llvm.loop !757

.lr.ph108.i:                                      ; preds = %.lr.ph108.i.prol.loopexit, %.lr.ph108.i
  %indvars.iv120.i = phi i64 [ %indvars.iv.next121.i.3, %.lr.ph108.i ], [ %indvars.iv120.i.unr, %.lr.ph108.i.prol.loopexit ] ; 5 uses
  %i.gr = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %indvars.iv120.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 2 uses
  %i.gt = load <2 x i32>, ptr %i.gs, align 4, !tbaa !139
  %i.gu = sub nsw <2 x i32> %i.gt, %i.el
  store <2 x i32> %i.gu, ptr %i.gs, align 4, !tbaa !139
  %i.gv = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %indvars.iv120.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 28 ; 2 uses
  %i.gx = load <2 x i32>, ptr %i.gw, align 4, !tbaa !139
  %i.gy = sub nsw <2 x i32> %i.gx, %i.el
  store <2 x i32> %i.gy, ptr %i.gw, align 4, !tbaa !139
  %i.gz = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %indvars.iv120.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 48 ; 2 uses
  %i.hb = load <2 x i32>, ptr %i.ha, align 4, !tbaa !139
  %i.hc = sub nsw <2 x i32> %i.hb, %i.el
  store <2 x i32> %i.hc, ptr %i.ha, align 4, !tbaa !139
  %i.hd = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %indvars.iv120.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 68 ; 2 uses
  %i.hf = load <2 x i32>, ptr %i.he, align 4, !tbaa !139
  %i.hg = sub nsw <2 x i32> %i.hf, %i.el
  store <2 x i32> %i.hg, ptr %i.he, align 4, !tbaa !139
  %indvars.iv.next121.i.3 = add nuw nsw i64 %indvars.iv120.i, 4 ; 2 uses
  %lftr.wideiv.i.3 = trunc i64 %indvars.iv.next121.i.3 to i32
  %exitcond123.not.i.3 = icmp eq i32 %.023, %lftr.wideiv.i.3
  br i1 %exitcond123.not.i.3, label %._crit_edge109.i, label %.lr.ph108.i, !llvm.loop !761

_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb.exit.loopexit: ; preds = %bb.l
  %.pre = load i32, ptr %i.e, align 8, !tbaa !522
  br label %_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb.exit

_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb.exit: ; preds = %_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb.exit.loopexit, %._crit_edge109.i
  %i.hh = phi i32 [ %.pre, %_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb.exit.loopexit ], [ %i.df, %._crit_edge109.i ] ; 2 uses
  %i.hi = add i32 %.023, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.hh, i32 %i.hi) ; 3 uses
  %9 = add i32 %umax, -1                          ; 2 uses
  %exitcond35.not65 = icmp eq i32 %.023, %9
  br i1 %exitcond35.not65, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb.exit
  %i.hj = load ptr, ptr %i.t, align 8, !tbaa !499 ; 2 uses
  br label %.lr.ph67

bb.m:                                             ; preds = %.lr.ph67
  %exitcond35.not = icmp eq i32 %10, %9
  br i1 %exitcond35.not, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15, label %.lr.ph67, !llvm.loop !533

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %bb.m
  %.0.i1466 = phi i32 [ %10, %bb.m ], [ %.023, %.lr.ph67.preheader ] ; 2 uses
  %10 = add i32 %.0.i1466, 1                      ; 4 uses
  %11 = zext i32 %.0.i1466 to i64
  %i.hk = getelementptr inbounds nuw [20 x i8], ptr %i.hj, i64 %11
  %12 = zext i32 %10 to i64
  %i.hl = getelementptr inbounds nuw [20 x i8], ptr %i.hj, i64 %12
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !523
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !523
  %i.hq = icmp eq i32 %i.hn, %i.hp
  br i1 %i.hq, label %bb.m, label %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15_crit_edge68, !llvm.loop !533

._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15_crit_edge68: ; preds = %.lr.ph67
  br label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15, !llvm.loop !533

_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15: ; preds = %bb.m, %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15_crit_edge68, %_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb.exit
  %.lcssa32 = phi i32 [ %umax, %_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb.exit ], [ %10, %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit15_crit_edge68 ], [ %umax, %bb.m ]
  %i.hr = icmp ult i32 %.023, %i.f
  br i1 %i.hr, label %.lr.ph.split, label %._crit_edge, !llvm.loop !758
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_buffer_t19_cluster_group_funcERK15hb_glyph_info_tS2_(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !523
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !523
  %i.e = icmp eq i32 %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11hb_buffer_t4sortEjjPFiPK15hb_glyph_info_tS2_E(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %struct.hb_glyph_info_t, align 4    ; 4 uses
  %.02122 = add i32 %1, 1                         ; 2 uses
  %i.a = icmp ult i32 %.02122, %2
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = zext i32 %.02122 to i64
  %i.f = zext i32 %1 to i64                       ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.i
  %indvars.iv = phi i64 [ %i.e, %.preheader.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 7 uses
  %.021.in23 = phi i32 [ %1, %.preheader.lr.ph ], [ %i.g, %bb.i ]
  %i.g = trunc nuw i64 %indvars.iv to i32         ; 3 uses
  %umin = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.g) ; 2 uses
  %i.h = icmp samesign ugt i64 %indvars.iv, %i.f
  br i1 %i.h, label %.lr.ph, label %.critedge

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph
  %i.i = icmp ugt i64 %i.k, %i.f
  br i1 %i.i, label %.lr.ph, label %.critedge, !llvm.loop !762

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %indvars.iv2534 = phi i64 [ %i.k, %bb.b ], [ %indvars.iv, %.preheader ] ; 2 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !499  ; 2 uses
  %i.k = add nsw i64 %indvars.iv2534, -1          ; 3 uses
  %i.l = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %i.k
  %i.m = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv
  %i.n = tail call noundef i32 %3(ptr noundef %i.l, ptr noundef nonnull %i.m) #63
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %.critedge.split.loop.exit31, !llvm.loop !762

.critedge.split.loop.exit31:                      ; preds = %.lr.ph
  %i.p = trunc nuw i64 %indvars.iv2534 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.preheader, %.critedge.split.loop.exit31
  %.0.lcssa = phi i32 [ %i.p, %.critedge.split.loop.exit31 ], [ %umin, %.preheader ], [ %umin, %bb.b ] ; 7 uses
  %i.q = zext i32 %.0.lcssa to i64                ; 3 uses
  %i.r = icmp eq i64 %indvars.iv, %i.q
  br i1 %i.r, label %bb.i, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.s = add i32 %.021.in23, 2                    ; 4 uses
  %i.t = sub i32 %i.s, %.0.lcssa                  ; 2 uses
  %i.u = icmp ult i32 %i.t, 2
  br i1 %i.u, label %_ZN11hb_buffer_t14merge_clustersEjj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.c, align 4, !tbaa !525
  %.not.i = icmp ugt i32 %i.v, 1
  br i1 %.not.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.w = icmp ne i32 %i.s, -1
  %i.x = icmp ugt i32 %i.t, 255
  %i.y = and i1 %i.w, %i.x
  br i1 %i.y, label %_ZN11hb_buffer_t14merge_clustersEjj.exit, label %bb.f, !prof !48

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %i.d, align 8, !tbaa !139
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.s, i32 %i.z) ; 2 uses
  %i.aa = sub i32 %.sroa.speculated.i.i, %.0.lcssa
  %i.ab = icmp ult i32 %i.aa, 2
  br i1 %i.ab, label %_ZN11hb_buffer_t14merge_clustersEjj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN11hb_buffer_t21_set_glyph_flags_implEjjjbb(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef 3, i32 noundef %.0.lcssa, i32 noundef %.sroa.speculated.i.i, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %_ZN11hb_buffer_t14merge_clustersEjj.exit

bb.h:                                             ; preds = %bb.d
  tail call void @_ZN11hb_buffer_t19merge_clusters_implEjj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %.0.lcssa, i32 noundef %i.s)
  br label %_ZN11hb_buffer_t14merge_clustersEjj.exit

_ZN11hb_buffer_t14merge_clustersEjj.exit:         ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !499 ; 3 uses
  %i.ad = getelementptr inbounds nuw [20 x i8], ptr %i.ac, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.ad, i64 20, i1 false), !tbaa.struct !526
  %i.ae = add i32 %.0.lcssa, 1
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [20 x i8], ptr %i.ac, i64 %i.af
  %i.ah = getelementptr inbounds nuw [20 x i8], ptr %i.ac, i64 %i.q
  %i.ai = sub i32 %i.g, %.0.lcssa
  %i.aj = zext i32 %i.ai to i64
  %i.ak = mul nuw nsw i64 %i.aj, 20
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ag, ptr align 4 %i.ah, i64 %i.ak, i1 false)
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !499
  %i.am = getelementptr inbounds nuw [20 x i8], ptr %i.al, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.am, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !526
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %_ZN11hb_buffer_t14merge_clustersEjj.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !763
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 256) i32 @hb_buffer_diff(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !619  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !619
  %.not = icmp eq i32 %i.b, %i.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !522 ; 6 uses
  br i1 %.not, label %._crit_edge115, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not70 = icmp eq i32 %.pre, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = load i32, ptr %i.e, align 8, !tbaa !522  ; 2 uses
  %.not73123 = icmp eq i32 %i.f, 0                ; 2 uses
  br i1 %.not70, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not73123, label %._crit_edge115, label %.loopexit

._crit_edge115:                                   ; preds = %bb.a, %bb.c
  %.not72 = icmp eq i32 %2, -1                    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.h = load i32, ptr %i.g, align 8, !tbaa !522  ; 3 uses
  %.not73 = icmp eq i32 %.pre, %i.h
  br i1 %.not73, label %bb.e, label %bb.d

.thread:                                          ; preds = %bb.b
  br i1 %.not73123, label %.loopexit, label %.thread129

.thread129:                                       ; preds = %.thread
  %.not72122 = icmp eq i32 %2, -1
  br i1 %.not72122, label %.loopexit, label %.critedge.preheader

bb.d:                                             ; preds = %._crit_edge115
  %.not108 = icmp eq i32 %i.h, 0
  %brmerge = or i1 %.not108, %.not72
  br i1 %brmerge, label %.loopexit, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.d, %.thread129
  %i.i = phi i32 [ %i.f, %.thread129 ], [ %i.h, %bb.d ] ; 3 uses
  %.in = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = load ptr, ptr %.in, align 8, !tbaa !499  ; 3 uses
  %wide.trip.count = zext i32 %i.i to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.k = icmp eq i32 %i.i, 1
  br i1 %i.k, label %.critedge.epil.preheader, label %.critedge.preheader.new

.critedge.preheader.new:                          ; preds = %.critedge.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.critedge

.critedge:                                        ; preds = %.critedge, %.critedge.preheader.new
  %indvars.iv = phi i64 [ 0, %.critedge.preheader.new ], [ %indvars.iv.next.1, %.critedge ] ; 3 uses
  %.09096 = phi i32 [ 0, %.critedge.preheader.new ], [ %spec.select94.1, %.critedge ] ; 2 uses
  %niter = phi i64 [ 0, %.critedge.preheader.new ], [ %niter.next.1, %.critedge ]
  %i.l = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !582  ; 2 uses
  %i.n = icmp eq i32 %i.m, %2
  %i.o = or i32 %.09096, 8
  %spec.select = select i1 %i.n, i32 %i.o, i32 %.09096 ; 2 uses
  %i.p = icmp eq i32 %i.m, 0
  %i.q = or i32 %spec.select, 4
  %spec.select94 = select i1 %i.p, i32 %i.q, i32 %spec.select ; 2 uses
  %i.r = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !582  ; 2 uses
  %i.u = icmp eq i32 %i.t, %2
  %i.v = or i32 %spec.select94, 8
  %spec.select.1 = select i1 %i.u, i32 %i.v, i32 %spec.select94 ; 2 uses
  %i.w = icmp eq i32 %i.t, 0
  %i.x = or i32 %spec.select.1, 4
  %spec.select94.1 = select i1 %i.w, i32 %i.x, i32 %spec.select.1 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK12hb_hashmap_tIjjLb1EE8is_equalERKS0_:bb.a
  br i1 %i.bn, label %"_ZNK4$_35clIRMN12hb_hashmap_tIjjLb1EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit_crit_edge", label %.preheader, !llvm.loop !1435

"_ZNK4$_35clIRMN12hb_hashmap_tIjjLb1EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit_crit_edge": ; preds = %"_ZNK4$_35clIRMN12hb_hashmap_tIjjLb1EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i"
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit", !llvm.loop !1435

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i, %"_ZNK4$_35clIRMN12hb_hashmap_tIjjLb1EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit_crit_edge", %.preheader.preheader
  %.sroa.721.2 = phi i32 [ 0, %.preheader.preheader ], [ %i.bj, %"_ZNK4$_35clIRMN12hb_hashmap_tIjjLb1EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit_crit_edge" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i ] ; 2 uses
  %.sroa.020.2 = phi ptr [ %scevgep, %.preheader.preheader ], [ %i.bk, %"_ZNK4$_35clIRMN12hb_hashmap_tIjjLb1EE6item_tEKFbvERS3_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit_crit_edge" ], [ %i.bk, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.020.2, %i.o
  %i.bo = icmp eq i32 %.sroa.721.2, 0
  %.not35 = and i1 %i.bo, %.not.i.i.i
  br i1 %.not35, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i, %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.us", %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.us", %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.us.thread", %bb.b, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ %i.s, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.us" ], [ true, %bb.b ], [ %.not9, %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit ], [ false, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.us.thread" ], [ %i.s, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EdeEv.exit.us" ], [ %.not9, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit" ], [ true, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @hb_map_hash(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.val.i = load i32, ptr %i.a, align 4, !tbaa !1421
  %i.b = add i32 %.val.i, 1                       ; 2 uses
  %.not15.i.i.i.i.i = icmp ult i32 %i.b, 2
  br i1 %.not15.i.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE4hashEv.exit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i = load ptr, ptr %i.c, align 8, !tbaa !1417
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i
  %.sroa.5.sroa.0.0.i = phi i32 [ %i.m, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i ], [ %i.b, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i ] ; 2 uses
  %.sroa.04.0.i = phi ptr [ %i.n, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i ], [ %.val1.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 4
  %i.e = load i32, ptr %i.d, align 4, !noalias !1437 ; 2 uses
  %i.f = trunc i32 %i.e to i1
  br i1 %i.f, label %"_ZN9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.us.i.i.preheader", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i

"_ZN9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.us.i.i.preheader": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i
  %i.g = lshr i32 %i.e, 2
  %i.h = mul i32 %i.g, 31
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 8
  %.val.i.i.i.us.i.i37 = load i32, ptr %i.i, align 4, !tbaa !139
  %i.j = mul i32 %.val.i.i.i.us.i.i37, -1640531535
  %i.k = add i32 %i.j, %i.h                       ; 2 uses
  %i.l = add i32 %.sroa.5.sroa.0.0.i, -1          ; 2 uses
  %.not.i.i.us.i.us.i.i3538 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.us.i.us.i.i3538, label %_ZNK12hb_hashmap_tIjjLb1EE4hashEv.exit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.us.i.us.i.i.lr.ph

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i
  %i.m = add i32 %.sroa.5.sroa.0.0.i, -1          ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 12
  %i.o = icmp eq i32 %i.m, 0
  br i1 %i.o, label %_ZNK12hb_hashmap_tIjjLb1EE4hashEv.exit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i, !llvm.loop !1432

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.us.i.us.i.i.lr.ph: ; preds = %"_ZN9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.us.i.i.preheader", %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EppEv.exit.i.loopexit.us.i.i"
  %i.p = phi i32 [ %i.ae, %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EppEv.exit.i.loopexit.us.i.i" ], [ %i.l, %"_ZN9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.us.i.i.preheader" ]
  %i.q = phi i32 [ %i.ad, %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EppEv.exit.i.loopexit.us.i.i" ], [ %i.k, %"_ZN9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.us.i.i.preheader" ] ; 2 uses
  %.us-phi79.i.us.i.i39 = phi ptr [ %i.u, %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EppEv.exit.i.loopexit.us.i.i" ], [ %.sroa.04.0.i, %"_ZN9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.us.i.i.preheader" ]
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.us.i.us.i.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.us.i.us.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.us.i.us.i.i
  %i.r = add i32 %i.s, -1                         ; 2 uses
  %.not.i.i.us.i.us.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.us.i.us.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE4hashEv.exit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.us.i.us.i.i, !llvm.loop !1435

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.us.i.us.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.us.i.us.i.i.lr.ph, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.us.i.us.i.i
  %i.s = phi i32 [ %i.p, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.us.i.us.i.i.lr.ph ], [ %i.r, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.us.i.us.i.i ] ; 2 uses
  %i.t = phi ptr [ %.us-phi79.i.us.i.i39, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.us.i.us.i.i.lr.ph ], [ %i.u, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.us.i.us.i.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = trunc i32 %i.w to i1
  br i1 %i.x, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EppEv.exit.i.loopexit.us.i.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.us.i.us.i.i, !llvm.loop !1435

"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EppEv.exit.i.loopexit.us.i.i": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.us.i.us.i.i
  %i.y = lshr i32 %i.w, 2
  %i.z = mul i32 %i.y, 31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.val.i.i.i.us.i.i = load i32, ptr %i.aa, align 4, !tbaa !139
  %i.ab = mul i32 %.val.i.i.i.us.i.i, -1640531535
  %i.ac = add i32 %i.ab, %i.z
  %i.ad = xor i32 %i.ac, %i.q                     ; 2 uses
  %i.ae = add i32 %i.s, -1                        ; 2 uses
  %.not.i.i.us.i.us.i.i35 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.us.i.us.i.i35, label %_ZNK12hb_hashmap_tIjjLb1EE4hashEv.exit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.us.i.us.i.i.lr.ph, !llvm.loop !1444

_ZNK12hb_hashmap_tIjjLb1EE4hashEv.exit:           ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i, %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EppEv.exit.i.loopexit.us.i.i", %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.us.i.us.i.i, %"_ZN9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.us.i.i.preheader", %bb.a
  %.0.lcssa.i.i.i = phi i32 [ %i.q, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.us.i.us.i.i ], [ 0, %bb.a ], [ %i.ad, %"_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EppEv.exit.i.loopexit.us.i.i" ], [ %i.k, %"_ZN9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.us.i.i.preheader" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i ]
  ret i32 %.0.lcssa.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_map_update(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.hb_pair_t.792, align 8      ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1414, !range !220, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN12hb_hashmap_tIjjLb1EE6updateERKS0_.exit, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val.i.i = load i32, ptr %i.d, align 4, !tbaa !1421
  %i.e = add i32 %.val.i.i, 1                     ; 2 uses
  %.not15.i.i.i.i.i.i.i.i = icmp ult i32 %i.e, 2
  br i1 %.not15.i.i.i.i.i.i.i.i, label %_ZN12hb_hashmap_tIjjLb1EE6updateERKS0_.exit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val2.i.i = load ptr, ptr %i.f, align 8, !tbaa !1417
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i.i
  %.sroa.5.sroa.0.0.i.i.i.i = phi i32 [ %i.j, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i.i ], [ %i.e, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi ptr [ %i.k, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i.i ], [ %.val2.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i.i ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noalias !1445
  %i.i = trunc i32 %i.h to i1
  br i1 %i.i, label %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.lr.ph.i.split.us.i.i.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i.i
  %i.j = add i32 %.sroa.5.sroa.0.0.i.i.i.i, -1    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i, i64 12
  %i.l = icmp eq i32 %i.j, 0
  br i1 %i.l, label %_ZN12hb_hashmap_tIjjLb1EE6updateERKS0_.exit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i.i, !llvm.loop !1432

"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.lr.ph.i.split.us.i.i.i": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.n = load i32, ptr %.sroa.02.0.i.i.i.i, align 4, !tbaa !1436 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1433
  %.sroa.2.0.insert.ext.i.i.i25 = zext i32 %i.p to i64
  %.sroa.2.0.insert.shift.i.i.i26 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i25, 32
  %.sroa.0.0.insert.ext.i.i.i27 = zext i32 %i.n to i64
  %.sroa.0.0.insert.insert.i.i.i28 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i26, %.sroa.0.0.insert.ext.i.i.i27
  store i64 %.sroa.0.0.insert.insert.i.i.i28, ptr %2, align 8
  %i.q = mul i32 %i.n, -1640531535
  %i.r = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjS3_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.m, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  %i.s = add i32 %.sroa.5.sroa.0.0.i.i.i.i, -1    ; 2 uses
  %.not.i.i.i.i.us.i.us.us.i.i.i2429 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.us.i.us.us.i.i.i2429, label %_ZN12hb_hashmap_tIjjLb1EE6updateERKS0_.exit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.us.i.us.us.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.us.i.us.us.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.us.i.us.us.i.i.i
  %i.t = add i32 %i.u, -1                         ; 2 uses
  %.not.i.i.i.i.us.i.us.us.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.us.i.us.us.i.i.i, label %_ZN12hb_hashmap_tIjjLb1EE6updateERKS0_.exit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.us.i.us.us.i.i.i.backedge

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.us.i.us.us.i.i.i.backedge: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.us.i.us.us.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i.loopexit.us.us.i.i.i"
  %.be = phi i32 [ %i.t, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.us.i.us.us.i.i.i ], [ %i.af, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i.loopexit.us.us.i.i.i" ]
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.us.i.us.us.i.i.i, !llvm.loop !1456

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.us.i.us.us.i.i.i: ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.lr.ph.i.split.us.i.i.i", %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.us.i.us.us.i.i.i.backedge
  %i.u = phi i32 [ %.be, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.us.i.us.us.i.i.i.backedge ], [ %i.s, %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.lr.ph.i.split.us.i.i.i" ] ; 2 uses
  %i.v = phi ptr [ %i.w, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.us.i.us.us.i.i.i.backedge ], [ %.sroa.02.0.i.i.i.i, %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.lr.ph.i.split.us.i.i.i" ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = load i32, ptr %i.x, align 4
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i.loopexit.us.us.i.i.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.us.i.us.us.i.i.i, !llvm.loop !1435

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i.loopexit.us.us.i.i.i": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.us.i.us.us.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.aa = load i32, ptr %i.w, align 4, !tbaa !1436 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !1433
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.ac to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.aa to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %2, align 8
  %i.ad = mul i32 %i.aa, -1640531535
  %i.ae = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjS3_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.m, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  %i.af = add i32 %i.u, -1                        ; 2 uses
  %.not.i.i.i.i.us.i.us.us.i.i.i24 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.us.i.us.us.i.i.i24, label %_ZN12hb_hashmap_tIjjLb1EE6updateERKS0_.exit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.us.i.us.us.i.i.i.backedge

_ZN12hb_hashmap_tIjjLb1EE6updateERKS0_.exit:      ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_KF9hb_pair_tIjjEvEL24hb_function_sortedness_t0ELSC_0EESF_EppEv.exit.i.loopexit.us.us.i.i.i", %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.us.i.us.us.i.i.i, %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.lr.ph.i.split.us.i.i.i", %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @hb_map_next(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1421
  %.fr.i = freeze i32 %i.b                        ; 2 uses
  %.not.i.not.i = icmp eq i32 %.fr.i, 0
  %i.c = add i32 %.fr.i, 1                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  br i1 %.not.i.not.i, label %_ZNK12hb_hashmap_tIjjLb1EE4nextEPiPjS2_.exit, label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.a
  %i.f = load i32, ptr %1, align 4, !tbaa !139
  %.0.i8 = add i32 %i.f, 1                        ; 2 uses
  %i.g = icmp ugt i32 %i.c, %.0.i8
  br i1 %i.g, label %.lr.ph, label %_ZNK12hb_hashmap_tIjjLb1EE4nextEPiPjS2_.exit

.split.i:                                         ; preds = %.lr.ph
  %.0.i = add i32 %.0.i9, 1                       ; 2 uses
  %i.h = icmp ugt i32 %i.c, %.0.i
  br i1 %i.h, label %.lr.ph, label %_ZNK12hb_hashmap_tIjjLb1EE4nextEPiPjS2_.exit, !llvm.loop !1457

.lr.ph:                                           ; preds = %.split.preheader.i, %.split.i
  %.0.i9 = phi i32 [ %.0.i, %.split.i ], [ %.0.i8, %.split.preheader.i ] ; 3 uses
  %4 = zext i32 %.0.i9 to i64
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = trunc i32 %i.k to i1
  br i1 %i.l, label %bb.b, label %.split.i, !llvm.loop !1457

bb.b:                                             ; preds = %.lr.ph
  %i.m = load i32, ptr %i.i, align 4, !tbaa !1436
  store i32 %i.m, ptr %2, align 4, !tbaa !139
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !1433
  store i32 %i.o, ptr %3, align 4, !tbaa !139
  br label %_ZNK12hb_hashmap_tIjjLb1EE4nextEPiPjS2_.exit

_ZNK12hb_hashmap_tIjjLb1EE4nextEPiPjS2_.exit:     ; preds = %.split.i, %.split.preheader.i, %bb.a, %bb.b
  %i.p = phi i32 [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %.split.preheader.i ], [ 0, %.split.i ]
  %storemerge.i = phi i32 [ %.0.i9, %bb.b ], [ -1, %bb.a ], [ -1, %.split.preheader.i ], [ -1, %.split.i ]
  store i32 %storemerge.i, ptr %1, align 4, !tbaa !139
  ret i32 %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_map_keys(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.hb_map_iter_t.322, align 8  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.a = getelementptr i8, ptr %0, i64 28
  %.val = load i32, ptr %i.a, align 4, !tbaa !1421 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 40
  %.val2 = load ptr, ptr %i.b, align 8, !tbaa !1417 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  %i.c = add i32 %.val, 1                         ; 3 uses
  %.not15.i.i.i.i.i.i = icmp ult i32 %i.c, 2
  br i1 %.not15.i.i.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE4keysEv.exit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i: ; preds = %bb.a
  %i.d = zext i32 %.val to i64
  %i.e = mul nuw nsw i64 %i.d, 12
  %i.f = getelementptr i8, ptr %.val2, i64 %i.e
  %scevgep.i.i = getelementptr i8, ptr %i.f, i64 12
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i
  %.sroa.5.sroa.5.0.i.i = phi i32 [ %i.k, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i ], [ 0, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.5.sroa.0.0.i.i = phi i32 [ %i.j, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i ], [ %i.c, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.02.0.i.i = phi ptr [ %i.l, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i ], [ %.val2, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noalias !1461
  %i.i = trunc i32 %i.h to i1
  br i1 %i.i, label %_ZNK12hb_hashmap_tIjjLb1EE10iter_itemsEv.exit.loopexit.i.i, label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i
  %i.j = add i32 %.sroa.5.sroa.0.0.i.i, -1        ; 2 uses
  %i.k = add nuw i32 %.sroa.5.sroa.5.0.i.i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 12
  %i.m = icmp eq i32 %i.j, 0
  br i1 %i.m, label %_ZNK12hb_hashmap_tIjjLb1EE10iter_itemsEv.exit.loopexit.i.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i, !llvm.loop !1432

_ZNK12hb_hashmap_tIjjLb1EE10iter_itemsEv.exit.loopexit.i.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i
  %.sroa.5.sroa.5.1.ph.i.i = phi i32 [ %.sroa.5.sroa.5.0.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i ], [ %i.c, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i ]
  %.sroa.5.sroa.0.1.ph.i.i = phi i32 [ %.sroa.5.sroa.0.0.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i ]
  %.sroa.02.1.ph.i.i = phi ptr [ %.sroa.02.0.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i ], [ %scevgep.i.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i ]
  %i.n = zext i32 %.sroa.5.sroa.5.1.ph.i.i to i64
  %i.o = shl nuw i64 %i.n, 32
  %i.p = zext i32 %.sroa.5.sroa.0.1.ph.i.i to i64
  %i.q = or disjoint i64 %i.o, %i.p
  br label %_ZNK12hb_hashmap_tIjjLb1EE4keysEv.exit

_ZNK12hb_hashmap_tIjjLb1EE4keysEv.exit:           ; preds = %bb.a, %_ZNK12hb_hashmap_tIjjLb1EE10iter_itemsEv.exit.loopexit.i.i
  %.sroa.02.1.i.i = phi ptr [ %.val2, %bb.a ], [ %.sroa.02.1.ph.i.i, %_ZNK12hb_hashmap_tIjjLb1EE10iter_itemsEv.exit.loopexit.i.i ]
  %.sroa.5.sroa.0.0.insert.insert.i.i = phi i64 [ 0, %bb.a ], [ %i.q, %_ZNK12hb_hashmap_tIjjLb1EE10iter_itemsEv.exit.loopexit.i.i ]
  store ptr %.sroa.02.1.i.i, ptr %2, align 8, !alias.scope !1458
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.5.sroa.0.0.insert.insert.i.i, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !1458
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 ptrtoint (ptr @_ZNK12hb_hashmap_tIjjLb1EE6item_t7is_realEv to i64), ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !1458
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %.sroa.65.0..sroa_idx.i, align 8, !alias.scope !1458
  %.sroa.76.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @_ZL11hb_identity, ptr %.sroa.76.0..sroa_idx.i, align 8, !alias.scope !1458
  %.sroa.87.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 ptrtoint (ptr @_ZN12hb_hashmap_tIjjLb1EE6item_t7get_keyEv to i64), ptr %.sroa.87.0..sroa_idx.i, align 8, !alias.scope !1458
  %.sroa.98.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 0, ptr %.sroa.98.0..sroa_idx.i, align 8, !alias.scope !1458
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @_ZL12hb_ridentity, ptr %i.r, align 8, !tbaa !1470, !alias.scope !1472
  call fastcc void @"_Z7hb_copyI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK3$_9LSH_0ELSC_0EER8hb_set_tEvOT_OT0_"(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_Z7hb_copyI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK3$_9LSH_0ELSC_0EER8hb_set_tEvOT_OT0_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #16 {
bb.a:
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.not9.i.i = icmp eq i32 %.sroa.4.0.copyload, 0
  br i1 %.not9.i.i, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK3$_9LSH_0ELSC_0EE9hb_sink_tIR8hb_set_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELSC_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.i"

"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.i": ; preds = %bb.a
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.53.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx, align 8
  %i.a = and i64 %.sroa.74.0.copyload, 1
  %.not.i.i.i.i4.i.i.i.i.i.i = icmp eq i64 %i.a, 0 ; 2 uses
  %i.b = inttoptr i64 %.sroa.74.0.copyload to ptr ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %.val.i.i.i.i.i.i.fr.i.i = freeze i64 %.sroa.53.0.copyload ; 4 uses
  %i.e = and i64 %.val.i.i.i.i.i.i.fr.i.i, 1
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  %i.f = inttoptr i64 %.val.i.i.i.i.i.i.fr.i.i to ptr ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.split.us.i", label %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.split.i"

"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.split.us.i": ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.i"
  br i1 %.not.i.i.i.i4.i.i.i.i.i.i, label %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.i.i.i.us.us.i", label %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.i.i.i.us.i"

"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.i.i.i.us.us.i": ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.split.us.i", %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK3$_9LSH_0ELSC_0EEjEppEv.exit.i.loopexit.us.us.i"
  %.us-phi5711.i.us.us.i = phi i32 [ %i.m, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK3$_9LSH_0ELSC_0EEjEppEv.exit.i.loopexit.us.us.i" ], [ %.sroa.4.0.copyload, %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.split.us.i" ]
  %.us-phi810.i.us.us.i = phi ptr [ %i.o, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK3$_9LSH_0ELSC_0EEjEppEv.exit.i.loopexit.us.us.i" ], [ %.sroa.02.0.copyload, %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.split.us.i" ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.us-phi810.i.us.us.i, i64 %.sroa.8.0.copyload
  %i.h = tail call noundef nonnull align 4 dereferenceable(4) ptr %i.b(ptr noundef nonnull align 4 dereferenceable(12) %i.g) #63, !inline_history !1477
  %.val1.i.i.i.us.us.i = load i32, ptr %i.h, align 4, !tbaa !139 ; 2 uses
  %i.i = load i8, ptr %i.d, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.b, !prof !48

bb.b:                                             ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.i.i.i.us.us.i"
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.c, i32 noundef %.val1.i.i.i.us.us.i)
  br label %_ZN8hb_set_tlsEj.exit.i.us.us.i

bb.c:                                             ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.i.i.i.us.us.i"
  tail call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.c, i32 noundef %.val1.i.i.i.us.us.i)
  br label %_ZN8hb_set_tlsEj.exit.i.us.us.i

_ZN8hb_set_tlsEj.exit.i.us.us.i:                  ; preds = %bb.c, %bb.b
  %i.k = add i32 %.us-phi5711.i.us.us.i, -1       ; 2 uses
  %.not.i.i.i.i.i.i.us.i.us.us.i55 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.us.i.us.us.i55, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK3$_9LSH_0ELSC_0EE9hb_sink_tIR8hb_set_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELSC_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.i.i.us.i.us.us.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.i.i.us.i.us.us.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.i.i.us.i.us.us.i
  %i.l = add i32 %i.m, -1                         ; 2 uses
  %.not.i.i.i.i.i.i.us.i.us.us.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.us.i.us.us.i, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK3$_9LSH_0ELSC_0EE9hb_sink_tIR8hb_set_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELSC_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.i.i.us.i.us.us.i, !llvm.loop !1435

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.i.i.us.i.us.us.i: ; preds = %_ZN8hb_set_tlsEj.exit.i.us.us.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.i.i.us.i.us.us.i
  %i.m = phi i32 [ %i.l, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.i.i.us.i.us.us.i ], [ %i.k, %_ZN8hb_set_tlsEj.exit.i.us.us.i ] ; 2 uses
  %i.n = phi ptr [ %i.o, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.i.i.us.i.us.us.i ], [ %.us-phi810.i.us.us.i, %_ZN8hb_set_tlsEj.exit.i.us.us.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %.sroa.6.0.copyload
  %i.q = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 4 dereferenceable(12) %i.p) #63, !inline_history !1478
  br i1 %i.q, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK3$_9LSH_0ELSC_0EEjEppEv.exit.i.loopexit.us.us.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.i.i.us.i.us.us.i, !llvm.loop !1435

"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK3$_9LSH_0ELSC_0EEjEppEv.exit.i.loopexit.us.us.i": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.i.i.us.i.us.us.i
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.i.i.i.us.us.i", !llvm.loop !1479

"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.i.i.i.us.i": ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.split.us.i", %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK3$_9LSH_0ELSC_0EEjEppEv.exit.i.loopexit.us.i"
  %.us-phi5711.i.us.i = phi i32 [ %i.ab, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK3$_9LSH_0ELSC_0EEjEppEv.exit.i.loopexit.us.i" ], [ %.sroa.4.0.copyload, %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.split.us.i" ]
  %.us-phi810.i.us.i = phi ptr [ %i.ad, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK3$_9LSH_0ELSC_0EEjEppEv.exit.i.loopexit.us.i" ], [ %.sroa.02.0.copyload, %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.split.us.i" ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.us-phi810.i.us.i, i64 %.sroa.8.0.copyload ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1480
  %i.t = getelementptr i8, ptr %i.s, i64 %.sroa.74.0.copyload
  %i.u = getelementptr i8, ptr %i.t, i64 -1
  %i.v = load ptr, ptr %i.u, align 8, !nosanitize !74
  %i.w = tail call noundef nonnull align 4 dereferenceable(4) ptr %i.v(ptr noundef nonnull align 4 dereferenceable(12) %i.r) #63, !inline_history !1477
  %.val1.i.i.i.us.i = load i32, ptr %i.w, align 4, !tbaa !139 ; 2 uses
  %i.x = load i8, ptr %i.d, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.d, !prof !48

bb.d:                                             ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.i.i.i.us.i"
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.c, i32 noundef %.val1.i.i.i.us.i)
  br label %_ZN8hb_set_tlsEj.exit.i.us.i

bb.e:                                             ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK3$_8LPv0EERS4_EdeEv.exit.i.i.i.i.i.us.i"
  tail call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.c, i32 noundef %.val1.i.i.i.us.i)
  br label %_ZN8hb_set_tlsEj.exit.i.us.i

_ZN8hb_set_tlsEj.exit.i.us.i:                     ; preds = %bb.e, %bb.d
  %i.z = add i32 %.us-phi5711.i.us.i, -1          ; 2 uses
  %.not.i.i.i.i.i.i.us.i.us.i54 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.us.i.us.i54, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK3$_9LSH_0ELSC_0EE9hb_sink_tIR8hb_set_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELSC_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.i.i.us.i.us.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.i.i.us.i.us.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.i.i.us.i.us.i
  %i.aa = add i32 %i.ab, -1                       ; 2 uses
  %.not.i.i.i.i.i.i.us.i.us.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.us.i.us.i, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK3$_9LSH_0ELSC_0EE9hb_sink_tIR8hb_set_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELSC_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.i.i.us.i.us.i, !llvm.loop !1435

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.i.i.us.i.us.i: ; preds = %_ZN8hb_set_tlsEj.exit.i.us.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.i.i.us.i.us.i
  %i.ab = phi i32 [ %i.aa, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.i.i.us.i.us.i ], [ %i.z, %_ZN8hb_set_tlsEj.exit.i.us.i ] ; 2 uses
  %i.ac = phi ptr [ %i.ad, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.i.i.us.i.us.i ], [ %.us-phi810.i.us.i, %_ZN8hb_set_tlsEj.exit.i.us.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12 ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.sroa.6.0.copyload
  %i.af = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 4 dereferenceable(12) %i.ae) #63, !inline_history !1478
  br i1 %i.af, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK3$_9LSH_0ELSC_0EEjEppEv.exit.i.loopexit.us.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.i.i.us.i.us.i, !llvm.loop !1435
end_hunk_3
begin_hunk_4_@_hb_ot_shape:bb.a
  store i32 0, ptr %i.du, align 4, !tbaa !578
  %i.dv = load ptr, ptr %i.cx, align 8, !tbaa !499 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 9 uses
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !579
  store i32 0, ptr %i.dt, align 4, !tbaa !630
  %.sroa.0.0.copyload.i.i = load i32, ptr %7, align 4, !tbaa !139
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.dx = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dz = load <2 x i32>, ptr %i.dy, align 4, !tbaa !139
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8
  %i.ec = icmp ugt i32 %i.eb, 1
  br i1 %i.ec, label %.thread46.i.i, label %_ZN11hb_buffer_t6ensureEj.exit.i.i.i.i, !prof !49

_ZN11hb_buffer_t6ensureEj.exit.i.i.i.i:           ; preds = %bb.w
  %i.ed = call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %2, i32 noundef 1)
  br i1 %i.ed, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i.i.i, label %_ZN11hb_buffer_t11output_infoERK15hb_glyph_info_t.exit.i.i, !prof !124

_ZN11hb_buffer_t6ensureEj.exit.thread.i.i.i.i:    ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i.i.i.i
  %.pre4.pre.i.i.i = load i32, ptr %i.du, align 4, !tbaa !578 ; 5 uses
  %.pre.i.i = load ptr, ptr %i.dw, align 8, !tbaa !579 ; 3 uses
  %.pre26.i.i = load ptr, ptr %i.cx, align 8, !tbaa !499 ; 2 uses
  %i.ee = icmp eq ptr %.pre.i.i, %.pre26.i.i
  br i1 %i.ee, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i.i.i
  %i.ef = add i32 %.pre4.pre.i.i.i, 1
  %i.eg = load i32, ptr %i.dt, align 4, !tbaa !630
  %i.eh = icmp ugt i32 %i.ef, %i.eg
  br i1 %i.eh, label %bb.y, label %bb.aa

.thread46.i.i:                                    ; preds = %bb.w
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !527 ; 2 uses
  store ptr %i.ej, ptr %i.dw, align 8, !tbaa !579
  br label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !527 ; 3 uses
  store ptr %i.el, ptr %i.dw, align 8, !tbaa !579
  %.not.i4.i.i.i.i = icmp eq i32 %.pre4.pre.i.i.i, 0
  br i1 %.not.i4.i.i.i.i, label %bb.aa, label %bb.z, !prof !124

bb.z:                                             ; preds = %bb.y
  %i.em = zext i32 %.pre4.pre.i.i.i to i64
  %i.en = mul nuw nsw i64 %i.em, 20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.el, ptr readonly align 1 %.pre26.i.i, i64 %i.en, i1 false), !alias.scope !2113
  %.pre.i.i.i = load ptr, ptr %i.dw, align 8, !tbaa !579
  %.pre3.i.i.i = load i32, ptr %i.du, align 4, !tbaa !578
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %.thread46.i.i, %bb.x, %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i.i.i
  %i.eo = phi i32 [ %.pre4.pre.i.i.i, %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i.i.i ], [ %.pre4.pre.i.i.i, %bb.x ], [ 0, %bb.y ], [ %.pre3.i.i.i, %bb.z ], [ 0, %.thread46.i.i ]
  %i.ep = phi ptr [ %.pre.i.i, %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i.i.i ], [ %.pre.i.i, %bb.x ], [ %i.el, %bb.y ], [ %.pre.i.i.i, %bb.z ], [ %i.ej, %.thread46.i.i ]
  %i.eq = zext i32 %i.eo to i64
  %i.er = getelementptr inbounds nuw [20 x i8], ptr %i.ep, i64 %i.eq ; 3 uses
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.er, align 4, !tbaa !139
  %.sroa.4.0..sroa_idx20.i.i = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  store <2 x i32> %i.dz, ptr %.sroa.4.0..sroa_idx20.i.i, align 4, !tbaa !139
  %.sroa.6.0..sroa_idx24.i.i = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  store i64 %i.dx, ptr %.sroa.6.0..sroa_idx24.i.i, align 4
  %i.es = load i32, ptr %i.du, align 4, !tbaa !578
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %i.du, align 4, !tbaa !578
  br label %_ZN11hb_buffer_t11output_infoERK15hb_glyph_info_t.exit.i.i

_ZN11hb_buffer_t11output_infoERK15hb_glyph_info_t.exit.i.i: ; preds = %bb.aa, %_ZN11hb_buffer_t6ensureEj.exit.i.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ev = load i8, ptr %i.eu, align 8, !tbaa !496, !range !220, !noundef !74
  %i.ew = trunc nuw i8 %i.ev to i1
  %.pre31.i.i = load ptr, ptr %i.cx, align 8, !tbaa !499 ; 5 uses
  br i1 %i.ew, label %bb.ab, label %_ZN11hb_buffer_t4syncEv.exit.i.i, !prof !49

bb.ab:                                            ; preds = %_ZN11hb_buffer_t11output_infoERK15hb_glyph_info_t.exit.i.i
  %i.ex = load i32, ptr %i.l, align 8, !tbaa !522
  %i.ey = load i32, ptr %i.dt, align 4, !tbaa !630 ; 4 uses
  %i.ez = sub i32 %i.ex, %i.ey                    ; 3 uses
  %i.fa = load i8, ptr %i.dr, align 1, !tbaa !577, !range !220, !noundef !74
  %i.fb = trunc nuw i8 %i.fa to i1
  %.pre28.i.i = load ptr, ptr %i.dw, align 8, !tbaa !579 ; 4 uses
  br i1 %i.fb, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i14.i.i = icmp eq ptr %.pre28.i.i, %.pre31.i.i
  %i.fc = load i32, ptr %i.du, align 4, !tbaa !578 ; 3 uses
  %.not5.i.i.i.i = icmp eq i32 %i.fc, %i.ey
  %or.cond.i.i.i.i = select i1 %.not.i.i14.i.i, i1 %.not5.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.ad, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.ac
  %i.fd = add i32 %i.fc, %i.ez                    ; 3 uses
  %.not.i.i.i15.i.i = icmp eq i32 %i.fd, 0
  %i.fe = load i32, ptr %i.ea, align 8
  %i.ff = icmp ult i32 %i.fd, %i.fe
  %i.fg = select i1 %.not.i.i.i15.i.i, i1 true, i1 %i.ff
  br i1 %i.fg, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i18.i.i, label %_ZN11hb_buffer_t6ensureEj.exit.i.i16.i.i, !prof !49

_ZN11hb_buffer_t6ensureEj.exit.i.i16.i.i:         ; preds = %._crit_edge.i.i.i.i
  %i.fh = call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %2, i32 noundef %i.fd)
  %.pre32.i.i = load ptr, ptr %i.cx, align 8, !tbaa !499 ; 2 uses
  br i1 %i.fh, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i.i.i, label %_ZN11hb_buffer_t4syncEv.exit.i.i, !prof !124

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i.i.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i.i16.i.i
  %.pre6.i.i.i.i = load ptr, ptr %i.dw, align 8, !tbaa !579
  %.pre7.i.i.i.i = load i32, ptr %i.du, align 4, !tbaa !578
  %.pre.i17.i.i = load i32, ptr %i.dt, align 4, !tbaa !630
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i18.i.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i.i18.i.i:  ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i.i.i, %._crit_edge.i.i.i.i
  %i.fi = phi i32 [ %.pre.i17.i.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i.i.i ], [ %i.ey, %._crit_edge.i.i.i.i ]
  %i.fj = phi ptr [ %.pre32.i.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i.i.i ], [ %.pre31.i.i, %._crit_edge.i.i.i.i ]
  %i.fk = phi i32 [ %.pre7.i.i.i.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i.i.i ], [ %i.fc, %._crit_edge.i.i.i.i ]
  %i.fl = phi ptr [ %.pre6.i.i.i.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i.i.i.i ], [ %.pre28.i.i, %._crit_edge.i.i.i.i ]
  %i.fm = zext i32 %i.fk to i64
  %i.fn = getelementptr inbounds nuw [20 x i8], ptr %i.fl, i64 %i.fm
  %i.fo = zext i32 %i.fi to i64
  %i.fp = getelementptr inbounds nuw [20 x i8], ptr %i.fj, i64 %i.fo
  %i.fq = zext i32 %i.ez to i64
  %i.fr = mul nuw nsw i64 %i.fq, 20
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.fn, ptr align 4 %i.fp, i64 %i.fr, i1 false)
  %.pre10.i.i.i.i = load i32, ptr %i.du, align 4, !tbaa !578
  %.pre27.pre.i.i = load ptr, ptr %i.dw, align 8, !tbaa !579
  %.pre29.pre.i.i = load ptr, ptr %i.cx, align 8, !tbaa !499
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i18.i.i, %bb.ac
  %.pre29.i.i = phi ptr [ %.pre29.pre.i.i, %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i18.i.i ], [ %.pre31.i.i, %bb.ac ]
  %.pre27.i.i = phi ptr [ %.pre27.pre.i.i, %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i18.i.i ], [ %.pre28.i.i, %bb.ac ]
  %i.fs = phi i32 [ %.pre10.i.i.i.i, %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i18.i.i ], [ %i.ey, %bb.ac ]
  %i.ft = add i32 %i.fs, %i.ez
  store i32 %i.ft, ptr %i.du, align 4, !tbaa !578
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %i.fu = phi ptr [ %.pre29.i.i, %bb.ad ], [ %.pre31.i.i, %bb.ab ] ; 3 uses
  %i.fv = phi ptr [ %.pre27.i.i, %bb.ad ], [ %.pre28.i.i, %bb.ab ] ; 3 uses
  %.not.i.i28.i = icmp eq ptr %i.fv, %i.fu
  br i1 %.not.i.i28.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 128
  store ptr %i.fu, ptr %i.fw, align 8, !tbaa !527
  store ptr %i.fv, ptr %i.cx, align 8, !tbaa !499
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fx = phi ptr [ %i.fv, %bb.af ], [ %i.fu, %bb.ae ]
  %i.fy = load i32, ptr %i.du, align 4, !tbaa !578
  store i32 %i.fy, ptr %i.l, align 8, !tbaa !522
  br label %_ZN11hb_buffer_t4syncEv.exit.i.i

_ZN11hb_buffer_t4syncEv.exit.i.i:                 ; preds = %bb.ag, %_ZN11hb_buffer_t6ensureEj.exit.i.i16.i.i, %_ZN11hb_buffer_t11output_infoERK15hb_glyph_info_t.exit.i.i
  %i.fz = phi ptr [ %.pre31.i.i, %_ZN11hb_buffer_t11output_infoERK15hb_glyph_info_t.exit.i.i ], [ %.pre32.i.i, %_ZN11hb_buffer_t6ensureEj.exit.i.i16.i.i ], [ %i.fx, %bb.ag ]
  store i8 0, ptr %i.dr, align 1, !tbaa !577
  store i32 0, ptr %i.du, align 4, !tbaa !578
  store ptr %i.fz, ptr %i.dw, align 8, !tbaa !579
  store i32 0, ptr %i.dt, align 4, !tbaa !630
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #63
  br label %_ZL23hb_insert_dotted_circleP11hb_buffer_tP9hb_font_t.exit.i

_ZL23hb_insert_dotted_circleP11hb_buffer_tP9hb_font_t.exit.i: ; preds = %_ZN11hb_buffer_t4syncEv.exit.i.i, %_ZN9hb_font_t9has_glyphEj.exit.i.i, %bb.t, %bb.s, %_ZL20hb_set_unicode_propsP11hb_buffer_t.exit.i
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 6 uses
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !521
  %i.gc = and i32 %i.gb, 128
  %.not.i29.i = icmp eq i32 %i.gc, 0
  br i1 %.not.i29.i, label %_ZL16hb_form_clustersP11hb_buffer_t.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZL23hb_insert_dotted_circleP11hb_buffer_tP9hb_font_t.exit.i
  %i.gd = load i32, ptr %i.l, align 8, !tbaa !522 ; 6 uses
  %.not12.i.i = icmp eq i32 %i.gd, 0
  br i1 %.not12.i.i, label %_ZL16hb_form_clustersP11hb_buffer_t.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.gf = add i32 %i.gd, -1                       ; 2 uses
  %wide.trip.count.i.i = zext i32 %i.gf to i64
  %exitcond.not.i.i191 = icmp eq i32 %i.gf, 0
  br i1 %exitcond.not.i.i191, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.i.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ai
  %i.gg = load ptr, ptr %i.ge, align 8, !tbaa !499
  br label %.lr.ph

bb.aj:                                            ; preds = %.lr.ph
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i.a, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.i.i, label %.lr.ph, !llvm.loop !533

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.aj
  %indvars.iv.i.i192 = phi i64 [ %indvars.iv.next.i.i.a, %bb.aj ], [ 0, %.lr.ph.preheader ]
  %indvars.iv.next.i.i.a = add nuw nsw i64 %indvars.iv.i.i192, 1 ; 4 uses
  %i.gh = getelementptr inbounds nuw [20 x i8], ptr %i.gg, i64 %indvars.iv.next.i.i.a
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %.val.i.i.i = load i16, ptr %i.gi, align 4, !tbaa !61
  %i.gj = and i16 %.val.i.i.i, 128
  %.not16.i.i.a = icmp eq i16 %i.gj, 0
  br i1 %.not16.i.i.a, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit.i.i, label %bb.aj, !llvm.loop !533

_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit.i.i: ; preds = %.lr.ph
  %i.gk = trunc nuw i64 %indvars.iv.next.i.i.a to i32
  br label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.i.i

_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.i.i: ; preds = %bb.aj, %bb.ai, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit.i.i
  %i.gl = phi i32 [ %i.gk, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit.i.i ], [ %i.gd, %bb.ai ], [ %i.gd, %bb.aj ]
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 28
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit14.i.i, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.i.i
  %i.gn = phi i32 [ %i.gd, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.i.i ], [ %i.gy, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit14.i.i ]
  %.020.i.i = phi i32 [ %i.gl, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.i.i ], [ %.lcssa.i.i, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit14.i.i ] ; 9 uses
  %.01119.i.i = phi i32 [ 0, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.i.i ], [ %.020.i.i, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit14.i.i ] ; 4 uses
  %i.go = sub i32 %.020.i.i, %.01119.i.i          ; 2 uses
  %i.gp = icmp ult i32 %i.go, 2
  br i1 %i.gp, label %_ZN11hb_buffer_t23merge_grapheme_clustersEjj.exit.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gq = load i32, ptr %i.gm, align 4, !tbaa !525
  %i.gr = shl nuw i32 1, %i.gq
  %i.gs = and i32 %i.gr, 9
  %.not.i.i31.i = icmp eq i32 %i.gs, 0
  br i1 %.not.i.i31.i, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.gt = icmp ne i32 %.020.i.i, -1
  %i.gu = icmp ugt i32 %i.go, 255
  %i.gv = and i1 %i.gt, %i.gu
  br i1 %i.gv, label %_ZN11hb_buffer_t23merge_grapheme_clustersEjj.exit.i.i, label %bb.an, !prof !48

bb.an:                                            ; preds = %bb.am
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %.020.i.i, i32 %i.gn) ; 2 uses
  %i.gw = sub i32 %.sroa.speculated.i.i.i.i, %.01119.i.i
  %i.gx = icmp ult i32 %i.gw, 2
  br i1 %i.gx, label %_ZN11hb_buffer_t23merge_grapheme_clustersEjj.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZN11hb_buffer_t21_set_glyph_flags_implEjjjbb(ptr noundef nonnull align 8 dereferenceable(276) %2, i32 noundef 3, i32 noundef %.01119.i.i, i32 noundef %.sroa.speculated.i.i.i.i, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %_ZN11hb_buffer_t23merge_grapheme_clustersEjj.exit.i.i

bb.ap:                                            ; preds = %bb.al
  call void @_ZN11hb_buffer_t19merge_clusters_implEjj(ptr noundef nonnull align 8 dereferenceable(276) %2, i32 noundef %.01119.i.i, i32 noundef %.020.i.i)
  br label %_ZN11hb_buffer_t23merge_grapheme_clustersEjj.exit.i.i

_ZN11hb_buffer_t23merge_grapheme_clustersEjj.exit.i.i: ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.ak
  %i.gy = load i32, ptr %i.l, align 8, !tbaa !522 ; 2 uses
  %i.gz = add i32 %.020.i.i, 1
  %umax.i.i = call i32 @llvm.umax.i32(i32 %i.gy, i32 %i.gz) ; 3 uses
  %8 = add i32 %umax.i.i, -1                      ; 2 uses
  %exitcond24.not.i.i193 = icmp eq i32 %.020.i.i, %8
  br i1 %exitcond24.not.i.i193, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit14.i.i, label %.lr.ph195.preheader

.lr.ph195.preheader:                              ; preds = %_ZN11hb_buffer_t23merge_grapheme_clustersEjj.exit.i.i
  %i.ha = load ptr, ptr %i.ge, align 8, !tbaa !499
  br label %.lr.ph195

bb.aq:                                            ; preds = %.lr.ph195
  %exitcond24.not.i.i = icmp eq i32 %9, %8
  br i1 %exitcond24.not.i.i, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit14.i.i, label %.lr.ph195, !llvm.loop !533

.lr.ph195:                                        ; preds = %.lr.ph195.preheader, %bb.aq
  %.0.i13.i.i194 = phi i32 [ %9, %bb.aq ], [ %.020.i.i, %.lr.ph195.preheader ]
  %9 = add i32 %.0.i13.i.i194, 1                  ; 4 uses
  %10 = zext i32 %9 to i64
  %i.hb = getelementptr inbounds nuw [20 x i8], ptr %i.ha, i64 %10
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %.val.i15.i.i = load i16, ptr %i.hc, align 4, !tbaa !61
  %i.hd = and i16 %.val.i15.i.i, 128
  %.not17.i.i = icmp eq i16 %i.hd, 0
  br i1 %.not17.i.i, label %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit14.i.i_crit_edge, label %bb.aq, !llvm.loop !533

._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit14.i.i_crit_edge: ; preds = %.lr.ph195
  br label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit14.i.i, !llvm.loop !533

_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit14.i.i: ; preds = %bb.aq, %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit14.i.i_crit_edge, %_ZN11hb_buffer_t23merge_grapheme_clustersEjj.exit.i.i
  %.lcssa.i.i = phi i32 [ %umax.i.i, %_ZN11hb_buffer_t23merge_grapheme_clustersEjj.exit.i.i ], [ %9, %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit14.i.i_crit_edge ], [ %umax.i.i, %bb.aq ]
  %i.he = icmp ult i32 %.020.i.i, %i.gd
  br i1 %i.he, label %bb.ak, label %_ZL16hb_form_clustersP11hb_buffer_t.exit.i, !llvm.loop !2117

_ZL16hb_form_clustersP11hb_buffer_t.exit.i:       ; preds = %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit14.i.i, %bb.ah, %_ZL23hb_insert_dotted_circleP11hb_buffer_tP9hb_font_t.exit.i
  %i.hf = load i32, ptr %i.f, align 8, !tbaa !531 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !716
  %i.hi = call i32 @hb_script_get_horizontal_direction(i32 noundef %i.hh) ; 2 uses
  %i.hj = icmp eq i32 %i.hi, 5
  %i.hk = icmp eq i32 %i.hf, 4
  %i.hl = select i1 %i.hj, i1 %i.hk, i1 false
  br i1 %i.hl, label %bb.ar, label %._crit_edge.i.i, !prof !48

bb.ar:                                            ; preds = %_ZL16hb_form_clustersP11hb_buffer_t.exit.i
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !499
  %i.ho = load i32, ptr %i.l, align 8, !tbaa !522 ; 2 uses
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ar
  %wide.trip.count.i32.i = zext i32 %i.ho to i64
  br label %.lr.ph.i33.i

.lr.ph.i33.i:                                     ; preds = %bb.av, %.lr.ph.preheader.i.i
  %indvars.iv.i34.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i37.i, %bb.av ] ; 2 uses
  %.03458.i.i = phi i1 [ false, %.lr.ph.preheader.i.i ], [ %.2.ph.i.i, %bb.av ] ; 3 uses
  %.03857.i.i = phi i1 [ false, %.lr.ph.preheader.i.i ], [ %.240.ph.i.i, %bb.av ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [20 x i8], ptr %i.hn, i64 %indvars.iv.i34.i ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hq, i64 16
  %.val.i35.i = load i16, ptr %i.hr, align 4, !tbaa !61
  %i.hs = and i16 %.val.i35.i, 31                 ; 2 uses
  %i.ht = zext nneg i16 %i.hs to i32
  %i.hu = shl nuw i32 1, %i.ht
  %i.hv = and i32 %i.hu, 992
  %.not.i36.i = icmp eq i32 %i.hv, 0              ; 2 uses
  br i1 %.not.i36.i, label %bb.as, label %._crit_edge.loopexit.i.i

bb.as:                                            ; preds = %.lr.ph.i33.i
  %i.hw = icmp eq i16 %i.hs, 13
  br i1 %i.hw, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hx = load i32, ptr %i.hq, align 4, !tbaa !582
  %i.hy = add i32 %i.hx, -127462
  %i.hz = icmp ult i32 %i.hy, 26
  br i1 %i.hz, label %bb.au, label %bb.av, !prof !48

bb.au:                                            ; preds = %bb.at
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.240.ph.i.i = phi i1 [ true, %bb.as ], [ %.03857.i.i, %bb.au ], [ %.03857.i.i, %bb.at ] ; 2 uses
  %.2.ph.i.i = phi i1 [ %.03458.i.i, %bb.as ], [ true, %bb.au ], [ %.03458.i.i, %bb.at ] ; 2 uses
  %indvars.iv.next.i37.i = add nuw nsw i64 %indvars.iv.i34.i, 1 ; 2 uses
  %exitcond.not.i38.i = icmp eq i64 %indvars.iv.next.i37.i, %wide.trip.count.i32.i
  br i1 %exitcond.not.i38.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i33.i, !llvm.loop !2118

._crit_edge.loopexit.i.i:                         ; preds = %bb.av, %.lr.ph.i33.i
  %.038.lcssa.ph.i.i = phi i1 [ %.240.ph.i.i, %bb.av ], [ %.03857.i.i, %.lr.ph.i33.i ]
  %.034.lcssa.ph.i.i = phi i1 [ %.2.ph.i.i, %bb.av ], [ %.03458.i.i, %.lr.ph.i33.i ]
  %i.ia = select i1 %.038.lcssa.ph.i.i, i1 true, i1 %.034.lcssa.ph.i.i
  %i.ib = and i1 %.not.i36.i, %i.ia
  %i.ic = select i1 %i.ib, i32 4, i32 5
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.ar, %_ZL16hb_form_clustersP11hb_buffer_t.exit.i
  %.143.i.i = phi i32 [ %i.hi, %_ZL16hb_form_clustersP11hb_buffer_t.exit.i ], [ 5, %bb.ar ], [ %i.ic, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.id = and i32 %i.hf, -2                       ; 2 uses
  %i.ie = icmp eq i32 %i.id, 4
  %.not45.i.i = icmp ne i32 %i.hf, %.143.i.i
  %or.cond46.not56.i.i = select i1 %i.ie, i1 %.not45.i.i, i1 false
  %i.if = icmp samesign ugt i32 %.143.i.i, 3
  %or.cond47.i.i = select i1 %or.cond46.not56.i.i, i1 %i.if, i1 false
  br i1 %or.cond47.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i.i
  %i.ig = icmp eq i32 %i.id, 6
  %i.ih = icmp ne i32 %i.hf, 6
  %or.cond5.i.i = and i1 %i.ih, %i.ig
  br i1 %or.cond5.i.i, label %bb.ax, label %_ZL26hb_ensure_native_directionP11hb_buffer_t.exit.i

bb.ax:                                            ; preds = %bb.aw, %._crit_edge.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !525
  %i.ik = icmp eq i32 %i.ij, 1
  call void @_ZN11hb_buffer_t14reverse_groupsIFbRK15hb_glyph_info_tS3_EEEvRKT_b(ptr noundef nonnull align 8 dereferenceable(276) %2, ptr noundef nonnull @_ZL23_hb_grapheme_group_funcRK15hb_glyph_info_tS1_, i1 noundef zeroext %i.ik)
  %i.il = load i32, ptr %i.f, align 8, !tbaa !531
  %i.im = xor i32 %i.il, 1
  store i32 %i.im, ptr %i.f, align 8, !tbaa !531
  br label %_ZL26hb_ensure_native_directionP11hb_buffer_t.exit.i

_ZL26hb_ensure_native_directionP11hb_buffer_t.exit.i: ; preds = %bb.ax, %bb.aw
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 7 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !1933
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !2119
  %.not.i = icmp eq ptr %i.iq, null
  br i1 %.not.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %_ZL26hb_ensure_native_directionP11hb_buffer_t.exit.i
  %i.ir = call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %2, ptr noundef %1, ptr noundef nonnull @.str.114)
  br i1 %i.ir, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.is = load ptr, ptr %i.in, align 8, !tbaa !1933
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !2119
  call void %i.iu(ptr noundef nonnull %i.e, ptr noundef nonnull %2, ptr noundef %1) #63, !inline_history !2120
  %i.iv = call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %2, ptr noundef %1, ptr noundef nonnull @.str.115) ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %_ZL26hb_ensure_native_directionP11hb_buffer_t.exit.i
  %i.iw = load i32, ptr %i.l, align 8, !tbaa !522 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 19 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !499 ; 2 uses
  %i.iz = and i32 %i.g, -3
  %i.ja = icmp eq i32 %i.iz, 5
  br i1 %i.ja, label %bb.bb, label %.loopexit48.i.i.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.jb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !626 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !1974
  %.not52.i.i.i.i = icmp eq i32 %i.iw, 0
  br i1 %.not52.i.i.i.i, label %.loopexit48.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bb
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 48
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 112
  %wide.trip.count.i.i.i.i = zext i32 %i.iw to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 152
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bg, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.bg ] ; 2 uses
  %i.jj = getelementptr inbounds nuw [20 x i8], ptr %i.iy, i64 %indvars.iv.i.i.i.i ; 4 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !582
  %i.jl = load ptr, ptr %i.jf, align 8, !tbaa !2121
  %i.jm = load ptr, ptr %i.jg, align 8, !tbaa !685
  %i.jn = call noundef i32 %i.jl(ptr noundef nonnull align 8 dereferenceable(216) %i.jc, i32 noundef %i.jk, ptr noundef %i.jm) #63, !inline_history !2122 ; 3 uses
  %i.jo = load i32, ptr %i.jj, align 4, !tbaa !582
  %.not41.i.i.i.i = icmp eq i32 %i.jn, %i.jo
  br i1 %.not41.i.i.i.i, label %.critedge.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #63
  store i32 0, ptr %i.c, align 4, !tbaa !139
  %i.jp = load ptr, ptr %i.jh, align 8, !tbaa !583 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 48
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !61
  %i.js = load ptr, ptr %i.ji, align 8, !tbaa !584
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !585 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN9hb_font_t9has_glyphEj.exit.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !1169
  br label %_ZN9hb_font_t9has_glyphEj.exit.i.i.i.i

_ZN9hb_font_t9has_glyphEj.exit.i.i.i.i:           ; preds = %bb.be, %bb.bd
  %i.jx = phi ptr [ %i.jw, %bb.be ], [ null, %bb.bd ]
  %i.jy = call noundef i32 %i.jr(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %i.js, i32 noundef %i.jn, ptr noundef nonnull %i.c, ptr noundef %i.jx) #63, !inline_history !2123
  %.not47.i.i.i.i = icmp eq i32 %i.jy, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #63
  br i1 %.not47.i.i.i.i, label %.critedge.i.i.i.i, label %bb.bf, !prof !49

bb.bf:                                            ; preds = %_ZN9hb_font_t9has_glyphEj.exit.i.i.i.i
  store i32 %i.jn, ptr %i.jj, align 4, !tbaa !582
  br label %bb.bg

.critedge.i.i.i.i:                                ; preds = %_ZN9hb_font_t9has_glyphEj.exit.i.i.i.i, %bb.bc
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jj, i64 4 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !500
  %i.kb = or i32 %i.ka, %i.je
  store i32 %i.kb, ptr %i.jz, align 4, !tbaa !500
  br label %bb.bg

bb.bg:                                            ; preds = %.critedge.i.i.i.i, %bb.bf
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.loopexit48.i.i.i.i, label %bb.bc, !llvm.loop !2124

.loopexit48.i.i.i.i:                              ; preds = %bb.bg, %bb.bb, %bb.ba
  %i.kc = and i32 %i.g, -2
  %i.kd = icmp eq i32 %i.kc, 6
  br i1 %i.kd, label %bb.bh, label %_ZL18hb_ot_rotate_charsPK21hb_ot_shape_context_t.exit.i.i.i

bb.bh:                                            ; preds = %.loopexit48.i.i.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.kf = load i16, ptr %i.ke, align 4
  %i.kg = and i16 %i.kf, 4
  %.not.i.i.i42.i = icmp eq i16 %i.kg, 0
  %i.kh = icmp ne i32 %i.iw, 0
  %or.cond.i.i.i43.i = select i1 %.not.i.i.i42.i, i1 %i.kh, i1 false
  br i1 %or.cond.i.i.i43.i, label %.lr.ph51.i.i.i.i, label %_ZL18hb_ot_rotate_charsPK21hb_ot_shape_context_t.exit.i.i.i
end_hunk_4
begin_hunk_5_@_hb_ot_shape:bb.a
_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit.thread.i.i.i.1: ; preds = %bb.fi, %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit.i.i.i.1, %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit.thread.i.i.i
  %indvars.iv.next.i22.i.i.1 = add nuw nsw i64 %indvars.iv.i21.i.i, 2 ; 2 uses
  %niter328.next.1 = add i64 %niter328, 2         ; 2 uses
  %niter328.ncmp.1 = icmp eq i64 %niter328.next.1, %unroll_iter327
  br i1 %niter328.ncmp.1, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i20.i.i, !llvm.loop !2150

bb.fj:                                            ; preds = %_ZN9hb_font_t17get_nominal_glyphEjPjj.exit._crit_edge.i.i.i, %bb.fc
  %i.amo = phi i32 [ %.pre.i.i95.i, %_ZN9hb_font_t17get_nominal_glyphEjPjj.exit._crit_edge.i.i.i ], [ %i.ali, %bb.fc ] ; 2 uses
  %.not53.i.i.i.i = icmp eq i32 %i.amo, 0
  br i1 %.not53.i.i.i.i, label %_ZN11hb_buffer_t21delete_glyphs_inplaceEPFbPK15hb_glyph_info_tE.exit.i.i.i, label %.lr.ph52.i.i.i.i

.lr.ph52.i.i.i.i:                                 ; preds = %bb.fj
  %i.amp = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.amq = zext i32 %i.amo to i64                 ; 2 uses
  br label %bb.fk

bb.fk:                                            ; preds = %.critedge.i.i.i86.i, %.lr.ph52.i.i.i.i
  %indvars.iv55.i.i.i.i = phi i64 [ 0, %.lr.ph52.i.i.i.i ], [ %indvars.iv.next56.pre-phi.i.i.i.i, %.critedge.i.i.i86.i ] ; 6 uses
  %.03649.i.i.i.i = phi i32 [ 0, %.lr.ph52.i.i.i.i ], [ %.1.i.i.i.i, %.critedge.i.i.i86.i ] ; 10 uses
  %indvars57.i.i.i.i = trunc i64 %indvars.iv55.i.i.i.i to i32 ; 4 uses
  %i.amr = load ptr, ptr %i.ix, align 8, !tbaa !499 ; 5 uses
  %i.ams = getelementptr inbounds nuw [20 x i8], ptr %i.amr, i64 %indvars.iv55.i.i.i.i ; 5 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 16
  %i.amu = load i16, ptr %i.amt, align 4, !tbaa !61
  %i.amv = and i16 %i.amu, 32
  %.not.i20.i.i.i = icmp eq i16 %i.amv, 0
  br i1 %.not.i20.i.i.i, label %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit23.thread.i.i.i, label %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit23.i.i.i

_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit23.i.i.i: ; preds = %bb.fk
  %i.amw = getelementptr i8, ptr %i.ams, i64 12
  %.val.i21.i.i.i = load i16, ptr %i.amw, align 4, !tbaa !61
  %i.amx = and i16 %.val.i21.i.i.i, 16
  %.not2.i22.i.i.i = icmp eq i16 %i.amx, 0
  br i1 %.not2.i22.i.i.i, label %bb.fl, label %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit23.thread.i.i.i

bb.fl:                                            ; preds = %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit23.i.i.i
  %i.amy = getelementptr inbounds nuw i8, ptr %i.ams, i64 8
  %i.amz = load i32, ptr %i.amy, align 4, !tbaa !523 ; 3 uses
  %i.ana = add nuw nsw i64 %indvars.iv55.i.i.i.i, 1 ; 10 uses
  %i.anb = icmp samesign ult i64 %i.ana, %i.amq
  br i1 %i.anb, label %bb.fm, label %.thread.i.i.i.i

bb.fm:                                            ; preds = %bb.fl
  %i.anc = getelementptr inbounds nuw [20 x i8], ptr %i.amr, i64 %i.ana
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 8
  %i.ane = load i32, ptr %i.and, align 4, !tbaa !523
  %i.anf = icmp eq i32 %i.amz, %i.ane
  br i1 %i.anf, label %.critedge.i.i.i86.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %.not41.i.i.i90.i = icmp eq i32 %.03649.i.i.i.i, 0
  br i1 %.not41.i.i.i90.i, label %bb.fq, label %bb.fo

.thread.i.i.i.i:                                  ; preds = %bb.fl
  %.not4144.i.i.i.i = icmp eq i32 %.03649.i.i.i.i, 0
  br i1 %.not4144.i.i.i.i, label %.critedge.i.i.i86.i, label %bb.fo

bb.fo:                                            ; preds = %.thread.i.i.i.i, %bb.fn
  %i.ang = add i32 %.03649.i.i.i.i, -1
  %i.anh = zext i32 %i.ang to i64
  %i.ani = getelementptr inbounds nuw [20 x i8], ptr %i.amr, i64 %i.anh
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 8
  %i.ank = load i32, ptr %i.anj, align 4, !tbaa !523 ; 2 uses
  %i.anl = icmp ult i32 %i.amz, %i.ank
  br i1 %i.anl, label %.lr.ph.i.i.i88.i, label %.critedge.i.i.i86.i

.lr.ph.i.i.i88.i:                                 ; preds = %bb.fo
  %i.anm = getelementptr inbounds nuw i8, ptr %i.ams, i64 4
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !500
  %i.ano = and i32 %i.ann, 7
  %i.anp = zext i32 %.03649.i.i.i.i to i64
  br label %bb.fp

bb.fp:                                            ; preds = %_ZN11hb_buffer_t11set_clusterER15hb_glyph_info_tjj.exit.i.i.i.i, %.lr.ph.i.i.i88.i
  %indvars.iv.i.i.i89.i = phi i64 [ %i.anp, %.lr.ph.i.i.i88.i ], [ %i.anq, %_ZN11hb_buffer_t11set_clusterER15hb_glyph_info_tjj.exit.i.i.i.i ]
  %i.anq = add nsw i64 %indvars.iv.i.i.i89.i, -1  ; 3 uses
  %i.anr = getelementptr inbounds nuw [20 x i8], ptr %i.amr, i64 %i.anq ; 2 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 8 ; 2 uses
  %i.ant = load i32, ptr %i.ans, align 4, !tbaa !523
  %i.anu = icmp eq i32 %i.ant, %i.ank
  br i1 %i.anu, label %_ZN11hb_buffer_t11set_clusterER15hb_glyph_info_tjj.exit.i.i.i.i, label %.critedge.i.i.i86.i

_ZN11hb_buffer_t11set_clusterER15hb_glyph_info_tjj.exit.i.i.i.i: ; preds = %bb.fp
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anr, i64 4 ; 2 uses
  %i.anw = load i32, ptr %i.anv, align 4, !tbaa !500
  %i.anx = and i32 %i.anw, -8
  %i.any = or disjoint i32 %i.anx, %i.ano
  store i32 %i.any, ptr %i.anv, align 4, !tbaa !500
  store i32 %i.amz, ptr %i.ans, align 4, !tbaa !523
  %.not42.wide.i.i.i.i = icmp eq i64 %i.anq, 0
  br i1 %.not42.wide.i.i.i.i, label %.critedge.i.i.i86.i, label %bb.fp, !llvm.loop !524

bb.fq:                                            ; preds = %bb.fn
  %i.anz = add i32 %indvars57.i.i.i.i, 2          ; 2 uses
  %i.aoa = load i32, ptr %i.amp, align 4, !tbaa !525
  %.not.i43.i.i.i.i = icmp ugt i32 %i.aoa, 1
  br i1 %.not.i43.i.i.i.i, label %bb.fr, label %bb.ft

bb.fr:                                            ; preds = %bb.fq
  %i.aob = load i32, ptr %i.l, align 8, !tbaa !139
  %.sroa.speculated.i.i.i.i.i91.i = call i32 @llvm.umin.i32(i32 %i.anz, i32 %i.aob) ; 2 uses
  %i.aoc = sub i32 %.sroa.speculated.i.i.i.i.i91.i, %indvars57.i.i.i.i
  %i.aod = icmp ult i32 %i.aoc, 2
  br i1 %i.aod, label %.critedge.i.i.i86.i, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call void @_ZN11hb_buffer_t21_set_glyph_flags_implEjjjbb(ptr noundef nonnull align 8 dereferenceable(276) %2, i32 noundef 3, i32 noundef %indvars57.i.i.i.i, i32 noundef %.sroa.speculated.i.i.i.i.i91.i, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %.critedge.i.i.i86.i

bb.ft:                                            ; preds = %bb.fq
  call void @_ZN11hb_buffer_t19merge_clusters_implEjj(ptr noundef nonnull align 8 dereferenceable(276) %2, i32 noundef %indvars57.i.i.i.i, i32 noundef %i.anz)
  br label %.critedge.i.i.i86.i

_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit23.thread.i.i.i: ; preds = %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit23.i.i.i, %bb.fk
  %i.aoe = zext i32 %.03649.i.i.i.i to i64        ; 3 uses
  %.not.i19.i.i84.i = icmp eq i64 %indvars.iv55.i.i.i.i, %i.aoe
  br i1 %.not.i19.i.i84.i, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit23.thread.i.i.i
  %i.aof = getelementptr inbounds nuw [20 x i8], ptr %i.amr, i64 %i.aoe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aof, ptr noundef nonnull align 4 dereferenceable(20) %i.ams, i64 20, i1 false), !tbaa.struct !526
  %i.aog = load ptr, ptr %i.zw, align 8, !tbaa !527 ; 2 uses
  %i.aoh = getelementptr inbounds nuw [20 x i8], ptr %i.aog, i64 %indvars.iv55.i.i.i.i
  %i.aoi = getelementptr inbounds nuw [20 x i8], ptr %i.aog, i64 %i.aoe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aoi, ptr noundef nonnull align 4 dereferenceable(20) %i.aoh, i64 20, i1 false), !tbaa.struct !528
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit23.thread.i.i.i
  %i.aoj = add i32 %.03649.i.i.i.i, 1
  %.pre.i.i.i85.i = add nuw nsw i64 %indvars.iv55.i.i.i.i, 1
  br label %.critedge.i.i.i86.i

.critedge.i.i.i86.i:                              ; preds = %_ZN11hb_buffer_t11set_clusterER15hb_glyph_info_tjj.exit.i.i.i.i, %bb.fp, %bb.fv, %bb.ft, %bb.fs, %bb.fr, %bb.fo, %.thread.i.i.i.i, %bb.fm
  %indvars.iv.next56.pre-phi.i.i.i.i = phi i64 [ %i.ana, %bb.fo ], [ %.pre.i.i.i85.i, %bb.fv ], [ %i.ana, %.thread.i.i.i.i ], [ %i.ana, %bb.ft ], [ %i.ana, %bb.fs ], [ %i.ana, %bb.fr ], [ %i.ana, %bb.fm ], [ %i.ana, %bb.fp ], [ %i.ana, %_ZN11hb_buffer_t11set_clusterER15hb_glyph_info_tjj.exit.i.i.i.i ] ; 2 uses
  %.1.i.i.i.i = phi i32 [ %.03649.i.i.i.i, %bb.fo ], [ %i.aoj, %bb.fv ], [ 0, %.thread.i.i.i.i ], [ 0, %bb.ft ], [ 0, %bb.fs ], [ 0, %bb.fr ], [ %.03649.i.i.i.i, %bb.fm ], [ %.03649.i.i.i.i, %bb.fp ], [ %.03649.i.i.i.i, %_ZN11hb_buffer_t11set_clusterER15hb_glyph_info_tjj.exit.i.i.i.i ] ; 2 uses
  %exitcond.not.i.i.i87.i = icmp eq i64 %indvars.iv.next56.pre-phi.i.i.i.i, %i.amq
  br i1 %exitcond.not.i.i.i87.i, label %_ZN11hb_buffer_t21delete_glyphs_inplaceEPFbPK15hb_glyph_info_tE.exit.i.i.i, label %bb.fk, !llvm.loop !529

_ZN11hb_buffer_t21delete_glyphs_inplaceEPFbPK15hb_glyph_info_tE.exit.i.i.i: ; preds = %.critedge.i.i.i86.i, %bb.fj
  %.036.lcssa.i.i.i.i = phi i32 [ 0, %bb.fj ], [ %.1.i.i.i.i, %.critedge.i.i.i86.i ]
  store i32 %.036.lcssa.i.i.i.i, ptr %i.l, align 8, !tbaa !522
  br label %.loopexit.i.i.i

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit.thread.i.i.i.1
  %lcmp.mod325.not = icmp eq i64 %xtraiter323, 0
  br i1 %lcmp.mod325.not, label %.loopexit.i.i.i, label %.lr.ph.i20.i.i.epil.preheader

.lr.ph.i20.i.i.epil.preheader:                    ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i18.i.i
  %indvars.iv.i21.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i18.i.i ], [ %indvars.iv.next.i22.i.i.1, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod326 = trunc i32 %i.ali to i1
  call void @llvm.assume(i1 %lcmp.mod326)
  %i.aok = getelementptr inbounds nuw [20 x i8], ptr %i.alj, i64 %indvars.iv.i21.i.i.epil.init ; 3 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 16
  %i.aom = load i16, ptr %i.aol, align 4, !tbaa !61
  %i.aon = and i16 %i.aom, 32
  %.not.i18.i.i.i.epil = icmp eq i16 %i.aon, 0
  br i1 %.not.i18.i.i.i.epil, label %.loopexit.i.i.i, label %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit.i.i.i.epil

_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit.i.i.i.epil: ; preds = %.lr.ph.i20.i.i.epil.preheader
  %i.aoo = getelementptr i8, ptr %i.aok, i64 12
  %.val.i.i.i93.i.epil = load i16, ptr %i.aoo, align 4, !tbaa !61
  %i.aop = and i16 %.val.i.i.i93.i.epil, 16
  %.not2.i.i.i.i.epil = icmp eq i16 %i.aop, 0
  br i1 %.not2.i.i.i.i.epil, label %bb.fw, label %.loopexit.i.i.i

bb.fw:                                            ; preds = %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit.i.i.i.epil
  store i32 %i.alz, ptr %i.aok, align 4, !tbaa !582
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.fw, %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit.i.i.i.epil, %.lr.ph.i20.i.i.epil.preheader, %_ZN11hb_buffer_t21delete_glyphs_inplaceEPFbPK15hb_glyph_info_tE.exit.i.i.i, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %_ZL29hb_ot_hide_default_ignorablesP11hb_buffer_tP9hb_font_t.exit.i.i

_ZL29hb_ot_hide_default_ignorablesP11hb_buffer_tP9hb_font_t.exit.i.i: ; preds = %.loopexit.i.i.i, %bb.fb, %_ZL35hb_ot_deal_with_variation_selectorsP11hb_buffer_t.exit.i.i
  %i.aoq = load ptr, ptr %i.in, align 8, !tbaa !1933
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 40
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !2151
  %.not16.i83.i = icmp eq ptr %i.aos, null
  br i1 %.not16.i83.i, label %_ZL21hb_ot_substitute_postPK21hb_ot_shape_context_t.exit.i, label %bb.fx

bb.fx:                                            ; preds = %_ZL29hb_ot_hide_default_ignorablesP11hb_buffer_tP9hb_font_t.exit.i.i
  %i.aot = call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %2, ptr noundef %1, ptr noundef nonnull @.str.116)
  br i1 %i.aot, label %bb.fy, label %_ZL21hb_ot_substitute_postPK21hb_ot_shape_context_t.exit.i

bb.fy:                                            ; preds = %bb.fx
  %i.aou = load ptr, ptr %i.in, align 8, !tbaa !1933
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 40
  %i.aow = load ptr, ptr %i.aov, align 8, !tbaa !2151
  call void %i.aow(ptr noundef nonnull %i.e, ptr noundef nonnull %2, ptr noundef %1) #63, !inline_history !2152
  %i.aox = call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %2, ptr noundef %1, ptr noundef nonnull @.str.117) ; 0 uses
  br label %_ZL21hb_ot_substitute_postPK21hb_ot_shape_context_t.exit.i

_ZL21hb_ot_substitute_postPK21hb_ot_shape_context_t.exit.i: ; preds = %bb.fy, %bb.fx, %_ZL29hb_ot_hide_default_ignorablesP11hb_buffer_tP9hb_font_t.exit.i.i
  %i.aoy = load i32, ptr %i.cs, align 8, !tbaa !497 ; 2 uses
  %i.aoz = and i32 %i.aoy, 64
  %i.apa = icmp eq i32 %i.aoz, 0
  %spec.select.i.i = select i1 %i.apa, i32 5, i32 7 ; 3 uses
  %i.apb = load ptr, ptr %i.ix, align 8, !tbaa !499 ; 37 uses
  %i.apc = and i32 %i.aoy, 128
  %i.apd = icmp eq i32 %i.apc, 0
  %i.ape = load i32, ptr %i.l, align 8, !tbaa !522 ; 11 uses
  %.not72.i.i = icmp eq i32 %i.ape, 0             ; 2 uses
  br i1 %i.apd, label %bb.fz, label %bb.gc

bb.fz:                                            ; preds = %_ZL21hb_ot_substitute_postPK21hb_ot_shape_context_t.exit.i
  br i1 %.not72.i.i, label %_ZL20hb_ot_shape_internalP21hb_ot_shape_context_t.exit, label %.preheader81.preheader.i.i

.preheader81.preheader.i.i:                       ; preds = %bb.fz
  %i.apf = add i32 %i.ape, -1                     ; 2 uses
  %wide.trip.count130.i.i = zext i32 %i.apf to i64
  %exitcond131.not.i.i210 = icmp eq i32 %i.apf, 0
  br i1 %exitcond131.not.i.i210, label %.lr.ph106.i.i.preheader, label %.lr.ph212

.preheader81.i.i:                                 ; preds = %.lr.ph212
  %exitcond131.not.i.i = icmp eq i64 %indvars.iv.next128.i.i, %wide.trip.count130.i.i
  br i1 %exitcond131.not.i.i, label %.lr.ph106.i.i.preheader, label %.lr.ph212, !llvm.loop !533

.lr.ph212:                                        ; preds = %.preheader81.preheader.i.i, %.preheader81.i.i
  %indvars.iv127.i.i211 = phi i64 [ %indvars.iv.next128.i.i, %.preheader81.i.i ], [ 0, %.preheader81.preheader.i.i ] ; 2 uses
  %indvars.iv.next128.i.i = add nuw nsw i64 %indvars.iv127.i.i211, 1 ; 4 uses
  %i.apg = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv127.i.i211
  %i.aph = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv.next128.i.i
  %i.api = getelementptr inbounds nuw i8, ptr %i.apg, i64 8
  %i.apj = load i32, ptr %i.api, align 4, !tbaa !523
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aph, i64 8
  %i.apl = load i32, ptr %i.apk, align 4, !tbaa !523
  %i.apm = icmp eq i32 %i.apj, %i.apl
  br i1 %i.apm, label %.preheader81.i.i, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit.i104.i, !llvm.loop !533

_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit.i104.i: ; preds = %.lr.ph212
  %i.apn = trunc nuw i64 %indvars.iv.next128.i.i to i32
  br label %.lr.ph106.i.i.preheader

.lr.ph106.i.i.preheader:                          ; preds = %.preheader81.i.i, %.preheader81.preheader.i.i, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit.i104.i
  %.067105.i.i.ph = phi i32 [ %i.ape, %.preheader81.preheader.i.i ], [ %i.apn, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit.split.loop.exit.i104.i ], [ %i.ape, %.preheader81.i.i ]
  br label %.lr.ph106.i.i.a

.lr.ph106.i.i.a:                                  ; preds = %.lr.ph106.i.i.preheader, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit74.i.i
  %.067105.i.i = phi i32 [ %.lcssa110.i.i, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit74.i.i ], [ %.067105.i.i.ph, %.lr.ph106.i.i.preheader ] ; 8 uses
  %.068104.i.i = phi i32 [ %.067105.i.i, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit74.i.i ], [ 0, %.lr.ph106.i.i.preheader ] ; 4 uses
  %i.apo = sub i32 %.067105.i.i, %.068104.i.i
  %i.app = icmp eq i32 %i.apo, 1
  br i1 %i.app, label %bb.ga, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph106.i.i.a
  %i.apq = icmp ult i32 %.068104.i.i, %.067105.i.i
  br i1 %i.apq, label %.lr.ph98.preheader.i.i, label %.loopexit.i.i

.lr.ph98.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.apr = zext i32 %.068104.i.i to i64           ; 6 uses
  %wide.trip.count135.i.i = zext i32 %.067105.i.i to i64 ; 3 uses
  %i.aps = sub nsw i64 %wide.trip.count135.i.i, %i.apr ; 3 uses
  %i.apt = xor i64 %i.apr, -1
  %i.apu = add nsw i64 %i.apt, %wide.trip.count135.i.i ; 2 uses
  %xtraiter339 = and i64 %i.aps, 3                ; 3 uses
  %i.apv = icmp ult i64 %i.apu, 3
  br i1 %i.apv, label %.lr.ph98.i.i.epil.preheader, label %.lr.ph98.preheader.i.i.new

.lr.ph98.preheader.i.i.new:                       ; preds = %.lr.ph98.preheader.i.i
  %unroll_iter344 = and i64 %i.aps, -4
  br label %.lr.ph98.i.i

bb.ga:                                            ; preds = %.lr.ph106.i.i.a
  %i.apw = zext i32 %.068104.i.i to i64
  %i.apx = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %i.apw
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 4 ; 2 uses
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !500
  %i.aqa = and i32 %i.apz, %spec.select.i.i
  store i32 %i.aqa, ptr %i.apy, align 4, !tbaa !500
  br label %.loopexit.i.i

.lr.ph103.preheader.i.i.unr-lcssa:                ; preds = %.lr.ph98.i.i
  %lcmp.mod341.not = icmp eq i64 %xtraiter339, 0
  br i1 %lcmp.mod341.not, label %.lr.ph103.preheader.i.i, label %.lr.ph98.i.i.epil.preheader

.lr.ph98.i.i.epil.preheader:                      ; preds = %.lr.ph103.preheader.i.i.unr-lcssa, %.lr.ph98.preheader.i.i
  %indvars.iv132.i.i.epil.init = phi i64 [ %i.apr, %.lr.ph98.preheader.i.i ], [ %indvars.iv.next133.i.i.3, %.lr.ph103.preheader.i.i.unr-lcssa ]
  %.06696.i.i.epil.init = phi i32 [ 0, %.lr.ph98.preheader.i.i ], [ %i.aqy, %.lr.ph103.preheader.i.i.unr-lcssa ]
  %lcmp.mod343 = icmp ne i64 %xtraiter339, 0
  call void @llvm.assume(i1 %lcmp.mod343)
  br label %.lr.ph98.i.i.epil

.lr.ph98.i.i.epil:                                ; preds = %.lr.ph98.i.i.epil, %.lr.ph98.i.i.epil.preheader
  %indvars.iv132.i.i.epil = phi i64 [ %indvars.iv132.i.i.epil.init, %.lr.ph98.i.i.epil.preheader ], [ %indvars.iv.next133.i.i.epil, %.lr.ph98.i.i.epil ] ; 2 uses
  %.06696.i.i.epil = phi i32 [ %.06696.i.i.epil.init, %.lr.ph98.i.i.epil.preheader ], [ %i.aqe, %.lr.ph98.i.i.epil ]
  %epil.iter340 = phi i64 [ 0, %.lr.ph98.i.i.epil.preheader ], [ %epil.iter340.next, %.lr.ph98.i.i.epil ]
  %i.aqb = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv132.i.i.epil
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqb, i64 4
  %i.aqd = load i32, ptr %i.aqc, align 4, !tbaa !500
  %i.aqe = or i32 %i.aqd, %.06696.i.i.epil        ; 2 uses
  %indvars.iv.next133.i.i.epil = add nuw nsw i64 %indvars.iv132.i.i.epil, 1
  %epil.iter340.next = add i64 %epil.iter340, 1   ; 2 uses
  %epil.iter340.cmp.not = icmp eq i64 %epil.iter340.next, %xtraiter339
  br i1 %epil.iter340.cmp.not, label %.lr.ph103.preheader.i.i, label %.lr.ph98.i.i.epil, !llvm.loop !2153

.lr.ph103.preheader.i.i:                          ; preds = %.lr.ph98.i.i.epil, %.lr.ph103.preheader.i.i.unr-lcssa
  %.lcssa = phi i32 [ %i.aqy, %.lr.ph103.preheader.i.i.unr-lcssa ], [ %i.aqe, %.lr.ph98.i.i.epil ]
  %i.aqf = and i32 %.lcssa, %spec.select.i.i      ; 9 uses
  %xtraiter346 = and i64 %i.aps, 7                ; 2 uses
  %lcmp.mod347.not = icmp eq i64 %xtraiter346, 0
  br i1 %lcmp.mod347.not, label %.lr.ph103.i.i.prol.loopexit, label %.lr.ph103.i.i.prol

.lr.ph103.i.i.prol:                               ; preds = %.lr.ph103.preheader.i.i, %.lr.ph103.i.i.prol
  %indvars.iv137.i.i.prol = phi i64 [ %indvars.iv.next138.i.i.prol, %.lr.ph103.i.i.prol ], [ %i.apr, %.lr.ph103.preheader.i.i ] ; 2 uses
  %prol.iter348 = phi i64 [ %prol.iter348.next, %.lr.ph103.i.i.prol ], [ 0, %.lr.ph103.preheader.i.i ]
  %i.aqg = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv137.i.i.prol
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 4
  store i32 %i.aqf, ptr %i.aqh, align 4, !tbaa !500
  %indvars.iv.next138.i.i.prol = add nuw nsw i64 %indvars.iv137.i.i.prol, 1 ; 2 uses
  %prol.iter348.next = add i64 %prol.iter348, 1   ; 2 uses
  %prol.iter348.cmp.not = icmp eq i64 %prol.iter348.next, %xtraiter346
  br i1 %prol.iter348.cmp.not, label %.lr.ph103.i.i.prol.loopexit, label %.lr.ph103.i.i.prol, !llvm.loop !2154

.lr.ph103.i.i.prol.loopexit:                      ; preds = %.lr.ph103.i.i.prol, %.lr.ph103.preheader.i.i
  %indvars.iv137.i.i.unr = phi i64 [ %i.apr, %.lr.ph103.preheader.i.i ], [ %indvars.iv.next138.i.i.prol, %.lr.ph103.i.i.prol ]
  %i.aqi = icmp ult i64 %i.apu, 7
  br i1 %i.aqi, label %.loopexit.i.i, label %.lr.ph103.i.i

.lr.ph98.i.i:                                     ; preds = %.lr.ph98.i.i, %.lr.ph98.preheader.i.i.new
  %indvars.iv132.i.i = phi i64 [ %i.apr, %.lr.ph98.preheader.i.i.new ], [ %indvars.iv.next133.i.i.3, %.lr.ph98.i.i ] ; 5 uses
  %.06696.i.i = phi i32 [ 0, %.lr.ph98.preheader.i.i.new ], [ %i.aqy, %.lr.ph98.i.i ]
  %niter345 = phi i64 [ 0, %.lr.ph98.preheader.i.i.new ], [ %niter345.next.3, %.lr.ph98.i.i ]
  %i.aqj = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv132.i.i
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 4
  %i.aql = load i32, ptr %i.aqk, align 4, !tbaa !500
  %i.aqm = or i32 %i.aql, %.06696.i.i
  %i.aqn = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv132.i.i
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 24
  %i.aqp = load i32, ptr %i.aqo, align 4, !tbaa !500
  %i.aqq = or i32 %i.aqp, %i.aqm
  %i.aqr = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv132.i.i
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqr, i64 44
  %i.aqt = load i32, ptr %i.aqs, align 4, !tbaa !500
  %i.aqu = or i32 %i.aqt, %i.aqq
  %i.aqv = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv132.i.i
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqv, i64 64
  %i.aqx = load i32, ptr %i.aqw, align 4, !tbaa !500
  %i.aqy = or i32 %i.aqx, %i.aqu                  ; 3 uses
  %indvars.iv.next133.i.i.3 = add nuw nsw i64 %indvars.iv132.i.i, 4 ; 2 uses
  %niter345.next.3 = add i64 %niter345, 4         ; 2 uses
  %niter345.ncmp.3 = icmp eq i64 %niter345.next.3, %unroll_iter344
  br i1 %niter345.ncmp.3, label %.lr.ph103.preheader.i.i.unr-lcssa, label %.lr.ph98.i.i, !llvm.loop !2155

.lr.ph103.i.i:                                    ; preds = %.lr.ph103.i.i.prol.loopexit, %.lr.ph103.i.i
  %indvars.iv137.i.i = phi i64 [ %indvars.iv.next138.i.i.7, %.lr.ph103.i.i ], [ %indvars.iv137.i.i.unr, %.lr.ph103.i.i.prol.loopexit ] ; 9 uses
  %i.aqz = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv137.i.i
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 4
  store i32 %i.aqf, ptr %i.ara, align 4, !tbaa !500
  %i.arb = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv137.i.i
  %i.arc = getelementptr inbounds nuw i8, ptr %i.arb, i64 24
  store i32 %i.aqf, ptr %i.arc, align 4, !tbaa !500
  %i.ard = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv137.i.i
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 44
  store i32 %i.aqf, ptr %i.are, align 4, !tbaa !500
  %i.arf = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv137.i.i
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arf, i64 64
  store i32 %i.aqf, ptr %i.arg, align 4, !tbaa !500
  %i.arh = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv137.i.i
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 84
  store i32 %i.aqf, ptr %i.ari, align 4, !tbaa !500
  %i.arj = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv137.i.i
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 104
  store i32 %i.aqf, ptr %i.ark, align 4, !tbaa !500
  %i.arl = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv137.i.i
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 124
  store i32 %i.aqf, ptr %i.arm, align 4, !tbaa !500
  %i.arn = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv137.i.i
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 144
  store i32 %i.aqf, ptr %i.aro, align 4, !tbaa !500
  %indvars.iv.next138.i.i.7 = add nuw nsw i64 %indvars.iv137.i.i, 8 ; 2 uses
  %exitcond141.not.i.i.7 = icmp eq i64 %indvars.iv.next138.i.i.7, %wide.trip.count135.i.i
  br i1 %exitcond141.not.i.i.7, label %.loopexit.i.i, label %.lr.ph103.i.i, !llvm.loop !2156

.loopexit.i.i:                                    ; preds = %.lr.ph103.i.i.prol.loopexit, %.lr.ph103.i.i, %bb.ga, %.preheader.i.i
  %i.arp = add i32 %.067105.i.i, 1
  %umax142.i.i = call i32 @llvm.umax.i32(i32 %i.ape, i32 %i.arp) ; 3 uses
  %11 = add i32 %umax142.i.i, -1                  ; 2 uses
  %exitcond143.not.i.i213 = icmp eq i32 %.067105.i.i, %11
  br i1 %exitcond143.not.i.i213, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit74.i.i, label %.lr.ph215

bb.gb:                                            ; preds = %.lr.ph215
  %exitcond143.not.i.i = icmp eq i32 %12, %11
  br i1 %exitcond143.not.i.i, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit74.i.i, label %.lr.ph215, !llvm.loop !533

.lr.ph215:                                        ; preds = %.loopexit.i.i, %bb.gb
  %.0.i73.i.i214 = phi i32 [ %12, %bb.gb ], [ %.067105.i.i, %.loopexit.i.i ] ; 2 uses
  %12 = add i32 %.0.i73.i.i214, 1                 ; 4 uses
  %13 = zext i32 %.0.i73.i.i214 to i64
  %i.arq = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %13
  %14 = zext i32 %12 to i64
  %i.arr = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %14
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arq, i64 8
  %i.art = load i32, ptr %i.ars, align 4, !tbaa !523
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arr, i64 8
  %i.arv = load i32, ptr %i.aru, align 4, !tbaa !523
  %i.arw = icmp eq i32 %i.art, %i.arv
  br i1 %i.arw, label %bb.gb, label %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit74.i.i_crit_edge, !llvm.loop !533

._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit74.i.i_crit_edge: ; preds = %.lr.ph215
  br label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit74.i.i, !llvm.loop !533

_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit74.i.i: ; preds = %bb.gb, %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit74.i.i_crit_edge, %.loopexit.i.i
  %.lcssa110.i.i = phi i32 [ %umax142.i.i, %.loopexit.i.i ], [ %12, %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit74.i.i_crit_edge ], [ %umax142.i.i, %bb.gb ]
  %i.arx = icmp ult i32 %.067105.i.i, %i.ape
  br i1 %i.arx, label %.lr.ph106.i.i.a, label %_ZL20hb_ot_shape_internalP21hb_ot_shape_context_t.exit, !llvm.loop !2157

bb.gc:                                            ; preds = %_ZL21hb_ot_substitute_postPK21hb_ot_shape_context_t.exit.i
  br i1 %.not72.i.i, label %_ZL20hb_ot_shape_internalP21hb_ot_shape_context_t.exit, label %.preheader85.preheader.i.i

.preheader85.preheader.i.i:                       ; preds = %bb.gc
  %i.ary = add i32 %i.ape, -1                     ; 2 uses
  %wide.trip.count.i96.i = zext i32 %i.ary to i64
  %exitcond.not.i98.i201 = icmp eq i32 %i.ary, 0
  br i1 %exitcond.not.i98.i201, label %.preheader83.i.i.preheader, label %.lr.ph203

.preheader85.i.i:                                 ; preds = %.lr.ph203
  %exitcond.not.i98.i = icmp eq i64 %indvars.iv.next.i99.i, %wide.trip.count.i96.i
  br i1 %exitcond.not.i98.i, label %.preheader83.i.i.preheader, label %.lr.ph203, !llvm.loop !533

.lr.ph203:                                        ; preds = %.preheader85.preheader.i.i, %.preheader85.i.i
  %indvars.iv.i97.i202 = phi i64 [ %indvars.iv.next.i99.i, %.preheader85.i.i ], [ 0, %.preheader85.preheader.i.i ] ; 2 uses
  %indvars.iv.next.i99.i = add nuw nsw i64 %indvars.iv.i97.i202, 1 ; 4 uses
  %i.arz = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv.i97.i202
  %i.asa = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv.next.i99.i
  %i.asb = getelementptr inbounds nuw i8, ptr %i.arz, i64 8
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !523
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asa, i64 8
  %i.ase = load i32, ptr %i.asd, align 4, !tbaa !523
  %i.asf = icmp eq i32 %i.asc, %i.ase
  br i1 %i.asf, label %.preheader85.i.i, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit76.split.loop.exit.i.i, !llvm.loop !533

_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit76.split.loop.exit.i.i: ; preds = %.lr.ph203
  %i.asg = trunc nuw i64 %indvars.iv.next.i99.i to i32
  br label %.preheader83.i.i.preheader

.preheader83.i.i.preheader:                       ; preds = %.preheader85.i.i, %.preheader85.preheader.i.i, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit76.split.loop.exit.i.i
  %.06295.i.i.ph = phi i32 [ %i.ape, %.preheader85.preheader.i.i ], [ %i.asg, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit76.split.loop.exit.i.i ], [ %i.ape, %.preheader85.i.i ]
  br label %.preheader83.i.i

.preheader83.i.i:                                 ; preds = %.preheader83.i.i.preheader, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit78.i.i
  %.06295.i.i = phi i32 [ %.lcssa113.i.i, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit78.i.i ], [ %.06295.i.i.ph, %.preheader83.i.i.preheader ] ; 7 uses
  %.06394.i.i = phi i32 [ %.06295.i.i, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit78.i.i ], [ 0, %.preheader83.i.i.preheader ] ; 2 uses
  %i.ash = icmp ult i32 %.06394.i.i, %.06295.i.i
  br i1 %i.ash, label %.lr.ph.preheader.i101.i, label %.preheader82.i.i

.lr.ph.preheader.i101.i:                          ; preds = %.preheader83.i.i
  %i.asi = zext i32 %.06394.i.i to i64            ; 6 uses
  %wide.trip.count119.i.i = zext i32 %.06295.i.i to i64 ; 3 uses
  %i.asj = sub nsw i64 %wide.trip.count119.i.i, %i.asi ; 3 uses
  %i.ask = xor i64 %i.asi, -1
  %i.asl = add nsw i64 %i.ask, %wide.trip.count119.i.i ; 2 uses
  %xtraiter329 = and i64 %i.asj, 3                ; 3 uses
  %i.asm = icmp ult i64 %i.asl, 3
  br i1 %i.asm, label %.lr.ph.i102.i.epil.preheader, label %.lr.ph.preheader.i101.i.new

.lr.ph.preheader.i101.i.new:                      ; preds = %.lr.ph.preheader.i101.i
  %unroll_iter334 = and i64 %i.asj, -4
  br label %.lr.ph.i102.i

._crit_edge.i103.i.unr-lcssa:                     ; preds = %.lr.ph.i102.i
  %lcmp.mod331.not = icmp eq i64 %xtraiter329, 0
  br i1 %lcmp.mod331.not, label %._crit_edge.i103.i, label %.lr.ph.i102.i.epil.preheader

.lr.ph.i102.i.epil.preheader:                     ; preds = %._crit_edge.i103.i.unr-lcssa, %.lr.ph.preheader.i101.i
  %indvars.iv116.i.i.epil.init = phi i64 [ %i.asi, %.lr.ph.preheader.i101.i ], [ %indvars.iv.next117.i.i.3, %._crit_edge.i103.i.unr-lcssa ]
  %.06189.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i101.i ], [ %i.ato, %._crit_edge.i103.i.unr-lcssa ]
  %lcmp.mod333 = icmp ne i64 %xtraiter329, 0
  call void @llvm.assume(i1 %lcmp.mod333)
  br label %.lr.ph.i102.i.epil

.lr.ph.i102.i.epil:                               ; preds = %.lr.ph.i102.i.epil, %.lr.ph.i102.i.epil.preheader
  %indvars.iv116.i.i.epil = phi i64 [ %indvars.iv116.i.i.epil.init, %.lr.ph.i102.i.epil.preheader ], [ %indvars.iv.next117.i.i.epil, %.lr.ph.i102.i.epil ] ; 2 uses
  %.06189.i.i.epil = phi i32 [ %.06189.i.i.epil.init, %.lr.ph.i102.i.epil.preheader ], [ %i.asq, %.lr.ph.i102.i.epil ]
  %epil.iter330 = phi i64 [ 0, %.lr.ph.i102.i.epil.preheader ], [ %epil.iter330.next, %.lr.ph.i102.i.epil ]
  %i.asn = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv116.i.i.epil
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 4
  %i.asp = load i32, ptr %i.aso, align 4, !tbaa !500
  %i.asq = or i32 %i.asp, %.06189.i.i.epil        ; 2 uses
  %indvars.iv.next117.i.i.epil = add nuw nsw i64 %indvars.iv116.i.i.epil, 1
  %epil.iter330.next = add i64 %epil.iter330, 1   ; 2 uses
  %epil.iter330.cmp.not = icmp eq i64 %epil.iter330.next, %xtraiter329
  br i1 %epil.iter330.cmp.not, label %._crit_edge.i103.i, label %.lr.ph.i102.i.epil, !llvm.loop !2158

._crit_edge.i103.i:                               ; preds = %.lr.ph.i102.i.epil, %._crit_edge.i103.i.unr-lcssa
  %.lcssa223 = phi i32 [ %i.ato, %._crit_edge.i103.i.unr-lcssa ], [ %i.asq, %.lr.ph.i102.i.epil ] ; 3 uses
  %i.asr = and i32 %.lcssa223, 1
  %.not70.i.i = icmp eq i32 %i.asr, 0
  %i.ass = and i32 %.lcssa223, -5
  %spec.select79.i.i = select i1 %.not70.i.i, i32 %.lcssa223, i32 %i.ass ; 3 uses
  %i.ast = and i32 %spec.select79.i.i, 4
  %.not71.i.i = icmp eq i32 %i.ast, 0
  %i.asu = or i32 %spec.select79.i.i, 3
  %.2.i.i = select i1 %.not71.i.i, i32 %spec.select79.i.i, i32 %i.asu
  %i.asv = and i32 %.2.i.i, %spec.select.i.i      ; 9 uses
  %xtraiter336 = and i64 %i.asj, 7                ; 2 uses
  %lcmp.mod337.not = icmp eq i64 %xtraiter336, 0
  br i1 %lcmp.mod337.not, label %.lr.ph93.i.i.prol.loopexit, label %.lr.ph93.i.i.prol

.lr.ph93.i.i.prol:                                ; preds = %._crit_edge.i103.i, %.lr.ph93.i.i.prol
  %indvars.iv121.i.i.prol = phi i64 [ %indvars.iv.next122.i.i.prol, %.lr.ph93.i.i.prol ], [ %i.asi, %._crit_edge.i103.i ] ; 2 uses
  %prol.iter338 = phi i64 [ %prol.iter338.next, %.lr.ph93.i.i.prol ], [ 0, %._crit_edge.i103.i ]
  %i.asw = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv121.i.i.prol
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asw, i64 4
  store i32 %i.asv, ptr %i.asx, align 4, !tbaa !500
  %indvars.iv.next122.i.i.prol = add nuw nsw i64 %indvars.iv121.i.i.prol, 1 ; 2 uses
  %prol.iter338.next = add i64 %prol.iter338, 1   ; 2 uses
  %prol.iter338.cmp.not = icmp eq i64 %prol.iter338.next, %xtraiter336
  br i1 %prol.iter338.cmp.not, label %.lr.ph93.i.i.prol.loopexit, label %.lr.ph93.i.i.prol, !llvm.loop !2159

.lr.ph93.i.i.prol.loopexit:                       ; preds = %.lr.ph93.i.i.prol, %._crit_edge.i103.i
  %indvars.iv121.i.i.unr = phi i64 [ %i.asi, %._crit_edge.i103.i ], [ %indvars.iv.next122.i.i.prol, %.lr.ph93.i.i.prol ]
  %i.asy = icmp ult i64 %i.asl, 7
  br i1 %i.asy, label %.preheader82.i.i, label %.lr.ph93.i.i

.lr.ph.i102.i:                                    ; preds = %.lr.ph.i102.i, %.lr.ph.preheader.i101.i.new
  %indvars.iv116.i.i = phi i64 [ %i.asi, %.lr.ph.preheader.i101.i.new ], [ %indvars.iv.next117.i.i.3, %.lr.ph.i102.i ] ; 5 uses
  %.06189.i.i = phi i32 [ 0, %.lr.ph.preheader.i101.i.new ], [ %i.ato, %.lr.ph.i102.i ]
  %niter335 = phi i64 [ 0, %.lr.ph.preheader.i101.i.new ], [ %niter335.next.3, %.lr.ph.i102.i ]
  %i.asz = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv116.i.i
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 4
  %i.atb = load i32, ptr %i.ata, align 4, !tbaa !500
  %i.atc = or i32 %i.atb, %.06189.i.i
  %i.atd = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv116.i.i
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 24
  %i.atf = load i32, ptr %i.ate, align 4, !tbaa !500
  %i.atg = or i32 %i.atf, %i.atc
  %i.ath = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv116.i.i
  %i.ati = getelementptr inbounds nuw i8, ptr %i.ath, i64 44
  %i.atj = load i32, ptr %i.ati, align 4, !tbaa !500
  %i.atk = or i32 %i.atj, %i.atg
  %i.atl = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv116.i.i
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atl, i64 64
  %i.atn = load i32, ptr %i.atm, align 4, !tbaa !500
  %i.ato = or i32 %i.atn, %i.atk                  ; 3 uses
  %indvars.iv.next117.i.i.3 = add nuw nsw i64 %indvars.iv116.i.i, 4 ; 2 uses
  %niter335.next.3 = add i64 %niter335, 4         ; 2 uses
  %niter335.ncmp.3 = icmp eq i64 %niter335.next.3, %unroll_iter334
  br i1 %niter335.ncmp.3, label %._crit_edge.i103.i.unr-lcssa, label %.lr.ph.i102.i, !llvm.loop !2160

.preheader82.i.i:                                 ; preds = %.lr.ph93.i.i.prol.loopexit, %.lr.ph93.i.i, %.preheader83.i.i
  %i.atp = add i32 %.06295.i.i, 1
  %umax.i100.i = call i32 @llvm.umax.i32(i32 %i.ape, i32 %i.atp) ; 3 uses
  %15 = add i32 %umax.i100.i, -1                  ; 2 uses
  %exitcond126.not.i.i204 = icmp eq i32 %.06295.i.i, %15
  br i1 %exitcond126.not.i.i204, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit78.i.i, label %.lr.ph206

bb.gd:                                            ; preds = %.lr.ph206
  %exitcond126.not.i.i = icmp eq i32 %16, %15
  br i1 %exitcond126.not.i.i, label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit78.i.i, label %.lr.ph206, !llvm.loop !533

.lr.ph206:                                        ; preds = %.preheader82.i.i, %bb.gd
  %.0.i77.i.i205 = phi i32 [ %16, %bb.gd ], [ %.06295.i.i, %.preheader82.i.i ] ; 2 uses
  %16 = add i32 %.0.i77.i.i205, 1                 ; 4 uses
  %17 = zext i32 %.0.i77.i.i205 to i64
  %i.atq = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %17
  %18 = zext i32 %16 to i64
  %i.atr = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %18
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atq, i64 8
  %i.att = load i32, ptr %i.ats, align 4, !tbaa !523
  %i.atu = getelementptr inbounds nuw i8, ptr %i.atr, i64 8
  %i.atv = load i32, ptr %i.atu, align 4, !tbaa !523
  %i.atw = icmp eq i32 %i.att, %i.atv
  br i1 %i.atw, label %bb.gd, label %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit78.i.i_crit_edge, !llvm.loop !533

._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit78.i.i_crit_edge: ; preds = %.lr.ph206
  br label %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit78.i.i, !llvm.loop !533

_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit78.i.i: ; preds = %bb.gd, %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit78.i.i_crit_edge, %.preheader82.i.i
  %.lcssa113.i.i = phi i32 [ %umax.i100.i, %.preheader82.i.i ], [ %16, %._ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit78.i.i_crit_edge ], [ %umax.i100.i, %bb.gd ]
  %i.atx = icmp ult i32 %.06295.i.i, %i.ape
  br i1 %i.atx, label %.preheader83.i.i, label %_ZL20hb_ot_shape_internalP21hb_ot_shape_context_t.exit, !llvm.loop !2161

.lr.ph93.i.i:                                     ; preds = %.lr.ph93.i.i.prol.loopexit, %.lr.ph93.i.i
  %indvars.iv121.i.i = phi i64 [ %indvars.iv.next122.i.i.7, %.lr.ph93.i.i ], [ %indvars.iv121.i.i.unr, %.lr.ph93.i.i.prol.loopexit ] ; 9 uses
  %i.aty = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv121.i.i
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 4
  store i32 %i.asv, ptr %i.atz, align 4, !tbaa !500
  %i.aua = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv121.i.i
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 24
  store i32 %i.asv, ptr %i.aub, align 4, !tbaa !500
  %i.auc = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv121.i.i
  %i.aud = getelementptr inbounds nuw i8, ptr %i.auc, i64 44
  store i32 %i.asv, ptr %i.aud, align 4, !tbaa !500
  %i.aue = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv121.i.i
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aue, i64 64
  store i32 %i.asv, ptr %i.auf, align 4, !tbaa !500
  %i.aug = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv121.i.i
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 84
  store i32 %i.asv, ptr %i.auh, align 4, !tbaa !500
  %i.aui = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv121.i.i
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aui, i64 104
  store i32 %i.asv, ptr %i.auj, align 4, !tbaa !500
  %i.auk = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv121.i.i
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 124
  store i32 %i.asv, ptr %i.aul, align 4, !tbaa !500
  %i.aum = getelementptr inbounds nuw [20 x i8], ptr %i.apb, i64 %indvars.iv121.i.i
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 144
  store i32 %i.asv, ptr %i.aun, align 4, !tbaa !500
  %indvars.iv.next122.i.i.7 = add nuw nsw i64 %indvars.iv121.i.i, 8 ; 2 uses
  %exitcond125.not.i.i.7 = icmp eq i64 %indvars.iv.next122.i.i.7, %wide.trip.count119.i.i
  br i1 %exitcond125.not.i.i.7, label %.preheader82.i.i, label %.lr.ph93.i.i, !llvm.loop !2162

_ZL20hb_ot_shape_internalP21hb_ot_shape_context_t.exit: ; preds = %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit78.i.i, %_ZNK11hb_buffer_t9group_endIFbRK15hb_glyph_info_tS3_EEEjjRKT_.exit74.i.i, %bb.fz, %bb.gc
  %i.auo = load i8, ptr %i.h, align 8, !tbaa !631
  %i.aup = and i8 %i.auo, -49
  store i8 %i.aup, ptr %i.h, align 8, !tbaa !631
  store i32 %i.g, ptr %i.f, align 8, !tbaa !531
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_ot_shape_plan_collect_lookups(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %_ZNK18hb_ot_shape_plan_t15collect_lookupsEjP8hb_set_t.exit [
    i32 1196643650, label %bb.c
    i32 1196445523, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.0.i ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1736
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZNK18hb_ot_shape_plan_t15collect_lookupsEjP8hb_set_t.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.d

bb.d:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i ] ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %indvars.iv.i.i
  %i.j = load i16, ptr %i.i, align 4, !tbaa !1739
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = load i8, ptr %i.g, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.f, !prof !48

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.f, i32 noundef %i.k)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.f, i32 noundef %i.k)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i: ; preds = %bb.f, %bb.e
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !1736
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %indvars.iv.next.i.i, %i.o
  br i1 %i.p, label %bb.d, label %_ZNK18hb_ot_shape_plan_t15collect_lookupsEjP8hb_set_t.exit, !llvm.loop !1802

_ZNK18hb_ot_shape_plan_t15collect_lookupsEjP8hb_set_t.exit: ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @hb_ot_shape_plan_get_feature_tags(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #24 {
bb.a:
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZNK11hb_ot_map_t16get_feature_tagsEjPjS0_.exit, label %_ZNK17hb_sorted_array_tIKN11hb_ot_map_t13feature_map_tEE9sub_arrayEjPj.exit.i

_ZNK17hb_sorted_array_tIKN11hb_ot_map_t13feature_map_tEE9sub_arrayEjPj.exit.i: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1850 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1849
  %storemerge.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.d, i32 %1)
  %i.e = load i32, ptr %2, align 4, !tbaa !139
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i.i, i32 %i.e) ; 4 uses
  store i32 %.sroa.speculated.i.i.i, ptr %2, align 4, !tbaa !139
  %i.f = zext i32 %1 to i64                       ; 2 uses
  %i.g = getelementptr [36 x i8], ptr %i.b, i64 %i.f ; 14 uses
  %.not11.i = icmp ne ptr %3, null
  %i.h = icmp ne i32 %.sroa.speculated.i.i.i, 0
  %or.cond.i = select i1 %.not11.i, i1 %i.h, i1 false
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %_ZNK11hb_ot_map_t16get_feature_tagsEjPjS0_.exit

.lr.ph.preheader.i:                               ; preds = %_ZNK17hb_sorted_array_tIKN11hb_ot_map_t13feature_map_tEE9sub_arrayEjPj.exit.i
  %wide.trip.count.i = zext i32 %.sroa.speculated.i.i.i to i64 ; 7 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated.i.i.i, 44
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.i = shl nuw nsw i64 %wide.trip.count.i, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.i
  %i.j = add nuw nsw i64 %wide.trip.count.i, %i.f
  %i.k = mul nuw nsw i64 %i.j, 36
  %i.l = getelementptr i8, ptr %i.b, i64 %i.k
  %scevgep4 = getelementptr i8, ptr %i.l, i64 -32
  %bound0 = icmp ult ptr %3, %scevgep4
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.m = getelementptr inbounds nuw [36 x i8], ptr %i.g, i64 %index
  %i.n = getelementptr inbounds nuw [36 x i8], ptr %i.g, i64 %index
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  %i.p = getelementptr inbounds nuw [36 x i8], ptr %i.g, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = getelementptr inbounds nuw [36 x i8], ptr %i.g, i64 %index
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 108
  %i.t = getelementptr inbounds nuw [36 x i8], ptr %i.g, i64 %index
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.v = getelementptr inbounds nuw [36 x i8], ptr %i.g, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 180
  %i.x = getelementptr inbounds nuw [36 x i8], ptr %i.g, i64 %index
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  %i.z = getelementptr inbounds nuw [36 x i8], ptr %i.g, i64 %index
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 252
  %i.ab = load i32, ptr %i.m, align 4, !tbaa !1851, !alias.scope !2163
  %i.ac = load i32, ptr %i.o, align 4, !tbaa !1851, !alias.scope !2163
  %i.ad = load i32, ptr %i.q, align 4, !tbaa !1851, !alias.scope !2163
  %i.ae = load i32, ptr %i.s, align 4, !tbaa !1851, !alias.scope !2163
  %i.af = insertelement <4 x i32> poison, i32 %i.ab, i64 0
  %i.ag = insertelement <4 x i32> %i.af, i32 %i.ac, i64 1
  %i.ah = insertelement <4 x i32> %i.ag, i32 %i.ad, i64 2
  %i.ai = insertelement <4 x i32> %i.ah, i32 %i.ae, i64 3
  %i.aj = load i32, ptr %i.u, align 4, !tbaa !1851, !alias.scope !2163
  %i.ak = load i32, ptr %i.w, align 4, !tbaa !1851, !alias.scope !2163
  %i.al = load i32, ptr %i.y, align 4, !tbaa !1851, !alias.scope !2163
  %i.am = load i32, ptr %i.aa, align 4, !tbaa !1851, !alias.scope !2163
  %i.an = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.ak, i64 1
  %i.ap = insertelement <4 x i32> %i.ao, i32 %i.al, i64 2
  %i.aq = insertelement <4 x i32> %i.ap, i32 %i.am, i64 3
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <4 x i32> %i.ai, ptr %i.ar, align 4, !tbaa !139, !alias.scope !2166, !noalias !2163
  store <4 x i32> %i.aq, ptr %i.as, align 4, !tbaa !139, !alias.scope !2166, !noalias !2163
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !2168

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZNK11hb_ot_map_t16get_feature_tagsEjPjS0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.au = getelementptr inbounds nuw [36 x i8], ptr %i.g, i64 %indvars.iv.i.prol
  %i.av = load i32, ptr %i.au, align 4, !tbaa !1851
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i.prol
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !139
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
end_hunk_5
begin_hunk_6_@hb_paint_sweep_gradient_tiles:bb.a
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
  %i.ao = zext i32 %1 to i64                      ; 5 uses
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
  %8 = zext i32 %.0269319 to i64
  br label %.lr.ph340

.lr.ph340:                                        ; preds = %.lr.ph340.preheader, %bb.s
  %indvars.iv390.a = phi i64 [ %i.ec, %.lr.ph340.preheader ], [ %indvars.iv.next391.a, %bb.s ] ; 6 uses
  %.1270.in337 = phi i64 [ %8, %.lr.ph340.preheader ], [ %indvars.iv390.a, %bb.s ] ; 4 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %indvars.iv390.a
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !94 ; 3 uses
  %i.ef = fcmp ugt float %i.ee, f0x40C90FDB
  br i1 %i.ef, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph340
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %.1270.in337
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !94
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %.1270.in337
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !139
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %indvars.iv390.a
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !139
  tail call void %5(float noundef %i.eh, i32 noundef %i.ej, float noundef %i.ee, i32 noundef %i.el, ptr noundef %6) #63
  %indvars.iv.next391.a = add nuw nsw i64 %indvars.iv390.a, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next391.a to i32
  %exitcond394.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond394.not, label %.loopexit.thread, label %.lr.ph340, !llvm.loop !2472

bb.t:                                             ; preds = %.lr.ph340
  %i.em = trunc nuw i64 %indvars.iv390.a to i32
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %.1270.in337
  %i.eo = load float, ptr %i.en, align 4, !tbaa !94 ; 3 uses
  %i.ep = fsub float f0x40C90FDB, %i.eo
  %i.eq = fsub float %i.ee, %i.eo
  %i.er = fdiv float %i.ep, %i.eq
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %.1270.in337
  %i.et = load i32, ptr %i.es, align 4, !tbaa !139 ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %indvars.iv390.a
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !139
  %i.ew = tail call fastcc noundef i32 @_ZL13hb_color_lerpjjf(i32 noundef %i.et, i32 noundef %i.ev, float noundef %i.er)
  tail call void %5(float noundef %i.eo, i32 noundef %i.et, float noundef f0x40C90FDB, i32 noundef %i.ew, ptr noundef %6) #63
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.t
  %.1270315 = phi i32 [ %i.em, %bb.t ], [ %.1270336, %bb.r ]
  %i.ex = icmp eq i32 %.1270315, %1
  br i1 %i.ex, label %.loopexit.thread, label %.loopexit306

.loopexit.thread:                                 ; preds = %bb.s, %.loopexit
  %i.ey = add i32 %1, -1
  %i.ez = zext i32 %i.ey to i64                   ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !139 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.ez
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !94
  tail call void %5(float noundef %i.fd, i32 noundef %i.fb, float noundef f0x40C90FDB, i32 noundef %i.fb, ptr noundef %6) #63
  br label %.loopexit306

bb.u:                                             ; preds = %.loopexit441
  %i.fe = add i32 %1, -1                          ; 2 uses
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.ff ; 2 uses
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !94 ; 3 uses
  %i.fi = load float, ptr %.0266, align 4, !tbaa !94 ; 4 uses
  %i.fj = fsub float %i.fh, %i.fi                 ; 7 uses
  %i.fk = tail call float @llvm.fabs.f32(float %i.fj) ; 4 uses
  %i.fl = fcmp olt float %i.fk, f0x358637BD
  br i1 %i.fl, label %.loopexit306, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fm = fcmp ult float %i.fi, 0.000000e+00
  br i1 %i.fm, label %.preheader307, label %.preheader309

.preheader309:                                    ; preds = %bb.v
  %i.fn = fcmp ogt float %i.fi, 0.000000e+00
  br i1 %i.fn, label %.lr.ph327, label %.preheader.lr.ph

.lr.ph327:                                        ; preds = %.preheader309
  %i.fo = fcmp ogt float %i.fj, 0.000000e+00      ; 2 uses
  %.1264.v = select i1 %i.fo, i32 -1, i32 1
  %i.fp = fneg float %i.fj
  %.1262.p = select i1 %i.fo, float %i.fp, float %i.fj
  br label %bb.w

.preheader307:                                    ; preds = %bb.v
  %i.fq = fcmp olt float %i.fh, 0.000000e+00
  br i1 %i.fq, label %.lr.ph330, label %.preheader.lr.ph

.lr.ph330:                                        ; preds = %.preheader307
  %i.fr = fcmp ogt float %i.fj, 0.000000e+00      ; 2 uses
  %.3.v = select i1 %i.fr, i32 1, i32 -1
  %i.fs = fneg float %i.fj
  %.1.p = select i1 %i.fr, float %i.fj, float %i.fs
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph327, %bb.w
  %.0261326 = phi float [ %i.fi, %.lr.ph327 ], [ %.1262, %bb.w ]
  %.0263325 = phi i32 [ 0, %.lr.ph327 ], [ %.1264, %bb.w ]
  %.1264 = add nsw i32 %.0263325, %.1264.v        ; 2 uses
  %.1262 = fadd float %.1262.p, %.0261326         ; 2 uses
  %i.ft = fcmp ogt float %.1262, 0.000000e+00
  br i1 %i.ft, label %bb.w, label %.loopexit308, !llvm.loop !2473

bb.x:                                             ; preds = %.lr.ph330, %bb.x
  %.0260329 = phi float [ %i.fh, %.lr.ph330 ], [ %.1, %bb.x ]
  %.2328 = phi i32 [ 0, %.lr.ph330 ], [ %.3, %bb.x ]
  %.3 = add nsw i32 %.2328, %.3.v                 ; 2 uses
  %.1 = fadd float %.1.p, %.0260329               ; 2 uses
  %i.fu = fcmp olt float %.1, 0.000000e+00
  br i1 %i.fu, label %bb.x, label %.loopexit308, !llvm.loop !2474

.loopexit308:                                     ; preds = %bb.w, %bb.x
  %.4 = phi i32 [ %.3, %bb.x ], [ %.1264, %bb.w ] ; 2 uses
  %i.fv = icmp slt i32 %.4, 1000
  br i1 %i.fv, label %.preheader.lr.ph, label %.loopexit306

.preheader.lr.ph:                                 ; preds = %.preheader309, %.preheader307, %.loopexit308
  %.4415 = phi i32 [ %.4, %.loopexit308 ], [ 0, %.preheader307 ], [ 0, %.preheader309 ]
  %.not343 = icmp eq i32 %1, 1
  %i.fw = icmp eq i32 %2, 2
  br i1 %.not343, label %.loopexit306.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count381 = zext i32 %1 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0259334 = phi i32 [ %i.hu, %._crit_edge ], [ %.4415, %.preheader.preheader ] ; 3 uses
  %i.fx = trunc i32 %.0259334 to i1
  %or.cond4 = and i1 %i.fw, %i.fx
  %i.fy = sitofp i32 %.0259334 to float           ; 3 uses
  br label %bb.y

bb.y:                                             ; preds = %.preheader, %bb.ag
  %indvars.iv376 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next377, %bb.ag ] ; 5 uses
  br i1 %or.cond4, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fz = load float, ptr %.0266, align 4, !tbaa !94
  %i.ga = load float, ptr %i.fg, align 4, !tbaa !94
  %i.gb = fadd float %i.fz, %i.ga                 ; 2 uses
  %i.gc = trunc nuw i64 %indvars.iv376 to i32     ; 2 uses
  %i.gd = sub i32 %1, %i.gc
  %i.ge = zext i32 %i.gd to i64                   ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.ge
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !94
  %i.gh = fsub float %i.gb, %i.gg
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.fk, float %i.gh)
  %i.gj = sub i32 %i.fe, %i.gc
  %i.gk = zext i32 %i.gj to i64                   ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.gk
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !94
  %i.gn = fsub float %i.gb, %i.gm
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.go = add nsw i64 %indvars.iv376, -1          ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %i.go
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !94
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.fk, float %i.gq)
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %indvars.iv376
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !94
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink = phi float [ %i.gt, %bb.aa ], [ %i.gn, %bb.z ]
  %.0257 = phi float [ %i.gr, %bb.aa ], [ %i.gi, %bb.z ] ; 7 uses
  %.pn = phi i64 [ %i.go, %bb.aa ], [ %i.ge, %bb.z ]
  %.pn296 = phi i64 [ %indvars.iv376, %bb.aa ], [ %i.gk, %bb.z ]
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.fk, float %.sink) ; 6 uses
  %.0254.in = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %.pn296
  %.0254 = load i32, ptr %.0254.in, align 4, !tbaa !139 ; 4 uses
  %.0255.in = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %.pn
  %.0255 = load i32, ptr %.0255.in, align 4, !tbaa !139 ; 4 uses
  %i.gv = fcmp olt float %i.gu, 0.000000e+00
  br i1 %i.gv, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gw = fcmp olt float %.0257, 0.000000e+00
  br i1 %i.gw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gx = fsub float 0.000000e+00, %.0257
  %i.gy = fsub float %i.gu, %.0257
  %i.gz = fdiv float %i.gx, %i.gy
  %i.ha = insertelement <4 x i32> poison, i32 %.0255, i64 0
  %i.hb = shufflevector <4 x i32> %i.ha, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hc = lshr <4 x i32> %i.hb, <i32 8, i32 16, i32 24, i32 0>
  %i.hd = and <4 x i32> %i.hc, <i32 255, i32 255, i32 -1, i32 255> ; 2 uses
  %i.he = insertelement <4 x i32> poison, i32 %.0254, i64 0
  %i.hf = shufflevector <4 x i32> %i.he, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hg = lshr <4 x i32> %i.hf, <i32 8, i32 16, i32 24, i32 0>
  %i.hh = and <4 x i32> %i.hg, <i32 255, i32 255, i32 -1, i32 255>
  %i.hi = uitofp <4 x i32> %i.hd to <4 x float>
  %i.hj = sub nsw <4 x i32> %i.hh, %i.hd
  %i.hk = sitofp <4 x i32> %i.hj to <4 x float>
  %i.hl = insertelement <4 x float> poison, float %i.gz, i64 0
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hm, <4 x float> %i.hk, <4 x float> %i.hi)
  %i.ho = fadd <4 x float> %i.hn, splat (float 5.000000e-01)
  %i.hp = fptoui <4 x float> %i.ho to <4 x i32>
  %i.hq = shl <4 x i32> %i.hp, <i32 16, i32 8, i32 0, i32 24>
  %i.hr = and <4 x i32> %i.hq, <i32 16711680, i32 65280, i32 255, i32 -1>
  %i.hs = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.hr)
  tail call void %5(float noundef 0.000000e+00, i32 noundef %i.hs, float noundef %i.gu, i32 noundef %.0254, ptr noundef %6) #63
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.ht = fcmp ult float %i.gu, f0x40C90FDB
  br i1 %i.ht, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  tail call void %5(float noundef %.0257, i32 noundef %.0255, float noundef %i.gu, i32 noundef %.0254, ptr noundef %6) #63
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ab, %bb.af, %bb.ad
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond382.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count381
  br i1 %exitcond382.not, label %._crit_edge, label %bb.y, !llvm.loop !2475

._crit_edge:                                      ; preds = %bb.ag
  %i.hu = add nsw i32 %.0259334, 1                ; 2 uses
  %exitcond383.not = icmp eq i32 %i.hu, 1000
  br i1 %exitcond383.not, label %.loopexit306, label %.preheader, !llvm.loop !2476

bb.ah:                                            ; preds = %bb.ae
  %i.hv = fsub float f0x40C90FDB, %.0257
  %i.hw = fsub float %i.gu, %.0257
  %i.hx = fdiv float %i.hv, %i.hw
  %i.hy = insertelement <4 x i32> poison, i32 %.0255, i64 0
  %i.hz = shufflevector <4 x i32> %i.hy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ia = lshr <4 x i32> %i.hz, <i32 8, i32 16, i32 24, i32 0>
  %i.ib = and <4 x i32> %i.ia, <i32 255, i32 255, i32 -1, i32 255> ; 2 uses
  %i.ic = insertelement <4 x i32> poison, i32 %.0254, i64 0
  %i.id = shufflevector <4 x i32> %i.ic, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ie = lshr <4 x i32> %i.id, <i32 8, i32 16, i32 24, i32 0>
  %i.if = and <4 x i32> %i.ie, <i32 255, i32 255, i32 -1, i32 255>
  %i.ig = uitofp <4 x i32> %i.ib to <4 x float>
end_hunk_6
begin_hunk_7_@_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t22apply_deltas_to_pointsEj10hb_array_tIKiES5_I15contour_point_tER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tEb:bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i342, i64 8
  %i.dl = load i32, ptr %i.dk, align 1, !tbaa !58
  %i.dm = call noundef i32 @llvm.bswap.i32(i32 %i.dl)
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i342, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i342, i64 6
  %i.dq = load i16, ptr %i.dp, align 1, !tbaa !62
  %i.dr = call noundef i16 @llvm.bswap.i16(i16 %i.dq)
  %i.ds = zext i16 %i.dr to i32
  %i.dt = mul nuw i32 %i.ds, %i.dj                ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %spec.select, i64 4 ; 2 uses
  %i.dy = zext i16 %i.di to i64                   ; 2 uses
  %i.dz = icmp ugt i16 %i.di, 15
  %.not763 = icmp eq i16 %i.dh, 0
  %.sroa.4.8.extract.trunc = trunc i64 %3 to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i954, i64 %.sroa.6.0.i952 ; 2 uses
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = icmp slt i32 %.sroa.7.8.extract.trunc, 0
  %.sroa.2.8.insert.ext.i.i367 = and i64 %5, 2147483647 ; 2 uses
  %i.ee = mul i32 %.sroa.7.8.extract.trunc, 12
  %i.ef = select i1 %8, i32 48, i32 %i.ee         ; 2 uses
  %.not.i369 = icmp eq i32 %i.ef, 0               ; 2 uses
  %i.eg = add i64 %5, 4294967292
  %i.eh = and i64 %i.eg, 4294967295
  %i.ei = select i1 %8, i64 %i.eh, i64 0          ; 2 uses
  %i.ej = zext i32 %i.ef to i64                   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 76
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 10 uses
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 92 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 10 uses
  %i.eo = mul i64 %5, 12
  %i.ep = and i64 %i.eo, 4294967292               ; 2 uses
  %.not.i.i.i379 = icmp eq i64 %i.ep, 0
  %i.eq = add i32 %.sroa.7.8.extract.trunc, -4    ; 3 uses
  %i.er = select i1 %8, i32 %i.eq, i32 0          ; 2 uses
  %i.es = icmp ult i32 %i.er, %.sroa.7.8.extract.trunc ; 4 uses
  %i.et = zext i32 %i.er to i64                   ; 18 uses
  %i.eu = and i64 %5, 4294967295                  ; 9 uses
  %i.ev = sub nsw i64 %i.eu, %i.et                ; 2 uses
  %i.ew = xor i64 %i.et, -1
  %i.ex = add nsw i64 %i.eu, %i.ew                ; 2 uses
  %xtraiter1191 = and i64 %i.ev, 1
  %lcmp.mod1192.not = icmp eq i64 %xtraiter1191, 0
  %i.ey = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %i.et ; 2 uses
  %indvars.iv.next838.prol = add nuw nsw i64 %i.et, 1
  %i.ez = icmp eq i64 %i.ex, 0
  %i.fa = sub nsw i64 %i.eu, %i.et                ; 3 uses
  %min.iters.check1051 = icmp ult i64 %i.fa, 5
  %i.fb = and i64 %i.fa, 3                        ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 0
  %i.fd = select i1 %i.fc, i64 4, i64 %i.fb
  %n.vec1053 = sub nsw i64 %i.fa, %i.fd           ; 2 uses
  %i.fe = add nsw i64 %n.vec1053, %i.et
  %i.ff = sub nsw i64 %i.eu, %i.et                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ff, 5
  %i.fg = and i64 %i.ff, 3                        ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 0
  %i.fi = select i1 %i.fh, i64 4, i64 %i.fg
  %n.vec = sub nsw i64 %i.ff, %i.fi               ; 2 uses
  %i.fj = add nsw i64 %n.vec, %i.et
  br label %bb.o

bb.o:                                             ; preds = %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403, %bb.n
  %i.fk = phi i16 [ %i.ch, %bb.n ], [ %i.ant, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 2 uses
  %.sroa.43.0 = phi ptr [ %i.bn, %bb.n ], [ %i.anm, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 7 uses
  %.sroa.22.0.in = phi i64 [ %.0.i.i.i, %bb.n ], [ %.0.i.i401, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 2 uses
  %.sroa.16.0 = phi i32 [ %.sroa.16.1, %bb.n ], [ %i.anl, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 2 uses
  %.sroa.0439.0 = phi i32 [ %i.bl, %bb.n ], [ %i.ann, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 3 uses
  %.sroa.6436.0 = phi i64 [ 0, %bb.n ], [ %.sroa.6436.5589, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 8 uses
  %.sroa.0435.0 = phi ptr [ %i.cv, %bb.n ], [ %.sroa.0435.5590, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 7 uses
  %.sroa.18.0 = phi i64 [ 0, %bb.n ], [ %.sroa.18.3591, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 3 uses
  %.sroa.0417.0 = phi ptr [ %i.cz, %bb.n ], [ %.sroa.0417.3592, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 2 uses
  %.0284 = phi i8 [ 0, %bb.n ], [ %.4288593, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 3 uses
  %.0264 = phi i1 [ false, %bb.n ], [ %.2266594, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 2 uses
  %.0260 = phi i1 [ false, %bb.n ], [ %.3263595, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 2 ; 2 uses
  %i.fm = call noundef i16 @llvm.bswap.i16(i16 %i.fk) ; 3 uses
  %i.fn = zext i16 %i.fm to i32                   ; 4 uses
  %i.fo = and i32 %i.fn, 4095                     ; 10 uses
  %i.fp = and i32 %i.fn, 57343
  %i.fq = load i32, ptr %spec.select, align 4, !tbaa !328 ; 4 uses
  %i.fr = icmp ult i32 %i.fp, %i.fq
  br i1 %i.fr, label %bb.p, label %.thread512, !prof !49

bb.p:                                             ; preds = %bb.o
  %.not.i138.i = icmp ult i32 %i.fo, %i.fq
  br i1 %.not.i138.i, label %bb.q, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, !prof !49

bb.q:                                             ; preds = %bb.p
  %i.fs = zext nneg i32 %i.fo to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.fs
  %i.fu = load atomic i32, ptr %i.ft monotonic, align 4 ; 2 uses
  switch i32 %i.fu, label %bb.r [
    i32 0, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit
    i32 -2147483648, label %bb.s
  ], !prof !622

bb.r:                                             ; preds = %bb.q
  %i.fv = sitofp i32 %i.fu to float
  %i.fw = fmul nnan float %i.fv, f0x30800000
  %i.fx = fpext float %i.fw to double
  br label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit

bb.s:                                             ; preds = %bb.q
  %i.fy = and i32 %i.fn, 16384
  %i.fz = icmp ne i32 %i.fy, 0                    ; 2 uses
  %.not.i = icmp sgt i16 %i.fm, -1
  br i1 %.not.i, label %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i, label %.split, !prof !49

.thread512:                                       ; preds = %bb.o
  %i.ga = and i32 %i.fn, 16384
  %i.gb = icmp ne i32 %i.ga, 0                    ; 4 uses
  %.not.i514 = icmp sgt i16 %i.fm, -1
  br i1 %.not.i514, label %bb.t, label %.split, !prof !49

.split:                                           ; preds = %.thread512, %bb.s
  %i.gc = phi i1 [ %i.gb, %.thread512 ], [ %i.fz, %bb.s ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 4 ; 2 uses
  br i1 %i.gc, label %bb.x, label %bb.y

bb.t:                                             ; preds = %.thread512
  %.not127.i = icmp eq i32 %i.fq, 0
  br i1 %.not127.i, label %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i, label %.thread517

.thread517:                                       ; preds = %bb.t
  %.not.i.i = icmp samesign ult i32 %i.fo, %i.fq
  br i1 %.not.i.i, label %bb.u, label %.thread522, !prof !49

bb.u:                                             ; preds = %.thread517
  %i.ge = zext nneg i32 %i.fo to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.ge
  %i.gg = load atomic i32, ptr %i.gf monotonic, align 4 ; 2 uses
  switch i32 %i.gg, label %bb.v [
    i32 0, label %.thread522
    i32 -2147483648, label %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i
  ], !prof !622

bb.v:                                             ; preds = %bb.u
  %i.gh = sitofp i32 %i.gg to float
  %i.gi = fmul nnan float %i.gh, f0x30800000      ; 3 uses
  %i.gj = fcmp une float %i.gi, 0.000000e+00
  %i.gk = fcmp une float %i.gi, 1.000000e+00
  %i.gl = and i1 %i.gj, %i.gk
  %or.cond5.i = select i1 %i.gb, i1 %i.gl, i1 false
  br i1 %or.cond5.i, label %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i.thread, label %.thread522

.thread522:                                       ; preds = %bb.u, %.thread517, %bb.v
  %.0502.ph525 = phi float [ %i.gi, %bb.v ], [ 0.000000e+00, %.thread517 ], [ 0.000000e+00, %bb.u ]
  %i.gm = fpext float %.0502.ph525 to double
  br label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit

_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i:        ; preds = %bb.s, %bb.u, %bb.t
  %i.gn = phi i1 [ %i.gb, %bb.u ], [ %i.gb, %bb.t ], [ %i.fz, %bb.s ]
  %i.go = add nuw nsw i32 %i.fo, 1
  %i.gp = mul nuw nsw i32 %i.go, %i.dj
  %i.gq = icmp ugt i32 %i.gp, %i.dt
  br i1 %i.gq, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, label %bb.w, !prof !48

_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i.thread: ; preds = %bb.v
  %i.gr = add nuw nsw i32 %i.fo, 1
  %i.gs = mul nuw nsw i32 %i.gr, %i.dj
  %i.gt = icmp ugt i32 %i.gs, %i.dt
  br i1 %i.gt, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, label %.thread, !prof !48

.thread:                                          ; preds = %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i.thread
  %i.gu = mul nuw nsw i32 %i.fo, %i.dj
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.gv
  br label %bb.x

bb.w:                                             ; preds = %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i
  %i.gx = mul nuw nsw i32 %i.fo, %i.dj
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.gy ; 2 uses
  br i1 %i.gn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread, %.split, %bb.w
  %.199.i535 = phi ptr [ %i.gd, %.split ], [ %i.gz, %bb.w ], [ %i.gw, %.thread ]
  %.2107.i533 = phi ptr [ null, %.split ], [ %spec.select, %bb.w ], [ null, %.thread ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 4
  %.mask.i.i = and i16 %i.fk, 128
  %.not.i352 = icmp eq i16 %.mask.i.i, 0
  %i.hb = select i1 %.not.i352, i64 0, i64 %i.dy
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %i.hb ; 2 uses
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %i.dy
  br label %bb.y

bb.y:                                             ; preds = %.split, %bb.x, %bb.w
  %.199.i534 = phi ptr [ %.199.i535, %bb.x ], [ %i.gz, %bb.w ], [ %i.gd, %.split ] ; 3 uses
  %.2107.i532 = phi ptr [ %.2107.i533, %bb.x ], [ %spec.select, %bb.w ], [ null, %.split ] ; 2 uses
  %i.he = phi i1 [ true, %bb.x ], [ false, %bb.w ], [ false, %.split ]
  %.097.i = phi ptr [ %i.hc, %bb.x ], [ null, %bb.w ], [ null, %.split ]
  %.096.i = phi ptr [ %i.hd, %bb.x ], [ null, %bb.w ], [ null, %.split ]
  br i1 %.not763, label %.critedge7.i, label %.lr.ph668

.lr.ph668:                                        ; preds = %bb.y, %bb.an
  %.0.i667 = phi i32 [ %i.jc, %bb.an ], [ 0, %bb.y ] ; 6 uses
  %.092.i666 = phi double [ %.5.i.ph, %bb.an ], [ 1.000000e+00, %bb.y ] ; 11 uses
  %.3108.i665 = phi ptr [ %.6111.i.ph, %bb.an ], [ %.2107.i532, %bb.y ] ; 7 uses
  br i1 %i.dz, label %.preheader636.preheader, label %.critedge7.i.thread

.preheader636.preheader:                          ; preds = %.lr.ph668
  %9 = add i32 %.0.i667, 4                        ; 2 uses
  %.not128.i1045 = icmp ugt i32 %9, %i.dj
  br i1 %.not128.i1045, label %.critedge.i, label %.lr.ph1047

.preheader636:                                    ; preds = %.lr.ph1047
  %10 = add i32 %11, 4                            ; 2 uses
  %.not128.i = icmp ugt i32 %10, %i.dj
  br i1 %.not128.i, label %.critedge.i, label %.lr.ph1047, !llvm.loop !2667

.lr.ph1047:                                       ; preds = %.preheader636.preheader, %.preheader636
  %11 = phi i32 [ %10, %.preheader636 ], [ %9, %.preheader636.preheader ] ; 3 uses
  %.1.i1046 = phi i32 [ %11, %.preheader636 ], [ %.0.i667, %.preheader636.preheader ] ; 2 uses
  %12 = zext i32 %.1.i1046 to i64
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %.199.i534, i64 %12
  %i.hg = load i64, ptr %i.hf, align 1, !tbaa !2668
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %.preheader636, label %..critedge.i_crit_edge, !llvm.loop !2667

..critedge.i_crit_edge:                           ; preds = %.lr.ph1047
  br label %.critedge.i, !llvm.loop !2667

.critedge.i:                                      ; preds = %.preheader636, %..critedge.i_crit_edge, %.preheader636.preheader
  %.1.i.lcssa = phi i32 [ %.1.i1046, %..critedge.i_crit_edge ], [ %.0.i667, %.preheader636.preheader ], [ %11, %.preheader636 ] ; 2 uses
  %i.hi = icmp ult i32 %.1.i.lcssa, %i.dj
  br i1 %i.hi, label %.lr.ph.preheader, label %.critedge7.i

.lr.ph.preheader:                                 ; preds = %.critedge.i
  %13 = zext nneg i32 %.1.i.lcssa to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.z
  %indvars.iv = phi i64 [ %13, %.lr.ph.preheader ], [ %indvars.iv.next.a, %bb.z ] ; 4 uses
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %.199.i534, i64 %indvars.iv
  %i.hk = load i16, ptr %i.hj, align 1, !tbaa !62 ; 3 uses
  %i.hl = icmp eq i16 %i.hk, 0
  br i1 %i.hl, label %bb.z, label %.critedge7.i.thread.thread

bb.z:                                             ; preds = %.lr.ph
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.a to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %i.dj
  br i1 %exitcond.not, label %.critedge7.i, label %.lr.ph, !llvm.loop !2670

.critedge7.i.thread.thread:                       ; preds = %.lr.ph
  %i.hm = trunc nuw i64 %indvars.iv to i32
  %i.hn = call noundef i16 @llvm.bswap.i16(i16 %i.hk)
  br label %bb.aa

.critedge7.i.thread:                              ; preds = %.lr.ph668
  %.phi.trans.insert876 = zext nneg i32 %.0.i667 to i64 ; 2 uses
  %.phi.trans.insert877 = getelementptr inbounds nuw [2 x i8], ptr %.199.i534, i64 %.phi.trans.insert876
  %.pre878 = load i16, ptr %.phi.trans.insert877, align 1, !tbaa !62 ; 3 uses
  %i.ho = call noundef i16 @llvm.bswap.i16(i16 %.pre878)
  %.not130.i = icmp eq i16 %.pre878, 0
  br i1 %.not130.i, label %bb.an, label %bb.aa

bb.aa:                                            ; preds = %.critedge7.i.thread.thread, %.critedge7.i.thread
  %i.hp = phi i16 [ %i.hn, %.critedge7.i.thread.thread ], [ %i.ho, %.critedge7.i.thread ] ; 4 uses
  %.3.i963 = phi i32 [ %i.hm, %.critedge7.i.thread.thread ], [ %.0.i667, %.critedge7.i.thread ] ; 9 uses
  %i.hq = phi i16 [ %i.hk, %.critedge7.i.thread.thread ], [ %.pre878, %.critedge7.i.thread ] ; 2 uses
  %.pre-phi962 = phi i64 [ %indvars.iv, %.critedge7.i.thread.thread ], [ %.phi.trans.insert876, %.critedge7.i.thread ] ; 3 uses
  %i.hr = sext i16 %i.hp to i32                   ; 6 uses
  %.not.i.i355 = icmp ult i32 %.3.i963, %.sroa.4.8.extract.trunc
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.pre-phi962
  %.0.i.i356 = select i1 %.not.i.i355, ptr %i.hs, ptr @_hb_NullPool, !prof !49
  %i.ht = load i32, ptr %.0.i.i356, align 4, !tbaa !139 ; 10 uses
  %.not131.i = icmp eq i32 %i.ht, 0
  br i1 %.not131.i, label %.critedge7.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hu = icmp eq i32 %i.ht, %i.hr
  br i1 %i.hu, label %bb.an, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.he, label %bb.ad, label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %.097.i, i64 %.pre-phi962
  %i.hw = load i16, ptr %i.hv, align 1, !tbaa !62 ; 2 uses
  %i.hx = call noundef i16 @llvm.bswap.i16(i16 %i.hw) ; 3 uses
  %i.hy = sext i16 %i.hx to i32                   ; 3 uses
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %.096.i, i64 %.pre-phi962
  %i.ia = load i16, ptr %i.hz, align 1, !tbaa !62 ; 2 uses
  %i.ib = call noundef i16 @llvm.bswap.i16(i16 %i.ia) ; 3 uses
  %i.ic = sext i16 %i.ib to i32                   ; 3 uses
  %i.id = icmp slt i16 %i.hp, %i.hx
  %i.ie = icmp sgt i16 %i.hp, %i.ib
  %or.cond.i = or i1 %i.id, %i.ie
  br i1 %or.cond.i, label %bb.an, label %bb.ae, !prof !252

bb.ae:                                            ; preds = %bb.ad
  %i.if = icmp slt i16 %i.hx, 0
  %i.ig = icmp sgt i16 %i.ib, 0
  %or.cond9.i = and i1 %i.if, %i.ig
  br i1 %or.cond9.i, label %bb.an, label %bb.af, !prof !48

bb.af:                                            ; preds = %bb.ae
  %i.ih = icmp slt i32 %i.ht, %i.hy
  %i.ii = icmp sgt i32 %i.ht, %i.ic
  %or.cond137.i = or i1 %i.ih, %i.ii
  br i1 %or.cond137.i, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ij = icmp slt i32 %i.ht, %i.hr
  br i1 %i.ij, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %.not133.i = icmp eq i16 %i.hq, %i.hw
  br i1 %.not133.i, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ik = sub nsw i32 %i.ht, %i.hy
  %i.il = sitofp i32 %i.ik to double
  %i.im = sub nsw i32 %i.hr, %i.hy
  %i.in = sitofp i32 %i.im to double
  %i.io = fdiv double %i.il, %i.in
  %i.ip = fmul double %.092.i666, %i.io
  br label %bb.an

bb.aj:                                            ; preds = %bb.ag
  %.not132.i = icmp eq i16 %i.hq, %i.ia
  br i1 %.not132.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.iq = sub nsw i32 %i.ic, %i.ht
  %i.ir = sitofp i32 %i.iq to double
  %i.is = sub nsw i32 %i.ic, %i.hr
  %i.it = sitofp i32 %i.is to double
  %i.iu = fdiv double %i.ir, %i.it
  %i.iv = fmul double %.092.i666, %i.iu
  br label %bb.an

bb.al:                                            ; preds = %bb.ac
  %.sroa.speculated469 = call i32 @llvm.smin.i32(i32 %i.hr, i32 0)
  %i.iw = icmp slt i32 %i.ht, %.sroa.speculated469
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.hr, i32 0)
  %i.ix = icmp sgt i32 %i.ht, %.sroa.speculated
  %or.cond624 = or i1 %i.iw, %i.ix
  br i1 %or.cond624, label %.critedge7.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iy = sitofp i32 %i.ht to double
  %i.iz = sitofp i16 %i.hp to double
  %i.ja = fdiv double %i.iy, %i.iz
  %i.jb = fmul double %.092.i666, %i.ja
  br label %bb.an

bb.an:                                            ; preds = %.critedge7.i.thread, %bb.am, %bb.ab, %bb.ah, %bb.ad, %bb.ae, %bb.ai, %bb.aj, %bb.ak
  %.3.i964 = phi i32 [ %.3.i963, %bb.ae ], [ %.3.i963, %bb.ad ], [ %.3.i963, %bb.ai ], [ %.3.i963, %bb.aj ], [ %.3.i963, %bb.ak ], [ %.3.i963, %bb.ah ], [ %.3.i963, %bb.ab ], [ %.3.i963, %bb.am ], [ %.0.i667, %.critedge7.i.thread ]
  %.6111.i.ph = phi ptr [ null, %bb.ae ], [ null, %bb.ad ], [ null, %bb.ai ], [ null, %bb.aj ], [ null, %bb.ak ], [ null, %bb.ah ], [ %.3108.i665, %bb.ab ], [ %.3108.i665, %bb.am ], [ %.3108.i665, %.critedge7.i.thread ] ; 2 uses
  %.5.i.ph = phi double [ %.092.i666, %bb.ae ], [ %.092.i666, %bb.ad ], [ %i.ip, %bb.ai ], [ %.092.i666, %bb.aj ], [ %i.iv, %bb.ak ], [ %.092.i666, %bb.ah ], [ %.092.i666, %bb.ab ], [ %i.jb, %bb.am ], [ %.092.i666, %.critedge7.i.thread ] ; 2 uses
  %i.jc = add nuw i32 %.3.i964, 1                 ; 2 uses
  %i.jd = icmp ult i32 %i.jc, %i.dj
  br i1 %i.jd, label %.lr.ph668, label %.critedge7.i, !llvm.loop !2671

.critedge7.i:                                     ; preds = %bb.an, %bb.al, %bb.aa, %.critedge.i, %bb.z, %bb.y
  %.3108.i654 = phi ptr [ %.2107.i532, %bb.y ], [ %.3108.i665, %bb.z ], [ %.3108.i665, %.critedge.i ], [ %.6111.i.ph, %bb.an ], [ %.3108.i665, %bb.al ], [ %.3108.i665, %bb.aa ] ; 3 uses
  %.6.i = phi double [ 1.000000e+00, %bb.y ], [ %.092.i666, %bb.z ], [ %.092.i666, %.critedge.i ], [ %.5.i.ph, %bb.an ], [ 0.000000e+00, %bb.al ], [ 0.000000e+00, %bb.aa ] ; 4 uses
  %.not134.i = icmp eq ptr %.3108.i654, null
  br i1 %.not134.i, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, label %bb.ao

bb.ao:                                            ; preds = %.critedge7.i
  %i.je = load i32, ptr %.3108.i654, align 4, !tbaa !328
  %.not.i141.i = icmp ult i32 %i.fo, %i.je
  br i1 %.not.i141.i, label %bb.ap, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, !prof !49

bb.ap:                                            ; preds = %bb.ao
  %i.jf = fptrunc double %.6.i to float
  %i.jg = getelementptr inbounds nuw i8, ptr %.3108.i654, i64 4
  %i.jh = zext nneg i32 %i.fo to i64
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.jh
  %i.jj = fmul float %i.jf, f0x4E800000
  %i.jk = fadd float %i.jj, 5.000000e-01
  %i.jl = call noundef float @llvm.floor.f32(float %i.jk)
  %i.jm = fptosi float %i.jl to i32
  store atomic i32 %i.jm, ptr %i.ji monotonic, align 4
  br label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit

_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit: ; preds = %bb.af, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i.thread, %bb.q, %bb.r, %bb.p, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i, %.thread522, %bb.ao, %bb.ap, %.critedge7.i
  %.4116.i = phi double [ 0.000000e+00, %bb.q ], [ %.6.i, %bb.ao ], [ %i.gm, %.thread522 ], [ %.6.i, %.critedge7.i ], [ %.6.i, %bb.ap ], [ 0.000000e+00, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i ], [ 0.000000e+00, %bb.p ], [ %i.fx, %bb.r ], [ 0.000000e+00, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i.thread ], [ 0.000000e+00, %bb.af ]
  %i.jn = fptrunc double %.4116.i to float        ; 8 uses
  %i.jo = fcmp oeq float %i.jn, 0.000000e+00
  br i1 %i.jo, label %.thread580, label %bb.aq

bb.aq:                                            ; preds = %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit
  br i1 %.0264, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread, label %.preheader646.preheader

.preheader646.preheader:                          ; preds = %bb.aq
  %.pre879 = load i16, ptr %i.fl, align 1, !tbaa !62
  br label %.preheader646

.preheader646:                                    ; preds = %.preheader646.preheader, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit
  %i.jp = phi i16 [ %i.jy, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ %.pre879, %.preheader646.preheader ]
  %.sroa.14413.0 = phi ptr [ %i.jr, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ %.sroa.43.0, %.preheader646.preheader ]
  %.sroa.9.0 = phi i64 [ %.0.i.i361, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ %.sroa.22.0.in, %.preheader646.preheader ]
  %.sroa.0409.0 = phi i32 [ %i.js, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ %.sroa.0439.0, %.preheader646.preheader ] ; 2 uses
  %i.jq = and i16 %i.jp, 32
  %.not615 = icmp eq i16 %i.jq, 0
  br i1 %.not615, label %bb.ar, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread

bb.ar:                                            ; preds = %.preheader646
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.14413.0, i64 %.sroa.9.0 ; 4 uses
  %i.js = add nsw i32 %.sroa.0409.0, -1
  %i.jt = icmp slt i32 %.sroa.0409.0, 2
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = sub i64 %i.jv, %i.ce
  %.not.i359 = icmp ugt i64 %i.jw, %.sroa.6.0.i952
  %or.cond755 = select i1 %i.jt, i1 true, i1 %.not.i359, !prof !252
  br i1 %or.cond755, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread, label %bb.as, !prof !252

bb.as:                                            ; preds = %bb.ar
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jr, i64 2
  %i.jy = load i16, ptr %i.jx, align 1, !tbaa !62 ; 2 uses
  %i.jz = call noundef i16 @llvm.bswap.i16(i16 %i.jy) ; 2 uses
  %.not.i.i360 = icmp ult i16 %i.jz, 16384
  br i1 %.not.i.i360, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit, label %bb.at, !prof !49

bb.at:                                            ; preds = %bb.as
  %i.ka = zext i16 %i.jz to i32                   ; 2 uses
  %i.kb = lshr i32 %i.ka, 15
  %i.kc = lshr i32 %i.ka, 13
  %i.kd = and i32 %i.kc, 2
  %i.ke = or disjoint i32 %i.kd, %i.kb
  %narrow616 = mul nuw nsw i32 %i.ke, %i.bm
  %narrow617 = add nuw nsw i32 %narrow616, 4
  %i.kf = zext nneg i32 %narrow617 to i64
  br label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit: ; preds = %bb.as, %bb.at
  %.0.i.i361 = phi i64 [ %i.kf, %bb.at ], [ 4, %bb.as ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jr, i64 %.0.i.i361
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = sub i64 %i.kh, %i.ce
  %.not618 = icmp ugt i64 %i.ki, %.sroa.6.0.i952
  br i1 %.not618, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread, label %.preheader646, !llvm.loop !2672

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread: ; preds = %bb.ar, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit, %.preheader646, %bb.aq
  %.2262 = phi i1 [ %.0260, %bb.aq ], [ %.0260, %bb.ar ], [ %.0260, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ true, %.preheader646 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  %i.kj = load i16, ptr %i.ea, align 1, !tbaa !62 ; 2 uses
  %i.kk = icmp eq i16 %i.kj, 0
  %i.kl = call i16 @llvm.bswap.i16(i16 %i.kj)
  %i.km = zext i16 %i.kl to i64
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i954, i64 %i.km
  %.0.i.i.i363 = select i1 %i.kk, ptr @_hb_NullPool, ptr %i.kn, !prof !48
  %i.ko = zext i32 %.sroa.16.0 to i64
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.i.i.i363, i64 %i.ko ; 4 uses
  store ptr %i.kp, ptr %i.b, align 8, !tbaa !2665
  %i.kq = load i16, ptr %.sroa.43.0, align 1, !tbaa !62
  %i.kr = call noundef i16 @llvm.bswap.i16(i16 %i.kq) ; 2 uses
  %.not.i364 = icmp ugt ptr %.sroa.015.0.i954, %i.kp
  br i1 %.not.i364, label %.thread597, label %bb.au, !prof !787

bb.au:                                            ; preds = %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread
  %i.ks = zext i16 %i.kr to i32
  %.not6.i = icmp ule ptr %i.kp, %i.eb
  %i.kt = ptrtoint ptr %i.kp to i64
  %i.ku = sub i64 %i.ec, %i.kt
  %i.kv = trunc i64 %i.ku to i32
  %i.kw = icmp ule i32 %i.ks, %i.kv
end_hunk_7
begin_hunk_8_@_ZL24initial_reordering_indicPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t:bb.a
  %.01319.i30.i.i = phi ptr [ %i.bx, %bb.l ], [ %i.bt, %.thread.i.i ] ; 2 uses
  %i.by = load i16, ptr %.01319.i30.i.i, align 4, !tbaa !1739
  %i.bz = zext i16 %i.by to i32
  %i.ca = load i8, ptr %i.ao, align 8, !tbaa !2245, !range !220, !noundef !74
  %i.cb = zext nneg i8 %i.ca to i32
  %i.cc = call i32 @hb_ot_layout_lookup_would_substitute(ptr noundef %i.ac, i32 noundef %i.bz, ptr noundef nonnull %i.c, i32 noundef 2, i32 noundef %i.cb)
  %.not16.not.i31.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not16.not.i31.i.i, label %bb.l, label %_ZL28consonant_position_from_facePK18indic_shape_plan_tjjP9hb_face_t.exit.i

bb.m:                                             ; preds = %bb.l
  %.pr65.i.i = load i32, ptr %i.an, align 8, !tbaa !4283 ; 2 uses
  %i.cd = load ptr, ptr %i.am, align 8, !tbaa !4282 ; 2 uses
  %i.ce = zext i32 %.pr65.i.i to i64
  %.idx.i35.i.i = mul nuw nsw i64 %i.ce, 12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i35.i.i
  %.not18.not.i36.i.i = icmp eq i32 %.pr65.i.i, 0
  br i1 %.not18.not.i36.i.i, label %.thread66.i.i, label %.lr.ph.i37.i.i

bb.n:                                             ; preds = %.lr.ph.i37.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.01319.i38.i.i, i64 12 ; 2 uses
  %.not.not.i41.i.i = icmp eq ptr %i.cg, %i.cf
  br i1 %.not.not.i41.i.i, label %.thread66.i.i, label %.lr.ph.i37.i.i

.lr.ph.i37.i.i:                                   ; preds = %bb.m, %bb.n
  %.01319.i38.i.i = phi ptr [ %i.cg, %bb.n ], [ %i.cd, %bb.m ] ; 2 uses
  %i.ch = load i16, ptr %.01319.i38.i.i, align 4, !tbaa !1739
  %i.ci = zext i16 %i.ch to i32
  %i.cj = load i8, ptr %i.ao, align 8, !tbaa !2245, !range !220, !noundef !74
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = call i32 @hb_ot_layout_lookup_would_substitute(ptr noundef %i.ac, i32 noundef %i.ci, ptr noundef nonnull %i.ah, i32 noundef 2, i32 noundef %i.ck)
  %.not16.not.i39.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not16.not.i39.i.i, label %bb.n, label %_ZL28consonant_position_from_facePK18indic_shape_plan_tjjP9hb_face_t.exit.i

.thread66.i.i:                                    ; preds = %bb.n, %bb.m, %.thread.i.i
  %i.cm = load ptr, ptr %i.ap, align 8, !tbaa !4282 ; 2 uses
  %i.cn = load i32, ptr %i.aq, align 8, !tbaa !4283 ; 2 uses
  %i.co = zext i32 %i.cn to i64
  %.idx.i43.i.i = mul nuw nsw i64 %i.co, 12
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx.i43.i.i
  %.not18.not.i44.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not18.not.i44.i.i, label %.thread73.i.i, label %.lr.ph.i45.i.i

bb.o:                                             ; preds = %.lr.ph.i45.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.01319.i46.i.i, i64 12 ; 2 uses
  %.not.not.i49.i.i = icmp eq ptr %i.cq, %i.cp
  br i1 %.not.not.i49.i.i, label %bb.p, label %.lr.ph.i45.i.i

.lr.ph.i45.i.i:                                   ; preds = %.thread66.i.i, %bb.o
  %.01319.i46.i.i = phi ptr [ %i.cq, %bb.o ], [ %i.cm, %.thread66.i.i ] ; 2 uses
  %i.cr = load i16, ptr %.01319.i46.i.i, align 4, !tbaa !1739
  %i.cs = zext i16 %i.cr to i32
  %i.ct = load i8, ptr %i.ar, align 8, !tbaa !2245, !range !220, !noundef !74
  %i.cu = zext nneg i8 %i.ct to i32
  %i.cv = call i32 @hb_ot_layout_lookup_would_substitute(ptr noundef %i.ac, i32 noundef %i.cs, ptr noundef nonnull %i.c, i32 noundef 2, i32 noundef %i.cu)
  %.not16.not.i47.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not16.not.i47.i.i, label %bb.o, label %_ZL28consonant_position_from_facePK18indic_shape_plan_tjjP9hb_face_t.exit.i

bb.p:                                             ; preds = %bb.o
  %.pr72.i.i = load i32, ptr %i.aq, align 8, !tbaa !4283 ; 2 uses
  %i.cw = load ptr, ptr %i.ap, align 8, !tbaa !4282 ; 2 uses
  %i.cx = zext i32 %.pr72.i.i to i64
  %.idx.i51.i.i = mul nuw nsw i64 %i.cx, 12
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx.i51.i.i
  %.not18.not.i52.i.i = icmp eq i32 %.pr72.i.i, 0
  br i1 %.not18.not.i52.i.i, label %.thread73.i.i, label %.lr.ph.i53.i.i

bb.q:                                             ; preds = %.lr.ph.i53.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.01319.i54.i.i, i64 12 ; 2 uses
  %.not.not.i57.i.i = icmp eq ptr %i.cz, %i.cy
  br i1 %.not.not.i57.i.i, label %.thread73.i.i, label %.lr.ph.i53.i.i

.lr.ph.i53.i.i:                                   ; preds = %bb.p, %bb.q
  %.01319.i54.i.i = phi ptr [ %i.cz, %bb.q ], [ %i.cw, %bb.p ] ; 2 uses
  %i.da = load i16, ptr %.01319.i54.i.i, align 4, !tbaa !1739
  %i.db = zext i16 %i.da to i32
  %i.dc = load i8, ptr %i.ar, align 8, !tbaa !2245, !range !220, !noundef !74
  %i.dd = zext nneg i8 %i.dc to i32
  %i.de = call i32 @hb_ot_layout_lookup_would_substitute(ptr noundef %i.ac, i32 noundef %i.db, ptr noundef nonnull %i.ah, i32 noundef 2, i32 noundef %i.dd)
  %.not16.not.i55.i.i = icmp eq i32 %i.de, 0
  br i1 %.not16.not.i55.i.i, label %bb.q, label %_ZL28consonant_position_from_facePK18indic_shape_plan_tjjP9hb_face_t.exit.i

.thread73.i.i:                                    ; preds = %bb.q, %bb.p, %.thread66.i.i
  %i.df = load ptr, ptr %i.as, align 8, !tbaa !4282 ; 2 uses
  %i.dg = load i32, ptr %i.at, align 8, !tbaa !4283 ; 2 uses
  %i.dh = zext i32 %i.dg to i64
  %.idx.i18.i = mul nuw nsw i64 %i.dh, 12
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx.i18.i
  %.not18.not.i19.i = icmp eq i32 %i.dg, 0
  br i1 %.not18.not.i19.i, label %_ZL28consonant_position_from_facePK18indic_shape_plan_tjjP9hb_face_t.exit.i, label %.lr.ph.i20.i

bb.r:                                             ; preds = %.lr.ph.i20.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.01319.i21.i, i64 12 ; 2 uses
  %.not.not.i24.i = icmp eq ptr %i.dj, %i.di
  br i1 %.not.not.i24.i, label %bb.s, label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.thread73.i.i, %bb.r
  %.01319.i21.i = phi ptr [ %i.dj, %bb.r ], [ %i.df, %.thread73.i.i ] ; 2 uses
  %i.dk = load i16, ptr %.01319.i21.i, align 4, !tbaa !1739
  %i.dl = zext i16 %i.dk to i32
  %i.dm = load i8, ptr %i.au, align 8, !tbaa !2245, !range !220, !noundef !74
  %i.dn = zext nneg i8 %i.dm to i32
  %i.do = call i32 @hb_ot_layout_lookup_would_substitute(ptr noundef %i.ac, i32 noundef %i.dl, ptr noundef nonnull %i.c, i32 noundef 2, i32 noundef %i.dn)
  %.not16.not.i22.i = icmp eq i32 %i.do, 0
  br i1 %.not16.not.i22.i, label %bb.r, label %_ZL28consonant_position_from_facePK18indic_shape_plan_tjjP9hb_face_t.exit.i

bb.s:                                             ; preds = %bb.r
  %.pr.i = load i32, ptr %i.at, align 8, !tbaa !4283 ; 2 uses
  %i.dp = load ptr, ptr %i.as, align 8, !tbaa !4282 ; 2 uses
  %i.dq = zext i32 %.pr.i to i64
  %.idx.i.i = mul nuw nsw i64 %i.dq, 12
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.idx.i.i
  %.not18.not.i.i = icmp eq i32 %.pr.i, 0
  br i1 %.not18.not.i.i, label %_ZL28consonant_position_from_facePK18indic_shape_plan_tjjP9hb_face_t.exit.i, label %.lr.ph.i.i

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.01319.i.i, i64 12 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ds, %i.dr
  br i1 %.not.not.i.i, label %_ZL28consonant_position_from_facePK18indic_shape_plan_tjjP9hb_face_t.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %bb.t
  %.01319.i.i = phi ptr [ %i.ds, %bb.t ], [ %i.dp, %bb.s ] ; 2 uses
  %i.dt = load i16, ptr %.01319.i.i, align 4, !tbaa !1739
  %i.du = zext i16 %i.dt to i32
  %i.dv = load i8, ptr %i.au, align 8, !tbaa !2245, !range !220, !noundef !74
  %i.dw = zext nneg i8 %i.dv to i32
  %i.dx = call i32 @hb_ot_layout_lookup_would_substitute(ptr noundef %i.ac, i32 noundef %i.du, ptr noundef nonnull %i.ah, i32 noundef 2, i32 noundef %i.dw)
  %.not16.not.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not16.not.i.i, label %bb.t, label %_ZL28consonant_position_from_facePK18indic_shape_plan_tjjP9hb_face_t.exit.i

_ZL28consonant_position_from_facePK18indic_shape_plan_tjjP9hb_face_t.exit.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i21.i.i, %.lr.ph.i29.i.i, %.lr.ph.i37.i.i, %.lr.ph.i45.i.i, %.lr.ph.i53.i.i, %.lr.ph.i20.i, %.lr.ph.i.i, %bb.t, %bb.s, %.thread73.i.i
  %.0.i.i = phi i8 [ 8, %.lr.ph.i29.i.i ], [ 8, %.lr.ph.i21.i.i ], [ 11, %.lr.ph.i20.i ], [ 11, %.lr.ph.i53.i.i ], [ 11, %.lr.ph.i45.i.i ], [ 8, %.lr.ph.i37.i.i ], [ 11, %.lr.ph.i.i ], [ 4, %.thread73.i.i ], [ 4, %bb.s ], [ 4, %bb.t ], [ 8, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #63
  store i8 %.0.i.i, ptr %i.aw, align 1, !tbaa !61
  br label %bb.u

bb.u:                                             ; preds = %_ZL28consonant_position_from_facePK18indic_shape_plan_tjjP9hb_face_t.exit.i, %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL32update_consonant_positions_indicPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t.exit, label %bb.g, !llvm.loop !4284

_ZL32update_consonant_positions_indicPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t.exit: ; preds = %bb.u, %_ZNK18indic_shape_plan_t17load_virama_glyphEP9hb_font_tPj.exit.i, %bb.f
  %i.dy = call noundef zeroext i1 @_Z33hb_syllabic_insert_dotted_circlesP9hb_font_tP11hb_buffer_tjjii(ptr noundef %1, ptr noundef nonnull %2, i32 noundef 4, i32 noundef 11, i32 noundef 14, i32 noundef 14)
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 8 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !522 ; 4 uses
  %.not = icmp eq i32 %i.ea, 0
  br i1 %.not, label %._crit_edge, label %bb.v

bb.v:                                             ; preds = %_ZL32update_consonant_positions_indicPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t.exit
  %i.eb = getelementptr i8, ptr %2, i64 112
  %.val29 = load ptr, ptr %i.eb, align 8, !tbaa !499 ; 2 uses
  %.sroa.speculated.i = call i32 @llvm.umin.i32(i32 %i.ea, i32 64) ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val29, i64 15
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !61
  %i.ee = add nsw i32 %.sroa.speculated.i, -1     ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ee to i64
  %exitcond.not198 = icmp eq i32 %i.ee, 0
  br i1 %exitcond.not198, label %.lr.ph, label %.lr.ph201.a

bb.w:                                             ; preds = %.lr.ph201.a
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph, label %.lr.ph201.a, !llvm.loop !4278

.lr.ph201.a:                                      ; preds = %bb.v, %bb.w
  %indvars.iv199 = phi i64 [ %indvars.iv.next, %bb.w ], [ 0, %bb.v ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv199, 1 ; 4 uses
  %i.ef = getelementptr inbounds nuw [20 x i8], ptr %.val29, i64 %indvars.iv.next
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 15
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !61
  %i.ei = icmp eq i8 %i.ed, %i.eh
  br i1 %i.ei, label %bb.w, label %_ZL17_hb_next_syllableP11hb_buffer_tj.exit.split.loop.exit, !llvm.loop !4278

_ZL17_hb_next_syllableP11hb_buffer_tj.exit.split.loop.exit: ; preds = %.lr.ph201.a
  %i.ej = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.w, %_ZL17_hb_next_syllableP11hb_buffer_tj.exit.split.loop.exit, %bb.v
  %i.ek = phi i32 [ %i.ej, %_ZL17_hb_next_syllableP11hb_buffer_tj.exit.split.loop.exit ], [ %.sroa.speculated.i, %bb.v ], [ %.sroa.speculated.i, %bb.w ]
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 90 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre = load ptr, ptr %i.em, align 8, !tbaa !499 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 15
  %.pre108 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !61
  br label %bb.x

._crit_edge:                                      ; preds = %_ZL17_hb_next_syllableP11hb_buffer_tj.exit34, %_ZL32update_consonant_positions_indicPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t.exit
  %i.eu = call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %2, ptr noundef %1, ptr noundef nonnull @.str.137) ; 0 uses
  br label %bb.di

bb.x:                                             ; preds = %.lr.ph, %_ZL17_hb_next_syllableP11hb_buffer_tj.exit34
  %i.ev = phi i32 [ %i.ea, %.lr.ph ], [ %.val, %_ZL17_hb_next_syllableP11hb_buffer_tj.exit34 ]
  %i.ew = phi i8 [ %.pre108, %.lr.ph ], [ %i.adm, %_ZL17_hb_next_syllableP11hb_buffer_tj.exit34 ]
  %i.ex = phi ptr [ %.pre, %.lr.ph ], [ %.val27, %_ZL17_hb_next_syllableP11hb_buffer_tj.exit34 ] ; 65 uses
  %.079 = phi i32 [ %i.ek, %.lr.ph ], [ %.lcssa.i33, %_ZL17_hb_next_syllableP11hb_buffer_tj.exit34 ] ; 56 uses
  %.02477 = phi i32 [ 0, %.lr.ph ], [ %.079, %_ZL17_hb_next_syllableP11hb_buffer_tj.exit34 ] ; 47 uses
  %i.ey = load ptr, ptr %i.el, align 8, !tbaa !23 ; 3 uses
  %i.ez = zext i32 %.02477 to i64                 ; 25 uses
  %i.fa = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %i.ez ; 10 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 15
  %i.fc = and i8 %i.ew, 15
  switch i8 %i.fc, label %_ZL33initial_reordering_syllable_indicPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj.exit [
    i8 1, label %.sink.split.i
    i8 0, label %.sink.split.i
    i8 4, label %.sink.split.i
    i8 2, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %bb.x, %bb.x, %bb.x, %bb.x
  %.val12.i = load ptr, ptr %i.f, align 8, !tbaa !2105 ; 18 uses
  %i.fd = load i32, ptr %i.en, align 4, !tbaa !716
  %i.fe = icmp ne i32 %i.fd, 1265525857
  %i.ff = add i32 %.02477, 3                      ; 3 uses
  %.not.i35 = icmp ugt i32 %i.ff, %.079           ; 2 uses
  %or.cond366.i = or i1 %.not.i35, %i.fe
  br i1 %or.cond366.i, label %_ZL9is_one_ofRK15hb_glyph_info_tj.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %.sink.split.i
  %i.fg = getelementptr i8, ptr %i.fa, i64 12
  %.val448.i = load i16, ptr %i.fg, align 4, !tbaa !61
  %i.fh = and i16 %.val448.i, 32
  %.not.i.i36 = icmp eq i16 %i.fh, 0
  br i1 %.not.i.i36, label %_ZL9is_one_ofRK15hb_glyph_info_tj.exit.i, label %_ZL9is_one_ofRK15hb_glyph_info_tj.exit.thread.i

_ZL9is_one_ofRK15hb_glyph_info_tj.exit.i:         ; preds = %bb.y
  %i.fi = getelementptr i8, ptr %i.fa, i64 18
  %.val449.i = load i8, ptr %i.fi, align 2
  %i.fj = icmp eq i8 %.val449.i, 15
  br i1 %i.fj, label %bb.z, label %_ZL9is_one_ofRK15hb_glyph_info_tj.exit.thread.i

bb.z:                                             ; preds = %_ZL9is_one_ofRK15hb_glyph_info_tj.exit.i
  %i.fk = add nuw i32 %.02477, 1                  ; 4 uses
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %i.fl ; 4 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 12
  %.val446.i = load i16, ptr %i.fn, align 4, !tbaa !61
  %i.fo = and i16 %.val446.i, 32
  %.not.i466.i = icmp eq i16 %i.fo, 0
  br i1 %.not.i466.i, label %_ZL9is_one_ofRK15hb_glyph_info_tj.exit468.i, label %_ZL9is_one_ofRK15hb_glyph_info_tj.exit.thread.i

_ZL9is_one_ofRK15hb_glyph_info_tj.exit468.i:      ; preds = %bb.z
  %i.fp = getelementptr i8, ptr %i.fm, i64 18
  %.val447.i = load i8, ptr %i.fp, align 2
  %i.fq = icmp eq i8 %.val447.i, 4
  br i1 %i.fq, label %bb.aa, label %_ZL9is_one_ofRK15hb_glyph_info_tj.exit.thread.i

bb.aa:                                            ; preds = %_ZL9is_one_ofRK15hb_glyph_info_tj.exit468.i
  %i.fr = add i32 %.02477, 2
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %i.fs ; 4 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 12
  %.val.i = load i16, ptr %i.fu, align 4, !tbaa !61
  %i.fv = and i16 %.val.i, 32
  %.not.i469.i = icmp eq i16 %i.fv, 0
  br i1 %.not.i469.i, label %_ZL9is_one_ofRK15hb_glyph_info_tj.exit471.i, label %_ZL9is_one_ofRK15hb_glyph_info_tj.exit.thread.i

_ZL9is_one_ofRK15hb_glyph_info_tj.exit471.i:      ; preds = %bb.aa
  %i.fw = getelementptr i8, ptr %i.ft, i64 18
  %.val445.i = load i8, ptr %i.fw, align 2
  %i.fx = icmp eq i8 %.val445.i, 6
  br i1 %i.fx, label %bb.ab, label %_ZL9is_one_ofRK15hb_glyph_info_tj.exit.thread.i

bb.ab:                                            ; preds = %_ZL9is_one_ofRK15hb_glyph_info_tj.exit471.i
  %i.fy = load i32, ptr %i.eo, align 4, !tbaa !525
  %.not.i472.i = icmp ugt i32 %i.fy, 1
  br i1 %.not.i472.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %.sroa.speculated.i.i.i = call i32 @llvm.umin.i32(i32 %i.ff, i32 %i.ev) ; 2 uses
  %i.fz = sub i32 %.sroa.speculated.i.i.i, %i.fk
  %i.ga = icmp ult i32 %i.fz, 2
  br i1 %i.ga, label %_ZN11hb_buffer_t14merge_clustersEjj.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN11hb_buffer_t21_set_glyph_flags_implEjjjbb(ptr noundef nonnull align 8 dereferenceable(276) %2, i32 noundef 3, i32 noundef %i.fk, i32 noundef %.sroa.speculated.i.i.i, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %_ZN11hb_buffer_t14merge_clustersEjj.exit.i

bb.ae:                                            ; preds = %bb.ab
  call void @_ZN11hb_buffer_t19merge_clusters_implEjj(ptr noundef nonnull align 8 dereferenceable(276) %2, i32 noundef %i.fk, i32 noundef %i.ff)
  br label %_ZN11hb_buffer_t14merge_clustersEjj.exit.i

_ZN11hb_buffer_t14merge_clustersEjj.exit.i:       ; preds = %bb.ae, %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %8, ptr noundef nonnull align 4 dereferenceable(20) %i.fm, i64 20, i1 false), !tbaa.struct !526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.fm, ptr noundef nonnull align 4 dereferenceable(20) %i.ft, i64 20, i1 false), !tbaa.struct !526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ft, ptr noundef nonnull align 4 dereferenceable(20) %8, i64 20, i1 false), !tbaa.struct !526
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZL9is_one_ofRK15hb_glyph_info_tj.exit.thread.i

_ZL9is_one_ofRK15hb_glyph_info_tj.exit.thread.i:  ; preds = %_ZN11hb_buffer_t14merge_clustersEjj.exit.i, %_ZL9is_one_ofRK15hb_glyph_info_tj.exit471.i, %bb.aa, %_ZL9is_one_ofRK15hb_glyph_info_tj.exit468.i, %bb.z, %_ZL9is_one_ofRK15hb_glyph_info_tj.exit.i, %bb.y, %.sink.split.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.val12.i, i64 144 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !139
  %.not419.i = icmp eq i32 %i.gc, 0
  %or.cond433.i = or i1 %.not.i35, %.not419.i
  %.pre296.i = load ptr, ptr %.val12.i, align 8, !tbaa !2234 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre296.i, i64 16
  %.pre297.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !4285 ; 3 uses
  br i1 %or.cond433.i, label %.thread.i, label %bb.af

bb.af:                                            ; preds = %_ZL9is_one_ofRK15hb_glyph_info_tj.exit.thread.i
  switch i32 %.pre297.i, label %.critedge2.i [
    i32 0, label %bb.ag
    i32 1, label %bb.ah
    i32 2, label %bb.aq
  ]

bb.ag:                                            ; preds = %bb.af
  %i.gd = add i32 %.02477, 2
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %i.ge ; 2 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 12
  %.val456.i = load i16, ptr %i.gg, align 4, !tbaa !61
  %i.gh = and i16 %.val456.i, 32
  %.not.i.i.i50 = icmp eq i16 %i.gh, 0
  br i1 %.not.i.i.i50, label %_ZL9is_joinerRK15hb_glyph_info_t.exit.i, label %_ZL9is_joinerRK15hb_glyph_info_t.exit.thread.i

_ZL9is_joinerRK15hb_glyph_info_t.exit.i:          ; preds = %bb.ag
  %i.gi = getelementptr i8, ptr %i.gf, i64 18
  %.val457.i = load i8, ptr %i.gi, align 2        ; 2 uses
  %i.gj = icmp ult i8 %.val457.i, 32
  %i.gk = zext nneg i8 %.val457.i to i32
  %i.gl = shl nuw i32 1, %i.gk
  %i.gm = and i32 %i.gl, 96
  %i.gn = icmp ne i32 %i.gm, 0
  %i.go = select i1 %i.gj, i1 %i.gn, i1 false
  br i1 %i.go, label %.critedge2.i, label %_ZL9is_joinerRK15hb_glyph_info_t.exit.thread.i

bb.ah:                                            ; preds = %bb.af
  %i.gp = add i32 %.02477, 2
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 18
  %i.gt = load i8, ptr %i.gs, align 2, !tbaa !61
  %i.gu = icmp eq i8 %i.gt, 6
  br i1 %i.gu, label %_ZL9is_joinerRK15hb_glyph_info_t.exit.thread.i, label %.critedge2.i

_ZL9is_joinerRK15hb_glyph_info_t.exit.thread.i:   ; preds = %bb.ah, %_ZL9is_joinerRK15hb_glyph_info_t.exit.i, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.gv = load i32, ptr %i.fa, align 4, !tbaa !582
  store i32 %i.gv, ptr %i.a, align 4, !tbaa !139
  %i.gw = add nuw i32 %.02477, 1
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !582
  store i32 %i.gz, ptr %i.ep, align 4, !tbaa !139
  %i.ha = icmp eq i32 %.pre297.i, 1
  br i1 %i.ha, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZL9is_joinerRK15hb_glyph_info_t.exit.thread.i
  %i.hb = add i32 %.02477, 2
  %i.hc = zext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !582
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZL9is_joinerRK15hb_glyph_info_t.exit.thread.i
  %i.hf = phi i32 [ %i.he, %bb.ai ], [ 0, %_ZL9is_joinerRK15hb_glyph_info_t.exit.thread.i ]
  store i32 %i.hf, ptr %i.eq, align 4, !tbaa !139
  %i.hg = getelementptr inbounds nuw i8, ptr %.val12.i, i64 16 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !4282 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.val12.i, i64 24 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !4283 ; 2 uses
  %i.hk = zext i32 %i.hj to i64
  %.idx.i.i40 = mul nuw nsw i64 %i.hk, 12
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.idx.i.i40
  %.not18.not.i.i41 = icmp eq i32 %i.hj, 0
  br i1 %.not18.not.i.i41, label %.loopexit88.i, label %.lr.ph.i.i42

.lr.ph.i.i42:                                     ; preds = %bb.aj
  %i.hm = getelementptr inbounds nuw i8, ptr %.val12.i, i64 32
  br label %bb.al

bb.ak:                                            ; preds = %bb.al
  %i.hn = getelementptr inbounds nuw i8, ptr %.01319.i.i43, i64 12 ; 2 uses
  %.not.not.i.i49 = icmp eq ptr %i.hn, %i.hl
  br i1 %.not.not.i.i49, label %.loopexit88.loopexit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i.i42
  %.01319.i.i43 = phi ptr [ %i.hh, %.lr.ph.i.i42 ], [ %i.hn, %bb.ak ] ; 2 uses
  %i.ho = load i16, ptr %.01319.i.i43, align 4, !tbaa !1739
  %i.hp = zext i16 %i.ho to i32
  %i.hq = load i8, ptr %i.hm, align 8, !tbaa !2245, !range !220, !noundef !74
  %i.hr = zext nneg i8 %i.hq to i32
  %i.hs = call i32 @hb_ot_layout_lookup_would_substitute(ptr noundef %i.ey, i32 noundef %i.hp, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef %i.hr)
  %.not16.not.i.i44 = icmp eq i32 %i.hs, 0
  br i1 %.not16.not.i.i44, label %bb.ak, label %_ZNK35hb_indic_would_substitute_feature_t16would_substituteEPKjjP9hb_face_t.exit.i

.loopexit88.loopexit.i:                           ; preds = %bb.ak
  %.pre.i = load ptr, ptr %.val12.i, align 8, !tbaa !2234
  br label %.loopexit88.i

.loopexit88.i:                                    ; preds = %.loopexit88.loopexit.i, %bb.aj
  %i.ht = phi ptr [ %.pre.i, %.loopexit88.loopexit.i ], [ %.pre296.i, %bb.aj ]
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !4285
  %i.hw = icmp eq i32 %i.hv, 1
  br i1 %i.hw, label %bb.am, label %.critedge.i

end_hunk_8
begin_hunk_9_@_ZL24initial_reordering_indicPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t:bb.a
  store i8 %i.of, ptr %i.vl, align 1, !tbaa !61
  %i.vm = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %indvars.iv249.i
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 135
  store i8 %i.of, ptr %i.vn, align 1, !tbaa !61
  %i.vo = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %indvars.iv249.i
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 155
  store i8 %i.of, ptr %i.vp, align 1, !tbaa !61
  %indvars.iv.next250.i.7 = add nuw nsw i64 %indvars.iv249.i, 8 ; 2 uses
  %exitcond254.not.i.7 = icmp eq i64 %indvars.iv.next250.i.7, %wide.trip.count253.i
  br i1 %exitcond254.not.i.7, label %.lr.ph153.i.preheader, label %.lr.ph151.i, !llvm.loop !4306

.lr.ph153.i.preheader:                            ; preds = %.lr.ph151.i, %.lr.ph151.i.prol.loopexit
  br label %.lr.ph153.i

.lr.ph153.i:                                      ; preds = %.lr.ph153.i.preheader, %bb.cr
  %indvars.iv255.i = phi i64 [ %indvars.iv.next256.i, %bb.cr ], [ %i.ez, %.lr.ph153.i.preheader ] ; 2 uses
  %i.vq = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %indvars.iv255.i ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 19
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !61
  %i.vt = icmp eq i8 %i.vs, 1
  br i1 %i.vt, label %bb.cr, label %.critedge5.i

.critedge5.i:                                     ; preds = %bb.cr, %.lr.ph153.i, %_ZN11hb_buffer_t14merge_clustersEjj.exit525.i
  %i.vu = getelementptr inbounds nuw i8, ptr %.val12.i, i64 164 ; 3 uses
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !139 ; 3 uses
  %i.vw = load i8, ptr %i.lu, align 8, !tbaa !2244, !range !220, !noundef !74
  %i.vx = trunc nuw i8 %i.vw to i1                ; 2 uses
  br i1 %i.vx, label %bb.cu, label %bb.cs

bb.cr:                                            ; preds = %.lr.ph153.i
  %i.vy = load i32, ptr %i.gb, align 8, !tbaa !139
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vq, i64 4 ; 2 uses
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !500
  %i.wb = or i32 %i.wa, %i.vy
  store i32 %i.wb, ptr %i.vz, align 4, !tbaa !500
  %indvars.iv.next256.i = add nuw nsw i64 %indvars.iv255.i, 1 ; 2 uses
  %lftr.wideiv259.i = trunc i64 %indvars.iv.next256.i to i32
  %exitcond260.not.i = icmp eq i32 %.079, %lftr.wideiv259.i
  br i1 %exitcond260.not.i, label %.critedge5.i, label %.lr.ph153.i, !llvm.loop !4307

bb.cs:                                            ; preds = %.critedge5.i
  %i.wc = load ptr, ptr %.val12.i, align 8, !tbaa !2234
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 20
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !4308
  %i.wf = icmp eq i32 %i.we, 0
  br i1 %i.wf, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.wg = getelementptr inbounds nuw i8, ptr %.val12.i, i64 156
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !139
  %i.wi = or i32 %i.wh, %i.vv
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %.critedge5.i
  %.0366.i = phi i32 [ %i.vv, %.critedge5.i ], [ %i.wi, %bb.ct ], [ %i.vv, %bb.cs ] ; 5 uses
  %i.wj = icmp ult i32 %.02477, %.5343.i
  br i1 %i.wj, label %.lr.ph157.preheader.i, label %._crit_edge158.i

.lr.ph157.preheader.i:                            ; preds = %bb.cu
  %wide.trip.count265.i = zext i32 %.5343.i to i64 ; 3 uses
  %i.wk = sub nsw i64 %wide.trip.count265.i, %i.ez
  %xtraiter258 = and i64 %i.wk, 3                 ; 2 uses
  %lcmp.mod259.not = icmp eq i64 %xtraiter258, 0
  br i1 %lcmp.mod259.not, label %.lr.ph157.i.prol.loopexit, label %.lr.ph157.i.prol

.lr.ph157.i.prol:                                 ; preds = %.lr.ph157.preheader.i, %.lr.ph157.i.prol
  %indvars.iv261.i.prol = phi i64 [ %indvars.iv.next262.i.prol, %.lr.ph157.i.prol ], [ %i.ez, %.lr.ph157.preheader.i ] ; 2 uses
  %prol.iter260 = phi i64 [ %prol.iter260.next, %.lr.ph157.i.prol ], [ 0, %.lr.ph157.preheader.i ]
  %i.wl = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %indvars.iv261.i.prol
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 4 ; 2 uses
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !500
  %i.wo = or i32 %i.wn, %.0366.i
  store i32 %i.wo, ptr %i.wm, align 4, !tbaa !500
  %indvars.iv.next262.i.prol = add nuw nsw i64 %indvars.iv261.i.prol, 1 ; 2 uses
  %prol.iter260.next = add i64 %prol.iter260, 1   ; 2 uses
  %prol.iter260.cmp.not = icmp eq i64 %prol.iter260.next, %xtraiter258
  br i1 %prol.iter260.cmp.not, label %.lr.ph157.i.prol.loopexit, label %.lr.ph157.i.prol, !llvm.loop !4309

.lr.ph157.i.prol.loopexit:                        ; preds = %.lr.ph157.i.prol, %.lr.ph157.preheader.i
  %indvars.iv261.i.unr = phi i64 [ %i.ez, %.lr.ph157.preheader.i ], [ %indvars.iv.next262.i.prol, %.lr.ph157.i.prol ]
  %i.wp = sub nsw i64 %i.ez, %wide.trip.count265.i
  %i.wq = icmp ugt i64 %i.wp, -4
  br i1 %i.wq, label %._crit_edge158.i, label %.lr.ph157.i

._crit_edge158.i:                                 ; preds = %.lr.ph157.i.prol.loopexit, %.lr.ph157.i, %bb.cu
  %i.wr = getelementptr inbounds nuw i8, ptr %.val12.i, i64 156 ; 5 uses
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !139
  %i.wt = getelementptr inbounds nuw i8, ptr %.val12.i, i64 160
  %i.wu = load i32, ptr %i.wt, align 8, !tbaa !139
  %i.wv = or i32 %i.wu, %i.ws
  %i.ww = getelementptr inbounds nuw i8, ptr %.val12.i, i64 168
  %i.wx = load i32, ptr %i.ww, align 8, !tbaa !139
  %i.wy = or i32 %i.wv, %i.wx                     ; 5 uses
  %.0363159.i = add i32 %.5343.i, 1               ; 2 uses
  %i.wz = icmp ult i32 %.0363159.i, %.079
  br i1 %i.wz, label %.lr.ph162.preheader.i, label %._crit_edge163.i

.lr.ph162.preheader.i:                            ; preds = %._crit_edge158.i
  %i.xa = zext i32 %.0363159.i to i64             ; 2 uses
  %i.xb = xor i32 %.5343.i, -1
  %i.xc = add i32 %.079, %i.xb
  %i.xd = add i32 %.079, -2
  %i.xe = sub i32 %i.xd, %.5343.i
  %xtraiter261 = and i32 %i.xc, 3                 ; 2 uses
  %lcmp.mod262.not = icmp eq i32 %xtraiter261, 0
  br i1 %lcmp.mod262.not, label %.lr.ph162.i.prol.loopexit, label %.lr.ph162.i.prol

.lr.ph162.i.prol:                                 ; preds = %.lr.ph162.preheader.i, %.lr.ph162.i.prol
  %indvars.iv267.i.prol = phi i64 [ %indvars.iv.next268.i.prol, %.lr.ph162.i.prol ], [ %i.xa, %.lr.ph162.preheader.i ] ; 2 uses
  %prol.iter263 = phi i32 [ %prol.iter263.next, %.lr.ph162.i.prol ], [ 0, %.lr.ph162.preheader.i ]
  %i.xf = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %indvars.iv267.i.prol
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 4 ; 2 uses
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !500
  %i.xi = or i32 %i.wy, %i.xh
  store i32 %i.xi, ptr %i.xg, align 4, !tbaa !500
  %indvars.iv.next268.i.prol = add nuw nsw i64 %indvars.iv267.i.prol, 1 ; 2 uses
  %prol.iter263.next = add i32 %prol.iter263, 1   ; 2 uses
  %prol.iter263.cmp.not = icmp eq i32 %prol.iter263.next, %xtraiter261
  br i1 %prol.iter263.cmp.not, label %.lr.ph162.i.prol.loopexit, label %.lr.ph162.i.prol, !llvm.loop !4310

.lr.ph162.i.prol.loopexit:                        ; preds = %.lr.ph162.i.prol, %.lr.ph162.preheader.i
  %indvars.iv267.i.unr = phi i64 [ %i.xa, %.lr.ph162.preheader.i ], [ %indvars.iv.next268.i.prol, %.lr.ph162.i.prol ]
  %i.xj = icmp ult i32 %i.xe, 3
  br i1 %i.xj, label %._crit_edge163.i, label %.lr.ph162.i

.lr.ph157.i:                                      ; preds = %.lr.ph157.i.prol.loopexit, %.lr.ph157.i
  %indvars.iv261.i = phi i64 [ %indvars.iv.next262.i.3, %.lr.ph157.i ], [ %indvars.iv261.i.unr, %.lr.ph157.i.prol.loopexit ] ; 5 uses
  %i.xk = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %indvars.iv261.i
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 4 ; 2 uses
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !500
  %i.xn = or i32 %i.xm, %.0366.i
  store i32 %i.xn, ptr %i.xl, align 4, !tbaa !500
  %i.xo = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %indvars.iv261.i
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 24 ; 2 uses
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !500
  %i.xr = or i32 %i.xq, %.0366.i
  store i32 %i.xr, ptr %i.xp, align 4, !tbaa !500
  %i.xs = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %indvars.iv261.i
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 44 ; 2 uses
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !500
  %i.xv = or i32 %i.xu, %.0366.i
  store i32 %i.xv, ptr %i.xt, align 4, !tbaa !500
  %i.xw = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %indvars.iv261.i
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 64 ; 2 uses
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !500
  %i.xz = or i32 %i.xy, %.0366.i
  store i32 %i.xz, ptr %i.xx, align 4, !tbaa !500
  %indvars.iv.next262.i.3 = add nuw nsw i64 %indvars.iv261.i, 4 ; 2 uses
  %exitcond266.not.i.3 = icmp eq i64 %indvars.iv.next262.i.3, %wide.trip.count265.i
  br i1 %exitcond266.not.i.3, label %._crit_edge158.i, label %.lr.ph157.i, !llvm.loop !4311

._crit_edge163.i:                                 ; preds = %.lr.ph162.i.prol.loopexit, %.lr.ph162.i, %._crit_edge158.i
  br i1 %i.vx, label %bb.cv, label %.loopexit73.i

.lr.ph162.i:                                      ; preds = %.lr.ph162.i.prol.loopexit, %.lr.ph162.i
  %indvars.iv267.i = phi i64 [ %indvars.iv.next268.i.3, %.lr.ph162.i ], [ %indvars.iv267.i.unr, %.lr.ph162.i.prol.loopexit ] ; 5 uses
  %i.ya = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %indvars.iv267.i
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 4 ; 2 uses
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !500
  %i.yd = or i32 %i.wy, %i.yc
  store i32 %i.yd, ptr %i.yb, align 4, !tbaa !500
  %i.ye = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %indvars.iv267.i
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 24 ; 2 uses
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !500
  %i.yh = or i32 %i.wy, %i.yg
  store i32 %i.yh, ptr %i.yf, align 4, !tbaa !500
  %i.yi = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %indvars.iv267.i
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 44 ; 2 uses
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !500
  %i.yl = or i32 %i.wy, %i.yk
  store i32 %i.yl, ptr %i.yj, align 4, !tbaa !500
  %i.ym = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %indvars.iv267.i
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 64 ; 2 uses
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !500
  %i.yp = or i32 %i.wy, %i.yo
  store i32 %i.yp, ptr %i.yn, align 4, !tbaa !500
  %indvars.iv.next268.i.3 = add nuw nsw i64 %indvars.iv267.i, 4 ; 2 uses
  %lftr.wideiv271.i.3 = trunc i64 %indvars.iv.next268.i.3 to i32
  %exitcond272.not.i.3 = icmp eq i32 %.079, %lftr.wideiv271.i.3
  br i1 %exitcond272.not.i.3, label %._crit_edge163.i, label %.lr.ph162.i, !llvm.loop !4312

bb.cv:                                            ; preds = %._crit_edge163.i
  %i.yq = load i32, ptr %i.en, align 4, !tbaa !716
  %i.yr = icmp eq i32 %i.yq, 1147500129
  %i.ys = add nuw i32 %.02477, 1                  ; 2 uses
  %i.yt = icmp ult i32 %i.ys, %.5343.i
  %or.cond183.i = and i1 %i.yt, %i.yr
  br i1 %or.cond183.i, label %.lr.ph165.preheader.i, label %.loopexit73.i

.lr.ph165.preheader.i:                            ; preds = %bb.cv
  %i.yu = zext i32 %i.ys to i64                   ; 2 uses
  %i.yv = add i32 %.5343.i, -2
  %.not337.i = icmp eq i32 %i.yv, %.02477
  br i1 %.not337.i, label %.loopexit73.loopexit.peel.begin.i, label %.lr.ph165.preheader.split.i

.lr.ph165.preheader.split.i:                      ; preds = %.lr.ph165.preheader.i
  %i.yw = add i32 %.5343.i, -1
  br label %.lr.ph165.i

.lr.ph165.i:                                      ; preds = %bb.da, %.lr.ph165.preheader.split.i
  %indvars.iv273.i.a = phi i64 [ %i.yu, %.lr.ph165.preheader.split.i ], [ %indvars.iv.next274.i, %bb.da ] ; 4 uses
  %.0362164.i = phi i32 [ %.02477, %.lr.ph165.preheader.split.i ], [ %11, %bb.da ] ; 2 uses
  %10 = zext i32 %.0362164.i to i64
  %i.yx = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %10 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 18
  %i.yz = load i8, ptr %i.yy, align 2, !tbaa !61
  %i.za = icmp eq i8 %i.yz, 15
  br i1 %i.za, label %bb.cw, label %bb.da

bb.cw:                                            ; preds = %.lr.ph165.i
  %i.zb = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %indvars.iv273.i.a ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 18
  %i.zd = load i8, ptr %i.zc, align 2, !tbaa !61
  %i.ze = icmp eq i8 %i.zd, 4
  br i1 %i.ze, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.zf = add i32 %.0362164.i, 2                  ; 2 uses
  %i.zg = icmp eq i32 %i.zf, %.5343.i
  br i1 %i.zg, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.zh = zext i32 %i.zf to i64
  %i.zi = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %i.zh
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 18
  %i.zk = load i8, ptr %i.zj, align 2, !tbaa !61
  %.not427.i = icmp eq i8 %i.zk, 6
  br i1 %.not427.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.zl = load i32, ptr %i.wr, align 4, !tbaa !139
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yx, i64 4 ; 2 uses
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !500
  %i.zo = or i32 %i.zn, %i.zl
  store i32 %i.zo, ptr %i.zm, align 4, !tbaa !500
  %i.zp = load i32, ptr %i.wr, align 4, !tbaa !139
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zb, i64 4 ; 2 uses
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !500
  %i.zs = or i32 %i.zr, %i.zp
  store i32 %i.zs, ptr %i.zq, align 4, !tbaa !500
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %bb.cw, %.lr.ph165.i
  %indvars.iv.next274.i = add nuw nsw i64 %indvars.iv273.i.a, 1 ; 3 uses
  %11 = trunc nuw i64 %indvars.iv273.i.a to i32   ; 2 uses
  %lftr.wideiv277.i = trunc i64 %indvars.iv.next274.i to i32
  %exitcond278.not.i = icmp eq i32 %i.yw, %lftr.wideiv277.i
  br i1 %exitcond278.not.i, label %.loopexit73.loopexit.peel.begin.i, label %.lr.ph165.i, !llvm.loop !4313

.loopexit73.loopexit.peel.begin.i:                ; preds = %bb.da, %.lr.ph165.preheader.i
  %.pre-phi.i = phi i64 [ %i.ez, %.lr.ph165.preheader.i ], [ %indvars.iv273.i.a, %bb.da ]
  %i.zt = phi i64 [ %i.yu, %.lr.ph165.preheader.i ], [ %indvars.iv.next274.i, %bb.da ]
  %12 = phi i32 [ %.02477, %.lr.ph165.preheader.i ], [ %11, %bb.da ]
  %i.zu = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %.pre-phi.i ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 18
  %i.zw = load i8, ptr %i.zv, align 2, !tbaa !61
  %i.zx = icmp eq i8 %i.zw, 15
  br i1 %i.zx, label %bb.db, label %.loopexit73.i

bb.db:                                            ; preds = %.loopexit73.loopexit.peel.begin.i
  %i.zy = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %i.zt ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 18
  %i.aaa = load i8, ptr %i.zz, align 2, !tbaa !61
  %i.aab = icmp eq i8 %i.aaa, 4
  br i1 %i.aab, label %bb.dc, label %.loopexit73.i

bb.dc:                                            ; preds = %bb.db
  %i.aac = add i32 %12, 2                         ; 2 uses
  %i.aad = icmp eq i32 %i.aac, %.5343.i
  br i1 %i.aad, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.aae = zext i32 %i.aac to i64
  %i.aaf = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %i.aae
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 18
  %i.aah = load i8, ptr %i.aag, align 2, !tbaa !61
  %.not427.peel.i = icmp eq i8 %i.aah, 6
  br i1 %.not427.peel.i, label %.loopexit73.i, label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.aai = load i32, ptr %i.wr, align 4, !tbaa !139
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.zu, i64 4 ; 2 uses
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !500
  %i.aal = or i32 %i.aak, %i.aai
  store i32 %i.aal, ptr %i.aaj, align 4, !tbaa !500
  %i.aam = load i32, ptr %i.wr, align 4, !tbaa !139
  %i.aan = getelementptr inbounds nuw i8, ptr %i.zy, i64 4 ; 2 uses
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !500
  %i.aap = or i32 %i.aao, %i.aam
  store i32 %i.aap, ptr %i.aan, align 4, !tbaa !500
  br label %.loopexit73.i

.loopexit73.i:                                    ; preds = %bb.de, %bb.dd, %bb.db, %.loopexit73.loopexit.peel.begin.i, %bb.cv, %._crit_edge163.i
  %i.aaq = getelementptr inbounds nuw i8, ptr %.val12.i, i64 152 ; 3 uses
  %i.aar = load i32, ptr %i.aaq, align 8, !tbaa !139
  %.not426.i = icmp ne i32 %i.aar, 0
  %i.aas = add i32 %.5343.i, 2
  %i.aat = icmp ult i32 %i.aas, %.079
  %or.cond67.i = and i1 %i.aat, %.not426.i
  br i1 %or.cond67.i, label %.lr.ph169.i, label %.loopexit71.i

.lr.ph169.i:                                      ; preds = %.loopexit73.i
  %i.aau = getelementptr inbounds nuw i8, ptr %.val12.i, i64 40
  %i.aav = getelementptr inbounds nuw i8, ptr %.val12.i, i64 48
  %i.aaw = getelementptr inbounds nuw i8, ptr %.val12.i, i64 56
  br label %bb.df

bb.df:                                            ; preds = %.loopexit.i, %.lr.ph169.i
  %.0361168.in.i = phi i32 [ %.5343.i, %.lr.ph169.i ], [ %.0361168.i, %.loopexit.i ] ; 3 uses
  %.0361168.i = add i32 %.0361168.in.i, 1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  %i.aax = zext i32 %.0361168.i to i64
  %i.aay = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %i.aax ; 2 uses
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !582
  store i32 %i.aaz, ptr %i.b, align 4, !tbaa !139
  %i.aba = add i32 %.0361168.in.i, 2
  %i.abb = zext i32 %i.aba to i64
  %i.abc = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %i.abb ; 2 uses
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !582
  store i32 %i.abd, ptr %i.et, align 4, !tbaa !139
  %i.abe = load ptr, ptr %i.aau, align 8, !tbaa !4282 ; 2 uses
  %i.abf = load i32, ptr %i.aav, align 8, !tbaa !4283 ; 2 uses
  %i.abg = zext i32 %i.abf to i64
  %.idx.i532.i = mul nuw nsw i64 %i.abg, 12
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abe, i64 %.idx.i532.i
  %.not18.not.i533.i = icmp eq i32 %i.abf, 0
  br i1 %.not18.not.i533.i, label %.loopexit.i, label %.lr.ph.i534.i

bb.dg:                                            ; preds = %.lr.ph.i534.i
  %i.abi = getelementptr inbounds nuw i8, ptr %.01319.i535.i, i64 12 ; 2 uses
  %.not.not.i538.i = icmp eq ptr %i.abi, %i.abh
  br i1 %.not.not.i538.i, label %.loopexit.i, label %.lr.ph.i534.i

.lr.ph.i534.i:                                    ; preds = %bb.df, %bb.dg
  %.01319.i535.i = phi ptr [ %i.abi, %bb.dg ], [ %i.abe, %bb.df ] ; 2 uses
  %i.abj = load i16, ptr %.01319.i535.i, align 4, !tbaa !1739
  %i.abk = zext i16 %i.abj to i32
  %i.abl = load i8, ptr %i.aaw, align 8, !tbaa !2245, !range !220, !noundef !74
  %i.abm = zext nneg i8 %i.abl to i32
  %i.abn = call i32 @hb_ot_layout_lookup_would_substitute(ptr noundef %i.ey, i32 noundef %i.abk, ptr noundef nonnull %i.b, i32 noundef 2, i32 noundef %i.abm)
  %.not16.not.i536.i = icmp eq i32 %i.abn, 0
  br i1 %.not16.not.i536.i, label %bb.dg, label %_ZNK35hb_indic_would_substitute_feature_t16would_substituteEPKjjP9hb_face_t.exit539.preheader.i

_ZNK35hb_indic_would_substitute_feature_t16would_substituteEPKjjP9hb_face_t.exit539.preheader.i: ; preds = %.lr.ph.i534.i
  %i.abo = load i32, ptr %i.aaq, align 8, !tbaa !139
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aay, i64 4 ; 2 uses
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !500
  %i.abr = or i32 %i.abq, %i.abo
  store i32 %i.abr, ptr %i.abp, align 4, !tbaa !500
  %i.abs = load i32, ptr %i.aaq, align 8, !tbaa !139
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abc, i64 4 ; 2 uses
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !500
  %i.abv = or i32 %i.abu, %i.abs
  store i32 %i.abv, ptr %i.abt, align 4, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  br label %.loopexit71.i

.loopexit.i:                                      ; preds = %bb.dg, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  %i.abw = add i32 %.0361168.in.i, 3
  %i.abx = icmp ult i32 %i.abw, %.079
  br i1 %i.abx, label %bb.df, label %.loopexit71.i, !llvm.loop !4314

.loopexit71.i:                                    ; preds = %.loopexit.i, %_ZNK35hb_indic_would_substitute_feature_t16would_substituteEPKjjP9hb_face_t.exit539.preheader.i, %.loopexit73.i
  %.0358175.i = add nuw i32 %.02477, 1            ; 2 uses
  %i.aby = icmp ult i32 %.0358175.i, %.079
  br i1 %i.aby, label %.lr.ph179.preheader.i, label %_ZL33initial_reordering_syllable_indicPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj.exit

.lr.ph179.preheader.i:                            ; preds = %.loopexit71.i
  %i.abz = zext i32 %.0358175.i to i64
  br label %.lr.ph179.i

.lr.ph179.i:                                      ; preds = %.critedge7.i, %.lr.ph179.preheader.i
  %indvars.iv290.i.a = phi i64 [ %i.abz, %.lr.ph179.preheader.i ], [ %indvars.iv.next291.i, %.critedge7.i ] ; 2 uses
  %indvars.iv284.i = phi i32 [ %.02477, %.lr.ph179.preheader.i ], [ %indvars.iv.next285.i, %.critedge7.i ] ; 3 uses
  %13 = zext i32 %indvars.iv284.i to i64          ; 2 uses
  %i.aca = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %indvars.iv290.i.a ; 2 uses
  %i.acb = getelementptr i8, ptr %i.aca, i64 12
  %.val450.i = load i16, ptr %i.acb, align 4, !tbaa !61
  %i.acc = and i16 %.val450.i, 32
  %.not.i.i540.i = icmp eq i16 %i.acc, 0
  br i1 %.not.i.i540.i, label %_ZL9is_joinerRK15hb_glyph_info_t.exit542.i, label %.critedge7.i

_ZL9is_joinerRK15hb_glyph_info_t.exit542.i:       ; preds = %.lr.ph179.i
  %i.acd = getelementptr i8, ptr %i.aca, i64 18
  %.val451.i = load i8, ptr %i.acd, align 2       ; 2 uses
  %i.ace = zext nneg i8 %.val451.i to i32
  %i.acf = shl nuw i32 1, %i.ace
  %i.acg = and i32 %i.acf, 96
  %i.ach = icmp ne i32 %i.acg, 0
  %i.aci = icmp eq i8 %.val451.i, 5
  %or.cond370.i = select i1 %i.aci, i1 %i.ach, i1 false
  br i1 %or.cond370.i, label %.split172.us.i, label %.critedge7.i

.split172.us.i:                                   ; preds = %_ZL9is_joinerRK15hb_glyph_info_t.exit542.i
  %i.acj = load i32, ptr %i.vu, align 4, !tbaa !139
  %i.ack = xor i32 %i.acj, -1
  %i.acl = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %13
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 4 ; 2 uses
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !500
  %i.aco = and i32 %i.acn, %i.ack
  store i32 %i.aco, ptr %i.acm, align 4, !tbaa !500
  %i.acp = icmp ugt i32 %indvars.iv284.i, %.02477
  br i1 %i.acp, label %.lr.ph174.i, label %.critedge7.i

.lr.ph174.i:                                      ; preds = %.split172.us.i, %_ZL12is_consonantRK15hb_glyph_info_t.exit545.backedge.us.i
  %indvars.iv286.i = phi i64 [ %i.ada, %_ZL12is_consonantRK15hb_glyph_info_t.exit545.backedge.us.i ], [ %13, %.split172.us.i ] ; 2 uses
  %i.acq = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %indvars.iv286.i ; 2 uses
  %i.acr = getelementptr i8, ptr %i.acq, i64 12
  %.val458.us.i = load i16, ptr %i.acr, align 4, !tbaa !61
  %i.acs = and i16 %.val458.us.i, 32
  %.not.i.i543.us.i = icmp eq i16 %i.acs, 0
  br i1 %.not.i.i543.us.i, label %.split.us.i, label %_ZL12is_consonantRK15hb_glyph_info_t.exit545.backedge.us.i

.split.us.i:                                      ; preds = %.lr.ph174.i
  %i.act = getelementptr i8, ptr %i.acq, i64 18
  %.val459.us.i = load i8, ptr %i.act, align 2    ; 2 uses
  %i.acu = icmp ult i8 %.val459.us.i, 32
  %i.acv = zext nneg i8 %.val459.us.i to i32
  %i.acw = shl nuw i32 1, %i.acv
  %i.acx = and i32 %i.acw, 363526
  %i.acy = icmp ne i32 %i.acx, 0
  %i.acz = select i1 %i.acu, i1 %i.acy, i1 false
  br i1 %i.acz, label %.critedge7.i, label %_ZL12is_consonantRK15hb_glyph_info_t.exit545.backedge.us.i

_ZL12is_consonantRK15hb_glyph_info_t.exit545.backedge.us.i: ; preds = %.split.us.i, %.lr.ph174.i
  %i.ada = add nsw i64 %indvars.iv286.i, -1       ; 3 uses
  %i.adb = load i32, ptr %i.vu, align 4, !tbaa !139
  %i.adc = xor i32 %i.adb, -1
  %i.add = getelementptr inbounds nuw [20 x i8], ptr %i.ex, i64 %i.ada
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 4 ; 2 uses
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !500
  %i.adg = and i32 %i.adf, %i.adc
  store i32 %i.adg, ptr %i.ade, align 4, !tbaa !500
  %.wide.i = icmp ugt i64 %i.ada, %i.ez
  br i1 %.wide.i, label %.lr.ph174.i, label %.critedge7.i, !llvm.loop !4315

.critedge7.i:                                     ; preds = %_ZL12is_consonantRK15hb_glyph_info_t.exit545.backedge.us.i, %.split.us.i, %.split172.us.i, %_ZL9is_joinerRK15hb_glyph_info_t.exit542.i, %.lr.ph179.i
  %indvars.iv.next291.i = add nuw nsw i64 %indvars.iv290.i.a, 1 ; 2 uses
  %indvars.iv.next285.i = add i32 %indvars.iv284.i, 1
  %lftr.wideiv294.i = trunc i64 %indvars.iv.next291.i to i32
  %exitcond295.not.i = icmp eq i32 %.079, %lftr.wideiv294.i
  br i1 %exitcond295.not.i, label %_ZL33initial_reordering_syllable_indicPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj.exit, label %.lr.ph179.i, !llvm.loop !4316

_ZL33initial_reordering_syllable_indicPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj.exit: ; preds = %.critedge7.i, %.loopexit71.i, %bb.x
  %.val = load i32, ptr %i.dz, align 8, !tbaa !522 ; 2 uses
  %.val27 = load ptr, ptr %i.em, align 8, !tbaa !499 ; 3 uses
  %i.adh = sub i32 %.val, %.079
  %.sroa.speculated.i30 = call i32 @llvm.umin.i32(i32 %i.adh, i32 64)
  %i.adi = add i32 %.sroa.speculated.i30, %.079
  %i.adj = zext i32 %.079 to i64
  %i.adk = getelementptr inbounds nuw [20 x i8], ptr %.val27, i64 %i.adj
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 15
  %i.adm = load i8, ptr %i.adl, align 1, !tbaa !61 ; 2 uses
  %i.adn = add i32 %.079, 1
  %umax.i31 = call i32 @llvm.umax.i32(i32 %i.adi, i32 %i.adn) ; 3 uses
  %i.ado = add i32 %umax.i31, -1                  ; 2 uses
  %exitcond107.not215 = icmp eq i32 %.079, %i.ado
  br i1 %exitcond107.not215, label %_ZL17_hb_next_syllableP11hb_buffer_tj.exit34, label %.lr.ph217

bb.dh:                                            ; preds = %.lr.ph217
  %exitcond107.not = icmp eq i32 %i.adp, %i.ado
  br i1 %exitcond107.not, label %_ZL17_hb_next_syllableP11hb_buffer_tj.exit34, label %.lr.ph217, !llvm.loop !4278

.lr.ph217:                                        ; preds = %_ZL33initial_reordering_syllable_indicPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj.exit, %bb.dh
  %.0.i32216 = phi i32 [ %i.adp, %bb.dh ], [ %.079, %_ZL33initial_reordering_syllable_indicPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj.exit ]
  %i.adp = add i32 %.0.i32216, 1                  ; 4 uses
  %i.adq = zext i32 %i.adp to i64
  %i.adr = getelementptr inbounds nuw [20 x i8], ptr %.val27, i64 %i.adq
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 15
  %i.adt = load i8, ptr %i.ads, align 1, !tbaa !61
  %i.adu = icmp eq i8 %i.adm, %i.adt
  br i1 %i.adu, label %bb.dh, label %._ZL17_hb_next_syllableP11hb_buffer_tj.exit34_crit_edge219, !llvm.loop !4278

._ZL17_hb_next_syllableP11hb_buffer_tj.exit34_crit_edge219: ; preds = %.lr.ph217
  br label %_ZL17_hb_next_syllableP11hb_buffer_tj.exit34, !llvm.loop !4278

_ZL17_hb_next_syllableP11hb_buffer_tj.exit34:     ; preds = %bb.dh, %._ZL17_hb_next_syllableP11hb_buffer_tj.exit34_crit_edge219, %_ZL33initial_reordering_syllable_indicPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj.exit
  %.lcssa.i33 = phi i32 [ %umax.i31, %_ZL33initial_reordering_syllable_indicPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj.exit ], [ %i.adp, %._ZL17_hb_next_syllableP11hb_buffer_tj.exit34_crit_edge219 ], [ %umax.i31, %bb.dh ]
  %i.adv = icmp ult i32 %.079, %i.ea
  br i1 %i.adv, label %bb.x, label %._crit_edge, !llvm.loop !4317

bb.di:                                            ; preds = %bb.a, %._crit_edge
  %.026 = phi i1 [ %i.dy, %._crit_edge ], [ false, %bb.a ]
  ret i1 %.026
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZL22final_reordering_indicPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.hb_glyph_info_t, align 4    ; 4 uses
  %4 = alloca %struct.hb_glyph_info_t, align 4    ; 4 uses
  %5 = alloca %struct.hb_glyph_info_t, align 4    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 8 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !522
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.ca, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %2, ptr noundef %1, ptr noundef nonnull @.str.138)
  br i1 %i.c, label %bb.c, label %bb.bz

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.a, align 8, !tbaa !522  ; 3 uses
  %.not22 = icmp eq i32 %i.d, 0
  br i1 %.not22, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %2, i64 112
  %.val25 = load ptr, ptr %i.e, align 8, !tbaa !499 ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.d, i32 64) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val25, i64 15
  %i.g = load i8, ptr %i.f, align 1, !tbaa !61
  %i.h = add nsw i32 %.sroa.speculated.i, -1      ; 2 uses
  %wide.trip.count = zext nneg i32 %i.h to i64
  %exitcond.not192 = icmp eq i32 %i.h, 0
  br i1 %exitcond.not192, label %.lr.ph, label %.lr.ph195

bb.e:                                             ; preds = %.lr.ph195
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph, label %.lr.ph195, !llvm.loop !4278

.lr.ph195:                                        ; preds = %bb.d, %bb.e
  %indvars.iv193 = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv193, 1 ; 4 uses
  %i.i = getelementptr inbounds nuw [20 x i8], ptr %.val25, i64 %indvars.iv.next
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 15
  %i.k = load i8, ptr %i.j, align 1, !tbaa !61
  %i.l = icmp eq i8 %i.g, %i.k
  br i1 %i.l, label %bb.e, label %_ZL17_hb_next_syllableP11hb_buffer_tj.exit.split.loop.exit, !llvm.loop !4278

_ZL17_hb_next_syllableP11hb_buffer_tj.exit.split.loop.exit: ; preds = %.lr.ph195
  %i.m = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %_ZL17_hb_next_syllableP11hb_buffer_tj.exit.split.loop.exit, %bb.d
  %i.n = phi i32 [ %i.m, %_ZL17_hb_next_syllableP11hb_buffer_tj.exit.split.loop.exit ], [ %.sroa.speculated.i, %bb.d ], [ %.sroa.speculated.i, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 4 uses
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !499
  br label %bb.f

._crit_edge:                                      ; preds = %_ZL17_hb_next_syllableP11hb_buffer_tj.exit33, %bb.c
  %i.s = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %2, ptr noundef %1, ptr noundef nonnull @.str.139) ; 0 uses
  br label %bb.bz

bb.f:                                             ; preds = %.lr.ph, %_ZL17_hb_next_syllableP11hb_buffer_tj.exit33
  %i.t = phi ptr [ %.pre, %.lr.ph ], [ %.val23, %_ZL17_hb_next_syllableP11hb_buffer_tj.exit33 ] ; 40 uses
  %.064 = phi i32 [ %i.n, %.lr.ph ], [ %.lcssa.i32, %_ZL17_hb_next_syllableP11hb_buffer_tj.exit33 ] ; 48 uses
  %.02062 = phi i32 [ 0, %.lr.ph ], [ %.064, %_ZL17_hb_next_syllableP11hb_buffer_tj.exit33 ] ; 35 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !2105 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load atomic i32, ptr %i.v monotonic, align 4 ; 4 uses
  %.not.i = icmp ne i32 %i.w, 0
  %i.x = icmp ult i32 %.02062, %.064              ; 2 uses
  %or.cond634.i = and i1 %i.x, %.not.i
  br i1 %or.cond634.i, label %.lr.ph.preheader.i, label %.loopexit573.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.y = zext i32 %.02062 to i64                  ; 5 uses
  %wide.trip.count.i = zext i32 %.064 to i64      ; 3 uses
  %i.z = sub nsw i64 %wide.trip.count.i, %i.y
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.aa = getelementptr inbounds nuw [20 x i8], ptr %i.t, i64 %i.y ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !582
  %i.ac = icmp eq i32 %i.ab, %i.w
  br i1 %i.ac, label %bb.g, label %.lr.ph.i.prol.loopexit.unr-lcssa

bb.g:                                             ; preds = %.lr.ph.i.prol
  %i.ad = getelementptr i8, ptr %i.aa, i64 12     ; 2 uses
  %.val396.i.prol = load i16, ptr %i.ad, align 4, !tbaa !61 ; 2 uses
  %i.ae = and i16 %.val396.i.prol, 96
  %or.cond542.i.prol = icmp eq i16 %i.ae, 96
  br i1 %or.cond542.i.prol, label %bb.h, label %.lr.ph.i.prol.loopexit.unr-lcssa

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 18
  store i8 4, ptr %i.af, align 2, !tbaa !61
  %i.ag = and i16 %.val396.i.prol, -97
  store i16 %i.ag, ptr %i.ad, align 4, !tbaa !61
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.h, %bb.g, %.lr.ph.i.prol
  %indvars.iv.next.i.prol = add nuw nsw i64 %i.y, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.y, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.ah = add nsw i64 %wide.trip.count.i, -1
  %i.ai = icmp eq i64 %i.ah, %i.y
  br i1 %i.ai, label %.loopexit573.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.m
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.m ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [20 x i8], ptr %i.t, i64 %indvars.iv.i ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !582
  %i.al = icmp eq i32 %i.ak, %i.w
  br i1 %i.al, label %bb.i, label %.lr.ph.i.1

bb.i:                                             ; preds = %.lr.ph.i
  %i.am = getelementptr i8, ptr %i.aj, i64 12     ; 2 uses
  %.val396.i = load i16, ptr %i.am, align 4, !tbaa !61 ; 2 uses
  %i.an = and i16 %.val396.i, 96
  %or.cond542.i = icmp eq i16 %i.an, 96
  br i1 %or.cond542.i, label %bb.j, label %.lr.ph.i.1

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 18
  store i8 4, ptr %i.ao, align 2, !tbaa !61
  %i.ap = and i16 %.val396.i, -97
  store i16 %i.ap, ptr %i.am, align 4, !tbaa !61
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.j, %bb.i, %.lr.ph.i
  %i.aq = getelementptr inbounds nuw [20 x i8], ptr %i.t, i64 %indvars.iv.i ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !582
  %i.at = icmp eq i32 %i.as, %i.w
  br i1 %i.at, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.1
  %i.au = getelementptr i8, ptr %i.aq, i64 32     ; 2 uses
  %.val396.i.1 = load i16, ptr %i.au, align 4, !tbaa !61 ; 2 uses
  %i.av = and i16 %.val396.i.1, 96
  %or.cond542.i.1 = icmp eq i16 %i.av, 96
  br i1 %or.cond542.i.1, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 38
  store i8 4, ptr %i.aw, align 2, !tbaa !61
  %i.ax = and i16 %.val396.i.1, -97
  store i16 %i.ax, ptr %i.au, align 4, !tbaa !61
  br label %bb.m

end_hunk_9
