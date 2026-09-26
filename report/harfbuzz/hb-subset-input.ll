Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-input?download=true
inline.NumInlined: 349
inline.NumDeleted: 217
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z15hb_parse_doublePPKcS0_Pdb
; Function Attrs: mustprogress nofree nounwind uwtable
define void @hb_subset_axis_range_to_string(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 8 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = mul i32 %1, 506952113
  %i.e = and i32 %i.d, 1073741823
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load i32, ptr %i.f, align 8, !tbaa !67
  %i.h = urem i32 %i.e, %i.g                      ; 2 uses
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = and i32 %i.l, 2
  %.not15.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not15.i.i.i, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.o = load i32, ptr %i.n, align 4
  %i.p = load i32, ptr %i.j, align 4, !tbaa !56
  %i.q = icmp eq i32 %i.p, %1
  br i1 %i.q, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.r = load i32, ptr %i.x, align 4, !tbaa !56
  %i.s = icmp eq i32 %i.r, %1
  br i1 %i.s, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i, !llvm.loop !1

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.d
  %.01016.i20.i.i = phi i32 [ %i.v, %bb.d ], [ %i.h, %.lr.ph.i.i.i ]
  %.017.i19.i.i = phi i32 [ %i.t, %bb.d ], [ 0, %.lr.ph.i.i.i ]
  %i.t = add i32 %.017.i19.i.i, 1                 ; 2 uses
  %i.u = add i32 %i.t, %.01016.i20.i.i
  %i.v = and i32 %i.u, %i.o                       ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %i.aa = and i32 %i.z, 2
  %.not.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread, label %bb.d, !llvm.loop !1

_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %.lcssa17.i.i = phi i32 [ %i.l, %.lr.ph.i.i.i ], [ %i.z, %bb.d ]
  %i.ab = phi i64 [ %i.i, %.lr.ph.i.i.i ], [ %i.w, %bb.d ]
  %i.ac = trunc i32 %.lcssa17.i.i to i1
  br i1 %i.ac, label %bb.e, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread

bb.e:                                             ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.ab ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.af = load double, ptr %i.ae, align 8, !tbaa !63
  %i.ag = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.2, double noundef %i.af) #17
  %.sroa.speculated23 = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 0) ; 3 uses
  %i.ah = add nuw nsw i32 %.sroa.speculated23, 1  ; 2 uses
  %i.ai = zext nneg i32 %.sroa.speculated23 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ai
  store i8 58, ptr %i.aj, align 1, !tbaa !69
  %i.ak = zext nneg i32 %i.ah to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ak
  %i.am = sub nuw nsw i32 127, %.sroa.speculated23
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !64
  %i.aq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.al, i64 noundef %i.an, ptr noundef nonnull @.str.2, double noundef %i.ap) #17
  %.sroa.speculated17 = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 0)
  %i.ar = add nuw i32 %.sroa.speculated17, %i.ah  ; 3 uses
  %i.as = add nuw i32 %i.ar, 1                    ; 2 uses
  %i.at = zext i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.at
  store i8 58, ptr %i.au, align 1, !tbaa !69
  %i.av = zext i32 %i.as to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.av
  %i.ax = sub nuw i32 127, %i.ar
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ba = load double, ptr %i.az, align 8, !tbaa !65
  %i.bb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.aw, i64 noundef %i.ay, ptr noundef nonnull @.str.2, double noundef %i.ba) #17
  %.sroa.speculated11 = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 0)
  %i.bc = add i32 %.sroa.speculated11, %i.as
  %i.bd = add i32 %3, -1
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 %i.bd) ; 2 uses
  %i.be = zext i32 %.sroa.speculated to i64       ; 2 uses
  %.not.i8 = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not.i8, label %_ZL9hb_memcpyPvPKvm.exit, label %bb.f, !prof !46

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull readonly align 16 %i.a, i64 range(i64 0, 309237645241) %i.be, i1 false), !alias.scope !111
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.e, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 %i.be
  store i8 0, ptr %i.bf, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread

