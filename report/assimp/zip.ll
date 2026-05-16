inline.NumInlined: 193
inline.NumDeleted: 34
begin_hunk_0_@zip_entries_deletebyindex:bb.a
  %i.an = load ptr, ptr %i.j, align 8             ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not10.i.i.i.i, label %mz_zip_reader_file_stat.exit.i.i, label %bb.j

.split.us.i.i:                                    ; preds = %.lr.ph83.split.us.i.i, %.lr.ph83.split.i.i
  %.us-phi.i.i = phi i32 [ %i.aj, %.lr.ph83.split.i.i ], [ %i.l, %.lr.ph83.split.us.i.i ]
  %i.ao = sext i32 %.us-phi.i.i to i64
  br label %zip_entry_markbyindex.exit.thread13.i

bb.j:                                             ; preds = %.preheader74.i.i
  %i.ap = load i32, ptr %i.e, align 8
  %.not11.i.i.i.i = icmp ugt i32 %i.ap, %i.am
  br i1 %.not11.i.i.i.i, label %bb.k, label %mz_zip_reader_file_stat.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.an, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.05581.i.i
  %i.au = load i32, ptr %i.at, align 4
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.av
  br label %mz_zip_reader_file_stat.exit.i.i

mz_zip_reader_file_stat.exit.i.i:                 ; preds = %bb.k, %bb.j, %.preheader74.i.i
  %.0.i.i.i.i = phi ptr [ %i.aw, %bb.k ], [ null, %bb.j ], [ null, %.preheader74.i.i ]
  %i.ax = call fastcc range(i32 0, 2) i32 @mz_zip_file_stat_internal(ptr noundef nonnull %0, i32 noundef %i.am, ptr noundef %.0.i.i.i.i, ptr noundef nonnull %3, ptr noundef null)
  %.not71.not.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not71.not.i.i, label %zip_entry_markbyindex.exit.thread13.i, label %bb.l

bb.l:                                             ; preds = %mz_zip_reader_file_stat.exit.i.i
  %i.ay = call i32 @zip_entry_close(ptr noundef nonnull %0) ; 0 uses
  %i.az = load i64, ptr %i.k, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %i.az, ptr %i.ba, align 8
  store i64 -1, ptr %i.ak, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 0, ptr %i.bb, align 8
  %i.bc = add nuw nsw i64 %.05581.i.i, 1          ; 2 uses
  %exitcond96.not.i.i = icmp eq i64 %i.bc, %i.g
  br i1 %exitcond96.not.i.i, label %.preheader.i.i, label %.lr.ph83.split.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %.preheader.i.i.new
  %.15685.i.i = phi i64 [ 0, %.preheader.i.i.new ], [ %i.bp, %bb.o ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i.i.new ], [ %niter.next.1, %bb.o ]
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.15685.i.i ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = icmp ugt i64 %i.bf, %.052.lcssa.i.i
  br i1 %i.bg, label %bb.m, label %.lr.ph.i.i.1

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8
  %.not67.i.i = icmp eq i32 %i.bi, 1
  %spec.store.select = select i1 %.not67.i.i, i32 1, i32 2
  store i32 %spec.store.select, ptr %i.bh, align 8
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.m, %.lr.ph.i.i
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.15685.i.i ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = icmp ugt i64 %i.bl, %.052.lcssa.i.i
  br i1 %i.bm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i.1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8
  %.not67.i.i.1 = icmp eq i32 %i.bo, 1
  %spec.store.select.1 = select i1 %.not67.i.i.1, i32 1, i32 2
  store i32 %spec.store.select.1, ptr %i.bn, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i.1
  %i.bp = add nuw nsw i64 %.15685.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %zip_entry_setbyindex.exit.loopexit.unr-lcssa, label %.lr.ph.i.i

