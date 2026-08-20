inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 288
loop-unroll.NumUnrolled: 487
begin_hunk_0_@hb_blob_create_from_file_or_fail:bb.a
  store i32 %i.k, ptr %i.u, align 8, !tbaa !57
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  store i32 3, ptr %i.v, align 4, !tbaa !541
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.a, ptr %i.w, align 8, !tbaa !365
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr @_ZL23_hb_mapped_file_destroyPv, ptr %i.x, align 8, !tbaa !364
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #63
  %i.y = tail call i32 @close(i32 noundef %i.b) #63 ; 0 uses
  br label %_ZL18_hb_blob_read_filePKc.exit

_ZL17_hb_blob_try_mmapPKc.exit.thread:            ; preds = %.thread.i, %bb.a, %_ZL17_hb_blob_try_mmapPKc.exit.thread12
  %i.z = tail call noalias noundef dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #65 ; 4 uses
  %.not.i6 = icmp eq ptr %i.z, null
  br i1 %.not.i6, label %_ZL18_hb_blob_read_filePKc.exit, label %bb.g, !prof !48

bb.g:                                             ; preds = %_ZL17_hb_blob_try_mmapPKc.exit.thread
  %i.aa = tail call noalias ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.57) ; 7 uses
  %.not27.i = icmp eq ptr %i.aa, null
  br i1 %.not27.i, label %.thread43.i, label %.preheader.i, !prof !48

.preheader.i:                                     ; preds = %bb.g
  %i.ab = tail call i32 @feof(ptr noundef nonnull %i.aa) #63
  %.not2853.i = icmp eq i32 %i.ab, 0
  br i1 %.not2853.i, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.l
  %.01955.i = phi i64 [ %.120.i, %bb.l ], [ 131072, %.preheader.i ] ; 3 uses
  %.02154.i = phi i64 [ %.122.i, %bb.l ], [ 0, %.preheader.i ] ; 5 uses
  %i.ac = phi ptr [ %i.ai, %bb.l ], [ %i.z, %.preheader.i ] ; 4 uses
  %i.ad = sub i64 %.01955.i, %.02154.i            ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 8192
  br i1 %i.ae, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph.i
  %i.af = shl i64 %.01955.i, 1                    ; 4 uses
  %i.ag = icmp ugt i64 %i.af, 536870912
  br i1 %i.ag, label %.thread48.i, label %bb.i, !prof !48

bb.i:                                             ; preds = %bb.h
  %i.ah = tail call noalias noundef ptr @realloc(ptr noundef %i.ac, i64 noundef %i.af) #66 ; 2 uses
  %.not29.not.i = icmp eq ptr %i.ah, null
  br i1 %.not29.not.i, label %.thread48.i, label %._crit_edge59.i, !prof !48

._crit_edge59.i:                                  ; preds = %bb.i
  %.pre.i = sub i64 %i.af, %.02154.i
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge59.i, %.lr.ph.i
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge59.i ], [ %i.ad, %.lr.ph.i ]
  %i.ai = phi ptr [ %i.ah, %._crit_edge59.i ], [ %i.ac, %.lr.ph.i ] ; 5 uses
  %.120.i = phi i64 [ %i.af, %._crit_edge59.i ], [ %.01955.i, %.lr.ph.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.02154.i
  %i.ak = tail call i64 @fread(ptr noundef %i.aj, i64 noundef 1, i64 noundef %.pre-phi.i, ptr noundef nonnull %i.aa)
  %i.al = tail call i32 @ferror(ptr noundef nonnull %i.aa) #63
  switch i32 %i.al, label %.thread48.i [
    i32 4, label %bb.l
    i32 0, label %bb.k
  ], !prof !573

bb.k:                                             ; preds = %bb.j
  %i.am = add i64 %i.ak, %.02154.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.122.i = phi i64 [ %i.am, %bb.k ], [ %.02154.i, %bb.j ] ; 2 uses
  %i.an = tail call i32 @feof(ptr noundef nonnull %i.aa) #63
  %.not28.i = icmp eq i32 %i.an, 0
  br i1 %.not28.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.l
  %i.ao = trunc i64 %.122.i to i32                ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %_ZL16hb_object_createI9hb_blob_tJEEPT_DpT0_.exit.thread.i.i8, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %.preheader.i
  %.021.lcssa71.i = phi i32 [ %i.ao, %._crit_edge.i ], [ 0, %.preheader.i ]
  %.lcssa69.i = phi ptr [ %i.ai, %._crit_edge.i ], [ %i.z, %.preheader.i ] ; 3 uses
  %i.aq = tail call noalias noundef dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #64 ; 11 uses
  %.not.i.i.i7 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i7, label %_ZL16hb_object_createI9hb_blob_tJEEPT_DpT0_.exit.thread.i.i8, label %bb.m, !prof !48

_ZL16hb_object_createI9hb_blob_tJEEPT_DpT0_.exit.thread.i.i8: ; preds = %._crit_edge.thread.i, %._crit_edge.i
  %.lcssa70.i = phi ptr [ %.lcssa69.i, %._crit_edge.thread.i ], [ %i.ai, %._crit_edge.i ]
  tail call void @free(ptr noundef %.lcssa70.i) #63
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.thread.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store atomic i32 1, ptr %i.aq monotonic, align 4
  store atomic i8 1, ptr %i.ar monotonic, align 4
  store atomic ptr null, ptr %i.as monotonic, align 8
  %i.at = load atomic i32, ptr %i.aq monotonic, align 8 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %.lcssa69.i, ptr %i.au, align 8, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i32 %.021.lcssa71.i, ptr %i.av, align 8, !tbaa !57
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  store i32 2, ptr %i.aw, align 4, !tbaa !541
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %.lcssa69.i, ptr %i.ax, align 8, !tbaa !365
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store ptr @hb_free, ptr %i.ay, align 8, !tbaa !364
  br label %bb.n

.thread48.i:                                      ; preds = %bb.j, %bb.i, %bb.h
  %i.az = phi ptr [ %i.ac, %bb.h ], [ %i.ac, %bb.i ], [ %i.ai, %bb.j ]
  %i.ba = tail call i32 @fclose(ptr noundef nonnull %i.aa) ; 0 uses
  br label %.thread43.i

bb.n:                                             ; preds = %bb.m, %_ZL16hb_object_createI9hb_blob_tJEEPT_DpT0_.exit.thread.i.i8
  %.4.i = phi ptr [ null, %_ZL16hb_object_createI9hb_blob_tJEEPT_DpT0_.exit.thread.i.i8 ], [ %i.aq, %bb.m ]
  %i.bb = tail call i32 @fclose(ptr noundef nonnull %i.aa) ; 0 uses
  br label %_ZL18_hb_blob_read_filePKc.exit

.thread43.i:                                      ; preds = %.thread48.i, %bb.g
  %.0.i9 = phi ptr [ %i.az, %.thread48.i ], [ %i.z, %bb.g ]
  tail call void @free(ptr noundef %.0.i9) #63
  br label %_ZL18_hb_blob_read_filePKc.exit

_ZL18_hb_blob_read_filePKc.exit:                  ; preds = %.thread43.i, %bb.n, %_ZL17_hb_blob_try_mmapPKc.exit.thread, %_ZL17_hb_blob_try_mmapPKc.exit
  %.1 = phi ptr [ %i.m, %_ZL17_hb_blob_try_mmapPKc.exit ], [ null, %_ZL17_hb_blob_try_mmapPKc.exit.thread ], [ %.4.i, %bb.n ], [ null, %.thread43.i ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @hb_buffer_serialize_list_formats() local_unnamed_addr #4 {
bb.a:
  ret ptr @_ZL28_hb_buffer_serialize_formats
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, -538976288) i32 @hb_buffer_serialize_format_from_string(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne i32 %1, 0
  %or.cond.i = and i1 %i.b, %i.c
  br i1 %or.cond.i, label %bb.b, label %hb_tag_from_string.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !tbaa !61
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %hb_tag_from_string.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %1, i32 4) ; 4 uses
  %i.e = load i8, ptr %0, align 1, !tbaa !61      ; 2 uses
  %.not23.i = icmp eq i8 %i.e, 0
  br i1 %.not23.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 %i.e, ptr %i.a, align 4, !tbaa !61
  %exitcond.not.i = icmp eq i32 %1, 1
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !61    ; 2 uses
  %.not23.i.1 = icmp eq i8 %i.g, 0
  br i1 %.not23.i.1, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.g, ptr %i.h, align 1, !tbaa !61
  %exitcond.not.i.1 = icmp eq i32 %1, 2
  br i1 %exitcond.not.i.1, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !61    ; 2 uses
  %.not23.i.2 = icmp eq i8 %i.j, 0
  br i1 %.not23.i.2, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.k, align 2, !tbaa !61
  %exitcond.not.i.2 = icmp eq i32 %1, 3
  br i1 %exitcond.not.i.2, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !61    ; 2 uses
  %.not23.i.3 = icmp eq i8 %i.m, 0
  br i1 %.not23.i.3, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.m, ptr %i.n, align 1, !tbaa !61
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.f, %bb.h, %bb.j, %bb.c, %bb.e, %bb.g, %bb.i
  %.0.lcssa.i = phi i32 [ 3, %bb.i ], [ 0, %bb.c ], [ 1, %bb.e ], [ 2, %bb.g ], [ %spec.store.select.i, %bb.j ], [ %spec.store.select.i, %bb.h ], [ %spec.store.select.i, %bb.f ], [ %spec.store.select.i, %bb.d ] ; 3 uses
  %i.o = icmp ult i32 %.0.lcssa.i, 4
  br i1 %i.o, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.critedge.i
  %i.p = zext nneg i32 %.0.lcssa.i to i64
  %scevgep.i = getelementptr nuw i8, ptr %i.a, i64 %i.p
  %narrow.i = sub nuw nsw i32 4, %.0.lcssa.i
  %i.q = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %scevgep.i, i8 32, i64 %i.q, i1 false), !tbaa !61
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %.critedge.i
  %i.r = load i32, ptr %i.a, align 4
  %i.s = and i32 %i.r, -538976289
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.s)
  br label %hb_tag_from_string.exit

hb_tag_from_string.exit:                          ; preds = %bb.a, %bb.b, %._crit_edge.i
  %.019.i = phi i32 [ %i.t, %._crit_edge.i ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  ret i32 %.019.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @hb_tag_from_string(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne i32 %1, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !tbaa !61
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %1, i32 4) ; 4 uses
  %i.e = load i8, ptr %0, align 1, !tbaa !61      ; 2 uses
  %.not23 = icmp eq i8 %i.e, 0
  br i1 %.not23, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 %i.e, ptr %i.a, align 4, !tbaa !61
  %exitcond.not = icmp eq i32 %1, 1
  br i1 %exitcond.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !61    ; 2 uses
  %.not23.1 = icmp eq i8 %i.g, 0
  br i1 %.not23.1, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.g, ptr %i.h, align 1, !tbaa !61
  %exitcond.not.1 = icmp eq i32 %1, 2
  br i1 %exitcond.not.1, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !61    ; 2 uses
  %.not23.2 = icmp eq i8 %i.j, 0
  br i1 %.not23.2, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.k, align 2, !tbaa !61
  %exitcond.not.2 = icmp eq i32 %1, 3
  br i1 %exitcond.not.2, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !61    ; 2 uses
  %.not23.3 = icmp eq i8 %i.m, 0
  br i1 %.not23.3, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.m, ptr %i.n, align 1, !tbaa !61
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.f, %bb.h, %bb.j, %bb.c, %bb.e, %bb.g, %bb.i
  %.0.lcssa = phi i32 [ 3, %bb.i ], [ 0, %bb.c ], [ 1, %bb.e ], [ 2, %bb.g ], [ %spec.store.select, %bb.j ], [ %spec.store.select, %bb.h ], [ %spec.store.select, %bb.f ], [ %spec.store.select, %bb.d ] ; 3 uses
  %i.o = icmp ult i32 %.0.lcssa, 4
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.critedge
  %i.p = zext nneg i32 %.0.lcssa to i64
  %scevgep = getelementptr nuw i8, ptr %i.a, i64 %i.p
  %narrow = sub nuw nsw i32 4, %.0.lcssa
  %i.q = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %scevgep, i8 32, i64 %i.q, i1 false), !tbaa !61
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.critedge
  %i.r = load i32, ptr %i.a, align 4
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.r)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.b, %._crit_edge
  %.019 = phi i32 [ %i.s, %._crit_edge ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define ptr @hb_buffer_serialize_format_to_string(i32 noundef %0) local_unnamed_addr #13 {
bb.a:
  switch i32 %0, label %bb.d [
    i32 1413830740, label %bb.b
    i32 1246973774, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZL28_hb_buffer_serialize_formats, align 16, !tbaa !574
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL28_hb_buffer_serialize_formats, i64 8), align 8, !tbaa !574
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi ptr [ %i.b, %bb.c ], [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define i32 @hb_buffer_serialize_glyphs(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, ptr nofree noundef captures(address_is_null) %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 10 uses
  %i.b = alloca [128 x i8], align 16              ; 7 uses
  %9 = alloca %struct.hb_glyph_extents_t, align 4 ; 7 uses
  %i.c = alloca [1024 x i8], align 16             ; 7 uses
  %10 = alloca %struct.hb_glyph_extents_t, align 4 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.e = tail call i32 @llvm.umax.i32(i32 %2, i32 %1)
  %i.f = load i32, ptr %i.d, align 4, !tbaa !139  ; 2 uses
  %.not.i3.i = icmp ugt i32 %i.e, %i.f
  %.val82 = tail call i32 @llvm.umax.i32(i32 %2, i32 %1)
  %i.g = select i1 %.not.i3.i, i32 %i.f, i32 %.val82 ; 12 uses
  %i.h = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.g) ; 8 uses
  %.not = icmp eq ptr %5, null                    ; 7 uses
  br i1 %.not, label %.cont, label %.else

.else:                                            ; preds = %bb.a
  store i32 0, ptr %5, align 4, !tbaa !139
  br label %.cont

.cont:                                            ; preds = %bb.a, %.else
  %.not21 = icmp eq i32 %4, 0
  br i1 %.not21, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.cont
  store i8 0, ptr %3, align 1, !tbaa !61
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.cont
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 3 uses
  %i.j = load i8, ptr %i.i, align 2, !tbaa !575, !range !220, !noundef !74
  %i.k = trunc nuw i8 %i.j to i1                  ; 3 uses
  %i.l = or i32 %8, 2
  %spec.select = select i1 %i.k, i32 %8, i32 %i.l ; 14 uses
  %.not116 = icmp ugt i32 %i.g, %1
  br i1 %.not116, label %bb.d, label %bb.bv, !prof !49

bb.d:                                             ; preds = %bb.c
  %.not22 = icmp eq ptr %6, null
  %spec.select81 = select i1 %.not22, ptr @_hb_Null_hb_font_t, ptr %6 ; 8 uses
  switch i32 %7, label %bb.bv [
    i32 1413830740, label %bb.e
    i32 1246973774, label %bb.am
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !499  ; 2 uses
  %i.o = and i32 %spec.select, 2
  %.not.i23 = icmp ne i32 %i.o, 0                 ; 2 uses
  br i1 %.not.i23, label %hb_buffer_get_glyph_positions.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %hb_buffer_get_glyph_positions.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.q = load i32, ptr %i.p, align 8, !tbaa !576
  %.not9.i.i = icmp eq i32 %i.q, 0
  br i1 %.not9.i.i, label %bb.h, label %hb_buffer_get_glyph_positions.exit.thread.i, !prof !49

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 0, ptr %i.r, align 1, !tbaa !577
  store i8 1, ptr %i.i, align 2, !tbaa !575
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.s, align 4, !tbaa !578
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.n, ptr %i.t, align 8, !tbaa !579
  %i.u = load i32, ptr %i.d, align 8, !tbaa !522
  %i.v = mul i32 %i.u, 20                         ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i, label %hb_buffer_get_glyph_positions.exit.i, label %bb.i, !prof !48

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !527
  %i.y = zext i32 %i.v to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.x, i8 0, i64 %i.y, i1 false)
  br label %hb_buffer_get_glyph_positions.exit.i

hb_buffer_get_glyph_positions.exit.thread.i:      ; preds = %bb.g, %bb.e
  br i1 %.not, label %.loopexit221.i, label %hb_buffer_get_glyph_positions.exit.thread.i.else

hb_buffer_get_glyph_positions.exit.thread.i.else: ; preds = %hb_buffer_get_glyph_positions.exit.thread.i
  store i32 0, ptr %5, align 4, !tbaa !139
  br label %.loopexit221.i

hb_buffer_get_glyph_positions.exit.i:             ; preds = %bb.i, %bb.h, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !527 ; 9 uses
  br i1 %.not, label %hb_buffer_get_glyph_positions.exit.i.cont, label %hb_buffer_get_glyph_positions.exit.i.else

hb_buffer_get_glyph_positions.exit.i.else:        ; preds = %hb_buffer_get_glyph_positions.exit.i
  store i32 0, ptr %5, align 4, !tbaa !139
  br label %hb_buffer_get_glyph_positions.exit.i.cont

hb_buffer_get_glyph_positions.exit.i.cont:        ; preds = %hb_buffer_get_glyph_positions.exit.i, %hb_buffer_get_glyph_positions.exit.i.else
  %.not143.i = icmp eq ptr %i.aa, null
  br i1 %.not143.i, label %.loopexit221.i, label %bb.j

bb.j:                                             ; preds = %hb_buffer_get_glyph_positions.exit.i.cont
  %i.ab = and i32 %spec.select, 32
  %.not144.i = icmp ne i32 %i.ab, 0
  %i.ac = icmp ne i32 %1, 0
  %or.cond238.i = and i1 %i.ac, %.not144.i
  br i1 %or.cond238.i, label %.lr.ph.preheader.i, label %.loopexit221.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %wide.trip.count.i = zext i32 %i.h to i64       ; 2 uses
  %xtraiter135 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.ad = icmp ult i32 %i.h, 4
  br i1 %i.ad, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter141 = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.0120226.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.be, %.lr.ph.i ]
  %.0125225.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.bb, %.lr.ph.i ]
  %niter142 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter142.next.3, %.lr.ph.i ]
  %i.ae = getelementptr inbounds nuw [20 x i8], ptr %i.aa, i64 %indvars.iv.i ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !534
  %i.ag = add nsw i32 %i.af, %.0125225.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !538
  %i.aj = add nsw i32 %i.ai, %.0120226.i
  %i.ak = getelementptr inbounds nuw [20 x i8], ptr %i.aa, i64 %indvars.iv.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !534
  %i.an = add nsw i32 %i.am, %i.ag
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !538
  %i.aq = add nsw i32 %i.ap, %i.aj
  %i.ar = getelementptr inbounds nuw [20 x i8], ptr %i.aa, i64 %indvars.iv.i ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load i32, ptr %i.as, align 4, !tbaa !534
  %i.au = add nsw i32 %i.at, %i.an
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 44
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !538
  %i.ax = add nsw i32 %i.aw, %i.aq
  %i.ay = getelementptr inbounds nuw [20 x i8], ptr %i.aa, i64 %indvars.iv.i ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 60
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !534
  %i.bb = add nsw i32 %i.ba, %i.au                ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !538
  %i.be = add nsw i32 %i.bd, %i.ax                ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter142.next.3 = add i64 %niter142, 4         ; 2 uses
  %niter142.ncmp.3 = icmp eq i64 %niter142.next.3, %unroll_iter141
  br i1 %niter142.ncmp.3, label %.loopexit221.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !580

.loopexit221.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i
  %lcmp.mod137.not = icmp eq i64 %xtraiter135, 0
  br i1 %lcmp.mod137.not, label %.loopexit221.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit221.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.loopexit221.i.loopexit.unr-lcssa ]
  %.0120226.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.be, %.loopexit221.i.loopexit.unr-lcssa ]
  %.0125225.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.bb, %.loopexit221.i.loopexit.unr-lcssa ]
  %lcmp.mod140 = icmp ne i64 %xtraiter135, 0
end_hunk_0
begin_hunk_1_@_ZL19lang_find_or_insertPKc:bb.a
  %i.ai = extractvalue { ptr, i1 } %i.ah, 1
  br i1 %i.ai, label %bb.f, label %bb.h, !prof !49

bb.f:                                             ; preds = %.loopexit
  br i1 %.not53, label %bb.g, label %.thread34

bb.g:                                             ; preds = %bb.f
  %i.aj = tail call i32 @atexit(ptr noundef nonnull @_ZL10free_langsv) #63 ; 0 uses
  br label %.thread34

bb.h:                                             ; preds = %.loopexit
  %i.ak = load ptr, ptr %i.aa, align 8, !tbaa !722
  tail call void @free(ptr noundef %i.ak) #63
  tail call void @free(ptr noundef nonnull %i.w) #63
  br label %bb.b

.thread34:                                        ; preds = %.thread, %_ZNK18hb_language_item_teqEPKc.exit, %_ZNK18hb_language_item_teqEPKc.exit.thread, %_ZN18hb_language_item_taSEPKc.exit, %bb.g, %bb.f
  %.3.ph = phi ptr [ %.02154, %_ZNK18hb_language_item_teqEPKc.exit ], [ %i.w, %bb.f ], [ %i.w, %bb.g ], [ null, %_ZN18hb_language_item_taSEPKc.exit ], [ %.02154, %_ZNK18hb_language_item_teqEPKc.exit.thread ], [ null, %.thread ]
  ret ptr %.3.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @hb_language_to_string(ptr nofree noundef readnone returned captures(ret: address, provenance) %0) local_unnamed_addr #4 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @hb_language_matches(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #68 ; 2 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #68
  %i.g = trunc i64 %i.f to i32
  %i.h = icmp ugt i32 %i.e, %i.g
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = and i64 %i.d, 4294967295                 ; 2 uses
  %i.j = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.i) #68
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !61    ; 2 uses
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp eq i8 %i.m, 45
  %i.p = zext i1 %i.o to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.d, %bb.b, %bb.a
  %.1 = phi i32 [ 1, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 1, %bb.e ], [ %i.p, %bb.f ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2139062144) i32 @hb_script_from_iso15924_tag(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.l, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %0, -538976289
  %i.c = or disjoint i32 %i.b, 2105376            ; 3 uses
  switch i32 %i.c, label %bb.k [
    i32 1365336425, label %bb.l
    i32 1365336419, label %bb.c
    i32 1098015086, label %bb.d
    i32 1132032627, label %bb.e
    i32 1197829995, label %bb.f
    i32 1214344819, label %bb.g
    i32 1214344820, label %bb.g
    i32 1247898991, label %bb.h
    i32 1281455206, label %bb.i
    i32 1281455207, label %bb.i
    i32 1400468069, label %bb.j
    i32 1400468074, label %bb.j
    i32 1400468078, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  br label %bb.l

bb.e:                                             ; preds = %bb.b
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  br label %bb.l

bb.g:                                             ; preds = %bb.b, %bb.b
  br label %bb.l

bb.h:                                             ; preds = %bb.b
  br label %bb.l

bb.i:                                             ; preds = %bb.b, %bb.b
  br label %bb.l

bb.j:                                             ; preds = %bb.b, %bb.b, %bb.b
  br label %bb.l

bb.k:                                             ; preds = %bb.b
  %i.d = and i32 %i.c, -1059004192
  %i.e = icmp eq i32 %i.d, 1080057952
  %. = select i1 %i.e, i32 %i.c, i32 1517976186
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b, %bb.a, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ 1400468067, %bb.j ], [ %., %bb.k ], [ 1281455214, %bb.i ], [ 0, %bb.a ], [ 1131376756, %bb.c ], [ 1098015074, %bb.d ], [ 1132032620, %bb.e ], [ 1197830002, %bb.f ], [ 1214344809, %bb.g ], [ 1516858984, %bb.b ], [ 1214344807, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2139062144) i32 @hb_script_from_string(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne i32 %1, 0
  %or.cond.i = and i1 %i.b, %i.c
  br i1 %or.cond.i, label %bb.b, label %hb_tag_from_string.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !tbaa !61
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %hb_tag_from_string.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %1, i32 4) ; 4 uses
  %i.e = load i8, ptr %0, align 1, !tbaa !61      ; 2 uses
  %.not23.i = icmp eq i8 %i.e, 0
  br i1 %.not23.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 %i.e, ptr %i.a, align 4, !tbaa !61
  %exitcond.not.i = icmp eq i32 %1, 1
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !61    ; 2 uses
  %.not23.i.1 = icmp eq i8 %i.g, 0
  br i1 %.not23.i.1, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.g, ptr %i.h, align 1, !tbaa !61
  %exitcond.not.i.1 = icmp eq i32 %1, 2
  br i1 %exitcond.not.i.1, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !61    ; 2 uses
  %.not23.i.2 = icmp eq i8 %i.j, 0
  br i1 %.not23.i.2, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.k, align 2, !tbaa !61
  %exitcond.not.i.2 = icmp eq i32 %1, 3
  br i1 %exitcond.not.i.2, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !61    ; 2 uses
  %.not23.i.3 = icmp eq i8 %i.m, 0
  br i1 %.not23.i.3, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.m, ptr %i.n, align 1, !tbaa !61
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.f, %bb.h, %bb.j, %bb.c, %bb.e, %bb.g, %bb.i
  %.0.lcssa.i = phi i32 [ 3, %bb.i ], [ 0, %bb.c ], [ 1, %bb.e ], [ 2, %bb.g ], [ %spec.store.select.i, %bb.j ], [ %spec.store.select.i, %bb.h ], [ %spec.store.select.i, %bb.f ], [ %spec.store.select.i, %bb.d ] ; 3 uses
  %i.o = icmp ult i32 %.0.lcssa.i, 4
  br i1 %i.o, label %.lr.ph.preheader.i, label %hb_tag_from_string.exit

.lr.ph.preheader.i:                               ; preds = %.critedge.i
  %i.p = zext nneg i32 %.0.lcssa.i to i64
  %scevgep.i = getelementptr nuw i8, ptr %i.a, i64 %i.p
  %narrow.i = sub nuw nsw i32 4, %.0.lcssa.i
  %i.q = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %scevgep.i, i8 32, i64 %i.q, i1 false), !tbaa !61
  br label %hb_tag_from_string.exit

hb_tag_from_string.exit.thread:                   ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %hb_script_from_iso15924_tag.exit

hb_tag_from_string.exit:                          ; preds = %.critedge.i, %.lr.ph.preheader.i
  %i.r = load i32, ptr %i.a, align 4              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %hb_script_from_iso15924_tag.exit, label %bb.k, !prof !124

bb.k:                                             ; preds = %hb_tag_from_string.exit
  %i.t = and i32 %i.r, -538976289
  %i.u = or disjoint i32 %i.t, 538976256
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.u)  ; 3 uses
  switch i32 %i.v, label %bb.t [
    i32 1365336425, label %hb_script_from_iso15924_tag.exit
    i32 1365336419, label %bb.l
    i32 1098015086, label %bb.m
    i32 1132032627, label %bb.n
    i32 1197829995, label %bb.o
    i32 1214344819, label %bb.p
    i32 1214344820, label %bb.p
    i32 1247898991, label %bb.q
    i32 1281455206, label %bb.r
    i32 1281455207, label %bb.r
    i32 1400468069, label %bb.s
    i32 1400468074, label %bb.s
    i32 1400468078, label %bb.s
  ]

bb.l:                                             ; preds = %bb.k
  br label %hb_script_from_iso15924_tag.exit

bb.m:                                             ; preds = %bb.k
  br label %hb_script_from_iso15924_tag.exit

bb.n:                                             ; preds = %bb.k
  br label %hb_script_from_iso15924_tag.exit

bb.o:                                             ; preds = %bb.k
  br label %hb_script_from_iso15924_tag.exit

bb.p:                                             ; preds = %bb.k, %bb.k
  br label %hb_script_from_iso15924_tag.exit

bb.q:                                             ; preds = %bb.k
  br label %hb_script_from_iso15924_tag.exit

bb.r:                                             ; preds = %bb.k, %bb.k
  br label %hb_script_from_iso15924_tag.exit

bb.s:                                             ; preds = %bb.k, %bb.k, %bb.k
  br label %hb_script_from_iso15924_tag.exit

bb.t:                                             ; preds = %bb.k
  %i.w = and i32 %i.v, -1059004192
  %i.x = icmp eq i32 %i.w, 1080057952
  %..i = select i1 %i.x, i32 %i.v, i32 1517976186
  br label %hb_script_from_iso15924_tag.exit

