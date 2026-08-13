inline.NumInlined: 40
inline.NumDeleted: 14
begin_hunk_0_@writer_index_hash:bb.a
bb.g:                                             ; preds = %bb.e, %bb.f
  %.036 = phi ptr [ %i.o, %bb.f ], [ %i.g, %bb.e ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.036, i64 32 ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !67   ; 3 uses
  %.not44 = icmp eq i64 %i.q, 0
  br i1 %.not44, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.036, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %i.q
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !17
  %i.w = icmp eq i64 %i.v, %i.b
  br i1 %i.w, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.036, i64 40 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !71   ; 5 uses
  %i.z = add i64 %i.q, 1                          ; 3 uses
  %i.aa = icmp ugt i64 %i.z, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %.036, i64 24 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !70 ; 4 uses
  br i1 %i.aa, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.ad = shl i64 %i.y, 1
  %i.ae = or disjoint i64 %i.ad, 1
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.z) ; 3 uses
  %mul.ov.i.i = icmp ugt i64 %spec.select.i, 2305843009213693951
  br i1 %mul.ov.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = tail call ptr @__errno_location() #13
  store i32 12, ptr %i.af, align 4, !tbaa !12
  br label %reftable_alloc_grow.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = shl nuw i64 %spec.select.i, 3
  %i.ah = call ptr @reftable_realloc(ptr noundef %i.ac, i64 noundef %i.ag) #12 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null               ; 2 uses
  %spec.select = select i1 %.not.i, i64 %i.y, i64 %spec.select.i
  %spec.select51 = select i1 %.not.i, ptr %i.ac, ptr %i.ah
  %.pre = load i64, ptr %i.p, align 8, !tbaa !67
  %.pre53 = add i64 %.pre, 1
  br label %reftable_alloc_grow.exit

reftable_alloc_grow.exit:                         ; preds = %bb.l, %bb.k
  %.pre-phi = phi i64 [ %.pre53, %bb.l ], [ %i.z, %bb.k ]
  %.148 = phi i64 [ %spec.select, %bb.l ], [ %i.y, %bb.k ] ; 2 uses
  %.013.i = phi ptr [ %spec.select51, %bb.l ], [ %i.ac, %bb.k ] ; 3 uses
  store ptr %.013.i, ptr %i.ab, align 8, !tbaa !70
  %i.ai = icmp ugt i64 %.pre-phi, %.148
  br i1 %i.ai, label %.thread61, label %._crit_edge

.thread61:                                        ; preds = %reftable_alloc_grow.exit
  call void @reftable_free(ptr noundef %.013.i) #12
  store ptr null, ptr %i.ab, align 8, !tbaa !70
  store i64 0, ptr %i.x, align 8, !tbaa !71
  br label %.thread

._crit_edge:                                      ; preds = %bb.i, %reftable_alloc_grow.exit
  %i.aj = phi ptr [ %.013.i, %reftable_alloc_grow.exit ], [ %i.ac, %bb.i ] ; 2 uses
  %storemerge = phi i64 [ %.148, %reftable_alloc_grow.exit ], [ %i.y, %bb.i ]
  store i64 %storemerge, ptr %i.x, align 8, !tbaa !71
  %.not45 = icmp eq ptr %i.aj, null
  br i1 %.not45, label %.thread, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.ak = load i64, ptr %i.p, align 8, !tbaa !67  ; 2 uses
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.p, align 8, !tbaa !67
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak
  store i64 %i.b, ptr %i.am, align 8, !tbaa !17
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.d, %.thread61, %._crit_edge, %bb.h, %bb.m
  %.1 = phi i32 [ -13, %.thread61 ], [ 0, %bb.m ], [ 0, %bb.h ], [ -13, %._crit_edge ], [ -13, %bb.b ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %.1
}

