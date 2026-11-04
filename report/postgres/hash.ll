Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/hash?download=true
inline.NumInlined: 28
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@RelationGetNumberOfBlocksInFork

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @estimate_rel_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_hash_init(ptr noundef, double noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_h_spoolinit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @hashbuildCallback(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 zeroext %4, ptr nofree noundef captures(none) %5) #1 {
bb.a:
  %i.a = alloca [1 x i64], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = call zeroext i1 @_hash_convert_tuple(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %5, align 8                ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_h_spool(ptr noundef nonnull %i.d, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call ptr @index_form_tuple(ptr noundef %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.g, ptr noundef nonnull align 2 dereferenceable(6) %1, i64 6, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  call void @_hash_doinsert(ptr noundef %0, ptr noundef nonnull %i.g, ptr noundef %i.i, i1 noundef zeroext false) #8
  call void @pfree(ptr noundef nonnull %i.g) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.k = load double, ptr %i.j, align 8
  %i.l = fadd double %i.k, 1.000000e+00
  store double %i.l, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare void @pgstat_progress_update_param(i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @_h_indexbuild(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_h_spooldestroy(ptr noundef) local_unnamed_addr #2

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare zeroext i1 @_hash_convert_tuple(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @index_form_tuple(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @_hash_doinsert(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @pfree(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @_hash_first(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @_hash_next(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @tbm_add_tuples(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @RelationGetIndexScan(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_hash_kill_items(ptr noundef) local_unnamed_addr #2

declare void @_hash_dropscanbuf(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_hash_getcachedmetap(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @read_stream_begin_relation(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @hash_bulkdelete_read_stream_cb(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree readnone captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i32 %i.b, 1                          ; 3 uses
  store i32 %i.f, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.i = tail call i32 @_hash_spareindex(i32 noundef %i.f) #8
  %i.j = add i32 %i.i, -1
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %i.o = add i32 %i.f, %i.n
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ %i.o, %bb.d ], [ -1, %bb.a ]
  ret i32 %.0
}

declare i32 @_hash_spareindex(i32 noundef) local_unnamed_addr #2

declare i32 @read_stream_next_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @LockBufferForCleanup(i32 noundef) local_unnamed_addr #2

declare void @_hash_checkpage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @read_stream_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @hashbucketcleanup(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef captures(address_is_null) %8, ptr nofree noundef captures(address_is_null) %9, i1 noundef zeroext %10, ptr nofree noundef readonly captures(address_is_null) %11, ptr noundef %12) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [2048 x i16], align 16            ; 7 uses
  %13 = alloca %struct.xl_hash_delete, align 1    ; 5 uses
  br i1 %10, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_hash_get_newbucket_from_oldbucket(ptr noundef %0, i32 noundef %1, i32 noundef %7, i32 noundef %5) #8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not118 = icmp eq ptr %11, null
  %.not120 = icmp eq ptr %8, null                 ; 2 uses
  %.not121 = icmp eq ptr %9, null                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 1 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.ah, %bb.c
  %.0107 = phi i32 [ %2, %bb.c ], [ %i.dk, %bb.ah ] ; 12 uses
  %.0105 = phi i1 [ false, %bb.c ], [ %.1106, %bb.ah ] ; 2 uses
  %.097 = phi i32 [ %3, %bb.c ], [ %i.di, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @vacuum_delay_point(i1 noundef zeroext false) #8
  %i.g = icmp slt i32 %.0107, 0                   ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.i = xor i32 %.0107, -1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8
  br label %BufferGetPage.exit

bb.f:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @BufferBlocks, align 8
  %i.n = add nsw i32 %.0107, -1
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 13
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.l, %bb.e ], [ %i.q, %bb.f ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.s = load i16, ptr %i.r, align 8
  %i.t = zext i16 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.t ; 3 uses
  %i.v = getelementptr i8, ptr %.0.i.i, i64 12
  %.val = load i16, ptr %i.v, align 4             ; 2 uses
  %i.w = icmp ult i16 %.val, 25
  %i.x = zext i16 %.val to i32
  %i.y = add nuw nsw i32 %i.x, 262120
  %i.z = lshr i32 %i.y, 2
  %i.aa = trunc i32 %i.z to i16                   ; 4 uses
  %.not133137 = icmp eq i16 %i.aa, 0
  %.not133 = select i1 %i.w, i1 true, i1 %.not133137
  br i1 %.not133, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %BufferGetPage.exit
  %i.ab = getelementptr i8, ptr %.0.i.i, i64 20   ; 2 uses
  br i1 %.not118, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %14 = call i16 @llvm.umax.i16(i16 %i.aa, i16 1)
  %umax = add nuw i16 %14, 1
  %wide.trip.count = zext i16 %umax to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %10, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %15 = call i16 @llvm.umax.i16(i16 %i.aa, i16 1)
  %umax145 = add nuw i16 %15, 1
  %wide.trip.count144 = zext i16 %umax145 to i64
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.preheader, %bb.h
  %indvars.iv141 = phi i64 [ 1, %.lr.ph.split.us.split.us.preheader ], [ %indvars.iv.next142, %bb.h ] ; 3 uses
  %.0101135.us.us = phi i32 [ 0, %.lr.ph.split.us.split.us.preheader ], [ %.1.us.us, %bb.h ] ; 4 uses
  %i.ac = getelementptr [4 x i8], ptr %i.ab, i64 %indvars.iv141
  %.val124.us.us = load i32, ptr %i.ac, align 4
  %i.ad = and i32 %.val124.us.us, 32767
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ae
  %i.ag = call i32 @_hash_get_indextuple_hashkey(ptr noundef nonnull %i.af) #8
  %i.ah = call i32 @_hash_hashkey2bucket(i32 noundef %i.ag, i32 noundef %5, i32 noundef %6, i32 noundef %7) #8
  %.not119.not.us.us = icmp eq i32 %i.ah, %1
  br i1 %.not119.not.us.us, label %.critedge123.us.us, label %.critedge.us.us

.critedge.us.us:                                  ; preds = %.lr.ph.split.us.split.us
  %i.ai = add i32 %.0101135.us.us, 1
  %i.aj = sext i32 %.0101135.us.us to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.aj
  %i.al = trunc nuw i64 %indvars.iv141 to i16
  store i16 %i.al, ptr %i.ak, align 2
  br label %bb.h

.critedge123.us.us:                               ; preds = %.lr.ph.split.us.split.us
  br i1 %.not121, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge123.us.us
  %i.am = load double, ptr %9, align 8
  %i.an = fadd double %i.am, 1.000000e+00
  store double %i.an, ptr %9, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge123.us.us, %.critedge.us.us
  %.1.us.us = phi i32 [ %i.ai, %.critedge.us.us ], [ %.0101135.us.us, %bb.g ], [ %.0101135.us.us, %.critedge123.us.us ] ; 2 uses
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145 = icmp eq i64 %indvars.iv.next142, %wide.trip.count144
  br i1 %exitcond145, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !10

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %.not121, label %._crit_edge.thread, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split
  %.promoted = load double, ptr %9, align 8       ; 2 uses
  %i.ao = add nsw i16 %i.aa, 1                    ; 2 uses
  %umax.a = call i16 @llvm.umax.i16(i16 %i.ao, i16 2)
  %i.ap = add i16 %umax.a, -1                     ; 2 uses
  %xtraiter = and i16 %i.ap, 7                    ; 3 uses
  %i.aq = icmp ult i16 %i.ao, 9
  br i1 %i.aq, label %.critedge123.us.epil.preheader, label %.lr.ph.split.us.split.split.new

.lr.ph.split.us.split.split.new:                  ; preds = %.lr.ph.split.us.split.split
  %unroll_iter = and i16 %i.ap, -8
  br label %.critedge123.us

.critedge123.us:                                  ; preds = %.critedge123.us, %.lr.ph.split.us.split.split.new
  %i.ar = phi double [ %.promoted, %.lr.ph.split.us.split.split.new ], [ %i.az, %.critedge123.us ]
  %niter = phi i16 [ 0, %.lr.ph.split.us.split.split.new ], [ %niter.next.7, %.critedge123.us ]
  %i.as = fadd double %i.ar, 1.000000e+00
  %i.at = fadd double %i.as, 1.000000e+00
  %i.au = fadd double %i.at, 1.000000e+00
  %i.av = fadd double %i.au, 1.000000e+00
  %i.aw = fadd double %i.av, 1.000000e+00
  %i.ax = fadd double %i.aw, 1.000000e+00
  %i.ay = fadd double %i.ax, 1.000000e+00
  %i.az = fadd double %i.ay, 1.000000e+00         ; 3 uses
  %niter.next.7 = add i16 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i16 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.split.us.split.unr-lcssa, label %.critedge123.us, !llvm.loop !10

._crit_edge.split.us.split.unr-lcssa:             ; preds = %.critedge123.us
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.split.us.split, label %.critedge123.us.epil.preheader

.critedge123.us.epil.preheader:                   ; preds = %._crit_edge.split.us.split.unr-lcssa, %.lr.ph.split.us.split.split
  %.epil.init = phi double [ %.promoted, %.lr.ph.split.us.split.split ], [ %i.az, %._crit_edge.split.us.split.unr-lcssa ]
  %lcmp.mod160 = icmp ne i16 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod160)
  br label %.critedge123.us.epil

.critedge123.us.epil:                             ; preds = %.critedge123.us.epil, %.critedge123.us.epil.preheader
  %i.ba = phi double [ %.epil.init, %.critedge123.us.epil.preheader ], [ %i.bb, %.critedge123.us.epil ]
  %epil.iter = phi i16 [ 0, %.critedge123.us.epil.preheader ], [ %epil.iter.next, %.critedge123.us.epil ]
  %i.bb = fadd double %i.ba, 1.000000e+00         ; 2 uses
  %epil.iter.next = add i16 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i16 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split.us.split, label %.critedge123.us.epil, !llvm.loop !11

._crit_edge.split.us.split:                       ; preds = %.critedge123.us.epil, %._crit_edge.split.us.split.unr-lcssa
  %.lcssa = phi double [ %i.az, %._crit_edge.split.us.split.unr-lcssa ], [ %i.bb, %.critedge123.us.epil ]
  store double %.lcssa, ptr %9, align 8
  br label %._crit_edge.thread

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.n
  %indvars.iv = phi i64 [ 1, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %.0101135 = phi i32 [ 0, %.lr.ph.split.preheader ], [ %.1, %bb.n ] ; 4 uses
  %i.bc = getelementptr [4 x i8], ptr %i.ab, i64 %indvars.iv
  %.val124 = load i32, ptr %i.bc, align 4
  %i.bd = and i32 %.val124, 32767
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.be ; 2 uses
  %i.bg = call zeroext i1 %11(ptr noundef nonnull %i.bf, ptr noundef %12) #8
  br i1 %i.bg, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph.split
  br i1 %.not120, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = load double, ptr %8, align 8
  %i.bi = fadd double %i.bh, 1.000000e+00
  store double %i.bi, ptr %8, align 8
  br label %.critedge

bb.k:                                             ; preds = %.lr.ph.split
  br i1 %10, label %bb.l, label %.critedge123

bb.l:                                             ; preds = %bb.k
  %i.bj = call i32 @_hash_get_indextuple_hashkey(ptr noundef nonnull %i.bf) #8
  %i.bk = call i32 @_hash_hashkey2bucket(i32 noundef %i.bj, i32 noundef %5, i32 noundef %6, i32 noundef %7) #8
  %.not119.not = icmp eq i32 %i.bk, %1
  br i1 %.not119.not, label %.critedge123, label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.i, %bb.l
  %i.bl = add i32 %.0101135, 1
  %i.bm = sext i32 %.0101135 to i64
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.bm
  %i.bo = trunc nuw i64 %indvars.iv to i16
  store i16 %i.bo, ptr %i.bn, align 2
  br label %bb.n

.critedge123:                                     ; preds = %bb.k, %bb.l
  br i1 %.not121, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge123
  %i.bp = load double, ptr %9, align 8
  %i.bq = fadd double %i.bp, 1.000000e+00
  store double %i.bq, ptr %9, align 8
  br label %bb.n

bb.n:                                             ; preds = %.critedge123, %bb.m, %.critedge
  %.1 = phi i32 [ %i.bl, %.critedge ], [ %.0101135, %bb.m ], [ %.0101135, %.critedge123 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %.lr.ph.split, !llvm.loop !10

._crit_edge.thread:                               ; preds = %BufferGetPage.exit, %._crit_edge.split.us.split, %.lr.ph.split.us.split
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.bs = load i32, ptr %i.br, align 4
  br label %bb.ad

._crit_edge:                                      ; preds = %bb.n, %bb.h
  %.0101.lcssa = phi i32 [ %.1.us.us, %bb.h ], [ %.1, %bb.n ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.bu = load i32, ptr %i.bt, align 4            ; 2 uses
  %i.bv = icmp sgt i32 %.0101.lcssa, 0
  br i1 %i.bv, label %bb.o, label %bb.ad

bb.o:                                             ; preds = %._crit_edge
  %i.bw = load volatile i32, ptr @CritSectionCount, align 4
  %i.bx = add i32 %i.bw, 1
  store volatile i32 %i.bx, ptr @CritSectionCount, align 4
  call void @PageIndexMultiDelete(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.a, i32 noundef %.0101.lcssa) #8
  br i1 %.not120, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = load double, ptr %8, align 8
  %i.bz = fcmp ogt double %i.by, 0.000000e+00
  br i1 %i.bz, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 4            ; 2 uses
  %i.cc = and i16 %i.cb, 128
  %.not116 = icmp eq i16 %i.cc, 0
  br i1 %.not116, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = and i16 %i.cb, -129
  store i16 %i.cd, ptr %i.ca, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.099 = phi i8 [ 1, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ]
  call void @MarkBufferDirty(i32 noundef %.0107) #8
  %i.ce = load ptr, ptr %i.c, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 118
  %i.cg = load i8, ptr %i.cf, align 2
  %i.ch = icmp eq i8 %i.cg, 112
  br i1 %i.ch, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.ci = load i32, ptr @wal_level, align 4
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = load i32, ptr %i.d, align 8
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
end_hunk_0