hb_script_from_iso15924_tag.exit:                 ; preds = %hb_tag_from_string.exit.thread, %hb_tag_from_string.exit, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i = phi i32 [ 1400468067, %bb.s ], [ %..i, %bb.t ], [ 1281455214, %bb.r ], [ 0, %hb_tag_from_string.exit ], [ 1131376756, %bb.l ], [ 1098015074, %bb.m ], [ 1132032620, %bb.n ], [ 1197830002, %bb.o ], [ 1214344809, %bb.p ], [ 1516858984, %bb.k ], [ 1214344807, %bb.q ], [ 0, %hb_tag_from_string.exit.thread ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @hb_script_to_iso15924_tag(i32 noundef returned %0) local_unnamed_addr #4 {
bb.a:
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @hb_version(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #3 {
bb.a:
  store i32 14, ptr %0, align 4, !tbaa !139
  store i32 3, ptr %1, align 4, !tbaa !139
  store i32 1, ptr %2, align 4, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @hb_version_string() local_unnamed_addr #4 {
bb.a:
  ret ptr @.str.20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @hb_version_atleast(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = mul i32 %0, 10000
  %i.b = mul i32 %1, 100
  %i.c = add i32 %i.b, %i.a
  %i.d = add i32 %i.c, %2
  %i.e = icmp ult i32 %i.d, 140302
  %i.f = zext i1 %i.e to i32
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_feature_from_string(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = alloca [32 x i8], align 16               ; 9 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca [32 x i8], align 16               ; 9 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca [32 x i8], align 16               ; 9 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 22 uses
  %3 = alloca %struct.hb_feature_t, align 4       ; 7 uses
  store ptr %0, ptr %i.h, align 8, !tbaa !574
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  %i.i = icmp slt i32 %1, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #68
  %i.k = trunc i64 %i.j to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.06 = phi i32 [ %i.k, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %i.l = sext i32 %.06 to i64                     ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 %i.l       ; 33 uses
  %i.n = icmp sgt i32 %.06, 0
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %_ZL11parse_spacePPKcS0_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.o = phi ptr [ %i.q, %bb.d ], [ %0, %bb.c ]   ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !61
  switch i8 %i.p, label %_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit [
    i8 32, label %bb.d
    i8 13, label %bb.d
    i8 12, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
    i8 11, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq ptr %i.q, %i.m
  br i1 %exitcond.not.i.i.i.i, label %_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !784

_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit:      ; preds = %.lr.ph.i.i.i.i, %bb.d
  %i.r = phi ptr [ %i.m, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i ] ; 2 uses
  store ptr %i.r, ptr %i.h, align 8
  br label %_ZL11parse_spacePPKcS0_.exit.i.i.i

_ZL11parse_spacePPKcS0_.exit.i.i.i:               ; preds = %_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit, %bb.c
  %.promoted.i.i6.i.i = phi ptr [ %0, %bb.c ], [ %i.r, %_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit ] ; 6 uses
  %i.s = icmp eq ptr %.promoted.i.i6.i.i, %i.m
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZL11parse_spacePPKcS0_.exit.i.i.i
  %i.t = load i8, ptr %.promoted.i.i6.i.i, align 1, !tbaa !61
  %.not.i.i.i = icmp eq i8 %i.t, 45
  br i1 %.not.i.i.i, label %_ZL10parse_charPPKcS0_c.exit12.sink.split.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZL11parse_spacePPKcS0_.exit.i.i.i
  %i.u = icmp ult ptr %.promoted.i.i6.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.i10.i.i, label %_ZL11parse_spacePPKcS0_.exit.i7.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %bb.f, %bb.g
  %i.v = phi ptr [ %i.x, %bb.g ], [ %.promoted.i.i6.i.i, %bb.f ] ; 3 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !61
  switch i8 %i.w, label %_ZL11parse_spacePPKcS0_.exit.i7.i.i [
    i8 32, label %bb.g
    i8 13, label %bb.g
    i8 12, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 11, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 3 uses
  store ptr %i.x, ptr %i.h, align 8, !tbaa !574
  %exitcond.not.i.i11.i.i = icmp eq ptr %i.x, %i.m
  br i1 %exitcond.not.i.i11.i.i, label %_ZL26parse_feature_value_prefixPPKcS0_P12hb_feature_t.exit.i, label %.lr.ph.i.i10.i.i, !llvm.loop !784

_ZL11parse_spacePPKcS0_.exit.i7.i.i:              ; preds = %.lr.ph.i.i10.i.i, %bb.f
  %i.y = phi ptr [ %.promoted.i.i6.i.i, %bb.f ], [ %i.v, %.lr.ph.i.i10.i.i ] ; 3 uses
  %i.z = icmp eq ptr %i.y, %i.m
  br i1 %i.z, label %_ZL26parse_feature_value_prefixPPKcS0_P12hb_feature_t.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZL11parse_spacePPKcS0_.exit.i7.i.i
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !61
  %.not.i8.i.i = icmp eq i8 %i.aa, 43
  br i1 %.not.i8.i.i, label %_ZL10parse_charPPKcS0_c.exit12.sink.split.i.i, label %_ZL26parse_feature_value_prefixPPKcS0_P12hb_feature_t.exit.i

_ZL10parse_charPPKcS0_c.exit12.sink.split.i.i:    ; preds = %bb.h, %bb.e
  %.sink23.i.i = phi ptr [ %.promoted.i.i6.i.i, %bb.e ], [ %i.y, %bb.h ]
  %.sink.ph.i.i = phi i32 [ 0, %bb.e ], [ 1, %bb.h ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sink23.i.i, i64 1
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !574
  br label %_ZL26parse_feature_value_prefixPPKcS0_P12hb_feature_t.exit.i

end_hunk_1
begin_hunk_2_@hb_ot_tags_from_script_and_language:bb.a
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !61   ; 6 uses
  %i.ab = icmp eq i8 %i.aa, 45
  br i1 %i.ab, label %bb.m, label %.preheader58.preheader.i

.preheader58.preheader.i:                         ; preds = %bb.l
  %i.ac = and i8 %i.aa, -33
  %i.ad = add i8 %i.ac, -91
  %or.cond11.i.i = icmp ult i8 %i.ad, -26
  %i.ae = add i8 %i.aa, -58
  %i.af = icmp ult i8 %i.ae, -10
  %.not72.i = and i1 %i.af, %or.cond11.i.i
  br i1 %.not72.i, label %.critedge.thread.i, label %.preheader58.1.i

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !61  ; 3 uses
  %i.ai = add i8 %i.ah, -48
  %or.cond.i.i = icmp ult i8 %i.ai, 10            ; 2 uses
  %i.aj = and i8 %i.ah, -33
  %i.ak = add i8 %i.aj, -65
  %i.al = icmp ult i8 %i.ak, 6
  %i.am = or i1 %or.cond.i.i, %i.al
  br i1 %i.am, label %bb.n, label %.critedge.thread.i

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 7
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !61  ; 4 uses
  %i.ap = add i8 %i.ao, -48                       ; 2 uses
  %or.cond.i.1.i = icmp ult i8 %i.ap, 10          ; 2 uses
  %i.aq = and i8 %i.ao, -33
  %i.ar = add i8 %i.aq, -65
  %i.as = icmp ult i8 %i.ar, 6
  %i.at = or i1 %or.cond.i.1.i, %i.as
  br i1 %i.at, label %bb.o, label %.critedge.thread.i

bb.o:                                             ; preds = %bb.n
  %i.au = shl i8 %i.ah, 4                         ; 2 uses
  %i.av = add i8 %i.au, -112
  %i.aw = select i1 %or.cond.i.i, i8 %i.au, i8 %i.av
  %i.ax = add i8 %i.ao, -65
  %or.cond.i.i.1.i = icmp ult i8 %i.ax, 26
  %i.ay = select i1 %or.cond.i.i.1.i, i8 -55, i8 -87
  %i.az = add i8 %i.ay, %i.ao
  %i.ba = select i1 %or.cond.i.1.i, i8 %i.ap, i8 %i.az
  %i.bb = add i8 %i.ba, %i.aw
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !61  ; 3 uses
  %i.be = add i8 %i.bd, -48
  %or.cond.i.2.i = icmp ult i8 %i.be, 10          ; 2 uses
  %i.bf = and i8 %i.bd, -33
  %i.bg = add i8 %i.bf, -65
  %i.bh = icmp ult i8 %i.bg, 6
  %i.bi = or i1 %or.cond.i.2.i, %i.bh
  br i1 %i.bi, label %bb.p, label %.critedge.thread.i

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 9
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !61  ; 4 uses
  %i.bl = add i8 %i.bk, -48                       ; 2 uses
  %or.cond.i.3.i = icmp ult i8 %i.bl, 10          ; 2 uses
  %i.bm = and i8 %i.bk, -33
  %i.bn = add i8 %i.bm, -65
  %i.bo = icmp ult i8 %i.bn, 6
  %i.bp = or i1 %or.cond.i.3.i, %i.bo
  br i1 %i.bp, label %bb.q, label %.critedge.thread.i

bb.q:                                             ; preds = %bb.p
  %i.bq = shl i8 %i.bd, 4                         ; 2 uses
  %i.br = add i8 %i.bq, -112
  %i.bs = select i1 %or.cond.i.2.i, i8 %i.bq, i8 %i.br
  %i.bt = add i8 %i.bk, -65
  %or.cond.i.i.3.i = icmp ult i8 %i.bt, 26
  %i.bu = select i1 %or.cond.i.i.3.i, i8 -55, i8 -87
  %i.bv = add i8 %i.bu, %i.bk
  %i.bw = select i1 %or.cond.i.3.i, i8 %i.bl, i8 %i.bv
  %i.bx = add i8 %i.bw, %i.bs
  %i.by = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !61  ; 3 uses
  %i.ca = add i8 %i.bz, -48
  %or.cond.i.4.i = icmp ult i8 %i.ca, 10          ; 2 uses
  %i.cb = and i8 %i.bz, -33
  %i.cc = add i8 %i.cb, -65
  %i.cd = icmp ult i8 %i.cc, 6
  %i.ce = or i1 %or.cond.i.4.i, %i.cd
  br i1 %i.ce, label %bb.r, label %.critedge.thread.i

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %i.y, i64 11
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !61  ; 4 uses
  %i.ch = add i8 %i.cg, -48                       ; 2 uses
  %or.cond.i.5.i = icmp ult i8 %i.ch, 10          ; 2 uses
  %i.ci = and i8 %i.cg, -33
  %i.cj = add i8 %i.ci, -65
  %i.ck = icmp ult i8 %i.cj, 6
  %i.cl = or i1 %or.cond.i.5.i, %i.ck
  br i1 %i.cl, label %bb.s, label %.critedge.thread.i

bb.s:                                             ; preds = %bb.r
  %i.cm = shl i8 %i.bz, 4                         ; 2 uses
  %i.cn = add i8 %i.cm, -112
  %i.co = select i1 %or.cond.i.4.i, i8 %i.cm, i8 %i.cn
  %i.cp = add i8 %i.cg, -65
  %or.cond.i.i.5.i = icmp ult i8 %i.cp, 26
  %i.cq = select i1 %or.cond.i.i.5.i, i8 -55, i8 -87
  %i.cr = add i8 %i.cq, %i.cg
  %i.cs = select i1 %or.cond.i.5.i, i8 %i.ch, i8 %i.cr
  %i.ct = add i8 %i.cs, %i.co
  %i.cu = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !61  ; 3 uses
  %i.cw = add i8 %i.cv, -48
  %or.cond.i.6.i = icmp ult i8 %i.cw, 10          ; 2 uses
  %i.cx = and i8 %i.cv, -33
  %i.cy = add i8 %i.cx, -65
  %i.cz = icmp ult i8 %i.cy, 6
  %i.da = or i1 %or.cond.i.6.i, %i.cz
  br i1 %i.da, label %bb.t, label %.critedge.thread.i

bb.t:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %i.y, i64 13
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !61  ; 4 uses
  %i.dd = add i8 %i.dc, -48                       ; 2 uses
  %or.cond.i.7.i = icmp ult i8 %i.dd, 10          ; 2 uses
  %i.de = and i8 %i.dc, -33
  %i.df = add i8 %i.de, -65
  %i.dg = icmp ult i8 %i.df, 6
  %i.dh = or i1 %or.cond.i.7.i, %i.dg
  br i1 %i.dh, label %.critedge.i, label %.critedge.thread.i

.critedge.i:                                      ; preds = %bb.t
  %i.di = shl i8 %i.cv, 4                         ; 2 uses
  %i.dj = add i8 %i.di, -112
  %i.dk = select i1 %or.cond.i.6.i, i8 %i.di, i8 %i.dj
  %i.dl = add i8 %i.dc, -65
  %or.cond.i.i.7.i = icmp ult i8 %i.dl, 26
  %i.dm = select i1 %or.cond.i.i.7.i, i8 -55, i8 -87
  %i.dn = add i8 %i.dm, %i.dc
  %i.do = select i1 %or.cond.i.7.i, i8 %i.dd, i8 %i.dn
  %i.dp = add i8 %i.do, %i.dk
  br label %.loopexit.i

.preheader58.1.i:                                 ; preds = %.preheader58.preheader.i
  %i.dq = add i8 %i.aa, -65
  %or.cond.i112 = icmp ult i8 %i.dq, 26
  %i.dr = add nuw nsw i8 %i.aa, 32
  %i.ds = select i1 %or.cond.i112, i8 %i.dr, i8 %i.aa ; 2 uses
  store i8 %i.ds, ptr %i.b, align 1, !tbaa !61
  %i.dt = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !61  ; 5 uses
  %i.dv = and i8 %i.du, -33
  %i.dw = add i8 %i.dv, -65
  %or.cond11.i.1.i = icmp ult i8 %i.dw, 26
  %i.dx = add i8 %i.du, -48
  %i.dy = icmp ult i8 %i.dx, 10
  %i.dz = or i1 %i.dy, %or.cond11.i.1.i
  br i1 %i.dz, label %.preheader58.2.i, label %.lr.ph.preheader.i

.preheader58.2.i:                                 ; preds = %.preheader58.1.i
  %i.ea = add i8 %i.du, -65
  %or.cond.i111 = icmp ult i8 %i.ea, 26
  %i.eb = add nuw nsw i8 %i.du, 32
  %i.ec = select i1 %or.cond.i111, i8 %i.eb, i8 %i.du ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !61
  %i.ee = getelementptr inbounds nuw i8, ptr %i.y, i64 7
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !61  ; 5 uses
  %i.eg = and i8 %i.ef, -33
  %i.eh = add i8 %i.eg, -65
  %or.cond11.i.2.i = icmp ult i8 %i.eh, 26
  %i.ei = add i8 %i.ef, -48
  %i.ej = icmp ult i8 %i.ei, 10
  %i.ek = or i1 %i.ej, %or.cond11.i.2.i
  br i1 %i.ek, label %.preheader58.3.i, label %.lr.ph.preheader.i

.preheader58.3.i:                                 ; preds = %.preheader58.2.i
  %i.el = add i8 %i.ef, -65
  %or.cond.i110 = icmp ult i8 %i.el, 26
  %i.em = add nuw nsw i8 %i.ef, 32
  %i.en = select i1 %or.cond.i110, i8 %i.em, i8 %i.ef ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !61
  %i.ep = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !61  ; 5 uses
  %i.er = and i8 %i.eq, -33
  %i.es = add i8 %i.er, -65
  %or.cond11.i.3.i = icmp ult i8 %i.es, 26
  %i.et = add i8 %i.eq, -48
  %i.eu = icmp ult i8 %i.et, 10
  %i.ev = or i1 %i.eu, %or.cond11.i.3.i
  br i1 %i.ev, label %.preheader.i, label %.lr.ph.preheader.i

.preheader.i:                                     ; preds = %.preheader58.3.i
  %i.ew = add i8 %i.eq, -65
  %or.cond.i109 = icmp ult i8 %i.ew, 26
  %i.ex = add nuw nsw i8 %i.eq, 32
  %i.ey = select i1 %or.cond.i109, i8 %i.ex, i8 %i.eq
  br label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %.preheader58.3.i, %.preheader58.2.i, %.preheader58.1.i
  %.1.lcssa.ph.ph.i = phi i32 [ 1, %.preheader58.1.i ], [ 3, %.preheader58.3.i ], [ 2, %.preheader58.2.i ] ; 2 uses
  %i.ez = zext nneg i32 %.1.lcssa.ph.ph.i to i64
  %scevgep.i = getelementptr nuw i8, ptr %i.b, i64 %i.ez
  %narrow.i = sub nuw nsw i32 4, %.1.lcssa.ph.ph.i
  %i.fa = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i, i8 32, i64 %i.fa, i1 false), !tbaa !61
  %.pre.i = load i8, ptr %i.b, align 1, !tbaa !61
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.pre130 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !61
  %.phi.trans.insert131 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.pre132 = load i8, ptr %.phi.trans.insert131, align 1, !tbaa !61
  %.phi.trans.insert133 = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %.pre134 = load i8, ptr %.phi.trans.insert133, align 1, !tbaa !61
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.preheader.i, %.preheader.i, %.critedge.i
  %i.fb = phi i8 [ %.pre134, %.lr.ph.preheader.i ], [ %i.ey, %.preheader.i ], [ %i.dp, %.critedge.i ]
  %i.fc = phi i8 [ %.pre132, %.lr.ph.preheader.i ], [ %i.en, %.preheader.i ], [ %i.ct, %.critedge.i ]
  %i.fd = phi i8 [ %.pre130, %.lr.ph.preheader.i ], [ %i.ec, %.preheader.i ], [ %i.bx, %.critedge.i ]
  %i.fe = phi i8 [ %.pre.i, %.lr.ph.preheader.i ], [ %i.ds, %.preheader.i ], [ %i.bb, %.critedge.i ]
  %i.ff = zext i8 %i.fe to i32
  %i.fg = shl nuw i32 %i.ff, 24
  %i.fh = zext i8 %i.fd to i32
  %i.fi = shl nuw nsw i32 %i.fh, 16
  %i.fj = or disjoint i32 %i.fi, %i.fg
  %i.fk = zext i8 %i.fc to i32
  %i.fl = shl nuw nsw i32 %i.fk, 8
  %i.fm = or disjoint i32 %i.fj, %i.fl
  %i.fn = zext i8 %i.fb to i32
  %i.fo = or disjoint i32 %i.fm, %i.fn            ; 3 uses
  %i.fp = and i32 %i.fo, -538976289
  %i.fq = icmp eq i32 %i.fp, 1145457748
  %i.fr = xor i32 %i.fo, 538976288
  %spec.select.i = select i1 %i.fq, i32 %i.fr, i32 %i.fo
  store i32 %spec.select.i, ptr %3, align 4, !tbaa !139
  store i32 1, ptr %2, align 4, !tbaa !139
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.loopexit.i, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %.preheader58.preheader.i
  %i.fs = phi i1 [ false, %.loopexit.i ], [ true, %.preheader58.preheader.i ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  br label %_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit

_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit: ; preds = %bb.i, %bb.j, %bb.k, %.critedge.thread.i
  %.3.i = phi i1 [ true, %bb.i ], [ true, %bb.j ], [ %i.fs, %.critedge.thread.i ], [ true, %bb.k ] ; 3 uses
  %i.ft = icmp ne ptr %4, null                    ; 2 uses
  %or.cond.i70 = and i1 %i.ft, %i.t
  %i.fu = icmp ne ptr %5, null                    ; 2 uses
  %or.cond3.i71 = and i1 %i.fu, %or.cond.i70
  br i1 %or.cond3.i71, label %bb.u, label %_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit107

bb.u:                                             ; preds = %_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit
  %i.fv = load i32, ptr %4, align 4, !tbaa !139
  %.not.i73 = icmp eq i32 %i.fv, 0
  br i1 %.not.i73, label %_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit107, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fw = tail call noundef ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %.1, ptr noundef nonnull dereferenceable(1) @.str.45) #68 ; 13 uses
  %.not53.i74 = icmp eq ptr %i.fw, null
  br i1 %.not53.i74, label %_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit107, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 5
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !61  ; 6 uses
  %i.fz = icmp eq i8 %i.fy, 45
  br i1 %i.fz, label %bb.x, label %.preheader58.preheader.i75

.preheader58.preheader.i75:                       ; preds = %bb.w
  %i.ga = and i8 %i.fy, -33
  %i.gb = add i8 %i.ga, -91
  %or.cond11.i.i76 = icmp ult i8 %i.gb, -26
  %i.gc = add i8 %i.fy, -58
  %i.gd = icmp ult i8 %i.gc, -10
  %.not72.i77 = and i1 %i.gd, %or.cond11.i.i76
  br i1 %.not72.i77, label %.critedge.thread.i87, label %.preheader58.1.i78

bb.x:                                             ; preds = %bb.w
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fw, i64 6
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !61  ; 3 uses
  %i.gg = add i8 %i.gf, -48
  %or.cond.i.i94 = icmp ult i8 %i.gg, 10          ; 2 uses
  %i.gh = and i8 %i.gf, -33
  %i.gi = add i8 %i.gh, -65
  %i.gj = icmp ult i8 %i.gi, 6
  %i.gk = or i1 %or.cond.i.i94, %i.gj
  br i1 %i.gk, label %bb.y, label %.critedge.thread.i87

bb.y:                                             ; preds = %bb.x
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fw, i64 7
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !61  ; 4 uses
  %i.gn = add i8 %i.gm, -48                       ; 2 uses
  %or.cond.i.1.i95 = icmp ult i8 %i.gn, 10        ; 2 uses
  %i.go = and i8 %i.gm, -33
  %i.gp = add i8 %i.go, -65
  %i.gq = icmp ult i8 %i.gp, 6
  %i.gr = or i1 %or.cond.i.1.i95, %i.gq
  br i1 %i.gr, label %bb.z, label %.critedge.thread.i87

bb.z:                                             ; preds = %bb.y
  %i.gs = shl i8 %i.gf, 4                         ; 2 uses
  %i.gt = add i8 %i.gs, -112
  %i.gu = select i1 %or.cond.i.i94, i8 %i.gs, i8 %i.gt
  %i.gv = add i8 %i.gm, -65
  %or.cond.i.i.1.i96 = icmp ult i8 %i.gv, 26
  %i.gw = select i1 %or.cond.i.i.1.i96, i8 -55, i8 -87
  %i.gx = add i8 %i.gw, %i.gm
  %i.gy = select i1 %or.cond.i.1.i95, i8 %i.gn, i8 %i.gx
  %i.gz = add i8 %i.gy, %i.gu
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !61  ; 3 uses
  %i.hc = add i8 %i.hb, -48
  %or.cond.i.2.i97 = icmp ult i8 %i.hc, 10        ; 2 uses
  %i.hd = and i8 %i.hb, -33
  %i.he = add i8 %i.hd, -65
  %i.hf = icmp ult i8 %i.he, 6
  %i.hg = or i1 %or.cond.i.2.i97, %i.hf
  br i1 %i.hg, label %bb.aa, label %.critedge.thread.i87

bb.aa:                                            ; preds = %bb.z
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fw, i64 9
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !61  ; 4 uses
  %i.hj = add i8 %i.hi, -48                       ; 2 uses
  %or.cond.i.3.i98 = icmp ult i8 %i.hj, 10        ; 2 uses
  %i.hk = and i8 %i.hi, -33
  %i.hl = add i8 %i.hk, -65
  %i.hm = icmp ult i8 %i.hl, 6
  %i.hn = or i1 %or.cond.i.3.i98, %i.hm
  br i1 %i.hn, label %bb.ab, label %.critedge.thread.i87

bb.ab:                                            ; preds = %bb.aa
  %i.ho = shl i8 %i.hb, 4                         ; 2 uses
  %i.hp = add i8 %i.ho, -112
  %i.hq = select i1 %or.cond.i.2.i97, i8 %i.ho, i8 %i.hp
  %i.hr = add i8 %i.hi, -65
  %or.cond.i.i.3.i99 = icmp ult i8 %i.hr, 26
  %i.hs = select i1 %or.cond.i.i.3.i99, i8 -55, i8 -87
  %i.ht = add i8 %i.hs, %i.hi
  %i.hu = select i1 %or.cond.i.3.i98, i8 %i.hj, i8 %i.ht
  %i.hv = add i8 %i.hu, %i.hq
  %i.hw = getelementptr inbounds nuw i8, ptr %i.fw, i64 10
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !61  ; 3 uses
  %i.hy = add i8 %i.hx, -48
  %or.cond.i.4.i100 = icmp ult i8 %i.hy, 10       ; 2 uses
  %i.hz = and i8 %i.hx, -33
  %i.ia = add i8 %i.hz, -65
  %i.ib = icmp ult i8 %i.ia, 6
  %i.ic = or i1 %or.cond.i.4.i100, %i.ib
  br i1 %i.ic, label %bb.ac, label %.critedge.thread.i87

bb.ac:                                            ; preds = %bb.ab
  %i.id = getelementptr inbounds nuw i8, ptr %i.fw, i64 11
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !61  ; 4 uses
  %i.if = add i8 %i.ie, -48                       ; 2 uses
  %or.cond.i.5.i101 = icmp ult i8 %i.if, 10       ; 2 uses
  %i.ig = and i8 %i.ie, -33
  %i.ih = add i8 %i.ig, -65
  %i.ii = icmp ult i8 %i.ih, 6
  %i.ij = or i1 %or.cond.i.5.i101, %i.ii
  br i1 %i.ij, label %bb.ad, label %.critedge.thread.i87

bb.ad:                                            ; preds = %bb.ac
  %i.ik = shl i8 %i.hx, 4                         ; 2 uses
  %i.il = add i8 %i.ik, -112
  %i.im = select i1 %or.cond.i.4.i100, i8 %i.ik, i8 %i.il
  %i.in = add i8 %i.ie, -65
  %or.cond.i.i.5.i102 = icmp ult i8 %i.in, 26
  %i.io = select i1 %or.cond.i.i.5.i102, i8 -55, i8 -87
  %i.ip = add i8 %i.io, %i.ie
  %i.iq = select i1 %or.cond.i.5.i101, i8 %i.if, i8 %i.ip
  %i.ir = add i8 %i.iq, %i.im
  %i.is = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  %i.it = load i8, ptr %i.is, align 1, !tbaa !61  ; 3 uses
  %i.iu = add i8 %i.it, -48
  %or.cond.i.6.i103 = icmp ult i8 %i.iu, 10       ; 2 uses
  %i.iv = and i8 %i.it, -33
  %i.iw = add i8 %i.iv, -65
  %i.ix = icmp ult i8 %i.iw, 6
  %i.iy = or i1 %or.cond.i.6.i103, %i.ix
  br i1 %i.iy, label %bb.ae, label %.critedge.thread.i87

bb.ae:                                            ; preds = %bb.ad
  %i.iz = getelementptr inbounds nuw i8, ptr %i.fw, i64 13
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !61  ; 4 uses
  %i.jb = add i8 %i.ja, -48                       ; 2 uses
  %or.cond.i.7.i104 = icmp ult i8 %i.jb, 10       ; 2 uses
  %i.jc = and i8 %i.ja, -33
  %i.jd = add i8 %i.jc, -65
  %i.je = icmp ult i8 %i.jd, 6
  %i.jf = or i1 %or.cond.i.7.i104, %i.je
  br i1 %i.jf, label %.critedge.i105, label %.critedge.thread.i87

.critedge.i105:                                   ; preds = %bb.ae
  %i.jg = shl i8 %i.it, 4                         ; 2 uses
  %i.jh = add i8 %i.jg, -112
  %i.ji = select i1 %or.cond.i.6.i103, i8 %i.jg, i8 %i.jh
  %i.jj = add i8 %i.ja, -65
  %or.cond.i.i.7.i106 = icmp ult i8 %i.jj, 26
  %i.jk = select i1 %or.cond.i.i.7.i106, i8 -55, i8 -87
  %i.jl = add i8 %i.jk, %i.ja
  %i.jm = select i1 %or.cond.i.7.i104, i8 %i.jb, i8 %i.jl
  %i.jn = add i8 %i.jm, %i.ji
  br label %.loopexit.i85

.preheader58.1.i78:                               ; preds = %.preheader58.preheader.i75
  %i.jo = add i8 %i.fy, -97
  %or.cond.i116 = icmp ult i8 %i.jo, 26
  %i.jp = add nsw i8 %i.fy, -32
  %i.jq = select i1 %or.cond.i116, i8 %i.jp, i8 %i.fy ; 2 uses
  store i8 %i.jq, ptr %i.a, align 1, !tbaa !61
  %i.jr = getelementptr inbounds nuw i8, ptr %i.fw, i64 6
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !61  ; 5 uses
  %i.jt = and i8 %i.js, -33
  %i.ju = add i8 %i.jt, -65
  %or.cond11.i.1.i79 = icmp ult i8 %i.ju, 26
  %i.jv = add i8 %i.js, -48
  %i.jw = icmp ult i8 %i.jv, 10
  %i.jx = or i1 %i.jw, %or.cond11.i.1.i79
  br i1 %i.jx, label %.preheader58.2.i89, label %.lr.ph.preheader.i80

.preheader58.2.i89:                               ; preds = %.preheader58.1.i78
  %i.jy = add i8 %i.js, -97
  %or.cond.i115 = icmp ult i8 %i.jy, 26
  %i.jz = add nsw i8 %i.js, -32
  %i.ka = select i1 %or.cond.i115, i8 %i.jz, i8 %i.js ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.ka, ptr %i.kb, align 1, !tbaa !61
  %i.kc = getelementptr inbounds nuw i8, ptr %i.fw, i64 7
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !61  ; 5 uses
  %i.ke = and i8 %i.kd, -33
  %i.kf = add i8 %i.ke, -65
  %or.cond11.i.2.i90 = icmp ult i8 %i.kf, 26
  %i.kg = add i8 %i.kd, -48
  %i.kh = icmp ult i8 %i.kg, 10
  %i.ki = or i1 %i.kh, %or.cond11.i.2.i90
  br i1 %i.ki, label %.preheader58.3.i91, label %.lr.ph.preheader.i80

.preheader58.3.i91:                               ; preds = %.preheader58.2.i89
  %i.kj = add i8 %i.kd, -97
  %or.cond.i114 = icmp ult i8 %i.kj, 26
  %i.kk = add nsw i8 %i.kd, -32
  %i.kl = select i1 %or.cond.i114, i8 %i.kk, i8 %i.kd ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.kl, ptr %i.km, align 1, !tbaa !61
  %i.kn = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !61  ; 5 uses
  %i.kp = and i8 %i.ko, -33
  %i.kq = add i8 %i.kp, -65
  %or.cond11.i.3.i92 = icmp ult i8 %i.kq, 26
  %i.kr = add i8 %i.ko, -48
  %i.ks = icmp ult i8 %i.kr, 10
  %i.kt = or i1 %i.ks, %or.cond11.i.3.i92
  br i1 %i.kt, label %.preheader.i93, label %.lr.ph.preheader.i80

.preheader.i93:                                   ; preds = %.preheader58.3.i91
  %i.ku = add i8 %i.ko, -97
  %or.cond.i113 = icmp ult i8 %i.ku, 26
  %i.kv = add nsw i8 %i.ko, -32
  %i.kw = select i1 %or.cond.i113, i8 %i.kv, i8 %i.ko
  br label %.loopexit.i85

.lr.ph.preheader.i80:                             ; preds = %.preheader58.3.i91, %.preheader58.2.i89, %.preheader58.1.i78
  %.1.lcssa.ph.ph.i81 = phi i32 [ 1, %.preheader58.1.i78 ], [ 3, %.preheader58.3.i91 ], [ 2, %.preheader58.2.i89 ] ; 2 uses
  %i.kx = zext nneg i32 %.1.lcssa.ph.ph.i81 to i64
  %scevgep.i82 = getelementptr nuw i8, ptr %i.a, i64 %i.kx
  %narrow.i83 = sub nuw nsw i32 4, %.1.lcssa.ph.ph.i81
  %i.ky = zext nneg i32 %narrow.i83 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i82, i8 32, i64 %i.ky, i1 false), !tbaa !61
  %.pre.i84 = load i8, ptr %i.a, align 1, !tbaa !61
  %.phi.trans.insert135 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.pre136 = load i8, ptr %.phi.trans.insert135, align 1, !tbaa !61
  %.phi.trans.insert137 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.pre138 = load i8, ptr %.phi.trans.insert137, align 1, !tbaa !61
  %.phi.trans.insert139 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.pre140 = load i8, ptr %.phi.trans.insert139, align 1, !tbaa !61
  br label %.loopexit.i85

.loopexit.i85:                                    ; preds = %.lr.ph.preheader.i80, %.preheader.i93, %.critedge.i105
  %i.kz = phi i8 [ %.pre140, %.lr.ph.preheader.i80 ], [ %i.kw, %.preheader.i93 ], [ %i.jn, %.critedge.i105 ]
  %i.la = phi i8 [ %.pre138, %.lr.ph.preheader.i80 ], [ %i.kl, %.preheader.i93 ], [ %i.ir, %.critedge.i105 ]
  %i.lb = phi i8 [ %.pre136, %.lr.ph.preheader.i80 ], [ %i.ka, %.preheader.i93 ], [ %i.hv, %.critedge.i105 ]
  %i.lc = phi i8 [ %.pre.i84, %.lr.ph.preheader.i80 ], [ %i.jq, %.preheader.i93 ], [ %i.gz, %.critedge.i105 ]
  %i.ld = zext i8 %i.lc to i32
  %i.le = shl nuw i32 %i.ld, 24
  %i.lf = zext i8 %i.lb to i32
  %i.lg = shl nuw nsw i32 %i.lf, 16
  %i.lh = or disjoint i32 %i.lg, %i.le
  %i.li = zext i8 %i.la to i32
  %i.lj = shl nuw nsw i32 %i.li, 8
  %i.lk = or disjoint i32 %i.lh, %i.lj
  %i.ll = zext i8 %i.kz to i32
  %i.lm = or disjoint i32 %i.lk, %i.ll            ; 3 uses
  %i.ln = and i32 %i.lm, -538976289
  %i.lo = icmp eq i32 %i.ln, 1145457748
  %i.lp = xor i32 %i.lm, 538976288
  %spec.select.i86 = select i1 %i.lo, i32 %i.lp, i32 %i.lm
  store i32 %spec.select.i86, ptr %5, align 4, !tbaa !139
  store i32 1, ptr %4, align 4, !tbaa !139
  br label %.critedge.thread.i87

.critedge.thread.i87:                             ; preds = %.loopexit.i85, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %.preheader58.preheader.i75
  %i.lq = phi i1 [ false, %.loopexit.i85 ], [ true, %.preheader58.preheader.i75 ], [ true, %bb.ae ], [ true, %bb.ad ], [ true, %bb.ac ], [ true, %bb.ab ], [ true, %bb.aa ], [ true, %bb.z ], [ true, %bb.y ], [ true, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit107

_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit107: ; preds = %_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit, %bb.u, %bb.v, %.critedge.thread.i87
  %.3.i72 = phi i1 [ %i.ft, %_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit ], [ true, %bb.u ], [ %i.lq, %.critedge.thread.i87 ], [ true, %bb.v ]
  %or.cond5 = and i1 %i.fu, %.3.i72
  br i1 %or.cond5, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit107
  %i.lr = load i32, ptr %4, align 4, !tbaa !139
  %.not65 = icmp eq i32 %i.lr, 0
  br i1 %.not65, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @_ZL24hb_ot_tags_from_languagePKcS0_PjS1_(ptr noundef nonnull %1, ptr noundef %.3, ptr noundef %4, ptr noundef %5)
  br label %bb.ah

bb.ah:                                            ; preds = %_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit107, %bb.af, %bb.ag, %bb.b, %bb.c, %bb.d
  %.054 = phi i1 [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.b ], [ %.3.i, %bb.ag ], [ %.3.i, %bb.af ], [ %.3.i, %_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit107 ]
  %i.ls = icmp ne ptr %2, null
  %or.cond7 = and i1 %i.ls, %.054
  %i.lt = icmp ne ptr %3, null
  %or.cond9 = and i1 %i.lt, %or.cond7
  br i1 %or.cond9, label %bb.ai, label %bb.az

bb.ai:                                            ; preds = %bb.ah
  %i.lu = load i32, ptr %2, align 4, !tbaa !139
  %.not67 = icmp eq i32 %i.lu, 0
  br i1 %.not67, label %bb.az, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  switch i32 %0, label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread [
    i32 1113943655, label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i
    i32 1147500129, label %bb.ak
    i32 1198877298, label %bb.al
    i32 1198879349, label %bb.am
    i32 1265525857, label %bb.an
    i32 1298954605, label %bb.ao
    i32 1332902241, label %bb.ap
    i32 1415671148, label %bb.aq
    i32 1415933045, label %bb.ar
    i32 1299803506, label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i
  ]

bb.ak:                                            ; preds = %bb.aj
  br label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i

bb.al:                                            ; preds = %bb.aj
  br label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i

bb.am:                                            ; preds = %bb.aj
  br label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i

bb.an:                                            ; preds = %bb.aj
  br label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i

bb.ao:                                            ; preds = %bb.aj
  br label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i

bb.ap:                                            ; preds = %bb.aj
  br label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i

bb.aq:                                            ; preds = %bb.aj
  br label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i

bb.ar:                                            ; preds = %bb.aj
  br label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i

_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i: ; preds = %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar
  %.0.i.ph.i = phi i32 [ 1651402546, %bb.aj ], [ 1952803890, %bb.ar ], [ 1953328178, %bb.aq ], [ 1869773106, %bb.ap ], [ 1835822386, %bb.ao ], [ 1802396722, %bb.an ], [ 1735750194, %bb.am ], [ 1735029298, %bb.al ], [ 1684370994, %bb.ak ] ; 2 uses
  %i.lv = or i32 %.0.i.ph.i, 51
  store i32 %i.lv, ptr %3, align 4, !tbaa !139
  %.pre141 = load i32, ptr %2, align 4, !tbaa !139
  %i.lw = icmp ugt i32 %.pre141, 1
  br i1 %i.lw, label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i, label %_ZL26hb_ot_all_tags_from_script11hb_script_tPjS0_.exit

_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i: ; preds = %bb.aj, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i
  %.0.i164 = phi i32 [ 1, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i ], [ 0, %bb.aj ] ; 2 uses
  %.0.i26.i163 = phi i32 [ %.0.i.ph.i, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i ], [ 1836674354, %bb.aj ]
  %i.lx = add nuw nsw i32 %.0.i164, 1             ; 3 uses
  %i.ly = zext nneg i32 %.0.i164 to i64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ly
  store i32 %.0.i26.i163, ptr %i.lz, align 4, !tbaa !139
  %.pre142 = load i32, ptr %2, align 4, !tbaa !139
  %i.ma = icmp ugt i32 %.pre142, %i.lx
  br i1 %i.ma, label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread, label %_ZL26hb_ot_all_tags_from_script11hb_script_tPjS0_.exit

_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread: ; preds = %bb.aj, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i
  %.1.i166 = phi i32 [ %i.lx, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i ], [ 0, %bb.aj ] ; 3 uses
  switch i32 %0, label %bb.ax [
    i32 0, label %_ZL26hb_ot_all_tags_from_script11hb_script_tPjS0_.exit
    i32 1517122664, label %bb.ay
    i32 1214870113, label %bb.as
    i32 1215458164, label %bb.as
    i32 1281453935, label %bb.at
    i32 1500080489, label %bb.au
    i32 1315663727, label %bb.av
    i32 1449224553, label %bb.aw
  ]

bb.as:                                            ; preds = %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread
  br label %bb.ay

bb.at:                                            ; preds = %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread
  br label %bb.ay

bb.au:                                            ; preds = %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread
  br label %bb.ay

bb.av:                                            ; preds = %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread
  br label %bb.ay

bb.aw:                                            ; preds = %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread
  br label %bb.ay

bb.ax:                                            ; preds = %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread
  %i.mb = or i32 %0, 536870912
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread
  %.0.i23.ph.i = phi i32 [ 1852534560, %bb.av ], [ 2036932640, %bb.au ], [ 1818324768, %bb.at ], [ 1801547361, %bb.as ], [ %i.mb, %bb.ax ], [ 1986095392, %bb.aw ], [ 1835103336, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread ]
  %i.mc = add nuw nsw i32 %.1.i166, 1
  %i.md = zext nneg i32 %.1.i166 to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.md
  store i32 %.0.i23.ph.i, ptr %i.me, align 4, !tbaa !139
  br label %_ZL26hb_ot_all_tags_from_script11hb_script_tPjS0_.exit

_ZL26hb_ot_all_tags_from_script11hb_script_tPjS0_.exit: ; preds = %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread, %bb.ay
  %.3.i108 = phi i32 [ %i.lx, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i ], [ %i.mc, %bb.ay ], [ %.1.i166, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread ], [ 1, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i ]
  store i32 %.3.i108, ptr %2, align 4, !tbaa !139
  br label %bb.az

bb.az:                                            ; preds = %_ZL26hb_ot_all_tags_from_script11hb_script_tPjS0_.exit, %bb.ai, %bb.ah
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN19hb_ot_map_builder_tD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(128) dereferenceable(128) initializes((84, 88), (100, 104), (116, 120)) %0) unnamed_addr #35 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1810
  %i.c = add i32 %i.b, -1
  %spec.select.i.i = icmp ult i32 %i.c, -2
  br i1 %spec.select.i.i, label %bb.b, label %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4finiEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.d, align 4, !tbaa !1811
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1812
  tail call void @free(ptr noundef %i.f) #63
  br label %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4finiEv.exit

_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4finiEv.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1813
  %i.i = add i32 %i.h, -1
  %spec.select.i.i5 = icmp ult i32 %i.i, -2
  br i1 %spec.select.i.i5, label %bb.c, label %_ZN11hb_vector_tIN19hb_ot_map_builder_t12stage_info_tELb0EE4finiEv.exit

bb.c:                                             ; preds = %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4finiEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 100
end_hunk_2
begin_hunk_3_@_ZL24hb_ot_tags_from_languagePKcS0_PjS1_:bb.a
  br i1 %i.ace, label %_ZL12lang_matchesPKcS0_S0_j.exit1285.i, label %.thread1516.i

_ZL12lang_matchesPKcS0_S0_j.exit1285.i:           ; preds = %bb.ii
  %i.acf = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !61
  switch i8 %i.acg, label %.thread1516.i [
    i8 45, label %bb.ij
    i8 0, label %bb.ij
  ]

bb.ij:                                            ; preds = %_ZL12lang_matchesPKcS0_S0_j.exit1285.i, %_ZL12lang_matchesPKcS0_S0_j.exit1285.i
  store i32 1514689312, ptr %3, align 4, !tbaa !139
  br label %.critedge106

.thread1516.i:                                    ; preds = %_ZL12lang_matchesPKcS0_S0_j.exit1285.i, %bb.ii
  %i.ach = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.abj, ptr noundef nonnull dereferenceable(7) @.str.291, i64 noundef 6) #68
  %i.aci = icmp eq i32 %i.ach, 0
  br i1 %i.aci, label %_ZL12lang_matchesPKcS0_S0_j.exit1288.i, label %_ZL12lang_matchesPKcS0_S0_j.exit1288.thread.i

_ZL12lang_matchesPKcS0_S0_j.exit1288.i:           ; preds = %.thread1516.i
  %i.acj = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ack = load i8, ptr %i.acj, align 1, !tbaa !61
  switch i8 %i.ack, label %_ZL12lang_matchesPKcS0_S0_j.exit1288.thread.i [
    i8 45, label %bb.ik
    i8 0, label %bb.ik
  ]

bb.ik:                                            ; preds = %_ZL12lang_matchesPKcS0_S0_j.exit1288.i, %_ZL12lang_matchesPKcS0_S0_j.exit1288.i
  store i32 1514689568, ptr %3, align 4, !tbaa !139
  br label %.critedge106

_ZL12lang_matchesPKcS0_S0_j.exit1288.thread.i:    ; preds = %_ZL12lang_matchesPKcS0_S0_j.exit1288.i, %.thread1516.i, %bb.ih
  %i.acl = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.abj, ptr noundef nonnull dereferenceable(6) @.str.292) #68
  %i.acm = icmp eq i32 %i.acl, 0
  br i1 %i.acm, label %bb.il, label %sub_01606.i

bb.il:                                            ; preds = %_ZL12lang_matchesPKcS0_S0_j.exit1288.thread.i
  store i32 1514689312, ptr %3, align 4, !tbaa !139
  br label %.critedge106

sub_01606.i:                                      ; preds = %_ZL12lang_matchesPKcS0_S0_j.exit1288.thread.i
  %i.acn = load i8, ptr %i.abj, align 1
  %.not1683.i = icmp eq i8 %i.acn, 104
  br i1 %.not1683.i, label %.tail1605.i, label %sub_11555.i.thread

.tail1605.i:                                      ; preds = %sub_01606.i
  %i.aco = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.acp = load i8, ptr %i.aco, align 1
  %i.acq = icmp eq i8 %i.acp, 45
  br i1 %i.acq, label %bb.im, label %sub_11555.i.thread

bb.im:                                            ; preds = %.tail1605.i
  %i.acr = tail call fastcc noundef zeroext i1 @_ZL14subtag_matchesPKcS0_S0_j(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.202, i32 noundef 3)
  br i1 %i.acr, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  store i32 1514686496, ptr %3, align 4, !tbaa !139
  br label %.critedge106

bb.io:                                            ; preds = %bb.im
  %i.acs = tail call fastcc noundef zeroext i1 @_ZL14subtag_matchesPKcS0_S0_j(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.203, i32 noundef 3)
  br i1 %i.acs, label %.preheader1643.preheader.i, label %bb.iq

.preheader1643.preheader.i:                       ; preds = %bb.io
  %i.act = load i32, ptr %2, align 4, !tbaa !139
  %.not1767.i = icmp eq i32 %i.act, 0
  br i1 %.not1767.i, label %.critedge106, label %.preheader1643.1.i

.preheader1643.1.i:                               ; preds = %.preheader1643.preheader.i
  store i32 1514689613, ptr %3, align 4, !tbaa !139
  %i.acu = load i32, ptr %2, align 4, !tbaa !139
  %i.acv = icmp ugt i32 %i.acu, 1
  br i1 %i.acv, label %bb.ip, label %.critedge106

bb.ip:                                            ; preds = %.preheader1643.1.i
  %i.acw = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1514686496, ptr %i.acw, align 4, !tbaa !139
  br label %.critedge106

bb.iq:                                            ; preds = %bb.io
  %i.acx = tail call fastcc noundef zeroext i1 @_ZL14subtag_matchesPKcS0_S0_j(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.205, i32 noundef 3)
  br i1 %i.acx, label %bb.ir, label %sub_11555.i.thread

bb.ir:                                            ; preds = %bb.iq
  store i32 1514689568, ptr %3, align 4, !tbaa !139
  br label %.critedge106

sub_11555.i.thread:                               ; preds = %.preheader.i1242.i, %sub_11581.i, %sub_11550.i, %_ZL12lang_matchesPKcS0_S0_j.exit1229.thread.tail.i, %bb.gd, %.tail1548.i, %bb.ct, %.tail1605.i, %sub_11530.i, %bb.bp, %.tail.i, %sub_11525.i, %sub_1.i, %bb.bj, %_ZL12lang_matchesPKcS0_S0_j.exit1151.thread.tail.i, %sub_01558.i, %sub_01562.i, %sub_11573.i, %bb.eq, %bb.hy, %bb.iq, %_ZL12lang_matchesPKcS0_S0_j.exit1276.i, %_ZL12lang_matchesPKcS0_S0_j.exit1261.thread.tail.i, %bb.hw, %_ZL12lang_matchesPKcS0_S0_j.exit1217.thread.tail.i, %bb.hj, %.tail1593.i, %.tail1566.i, %bb.gv, %.tail1584.i, %bb.gf, %.tail1571.i, %bb.fq, %bb.fc, %_ZL12lang_matchesPKcS0_S0_j.exit1166.thread.tail.i, %bb.ew, %.tail1553.i, %bb.dn, %bb.m, %bb.cz, %bb.n, %_ZL12lang_matchesPKcS0_S0_j.exit1273.thread.tail.i, %sub_11568.i, %sub_11563.i, %bb.ek, %sub_01576.i, %sub_01597.i, %sub_01601.i, %bb.hz, %sub_11602.i, %sub_01606.i, %sub_0.i, %sub_11559.i, %_ZL12lang_matchesPKcS0_S0_j.exit1202.thread.tail.i, %sub_11577.i, %sub_01580.i, %sub_01594.i, %sub_11598.i, %bb.cn, %.tail1543.i, %sub_11545.i, %bb.ch, %.tail1538.i, %sub_11540.i, %bb.cb, %.tail1533.i, %sub_11535.i, %bb.bv, %.tail1528.i
  %i.acy = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #68 ; 4 uses
  %.not = icmp ne ptr %i.acy, null                ; 2 uses
  %i.acz = icmp sgt i64 %i.e, 5
  %or.cond = and i1 %i.acz, %.not
  br i1 %or.cond, label %bb.is, label %bb.ix

bb.is:                                            ; preds = %sub_11555.i.thread
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acy, i64 1 ; 4 uses
  %i.adb = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ada, i32 noundef 45) #68 ; 2 uses
  %.not89 = icmp eq ptr %i.adb, null
  br i1 %.not89, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.adc = ptrtoint ptr %i.adb to i64
  %i.add = ptrtoint ptr %i.acy to i64
  %i.ade = xor i64 %i.add, -1
  %i.adf = add i64 %i.adc, %i.ade
  br label %bb.iv

bb.iu:                                            ; preds = %bb.is
  %i.adg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ada) #68
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %bb.it
  %i.adh = phi i64 [ %i.adf, %bb.it ], [ %i.adg, %bb.iu ]
  %i.adi = icmp eq i64 %i.adh, 3
  br i1 %i.adi, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  %i.adj = load i8, ptr %i.ada, align 1, !tbaa !61
  %i.adk = and i8 %i.adj, -33
  %i.adl = add i8 %i.adk, -65
  %i.adm = icmp ult i8 %i.adl, 26
  %spec.select = select i1 %i.adm, ptr %i.ada, ptr %0 ; 2 uses
  %.pre = ptrtoint ptr %spec.select to i64
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv, %sub_11555.i.thread
  %.pre-phi = phi i64 [ %.pre, %bb.iw ], [ %i.d, %bb.iv ], [ %i.d, %sub_11555.i.thread ] ; 2 uses
  %.181 = phi ptr [ %spec.select, %bb.iw ], [ %0, %bb.iv ], [ %0, %sub_11555.i.thread ] ; 11 uses
  %i.adn = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.181, i32 noundef 45) #68 ; 2 uses
  %.not90 = icmp eq ptr %i.adn, null
  %i.ado = ptrtoint ptr %i.adn to i64
  %.v = select i1 %.not90, i64 %i.c, i64 %i.ado
  %i.adp = sub i64 %.v, %.pre-phi
  %i.adq = trunc i64 %i.adp to i32                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  %.not231 = icmp eq i32 %i.adq, 0
  br i1 %.not231, label %hb_tag_from_string.exit.thread, label %bb.iy

hb_tag_from_string.exit.thread:                   ; preds = %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  br label %_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit

bb.iy:                                            ; preds = %bb.ix
  %i.adr = load i8, ptr %.181, align 1, !tbaa !61
  %.not.i107 = icmp eq i8 %i.adr, 0
  br i1 %.not.i107, label %hb_tag_from_string.exit, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.adq, i32 4) ; 4 uses
  %i.ads = load i8, ptr %.181, align 1, !tbaa !61 ; 2 uses
  %.not23.i = icmp eq i8 %i.ads, 0
  br i1 %.not23.i, label %.critedge.i, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  store i8 %i.ads, ptr %i.b, align 4, !tbaa !61
  %exitcond.not.i = icmp eq i32 %i.adq, 1
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.adt = getelementptr inbounds nuw i8, ptr %.181, i64 1
  %i.adu = load i8, ptr %i.adt, align 1, !tbaa !61 ; 2 uses
  %.not23.i.1 = icmp eq i8 %i.adu, 0
  br i1 %.not23.i.1, label %.critedge.i, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.adv = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.adu, ptr %i.adv, align 1, !tbaa !61
  %exitcond.not.i.1 = icmp eq i32 %i.adq, 2
  br i1 %exitcond.not.i.1, label %.critedge.i, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.adw = getelementptr inbounds nuw i8, ptr %.181, i64 2
  %i.adx = load i8, ptr %i.adw, align 1, !tbaa !61 ; 2 uses
  %.not23.i.2 = icmp eq i8 %i.adx, 0
  br i1 %.not23.i.2, label %.critedge.i, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.ady = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.adx, ptr %i.ady, align 2, !tbaa !61
  %exitcond.not.i.2 = icmp eq i32 %i.adq, 3
  br i1 %exitcond.not.i.2, label %.critedge.i, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.adz = getelementptr inbounds nuw i8, ptr %.181, i64 3
  %i.aea = load i8, ptr %i.adz, align 1, !tbaa !61 ; 2 uses
  %.not23.i.3 = icmp eq i8 %i.aea, 0
  br i1 %.not23.i.3, label %.critedge.i, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.aea, ptr %i.aeb, align 1, !tbaa !61
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ja, %bb.jc, %bb.je, %bb.jg, %bb.iz, %bb.jb, %bb.jd, %bb.jf
  %.0.lcssa.i = phi i32 [ 3, %bb.jf ], [ 0, %bb.iz ], [ 1, %bb.jb ], [ 2, %bb.jd ], [ %spec.store.select.i, %bb.jg ], [ %spec.store.select.i, %bb.je ], [ %spec.store.select.i, %bb.jc ], [ %spec.store.select.i, %bb.ja ] ; 3 uses
  %i.aec = icmp ult i32 %.0.lcssa.i, 4
  br i1 %i.aec, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.critedge.i
  %i.aed = zext nneg i32 %.0.lcssa.i to i64
  %scevgep.i = getelementptr nuw i8, ptr %i.b, i64 %i.aed
  %narrow.i = sub nuw nsw i32 4, %.0.lcssa.i
  %i.aee = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %scevgep.i, i8 32, i64 %i.aee, i1 false), !tbaa !61
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %.critedge.i
  %i.aef = load i32, ptr %i.b, align 4
  %i.aeg = tail call i32 @llvm.bswap.i32(i32 %i.aef)
  br label %hb_tag_from_string.exit