zip_entry_markbyindex.exit.thread13.i:            ; preds = %mz_zip_reader_file_stat.exit.us.i.i, %mz_zip_reader_file_stat.exit.i.i, %.split.us.i.i
  %.259.i.ph.i = phi i64 [ %i.ao, %.split.us.i.i ], [ -3, %mz_zip_reader_file_stat.exit.i.i ], [ -3, %mz_zip_reader_file_stat.exit.us.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.sink.split

zip_entry_setbyindex.exit.loopexit.unr-lcssa:     ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %zip_entry_setbyindex.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %zip_entry_setbyindex.exit.loopexit.unr-lcssa, %.preheader.i.i
  %.15685.i.i.epil.init = phi i64 [ 0, %.preheader.i.i ], [ %i.bp, %zip_entry_setbyindex.exit.loopexit.unr-lcssa ]
  %lcmp.mod91 = trunc i32 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod91)
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.15685.i.i.epil.init ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = icmp ugt i64 %i.bs, %.052.lcssa.i.i
  br i1 %i.bt, label %bb.p, label %zip_entry_setbyindex.exit

bb.p:                                             ; preds = %.lr.ph.i.i.epil.preheader
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8
  %.not67.i.i.epil = icmp eq i32 %i.bv, 1
  %spec.store.select.epil = select i1 %.not67.i.i.epil, i32 1, i32 2
  store i32 %spec.store.select.epil, ptr %i.bu, align 8
  br label %zip_entry_setbyindex.exit

zip_entry_setbyindex.exit:                        ; preds = %zip_entry_setbyindex.exit.loopexit.unr-lcssa, %bb.p, %.lr.ph.i.i.epil.preheader, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.bw = call fastcc i32 @zip_entry_finalize(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i64 noundef range(i64 -1, 4294967296) %i.g) ; 2 uses
  %spec.select.i = sext i32 %i.bw to i64
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %zip_entry_setbyindex.exit
  %i.by = call fastcc i64 @zip_entries_delete_mark(ptr noundef %0, ptr noundef %i.h, i32 noundef %i.f)
  br label %.sink.split

.sink.split:                                      ; preds = %zip_entry_setbyindex.exit, %zip_entry_markbyindex.exit.thread13.i, %bb.d, %bb.q
  %.0.ph = phi i64 [ %i.by, %bb.q ], [ %spec.select.i, %zip_entry_setbyindex.exit ], [ -1, %bb.d ], [ %.259.i.ph.i, %zip_entry_markbyindex.exit.thread13.i ]
  call void @free(ptr noundef nonnull %i.h) #37
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %zip_entries_total.exit, %bb.c, %bb.a, %bb.b
  %.0 = phi i64 [ 0, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ], [ -21, %zip_entries_total.exit ], [ %.0.ph, %.sink.split ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -25, 1) i32 @zip_stream_extract(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(address_is_null) %2, ptr noundef readonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #9 {
bb.a:
  %5 = alloca %struct.mz_zip_archive, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
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
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -25, 1) i32 @zip_archive_extract(ptr noundef nonnull captures(address_is_null) %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef readonly captures(address_is_null) %2, ptr noundef %3) unnamed_addr #9 {
bb.a:
  %i.a = alloca [513 x i8], align 16              ; 7 uses
  %i.b = alloca [513 x i8], align 16              ; 12 uses
  %i.c = alloca [513 x i8], align 16              ; 6 uses
  %4 = alloca %struct.mz_zip_archive_file_stat, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(513) %i.b, i8 0, i64 513, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(513) %i.c, i8 0, i64 513, i1 false)
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #40 ; 4 uses
  %i.e = add i64 %i.d, 1                          ; 2 uses
  %i.f = icmp ugt i64 %i.e, 512
  br i1 %i.f, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1112) %4, i8 0, i64 1112, i1 false)
  %i.g = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %1) #37 ; 0 uses
  %i.h = getelementptr i8, ptr %i.b, i64 %i.d     ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1
  switch i8 %i.j, label %bb.c [
    i8 47, label %bb.d
    i8 92, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  store i8 47, ptr %i.h, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.034 = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.b ], [ %i.e, %bb.c ] ; 2 uses
  %i.k = sub nsw i64 512, %.034
  %spec.select = call i64 @llvm.umin.i64(i64 %i.k, i64 512)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8              ; 3 uses
  %.not95 = icmp eq i32 %i.m, 0
  br i1 %.not95, label %zip_name_normalize.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %.034
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 17
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.not53 = icmp eq ptr %2, null
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph
  %.03675 = phi i32 [ 0, %.lr.ph ], [ %.03675.be, %.backedge.backedge ] ; 9 uses
  %i.v = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not10.i.i = icmp eq ptr %i.v, null
  br i1 %.not10.i.i, label %mz_zip_reader_file_stat.exit, label %bb.e

