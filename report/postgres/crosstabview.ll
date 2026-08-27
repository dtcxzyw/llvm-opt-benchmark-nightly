Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/crosstabview?download=true
inline.NumInlined: 24
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@PrintResultInCrosstab:bb.a
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @PQresultStatus(ptr noundef) local_unnamed_addr #2

declare void @pg_log_generic(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @PQnfields(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @indexOfColumn(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strspn(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #10
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @__isoc23_strtol(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10) #9, !inline_history !7
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = add i32 %i.f, -1                         ; 3 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @PQnfields(ptr noundef %1) #9
  %.not28 = icmp slt i32 %i.g, %i.i
  br i1 %.not28, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = tail call i32 @PQnfields(ptr noundef %1) #9
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef %i.f, i32 noundef %i.j) #9
  br label %.critedge

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 8), align 8
  tail call void @dequote_downcase_identifier(ptr noundef nonnull %0, i1 noundef zeroext true, i32 noundef %i.k) #9
  %i.l = tail call i32 @PQnfields(ptr noundef %1) #9
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.f, %bb.i
  %.031 = phi i32 [ %i.r, %bb.i ], [ 0, %bb.f ]   ; 3 uses
  %.02430 = phi i32 [ %.1, %bb.i ], [ -1, %bb.f ] ; 2 uses
  %i.n = tail call ptr @PQfname(ptr noundef %1, i32 noundef %.031) #9
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %i.n) #10
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.q = icmp sgt i32 %.02430, -1
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull %0) #9
  br label %.critedge

bb.i:                                             ; preds = %bb.g, %.lr.ph
  %.1 = phi i32 [ %.02430, %.lr.ph ], [ %.031, %bb.g ] ; 3 uses
  %i.r = add nuw nsw i32 %.031, 1                 ; 2 uses
  %i.s = tail call i32 @PQnfields(ptr noundef %1) #9
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.i
  %i.u = icmp eq i32 %.1, -1
  br i1 %i.u, label %._crit_edge.thread, label %.critedge

._crit_edge.thread:                               ; preds = %bb.f, %._crit_edge
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull %0) #9
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %._crit_edge.thread, %bb.d, %._crit_edge, %bb.e
  %.126 = phi i32 [ -1, %bb.e ], [ %.1, %._crit_edge ], [ %i.g, %bb.d ], [ -1, %._crit_edge.thread ], [ -1, %bb.h ]
  ret i32 %.126
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @PQntuples(ptr noundef) local_unnamed_addr #2