_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread: ; preds = %.lr.ph.i.i, %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i, %bb.c, %bb.b, %_ZL9hb_memcpyPvPKvm.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define ptr @hb_subset_preprocess(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @hb_subset_input_create_or_fail() ; 12 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @hb_subset_input_keep_everything(ptr noundef nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  store i8 1, ptr %i.b, align 4, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 85
  store i8 1, ptr %i.c, align 1, !tbaa !28
  %i.d = tail call ptr @hb_subset_or_fail(ptr noundef %0, ptr noundef nonnull %i.a) #17 ; 2 uses
  %i.e = load atomic i32, ptr %i.a monotonic, align 4 ; 0 uses
  %i.f = load atomic i32, ptr %i.a monotonic, align 4
  %.not.i7.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i7.i.i.i, label %hb_subset_input_destroy.exit, label %_ZL24hb_object_should_destroyI17hb_subset_input_tEbPT_.exit.i.i, !prof !46

_ZL24hb_object_should_destroyI17hb_subset_input_tEbPT_.exit.i.i: ; preds = %bb.b
  %i.g = atomicrmw add ptr %i.a, i32 -1 acq_rel, align 4
  %.not6.i.i.i = icmp eq i32 %i.g, 1
  br i1 %.not6.i.i.i, label %bb.c, label %hb_subset_input_destroy.exit

bb.c:                                             ; preds = %_ZL24hb_object_should_destroyI17hb_subset_input_tEbPT_.exit.i.i
  store atomic i32 -57005, ptr %i.a monotonic, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.i = load atomic ptr, ptr %i.h acquire, align 8 ; 5 uses
  %.not.i.i3.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i3.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %i.i)
  %i.k = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.i) #17 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.i) #17
  store atomic ptr null, ptr %i.h monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN17hb_subset_input_tD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.a) #17
  tail call void @hb_free(ptr noundef nonnull %i.a) #17
  br label %hb_subset_input_destroy.exit

hb_subset_input_destroy.exit:                     ; preds = %bb.b, %_ZL24hb_object_should_destroyI17hb_subset_input_tEbPT_.exit.i.i, %bb.e
  %.not14 = icmp eq ptr %i.d, null
  br i1 %.not14, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %hb_subset_input_destroy.exit, %bb.a
  %i.l = tail call ptr @hb_face_reference(ptr noundef %0) #17
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %hb_subset_input_destroy.exit
  %.1 = phi ptr [ %i.d, %hb_subset_input_destroy.exit ], [ %i.l, %.sink.split ]
  ret ptr %.1
}

declare ptr @hb_face_reference(ptr noundef) local_unnamed_addr #2

declare ptr @hb_subset_or_fail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @hb_subset_input_old_to_new_glyph_mapping(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  ret ptr %i.a
}

declare void @hb_set_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12hb_bit_set_t9set_arrayIjEEvbPKT_jj(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !41, !range !42, !noundef !43
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = icmp ne i32 %3, 0
  %or.cond3 = and i1 %i.c, %i.b
  br i1 %or.cond3, label %bb.b, label %.critedge43, !prof !115

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.d, align 4, !tbaa !116
  %i.e = load i32, ptr %2, align 4, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = zext i32 %4 to i64                       ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  %.02974 = phi i32 [ %i.e, %bb.b ], [ %.us-phi54, %.critedge ] ; 5 uses
  %.03073 = phi ptr [ %2, %bb.b ], [ %.us-phi, %.critedge ] ; 3 uses
  %.03372 = phi i32 [ %3, %bb.b ], [ %.us-phi53, %.critedge ] ; 3 uses
  %i.l = lshr i32 %.02974, 9                      ; 4 uses
  %i.m = load atomic i32, ptr %i.f monotonic, align 8 ; 2 uses
  %i.n = load i32, ptr %i.g, align 4, !tbaa !70   ; 3 uses
  %i.o = icmp ult i32 %i.m, %i.n
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !71   ; 3 uses
  br i1 %i.o, label %bb.d, label %._crit_edge.i, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.q = zext i32 %i.m to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !118
  %.not.i = icmp eq i32 %i.s, %i.l
  br i1 %.not.i, label %.sink.split.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.t = load i32, ptr %i.i, align 4, !tbaa !72   ; 2 uses
  %.not1.i.i.i.i.i = icmp sgt i32 %i.n, 0
  br i1 %.not1.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge.i
  %i.u = add nsw i32 %i.n, -1
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.preheader.i.i.i.i.i
  %.0203.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i, %bb.h ], [ %i.u, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i, %bb.h ], [ 0, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.v = add i32 %.0212.i.i.i.i.i, %.0203.i.i.i.i.i
  %i.w = lshr i32 %i.v, 1                         ; 4 uses
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !118 ; 2 uses
  %i.ab = icmp slt i32 %i.l, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = add nsw i32 %i.w, -1
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.not28.i.i.i.i.i = icmp eq i32 %i.l, %i.aa
  br i1 %.not28.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add nuw nsw i32 %i.w, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.223.i.i.i.i.i = phi i32 [ %i.ad, %bb.g ], [ %.0212.i.i.i.i.i, %bb.e ] ; 3 uses
  %.2.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i, %bb.g ], [ %i.ac, %bb.e ] ; 2 uses
  %.not.not.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i, %.2.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !112