bb.e:                                             ; preds = %.backedge
  %i.w = load i32, ptr %i.l, align 8
  %.not11.i.i = icmp ult i32 %.03675, %i.w
  br i1 %.not11.i.i, label %bb.f, label %mz_zip_reader_file_stat.exit

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = zext i32 %.03675 to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ad
  br label %mz_zip_reader_file_stat.exit

mz_zip_reader_file_stat.exit:                     ; preds = %.backedge, %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.ae, %bb.f ], [ null, %bb.e ], [ null, %.backedge ]
  %i.af = call fastcc range(i32 0, 2) i32 @mz_zip_file_stat_internal(ptr noundef nonnull %0, i32 noundef %.03675, ptr noundef %.0.i.i, ptr noundef nonnull %4, ptr noundef null)
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %zip_name_normalize.exit, label %bb.g

bb.g:                                             ; preds = %mz_zip_reader_file_stat.exit
  %i.ag = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #40 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %zip_name_normalize.exit, label %.preheader66.i

.preheader66.i:                                   ; preds = %bb.g, %.critedge.i
  %.045.i = phi ptr [ %i.aj, %.critedge.i ], [ %i.o, %bb.g ] ; 3 uses
  %i.ai = load i8, ptr %.045.i, align 1
  switch i8 %i.ai, label %.preheader.i [
    i8 47, label %.critedge.i
    i8 92, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %.preheader66.i, %.preheader66.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.045.i, i64 1
  br label %.preheader66.i

.preheader.i:                                     ; preds = %.preheader66.i, %bb.j
  %.069.i = phi i64 [ %.1.i, %bb.j ], [ 0, %.preheader66.i ] ; 4 uses
  %.04168.i = phi i64 [ %.2.i, %bb.j ], [ 0, %.preheader66.i ] ; 7 uses
  %.04367.i = phi i64 [ %i.az, %bb.j ], [ 0, %.preheader66.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.045.i, i64 %.04367.i
  %i.al = load i8, ptr %i.ak, align 1             ; 3 uses
  switch i8 %i.al, label %bb.i [
    i8 47, label %bb.h
    i8 92, label %bb.h
  ]

bb.h:                                             ; preds = %.preheader.i, %.preheader.i
  %.not50.i = icmp eq i64 %.069.i, 0
  br i1 %.not50.i, label %bb.j, label %sub_0.i

sub_0.i:                                          ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 %.04168.i ; 3 uses
  %i.an = load i8, ptr %i.am, align 1
  %.not70.i = icmp eq i8 %i.an, 46
  br i1 %.not70.i, label %.tail.i, label %.tail53.thread.i

.tail.i:                                          ; preds = %sub_0.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ap = load i8, ptr %i.ao, align 1
  switch i8 %i.ap, label %.tail53.thread.i [
    i8 0, label %bb.j
    i8 46, label %.tail53.i
  ]

.tail53.i:                                        ; preds = %.tail.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.j, label %.tail53.thread.i

.tail53.thread.i:                                 ; preds = %.tail.i, %.tail53.i, %sub_0.i
  %i.at = add i64 %.04168.i, %.069.i              ; 2 uses
  %i.au = add i64 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.at
  store i8 %i.al, ptr %i.av, align 1
  br label %bb.j

bb.i:                                             ; preds = %.preheader.i
  %i.aw = getelementptr i8, ptr %i.o, i64 %.04168.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 %.069.i
  store i8 %i.al, ptr %i.ax, align 1
  %i.ay = add i64 %.069.i, 1
  br label %bb.j

bb.j:                                             ; preds = %.tail.i, %bb.i, %.tail53.thread.i, %.tail53.i, %bb.h
  %.2.i = phi i64 [ %.04168.i, %bb.i ], [ %i.au, %.tail53.thread.i ], [ %.04168.i, %.tail53.i ], [ %.04168.i, %.tail.i ], [ %.04168.i, %bb.h ] ; 3 uses
  %.1.i = phi i64 [ %i.ay, %bb.i ], [ 0, %.tail53.thread.i ], [ 0, %.tail53.i ], [ 0, %.tail.i ], [ 0, %bb.h ] ; 2 uses
  %i.az = add nuw i64 %.04367.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.az, %i.ag
  br i1 %exitcond.not.i, label %bb.k, label %.preheader.i

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp eq i64 %.1.i, 0
  br i1 %i.ba, label %bb.l, label %sub_058.i

sub_058.i:                                        ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 %.2.i ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1
  %.not73.i = icmp eq i8 %i.bc, 46
  br i1 %.not73.i, label %.tail57.i, label %bb.m

.tail57.i:                                        ; preds = %sub_058.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.be = load i8, ptr %i.bd, align 1
  switch i8 %i.be, label %bb.m [
    i8 0, label %bb.l
    i8 46, label %.tail61.i
  ]

.tail61.i:                                        ; preds = %.tail57.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.tail57.i, %.tail61.i, %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 %.2.i
  store i8 0, ptr %i.bi, align 1
  br label %bb.m

bb.m:                                             ; preds = %.tail57.i, %bb.l, %.tail61.i, %sub_058.i
  %i.bj = call ptr @strncpy(ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, i64 noundef %spec.select) #37 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(513) %i.a, i8 0, i64 513, i1 false)
  %i.bk = load i8, ptr %i.b, align 16             ; 2 uses
  %.not29.i = icmp eq i8 %i.bk, 0
  br i1 %.not29.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  store i8 %i.bk, ptr %i.a, align 16
  %i.bl = load i8, ptr %i.q, align 1              ; 2 uses
  %.not.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %bb.q
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ 1, %.lr.ph.preheader.i ] ; 3 uses
  %i.bm = phi i8 [ %i.bu, %bb.q ], [ %i.bl, %.lr.ph.preheader.i ]
  %.02225.i = phi ptr [ %i.bt, %bb.q ], [ %i.q, %.lr.ph.preheader.i ] ; 3 uses
  switch i8 %i.bm, label %bb.q [
    i8 92, label %bb.n
    i8 47, label %bb.o
  ]

bb.n:                                             ; preds = %.lr.ph.i
  store i8 47, ptr %.02225.i, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %i.bn = call i32 @mkdir(ptr noundef nonnull %i.a, i32 noundef 493) #37
  %i.bo = icmp eq i32 %i.bn, -1
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bp = tail call ptr @__errno_location() #42
  %i.bq = load i32, ptr %i.bp, align 4
  %.not24.i = icmp eq i32 %i.bq, 17
  br i1 %.not24.i, label %bb.q, label %zip_mkpath.exit

bb.q:                                             ; preds = %bb.p, %bb.o, %.lr.ph.i
  %i.br = load i8, ptr %.02225.i, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.br, ptr %i.bs, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.02225.i, i64 1 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1             ; 2 uses
  %i.bv = icmp ne i8 %i.bu, 0
  %i.bw = icmp samesign ult i64 %indvars.iv.i, 511
  %i.bx = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %i.bx, label %.lr.ph.i, label %.loopexit, !llvm.loop !28

zip_mkpath.exit:                                  ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %zip_name_normalize.exit

.loopexit:                                        ; preds = %bb.q, %bb.m, %.lr.ph.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %5 = load i8, ptr %i.r, align 1
  switch i8 %5, label %bb.v [
    i8 3, label %bb.r
    i8 19, label %bb.r
  ]

bb.r:                                             ; preds = %.loopexit, %.loopexit
  %i.by = load i32, ptr %i.s, align 4
  %i.bz = and i32 %i.by, 536870912
  %.not47 = icmp eq i32 %i.bz, 0
  br i1 %.not47, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = load i64, ptr %i.t, align 8             ; 2 uses
  %i.cb = icmp ugt i64 %i.ca, 512
  br i1 %i.cb, label %zip_name_normalize.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = call fastcc range(i32 0, 2) i32 @mz_zip_reader_extract_to_mem_no_alloc1(ptr noundef nonnull %0, i32 noundef %.03675, ptr noundef nonnull %i.c, i64 noundef 512, i32 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null)
  %.not51 = icmp eq i32 %i.cc, 0
  br i1 %.not51, label %zip_name_normalize.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ca
  store i8 0, ptr %i.cd, align 1
  %i.ce = call i32 @symlink(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #37
  %.not52 = icmp eq i32 %i.ce, 0
  br i1 %.not52, label %bb.ab, label %zip_name_normalize.exit

bb.v:                                             ; preds = %.loopexit, %bb.r
  %i.cf = load ptr, ptr %i.n, align 8             ; 3 uses
  %.not10.i.i56 = icmp eq ptr %i.cf, null
  br i1 %.not10.i.i56, label %mz_zip_reader_is_file_a_directory.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = load i32, ptr %i.l, align 8
  %.not11.i.i57 = icmp ult i32 %.03675, %i.cg
  br i1 %.not11.i.i57, label %mz_zip_get_cdh.exit.i, label %mz_zip_reader_is_file_a_directory.exit.thread

mz_zip_get_cdh.exit.i:                            ; preds = %bb.w
  %i.ch = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = zext i32 %.03675 to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cn ; 3 uses
  %.not.i59 = icmp eq ptr %i.ch, null
  br i1 %.not.i59, label %mz_zip_reader_is_file_a_directory.exit.thread, label %bb.x

mz_zip_reader_is_file_a_directory.exit.thread:    ; preds = %bb.v, %bb.w, %mz_zip_get_cdh.exit.i
  store i32 24, ptr %i.u, align 4
  br label %bb.z

bb.x:                                             ; preds = %mz_zip_get_cdh.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 28
  %i.cq = load i16, ptr %i.cp, align 1            ; 2 uses
  %.not18.i = icmp eq i16 %i.cq, 0
  br i1 %.not18.i, label %mz_zip_reader_is_file_a_directory.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = zext i16 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 45
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = icmp eq i8 %i.cu, 47
  br i1 %i.cv, label %mz_zip_reader_is_file_a_directory.exit.thread69, label %mz_zip_reader_is_file_a_directory.exit

mz_zip_reader_is_file_a_directory.exit:           ; preds = %bb.x, %bb.y
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 38
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = and i8 %i.cx, 16
  %.not48 = icmp eq i8 %i.cy, 0
  br i1 %.not48, label %bb.z, label %mz_zip_reader_is_file_a_directory.exit.thread69

bb.z:                                             ; preds = %mz_zip_reader_is_file_a_directory.exit.thread, %mz_zip_reader_is_file_a_directory.exit
  %i.cz = call i32 @mz_zip_reader_extract_to_file(ptr noundef nonnull %0, i32 noundef %.03675, ptr noundef nonnull %i.b, i32 noundef 0)
  %.not49 = icmp eq i32 %i.cz, 0
  br i1 %.not49, label %zip_name_normalize.exit, label %mz_zip_reader_is_file_a_directory.exit.thread69

mz_zip_reader_is_file_a_directory.exit.thread69:  ; preds = %bb.y, %bb.z, %mz_zip_reader_is_file_a_directory.exit
  %i.da = load i32, ptr %i.s, align 4
  %i.db = lshr i32 %i.da, 16                      ; 2 uses
  %.not50 = icmp eq i32 %i.db, 0
  br i1 %.not50, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %mz_zip_reader_is_file_a_directory.exit.thread69
  %i.dc = call i32 @chmod(ptr noundef nonnull %i.b, i32 noundef %i.db) #37
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %zip_name_normalize.exit, label %bb.ab

bb.ab:                                            ; preds = %mz_zip_reader_is_file_a_directory.exit.thread69, %bb.aa, %bb.u
  br i1 %.not53, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.de = call i32 %2(ptr noundef nonnull %i.b, ptr noundef %3) #37
  %i.df = icmp sgt i32 %i.de, -1
  %i.dg = add i32 %.03675, 1                      ; 2 uses
  %i.dh = icmp ult i32 %i.dg, %i.m
  %or.cond = select i1 %i.df, i1 %i.dh, i1 false
  br i1 %or.cond, label %.backedge.backedge, label %zip_name_normalize.exit

bb.ad:                                            ; preds = %bb.ab
  %.old = add i32 %.03675, 1                      ; 2 uses
  %.old94 = icmp ult i32 %.old, %i.m
  br i1 %.old94, label %.backedge.backedge, label %zip_name_normalize.exit

.backedge.backedge:                               ; preds = %bb.ad, %bb.ac
  %.03675.be = phi i32 [ %.old, %bb.ad ], [ %i.dg, %bb.ac ]
  br label %.backedge

zip_name_normalize.exit:                          ; preds = %bb.ac, %bb.ad, %mz_zip_reader_file_stat.exit, %bb.t, %bb.s, %bb.u, %bb.z, %bb.aa, %bb.g, %bb.d, %zip_mkpath.exit
  %.1 = phi i32 [ -23, %zip_mkpath.exit ], [ 0, %bb.d ], [ -20, %bb.aa ], [ -3, %mz_zip_reader_file_stat.exit ], [ 0, %bb.ac ], [ 0, %bb.ad ], [ -18, %bb.s ], [ -24, %bb.u ], [ -18, %bb.t ], [ -19, %bb.z ], [ -2, %bb.g ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8            ; 9 uses
  %.not31.i = icmp eq ptr %i.dj, null
  br i1 %.not31.i, label %mz_zip_reader_end_internal.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %zip_name_normalize.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8
  %.not32.i = icmp eq ptr %i.dl, null
  br i1 %.not32.i, label %mz_zip_reader_end_internal.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.dn = load ptr, ptr %i.dm, align 8            ; 2 uses
  %.not33.i = icmp eq ptr %i.dn, null
  br i1 %.not33.i, label %mz_zip_reader_end_internal.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.dp = load i32, ptr %i.do, align 4
  %.not34.i = icmp eq i32 %i.dp, 1
  br i1 %.not34.i, label %bb.ah, label %mz_zip_reader_end_internal.exit.thread

mz_zip_reader_end_internal.exit.thread:           ; preds = %zip_name_normalize.exit, %bb.ae, %bb.af, %bb.ag
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.dq, align 4
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  store ptr null, ptr %i.di, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = load ptr, ptr %i.dj, align 8
  call void %i.dn(ptr noundef %i.ds, ptr noundef %i.dt) #37, !inline_history !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dj, i8 0, i64 32, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 32 ; 2 uses
  %i.dv = load ptr, ptr %i.dm, align 8
  %i.dw = load ptr, ptr %i.dr, align 8
  %i.dx = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef %i.dw, ptr noundef %i.dx) #37, !inline_history !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.du, i8 0, i64 32, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 64 ; 2 uses
  %i.dz = load ptr, ptr %i.dm, align 8
  %i.ea = load ptr, ptr %i.dr, align 8
  %i.eb = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef %i.ea, ptr noundef %i.eb) #37, !inline_history !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dy, i8 0, i64 32, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dj, i64 112 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %.not35.i = icmp eq ptr %i.ed, null
  br i1 %.not35.i, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ef = load i32, ptr %i.ee, align 8
  %i.eg = icmp eq i32 %i.ef, 4
  br i1 %i.eg, label %bb.aj, label %.critedge74

bb.aj:                                            ; preds = %bb.ai
  %i.eh = call i32 @fclose(ptr noundef nonnull %i.ed)
  %i.ei = icmp eq i32 %i.eh, -1
  br i1 %i.ei, label %mz_zip_reader_end_internal.exit, label %.critedge74

mz_zip_reader_end_internal.exit:                  ; preds = %bb.aj
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 21, ptr %i.ej, align 4
  store ptr null, ptr %i.ec, align 8
  %i.ek = load ptr, ptr %i.dm, align 8
  %i.el = load ptr, ptr %i.dr, align 8
  call void %i.ek(ptr noundef %i.el, ptr noundef nonnull %i.dj) #37, !inline_history !21
  store i32 0, ptr %i.do, align 4
  br label %bb.ak

.critedge:                                        ; preds = %bb.ah
  %i.em = load ptr, ptr %i.dm, align 8
  %i.en = load ptr, ptr %i.dr, align 8
  call void %i.em(ptr noundef %i.en, ptr noundef nonnull %i.dj) #37, !inline_history !21
  store i32 0, ptr %i.do, align 4
  br label %bb.ak

.critedge74:                                      ; preds = %bb.aj, %bb.ai
  store ptr null, ptr %i.ec, align 8
  %i.eo = load ptr, ptr %i.dm, align 8
  %i.ep = load ptr, ptr %i.dr, align 8
  call void %i.eo(ptr noundef %i.ep, ptr noundef nonnull %i.dj) #37, !inline_history !21
  store i32 0, ptr %i.do, align 4
  br label %bb.ak

end_hunk_0