hb_tag_from_string.exit:                          ; preds = %bb.iy, %._crit_edge.i
  %.019.i = phi i32 [ %i.aeg, %._crit_edge.i ], [ 0, %bb.iy ] ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  switch i32 %i.adq, label %_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit [
    i32 2, label %bb.jh
    i32 3, label %bb.jq
  ]

bb.jh:                                            ; preds = %hb_tag_from_string.exit
  %i.aeh = load atomic i32, ptr @_ZZL24hb_ot_tags_from_languagePKcS0_PjS1_E14last_tag_idx_2.0 monotonic, align 4 ; 3 uses
  %i.aei = icmp ult i32 %i.aeh, 204
  br i1 %i.aei, label %bb.ji, label %.lr.ph.i.i.i.preheader, !prof !49

bb.ji:                                            ; preds = %bb.jh
  %i.aej = zext nneg i32 %i.aeh to i64
  %i.aek = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ot_languages2, i64 %i.aej
  %i.ael = load i32, ptr %i.aek, align 8, !tbaa !2307
  %i.aem = icmp eq i32 %i.ael, %.019.i
  br i1 %i.aem, label %.critedge, label %.lr.ph.i.i.i.preheader, !prof !49

.lr.ph.i.i.i.preheader:                           ; preds = %bb.ji, %bb.jh
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.jm
  %.0203.i.i.i = phi i32 [ %.2.i.i.i, %bb.jm ], [ 203, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0212.i.i.i = phi i32 [ %.223.i.i.i, %bb.jm ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.aen = add i32 %.0212.i.i.i, %.0203.i.i.i
  %i.aeo = lshr i32 %i.aen, 1                     ; 4 uses
  %i.aep = zext nneg i32 %i.aeo to i64
  %i.aeq = shl nuw nsw i64 %i.aep, 3
  %i.aer = getelementptr inbounds nuw i8, ptr @_ZL13ot_languages2, i64 %i.aeq
  %i.aes = load i32, ptr %i.aer, align 8, !tbaa !2307 ; 2 uses
  %i.aet = icmp ult i32 %.019.i, %i.aes
  br i1 %i.aet, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %.lr.ph.i.i.i
  %i.aeu = add nsw i32 %i.aeo, -1
  br label %bb.jm

bb.jk:                                            ; preds = %.lr.ph.i.i.i
  %.not28.i.i.i = icmp eq i32 %.019.i, %i.aes
  br i1 %.not28.i.i.i, label %.critedge, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.aev = add nuw nsw i32 %i.aeo, 1
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jj
  %.223.i.i.i = phi i32 [ %i.aev, %bb.jl ], [ %.0212.i.i.i, %bb.jj ] ; 2 uses
  %.2.i.i.i = phi i32 [ %.0203.i.i.i, %bb.jl ], [ %i.aeu, %bb.jj ] ; 2 uses
  %.not.not.i.i.i = icmp sgt i32 %.223.i.i.i, %.2.i.i.i
  br i1 %.not.not.i.i.i, label %_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit, label %.lr.ph.i.i.i, !llvm.loop !2309

.critedge:                                        ; preds = %bb.jk, %bb.ji
  %.0207 = phi i32 [ %i.aeh, %bb.ji ], [ %i.aeo, %bb.jk ] ; 4 uses
  store atomic i32 %.0207, ptr @_ZZL24hb_ot_tags_from_languagePKcS0_PjS1_E14last_tag_idx_2.0 monotonic, align 4
  %.not92314 = icmp eq i32 %.0207, 0
  br i1 %.not92314, label %.critedge3, label %.lr.ph316

bb.jn:                                            ; preds = %.lr.ph316
  %.not92 = icmp eq i32 %i.aez, 0
  br i1 %.not92, label %.critedge3, label %.lr.ph316, !llvm.loop !2310

.lr.ph316:                                        ; preds = %.critedge, %bb.jn
  %.1208315 = phi i32 [ %i.aez, %bb.jn ], [ %.0207, %.critedge ] ; 3 uses
  %i.aew = zext nneg i32 %.1208315 to i64
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ot_languages2, i64 %i.aew
  %i.aey = load i32, ptr %i.aex, align 8, !tbaa !2307
  %i.aez = add nsw i32 %.1208315, -1              ; 4 uses
  %i.afa = zext nneg i32 %i.aez to i64
  %i.afb = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ot_languages2, i64 %i.afa
  %i.afc = load i32, ptr %i.afb, align 8, !tbaa !2307
  %i.afd = icmp eq i32 %i.aey, %i.afc
  br i1 %i.afd, label %bb.jn, label %..critedge3_crit_edge317, !llvm.loop !2310

..critedge3_crit_edge317:                         ; preds = %.lr.ph316
  br label %.critedge3, !llvm.loop !2310

.critedge3:                                       ; preds = %bb.jn, %..critedge3_crit_edge317, %.critedge
  %.1208.lcssa = phi i32 [ %.0207, %.critedge ], [ %.1208315, %..critedge3_crit_edge317 ], [ %i.aez, %bb.jn ] ; 3 uses
  %i.afe = load i32, ptr %2, align 4, !tbaa !139
  %.not250 = icmp eq i32 %i.afe, 0
  br i1 %.not250, label %.critedge106, label %.lr.ph243

.lr.ph243:                                        ; preds = %.critedge3
  %i.aff = zext i32 %.1208.lcssa to i64
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ot_languages2, i64 %i.aff
  %i.afh = sext i32 %.1208.lcssa to i64           ; 2 uses
  %i.afi = icmp ult i32 %.1208.lcssa, 204
  br i1 %i.afi, label %.lr.ph320.preheader, label %.critedge5.loopexit

.lr.ph320.preheader:                              ; preds = %.lr.ph243
  %invariant.gep344 = getelementptr [8 x i8], ptr @_ZL13ot_languages2, i64 %i.afh
  %i.afj = load i32, ptr %i.afg, align 8, !tbaa !2307
  br label %.lr.ph320

bb.jo:                                            ; preds = %bb.jp
  %i.afk = add nuw nsw i64 %indvars.iv.next260, %i.afh
  %i.afl = icmp ult i64 %i.afk, 204
  br i1 %i.afl, label %.lr.ph320, label %.critedge5.loopexit, !llvm.loop !2311

.lr.ph320:                                        ; preds = %.lr.ph320.preheader, %bb.jo
  %indvars.iv259319 = phi i64 [ %indvars.iv.next260, %bb.jo ], [ 0, %.lr.ph320.preheader ] ; 4 uses
  %gep345 = getelementptr [8 x i8], ptr %invariant.gep344, i64 %indvars.iv259319 ; 2 uses
  %i.afm = load i32, ptr %gep345, align 8, !tbaa !2307
  %i.afn = icmp eq i32 %i.afm, %i.afj
  br i1 %i.afn, label %bb.jp, label %.critedge5.loopexit

bb.jp:                                            ; preds = %.lr.ph320
  %i.afo = getelementptr inbounds nuw i8, ptr %gep345, i64 4
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !2312
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv259319
  store i32 %i.afp, ptr %i.afq, align 4, !tbaa !139
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259319, 1 ; 5 uses
  %i.afr = load i32, ptr %2, align 4, !tbaa !139
  %i.afs = zext i32 %i.afr to i64
  %i.aft = icmp samesign ult i64 %indvars.iv.next260, %i.afs
  br i1 %i.aft, label %bb.jo, label %..critedge5.loopexit_crit_edge322, !llvm.loop !2311

..critedge5.loopexit_crit_edge322:                ; preds = %bb.jp
  br label %.critedge5.loopexit, !llvm.loop !2311

.critedge5.loopexit:                              ; preds = %.lr.ph320, %bb.jo, %..critedge5.loopexit_crit_edge322, %.lr.ph243
  %.078.lcssa.ph.in = phi i64 [ 0, %.lr.ph243 ], [ %indvars.iv.next260, %..critedge5.loopexit_crit_edge322 ], [ %indvars.iv259319, %.lr.ph320 ], [ %indvars.iv.next260, %bb.jo ]
  %.078.lcssa.ph = trunc i64 %.078.lcssa.ph.in to i32
  br label %.critedge106

bb.jq:                                            ; preds = %hb_tag_from_string.exit
  %i.afu = load atomic i32, ptr @_ZZL24hb_ot_tags_from_languagePKcS0_PjS1_E14last_tag_idx_3.0 monotonic, align 4 ; 3 uses
  %i.afv = icmp ult i32 %i.afu, 779
  br i1 %i.afv, label %bb.jr, label %.lr.ph.i.i.i116.preheader, !prof !49

bb.jr:                                            ; preds = %bb.jq
  %i.afw = zext nneg i32 %i.afu to i64
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ot_languages3, i64 %i.afw
  %i.afy = load i32, ptr %i.afx, align 8, !tbaa !2307
  %i.afz = icmp eq i32 %i.afy, %.019.i
  br i1 %i.afz, label %.critedge7, label %.lr.ph.i.i.i116.preheader, !prof !49

.lr.ph.i.i.i116.preheader:                        ; preds = %bb.jr, %bb.jq
  br label %.lr.ph.i.i.i116

.lr.ph.i.i.i116:                                  ; preds = %.lr.ph.i.i.i116.preheader, %bb.jv
  %.0203.i.i.i117 = phi i32 [ %.2.i.i.i121, %bb.jv ], [ 778, %.lr.ph.i.i.i116.preheader ] ; 2 uses
  %.0212.i.i.i118 = phi i32 [ %.223.i.i.i120, %bb.jv ], [ 0, %.lr.ph.i.i.i116.preheader ] ; 2 uses
  %i.aga = add i32 %.0212.i.i.i118, %.0203.i.i.i117
  %i.agb = lshr i32 %i.aga, 1                     ; 4 uses
  %i.agc = zext nneg i32 %i.agb to i64
  %i.agd = shl nuw nsw i64 %i.agc, 3
  %i.age = getelementptr inbounds nuw i8, ptr @_ZL13ot_languages3, i64 %i.agd
  %i.agf = load i32, ptr %i.age, align 8, !tbaa !2307 ; 2 uses
  %i.agg = icmp ult i32 %.019.i, %i.agf
  br i1 %i.agg, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %.lr.ph.i.i.i116
  %i.agh = add nsw i32 %i.agb, -1
  br label %bb.jv

bb.jt:                                            ; preds = %.lr.ph.i.i.i116
  %.not28.i.i.i119 = icmp eq i32 %.019.i, %i.agf
  br i1 %.not28.i.i.i119, label %.critedge7, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.agi = add nuw nsw i32 %i.agb, 1
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.js
  %.223.i.i.i120 = phi i32 [ %i.agi, %bb.ju ], [ %.0212.i.i.i118, %bb.js ] ; 2 uses
  %.2.i.i.i121 = phi i32 [ %.0203.i.i.i117, %bb.ju ], [ %i.agh, %bb.js ] ; 2 uses
  %.not.not.i.i.i122 = icmp sgt i32 %.223.i.i.i120, %.2.i.i.i121
  br i1 %.not.not.i.i.i122, label %_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit124, label %.lr.ph.i.i.i116, !llvm.loop !2309

.critedge7:                                       ; preds = %bb.jt, %bb.jr
  %.0205 = phi i32 [ %i.afu, %bb.jr ], [ %i.agb, %bb.jt ] ; 2 uses
  store atomic i32 %.0205, ptr @_ZZL24hb_ot_tags_from_languagePKcS0_PjS1_E14last_tag_idx_3.0 monotonic, align 4
  %i.agj = load i32, ptr %2, align 4, !tbaa !139
  %.not91 = icmp eq i32 %i.agj, 0
  br i1 %.not91, label %.critedge106, label %bb.jw

bb.jw:                                            ; preds = %.critedge7
  %i.agk = zext nneg i32 %.0205 to i64
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ot_languages3, i64 %i.agk
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 4
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !2312
  store i32 %i.agn, ptr %3, align 4, !tbaa !139
  br label %.critedge106

_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit124: ; preds = %bb.jv
  %i.ago = load atomic i32, ptr @_ZZL24hb_ot_tags_from_languagePKcS0_PjS1_E20last_tag_idx_3_multi.0 monotonic, align 4 ; 3 uses
  %i.agp = icmp ult i32 %i.ago, 137
  br i1 %i.agp, label %bb.jx, label %.lr.ph.i.i.i132.preheader, !prof !49

bb.jx:                                            ; preds = %_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit124
  %i.agq = zext nneg i32 %i.ago to i64
  %i.agr = getelementptr inbounds nuw [8 x i8], ptr @_ZL19ot_languages3_multi, i64 %i.agq
  %i.ags = load i32, ptr %i.agr, align 8, !tbaa !2313
  %i.agt = icmp eq i32 %i.ags, %.019.i
  br i1 %i.agt, label %.critedge9, label %.lr.ph.i.i.i132.preheader, !prof !49

.lr.ph.i.i.i132.preheader:                        ; preds = %bb.jx, %_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit124
  br label %.lr.ph.i.i.i132

.lr.ph.i.i.i132:                                  ; preds = %.lr.ph.i.i.i132.preheader, %bb.kb
  %.0203.i.i.i133 = phi i32 [ %.2.i.i.i137, %bb.kb ], [ 136, %.lr.ph.i.i.i132.preheader ] ; 2 uses
  %.0212.i.i.i134 = phi i32 [ %.223.i.i.i136, %bb.kb ], [ 0, %.lr.ph.i.i.i132.preheader ] ; 2 uses
  %i.agu = add i32 %.0212.i.i.i134, %.0203.i.i.i133
  %i.agv = lshr i32 %i.agu, 1                     ; 4 uses
  %i.agw = zext nneg i32 %i.agv to i64
  %i.agx = shl nuw nsw i64 %i.agw, 3
  %i.agy = getelementptr inbounds nuw i8, ptr @_ZL19ot_languages3_multi, i64 %i.agx
  %i.agz = load i32, ptr %i.agy, align 8, !tbaa !2313 ; 2 uses
  %i.aha = icmp ult i32 %.019.i, %i.agz
  br i1 %i.aha, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %.lr.ph.i.i.i132
  %i.ahb = add nsw i32 %i.agv, -1
  br label %bb.kb

bb.jz:                                            ; preds = %.lr.ph.i.i.i132
  %.not28.i.i.i135 = icmp eq i32 %.019.i, %i.agz
  br i1 %.not28.i.i.i135, label %.critedge9, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.ahc = add nuw nsw i32 %i.agv, 1
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %bb.jy
  %.223.i.i.i136 = phi i32 [ %i.ahc, %bb.ka ], [ %.0212.i.i.i134, %bb.jy ] ; 2 uses
  %.2.i.i.i137 = phi i32 [ %.0203.i.i.i133, %bb.ka ], [ %i.ahb, %bb.jy ] ; 2 uses
  %.not.not.i.i.i138 = icmp sgt i32 %.223.i.i.i136, %.2.i.i.i137
  br i1 %.not.not.i.i.i138, label %_ZNK17hb_sorted_array_tIK12LangTagRangeE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit, label %.lr.ph.i.i.i132, !llvm.loop !2315

.critedge9:                                       ; preds = %bb.jz, %bb.jx
  %.0204 = phi i32 [ %i.ago, %bb.jx ], [ %i.agv, %bb.jz ] ; 2 uses
  store atomic i32 %.0204, ptr @_ZZL24hb_ot_tags_from_languagePKcS0_PjS1_E20last_tag_idx_3_multi.0 monotonic, align 4
  %i.ahd = load i32, ptr %2, align 4, !tbaa !139
  %.not249 = icmp eq i32 %i.ahd, 0
  br i1 %.not249, label %.critedge106, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge9
  %i.ahe = zext nneg i32 %.0204 to i64
  %i.ahf = getelementptr inbounds nuw [8 x i8], ptr @_ZL19ot_languages3_multi, i64 %i.ahe ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 6
  %i.ahh = load i8, ptr %i.ahg, align 2, !tbaa !2316 ; 2 uses
  %i.ahi = zext i8 %i.ahh to i32
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahf, i64 4
  %wide.trip.count = zext i8 %i.ahh to i64
  %i.ahk = load i16, ptr %i.ahj, align 4, !tbaa !2317
  %i.ahl = zext i16 %i.ahk to i64
  %invariant.gep = getelementptr inbounds [4 x i8], ptr @_ZL26ot_languages3_multi_values, i64 %i.ahl
  br label %bb.kd

bb.kc:                                            ; preds = %bb.kd
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge106, label %bb.kd, !llvm.loop !2318

bb.kd:                                            ; preds = %.lr.ph, %bb.kc
  %indvars.iv312 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.kc ] ; 3 uses
  %gep = getelementptr inbounds [4 x i8], ptr %invariant.gep, i64 %indvars.iv312
  %i.ahm = load i32, ptr %gep, align 4, !tbaa !139
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv312
  store i32 %i.ahm, ptr %i.ahn, align 4, !tbaa !139
  %indvars.iv.next = add nuw nsw i64 %indvars.iv312, 1 ; 4 uses
  %i.aho = load i32, ptr %2, align 4, !tbaa !139
  %i.ahp = zext i32 %i.aho to i64
  %i.ahq = icmp samesign ult i64 %indvars.iv.next, %i.ahp
  br i1 %i.ahq, label %bb.kc, label %.critedge11.loopexit.split.loop.exit, !llvm.loop !2318

.critedge11.loopexit.split.loop.exit:             ; preds = %bb.kd
  %indvars.le = trunc nuw i64 %indvars.iv.next to i32
  br label %.critedge106

_ZNK17hb_sorted_array_tIK12LangTagRangeE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit: ; preds = %bb.kb, %bb.kg
  %.0152.i = phi i32 [ %.2.i, %bb.kg ], [ 162, %bb.kb ] ; 2 uses
  %.0161.i = phi i32 [ %.218.i, %bb.kg ], [ 0, %bb.kb ] ; 3 uses
  %i.ahr = sub nuw i32 %.0152.i, %.0161.i
  %i.ahs = lshr i32 %i.ahr, 1
  %i.aht = add i32 %i.ahs, %.0161.i               ; 3 uses
  %i.ahu = zext i32 %i.aht to i64
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr @_ZL21ot_languages3_blocked, i64 %i.ahu
  %i.ahw = load i32, ptr %i.ahv, align 4, !tbaa !139 ; 2 uses
  %i.ahx = icmp ult i32 %.019.i, %i.ahw
  br i1 %i.ahx, label %bb.kg, label %bb.ke

bb.ke:                                            ; preds = %_ZNK17hb_sorted_array_tIK12LangTagRangeE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit
  %i.ahy = icmp ugt i32 %.019.i, %i.ahw
  br i1 %i.ahy, label %bb.kf, label %.critedge106

bb.kf:                                            ; preds = %bb.ke
  %i.ahz = add i32 %i.aht, 1
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kf, %_ZNK17hb_sorted_array_tIK12LangTagRangeE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit
  %.218.i = phi i32 [ %.0161.i, %_ZNK17hb_sorted_array_tIK12LangTagRangeE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit ], [ %i.ahz, %bb.kf ] ; 2 uses
  %.2.i = phi i32 [ %i.aht, %_ZNK17hb_sorted_array_tIK12LangTagRangeE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit ], [ %.0152.i, %bb.kf ] ; 2 uses
  %i.aia = icmp ult i32 %.218.i, %.2.i
  br i1 %i.aia, label %_ZNK17hb_sorted_array_tIK12LangTagRangeE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit, label %_ZL9bfind_tagPKjjj.exit, !llvm.loop !2319

_ZL9bfind_tagPKjjj.exit:                          ; preds = %bb.kg
  %i.aib = and i32 %.019.i, -538976257
  store i32 %i.aib, ptr %3, align 4, !tbaa !139
  br label %.critedge106

_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit: ; preds = %bb.jm, %hb_tag_from_string.exit.thread, %hb_tag_from_string.exit
  br i1 %.not, label %bb.ki, label %bb.kh

bb.kh:                                            ; preds = %_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit
  %i.aic = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.181) #68
  %i.aid = getelementptr inbounds nuw i8, ptr %.181, i64 %i.aic
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit
  %.079 = phi ptr [ %i.acy, %_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit ], [ %i.aid, %bb.kh ]
  %i.aie = ptrtoint ptr %.079 to i64
  %i.aif = sub i64 %i.aie, %.pre-phi
  %i.aig = icmp eq i64 %i.aif, 3
  br i1 %i.aig, label %bb.kj, label %.critedge106

bb.kj:                                            ; preds = %bb.ki
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.aih = load i8, ptr %.181, align 1, !tbaa !61 ; 2 uses
  %.not.i142 = icmp eq i8 %i.aih, 0
  br i1 %.not.i142, label %hb_tag_from_string.exit154, label %.preheader.1