declare i32 @PQgetisnull(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @PQgetvalue(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @pg_malloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @avlCollectFields(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %1, %i.b
  br i1 %i.c, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %.tr1719 = phi i32 [ %i.k, %tailrecurse ], [ %3, %bb.a ]
  %.tr1518 = phi ptr [ %i.j, %tailrecurse ], [ %1, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.tr1518, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call fastcc i32 @avlCollectFields(ptr noundef %0, ptr noundef %i.e, ptr noundef %2, i32 noundef %.tr1719) ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [24 x i8], ptr %2, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.tr1518, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %.tr1518, i64 40
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = add i32 %i.f, 1                          ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr17.lcssa = phi i32 [ %3, %bb.a ], [ %i.k, %tailrecurse ]
  ret i32 %.tr17.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rankSort(i32 noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = shl i32 %0, 1
  %i.b = sext i32 %i.a to i64
  %i.c = tail call ptr @pg_malloc_mul(i64 noundef 4, i64 noundef %i.b) #9 ; 9 uses
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a
  %i.e = sext i32 %0 to i64
  tail call void @pg_qsort(ptr noundef %i.c, i64 noundef %i.e, i64 noundef 8, ptr noundef nonnull @rankCompare) #9
  br label %._crit_edge38

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 6 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, 45
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %i.l = tail call i64 @strspn(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.8) #10
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #10
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = tail call i64 @strspn(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.8) #10
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #10
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.h, ptr noundef null, i32 noundef 10) #9, !inline_history !7
  %i.s = trunc i64 %i.r to i32
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.d, %bb.e
  %.sink48 = phi i32 [ %i.s, %bb.e ], [ 0, %bb.d ], [ 0, %.lr.ph ]
  %indvars.iv.tr46 = trunc i64 %indvars.iv to i32
  %i.t = shl i32 %indvars.iv.tr46, 1
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.u ; 2 uses
  store i32 %.sink48, ptr %i.v, align 4
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.x, ptr %i.w, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.f
  %i.y = zext nneg i32 %0 to i64
  tail call void @pg_qsort(ptr noundef nonnull %i.c, i64 noundef %i.y, i64 noundef 8, ptr noundef nonnull @rankCompare) #9
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.z = icmp ult i32 %0, 4
  br i1 %i.z, label %.lr.ph37.epil.preheader, label %._crit_edge.new

._crit_edge.new:                                  ; preds = %._crit_edge
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph37

.lr.ph37:                                         ; preds = %.lr.ph37, %._crit_edge.new
  %indvars.iv40 = phi i64 [ 0, %._crit_edge.new ], [ %indvars.iv.next41.3, %.lr.ph37 ] ; 6 uses
  %niter = phi i64 [ 0, %._crit_edge.new ], [ %niter.next.3, %.lr.ph37 ]
  %indvars.iv40.tr = trunc i64 %indvars.iv40 to i32
  %i.aa = shl i32 %indvars.iv40.tr, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr [4 x i8], ptr %i.c, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [24 x i8], ptr %1, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = trunc nuw nsw i64 %indvars.iv40 to i32
  store i32 %i.ai, ptr %i.ah, align 8
  %indvars.iv.next41 = or disjoint i64 %indvars.iv40, 1 ; 2 uses
  %indvars.iv40.tr.1 = trunc i64 %indvars.iv.next41 to i32
  %i.aj = shl i32 %indvars.iv40.tr.1, 1
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr [4 x i8], ptr %i.c, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [24 x i8], ptr %1, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = trunc nuw nsw i64 %indvars.iv.next41 to i32
  store i32 %i.ar, ptr %i.aq, align 8
  %indvars.iv.next41.1 = or disjoint i64 %indvars.iv40, 2 ; 2 uses
  %indvars.iv40.tr.2 = trunc i64 %indvars.iv.next41.1 to i32
  %i.as = shl i32 %indvars.iv40.tr.2, 1
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr [4 x i8], ptr %i.c, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [24 x i8], ptr %1, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = trunc nuw nsw i64 %indvars.iv.next41.1 to i32
  store i32 %i.ba, ptr %i.az, align 8
  %indvars.iv.next41.2 = or disjoint i64 %indvars.iv40, 3 ; 2 uses
  %indvars.iv40.tr.3 = trunc i64 %indvars.iv.next41.2 to i32
  %i.bb = shl i32 %indvars.iv40.tr.3, 1
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %i.c, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [24 x i8], ptr %1, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = trunc nuw nsw i64 %indvars.iv.next41.2 to i32
  store i32 %i.bj, ptr %i.bi, align 8
  %indvars.iv.next41.3 = add nuw nsw i64 %indvars.iv40, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge38.loopexit.unr-lcssa, label %.lr.ph37, !llvm.loop !10

._crit_edge38.loopexit.unr-lcssa:                 ; preds = %.lr.ph37
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge38, label %.lr.ph37.epil.preheader

.lr.ph37.epil.preheader:                          ; preds = %._crit_edge38.loopexit.unr-lcssa, %._crit_edge
  %indvars.iv40.epil.init = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next41.3, %._crit_edge38.loopexit.unr-lcssa ]
  %lcmp.mod51 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod51)
  br label %.lr.ph37.epil

.lr.ph37.epil:                                    ; preds = %.lr.ph37.epil, %.lr.ph37.epil.preheader
  %indvars.iv40.epil = phi i64 [ %indvars.iv40.epil.init, %.lr.ph37.epil.preheader ], [ %indvars.iv.next41.epil, %.lr.ph37.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph37.epil.preheader ], [ %epil.iter.next, %.lr.ph37.epil ]
  %indvars.iv40.tr.epil = trunc i64 %indvars.iv40.epil to i32
  %i.bk = shl i32 %indvars.iv40.tr.epil, 1
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr [4 x i8], ptr %i.c, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [24 x i8], ptr %1, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = trunc nuw nsw i64 %indvars.iv40.epil to i32
  store i32 %i.bs, ptr %i.br, align 8
  %indvars.iv.next41.epil = add nuw nsw i64 %indvars.iv40.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge38, label %.lr.ph37.epil, !llvm.loop !11

._crit_edge38:                                    ; preds = %._crit_edge38.loopexit.unr-lcssa, %.lr.ph37.epil, %._crit_edge.thread
  tail call void @pg_free(ptr noundef %i.c) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @printCrosstab(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, -2147483648) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef range(i32 0, -2147483648) %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.printQueryOpt, align 8      ; 5 uses
  %9 = alloca %struct.printTableContent, align 8  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %8, ptr noundef nonnull align 8 dereferenceable(184) getelementptr inbounds nuw (i8, ptr @pset, i64 48), i64 184, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.a = tail call i32 @PQftype(ptr noundef %0, i32 noundef %3) #9
  %.fr222 = freeze i32 %i.a                       ; 2 uses
  %i.b = tail call i32 @PQftype(ptr noundef %0, i32 noundef %6) #9 ; 3 uses
  %i.c = tail call i32 @PQftype(ptr noundef %0, i32 noundef %7) #9 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = add i32 %1, 1                            ; 4 uses
  call void @printTableInit(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %i.e, i32 noundef %i.f, i32 noundef %4) #9
  %i.g = call ptr @PQfname(ptr noundef %0, i32 noundef %6) #9
  %i.h = call signext i8 @column_type_alignment(i32 noundef %i.b) #9
  call void @printTableAddHeader(ptr noundef nonnull %9, ptr noundef %i.g, i1 noundef zeroext false, i8 noundef signext %i.h) #9
  %i.i = sext i32 %1 to i64                       ; 5 uses
  %i.j = call ptr @pg_malloc_mul(i64 noundef 4, i64 noundef %i.i) #9 ; 8 uses
  %i.k = icmp sgt i32 %1, 0
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.l = icmp ult i32 %1, 4
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 8
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.p
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.r, ptr %i.q, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv.next
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i32, ptr %i.t, align 8
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.v
  %i.x = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.x, ptr %i.w, align 4
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ab
  %i.ad = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.ad, ptr %i.ac, align 4
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ah
  %i.aj = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.aj, ptr %i.ai, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph183.unr-lcssa, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.a
  %i.ak = call signext i8 @column_type_alignment(i32 noundef %i.c) #9 ; 0 uses
  br label %._crit_edge184

.lr.ph183.unr-lcssa:                              ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph183, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph183.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.lr.ph183.unr-lcssa ]
  %lcmp.mod308 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod308)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv.epil
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ao
  %i.aq = trunc nuw nsw i64 %indvars.iv.epil to i32
  store i32 %i.aq, ptr %i.ap, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph183, label %.lr.ph.epil, !llvm.loop !14

