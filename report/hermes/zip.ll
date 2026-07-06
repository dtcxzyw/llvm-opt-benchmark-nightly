inline.NumInlined: 158
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 52
begin_hunk_0_@zip_entry_noallocread:bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.h, %bb.e ], [ -3, %bb.b ], [ -3, %bb.c ], [ -18, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -20, 1) i32 @zip_entry_fread(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.utimbuf, align 8            ; 5 uses
  %3 = alloca %struct.mz_zip_archive_file_stat, align 8 ; 5 uses
  %4 = alloca %struct.mz_zip_archive_file_stat, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %mz_zip_reader_is_file_a_directory.exit.thread27, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(584) %4, i8 0, i64 584, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !192
  %.not18 = icmp eq i32 %i.b, 1
  br i1 %.not18, label %bb.c, label %mz_zip_reader_is_file_a_directory.exit.thread27

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !294  ; 6 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %mz_zip_reader_is_file_a_directory.exit.thread27, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !191  ; 3 uses
  %.not11.i.i = icmp eq ptr %i.g, null
  br i1 %.not11.i.i, label %mz_zip_reader_is_file_a_directory.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !213
  %.not12.i.i = icmp ult i32 %i.d, %i.i
  br i1 %.not12.i.i, label %mz_zip_reader_get_cdh.exit.i, label %mz_zip_reader_is_file_a_directory.exit.thread

mz_zip_reader_get_cdh.exit.i:                     ; preds = %bb.e
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !219  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !220
  %i.m = zext nneg i32 %i.d to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %mz_zip_reader_is_file_a_directory.exit.thread, label %bb.f

bb.f:                                             ; preds = %mz_zip_reader_get_cdh.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.s = load i16, ptr %i.r, align 2, !tbaa !108  ; 2 uses
  %.not11.i = icmp eq i16 %i.s, 0
  br i1 %.not11.i, label %mz_zip_reader_is_file_a_directory.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = zext i16 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 45
  %i.w = load i8, ptr %i.v, align 1, !tbaa !7
  %i.x = icmp eq i8 %i.w, 47
  br i1 %i.x, label %mz_zip_reader_is_file_a_directory.exit.thread27, label %mz_zip_reader_is_file_a_directory.exit

mz_zip_reader_is_file_a_directory.exit:           ; preds = %bb.f, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 38
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = and i32 %i.z, 16
  %.not19 = icmp eq i32 %i.aa, 0
  br i1 %.not19, label %mz_zip_reader_is_file_a_directory.exit.thread, label %mz_zip_reader_is_file_a_directory.exit.thread27

mz_zip_reader_is_file_a_directory.exit.thread:    ; preds = %bb.e, %bb.d, %mz_zip_reader_get_cdh.exit.i, %mz_zip_reader_is_file_a_directory.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.ab = call i32 @mz_zip_reader_file_stat(ptr noundef nonnull readonly %0, i32 noundef %i.d, ptr noundef nonnull %3)
  %.not.i23 = icmp eq i32 %i.ab, 0
  br i1 %.not.i23, label %mz_zip_reader_extract_to_file.exit.thread, label %bb.h

bb.h:                                             ; preds = %mz_zip_reader_is_file_a_directory.exit.thread
  %i.ac = call noalias ptr @fopen(ptr noundef readonly %1, ptr noundef nonnull @.str.16) ; 3 uses
  %.not13.i = icmp eq ptr %i.ac, null
  br i1 %.not13.i, label %mz_zip_reader_extract_to_file.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = call i32 @mz_zip_reader_extract_to_callback(ptr noundef nonnull readonly %0, i32 noundef %i.d, ptr noundef nonnull @mz_zip_file_write_callback, ptr noundef nonnull %i.ac, i32 noundef 0)
  %i.ae = call i32 @fclose(ptr noundef nonnull %i.ac)
  %i.af = icmp eq i32 %i.ae, -1
  %.not14.i = icmp eq i32 %i.ad, 0
  %or.cond.i = select i1 %i.af, i1 true, i1 %.not14.i
  br i1 %or.cond.i, label %mz_zip_reader_extract_to_file.exit.thread, label %bb.j

mz_zip_reader_extract_to_file.exit.thread:        ; preds = %bb.h, %bb.i, %mz_zip_reader_is_file_a_directory.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %mz_zip_reader_is_file_a_directory.exit.thread27

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !243 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store i64 %i.ah, ptr %2, align 8, !tbaa !261
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !263
  %i.aj = call i32 @utime(ptr noundef readonly %1, ptr noundef nonnull %2) #33 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.ak = call i32 @mz_zip_reader_file_stat(ptr noundef nonnull %0, i32 noundef %i.d, ptr noundef nonnull %4)
  %.not21 = icmp eq i32 %i.ak, 0
  br i1 %.not21, label %mz_zip_reader_is_file_a_directory.exit.thread27, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.am = load i32, ptr %i.al, align 4, !tbaa !247
  %i.an = lshr i32 %i.am, 16                      ; 2 uses
  %.not22 = icmp eq i32 %i.an, 0
  br i1 %.not22, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = call i32 @chmod(ptr noundef %1, i32 noundef %i.an) #33
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %mz_zip_reader_is_file_a_directory.exit.thread27, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br label %mz_zip_reader_is_file_a_directory.exit.thread27

mz_zip_reader_is_file_a_directory.exit.thread27:  ; preds = %bb.g, %mz_zip_reader_extract_to_file.exit.thread, %bb.l, %bb.j, %mz_zip_reader_is_file_a_directory.exit, %bb.b, %bb.c, %bb.a, %bb.m
  %.0 = phi i32 [ -1, %bb.a ], [ -3, %bb.b ], [ -19, %bb.j ], [ 0, %bb.m ], [ -19, %mz_zip_reader_extract_to_file.exit.thread ], [ -17, %mz_zip_reader_is_file_a_directory.exit ], [ -3, %bb.c ], [ -20, %bb.l ], [ -17, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define hidden range(i32 -10, 1) i32 @zip_entry_extract(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !192
  %.not11 = icmp eq i32 %i.b, 1
  br i1 %.not11, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !294  ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @mz_zip_reader_extract_to_callback(ptr noundef nonnull %0, i32 noundef %i.d, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  %.not12 = icmp eq i32 %i.f, 0
  %i.g = select i1 %.not12, i32 -10, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ -1, %bb.a ], [ %i.g, %bb.d ], [ -3, %bb.c ], [ -3, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @zip_entries_total(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !301
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @zip_entries_delete(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %3 = alloca %struct.mz_zip_archive_file_stat, align 8 ; 7 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null                     ; 3 uses
  %i.c = icmp ne i64 %2, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %2, 0
  %or.cond3 = and i1 %i.b, %i.d
  br i1 %or.cond3, label %bb.ac, label %zip_entries_total.exit

zip_entries_total.exit:                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !301  ; 15 uses
  %i.g = sext i32 %i.f to i64                     ; 7 uses
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 24) #37 ; 26 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.ac, label %bb.d

bb.d:                                             ; preds = %zip_entries_total.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 1, ptr %i.i, align 4, !tbaa !310
  br i1 %i.b, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %.not7693.i.i = icmp sgt i32 %i.f, 0            ; 3 uses
  br i1 %.not7693.i.i, label %.lr.ph96.i.i, label %.loopexit.thread.i

.lr.ph96.i.i:                                     ; preds = %bb.e
  %i.j = trunc i64 %2 to i32
  %.not7491.i.i = icmp sgt i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %wide.trip.count112.i.i = zext nneg i32 %i.f to i64 ; 7 uses
  br i1 %.not7491.i.i, label %.lr.ph96.split.us.preheader.i.i, label %.lr.ph96.split.i.i

.lr.ph96.split.us.preheader.i.i:                  ; preds = %.lr.ph96.i.i
  %wide.trip.count107.i.i = and i64 %2, 2147483647
  br label %.lr.ph96.split.us.i.i

.lr.ph96.split.us.i.i:                            ; preds = %bb.i, %.lr.ph96.split.us.preheader.i.i
  %indvars.iv109.i.i = phi i64 [ 0, %.lr.ph96.split.us.preheader.i.i ], [ %indvars.iv.next110.i.i, %bb.i ] ; 3 uses
  %.05694.us.i.i = phi i64 [ -1, %.lr.ph96.split.us.preheader.i.i ], [ %.2.ph.us.i.i, %bb.i ] ; 2 uses
  %i.m = trunc nuw nsw i64 %indvars.iv109.i.i to i32 ; 2 uses
  %i.n = call i32 @zip_entry_openbyindex(ptr noundef nonnull %0, i32 noundef %i.m) ; 2 uses
  %.not71.us.i.i = icmp eq i32 %i.n, 0
  br i1 %.not71.us.i.i, label %.preheader.us.i.i, label %zip_entry_mark.exit.thread19.i

bb.f:                                             ; preds = %.preheader.us.i.i, %zip_name_match.exit.thread.us.i.i
  %indvars.iv104.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next105.i.i, %zip_name_match.exit.thread.us.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv104.i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !287  ; 2 uses
  %i.q = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.p) #36
  %sext.i.us.i.i = shl i64 %i.q, 32               ; 2 uses
  %i.r = ashr exact i64 %sext.i.us.i.i, 32        ; 2 uses
  %i.s = add nsw i64 %i.r, 1
  %i.t = call noalias ptr @calloc(i64 noundef %i.s, i64 noundef 1) #37 ; 5 uses
  %.not.i.i.us.i.i = icmp ne ptr %i.t, null
  %i.u = icmp ne i64 %sext.i.us.i.i, 0
  %or.cond.i.i.us.i.i = and i1 %.not.i.i.us.i.i, %i.u
  br i1 %or.cond.i.i.us.i.i, label %.lr.ph.i.i.us.i.i, label %zip_strrpl.exit.i.us.i.i

.lr.ph.i.i.us.i.i:                                ; preds = %bb.f, %bb.h
  %.01322.i.i.us.i.i = phi ptr [ %i.x, %bb.h ], [ %i.t, %bb.f ] ; 2 uses
  %.01421.i.i.us.i.i = phi i64 [ %i.y, %bb.h ], [ 0, %bb.f ]
  %.01620.i.i.us.i.i = phi ptr [ %i.v, %bb.h ], [ %i.p, %bb.f ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01620.i.i.us.i.i, i64 1
  %i.w = load i8, ptr %.01620.i.i.us.i.i, align 1, !tbaa !7 ; 2 uses
  switch i8 %i.w, label %bb.h [
    i8 0, label %zip_strrpl.exit.i.us.i.i
    i8 92, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i.i.us.i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.us.i.i
  %.015.i.i.us.i.i = phi i8 [ 47, %bb.g ], [ %i.w, %.lr.ph.i.i.us.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.01322.i.i.us.i.i, i64 1
  store i8 %.015.i.i.us.i.i, ptr %.01322.i.i.us.i.i, align 1, !tbaa !7
  %i.y = add nuw i64 %.01421.i.i.us.i.i, 1        ; 2 uses
  %exitcond.not.i.i.us.i.i = icmp eq i64 %i.y, %i.r
  br i1 %exitcond.not.i.i.us.i.i, label %zip_strrpl.exit.i.us.i.i, label %.lr.ph.i.i.us.i.i, !llvm.loop !293

zip_strrpl.exit.i.us.i.i:                         ; preds = %bb.h, %.lr.ph.i.i.us.i.i, %bb.f
  %.not.i.us.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.us.i.i, label %zip_name_match.exit.thread.us.i.i, label %zip_name_match.exit.us.i.i

zip_name_match.exit.us.i.i:                       ; preds = %zip_strrpl.exit.i.us.i.i
  %i.z = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(1) %i.t) #36
  %.not88.us.i.i = icmp eq i32 %i.z, 0
  call void @free(ptr noundef nonnull %i.t) #33
  br i1 %.not88.us.i.i, label %..critedge_crit_edge.us.i.i, label %zip_name_match.exit.thread.us.i.i

..critedge_crit_edge.us.i.i:                      ; preds = %zip_name_match.exit.thread.us.i.i, %zip_name_match.exit.us.i.i
  %i.aa = phi i1 [ false, %zip_name_match.exit.thread.us.i.i ], [ true, %zip_name_match.exit.us.i.i ]
  %.sink.i.i = phi i32 [ 0, %zip_name_match.exit.thread.us.i.i ], [ 1, %zip_name_match.exit.us.i.i ]
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv109.i.i ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %.sink.i.i, ptr %i.ac, align 4, !tbaa !311
  %i.ad = call i32 @mz_zip_reader_file_stat(ptr noundef nonnull %0, i32 noundef %i.m, ptr noundef nonnull %3)
  %.not75.not.us.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not75.not.us.i.i, label %zip_entry_mark.exit.thread19.i, label %bb.i

bb.i:                                             ; preds = %..critedge_crit_edge.us.i.i
  %i.ae = call i32 @zip_entry_close(ptr noundef nonnull %0) ; 0 uses
  %i.af = load i64, ptr %i.l, align 8, !tbaa !248 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !313
  store i32 -1, ptr %i.ab, align 8, !tbaa !314
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %i.ah, align 8, !tbaa !315
  %spec.select.us.i.i = call i64 @llvm.umin.i64(i64 %.05694.us.i.i, i64 %i.af)
  %.2.ph.us.i.i = select i1 %i.aa, i64 %spec.select.us.i.i, i64 %.05694.us.i.i ; 2 uses
  %indvars.iv.next110.i.i = add nuw nsw i64 %indvars.iv109.i.i, 1 ; 2 uses
  %exitcond113.not.i.i = icmp eq i64 %indvars.iv.next110.i.i, %wide.trip.count112.i.i
  br i1 %exitcond113.not.i.i, label %.critedge87.preheader.i.i, label %.lr.ph96.split.us.i.i, !llvm.loop !316

zip_name_match.exit.thread.us.i.i:                ; preds = %zip_name_match.exit.us.i.i, %zip_strrpl.exit.i.us.i.i
  %indvars.iv.next105.i.i = add nuw nsw i64 %indvars.iv104.i.i, 1 ; 2 uses
  %exitcond108.not.i.i = icmp eq i64 %indvars.iv.next105.i.i, %wide.trip.count107.i.i
  br i1 %exitcond108.not.i.i, label %..critedge_crit_edge.us.i.i, label %bb.f, !llvm.loop !317

.preheader.us.i.i:                                ; preds = %.lr.ph96.split.us.i.i
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !292
  br label %bb.f

.critedge87.preheader.i.i:                        ; preds = %bb.j, %bb.i
  %.056.lcssa.i.i = phi i64 [ %.2.ph.us.i.i, %bb.i ], [ -1, %bb.j ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count112.i.i, 1
  %i.aj = icmp eq i32 %i.f, 1
  br i1 %i.aj, label %.lr.ph.i.i.epil.preheader, label %.critedge87.preheader.i.i.new

.critedge87.preheader.i.i.new:                    ; preds = %.critedge87.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count112.i.i, 2147483646
  br label %.lr.ph.i.i

.lr.ph96.split.i.i:                               ; preds = %.lr.ph96.i.i, %bb.j
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.j ], [ 0, %.lr.ph96.i.i ] ; 3 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv.i.i to i32 ; 2 uses
  %i.al = call i32 @zip_entry_openbyindex(ptr noundef nonnull %0, i32 noundef %i.ak) ; 2 uses
  %.not71.i.i = icmp eq i32 %i.al, 0
  br i1 %.not71.i.i, label %.preheader.i.i, label %zip_entry_mark.exit.thread19.i

.preheader.i.i:                                   ; preds = %.lr.ph96.split.i.i
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv.i.i ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 0, ptr %i.an, align 4, !tbaa !311
  %i.ao = call i32 @mz_zip_reader_file_stat(ptr noundef nonnull %0, i32 noundef %i.ak, ptr noundef nonnull %3)
  %.not75.not.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not75.not.i.i, label %zip_entry_mark.exit.thread19.i, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ap = call i32 @zip_entry_close(ptr noundef nonnull %0) ; 0 uses
  %i.aq = load i64, ptr %i.l, align 8, !tbaa !248
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !313
  store i32 -1, ptr %i.am, align 8, !tbaa !314
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 0, ptr %i.as, align 8, !tbaa !315
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count112.i.i
  br i1 %exitcond.not.i.i, label %.critedge87.preheader.i.i, label %.lr.ph96.split.i.i, !llvm.loop !316

.lr.ph.i.i:                                       ; preds = %.critedge87.i.i.1, %.critedge87.preheader.i.i.new
  %indvars.iv114.i.i = phi i64 [ 0, %.critedge87.preheader.i.i.new ], [ %indvars.iv.next115.i.i.1, %.critedge87.i.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.critedge87.preheader.i.i.new ], [ %niter.next.1, %.critedge87.i.i.1 ]
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv114.i.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !313
  %i.aw = icmp ugt i64 %i.av, %.056.lcssa.i.i
  br i1 %i.aw, label %bb.k, label %.critedge87.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !311
  %.not77.i.i = icmp eq i32 %i.ay, 1
  %spec.store.select = select i1 %.not77.i.i, i32 1, i32 2
  store i32 %spec.store.select, ptr %i.ax, align 4
  br label %.critedge87.i.i

.critedge87.i.i:                                  ; preds = %bb.k, %.lr.ph.i.i
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv114.i.i ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !313
  %i.bc = icmp ugt i64 %i.bb, %.056.lcssa.i.i
  br i1 %i.bc, label %bb.l, label %.critedge87.i.i.1

bb.l:                                             ; preds = %.critedge87.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 28 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !311
  %.not77.i.i.1 = icmp eq i32 %i.be, 1
  %spec.store.select.1 = select i1 %.not77.i.i.1, i32 1, i32 2
  store i32 %spec.store.select.1, ptr %i.bd, align 4
  br label %.critedge87.i.i.1

.critedge87.i.i.1:                                ; preds = %bb.l, %.critedge87.i.i
  %indvars.iv.next115.i.i.1 = add nuw nsw i64 %indvars.iv114.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !318

zip_entry_mark.exit.thread19.i:                   ; preds = %.preheader.i.i, %.lr.ph96.split.i.i, %..critedge_crit_edge.us.i.i, %.lr.ph96.split.us.i.i
  %.364.i.ph.i = phi i32 [ -3, %..critedge_crit_edge.us.i.i ], [ %i.n, %.lr.ph96.split.us.i.i ], [ -3, %.preheader.i.i ], [ %i.al, %.lr.ph96.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %.sink.split

.loopexit.i.unr-lcssa:                            ; preds = %.critedge87.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.unr-lcssa, %.critedge87.preheader.i.i
  %indvars.iv114.i.i.epil.init = phi i64 [ 0, %.critedge87.preheader.i.i ], [ %indvars.iv.next115.i.i.1, %.loopexit.i.unr-lcssa ]
  %lcmp.mod145 = trunc i32 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod145)
end_hunk_0
begin_hunk_1_@zip_entries_delete:bb.a

bb.q:                                             ; preds = %.lr.ph.i61.i.i
  %i.dj = add nuw nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 8, !tbaa !314
  br label %.lr.ph.i61.i.i.1

.lr.ph.i61.i.i.1:                                 ; preds = %bb.q, %.lr.ph.i61.i.i
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv.i62.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !314 ; 2 uses
  %.not.i63.i.i.1 = icmp slt i32 %i.dm, %spec.select.i.i.i.i
  br i1 %.not.i63.i.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i61.i.i.1
  %i.dn = add nuw nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 8, !tbaa !314
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i61.i.i.1
  %indvars.iv.next.i64.i.i.1 = add nuw nsw i64 %indvars.iv.i62.i.i, 2 ; 2 uses
  %niter150.next.1 = add i64 %niter150, 2         ; 2 uses
  %niter150.ncmp.1 = icmp eq i64 %niter150.next.1, %unroll_iter149
  br i1 %niter150.ncmp.1, label %zip_index_update.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i61.i.i, !llvm.loop !323

zip_index_update.exit.i.i.loopexit.unr-lcssa:     ; preds = %bb.s
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  br i1 %lcmp.mod147.not, label %zip_index_update.exit.i.i, label %.lr.ph.i61.i.i.epil.preheader

.lr.ph.i61.i.i.epil.preheader:                    ; preds = %zip_index_update.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i61.i.i.preheader
  %indvars.iv.i62.i.i.epil.init = phi i64 [ 0, %.lr.ph.i61.i.i.preheader ], [ %indvars.iv.next.i64.i.i.1, %zip_index_update.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod148 = trunc i64 %indvars.iv.i15.i to i1
  call void @llvm.assume(i1 %lcmp.mod148)
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv.i62.i.i.epil.init ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !314 ; 2 uses
  %.not.i63.i.i.epil = icmp slt i32 %i.dp, %spec.select.i.i.i.i
  br i1 %.not.i63.i.i.epil, label %zip_index_update.exit.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i61.i.i.epil.preheader
  %i.dq = add nuw nsw i32 %i.dp, 1
  store i32 %i.dq, ptr %i.do, align 8, !tbaa !314
  br label %zip_index_update.exit.i.i

zip_index_update.exit.i.i:                        ; preds = %zip_index_update.exit.i.i.loopexit.unr-lcssa, %bb.t, %.lr.ph.i61.i.i.epil.preheader, %bb.p
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.cp
  %i.ds = trunc nuw nsw i64 %indvars.iv.i15.i to i32
  store i32 %i.ds, ptr %i.dr, align 8, !tbaa !314
  br label %zip_sort.exit.thread.i.i

zip_sort.exit.thread.i.i:                         ; preds = %zip_index_update.exit.i.i, %zip_index_next.exit.i.i.i
  store i32 %spec.select.i.i.i.i, ptr %i.cc, align 8, !tbaa !314
  %indvars.iv.next.i16.i = add nuw nsw i64 %indvars.iv.i15.i, 1 ; 2 uses
  %exitcond.not.i17.i = icmp eq i64 %indvars.iv.next.i16.i, %wide.trip.count112.i.i
  br i1 %exitcond.not.i17.i, label %._crit_edge.i.i, label %.lr.ph.i14.i, !llvm.loop !324

._crit_edge70.i.i:                                ; preds = %.preheader.i13.i
  %i.dt = load i64, ptr %0, align 8, !tbaa !302
  %i.du = sext i32 %i.bq to i64                   ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !245
  %i.dx = sub i64 %i.dt, %i.dw
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.du
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !245
  br i1 %.not7693.i.i, label %.lr.ph73.preheader.i.i, label %.loopexit

.lr.ph73.preheader.i.i:                           ; preds = %._crit_edge70.thread.i.i, %._crit_edge70.i.i
  %wide.trip.count86.i.i = zext nneg i32 %i.f to i64 ; 2 uses
  %xtraiter151 = and i64 %wide.trip.count86.i.i, 3 ; 3 uses
  %i.dz = add i32 %i.f, -1
  %i.ea = icmp ult i32 %i.dz, 3
  br i1 %i.ea, label %.lr.ph73.i.i.epil.preheader, label %.lr.ph73.preheader.i.i.new

.lr.ph73.preheader.i.i.new:                       ; preds = %.lr.ph73.preheader.i.i
  %unroll_iter154 = and i64 %wide.trip.count86.i.i, 2147483644
  br label %.lr.ph73.i.i

.lr.ph69.i.i:                                     ; preds = %.lr.ph69.i.i.preheader, %.lr.ph69.i.i
  %i.eb = phi i64 [ %i.ed, %.lr.ph69.i.i ], [ %.ph, %.lr.ph69.i.i.preheader ]
  %indvars.iv78.i.i = phi i64 [ %indvars.iv.next79.i.i, %.lr.ph69.i.i ], [ %indvars.iv78.i.i.ph, %.lr.ph69.i.i.preheader ] ; 2 uses
  %indvars.iv.next79.i.i = add nuw nsw i64 %indvars.iv78.i.i, 1 ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next79.i.i
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !245 ; 2 uses
  %i.ee = sub i64 %i.ed, %i.eb
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv78.i.i
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !245
  %exitcond82.not.i.i = icmp eq i64 %indvars.iv.next79.i.i, %wide.trip.count81.i.i
  br i1 %exitcond82.not.i.i, label %._crit_edge70.thread.i.i, label %.lr.ph69.i.i, !llvm.loop !325

._crit_edge70.thread.i.i:                         ; preds = %.lr.ph69.i.i, %middle.block126
  %i.eg = load i64, ptr %0, align 8, !tbaa !302
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %wide.trip.count81.i.i
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !245
  %i.ej = sub i64 %i.eg, %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %wide.trip.count81.i.i
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !245
  br label %.lr.ph73.preheader.i.i

.lr.ph73.i.i:                                     ; preds = %.lr.ph73.i.i, %.lr.ph73.preheader.i.i.new
  %indvars.iv83.i.i = phi i64 [ 0, %.lr.ph73.preheader.i.i.new ], [ %indvars.iv.next84.i.i.3, %.lr.ph73.i.i ] ; 5 uses
  %niter155 = phi i64 [ 0, %.lr.ph73.preheader.i.i.new ], [ %niter155.next.3, %.lr.ph73.i.i ]
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv83.i.i ; 2 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !314
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !245
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !315
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv83.i.i ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load i32, ptr %i.es, align 8, !tbaa !314
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !245
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !315
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv83.i.i ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !314
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !245
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 64
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !315
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv83.i.i ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 72
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !314
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.fi
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !245
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 88
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !315
  %indvars.iv.next84.i.i.3 = add nuw nsw i64 %indvars.iv83.i.i, 4 ; 2 uses
  %niter155.next.3 = add i64 %niter155, 4         ; 2 uses
  %niter155.ncmp.3 = icmp eq i64 %niter155.next.3, %unroll_iter154
  br i1 %niter155.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph73.i.i, !llvm.loop !326

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph73.i.i
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod152.not, label %.loopexit, label %.lr.ph73.i.i.epil.preheader

.lr.ph73.i.i.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph73.preheader.i.i
  %indvars.iv83.i.i.epil.init = phi i64 [ 0, %.lr.ph73.preheader.i.i ], [ %indvars.iv.next84.i.i.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod153 = icmp ne i64 %xtraiter151, 0
  call void @llvm.assume(i1 %lcmp.mod153)
  br label %.lr.ph73.i.i.epil

.lr.ph73.i.i.epil:                                ; preds = %.lr.ph73.i.i.epil, %.lr.ph73.i.i.epil.preheader
  %indvars.iv83.i.i.epil = phi i64 [ %indvars.iv83.i.i.epil.init, %.lr.ph73.i.i.epil.preheader ], [ %indvars.iv.next84.i.i.epil, %.lr.ph73.i.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph73.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph73.i.i.epil ]
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv83.i.i.epil ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !314
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !245
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i64 %i.fq, ptr %i.fr, align 8, !tbaa !315
  %indvars.iv.next84.i.i.epil = add nuw nsw i64 %indvars.iv83.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter151
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph73.i.i.epil, !llvm.loop !327

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph73.i.i.epil, %._crit_edge70.i.i
  call void @free(ptr noundef nonnull %i.bp) #33
  call void @free(ptr noundef nonnull %i.bo) #33
  %i.fs = call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 4) #37 ; 4 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %.sink.split, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !291 ; 4 uses
  store i32 2, ptr %i.i, align 4, !tbaa !310
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 112 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !207
  %i.fy = call i32 @fseeko(ptr noundef %i.fx, i64 noundef 0, i32 noundef 0)
  %.not.i31 = icmp eq i32 %i.fy, 0
  br i1 %.not.i31, label %.preheader109.i, label %.thread.sink.split.i

.preheader109.i:                                  ; preds = %bb.u
  br i1 %.not7693.i.i, label %.preheader108.lr.ph.i, label %._crit_edge141.i

.preheader108.lr.ph.i:                            ; preds = %.preheader109.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  br label %.preheader108.i

.preheader108.i:                                  ; preds = %bb.ab, %.preheader108.lr.ph.i
  %.076140.i = phi i64 [ 0, %.preheader108.lr.ph.i ], [ %i.iy, %bb.ab ] ; 2 uses
  %.078139.i = phi i64 [ 0, %.preheader108.lr.ph.i ], [ %i.iz, %bb.ab ]
  %.086138.i = phi i32 [ 0, %.preheader108.lr.ph.i ], [ %.187.lcssa.i, %bb.ab ] ; 2 uses
  %.088137.i = phi i32 [ 0, %.preheader108.lr.ph.i ], [ %.391.lcssa.i, %bb.ab ] ; 2 uses
  %.093136.i = phi i64 [ 0, %.preheader108.lr.ph.i ], [ %.194.lcssa.i, %bb.ab ] ; 2 uses
  %.095135.i = phi i64 [ 0, %.preheader108.lr.ph.i ], [ %.196.lcssa.i, %bb.ab ] ; 2 uses
  %i.ga = sext i32 %.088137.i to i64              ; 3 uses
  %i.gb = getelementptr inbounds [24 x i8], ptr %i.h, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !311 ; 2 uses
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %.lr.ph.i, label %.preheader107.i

.preheader107.loopexit.i:                         ; preds = %.lr.ph.i
  %i.gf = trunc nsw i64 %indvars.iv.next.i to i32
  %sext177.i = shl i64 %indvars.iv.next.i, 32
  %.phi.trans.insert.i = ashr exact i64 %sext177.i, 32 ; 2 uses
  %.phi.trans.insert164.i = getelementptr inbounds [24 x i8], ptr %i.h, i64 %.phi.trans.insert.i
  %.phi.trans.insert165.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert164.i, i64 4
  %.pre.i = load i32, ptr %.phi.trans.insert165.i, align 4, !tbaa !311
  br label %.preheader107.i

.preheader107.i:                                  ; preds = %.preheader107.loopexit.i, %.preheader108.i
  %.pre-phi.i = phi i64 [ %.phi.trans.insert.i, %.preheader107.loopexit.i ], [ %i.ga, %.preheader108.i ] ; 2 uses
  %i.gg = phi i32 [ %.pre.i, %.preheader107.loopexit.i ], [ %i.gd, %.preheader108.i ] ; 2 uses
  %.189.lcssa.i = phi i32 [ %i.gf, %.preheader107.loopexit.i ], [ %.088137.i, %.preheader108.i ] ; 2 uses
  %.179.lcssa.i = phi i64 [ %i.gn, %.preheader107.loopexit.i ], [ %.078139.i, %.preheader108.i ] ; 2 uses
  %.177.lcssa.i = phi i64 [ %i.gn, %.preheader107.loopexit.i ], [ %.076140.i, %.preheader108.i ] ; 2 uses
  %i.gh = icmp eq i32 %i.gg, 1
  %i.gi = icmp slt i32 %.189.lcssa.i, %i.f
  %i.gj = and i1 %i.gh, %i.gi
  br i1 %i.gj, label %.lr.ph125.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %.preheader108.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %i.ga, %.preheader108.i ] ; 2 uses
  %.177118.i = phi i64 [ %i.gn, %.lr.ph.i ], [ %.076140.i, %.preheader108.i ]
  %i.gk = getelementptr inbounds [24 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !315
  %i.gn = add i64 %i.gm, %.177118.i               ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.go = getelementptr inbounds [24 x i8], ptr %i.h, i64 %indvars.iv.next.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !311
  %i.gr = icmp eq i32 %i.gq, 0
  %i.gs = icmp slt i64 %indvars.iv.next.i, %i.g
  %i.gt = and i1 %i.gs, %i.gr
  br i1 %i.gt, label %.lr.ph.i, label %.preheader107.loopexit.i, !llvm.loop !328

.preheader.loopexit.i:                            ; preds = %.lr.ph125.i
  %i.gu = trunc nsw i64 %indvars.iv.next159.i to i32
  %sext178.i = shl i64 %indvars.iv.next159.i, 32
  %.phi.trans.insert166.i = ashr exact i64 %sext178.i, 32 ; 2 uses
  %.phi.trans.insert167.i = getelementptr inbounds [24 x i8], ptr %i.h, i64 %.phi.trans.insert166.i
  %.phi.trans.insert168.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert167.i, i64 4
  %.pre169.i = load i32, ptr %.phi.trans.insert168.i, align 4, !tbaa !311
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader107.i
  %.pre-phi170.i = phi i64 [ %.phi.trans.insert166.i, %.preheader.loopexit.i ], [ %.pre-phi.i, %.preheader107.i ]
  %i.gv = phi i32 [ %.pre169.i, %.preheader.loopexit.i ], [ %i.gg, %.preheader107.i ]
  %.196.lcssa.i = phi i64 [ %i.hf, %.preheader.loopexit.i ], [ %.095135.i, %.preheader107.i ] ; 3 uses
  %.290.lcssa.i = phi i32 [ %i.gu, %.preheader.loopexit.i ], [ %.189.lcssa.i, %.preheader107.i ] ; 2 uses
  %.187.lcssa.i = phi i32 [ %i.hg, %.preheader.loopexit.i ], [ %.086138.i, %.preheader107.i ] ; 2 uses
  %.280.lcssa.i = phi i64 [ %i.he, %.preheader.loopexit.i ], [ %.179.lcssa.i, %.preheader107.i ] ; 2 uses
  %i.gw = icmp eq i32 %i.gv, 2
  %i.gx = icmp slt i32 %.290.lcssa.i, %i.f
  %i.gy = and i1 %i.gw, %i.gx
  br i1 %i.gy, label %.lr.ph132.i, label %._crit_edge.i

.lr.ph132.i:                                      ; preds = %.preheader.i
  %i.gz = trunc i64 %.196.lcssa.i to i32
  br label %bb.v

.lr.ph125.i:                                      ; preds = %.preheader107.i, %.lr.ph125.i
  %indvars.iv158.i = phi i64 [ %indvars.iv.next159.i, %.lr.ph125.i ], [ %.pre-phi.i, %.preheader107.i ] ; 3 uses
  %.280124.i = phi i64 [ %i.he, %.lr.ph125.i ], [ %.179.lcssa.i, %.preheader107.i ]
  %.187123.i = phi i32 [ %i.hg, %.lr.ph125.i ], [ %.086138.i, %.preheader107.i ]
  %.196121.i = phi i64 [ %i.hf, %.lr.ph125.i ], [ %.095135.i, %.preheader107.i ]
  %i.ha = getelementptr inbounds [24 x i8], ptr %i.h, i64 %indvars.iv158.i
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %indvars.iv158.i
  store i32 1, ptr %i.hb, align 4, !tbaa !3
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !315 ; 2 uses
  %i.he = add i64 %i.hd, %.280124.i               ; 2 uses
  %i.hf = add i64 %i.hd, %.196121.i               ; 2 uses
  %indvars.iv.next159.i = add nsw i64 %indvars.iv158.i, 1 ; 5 uses
  %i.hg = add nsw i32 %.187123.i, 1               ; 2 uses
  %i.hh = getelementptr inbounds [24 x i8], ptr %i.h, i64 %indvars.iv.next159.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !311
  %i.hk = icmp eq i32 %i.hj, 1
  %i.hl = icmp slt i64 %indvars.iv.next159.i, %i.g
  %i.hm = and i1 %i.hl, %i.hk
  br i1 %i.hm, label %.lr.ph125.i, label %.preheader.loopexit.i, !llvm.loop !329

bb.v:                                             ; preds = %bb.w, %.lr.ph132.i
  %indvars.iv161.i = phi i64 [ %.pre-phi170.i, %.lr.ph132.i ], [ %indvars.iv.next162.i, %bb.w ] ; 3 uses
  %.194130.i = phi i64 [ %.093136.i, %.lr.ph132.i ], [ %i.hr, %bb.w ]
  %i.hn = load ptr, ptr %i.fv, align 8, !tbaa !219 ; 2 uses
  %.not103.not.i = icmp eq ptr %i.hn, null
  br i1 %.not103.not.i, label %.thread.sink.split.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ho = getelementptr inbounds [24 x i8], ptr %i.h, i64 %indvars.iv161.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !315
  %i.hr = add i64 %i.hq, %.194130.i               ; 2 uses
  %i.hs = load ptr, ptr %i.fz, align 8, !tbaa !220
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %indvars.iv161.i
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !3
  %i.hv = zext i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 42 ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !3
  %i.hz = sub i32 %i.hy, %i.gz
  store i32 %i.hz, ptr %i.hx, align 2
  %indvars.iv.next162.i = add nsw i64 %indvars.iv161.i, 1 ; 4 uses
  %i.ia = getelementptr inbounds [24 x i8], ptr %i.h, i64 %indvars.iv.next162.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !311
  %i.id = icmp eq i32 %i.ic, 2
  %i.ie = icmp slt i64 %indvars.iv.next162.i, %i.g
  %i.if = and i1 %i.ie, %i.id
  br i1 %i.if, label %bb.v, label %._crit_edge.loopexit.i, !llvm.loop !330

._crit_edge.loopexit.i:                           ; preds = %bb.w
  %i.ig = trunc nsw i64 %indvars.iv.next162.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.194.lcssa.i = phi i64 [ %.093136.i, %.preheader.i ], [ %i.hr, %._crit_edge.loopexit.i ] ; 6 uses
  %.391.lcssa.i = phi i32 [ %.290.lcssa.i, %.preheader.i ], [ %i.ig, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ih = load ptr, ptr %i.fw, align 8, !tbaa !207 ; 5 uses
  %i.ii = call noalias dereferenceable_or_null(4096) ptr @calloc(i64 noundef 1, i64 noundef 4096) #37 ; 4 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %zip_files_move.exit.i, label %.preheader.i.i32

.preheader.i.i32:                                 ; preds = %._crit_edge.i
  %i.ik = icmp sgt i64 %.194.lcssa.i, 0
  br i1 %i.ik, label %.lr.ph.i.i33, label %.loopexit.i.i

.lr.ph.i.i33:                                     ; preds = %.preheader.i.i32, %zip_file_move.exit.i.i
  %.038.i.i = phi i64 [ %i.iu, %zip_file_move.exit.i.i ], [ 0, %.preheader.i.i32 ]
  %.02537.i.i = phi i64 [ %i.it, %zip_file_move.exit.i.i ], [ %.194.lcssa.i, %.preheader.i.i32 ] ; 2 uses
  %.02636.i.i = phi i64 [ %i.is, %zip_file_move.exit.i.i ], [ %.280.lcssa.i, %.preheader.i.i32 ] ; 2 uses
  %.02735.i.i = phi i64 [ %i.ir, %zip_file_move.exit.i.i ], [ %.177.lcssa.i, %.preheader.i.i32 ] ; 2 uses
  %i.il = call i64 @llvm.umin.i64(i64 %.02537.i.i, i64 4096) ; 8 uses
  %i.im = call i32 @fseeko(ptr noundef %i.ih, i64 noundef %.02636.i.i, i32 noundef 0)
  %.not.i.i.i34 = icmp eq i32 %i.im, 0
  br i1 %.not.i.i.i34, label %bb.x, label %.sink.split.i.i.i

bb.x:                                             ; preds = %.lr.ph.i.i33
  %i.in = call i64 @fread(ptr noundef nonnull %i.ii, i64 noundef 1, i64 noundef range(i64 1, -9223372036854775808) %i.il, ptr noundef %i.ih)
  %.not20.i.i.i = icmp eq i64 %i.in, %i.il
  br i1 %.not20.i.i.i, label %bb.y, label %.sink.split.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.io = call i32 @fseeko(ptr noundef %i.ih, i64 noundef %.02735.i.i, i32 noundef 0)
  %.not21.i.i.i = icmp eq i32 %i.io, 0
  br i1 %.not21.i.i.i, label %bb.z, label %.sink.split.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.ip = call i64 @fwrite(ptr noundef nonnull %i.ii, i64 noundef 1, i64 noundef range(i64 1, -9223372036854775808) %i.il, ptr noundef %i.ih)
  %.not22.i.i.i = icmp eq i64 %i.ip, %i.il
  br i1 %.not22.i.i.i, label %zip_file_move.exit.i.i, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.z, %bb.y, %bb.x, %.lr.ph.i.i33
  %.0.ph.i.i.i = phi i64 [ -27, %bb.y ], [ -28, %bb.x ], [ -27, %.lr.ph.i.i33 ], [ -29, %bb.z ]
  %i.iq = call i32 @fclose(ptr noundef %i.ih)     ; 0 uses
  br label %.loopexit.i.i

zip_file_move.exit.i.i:                           ; preds = %bb.z
  %i.ir = add i64 %.02735.i.i, %i.il
  %i.is = add i64 %i.il, %.02636.i.i
  %i.it = sub nsw i64 %.02537.i.i, %i.il          ; 2 uses
  %i.iu = add nuw nsw i64 %i.il, %.038.i.i        ; 2 uses
  %i.iv = icmp sgt i64 %i.it, 0
  br i1 %i.iv, label %.lr.ph.i.i33, label %.loopexit.i.i, !llvm.loop !331

.loopexit.i.i:                                    ; preds = %zip_file_move.exit.i.i, %.sink.split.i.i.i, %.preheader.i.i32
  %.1.i.i = phi i64 [ %.0.ph.i.i.i, %.sink.split.i.i.i ], [ 0, %.preheader.i.i32 ], [ %i.iu, %zip_file_move.exit.i.i ]
  call void @free(ptr noundef %i.ii) #33
  br label %zip_files_move.exit.i

zip_files_move.exit.i:                            ; preds = %.loopexit.i.i, %._crit_edge.i
  %.024.i.i = phi i64 [ %.1.i.i, %.loopexit.i.i ], [ -21, %._crit_edge.i ] ; 2 uses
  %sext.i = shl i64 %.024.i.i, 32
  %i.iw = ashr exact i64 %sext.i, 32
  %.not101.i = icmp eq i64 %i.iw, %.194.lcssa.i
  br i1 %.not101.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %zip_files_move.exit.i
  %i.ix = trunc i64 %.024.i.i to i32
  br label %.thread.sink.split.i

bb.ab:                                            ; preds = %zip_files_move.exit.i
  %i.iy = add i64 %.194.lcssa.i, %.177.lcssa.i
  %i.iz = add i64 %.194.lcssa.i, %.280.lcssa.i
  %i.ja = icmp slt i32 %.391.lcssa.i, %i.f
  br i1 %i.ja, label %.preheader108.i, label %._crit_edge141.i, !llvm.loop !332

._crit_edge141.i:                                 ; preds = %bb.ab, %.preheader109.i
  %.095.lcssa.i = phi i64 [ 0, %.preheader109.i ], [ %.196.lcssa.i, %bb.ab ]
  %.086.lcssa.i = phi i32 [ 0, %.preheader109.i ], [ %.187.lcssa.i, %bb.ab ] ; 2 uses
  %i.jb = load i64, ptr %0, align 8, !tbaa !302
  %i.jc = sub i64 %i.jb, %.095.lcssa.i
  store i64 %i.jc, ptr %0, align 8, !tbaa !302
  %i.jd = sub nsw i32 %i.f, %.086.lcssa.i
  store i32 %i.jd, ptr %i.e, align 8, !tbaa !301
  call fastcc void @zip_central_dir_delete(ptr noundef %i.fv, ptr noundef nonnull %i.fs, i32 noundef %i.f)
  br label %.thread.sink.split.i

.thread.sink.split.i:                             ; preds = %bb.v, %._crit_edge141.i, %bb.aa, %bb.u
  %.4.ph.i = phi i32 [ %i.ix, %bb.aa ], [ %.086.lcssa.i, %._crit_edge141.i ], [ -3, %bb.u ], [ -3, %bb.v ]
  call void @free(ptr noundef nonnull %i.fs) #33
  br label %.sink.split

.sink.split:                                      ; preds = %.thread.sink.split.i, %.loopexit, %.loopexit.thread.i, %.loopexit.i, %zip_entry_finalize.exit.thread23.i, %bb.d, %zip_entry_mark.exit.thread19.i
  %.0.ph = phi i32 [ %.364.i.ph.i, %zip_entry_mark.exit.thread19.i ], [ -21, %.loopexit.thread.i ], [ -21, %.loopexit.i ], [ -21, %zip_entry_finalize.exit.thread23.i ], [ -1, %bb.d ], [ -21, %.loopexit ], [ %.4.ph.i, %.thread.sink.split.i ]
  call void @free(ptr noundef %i.h) #33
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %zip_entries_total.exit, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ], [ -21, %zip_entries_total.exit ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -25, 1) i32 @zip_stream_extract(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.mz_zip_archive, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %5, i8 0, i64 112, i1 false)
  %i.c = call i32 @mz_zip_reader_init_mem(ptr noundef nonnull %5, ptr noundef nonnull %0, i64 noundef %1, i32 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call fastcc i32 @zip_archive_extract(ptr noundef %5, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -25, 1) i32 @zip_archive_extract(ptr nofree noundef nonnull captures(address_is_null) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.utimbuf, align 8            ; 5 uses
  %5 = alloca %struct.mz_zip_archive_file_stat, align 8 ; 5 uses
  %i.a = alloca [32768 x i8], align 16            ; 7 uses
  %i.b = alloca [32768 x i8], align 16            ; 13 uses
  %i.c = alloca [32768 x i8], align 16            ; 6 uses
  %6 = alloca %struct.mz_zip_archive_file_stat, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32768) %i.b, i8 0, i64 32768, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32768) %i.c, i8 0, i64 32768, i1 false)
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36 ; 4 uses
  %i.e = add i64 %i.d, 1                          ; 2 uses
  %i.f = icmp ugt i64 %i.e, 32767
  br i1 %i.f, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(584) %6, i8 0, i64 584, i1 false)
  %i.g = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %1) #33 ; 0 uses
  %i.h = getelementptr i8, ptr %i.b, i64 %i.d     ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !7
  switch i8 %i.j, label %bb.c [
    i8 47, label %bb.d
    i8 92, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  store i8 47, ptr %i.h, align 1, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.b ], [ %i.e, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@tdefl_optimize_huffman_table:bb.a
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !3
  %i.ku = add nsw i32 %i.kt, 1
  store i32 %i.ku, ptr %i.ks, align 4, !tbaa !3
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv128
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !369
  %i.ky = zext i16 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ky ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !3
  %i.lb = add nsw i32 %i.la, 1
  store i32 %i.lb, ptr %i.kz, align 4, !tbaa !3
  %indvars.iv.next129.3 = add nuw nsw i64 %indvars.iv128, 4 ; 2 uses
  %niter219.next.3 = add i64 %niter219, 4         ; 2 uses
  %niter219.ncmp.3 = icmp eq i64 %niter219.next.3, %unroll_iter218
  br i1 %niter219.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !384

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod216.not = icmp eq i64 %xtraiter214, 0
  br i1 %lcmp.mod216.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv128.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next129.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod217 = icmp ne i64 %xtraiter214, 0
  tail call void @llvm.assume(i1 %lcmp.mod217)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv128.epil = phi i64 [ %indvars.iv128.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next129.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter215 = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter215.next, %.lr.ph.epil ]
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv128.epil
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !369
  %i.le = zext i16 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.le ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !3
  %i.lh = add nsw i32 %i.lg, 1
  store i32 %i.lh, ptr %i.lf, align 4, !tbaa !3
  %indvars.iv.next129.epil = add nuw nsw i64 %indvars.iv128.epil, 1
  %epil.iter215.next = add i64 %epil.iter215, 1   ; 2 uses
  %epil.iter215.cmp.not = icmp eq i64 %epil.iter215.next, %xtraiter214
  br i1 %epil.iter215.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !385

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.li = icmp eq i32 %.173.lcssa, 1
  br i1 %i.li, label %tdefl_huffman_enforce_max_code_size.exit, label %.preheader35.i

.preheader35.i:                                   ; preds = %._crit_edge
  %i.lj = zext nneg i32 %3 to i64                 ; 11 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lj ; 5 uses
  %i.ll = sub nuw nsw i64 32, %i.lj               ; 2 uses
  %n.vec = and i64 %i.ll, 56                      ; 4 uses
  %i.lm = add nuw nsw i64 %n.vec, %i.lj
  %.promoted.i = load i32, ptr %i.lk, align 4, !tbaa !3
  %i.ln = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted.i, i64 0
  %i.lo = getelementptr [4 x i8], ptr %i.c, i64 %i.lj ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 20
  %wide.load = load <4 x i32>, ptr %i.lp, align 4, !tbaa !3
  %wide.load180 = load <4 x i32>, ptr %i.lq, align 4, !tbaa !3 ; 2 uses
  %i.lr = add <4 x i32> %wide.load, %i.ln         ; 2 uses
  %i.ls = icmp eq i64 %n.vec, 8
  br i1 %i.ls, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %.preheader35.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.lu = getelementptr [4 x i8], ptr %i.lt, i64 %i.lj ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 20
  %wide.load.1 = load <4 x i32>, ptr %i.lv, align 4, !tbaa !3
  %wide.load180.1 = load <4 x i32>, ptr %i.lw, align 4, !tbaa !3
  %i.lx = add <4 x i32> %wide.load.1, %i.lr       ; 2 uses
  %i.ly = add <4 x i32> %wide.load180.1, %wide.load180 ; 2 uses
  %i.lz = icmp eq i64 %n.vec, 16
  br i1 %i.lz, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ma = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.mb = getelementptr [4 x i8], ptr %i.ma, i64 %i.lj ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 20
  %wide.load.2 = load <4 x i32>, ptr %i.mc, align 4, !tbaa !3
  %wide.load180.2 = load <4 x i32>, ptr %i.md, align 4, !tbaa !3
  %i.me = add <4 x i32> %wide.load.2, %i.lx
  %i.mf = add <4 x i32> %wide.load180.2, %i.ly
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %.preheader35.i
  %.lcssa187 = phi <4 x i32> [ %i.lr, %.preheader35.i ], [ %i.lx, %vector.body.1 ], [ %i.me, %vector.body.2 ]
  %.lcssa186 = phi <4 x i32> [ %wide.load180, %.preheader35.i ], [ %i.ly, %vector.body.1 ], [ %i.mf, %vector.body.2 ]
  %bin.rdx = add <4 x i32> %.lcssa186, %.lcssa187
  %i.mg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.mg, ptr %i.lk, align 4, !tbaa !3
  %cmp.n = icmp eq i64 %i.ll, %n.vec
  br i1 %cmp.n, label %.preheader34.i.preheader, label %scalar.ph

.preheader34.i.preheader:                         ; preds = %scalar.ph, %middle.block
  %xtraiter220 = and i64 %i.lj, 3                 ; 3 uses
  %unroll_iter225 = and i64 %i.lj, 12
  br label %.preheader34.i

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv.i89 = phi i64 [ %indvars.iv.next.i90, %scalar.ph ], [ %i.lm, %middle.block ]
  %i.mh = phi i32 [ %i.mk, %scalar.ph ], [ %i.mg, %middle.block ]
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i89, 1 ; 3 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i90
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !3
  %i.mk = add nsw i32 %i.mj, %i.mh                ; 2 uses
  store i32 %i.mk, ptr %i.lk, align 4, !tbaa !3
  %exitcond.not.i91 = icmp eq i64 %indvars.iv.next.i90, 32
  br i1 %exitcond.not.i91, label %.preheader34.i.preheader, label %scalar.ph, !llvm.loop !386

.preheader.i92.unr-lcssa:                         ; preds = %.preheader34.i
  %lcmp.mod222.not = icmp eq i64 %xtraiter220, 0
  br i1 %lcmp.mod222.not, label %.preheader.i92, label %.preheader34.i.epil.preheader

.preheader34.i.epil.preheader:                    ; preds = %.preheader.i92.unr-lcssa
  %lcmp.mod224 = icmp ne i64 %xtraiter220, 0
  tail call void @llvm.assume(i1 %lcmp.mod224)
  br label %.preheader34.i.epil

.preheader34.i.epil:                              ; preds = %.preheader34.i.epil, %.preheader34.i.epil.preheader
  %indvars.iv48.i.epil = phi i64 [ %indvars.iv.next49.i.epil, %.preheader34.i.epil ], [ %indvars.iv.next49.i.3, %.preheader34.i.epil.preheader ] ; 3 uses
  %.040.i.epil = phi i32 [ %i.mq, %.preheader34.i.epil ], [ %i.nq, %.preheader34.i.epil.preheader ]
  %epil.iter221 = phi i64 [ %epil.iter221.next, %.preheader34.i.epil ], [ 0, %.preheader34.i.epil.preheader ]
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv48.i.epil
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !3
  %i.mn = trunc i64 %indvars.iv48.i.epil to i32
  %i.mo = sub i32 %3, %i.mn
  %i.mp = shl i32 %i.mm, %i.mo
  %i.mq = add i32 %i.mp, %.040.i.epil             ; 2 uses
  %indvars.iv.next49.i.epil = add nsw i64 %indvars.iv48.i.epil, -1
  %epil.iter221.next = add i64 %epil.iter221, 1   ; 2 uses
  %epil.iter221.cmp.not = icmp eq i64 %epil.iter221.next, %xtraiter220
  br i1 %epil.iter221.cmp.not, label %.preheader.i92, label %.preheader34.i.epil, !llvm.loop !387

.preheader.i92:                                   ; preds = %.preheader34.i.epil, %.preheader.i92.unr-lcssa
  %.lcssa185 = phi i32 [ %i.nq, %.preheader.i92.unr-lcssa ], [ %i.mq, %.preheader34.i.epil ] ; 2 uses
  %i.mr = shl nuw nsw i64 1, %i.lj                ; 2 uses
  %i.ms = zext i32 %.lcssa185 to i64
  %.not42.i = icmp eq i64 %i.mr, %i.ms
  br i1 %.not42.i, label %tdefl_huffman_enforce_max_code_size.exit, label %.lr.ph.i93

.preheader34.i:                                   ; preds = %.preheader34.i, %.preheader34.i.preheader
  %indvars.iv48.i = phi i64 [ %i.lj, %.preheader34.i.preheader ], [ %indvars.iv.next49.i.3, %.preheader34.i ] ; 6 uses
  %.040.i = phi i32 [ 0, %.preheader34.i.preheader ], [ %i.nq, %.preheader34.i ]
  %niter226 = phi i64 [ 0, %.preheader34.i.preheader ], [ %niter226.next.3, %.preheader34.i ]
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv48.i
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !3
  %i.mv = trunc i64 %indvars.iv48.i to i32
  %i.mw = sub nsw i32 %3, %i.mv
  %i.mx = shl i32 %i.mu, %i.mw
  %i.my = add i32 %i.mx, %.040.i
  %indvars.iv.next49.i = add nsw i64 %indvars.iv48.i, -1 ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !3
  %i.nb = trunc i64 %indvars.iv.next49.i to i32
  %i.nc = sub nsw i32 %3, %i.nb
  %i.nd = shl i32 %i.na, %i.nc
  %i.ne = add i32 %i.nd, %i.my
  %indvars.iv.next49.i.1 = add nsw i64 %indvars.iv48.i, -2 ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i.1
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !3
  %i.nh = trunc i64 %indvars.iv.next49.i.1 to i32
  %i.ni = sub nsw i32 %3, %i.nh
  %i.nj = shl i32 %i.ng, %i.ni
  %i.nk = add i32 %i.nj, %i.ne
  %indvars.iv.next49.i.2 = add nsw i64 %indvars.iv48.i, -3 ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i.2
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !3
  %i.nn = trunc i64 %indvars.iv.next49.i.2 to i32
  %i.no = sub nsw i32 %3, %i.nn
  %i.np = shl i32 %i.nm, %i.no
  %i.nq = add i32 %i.np, %i.nk                    ; 3 uses
  %indvars.iv.next49.i.3 = add nsw i64 %indvars.iv48.i, -4 ; 2 uses
  %niter226.next.3 = add nuw nsw i64 %niter226, 4 ; 2 uses
  %niter226.ncmp.3.not = icmp eq i64 %niter226.next.3, %unroll_iter225
  br i1 %niter226.ncmp.3.not, label %.preheader.i92.unr-lcssa, label %.preheader34.i, !llvm.loop !388

.lr.ph.i93:                                       ; preds = %.preheader.i92, %.loopexit.i
  %.143.i = phi i32 [ %i.ob, %.loopexit.i ], [ %.lcssa185, %.preheader.i92 ]
  %i.nr = load i32, ptr %i.lk, align 4, !tbaa !3
  %i.ns = add nsw i32 %i.nr, -1
  store i32 %i.ns, ptr %i.lk, align 4, !tbaa !3
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %i.nt = icmp sgt i64 %indvars.iv51.i178, 2
  br i1 %i.nt, label %bb.v, label %.loopexit.i, !llvm.loop !389

bb.v:                                             ; preds = %.lr.ph.i93, %bb.u
  %indvars.iv51.i178 = phi i64 [ %i.lj, %.lr.ph.i93 ], [ %indvars.iv.next52.i, %bb.u ] ; 3 uses
  %indvars.iv.next52.i = add nsw i64 %indvars.iv51.i178, -1 ; 3 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next52.i
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !3  ; 2 uses
  %.not32.i = icmp eq i32 %i.nv, 0
  br i1 %.not32.i, label %bb.u, label %bb.w, !llvm.loop !389

bb.w:                                             ; preds = %bb.v
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next52.i
  %i.nx = add nsw i32 %i.nv, -1
  store i32 %i.nx, ptr %i.nw, align 4, !tbaa !3
  %7 = and i64 %indvars.iv51.i178, 4294967295
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %7 ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !3
  %i.oa = add nsw i32 %i.nz, 2
  store i32 %i.oa, ptr %i.ny, align 4, !tbaa !3
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.u, %bb.w
  %i.ob = add i32 %.143.i, -1                     ; 2 uses
  %i.oc = zext i32 %i.ob to i64
  %.not.i94 = icmp eq i64 %i.mr, %i.oc
  br i1 %.not.i94, label %tdefl_huffman_enforce_max_code_size.exit, label %.lr.ph.i93, !llvm.loop !390

tdefl_huffman_enforce_max_code_size.exit:         ; preds = %.loopexit.i, %tdefl_radix_sort_syms.exit, %tdefl_radix_sort_syms.exit.thread, %tdefl_calculate_minimum_redundancy.exit, %._crit_edge, %.preheader.i92
  %.us-phi56.i163165170 = phi ptr [ %6, %tdefl_radix_sort_syms.exit.thread ], [ %.04052.us.i, %.preheader.i92 ], [ %.04052.us.i, %._crit_edge ], [ %.04052.us.i, %tdefl_calculate_minimum_redundancy.exit ], [ %.04052.us.i, %tdefl_radix_sort_syms.exit ], [ %.04052.us.i, %.loopexit.i ] ; 5 uses
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %i.oe = getelementptr inbounds nuw [288 x i8], ptr %i.od, i64 %i.aj ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(288) %i.oe, i8 0, i64 288, i1 false)
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 34954
  %i.og = getelementptr inbounds nuw [576 x i8], ptr %i.of, i64 %i.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(576) %i.og, i8 0, i64 576, i1 false)
  %i.oh = add nuw nsw i32 %3, 1
  %wide.trip.count140 = zext nneg i32 %i.oh to i64 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %tdefl_huffman_enforce_max_code_size.exit, %._crit_edge108
  %indvars.iv137 = phi i64 [ 1, %tdefl_huffman_enforce_max_code_size.exit ], [ %indvars.iv.next138, %._crit_edge108 ] ; 3 uses
  %.069109 = phi i32 [ %.173.lcssa, %tdefl_huffman_enforce_max_code_size.exit ], [ %.170.lcssa, %._crit_edge108 ] ; 2 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv137
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !3  ; 5 uses
  %i.ok = icmp sgt i32 %i.oj, 0
  br i1 %i.ok, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %bb.x
  %i.ol = trunc i64 %indvars.iv137 to i8          ; 5 uses
  %i.om = sext i32 %.069109 to i64                ; 2 uses
  %xtraiter229 = and i32 %i.oj, 3                 ; 2 uses
  %lcmp.mod230.not = icmp eq i32 %xtraiter229, 0
  br i1 %lcmp.mod230.not, label %.prol.loopexit228, label %.prol.preheader227

.prol.preheader227:                               ; preds = %.lr.ph107, %.prol.preheader227
  %indvars.iv134.prol = phi i64 [ %indvars.iv.next135.prol, %.prol.preheader227 ], [ %i.om, %.lr.ph107 ]
  %.074104.prol = phi i32 [ %i.os, %.prol.preheader227 ], [ %i.oj, %.lr.ph107 ]
  %prol.iter231 = phi i32 [ %prol.iter231.next, %.prol.preheader227 ], [ 0, %.lr.ph107 ]
  %indvars.iv.next135.prol = add nsw i64 %indvars.iv134.prol, -1 ; 4 uses
  %i.on = getelementptr inbounds [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv.next135.prol
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 2
  %i.op = load i16, ptr %i.oo, align 2, !tbaa !371
  %i.oq = zext i16 %i.op to i64
  %i.or = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.oq
  store i8 %i.ol, ptr %i.or, align 1, !tbaa !7
  %i.os = add nsw i32 %.074104.prol, -1           ; 2 uses
  %prol.iter231.next = add i32 %prol.iter231, 1   ; 2 uses
  %prol.iter231.cmp.not = icmp eq i32 %prol.iter231.next, %xtraiter229
  br i1 %prol.iter231.cmp.not, label %.prol.loopexit228, label %.prol.preheader227, !llvm.loop !391

.prol.loopexit228:                                ; preds = %.prol.preheader227, %.lr.ph107
  %indvars.iv134.unr = phi i64 [ %i.om, %.lr.ph107 ], [ %indvars.iv.next135.prol, %.prol.preheader227 ]
  %.074104.unr = phi i32 [ %i.oj, %.lr.ph107 ], [ %i.os, %.prol.preheader227 ]
  %indvars.iv.next135.lcssa.unr = phi i64 [ poison, %.lr.ph107 ], [ %indvars.iv.next135.prol, %.prol.preheader227 ]
  %i.ot = icmp ult i32 %i.oj, 4
  br i1 %i.ot, label %._crit_edge108.loopexit, label %.lr.ph107.new

.lr.ph107.new:                                    ; preds = %.prol.loopexit228, %.lr.ph107.new
  %indvars.iv134 = phi i64 [ %indvars.iv.next135.3, %.lr.ph107.new ], [ %indvars.iv134.unr, %.prol.loopexit228 ] ; 4 uses
  %.074104 = phi i32 [ %i.po, %.lr.ph107.new ], [ %.074104.unr, %.prol.loopexit228 ] ; 2 uses
  %i.ou = getelementptr [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv134
  %i.ov = getelementptr i8, ptr %i.ou, i64 -2
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !371
  %i.ox = zext i16 %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.ox
  store i8 %i.ol, ptr %i.oy, align 1, !tbaa !7
  %i.oz = getelementptr [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv134
  %i.pa = getelementptr i8, ptr %i.oz, i64 -6
  %i.pb = load i16, ptr %i.pa, align 2, !tbaa !371
  %i.pc = zext i16 %i.pb to i64
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.pc
  store i8 %i.ol, ptr %i.pd, align 1, !tbaa !7
  %i.pe = getelementptr [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv134
  %i.pf = getelementptr i8, ptr %i.pe, i64 -10
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !371
  %i.ph = zext i16 %i.pg to i64
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.ph
  store i8 %i.ol, ptr %i.pi, align 1, !tbaa !7
  %indvars.iv.next135.3 = add nsw i64 %indvars.iv134, -4 ; 3 uses
  %i.pj = getelementptr inbounds [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv.next135.3
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 2
  %i.pl = load i16, ptr %i.pk, align 2, !tbaa !371
  %i.pm = zext i16 %i.pl to i64
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.pm
  store i8 %i.ol, ptr %i.pn, align 1, !tbaa !7
  %i.po = add nsw i32 %.074104, -4
  %i.pp = icmp sgt i32 %.074104, 4
  br i1 %i.pp, label %.lr.ph107.new, label %._crit_edge108.loopexit, !llvm.loop !392

._crit_edge108.loopexit:                          ; preds = %.lr.ph107.new, %.prol.loopexit228
  %indvars.iv.next135.lcssa = phi i64 [ %indvars.iv.next135.lcssa.unr, %.prol.loopexit228 ], [ %indvars.iv.next135.3, %.lr.ph107.new ]
  %i.pq = trunc nsw i64 %indvars.iv.next135.lcssa to i32
  br label %._crit_edge108

._crit_edge108:                                   ; preds = %._crit_edge108.loopexit, %bb.x
  %.170.lcssa = phi i32 [ %.069109, %bb.x ], [ %i.pq, %._crit_edge108.loopexit ]
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count140
  br i1 %exitcond141.not, label %bb.y, label %bb.x, !llvm.loop !393

bb.y:                                             ; preds = %._crit_edge108
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa
  %lcmp.mod188 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod188)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.3, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.z ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.z ]
  %i.pr = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.epil
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !7
  %i.pt = zext i8 %i.ps to i64
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pt ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !3
  %i.pw = add nsw i32 %i.pv, 1
  store i32 %i.pw, ptr %i.pu, align 4, !tbaa !3
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit, label %bb.z, !llvm.loop !394

.loopexit.loopexit:                               ; preds = %bb.z, %.loopexit.loopexit.unr-lcssa
  %.pre152 = add nuw nsw i32 %3, 1
  %.pre154 = zext nneg i32 %.pre152 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.y
  %wide.trip.count145.pre-phi = phi i64 [ %.pre154, %.loopexit.loopexit ], [ %wide.trip.count140, %bb.y ] ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.px, align 4, !tbaa !3
  %i.py = add nsw i64 %wide.trip.count145.pre-phi, -2 ; 2 uses
  %i.pz = add nsw i64 %wide.trip.count145.pre-phi, -3
  %xtraiter233 = and i64 %i.py, 3                 ; 3 uses
  %i.qa = icmp ult i64 %i.pz, 3
  br i1 %i.qa, label %.epil.preheader232, label %.loopexit.new

.loopexit.new:                                    ; preds = %.loopexit
  %unroll_iter237 = and i64 %i.py, -4
  br label %bb.ab

.preheader.unr-lcssa:                             ; preds = %bb.ab
  %lcmp.mod235.not = icmp eq i64 %xtraiter233, 0
  br i1 %lcmp.mod235.not, label %.preheader, label %.epil.preheader232

.epil.preheader232:                               ; preds = %.preheader.unr-lcssa, %.loopexit
  %indvars.iv142.epil.init = phi i64 [ 2, %.loopexit ], [ %indvars.iv.next143.3, %.preheader.unr-lcssa ]
  %.271111.epil.init = phi i32 [ 0, %.loopexit ], [ %i.ri, %.preheader.unr-lcssa ]
  %lcmp.mod236 = icmp ne i64 %xtraiter233, 0
  tail call void @llvm.assume(i1 %lcmp.mod236)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader232
  %indvars.iv142.epil = phi i64 [ %indvars.iv142.epil.init, %.epil.preheader232 ], [ %indvars.iv.next143.epil, %bb.aa ] ; 3 uses
  %.271111.epil = phi i32 [ %.271111.epil.init, %.epil.preheader232 ], [ %i.qf, %bb.aa ]
  %epil.iter234 = phi i64 [ 0, %.epil.preheader232 ], [ %epil.iter234.next, %bb.aa ]
  %i.qb = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv142.epil
  %i.qc = getelementptr i8, ptr %i.qb, i64 -4
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !3
  %i.qe = add nsw i32 %i.qd, %.271111.epil
  %i.qf = shl i32 %i.qe, 1                        ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv142.epil
  store i32 %i.qf, ptr %i.qg, align 4, !tbaa !3
  %indvars.iv.next143.epil = add nuw nsw i64 %indvars.iv142.epil, 1
  %epil.iter234.next = add i64 %epil.iter234, 1   ; 2 uses
  %epil.iter234.cmp.not = icmp eq i64 %epil.iter234.next, %xtraiter233
  br i1 %epil.iter234.cmp.not, label %.preheader, label %bb.aa, !llvm.loop !395

.preheader:                                       ; preds = %bb.aa, %.preheader.unr-lcssa
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %i.qi = zext nneg i32 %1 to i64                 ; 2 uses
  %i.qj = getelementptr inbounds nuw [288 x i8], ptr %i.qh, i64 %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 34954
  %i.ql = getelementptr inbounds nuw [576 x i8], ptr %i.qk, i64 %i.qi
  %wide.trip.count150 = zext nneg i32 %2 to i64
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ab, %.loopexit.new
  %indvars.iv142 = phi i64 [ 2, %.loopexit.new ], [ %indvars.iv.next143.3, %bb.ab ] ; 6 uses
  %.271111 = phi i32 [ 0, %.loopexit.new ], [ %i.ri, %bb.ab ]
  %niter238 = phi i64 [ 0, %.loopexit.new ], [ %niter238.next.3, %bb.ab ]
  %i.qm = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv142
  %i.qn = getelementptr i8, ptr %i.qm, i64 -4
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !3
  %i.qp = add nsw i32 %i.qo, %.271111
  %i.qq = shl i32 %i.qp, 1                        ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv142
  store i32 %i.qq, ptr %i.qr, align 8, !tbaa !3
  %indvars.iv.next143 = or disjoint i64 %indvars.iv142, 1 ; 2 uses
end_hunk_2
begin_hunk_3_@mz_zip_reader_sort_central_dir_offsets_by_filename:bb.a
  %.034.i8528 = phi ptr [ %i.eb, %bb.j ], [ %i.ds, %.lr.ph30.preheader ] ; 3 uses
  %.035.i8427 = phi ptr [ %i.ec, %bb.j ], [ %i.dw, %.lr.ph30.preheader ] ; 2 uses
  %i.dx = load i8, ptr %.034.i8528, align 1, !tbaa !7 ; 3 uses
  %i.dy = add i8 %i.dx, -65
  %or.cond.i91 = icmp ult i8 %i.dy, 26
  %narrow.i97 = add nuw nsw i8 %i.dx, 32
  %spec.select2 = select i1 %or.cond.i91, i8 %narrow.i97, i8 %i.dx ; 3 uses
  %i.dz = load i8, ptr %.035.i8427, align 1, !tbaa !7 ; 3 uses
  %i.ea = add i8 %i.dz, -65
  %or.cond41.i93 = icmp ult i8 %i.ea, 26
  %narrow38.i96 = add nuw nsw i8 %i.dz, 32
  %.in39.i94 = select i1 %or.cond41.i93, i8 %narrow38.i96, i8 %i.dz ; 2 uses
  %.not.i95 = icmp eq i8 %spec.select2, %.in39.i94
  br i1 %.not.i95, label %bb.j, label %mz_zip_reader_filename_less.exit98.loopexit

bb.j:                                             ; preds = %.lr.ph30
  %i.eb = getelementptr inbounds nuw i8, ptr %.034.i8528, i64 1 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.035.i8427, i64 1
  %i.ed = icmp ult ptr %i.eb, %i.dv
  br i1 %i.ed, label %.lr.ph30, label %mz_zip_reader_filename_less.exit98.loopexit, !llvm.loop !398

mz_zip_reader_filename_less.exit98.loopexit:      ; preds = %bb.j, %.lr.ph30
  %.in39.i94.lcssa = phi i8 [ %spec.select2, %bb.j ], [ %.in39.i94, %.lr.ph30 ]
  %.034.i85.lcssa.ph = phi ptr [ %i.eb, %bb.j ], [ %.034.i8528, %.lr.ph30 ]
  %i.ee = icmp ult i8 %spec.select2, %.in39.i94.lcssa
  br label %mz_zip_reader_filename_less.exit98

mz_zip_reader_filename_less.exit98:               ; preds = %mz_zip_reader_filename_less.exit98.loopexit, %bb.i
  %.034.i85.lcssa = phi ptr [ %i.ds, %bb.i ], [ %.034.i85.lcssa.ph, %mz_zip_reader_filename_less.exit98.loopexit ]
  %.133.i88 = phi i1 [ false, %bb.i ], [ %i.ee, %mz_zip_reader_filename_less.exit98.loopexit ]
  %i.ef = icmp eq ptr %.034.i85.lcssa, %i.dv
  %.in40.i90 = select i1 %i.ef, i1 %i.dt, i1 %.133.i88
  %i.eg = zext i1 %.in40.i90 to i32
  br label %bb.k

bb.k:                                             ; preds = %mz_zip_reader_filename_less.exit98, %bb.h
  %i.eh = phi i32 [ 0, %bb.h ], [ %i.eg, %mz_zip_reader_filename_less.exit98 ]
  %i.ei = add nsw i32 %i.eh, %i.cu                ; 3 uses
  %i.ej = sext i32 %.07350 to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ej
  %i.el = sext i32 %i.ei to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3  ; 2 uses
  %i.eo = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ep ; 2 uses
  %i.er = zext i32 %i.en to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.eu ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 28
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !108 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 28
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !108 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 46 ; 3 uses
  %i.fb = icmp uge i16 %i.ex, %i.ez
  %.v.i = tail call i16 @llvm.umin.i16(i16 %i.ex, i16 %i.ez) ; 2 uses
  %i.fc = zext i16 %.v.i to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fc ; 2 uses
  %.not61 = icmp eq i16 %.v.i, 0
  br i1 %.not61, label %mz_zip_reader_filename_less.exit, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %bb.k
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 46
  br label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41.preheader, %bb.l
  %.034.i39 = phi ptr [ %i.fj, %bb.l ], [ %i.fa, %.lr.ph41.preheader ] ; 3 uses
  %.035.i38 = phi ptr [ %i.fk, %bb.l ], [ %i.fe, %.lr.ph41.preheader ] ; 2 uses
  %i.ff = load i8, ptr %.034.i39, align 1, !tbaa !7 ; 3 uses
  %i.fg = add i8 %i.ff, -65
  %or.cond.i = icmp ult i8 %i.fg, 26
  %narrow.i = add nuw nsw i8 %i.ff, 32
  %spec.select3 = select i1 %or.cond.i, i8 %narrow.i, i8 %i.ff ; 3 uses
  %i.fh = load i8, ptr %.035.i38, align 1, !tbaa !7 ; 3 uses
  %i.fi = add i8 %i.fh, -65
  %or.cond41.i = icmp ult i8 %i.fi, 26
  %narrow38.i = add nuw nsw i8 %i.fh, 32
  %.in39.i = select i1 %or.cond41.i, i8 %narrow38.i, i8 %i.fh ; 2 uses
  %.not.i = icmp eq i8 %spec.select3, %.in39.i
  br i1 %.not.i, label %bb.l, label %mz_zip_reader_filename_less.exit.loopexit

bb.l:                                             ; preds = %.lr.ph41
  %i.fj = getelementptr inbounds nuw i8, ptr %.034.i39, i64 1 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.035.i38, i64 1
  %i.fl = icmp ult ptr %i.fj, %i.fd
  br i1 %i.fl, label %.lr.ph41, label %mz_zip_reader_filename_less.exit.loopexit, !llvm.loop !398

mz_zip_reader_filename_less.exit.loopexit:        ; preds = %bb.l, %.lr.ph41
  %.in39.i.lcssa = phi i8 [ %spec.select3, %bb.l ], [ %.in39.i, %.lr.ph41 ]
  %.034.i.lcssa.ph = phi ptr [ %i.fj, %bb.l ], [ %.034.i39, %.lr.ph41 ]
  %i.fm = icmp uge i8 %spec.select3, %.in39.i.lcssa
  br label %mz_zip_reader_filename_less.exit

mz_zip_reader_filename_less.exit:                 ; preds = %mz_zip_reader_filename_less.exit.loopexit, %bb.k
  %.034.i.lcssa = phi ptr [ %i.fa, %bb.k ], [ %.034.i.lcssa.ph, %mz_zip_reader_filename_less.exit.loopexit ]
  %.133.i = phi i1 [ true, %bb.k ], [ %i.fm, %mz_zip_reader_filename_less.exit.loopexit ]
  %i.fn = icmp eq ptr %.034.i.lcssa, %i.fd
  %.in40.i = select i1 %i.fn, i1 %i.fb, i1 %.133.i
  br i1 %.in40.i, label %mz_zip_reader_filename_less.exit._crit_edge, label %bb.m

bb.m:                                             ; preds = %mz_zip_reader_filename_less.exit
  store i32 %i.en, ptr %i.ek, align 4, !tbaa !3
  store i32 %i.co, ptr %i.em, align 4, !tbaa !3
  %i.fo = shl i32 %i.ei, 1                        ; 2 uses
  %i.fp = or disjoint i32 %i.fo, 1                ; 2 uses
  %i.fq = sext i32 %i.fp to i64
  %.not = icmp sgt i64 %indvars.iv.next, %i.fq
  br i1 %.not, label %bb.h, label %mz_zip_reader_filename_less.exit._crit_edge

mz_zip_reader_filename_less.exit._crit_edge:      ; preds = %bb.m, %mz_zip_reader_filename_less.exit
  %i.fr = icmp sgt i64 %indvars.iv, 2
  br i1 %i.fr, label %.lr.ph56, label %._crit_edge57, !llvm.loop !400

._crit_edge57:                                    ; preds = %.lr.ph56, %mz_zip_reader_filename_less.exit._crit_edge, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare noundef i64 @mktime(ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @utime(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @mz_zip_array_ensure_capacity(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !215  ; 2 uses
  %.not = icmp ult i64 %i.b, %2
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not22 = icmp eq i32 %3, 0
  br i1 %.not22, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %spec.select, %bb.c ], [ %i.d, %bb.d ] ; 3 uses
  %i.c = icmp ult i64 %.0, %2
  %i.d = shl i64 %.0, 1
  br i1 %i.c, label %bb.d, label %.loopexit, !llvm.loop !278

.loopexit:                                        ; preds = %bb.d, %bb.b
  %.1 = phi i64 [ %2, %bb.b ], [ %.0, %bb.d ]     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !195
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !196
  %i.i = load ptr, ptr %1, align 8, !tbaa !205
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !216
  %i.l = zext i32 %i.k to i64
  %i.m = tail call ptr %i.f(ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.l, i64 noundef %.1) #33 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  store ptr %i.m, ptr %1, align 8, !tbaa !205
  store i64 %.1, ptr %i.a, align 8, !tbaa !215
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.a, %bb.e
  %.018 = phi i32 [ 1, %bb.e ], [ 1, %bb.a ], [ 0, %.loopexit ]
  ret i32 %.018
}

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @zip_central_dir_delete(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #13 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader63.lr.ph, label %._crit_edge71

.preheader63.lr.ph:                               ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %wide.trip.count62.i = zext nneg i32 %2 to i64  ; 2 uses
  %i.d = zext nneg i32 %2 to i64                  ; 5 uses
  br label %.preheader63

.preheader63:                                     ; preds = %.preheader63.lr.ph, %zip_central_dir_move.exit
  %.05166 = phi i64 [ 0, %.preheader63.lr.ph ], [ %indvars.iv78, %zip_central_dir_move.exit ]
  %sext = shl i64 %.05166, 32
  %3 = ashr exact i64 %sext, 32                   ; 3 uses
  br label %bb.b

.preheader59.lr.ph:                               ; preds = %zip_central_dir_move.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = zext nneg i32 %2 to i64                  ; 3 uses
  br label %.preheader59

bb.b:                                             ; preds = %bb.b, %.preheader63
  %indvar = phi i64 [ %indvar.next, %bb.b ], [ 0, %.preheader63 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %3, %.preheader63 ] ; 6 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %.not53 = icmp eq i32 %i.h, 0
  %i.i = icmp slt i64 %indvars.iv, %i.d
  %i.j = and i1 %i.i, %.not53
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.j, label %bb.b, label %.preheader62, !llvm.loop !401

.preheader62:                                     ; preds = %bb.b, %.preheader62
  %indvar5 = phi i64 [ %indvar.next6, %.preheader62 ], [ 0, %bb.b ] ; 3 uses
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %.preheader62 ], [ %indvars.iv, %bb.b ] ; 12 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv78
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = icmp ne i32 %i.l, 0
  %i.n = icmp slt i64 %indvars.iv78, %i.d         ; 3 uses
  %i.o = and i1 %i.n, %i.m
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1
  %indvar.next6 = add i64 %indvar5, 1
  br i1 %i.o, label %.preheader62, label %bb.c, !llvm.loop !402

bb.c:                                             ; preds = %.preheader62
  %i.p = trunc nsw i64 %indvars.iv to i32
  %i.q = trunc nsw i64 %indvars.iv78 to i32       ; 2 uses
  %i.r = icmp eq i32 %2, %i.p
  br i1 %i.r, label %zip_central_dir_move.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %0, align 8, !tbaa !219    ; 3 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !220  ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3    ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  %i.y = icmp eq i32 %2, %i.q
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv78
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 2 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ab
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !277
  %i.ae = sub i64 %i.ad, %i.ab
  %gepdiff.i = sub i32 %i.aa, %i.v
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.050.i = phi i64 [ %i.ae, %bb.e ], [ 0, %bb.d ] ; 5 uses
  %.049.i = phi i32 [ %gepdiff.i, %bb.e ], [ 0, %bb.d ] ; 4 uses
  %.048.i = phi ptr [ %i.ac, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.af = icmp eq i32 %i.v, 0
  br i1 %i.af, label %bb.g, label %.loopexit54.i

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %.048.i, i64 %.050.i, i1 false)
  %i.ag = load ptr, ptr %0, align 8, !tbaa !219
  %i.ah = tail call ptr @realloc(ptr noundef %i.ag, i64 noundef %.050.i) #35
  store ptr %i.ah, ptr %0, align 8, !tbaa !219
  br i1 %i.n, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !220 ; 2 uses
  %i.aj = add i64 %3, %indvar
  %i.ak = add i64 %i.aj, %indvar5
  %i.al = sub i64 %i.d, %i.ak                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.al, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.al, -8                      ; 3 uses
  %i.am = add i64 %indvars.iv78, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.049.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.an = getelementptr [4 x i8], ptr %i.ai, i64 %indvars.iv78
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.an, i64 %index ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ao, align 4, !tbaa !3
  %wide.load7 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !3
  %i.aq = sub <4 x i32> %wide.load, %broadcast.splat
  %i.ar = sub <4 x i32> %wide.load7, %broadcast.splat
  store <4 x i32> %i.aq, ptr %i.ao, align 4, !tbaa !3
  store <4 x i32> %i.ar, ptr %i.ap, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !403

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %indvars.iv78, %.lr.ph.i ], [ %i.am, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %indvars.iv.i ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = sub i32 %i.au, %.049.i
  store i32 %i.av, ptr %i.at, align 4, !tbaa !3
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count62.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %scalar.ph, !llvm.loop !404

.loopexit54.i:                                    ; preds = %bb.f
  %i.aw = mul i64 %.050.i, %i.w
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %.loopexit54.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %.048.i, i64 %.050.i, i1 false)
  br i1 %i.n, label %.lr.ph57.i, label %.loopexit.i

.lr.ph57.i:                                       ; preds = %bb.h
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !220 ; 2 uses
  %i.ay = add i64 %3, %indvar
  %i.az = add i64 %i.ay, %indvar5
  %i.ba = sub i64 %i.d, %i.az                     ; 3 uses
  %min.iters.check9 = icmp ult i64 %i.ba, 8
  br i1 %min.iters.check9, label %scalar.ph8.preheader, label %vector.ph10

vector.ph10:                                      ; preds = %.lr.ph57.i
  %n.vec12 = and i64 %i.ba, -8                    ; 3 uses
  %i.bb = add i64 %indvars.iv78, %n.vec12
  %broadcast.splatinsert13 = insertelement <4 x i32> poison, i32 %.049.i, i64 0
  %broadcast.splat14 = shufflevector <4 x i32> %broadcast.splatinsert13, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bc = getelementptr [4 x i8], ptr %i.ax, i64 %indvars.iv78
  br label %vector.body15

vector.body15:                                    ; preds = %vector.body15, %vector.ph10
  %index16 = phi i64 [ 0, %vector.ph10 ], [ %index.next19, %vector.body15 ] ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.bc, i64 %index16 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %wide.load17 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !3
  %wide.load18 = load <4 x i32>, ptr %i.be, align 4, !tbaa !3
  %i.bf = sub <4 x i32> %wide.load17, %broadcast.splat14
  %i.bg = sub <4 x i32> %wide.load18, %broadcast.splat14
  store <4 x i32> %i.bf, ptr %i.bd, align 4, !tbaa !3
  store <4 x i32> %i.bg, ptr %i.be, align 4, !tbaa !3
  %index.next19 = add nuw i64 %index16, 8         ; 2 uses
  %i.bh = icmp eq i64 %index.next19, %n.vec12
  br i1 %i.bh, label %middle.block20, label %vector.body15, !llvm.loop !405

middle.block20:                                   ; preds = %vector.body15
  %cmp.n21 = icmp eq i64 %i.ba, %n.vec12
  br i1 %cmp.n21, label %.loopexit.i, label %scalar.ph8.preheader

scalar.ph8.preheader:                             ; preds = %.lr.ph57.i, %middle.block20
  %indvars.iv59.i.ph = phi i64 [ %indvars.iv78, %.lr.ph57.i ], [ %i.bb, %middle.block20 ]
  br label %scalar.ph8

scalar.ph8:                                       ; preds = %scalar.ph8.preheader, %scalar.ph8
  %indvars.iv59.i = phi i64 [ %indvars.iv.next60.i, %scalar.ph8 ], [ %indvars.iv59.i.ph, %scalar.ph8.preheader ] ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %indvars.iv59.i ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = sub i32 %i.bj, %.049.i
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !3
  %indvars.iv.next60.i = add nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %.loopexit.i, label %scalar.ph8, !llvm.loop !406

.loopexit.i:                                      ; preds = %scalar.ph8, %scalar.ph, %middle.block20, %middle.block, %bb.g, %bb.h, %.loopexit54.i
  %i.bl = add i64 %.050.i, %i.w
  store i64 %i.bl, ptr %i.c, align 8, !tbaa !277
  br label %zip_central_dir_move.exit

zip_central_dir_move.exit:                        ; preds = %bb.c, %.loopexit.i
  %i.bm = icmp sgt i32 %2, %i.q
  br i1 %i.bm, label %.preheader63, label %.preheader59.lr.ph, !llvm.loop !407

.preheader59:                                     ; preds = %._crit_edge, %.preheader59.lr.ph
  %.05070 = phi i32 [ 0, %.preheader59.lr.ph ], [ %i.cp, %._crit_edge ] ; 3 uses
  %.369 = phi i64 [ 0, %.preheader59.lr.ph ], [ %indvars.iv84, %._crit_edge ]
  %sext100 = shl i64 %.369, 32
  %4 = ashr exact i64 %sext100, 32                ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader59
  %indvar23.a = phi i64 [ %indvar.next24.a, %bb.i ], [ 0, %.preheader59 ] ; 3 uses
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %bb.i ], [ %4, %.preheader59 ] ; 6 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv81
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %.not = icmp eq i32 %i.bo, 0
  %i.bp = icmp slt i64 %indvars.iv81, %i.f
  %i.bq = and i1 %i.bp, %.not
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, 1
  %indvar.next24.a = add i64 %indvar23.a, 1
  br i1 %i.bq, label %bb.i, label %bb.j, !llvm.loop !408

bb.j:                                             ; preds = %bb.i
  %i.br = trunc nsw i64 %indvars.iv81 to i32      ; 3 uses
  %i.bs = icmp eq i32 %2, %i.br
  br i1 %i.bs, label %._crit_edge71, label %.preheader58

.preheader58:                                     ; preds = %bb.j, %.preheader58
  %indvar25 = phi i64 [ %indvar.next26, %.preheader58 ], [ 0, %bb.j ] ; 3 uses
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %.preheader58 ], [ %indvars.iv81, %bb.j ] ; 10 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv84
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = icmp ne i32 %i.bu, 0
  %i.bw = icmp slt i64 %indvars.iv84, %i.f
  %i.bx = and i1 %i.bw, %i.bv
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1
  %indvar.next26 = add i64 %indvar25, 1
  br i1 %i.bx, label %.preheader58, label %.preheader, !llvm.loop !409

.preheader:                                       ; preds = %.preheader58
  %i.by = trunc nsw i64 %indvars.iv84 to i32      ; 3 uses
  %i.bz = icmp sgt i32 %2, %i.by
  br i1 %i.bz, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %i.ca = sub i32 %.05070, %i.br
  %i.cb = add i32 %i.ca, %i.by
  br label %._crit_edge71

.lr.ph:                                           ; preds = %.preheader
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !220 ; 3 uses
  %sext101 = shl i64 %indvars.iv81, 32
  %5 = ashr exact i64 %sext101, 30                ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.cc, i64 %5 ; 2 uses
  %i.cd = add i64 %indvars.iv84, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.cd, i64 %i.d)
  %i.ce = add i64 %indvar23.a, %4
  %i.cf = add i64 %indvar25, %i.ce
  %i.cg = sub i64 %smax, %i.cf                    ; 3 uses
  %min.iters.check28 = icmp ult i64 %i.cg, 12
  br i1 %min.iters.check28, label %scalar.ph27.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %6 = add i64 %indvar23.a, %4
  %7 = add i64 %6, %indvar25
  %8 = shl i64 %7, 2
  %9 = sub i64 %8, %5
  %diff.check = icmp ugt i64 %9, -32
  br i1 %diff.check, label %scalar.ph27.preheader, label %vector.ph29

vector.ph29:                                      ; preds = %vector.memcheck
  %n.vec31 = and i64 %i.cg, -8                    ; 4 uses
  %i.ch = add i64 %indvars.iv84, %n.vec31
  %i.ci = getelementptr [4 x i8], ptr %i.cc, i64 %indvars.iv84
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph29
  %index33 = phi i64 [ 0, %vector.ph29 ], [ %index.next36, %vector.body32 ] ; 3 uses
  %i.cj = getelementptr [4 x i8], ptr %i.ci, i64 %index33 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load34 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !3
  %wide.load35 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !3
  %i.cl = getelementptr [4 x i8], ptr %invariant.gep, i64 %index33 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  store <4 x i32> %wide.load34, ptr %i.cl, align 4, !tbaa !3
  store <4 x i32> %wide.load35, ptr %i.cm, align 4, !tbaa !3
  %index.next36 = add nuw i64 %index33, 8         ; 2 uses
  %i.cn = icmp eq i64 %index.next36, %n.vec31
  br i1 %i.cn, label %middle.block37, label %vector.body32, !llvm.loop !410

middle.block37:                                   ; preds = %vector.body32
  %cmp.n38 = icmp eq i64 %i.cg, %n.vec31
  br i1 %cmp.n38, label %._crit_edge, label %scalar.ph27.preheader

scalar.ph27.preheader:                            ; preds = %vector.memcheck, %.lr.ph, %middle.block37
  %indvars.iv92.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec31, %middle.block37 ]
  %indvars.iv90.ph = phi i64 [ %indvars.iv84, %vector.memcheck ], [ %indvars.iv84, %.lr.ph ], [ %i.ch, %middle.block37 ]
  br label %scalar.ph27

._crit_edge:                                      ; preds = %scalar.ph27, %middle.block37
  %i.co = sub i32 %.05070, %i.br
  %i.cp = add i32 %i.co, %i.by
  br label %.preheader59

scalar.ph27:                                      ; preds = %scalar.ph27.preheader, %scalar.ph27
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %scalar.ph27 ], [ %indvars.iv92.ph, %scalar.ph27.preheader ] ; 2 uses
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %scalar.ph27 ], [ %indvars.iv90.ph, %scalar.ph27.preheader ] ; 2 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %indvars.iv90
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv92
  store i32 %i.cr, ptr %gep, align 4, !tbaa !3
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %indvars.iv.next91 = add nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.cs = icmp slt i64 %indvars.iv.next91, %i.f
  br i1 %i.cs, label %scalar.ph27, label %._crit_edge, !llvm.loop !411