.preheader.1:                                     ; preds = %bb.kj
  store i8 %i.aih, ptr %i.a, align 1, !tbaa !61
  %i.aii = getelementptr inbounds nuw i8, ptr %.181, i64 1
  %i.aij = load i8, ptr %i.aii, align 1, !tbaa !61 ; 2 uses
  %.not23.i144.1 = icmp eq i8 %i.aij, 0
  br i1 %.not23.i144.1, label %.lr.ph.preheader.i150, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.aik = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.aij, ptr %i.aik, align 1, !tbaa !61
  %i.ail = getelementptr inbounds nuw i8, ptr %.181, i64 2
  %i.aim = load i8, ptr %i.ail, align 1, !tbaa !61 ; 2 uses
  %.not23.i144.2 = icmp eq i8 %i.aim, 0
  br i1 %.not23.i144.2, label %.lr.ph.preheader.i150, label %.lr.ph.preheader.i150.loopexit

.lr.ph.preheader.i150.loopexit:                   ; preds = %.preheader.2
  %i.ain = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.aim, ptr %i.ain, align 1, !tbaa !61
  br label %.lr.ph.preheader.i150

.lr.ph.preheader.i150:                            ; preds = %.preheader.1, %.preheader.2, %.lr.ph.preheader.i150.loopexit
  %.0.lcssa.i148230 = phi i32 [ 3, %.lr.ph.preheader.i150.loopexit ], [ 2, %.preheader.2 ], [ 1, %.preheader.1 ] ; 2 uses
  %i.aio = zext nneg i32 %.0.lcssa.i148230 to i64
  %scevgep.i151 = getelementptr nuw i8, ptr %i.a, i64 %i.aio
  %narrow.i152 = sub nuw nsw i32 4, %.0.lcssa.i148230
  %i.aip = zext nneg i32 %narrow.i152 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i151, i8 32, i64 %i.aip, i1 false), !tbaa !61
  %i.aiq = load i8, ptr %i.a, align 1, !tbaa !61
  %i.air = zext i8 %i.aiq to i32
  %i.ais = shl nuw i32 %i.air, 24
  %i.ait = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.aiu = load i8, ptr %i.ait, align 1, !tbaa !61
  %i.aiv = zext i8 %i.aiu to i32
  %i.aiw = shl nuw nsw i32 %i.aiv, 16
  %i.aix = or disjoint i32 %i.aiw, %i.ais
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.aiz = load i8, ptr %i.aiy, align 1, !tbaa !61
  %i.aja = zext i8 %i.aiz to i32
  %i.ajb = shl nuw nsw i32 %i.aja, 8
  %i.ajc = or disjoint i32 %i.aix, %i.ajb
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.aje = load i8, ptr %i.ajd, align 1, !tbaa !61
  %i.ajf = zext i8 %i.aje to i32
  %.masked = and i32 %i.ajc, -538976512
  %i.ajg = or disjoint i32 %.masked, %i.ajf
  br label %hb_tag_from_string.exit154

hb_tag_from_string.exit154:                       ; preds = %bb.kj, %.lr.ph.preheader.i150
  %.019.i141 = phi i32 [ %i.ajg, %.lr.ph.preheader.i150 ], [ 0, %bb.kj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  store i32 %.019.i141, ptr %3, align 4, !tbaa !139
  br label %.critedge106

.critedge106:                                     ; preds = %bb.ke, %bb.kc, %bb.ki, %.critedge9, %.critedge11.loopexit.split.loop.exit, %bb.jw, %.critedge7, %.critedge3, %.critedge5.loopexit, %bb.ir, %bb.ip, %.preheader1643.1.i, %.preheader1643.preheader.i, %bb.in, %bb.il, %bb.ik, %bb.ij, %bb.ig, %bb.if, %bb.ie, %.preheader1644.i, %bb.id, %bb.ia, %bb.hx, %bb.hv, %.preheader1641.1.i, %.preheader1641.preheader.i, %bb.ht, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %.preheader1642.i, %bb.hn, %bb.hk, %bb.hi, %.preheader1639.1.i, %.preheader1639.preheader.i, %bb.hg, %bb.he, %bb.hd, %bb.hc, %bb.hb, %.preheader1640.i, %bb.ha, %_ZL14subtag_matchesPKcS0_S0_j.exit1249.1.i, %_ZL14subtag_matchesPKcS0_S0_j.exit1249.i, %_ZL14subtag_matchesPKcS0_S0_j.exit1249.preheader.preheader.i, %bb.gw, %bb.gu, %bb.gt, %bb.gr, %.preheader1637.1.i, %.preheader1637.preheader.i, %bb.gp, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %.preheader1638.i, %bb.gj, %bb.gg, %bb.ge, %bb.gc, %.preheader1635.1.i, %.preheader1635.preheader.i, %bb.ga, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %.preheader1636.i, %bb.fu, %bb.fr, %bb.fp, %.preheader1633.1.i, %.preheader1633.preheader.i, %bb.fn, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %.preheader1634.i, %bb.fg, %bb.fd, %bb.fb, %bb.ez, %.preheader1632.1.i, %.preheader1632.preheader.i, %bb.ex, %bb.ev, %.preheader1628.1.i, %.preheader1628.preheader.i, %bb.et, %bb.er, %bb.ep, %.preheader1627.1.i, %.preheader1627.preheader.i, %bb.en, %bb.el, %bb.ej, %.preheader1626.1.i, %.preheader1626.preheader.i, %bb.eh, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %.preheader1629.i, %bb.dx, %bb.dw, %bb.dv, %.preheader1630.i, %bb.du, %bb.dt, %bb.ds, %.preheader1631.i, %bb.dr, %bb.do, %bb.dm, %.preheader1624.1.i, %.preheader1624.preheader.i, %bb.dk, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %.preheader1625.i, %bb.dd, %bb.da, %bb.cy, %.preheader1615.1.i, %.preheader1615.preheader.i, %bb.cw, %bb.cu, %bb.cs, %.preheader1614.1.i, %.preheader1614.preheader.i, %bb.cq, %bb.co, %bb.cm, %.preheader1613.1.i, %.preheader1613.preheader.i, %bb.ck, %bb.ci, %bb.cg, %.preheader1612.1.i, %.preheader1612.preheader.i, %bb.ce, %bb.cc, %bb.ca, %.preheader1611.1.i, %.preheader1611.preheader.i, %bb.by, %bb.bw, %bb.bu, %.preheader1610.1.i, %.preheader1610.preheader.i, %bb.bs, %bb.bq, %bb.bo, %.preheader1609.1.i, %.preheader1609.preheader.i, %bb.bm, %bb.bk, %bb.bi, %.preheader.1.i, %.preheader.preheader.i, %bb.bg, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %.preheader1616.i, %bb.am, %bb.al, %bb.ak, %.preheader1617.i, %bb.aj, %bb.ai, %bb.ah, %.preheader1618.i, %bb.ag, %bb.af, %bb.ae, %.preheader1619.i, %bb.ad, %bb.ac, %bb.ab, %.preheader1620.i, %bb.aa, %bb.z, %bb.y, %.preheader1621.i, %bb.x, %bb.w, %bb.v, %.preheader1622.i, %bb.u, %bb.t, %bb.s, %.preheader1623.i, %bb.r, %bb.o, %bb.l, %_ZL14subtag_matchesPKcS0_S0_j.exit, %_ZL14subtag_matchesPKcS0_S0_j.exit165, %_ZL14subtag_matchesPKcS0_S0_j.exit173, %_ZL14subtag_matchesPKcS0_S0_j.exit181, %_ZL14subtag_matchesPKcS0_S0_j.exit1058.i, %_ZL14subtag_matchesPKcS0_S0_j.exit1050.i, %_ZL14subtag_matchesPKcS0_S0_j.exit1042.i, %_ZL14subtag_matchesPKcS0_S0_j.exit.i, %_ZL9bfind_tagPKjjj.exit, %hb_tag_from_string.exit154
  %.078.lcssa.sink = phi i32 [ 1, %.preheader1643.1.i ], [ 0, %.critedge7 ], [ 0, %bb.ki ], [ 1, %_ZL9bfind_tagPKjjj.exit ], [ %.078.lcssa.ph, %.critedge5.loopexit ], [ %i.ahi, %bb.kc ], [ 1, %hb_tag_from_string.exit154 ], [ 1, %bb.l ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit165 ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit173 ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit181 ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit1058.i ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit1050.i ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit1042.i ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit.i ], [ 1, %bb.ir ], [ 1, %bb.ie ], [ 1, %bb.in ], [ 1, %bb.il ], [ 1, %bb.ik ], [ 1, %bb.ij ], [ 1, %bb.ig ], [ 1, %.preheader1641.1.i ], [ 1, %bb.id ], [ 1, %bb.ia ], [ 1, %bb.hx ], [ 1, %bb.ho ], [ 1, %bb.ht ], [ 1, %bb.hr ], [ 1, %bb.hq ], [ 1, %.preheader1639.1.i ], [ 1, %bb.hn ], [ 1, %bb.hk ], [ 1, %bb.hb ], [ 1, %bb.hg ], [ 1, %bb.he ], [ 1, %bb.hd ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit1249.i ], [ 1, %bb.ha ], [ 1, %.preheader1637.1.i ], [ 1, %bb.gw ], [ 1, %bb.gu ], [ 1, %bb.gt ], [ 1, %bb.gk ], [ 1, %bb.gp ], [ 1, %bb.gn ], [ 1, %bb.gm ], [ 1, %.preheader1635.1.i ], [ 1, %bb.gj ], [ 1, %bb.gg ], [ 1, %bb.ge ], [ 1, %bb.fv ], [ 1, %bb.ga ], [ 1, %bb.fy ], [ 1, %bb.fx ], [ 1, %.preheader1633.1.i ], [ 1, %bb.fu ], [ 1, %bb.fr ], [ 1, %bb.fh ], [ 1, %bb.fn ], [ 1, %bb.fl ], [ 1, %bb.fk ], [ 1, %bb.fj ], [ 1, %.preheader1632.1.i ], [ 1, %bb.fg ], [ 1, %bb.fd ], [ 1, %bb.fb ], [ 1, %.preheader1628.1.i ], [ 1, %bb.ex ], [ 1, %.preheader1627.1.i ], [ 1, %bb.et ], [ 1, %bb.er ], [ 1, %.preheader1626.1.i ], [ 1, %bb.en ], [ 1, %bb.el ], [ 1, %bb.dy ], [ 1, %bb.eh ], [ 1, %bb.ef ], [ 1, %bb.ee ], [ 1, %bb.ed ], [ 1, %bb.ec ], [ 1, %bb.eb ], [ 1, %bb.ea ], [ 1, %bb.dv ], [ 1, %bb.dx ], [ 1, %bb.ds ], [ 1, %bb.du ], [ 1, %.preheader1624.1.i ], [ 1, %bb.dr ], [ 1, %bb.do ], [ 1, %bb.de ], [ 1, %bb.dk ], [ 1, %bb.di ], [ 1, %bb.dh ], [ 1, %bb.dg ], [ 1, %.preheader1615.1.i ], [ 1, %bb.dd ], [ 1, %bb.da ], [ 1, %.preheader1614.1.i ], [ 1, %bb.cw ], [ 1, %bb.cu ], [ 1, %.preheader1613.1.i ], [ 1, %bb.cq ], [ 1, %bb.co ], [ 1, %.preheader1612.1.i ], [ 1, %bb.ck ], [ 1, %bb.ci ], [ 1, %.preheader1611.1.i ], [ 1, %bb.ce ], [ 1, %bb.cc ], [ 1, %.preheader1610.1.i ], [ 1, %bb.by ], [ 1, %bb.bw ], [ 1, %.preheader1609.1.i ], [ 1, %bb.bs ], [ 1, %bb.bq ], [ 1, %.preheader.1.i ], [ 1, %bb.bm ], [ 1, %bb.bk ], [ 1, %bb.an ], [ 1, %bb.bg ], [ 1, %bb.be ], [ 1, %bb.bd ], [ 1, %bb.bc ], [ 1, %bb.bb ], [ 1, %bb.ba ], [ 1, %bb.az ], [ 1, %bb.ay ], [ 1, %bb.ax ], [ 1, %bb.aw ], [ 1, %bb.av ], [ 1, %bb.au ], [ 1, %bb.at ], [ 1, %bb.as ], [ 1, %bb.ar ], [ 1, %bb.aq ], [ 1, %bb.ap ], [ 1, %bb.ak ], [ 1, %bb.am ], [ 1, %bb.ah ], [ 1, %bb.aj ], [ 1, %bb.ae ], [ 1, %bb.ag ], [ 1, %bb.ab ], [ 1, %bb.ad ], [ 1, %bb.y ], [ 1, %bb.aa ], [ 1, %bb.v ], [ 1, %bb.x ], [ 1, %bb.s ], [ 1, %bb.u ], [ 1, %bb.o ], [ 1, %bb.r ], [ 2, %bb.t ], [ 0, %.preheader1623.i ], [ 2, %bb.w ], [ 0, %.preheader1622.i ], [ 2, %bb.z ], [ 0, %.preheader1621.i ], [ 2, %bb.ac ], [ 0, %.preheader1620.i ], [ 2, %bb.af ], [ 0, %.preheader1619.i ], [ 2, %bb.ai ], [ 0, %.preheader1618.i ], [ 2, %bb.al ], [ 0, %.preheader1617.i ], [ 2, %bb.ao ], [ 0, %.preheader1616.i ], [ 2, %bb.bi ], [ 0, %.preheader.preheader.i ], [ 2, %bb.bo ], [ 0, %.preheader1609.preheader.i ], [ 2, %bb.bu ], [ 0, %.preheader1610.preheader.i ], [ 2, %bb.ca ], [ 0, %.preheader1611.preheader.i ], [ 2, %bb.cg ], [ 0, %.preheader1612.preheader.i ], [ 2, %bb.cm ], [ 0, %.preheader1613.preheader.i ], [ 2, %bb.cs ], [ 0, %.preheader1614.preheader.i ], [ 2, %bb.cy ], [ 0, %.preheader1615.preheader.i ], [ 2, %bb.df ], [ 0, %.preheader1625.i ], [ 2, %bb.dm ], [ 0, %.preheader1624.preheader.i ], [ 2, %bb.dt ], [ 0, %.preheader1631.i ], [ 2, %bb.dw ], [ 0, %.preheader1630.i ], [ 2, %bb.dz ], [ 0, %.preheader1629.i ], [ 2, %bb.ej ], [ 0, %.preheader1626.preheader.i ], [ 2, %bb.ep ], [ 0, %.preheader1627.preheader.i ], [ 2, %bb.ev ], [ 0, %.preheader1628.preheader.i ], [ 2, %bb.ez ], [ 0, %.preheader1632.preheader.i ], [ 2, %bb.fi ], [ 0, %.preheader1634.i ], [ 2, %bb.fp ], [ 0, %.preheader1633.preheader.i ], [ 2, %bb.fw ], [ 0, %.preheader1636.i ], [ 2, %bb.gc ], [ 0, %.preheader1635.preheader.i ], [ 2, %bb.gl ], [ 0, %.preheader1638.i ], [ 2, %bb.gr ], [ 0, %.preheader1637.preheader.i ], [ 2, %_ZL14subtag_matchesPKcS0_S0_j.exit1249.1.i ], [ 0, %_ZL14subtag_matchesPKcS0_S0_j.exit1249.preheader.preheader.i ], [ 2, %bb.hc ], [ 0, %.preheader1640.i ], [ 2, %bb.hi ], [ 0, %.preheader1639.preheader.i ], [ 2, %bb.hp ], [ 0, %.preheader1642.i ], [ 2, %bb.hv ], [ 0, %.preheader1641.preheader.i ], [ 2, %bb.if ], [ 0, %.preheader1644.i ], [ 2, %bb.ip ], [ 0, %.preheader1643.preheader.i ], [ 0, %.critedge3 ], [ 1, %bb.jw ], [ 0, %.critedge9 ], [ %indvars.le, %.critedge11.loopexit.split.loop.exit ], [ 0, %bb.ke ]
  store i32 %.078.lcssa.sink, ptr %2, align 4, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @hb_ot_tag_to_language(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  %i.b = alloca [64 x i8], align 16               ; 7 uses
  %i.c = alloca [64 x i8], align 16               ; 6 uses
  %i.d = alloca [20 x i8], align 16               ; 12 uses
  %i.e = icmp eq i32 %0, 1684434036
  br i1 %i.e, label %hb_language_from_string.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %0, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader [
    i32 1095521312, label %bb.c
    i32 1095782472, label %bb.d
    i32 1095912224, label %bb.e
    i32 1096042528, label %bb.f
    i32 1111642656, label %bb.g
    i32 1112099616, label %bb.h
    i32 1112820512, label %bb.i
    i32 1129336864, label %bb.j
    i32 1129468448, label %bb.k
    i32 1145524768, label %bb.l
    i32 1145981728, label %bb.m
    i32 1146243360, label %bb.n
    i32 1196379680, label %bb.o
    i32 1213022496, label %bb.p
    i32 1213025824, label %bb.q
    i32 1213088800, label %bb.r
    i32 1213809952, label %bb.s
    i32 1229078816, label %bb.t
    i32 1229606688, label %bb.u
    i32 1230000200, label %bb.v
    i32 1230132256, label %bb.w
    i32 1246316832, label %bb.x
    i32 1262570528, label %bb.y
    i32 1262961952, label %bb.z
    i32 1263487008, label %bb.aa
    i32 1263487776, label %bb.ab
    i32 1263553568, label %bb.ac
    i32 1263685152, label %bb.ad
    i32 1263880480, label %bb.ae
    i32 1280131360, label %bb.af
    i32 1280657440, label %bb.ag
    i32 1296127776, label %bb.ah
    i32 1296849184, label %bb.ai
    i32 1296976672, label %bb.aj
    i32 1297042464, label %bb.ak
    i32 1297043028, label %bb.al
    i32 1297698336, label %bb.am
    i32 1312901152, label %bb.an
    i32 1313428256, label %bb.ao
    i32 1313821216, label %bb.ap
    i32 1346851360, label %bb.aq
    i32 1347571488, label %bb.ar
    i32 1364543520, label %bb.as
    i32 1364609312, label %bb.at
    i32 1364674592, label %bb.au
    i32 1380010528, label %bb.av
    i32 1380928800, label %bb.aw
    i32 1380931872, label %bb.ax
    i32 1397178656, label %bb.ay
    i32 1397899808, label %bb.az
    i32 1398297632, label %bb.ba
    i32 1398362656, label %bb.bb
    i32 1398362693, label %bb.bc
    i32 1398362698, label %bb.bd
    i32 1398362702, label %bb.be
    i32 1414350880, label %bb.bf
    i32 1414480928, label %bb.bg
    i32 1464095776, label %bb.bh
    i32 1465470496, label %bb.bi
    i32 1514686496, label %bb.bj
    i32 1514689312, label %bb.bk
    i32 1514689568, label %bb.bl
    i32 1514689613, label %bb.bm
    i32 1515864352, label %bb.bn
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.295) ; 2 uses
  %.not11.i.i = icmp eq ptr %i.f, null
  br i1 %.not11.i.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !48

bb.d:                                             ; preds = %bb.b
  %i.g = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.296) ; 2 uses
  %.not11.i1.i = icmp eq ptr %i.g, null
  br i1 %.not11.i1.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !48

bb.e:                                             ; preds = %bb.b
  %i.h = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.297) ; 2 uses
  %.not11.i4.i = icmp eq ptr %i.h, null
  br i1 %.not11.i4.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !48

bb.f:                                             ; preds = %bb.b
  %i.i = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.298) ; 2 uses
  %.not11.i7.i = icmp eq ptr %i.i, null
  br i1 %.not11.i7.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !48

bb.g:                                             ; preds = %bb.b
  %i.j = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.299) ; 2 uses
  %.not11.i10.i = icmp eq ptr %i.j, null
  br i1 %.not11.i10.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !48

bb.h:                                             ; preds = %bb.b
  %i.k = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.300) ; 2 uses
  %.not11.i13.i = icmp eq ptr %i.k, null
  br i1 %.not11.i13.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !48

bb.i:                                             ; preds = %bb.b
  %i.l = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.301) ; 2 uses
  %.not11.i16.i = icmp eq ptr %i.l, null
  br i1 %.not11.i16.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !48

bb.j:                                             ; preds = %bb.b
  %i.m = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.302) ; 2 uses
  %.not11.i19.i = icmp eq ptr %i.m, null
  br i1 %.not11.i19.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !48

bb.k:                                             ; preds = %bb.b
  %i.n = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.303) ; 2 uses
  %.not11.i22.i = icmp eq ptr %i.n, null
  br i1 %.not11.i22.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !48

bb.l:                                             ; preds = %bb.b
  %i.o = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.304) ; 2 uses
  %.not11.i25.i = icmp eq ptr %i.o, null
  br i1 %.not11.i25.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !48

bb.m:                                             ; preds = %bb.b
  %i.p = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.305) ; 2 uses
  %.not11.i28.i = icmp eq ptr %i.p, null
  br i1 %.not11.i28.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !48

bb.n:                                             ; preds = %bb.b
  %i.q = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.306) ; 2 uses
  %.not11.i31.i = icmp eq ptr %i.q, null
  br i1 %.not11.i31.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !48

bb.o:                                             ; preds = %bb.b
  %i.r = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.307) ; 2 uses
  %.not11.i34.i = icmp eq ptr %i.r, null
  br i1 %.not11.i34.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !48

bb.p:                                             ; preds = %bb.b
  %i.s = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.308) ; 2 uses
  %.not11.i37.i = icmp eq ptr %i.s, null
  br i1 %.not11.i37.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !48

bb.q:                                             ; preds = %bb.b
  %i.t = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.309) ; 2 uses
  %.not11.i40.i = icmp eq ptr %i.t, null
  br i1 %.not11.i40.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !48

bb.r:                                             ; preds = %bb.b
  %i.u = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.310) ; 2 uses
  %.not11.i43.i = icmp eq ptr %i.u, null
  br i1 %.not11.i43.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !48

bb.s:                                             ; preds = %bb.b
  %i.v = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.311) ; 2 uses
  %.not11.i46.i = icmp eq ptr %i.v, null
  br i1 %.not11.i46.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !48

bb.t:                                             ; preds = %bb.b
  %i.w = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.312) ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN11hb_buffer_t14reverse_groupsIFbRK15hb_glyph_info_tS3_EEEvRKT_b:bb.a
  %.0.in17.i10.i.i = phi i32 [ %.sroa.speculated.i5.i.i, %.lr.ph.preheader.i6.i.i ], [ %.0.i11.i.i, %.lr.ph.i8.i.i ]
  %.0.i11.i.i = add i32 %.0.in17.i10.i.i, -1      ; 2 uses
  %i.cs = zext i32 %.0.i11.i.i to i64
  %i.ct = getelementptr inbounds nuw [20 x i8], ptr %i.co, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw [20 x i8], ptr %i.co, i64 %indvars.iv.i9.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.ct, i64 20, i1 false), !tbaa.struct !528
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ct, ptr noundef nonnull align 4 dereferenceable(20) %i.cu, i64 20, i1 false), !tbaa.struct !528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cu, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !528
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %indvars.iv.next.i12.i.i = add nuw nsw i64 %indvars.iv.i9.i.i, 1 ; 2 uses
  %i.cv = icmp eq i64 %indvars.iv.next.i12.i.i, %zext1.i
  br i1 %i.cv, label %_ZN11hb_buffer_t7reverseEv.exit, label %.lr.ph.i8.i.i, !llvm.loop !643

_ZN11hb_buffer_t7reverseEv.exit:                  ; preds = %.lr.ph.i8.i.i, %bb.a, %bb.u, %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZL10free_langsv() #16 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.a = load atomic ptr, ptr @_ZL5langs acquire, align 8 ; 3 uses
  %i.b = cmpxchg weak ptr @_ZL5langs, ptr %i.a, ptr null acq_rel monotonic, align 8
  %i.c = extractvalue { ptr, i1 } %i.b, 1
  br i1 %i.c, label %.preheader, label %bb.b, !prof !49

.preheader:                                       ; preds = %bb.b
  %.not8 = icmp eq ptr %i.a, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.09 = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %.preheader ] ; 3 uses
  %i.d = load ptr, ptr %.09, align 8, !tbaa !777  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.09, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !722
  tail call void @free(ptr noundef %i.f) #63
  tail call void @free(ptr noundef nonnull %.09) #63
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2786

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZL9parse_tagPPKcS0_Pj(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #24 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = alloca [4 x i8], align 4                 ; 8 uses
  %.promoted.i = load ptr, ptr %0, align 8, !tbaa !574 ; 3 uses
  %i.c = icmp ult ptr %.promoted.i, %1
  br i1 %i.c, label %.lr.ph.i, label %_ZL11parse_spacePPKcS0_.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.f, %bb.b ], [ %.promoted.i, %bb.a ] ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !61
  switch i8 %i.e, label %_ZL11parse_spacePPKcS0_.exit [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 11, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 4 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !574
  %exitcond.not.i = icmp eq ptr %i.f, %1
  br i1 %exitcond.not.i, label %_ZL11parse_spacePPKcS0_.exit, label %.lr.ph.i, !llvm.loop !784

_ZL11parse_spacePPKcS0_.exit:                     ; preds = %.lr.ph.i, %bb.b, %bb.a
  %i.g = phi ptr [ %.promoted.i, %bb.a ], [ %i.d, %.lr.ph.i ], [ %i.f, %bb.b ] ; 5 uses
  %i.h = icmp ult ptr %i.g, %1
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZL11parse_spacePPKcS0_.exit
  %i.i = load i8, ptr %i.g, align 1, !tbaa !61    ; 2 uses
  switch i8 %i.i, label %bb.e [
    i8 39, label %bb.d
    i8 34, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !574
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %_ZL11parse_spacePPKcS0_.exit
  %i.k = phi ptr [ %i.j, %bb.d ], [ %i.g, %bb.c ], [ %i.g, %_ZL11parse_spacePPKcS0_.exit ] ; 13 uses
  %.0 = phi i8 [ %i.i, %bb.d ], [ 0, %bb.c ], [ 0, %_ZL11parse_spacePPKcS0_.exit ] ; 3 uses
  %i.l = icmp ult ptr %i.k, %1
  br i1 %i.l, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.m = ptrtoaddr ptr %i.k to i64
  %i.n = sub i64 %i.a, %i.m
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.n
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %i.o = phi ptr [ %i.q, %bb.g ], [ %i.k, %.lr.ph.preheader ] ; 6 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !61    ; 2 uses
  switch i8 %i.p, label %bb.f [
    i8 32, label %.critedge
    i8 61, label %.critedge
    i8 91, label %.critedge
  ]

bb.f:                                             ; preds = %.lr.ph
  %.not44 = icmp eq i8 %i.p, %.0
  br i1 %.not44, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 3 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !574
  %exitcond.not = icmp eq ptr %i.q, %1
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !2787

.critedge:                                        ; preds = %bb.f, %bb.g, %.lr.ph, %.lr.ph, %.lr.ph, %bb.e
  %.lcssa = phi ptr [ %i.k, %bb.e ], [ %i.o, %.lr.ph ], [ %i.o, %.lr.ph ], [ %i.o, %.lr.ph ], [ %scevgep, %bb.g ], [ %i.o, %bb.f ] ; 5 uses
  %i.r = icmp eq ptr %i.k, %.lcssa
  br i1 %i.r, label %bb.v, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.s = ptrtoint ptr %.lcssa to i64
  %i.t = ptrtoint ptr %i.k to i64
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp sgt i64 %i.u, 4
  br i1 %i.v, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = trunc i64 %i.u to i32                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  %i.x = icmp ne ptr %i.k, null
  %i.y = icmp ne i32 %i.w, 0
  %or.cond.i = and i1 %i.x, %i.y
  br i1 %or.cond.i, label %bb.j, label %hb_tag_from_string.exit

bb.j:                                             ; preds = %bb.i
  %i.z = load i8, ptr %i.k, align 1, !tbaa !61
  %.not.i = icmp eq i8 %i.z, 0
  br i1 %.not.i, label %hb_tag_from_string.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.w, i32 4) ; 4 uses
  %i.aa = load i8, ptr %i.k, align 1, !tbaa !61   ; 2 uses
  %.not23.i = icmp eq i8 %i.aa, 0
  br i1 %.not23.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 %i.aa, ptr %i.b, align 4, !tbaa !61
  %exitcond.not.i48 = icmp eq i32 %i.w, 1
  br i1 %exitcond.not.i48, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !61  ; 2 uses
  %.not23.i.1 = icmp eq i8 %i.ac, 0
  br i1 %.not23.i.1, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !61
  %exitcond.not.i48.1 = icmp eq i32 %i.w, 2
  br i1 %exitcond.not.i48.1, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !61  ; 2 uses
  %.not23.i.2 = icmp eq i8 %i.af, 0
  br i1 %.not23.i.2, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.af, ptr %i.ag, align 2, !tbaa !61
  %exitcond.not.i48.2 = icmp eq i32 %i.w, 3
  br i1 %exitcond.not.i48.2, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !61  ; 2 uses
  %.not23.i.3 = icmp eq i8 %i.ai, 0
  br i1 %.not23.i.3, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !61
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.l, %bb.n, %bb.p, %bb.r, %bb.k, %bb.m, %bb.o, %bb.q
  %.0.lcssa.i = phi i32 [ 3, %bb.q ], [ 0, %bb.k ], [ 1, %bb.m ], [ 2, %bb.o ], [ %spec.store.select.i, %bb.r ], [ %spec.store.select.i, %bb.p ], [ %spec.store.select.i, %bb.n ], [ %spec.store.select.i, %bb.l ] ; 3 uses
  %i.ak = icmp ult i32 %.0.lcssa.i, 4
  br i1 %i.ak, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.critedge.i
  %i.al = zext nneg i32 %.0.lcssa.i to i64
  %scevgep.i = getelementptr nuw i8, ptr %i.b, i64 %i.al
  %narrow.i = sub nuw nsw i32 4, %.0.lcssa.i
  %i.am = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %scevgep.i, i8 32, i64 %i.am, i1 false), !tbaa !61
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %.critedge.i
  %i.an = load i32, ptr %i.b, align 4
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an)
  br label %hb_tag_from_string.exit

hb_tag_from_string.exit:                          ; preds = %bb.i, %bb.j, %._crit_edge.i
  %.019.i = phi i32 [ %i.ao, %._crit_edge.i ], [ 0, %bb.j ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  store i32 %.019.i, ptr %2, align 4, !tbaa !139
  %.not45 = icmp eq i8 %.0, 0
  br i1 %.not45, label %bb.v, label %bb.s

bb.s:                                             ; preds = %hb_tag_from_string.exit
  %.not46 = icmp ne i64 %i.u, 4
  %i.ap = icmp eq ptr %.lcssa, %1
  %or.cond = or i1 %i.ap, %.not46
  br i1 %or.cond, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = load i8, ptr %.lcssa, align 1, !tbaa !61
  %.not47 = icmp eq i8 %i.aq, %.0
  br i1 %.not47, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 1
  store ptr %i.ar, ptr %0, align 8, !tbaa !574
  br label %bb.v

bb.v:                                             ; preds = %hb_tag_from_string.exit, %bb.u, %bb.t, %bb.s, %.critedge, %bb.h
  %.033 = phi i1 [ true, %hb_tag_from_string.exit ], [ false, %.critedge ], [ false, %bb.s ], [ false, %bb.h ], [ false, %bb.t ], [ true, %bb.u ]
  ret i1 %.033
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #30

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !199
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !820
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !809
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !204  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN15hb_draw_funcs_t12emit_move_toEPvR15hb_draw_state_tff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !807
  br label %_ZN15hb_draw_funcs_t12emit_move_toEPvR15hb_draw_state_tff.exit

_ZN15hb_draw_funcs_t12emit_move_toEPvR15hb_draw_state_tff.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ]
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2, float noundef %i.b, float noundef %i.d, ptr noundef %i.j) #63, !inline_history !2788
  store i32 1, ptr %2, align 4, !tbaa !197
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load <2 x float>, ptr %i.a, align 4, !tbaa !94
  store <2 x float> %i.l, ptr %i.k, align 4, !tbaa !94
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #30

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL15compare_entriesPKvS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !2789 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !2789 ; 2 uses
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %i.b, %i.d
  %i.f = select i1 %i.e, i32 -1, i32 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2791
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !57   ; 2 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !2791
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !57   ; 2 uses
  %.not20 = icmp eq i32 %i.k, %i.n
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult i32 %i.k, %i.n
  %i.p = select i1 %i.o, i32 -1, i32 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = load i32, ptr %0, align 8, !tbaa !2792
  %i.r = load i32, ptr %1, align 8, !tbaa !2792
  %i.s = tail call i32 @llvm.ucmp.i32.i32(i32 %i.q, i32 %i.r)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.p, %bb.d ], [ %i.s, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN22hb_serialize_context_tD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN22hb_serialize_context_t4finiEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store atomic i32 -57005, ptr %i.a monotonic, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.c)
  %i.e = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #63 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.c) #63
  store atomic ptr null, ptr %i.b monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EEEvPT_.exit.i.i

_ZL14hb_object_finiI12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EEEvPT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1011 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EED2Ev.exit, label %bb.c, !prof !48

bb.c:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EEEvPT_.exit.i.i
  tail call void @free(ptr noundef nonnull %i.g) #63
  br label %_ZN12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EED2Ev.exit

_ZN12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EED2Ev.exit: ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EEEvPT_.exit.i.i, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1018
  %i.j = add i32 %i.i, -1
  %spec.select.i.i.i = icmp ult i32 %i.j, -2
  br i1 %spec.select.i.i.i, label %bb.d, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EED2Ev.exit

bb.d:                                             ; preds = %_ZN12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.k, align 4, !tbaa !1017
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1020
  tail call void @free(ptr noundef %i.m) #63
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EED2Ev.exit

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EED2Ev.exit: ; preds = %_ZN12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EED2Ev.exit, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.n, align 8, !tbaa !2793
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %.val.i = load i32, ptr %i.p, align 4, !tbaa !2794 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not5.i.i.i = icmp eq i32 %.val.i, 0
  br i1 %.not5.i.i.i, label %_ZorI10hb_array_tIKPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tEE10hb_apply_tIRFvPvEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELSA_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSK_.exit.i, label %_ZNR9hb_iter_tI10hb_array_tIKPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tEERS7_EppEv.exit.i.i.preheader.i

_ZNR9hb_iter_tI10hb_array_tIKPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tEERS7_EppEv.exit.i.i.preheader.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EED2Ev.exit
  %.val1.i = load ptr, ptr %i.q, align 8, !tbaa !2795
  br label %_ZNR9hb_iter_tI10hb_array_tIKPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tEERS7_EppEv.exit.i.i.i