.loopexit.i:                                      ; preds = %bb.h, %._crit_edge.i
  %storemerge.i.i.ph.sink.i.i.ph.i = phi i32 [ 0, %._crit_edge.i ], [ %.223.i.i.i.i.i, %bb.h ] ; 3 uses
  br i1 %1, label %bb.i, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread.thread

bb.i:                                             ; preds = %.loopexit.i
  %i.ae = add i32 %i.t, 1
  %i.af = tail call noundef zeroext i1 @_ZN12hb_bit_set_t6resizeEjbb(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.ae, i1 noundef zeroext true, i1 noundef zeroext false)
  br i1 %i.af, label %bb.j, label %_ZN12hb_bit_set_t8page_forEjb.exit, !prof !44

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !119
  %i.ah = zext i32 %i.t to i64                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, i8 0, i64 64, i1 false), !tbaa !74
  store i32 0, ptr %i.ai, align 8, !tbaa !77
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !120
  %i.al = zext nneg i32 %storemerge.i.i.ph.sink.i.i.ph.i to i64 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.g, align 4, !tbaa !70
  %i.ap = xor i32 %storemerge.i.i.ph.sink.i.i.ph.i, -1
  %i.aq = add i32 %i.ao, %i.ap
  %i.ar = shl i32 %i.aq, 3
  %i.as = zext i32 %i.ar to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.an, ptr align 4 %i.am, i64 %i.as, i1 false)
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !120 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.al
  %.sroa.5.0.insert.shift.i = shl nuw i64 %i.ah, 32
  %.sroa.0.0.insert.ext.i = zext nneg i32 %i.l to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.au, align 4, !tbaa !56
  br label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i: ; preds = %bb.f, %bb.j
  %.pre-phi.i = phi i64 [ %i.al, %bb.j ], [ %i.x, %bb.f ]
  %i.av = phi ptr [ %i.at, %bb.j ], [ %i.p, %bb.f ]
  %storemerge.i.i.ph.sink.i.i17.i = phi i32 [ %storemerge.i.i.ph.sink.i.i.ph.i, %bb.j ], [ %i.w, %bb.f ]
  store atomic i32 %storemerge.i.i.ph.sink.i.i17.i, ptr %i.f monotonic, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.pre-phi.i
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i
  %.sink30.i = phi ptr [ %i.aw, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i ], [ %i.r, %bb.d ]
  %.sink.i = load ptr, ptr %i.j, align 8, !tbaa !119
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink30.i, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !121
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [72 x i8], ptr %.sink.i, i64 %i.az
  %i.bb = freeze ptr %i.ba
  br label %_ZN12hb_bit_set_t8page_forEjb.exit

_ZN12hb_bit_set_t8page_forEjb.exit:               ; preds = %bb.i, %.sink.split.i
  %.2.i = phi ptr [ %i.bb, %.sink.split.i ], [ null, %bb.i ] ; 5 uses
  %.not39 = icmp eq ptr %.2.i, null
  %spec.select = and i1 %1, %.not39
  br i1 %spec.select, label %.critedge43, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, !prof !122

