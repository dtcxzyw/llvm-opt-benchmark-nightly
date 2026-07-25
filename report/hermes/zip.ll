inline.NumInlined: 158
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 52
begin_hunk_0_@zip_entries_delete:bb.a
  %.194130.i = phi i64 [ %.093136.i, %.lr.ph132.i ], [ %i.hr, %bb.w ]
  %i.hn = load ptr, ptr %i.fv, align 8, !tbaa !219 ; 2 uses
  %.not103.not.i = icmp eq ptr %i.hn, null
  br i1 %.not103.not.i, label %.thread.sink.split.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ho = getelementptr inbounds [24 x i8], ptr %i.h, i64 %indvars.iv161.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !316
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
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !312
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
  switch i8 %i.aa, label %.preheader.i [
    i8 47, label %.critedge.i
    i8 92, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %.preheader66.i, %.preheader66.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.045.i, i64 1
  br label %.preheader66.i, !llvm.loop !333

.preheader.i:                                     ; preds = %.preheader66.i, %bb.g
  %.069.i = phi i64 [ %.1.i, %bb.g ], [ 0, %.preheader66.i ] ; 4 uses
  %.04168.i = phi i64 [ %.2.i, %bb.g ], [ 0, %.preheader66.i ] ; 7 uses
  %.04367.i = phi i64 [ %i.ar, %bb.g ], [ 0, %.preheader66.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.045.i, i64 %.04367.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !7   ; 3 uses
  switch i8 %i.ad, label %bb.f [
    i8 47, label %bb.e
    i8 92, label %bb.e
  ]

bb.e:                                             ; preds = %.preheader.i, %.preheader.i
  %.not50.i = icmp eq i64 %.069.i, 0
  br i1 %.not50.i, label %bb.g, label %sub_0.i

sub_0.i:                                          ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 %.04168.i ; 3 uses
  %i.af = load i8, ptr %i.ae, align 1
  %.not70.i = icmp eq i8 %i.af, 46
  br i1 %.not70.i, label %.tail.i, label %.tail53.thread.i

.tail.i:                                          ; preds = %sub_0.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ah = load i8, ptr %i.ag, align 1
  switch i8 %i.ah, label %.tail53.thread.i [
    i8 0, label %bb.g
    i8 46, label %.tail53.i
  ]

.tail53.i:                                        ; preds = %.tail.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %.tail53.thread.i

.tail53.thread.i:                                 ; preds = %.tail.i, %.tail53.i, %sub_0.i
  %i.al = add i64 %.04168.i, %.069.i              ; 2 uses
  %i.am = add i64 %i.al, 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.al
  store i8 %i.ad, ptr %i.an, align 1, !tbaa !7
  br label %bb.g

bb.f:                                             ; preds = %.preheader.i
  %i.ao = getelementptr i8, ptr %i.m, i64 %.04168.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 %.069.i
  store i8 %i.ad, ptr %i.ap, align 1, !tbaa !7
  %i.aq = add i64 %.069.i, 1
  br label %bb.g

bb.g:                                             ; preds = %.tail.i, %bb.f, %.tail53.thread.i, %.tail53.i, %bb.e
  %.2.i = phi i64 [ %.04168.i, %bb.f ], [ %i.am, %.tail53.thread.i ], [ %.04168.i, %.tail53.i ], [ %.04168.i, %.tail.i ], [ %.04168.i, %bb.e ] ; 3 uses
  %.1.i = phi i64 [ %i.aq, %bb.f ], [ 0, %.tail53.thread.i ], [ 0, %.tail53.i ], [ 0, %.tail.i ], [ 0, %bb.e ] ; 2 uses
  %i.ar = add nuw i64 %.04367.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ar, %i.y
  br i1 %exitcond.not.i, label %bb.h, label %.preheader.i, !llvm.loop !334

bb.h:                                             ; preds = %bb.g
  %i.as = icmp eq i64 %.1.i, 0
  br i1 %i.as, label %bb.i, label %sub_058.i

sub_058.i:                                        ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 %.2.i ; 3 uses
  %i.au = load i8, ptr %i.at, align 1
  %.not73.i = icmp eq i8 %i.au, 46
  br i1 %.not73.i, label %.tail57.i, label %bb.j

.tail57.i:                                        ; preds = %sub_058.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.aw = load i8, ptr %i.av, align 1
  switch i8 %i.aw, label %bb.j [
    i8 0, label %bb.i
    i8 46, label %.tail61.i
  ]

.tail61.i:                                        ; preds = %.tail57.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.tail57.i, %.tail61.i, %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 %.2.i
  store i8 0, ptr %i.ba, align 1, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %.tail57.i, %bb.i, %.tail61.i, %sub_058.i
  %i.bb = call ptr @strncpy(ptr noundef nonnull %i.n, ptr noundef nonnull %i.m, i64 noundef %i.o) #33 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32768) %i.a, i8 0, i64 32768, i1 false)
  %i.bc = load i8, ptr %i.b, align 16, !tbaa !7   ; 2 uses
  %.not29.i = icmp eq i8 %i.bc, 0
  br i1 %.not29.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  store i8 %i.bc, ptr %i.a, align 16, !tbaa !7
  %i.bd = load i8, ptr %i.p, align 1, !tbaa !7    ; 2 uses
  %.not.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %bb.n
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.n ], [ 1, %.lr.ph.preheader.i ] ; 3 uses
  %i.be = phi i8 [ %i.bm, %bb.n ], [ %i.bd, %.lr.ph.preheader.i ]
  %.02225.i = phi ptr [ %i.bl, %bb.n ], [ %i.p, %.lr.ph.preheader.i ] ; 3 uses
  switch i8 %i.be, label %bb.n [
    i8 92, label %bb.k
    i8 47, label %bb.l
  ]

bb.k:                                             ; preds = %.lr.ph.i
  store i8 47, ptr %.02225.i, align 1, !tbaa !7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %i.bf = call i32 @mkdir(ptr noundef nonnull %i.a, i32 noundef 493) #33
  %i.bg = icmp eq i32 %i.bf, -1
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bh = tail call ptr @__errno_location() #38
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %.not24.i = icmp eq i32 %i.bi, 17
  br i1 %.not24.i, label %bb.n, label %zip_mkpath.exit

bb.n:                                             ; preds = %bb.m, %bb.l, %.lr.ph.i
  %i.bj = load i8, ptr %.02225.i, align 1, !tbaa !7
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.02225.i, i64 1 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !7   ; 2 uses
  %i.bn = icmp ne i8 %i.bm, 0
  %i.bo = icmp samesign ult i64 %indvars.iv.i, 32766
  %i.bp = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %i.bp, label %.lr.ph.i, label %.loopexit, !llvm.loop !335

zip_mkpath.exit:                                  ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %zip_name_normalize.exit

.loopexit:                                        ; preds = %bb.n, %bb.j, %.lr.ph.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.bq = load i16, ptr %i.q, align 8, !tbaa !231
  %i.br = lshr i16 %i.bq, 8
  %trunc = trunc nuw i16 %i.br to i8
  switch i8 %trunc, label %bb.s [
    i8 3, label %bb.o
    i8 19, label %bb.o
  ]

bb.o:                                             ; preds = %.loopexit, %.loopexit
  %i.bs = load i32, ptr %i.r, align 4, !tbaa !247
  %i.bt = and i32 %i.bs, 536870912
  %.not40 = icmp eq i32 %i.bt, 0
  br i1 %.not40, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = load i64, ptr %i.s, align 8, !tbaa !260 ; 2 uses
  %i.bv = icmp ugt i64 %i.bu, 32767
  br i1 %i.bv, label %zip_name_normalize.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = call i32 @mz_zip_reader_extract_to_mem_no_alloc(ptr noundef nonnull %0, i32 noundef %.03068104, ptr noundef nonnull %i.c, i64 noundef 32767, i32 noundef 0, ptr noundef null, i64 noundef 0)
  %.not44 = icmp eq i32 %i.bw, 0
  br i1 %.not44, label %zip_name_normalize.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bu
  store i8 0, ptr %i.bx, align 1, !tbaa !7
  %i.by = call i32 @symlink(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #33
end_hunk_0
begin_hunk_1_@tdefl_optimize_huffman_table:bb.a
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
  %.03854.us.i = phi i32 [ 0, %.preheader45.i ], [ %i.fe, %._crit_edge.us.i ] ; 4 uses
  %.04052.us.i = phi ptr [ %6, %.preheader45.i ], [ %.04151.us.i, %._crit_edge.us.i ] ; 47 uses
  %.04151.us.i = phi ptr [ %5, %.preheader45.i ], [ %.04052.us.i, %._crit_edge.us.i ] ; 4 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv70.i, 10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.critedge.preheader.split55.us.i
  %indvars.iv61.i = phi i64 [ 0, %.critedge.preheader.split55.us.i ], [ %indvars.iv.next62.i.3, %bb.i ] ; 6 uses
  %.03748.us.i = phi i32 [ 0, %.critedge.preheader.split55.us.i ], [ %i.ds, %bb.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv61.i
  store i32 %.03748.us.i, ptr %i.dd, align 16, !tbaa !3
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv61.i
  %i.df = load i32, ptr %i.de, align 16, !tbaa !3
  %i.dg = add i32 %i.df, %.03748.us.i             ; 2 uses
  %indvars.iv.next62.i = or disjoint i64 %indvars.iv61.i, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !3
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = add i32 %i.dj, %i.dg                    ; 2 uses
  %indvars.iv.next62.i.1 = or disjoint i64 %indvars.iv61.i, 2 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i.1
  store i32 %i.dk, ptr %i.dl, align 8, !tbaa !3
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i.1
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !3
  %i.do = add i32 %i.dn, %i.dk                    ; 2 uses
  %indvars.iv.next62.i.2 = or disjoint i64 %indvars.iv61.i, 3 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i.2
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !3
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i.2
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.ds = add i32 %i.dr, %i.do
  %indvars.iv.next62.i.3 = add nuw nsw i64 %indvars.iv61.i, 4 ; 2 uses
  %exitcond64.not.i.3 = icmp eq i64 %indvars.iv.next62.i.3, 256
  br i1 %exitcond64.not.i.3, label %.preheader.us.i.preheader, label %bb.i, !llvm.loop !374

.preheader.us.i.preheader:                        ; preds = %bb.i
  br i1 %i.by, label %.preheader.us.i.epil.preheader, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %.preheader.us.i
  %indvars.iv65.i = phi i64 [ %indvars.iv.next66.i.1, %.preheader.us.i ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %niter208 = phi i64 [ %niter208.next.1, %.preheader.us.i ], [ 0, %.preheader.us.i.preheader ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.04151.us.i, i64 %indvars.iv65.i ; 2 uses
  %i.du = load i16, ptr %i.dt, align 8, !tbaa !369
  %i.dv = zext i16 %i.du to i32
  %i.dw = lshr i32 %i.dv, %.03854.us.i
  %i.dx = and i32 %i.dw, 255
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3  ; 2 uses
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !3
  %i.ec = zext i32 %i.ea to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.ec
  %i.ee = load i32, ptr %i.dt, align 8
  store i32 %i.ee, ptr %i.ed, align 4
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.04151.us.i, i64 %indvars.iv65.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 2 uses
  %i.eh = load i16, ptr %i.eg, align 4, !tbaa !369
  %i.ei = zext i16 %i.eh to i32
  %i.ej = lshr i32 %i.ei, %.03854.us.i
  %i.ek = and i32 %i.ej, 255
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3  ; 2 uses
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !3
  %i.ep = zext i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.ep
  %i.er = load i32, ptr %i.eg, align 4
  store i32 %i.er, ptr %i.eq, align 4
  %indvars.iv.next66.i.1 = add nuw nsw i64 %indvars.iv65.i, 2 ; 2 uses
  %niter208.next.1 = add i64 %niter208, 2         ; 2 uses
  %niter208.ncmp.1 = icmp eq i64 %niter208.next.1, %unroll_iter207
  br i1 %niter208.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i, !llvm.loop !375

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader.us.i
  br i1 %lcmp.mod205.not, label %._crit_edge.us.i, label %.preheader.us.i.epil.preheader

.preheader.us.i.epil.preheader:                   ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i.preheader
  %indvars.iv65.i.epil.init = phi i64 [ 0, %.preheader.us.i.preheader ], [ %indvars.iv.next66.i.1, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod206)
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.04151.us.i, i64 %indvars.iv65.i.epil.init ; 2 uses
  %i.et = load i16, ptr %i.es, align 4, !tbaa !369
  %i.eu = zext i16 %i.et to i32
  %i.ev = lshr i32 %i.eu, %.03854.us.i
  %i.ew = and i32 %i.ev, 255
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3  ; 2 uses
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !3
  %i.fb = zext i32 %i.ez to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.fb
  %i.fd = load i32, ptr %i.es, align 4
  store i32 %i.fd, ptr %i.fc, align 4
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %i.fe = add nuw nsw i32 %.03854.us.i, 8
  %exitcond74.not.i = icmp eq i64 %indvars.iv.next71.i, %spec.select.i
  br i1 %exitcond74.not.i, label %tdefl_radix_sort_syms.exit, label %.critedge.preheader.split55.us.i, !llvm.loop !376

tdefl_radix_sort_syms.exit.thread:                ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %tdefl_huffman_enforce_max_code_size.exit

bb.j:                                             ; preds = %bb.j, %.critedge.preheader.split55.i.preheader
  %indvars.iv75.i = phi i64 [ 0, %.critedge.preheader.split55.i.preheader ], [ %indvars.iv.next76.i.3, %bb.j ] ; 6 uses
  %.03748.i = phi i32 [ 0, %.critedge.preheader.split55.i.preheader ], [ %i.fu, %bb.j ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv75.i
  store i32 %.03748.i, ptr %i.ff, align 16, !tbaa !3
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv75.i
  %i.fh = load i32, ptr %i.fg, align 16, !tbaa !3
  %i.fi = add i32 %i.fh, %.03748.i                ; 2 uses
  %indvars.iv.next76.i = or disjoint i64 %indvars.iv75.i, 1 ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !3
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.fm = add i32 %i.fl, %i.fi                    ; 2 uses
  %indvars.iv.next76.i.1 = or disjoint i64 %indvars.iv75.i, 2 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i.1
  store i32 %i.fm, ptr %i.fn, align 8, !tbaa !3
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i.1
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !3
  %i.fq = add i32 %i.fp, %i.fm                    ; 2 uses
  %indvars.iv.next76.i.2 = or disjoint i64 %indvars.iv75.i, 3 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i.2
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !3
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i.2
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3
  %i.fu = add i32 %i.ft, %i.fq
  %indvars.iv.next76.i.3 = add nuw nsw i64 %indvars.iv75.i, 4 ; 2 uses
  %exitcond78.not.i.3 = icmp eq i64 %indvars.iv.next76.i.3, 256
  br i1 %exitcond78.not.i.3, label %tdefl_radix_sort_syms.exit.thread, label %bb.j, !llvm.loop !374

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
  %i.fv = getelementptr inbounds nuw i8, ptr %.04052.us.i, i64 4
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !369
  %i.fx = load i16, ptr %.04052.us.i, align 2, !tbaa !369
  %i.fy = add i16 %i.fx, %i.fw
  store i16 %i.fy, ptr %.04052.us.i, align 2, !tbaa !369
  %i.fz = add i32 %.173.lcssa, -1                 ; 2 uses
  %i.ga = icmp sgt i32 %.173.lcssa, 2
  br i1 %i.ga, label %.lr.ph.preheader.i82, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.k
  %i.gb = add nsw i32 %.173.lcssa, -2             ; 2 uses
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %i.gc
  store i16 0, ptr %i.gd, align 2, !tbaa !369
  br label %.preheader.i81.preheader

.lr.ph.preheader.i82:                             ; preds = %bb.k
  %wide.trip.count.i83 = zext nneg i32 %i.fz to i64
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %bb.s, %.lr.ph.preheader.i82
  %indvars.iv.i85 = phi i64 [ 1, %.lr.ph.preheader.i82 ], [ %indvars.iv.next.i87, %bb.s ] ; 8 uses
  %.07992.i = phi i32 [ 2, %.lr.ph.preheader.i82 ], [ %.281.i, %bb.s ] ; 4 uses
  %.08291.i = phi i32 [ 0, %.lr.ph.preheader.i82 ], [ %.284.i, %bb.s ] ; 3 uses
  %.not.i86 = icmp slt i32 %.07992.i, %.173.lcssa
  %i.ge = sext i32 %.08291.i to i64               ; 2 uses
  %i.gf = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %i.ge ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !369 ; 2 uses
  br i1 %.not.i86, label %bb.l, label %.lr.ph._crit_edge.i

bb.l:                                             ; preds = %.lr.ph.i84
  %i.gh = sext i32 %.07992.i to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %i.gh
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !369 ; 2 uses
  %i.gk = icmp ult i16 %i.gg, %i.gj
  br i1 %i.gk, label %.lr.ph._crit_edge.i, label %bb.m

.lr.ph._crit_edge.i:                              ; preds = %bb.l, %.lr.ph.i84
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv.i85
  store i16 %i.gg, ptr %i.gl, align 2, !tbaa !369
  %i.gm = trunc i64 %indvars.iv.i85 to i16
  %i.gn = add nsw i32 %.08291.i, 1                ; 2 uses
  store i16 %i.gm, ptr %i.gf, align 2, !tbaa !369
  %.pre = sext i32 %i.gn to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.go = add nsw i32 %.07992.i, 1
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv.i85
  store i16 %i.gj, ptr %i.gp, align 2, !tbaa !369
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph._crit_edge.i
  %.pre-phi = phi i64 [ %i.ge, %bb.m ], [ %.pre, %.lr.ph._crit_edge.i ] ; 4 uses
  %.183.i = phi i32 [ %.08291.i, %bb.m ], [ %i.gn, %.lr.ph._crit_edge.i ] ; 2 uses
  %.180.i = phi i32 [ %i.go, %bb.m ], [ %.07992.i, %.lr.ph._crit_edge.i ] ; 5 uses
  %.not88.i = icmp slt i32 %.180.i, %.173.lcssa
  br i1 %.not88.i, label %bb.o, label %._crit_edge127.i

._crit_edge127.i:                                 ; preds = %bb.n
  %.phi.trans.insert129.i = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %.pre-phi
  %.pre130.i = load i16, ptr %.phi.trans.insert129.i, align 2, !tbaa !369
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.gq = icmp sgt i64 %indvars.iv.i85, %.pre-phi
  br i1 %i.gq, label %bb.p, label %._crit_edge123.i

._crit_edge123.i:                                 ; preds = %bb.o
  %.phi.trans.insert124.i = sext i32 %.180.i to i64
  %.phi.trans.insert125.i = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %.phi.trans.insert124.i
  %.pre126.i = load i16, ptr %.phi.trans.insert125.i, align 2, !tbaa !369
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.gr = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %.pre-phi
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !369 ; 2 uses
  %i.gt = sext i32 %.180.i to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !369 ; 2 uses
  %i.gw = icmp ult i16 %i.gs, %i.gv
  br i1 %i.gw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %._crit_edge127.i
  %i.gx = phi i16 [ %.pre130.i, %._crit_edge127.i ], [ %i.gs, %bb.p ]
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !369
  %i.ha = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %.pre-phi
  %i.hb = add i16 %i.gz, %i.gx
  store i16 %i.hb, ptr %i.gy, align 2, !tbaa !369
  %i.hc = trunc i64 %indvars.iv.i85 to i16
  %i.hd = add nsw i32 %.183.i, 1
  store i16 %i.hc, ptr %i.ha, align 2, !tbaa !369
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %._crit_edge123.i
  %i.he = phi i16 [ %.pre126.i, %._crit_edge123.i ], [ %i.gv, %bb.p ]
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !369
  %i.hh = add nsw i32 %.180.i, 1
  %i.hi = add i16 %i.hg, %i.he
  store i16 %i.hi, ptr %i.hf, align 2, !tbaa !369
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.284.i = phi i32 [ %i.hd, %bb.q ], [ %.183.i, %bb.r ]
  %.281.i = phi i32 [ %.180.i, %bb.q ], [ %i.hh, %bb.r ]
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %exitcond.not.i88 = icmp eq i64 %indvars.iv.next.i87, %wide.trip.count.i83
  br i1 %exitcond.not.i88, label %._crit_edge.i, label %.lr.ph.i84, !llvm.loop !377

._crit_edge.i:                                    ; preds = %bb.s
  %i.hj = add nsw i32 %.173.lcssa, -2             ; 3 uses
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.hk
  store i16 0, ptr %i.hl, align 2, !tbaa !369
  %i.hm = add nsw i32 %.173.lcssa, -3             ; 2 uses
  %i.hn = zext i32 %i.hm to i64                   ; 3 uses
  %i.ho = add nuw nsw i64 %i.hn, 1
  %xtraiter209 = and i64 %i.ho, 3                 ; 2 uses
  %lcmp.mod210.not = icmp eq i64 %xtraiter209, 0
  br i1 %lcmp.mod210.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol

.lr.ph96.i.prol:                                  ; preds = %._crit_edge.i, %.lr.ph96.i.prol
  %indvars.iv115.i.prol = phi i64 [ %indvars.iv.next116.i.prol, %.lr.ph96.i.prol ], [ %i.hn, %._crit_edge.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph96.i.prol ], [ 0, %._crit_edge.i ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv115.i.prol ; 2 uses
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !369
  %i.hr = zext i16 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !369
  %i.hu = add i16 %i.ht, 1
  store i16 %i.hu, ptr %i.hp, align 2, !tbaa !369
  %indvars.iv.next116.i.prol = add nsw i64 %indvars.iv115.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter209
  br i1 %prol.iter.cmp.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol, !llvm.loop !378

.lr.ph96.i.prol.loopexit:                         ; preds = %.lr.ph96.i.prol, %._crit_edge.i
  %indvars.iv115.i.unr = phi i64 [ %i.hn, %._crit_edge.i ], [ %indvars.iv.next116.i.prol, %.lr.ph96.i.prol ]
  %i.hv = icmp ult i32 %i.hm, 3
  br i1 %i.hv, label %.preheader.i81.preheader, label %.lr.ph96.i

.lr.ph96.i:                                       ; preds = %.lr.ph96.i.prol.loopexit, %.lr.ph96.i
  %indvars.iv115.i = phi i64 [ %indvars.iv.next116.i.3, %.lr.ph96.i ], [ %indvars.iv115.i.unr, %.lr.ph96.i.prol.loopexit ] ; 5 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv115.i ; 2 uses
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !369
  %i.hy = zext i16 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.hy
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !369
  %i.ib = add i16 %i.ia, 1
  store i16 %i.ib, ptr %i.hw, align 2, !tbaa !369
  %i.ic = getelementptr [4 x i8], ptr %.04052.us.i, i64 %indvars.iv115.i
  %i.id = getelementptr i8, ptr %i.ic, i64 -4     ; 2 uses
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !369
  %i.if = zext i16 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.if
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !369
  %i.ii = add i16 %i.ih, 1
  store i16 %i.ii, ptr %i.id, align 2, !tbaa !369
  %i.ij = getelementptr [4 x i8], ptr %.04052.us.i, i64 %indvars.iv115.i
  %i.ik = getelementptr i8, ptr %i.ij, i64 -8     ; 2 uses
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !369
  %i.im = zext i16 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.im
  %i.io = load i16, ptr %i.in, align 2, !tbaa !369
  %i.ip = add i16 %i.io, 1
  store i16 %i.ip, ptr %i.ik, align 2, !tbaa !369
  %indvars.iv.next116.i.2 = add nsw i64 %indvars.iv115.i, -3 ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv.next116.i.2 ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !369
  %i.is = zext i16 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !369
  %i.iv = add i16 %i.iu, 1
  store i16 %i.iv, ptr %i.iq, align 2, !tbaa !369
  %indvars.iv.next116.i.3 = add nsw i64 %indvars.iv115.i, -4
  %.not140.i.3 = icmp eq i64 %indvars.iv.next116.i.2, 0
  br i1 %.not140.i.3, label %.preheader.i81.preheader, label %.lr.ph96.i, !llvm.loop !379

.preheader.i81.preheader:                         ; preds = %.lr.ph96.i.prol.loopexit, %.lr.ph96.i, %._crit_edge.thread.i
  %.385110.i.ph = phi i32 [ %i.gb, %._crit_edge.thread.i ], [ %i.hj, %.lr.ph96.i ], [ %i.hj, %.lr.ph96.i.prol.loopexit ]
  br label %.preheader.i81

.preheader.i81:                                   ; preds = %.preheader.i81.preheader, %._crit_edge108.i
  %.0113.i = phi i32 [ %i.jy, %._crit_edge108.i ], [ 0, %.preheader.i81.preheader ] ; 3 uses
  %.075112.i = phi i32 [ %i.jx, %._crit_edge108.i ], [ 1, %.preheader.i81.preheader ] ; 5 uses
  %.2111.i = phi i32 [ %.3.lcssa.i, %._crit_edge108.i ], [ %i.fz, %.preheader.i81.preheader ] ; 2 uses
  %.385110.i = phi i32 [ %.4.lcssa.i, %._crit_edge108.i ], [ %.385110.i.ph, %.preheader.i81.preheader ] ; 5 uses
  %i.iw = icmp sgt i32 %.385110.i, -1
  br i1 %i.iw, label %.lr.ph99.preheader.i, label %.critedge.i

.lr.ph99.preheader.i:                             ; preds = %.preheader.i81
  %i.ix = add nuw i32 %.385110.i, 1
  br label %.lr.ph99.i

.lr.ph99.i:                                       ; preds = %bb.t, %.lr.ph99.preheader.i
  %.198.i = phi i32 [ %i.jd, %bb.t ], [ 0, %.lr.ph99.preheader.i ] ; 3 uses
  %.497.i = phi i32 [ %i.je, %bb.t ], [ %.385110.i, %.lr.ph99.preheader.i ] ; 3 uses
  %i.iy = zext nneg i32 %.497.i to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.iy
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !369
  %i.jb = zext i16 %i.ja to i32
  %i.jc = icmp eq i32 %.0113.i, %i.jb
  br i1 %i.jc, label %bb.t, label %.critedge.i

bb.t:                                             ; preds = %.lr.ph99.i
  %i.jd = add nuw i32 %.198.i, 1
  %i.je = add nsw i32 %.497.i, -1
  %exitcond118.not.i = icmp eq i32 %.198.i, %.385110.i
  br i1 %exitcond118.not.i, label %.critedge.i, label %.lr.ph99.i, !llvm.loop !380

.critedge.i:                                      ; preds = %bb.t, %.lr.ph99.i, %.preheader.i81
  %.4.lcssa.i = phi i32 [ %.385110.i, %.preheader.i81 ], [ %.497.i, %.lr.ph99.i ], [ -1, %bb.t ]
  %.1.lcssa.i = phi i32 [ 0, %.preheader.i81 ], [ %.198.i, %.lr.ph99.i ], [ %i.ix, %bb.t ] ; 6 uses
  %i.jf = icmp sgt i32 %.075112.i, %.1.lcssa.i
  br i1 %i.jf, label %.lr.ph107.i, label %._crit_edge108.i

end_hunk_1