_ZNR9hb_iter_tI10hb_array_tIKPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tEERS7_EppEv.exit.i.i.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIKPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tEERS7_EppEv.exit.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIKPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tEERS7_EppEv.exit.i.i.preheader.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.s, %_ZNR9hb_iter_tI10hb_array_tIKPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tEERS7_EppEv.exit.i.i.i ], [ %.val1.i, %_ZNR9hb_iter_tI10hb_array_tIKPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tEERS7_EppEv.exit.i.i.preheader.i ] ; 2 uses
  %.sroa.4.06.i.i.i = phi i32 [ %i.r, %_ZNR9hb_iter_tI10hb_array_tIKPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tEERS7_EppEv.exit.i.i.i ], [ %.val.i, %_ZNR9hb_iter_tI10hb_array_tIKPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tEERS7_EppEv.exit.i.i.preheader.i ]
  %.val.i.i.i = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !2796
  tail call void @free(ptr noundef %.val.i.i.i) #63
  %i.r = add i32 %.sroa.4.06.i.i.i, -1            ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 8
  %.not.i.i.i1 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i1, label %_ZorI10hb_array_tIKPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tEE10hb_apply_tIRFvPvEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELSA_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSK_.exit.i, label %_ZNR9hb_iter_tI10hb_array_tIKPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tEERS7_EppEv.exit.i.i.i, !llvm.loop !2798

_ZorI10hb_array_tIKPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tEE10hb_apply_tIRFvPvEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELSA_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSK_.exit.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIKPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tEERS7_EppEv.exit.i.i.i, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EED2Ev.exit
  %i.t = load i32, ptr %i.o, align 8, !tbaa !2799
  %i.u = add i32 %i.t, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.u, -2
  br i1 %spec.select.i.i.i.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EED2Ev.exit

bb.e:                                             ; preds = %_ZorI10hb_array_tIKPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tEE10hb_apply_tIRFvPvEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELSA_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSK_.exit.i
  store i32 0, ptr %i.p, align 4, !tbaa !2794
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !2795
  tail call void @free(ptr noundef %i.v) #63
  br label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EED2Ev.exit

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EED2Ev.exit: ; preds = %_ZorI10hb_array_tIKPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tEE10hb_apply_tIRFvPvEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELSA_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSK_.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN22hb_serialize_context_t4finiEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
_ZNO9hb_iter_tI10hb_array_tIKPN22hb_serialize_context_t8object_tEERS4_EppEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNK2OT17hb_kern_machine_tINS_19KernSubTableFormat3INS_21KernAATSubTableHeaderEEEE4kernEP9hb_font_tP11hb_buffer_tjb:bb.a
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !92  ; 2 uses
  %.not.i.i.i = icmp ult i32 %i.cu, %i.dh
  %i.dn = zext i32 %i.cu to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dn
  %.0.i.i.i = select i1 %.not.i.i.i, ptr %i.do, ptr @_hb_NullPool, !prof !49
  %i.dp = load i8, ptr %.0.i.i.i, align 1, !tbaa !92 ; 2 uses
  %.not.i.i22.i = icmp ult i32 %i.cx, %i.dh
  %i.dq = zext i32 %i.cx to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dq
  %.0.i.i23.i = select i1 %.not.i.i22.i, ptr %i.dr, ptr @_hb_NullPool, !prof !49
  %i.ds = load i8, ptr %.0.i.i23.i, align 1, !tbaa !92 ; 2 uses
  %.not.i76 = icmp uge i8 %i.dp, %i.dk
  %i.dt = icmp uge i8 %i.ds, %i.dm
  %or.cond.i = select i1 %.not.i76, i1 true, i1 %i.dt, !prof !252
  br i1 %or.cond.i, label %_ZNK2OT19KernSubTableFormat3INS_21KernAATSubTableHeaderEE11get_kerningEjj.exit.thread, label %_ZNK2OT19KernSubTableFormat3INS_21KernAATSubTableHeaderEE11get_kerningEjj.exit, !prof !252

_ZNK2OT19KernSubTableFormat3INS_21KernAATSubTableHeaderEE11get_kerningEjj.exit: ; preds = %bb.j
  %i.du = zext i8 %i.dm to i32                    ; 2 uses
  %i.dv = zext i8 %i.ds to i32
  %i.dw = zext i8 %i.dk to i32
  %i.dx = zext i8 %i.dp to i32
  %i.dy = mul nuw nsw i32 %i.du, %i.dw
  %i.dz = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.2.8.insert.ext.i.i14.i
  %i.ea = mul nuw nsw i32 %i.dx, %i.du
  %i.eb = add nuw nsw i32 %i.ea, %i.dv            ; 2 uses
  %.not.i.i24.i = icmp samesign ult i32 %i.eb, %i.dy
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ec
  %.0.i.i25.i = select i1 %.not.i.i24.i, ptr %i.ed, ptr @_hb_NullPool, !prof !49
  %i.ee = load i8, ptr %.0.i.i25.i, align 1, !tbaa !92 ; 2 uses
  %.not.i.i26.i = icmp ult i8 %i.ee, %i.da
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.ef
  %.0.i.i27.i = select i1 %.not.i.i26.i, ptr %i.eg, ptr @_hb_NullPool, !prof !49
  %i.eh = load i16, ptr %.0.i.i27.i, align 1, !tbaa !62 ; 2 uses
  %i.ei = call noundef i16 @llvm.bswap.i16(i16 %i.eh) ; 3 uses
  %i.ej = sext i16 %i.ei to i32                   ; 2 uses
  %.not73 = icmp eq i16 %i.eh, 0
  br i1 %.not73, label %_ZNK2OT19KernSubTableFormat3INS_21KernAATSubTableHeaderEE11get_kerningEjj.exit.thread, label %bb.k, !prof !3346

bb.k:                                             ; preds = %_ZNK2OT19KernSubTableFormat3INS_21KernAATSubTableHeaderEE11get_kerningEjj.exit
  br i1 %i.bx, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  br i1 %4, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ek = load i64, ptr %i.ch, align 8, !tbaa !1328
  %i.el = sext i16 %i.ei to i64
  %i.em = mul nsw i64 %i.ek, %i.el
  %i.en = add nsw i64 %i.em, 32768
  %i.eo = lshr i64 %i.en, 16
  %i.ep = trunc i64 %i.eo to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0 = phi i32 [ %i.ep, %bb.m ], [ %i.ej, %bb.l ] ; 3 uses
  %i.eq = load i8, ptr %i.cf, align 8, !tbaa !3376, !range !220, !noundef !74
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.es = getelementptr inbounds nuw [20 x i8], ptr %i.cd, i64 %i.cv
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  store i32 %.0, ptr %i.et, align 4, !tbaa !591
  %i.eu = load i32, ptr %i.cg, align 8, !tbaa !1931
  %i.ev = or i32 %i.eu, 8
  store i32 %i.ev, ptr %i.cg, align 8, !tbaa !1931
  br label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.ew = ashr i32 %.0, 1                         ; 2 uses
  %i.ex = sub nsw i32 %.0, %i.ew                  ; 2 uses
  %i.ey = getelementptr inbounds nuw [20 x i8], ptr %i.cd, i64 %i.cj ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !534
  %i.fa = add nsw i32 %i.ez, %i.ew
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !534
  %i.fb = getelementptr inbounds nuw [20 x i8], ptr %i.cd, i64 %i.cv ; 3 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !534
  %i.fd = add nsw i32 %i.fc, %i.ex
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !534
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !590
  %i.fg = add nsw i32 %i.ff, %i.ex
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !590
  br label %bb.v

bb.q:                                             ; preds = %bb.k
  br i1 %4, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fh = load i64, ptr %i.ce, align 8, !tbaa !1327
  %i.fi = sext i16 %i.ei to i64
  %i.fj = mul nsw i64 %i.fh, %i.fi
  %i.fk = add nsw i64 %i.fj, 32768
  %i.fl = lshr i64 %i.fk, 16
  %i.fm = trunc i64 %i.fl to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1 = phi i32 [ %i.fm, %bb.r ], [ %i.ej, %bb.q ] ; 3 uses
  %i.fn = load i8, ptr %i.cf, align 8, !tbaa !3376, !range !220, !noundef !74
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fp = getelementptr inbounds nuw [20 x i8], ptr %i.cd, i64 %i.cv
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i32 %.1, ptr %i.fq, align 4, !tbaa !590
  %i.fr = load i32, ptr %i.cg, align 8, !tbaa !1931
  %i.fs = or i32 %i.fr, 8
  store i32 %i.fs, ptr %i.cg, align 8, !tbaa !1931
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ft = ashr i32 %.1, 1                         ; 2 uses
  %i.fu = sub nsw i32 %.1, %i.ft                  ; 2 uses
  %i.fv = getelementptr inbounds nuw [20 x i8], ptr %i.cd, i64 %i.cj
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !538
  %i.fy = add nsw i32 %i.fx, %i.ft
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !538
  %i.fz = getelementptr inbounds nuw [20 x i8], ptr %i.cd, i64 %i.cv ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !538
  %i.gc = add nsw i32 %i.gb, %i.fu
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !538
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 12 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !591
  %i.gf = add nsw i32 %i.ge, %i.fu
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !591
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.o, %bb.p
  %i.gg = add i32 %i.cs, 1
  call void @_ZN11hb_buffer_t15unsafe_to_breakEjj(ptr noundef nonnull align 8 dereferenceable(276) %2, i32 noundef %.07183, i32 noundef %i.gg)
  %.pre = load i32, ptr %i.bt, align 8, !tbaa !1927
  br label %_ZNK2OT19KernSubTableFormat3INS_21KernAATSubTableHeaderEE11get_kerningEjj.exit.thread

_ZNK2OT19KernSubTableFormat3INS_21KernAATSubTableHeaderEE11get_kerningEjj.exit.thread: ; preds = %bb.v, %_ZNK2OT19KernSubTableFormat3INS_21KernAATSubTableHeaderEE11get_kerningEjj.exit, %bb.j, %bb.i
  %.172 = phi i32 [ %i.cr, %bb.i ], [ %i.cs, %bb.j ], [ %i.cs, %_ZNK2OT19KernSubTableFormat3INS_21KernAATSubTableHeaderEE11get_kerningEjj.exit ], [ %.pre, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %.backedge

bb.w:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !62
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  switch i16 %i.b, label %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE13collect_classI8hb_set_tEEbPT_j.exit [
    i16 1, label %bb.b
    i16 2, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i16, ptr %i.c, align 1, !tbaa !62   ; 2 uses
  %.not.i = icmp eq i16 %i.d, 0
  br i1 %.not.i, label %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE13collect_classI8hb_set_tEEbPT_j.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = tail call noundef i16 @llvm.bswap.i16(i16 %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %wide.trip.count.i = zext i16 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i ] ; 4 uses
  %i.j = load i16, ptr %i.c, align 1, !tbaa !62
  %i.k = tail call noundef i16 @llvm.bswap.i16(i16 %i.j)
  %i.l = zext i16 %i.k to i64
  %.not.i.i = icmp samesign ult i64 %indvars.iv.i, %i.l
  br i1 %.not.i.i, label %bb.d, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i, !prof !49

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.i
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.m, %bb.d ], [ @_hb_NullPool, %bb.c ]
  %i.n = load i16, ptr %.0.i.i, align 1, !tbaa !62
  %i.o = tail call noundef i16 @llvm.bswap.i16(i16 %i.n)
  %i.p = zext i16 %i.o to i32
  %i.q = icmp eq i32 %2, %i.p
  br i1 %i.q, label %bb.e, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i
  %i.r = load i16, ptr %i.g, align 1, !tbaa !62
  %i.s = tail call noundef i16 @llvm.bswap.i16(i16 %i.r)
  %i.t = zext i16 %i.s to i32
  %i.u = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.v = add nuw nsw i32 %i.t, %i.u               ; 2 uses
  %i.w = load i8, ptr %i.i, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.g, !prof !48

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.h, i32 noundef %i.v)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.h, i32 noundef %i.v)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i: ; preds = %bb.g, %bb.f, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE13collect_classI8hb_set_tEEbPT_j.exit, label %bb.c, !llvm.loop !3396

bb.h:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.aa = load i16, ptr %i.y, align 1, !tbaa !62  ; 2 uses
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i64
  %.idx.i = mul nuw nsw i64 %i.ac, 6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i
  %.not16.i = icmp eq i16 %i.aa, 0
  br i1 %.not16.i, label %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE13collect_classI8hb_set_tEEbPT_j.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.i

bb.i:                                             ; preds = %.critedge.i, %.lr.ph.i5
  %.01317.i = phi ptr [ %i.z, %.lr.ph.i5 ], [ %i.av, %.critedge.i ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01317.i, i64 4
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !62
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = zext i16 %i.ai to i32
  %i.ak = icmp eq i32 %2, %i.aj
  br i1 %i.ak, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.al = load i16, ptr %.01317.i, align 1, !tbaa !62
  %i.am = tail call noundef i16 @llvm.bswap.i16(i16 %i.al)
  %i.an = zext i16 %i.am to i32                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01317.i, i64 2
  %i.ap = load i16, ptr %i.ao, align 1, !tbaa !62
  %i.aq = tail call noundef i16 @llvm.bswap.i16(i16 %i.ap)
  %i.ar = zext i16 %i.aq to i32                   ; 2 uses
  %i.as = load i8, ptr %i.af, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i, !prof !48

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i: ; preds = %bb.j
  tail call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.ae, i32 noundef %i.an, i32 noundef %i.ar)
  br label %.critedge.i

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i: ; preds = %bb.j
  %i.au = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.ae, i32 noundef %i.an, i32 noundef %i.ar)
  br i1 %i.au, label %.critedge.i, label %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE13collect_classI8hb_set_tEEbPT_j.exit, !prof !3397

.critedge.i:                                      ; preds = %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i, %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.01317.i, i64 6 ; 2 uses
  %.not.i6 = icmp eq ptr %i.av, %i.ad
  br i1 %.not.i6, label %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE13collect_classI8hb_set_tEEbPT_j.exit, label %bb.i

_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE13collect_classI8hb_set_tEEbPT_j.exit: ; preds = %.critedge.i, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i, %bb.h, %bb.b, %bb.a
  %.0 = phi i1 [ true, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.h ], [ false, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i ], [ true, %.critedge.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2OT12LigCaretList14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS_18ItemVariationStoreEjPjPi(ptr noundef nonnull align 1 dereferenceable(6) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(12) %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !62     ; 2 uses
  %i.b = icmp eq i16 %i.a, 0
  %i.c = tail call i16 @llvm.bswap.i16(i16 %i.a)
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %.0.i.i = select i1 %i.b, ptr @_hb_NullPool, ptr %i.e, !prof !48
  %i.f = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, i32 noundef %3) ; 3 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %6, align 4, !tbaa !139
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = load i16, ptr %i.h, align 1, !tbaa !62
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  %i.k = zext i16 %i.j to i32
  %.not.i = icmp ult i32 %i.f, %i.k
  br i1 %.not.i, label %bb.e, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_8LigGlyphENS_7NumTypeILb1EtLj2EEEvLb1EEES4_EixEi.exit, !prof !49

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = zext nneg i32 %i.f to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.m
  br label %_ZNK2OT7ArrayOfINS_8OffsetToINS_8LigGlyphENS_7NumTypeILb1EtLj2EEEvLb1EEES4_EixEi.exit

_ZNK2OT7ArrayOfINS_8OffsetToINS_8LigGlyphENS_7NumTypeILb1EtLj2EEEvLb1EEES4_EixEi.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.n, %bb.e ], [ @_hb_NullPool, %bb.d ]
  %i.o = load i16, ptr %.0.i, align 1, !tbaa !62  ; 2 uses
  %i.p = icmp eq i16 %i.o, 0
  %i.q = tail call i16 @llvm.bswap.i16(i16 %i.o)
  %i.r = zext i16 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  %.0.i.i16 = select i1 %i.p, ptr @_hb_NullPool, ptr %i.s, !prof !48 ; 4 uses
  %i.t = icmp ne ptr %6, null
  %i.u = icmp ne ptr %7, null
  %or.cond.i = and i1 %i.t, %i.u
  %.pre60.i = load i16, ptr %.0.i.i16, align 1, !tbaa !62 ; 3 uses
  br i1 %or.cond.i, label %_ZNK10hb_array_tIKN2OT8OffsetToINS0_10CaretValueENS0_7NumTypeILb1EtLj2EEEvLb1EEEE9sub_arrayEjPj.exit.i, label %_ZNK2OT8LigGlyph14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS_18ItemVariationStoreEjPjPi.exit

_ZNK10hb_array_tIKN2OT8OffsetToINS0_10CaretValueENS0_7NumTypeILb1EtLj2EEEvLb1EEEE9sub_arrayEjPj.exit.i: ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_8LigGlyphENS_7NumTypeILb1EtLj2EEEvLb1EEES4_EixEi.exit
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %.pre60.i)
  %.sroa.545.8.extract.trunc.i = zext i16 %i.v to i32
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.545.8.extract.trunc.i, i32 %5)
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
end_hunk_5
begin_hunk_6_@_ZNK2OT21ChainContextFormat1_4INS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tE:bb.a
  store i32 -1, ptr %i.akd, align 8, !tbaa !2479
  br label %_ZN2OT27hb_collect_glyphs_context_t7recurseEj.exit.i.i

_ZN2OT27hb_collect_glyphs_context_t7recurseEj.exit.i.i: ; preds = %bb.eu, %bb.ge, %_ZN12hb_bit_set_t8page_forEjb.exit.i.i.i, %_ZN12hb_bit_set_t6resizeEjbb.exit.i.i, %bb.ew, %bb.ev, %_ZN12hb_bit_set_t8page_forEjb.exit.i18.i.i, %._crit_edge.i.i7.i.i, %bb.eo, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit.i.i.i, %.lr.ph.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK2OT9ChainRuleINS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tERNS_38ChainContextCollectGlyphsLookupContextE.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3416

_ZNK2OT9ChainRuleINS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tERNS_38ChainContextCollectGlyphsLookupContextE.exit.i.i: ; preds = %_ZN2OT27hb_collect_glyphs_context_t7recurseEj.exit.i.i, %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit34.i.i.i.i
  %i.ako = add i32 %.val47.i.i.i.i.i.i.i.i, -1    ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ako, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZNK4$_33clIRZNK2OT21ChainContextFormat1_4INS1_6Layout10SmallTypesEE14collect_glyphsEPNS1_27hb_collect_glyphs_context_tEEUlRKNS1_12ChainRuleSetIS4_EEE_JSB_EEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSE_DpOSH_.exit.i.i", label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i.i.i.i", !llvm.loop !3591

"_ZNK4$_33clIRZNK2OT21ChainContextFormat1_4INS1_6Layout10SmallTypesEE14collect_glyphsEPNS1_27hb_collect_glyphs_context_tEEUlRKNS1_12ChainRuleSetIS4_EEE_JSB_EEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSE_DpOSH_.exit.i.i": ; preds = %_ZNK2OT9ChainRuleINS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tERNS_38ChainContextCollectGlyphsLookupContextE.exit.i.i, %.lr.ph.i.i
  %i.akp = add i32 %.val116120.i.i, -1            ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %.not.i.i = icmp eq i32 %i.akp, 0
  br i1 %.not.i.i, label %"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_12ChainRuleSetINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_21ChainContextFormat1_4IS6_EEEL24hb_function_sortedness_t0ELPv0EE10hb_apply_tIZNKSI_14collect_glyphsEPNS2_27hb_collect_glyphs_context_tEEUlRKS7_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSX_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISX_Efp_EEEOSX_OS12_.exit", label %.lr.ph.i.i, !llvm.loop !3592

"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_12ChainRuleSetINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_21ChainContextFormat1_4IS6_EEEL24hb_function_sortedness_t0ELPv0EE10hb_apply_tIZNKSI_14collect_glyphsEPNS2_27hb_collect_glyphs_context_tEEUlRKS7_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSX_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISX_Efp_EEEOSX_OS12_.exit": ; preds = %"_ZNK4$_33clIRZNK2OT21ChainContextFormat1_4INS1_6Layout10SmallTypesEE14collect_glyphsEPNS1_27hb_collect_glyphs_context_tEEUlRKNS1_12ChainRuleSetIS4_EEE_JSB_EEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSE_DpOSH_.exit.i.i", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT21ChainContextFormat2_5INS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tE(ptr noundef nonnull align 1 dereferenceable(14) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !62   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3408
  %i.i = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common8Coverage16collect_coverageI8hb_set_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, ptr noundef %i.h) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i16, ptr %i.j, align 1, !tbaa !62   ; 2 uses
  %i.l = icmp eq i16 %i.k, 0
  %i.m = tail call i16 @llvm.bswap.i16(i16 %i.k)
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %.0.i.i14 = select i1 %i.l, ptr @_hb_NullPool, ptr %i.o, !prof !48 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.q = load i16, ptr %i.p, align 1, !tbaa !62   ; 2 uses
  %i.r = icmp eq i16 %i.q, 0
  %i.s = tail call i16 @llvm.bswap.i16(i16 %i.q)
  %i.t = zext i16 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %.0.i.i15 = select i1 %i.r, ptr @_hb_NullPool, ptr %i.u, !prof !48 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i16, ptr %i.v, align 1, !tbaa !62   ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  %i.y = tail call i16 @llvm.bswap.i16(i16 %i.w)
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  %.0.i.i16 = select i1 %i.x, ptr @_hb_NullPool, ptr %i.aa, !prof !48 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !62 ; 2 uses
  %.not119.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not119.i.i, label %"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_12ChainRuleSetINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_21ChainContextFormat2_5IS6_EEEL24hb_function_sortedness_t0ELPv0EE10hb_apply_tIZNKSI_14collect_glyphsEPNS2_27hb_collect_glyphs_context_tEEUlRKS7_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSX_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISX_Efp_EEEOSX_OS12_.exit", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.ad = tail call noundef i16 @llvm.bswap.i16(i16 %i.ac)
  %.sroa.434.8.extract.trunc = zext i16 %i.ad to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i14, i64 2 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i14, i64 4 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i14, i64 6
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i15, i64 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i15, i64 4 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i15, i64 6
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i16, i64 2 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i16, i64 4 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i16, i64 6
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %"_ZNK4$_33clIRZNK2OT21ChainContextFormat2_5INS1_6Layout10SmallTypesEE14collect_glyphsEPNS1_27hb_collect_glyphs_context_tEEUlRKNS1_12ChainRuleSetIS4_EEE_JSB_EEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSE_DpOSH_.exit.i.i"
  %.val116120.i.i = phi i32 [ %i.api, %"_ZNK4$_33clIRZNK2OT21ChainContextFormat2_5INS1_6Layout10SmallTypesEE14collect_glyphsEPNS1_27hb_collect_glyphs_context_tEEUlRKNS1_12ChainRuleSetIS4_EEE_JSB_EEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSE_DpOSH_.exit.i.i" ], [ %.sroa.434.8.extract.trunc, %.lr.ph.i.i.preheader ]
  %i.au = phi ptr [ %i.apj, %"_ZNK4$_33clIRZNK2OT21ChainContextFormat2_5INS1_6Layout10SmallTypesEE14collect_glyphsEPNS1_27hb_collect_glyphs_context_tEEUlRKNS1_12ChainRuleSetIS4_EEE_JSB_EEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSE_DpOSH_.exit.i.i" ], [ %i.ae, %.lr.ph.i.i.preheader ] ; 2 uses
  %.val1.i.i.i.i = load i16, ptr %i.au, align 1, !tbaa !62 ; 2 uses
  %i.av = icmp eq i16 %.val1.i.i.i.i, 0
  %i.aw = tail call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i)
  %i.ax = zext i16 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.av, ptr @_hb_NullPool, ptr %i.ay, !prof !48 ; 3 uses
  %i.az = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !62 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq i16 %i.az, 0
  br i1 %.not6.i.i.i.i.i.i.i.i, label %"_ZNK4$_33clIRZNK2OT21ChainContextFormat2_5INS1_6Layout10SmallTypesEE14collect_glyphsEPNS1_27hb_collect_glyphs_context_tEEUlRKNS1_12ChainRuleSetIS4_EEE_JSB_EEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSE_DpOSH_.exit.i.i", label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.preheader.i.i.i.i.i.i"

"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.preheader.i.i.i.i.i.i": ; preds = %.lr.ph.i.i
  %i.ba = tail call noundef i16 @llvm.bswap.i16(i16 %i.az)
  %.sroa.429.8.extract.trunc.i.i.i.i.i.i = zext i16 %i.ba to i32
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i.i.i.i"

"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i.i.i.i": ; preds = %_ZNK2OT9ChainRuleINS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tERNS_38ChainContextCollectGlyphsLookupContextE.exit.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.preheader.i.i.i.i.i.i"
  %.val47.i.i.i.i.i.i.i.i = phi i32 [ %i.aph, %_ZNK2OT9ChainRuleINS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tERNS_38ChainContextCollectGlyphsLookupContextE.exit.i.i ], [ %.sroa.429.8.extract.trunc.i.i.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.preheader.i.i.i.i.i.i" ]
  %.pn.i.i.i.i.i.i = phi ptr [ %i.bb, %_ZNK2OT9ChainRuleINS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tERNS_38ChainContextCollectGlyphsLookupContextE.exit.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.preheader.i.i.i.i.i.i" ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 2 ; 2 uses
  %.val1.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.bb, align 1, !tbaa !62 ; 2 uses
  %i.bc = icmp eq i16 %.val1.i.i.i.i.i.i.i.i.i.i, 0
  %i.bd = tail call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i.i.i.i.i.i.i)
  %i.be = zext i16 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.be
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bc, ptr @_hb_NullPool, ptr %i.bf, !prof !48 ; 3 uses
  %i.bg = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !62 ; 2 uses
  %i.bh = tail call noundef i16 @llvm.bswap.i16(i16 %i.bg) ; 2 uses
  %i.bi = zext i16 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2 ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 1, !tbaa !62 ; 2 uses
  %i.bn = tail call noundef i16 @llvm.bswap.i16(i16 %i.bm) ; 3 uses
  %i.bo = zext i16 %i.bn to i64
  %.not.i.i.i.i4.i.i = icmp eq i16 %i.bm, 0
  %i.bp = shl nuw nsw i64 %i.bo, 1
  %i.bq = select i1 %.not.i.i.i.i4.i.i, i64 2, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bq ; 3 uses
  %i.bs = load i16, ptr %i.br, align 1, !tbaa !62 ; 2 uses
  %i.bt = tail call noundef i16 @llvm.bswap.i16(i16 %i.bs) ; 2 uses
  %i.bu = zext i16 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.by = zext i16 %i.bn to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.ca = zext i16 %i.bt to i32
  %i.cb = load i16, ptr %i.bx, align 1, !tbaa !62 ; 2 uses
  %i.cc = tail call noundef i16 @llvm.bswap.i16(i16 %i.cb)
  %.not5.i.i.i.i.i.i.i = icmp eq i16 %i.bg, 0
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.preheader.i.i.i

_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.preheader.i.i.i: ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i.i.i.i"
  %i.cd = load ptr, ptr %i.af, align 8, !tbaa !3533 ; 10 uses
  %i.ce = zext i16 %i.bh to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 64 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 20 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 24 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 36 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 40 ; 8 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 52 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 48 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 56 ; 10 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 32 ; 4 uses
  br label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.preheader.i.i.i
  %.sroa.0.07.i.i.i.i.pn.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i.i.i, %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.preheader.i.i.i ]
  %.sroa.4.06.i.i.i.i.i.i.i = phi i32 [ %i.lp, %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit ], [ %i.ce, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.preheader.i.i.i ]
  %.sroa.0.07.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.pn.i.i.i, i64 2 ; 2 uses
  %.val.i.i.i.i.i.i.i = load i16, ptr %.sroa.0.07.i.i.i.i.i.i.i, align 1, !tbaa !62 ; 2 uses
  %i.cp = load i16, ptr %.0.i.i14, align 1, !tbaa !62
  %i.cq = tail call noundef i16 @llvm.bswap.i16(i16 %i.cp)
  switch i16 %i.cq, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit [
    i16 1, label %bb.b
    i16 2, label %bb.ay
  ]

bb.b:                                             ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.cr = load i16, ptr %i.am, align 1, !tbaa !62 ; 2 uses
  %.not.i.i119 = icmp eq i16 %i.cr, 0
  br i1 %.not.i.i119, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit, label %.lr.ph.i.i120

.lr.ph.i.i120:                                    ; preds = %bb.b
  %i.cs = tail call noundef i16 @llvm.bswap.i16(i16 %i.cr)
  %wide.trip.count.i.i = zext i16 %i.cs to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i, %.lr.ph.i.i120
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i120 ], [ %indvars.iv.next.i.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i ] ; 4 uses
  %i.ct = load i16, ptr %i.am, align 1, !tbaa !62
  %i.cu = tail call noundef i16 @llvm.bswap.i16(i16 %i.ct)
  %i.cv = zext i16 %i.cu to i64
  %.not.i.i.i121 = icmp samesign ult i64 %indvars.iv.i.i, %i.cv
  br i1 %.not.i.i.i121, label %bb.d, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i, !prof !49

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.i.i
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.cw, %bb.d ], [ @_hb_NullPool, %bb.c ]
  %i.cx = load i16, ptr %.0.i.i.i, align 1, !tbaa !62
  %i.cy = icmp eq i16 %.val.i.i.i.i.i.i.i, %i.cx
  br i1 %i.cy, label %bb.e, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i
  %i.cz = load i16, ptr %i.al, align 1, !tbaa !62
  %i.da = tail call noundef i16 @llvm.bswap.i16(i16 %i.cz)
  %i.db = zext i16 %i.da to i32
  %i.dc = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.dd = add nuw nsw i32 %i.db, %i.dc            ; 7 uses
  %i.de = load i8, ptr %i.cg, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.df = trunc nuw i8 %i.de to i1
  %i.dg = load i8, ptr %i.cf, align 8, !tbaa !413, !range !220, !noundef !74
  %i.dh = trunc nuw i8 %i.dg to i1                ; 2 uses
  br i1 %i.df, label %bb.f, label %bb.n, !prof !48

bb.f:                                             ; preds = %bb.e
  br i1 %i.dh, label %bb.g, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i, !prof !49

bb.g:                                             ; preds = %bb.f
  %i.di = lshr i32 %i.dd, 9                       ; 3 uses
  %i.dj = load atomic i32, ptr %i.ci monotonic, align 8 ; 2 uses
  %i.dk = load i32, ptr %i.cj, align 4, !tbaa !1699 ; 3 uses
  %i.dl = icmp ult i32 %i.dj, %i.dk
  %i.dm = load ptr, ptr %i.ck, align 8, !tbaa !416 ; 3 uses
  br i1 %i.dl, label %bb.h, label %._crit_edge.i.i164, !prof !49

bb.h:                                             ; preds = %bb.g
  %i.dn = zext i32 %i.dj to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !1700
  %.not.i.i179 = icmp eq i32 %i.dp, %i.di
  br i1 %.not.i.i179, label %_ZN12hb_bit_set_t8page_forEjb.exit.i175, label %._crit_edge.i.i164

._crit_edge.i.i164:                               ; preds = %bb.h, %bb.g
  %.not1.i.i.i.i.i.i165 = icmp sgt i32 %i.dk, 0
  br i1 %.not1.i.i.i.i.i.i165, label %.lr.ph.preheader.i.i.i.i.i.i166, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i166:                  ; preds = %._crit_edge.i.i164
  %i.dq = add nsw i32 %i.dk, -1
  br label %.lr.ph.i.i.i.i.i.i167

.lr.ph.i.i.i.i.i.i167:                            ; preds = %bb.l, %.lr.ph.preheader.i.i.i.i.i.i166
  %.0203.i.i.i.i.i.i168 = phi i32 [ %.2.i.i.i.i.i.i172, %bb.l ], [ %i.dq, %.lr.ph.preheader.i.i.i.i.i.i166 ] ; 2 uses
  %.0212.i.i.i.i.i.i169 = phi i32 [ %.223.i.i.i.i.i.i171, %bb.l ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i166 ] ; 2 uses
  %i.dr = add i32 %.0212.i.i.i.i.i.i169, %.0203.i.i.i.i.i.i168
  %i.ds = lshr i32 %i.dr, 1                       ; 4 uses
  %i.dt = zext nneg i32 %i.ds to i64              ; 2 uses
  %i.du = shl nuw nsw i64 %i.dt, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !1700 ; 2 uses
  %i.dx = icmp slt i32 %i.di, %i.dw
  br i1 %i.dx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i167
  %i.dy = add nsw i32 %i.ds, -1
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i167
  %.not28.i.i.i.i.i.i170 = icmp eq i32 %i.di, %i.dw
  br i1 %.not28.i.i.i.i.i.i170, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i174, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dz = add nuw nsw i32 %i.ds, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.223.i.i.i.i.i.i171 = phi i32 [ %i.dz, %bb.k ], [ %.0212.i.i.i.i.i.i169, %bb.i ] ; 2 uses
  %.2.i.i.i.i.i.i172 = phi i32 [ %.0203.i.i.i.i.i.i168, %bb.k ], [ %i.dy, %bb.i ] ; 2 uses
  %.not.not.i.i.i.i.i.i173 = icmp sgt i32 %.223.i.i.i.i.i.i171, %.2.i.i.i.i.i.i172
  br i1 %.not.not.i.i.i.i.i.i173, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i, label %.lr.ph.i.i.i.i.i.i167, !llvm.loop !2478

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i174: ; preds = %bb.j
  store atomic i32 %i.ds, ptr %i.ci monotonic, align 8
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i175

_ZN12hb_bit_set_t8page_forEjb.exit.i175:          ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i174, %bb.h
  %i.ea = phi i64 [ %i.dt, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i174 ], [ %i.dn, %bb.h ]
  %.sink.i.i177 = load ptr, ptr %i.cn, align 8, !tbaa !1702 ; 2 uses
  %.not.i178 = icmp eq ptr %.sink.i.i177, null
  br i1 %.not.i178, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i175
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !1705
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i177, i64 %i.ee ; 2 uses
  store i32 -1, ptr %i.ch, align 4, !tbaa !412
  %i.eg = and i32 %i.dd, 63
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = shl nuw i64 1, %i.eh
  %i.ej = xor i64 %i.ei, -1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.el = lshr i32 %i.dd, 6
  %i.em = and i32 %i.el, 7
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.en ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !1706
  %i.eq = and i64 %i.ep, %i.ej
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !1706
  store i32 -1, ptr %i.ef, align 8, !tbaa !2479
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i