declare ptr @reftable_ref_record_val2(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @reftable_writer_add_refs(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  tail call void @qsort(ptr noundef %1, i64 noundef %2, i64 noundef 96, ptr noundef nonnull @reftable_ref_record_compare_name) #12
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.010.lcssa = phi i32 [ 0, %bb.a ], [ %i.b, %.lr.ph ]
  ret i32 %.010.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.012 = phi i64 [ %i.c, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.a = getelementptr inbounds nuw [96 x i8], ptr %1, i64 %.012
  %i.b = tail call i32 @reftable_writer_add_ref(ptr noundef %0, ptr noundef %i.a) ; 2 uses
  %i.c = add nuw i64 %.012, 1                     ; 2 uses
  %i.d = icmp eq i32 %i.b, 0
  %i.e = icmp ult i64 %i.c, %2
  %i.f = select i1 %i.d, i1 %i.e, i1 false
  br i1 %i.f, label %.lr.ph, label %._crit_edge, !llvm.loop !72
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @reftable_ref_record_compare_name(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @reftable_writer_add_log(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.reftable_record, align 8    ; 6 uses
  %3 = alloca %struct.reftable_record, align 8    ; 6 uses
  %4 = alloca %struct.reftable_buf, align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !73
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store i8 103, ptr %3, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.d, i8 0, i64 7, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(144) %1, i64 144, i1 false), !tbaa.struct !75
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call zeroext i8 @block_writer_type(ptr noundef nonnull %i.g) #12
  %i.i = icmp eq i8 %i.h, 114
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc i32 @writer_finish_public_section(ptr noundef nonnull %0) ; 2 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %bb.e, label %reftable_writer_add_log_verbatim.exit

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !76
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37
  %i.q = sub i64 %i.p, %i.n
  store i64 %i.q, ptr %i.o, align 8, !tbaa !37
  store i32 0, ptr %i.l, align 8, !tbaa !76
  %i.r = call fastcc i32 @writer_add_record(ptr noundef nonnull %0, ptr noundef %3)
  br label %reftable_writer_add_log_verbatim.exit

reftable_writer_add_log_verbatim.exit:            ; preds = %bb.d, %bb.e
  %.1.i = phi i32 [ %i.r, %bb.e ], [ %i.j, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.s

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !77
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load i64, ptr %i.u, align 8, !tbaa !47
  %i.w = icmp ugt i64 %i.t, %i.v
  br i1 %i.w, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %1, align 8, !tbaa !78
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !16   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ab = load i8, ptr %i.aa, align 4
  %.not25 = trunc i8 %i.ab to i1
  %.not26 = icmp eq ptr %i.z, null
  %or.cond = select i1 %.not25, i1 true, i1 %.not26
  br i1 %or.cond, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = call i32 @reftable_buf_addstr(ptr noundef nonnull %4, ptr noundef nonnull %i.z) #12 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.l
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !64 ; 2 uses
  %.not27 = icmp eq i64 %i.ag, 0
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !63 ; 2 uses
  br i1 %.not27, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %5 = add i64 %i.ag, -1                          ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 %5
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16
  %i.aj = icmp eq i8 %i.ai, 10
  br i1 %i.aj, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ak = call i32 @reftable_buf_setlen(ptr noundef nonnull %4, i64 noundef %5) #12 ; 2 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %.loopexit, label %bb.j, !llvm.loop !79

.critedge:                                        ; preds = %bb.j, %bb.k
  %i.am = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.pre, i32 noundef 10) #14
  %.not28 = icmp eq ptr %i.am, null
  br i1 %.not28, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.critedge
  %i.an = call i32 @reftable_buf_addstr(ptr noundef nonnull %4, ptr noundef nonnull @.str) #12 ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !63
  store ptr %i.ap, ptr %i.y, align 8, !tbaa !16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store i8 103, ptr %2, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.aq, i8 0, i64 7, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ar, ptr noundef nonnull readonly align 8 dereferenceable(144) %1, i64 144, i1 false), !tbaa.struct !75
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !40 ; 2 uses
  %.not.i29 = icmp eq ptr %i.at, null
  br i1 %.not.i29, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = call zeroext i8 @block_writer_type(ptr noundef nonnull %i.at) #12
  %i.av = icmp eq i8 %i.au, 114
  br i1 %i.av, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aw = call fastcc i32 @writer_finish_public_section(ptr noundef nonnull %0) ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, -1
  br i1 %i.ax, label %bb.r, label %reftable_writer_add_log_verbatim.exit31

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !76
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !37
  %i.bd = sub i64 %i.bc, %i.ba
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !37
  store i32 0, ptr %i.ay, align 8, !tbaa !76
  %i.be = call fastcc i32 @writer_add_record(ptr noundef nonnull %0, ptr noundef %2)
  br label %reftable_writer_add_log_verbatim.exit31

reftable_writer_add_log_verbatim.exit31:          ; preds = %bb.q, %bb.r
  %.1.i30 = phi i32 [ %i.be, %bb.r ], [ %i.aw, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  store ptr %i.z, ptr %i.y, align 8, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.critedge, %bb.m, %bb.i, %reftable_writer_add_log_verbatim.exit31
  %.0 = phi i32 [ %.1.i30, %reftable_writer_add_log_verbatim.exit31 ], [ %i.ac, %bb.i ], [ -6, %.critedge ], [ %i.an, %bb.m ], [ %i.ak, %bb.l ]
  call void @reftable_buf_release(ptr noundef nonnull %4) #12
  br label %bb.s

bb.s:                                             ; preds = %bb.g, %bb.f, %.loopexit, %reftable_writer_add_log_verbatim.exit
  %.019 = phi i32 [ %.1.i, %reftable_writer_add_log_verbatim.exit ], [ -6, %bb.f ], [ %.0, %.loopexit ], [ -6, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i32 %.019
}

declare i32 @reftable_buf_addstr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @reftable_buf_setlen(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @reftable_buf_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @reftable_writer_add_logs(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  tail call void @qsort(ptr noundef %1, i64 noundef %2, i64 noundef 144, ptr noundef nonnull @reftable_log_record_compare_key) #12
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.010.lcssa = phi i32 [ 0, %bb.a ], [ %i.b, %.lr.ph ]
  ret i32 %.010.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.012 = phi i64 [ %i.c, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.a = getelementptr inbounds nuw [144 x i8], ptr %1, i64 %.012
  %i.b = tail call i32 @reftable_writer_add_log(ptr noundef %0, ptr noundef %i.a) ; 2 uses
  %i.c = add nuw i64 %.012, 1                     ; 2 uses
  %i.d = icmp eq i32 %i.b, 0
  %i.e = icmp ult i64 %i.c, %2
  %i.f = select i1 %i.d, i1 %i.e, i1 false
  br i1 %i.f, label %.lr.ph, label %._crit_edge, !llvm.loop !80
}

declare i32 @reftable_log_record_compare_key(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @reftable_writer_close(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 16               ; 27 uses
  %i.b = alloca [28 x i8], align 16               ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.c = tail call fastcc i32 @writer_finish_public_section(ptr noundef %0) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i64, ptr %i.d, align 8, !tbaa !37
  %i.f = icmp eq i64 %i.e, 0                      ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  store i32 0, ptr %i.g, align 8, !tbaa !76
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 1413891410, ptr %i.b, align 16
  %i.h = getelementptr i8, ptr %0, i64 116
  %.val18.i = load i32, ptr %i.h, align 4, !tbaa !39 ; 5 uses
  %i.i = icmp eq i32 %.val18.i, 0
  %i.j = icmp eq i32 %.val18.i, 89
  %i.k = or i1 %i.i, %i.j
  %i.l = select i1 %i.k, i8 1, i8 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.l, ptr %i.m, align 4, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.p = load i32, ptr %i.o, align 4, !tbaa !38   ; 3 uses
  %i.q = lshr i32 %i.p, 16
  %i.r = trunc i32 %i.q to i8
  store i8 %i.r, ptr %i.n, align 1, !tbaa !16
  %i.s = lshr i32 %i.p, 8
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 %i.t, ptr %i.u, align 2, !tbaa !16
  %i.v = trunc i32 %i.p to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store i8 %i.v, ptr %i.w, align 1, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = load i64, ptr %i.y, align 8, !tbaa !46   ; 8 uses
  %i.aa = lshr i64 %i.z, 56
  %i.ab = trunc nuw i64 %i.aa to i8
  store i8 %i.ab, ptr %i.x, align 8, !tbaa !16
  %i.ac = lshr i64 %i.z, 48
  %i.ad = trunc i64 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !16
  %i.af = lshr i64 %i.z, 40
  %i.ag = trunc i64 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 %i.ag, ptr %i.ah, align 2, !tbaa !16
  %i.ai = lshr i64 %i.z, 32
  %i.aj = trunc i64 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !16
  %i.al = lshr i64 %i.z, 24
  %i.am = trunc i64 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 %i.am, ptr %i.an, align 4, !tbaa !16
  %i.ao = lshr i64 %i.z, 16
  %i.ap = trunc i64 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !16
  %i.ar = lshr i64 %i.z, 8
  %i.as = trunc i64 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i8 %i.as, ptr %i.at, align 2, !tbaa !16
  %i.au = trunc i64 %i.z to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  store i8 %i.au, ptr %i.av, align 1, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !47 ; 8 uses
  %i.az = lshr i64 %i.ay, 56
  %i.ba = trunc nuw i64 %i.az to i8
  store i8 %i.ba, ptr %i.aw, align 16, !tbaa !16
  %i.bb = lshr i64 %i.ay, 48
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !16
  %i.be = lshr i64 %i.ay, 40
  %i.bf = trunc i64 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store i8 %i.bf, ptr %i.bg, align 2, !tbaa !16
  %i.bh = lshr i64 %i.ay, 32
  %i.bi = trunc i64 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 19
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !16
  %i.bk = lshr i64 %i.ay, 24
  %i.bl = trunc i64 %i.bk to i8
end_hunk_0
