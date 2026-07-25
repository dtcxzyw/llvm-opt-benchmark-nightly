inline.NumInlined: 158
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 52
begin_hunk_0_@zip_entry_fread:bb.a
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
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 24) #37 ; 24 uses
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
  %lcmp.mod155 = trunc i32 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod155)
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv114.i.i.epil.init ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !313
  %i.bi = icmp ugt i64 %i.bh, %.056.lcssa.i.i
  br i1 %i.bi, label %bb.m, label %.loopexit.i

bb.m:                                             ; preds = %.lr.ph.i.i.epil.preheader
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !311
  %.not77.i.i.epil = icmp eq i32 %i.bk, 1
  %spec.store.select.epil = select i1 %.not77.i.i.epil, i32 1, i32 2
  store i32 %spec.store.select.epil, ptr %i.bj, align 4
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.epil.preheader, %bb.m, %.loopexit.i.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.bl = call noalias ptr @calloc(i64 noundef %wide.trip.count112.i.i, i64 noundef 8) #37 ; 8 uses
  %.not.i12.i = icmp eq ptr %i.bl, null
  br i1 %.not.i12.i, label %.sink.split, label %.lr.ph.i14.i

.loopexit.thread.i:                               ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.bm = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 8) #37 ; 2 uses
  %.not.i1245.i = icmp eq ptr %i.bm, null
  br i1 %.not.i1245.i, label %.sink.split, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %zip_sort.exit.thread.i.i, %.loopexit.thread.i
  %i.bn = phi i64 [ %i.g, %.loopexit.thread.i ], [ %wide.trip.count112.i.i, %zip_sort.exit.thread.i.i ]
  %i.bo = phi ptr [ %i.bm, %.loopexit.thread.i ], [ %i.bl, %zip_sort.exit.thread.i.i ] ; 7 uses
  %i.bp = call noalias ptr @calloc(i64 noundef %i.bn, i64 noundef 8) #37 ; 11 uses
  %.not57.i.i = icmp eq ptr %i.bp, null
  br i1 %.not57.i.i, label %zip_entry_finalize.exit.thread23.i, label %.preheader.i13.i

zip_entry_finalize.exit.thread23.i:               ; preds = %._crit_edge.i.i
  call void @free(ptr noundef %i.bo) #33
  br label %.sink.split

.preheader.i13.i:                                 ; preds = %._crit_edge.i.i
  %i.bq = add i32 %i.f, -1                        ; 2 uses
  %i.br = icmp sgt i32 %i.f, 1
  br i1 %i.br, label %.lr.ph69.preheader.i.i, label %._crit_edge70.i.i

.lr.ph69.preheader.i.i:                           ; preds = %.preheader.i13.i
  %wide.trip.count81.i.i = zext nneg i32 %i.bq to i64 ; 5 uses
  %.pre.i.i = load i64, ptr %i.bo, align 8, !tbaa !245 ; 2 uses
  %min.iters.check125 = icmp ult i32 %i.f, 5
  br i1 %min.iters.check125, label %.lr.ph69.i.i.preheader, label %vector.ph126

vector.ph126:                                     ; preds = %.lr.ph69.preheader.i.i
  %n.vec128 = and i64 %wide.trip.count81.i.i, 2147483644 ; 3 uses
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 1
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph126
  %index130 = phi i64 [ 0, %vector.ph126 ], [ %index.next133, %vector.body129 ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph126 ], [ %wide.load132, %vector.body129 ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %index130 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %wide.load131 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !245 ; 3 uses
  %wide.load132 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !245 ; 4 uses
  %i.bv = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load131, <2 x i32> <i32 1, i32 2>
  %i.bw = shufflevector <2 x i64> %wide.load131, <2 x i64> %wide.load132, <2 x i32> <i32 1, i32 2>
  %i.bx = sub <2 x i64> %wide.load131, %i.bv
  %i.by = sub <2 x i64> %wide.load132, %i.bw
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %index130 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <2 x i64> %i.bx, ptr %i.bz, align 8, !tbaa !245
  store <2 x i64> %i.by, ptr %i.ca, align 8, !tbaa !245
  %index.next133 = add nuw i64 %index130, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next133, %n.vec128
  br i1 %i.cb, label %middle.block134, label %vector.body129, !llvm.loop !319

middle.block134:                                  ; preds = %vector.body129
  %vector.recur.extract = extractelement <2 x i64> %wide.load132, i64 1
  %cmp.n135 = icmp eq i64 %n.vec128, %wide.trip.count81.i.i
  br i1 %cmp.n135, label %._crit_edge70.thread.i.i, label %.lr.ph69.i.i.preheader

.lr.ph69.i.i.preheader:                           ; preds = %.lr.ph69.preheader.i.i, %middle.block134
  %.ph = phi i64 [ %.pre.i.i, %.lr.ph69.preheader.i.i ], [ %vector.recur.extract, %middle.block134 ]
  %indvars.iv78.i.i.ph = phi i64 [ 0, %.lr.ph69.preheader.i.i ], [ %n.vec128, %middle.block134 ]
  br label %.lr.ph69.i.i

.lr.ph.i14.i:                                     ; preds = %.loopexit.i, %zip_sort.exit.thread.i.i
  %indvars.iv.i15.i = phi i64 [ %indvars.iv.next.i16.i, %zip_sort.exit.thread.i.i ], [ 0, %.loopexit.i ] ; 17 uses
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv.i15.i ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !313 ; 4 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i15.i
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !245
  %i.cg = trunc nuw i64 %indvars.iv.i15.i to i32  ; 2 uses
  %i.ch = icmp slt i32 %i.cg, 1
  br i1 %i.ch, label %zip_index_next.exit.i.i.i, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %i.ci = trunc nuw i64 %i.cl to i32              ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 1
  br i1 %i.cj, label %zip_index_next.exit.i.i.i, label %.lr.ph, !llvm.loop !320

.lr.ph:                                           ; preds = %.lr.ph.i14.i, %bb.n
  %i.ck = phi i32 [ %i.ci, %bb.n ], [ %i.cg, %.lr.ph.i14.i ]
  %indvars.iv.i.i.i.i120 = phi i64 [ %i.cl, %bb.n ], [ %indvars.iv.i15.i, %.lr.ph.i14.i ]
  %i.cl = add nsw i64 %indvars.iv.i.i.i.i120, -1  ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !245
  %i.co = icmp ugt i64 %i.ce, %i.cn
  br i1 %i.co, label %.zip_index_next.exit.i.i.i_crit_edge, label %bb.n, !llvm.loop !320

.zip_index_next.exit.i.i.i_crit_edge:             ; preds = %.lr.ph
  br label %zip_index_next.exit.i.i.i, !llvm.loop !320

zip_index_next.exit.i.i.i:                        ; preds = %bb.n, %.zip_index_next.exit.i.i.i_crit_edge, %.lr.ph.i14.i
  %spec.select.i.i.i.i = phi i32 [ 0, %.lr.ph.i14.i ], [ %i.ck, %.zip_index_next.exit.i.i.i_crit_edge ], [ 0, %bb.n ] ; 5 uses
  %i.cp = zext nneg i32 %spec.select.i.i.i.i to i64 ; 7 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.i15.i, %i.cp
  br i1 %.not.i.i.i, label %zip_sort.exit.thread.i.i, label %bb.o

bb.o:                                             ; preds = %zip_index_next.exit.i.i.i
  %i.cq = icmp samesign ugt i64 %indvars.iv.i15.i, %i.cp
  br i1 %i.cq, label %.lr.ph.i.i.i.preheader, label %bb.p

.lr.ph.i.i.i.preheader:                           ; preds = %bb.o
  %i.cr = sub nuw nsw i64 %indvars.iv.i15.i, %i.cp ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.cr, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader149, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.cr, 9223372036854775804     ; 3 uses
  %i.cs = sub nsw i64 %indvars.iv.i15.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ct = sub i64 %indvars.iv.i15.i, %index
  %i.cu = getelementptr [8 x i8], ptr %i.bl, i64 %i.ct ; 4 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 -16
  %i.cw = getelementptr i8, ptr %i.cu, i64 -32
  %wide.load = load <2 x i64>, ptr %i.cv, align 8, !tbaa !245
  %wide.load123 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !245
  %i.cx = getelementptr i8, ptr %i.cu, i64 -8
  %i.cy = getelementptr i8, ptr %i.cu, i64 -24
  store <2 x i64> %wide.load, ptr %i.cx, align 8, !tbaa !245
  store <2 x i64> %wide.load123, ptr %i.cy, align 8, !tbaa !245
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !321

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %.thread.i.i, label %.lr.ph.i.i.i.preheader149

.lr.ph.i.i.i.preheader149:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ %indvars.iv.i15.i, %.lr.ph.i.i.i.preheader ], [ %i.cs, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader149, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader149 ] ; 2 uses
  %i.da = getelementptr [8 x i8], ptr %i.bl, i64 %indvars.iv.i.i.i ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 -8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !245
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !245
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %i.dd = icmp sgt i64 %indvars.iv.next.i.i.i, %i.cp
  br i1 %i.dd, label %.lr.ph.i.i.i, label %.thread.i.i, !llvm.loop !322