_ZN12hb_bit_set_t8page_forEjb.exit.thread:        ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit
  %i.bc = and i32 %.02974, -512                   ; 4 uses
  %i.bd = add i32 %i.bc, 512                      ; 3 uses
  %i.be = icmp ne ptr %.2.i, null
  %or.cond = or i1 %1, %i.be
  %i.bf = getelementptr inbounds nuw i8, ptr %.2.i, i64 8 ; 2 uses
  br i1 %or.cond, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split.us

_ZN12hb_bit_set_t8page_forEjb.exit.thread.thread: ; preds = %.loopexit.i
  %i.bg = and i32 %.02974, -512                   ; 2 uses
  %i.bh = add i32 %i.bg, 512
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split.us

_ZN12hb_bit_set_t8page_forEjb.exit.thread.split.us: ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.thread.thread, %_ZN12hb_bit_set_t8page_forEjb.exit.thread
  %i.bi = phi i32 [ %i.bh, %_ZN12hb_bit_set_t8page_forEjb.exit.thread.thread ], [ %i.bd, %_ZN12hb_bit_set_t8page_forEjb.exit.thread ]
  %i.bj = phi i32 [ %i.bg, %_ZN12hb_bit_set_t8page_forEjb.exit.thread.thread ], [ %i.bc, %_ZN12hb_bit_set_t8page_forEjb.exit.thread ]
  %i.bk = add i32 %.03372, -1                     ; 2 uses
  %.not41.us65 = icmp eq i32 %i.bk, 0
  br i1 %.not41.us65, label %.critedge43, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.bl = add i32 %i.bm, -1                       ; 2 uses
  %.not41.us = icmp eq i32 %i.bl, 0
  br i1 %.not41.us, label %.critedge43, label %.lr.ph, !llvm.loop !113

