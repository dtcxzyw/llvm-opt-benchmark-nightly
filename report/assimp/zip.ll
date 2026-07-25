inline.NumInlined: 193
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 62
begin_hunk_0_@zip_entry_fread:bb.a
  %.not21 = icmp eq i8 %i.ac, 0
  br i1 %.not21, label %bb.h, label %mz_zip_reader_is_file_a_directory.exit.thread30

bb.h:                                             ; preds = %mz_zip_reader_is_file_a_directory.exit.thread, %mz_zip_reader_is_file_a_directory.exit
  %i.ad = tail call i32 @mz_zip_reader_extract_to_file(ptr noundef nonnull %0, i32 noundef %i.f, ptr noundef %1, i32 noundef 0)
  %.not22 = icmp eq i32 %i.ad, 0
  br i1 %.not22, label %mz_zip_reader_is_file_a_directory.exit.thread30, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.g, align 8             ; 3 uses
  %.not10.i.i25 = icmp eq ptr %i.ae, null
  br i1 %.not10.i.i25, label %mz_zip_reader_file_stat.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i32, ptr %i.af, align 8
  %.not11.i.i26 = icmp ugt i32 %i.ag, %i.f
  br i1 %.not11.i.i26, label %bb.k, label %mz_zip_reader_file_stat.exit

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %i.ae, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = and i64 %i.d, 4294967295
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.an
  br label %mz_zip_reader_file_stat.exit

mz_zip_reader_file_stat.exit:                     ; preds = %bb.i, %bb.j, %bb.k
  %.0.i.i = phi ptr [ %i.ao, %bb.k ], [ null, %bb.j ], [ null, %bb.i ]
  %i.ap = call fastcc range(i32 0, 2) i32 @mz_zip_file_stat_internal(ptr noundef nonnull %0, i32 noundef %i.f, ptr noundef %.0.i.i, ptr noundef nonnull %2, ptr noundef null)
  %.not23 = icmp eq i32 %i.ap, 0
  br i1 %.not23, label %mz_zip_reader_is_file_a_directory.exit.thread30, label %bb.l

bb.l:                                             ; preds = %mz_zip_reader_file_stat.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = lshr i32 %i.ar, 16                      ; 2 uses
  %.not24 = icmp eq i32 %i.as, 0
  br i1 %.not24, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call i32 @chmod(ptr noundef %1, i32 noundef %i.as) #36
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %mz_zip_reader_is_file_a_directory.exit.thread30, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %mz_zip_reader_is_file_a_directory.exit.thread30