.thread.i.i:                                      ; preds = %.lr.ph.i.i.i, %middle.block
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.cp
  store i64 %i.ce, ptr %i.de, align 8, !tbaa !245
  br label %.lr.ph.i61.i.i.preheader

bb.p:                                             ; preds = %bb.o
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.cp
  store i64 %i.ce, ptr %i.df, align 8, !tbaa !245
  %.not65.i.i = icmp eq i64 %indvars.iv.i15.i, 0
  br i1 %.not65.i.i, label %zip_index_update.exit.i.i, label %.lr.ph.i61.i.i.preheader

.lr.ph.i61.i.i.preheader:                         ; preds = %bb.p, %.thread.i.i
  %xtraiter156 = and i64 %indvars.iv.i15.i, 1
  %i.dg = icmp eq i64 %indvars.iv.i15.i, 1
  br i1 %i.dg, label %.lr.ph.i61.i.i.epil.preheader, label %.lr.ph.i61.i.i.preheader.new

.lr.ph.i61.i.i.preheader.new:                     ; preds = %.lr.ph.i61.i.i.preheader
  %unroll_iter159 = and i64 %indvars.iv.i15.i, 9223372036854775806
  br label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %bb.s, %.lr.ph.i61.i.i.preheader.new
  %indvars.iv.i62.i.i = phi i64 [ 0, %.lr.ph.i61.i.i.preheader.new ], [ %indvars.iv.next.i64.i.i.1, %bb.s ] ; 3 uses
  %niter160 = phi i64 [ 0, %.lr.ph.i61.i.i.preheader.new ], [ %niter160.next.1, %bb.s ]
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv.i62.i.i ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !314 ; 2 uses
  %.not.i63.i.i = icmp slt i32 %i.di, %spec.select.i.i.i.i
  br i1 %.not.i63.i.i, label %.lr.ph.i61.i.i.1, label %bb.q

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
  %niter160.next.1 = add i64 %niter160, 2         ; 2 uses
  %niter160.ncmp.1 = icmp eq i64 %niter160.next.1, %unroll_iter159
  br i1 %niter160.ncmp.1, label %zip_index_update.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i61.i.i, !llvm.loop !323

zip_index_update.exit.i.i.loopexit.unr-lcssa:     ; preds = %bb.s
  %lcmp.mod157.not = icmp eq i64 %xtraiter156, 0
  br i1 %lcmp.mod157.not, label %zip_index_update.exit.i.i, label %.lr.ph.i61.i.i.epil.preheader