.lr.ph:                                           ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split.us, %bb.k
  %i.bm = phi i32 [ %i.bl, %bb.k ], [ %i.bk, %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split.us ] ; 2 uses
  %.pn = phi ptr [ %i.bn, %bb.k ], [ %.03073, %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split.us ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.pn, i64 %i.k ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !56 ; 3 uses
  %i.bp = icmp ule i32 %i.bj, %i.bo
  %i.bq = icmp ult i32 %i.bo, %i.bi
  %i.br = and i1 %i.bp, %i.bq
  br i1 %i.br, label %bb.k, label %..critedge.split.us_crit_edge, !llvm.loop !113

..critedge.split.us_crit_edge:                    ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !113

_ZN12hb_bit_set_t8page_forEjb.exit.thread.split:  ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.thread
  br i1 %1, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split.split.us, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split.split

_ZN12hb_bit_set_t8page_forEjb.exit.thread.split.split.us: ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split, %bb.m
  %.134.us55 = phi i32 [ %i.cb, %bb.m ], [ %.03372, %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split ]
  %.131.us56 = phi ptr [ %i.cc, %bb.m ], [ %.03073, %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split ]
  %.1.us57 = phi i32 [ %i.cd, %bb.m ], [ %.02974, %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split ] ; 3 uses
  %.not40.us.not = icmp eq i32 %.1.us57, -1
  br i1 %.not40.us.not, label %bb.l, label %_ZN13hb_bit_page_t3setEjb.exit.us

_ZN13hb_bit_page_t3setEjb.exit.us:                ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split.split.us
  %i.bs = and i32 %.1.us57, 63
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = lshr i32 %.1.us57, 6
  %i.bw = and i32 %i.bv, 7
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bx ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !74
  %i.ca = or i64 %i.bz, %i.bu
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !74
  store i32 -1, ptr %.2.i, align 8, !tbaa !77
  br label %bb.l

bb.l:                                             ; preds = %_ZN13hb_bit_page_t3setEjb.exit.us, %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split.split.us
  %i.cb = add i32 %.134.us55, -1                  ; 3 uses
  %.not41.us58 = icmp eq i32 %i.cb, 0
  br i1 %.not41.us58, label %.critedge43, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %.131.us56, i64 %i.k ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !56 ; 4 uses
  %i.ce = icmp ule i32 %i.bc, %i.cd
  %i.cf = icmp ult i32 %i.cd, %i.bd
  %i.cg = and i1 %i.ce, %i.cf
  br i1 %i.cg, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split.split.us, label %.critedge, !llvm.loop !113

_ZN12hb_bit_set_t8page_forEjb.exit.thread.split.split: ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split, %bb.o
  %.134 = phi i32 [ %i.cr, %bb.o ], [ %.03372, %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split ]
  %.131 = phi ptr [ %i.cs, %bb.o ], [ %.03073, %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split ]
  %.1 = phi i32 [ %i.ct, %bb.o ], [ %.02974, %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split ] ; 3 uses
  %.not40.not = icmp eq i32 %.1, -1
  br i1 %.not40.not, label %bb.n, label %_ZN13hb_bit_page_t3setEjb.exit

_ZN13hb_bit_page_t3setEjb.exit:                   ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split.split
  %i.ch = and i32 %.1, 63
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = xor i64 %i.cj, -1
  %i.cl = lshr i32 %.1, 6
  %i.cm = and i32 %i.cl, 7
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cn ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !74
  %i.cq = and i64 %i.cp, %i.ck
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !74
  store i32 -1, ptr %.2.i, align 8, !tbaa !77
  br label %bb.n

bb.n:                                             ; preds = %_ZN13hb_bit_page_t3setEjb.exit, %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split.split
  %i.cr = add i32 %.134, -1                       ; 3 uses
  %.not41 = icmp eq i32 %i.cr, 0
  br i1 %.not41, label %.critedge43, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %.131, i64 %i.k ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !56 ; 4 uses
  %i.cu = icmp ule i32 %i.bc, %i.ct
  %i.cv = icmp ult i32 %i.ct, %i.bd
  %i.cw = and i1 %i.cu, %i.cv
  br i1 %i.cw, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split.split, label %.critedge, !llvm.loop !113

.critedge:                                        ; preds = %bb.o, %bb.m, %..critedge.split.us_crit_edge
  %.us-phi = phi ptr [ %i.cc, %bb.m ], [ %i.bn, %..critedge.split.us_crit_edge ], [ %i.cs, %bb.o ]
  %.us-phi53 = phi i32 [ %i.cb, %bb.m ], [ %i.bm, %..critedge.split.us_crit_edge ], [ %i.cr, %bb.o ]
  %.us-phi54 = phi i32 [ %i.cd, %bb.m ], [ %i.bo, %..critedge.split.us_crit_edge ], [ %i.ct, %bb.o ]
  br label %bb.c, !llvm.loop !114

.critedge43:                                      ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.thread.split.us, %_ZN12hb_bit_set_t8page_forEjb.exit, %bb.k, %bb.n, %bb.l, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_bit_set_t6resizeEjbb(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !41, !range !42, !noundef !43
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.j, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !72
  %i.f = icmp ult i32 %i.e, %1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.c, align 8, !tbaa !124
  %i.h = icmp ult i32 %i.g, %1
  %i.i = icmp ult i32 %1, 3
  %or.cond = and i1 %i.i, %i.h
  %spec.select = or i1 %3, %or.cond
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.shrunk = phi i1 [ %3, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %i.j = icmp slt i32 %1, 0
  br i1 %i.j, label %.critedge, label %bb.e, !prof !46

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i32 noundef %1, i1 noundef zeroext %.0.shrunk)
  br i1 %i.k, label %bb.f, label %.critedge, !prof !125

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.d, align 4, !tbaa !78   ; 2 uses
  %i.m = icmp ugt i32 %1, %i.l
  %brmerge.not.i = and i1 %2, %i.m
  br i1 %brmerge.not.i, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !79   ; 5 uses
  %i.p = zext i32 %i.l to i64                     ; 4 uses
  %wide.trip.count.i.i = zext nneg i32 %1 to i64  ; 3 uses
  %i.q = sub nsw i64 %wide.trip.count.i.i, %i.p
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i, %.prol.preheader
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.prol.preheader ], [ %i.p, %.lr.ph.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i ]
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i.i.prol ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, i8 0, i64 64, i1 false), !tbaa !74
  store i32 0, ptr %i.r, align 8, !tbaa !77
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !123

end_hunk_0