mz_zip_reader_is_file_a_directory.exit.thread30:  ; preds = %bb.g, %bb.m, %mz_zip_reader_file_stat.exit, %bb.h, %mz_zip_reader_is_file_a_directory.exit, %bb.b, %bb.c, %bb.a, %bb.n
  %.0 = phi i32 [ -1, %bb.a ], [ -3, %bb.b ], [ -19, %mz_zip_reader_file_stat.exit ], [ 0, %bb.n ], [ -19, %bb.h ], [ -17, %mz_zip_reader_is_file_a_directory.exit ], [ -3, %bb.c ], [ -20, %bb.m ], [ -17, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define range(i32 -10, 1) i32 @zip_entry_extract(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %.not11 = icmp eq i32 %i.b, 1
  br i1 %.not11, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = trunc i64 %i.d to i32
  %i.g = tail call i32 @mz_zip_reader_extract_to_callback(ptr noundef nonnull %0, i32 noundef %i.f, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  %.not12 = icmp eq i32 %i.g, 0
  %i.h = select i1 %.not12, i32 -10, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ -1, %bb.a ], [ %i.h, %bb.d ], [ -3, %bb.c ], [ -3, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i64 -1, 4294967296) i64 @zip_entries_total(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8
  %i.c = zext i32 %i.b to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @zip_entries_delete(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %3 = alloca %struct.mz_zip_archive_file_stat, align 8 ; 6 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null                     ; 3 uses
  %i.c = icmp ne i64 %2, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %2, 0                        ; 2 uses
  %or.cond3 = and i1 %i.b, %i.d
  br i1 %or.cond3, label %bb.t, label %zip_entries_total.exit

zip_entries_total.exit:                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = zext i32 %i.f to i64                     ; 6 uses
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 32) #40 ; 9 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.t, label %bb.d

bb.d:                                             ; preds = %zip_entries_total.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.i, align 4
  br i1 %i.b, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %.not33 = icmp eq i32 %i.f, 0
  br i1 %.not33, label %zip_entry_set.exit, label %.lr.ph88.i.i

.lr.ph88.i.i:                                     ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  br i1 %i.d, label %.lr.ph88.split.i.i, label %.lr.ph88.split.us.i.i

.lr.ph88.split.us.i.i:                            ; preds = %.lr.ph88.i.i, %bb.k
  %.05287.us.i.i = phi i64 [ %.2.us.i.i, %bb.k ], [ -1, %.lr.ph88.i.i ] ; 2 uses
  %.05586.us.i.i = phi i64 [ %i.aq, %bb.k ], [ 0, %.lr.ph88.i.i ] ; 5 uses
  %i.m = call i32 @zip_entry_openbyindex(ptr noundef nonnull %0, i64 noundef %.05586.us.i.i) ; 2 uses
  %.not68.us.i.i = icmp eq i32 %i.m, 0
  br i1 %.not68.us.i.i, label %.preheader79.us.i.i, label %.split.us.i.i

bb.f:                                             ; preds = %.preheader79.us.i.i, %zip_name_match.exit.thread.us.i.i
  %.085.us.i.i = phi i64 [ 0, %.preheader79.us.i.i ], [ %4, %zip_name_match.exit.thread.us.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.085.us.i.i
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.o) #39 ; 3 uses
  %i.q = add i64 %i.p, 1
  %i.r = call noalias ptr @calloc(i64 noundef %i.q, i64 noundef 1) #40 ; 5 uses
  %.not.i.i.us.i.i = icmp ne ptr %i.r, null
  %i.s = icmp ne i64 %i.p, 0
  %or.cond.i.i.us.i.i = and i1 %i.s, %.not.i.i.us.i.i
  br i1 %or.cond.i.i.us.i.i, label %.lr.ph.i.i.us.i.i, label %zip_strrpl.exit.i.us.i.i

.lr.ph.i.i.us.i.i:                                ; preds = %bb.f, %bb.h
  %.01322.i.i.us.i.i = phi ptr [ %i.v, %bb.h ], [ %i.r, %bb.f ] ; 2 uses
  %.01421.i.i.us.i.i = phi i64 [ %i.w, %bb.h ], [ 0, %bb.f ]
  %.01620.i.i.us.i.i = phi ptr [ %i.t, %bb.h ], [ %i.o, %bb.f ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01620.i.i.us.i.i, i64 1
  %i.u = load i8, ptr %.01620.i.i.us.i.i, align 1 ; 2 uses
  switch i8 %i.u, label %bb.h [
    i8 0, label %zip_strrpl.exit.i.us.i.i
    i8 92, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i.i.us.i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.us.i.i
  %.015.i.i.us.i.i = phi i8 [ 47, %bb.g ], [ %i.u, %.lr.ph.i.i.us.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.01322.i.i.us.i.i, i64 1
  store i8 %.015.i.i.us.i.i, ptr %.01322.i.i.us.i.i, align 1
  %i.w = add nuw i64 %.01421.i.i.us.i.i, 1        ; 2 uses
  %exitcond.not.i.i.us.i.i = icmp eq i64 %i.w, %i.p
  br i1 %exitcond.not.i.i.us.i.i, label %zip_strrpl.exit.i.us.i.i, label %.lr.ph.i.i.us.i.i

zip_strrpl.exit.i.us.i.i:                         ; preds = %bb.h, %.lr.ph.i.i.us.i.i, %bb.f
  %.not.i.us.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.us.i.i, label %zip_name_match.exit.thread.us.i.i, label %zip_name_match.exit.us.i.i

zip_name_match.exit.us.i.i:                       ; preds = %zip_strrpl.exit.i.us.i.i
  %i.x = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ar, ptr noundef nonnull dereferenceable(1) %i.r) #39
  %.not78.us.i.i = icmp eq i32 %i.x, 0
  call void @free(ptr noundef nonnull %i.r) #36
  br i1 %.not78.us.i.i, label %..critedge_crit_edge.us.i.i, label %zip_name_match.exit.thread.us.i.i

zip_name_match.exit.thread.us.i.i:                ; preds = %zip_name_match.exit.us.i.i, %zip_strrpl.exit.i.us.i.i
  %4 = add nuw i64 %.085.us.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %4, %2
  br i1 %exitcond.not.i.i, label %..critedge_crit_edge.us.i.i, label %bb.f

..critedge_crit_edge.us.i.i:                      ; preds = %zip_name_match.exit.thread.us.i.i, %zip_name_match.exit.us.i.i
  %i.y = phi i1 [ false, %zip_name_match.exit.thread.us.i.i ], [ true, %zip_name_match.exit.us.i.i ]
  %.sink.i.i = phi i32 [ 0, %zip_name_match.exit.thread.us.i.i ], [ 1, %zip_name_match.exit.us.i.i ]
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.05586.us.i.i ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 %.sink.i.i, ptr %i.aa, align 8
  %i.ab = trunc i64 %.05586.us.i.i to i32         ; 2 uses
  %i.ac = load ptr, ptr %i.k, align 8             ; 3 uses
  %.not10.i.i.us.i.i = icmp eq ptr %i.ac, null
  br i1 %.not10.i.i.us.i.i, label %mz_zip_reader_file_stat.exit.us.i.i, label %bb.i

bb.i:                                             ; preds = %..critedge_crit_edge.us.i.i
  %i.ad = load i32, ptr %i.e, align 8
  %.not11.i.i.us.i.i = icmp ugt i32 %i.ad, %i.ab
  br i1 %.not11.i.i.us.i.i, label %bb.j, label %mz_zip_reader_file_stat.exit.us.i.i

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.05586.us.i.i
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  br label %mz_zip_reader_file_stat.exit.us.i.i

mz_zip_reader_file_stat.exit.us.i.i:              ; preds = %bb.j, %bb.i, %..critedge_crit_edge.us.i.i
  %.0.i.i.us.i.i = phi ptr [ %i.ak, %bb.j ], [ null, %bb.i ], [ null, %..critedge_crit_edge.us.i.i ]
  %i.al = call fastcc range(i32 0, 2) i32 @mz_zip_file_stat_internal(ptr noundef nonnull %0, i32 noundef %i.ab, ptr noundef %.0.i.i.us.i.i, ptr noundef nonnull %3, ptr noundef null)
  %.not72.not.us.i.i = icmp eq i32 %i.al, 0
  br i1 %.not72.not.us.i.i, label %zip_entry_mark.exit.thread13.i, label %bb.k

bb.k:                                             ; preds = %mz_zip_reader_file_stat.exit.us.i.i
  %i.am = call i32 @zip_entry_close(ptr noundef nonnull %0) ; 0 uses
  %i.an = load i64, ptr %i.l, align 8             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.an, ptr %i.ao, align 8
  store i64 -1, ptr %i.z, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 0, ptr %i.ap, align 8
  %spec.select.us.i.i = call i64 @llvm.umin.i64(i64 %.05287.us.i.i, i64 %i.an)
  %.2.us.i.i = select i1 %i.y, i64 %spec.select.us.i.i, i64 %.05287.us.i.i ; 2 uses
  %i.aq = add nuw nsw i64 %.05586.us.i.i, 1       ; 2 uses
  %exitcond100.not.i.i = icmp eq i64 %i.aq, %i.g
  br i1 %exitcond100.not.i.i, label %.preheader.i.i, label %.lr.ph88.split.us.i.i

.preheader79.us.i.i:                              ; preds = %.lr.ph88.split.us.i.i
  %i.ar = load ptr, ptr %i.j, align 8
  br label %bb.f

.preheader.i.i:                                   ; preds = %bb.k, %bb.n
  %.052.lcssa.i.i = phi i64 [ -1, %bb.n ], [ %.2.us.i.i, %bb.k ] ; 3 uses
  %xtraiter = and i64 %i.g, 1
  %i.as = icmp eq i32 %i.f, 1
  br i1 %i.as, label %.lr.ph.i.i.epil.preheader, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i
  %unroll_iter = and i64 %i.g, 4294967294
  br label %.lr.ph.i.i

.lr.ph88.split.i.i:                               ; preds = %.lr.ph88.i.i, %bb.n
  %.05586.i.i = phi i64 [ %i.bm, %bb.n ], [ 0, %.lr.ph88.i.i ] ; 5 uses
  %i.at = call i32 @zip_entry_openbyindex(ptr noundef nonnull %0, i64 noundef %.05586.i.i) ; 2 uses
  %.not68.i.i = icmp eq i32 %i.at, 0
  br i1 %.not68.i.i, label %.preheader79.i.i, label %.split.us.i.i

.preheader79.i.i:                                 ; preds = %.lr.ph88.split.i.i
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.05586.i.i ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 0, ptr %i.av, align 8
  %i.aw = trunc i64 %.05586.i.i to i32            ; 2 uses
  %i.ax = load ptr, ptr %i.k, align 8             ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not10.i.i.i.i, label %mz_zip_reader_file_stat.exit.i.i, label %bb.l

.split.us.i.i:                                    ; preds = %.lr.ph88.split.us.i.i, %.lr.ph88.split.i.i
  %.us-phi.i.i = phi i32 [ %i.at, %.lr.ph88.split.i.i ], [ %i.m, %.lr.ph88.split.us.i.i ]
  %i.ay = sext i32 %.us-phi.i.i to i64
  br label %zip_entry_mark.exit.thread13.i

bb.l:                                             ; preds = %.preheader79.i.i
  %i.az = load i32, ptr %i.e, align 8
  %.not11.i.i.i.i = icmp ugt i32 %i.az, %i.aw
  br i1 %.not11.i.i.i.i, label %bb.m, label %mz_zip_reader_file_stat.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr %i.ax, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.05586.i.i
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf
  br label %mz_zip_reader_file_stat.exit.i.i

mz_zip_reader_file_stat.exit.i.i:                 ; preds = %bb.m, %bb.l, %.preheader79.i.i
  %.0.i.i.i.i = phi ptr [ %i.bg, %bb.m ], [ null, %bb.l ], [ null, %.preheader79.i.i ]
  %i.bh = call fastcc range(i32 0, 2) i32 @mz_zip_file_stat_internal(ptr noundef nonnull %0, i32 noundef %i.aw, ptr noundef %.0.i.i.i.i, ptr noundef nonnull %3, ptr noundef null)
  %.not72.not.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not72.not.i.i, label %zip_entry_mark.exit.thread13.i, label %bb.n

bb.n:                                             ; preds = %mz_zip_reader_file_stat.exit.i.i
  %i.bi = call i32 @zip_entry_close(ptr noundef nonnull %0) ; 0 uses
  %i.bj = load i64, ptr %i.l, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %i.bj, ptr %i.bk, align 8
  store i64 -1, ptr %i.au, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i64 0, ptr %i.bl, align 8
  %i.bm = add nuw nsw i64 %.05586.i.i, 1          ; 2 uses
  %exitcond101.not.i.i = icmp eq i64 %i.bm, %i.g
  br i1 %exitcond101.not.i.i, label %.preheader.i.i, label %.lr.ph88.split.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %.preheader.i.i.new
  %.15690.i.i = phi i64 [ 0, %.preheader.i.i.new ], [ %i.bz, %bb.q ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i.i.new ], [ %niter.next.1, %bb.q ]
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.15690.i.i ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = icmp ugt i64 %i.bp, %.052.lcssa.i.i
  br i1 %i.bq, label %bb.o, label %.lr.ph.i.i.1

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8
  %.not67.i.i = icmp eq i32 %i.bs, 1
  %spec.store.select = select i1 %.not67.i.i, i32 1, i32 2
  store i32 %spec.store.select, ptr %i.br, align 8
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.o, %.lr.ph.i.i
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.15690.i.i ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = icmp ugt i64 %i.bv, %.052.lcssa.i.i
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i.i.1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 40 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8
  %.not67.i.i.1 = icmp eq i32 %i.by, 1
  %spec.store.select.1 = select i1 %.not67.i.i.1, i32 1, i32 2
  store i32 %spec.store.select.1, ptr %i.bx, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i.1
  %i.bz = add nuw nsw i64 %.15690.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %zip_entry_set.exit.loopexit.unr-lcssa, label %.lr.ph.i.i

zip_entry_mark.exit.thread13.i:                   ; preds = %mz_zip_reader_file_stat.exit.us.i.i, %mz_zip_reader_file_stat.exit.i.i, %.split.us.i.i
  %.259.i.ph.i = phi i64 [ %i.ay, %.split.us.i.i ], [ -3, %mz_zip_reader_file_stat.exit.i.i ], [ -3, %mz_zip_reader_file_stat.exit.us.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.sink.split

zip_entry_set.exit.loopexit.unr-lcssa:            ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %zip_entry_set.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %zip_entry_set.exit.loopexit.unr-lcssa, %.preheader.i.i
  %.15690.i.i.epil.init = phi i64 [ 0, %.preheader.i.i ], [ %i.bz, %zip_entry_set.exit.loopexit.unr-lcssa ]
  %lcmp.mod89 = trunc i32 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod89)
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.15690.i.i.epil.init ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = icmp ugt i64 %i.cc, %.052.lcssa.i.i
  br i1 %i.cd, label %bb.r, label %zip_entry_set.exit

bb.r:                                             ; preds = %.lr.ph.i.i.epil.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8
  %.not67.i.i.epil = icmp eq i32 %i.cf, 1
  %spec.store.select.epil = select i1 %.not67.i.i.epil, i32 1, i32 2
  store i32 %spec.store.select.epil, ptr %i.ce, align 8
  br label %zip_entry_set.exit

zip_entry_set.exit:                               ; preds = %zip_entry_set.exit.loopexit.unr-lcssa, %bb.r, %.lr.ph.i.i.epil.preheader, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.cg = call fastcc i32 @zip_entry_finalize(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i64 noundef range(i64 -1, 4294967296) %i.g) ; 2 uses
  %spec.select.i = sext i32 %i.cg to i64
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %.sink.split, label %bb.s

bb.s:                                             ; preds = %zip_entry_set.exit
  %i.ci = call fastcc i64 @zip_entries_delete_mark(ptr noundef %0, ptr noundef %i.h, i32 noundef %i.f)
  br label %.sink.split

.sink.split:                                      ; preds = %zip_entry_set.exit, %zip_entry_mark.exit.thread13.i, %bb.d, %bb.s
  %.0.ph = phi i64 [ %i.ci, %bb.s ], [ %spec.select.i, %zip_entry_set.exit ], [ -1, %bb.d ], [ %.259.i.ph.i, %zip_entry_mark.exit.thread13.i ]
  call void @free(ptr noundef nonnull %i.h) #36
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %zip_entries_total.exit, %bb.c, %bb.a, %bb.b
  %.0 = phi i64 [ 0, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ], [ -21, %zip_entries_total.exit ], [ %.0.ph, %.sink.split ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @zip_entries_delete_mark(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #9 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 4 uses
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 4) #40 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 2, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @fseeko(ptr noundef nonnull %i.h, i64 noundef 0, i32 noundef 0)
  %.not110 = icmp eq i32 %i.i, 0
  br i1 %.not110, label %.preheader118, label %.thread.sink.split

.preheader118:                                    ; preds = %bb.c
  %i.j = icmp sgt i32 %2, 0
  br i1 %i.j, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %.preheader118
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.l
  %.084153 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bu, %bb.l ] ; 2 uses
  %.086152 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bv, %bb.l ]
  %.094151 = phi i64 [ 0, %.preheader.lr.ph ], [ %.195.lcssa186, %bb.l ] ; 3 uses
  %.096150 = phi i32 [ 0, %.preheader.lr.ph ], [ %.399.lcssa, %bb.l ] ; 2 uses
  %.0101149 = phi i64 [ 0, %.preheader.lr.ph ], [ %.1102.lcssa, %bb.l ] ; 4 uses
  %.0103148 = phi i64 [ 0, %.preheader.lr.ph ], [ %.1104.lcssa185, %bb.l ] ; 3 uses
  %i.l = sext i32 %.096150 to i64                 ; 3 uses
  %i.m = add nsw i32 %.096150, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.m)
  %i.n = getelementptr inbounds [32 x i8], ptr %1, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.lr.ph231, label %.critedge

end_hunk_0
begin_hunk_1_@tdefl_optimize_huffman_table:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.b

.new:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
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
  %i.am = load i16, ptr %i.al, align 2            ; 2 uses
  %.not79 = icmp eq i16 %i.am, 0
  br i1 %.not79, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = sext i32 %.072101 to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %5, i64 %i.an ; 2 uses
  store i16 %i.am, ptr %i.ao, align 4
  %i.ap = trunc i64 %indvars.iv123 to i16
  %i.aq = add nsw i32 %.072101, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i16 %i.ap, ptr %i.ar, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.173 = phi i32 [ %i.aq, %bb.d ], [ %.072101, %bb.c ] ; 3 uses
  %indvars.iv.next124 = or disjoint i64 %indvars.iv123, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.next124
  %i.at = load i16, ptr %i.as, align 2            ; 2 uses
  %.not79.1 = icmp eq i16 %i.at, 0
  br i1 %.not79.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = sext i32 %.173 to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %5, i64 %i.au ; 2 uses
  store i16 %i.at, ptr %i.av, align 4
  %i.aw = trunc i64 %indvars.iv.next124 to i16
  %i.ax = add nsw i32 %.173, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i16 %i.aw, ptr %i.ay, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.173.1 = phi i32 [ %i.ax, %bb.f ], [ %.173, %bb.e ] ; 5 uses
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv123, 2 ; 3 uses
  %niter196.next.1 = add nuw nsw i64 %niter196, 2 ; 2 uses
  %niter196.ncmp.1 = icmp eq i64 %niter196.next.1, %unroll_iter195
  br i1 %niter196.ncmp.1, label %.unr-lcssa, label %bb.c

.unr-lcssa:                                       ; preds = %bb.g
  %lcmp.mod192.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod192.not, label %.epilog-lcssa, label %.epil.preheader189

.epil.preheader189:                               ; preds = %.unr-lcssa
  %lcmp.mod194 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod194)
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.next124.1
  %i.ba = load i16, ptr %i.az, align 2            ; 2 uses
  %.not79.epil = icmp eq i16 %i.ba, 0
  br i1 %.not79.epil, label %.epilog-lcssa, label %bb.h

bb.h:                                             ; preds = %.epil.preheader189
  %i.bb = sext i32 %.173.1 to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bb ; 2 uses
  store i16 %i.ba, ptr %i.bc, align 4
  %i.bd = trunc i64 %indvars.iv.next124.1 to i16
  %i.be = add nsw i32 %.173.1, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i16 %i.bd, ptr %i.bf, align 2
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader189, %bb.h, %.unr-lcssa
  %.173.lcssa = phi i32 [ %.173.1, %.unr-lcssa ], [ %i.be, %bb.h ], [ %.173.1, %.epil.preheader189 ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %.not.i = icmp eq i32 %.173.lcssa, 0
  br i1 %.not.i, label %.critedge.preheader.split55.i.preheader, label %.lr.ph.preheader.i

.critedge.preheader.split55.i.preheader:          ; preds = %.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
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
  %i.bj = load i16, ptr %i.bi, align 4
  %i.bk = zext i16 %i.bj to i32                   ; 2 uses
  %i.bl = and i32 %i.bk, 255
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4
  %i.bq = lshr i32 %i.bk, 8
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1024 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4
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
  %i.ca = load i16, ptr %i.bz, align 8
  %i.cb = zext i16 %i.ca to i32                   ; 2 uses
  %i.cc = and i32 %i.cb, 255
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4
  %i.ch = lshr i32 %i.cb, 8
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1024 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i16, ptr %i.co, align 4
  %i.cq = zext i16 %i.cp to i32                   ; 2 uses
  %i.cr = and i32 %i.cq, 255
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 4
  %i.cw = lshr i32 %i.cq, 8
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1024 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter202.next.1 = add i64 %niter202, 2         ; 2 uses
  %niter202.ncmp.1 = icmp eq i64 %niter202.next.1, %unroll_iter201
  br i1 %niter202.ncmp.1, label %.preheader45.i.unr-lcssa, label %.lr.ph.i

.critedge.preheader.split55.us.i:                 ; preds = %._crit_edge.us.i, %.preheader45.i
  %indvars.iv70.i = phi i64 [ 0, %.preheader45.i ], [ %indvars.iv.next71.i, %._crit_edge.us.i ] ; 2 uses
  %.03854.us.i = phi i32 [ 0, %.preheader45.i ], [ %i.eh, %._crit_edge.us.i ] ; 4 uses
  %.04052.us.i = phi ptr [ %6, %.preheader45.i ], [ %.04151.us.i, %._crit_edge.us.i ] ; 47 uses
  %.04151.us.i = phi ptr [ %5, %.preheader45.i ], [ %.04052.us.i, %._crit_edge.us.i ] ; 4 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv70.i, 10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  br label %.preheader.us.i.a

.preheader.us.i.a:                                ; preds = %.preheader.us.i.a, %.critedge.preheader.split55.us.i
  %indvars.iv65.i.a = phi i64 [ 0, %.critedge.preheader.split55.us.i ], [ %niter208.next.1.a, %.preheader.us.i.a ] ; 6 uses
  %.03748.us.i = phi i32 [ 0, %.critedge.preheader.split55.us.i ], [ %13, %.preheader.us.i.a ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv65.i.a
  store i32 %.03748.us.i, ptr %i.dd, align 16
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv65.i.a
  %i.df = load i32, ptr %i.de, align 16
  %i.dg = add i32 %i.df, %.03748.us.i             ; 2 uses
  %indvars.iv.next62.i = or disjoint i64 %indvars.iv65.i.a, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i
  store i32 %i.dg, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i
  %7 = load i32, ptr %i.di, align 4
  %8 = add i32 %7, %i.dg                          ; 2 uses
  %indvars.iv.next62.i.1 = or disjoint i64 %indvars.iv65.i.a, 2 ; 2 uses
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i.1
  store i32 %8, ptr %9, align 8
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i.1
  %i.dk = load i32, ptr %i.dj, align 8
  %i.dl = add i32 %i.dk, %8                       ; 2 uses
  %indvars.iv.next62.i.2 = or disjoint i64 %indvars.iv65.i.a, 3 ; 2 uses
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i.2
  store i32 %i.dl, ptr %10, align 4
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i.2
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %i.dl
  %niter208.next.1.a = add nuw nsw i64 %indvars.iv65.i.a, 4 ; 2 uses
  %niter208.ncmp.1.a = icmp eq i64 %niter208.next.1.a, 256
  br i1 %niter208.ncmp.1.a, label %.preheader.us.i.preheader, label %.preheader.us.i.a

.preheader.us.i.preheader:                        ; preds = %.preheader.us.i.a
  br i1 %i.by, label %.preheader.us.i.epil.preheader, label %bb.i

bb.i:                                             ; preds = %.preheader.us.i.preheader, %bb.i
  %indvars.iv61.i = phi i64 [ %indvars.iv.next66.i.1, %bb.i ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %niter208 = phi i64 [ %indvars.iv.next62.i.3, %bb.i ], [ 0, %.preheader.us.i.preheader ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.04151.us.i, i64 %indvars.iv61.i ; 2 uses
  %14 = load i16, ptr %i.dm, align 8
  %15 = zext i16 %14 to i32
  %16 = lshr i32 %15, %.03854.us.i
  %17 = and i32 %16, 255
  %18 = zext nneg i32 %17 to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %18 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4            ; 2 uses
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr %i.dn, align 4
  %19 = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %19
  %20 = load i32, ptr %i.dm, align 8
  store i32 %20, ptr %i.dq, align 4
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.04151.us.i, i64 %indvars.iv61.i
  %21 = getelementptr inbounds nuw i8, ptr %i.dr, i64 4 ; 2 uses
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  %24 = lshr i32 %23, %.03854.us.i
  %25 = and i32 %24, 255
  %26 = zext nneg i32 %25 to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %26 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4            ; 2 uses
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 4
  %27 = zext i32 %i.dt to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %27
  %29 = load i32, ptr %21, align 4
  store i32 %29, ptr %28, align 4
  %indvars.iv.next66.i.1 = add nuw nsw i64 %indvars.iv61.i, 2 ; 2 uses
  %indvars.iv.next62.i.3 = add i64 %niter208, 2   ; 2 uses
  %exitcond64.not.i.3 = icmp eq i64 %indvars.iv.next62.i.3, %unroll_iter207
  br i1 %exitcond64.not.i.3, label %._crit_edge.us.i.unr-lcssa, label %bb.i

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.i
  br i1 %lcmp.mod205.not, label %._crit_edge.us.i, label %.preheader.us.i.epil.preheader

.preheader.us.i.epil.preheader:                   ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i.preheader
  %indvars.iv65.i.epil.init = phi i64 [ 0, %.preheader.us.i.preheader ], [ %indvars.iv.next66.i.1, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod206)
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.04151.us.i, i64 %indvars.iv65.i.epil.init ; 2 uses
  %i.dw = load i16, ptr %i.dv, align 4
  %i.dx = zext i16 %i.dw to i32
  %i.dy = lshr i32 %i.dx, %.03854.us.i
  %i.dz = and i32 %i.dy, 255
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4            ; 2 uses
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 4
  %i.ee = zext i32 %i.ec to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.ee
  %i.eg = load i32, ptr %i.dv, align 4
  store i32 %i.eg, ptr %i.ef, align 4
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %i.eh = add nuw nsw i32 %.03854.us.i, 8
  %exitcond74.not.i = icmp eq i64 %indvars.iv.next71.i, %spec.select.i
  br i1 %exitcond74.not.i, label %tdefl_radix_sort_syms.exit, label %.critedge.preheader.split55.us.i

tdefl_radix_sort_syms.exit.thread:                ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %tdefl_huffman_enforce_max_code_size.exit

bb.j:                                             ; preds = %bb.j, %.critedge.preheader.split55.i.preheader
  %indvars.iv75.i = phi i64 [ 0, %.critedge.preheader.split55.i.preheader ], [ %indvars.iv.next76.i.3, %bb.j ] ; 6 uses
  %.03748.i = phi i32 [ 0, %.critedge.preheader.split55.i.preheader ], [ %i.ex, %bb.j ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv75.i
  store i32 %.03748.i, ptr %i.ei, align 16
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv75.i
  %i.ek = load i32, ptr %i.ej, align 16
  %i.el = add i32 %i.ek, %.03748.i                ; 2 uses
  %indvars.iv.next76.i = or disjoint i64 %indvars.iv75.i, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i
  store i32 %i.el, ptr %i.em, align 4
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = add i32 %i.eo, %i.el                    ; 2 uses
  %indvars.iv.next76.i.1 = or disjoint i64 %indvars.iv75.i, 2 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i.1
  store i32 %i.ep, ptr %i.eq, align 8
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i.1
  %i.es = load i32, ptr %i.er, align 8
  %i.et = add i32 %i.es, %i.ep                    ; 2 uses
  %indvars.iv.next76.i.2 = or disjoint i64 %indvars.iv75.i, 3 ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i.2
  store i32 %i.et, ptr %i.eu, align 4
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i.2
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = add i32 %i.ew, %i.et
  %indvars.iv.next76.i.3 = add nuw nsw i64 %indvars.iv75.i, 4 ; 2 uses
  %exitcond78.not.i.3 = icmp eq i64 %indvars.iv.next76.i.3, 256
  br i1 %exitcond78.not.i.3, label %tdefl_radix_sort_syms.exit.thread, label %bb.j

tdefl_radix_sort_syms.exit:                       ; preds = %._crit_edge.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  switch i32 %.173.lcssa, label %bb.k [
    i32 0, label %tdefl_huffman_enforce_max_code_size.exit
    i32 1, label %tdefl_calculate_minimum_redundancy.exit.thread166
  ]

tdefl_calculate_minimum_redundancy.exit.thread166: ; preds = %tdefl_radix_sort_syms.exit
  store i16 1, ptr %.04052.us.i, align 2
  br label %.lr.ph.preheader

bb.k:                                             ; preds = %tdefl_radix_sort_syms.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %.04052.us.i, i64 4
  %i.ez = load i16, ptr %i.ey, align 2
  %i.fa = load i16, ptr %.04052.us.i, align 2
  %i.fb = add i16 %i.fa, %i.ez
  store i16 %i.fb, ptr %.04052.us.i, align 2
  %i.fc = add i32 %.173.lcssa, -1                 ; 2 uses
  %i.fd = icmp sgt i32 %.173.lcssa, 2
  br i1 %i.fd, label %.lr.ph.preheader.i82, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.k
  %i.fe = add nsw i32 %.173.lcssa, -2             ; 2 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %i.ff
  store i16 0, ptr %i.fg, align 2
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
  %i.fj = load i16, ptr %i.fi, align 2            ; 2 uses
  br i1 %.not.i86, label %bb.l, label %.lr.ph._crit_edge.i

bb.l:                                             ; preds = %.lr.ph.i84
  %i.fk = sext i32 %.07992.i to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2            ; 2 uses
  %i.fn = icmp ult i16 %i.fj, %i.fm
  br i1 %i.fn, label %.lr.ph._crit_edge.i, label %bb.m

.lr.ph._crit_edge.i:                              ; preds = %bb.l, %.lr.ph.i84
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv.i85
  store i16 %i.fj, ptr %i.fo, align 2
  %i.fp = trunc i64 %indvars.iv.i85 to i16
  %i.fq = add nsw i32 %.08291.i, 1                ; 2 uses
  store i16 %i.fp, ptr %i.fi, align 2
  %.pre = sext i32 %i.fq to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fr = add nsw i32 %.07992.i, 1
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv.i85
  store i16 %i.fm, ptr %i.fs, align 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph._crit_edge.i
  %.pre-phi = phi i64 [ %i.fh, %bb.m ], [ %.pre, %.lr.ph._crit_edge.i ] ; 4 uses
  %.183.i = phi i32 [ %.08291.i, %bb.m ], [ %i.fq, %.lr.ph._crit_edge.i ] ; 2 uses
  %.180.i = phi i32 [ %i.fr, %bb.m ], [ %.07992.i, %.lr.ph._crit_edge.i ] ; 5 uses
  %.not88.i = icmp slt i32 %.180.i, %.173.lcssa
  br i1 %.not88.i, label %bb.o, label %._crit_edge127.i

._crit_edge127.i:                                 ; preds = %bb.n
  %.phi.trans.insert129.i = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %.pre-phi
  %.pre130.i = load i16, ptr %.phi.trans.insert129.i, align 2
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ft = icmp sgt i64 %indvars.iv.i85, %.pre-phi
  br i1 %i.ft, label %bb.p, label %._crit_edge123.i

._crit_edge123.i:                                 ; preds = %bb.o
  %.phi.trans.insert124.i = sext i32 %.180.i to i64
  %.phi.trans.insert125.i = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %.phi.trans.insert124.i
  %.pre126.i = load i16, ptr %.phi.trans.insert125.i, align 2
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.fu = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %.pre-phi
  %i.fv = load i16, ptr %i.fu, align 2            ; 2 uses
  %i.fw = sext i32 %.180.i to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2            ; 2 uses
  %i.fz = icmp ult i16 %i.fv, %i.fy
  br i1 %i.fz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %._crit_edge127.i
  %i.ga = phi i16 [ %.pre130.i, %._crit_edge127.i ], [ %i.fv, %bb.p ]
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.gc = load i16, ptr %i.gb, align 2
  %i.gd = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %.pre-phi
  %i.ge = add i16 %i.gc, %i.ga
  store i16 %i.ge, ptr %i.gb, align 2
  %i.gf = trunc i64 %indvars.iv.i85 to i16
  %i.gg = add nsw i32 %.183.i, 1
  store i16 %i.gf, ptr %i.gd, align 2
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %._crit_edge123.i
  %i.gh = phi i16 [ %.pre126.i, %._crit_edge123.i ], [ %i.fy, %bb.p ]
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.gj = load i16, ptr %i.gi, align 2
  %i.gk = add nsw i32 %.180.i, 1
  %i.gl = add i16 %i.gj, %i.gh
  store i16 %i.gl, ptr %i.gi, align 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.284.i = phi i32 [ %i.gg, %bb.q ], [ %.183.i, %bb.r ]
  %.281.i = phi i32 [ %.180.i, %bb.q ], [ %i.gk, %bb.r ]
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %exitcond.not.i88 = icmp eq i64 %indvars.iv.next.i87, %wide.trip.count.i83
  br i1 %exitcond.not.i88, label %._crit_edge.i, label %.lr.ph.i84

._crit_edge.i:                                    ; preds = %bb.s
  %i.gm = add nsw i32 %.173.lcssa, -2             ; 3 uses
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.gn
  store i16 0, ptr %i.go, align 2
  %i.gp = add nsw i32 %.173.lcssa, -3             ; 2 uses
  %i.gq = zext i32 %i.gp to i64                   ; 3 uses
  %i.gr = add nuw nsw i64 %i.gq, 1
  %xtraiter209 = and i64 %i.gr, 3                 ; 2 uses
  %lcmp.mod210.not = icmp eq i64 %xtraiter209, 0
  br i1 %lcmp.mod210.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol

.lr.ph96.i.prol:                                  ; preds = %._crit_edge.i, %.lr.ph96.i.prol
  %indvars.iv115.i.prol = phi i64 [ %indvars.iv.next116.i.prol, %.lr.ph96.i.prol ], [ %i.gq, %._crit_edge.i ] ; 2 uses
end_hunk_1