.lr.ph.i61.i.i.epil.preheader:                    ; preds = %zip_index_update.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i61.i.i.preheader
  %indvars.iv.i62.i.i.epil.init = phi i64 [ 0, %.lr.ph.i61.i.i.preheader ], [ %indvars.iv.next.i64.i.i.1, %zip_index_update.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod158 = trunc i64 %indvars.iv.i15.i to i1
  call void @llvm.assume(i1 %lcmp.mod158)
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
  %xtraiter161 = and i64 %wide.trip.count86.i.i, 3 ; 3 uses
  %i.dz = add i32 %i.f, -1
  %i.ea = icmp ult i32 %i.dz, 3
  br i1 %i.ea, label %.lr.ph73.i.i.epil.preheader, label %.lr.ph73.preheader.i.i.new

.lr.ph73.preheader.i.i.new:                       ; preds = %.lr.ph73.preheader.i.i
  %unroll_iter164 = and i64 %wide.trip.count86.i.i, 2147483644
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

._crit_edge70.thread.i.i:                         ; preds = %.lr.ph69.i.i, %middle.block134
  %i.eg = load i64, ptr %0, align 8, !tbaa !302
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %wide.trip.count81.i.i
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !245
  %i.ej = sub i64 %i.eg, %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %wide.trip.count81.i.i
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !245
  br label %.lr.ph73.preheader.i.i

.lr.ph73.i.i:                                     ; preds = %.lr.ph73.i.i, %.lr.ph73.preheader.i.i.new
  %indvars.iv83.i.i = phi i64 [ 0, %.lr.ph73.preheader.i.i.new ], [ %indvars.iv.next84.i.i.3, %.lr.ph73.i.i ] ; 5 uses
  %niter165 = phi i64 [ 0, %.lr.ph73.preheader.i.i.new ], [ %niter165.next.3, %.lr.ph73.i.i ]
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
  %niter165.next.3 = add i64 %niter165, 4         ; 2 uses
  %niter165.ncmp.3 = icmp eq i64 %niter165.next.3, %unroll_iter164
  br i1 %niter165.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph73.i.i, !llvm.loop !326

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph73.i.i
  %lcmp.mod162.not = icmp eq i64 %xtraiter161, 0
  br i1 %lcmp.mod162.not, label %.loopexit, label %.lr.ph73.i.i.epil.preheader

.lr.ph73.i.i.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph73.preheader.i.i
  %indvars.iv83.i.i.epil.init = phi i64 [ 0, %.lr.ph73.preheader.i.i ], [ %indvars.iv.next84.i.i.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod163 = icmp ne i64 %xtraiter161, 0
  call void @llvm.assume(i1 %lcmp.mod163)
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
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter161
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
  br label %.preheader107.i

.preheader107.i:                                  ; preds = %.preheader107.loopexit.i, %.preheader108.i
  %.pre-phi.i = phi i64 [ %indvars.iv.next.i, %.preheader107.loopexit.i ], [ %i.ga, %.preheader108.i ] ; 2 uses
  %i.gg = phi i32 [ %i.gq, %.preheader107.loopexit.i ], [ %i.gd, %.preheader108.i ] ; 2 uses
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
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !311 ; 2 uses
  %i.gr = icmp eq i32 %i.gq, 0
  %i.gs = icmp slt i64 %indvars.iv.next.i, %i.g
  %i.gt = and i1 %i.gs, %i.gr
  br i1 %i.gt, label %.lr.ph.i, label %.preheader107.loopexit.i, !llvm.loop !328

.preheader.loopexit.i:                            ; preds = %.lr.ph125.i
  %i.gu = trunc nsw i64 %indvars.iv.next159.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader107.i
  %.pre-phi165.i = phi i64 [ %indvars.iv.next159.i, %.preheader.loopexit.i ], [ %.pre-phi.i, %.preheader107.i ]
  %i.gv = phi i32 [ %i.hj, %.preheader.loopexit.i ], [ %i.gg, %.preheader107.i ]
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
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !311 ; 2 uses
  %i.hk = icmp eq i32 %i.hj, 1
  %i.hl = icmp slt i64 %indvars.iv.next159.i, %i.g
  %i.hm = and i1 %i.hl, %i.hk
  br i1 %i.hm, label %.lr.ph125.i, label %.preheader.loopexit.i, !llvm.loop !329

bb.v:                                             ; preds = %bb.w, %.lr.ph132.i
  %indvars.iv161.i = phi i64 [ %.pre-phi165.i, %.lr.ph132.i ], [ %indvars.iv.next162.i, %bb.w ] ; 3 uses
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
  br i1 %i.ik, label %.lr.ph.i.i33, label %zip_file_move.exit.thread.i.i

.lr.ph.i.i33:                                     ; preds = %.preheader.i.i32, %zip_file_move.exit.i.i
  %.037.i.i = phi i64 [ %i.iu, %zip_file_move.exit.i.i ], [ 0, %.preheader.i.i32 ]
  %.02536.i.i = phi i64 [ %i.it, %zip_file_move.exit.i.i ], [ %.194.lcssa.i, %.preheader.i.i32 ] ; 2 uses
  %.02635.i.i = phi i64 [ %i.is, %zip_file_move.exit.i.i ], [ %.280.lcssa.i, %.preheader.i.i32 ] ; 2 uses
  %.02734.i.i = phi i64 [ %i.ir, %zip_file_move.exit.i.i ], [ %.177.lcssa.i, %.preheader.i.i32 ] ; 2 uses
  %i.il = call i64 @llvm.umin.i64(i64 %.02536.i.i, i64 4096) ; 8 uses
  %i.im = call i32 @fseeko(ptr noundef %i.ih, i64 noundef %.02635.i.i, i32 noundef 0)
  %.not.i.i.i34 = icmp eq i32 %i.im, 0
  br i1 %.not.i.i.i34, label %bb.x, label %.sink.split.i.i.i

bb.x:                                             ; preds = %.lr.ph.i.i33
  %i.in = call i64 @fread(ptr noundef nonnull %i.ii, i64 noundef 1, i64 noundef range(i64 1, -9223372036854775808) %i.il, ptr noundef %i.ih)
  %.not20.i.i.i = icmp eq i64 %i.in, %i.il
  br i1 %.not20.i.i.i, label %bb.y, label %.sink.split.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.io = call i32 @fseeko(ptr noundef %i.ih, i64 noundef %.02734.i.i, i32 noundef 0)
  %.not21.i.i.i = icmp eq i32 %i.io, 0
  br i1 %.not21.i.i.i, label %bb.z, label %.sink.split.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.ip = call i64 @fwrite(ptr noundef nonnull %i.ii, i64 noundef 1, i64 noundef range(i64 1, -9223372036854775808) %i.il, ptr noundef %i.ih)
  %.not22.i.i.i = icmp eq i64 %i.ip, %i.il
  br i1 %.not22.i.i.i, label %zip_file_move.exit.i.i, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.z, %bb.y, %bb.x, %.lr.ph.i.i33
  %.0.ph.i.i.i = phi i64 [ -27, %bb.y ], [ -28, %bb.x ], [ -27, %.lr.ph.i.i33 ], [ -29, %bb.z ]
  %i.iq = call i32 @fclose(ptr noundef %i.ih)     ; 0 uses
  br label %zip_file_move.exit.thread.i.i

zip_file_move.exit.i.i:                           ; preds = %bb.z
  %i.ir = add i64 %.02734.i.i, %i.il
  %i.is = add i64 %i.il, %.02635.i.i
  %i.it = sub nsw i64 %.02536.i.i, %i.il          ; 2 uses
  %i.iu = add nuw nsw i64 %i.il, %.037.i.i        ; 2 uses
  %i.iv = icmp sgt i64 %i.it, 0
  br i1 %i.iv, label %.lr.ph.i.i33, label %zip_file_move.exit.thread.i.i, !llvm.loop !331

zip_file_move.exit.thread.i.i:                    ; preds = %zip_file_move.exit.i.i, %.sink.split.i.i.i, %.preheader.i.i32
  %.1.i.i = phi i64 [ %.0.ph.i.i.i, %.sink.split.i.i.i ], [ 0, %.preheader.i.i32 ], [ %i.iu, %zip_file_move.exit.i.i ]
  call void @free(ptr noundef %i.ii) #33
  br label %zip_files_move.exit.i

zip_files_move.exit.i:                            ; preds = %zip_file_move.exit.thread.i.i, %._crit_edge.i
  %.024.i.i = phi i64 [ %.1.i.i, %zip_file_move.exit.thread.i.i ], [ -21, %._crit_edge.i ] ; 2 uses
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
  %i.l = load i32, ptr %i.k, align 8, !tbaa !213  ; 3 uses
  %.not85 = icmp eq i32 %i.l, 0
  br i1 %.not85, label %zip_name_normalize.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 68 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0
  %i.o = sub nsw i64 32767, %.0
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not46 = icmp eq ptr %2, null
  %i.x = call i32 @mz_zip_reader_file_stat(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %6)
  %.not103 = icmp eq i32 %i.x, 0
  br i1 %.not103, label %zip_name_normalize.exit, label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph, %.backedge
  %.03068104 = phi i32 [ %.03068.be, %.backedge ], [ 0, %.lr.ph ] ; 7 uses
  %i.y = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #36 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %zip_name_normalize.exit, label %.preheader66.i

.preheader66.i:                                   ; preds = %.lr.ph107, %.critedge.i
  %.045.i = phi ptr [ %i.ab, %.critedge.i ], [ %i.m, %.lr.ph107 ] ; 3 uses
  %i.aa = load i8, ptr %.045.i, align 1, !tbaa !7
end_hunk_0
begin_hunk_1_@tdefl_optimize_huffman_table:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !7
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !340

.new:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 33226
  %i.aj = zext nneg i32 %1 to i64                 ; 3 uses
  %i.ak = getelementptr inbounds nuw [576 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %wide.trip.count126 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter190 = and i64 %wide.trip.count126, 1
  %unroll_iter195 = and i64 %wide.trip.count126, 510
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %indvars.iv123 = phi i64 [ 0, %.new ], [ %indvars.iv.next124.1, %bb.g ] ; 4 uses
  %.072101 = phi i32 [ 0, %.new ], [ %.173.1, %bb.g ] ; 3 uses
  %niter196 = phi i64 [ 0, %.new ], [ %niter196.next.1, %bb.g ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv123
  %i.am = load i16, ptr %i.al, align 2, !tbaa !108 ; 2 uses
  %.not79 = icmp eq i16 %i.am, 0
  br i1 %.not79, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = sext i32 %.072101 to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %5, i64 %i.an ; 2 uses
  store i16 %i.am, ptr %i.ao, align 4, !tbaa !369
  %i.ap = trunc i64 %indvars.iv123 to i16
  %i.aq = add nsw i32 %.072101, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i16 %i.ap, ptr %i.ar, align 2, !tbaa !371
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.173 = phi i32 [ %i.aq, %bb.d ], [ %.072101, %bb.c ] ; 3 uses
  %indvars.iv.next124 = or disjoint i64 %indvars.iv123, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.next124
  %i.at = load i16, ptr %i.as, align 2, !tbaa !108 ; 2 uses
  %.not79.1 = icmp eq i16 %i.at, 0
  br i1 %.not79.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = sext i32 %.173 to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %5, i64 %i.au ; 2 uses
  store i16 %i.at, ptr %i.av, align 4, !tbaa !369
  %i.aw = trunc i64 %indvars.iv.next124 to i16
  %i.ax = add nsw i32 %.173, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i16 %i.aw, ptr %i.ay, align 2, !tbaa !371
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.173.1 = phi i32 [ %i.ax, %bb.f ], [ %.173, %bb.e ] ; 5 uses
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv123, 2 ; 3 uses
  %niter196.next.1 = add nuw nsw i64 %niter196, 2 ; 2 uses
  %niter196.ncmp.1 = icmp eq i64 %niter196.next.1, %unroll_iter195
  br i1 %niter196.ncmp.1, label %.unr-lcssa, label %bb.c, !llvm.loop !372

.unr-lcssa:                                       ; preds = %bb.g
  %lcmp.mod192.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod192.not, label %.epilog-lcssa, label %.epil.preheader189

.epil.preheader189:                               ; preds = %.unr-lcssa
  %lcmp.mod194 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod194)
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.next124.1
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !108 ; 2 uses
  %.not79.epil = icmp eq i16 %i.ba, 0
  br i1 %.not79.epil, label %.epilog-lcssa, label %bb.h

bb.h:                                             ; preds = %.epil.preheader189
  %i.bb = sext i32 %.173.1 to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bb ; 2 uses
  store i16 %i.ba, ptr %i.bc, align 4, !tbaa !369
  %i.bd = trunc i64 %indvars.iv.next124.1 to i16
  %i.be = add nsw i32 %.173.1, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i16 %i.bd, ptr %i.bf, align 2, !tbaa !371
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader189, %bb.h, %.unr-lcssa
  %.173.lcssa = phi i32 [ %.173.1, %.unr-lcssa ], [ %i.be, %bb.h ], [ %.173.1, %.epil.preheader189 ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %.not.i = icmp eq i32 %.173.lcssa, 0
  br i1 %.not.i, label %.critedge.preheader.split55.i.preheader, label %.lr.ph.preheader.i

.critedge.preheader.split55.i.preheader:          ; preds = %.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  br label %bb.j

.lr.ph.preheader.i:                               ; preds = %.epilog-lcssa
  %wide.trip.count.i = zext i32 %.173.lcssa to i64 ; 7 uses
  %i.bg = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter197 = and i64 %wide.trip.count.i, 1
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter201 = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i

.preheader45.i.unr-lcssa:                         ; preds = %.lr.ph.i
  %lcmp.mod199.not = icmp eq i64 %xtraiter197, 0
  br i1 %lcmp.mod199.not, label %.preheader45.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader45.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.preheader45.i.unr-lcssa ]
  %lcmp.mod200 = trunc i32 %.173.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod200)
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i.epil.init
  %i.bj = load i16, ptr %i.bi, align 4, !tbaa !369
  %i.bk = zext i16 %i.bj to i32                   ; 2 uses
  %i.bl = and i32 %i.bk, 255
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !3
  %i.bq = lshr i32 %i.bk, 8
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1024 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !3
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %.preheader45.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 16
  %i.bw = freeze i32 %.pre.i
  %i.bx = icmp eq i32 %.173.lcssa, %i.bw
  %spec.select.i = select i1 %i.bx, i64 1, i64 2
  %xtraiter203 = and i64 %wide.trip.count.i, 1
  %i.by = icmp eq i64 %i.bg, 0
  %unroll_iter207 = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod205.not = icmp eq i64 %xtraiter203, 0
  %lcmp.mod206 = trunc i32 %.173.lcssa to i1
  br label %.critedge.preheader.split55.us.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %niter202 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter202.next.1, %.lr.ph.i ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.ca = load i16, ptr %i.bz, align 8, !tbaa !369
  %i.cb = zext i16 %i.ca to i32                   ; 2 uses
  %i.cc = and i32 %i.cb, 255
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !3
  %i.ch = lshr i32 %i.cb, 8
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1024 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !3
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i16, ptr %i.co, align 4, !tbaa !369
  %i.cq = zext i16 %i.cp to i32                   ; 2 uses
  %i.cr = and i32 %i.cq, 255
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !3
  %i.cw = lshr i32 %i.cq, 8
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1024 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter202.next.1 = add i64 %niter202, 2         ; 2 uses
  %niter202.ncmp.1 = icmp eq i64 %niter202.next.1, %unroll_iter201
  br i1 %niter202.ncmp.1, label %.preheader45.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !373

.critedge.preheader.split55.us.i:                 ; preds = %._crit_edge.us.i, %.preheader45.i
  %indvars.iv70.i = phi i64 [ 0, %.preheader45.i ], [ %indvars.iv.next71.i, %._crit_edge.us.i ] ; 2 uses
  %.03854.us.i = phi i32 [ 0, %.preheader45.i ], [ %i.eh, %._crit_edge.us.i ] ; 4 uses
  %.04052.us.i = phi ptr [ %6, %.preheader45.i ], [ %.04151.us.i, %._crit_edge.us.i ] ; 47 uses
  %.04151.us.i = phi ptr [ %5, %.preheader45.i ], [ %.04052.us.i, %._crit_edge.us.i ] ; 4 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv70.i, 10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  br label %bb.i

.preheader.us.i.a:                                ; preds = %.preheader.us.i.preheader, %.preheader.us.i.a
  %indvars.iv65.i.a = phi i64 [ %indvars.iv.next66.i.1, %.preheader.us.i.a ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %niter208 = phi i64 [ %niter208.next.1.a, %.preheader.us.i.a ], [ 0, %.preheader.us.i.preheader ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.04151.us.i, i64 %indvars.iv65.i.a ; 2 uses
  %7 = load i16, ptr %i.dd, align 8, !tbaa !369
  %8 = zext i16 %7 to i32
  %9 = lshr i32 %8, %.03854.us.i
  %10 = and i32 %9, 255
  %11 = zext nneg i32 %10 to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %11 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3  ; 2 uses
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !3
  %12 = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %12
  %13 = load i32, ptr %i.dd, align 8
  store i32 %13, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.04151.us.i, i64 %indvars.iv65.i.a
  %14 = getelementptr inbounds nuw i8, ptr %i.di, i64 4 ; 2 uses
  %15 = load i16, ptr %14, align 4, !tbaa !369
  %16 = zext i16 %15 to i32
  %17 = lshr i32 %16, %.03854.us.i
  %18 = and i32 %17, 255
  %19 = zext nneg i32 %18 to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %19 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3  ; 2 uses
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !3
  %20 = zext i32 %i.dk to i64
  %21 = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %20
  %22 = load i32, ptr %14, align 4
  store i32 %22, ptr %21, align 4
  %indvars.iv.next66.i.1 = add nuw nsw i64 %indvars.iv65.i.a, 2 ; 2 uses
  %niter208.next.1.a = add i64 %niter208, 2       ; 2 uses
  %niter208.ncmp.1.a = icmp eq i64 %niter208.next.1.a, %unroll_iter207
  br i1 %niter208.ncmp.1.a, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i.a, !llvm.loop !374

bb.i:                                             ; preds = %bb.i, %.critedge.preheader.split55.us.i
  %indvars.iv61.i = phi i64 [ 0, %.critedge.preheader.split55.us.i ], [ %indvars.iv.next62.i.3, %bb.i ] ; 6 uses
  %.03748.us.i = phi i32 [ 0, %.critedge.preheader.split55.us.i ], [ %29, %bb.i ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv61.i
  store i32 %.03748.us.i, ptr %i.dm, align 16, !tbaa !3
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv61.i
  %i.do = load i32, ptr %i.dn, align 16, !tbaa !3
  %i.dp = add i32 %i.do, %.03748.us.i             ; 2 uses
  %indvars.iv.next62.i = or disjoint i64 %indvars.iv61.i, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !3
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i
  %23 = load i32, ptr %i.dr, align 4, !tbaa !3
  %24 = add i32 %23, %i.dp                        ; 2 uses
  %indvars.iv.next62.i.1 = or disjoint i64 %indvars.iv61.i, 2 ; 2 uses
  %25 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i.1
  store i32 %24, ptr %25, align 8, !tbaa !3
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i.1
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !3
  %i.du = add i32 %i.dt, %24                      ; 2 uses
  %indvars.iv.next62.i.2 = or disjoint i64 %indvars.iv61.i, 3 ; 2 uses
  %26 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i.2
  store i32 %i.du, ptr %26, align 4, !tbaa !3
  %27 = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i.2
  %28 = load i32, ptr %27, align 4, !tbaa !3
  %29 = add i32 %28, %i.du
  %indvars.iv.next62.i.3 = add nuw nsw i64 %indvars.iv61.i, 4 ; 2 uses
  %exitcond64.not.i.3 = icmp eq i64 %indvars.iv.next62.i.3, 256
  br i1 %exitcond64.not.i.3, label %.preheader.us.i.preheader, label %bb.i, !llvm.loop !375

.preheader.us.i.preheader:                        ; preds = %bb.i
  br i1 %i.by, label %.preheader.us.i.epil.preheader, label %.preheader.us.i.a

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader.us.i.a
  br i1 %lcmp.mod205.not, label %._crit_edge.us.i, label %.preheader.us.i.epil.preheader

.preheader.us.i.epil.preheader:                   ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i.preheader
  %indvars.iv65.i.epil.init = phi i64 [ 0, %.preheader.us.i.preheader ], [ %indvars.iv.next66.i.1, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod206)
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.04151.us.i, i64 %indvars.iv65.i.epil.init ; 2 uses
  %i.dw = load i16, ptr %i.dv, align 4, !tbaa !369
  %i.dx = zext i16 %i.dw to i32
  %i.dy = lshr i32 %i.dx, %.03854.us.i
  %i.dz = and i32 %i.dy, 255
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3  ; 2 uses
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !3
  %i.ee = zext i32 %i.ec to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.ee
  %i.eg = load i32, ptr %i.dv, align 4
  store i32 %i.eg, ptr %i.ef, align 4
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %i.eh = add nuw nsw i32 %.03854.us.i, 8
  %exitcond74.not.i = icmp eq i64 %indvars.iv.next71.i, %spec.select.i
  br i1 %exitcond74.not.i, label %tdefl_radix_sort_syms.exit, label %.critedge.preheader.split55.us.i, !llvm.loop !376

tdefl_radix_sort_syms.exit.thread:                ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %tdefl_huffman_enforce_max_code_size.exit

bb.j:                                             ; preds = %bb.j, %.critedge.preheader.split55.i.preheader
  %indvars.iv75.i = phi i64 [ 0, %.critedge.preheader.split55.i.preheader ], [ %indvars.iv.next76.i.3, %bb.j ] ; 6 uses
  %.03748.i = phi i32 [ 0, %.critedge.preheader.split55.i.preheader ], [ %i.ex, %bb.j ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv75.i
  store i32 %.03748.i, ptr %i.ei, align 16, !tbaa !3
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv75.i
  %i.ek = load i32, ptr %i.ej, align 16, !tbaa !3
  %i.el = add i32 %i.ek, %.03748.i                ; 2 uses
  %indvars.iv.next76.i = or disjoint i64 %indvars.iv75.i, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i
  store i32 %i.el, ptr %i.em, align 4, !tbaa !3
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  %i.ep = add i32 %i.eo, %i.el                    ; 2 uses
  %indvars.iv.next76.i.1 = or disjoint i64 %indvars.iv75.i, 2 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i.1
  store i32 %i.ep, ptr %i.eq, align 8, !tbaa !3
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i.1
  %i.es = load i32, ptr %i.er, align 8, !tbaa !3
  %i.et = add i32 %i.es, %i.ep                    ; 2 uses
  %indvars.iv.next76.i.2 = or disjoint i64 %indvars.iv75.i, 3 ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i.2
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !3
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i.2
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = add i32 %i.ew, %i.et
  %indvars.iv.next76.i.3 = add nuw nsw i64 %indvars.iv75.i, 4 ; 2 uses
  %exitcond78.not.i.3 = icmp eq i64 %indvars.iv.next76.i.3, 256
  br i1 %exitcond78.not.i.3, label %tdefl_radix_sort_syms.exit.thread, label %bb.j, !llvm.loop !375

tdefl_radix_sort_syms.exit:                       ; preds = %._crit_edge.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  switch i32 %.173.lcssa, label %bb.k [
    i32 0, label %tdefl_huffman_enforce_max_code_size.exit
    i32 1, label %tdefl_calculate_minimum_redundancy.exit.thread166
  ]

tdefl_calculate_minimum_redundancy.exit.thread166: ; preds = %tdefl_radix_sort_syms.exit
  store i16 1, ptr %.04052.us.i, align 2, !tbaa !369
  br label %.lr.ph.preheader

bb.k:                                             ; preds = %tdefl_radix_sort_syms.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %.04052.us.i, i64 4
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !369
  %i.fa = load i16, ptr %.04052.us.i, align 2, !tbaa !369
  %i.fb = add i16 %i.fa, %i.ez
  store i16 %i.fb, ptr %.04052.us.i, align 2, !tbaa !369
  %i.fc = add i32 %.173.lcssa, -1                 ; 2 uses
  %i.fd = icmp sgt i32 %.173.lcssa, 2
  br i1 %i.fd, label %.lr.ph.preheader.i82, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.k
  %i.fe = add nsw i32 %.173.lcssa, -2             ; 2 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %i.ff
  store i16 0, ptr %i.fg, align 2, !tbaa !369
  br label %.preheader.i81.preheader

.lr.ph.preheader.i82:                             ; preds = %bb.k
  %wide.trip.count.i83 = zext nneg i32 %i.fc to i64
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %bb.s, %.lr.ph.preheader.i82
  %indvars.iv.i85 = phi i64 [ 1, %.lr.ph.preheader.i82 ], [ %indvars.iv.next.i87, %bb.s ] ; 8 uses
  %.07992.i = phi i32 [ 2, %.lr.ph.preheader.i82 ], [ %.281.i, %bb.s ] ; 4 uses
  %.08291.i = phi i32 [ 0, %.lr.ph.preheader.i82 ], [ %.284.i, %bb.s ] ; 3 uses
  %.not.i86 = icmp slt i32 %.07992.i, %.173.lcssa
  %i.fh = sext i32 %.08291.i to i64               ; 2 uses
  %i.fi = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %i.fh ; 2 uses
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !369 ; 2 uses
  br i1 %.not.i86, label %bb.l, label %.lr.ph._crit_edge.i

bb.l:                                             ; preds = %.lr.ph.i84
  %i.fk = sext i32 %.07992.i to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !369 ; 2 uses
  %i.fn = icmp ult i16 %i.fj, %i.fm
  br i1 %i.fn, label %.lr.ph._crit_edge.i, label %bb.m

.lr.ph._crit_edge.i:                              ; preds = %bb.l, %.lr.ph.i84
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv.i85
  store i16 %i.fj, ptr %i.fo, align 2, !tbaa !369
  %i.fp = trunc i64 %indvars.iv.i85 to i16
  %i.fq = add nsw i32 %.08291.i, 1                ; 2 uses
  store i16 %i.fp, ptr %i.fi, align 2, !tbaa !369
  %.pre = sext i32 %i.fq to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fr = add nsw i32 %.07992.i, 1
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv.i85
  store i16 %i.fm, ptr %i.fs, align 2, !tbaa !369
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph._crit_edge.i
  %.pre-phi = phi i64 [ %i.fh, %bb.m ], [ %.pre, %.lr.ph._crit_edge.i ] ; 4 uses
  %.183.i = phi i32 [ %.08291.i, %bb.m ], [ %i.fq, %.lr.ph._crit_edge.i ] ; 2 uses
  %.180.i = phi i32 [ %i.fr, %bb.m ], [ %.07992.i, %.lr.ph._crit_edge.i ] ; 5 uses
  %.not88.i = icmp slt i32 %.180.i, %.173.lcssa
  br i1 %.not88.i, label %bb.o, label %._crit_edge127.i

._crit_edge127.i:                                 ; preds = %bb.n
  %.phi.trans.insert129.i = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %.pre-phi
  %.pre130.i = load i16, ptr %.phi.trans.insert129.i, align 2, !tbaa !369
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ft = icmp sgt i64 %indvars.iv.i85, %.pre-phi
  br i1 %i.ft, label %bb.p, label %._crit_edge123.i

._crit_edge123.i:                                 ; preds = %bb.o
  %.phi.trans.insert124.i = sext i32 %.180.i to i64
  %.phi.trans.insert125.i = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %.phi.trans.insert124.i
  %.pre126.i = load i16, ptr %.phi.trans.insert125.i, align 2, !tbaa !369
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.fu = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %.pre-phi
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !369 ; 2 uses
  %i.fw = sext i32 %.180.i to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !369 ; 2 uses
  %i.fz = icmp ult i16 %i.fv, %i.fy
  br i1 %i.fz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %._crit_edge127.i
  %i.ga = phi i16 [ %.pre130.i, %._crit_edge127.i ], [ %i.fv, %bb.p ]
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !369
  %i.gd = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %.pre-phi
  %i.ge = add i16 %i.gc, %i.ga
  store i16 %i.ge, ptr %i.gb, align 2, !tbaa !369
  %i.gf = trunc i64 %indvars.iv.i85 to i16
  %i.gg = add nsw i32 %.183.i, 1
  store i16 %i.gf, ptr %i.gd, align 2, !tbaa !369
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %._crit_edge123.i
  %i.gh = phi i16 [ %.pre126.i, %._crit_edge123.i ], [ %i.fy, %bb.p ]
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !369
  %i.gk = add nsw i32 %.180.i, 1
  %i.gl = add i16 %i.gj, %i.gh
  store i16 %i.gl, ptr %i.gi, align 2, !tbaa !369
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.284.i = phi i32 [ %i.gg, %bb.q ], [ %.183.i, %bb.r ]
  %.281.i = phi i32 [ %.180.i, %bb.q ], [ %i.gk, %bb.r ]
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %exitcond.not.i88 = icmp eq i64 %indvars.iv.next.i87, %wide.trip.count.i83
  br i1 %exitcond.not.i88, label %._crit_edge.i, label %.lr.ph.i84, !llvm.loop !377

._crit_edge.i:                                    ; preds = %bb.s
  %i.gm = add nsw i32 %.173.lcssa, -2             ; 3 uses
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.gn
  store i16 0, ptr %i.go, align 2, !tbaa !369
  %i.gp = add nsw i32 %.173.lcssa, -3             ; 2 uses
  %i.gq = zext i32 %i.gp to i64                   ; 3 uses
  %i.gr = add nuw nsw i64 %i.gq, 1
  %xtraiter209 = and i64 %i.gr, 3                 ; 2 uses
  %lcmp.mod210.not = icmp eq i64 %xtraiter209, 0
  br i1 %lcmp.mod210.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol

.lr.ph96.i.prol:                                  ; preds = %._crit_edge.i, %.lr.ph96.i.prol
  %indvars.iv115.i.prol = phi i64 [ %indvars.iv.next116.i.prol, %.lr.ph96.i.prol ], [ %i.gq, %._crit_edge.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph96.i.prol ], [ 0, %._crit_edge.i ]
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv115.i.prol ; 2 uses
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !369
  %i.gu = zext i16 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.gu
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !369
  %i.gx = add i16 %i.gw, 1
  store i16 %i.gx, ptr %i.gs, align 2, !tbaa !369
  %indvars.iv.next116.i.prol = add nsw i64 %indvars.iv115.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter209
  br i1 %prol.iter.cmp.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol, !llvm.loop !378

.lr.ph96.i.prol.loopexit:                         ; preds = %.lr.ph96.i.prol, %._crit_edge.i
  %indvars.iv115.i.unr = phi i64 [ %i.gq, %._crit_edge.i ], [ %indvars.iv.next116.i.prol, %.lr.ph96.i.prol ]
  %i.gy = icmp ult i32 %i.gp, 3
  br i1 %i.gy, label %.preheader.i81.preheader, label %.lr.ph96.i

.lr.ph96.i:                                       ; preds = %.lr.ph96.i.prol.loopexit, %.lr.ph96.i
  %indvars.iv115.i = phi i64 [ %indvars.iv.next116.i.3, %.lr.ph96.i ], [ %indvars.iv115.i.unr, %.lr.ph96.i.prol.loopexit ] ; 5 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv115.i ; 2 uses
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !369
  %i.hb = zext i16 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.hb
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !369
  %i.he = add i16 %i.hd, 1
  store i16 %i.he, ptr %i.gz, align 2, !tbaa !369
  %i.hf = getelementptr [4 x i8], ptr %.04052.us.i, i64 %indvars.iv115.i
  %i.hg = getelementptr i8, ptr %i.hf, i64 -4     ; 2 uses
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !369
  %i.hi = zext i16 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.hi
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !369
  %i.hl = add i16 %i.hk, 1
  store i16 %i.hl, ptr %i.hg, align 2, !tbaa !369
  %i.hm = getelementptr [4 x i8], ptr %.04052.us.i, i64 %indvars.iv115.i
  %i.hn = getelementptr i8, ptr %i.hm, i64 -8     ; 2 uses
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !369
  %i.hp = zext i16 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.hp
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !369
  %i.hs = add i16 %i.hr, 1
  store i16 %i.hs, ptr %i.hn, align 2, !tbaa !369
  %indvars.iv.next116.i.2 = add nsw i64 %indvars.iv115.i, -3 ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv.next116.i.2 ; 2 uses
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !369
  %i.hv = zext i16 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.hv
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !369
  %i.hy = add i16 %i.hx, 1
  store i16 %i.hy, ptr %i.ht, align 2, !tbaa !369
  %indvars.iv.next116.i.3 = add nsw i64 %indvars.iv115.i, -4
  %.not140.i.3 = icmp eq i64 %indvars.iv.next116.i.2, 0
  br i1 %.not140.i.3, label %.preheader.i81.preheader, label %.lr.ph96.i, !llvm.loop !379

.preheader.i81.preheader:                         ; preds = %.lr.ph96.i.prol.loopexit, %.lr.ph96.i, %._crit_edge.thread.i
  %.385110.i.ph = phi i32 [ %i.fe, %._crit_edge.thread.i ], [ %i.gm, %.lr.ph96.i ], [ %i.gm, %.lr.ph96.i.prol.loopexit ]
  br label %.preheader.i81

.preheader.i81:                                   ; preds = %.preheader.i81.preheader, %._crit_edge108.i
  %.0113.i = phi i32 [ %i.jb, %._crit_edge108.i ], [ 0, %.preheader.i81.preheader ] ; 3 uses
  %.075112.i = phi i32 [ %i.ja, %._crit_edge108.i ], [ 1, %.preheader.i81.preheader ] ; 5 uses
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.add.v4i32
!111 = !{!"llvm.loop.isvectorized", i32 1}
!112 = distinct !{!112, !11}
!113 = distinct !{!113, !11}
!114 = distinct !{!114, !11}
!115 = distinct !{!115, !11}
!116 = distinct !{!116, !11}
!117 = distinct !{!117, !11}
!118 = distinct !{!118, !11}
!119 = distinct !{!119, !11}
!120 = distinct !{!120, !11}
!121 = distinct !{!121, !11}
!122 = distinct !{!122, !11}
!123 = distinct !{!123, !11}
!124 = distinct !{!124, !11}
!125 = distinct !{!125, !11}
!126 = distinct !{!126, !11}
!127 = distinct !{!127, !11}
!128 = distinct !{!128, !11}
!129 = distinct !{!129, !11}
!130 = distinct !{!130, !11}
!131 = distinct !{!131, !11}
!132 = distinct !{!132, !11}
!133 = !{!134}
!134 = distinct !{!134, !135}
!135 = distinct !{!135, !"LVerDomain"}
!136 = !{!137}
!137 = distinct !{!137, !135}
!138 = distinct !{!138, !11, !111, !139}
!139 = !{!"llvm.loop.unroll.runtime.disable"}
!140 = distinct !{!140, !11, !111}
!141 = distinct !{!141, !11}
!142 = distinct !{!142, !11}
!143 = distinct !{!143, !11}
!144 = distinct !{!144, !11}
!145 = distinct !{!145, !9}
!146 = distinct !{!146, !11}
!147 = distinct !{!147, !11}
!148 = distinct !{!148, !11}
!149 = !{ptr @mz_inflateEnd}
!150 = !{!151, !17, i64 8}
!151 = !{!"", !4, i64 0, !17, i64 8}
!152 = !{!29, !4, i64 36}
!153 = !{!29, !4, i64 84}
!154 = distinct !{!154, !11}
!155 = distinct !{!155, !11}
!156 = distinct !{!156, !11}
!157 = distinct !{!157, !11}
!158 = distinct !{!158, !11}
!159 = distinct !{!159, !11}
!160 = !{!29, !4, i64 88}
!161 = !{!29, !4, i64 124}
!162 = !{!29, !4, i64 92}
!163 = !{!29, !4, i64 96}
!164 = distinct !{!164, !11}
!165 = distinct !{!165, !11}
!166 = distinct !{!166, !11}
!167 = distinct !{!167, !11}
!168 = distinct !{!168, !11}
!169 = distinct !{!169, !11, !170}
!170 = !{!"llvm.loop.unswitch.partial.disable"}
!171 = distinct !{!171, !11}
!172 = distinct !{!172, !11, !170}
!173 = distinct !{!173, !11}
!174 = distinct !{!174, !11}
!175 = distinct !{!175, !11, !170}
!176 = distinct !{!176, !11}
!177 = distinct !{!177, !11}
!178 = distinct !{!178, !11}
!179 = distinct !{!179, !11, !170}
!180 = !{!181, !4, i64 24}
!181 = !{!"", !19, i64 0, !19, i64 8, !17, i64 16, !4, i64 24}
!182 = !{!181, !19, i64 0}
!183 = !{!181, !17, i64 16}
!184 = !{!181, !19, i64 8}
!185 = distinct !{!185, !11}
!186 = distinct !{!186, !11}
!187 = distinct !{!187, !11}
!188 = !{!189, !18, i64 72}
!189 = !{!"", !69, i64 0, !69, i64 8, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !69, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !190, i64 104}
!190 = !{!"p1 _ZTS25mz_zip_internal_state_tag", !18, i64 0}
!191 = !{!189, !190, i64 104}
!192 = !{!189, !4, i64 20}
!193 = !{!189, !18, i64 40}
!194 = !{!189, !18, i64 48}
!195 = !{!189, !18, i64 56}
!196 = !{!189, !18, i64 64}
!197 = distinct !{null}
!198 = !{!199, !4, i64 24}
!199 = !{!"mz_zip_internal_state_tag", !200, i64 0, !200, i64 32, !200, i64 64, !4, i64 96, !4, i64 100, !4, i64 104, !201, i64 112, !69, i64 120, !18, i64 128, !19, i64 136, !19, i64 144}
!200 = !{!"", !18, i64 0, !19, i64 8, !19, i64 16, !4, i64 24}
!201 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!202 = !{!199, !4, i64 56}
!203 = !{!199, !4, i64 88}
!204 = !{!189, !69, i64 0}
!205 = !{!200, !18, i64 0}
!206 = !{ptr @mz_zip_reader_end}
!207 = !{!199, !201, i64 112}
!208 = !{!189, !4, i64 28}
!209 = !{!189, !18, i64 96}
!210 = distinct !{null}
!211 = distinct !{!211, !11}
!212 = !{!199, !4, i64 100}
!213 = !{!189, !4, i64 16}
!214 = !{!189, !69, i64 8}
!215 = !{!200, !19, i64 16}
!216 = !{!200, !4, i64 24}
!217 = !{ptr @mz_zip_array_ensure_capacity}
!218 = !{!200, !19, i64 8}
!219 = !{!199, !18, i64 0}
!220 = !{!199, !18, i64 32}
!221 = !{!199, !18, i64 64}
!222 = !{!199, !4, i64 104}
!223 = distinct !{!223, !11}
!224 = distinct !{!224, !11}
!225 = distinct !{null}
!226 = !{!199, !18, i64 128}
!227 = !{!199, !19, i64 136}
!228 = !{!229, !4, i64 0}
!229 = !{!"", !4, i64 0, !4, i64 4, !109, i64 8, !109, i64 10, !109, i64 12, !109, i64 14, !19, i64 16, !4, i64 24, !69, i64 32, !69, i64 40, !109, i64 48, !4, i64 52, !69, i64 56, !4, i64 64, !5, i64 68, !5, i64 328}
!230 = !{!229, !4, i64 4}
!231 = !{!229, !109, i64 8}
!232 = !{!229, !109, i64 10}
!233 = !{!229, !109, i64 12}
!234 = !{!229, !109, i64 14}
!235 = !{!236, !4, i64 32}
!236 = !{!"tm", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !19, i64 40, !17, i64 48}
!237 = !{!236, !4, i64 20}
!238 = !{!236, !4, i64 16}
!239 = !{!236, !4, i64 12}
!240 = !{!236, !4, i64 8}
!241 = !{!236, !4, i64 4}
!242 = !{!236, !4, i64 0}
!243 = !{!229, !19, i64 16}
!244 = !{!229, !4, i64 24}
!245 = !{!69, !69, i64 0}
!246 = !{!229, !109, i64 48}
!247 = !{!229, !4, i64 52}
!248 = !{!229, !69, i64 56}
!249 = !{!229, !4, i64 64}
!250 = !{!199, !19, i64 72}
!251 = distinct !{!251, !11}
!252 = distinct !{!252, !11}
!253 = distinct !{!253, !11}
!254 = distinct !{!254, !11}
!255 = distinct !{!255, !11}
!256 = !{!229, !69, i64 32}
!257 = !{ptr @mz_zip_reader_extract_to_heap}
!258 = distinct !{!258, !11}
!259 = distinct !{!259, !11}
!260 = !{!229, !69, i64 40}
!261 = !{!262, !19, i64 0}
!262 = !{!"utimbuf", !19, i64 0, !19, i64 8}
!263 = !{!262, !19, i64 8}
!264 = !{!189, !18, i64 80}
!265 = !{!189, !69, i64 32}
!266 = !{ptr @mz_zip_writer_init}
!267 = !{!199, !19, i64 144}
!268 = distinct !{!268, !11}
!269 = distinct !{!269, !11}
!270 = distinct !{!270, !11}
!271 = distinct !{null}
!272 = distinct !{!272, !11}
!273 = !{!274, !18, i64 0}
!274 = !{!"", !18, i64 0, !69, i64 8, !69, i64 16}
!275 = !{!274, !69, i64 8}
!276 = !{!274, !69, i64 16}
!277 = !{!199, !19, i64 8}
!278 = distinct !{!278, !11}
!279 = !{!280, !19, i64 88}
!280 = !{!"stat", !19, i64 0, !19, i64 8, !19, i64 16, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !281, i64 72, !281, i64 88, !281, i64 104, !5, i64 120}
!281 = !{!"timespec", !19, i64 0, !19, i64 8}
!282 = distinct !{!282, !11}
!283 = distinct !{!283, !11}
!284 = !{!18, !18, i64 0}
!285 = !{ptr @mz_zip_writer_finalize_archive}
!286 = !{ptr @mz_zip_writer_end}
!287 = !{!17, !17, i64 0}
!288 = !{!289, !4, i64 112}
!289 = !{!"zip_t", !189, i64 0, !4, i64 112, !290, i64 120}
!290 = !{!"zip_entry_t", !4, i64 0, !17, i64 8, !69, i64 16, !69, i64 24, !4, i64 32, !69, i64 40, !5, i64 48, !69, i64 80, !109, i64 88, !274, i64 96, !29, i64 120, !4, i64 319472, !19, i64 319480}
!291 = !{!289, !190, i64 104}
!292 = !{!289, !17, i64 128}
!293 = distinct !{!293, !11}
!294 = !{!289, !4, i64 120}
!295 = !{!289, !4, i64 152}
!296 = !{!289, !69, i64 160}
!297 = !{!289, !69, i64 200}
!298 = !{!289, !109, i64 208}
!299 = !{!289, !4, i64 319592}
!300 = !{!289, !19, i64 319600}
!301 = !{!289, !4, i64 16}
!302 = !{!289, !69, i64 0}
!303 = !{!289, !18, i64 216}
!304 = !{!289, !69, i64 224}
!305 = !{!289, !69, i64 232}
!306 = !{!289, !69, i64 144}
!307 = !{!289, !69, i64 136}
!308 = !{!280, !4, i64 24}
!309 = distinct !{!309, !11}
!310 = !{!289, !4, i64 20}
!311 = !{!312, !4, i64 4}
!312 = !{!"zip_entry_mark_t", !4, i64 0, !4, i64 4, !69, i64 8, !69, i64 16}
!313 = !{!312, !69, i64 8}
!314 = !{!312, !4, i64 0}
!315 = !{!312, !69, i64 16}
!316 = distinct !{!316, !11}
!317 = distinct !{!317, !11}
!318 = distinct !{!318, !11}
!319 = distinct !{!319, !11, !111, !139}
!320 = distinct !{!320, !11}
!321 = distinct !{!321, !11, !111, !139}
!322 = distinct !{!322, !11, !139, !111}
!323 = distinct !{!323, !11}
!324 = distinct !{!324, !11}
!325 = distinct !{!325, !11, !139, !111}
!326 = distinct !{!326, !11}
!327 = distinct !{!327, !9}
!328 = distinct !{!328, !11}
!329 = distinct !{!329, !11}
!330 = distinct !{!330, !11}
!331 = distinct !{!331, !11}
!332 = distinct !{!332, !11}
!333 = distinct !{!333, !11}
!334 = distinct !{!334, !11}
!335 = distinct !{!335, !11, !336}
!336 = !{!"llvm.loop.peeled.count", i32 1}
!337 = distinct !{!337, !11}
!338 = distinct !{!338, !11}
!339 = distinct !{!339, !11}
!340 = distinct !{!340, !11}
!341 = distinct !{!341, !11}
!342 = distinct !{!342, !9}
!343 = distinct !{!343, !11}
!344 = distinct !{!344, !9}
!345 = distinct !{!345, !11}
!346 = distinct !{!346, !11}
!347 = distinct !{!347, !11}
!348 = distinct !{!348, !11}
!349 = distinct !{!349, !11}
!350 = distinct !{!350, !11}
!351 = distinct !{!351, !11}
!352 = distinct !{!352, !11, !170}
!353 = distinct !{!353, !11}
!354 = distinct !{!354, !9}
!355 = distinct !{!355, !11}
!356 = distinct !{!356, !11, !170}
!357 = distinct !{!357, !9}
!358 = distinct !{!358, !11}
!359 = distinct !{!359, !11, !170}
!360 = distinct !{!360, !11}
!361 = distinct !{!361, !11}
!362 = distinct !{!362, !9}
!363 = distinct !{!363, !11}
!364 = distinct !{!364, !11, !170}
!365 = distinct !{!365, !11}
!366 = distinct !{!366, !9}
!367 = distinct !{!367, !11}
!368 = distinct !{!368, !11, !170}
!369 = !{!370, !109, i64 0}
!370 = !{!"", !109, i64 0, !109, i64 2}
!371 = !{!370, !109, i64 2}
!372 = distinct !{!372, !11}
!373 = distinct !{!373, !11}
!374 = distinct !{!374, !11}
!375 = distinct !{!375, !11}
!376 = distinct !{!376, !11}
!377 = distinct !{!377, !11}
!378 = distinct !{!378, !9}
!379 = distinct !{!379, !11}
!380 = distinct !{!380, !11}
!381 = distinct !{!381, !9}
!382 = distinct !{!382, !11}
!383 = distinct !{!383, !11}
!384 = distinct !{!384, !11}
!385 = distinct !{!385, !9}
!386 = distinct !{!386, !11, !139, !111}
!387 = distinct !{!387, !9}
!388 = distinct !{!388, !11}
!389 = distinct !{!389, !11}
!390 = distinct !{!390, !11}
!391 = distinct !{!391, !9}
!392 = distinct !{!392, !11}
!393 = distinct !{!393, !11}
!394 = distinct !{!394, !9}
!395 = distinct !{!395, !9}
!396 = distinct !{!396, !11}
!397 = distinct !{!397, !9}
!398 = distinct !{!398, !11}
!399 = distinct !{!399, !11}
!400 = distinct !{!400, !11}
!401 = distinct !{!401, !11}
!402 = distinct !{!402, !11}
!403 = distinct !{!403, !11, !111, !139}
!404 = distinct !{!404, !11, !139, !111}
!405 = distinct !{!405, !11, !111, !139}
!406 = distinct !{!406, !11, !139, !111}
!407 = distinct !{!407, !11}
!408 = distinct !{!408, !11}
!409 = distinct !{!409, !11}
!410 = distinct !{!410, !11, !111, !139}
!411 = distinct !{!411, !11, !111}
!412 = !{!199, !19, i64 40}
end_hunk_2