bb.n:                                             ; preds = %bb.e
  %i.er = icmp ne i32 %i.dd, -1
  %or.cond.not.i = and i1 %i.er, %i.dh
  br i1 %or.cond.not.i, label %bb.o, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i, !prof !771

bb.o:                                             ; preds = %bb.n
  store i32 -1, ptr %i.ch, align 4, !tbaa !412
  %i.es = lshr i32 %i.dd, 9                       ; 4 uses
  %i.et = load atomic i32, ptr %i.ci monotonic, align 8 ; 2 uses
  %i.eu = load i32, ptr %i.cj, align 4, !tbaa !1699 ; 3 uses
  %i.ev = icmp ult i32 %i.et, %i.eu
  %i.ew = load ptr, ptr %i.ck, align 8, !tbaa !416 ; 3 uses
  br i1 %i.ev, label %bb.p, label %._crit_edge.i.i, !prof !49

bb.p:                                             ; preds = %bb.o
  %i.ex = zext i32 %i.et to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !1700
  %.not.i.i163 = icmp eq i32 %i.ez, %i.es
  br i1 %.not.i.i163, label %_ZN12hb_bit_set_t8page_forEjb.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.p, %bb.o
  %i.fa = load i32, ptr %i.cl, align 4, !tbaa !404 ; 5 uses
  %.not1.i.i.i.i.i.i = icmp sgt i32 %i.eu, 0
  br i1 %.not1.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i, label %.loopexit587

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %._crit_edge.i.i
  %i.fb = add nsw i32 %i.eu, -1
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.t, %.lr.ph.preheader.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i, %bb.t ], [ %i.fb, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i, %bb.t ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.fc = add i32 %.0212.i.i.i.i.i.i, %.0203.i.i.i.i.i.i
  %i.fd = lshr i32 %i.fc, 1                       ; 4 uses
  %i.fe = zext nneg i32 %i.fd to i64              ; 2 uses
  %i.ff = shl nuw nsw i64 %i.fe, 3
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !1700 ; 2 uses
  %i.fi = icmp slt i32 %i.es, %i.fh
  br i1 %i.fi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fj = add nsw i32 %i.fd, -1
  br label %bb.t

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i = icmp eq i32 %i.es, %i.fh
  br i1 %.not28.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fk = add nuw nsw i32 %i.fd, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.223.i.i.i.i.i.i = phi i32 [ %i.fk, %bb.s ], [ %.0212.i.i.i.i.i.i, %bb.q ] ; 3 uses
  %.2.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i, %bb.s ], [ %i.fj, %bb.q ] ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i, %.2.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i, label %.loopexit587, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2478

.loopexit587:                                     ; preds = %bb.t, %._crit_edge.i.i
  %storemerge.i.i.ph.sink.i.i.ph.i.i = phi i32 [ 0, %._crit_edge.i.i ], [ %.223.i.i.i.i.i.i, %bb.t ] ; 3 uses
  %i.fl = add i32 %i.fa, 1                        ; 14 uses
  %.not = icmp eq i32 %i.fa, -1
  %.pr = load i32, ptr %i.cm, align 8, !tbaa !417 ; 7 uses
  br i1 %.not, label %.thread852, label %bb.u

bb.u:                                             ; preds = %.loopexit587
  %i.fm = icmp ult i32 %.pr, %i.fl
  %i.fn = icmp ult i32 %i.fl, 3
  %or.cond.i = and i1 %i.fn, %i.fm                ; 2 uses
  %i.fo = icmp slt i32 %i.fl, 0
  %i.fp = icmp slt i32 %.pr, 0
  %or.cond = select i1 %i.fo, i1 true, i1 %i.fp, !prof !2890
  br i1 %or.cond, label %.critedge.i, label %bb.v, !prof !2890

.thread852:                                       ; preds = %.loopexit587
  %i.fq = icmp slt i32 %.pr, 0
  br i1 %i.fq, label %.critedge.i, label %.thread855, !prof !48

bb.v:                                             ; preds = %bb.u
  br i1 %or.cond.i, label %bb.w, label %.thread855

bb.w:                                             ; preds = %bb.v
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.fl, i32 %i.fa)
  br label %.thread.i308

.thread855:                                       ; preds = %.thread852, %bb.v
  %.not.i304 = icmp samesign ugt i32 %i.fl, %.pr
  br i1 %.not.i304, label %.preheader.i306, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit.thread, !prof !48

.preheader.i306:                                  ; preds = %.thread855, %.preheader.i306
  %.043.i307 = phi i32 [ %i.ft, %.preheader.i306 ], [ %.pr, %.thread855 ] ; 2 uses
  %i.fr = lshr i32 %.043.i307, 1
  %i.fs = add nuw i32 %.043.i307, 8
  %i.ft = add nuw i32 %i.fs, %i.fr                ; 3 uses
  %i.fu = icmp ugt i32 %i.fl, %i.ft
  br i1 %i.fu, label %.preheader.i306, label %.thread.i308, !llvm.loop !2891

.thread.i308:                                     ; preds = %.preheader.i306, %bb.w
  %.0.shrunk.i850854858 = phi i1 [ true, %bb.w ], [ false, %.preheader.i306 ] ; 3 uses
  %.138.i = phi i32 [ %.sroa.speculated.i, %bb.w ], [ %i.ft, %.preheader.i306 ] ; 5 uses
  %i.fv = icmp ugt i32 %.138.i, 59652323
  br i1 %i.fv, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit.thread516, label %bb.x, !prof !48

bb.x:                                             ; preds = %.thread.i308
end_hunk_6
begin_hunk_7_@_ZNK2OT21ChainContextFormat2_5INS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tE:bb.a
  store i32 0, ptr %i.jp, align 8, !tbaa !2479
  %i.jr = getelementptr inbounds nuw [72 x i8], ptr %i.jc, i64 %indvars.iv.i.i297 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 216
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jt, i8 0, i64 64, i1 false), !tbaa !1706
  store i32 0, ptr %i.js, align 8, !tbaa !2479
  %indvars.iv.next.i.i298.3 = add nuw nsw i64 %indvars.iv.i.i297, 4 ; 2 uses
  %exitcond.not.i.i299.3 = icmp eq i64 %indvars.iv.next.i.i298.3, %wide.trip.count.i.i296
  br i1 %exitcond.not.i.i299.3, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i, label %.lr.ph.i.i295.new, !llvm.loop !2897

_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i: ; preds = %.prol.loopexit1045, %.lr.ph.i.i295.new, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit459.thread
  store i32 %i.ic, ptr %i.cl, align 4, !tbaa !410
  br label %_ZN12hb_bit_set_t6resizeEjbb.exit

_ZN12hb_bit_set_t6resizeEjbb.exit:                ; preds = %bb.ak, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i, %.critedge.i, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit459.thread530
  store i8 0, ptr %i.cf, align 8, !tbaa !413
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i

bb.aw:                                            ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5allocEjb.exit.thread, %bb.ai, %bb.aj
  store i32 %i.fl, ptr %i.cj, align 4, !tbaa !411
  %i.ju = load ptr, ptr %i.cn, align 8, !tbaa !1702
  %i.jv = zext i32 %i.fa to i64                   ; 2 uses
  %i.jw = getelementptr inbounds nuw [72 x i8], ptr %i.ju, i64 %i.jv ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jx, i8 0, i64 64, i1 false), !tbaa !1706
  store i32 0, ptr %i.jw, align 8, !tbaa !2479
  %i.jy = load ptr, ptr %i.ck, align 8, !tbaa !1698
  %i.jz = zext nneg i32 %storemerge.i.i.ph.sink.i.i.ph.i.i to i64 ; 3 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.jz ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = sub i32 %i.fa, %storemerge.i.i.ph.sink.i.i.ph.i.i
  %i.kd = shl i32 %i.kc, 3
  %i.ke = zext i32 %i.kd to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kb, ptr align 4 %i.ka, i64 %i.ke, i1 false)
  %i.kf = load ptr, ptr %i.ck, align 8, !tbaa !1698
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.jz
  %.sroa.5.0.insert.shift.i.i = shl nuw i64 %i.jv, 32
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %i.es to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.5.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.kg, align 4
  %.pre20.i.i = load ptr, ptr %i.ck, align 8, !tbaa !1698
  br label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i: ; preds = %bb.r, %bb.aw
  %.pre-phi.i.i = phi i64 [ %i.jz, %bb.aw ], [ %i.fe, %bb.r ]
  %i.kh = phi ptr [ %.pre20.i.i, %bb.aw ], [ %i.ew, %bb.r ]
  %storemerge.i.i.ph.sink.i.i17.i.i = phi i32 [ %storemerge.i.i.ph.sink.i.i.ph.i.i, %bb.aw ], [ %i.fd, %bb.r ]
  store atomic i32 %storemerge.i.i.ph.sink.i.i17.i.i, ptr %i.ci monotonic, align 8
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %.pre-phi.i.i
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i

_ZN12hb_bit_set_t8page_forEjb.exit.i:             ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i, %bb.p
  %.sink30.i.i = phi ptr [ %i.ki, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i ], [ %i.ey, %bb.p ]
  %.sink.i.i = load ptr, ptr %i.cn, align 8, !tbaa !1702 ; 2 uses
  %.not.i = icmp eq ptr %.sink.i.i, null
  br i1 %.not.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i, label %bb.ax, !prof !2908

bb.ax:                                            ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i
  %i.kj = getelementptr inbounds nuw i8, ptr %.sink30.i.i, i64 4
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !1705
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i, i64 %i.kl ; 2 uses
  %i.kn = and i32 %i.dd, 63
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = shl nuw i64 1, %i.ko
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.kr = lshr i32 %i.dd, 6
  %i.ks = and i32 %i.kr, 7
  %i.kt = zext nneg i32 %i.ks to i64
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.kt ; 2 uses
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !1706
  %i.kw = or i64 %i.kv, %i.kp
  store i64 %i.kw, ptr %i.ku, align 8, !tbaa !1706
  store i32 -1, ptr %i.km, align 8, !tbaa !2479
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i: ; preds = %bb.l, %bb.ax, %_ZN12hb_bit_set_t8page_forEjb.exit.i, %bb.n, %_ZN12hb_bit_set_t6resizeEjbb.exit, %bb.m, %_ZN12hb_bit_set_t8page_forEjb.exit.i175, %._crit_edge.i.i164, %bb.f, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit, label %bb.c, !llvm.loop !3396

bb.ay:                                            ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.kx = load i16, ptr %i.al, align 1, !tbaa !62 ; 2 uses
  %i.ky = tail call noundef i16 @llvm.bswap.i16(i16 %i.kx)
  %i.kz = zext i16 %i.ky to i64
  %.idx.i.i = mul nuw nsw i64 %i.kz, 6
  %i.la = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i ; 2 uses
  %.not16.i.i = icmp eq i16 %i.kx, 0
  br i1 %.not16.i.i, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %bb.ay, %.lr.ph.i5.i.backedge
  %.01317.i.i = phi ptr [ %.01317.i.i.be, %.lr.ph.i5.i.backedge ], [ %i.am, %bb.ay ] ; 5 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.01317.i.i, i64 4
  %i.lc = load i16, ptr %i.lb, align 1, !tbaa !62
  %i.ld = icmp eq i16 %.val.i.i.i.i.i.i.i, %i.lc
  br i1 %i.ld, label %bb.az, label %.critedge.i.i

bb.az:                                            ; preds = %.lr.ph.i5.i
  %i.le = load i16, ptr %.01317.i.i, align 1, !tbaa !62
  %i.lf = tail call noundef i16 @llvm.bswap.i16(i16 %i.le)
  %i.lg = zext i16 %i.lf to i32                   ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.01317.i.i, i64 2
  %i.li = load i16, ptr %i.lh, align 1, !tbaa !62
  %i.lj = tail call noundef i16 @llvm.bswap.i16(i16 %i.li)
  %i.lk = zext i16 %i.lj to i32                   ; 2 uses
  %i.ll = load i8, ptr %i.cg, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i, !prof !48

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i: ; preds = %bb.az
  tail call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.cf, i32 noundef %i.lg, i32 noundef %i.lk)
  br label %.critedge.i.i

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i: ; preds = %bb.az
  %i.ln = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.cf, i32 noundef %i.lg, i32 noundef %i.lk)
  %i.lo = getelementptr inbounds nuw i8, ptr %.01317.i.i, i64 6 ; 2 uses
  %.not.i6.i = icmp ne ptr %i.lo, %i.la
  %or.cond.not = select i1 %i.ln, i1 %.not.i6.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i5.i.backedge, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit, !prof !3607

.critedge.i.i:                                    ; preds = %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i, %.lr.ph.i5.i
  %.old = getelementptr inbounds nuw i8, ptr %.01317.i.i, i64 6 ; 2 uses
  %.not.i6.i.old = icmp eq ptr %.old, %i.la
  br i1 %.not.i6.i.old, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit, label %.lr.ph.i5.i.backedge

.lr.ph.i5.i.backedge:                             ; preds = %.critedge.i.i, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i
  %.01317.i.i.be = phi ptr [ %i.lo, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i ], [ %.old, %.critedge.i.i ]
  br label %.lr.ph.i5.i

_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit: ; preds = %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i, %.critedge.i.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.i.i.i, %bb.b, %bb.ay
  %i.lp = add i32 %.sroa.4.06.i.i.i.i.i.i.i, -1   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.lp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.i.i.i, !llvm.loop !3415

_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit.i.i.i.i: ; preds = %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i.i.i.i"
  %.not5.i.i.i21.i.i.i.i = icmp ult i16 %i.bn, 2
  br i1 %.not5.i.i.i21.i.i.i.i, label %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit27.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.preheader.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.preheader.i.i.i.i: ; preds = %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit.i.i.i.i
  %i.lq = load ptr, ptr %i.g, align 8, !tbaa !3408 ; 10 uses
  %i.lr = add nsw i32 %i.by, -1
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 16 ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 64 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 20 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 24 ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lq, i64 36 ; 6 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lq, i64 40 ; 8 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lq, i64 52 ; 8 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lq, i64 48 ; 8 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lq, i64 56 ; 10 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lq, i64 32 ; 4 uses
  br label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.i.i.i.i: ; preds = %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.preheader.i.i.i.i
  %.sroa.0.07.i.i.i23.i.i.i.i = phi ptr [ %i.vd, %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141 ], [ %i.bz, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.preheader.i.i.i.i ] ; 2 uses
  %.sroa.4.06.i.i.i24.i.i.i.i = phi i32 [ %i.vc, %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141 ], [ %i.lr, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.preheader.i.i.i.i ]
  %.val.i.i.i25.i.i.i.i = load i16, ptr %.sroa.0.07.i.i.i23.i.i.i.i, align 1, !tbaa !62 ; 2 uses
  %i.mc = load i16, ptr %.0.i.i15, align 1, !tbaa !62
  %i.md = tail call noundef i16 @llvm.bswap.i16(i16 %i.mc)
  switch i16 %i.md, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141 [
    i16 1, label %bb.ba
    i16 2, label %bb.cx
  ]

bb.ba:                                            ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.me = load i16, ptr %i.ap, align 1, !tbaa !62 ; 2 uses
  %.not.i.i131 = icmp eq i16 %i.me, 0
  br i1 %.not.i.i131, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141, label %.lr.ph.i.i132

.lr.ph.i.i132:                                    ; preds = %bb.ba
  %i.mf = tail call noundef i16 @llvm.bswap.i16(i16 %i.me)
  %wide.trip.count.i.i133 = zext i16 %i.mf to i64
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138, %.lr.ph.i.i132
  %indvars.iv.i.i134 = phi i64 [ 0, %.lr.ph.i.i132 ], [ %indvars.iv.next.i.i139, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138 ] ; 4 uses
  %i.mg = load i16, ptr %i.ap, align 1, !tbaa !62
  %i.mh = tail call noundef i16 @llvm.bswap.i16(i16 %i.mg)
  %i.mi = zext i16 %i.mh to i64
  %.not.i.i.i135 = icmp samesign ult i64 %indvars.iv.i.i134, %i.mi
  br i1 %.not.i.i.i135, label %bb.bc, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i136, !prof !49

bb.bc:                                            ; preds = %bb.bb
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv.i.i134
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i136

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i136: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i137 = phi ptr [ %i.mj, %bb.bc ], [ @_hb_NullPool, %bb.bb ]
  %i.mk = load i16, ptr %.0.i.i.i137, align 1, !tbaa !62
  %i.ml = icmp eq i16 %.val.i.i.i25.i.i.i.i, %i.mk
  br i1 %i.ml, label %bb.bd, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138

bb.bd:                                            ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i136
  %i.mm = load i16, ptr %i.ao, align 1, !tbaa !62
  %i.mn = tail call noundef i16 @llvm.bswap.i16(i16 %i.mm)
  %i.mo = zext i16 %i.mn to i32
  %i.mp = trunc nuw nsw i64 %indvars.iv.i.i134 to i32
  %i.mq = add nuw nsw i32 %i.mo, %i.mp            ; 7 uses
  %i.mr = load i8, ptr %i.lt, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.ms = trunc nuw i8 %i.mr to i1
  %i.mt = load i8, ptr %i.ls, align 8, !tbaa !413, !range !220, !noundef !74
  %i.mu = trunc nuw i8 %i.mt to i1                ; 2 uses
  br i1 %i.ms, label %bb.be, label %bb.bm, !prof !48

bb.be:                                            ; preds = %bb.bd
  br i1 %i.mu, label %bb.bf, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138, !prof !49

bb.bf:                                            ; preds = %bb.be
  %i.mv = lshr i32 %i.mq, 9                       ; 3 uses
  %i.mw = load atomic i32, ptr %i.lv monotonic, align 8 ; 2 uses
  %i.mx = load i32, ptr %i.lw, align 4, !tbaa !1699 ; 3 uses
  %i.my = icmp ult i32 %i.mw, %i.mx
  %i.mz = load ptr, ptr %i.lx, align 8, !tbaa !416 ; 3 uses
  br i1 %i.my, label %bb.bg, label %._crit_edge.i.i207, !prof !49

bb.bg:                                            ; preds = %bb.bf
  %i.na = zext i32 %i.mw to i64                   ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %i.na
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !1700
  %.not.i.i222 = icmp eq i32 %i.nc, %i.mv
  br i1 %.not.i.i222, label %_ZN12hb_bit_set_t8page_forEjb.exit.i218, label %._crit_edge.i.i207

._crit_edge.i.i207:                               ; preds = %bb.bg, %bb.bf
  %.not1.i.i.i.i.i.i208 = icmp sgt i32 %i.mx, 0
  br i1 %.not1.i.i.i.i.i.i208, label %.lr.ph.preheader.i.i.i.i.i.i209, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138

.lr.ph.preheader.i.i.i.i.i.i209:                  ; preds = %._crit_edge.i.i207
  %i.nd = add nsw i32 %i.mx, -1
  br label %.lr.ph.i.i.i.i.i.i210

.lr.ph.i.i.i.i.i.i210:                            ; preds = %bb.bk, %.lr.ph.preheader.i.i.i.i.i.i209
  %.0203.i.i.i.i.i.i211 = phi i32 [ %.2.i.i.i.i.i.i215, %bb.bk ], [ %i.nd, %.lr.ph.preheader.i.i.i.i.i.i209 ] ; 2 uses
  %.0212.i.i.i.i.i.i212 = phi i32 [ %.223.i.i.i.i.i.i214, %bb.bk ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i209 ] ; 2 uses
  %i.ne = add i32 %.0212.i.i.i.i.i.i212, %.0203.i.i.i.i.i.i211
  %i.nf = lshr i32 %i.ne, 1                       ; 4 uses
  %i.ng = zext nneg i32 %i.nf to i64              ; 2 uses
  %i.nh = shl nuw nsw i64 %i.ng, 3
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.nh
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !1700 ; 2 uses
  %i.nk = icmp slt i32 %i.mv, %i.nj
  br i1 %i.nk, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph.i.i.i.i.i.i210
  %i.nl = add nsw i32 %i.nf, -1
  br label %bb.bk

bb.bi:                                            ; preds = %.lr.ph.i.i.i.i.i.i210
  %.not28.i.i.i.i.i.i213 = icmp eq i32 %i.mv, %i.nj
  br i1 %.not28.i.i.i.i.i.i213, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i217, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.nm = add nuw nsw i32 %i.nf, 1
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bh
  %.223.i.i.i.i.i.i214 = phi i32 [ %i.nm, %bb.bj ], [ %.0212.i.i.i.i.i.i212, %bb.bh ] ; 2 uses
  %.2.i.i.i.i.i.i215 = phi i32 [ %.0203.i.i.i.i.i.i211, %bb.bj ], [ %i.nl, %bb.bh ] ; 2 uses
  %.not.not.i.i.i.i.i.i216 = icmp sgt i32 %.223.i.i.i.i.i.i214, %.2.i.i.i.i.i.i215
  br i1 %.not.not.i.i.i.i.i.i216, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138, label %.lr.ph.i.i.i.i.i.i210, !llvm.loop !2478

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i217: ; preds = %bb.bi
  store atomic i32 %i.nf, ptr %i.lv monotonic, align 8
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i218

_ZN12hb_bit_set_t8page_forEjb.exit.i218:          ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i217, %bb.bg
  %i.nn = phi i64 [ %i.ng, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i217 ], [ %i.na, %bb.bg ]
  %.sink.i.i220 = load ptr, ptr %i.ma, align 8, !tbaa !1702 ; 2 uses
  %.not.i221 = icmp eq ptr %.sink.i.i220, null
  br i1 %.not.i221, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138, label %bb.bl

bb.bl:                                            ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i218
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !1705
  %i.nr = zext i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i220, i64 %i.nr ; 2 uses
  store i32 -1, ptr %i.lu, align 4, !tbaa !412
  %i.nt = and i32 %i.mq, 63
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = shl nuw i64 1, %i.nu
  %i.nw = xor i64 %i.nv, -1
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.ny = lshr i32 %i.mq, 6
  %i.nz = and i32 %i.ny, 7
  %i.oa = zext nneg i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.oa ; 2 uses
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !1706
  %i.od = and i64 %i.oc, %i.nw
  store i64 %i.od, ptr %i.ob, align 8, !tbaa !1706
  store i32 -1, ptr %i.ns, align 8, !tbaa !2479
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138

bb.bm:                                            ; preds = %bb.bd
  %i.oe = icmp ne i32 %i.mq, -1
  %or.cond.not.i180 = and i1 %i.oe, %i.mu
  br i1 %or.cond.not.i180, label %bb.bn, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138, !prof !771

bb.bn:                                            ; preds = %bb.bm
  store i32 -1, ptr %i.lu, align 4, !tbaa !412
  %i.of = lshr i32 %i.mq, 9                       ; 4 uses
  %i.og = load atomic i32, ptr %i.lv monotonic, align 8 ; 2 uses
  %i.oh = load i32, ptr %i.lw, align 4, !tbaa !1699 ; 3 uses
  %i.oi = icmp ult i32 %i.og, %i.oh
  %i.oj = load ptr, ptr %i.lx, align 8, !tbaa !416 ; 3 uses
  br i1 %i.oi, label %bb.bo, label %._crit_edge.i.i181, !prof !49

bb.bo:                                            ; preds = %bb.bn
  %i.ok = zext i32 %i.og to i64
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.ok ; 2 uses
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !1700
  %.not.i.i205 = icmp eq i32 %i.om, %i.of
  br i1 %.not.i.i205, label %_ZN12hb_bit_set_t8page_forEjb.exit.i192, label %._crit_edge.i.i181

._crit_edge.i.i181:                               ; preds = %bb.bo, %bb.bn
  %i.on = load i32, ptr %i.ly, align 4, !tbaa !404 ; 5 uses
  %.not1.i.i.i.i.i.i182 = icmp sgt i32 %i.oh, 0
  br i1 %.not1.i.i.i.i.i.i182, label %.lr.ph.preheader.i.i.i.i.i.i197, label %.loopexit586

.lr.ph.preheader.i.i.i.i.i.i197:                  ; preds = %._crit_edge.i.i181
  %i.oo = add nsw i32 %i.oh, -1
  br label %.lr.ph.i.i.i.i.i.i198

.lr.ph.i.i.i.i.i.i198:                            ; preds = %bb.bs, %.lr.ph.preheader.i.i.i.i.i.i197
  %.0203.i.i.i.i.i.i199 = phi i32 [ %.2.i.i.i.i.i.i203, %bb.bs ], [ %i.oo, %.lr.ph.preheader.i.i.i.i.i.i197 ] ; 2 uses
  %.0212.i.i.i.i.i.i200 = phi i32 [ %.223.i.i.i.i.i.i202, %bb.bs ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i197 ] ; 2 uses
  %i.op = add i32 %.0212.i.i.i.i.i.i200, %.0203.i.i.i.i.i.i199
  %i.oq = lshr i32 %i.op, 1                       ; 4 uses
  %i.or = zext nneg i32 %i.oq to i64              ; 2 uses
  %i.os = shl nuw nsw i64 %i.or, 3
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.os
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !1700 ; 2 uses
  %i.ov = icmp slt i32 %i.of, %i.ou
  br i1 %i.ov, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i.i198
  %i.ow = add nsw i32 %i.oq, -1
  br label %bb.bs

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i.i.i198
  %.not28.i.i.i.i.i.i201 = icmp eq i32 %i.of, %i.ou
  br i1 %.not28.i.i.i.i.i.i201, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i189, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ox = add nuw nsw i32 %i.oq, 1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bp
  %.223.i.i.i.i.i.i202 = phi i32 [ %i.ox, %bb.br ], [ %.0212.i.i.i.i.i.i200, %bb.bp ] ; 3 uses
  %.2.i.i.i.i.i.i203 = phi i32 [ %.0203.i.i.i.i.i.i199, %bb.br ], [ %i.ow, %bb.bp ] ; 2 uses
  %.not.not.i.i.i.i.i.i204 = icmp sgt i32 %.223.i.i.i.i.i.i202, %.2.i.i.i.i.i.i203
  br i1 %.not.not.i.i.i.i.i.i204, label %.loopexit586, label %.lr.ph.i.i.i.i.i.i198, !llvm.loop !2478

.loopexit586:                                     ; preds = %bb.bs, %._crit_edge.i.i181
  %storemerge.i.i.ph.sink.i.i.ph.i.i184 = phi i32 [ 0, %._crit_edge.i.i181 ], [ %.223.i.i.i.i.i.i202, %bb.bs ] ; 3 uses
  %i.oy = add i32 %i.on, 1                        ; 14 uses
  %.not584 = icmp eq i32 %i.on, -1
  %.pr865 = load i32, ptr %i.lz, align 8, !tbaa !417 ; 7 uses
  br i1 %.not584, label %.thread866, label %bb.bt

bb.bt:                                            ; preds = %.loopexit586
  %i.oz = icmp ult i32 %.pr865, %i.oy
  %i.pa = icmp ult i32 %i.oy, 3
  %or.cond.i280 = and i1 %i.pa, %i.oz             ; 2 uses
  %i.pb = icmp slt i32 %i.oy, 0
  %i.pc = icmp slt i32 %.pr865, 0
  %or.cond941 = select i1 %i.pb, i1 true, i1 %i.pc, !prof !2890
  br i1 %or.cond941, label %.critedge.i271, label %bb.bu, !prof !2890

.thread866:                                       ; preds = %.loopexit586
  %i.pd = icmp slt i32 %.pr865, 0
  br i1 %i.pd, label %.critedge.i271, label %.thread869, !prof !48

bb.bu:                                            ; preds = %bb.bt
  br i1 %or.cond.i280, label %bb.bv, label %.thread869

bb.bv:                                            ; preds = %bb.bu
  %.sroa.speculated.i373 = tail call i32 @llvm.umax.i32(i32 %i.oy, i32 %i.on)
  br label %.thread.i356

.thread869:                                       ; preds = %.thread866, %bb.bu
  %.not.i352 = icmp samesign ugt i32 %i.oy, %.pr865
  br i1 %.not.i352, label %.preheader.i354, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit377.thread, !prof !48

.preheader.i354:                                  ; preds = %.thread869, %.preheader.i354
  %.043.i355 = phi i32 [ %i.pg, %.preheader.i354 ], [ %.pr865, %.thread869 ] ; 2 uses
  %i.pe = lshr i32 %.043.i355, 1
  %i.pf = add nuw i32 %.043.i355, 8
  %i.pg = add nuw i32 %i.pf, %i.pe                ; 3 uses
  %i.ph = icmp ugt i32 %i.oy, %i.pg
  br i1 %i.ph, label %.preheader.i354, label %.thread.i356, !llvm.loop !2891

.thread.i356:                                     ; preds = %.preheader.i354, %bb.bv
  %.0.shrunk.i270863868872 = phi i1 [ true, %bb.bv ], [ false, %.preheader.i354 ] ; 3 uses
  %.138.i357 = phi i32 [ %.sroa.speculated.i373, %bb.bv ], [ %i.pg, %.preheader.i354 ] ; 5 uses
  %i.pi = icmp ugt i32 %.138.i357, 59652323
  br i1 %i.pi, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit377.thread538, label %bb.bw, !prof !48

bb.bw:                                            ; preds = %.thread.i356
end_hunk_7
begin_hunk_8_@_ZNK2OT21ChainContextFormat2_5INS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tE:bb.a
  %i.te = getelementptr inbounds nuw [72 x i8], ptr %i.sp, i64 %indvars.iv.i.i326 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 216
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.tg, i8 0, i64 64, i1 false), !tbaa !1706
  store i32 0, ptr %i.tf, align 8, !tbaa !2479
  %indvars.iv.next.i.i327.3 = add nuw nsw i64 %indvars.iv.i.i326, 4 ; 2 uses
  %exitcond.not.i.i328.3 = icmp eq i64 %indvars.iv.next.i.i327.3, %wide.trip.count.i.i325
  br i1 %exitcond.not.i.i328.3, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i323, label %.lr.ph.i.i324.new, !llvm.loop !2897

_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i323: ; preds = %.prol.loopexit1055, %.lr.ph.i.i324.new, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit485.thread
  store i32 %i.rp, ptr %i.ly, align 4, !tbaa !410
  br label %_ZN12hb_bit_set_t6resizeEjbb.exit281

_ZN12hb_bit_set_t6resizeEjbb.exit281:             ; preds = %bb.cj, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i323, %.critedge.i271, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit485.thread552
  store i8 0, ptr %i.ls, align 8, !tbaa !413
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138

bb.cv:                                            ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5allocEjb.exit351.thread, %bb.ch, %bb.ci
  store i32 %i.oy, ptr %i.lw, align 4, !tbaa !411
  %i.th = load ptr, ptr %i.ma, align 8, !tbaa !1702
  %i.ti = zext i32 %i.on to i64                   ; 2 uses
  %i.tj = getelementptr inbounds nuw [72 x i8], ptr %i.th, i64 %i.ti ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.tk, i8 0, i64 64, i1 false), !tbaa !1706
  store i32 0, ptr %i.tj, align 8, !tbaa !2479
  %i.tl = load ptr, ptr %i.lx, align 8, !tbaa !1698
  %i.tm = zext nneg i32 %storemerge.i.i.ph.sink.i.i.ph.i.i184 to i64 ; 3 uses
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.tl, i64 %i.tm ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.tp = sub i32 %i.on, %storemerge.i.i.ph.sink.i.i.ph.i.i184
  %i.tq = shl i32 %i.tp, 3
  %i.tr = zext i32 %i.tq to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.to, ptr align 4 %i.tn, i64 %i.tr, i1 false)
  %i.ts = load ptr, ptr %i.lx, align 8, !tbaa !1698
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %i.tm
  %.sroa.5.0.insert.shift.i.i185 = shl nuw i64 %i.ti, 32
  %.sroa.0.0.insert.ext.i.i186 = zext nneg i32 %i.of to i64
  %.sroa.0.0.insert.insert.i.i187 = or disjoint i64 %.sroa.5.0.insert.shift.i.i185, %.sroa.0.0.insert.ext.i.i186
  store i64 %.sroa.0.0.insert.insert.i.i187, ptr %i.tt, align 4
  %.pre20.i.i188 = load ptr, ptr %i.lx, align 8, !tbaa !1698
  br label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i189

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i189: ; preds = %bb.bq, %bb.cv
  %.pre-phi.i.i190 = phi i64 [ %i.tm, %bb.cv ], [ %i.or, %bb.bq ]
  %i.tu = phi ptr [ %.pre20.i.i188, %bb.cv ], [ %i.oj, %bb.bq ]
  %storemerge.i.i.ph.sink.i.i17.i.i191 = phi i32 [ %storemerge.i.i.ph.sink.i.i.ph.i.i184, %bb.cv ], [ %i.oq, %bb.bq ]
  store atomic i32 %storemerge.i.i.ph.sink.i.i17.i.i191, ptr %i.lv monotonic, align 8
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %.pre-phi.i.i190
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i192

_ZN12hb_bit_set_t8page_forEjb.exit.i192:          ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i189, %bb.bo
  %.sink30.i.i193 = phi ptr [ %i.tv, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i189 ], [ %i.ol, %bb.bo ]
  %.sink.i.i195 = load ptr, ptr %i.ma, align 8, !tbaa !1702 ; 2 uses
  %.not.i196 = icmp eq ptr %.sink.i.i195, null
  br i1 %.not.i196, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138, label %bb.cw, !prof !2908

bb.cw:                                            ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i192
  %i.tw = getelementptr inbounds nuw i8, ptr %.sink30.i.i193, i64 4
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !1705
  %i.ty = zext i32 %i.tx to i64
  %i.tz = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i195, i64 %i.ty ; 2 uses
  %i.ua = and i32 %i.mq, 63
  %i.ub = zext nneg i32 %i.ua to i64
  %i.uc = shl nuw i64 1, %i.ub
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ue = lshr i32 %i.mq, 6
  %i.uf = and i32 %i.ue, 7
  %i.ug = zext nneg i32 %i.uf to i64
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %i.ug ; 2 uses
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !1706
  %i.uj = or i64 %i.ui, %i.uc
  store i64 %i.uj, ptr %i.uh, align 8, !tbaa !1706
  store i32 -1, ptr %i.tz, align 8, !tbaa !2479
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138: ; preds = %bb.bk, %bb.cw, %_ZN12hb_bit_set_t8page_forEjb.exit.i192, %bb.bm, %_ZN12hb_bit_set_t6resizeEjbb.exit281, %bb.bl, %_ZN12hb_bit_set_t8page_forEjb.exit.i218, %._crit_edge.i.i207, %bb.be, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i136
  %indvars.iv.next.i.i139 = add nuw nsw i64 %indvars.iv.i.i134, 1 ; 2 uses
  %exitcond.not.i.i140 = icmp eq i64 %indvars.iv.next.i.i139, %wide.trip.count.i.i133
  br i1 %exitcond.not.i.i140, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141, label %bb.bb, !llvm.loop !3396