._crit_edge71:                                    ; preds = %bb.j, %bb.a, %._crit_edge.thread
  %.050.lcssa = phi i32 [ %i.cb, %._crit_edge.thread ], [ 0, %bb.a ], [ %.05070, %bb.j ]
  %i.ct = sub nsw i32 %2, %.050.lcssa
  %i.cu = sext i32 %i.ct to i64
  %i.cv = shl nsw i64 %i.cu, 2
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !412
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #28

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind
declare i32 @symlink(ptr noundef, ptr noundef) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #30

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #33 = { nounwind }
attributes #34 = { nounwind allocsize(0) }
attributes #35 = { nounwind allocsize(1) }
attributes #36 = { nounwind willreturn memory(read) }
attributes #37 = { nounwind allocsize(0,1) }
attributes #38 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = !{!16, !4, i64 88}
!16 = !{!"mz_stream_s", !17, i64 0, !4, i64 8, !19, i64 16, !17, i64 24, !4, i64 32, !19, i64 40, !17, i64 48, !20, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !4, i64 88, !19, i64 96, !19, i64 104}
!17 = !{!"p1 omnipotent char", !18, i64 0}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!"long", !5, i64 0}
!20 = !{!"p1 _ZTS17mz_internal_state", !18, i64 0}
!21 = !{!16, !19, i64 96}
!22 = !{!16, !19, i64 104}
!23 = !{!16, !19, i64 16}
!24 = !{!16, !18, i64 64}
!25 = !{!16, !18, i64 72}
!26 = !{!16, !18, i64 80}
!27 = !{!16, !20, i64 56}
!28 = !{!29, !4, i64 16}
!29 = !{!"", !18, i64 0, !18, i64 8, !4, i64 16, !5, i64 20, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !18, i64 136, !18, i64 144, !30, i64 152, !30, i64 160, !4, i64 168, !17, i64 176, !19, i64 184, !19, i64 192, !5, i64 200, !5, i64 33226, !5, i64 34954, !5, i64 36682, !5, i64 37546, !5, i64 103082, !5, i64 168618, !5, i64 234154}
!30 = !{!"p1 long", !18, i64 0}
!31 = !{!29, !4, i64 28}
!32 = !{!29, !17, i64 48}
!33 = !{!29, !17, i64 56}
!34 = !{!29, !4, i64 80}
!35 = !{!29, !17, i64 64}
!36 = !{!29, !17, i64 72}
!37 = !{!29, !4, i64 132}
!38 = !{!29, !4, i64 108}
!39 = !{!29, !4, i64 104}
!40 = !{!29, !4, i64 100}
!41 = !{!29, !18, i64 0}
!42 = !{!29, !18, i64 8}
!43 = !{!16, !19, i64 40}
!44 = !{!16, !17, i64 24}
!45 = !{!16, !4, i64 32}
!46 = !{!16, !4, i64 8}
!47 = !{!16, !17, i64 0}
!48 = !{!19, !19, i64 0}
!49 = !{!29, !4, i64 32}
!50 = !{!29, !18, i64 136}
!51 = !{!29, !30, i64 152}
!52 = !{!29, !18, i64 144}
!53 = !{!29, !30, i64 160}
!54 = !{!29, !17, i64 176}
!55 = !{!29, !19, i64 184}
!56 = !{!29, !19, i64 192}
!57 = !{!29, !4, i64 168}
!58 = !{!29, !4, i64 128}
!59 = !{!29, !4, i64 116}
!60 = !{!29, !4, i64 120}
!61 = !{!29, !4, i64 112}
!62 = !{!29, !4, i64 40}
!63 = !{!29, !4, i64 44}
!64 = !{ptr @mz_deflateEnd}
!65 = !{ptr @mz_compress2, ptr @mz_deflateEnd}
!66 = !{!67, !4, i64 0}
!67 = !{!"", !68, i64 0, !4, i64 11000, !4, i64 11004, !4, i64 11008, !4, i64 11012, !4, i64 11016, !5, i64 11020, !4, i64 43788}
!68 = !{!"tinfl_decompressor_tag", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !5, i64 44, !69, i64 56, !19, i64 64, !5, i64 72, !5, i64 10536, !5, i64 10540}
!69 = !{!"long long", !5, i64 0}
!70 = !{!67, !4, i64 43788}
!71 = !{!67, !4, i64 11016}
!72 = !{ptr @mz_inflateInit2}
!73 = !{!67, !4, i64 11008}
!74 = !{!67, !4, i64 11012}
!75 = !{!67, !4, i64 28}
end_hunk_3
