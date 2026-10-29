Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/unpack-trees?download=true
inline.NumInlined: 214
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@update_sparsity:bb.a
  %i.ci = tail call i64 @getnanotime() #16
  tail call void (ptr, i32, i64, ptr, ...) @trace_performance_leave_fl(ptr noundef nonnull @.str.27, i32 noundef 2192, i64 noundef %i.ci, ptr noundef nonnull @.str.41) #16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not53 = icmp eq i32 %i.ch, 0
  %spec.select58 = select i1 %.not53, i32 %.044.lcssa, i32 -2
  ret i32 %spec.select58
}

declare void @expand_index(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @verify_uptodate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !68
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18
  %i.e = and i32 %i.d, 1107296256
  %or.cond.not = icmp eq i32 %i.e, 1107296256
  br i1 %or.cond.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call fastcc i32 @verify_uptodate_1(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @verify_uptodate_1(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 1, 10) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !112
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %add_rejected_path.exit37

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.e = and i32 %i.d, 1073774592
  %or.cond = icmp eq i32 %i.e, 0
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load i32, ptr %i.f, align 8, !tbaa !52
  %i.h = and i32 %i.d, 262144
  %i.i = or i32 %i.g, %i.h
  %or.cond33 = icmp eq i32 %i.i, 0
  br i1 %or.cond33, label %bb.d, label %add_rejected_path.exit37

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 5 uses
  %i.k = call i32 @lstat64(ptr noundef nonnull %i.j, ptr noundef nonnull %3) #16
  %.not29 = icmp eq i32 %i.k, 0
  br i1 %.not29, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.n = call i32 @ie_match_stat(ptr noundef %i.m, ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 5) #16
  %i.o = call ptr @submodule_from_ce(ptr noundef nonnull %0) #16
  %.not30 = icmp eq ptr %i.o, null
  br i1 %.not30, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = call ptr @oid_to_hex(ptr noundef nonnull %i.p) #16
  %i.r = call fastcc i32 @check_submodule_move_head(ptr noundef nonnull %0, ptr noundef nonnull @.str.72, ptr noundef %i.q, ptr noundef nonnull %1)
  %.not32 = icmp eq i32 %i.r, 0
  br i1 %.not32, label %add_rejected_path.exit37, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !94
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.h, label %add_rejected_path.exit37

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.v = load i32, ptr %i.u, align 4, !tbaa !48
  %.not14.i = icmp eq i32 %i.v, 0
  %i.w = zext nneg i32 %2 to i64                  ; 3 uses
  br i1 %.not14.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21   ; 2 uses
  %.not16.i = icmp eq ptr %i.z, null
  br i1 %.not16.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @unpack_plumbing_errors, i64 %i.w
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ac = phi ptr [ %i.ab, %bb.j ], [ %i.z, %bb.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !101
  %i.af = call fastcc ptr @super_prefixed(ptr noundef nonnull %i.j, ptr noundef %i.ae)
  %i.ag = call i32 (ptr, ...) @error(ptr noundef %i.ac, ptr noundef %i.af) #16 ; 0 uses
  br label %add_rejected_path.exit37

bb.l:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.ah, i64 %i.w
  %i.aj = call ptr @string_list_append(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.j) #16 ; 0 uses
  br label %add_rejected_path.exit37

bb.m:                                             ; preds = %bb.e
  %.not31 = icmp eq i32 %i.n, 0
  br i1 %.not31, label %add_rejected_path.exit37, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !18
  %i.am = and i32 %i.al, 61440
  %i.an = icmp eq i32 %i.am, 57344
  br i1 %i.an, label %add_rejected_path.exit37, label %.thread

.thread:                                          ; preds = %bb.n
  %i.ao = tail call ptr @__errno_location() #20
  store i32 0, ptr %i.ao, align 4, !tbaa !18
  br label %bb.p

bb.o:                                             ; preds = %bb.d
  %.pre = tail call ptr @__errno_location() #20
  %.pr = load i32, ptr %.pre, align 4, !tbaa !18
  %i.ap = icmp eq i32 %.pr, 2
  br i1 %i.ap, label %add_rejected_path.exit37, label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !94
  %.not.i34 = icmp eq i32 %i.ar, 0
  br i1 %.not.i34, label %bb.q, label %add_rejected_path.exit37

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.at = load i32, ptr %i.as, align 4, !tbaa !48
  %.not14.i35 = icmp eq i32 %i.at, 0
  %i.au = zext nneg i32 %2 to i64                 ; 3 uses
  br i1 %.not14.i35, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21 ; 2 uses
  %.not16.i36 = icmp eq ptr %i.ax, null
  br i1 %.not16.i36, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @unpack_plumbing_errors, i64 %i.au
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !21
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ba = phi ptr [ %i.az, %bb.s ], [ %i.ax, %bb.r ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !101
  %i.bd = call fastcc ptr @super_prefixed(ptr noundef nonnull %i.j, ptr noundef %i.bc)
  %i.be = call i32 (ptr, ...) @error(ptr noundef %i.ba, ptr noundef %i.bd) #16 ; 0 uses
  br label %add_rejected_path.exit37

bb.u:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.bg = getelementptr inbounds nuw [40 x i8], ptr %i.bf, i64 %i.au
  %i.bh = call ptr @string_list_append(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.j) #16 ; 0 uses
  br label %add_rejected_path.exit37

add_rejected_path.exit37:                         ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %bb.m, %bb.n, %bb.u, %bb.t, %bb.p, %bb.o, %bb.c, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.o ], [ -1, %bb.u ], [ -1, %bb.p ], [ -1, %bb.t ], [ -1, %bb.l ], [ -1, %bb.k ], [ -1, %bb.g ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @threeway_merge(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !113  ; 6 uses
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [8 x i8], ptr %0, i64 %i.c ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74   ; 17 uses
  %2 = icmp sgt i32 %i.b, 1                       ; 4 uses
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  %i.h = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.h, 1
  %i.i = icmp eq i32 %i.b, 2
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.h, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 3 uses
  %.0177330 = phi i32 [ 1, %.lr.ph.new ], [ %.1178.1, %bb.f ] ; 2 uses
  %.0179329 = phi i32 [ 0, %.lr.ph.new ], [ %.1180.1, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !74   ; 2 uses
  %.not227 = icmp eq ptr %i.k, null
  br i1 %.not227, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.m = icmp eq ptr %i.k, %i.l                   ; 2 uses
  %spec.select230.a = select i1 %i.m, i32 1, i32 %.0179329
  %spec.select231 = select i1 %i.m, i32 %.0177330, i32 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1180 = phi i32 [ 1, %bb.b ], [ %spec.select230.a, %bb.c ]
  %.1178 = phi i32 [ %.0177330, %bb.b ], [ %spec.select231, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !74   ; 2 uses
  %.not227.1 = icmp eq ptr %i.p, null
  br i1 %.not227.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.r = icmp eq ptr %i.p, %i.q                   ; 2 uses
  %spec.select230.1.a = select i1 %i.r, i32 1, i32 %.1180
  %spec.select231.1 = select i1 %i.r, i32 %.1178, i32 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1180.1 = phi i32 [ 1, %bb.d ], [ %spec.select230.1.a, %bb.e ] ; 3 uses
  %.1178.1 = phi i32 [ %.1178, %bb.d ], [ %spec.select231.1, %bb.e ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !217

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0177330.epil.init = phi i32 [ 1, %.lr.ph ], [ %.1178.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0179329.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1180.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod395 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod395)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !74   ; 2 uses
  %.not227.epil = icmp eq ptr %i.t, null
  br i1 %.not227.epil, label %._crit_edge.loopexit, label %bb.g

bb.g:                                             ; preds = %.epil.preheader
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.v = icmp eq ptr %i.t, %i.u                   ; 2 uses
  %spec.select230.epil.a = select i1 %i.v, i32 1, i32 %.0179329.epil.init
  %spec.select231.epil = select i1 %i.v, i32 %.0177330.epil.init, i32 0
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.epil.preheader, %bb.g, %._crit_edge.loopexit.unr-lcssa
  %.1180.lcssa = phi i32 [ %.1180.1, %._crit_edge.loopexit.unr-lcssa ], [ 1, %.epil.preheader ], [ %spec.select230.epil.a, %bb.g ]
  %.1178.lcssa = phi i32 [ %.1178.1, %._crit_edge.loopexit.unr-lcssa ], [ %.0177330.epil.init, %.epil.preheader ], [ %spec.select231.epil, %bb.g ]
  %i.w = icmp eq i32 %.1180.lcssa, 0
  %i.x = icmp ne i32 %.1178.lcssa, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0179.lcssa = phi i1 [ true, %bb.a ], [ %i.w, %._crit_edge.loopexit ]
  %.0177.lcssa = phi i1 [ true, %bb.a ], [ %i.x, %._crit_edge.loopexit ]
  %i.y = load ptr, ptr %0, align 8, !tbaa !74     ; 24 uses
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !74   ; 22 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55 ; 3 uses
  %3 = icmp eq ptr %i.z, %i.ab                    ; 2 uses
  %spec.select = select i1 %3, ptr null, ptr %i.z ; 2 uses
  %i.ac = icmp ne ptr %i.f, %i.ab                 ; 2 uses
  %.0192 = select i1 %i.ac, ptr %i.f, ptr null    ; 2 uses
  %i.ad = icmp ne ptr %.0192, null                ; 14 uses
  %i.ae = icmp ne ptr %spec.select, null          ; 14 uses
  %i.af = xor i1 %i.ad, %i.ae
  br i1 %i.af, label %.preheader328, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %or.cond.i = or i1 %i.ad, %i.ae
  br i1 %or.cond.i, label %bb.i, label %same.exit.thread.thread

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !18
  %i.ak = or i32 %i.aj, %i.ah
  %i.al = and i32 %i.ak, 8388608
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %bb.j, label %.preheader328

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.an = load i32, ptr %i.am, align 4, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !18
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %same.exit, label %.preheader328

same.exit:                                        ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 72 ; 2 uses
  %i.at = load i128, ptr %i.ar, align 1
  %i.au = load i128, ptr %i.as, align 1
  %i.av = xor i128 %i.at, %i.au
  %i.aw = getelementptr i8, ptr %i.ar, i64 16
  %i.ax = getelementptr i8, ptr %i.as, i64 16
  %i.ay = load i128, ptr %i.aw, align 1
  %i.az = load i128, ptr %i.ax, align 1
  %i.ba = xor i128 %i.ay, %i.az
  %i.bb = or i128 %i.av, %i.ba
  %i.bc = icmp ne i128 %i.bb, 0                   ; 2 uses
  %i.bd = zext i1 %i.bc to i32                    ; 0 uses
  %or.cond337 = and i1 %i.bc, %2
  br i1 %or.cond337, label %.lr.ph336.a, label %same.exit.thread.thread

.preheader328:                                    ; preds = %._crit_edge, %bb.i, %bb.j
  br i1 %2, label %.lr.ph336.a, label %same.exit.thread.thread

.lr.ph336.a:                                      ; preds = %same.exit, %.preheader328
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  %i.bg = getelementptr inbounds nuw i8, ptr %i.z, i64 72 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %wide.trip.count354 = zext nneg i32 %i.b to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph336.a, %same.exit244.thread293
  %indvars.iv351 = phi i64 [ 1, %.lr.ph336.a ], [ %indvars.iv.next352, %same.exit244.thread293 ] ; 5 uses
  %.0183334 = phi i32 [ 0, %.lr.ph336.a ], [ %i.dj, %same.exit244.thread293 ] ; 6 uses
  %.0186333 = phi i32 [ 0, %.lr.ph336.a ], [ %i.di, %same.exit244.thread293 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv351
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !74 ; 7 uses
  %i.bm = icmp ne ptr %i.bl, null                 ; 4 uses
  %i.bn = xor i1 %i.ae, %i.bm
  br i1 %i.bn, label %same.exit238.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %or.cond.i233 = or i1 %i.ae, %i.bm
  %i.bo = trunc nuw nsw i64 %indvars.iv351 to i32 ; 5 uses
  br i1 %or.cond.i233, label %bb.m, label %same.exit238.thread284

same.exit238.thread284:                           ; preds = %bb.l
  br i1 %i.ad, label %same.exit244.thread293, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !18 ; 2 uses
  %i.br = load i32, ptr %i.be, align 8, !tbaa !18
  %i.bs = or i32 %i.br, %i.bq
  %i.bt = and i32 %i.bs, 8388608
  %.not.i235 = icmp eq i32 %i.bt, 0
  br i1 %.not.i235, label %bb.n, label %same.exit238.thread

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 52
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !18
  %i.bw = load i32, ptr %i.bf, align 4, !tbaa !18
  %i.bx = icmp eq i32 %i.bv, %i.bw
  br i1 %i.bx, label %same.exit238, label %same.exit238.thread

same.exit238:                                     ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 72 ; 2 uses
  %i.bz = load i128, ptr %i.by, align 1
  %i.ca = load i128, ptr %i.bg, align 1
  %i.cb = xor i128 %i.bz, %i.ca
  %i.cc = getelementptr i8, ptr %i.by, i64 16
  %i.cd = getelementptr i8, ptr %i.bg, i64 16
  %i.ce = load i128, ptr %i.cc, align 1
  %i.cf = load i128, ptr %i.cd, align 1
  %i.cg = xor i128 %i.ce, %i.cf
  %i.ch = or i128 %i.cb, %i.cg
  %i.ci = icmp ne i128 %i.ch, 0
  %i.cj = zext i1 %i.ci to i32
  %bcmp.i.i236.fr = freeze i32 %i.cj
  %.not.i.i237.not = icmp eq i32 %bcmp.i.i236.fr, 0
  br i1 %.not.i.i237.not, label %same.exit238._crit_edge, label %same.exit238.thread

same.exit238._crit_edge:                          ; preds = %same.exit238
  br i1 %i.ad, label %.thread, label %same.exit244.thread293

same.exit238.thread:                              ; preds = %bb.n, %bb.m, %bb.k, %same.exit238
  %i.ck = xor i1 %i.ad, %i.bm
  br i1 %i.ck, label %same.exit244.thread293, label %same.exit238.thread._crit_edge

same.exit238.thread._crit_edge:                   ; preds = %same.exit238.thread
  %.pre366 = trunc nuw nsw i64 %indvars.iv351 to i32
  br label %bb.o

bb.o:                                             ; preds = %same.exit238.thread._crit_edge, %same.exit238.thread284
  %.pre-phi = phi i32 [ %.pre366, %same.exit238.thread._crit_edge ], [ %i.bo, %same.exit238.thread284 ]
  %i.cl = phi i32 [ %.0186333, %same.exit238.thread._crit_edge ], [ %i.bo, %same.exit238.thread284 ] ; 2 uses
  %or.cond.i239 = or i1 %i.ad, %i.bm
  br i1 %or.cond.i239, label %..thread_crit_edge, label %same.exit244.thread293

..thread_crit_edge:                               ; preds = %bb.o
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %same.exit238._crit_edge
  %i.cm = phi i32 [ %.pre, %..thread_crit_edge ], [ %i.bq, %same.exit238._crit_edge ]
  %i.cn = phi i32 [ %i.cl, %..thread_crit_edge ], [ %i.bo, %same.exit238._crit_edge ] ; 3 uses
  %i.co = load i32, ptr %i.bh, align 8, !tbaa !18
  %i.cp = or i32 %i.co, %i.cm
  %i.cq = and i32 %i.cp, 8388608
  %.not.i241 = icmp eq i32 %i.cq, 0
  br i1 %.not.i241, label %bb.p, label %same.exit244.thread293

bb.p:                                             ; preds = %.thread
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bl, i64 52
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !18
  %i.ct = load i32, ptr %i.bi, align 4, !tbaa !18
  %i.cu = icmp eq i32 %i.cs, %i.ct
  br i1 %i.cu, label %same.exit244, label %same.exit244.thread293

same.exit244:                                     ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bl, i64 72 ; 2 uses
  %i.cw = load i128, ptr %i.cv, align 1
  %i.cx = load i128, ptr %i.bj, align 1
  %i.cy = xor i128 %i.cw, %i.cx
  %i.cz = getelementptr i8, ptr %i.cv, i64 16
  %i.da = getelementptr i8, ptr %i.bj, i64 16
  %i.db = load i128, ptr %i.cz, align 1
  %i.dc = load i128, ptr %i.da, align 1
  %i.dd = xor i128 %i.db, %i.dc
  %i.de = or i128 %i.cy, %i.dd
  %i.df = icmp ne i128 %i.de, 0
  %i.dg = zext i1 %i.df to i32
  %bcmp.i.i242.fr = freeze i32 %i.dg
  %.not.i.i243.not = icmp eq i32 %bcmp.i.i242.fr, 0
  %i.dh = trunc nuw nsw i64 %indvars.iv351 to i32
  %spec.select324 = select i1 %.not.i.i243.not, i32 %i.dh, i32 %.0183334
  br label %same.exit244.thread293

same.exit244.thread293:                           ; preds = %same.exit244, %same.exit238._crit_edge, %same.exit238.thread284, %bb.p, %.thread, %same.exit238.thread, %bb.o
  %i.di = phi i32 [ %.0186333, %same.exit238.thread ], [ %i.cn, %same.exit244 ], [ %i.cl, %bb.o ], [ %i.bo, %same.exit238._crit_edge ], [ %i.bo, %same.exit238.thread284 ], [ %i.cn, %bb.p ], [ %i.cn, %.thread ] ; 2 uses
  %i.dj = phi i32 [ %.0183334, %same.exit238.thread ], [ %spec.select324, %same.exit244 ], [ %.pre-phi, %bb.o ], [ %.0183334, %same.exit238._crit_edge ], [ %.0183334, %same.exit238.thread284 ], [ %.0183334, %bb.p ], [ %.0183334, %.thread ] ; 2 uses
  %indvars.iv.next352 = add nuw nsw i64 %indvars.iv351, 1 ; 2 uses
  %exitcond355.not = icmp eq i64 %indvars.iv.next352, %wide.trip.count354
  br i1 %exitcond355.not, label %._crit_edge337, label %bb.k, !llvm.loop !218

same.exit.thread.thread:                          ; preds = %bb.h, %same.exit, %.preheader328
  %.not368 = xor i1 %i.ad, true
  br label %.thread297

._crit_edge337:                                   ; preds = %same.exit244.thread293
  %i.dk = icmp ne i32 %i.di, 0                    ; 2 uses
  %i.dl = icmp ne i32 %i.dj, 0                    ; 2 uses
  %.not = xor i1 %i.ad, true                      ; 2 uses
  %or.cond = or i1 %3, %.not
  %or.cond3.not.a = xor i1 %i.dk, true
  %or.cond3.not = select i1 %or.cond, i1 true, i1 %or.cond3.not.a
  %or.cond5 = select i1 %or.cond3.not, i1 true, i1 %i.dl
  br i1 %or.cond5, label %.thread297, label %bb.q

bb.q:                                             ; preds = %._crit_edge337
  %.not211 = icmp eq ptr %i.y, null
  br i1 %.not211, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dm = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !18 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !18
  %i.dq = or i32 %i.dp, %i.dn
  %i.dr = and i32 %i.dq, 8388608
  %.not.i247 = icmp eq i32 %i.dr, 0
  br i1 %.not.i247, label %bb.s, label %same.exit250.thread

bb.s:                                             ; preds = %bb.r
  %i.ds = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !18
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !18
  %i.dw = icmp eq i32 %i.dt, %i.dv
  br i1 %i.dw, label %same.exit250, label %same.exit250.thread

same.exit250:                                     ; preds = %bb.s
  %i.dx = getelementptr inbounds nuw i8, ptr %i.y, i64 72 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.dz = load i128, ptr %i.dx, align 1
  %i.ea = load i128, ptr %i.dy, align 1
  %i.eb = xor i128 %i.dz, %i.ea
  %i.ec = getelementptr i8, ptr %i.dx, i64 16
  %i.ed = getelementptr i8, ptr %i.dy, i64 16
  %i.ee = load i128, ptr %i.ec, align 1
  %i.ef = load i128, ptr %i.ed, align 1
  %i.eg = xor i128 %i.ee, %i.ef
  %i.eh = or i128 %i.eb, %i.eg
  %i.ei = icmp ne i128 %i.eh, 0
  %i.ej = zext i1 %i.ei to i32
  %.not.i.i249.not = icmp eq i32 %i.ej, 0
  br i1 %.not.i.i249.not, label %bb.aa, label %same.exit250.thread

same.exit250.thread:                              ; preds = %bb.r, %bb.s, %same.exit250
  br i1 %i.ae, label %bb.t, label %same.exit256.thread

bb.t:                                             ; preds = %same.exit250.thread
  %i.ek = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !18
  %i.em = or i32 %i.el, %i.dn
  %i.en = and i32 %i.em, 8388608
  %.not.i253 = icmp eq i32 %i.en, 0
  br i1 %.not.i253, label %bb.u, label %same.exit256.thread

bb.u:                                             ; preds = %bb.t
  %i.eo = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !18
  %i.eq = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !18
  %i.es = icmp eq i32 %i.ep, %i.er
  br i1 %i.es, label %same.exit256, label %same.exit256.thread

same.exit256:                                     ; preds = %bb.u
  %i.et = getelementptr inbounds nuw i8, ptr %i.y, i64 72 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.z, i64 72 ; 2 uses
  %i.ev = load i128, ptr %i.et, align 1
  %i.ew = load i128, ptr %i.eu, align 1
  %i.ex = xor i128 %i.ev, %i.ew
  %i.ey = getelementptr i8, ptr %i.et, i64 16
  %i.ez = getelementptr i8, ptr %i.eu, i64 16
  %i.fa = load i128, ptr %i.ey, align 1
  %i.fb = load i128, ptr %i.ez, align 1
  %i.fc = xor i128 %i.fa, %i.fb
  %i.fd = or i128 %i.ex, %i.fc
  %i.fe = icmp ne i128 %i.fd, 0
  %i.ff = zext i1 %i.fe to i32
  %.not.i.i255.not = icmp eq i32 %i.ff, 0
  br i1 %.not.i.i255.not, label %bb.aa, label %same.exit256.thread

same.exit256.thread:                              ; preds = %bb.u, %bb.t, %same.exit250.thread, %same.exit256
  %i.fg = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !18
  %i.fi = icmp eq i32 %i.fh, 16384
  br i1 %i.fi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %same.exit256.thread
  %i.fj = tail call fastcc i32 @merged_sparse_dir(ptr noundef nonnull %0, i32 noundef 4, ptr noundef %1)
  br label %reject_merge.exit

bb.w:                                             ; preds = %same.exit256.thread
  %i.fk = getelementptr inbounds nuw i8, ptr %i.y, i64 108 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !94
  %.not.i.i257 = icmp eq i32 %i.fm, 0
  br i1 %.not.i.i257, label %bb.x, label %reject_merge.exit

bb.x:                                             ; preds = %bb.w
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !48
  %.not14.i.i = icmp eq i32 %i.fo, 0
  br i1 %.not14.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !21 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.fq, null
  %spec.select.i = select i1 %.not16.i.i, ptr @.str.84, ptr %i.fq
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !101
  %i.ft = tail call fastcc ptr @super_prefixed(ptr noundef nonnull %i.fk, ptr noundef %i.fs)
  %i.fu = tail call i32 (ptr, ...) @error(ptr noundef nonnull %spec.select.i, ptr noundef %i.ft) #16 ; 0 uses
  br label %reject_merge.exit

bb.z:                                             ; preds = %bb.x
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.fw = tail call ptr @string_list_append(ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fk) #16 ; 0 uses
  br label %reject_merge.exit

bb.aa:                                            ; preds = %same.exit256, %same.exit250, %bb.q
  %i.fx = tail call fastcc i32 @merged_entry(ptr noundef nonnull %i.f, ptr noundef %i.y, ptr noundef %1)
  br label %reject_merge.exit

.thread297:                                       ; preds = %same.exit.thread.thread, %._crit_edge337
  %.not375 = phi i1 [ %.not368, %same.exit.thread.thread ], [ %.not, %._crit_edge337 ] ; 2 uses
  %.2185374 = phi i1 [ false, %same.exit.thread.thread ], [ %i.dl, %._crit_edge337 ] ; 3 uses
  %.2188373 = phi i1 [ false, %same.exit.thread.thread ], [ %i.dk, %._crit_edge337 ] ; 3 uses
  %.not214 = icmp ne ptr %i.y, null               ; 5 uses
  br i1 %.not214, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %.thread297
  br i1 %i.ae, label %bb.ac, label %same.exit263.thread

bb.ac:                                            ; preds = %bb.ab
  %i.fy = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !18
  %i.ga = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !18
  %i.gc = or i32 %i.gb, %i.fz
  %i.gd = and i32 %i.gc, 8388608
  %.not.i260 = icmp eq i32 %i.gd, 0
  br i1 %.not.i260, label %bb.ad, label %same.exit263.thread

bb.ad:                                            ; preds = %bb.ac
  %i.ge = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !18
  %i.gg = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !18
  %i.gi = icmp eq i32 %i.gf, %i.gh
  br i1 %i.gi, label %same.exit263, label %same.exit263.thread

same.exit263:                                     ; preds = %bb.ad
  %i.gj = getelementptr inbounds nuw i8, ptr %i.y, i64 72 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.z, i64 72 ; 2 uses
  %i.gl = load i128, ptr %i.gj, align 1
  %i.gm = load i128, ptr %i.gk, align 1
  %i.gn = xor i128 %i.gl, %i.gm
  %i.go = getelementptr i8, ptr %i.gj, i64 16
  %i.gp = getelementptr i8, ptr %i.gk, i64 16
  %i.gq = load i128, ptr %i.go, align 1
  %i.gr = load i128, ptr %i.gp, align 1
  %i.gs = xor i128 %i.gq, %i.gr
  %i.gt = or i128 %i.gn, %i.gs
  %i.gu = icmp ne i128 %i.gt, 0
  %i.gv = zext i1 %i.gu to i32
  %.not.i.i262.not = icmp eq i32 %i.gv, 0
  br i1 %.not.i.i262.not, label %.thread310, label %same.exit263.thread

same.exit263.thread:                              ; preds = %bb.ad, %bb.ac, %bb.ab, %same.exit263
  %i.gw = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !18
  %i.gy = icmp eq i32 %i.gx, 16384
  br i1 %i.gy, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %same.exit263.thread
  %i.gz = tail call fastcc i32 @merged_sparse_dir(ptr noundef nonnull %0, i32 noundef 4, ptr noundef %1)
  br label %reject_merge.exit

bb.af:                                            ; preds = %same.exit263.thread
  %i.ha = getelementptr inbounds nuw i8, ptr %i.y, i64 108 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !94
  %.not.i.i264 = icmp eq i32 %i.hc, 0
  br i1 %.not.i.i264, label %bb.ag, label %reject_merge.exit

bb.ag:                                            ; preds = %bb.af
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !48
  %.not14.i.i265 = icmp eq i32 %i.he, 0
  br i1 %.not14.i.i265, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !21 ; 2 uses
  %.not16.i.i266 = icmp eq ptr %i.hg, null
  %spec.select.i267 = select i1 %.not16.i.i266, ptr @.str.84, ptr %i.hg
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !101
  %i.hj = tail call fastcc ptr @super_prefixed(ptr noundef nonnull %i.ha, ptr noundef %i.hi)
  %i.hk = tail call i32 (ptr, ...) @error(ptr noundef nonnull %spec.select.i267, ptr noundef %i.hj) #16 ; 0 uses
  br label %reject_merge.exit

bb.ai:                                            ; preds = %bb.ag
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.hm = tail call ptr @string_list_append(ptr noundef nonnull %i.hl, ptr noundef nonnull %i.ha) #16 ; 0 uses
  br label %reject_merge.exit

bb.aj:                                            ; preds = %.thread297
  br i1 %i.ae, label %.thread310, label %bb.ao

.thread310:                                       ; preds = %same.exit263, %bb.aj
  br i1 %i.ad, label %bb.ak, label %same.exit274.thread

bb.ak:                                            ; preds = %.thread310
  %i.hn = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !18
  %i.hp = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !18
  %i.hr = or i32 %i.hq, %i.ho
  %i.hs = and i32 %i.hr, 8388608
  %.not.i271 = icmp eq i32 %i.hs, 0
  br i1 %.not.i271, label %bb.al, label %same.exit274.thread

bb.al:                                            ; preds = %bb.ak
  %i.ht = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !18
  %i.hv = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !18
  %i.hx = icmp eq i32 %i.hu, %i.hw
  br i1 %i.hx, label %same.exit274, label %same.exit274.thread

same.exit274:                                     ; preds = %bb.al
  %i.hy = getelementptr inbounds nuw i8, ptr %i.z, i64 72 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.ia = load i128, ptr %i.hy, align 1
  %i.ib = load i128, ptr %i.hz, align 1
  %i.ic = xor i128 %i.ia, %i.ib
  %i.id = getelementptr i8, ptr %i.hy, i64 16
  %i.ie = getelementptr i8, ptr %i.hz, i64 16
  %i.if = load i128, ptr %i.id, align 1
  %i.ig = load i128, ptr %i.ie, align 1
  %i.ih = xor i128 %i.if, %i.ig
  %i.ii = or i128 %i.ic, %i.ih
  %i.ij = icmp ne i128 %i.ii, 0
  %i.ik = zext i1 %i.ij to i32
  %.not.i.i273.not = icmp eq i32 %i.ik, 0
  br i1 %.not.i.i273.not, label %bb.am, label %same.exit274.thread

bb.am:                                            ; preds = %same.exit274
  %i.il = tail call fastcc i32 @merged_entry(ptr noundef nonnull %i.z, ptr noundef %i.y, ptr noundef %1)
  br label %reject_merge.exit

same.exit274.thread:                              ; preds = %bb.al, %bb.ak, %.thread310, %same.exit274
  %or.cond7 = select i1 %i.ac, i1 %.2185374, i1 false
  %or.cond7.not = xor i1 %or.cond7, true
  %or.cond9 = select i1 %or.cond7.not, i1 true, i1 %.2188373
  br i1 %or.cond9, label %.thread313, label %bb.an

bb.an:                                            ; preds = %same.exit274.thread
  %i.im = tail call fastcc i32 @merged_entry(ptr noundef nonnull %i.z, ptr noundef %i.y, ptr noundef %1)
  br label %reject_merge.exit

bb.ao:                                            ; preds = %bb.aj
  %or.cond13.not = select i1 %i.ad, i1 true, i1 %.0179.lcssa
  br i1 %or.cond13.not, label %.thread313, label %reject_merge.exit

.thread313:                                       ; preds = %same.exit274.thread, %bb.ao
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.io = load i32, ptr %i.in, align 4, !tbaa !221
  %.not218.a = icmp eq i32 %i.io, 0
  br i1 %.not218.a, label %bb.az, label %bb.ap

bb.ap:                                            ; preds = %.thread313
  %i.ip = xor i1 %i.ae, true                      ; 2 uses
  %brmerge = or i1 %.not214, %i.ae
  %brmerge232 = or i1 %i.ad, %brmerge             ; 2 uses
  %.mux = select i1 %i.ae, ptr %spec.select, ptr %.0192
  %.mux.mux = select i1 %.not214, ptr %i.y, ptr %.mux
  %.not379 = xor i1 %2, true
  %brmerge386 = or i1 %brmerge232, %.not379
  %.mux.mux.mux = select i1 %brmerge232, ptr %.mux.mux, ptr null
  br i1 %brmerge386, label %.loopexit327, label %.lr.ph341.preheader

.lr.ph341.preheader:                              ; preds = %bb.ap
  %wide.trip.count359 = zext nneg i32 %i.b to i64
  br label %.lr.ph341

bb.aq:                                            ; preds = %.lr.ph341
  %indvars.iv.next357 = add nuw nsw i64 %indvars.iv356, 1 ; 2 uses
  %exitcond360.not = icmp eq i64 %indvars.iv.next357, %wide.trip.count359
  br i1 %exitcond360.not, label %.loopexit327, label %.lr.ph341, !llvm.loop !219

.lr.ph341:                                        ; preds = %.lr.ph341.preheader, %bb.aq
  %indvars.iv356 = phi i64 [ 1, %.lr.ph341.preheader ], [ %indvars.iv.next357, %bb.aq ] ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv356
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !74 ; 3 uses
  %.not219.a = icmp eq ptr %i.ir, null
  %.not220 = icmp eq ptr %i.ir, %i.ab
  %or.cond325 = or i1 %.not219.a, %.not220
  br i1 %or.cond325, label %bb.aq, label %.loopexit327

.loopexit327:                                     ; preds = %bb.aq, %.lr.ph341, %bb.ap
  %.0 = phi ptr [ %.mux.mux.mux, %bb.ap ], [ null, %bb.aq ], [ %i.ir, %.lr.ph341 ] ; 3 uses
  %or.cond15 = and i1 %.not375, %i.ip
  %or.cond17 = and i1 %i.ad, %i.ip
  %or.cond19 = select i1 %or.cond17, i1 %.2185374, i1 false
  %or.cond.a = select i1 %or.cond15, i1 true, i1 %or.cond19
  %or.cond21 = and i1 %i.ae, %.not375
  %or.cond23 = select i1 %or.cond21, i1 %.2188373, i1 false
  %or.cond229 = select i1 %or.cond.a, i1 true, i1 %or.cond23
  br i1 %or.cond229, label %bb.ar, label %bb.aw

bb.ar:                                            ; preds = %.loopexit327
  br i1 %.not214, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.is = tail call fastcc i32 @deleted_entry(ptr noundef nonnull %i.y, ptr noundef nonnull %i.y, ptr noundef %1)
  br label %reject_merge.exit

bb.at:                                            ; preds = %bb.ar
  %i.it = icmp ne ptr %.0, null
  %or.cond25.not = and i1 %i.ae, %i.it
  br i1 %or.cond25.not, label %bb.au, label %verify_absent.exit.thread

bb.au:                                            ; preds = %bb.at
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !68
  %.not.i275 = icmp eq i32 %i.iv, 0
  br i1 %.not.i275, label %bb.av, label %verify_absent.exit

bb.av:                                            ; preds = %bb.au
  %i.iw = getelementptr inbounds nuw i8, ptr %.0, i64 56
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !18
  %i.iy = and i32 %i.ix, 33554432
  %.not5.i = icmp eq i32 %i.iy, 0
  br i1 %.not5.i, label %verify_absent.exit, label %verify_absent.exit.thread

verify_absent.exit:                               ; preds = %bb.au, %bb.av
  %i.iz = tail call fastcc i32 @verify_absent_1(ptr noundef nonnull %.0, i32 noundef 5, i32 noundef 0, ptr noundef nonnull %1)
  %.not223.a = icmp eq i32 %i.iz, 0
  br i1 %.not223.a, label %verify_absent.exit.thread, label %reject_merge.exit

verify_absent.exit.thread:                        ; preds = %bb.av, %verify_absent.exit, %bb.at
  br label %reject_merge.exit

bb.aw:                                            ; preds = %.loopexit327
  %or.cond27 = and i1 %.0177.lcssa, %i.ae
  %or.cond29 = and i1 %i.ad, %or.cond27
  br i1 %or.cond29, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.ja = tail call fastcc i32 @same(ptr noundef nonnull %i.z, ptr noundef nonnull %i.f)
  %.not221 = icmp eq i32 %i.ja, 0
  br i1 %.not221, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jb = tail call fastcc i32 @merged_entry(ptr noundef nonnull %i.z, ptr noundef %i.y, ptr noundef %1)
  br label %reject_merge.exit

bb.az:                                            ; preds = %bb.ax, %bb.aw, %.thread313
  br i1 %.not214, label %bb.ba, label %verify_uptodate.exit.thread

bb.ba:                                            ; preds = %bb.az
  %i.jc = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !18
  %i.je = icmp eq i32 %i.jd, 16384
  br i1 %i.je, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.jf = tail call fastcc i32 @merged_sparse_dir(ptr noundef nonnull %0, i32 noundef 4, ptr noundef %1)
  br label %reject_merge.exit

bb.bc:                                            ; preds = %bb.ba
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !68
  %.not.i277 = icmp eq i32 %i.jh, 0
  br i1 %.not.i277, label %bb.bd, label %verify_uptodate.exit

bb.bd:                                            ; preds = %bb.bc
  %i.ji = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !18
  %i.jk = and i32 %i.jj, 1107296256
  %or.cond.not.i = icmp eq i32 %i.jk, 1107296256
  br i1 %or.cond.not.i, label %verify_uptodate.exit.thread, label %verify_uptodate.exit

verify_uptodate.exit:                             ; preds = %bb.bc, %bb.bd
  %i.jl = tail call fastcc i32 @verify_uptodate_1(ptr noundef nonnull %i.y, ptr noundef nonnull %1, i32 noundef 1)
  %.not224.a = icmp eq i32 %i.jl, 0
  br i1 %.not224.a, label %verify_uptodate.exit.thread, label %reject_merge.exit

verify_uptodate.exit.thread:                      ; preds = %bb.bd, %verify_uptodate.exit, %bb.az
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i32 1, ptr %i.jm, align 8, !tbaa !93
  %or.cond31 = select i1 %.2188373, i1 %.2185374, i1 false
  br i1 %or.cond31, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %verify_uptodate.exit.thread
  %i.jn = load i32, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.jo = icmp sgt i32 %i.jn, 1
  br i1 %i.jo, label %.lr.ph346.preheader, label %.loopexit

.lr.ph346.preheader:                              ; preds = %.preheader
  %wide.trip.count364 = zext nneg i32 %i.jn to i64
  br label %.lr.ph346

.lr.ph346:                                        ; preds = %.lr.ph346.preheader, %bb.bg
  %indvars.iv361 = phi i64 [ 1, %.lr.ph346.preheader ], [ %indvars.iv.next362, %bb.bg ] ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv361
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !74 ; 3 uses
  %.not225 = icmp eq ptr %i.jq, null
  br i1 %.not225, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %.lr.ph346
  %i.jr = load ptr, ptr %i.aa, align 8, !tbaa !55
  %.not226 = icmp eq ptr %i.jq, %i.jr
  br i1 %.not226, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call fastcc void @keep_entry(ptr noundef nonnull %i.jq, ptr noundef nonnull %1)
  br label %.loopexit

bb.bg:                                            ; preds = %.lr.ph346, %bb.be
  %indvars.iv.next362 = add nuw nsw i64 %indvars.iv361, 1 ; 2 uses
  %exitcond365.not = icmp eq i64 %indvars.iv.next362, %wide.trip.count364
  br i1 %exitcond365.not, label %.loopexit, label %.lr.ph346, !llvm.loop !220

.loopexit:                                        ; preds = %bb.bg, %.preheader, %bb.bf, %verify_uptodate.exit.thread
  %.0189 = phi i32 [ 0, %verify_uptodate.exit.thread ], [ 1, %bb.bf ], [ 0, %.preheader ], [ 0, %bb.bg ] ; 2 uses
  br i1 %i.ae, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.loopexit
  tail call fastcc void @keep_entry(ptr noundef nonnull %i.z, ptr noundef nonnull %1)
  %i.js = add nuw nsw i32 %.0189, 1
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.loopexit
  %.1190 = phi i32 [ %i.js, %bb.bh ], [ %.0189, %.loopexit ] ; 2 uses
  br i1 %i.ad, label %bb.bj, label %reject_merge.exit

bb.bj:                                            ; preds = %bb.bi
  tail call fastcc void @keep_entry(ptr noundef nonnull %i.f, ptr noundef nonnull %1)
  %i.jt = add nuw nsw i32 %.1190, 1
  br label %reject_merge.exit

reject_merge.exit:                                ; preds = %bb.ay, %verify_absent.exit, %verify_absent.exit.thread, %bb.as, %bb.ai, %bb.ah, %bb.af, %bb.z, %bb.y, %bb.w, %bb.bi, %bb.bj, %verify_uptodate.exit, %bb.ao, %bb.bb, %bb.an, %bb.am, %bb.ae, %bb.aa, %bb.v
  %.1195 = phi i32 [ %i.il, %bb.am ], [ %.1190, %bb.bi ], [ %i.jf, %bb.bb ], [ 0, %bb.ao ], [ -1, %verify_uptodate.exit ], [ -1, %bb.ai ], [ %i.im, %bb.an ], [ %i.gz, %bb.ae ], [ -1, %bb.z ], [ %i.fx, %bb.aa ], [ %i.fj, %bb.v ], [ %i.jt, %bb.bj ], [ -1, %bb.w ], [ -1, %bb.y ], [ -1, %bb.af ], [ -1, %bb.ah ], [ %i.jb, %bb.ay ], [ -1, %verify_absent.exit ], [ 0, %verify_absent.exit.thread ], [ %i.is, %bb.as ]
  ret i32 %.1195
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @same(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #7 {
bb.a:
  %i.a = icmp ne ptr %0, null                     ; 2 uses
  %i.b = icmp ne ptr %1, null                     ; 2 uses
  %i.c = xor i1 %i.a, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load i32, ptr %i.f, align 8, !tbaa !18
  %i.h = or i32 %i.g, %i.e
  %i.i = and i32 %i.h, 8388608
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = load i32, ptr %i.j, align 4, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !18
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.q = load i128, ptr %i.o, align 1
  %i.r = load i128, ptr %i.p, align 1
  %i.s = xor i128 %i.q, %i.r
  %i.t = getelementptr i8, ptr %i.o, i64 16
  %i.u = getelementptr i8, ptr %i.p, i64 16
  %i.v = load i128, ptr %i.t, align 1
  %i.w = load i128, ptr %i.u, align 1
  %i.x = xor i128 %i.v, %i.w
  %i.y = or i128 %i.s, %i.x
  %i.z = icmp ne i128 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not.i = icmp eq i32 %i.aa, 0
  %i.ab = zext i1 %.not.i to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.ab, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @merged_sparse_dir(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 3, 5) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca [9 x %struct.tree_desc], align 16   ; 4 uses
  %i.a = alloca [9 x ptr], align 16               ; 4 uses
  %4 = alloca %struct.traverse_info, align 8      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.b = load ptr, ptr %0, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  call void @setup_traverse_info(ptr noundef nonnull %4, ptr noundef nonnull %i.c) #16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr @unpack_sparse_callback, ptr %i.d, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %2, ptr %i.e, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 228
  %i.g = load i32, ptr %i.f, align 4, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i32 %i.g, ptr %i.h, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.j, ptr %i.k, align 8, !tbaa !82
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %3, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !74   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72 ; 3 uses
  %i.t = load i128, ptr %i.s, align 1
  %i.u = getelementptr i8, ptr %i.s, i64 16
  %i.v = load i128, ptr %i.u, align 1
  %i.w = or i128 %i.t, %i.v
  %i.x = icmp ne i128 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %.not.i.not = icmp eq i32 %i.y, 0
  %spec.select = select i1 %.not.i.not, ptr null, ptr %i.s
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = phi ptr [ null, %bb.b ], [ %spec.select, %bb.c ]
  %i.aa = call ptr @fill_tree_descriptor(ptr noundef %i.o, ptr noundef nonnull %i.p, ptr noundef %i.z) #16
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !95
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !222

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.ad = call i32 @traverse_trees(ptr noundef %i.ac, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.f
  %indvars.iv28 = phi i64 [ 0, %bb.e ], [ %indvars.iv.next29, %bb.f ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv28
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !95
  call void @free(ptr noundef %i.af) #16
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count
  br i1 %exitcond32.not, label %bb.g, label %bb.f, !llvm.loop !223

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i32 %i.ad
}

; Function Attrs: nounwind uwtable
define internal fastcc void @reject_merge(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !94
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %add_rejected_path.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 228
end_hunk_0