bb.cx:                                            ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.uk = load i16, ptr %i.ao, align 1, !tbaa !62 ; 2 uses
  %i.ul = tail call noundef i16 @llvm.bswap.i16(i16 %i.uk)
  %i.um = zext i16 %i.ul to i64
  %.idx.i.i122 = mul nuw nsw i64 %i.um, 6
  %i.un = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx.i.i122 ; 2 uses
  %.not16.i.i123 = icmp eq i16 %i.uk, 0
  br i1 %.not16.i.i123, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141, label %.lr.ph.i5.i124

.lr.ph.i5.i124:                                   ; preds = %bb.cx, %.lr.ph.i5.i124.backedge
  %.01317.i.i125 = phi ptr [ %.01317.i.i125.be, %.lr.ph.i5.i124.backedge ], [ %i.ap, %bb.cx ] ; 5 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %.01317.i.i125, i64 4
  %i.up = load i16, ptr %i.uo, align 1, !tbaa !62
  %i.uq = icmp eq i16 %.val.i.i.i25.i.i.i.i, %i.up
  br i1 %i.uq, label %bb.cy, label %.critedge.i.i126

bb.cy:                                            ; preds = %.lr.ph.i5.i124
  %i.ur = load i16, ptr %.01317.i.i125, align 1, !tbaa !62
  %i.us = tail call noundef i16 @llvm.bswap.i16(i16 %i.ur)
  %i.ut = zext i16 %i.us to i32                   ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.01317.i.i125, i64 2
  %i.uv = load i16, ptr %i.uu, align 1, !tbaa !62
  %i.uw = tail call noundef i16 @llvm.bswap.i16(i16 %i.uv)
  %i.ux = zext i16 %i.uw to i32                   ; 2 uses
  %i.uy = load i8, ptr %i.lt, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.uz = trunc nuw i8 %i.uy to i1
  br i1 %i.uz, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i130, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i129, !prof !48

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i130: ; preds = %bb.cy
  tail call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.ls, i32 noundef %i.ut, i32 noundef %i.ux)
  br label %.critedge.i.i126

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i129: ; preds = %bb.cy
  %i.va = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.ls, i32 noundef %i.ut, i32 noundef %i.ux)
  %i.vb = getelementptr inbounds nuw i8, ptr %.01317.i.i125, i64 6 ; 2 uses
  %.not.i6.i127 = icmp ne ptr %i.vb, %i.un
  %or.cond580.not = select i1 %i.va, i1 %.not.i6.i127, i1 false
  br i1 %or.cond580.not, label %.lr.ph.i5.i124.backedge, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141, !prof !3607

.critedge.i.i126:                                 ; preds = %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i130, %.lr.ph.i5.i124
  %.old579 = getelementptr inbounds nuw i8, ptr %.01317.i.i125, i64 6 ; 2 uses
  %.not.i6.i127.old = icmp eq ptr %.old579, %i.un
  br i1 %.not.i6.i127.old, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141, label %.lr.ph.i5.i124.backedge

.lr.ph.i5.i124.backedge:                          ; preds = %.critedge.i.i126, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i129
  %.01317.i.i125.be = phi ptr [ %i.vb, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i129 ], [ %.old579, %.critedge.i.i126 ]
  br label %.lr.ph.i5.i124

_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141: ; preds = %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i129, %.critedge.i.i126, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.i.i.i.i, %bb.ba, %bb.cx
  %i.vc = add nsw i32 %.sroa.4.06.i.i.i24.i.i.i.i, -1 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i23.i.i.i.i, i64 2
  %.not.i.i.i26.i.i.i.i = icmp eq i32 %i.vc, 0
  br i1 %.not.i.i.i26.i.i.i.i, label %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit27.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.i.i.i.i, !llvm.loop !3415

_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit27.i.i.i.i: ; preds = %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141, %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit.i.i.i.i
  %.not5.i.i.i28.i.i.i.i = icmp eq i16 %i.bs, 0
  br i1 %.not5.i.i.i28.i.i.i.i, label %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit34.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i.preheader

_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i.preheader: ; preds = %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit27.i.i.i.i
  %i.ve = load ptr, ptr %i.ag, align 8, !tbaa !3520 ; 10 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 16 ; 4 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ve, i64 64 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ve, i64 20 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ve, i64 24 ; 4 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ve, i64 36 ; 6 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ve, i64 40 ; 8 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ve, i64 52 ; 8 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ve, i64 48 ; 8 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ve, i64 56 ; 10 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.ve, i64 32 ; 4 uses
  br label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i.preheader, %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit161
  %.sroa.0.07.i.i.i30.i.pn.i.i.i = phi ptr [ %.sroa.0.07.i.i.i30.i.i.i.i, %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit161 ], [ %i.br, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i.preheader ]
  %.sroa.4.06.i.i.i31.i.i.i.i = phi i32 [ %i.aep, %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit161 ], [ %i.ca, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i.preheader ]
  %.sroa.0.07.i.i.i30.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i30.i.pn.i.i.i, i64 2 ; 2 uses
  %.val.i.i.i32.i.i.i.i = load i16, ptr %.sroa.0.07.i.i.i30.i.i.i.i, align 1, !tbaa !62 ; 2 uses
  %i.vp = load i16, ptr %.0.i.i16, align 1, !tbaa !62
  %i.vq = tail call noundef i16 @llvm.bswap.i16(i16 %i.vp)
  switch i16 %i.vq, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit161 [
    i16 1, label %bb.cz
    i16 2, label %bb.ew
  ]

bb.cz:                                            ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.vr = load i16, ptr %i.as, align 1, !tbaa !62 ; 2 uses
  %.not.i.i151 = icmp eq i16 %i.vr, 0
  br i1 %.not.i.i151, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit161, label %.lr.ph.i.i152

.lr.ph.i.i152:                                    ; preds = %bb.cz
  %i.vs = tail call noundef i16 @llvm.bswap.i16(i16 %i.vr)
  %wide.trip.count.i.i153 = zext i16 %i.vs to i64
  br label %bb.da

bb.da:                                            ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158, %.lr.ph.i.i152
  %indvars.iv.i.i154 = phi i64 [ 0, %.lr.ph.i.i152 ], [ %indvars.iv.next.i.i159, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158 ] ; 4 uses
  %i.vt = load i16, ptr %i.as, align 1, !tbaa !62
  %i.vu = tail call noundef i16 @llvm.bswap.i16(i16 %i.vt)
  %i.vv = zext i16 %i.vu to i64
  %.not.i.i.i155 = icmp samesign ult i64 %indvars.iv.i.i154, %i.vv
  br i1 %.not.i.i.i155, label %bb.db, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i156, !prof !49

bb.db:                                            ; preds = %bb.da
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.vw = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.i.i154
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i156

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i156: ; preds = %bb.db, %bb.da
  %.0.i.i.i157 = phi ptr [ %i.vw, %bb.db ], [ @_hb_NullPool, %bb.da ]
  %i.vx = load i16, ptr %.0.i.i.i157, align 1, !tbaa !62
  %i.vy = icmp eq i16 %.val.i.i.i32.i.i.i.i, %i.vx
  br i1 %i.vy, label %bb.dc, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158

bb.dc:                                            ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i156
  %i.vz = load i16, ptr %i.ar, align 1, !tbaa !62
  %i.wa = tail call noundef i16 @llvm.bswap.i16(i16 %i.vz)
  %i.wb = zext i16 %i.wa to i32
  %i.wc = trunc nuw nsw i64 %indvars.iv.i.i154 to i32
  %i.wd = add nuw nsw i32 %i.wb, %i.wc            ; 7 uses
  %i.we = load i8, ptr %i.vg, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.wf = trunc nuw i8 %i.we to i1
  %i.wg = load i8, ptr %i.vf, align 8, !tbaa !413, !range !220, !noundef !74
  %i.wh = trunc nuw i8 %i.wg to i1                ; 2 uses
  br i1 %i.wf, label %bb.dd, label %bb.dl, !prof !48

bb.dd:                                            ; preds = %bb.dc
  br i1 %i.wh, label %bb.de, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158, !prof !49

bb.de:                                            ; preds = %bb.dd
  %i.wi = lshr i32 %i.wd, 9                       ; 3 uses
  %i.wj = load atomic i32, ptr %i.vi monotonic, align 8 ; 2 uses
  %i.wk = load i32, ptr %i.vj, align 4, !tbaa !1699 ; 3 uses
  %i.wl = icmp ult i32 %i.wj, %i.wk
  %i.wm = load ptr, ptr %i.vk, align 8, !tbaa !416 ; 3 uses
  br i1 %i.wl, label %bb.df, label %._crit_edge.i.i251, !prof !49

bb.df:                                            ; preds = %bb.de
  %i.wn = zext i32 %i.wj to i64                   ; 2 uses
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %i.wn
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !1700
  %.not.i.i266 = icmp eq i32 %i.wp, %i.wi
  br i1 %.not.i.i266, label %_ZN12hb_bit_set_t8page_forEjb.exit.i262, label %._crit_edge.i.i251

._crit_edge.i.i251:                               ; preds = %bb.df, %bb.de
  %.not1.i.i.i.i.i.i252 = icmp sgt i32 %i.wk, 0
  br i1 %.not1.i.i.i.i.i.i252, label %.lr.ph.preheader.i.i.i.i.i.i253, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158

.lr.ph.preheader.i.i.i.i.i.i253:                  ; preds = %._crit_edge.i.i251
  %i.wq = add nsw i32 %i.wk, -1
  br label %.lr.ph.i.i.i.i.i.i254

.lr.ph.i.i.i.i.i.i254:                            ; preds = %bb.dj, %.lr.ph.preheader.i.i.i.i.i.i253
  %.0203.i.i.i.i.i.i255 = phi i32 [ %.2.i.i.i.i.i.i259, %bb.dj ], [ %i.wq, %.lr.ph.preheader.i.i.i.i.i.i253 ] ; 2 uses
  %.0212.i.i.i.i.i.i256 = phi i32 [ %.223.i.i.i.i.i.i258, %bb.dj ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i253 ] ; 2 uses
  %i.wr = add i32 %.0212.i.i.i.i.i.i256, %.0203.i.i.i.i.i.i255
  %i.ws = lshr i32 %i.wr, 1                       ; 4 uses
  %i.wt = zext nneg i32 %i.ws to i64              ; 2 uses
  %i.wu = shl nuw nsw i64 %i.wt, 3
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wm, i64 %i.wu
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !1700 ; 2 uses
  %i.wx = icmp slt i32 %i.wi, %i.ww
  br i1 %i.wx, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %.lr.ph.i.i.i.i.i.i254
  %i.wy = add nsw i32 %i.ws, -1
  br label %bb.dj

bb.dh:                                            ; preds = %.lr.ph.i.i.i.i.i.i254
  %.not28.i.i.i.i.i.i257 = icmp eq i32 %i.wi, %i.ww
  br i1 %.not28.i.i.i.i.i.i257, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i261, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.wz = add nuw nsw i32 %i.ws, 1
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dg
  %.223.i.i.i.i.i.i258 = phi i32 [ %i.wz, %bb.di ], [ %.0212.i.i.i.i.i.i256, %bb.dg ] ; 2 uses
  %.2.i.i.i.i.i.i259 = phi i32 [ %.0203.i.i.i.i.i.i255, %bb.di ], [ %i.wy, %bb.dg ] ; 2 uses
  %.not.not.i.i.i.i.i.i260 = icmp sgt i32 %.223.i.i.i.i.i.i258, %.2.i.i.i.i.i.i259
  br i1 %.not.not.i.i.i.i.i.i260, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158, label %.lr.ph.i.i.i.i.i.i254, !llvm.loop !2478

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i261: ; preds = %bb.dh
  store atomic i32 %i.ws, ptr %i.vi monotonic, align 8
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i262

_ZN12hb_bit_set_t8page_forEjb.exit.i262:          ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i261, %bb.df
  %i.xa = phi i64 [ %i.wt, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i261 ], [ %i.wn, %bb.df ]
  %.sink.i.i264 = load ptr, ptr %i.vn, align 8, !tbaa !1702 ; 2 uses
  %.not.i265 = icmp eq ptr %.sink.i.i264, null
  br i1 %.not.i265, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158, label %bb.dk

bb.dk:                                            ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i262
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %i.xa
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 4
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !1705
  %i.xe = zext i32 %i.xd to i64
  %i.xf = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i264, i64 %i.xe ; 2 uses
  store i32 -1, ptr %i.vh, align 4, !tbaa !412
  %i.xg = and i32 %i.wd, 63
  %i.xh = zext nneg i32 %i.xg to i64
  %i.xi = shl nuw i64 1, %i.xh
  %i.xj = xor i64 %i.xi, -1
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xf, i64 8
  %i.xl = lshr i32 %i.wd, 6
  %i.xm = and i32 %i.xl, 7
  %i.xn = zext nneg i32 %i.xm to i64
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.xk, i64 %i.xn ; 2 uses
  %i.xp = load i64, ptr %i.xo, align 8, !tbaa !1706
  %i.xq = and i64 %i.xp, %i.xj
  store i64 %i.xq, ptr %i.xo, align 8, !tbaa !1706
  store i32 -1, ptr %i.xf, align 8, !tbaa !2479
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158

bb.dl:                                            ; preds = %bb.dc
  %i.xr = icmp ne i32 %i.wd, -1
  %or.cond.not.i224 = and i1 %i.xr, %i.wh
  br i1 %or.cond.not.i224, label %bb.dm, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158, !prof !771

bb.dm:                                            ; preds = %bb.dl
  store i32 -1, ptr %i.vh, align 4, !tbaa !412
  %i.xs = lshr i32 %i.wd, 9                       ; 4 uses
  %i.xt = load atomic i32, ptr %i.vi monotonic, align 8 ; 2 uses
  %i.xu = load i32, ptr %i.vj, align 4, !tbaa !1699 ; 3 uses
  %i.xv = icmp ult i32 %i.xt, %i.xu
  %i.xw = load ptr, ptr %i.vk, align 8, !tbaa !416 ; 3 uses
  br i1 %i.xv, label %bb.dn, label %._crit_edge.i.i225, !prof !49

bb.dn:                                            ; preds = %bb.dm
  %i.xx = zext i32 %i.xt to i64
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %i.xx ; 2 uses
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !1700
  %.not.i.i249 = icmp eq i32 %i.xz, %i.xs
  br i1 %.not.i.i249, label %_ZN12hb_bit_set_t8page_forEjb.exit.i236, label %._crit_edge.i.i225

._crit_edge.i.i225:                               ; preds = %bb.dn, %bb.dm
  %i.ya = load i32, ptr %i.vl, align 4, !tbaa !404 ; 5 uses
  %.not1.i.i.i.i.i.i226 = icmp sgt i32 %i.xu, 0
  br i1 %.not1.i.i.i.i.i.i226, label %.lr.ph.preheader.i.i.i.i.i.i241, label %.loopexit

.lr.ph.preheader.i.i.i.i.i.i241:                  ; preds = %._crit_edge.i.i225
  %i.yb = add nsw i32 %i.xu, -1
  br label %.lr.ph.i.i.i.i.i.i242

.lr.ph.i.i.i.i.i.i242:                            ; preds = %bb.dr, %.lr.ph.preheader.i.i.i.i.i.i241
  %.0203.i.i.i.i.i.i243 = phi i32 [ %.2.i.i.i.i.i.i247, %bb.dr ], [ %i.yb, %.lr.ph.preheader.i.i.i.i.i.i241 ] ; 2 uses
  %.0212.i.i.i.i.i.i244 = phi i32 [ %.223.i.i.i.i.i.i246, %bb.dr ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i241 ] ; 2 uses
  %i.yc = add i32 %.0212.i.i.i.i.i.i244, %.0203.i.i.i.i.i.i243
  %i.yd = lshr i32 %i.yc, 1                       ; 4 uses
  %i.ye = zext nneg i32 %i.yd to i64              ; 2 uses
  %i.yf = shl nuw nsw i64 %i.ye, 3
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.yf
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !1700 ; 2 uses
  %i.yi = icmp slt i32 %i.xs, %i.yh
  br i1 %i.yi, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %.lr.ph.i.i.i.i.i.i242
  %i.yj = add nsw i32 %i.yd, -1
  br label %bb.dr

bb.dp:                                            ; preds = %.lr.ph.i.i.i.i.i.i242
  %.not28.i.i.i.i.i.i245 = icmp eq i32 %i.xs, %i.yh
  br i1 %.not28.i.i.i.i.i.i245, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i233, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.yk = add nuw nsw i32 %i.yd, 1
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.do
  %.223.i.i.i.i.i.i246 = phi i32 [ %i.yk, %bb.dq ], [ %.0212.i.i.i.i.i.i244, %bb.do ] ; 3 uses
  %.2.i.i.i.i.i.i247 = phi i32 [ %.0203.i.i.i.i.i.i243, %bb.dq ], [ %i.yj, %bb.do ] ; 2 uses
  %.not.not.i.i.i.i.i.i248 = icmp sgt i32 %.223.i.i.i.i.i.i246, %.2.i.i.i.i.i.i247
  br i1 %.not.not.i.i.i.i.i.i248, label %.loopexit, label %.lr.ph.i.i.i.i.i.i242, !llvm.loop !2478

.loopexit:                                        ; preds = %bb.dr, %._crit_edge.i.i225
  %storemerge.i.i.ph.sink.i.i.ph.i.i228 = phi i32 [ 0, %._crit_edge.i.i225 ], [ %.223.i.i.i.i.i.i246, %bb.dr ] ; 3 uses
  %i.yl = add i32 %i.ya, 1                        ; 14 uses
  %.not585 = icmp eq i32 %i.ya, -1
  %.pr879 = load i32, ptr %i.vm, align 8, !tbaa !417 ; 7 uses
  br i1 %.not585, label %.thread880, label %bb.ds

bb.ds:                                            ; preds = %.loopexit
  %i.ym = icmp ult i32 %.pr879, %i.yl
  %i.yn = icmp ult i32 %i.yl, 3
  %or.cond.i293 = and i1 %i.yn, %i.ym             ; 2 uses
  %i.yo = icmp slt i32 %i.yl, 0
  %i.yp = icmp slt i32 %.pr879, 0
  %or.cond943 = select i1 %i.yo, i1 true, i1 %i.yp, !prof !2890
  br i1 %or.cond943, label %.critedge.i284, label %bb.dt, !prof !2890

.thread880:                                       ; preds = %.loopexit
  %i.yq = icmp slt i32 %.pr879, 0
  br i1 %i.yq, label %.critedge.i284, label %.thread883, !prof !48

bb.dt:                                            ; preds = %bb.ds
  br i1 %or.cond.i293, label %bb.du, label %.thread883

bb.du:                                            ; preds = %bb.dt
  %.sroa.speculated.i429 = tail call i32 @llvm.umax.i32(i32 %i.yl, i32 %i.ya)
  br label %.thread.i412

.thread883:                                       ; preds = %.thread880, %bb.dt
  %.not.i408 = icmp samesign ugt i32 %i.yl, %.pr879
  br i1 %.not.i408, label %.preheader.i410, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit433.thread, !prof !48

.preheader.i410:                                  ; preds = %.thread883, %.preheader.i410
  %.043.i411 = phi i32 [ %i.yt, %.preheader.i410 ], [ %.pr879, %.thread883 ] ; 2 uses
  %i.yr = lshr i32 %.043.i411, 1
  %i.ys = add nuw i32 %.043.i411, 8
  %i.yt = add nuw i32 %i.ys, %i.yr                ; 3 uses
  %i.yu = icmp ugt i32 %i.yl, %i.yt
  br i1 %i.yu, label %.preheader.i410, label %.thread.i412, !llvm.loop !2891

.thread.i412:                                     ; preds = %.preheader.i410, %bb.du
  %.0.shrunk.i283877882886 = phi i1 [ true, %bb.du ], [ false, %.preheader.i410 ] ; 3 uses
  %.138.i413 = phi i32 [ %.sroa.speculated.i429, %bb.du ], [ %i.yt, %.preheader.i410 ] ; 5 uses
  %i.yv = icmp ugt i32 %.138.i413, 59652323
  br i1 %i.yv, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit433.thread560, label %bb.dv, !prof !48

bb.dv:                                            ; preds = %.thread.i412
end_hunk_8
begin_hunk_9_@_ZNK2OT6Layout9GPOS_impl16PairPosFormat1_3INS0_10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tE:bb.a
  %.0.i.i6 = select i1 %i.u, ptr @_hb_NullPool, ptr %i.x, !prof !48 ; 2 uses
  %i.y = load i16, ptr %i.n, align 1, !tbaa !62
  %i.z = lshr i16 %i.y, 8
  %i.aa = zext nneg i16 %i.z to i32               ; 2 uses
  %i.ab = and i32 %i.aa, 15
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZZL12hb_popcount8hE9popcount4, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !61
  %i.af = zext i8 %i.ae to i32
  %i.ag = lshr i32 %i.aa, 4
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZZL12hb_popcount8hE9popcount4, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !61
  %i.ak = zext i8 %i.aj to i32
  %i.al = load i16, ptr %i.o, align 1, !tbaa !62
  %i.am = lshr i16 %i.al, 8
  %i.an = zext nneg i16 %i.am to i32              ; 2 uses
  %i.ao = and i32 %i.an, 15
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @_ZZL12hb_popcount8hE9popcount4, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !61
  %i.as = zext i8 %i.ar to i32
  %i.at = lshr i32 %i.an, 4
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @_ZZL12hb_popcount8hE9popcount4, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !61
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add nuw nsw i32 %i.ak, %i.af
  %i.az = add nuw nsw i32 %i.ay, %i.as
  %i.ba = add nuw nsw i32 %i.az, %i.ax
  %i.bb = shl nuw nsw i32 %i.ba, 1
  %i.bc = add nuw nsw i32 %i.bb, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i6, i64 2
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !3408 ; 2 uses
  %i.bf = load i16, ptr %.0.i.i6, align 1, !tbaa !62
  %i.bg = tail call noundef i16 @llvm.bswap.i16(i16 %i.bf)
  %i.bh = zext i16 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.bl = trunc nuw i8 %i.bk to i1
  %not..i.i.i = xor i1 %i.bl, true
  tail call void @_ZN12hb_bit_set_t9set_arrayIN2OT11HBGlyphID16EEEvbPKT_jj(ptr noundef nonnull align 8 dereferenceable(49) %i.bi, i1 noundef zeroext %not..i.i.i, ptr noundef nonnull %i.bd, i32 noundef %i.bh, i32 noundef %i.bc)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !3655

.loopexit:                                        ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GPOS_impl7PairSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT6Layout9GPOS_impl16PairPosFormat2_4INS0_10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tE(ptr noundef nonnull align 1 dereferenceable(18) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !62   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3408
  %i.i = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common8Coverage16collect_coverageI8hb_set_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, ptr noundef %i.h)
  br i1 %i.i, label %bb.b, label %_ZNK2OT8ClassDef16collect_coverageI8hb_set_tEEbPT_.exit, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.k = load i16, ptr %i.j, align 1, !tbaa !62   ; 2 uses
  %i.l = icmp eq i16 %i.k, 0
  %i.m = tail call i16 @llvm.bswap.i16(i16 %i.k)
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %.0.i.i3 = select i1 %i.l, ptr @_hb_NullPool, ptr %i.o, !prof !48 ; 4 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !3408 ; 3 uses
  %i.q = load i16, ptr %.0.i.i3, align 1, !tbaa !62
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  switch i16 %i.r, label %_ZNK2OT8ClassDef16collect_coverageI8hb_set_tEEbPT_.exit [
    i16 1, label %bb.c
    i16 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.s = tail call noundef zeroext i1 @_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i3, ptr noundef %i.p) ; 0 uses
  br label %_ZNK2OT8ClassDef16collect_coverageI8hb_set_tEEbPT_.exit

bb.d:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i3, i64 2
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i3, i64 4 ; 2 uses
  %i.v = load i16, ptr %i.t, align 1, !tbaa !62   ; 2 uses
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = zext i16 %i.w to i64
  %.idx.i.i = mul nuw nsw i64 %i.x, 6
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i ; 2 uses
  %.not16.i.i = icmp eq i16 %i.v, 0
  br i1 %.not16.i.i, label %_ZNK2OT8ClassDef16collect_coverageI8hb_set_tEEbPT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.i.i
  %.01217.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.01217.i.i.be, %.backedge.backedge ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01217.i.i, i64 4
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !62
  %.not15.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not15.i.i, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %.backedge
  %i.ad = load i16, ptr %.01217.i.i, align 1, !tbaa !62
  %i.ae = tail call noundef i16 @llvm.bswap.i16(i16 %i.ad)
  %i.af = zext i16 %i.ae to i32                   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01217.i.i, i64 2
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !62
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = load i8, ptr %i.aa, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i, !prof !48

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i: ; preds = %bb.e
  tail call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.z, i32 noundef %i.af, i32 noundef %i.aj)
  br label %.critedge.i.i

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i: ; preds = %bb.e
  %i.am = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.z, i32 noundef %i.af, i32 noundef %i.aj)
  %i.an = getelementptr inbounds nuw i8, ptr %.01217.i.i, i64 6 ; 2 uses
  %.not.i.i = icmp ne ptr %i.an, %i.y
  %or.cond.not = select i1 %i.am, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.backedge.backedge, label %_ZNK2OT8ClassDef16collect_coverageI8hb_set_tEEbPT_.exit, !prof !3656

.critedge.i.i:                                    ; preds = %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i, %.backedge
  %.old = getelementptr inbounds nuw i8, ptr %.01217.i.i, i64 6 ; 2 uses
  %.not.i.i.old = icmp eq ptr %.old, %i.y
  br i1 %.not.i.i.old, label %_ZNK2OT8ClassDef16collect_coverageI8hb_set_tEEbPT_.exit, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.critedge.i.i, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i
  %.01217.i.i.be = phi ptr [ %.old, %.critedge.i.i ], [ %i.an, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i ]
  br label %.backedge

_ZNK2OT8ClassDef16collect_coverageI8hb_set_tEEbPT_.exit: ; preds = %.critedge.i.i, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !62   ; 2 uses
  %i.c = tail call noundef i16 @llvm.bswap.i16(i16 %i.b) ; 2 uses
  %i.d = zext i16 %i.c to i32                     ; 2 uses
  %.not2327.not = icmp eq i16 %i.b, 0
  br i1 %.not2327.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %wide.trip.count = zext i16 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.pre-phi, %bb.g ] ; 6 uses
  %.01828 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.g ] ; 3 uses
  %i.i = load i16, ptr %i.a, align 1, !tbaa !62
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  %i.k = zext i16 %i.j to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.k
  br i1 %.not.i, label %bb.c, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit, !prof !49

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.l, %bb.c ], [ @_hb_NullPool, %bb.b ]
  %i.m = load i16, ptr %.0.i, align 1, !tbaa !62
  %.not = icmp eq i16 %i.m, 0
  br i1 %.not, label %bb.d, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit._crit_edge

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit._crit_edge: ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit
  %.pre = add nuw nsw i64 %indvars.iv, 1
  br label %bb.g

bb.d:                                             ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit
  %i.n = zext i32 %.01828 to i64
  %.not22 = icmp eq i64 %indvars.iv, %i.n
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i16, ptr %i.f, align 1, !tbaa !62
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %i.q = zext i16 %i.p to i32                     ; 2 uses
  %i.r = add i32 %.01828, %i.q                    ; 2 uses
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  %i.t = add nuw nsw i32 %i.s, %i.q               ; 2 uses
  %i.u = load i8, ptr %i.h, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit.thread, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit, !prof !48

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit.thread: ; preds = %bb.e
  tail call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.g, i32 noundef %i.r, i32 noundef %i.t)
  br label %bb.f

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit: ; preds = %bb.e
  %i.w = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.g, i32 noundef %i.r, i32 noundef %i.t)
  br i1 %i.w, label %bb.f, label %.loopexit, !prof !3657

bb.f:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit.thread, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit, %bb.d
  %i.x = add nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %i.y = trunc nuw nsw i64 %i.x to i32
  br label %bb.g

bb.g:                                             ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit._crit_edge, %bb.f
  %indvars.iv.next.pre-phi = phi i64 [ %.pre, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit._crit_edge ], [ %i.x, %bb.f ] ; 2 uses
  %.1 = phi i32 [ %.01828, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit._crit_edge ], [ %i.y, %bb.f ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !3658

.critedge:                                        ; preds = %bb.g, %bb.a
  %.018.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.g ] ; 2 uses
  %.not24 = icmp eq i32 %.018.lcssa, %i.d
  br i1 %.not24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aa = load i16, ptr %i.z, align 1, !tbaa !62
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = add i32 %.018.lcssa, %i.ac              ; 2 uses
  %i.ae = add nuw nsw i32 %i.ac, %i.d             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit25.thread, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit25, !prof !48

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit25.thread: ; preds = %bb.h
  tail call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.af, i32 noundef %i.ad, i32 noundef %i.ae)
  br label %bb.i

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit25: ; preds = %bb.h
  %i.aj = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.af, i32 noundef %i.ad, i32 noundef %i.ae)
  br i1 %i.aj, label %bb.i, label %.loopexit, !prof !3397

bb.i:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit25.thread, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit25, %.critedge
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit25, %bb.i
  %.120 = phi i1 [ false, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit25 ], [ true, %bb.i ], [ false, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit ]
  ret i1 %.120
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT9Condition8evaluateINS_21ItemVarStoreInstancerEEEbPKijPT_(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.o, %bb.a
  %accumulator.tr = phi i1 [ false, %bb.a ], [ %i.ds, %bb.o ] ; 2 uses
  %.tr = phi ptr [ %0, %bb.a ], [ %.0.i.i20, %bb.o ] ; 16 uses
  %i.a = load i16, ptr %.tr, align 1, !tbaa !62
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  switch i16 %i.b, label %_ZNK2OT18ConditionAxisRange8evaluateINS_21ItemVarStoreInstancerEEEbPKijPT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.f
    i16 3, label %bb.k
    i16 4, label %bb.m
    i16 5, label %bb.o
  ]

bb.b:                                             ; preds = %tailrecurse
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.c = getelementptr inbounds nuw i8, ptr %.tr, i64 2
  %i.d = load i16, ptr %i.c, align 1, !tbaa !62
  %i.e = tail call noundef i16 @llvm.bswap.i16(i16 %i.d) ; 2 uses
  %i.f = zext i16 %i.e to i32
  %i.g = icmp ugt i32 %2, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = zext i16 %i.e to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !139
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi i32 [ %i.j, %bb.c ], [ 0, %bb.b ]    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.m = load i16, ptr %i.l, align 1, !tbaa !62
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m)
  %i.o = sext i16 %i.n to i32
  %.not.i = icmp slt i32 %i.k, %i.o
  br i1 %.not.i, label %_ZNK2OT18ConditionAxisRange8evaluateINS_21ItemVarStoreInstancerEEEbPKijPT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.tr, i64 6
  %i.q = load i16, ptr %i.p, align 1, !tbaa !62
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.s = sext i16 %i.r to i32
  %i.t = icmp sle i32 %i.k, %i.s
  br label %_ZNK2OT18ConditionAxisRange8evaluateINS_21ItemVarStoreInstancerEEEbPKijPT_.exit

bb.f:                                             ; preds = %tailrecurse
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.u = getelementptr inbounds nuw i8, ptr %.tr, i64 2
  %i.v = load i16, ptr %i.u, align 1, !tbaa !62
  %i.w = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.x = load i32, ptr %i.w, align 1, !tbaa !58   ; 2 uses
  %i.y = tail call noundef i32 @llvm.bswap.i32(i32 %i.x) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !2578
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = icmp ne i32 %i.x, -1
  %or.cond.not.i.i.i = and i1 %i.ad, %i.ac
  br i1 %or.cond.not.i.i.i, label %bb.g, label %_ZNK2OT14ConditionValue8evaluateINS_21ItemVarStoreInstancerEEEbPKijPT_.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1655 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call noundef i32 @_ZNK2OT16DeltaSetIndexMap3mapEj(ptr noundef nonnull align 1 dereferenceable(7) %i.af, i32 noundef %i.y)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.07.i.i.i = phi i32 [ %i.ag, %bb.h ], [ %i.y, %bb.g ] ; 2 uses
  %i.ah = load ptr, ptr %3, align 8, !tbaa !1652  ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.z, align 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %i.aa, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1656
  %.sroa.2.8.extract.trunc.i.i.i.i = trunc i64 %.sroa.2.0.copyload.i.i.i to i32
  %i.ak = lshr i32 %.07.i.i.i, 16                 ; 2 uses
  %i.al = and i32 %.07.i.i.i, 65535
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 6
  %i.an = load i16, ptr %i.am, align 1, !tbaa !62
  %i.ao = tail call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %i.ap = zext i16 %i.ao to i32
  %.not.i.i.i.i.i.i = icmp samesign ult i32 %i.ak, %i.ap
  br i1 %.not.i.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i.i.i.i.i, label %_ZNK2OT14ConditionValue8evaluateINS_21ItemVarStoreInstancerEEEbPKijPT_.exit, !prof !49

_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i.i.i.i.i: ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ar = zext nneg i32 %i.ak to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 1, !tbaa !58 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  %i.av = tail call i32 @llvm.bswap.i32(i32 %i.at)
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aw
  %.0.i.i.i.i.i.i.i.i = select i1 %i.au, ptr @_hb_NullPool, ptr %i.ax, !prof !48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i, i64 4
  %i.az = load i16, ptr %i.ay, align 1, !tbaa !62
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.az, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK2OT14ConditionValue8evaluateINS_21ItemVarStoreInstancerEEEbPKijPT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.bb = load i32, ptr %i.ba, align 1, !tbaa !58 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.bb)
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.be
  %.0.i.i10.i.i.i.i.i.i = select i1 %i.bc, ptr @_hb_NullPool, ptr %i.bf, !prof !48
  %i.bg = tail call noundef float @_ZNK2OT7VarData10_get_deltaEjPKijRKNS_13VarRegionListEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i.i.i.i.i.i, i32 noundef %i.al, ptr noundef %.sroa.0.0.copyload.i.i.i, i32 noundef %.sroa.2.8.extract.trunc.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i10.i.i.i.i.i.i, ptr noundef %i.aj)
  br label %_ZNK2OT14ConditionValue8evaluateINS_21ItemVarStoreInstancerEEEbPKijPT_.exit

