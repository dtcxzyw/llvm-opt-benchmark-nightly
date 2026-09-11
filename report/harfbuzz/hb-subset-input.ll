Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-input?download=true
inline.NumInlined: 349
inline.NumDeleted: 217
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@hb_subset_axis_range_from_string:bb.a
bb.g:                                             ; preds = %bb.f
  %i.l = load double, ptr %i.b, align 8, !tbaa !66
  %i.m = fptrunc double %i.l to float             ; 3 uses
  store float %i.m, ptr %2, align 4, !tbaa !68
  store float %i.m, ptr %4, align 4, !tbaa !68
  store float %i.m, ptr %3, align 4, !tbaa !68
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.037 = phi i32 [ 1, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.w

bb.i:                                             ; preds = %bb.c
  %i.n = load i8, ptr %0, align 1, !tbaa !69
  %.not43 = icmp eq i8 %i.n, 0
  %i.o = icmp eq ptr %strchr, %0
  %or.cond = or i1 %.not43, %i.o
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %strchr, i64 1 ; 3 uses
  store ptr %i.p, ptr %i.a, align 8, !tbaa !107
  %strchr45 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.p, i32 58)
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.q = call noundef zeroext i1 @_Z15hb_parse_doublePPKcS0_Pdb(ptr noundef nonnull %i.a, ptr noundef nonnull %strchr, ptr noundef nonnull %i.c, i1 noundef zeroext false) #17
  br i1 %i.q, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.r = load double, ptr %i.c, align 8, !tbaa !66
  %i.s = fptrunc double %i.r to float
  %i.t = getelementptr inbounds nuw i8, ptr %strchr, i64 1 ; 3 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !107
  %strchr44 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.t, i32 58)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.u = phi ptr [ %i.p, %bb.j ], [ %i.t, %bb.l ] ; 2 uses
  %.sroa.0.1 = phi float [ +qnan, %bb.j ], [ %i.s, %bb.l ] ; 2 uses
  %.2 = phi ptr [ %strchr45, %bb.j ], [ %strchr44, %bb.l ] ; 6 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !69
  %.not43.1 = icmp eq i8 %i.v, 0
  %i.w = icmp eq ptr %.2, %i.u
  %or.cond.1 = select i1 %.not43.1, i1 true, i1 %i.w
  br i1 %or.cond.1, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.x = call noundef zeroext i1 @_Z15hb_parse_doublePPKcS0_Pdb(ptr noundef nonnull %i.a, ptr noundef %.2, ptr noundef nonnull %i.c, i1 noundef zeroext false) #17
  br i1 %i.x, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.y = load double, ptr %i.c, align 8, !tbaa !66
  %i.z = fptrunc double %i.y to float             ; 2 uses
  %i.aa = icmp eq ptr %.2, null
  br i1 %i.aa, label %.thread50.thread77, label %bb.p

.thread50.thread77:                               ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %.thread50.thread73

bb.p:                                             ; preds = %bb.o
  %i.ab = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 3 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !107
  %strchr44.1 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ab, i32 58)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.s

bb.q:                                             ; preds = %bb.m
  %i.ac = icmp eq ptr %.2, null
  br i1 %i.ac, label %.thread50.thread73, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 3 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !107
  %strchr45.1 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ad, i32 58)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.ae = phi ptr [ %i.ad, %bb.r ], [ %i.ab, %bb.p ] ; 2 uses
  %.sroa.6.3 = phi float [ +qnan, %bb.r ], [ %i.z, %bb.p ]
  %.2.1 = phi ptr [ %strchr45.1, %bb.r ], [ %strchr44.1, %bb.p ] ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !69
  %.not43.2 = icmp eq i8 %i.af, 0
  %i.ag = icmp eq ptr %.2.1, %i.ae
  %or.cond.2 = select i1 %.not43.2, i1 true, i1 %i.ag
  br i1 %or.cond.2, label %.thread50.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.ah = call noundef zeroext i1 @_Z15hb_parse_doublePPKcS0_Pdb(ptr noundef nonnull %i.a, ptr noundef %.2.1, ptr noundef nonnull %i.c, i1 noundef zeroext false) #17
  br i1 %i.ah, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ai = load double, ptr %i.c, align 8, !tbaa !66
  %i.aj = fptrunc double %i.ai to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %.thread50.thread

bb.v:                                             ; preds = %bb.t, %bb.n, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.w

.thread50.thread73:                               ; preds = %bb.q, %.thread50.thread77
  %.sroa.6.176 = phi float [ %i.z, %.thread50.thread77 ], [ +qnan, %bb.q ]
  store float %.sroa.0.1, ptr %2, align 4, !tbaa !68
  store float +qnan, ptr %4, align 4, !tbaa !68
  store float %.sroa.6.176, ptr %3, align 4, !tbaa !68
  br label %bb.w

.thread50.thread:                                 ; preds = %bb.s, %bb.u
  %.sroa.10.171 = phi float [ %i.aj, %bb.u ], [ +qnan, %bb.s ]
  store float %.sroa.0.1, ptr %2, align 4, !tbaa !68
  store float %.sroa.6.3, ptr %4, align 4, !tbaa !68
  store float %.sroa.10.171, ptr %3, align 4, !tbaa !68
  br label %bb.w

bb.w:                                             ; preds = %.thread50.thread73, %.thread50.thread, %bb.v, %bb.h, %bb.e
  %.6 = phi i32 [ %.037, %bb.h ], [ 1, %bb.e ], [ 1, %.thread50.thread73 ], [ 1, %.thread50.thread ], [ 0, %bb.v ]
  ret i32 %.6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare hidden noundef zeroext i1 @_Z15hb_parse_doublePPKcS0_Pdb(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

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
  %i.ah = add nuw i32 %.sroa.speculated23, 1      ; 2 uses
  %i.ai = zext nneg i32 %.sroa.speculated23 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ai
  store i8 58, ptr %i.aj, align 1, !tbaa !69
  %i.ak = zext i32 %i.ah to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ak
  %i.am = sub nuw nsw i32 127, %.sroa.speculated23
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !64
  %i.aq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.al, i64 noundef %i.an, ptr noundef nonnull @.str.2, double noundef %i.ap) #17
  %.sroa.speculated17 = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 0)
  %i.ar = add nuw i32 %.sroa.speculated17, %i.ah  ; 3 uses
  %i.as = add i32 %i.ar, 1                        ; 2 uses
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
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
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
end_hunk_0