.lr.ph183:                                        ; preds = %.lr.ph.epil, %.lr.ph183.unr-lcssa
  %i.ar = call signext i8 @column_type_alignment(i32 noundef %i.c) #9 ; 2 uses
  %i.as = icmp eq i32 %.fr222, 16
  %wide.trip.count246 = zext nneg i32 %1 to i64   ; 2 uses
  br i1 %i.as, label %.lr.ph183.split.us, label %.lr.ph183.split

.lr.ph183.split.us:                               ; preds = %.lr.ph183, %displayValue.exit.us
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %displayValue.exit.us ], [ 0, %.lr.ph183 ] ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv243
  %i.au = load i32, ptr %i.at, align 4
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [24 x i8], ptr %2, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  %.sroa.7.0.copyload.i.us = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 184), align 8 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph183.split.us
  %.sroa.5.0.copyload.i.us = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 176), align 8 ; 2 uses
  %i.az = load i8, ptr %i.ax, align 1             ; 2 uses
  %i.ba = icmp eq i8 %i.az, 116
  %i.bb = icmp ne ptr %.sroa.5.0.copyload.i.us, null
  %or.cond.i.us = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond.i.us, label %displayValue.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bc = icmp eq i8 %i.az, 102
  %i.bd = icmp ne ptr %.sroa.7.0.copyload.i.us, null
  %or.cond5.i.us = select i1 %i.bc, i1 %i.bd, i1 false
  %spec.select.i.us = select i1 %or.cond5.i.us, ptr %.sroa.7.0.copyload.i.us, ptr %i.ax
  br label %displayValue.exit.us

bb.d:                                             ; preds = %.lr.ph183.split.us
  %.sroa.3.0.copyload.i.us = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 168), align 8 ; 2 uses
  %.not.i.us = icmp eq ptr %.sroa.3.0.copyload.i.us, null
  %i.be = select i1 %.not.i.us, ptr @.str.5, ptr %.sroa.3.0.copyload.i.us
  br label %displayValue.exit.us

displayValue.exit.us:                             ; preds = %bb.d, %bb.c, %bb.b
  %.0.i.us = phi ptr [ %i.be, %bb.d ], [ %spec.select.i.us, %bb.c ], [ %.sroa.5.0.copyload.i.us, %bb.b ]
  call void @printTableAddHeader(ptr noundef nonnull %9, ptr noundef %.0.i.us, i1 noundef zeroext false, i8 noundef signext %i.ar) #9
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count246
  br i1 %exitcond247.not, label %._crit_edge184, label %.lr.ph183.split.us, !llvm.loop !15

.lr.ph183.split:                                  ; preds = %.lr.ph183, %.lr.ph183.split
  %indvars.iv238 = phi i64 [ %indvars.iv.next239, %.lr.ph183.split ], [ 0, %.lr.ph183 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv238
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = sext i32 %i.bg to i64
end_hunk_0