_ZNK2OT14ConditionValue8evaluateINS_21ItemVarStoreInstancerEEEbPKijPT_.exit: ; preds = %bb.f, %bb.i, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i.i.i.i.i, %bb.j
  %.0.i.i.i = phi float [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.i ], [ %i.bg, %bb.j ], [ 0.000000e+00, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i.i.i.i.i ]
  %i.bh = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  %i.bi = sitofp i16 %i.bh to float
  %i.bj = fadd float %.0.i.i.i, %i.bi
  %i.bk = fcmp ogt float %i.bj, 0.000000e+00
  br label %_ZNK2OT18ConditionAxisRange8evaluateINS_21ItemVarStoreInstancerEEEbPKijPT_.exit

bb.k:                                             ; preds = %tailrecurse
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.bl = getelementptr inbounds nuw i8, ptr %.tr, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !92  ; 2 uses
  %.not.i16.not42.not = icmp eq i8 %i.bm, 0
  br i1 %.not.i16.not42.not, label %_ZNK2OT18ConditionAxisRange8evaluateINS_21ItemVarStoreInstancerEEEbPKijPT_.exit, label %.lr.ph44

.lr.ph44:                                         ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %.tr, i64 3
  %wide.trip.count64 = zext i8 %i.bm to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph44
  %indvars.iv61 = phi i64 [ 0, %.lr.ph44 ], [ %indvars.iv.next62, %bb.l ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [3 x i8], ptr %i.bn, i64 %indvars.iv61 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !61  ; 2 uses
end_hunk_9
begin_hunk_10_@_ZNK2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE10intersectsEPK8hb_set_t:bb.a
  %.sroa.0.07.i = phi ptr [ %i.bs, %.lr.ph.i ], [ %i.co, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS3_10SmallTypesEEEEZNKS4_17CoverageFormat2_4IS6_E10intersectsEPK8hb_set_tEUlRS8_E_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i ] ; 3 uses
  %.sroa.6.06.i = phi i32 [ %i.n, %.lr.ph.i ], [ %i.cn, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS3_10SmallTypesEEEEZNKS4_17CoverageFormat2_4IS6_E10intersectsEPK8hb_set_tEUlRS8_E_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i ]
  %.val1.i.i.i = load i16, ptr %.sroa.0.07.i, align 1, !tbaa !62
  %i.bu = getelementptr i8, ptr %.sroa.0.07.i, i64 2
  %.val2.i.i.i = load i16, ptr %i.bu, align 1, !tbaa !62
  %i.bv = call noundef i16 @llvm.bswap.i16(i16 %.val1.i.i.i)
  %i.bw = zext i16 %i.bv to i32                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #63
  %i.bx = add nsw i32 %i.bw, -1                   ; 4 uses
  store i32 %i.bx, ptr %i.c, align 4, !tbaa !139
  %i.by = load i8, ptr %i.bt, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.q, label %bb.p, !prof !48

bb.p:                                             ; preds = %bb.o
  %i.ca = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.j, ptr noundef nonnull %i.c)
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.c, align 4
  br label %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS3_10SmallTypesEEEEZNKS4_17CoverageFormat2_4IS6_E10intersectsEPK8hb_set_tEUlRS8_E_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  store i32 %i.bx, ptr %i.a, align 4, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  store i32 %i.bx, ptr %i.b, align 4, !tbaa !139
  %i.cb = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.j, ptr noundef nonnull %i.b) ; 0 uses
  %i.cc = load i32, ptr %i.b, align 4, !tbaa !139
  %i.cd = icmp ugt i32 %i.cc, %i.bw
  br i1 %i.cd, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.bx, ptr %i.b, align 4, !tbaa !139
  %i.ce = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.cf = load i32, ptr %i.b, align 4, !tbaa !139
  %i.cg = add i32 %i.cf, 1                        ; 2 uses
  %i.ch = icmp ne i32 %i.cg, -1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cg, %bb.r ], [ %i.bw, %bb.q ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %i.ch, %bb.r ], [ true, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS3_10SmallTypesEEEEZNKS4_17CoverageFormat2_4IS6_E10intersectsEPK8hb_set_tEUlRS8_E_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i

_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS3_10SmallTypesEEEEZNKS4_17CoverageFormat2_4IS6_E10intersectsEPK8hb_set_tEUlRS8_E_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i: ; preds = %bb.s, %bb.p
  %i.ci = phi i32 [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.p ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s ]
  %.2.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %i.ca, %bb.p ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s ]
  %i.cj = call noundef i16 @llvm.bswap.i16(i16 %.val2.i.i.i)
  %i.ck = zext i16 %i.cj to i32
  %i.cl = icmp ule i32 %i.ci, %i.ck
  %i.cm = select i1 %.2.i.i.i.i.i.i.i.i.i.i.i.i, i1 %i.cl, i1 false ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #63
  %i.cn = add i32 %.sroa.6.06.i, -1               ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 6
  %.not.not.i = icmp eq i32 %i.cn, 0
  %or.cond = select i1 %i.cm, i1 true, i1 %.not.not.i
  br i1 %or.cond, label %"_ZNK4$_44clI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS4_10SmallTypesEEEEZNKS5_17CoverageFormat2_4IS7_E10intersectsEPK8hb_set_tEUlRS9_E_L24hb_function_sortedness_t0ELPv0EERK3$_8SN_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSJ_0EEEbOSP_OT0_OT1_.exit", label %bb.o, !llvm.loop !3844

"_ZNK4$_44clI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS4_10SmallTypesEEEEZNKS5_17CoverageFormat2_4IS7_E10intersectsEPK8hb_set_tEUlRS9_E_L24hb_function_sortedness_t0ELPv0EERK3$_8SN_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSJ_0EEEbOSP_OT0_OT1_.exit.sink.split": ; preds = %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit, %_ZNK2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE12get_coverageEj.exit, %bb.b
  %.3.ph = phi i1 [ false, %bb.b ], [ true, %_ZNK2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE12get_coverageEj.exit ], [ false, %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  br label %"_ZNK4$_44clI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS4_10SmallTypesEEEEZNKS5_17CoverageFormat2_4IS7_E10intersectsEPK8hb_set_tEUlRS9_E_L24hb_function_sortedness_t0ELPv0EERK3$_8SN_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSJ_0EEEbOSP_OT0_OT1_.exit"

"_ZNK4$_44clI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS4_10SmallTypesEEEEZNKS5_17CoverageFormat2_4IS7_E10intersectsEPK8hb_set_tEUlRS9_E_L24hb_function_sortedness_t0ELPv0EERK3$_8SN_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSJ_0EEEbOSP_OT0_OT1_.exit": ; preds = %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS3_10SmallTypesEEEEZNKS4_17CoverageFormat2_4IS6_E10intersectsEPK8hb_set_tEUlRS8_E_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i, %"_ZNK4$_44clI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS4_10SmallTypesEEEEZNKS5_17CoverageFormat2_4IS7_E10intersectsEPK8hb_set_tEUlRS9_E_L24hb_function_sortedness_t0ELPv0EERK3$_8SN_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSJ_0EEEbOSP_OT0_OT1_.exit.sink.split", %bb.n
  %.3 = phi i1 [ false, %bb.n ], [ %.3.ph, %"_ZNK4$_44clI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS4_10SmallTypesEEEEZNKS5_17CoverageFormat2_4IS7_E10intersectsEPK8hb_set_tEUlRS9_E_L24hb_function_sortedness_t0ELPv0EERK3$_8SN_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSJ_0EEEbOSP_OT0_OT1_.exit.sink.split" ], [ %i.cm, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS3_10SmallTypesEEEEZNKS4_17CoverageFormat2_4IS6_E10intersectsEPK8hb_set_tEUlRS8_E_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE16intersects_classEPK8hb_set_tt(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i16, ptr %i.f, align 1, !tbaa !62   ; 2 uses
  %i.h = tail call noundef i16 @llvm.bswap.i16(i16 %i.g) ; 2 uses
  %i.i = zext i16 %i.h to i32
  %i.j = icmp eq i16 %2, 0
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #63
  store i32 -1, ptr %i.e, align 4, !tbaa !139
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %.split, !prof !48

.split:                                           ; preds = %bb.b
  %i.o = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.e)
  br i1 %i.o, label %.split._crit_edge, label %.loopexit.sink.split

.split._crit_edge:                                ; preds = %.split
  %.pre = load i32, ptr %i.e, align 4, !tbaa !139
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #63
  store i32 -1, ptr %i.c, align 4, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #63
  store i32 -1, ptr %i.d, align 4, !tbaa !139
  %i.p = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.d) ; 0 uses
  %i.q = load i32, ptr %i.d, align 4, !tbaa !139
  %.not29 = icmp eq i32 %i.q, 0
  br i1 %.not29, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #63
  br label %bb.d

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit: ; preds = %bb.c
  store i32 -1, ptr %i.d, align 4, !tbaa !139
  %i.r = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 0 uses
  %i.s = load i32, ptr %i.d, align 4, !tbaa !139
  %i.t = add i32 %i.s, 1                          ; 2 uses
  %.not30 = icmp eq i32 %i.t, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #63
  br i1 %.not30, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %.split._crit_edge, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit
  %i.u = phi i32 [ %.pre, %.split._crit_edge ], [ 0, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread ], [ %i.t, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.w = load i16, ptr %i.v, align 1, !tbaa !62
  %i.x = call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  %i.z = icmp ult i32 %i.u, %i.y
  br i1 %i.z, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = add nuw nsw i32 %i.y, %i.i              ; 2 uses
  %i.ab = add nsw i32 %i.aa, -1                   ; 4 uses
  store i32 %i.ab, ptr %i.e, align 4, !tbaa !139
  %i.ac = load i8, ptr %i.l, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %.split48, !prof !48

.split48:                                         ; preds = %bb.e
  %i.ae = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #63
  br i1 %i.ae, label %.loopexit, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  store i32 %i.ab, ptr %i.b, align 4, !tbaa !139
  %i.af = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.b) ; 0 uses
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !139
  %i.ah = icmp ult i32 %i.aa, %i.ag
  br i1 %i.ah, label %.thread49, label %bb.g

.thread49:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %.loopexit.sink.split

bb.g:                                             ; preds = %bb.f
  store i32 %i.ab, ptr %i.b, align 4, !tbaa !139
  %i.ai = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.aj = load i32, ptr %i.b, align 4, !tbaa !139
  %.not = icmp eq i32 %i.aj, -2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #63
  br i1 %.not, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.split48, %bb.g, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.not35.not = icmp eq i16 %i.g, 0
  br i1 %.not35.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sink.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  %wide.trip.count = zext i16 %i.h to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !62
  %i.as = call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = icmp eq i16 %i.as, %2
  br i1 %i.at, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.au = load i16, ptr %i.al, align 1, !tbaa !62
  %i.av = call noundef i16 @llvm.bswap.i16(i16 %i.au)
  %i.aw = zext i16 %i.av to i32
  %i.ax = trunc nuw nsw i64 %indvars.iv to i32
  %i.ay = add nuw nsw i32 %i.ax, %i.aw            ; 3 uses
  %i.az = lshr i32 %i.ay, 9                       ; 3 uses
  %i.ba = load atomic i32, ptr %i.am monotonic, align 4 ; 2 uses
  %i.bb = load i32, ptr %i.an, align 4, !tbaa !1699 ; 3 uses
  %i.bc = icmp ult i32 %i.ba, %i.bb
  %i.bd = load ptr, ptr %i.ao, align 8, !tbaa !416 ; 3 uses
  br i1 %i.bc, label %bb.k, label %._crit_edge.i.i.i.i.i.i, !prof !49

bb.k:                                             ; preds = %bb.j
  %i.be = zext i32 %i.ba to i64                   ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !1700
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bg, %i.az
  br i1 %.not.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.k, %bb.j
  %.not1.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.bb, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bh = add nsw i32 %i.bb, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.o, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i, %bb.o ], [ %i.bh, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i, %bb.o ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bi = add i32 %.0212.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i
  %i.bj = lshr i32 %i.bi, 1                       ; 4 uses
  %i.bk = zext nneg i32 %i.bj to i64              ; 2 uses
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !1700 ; 2 uses
  %i.bo = icmp slt i32 %i.az, %i.bn
  br i1 %i.bo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bp = add nsw i32 %i.bj, -1
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.az, %i.bn
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = add nuw nsw i32 %i.bj, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.223.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.n ], [ %.0212.i.i.i.i.i.i.i.i.i.i, %bb.l ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i, %bb.n ], [ %i.bp, %bb.l ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2478

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i: ; preds = %bb.m
  store atomic i32 %i.bj, ptr %i.am monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i:     ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, %bb.k
  %i.br = phi i64 [ %i.bk, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i ], [ %i.be, %bb.k ]
  %.sink.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i, align 8, !tbaa !1702 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !1705
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = lshr i32 %i.ay, 6
  %i.bz = and i32 %i.by, 7
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !1706
  %i.cd = and i32 %i.ay, 63
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = lshr i64 %i.cc, %i.ce
  %i.cg = trunc i64 %i.cf to i8
  %i.ch = and i8 %i.cg, 1
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit: ; preds = %bb.o, %._crit_edge.i.i.i.i.i.i, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, %bb.p
  %.0.i.i.i.i.i = phi i8 [ %i.ch, %bb.p ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.o ]
  %i.ci = load i8, ptr %i.ap, align 8, !tbaa !1166, !range !220, !noundef !74
  %.not31 = icmp eq i8 %i.ci, %.0.i.i.i.i.i
  br i1 %.not31, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.i, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !3845

.loopexit.sink.split:                             ; preds = %.split, %bb.d, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit, %.thread49
  %.4.ph = phi i1 [ true, %.thread49 ], [ false, %.split ], [ true, %bb.d ], [ false, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #63
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, %bb.q, %.loopexit.sink.split, %.split48, %bb.h, %bb.g
  %.4 = phi i1 [ true, %.split48 ], [ true, %bb.g ], [ false, %bb.h ], [ %.4.ph, %.loopexit.sink.split ], [ true, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit ], [ false, %bb.q ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE16intersects_classEPK8hb_set_tt(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 9 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 9 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = icmp eq i16 %2, 0
  br i1 %i.i, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #63
  store i32 -1, ptr %i.h, align 4, !tbaa !139
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.l = load i16, ptr %i.j, align 1, !tbaa !62   ; 2 uses
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  %i.n = zext i16 %i.m to i64                     ; 2 uses
  %.idx = mul nuw nsw i64 %i.n, 6
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %.not79 = icmp eq i16 %i.l, 0
  br i1 %.not79, label %.thread59.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN9hb_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS2_10SmallTypesEEEERS7_EppEi.exit
  %i.r = phi i32 [ -1, %.lr.ph ], [ %.131, %_ZN9hb_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS2_10SmallTypesEEEERS7_EppEi.exit ] ; 6 uses
  %.03782 = phi ptr [ %i.k, %.lr.ph ], [ %i.as, %_ZN9hb_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS2_10SmallTypesEEEERS7_EppEi.exit ] ; 3 uses
  %.sroa.0.081 = phi ptr [ %i.k, %.lr.ph ], [ %.sroa.0.1, %_ZN9hb_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS2_10SmallTypesEEEERS7_EppEi.exit ] ; 4 uses
  %.sroa.8.080 = phi i64 [ %i.n, %.lr.ph ], [ %.sroa.8.1, %_ZN9hb_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS2_10SmallTypesEEEERS7_EppEi.exit ] ; 4 uses
  %i.s = and i64 %.sroa.8.080, 4294967295
  %.not.i.i.i = icmp eq i64 %i.s, 0               ; 2 uses
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr @_hb_Null_OT_RangeRecord, ptr %.sroa.0.081, !prof !48
  %i.t = load i16, ptr %spec.select.i.i.i, align 1, !tbaa !62
  %i.u = call noundef i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = zext i16 %i.u to i32
  %i.w = add nsw i32 %i.r, 1                      ; 3 uses
  %i.x = icmp eq i32 %i.w, %i.v
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.i.i, label %_ZN9hb_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS2_10SmallTypesEEEERS7_EppEi.exit, label %bb.e, !prof !48

bb.e:                                             ; preds = %bb.d
  %i.y = add i64 %.sroa.8.080, 4294967295
  %.sroa.8.12.insert.insert = or i64 %i.y, 4294967296
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.081, i64 6
  br label %_ZN9hb_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS2_10SmallTypesEEEERS7_EppEi.exit

bb.f:                                             ; preds = %bb.c
  %i.aa = load i8, ptr %i.q, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %.split, !prof !48

.split:                                           ; preds = %bb.f
  %i.ac = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.p, ptr noundef nonnull %i.h)
  %.pr.pre.pre = load i32, ptr %i.h, align 4, !tbaa !139 ; 2 uses
  br i1 %i.ac, label %.split._crit_edge, label %.thread59

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #63
  store i32 %i.r, ptr %i.f, align 4, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #63
  store i32 %i.r, ptr %i.g, align 4, !tbaa !139
  %i.ad = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.p, ptr noundef nonnull %i.g) ; 0 uses
  %i.ae = load i32, ptr %i.g, align 4, !tbaa !139
  %i.af = icmp ult i32 %i.w, %i.ae
  br i1 %i.af, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread52, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread52: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #63
  br label %.split._crit_edge

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit: ; preds = %bb.g
  store i32 %i.r, ptr %i.g, align 4, !tbaa !139
  %i.ag = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.p, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) ; 0 uses
  %i.ah = load i32, ptr %i.g, align 4, !tbaa !139
  %i.ai = add i32 %i.ah, 1                        ; 2 uses
  %.not77 = icmp eq i32 %i.ai, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #63
  br i1 %.not77, label %.thread59.thread, label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread52, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit
  %i.aj = phi i32 [ %i.ai, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit ], [ %i.w, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread52 ], [ %.pr.pre.pre, %.split ]
  %i.ak = load i16, ptr %.03782, align 1, !tbaa !62
  %i.al = call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32
  %i.an = icmp ult i32 %i.aj, %i.am
  br i1 %i.an, label %.thread72, label %bb.h
end_hunk_10
begin_hunk_11_@_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE24intersected_class_glyphsEPK8hb_set_tjPS4_:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64
  %wide.trip.count = zext i16 %i.i to i64
  br label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.u = load i16, ptr %i.t, align 1, !tbaa !62
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u)
  %i.w = zext i16 %i.v to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #63
  store i32 -1, ptr %i.e, align 4, !tbaa !139
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit: ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.backedge, %bb.b
  %i.ab = load i8, ptr %i.y, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.d, label %bb.c, !prof !48

bb.c:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  %i.ad = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.x, ptr noundef nonnull %i.e)
  %.pre = load i32, ptr %i.e, align 4
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit

bb.d:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #63
  %i.ae = load i32, ptr %i.e, align 4, !tbaa !139 ; 5 uses
  store i32 %i.ae, ptr %i.c, align 4, !tbaa !139
  %i.af = icmp eq i32 %i.ae, -2
  br i1 %i.af, label %bb.e, label %bb.f, !prof !48

bb.e:                                             ; preds = %bb.d
  store i32 -1, ptr %i.e, align 4, !tbaa !139
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #63
  store i32 %i.ae, ptr %i.d, align 4, !tbaa !139
  %i.ag = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.x, ptr noundef nonnull %i.d) ; 0 uses
  %i.ah = add i32 %i.ae, 1                        ; 2 uses
  %i.ai = load i32, ptr %i.d, align 4, !tbaa !139
  %i.aj = icmp ult i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.ae, ptr %i.d, align 4, !tbaa !139
  %i.ak = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.x, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 0 uses
  %i.al = load i32, ptr %i.d, align 4, !tbaa !139
  %i.am = add i32 %i.al, 1                        ; 2 uses
  %i.an = icmp ne i32 %i.am, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i.i = phi i32 [ %i.am, %bb.g ], [ %i.ah, %bb.f ] ; 2 uses
  %.0.i.i = phi i1 [ %i.an, %bb.g ], [ true, %bb.f ]
  store i32 %.sink.i.i, ptr %i.e, align 4, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #63
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.ao = phi i32 [ -1, %bb.e ], [ %.sink.i.i, %bb.h ]
  %.1.i.i = phi i1 [ false, %bb.e ], [ %.0.i.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #63
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit: ; preds = %bb.c, %bb.i
  %i.ap = phi i32 [ %.pre, %bb.c ], [ %i.ao, %bb.i ] ; 3 uses
  %.2.i.i = phi i1 [ %i.ad, %bb.c ], [ %.1.i.i, %bb.i ]
  %i.aq = icmp ult i32 %i.ap, %i.w
  %i.ar = select i1 %.2.i.i, i1 %i.aq, i1 false
  br i1 %i.ar, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #63
  %i.as = load i16, ptr %i.t, align 1, !tbaa !62
  %i.at = call noundef i16 @llvm.bswap.i16(i16 %i.as)
  %i.au = zext i16 %i.at to i32
  %i.av = add nsw i32 %i.j, -1
  %i.aw = add nsw i32 %i.av, %i.au
  store i32 %i.aw, ptr %i.f, align 4, !tbaa !139
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit23

bb.k:                                             ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit
  %i.ax = load i8, ptr %i.aa, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.l, label %bb.m, !prof !48

bb.l:                                             ; preds = %bb.k
  call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.z, i32 noundef %i.ap)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.backedge

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.backedge: ; preds = %bb.l, %bb.m
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit, !llvm.loop !3847

bb.m:                                             ; preds = %bb.k
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.z, i32 noundef %i.ap)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.backedge

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit23: ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit23.backedge, %bb.j
  %i.az = load i8, ptr %i.y, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.n, label %.split, !prof !48

.split:                                           ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit23
  %i.bb = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.x, ptr noundef nonnull %i.f)
  br i1 %i.bb, label %.split._crit_edge, label %.loopexit

.split._crit_edge:                                ; preds = %.split
  %.pre42 = load i32, ptr %i.f, align 4, !tbaa !139
  br label %bb.p

bb.n:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.bc = load i32, ptr %i.f, align 4, !tbaa !139 ; 5 uses
  store i32 %i.bc, ptr %i.a, align 4, !tbaa !139
  %i.bd = icmp eq i32 %i.bc, -2
  br i1 %i.bd, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22.thread, label %bb.o, !prof !48

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22.thread: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %.loopexit

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  store i32 %i.bc, ptr %i.b, align 4, !tbaa !139
  %i.be = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.x, ptr noundef nonnull %i.b) ; 0 uses
  %i.bf = add i32 %i.bc, 1                        ; 3 uses
  %i.bg = load i32, ptr %i.b, align 4, !tbaa !139
  %i.bh = icmp ult i32 %i.bf, %i.bg
  br i1 %i.bh, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22.thread26, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22.thread26: ; preds = %bb.o
  store i32 %i.bf, ptr %i.f, align 4, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %bb.p

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22: ; preds = %bb.o
  store i32 %i.bc, ptr %i.b, align 4, !tbaa !139
  %i.bi = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.x, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.bj = load i32, ptr %i.b, align 4, !tbaa !139
  %i.bk = add i32 %i.bj, 1                        ; 3 uses
  %.not29 = icmp eq i32 %i.bk, -1
  store i32 %i.bk, ptr %i.f, align 4, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br i1 %.not29, label %.loopexit, label %bb.p

.loopexit:                                        ; preds = %.split, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #63
  br label %.loopexit30

bb.p:                                             ; preds = %.split._crit_edge, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22.thread26, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22
  %i.bl = phi i32 [ %.pre42, %.split._crit_edge ], [ %i.bf, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22.thread26 ], [ %i.bk, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22 ] ; 2 uses
  %i.bm = load i8, ptr %i.aa, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.q, label %bb.r, !prof !48

bb.q:                                             ; preds = %bb.p
  call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.z, i32 noundef %i.bl)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit23.backedge

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit23.backedge: ; preds = %bb.q, %bb.r
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit23, !llvm.loop !3848

bb.r:                                             ; preds = %bb.p
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.z, i32 noundef %i.bl)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit23.backedge

bb.s:                                             ; preds = %.lr.ph, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit24
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit24 ] ; 4 uses
  %i.bo = load i16, ptr %i.g, align 1, !tbaa !62
  %i.bp = tail call noundef i16 @llvm.bswap.i16(i16 %i.bo)
  %i.bq = zext i16 %i.bp to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.bq
  br i1 %.not.i, label %bb.t, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit, !prof !49

bb.t:                                             ; preds = %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit: ; preds = %bb.s, %bb.t
  %.0.i = phi ptr [ %i.br, %bb.t ], [ @_hb_NullPool, %bb.s ]
  %i.bs = load i16, ptr %.0.i, align 1, !tbaa !62
  %i.bt = tail call noundef i16 @llvm.bswap.i16(i16 %i.bs)
  %i.bu = zext i16 %i.bt to i32
  %i.bv = icmp eq i32 %2, %i.bu
  br i1 %i.bv, label %bb.u, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit24

bb.u:                                             ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit
  %i.bw = load i16, ptr %i.m, align 1, !tbaa !62
  %i.bx = tail call noundef i16 @llvm.bswap.i16(i16 %i.bw)
  %i.by = zext i16 %i.bx to i32
  %i.bz = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ca = add nuw nsw i32 %i.bz, %i.by            ; 3 uses
  %i.cb = lshr i32 %i.ca, 9                       ; 3 uses
  %i.cc = load atomic i32, ptr %i.n monotonic, align 4 ; 2 uses
  %i.cd = load i32, ptr %i.o, align 4, !tbaa !1699 ; 3 uses
  %i.ce = icmp ult i32 %i.cc, %i.cd
  %i.cf = load ptr, ptr %i.p, align 8, !tbaa !416 ; 3 uses
  br i1 %i.ce, label %bb.v, label %._crit_edge.i.i.i.i.i.i, !prof !49

bb.v:                                             ; preds = %bb.u
  %i.cg = zext i32 %i.cc to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !1700
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ci, %i.cb
  br i1 %.not.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.v, %bb.u
  %.not1.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.cd, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.cj = add nsw i32 %i.cd, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.z, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i, %bb.z ], [ %i.cj, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i, %bb.z ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ck = add i32 %.0212.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i
  %i.cl = lshr i32 %i.ck, 1                       ; 4 uses
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !1700 ; 2 uses
  %i.cq = icmp slt i32 %i.cb, %i.cp
  br i1 %i.cq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cr = add nsw i32 %i.cl, -1
  br label %bb.z

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.cb, %i.cp
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = add nuw nsw i32 %i.cl, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %.223.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cs, %bb.y ], [ %.0212.i.i.i.i.i.i.i.i.i.i, %bb.w ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i, %bb.y ], [ %i.cr, %bb.w ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2478

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i: ; preds = %bb.x
  store atomic i32 %i.cl, ptr %i.n monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i:     ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, %bb.v
  %i.ct = phi i64 [ %i.cm, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i ], [ %i.cg, %bb.v ]
  %.sink.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i, align 8, !tbaa !1702 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !1705
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = lshr i32 %i.ca, 6
  %i.db = and i32 %i.da, 7
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !1706
  %i.df = and i32 %i.ca, 63
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = lshr i64 %i.de, %i.dg
  %i.di = trunc i64 %i.dh to i8
  %i.dj = and i8 %i.di, 1
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit: ; preds = %bb.z, %._crit_edge.i.i.i.i.i.i, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, %bb.aa
  %.0.i.i.i.i.i = phi i8 [ %i.dj, %bb.aa ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.z ]
  %i.dk = load i8, ptr %i.q, align 8, !tbaa !1166, !range !220, !noundef !74
  %.not = icmp eq i8 %i.dk, %.0.i.i.i.i.i
  br i1 %.not, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit24, label %bb.ab

bb.ab:                                            ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit
  %i.dl = load i16, ptr %i.m, align 1, !tbaa !62
  %i.dm = tail call noundef i16 @llvm.bswap.i16(i16 %i.dl)
  %i.dn = zext i16 %i.dm to i32
  %i.do = add nuw nsw i32 %i.bz, %i.dn            ; 2 uses
  %i.dp = load i8, ptr %i.s, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.ac, label %bb.ad, !prof !48

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.r, i32 noundef %i.do)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit24

bb.ad:                                            ; preds = %bb.ab
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.r, i32 noundef %i.do)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit24

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit24: ; preds = %bb.ad, %bb.ac, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit30, label %bb.s, !llvm.loop !3849

.loopexit30:                                      ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit24, %.preheader, %.loopexit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE24intersected_class_glyphsEPK8hb_set_tjPS4_(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %4 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 3 uses
  %5 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 5 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 9 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 9 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 9 uses
  %i.l = alloca i32, align 4                      ; 18 uses
  %6 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 6 uses
  %i.m = icmp eq i32 %2, 0
  br i1 %i.m, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #63
  store i32 -1, ptr %i.l, align 4, !tbaa !139
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.p = load i16, ptr %i.n, align 1, !tbaa !62   ; 2 uses
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.p)
  %i.r = zext i16 %i.q to i64
  %.idx169 = mul nuw nsw i64 %i.r, 6
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx169
  %.not42165 = icmp eq i16 %i.p, 0
  br i1 %.not42165, label %.preheader, label %.lr.ph168

.lr.ph168:                                        ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sink.in.i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 20
  br label %bb.c

.preheader:                                       ; preds = %._crit_edge164, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit54

bb.c:                                             ; preds = %.lr.ph168, %._crit_edge164
  %i.af = phi i32 [ -1, %.lr.ph168 ], [ %i.dd, %._crit_edge164 ] ; 4 uses
  %.038166 = phi ptr [ %i.o, %.lr.ph168 ], [ %i.de, %._crit_edge164 ] ; 4 uses
  %i.ag = load i8, ptr %i.u, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.d, label %.split, !prof !48

.split:                                           ; preds = %bb.c
  %i.ai = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.t, ptr noundef nonnull %i.l)
  br i1 %i.ai, label %.split..preheader136_crit_edge, label %.thread119

.split..preheader136_crit_edge:                   ; preds = %.split
  %.pre192 = load i32, ptr %i.l, align 4, !tbaa !139
  br label %.preheader136

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #63
  store i32 %i.af, ptr %i.j, align 4, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #63
  store i32 %i.af, ptr %i.k, align 4, !tbaa !139
  %i.aj = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.t, ptr noundef nonnull %i.k) ; 0 uses
  %i.ak = add nsw i32 %i.af, 1                    ; 3 uses
  %i.al = load i32, ptr %i.k, align 4, !tbaa !139
  %i.am = icmp ult i32 %i.ak, %i.al
  br i1 %i.am, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit, label %.split113

.split113:                                        ; preds = %bb.d
  store i32 %i.af, ptr %i.k, align 4, !tbaa !139
  %i.an = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.t, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) ; 0 uses
  %i.ao = load i32, ptr %i.k, align 4, !tbaa !139
  %i.ap = add i32 %i.ao, 1                        ; 3 uses
  %.not133 = icmp eq i32 %i.ap, -1
  store i32 %i.ap, ptr %i.l, align 4, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #63
  br i1 %.not133, label %.thread119, label %.preheader136

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit: ; preds = %bb.d
  store i32 %i.ak, ptr %i.l, align 4, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #63
  br label %.preheader136

.preheader136:                                    ; preds = %.split..preheader136_crit_edge, %.split113, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit
  %i.aq = phi i32 [ %.pre192, %.split..preheader136_crit_edge ], [ %i.ap, %.split113 ], [ %i.ak, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit ] ; 2 uses
  %i.ar = load i16, ptr %.038166, align 1, !tbaa !62
  %i.as = call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i32
  %i.au = icmp ult i32 %i.aq, %i.at
  br i1 %i.au, label %.lr.ph163, label %._crit_edge164

.lr.ph163:                                        ; preds = %.preheader136, %.backedge
  %i.av = phi i32 [ %i.cm, %.backedge ], [ %i.aq, %.preheader136 ] ; 4 uses
  %i.aw = load i8, ptr %i.w, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.e, label %bb.m, !prof !48

bb.e:                                             ; preds = %.lr.ph163
  %i.ay = load i8, ptr %i.v, align 8, !tbaa !413, !range !220, !noundef !74
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit, !prof !49

bb.f:                                             ; preds = %bb.e
  %i.ba = lshr i32 %i.av, 9                       ; 3 uses
  %i.bb = load atomic i32, ptr %i.x monotonic, align 8 ; 2 uses
  %i.bc = load i32, ptr %i.y, align 4, !tbaa !1699 ; 3 uses
  %i.bd = icmp ult i32 %i.bb, %i.bc
  %i.be = load ptr, ptr %i.z, align 8, !tbaa !416 ; 3 uses
  br i1 %i.bd, label %bb.g, label %._crit_edge.i.i, !prof !49

bb.g:                                             ; preds = %bb.f
  %i.bf = zext i32 %i.bb to i64                   ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !1700
  %.not.i.i66 = icmp eq i32 %i.bh, %i.ba
  br i1 %.not.i.i66, label %_ZN12hb_bit_set_t8page_forEjb.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.f
  %.not1.i.i.i.i.i.i = icmp sgt i32 %i.bc, 0
  br i1 %.not1.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %._crit_edge.i.i
  %i.bi = add nsw i32 %i.bc, -1
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.k, %.lr.ph.preheader.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i, %bb.k ], [ %i.bi, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i, %bb.k ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.bj = add i32 %.0212.i.i.i.i.i.i, %.0203.i.i.i.i.i.i
  %i.bk = lshr i32 %i.bj, 1                       ; 4 uses
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !1700 ; 2 uses
  %i.bp = icmp slt i32 %i.ba, %i.bo
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bq = add nsw i32 %i.bk, -1
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i = icmp eq i32 %i.ba, %i.bo
  br i1 %.not28.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = add nuw nsw i32 %i.bk, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.223.i.i.i.i.i.i = phi i32 [ %i.br, %bb.j ], [ %.0212.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %.2.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i, %bb.j ], [ %i.bq, %bb.h ] ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i, %.2.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2478

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i: ; preds = %bb.i
  store atomic i32 %i.bk, ptr %i.x monotonic, align 8
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i

_ZN12hb_bit_set_t8page_forEjb.exit.i:             ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i, %bb.g
  %i.bs = phi i64 [ %i.bl, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i ], [ %i.bf, %bb.g ]
  %.sink.i.i65 = load ptr, ptr %.sink.in.i.i, align 8, !tbaa !1702 ; 2 uses
  %.not.i = icmp eq ptr %.sink.i.i65, null
  br i1 %.not.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit, label %bb.l

bb.l:                                             ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i
end_hunk_11
