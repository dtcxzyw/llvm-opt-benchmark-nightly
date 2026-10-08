Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/replaygain?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@store_to_file_post_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val = load i32, ptr %i.h, align 8, !tbaa !57
  %i.i = tail call i32 @chmod(ptr noundef readonly %0, i32 noundef %.val) #14 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.d ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @grabbag__replaygain_store_to_file_reference(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !24
  %i.c = call fastcc ptr @store_to_file_pre_(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.e = tail call i32 @FLAC__metadata_object_vorbiscomment_remove_entries_matching(ptr noundef %i.d, ptr noundef nonnull @.str) #14
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load float, ptr @ReplayGainReferenceLoudness, align 4, !tbaa !13
  %i.h = tail call fastcc i32 @append_tag_(ptr noundef %i.d, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, float noundef %i.g)
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %select.unfold, label %grabbag__replaygain_store_to_vorbiscomment_reference.exit

select.unfold:                                    ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !26
  tail call void @FLAC__metadata_chain_delete(ptr noundef %i.i) #14
  br label %bb.d

grabbag__replaygain_store_to_vorbiscomment_reference.exit: ; preds = %bb.c
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.k = tail call fastcc ptr @store_to_file_post_(ptr noundef %0, ptr noundef %i.j, i32 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %grabbag__replaygain_store_to_vorbiscomment_reference.exit, %bb.a, %select.unfold
  %.0 = phi ptr [ %i.c, %bb.a ], [ @.str.5, %select.unfold ], [ %i.k, %grabbag__replaygain_store_to_vorbiscomment_reference.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @grabbag__replaygain_store_to_file_album(ptr noundef %0, float noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !24
  %i.c = call fastcc ptr @store_to_file_pre_(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !24   ; 4 uses
  %i.e = tail call i32 @FLAC__metadata_object_vorbiscomment_remove_entries_matching(ptr noundef %i.d, ptr noundef nonnull @.str.3) #14
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @FLAC__metadata_object_vorbiscomment_remove_entries_matching(ptr noundef %i.d, ptr noundef nonnull @.str.4) #14
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call fastcc i32 @append_tag_(ptr noundef %i.d, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, float noundef %1)
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call fastcc i32 @append_tag_(ptr noundef %i.d, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.4, float noundef %2)
  %.not7.i = icmp eq i32 %i.j, 0
  br i1 %.not7.i, label %select.unfold, label %grabbag__replaygain_store_to_vorbiscomment_album.exit

select.unfold:                                    ; preds = %bb.e, %bb.b, %bb.d, %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !26
  tail call void @FLAC__metadata_chain_delete(ptr noundef %i.k) #14
  br label %bb.f

grabbag__replaygain_store_to_vorbiscomment_album.exit: ; preds = %bb.e
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.m = tail call fastcc ptr @store_to_file_post_(ptr noundef %0, ptr noundef %i.l, i32 noundef %3)
  br label %bb.f

bb.f:                                             ; preds = %grabbag__replaygain_store_to_vorbiscomment_album.exit, %bb.a, %select.unfold
  %.0 = phi ptr [ %i.c, %bb.a ], [ @.str.5, %select.unfold ], [ %i.m, %grabbag__replaygain_store_to_vorbiscomment_album.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @grabbag__replaygain_store_to_file_title(ptr noundef %0, float noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !24
  %i.c = call fastcc ptr @store_to_file_pre_(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !24   ; 4 uses
  %i.e = tail call i32 @FLAC__metadata_object_vorbiscomment_remove_entries_matching(ptr noundef %i.d, ptr noundef nonnull @.str.1) #14
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @FLAC__metadata_object_vorbiscomment_remove_entries_matching(ptr noundef %i.d, ptr noundef nonnull @.str.2) #14
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call fastcc i32 @append_tag_(ptr noundef %i.d, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, float noundef %1)
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call fastcc i32 @append_tag_(ptr noundef %i.d, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, float noundef %2)
  %.not7.i = icmp eq i32 %i.j, 0
  br i1 %.not7.i, label %select.unfold, label %grabbag__replaygain_store_to_vorbiscomment_title.exit

select.unfold:                                    ; preds = %bb.e, %bb.b, %bb.d, %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !26
  tail call void @FLAC__metadata_chain_delete(ptr noundef %i.k) #14
  br label %bb.f

grabbag__replaygain_store_to_vorbiscomment_title.exit: ; preds = %bb.e
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.m = tail call fastcc ptr @store_to_file_post_(ptr noundef %0, ptr noundef %i.l, i32 noundef %3)
  br label %bb.f

bb.f:                                             ; preds = %grabbag__replaygain_store_to_vorbiscomment_title.exit, %bb.a, %select.unfold
  %.0 = phi ptr [ %i.c, %bb.a ], [ @.str.5, %select.unfold ], [ %i.m, %grabbag__replaygain_store_to_vorbiscomment_title.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @grabbag__replaygain_load_from_vorbiscomment(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca [32 x i8], align 16               ; 7 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca [32 x i8], align 16               ; 6 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = load float, ptr @ReplayGainReferenceLoudness, align 4, !tbaa !13
  %i.h = fpext float %i.g to double
  store double %i.h, ptr %3, align 8, !tbaa !10
  %i.i = tail call ptr @setlocale(i32 noundef 6, ptr noundef null) #14
  %i.j = tail call noalias ptr @strdup(ptr noundef %i.i) #14 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #14 ; 0 uses
  %i.m = tail call i32 @FLAC__metadata_object_vorbiscomment_find_entry_from(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str) #14 ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  br i1 %i.n, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.q = zext nneg i32 %i.m to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59   ; 2 uses
  %i.u = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.t, i32 noundef 61) #15 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %parse_double_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %i.x = load i32, ptr %i.r, align 8, !tbaa !60
  %i.y = zext i32 %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.t to i64
  %.neg.i = sub i64 %i.aa, %i.z
  %i.ab = add i64 %.neg.i, %i.y                   ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %safe_strncpy.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 32) ; 2 uses
  %i.ad = add nsw i64 %spec.select.i, -1
  %i.ae = call ptr @__strncpy_chk(ptr noundef nonnull %i.e, ptr noundef nonnull %i.w, i64 noundef range(i64 0, 32) %i.ad, i64 noundef 32) #14 ; 0 uses
  %6 = getelementptr i8, ptr %i.e, i64 %spec.select.i
  %i.af = getelementptr i8, ptr %6, i64 -1
  store i8 0, ptr %i.af, align 1, !tbaa !22
  br label %safe_strncpy.exit.i

safe_strncpy.exit.i:                              ; preds = %bb.e, %bb.d
  %i.ag = call double @strtod(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #14
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.ai = icmp eq ptr %i.ah, %i.e
  br i1 %i.ai, label %parse_double_.exit, label %bb.f

bb.f:                                             ; preds = %safe_strncpy.exit.i
  store double %i.ag, ptr %3, align 8, !tbaa !10
  br label %parse_double_.exit

parse_double_.exit:                               ; preds = %bb.c, %safe_strncpy.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.g

bb.g:                                             ; preds = %parse_double_.exit, %bb.b
  %.not = icmp eq i32 %1, 0                       ; 3 uses
  %i.aj = select i1 %.not, ptr @.str.1, ptr @.str.3
  %i.ak = call i32 @FLAC__metadata_object_vorbiscomment_find_entry_from(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %i.aj) #14 ; 2 uses
  %i.al = icmp slt i32 %i.ak, 0
  %i.am = select i1 %.not, ptr @.str.2, ptr @.str.4
  %i.an = call i32 @FLAC__metadata_object_vorbiscomment_find_entry_from(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %i.am) #14 ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  %narrow.not = select i1 %i.ao, i1 true, i1 %i.al
  br i1 %narrow.not, label %.critedge41, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !22
  %i.ar = zext nneg i32 %i.ak to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !59 ; 2 uses
  %i.av = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.au, i32 noundef 61) #15 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %parse_double_.exit48.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 2 uses
  %i.ay = load i32, ptr %i.as, align 8, !tbaa !60
  %i.az = zext i32 %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.au to i64
  %.neg.i44 = sub i64 %i.bb, %i.ba
  %i.bc = add i64 %.neg.i44, %i.az                ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %safe_strncpy.exit.i46, label %bb.j

bb.j:                                             ; preds = %bb.i
  %spec.select.i45 = call i64 @llvm.umin.i64(i64 %i.bc, i64 32) ; 2 uses
  %i.be = add nsw i64 %spec.select.i45, -1
  %i.bf = call ptr @__strncpy_chk(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ax, i64 noundef range(i64 0, 32) %i.be, i64 noundef 32) #14 ; 0 uses
  %7 = getelementptr i8, ptr %i.c, i64 %spec.select.i45
  %i.bg = getelementptr i8, ptr %7, i64 -1
  store i8 0, ptr %i.bg, align 1, !tbaa !22
  br label %safe_strncpy.exit.i46

safe_strncpy.exit.i46:                            ; preds = %bb.j, %bb.i
  %i.bh = call double @strtod(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #14
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.bj = icmp eq ptr %i.bi, %i.c
  br i1 %i.bj, label %parse_double_.exit48.thread, label %.critedge

parse_double_.exit48.thread:                      ; preds = %bb.h, %safe_strncpy.exit.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %.critedge41

.critedge:                                        ; preds = %safe_strncpy.exit.i46
  store double %i.bh, ptr %4, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.bk = load ptr, ptr %i.ap, align 8, !tbaa !22
  %i.bl = zext nneg i32 %i.an to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bl ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !59 ; 2 uses
  %i.bp = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bo, i32 noundef 61) #15 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %parse_double_.exit53.thread, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 2 uses
  %i.bs = load i32, ptr %i.bm, align 8, !tbaa !60
  %i.bt = zext i32 %i.bs to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = ptrtoint ptr %i.bo to i64
  %.neg.i49 = sub i64 %i.bv, %i.bu
  %i.bw = add i64 %.neg.i49, %i.bt                ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %safe_strncpy.exit.i51, label %bb.l

bb.l:                                             ; preds = %bb.k
  %spec.select.i50 = call i64 @llvm.umin.i64(i64 %i.bw, i64 32) ; 2 uses
  %i.by = add nsw i64 %spec.select.i50, -1
  %i.bz = call ptr @__strncpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull %i.br, i64 noundef range(i64 0, 32) %i.by, i64 noundef 32) #14 ; 0 uses
  %8 = getelementptr i8, ptr %i.a, i64 %spec.select.i50
  %i.ca = getelementptr i8, ptr %8, i64 -1
  store i8 0, ptr %i.ca, align 1, !tbaa !22
  br label %safe_strncpy.exit.i51

safe_strncpy.exit.i51:                            ; preds = %bb.l, %bb.k
  %i.cb = call double @strtod(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14 ; 2 uses
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.cd = icmp eq ptr %i.cc, %i.a
  br i1 %i.cd, label %parse_double_.exit53.thread, label %bb.m

parse_double_.exit53.thread:                      ; preds = %.critedge, %safe_strncpy.exit.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.critedge41

bb.m:                                             ; preds = %safe_strncpy.exit.i51
  store double %i.cb, ptr %5, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ce = fcmp uge double %i.cb, 0.000000e+00     ; 2 uses
  %spec.select43 = zext i1 %i.ce to i32
  br label %.critedge41

.critedge41:                                      ; preds = %parse_double_.exit53.thread, %parse_double_.exit48.thread, %bb.m, %bb.g
  %i.cf = phi i1 [ false, %parse_double_.exit48.thread ], [ %i.ce, %bb.m ], [ false, %parse_double_.exit53.thread ], [ false, %bb.g ]
  %.4 = phi i32 [ 0, %parse_double_.exit48.thread ], [ %spec.select43, %bb.m ], [ 0, %parse_double_.exit53.thread ], [ 0, %bb.g ]
  %i.cg = call ptr @setlocale(i32 noundef 6, ptr noundef nonnull %i.j) #14 ; 0 uses
  call void @free(ptr noundef nonnull %i.j) #14
  %i.ch = icmp ne i32 %2, 0
  %or.cond = or i1 %i.ch, %i.cf
  br i1 %or.cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge41
  %i.ci = zext i1 %.not to i32
  %i.cj = call i32 @grabbag__replaygain_load_from_vorbiscomment(ptr noundef %0, i32 noundef %i.ci, i32 noundef 1, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5)
  br label %bb.o

bb.o:                                             ; preds = %.critedge41, %bb.n, %bb.a
  %.031 = phi i32 [ 0, %bb.a ], [ %.4, %.critedge41 ], [ %i.cj, %bb.n ]
  ret i32 %.031
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @FLAC__metadata_object_vorbiscomment_find_entry_from(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(errnomem: write) uwtable
define dso_local double @grabbag__replaygain_compute_scale_factor(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = fadd double %1, %2
  %i.b = fmul double %i.a, 5.000000e-02
  %i.c = tail call double @pow(double noundef 1.000000e+01, double noundef %i.b) #14
  %i.d = fptrunc double %i.c to float             ; 2 uses
  %i.e = fpext float %i.d to double               ; 2 uses
  %i.f = icmp ne i32 %3, 0
  %i.g = fcmp ogt double %0, 0.000000e+00
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = fdiv double 1.000000e+00, %0
  %i.i = fptrunc double %i.h to float             ; 2 uses
  %i.j = fcmp ogt float %i.d, %i.i
  %i.k = fpext float %i.i to double
  %.0 = select i1 %i.j, double %i.k, double %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi double [ %.0, %bb.b ], [ %i.e, %bb.a ]
  ret double %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #9

declare i32 @flac_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare i32 @FLAC__metadata_object_vorbiscomment_append_comment(ptr noundef, i32, ptr, i32 noundef) local_unnamed_addr #1

declare ptr @FLAC__metadata_chain_new() local_unnamed_addr #1

declare i32 @FLAC__metadata_chain_read(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @FLAC__metadata_chain_status(ptr noundef) local_unnamed_addr #1

declare ptr @FLAC__metadata_iterator_new() local_unnamed_addr #1

declare void @FLAC__metadata_iterator_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @FLAC__metadata_iterator_get_block(ptr noundef) local_unnamed_addr #1

declare i32 @FLAC__metadata_iterator_next(ptr noundef) local_unnamed_addr #1

declare ptr @FLAC__metadata_object_new(i32 noundef) local_unnamed_addr #1

declare void @FLAC__metadata_iterator_delete(ptr noundef) local_unnamed_addr #1

declare i32 @FLAC__metadata_iterator_insert_block_after(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @grabbag__file_change_stats(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @FLAC__metadata_chain_sort_padding(ptr noundef) local_unnamed_addr #1

declare i32 @FLAC__metadata_chain_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare ptr @__strncpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #13

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"double", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"float", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!16 = !{!15, !6, i64 12}
!17 = !{!15, !6, i64 4}
!18 = !{!15, !6, i64 0}
!19 = !{!15, !6, i64 8}
!20 = !{!"FLAC__StreamMetadata", !6, i64 0, !6, i64 4, !6, i64 8, !5, i64 16}
!21 = !{!20, !6, i64 0}
!22 = !{!5, !5, i64 0}
end_hunk_0
