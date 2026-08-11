inline.NumInlined: 98
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@get_reachable_subset:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.164, i64 8 ; 2 uses
  %i.v = icmp ult ptr %i.u, %i.c
  br i1 %i.v, label %.lr.ph65, label %.preheader, !llvm.loop !109

.loopexit:                                        ; preds = %bb.l, %bb.i
  %.not = icmp eq i32 %.3, 0
  br i1 %.not, label %.critedge, label %bb.f, !llvm.loop !110

bb.f:                                             ; preds = %.lr.ph72, %.loopexit
  %.271 = phi i32 [ %.049.lcssa, %.lr.ph72 ], [ %.3, %.loopexit ] ; 2 uses
  %i.w = call ptr @prio_queue_get(ptr noundef nonnull %5) #12 ; 5 uses
  %.not53 = icmp eq ptr %i.w, null
  br i1 %.not53, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = lshr i64 %i.x, 32
  %i.z = trunc nuw i64 %i.y to i32                ; 2 uses
  %i.aa = and i32 %i.z, 65536
  %.not54 = icmp eq i32 %i.aa, 0
  br i1 %.not54, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = and i32 %i.z, 536805375
  %i.ac = or i32 %i.ab, %.masked
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 32
  %i.af = and i64 %i.x, -2305843004918726657
  %i.ag = or disjoint i64 %i.ae, %i.af
  store i64 %i.ag, ptr %i.w, align 8
  %i.ah = call ptr @commit_list_insert(ptr noundef nonnull %i.w, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.ai = add nsw i32 %.271, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3 = phi i32 [ %i.ai, %bb.h ], [ %.271, %bb.g ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %.04666 = load ptr, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %.not5567 = icmp eq ptr %.04666, null
  br i1 %.not5567, label %.loopexit, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.i, %bb.l
  %.04668 = phi ptr [ %.046, %bb.l ], [ %.04666, %bb.i ] ; 2 uses
  %i.ak = load ptr, ptr %.04668, align 8, !tbaa !12 ; 5 uses
  %i.al = load ptr, ptr @the_repository, align 8, !tbaa !19
  %i.am = call i32 @repo_parse_commit_gently(ptr noundef %i.al, ptr noundef %i.ak, i32 noundef 0) #12 ; 0 uses
  %i.an = call i64 @commit_graph_generation(ptr noundef %i.ak) #12
  %i.ao = icmp ult i64 %i.an, %.047.lcssa
  br i1 %i.ao, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph69
  %i.ap = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.aq = and i64 %i.ap, 562949953421312
  %.not56 = icmp eq i64 %i.aq, 0
  br i1 %.not56, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = or disjoint i64 %i.ap, 562949953421312
  store i64 %i.ar, ptr %i.ak, align 8
  call void @prio_queue_put(ptr noundef nonnull %5, ptr noundef nonnull %i.ak) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %.lr.ph69, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %.04668, i64 8
  %.046 = load ptr, ptr %i.as, align 8, !tbaa !18 ; 2 uses
  %.not55 = icmp eq ptr %.046, null
  br i1 %.not55, label %.loopexit, label %.lr.ph69, !llvm.loop !111

.critedge:                                        ; preds = %bb.f, %.loopexit, %.preheader
  call void @clear_prio_queue(ptr noundef nonnull %5) #12
  call void @clear_commit_marks_many(i64 noundef %3, ptr noundef %2, i32 noundef 65536) #12
  call void @clear_commit_marks_many(i64 noundef %1, ptr noundef %0, i32 noundef 131072) #12
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %i.at
}

declare i32 @compare_commits_by_gen_then_commit_date(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @prio_queue_put(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @prio_queue_get(ptr noundef) local_unnamed_addr #2

declare void @clear_prio_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ahead_behind(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.nonstale_queue, align 8     ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @__const.paint_down_to_common.queue, i64 56, i1 false)
  %i.a = icmp ne i64 %2, 0
  %i.b = icmp ne i64 %4, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader126.preheader, label %bb.aj

.preheader126.preheader:                          ; preds = %bb.a
  %xtraiter = and i64 %4, 3                       ; 3 uses
  %i.c = icmp ult i64 %4, 4
  br i1 %i.c, label %.preheader126.epil.preheader, label %.preheader126.preheader.new

.preheader126.preheader.new:                      ; preds = %.preheader126.preheader
  %unroll_iter = and i64 %4, -4
  br label %.preheader126

.unr-lcssa:                                       ; preds = %.preheader126
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader126.epil.preheader

.preheader126.epil.preheader:                     ; preds = %.unr-lcssa, %.preheader126.preheader
  %.059127.epil.init = phi i64 [ 0, %.preheader126.preheader ], [ %i.y, %.unr-lcssa ]
  %lcmp.mod222 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod222)
  br label %.preheader126.epil

.preheader126.epil:                               ; preds = %.preheader126.epil, %.preheader126.epil.preheader
  %.059127.epil = phi i64 [ %i.g, %.preheader126.epil ], [ %.059127.epil.init, %.preheader126.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader126.epil ], [ 0, %.preheader126.epil.preheader ]
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %.059127.epil ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !112
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %i.f, align 4, !tbaa !114
  %i.g = add nuw i64 %.059127.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader126.epil, !llvm.loop !115

.epilog-lcssa:                                    ; preds = %.preheader126.epil, %.unr-lcssa
  tail call void @ensure_generations_valid(ptr noundef %0, ptr noundef %1, i64 noundef %2) #12
  store i32 0, ptr @bit_arrays.2, align 8, !tbaa !116
  store ptr null, ptr @bit_arrays.3, align 8, !tbaa !120
  %i.h = shl i64 %2, 26
  %i.i = add i64 %i.h, 4227858432
  %i.j = ashr i64 %i.i, 32                        ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.b

.preheader126:                                    ; preds = %.preheader126, %.preheader126.preheader.new
  %.059127 = phi i64 [ 0, %.preheader126.preheader.new ], [ %i.y, %.preheader126 ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader126.preheader.new ], [ %niter.next.3, %.preheader126 ]
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %.059127 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 0, ptr %i.n, align 8, !tbaa !112
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  store i32 0, ptr %i.o, align 4, !tbaa !114
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %.059127 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i32 0, ptr %i.q, align 8, !tbaa !112
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  store i32 0, ptr %i.r, align 4, !tbaa !114
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %.059127 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store i32 0, ptr %i.t, align 8, !tbaa !112
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 68
  store i32 0, ptr %i.u, align 4, !tbaa !114
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %.059127 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  store i32 0, ptr %i.w, align 8, !tbaa !112
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 92
  store i32 0, ptr %i.x, align 4, !tbaa !114
  %i.y = add nuw i64 %.059127, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader126, !llvm.loop !121

.preheader:                                       ; preds = %insert_no_dup.exit
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !49
  %.not133 = icmp eq ptr %i.z, null
  br i1 %.not133, label %._crit_edge135, label %.lr.ph134

bb.b:                                             ; preds = %.epilog-lcssa, %insert_no_dup.exit
  %.060128 = phi i64 [ 0, %.epilog-lcssa ], [ %i.bs, %insert_no_dup.exit ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.060128
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21 ; 8 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 72
  %.val67 = load i32, ptr %i.ac, align 8, !tbaa !86 ; 2 uses
  %i.ad = udiv i32 %.val67, 65532                 ; 6 uses
  %i.ae = urem i32 %.val67, 65532
  %i.af = load i32, ptr @bit_arrays.2, align 8, !tbaa !116
  %.not.i.i.i = icmp ugt i32 %i.af, %i.ad
  %.pre.i.i.i = load ptr, ptr @bit_arrays.3, align 8, !tbaa !120 ; 2 uses
  br i1 %.not.i.i.i, label %bb.c, label %st_mult.exit.i.i.i

st_mult.exit.i.i.i:                               ; preds = %bb.b
  %i.ag = add nuw nsw i32 %i.ad, 1                ; 2 uses
  %i.ah = shl nuw nsw i32 %i.ag, 3
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = call ptr @xrealloc(ptr noundef %.pre.i.i.i, i64 noundef %i.ai) #12 ; 4 uses
  store ptr %i.aj, ptr @bit_arrays.3, align 8, !tbaa !120
  %i.ak = load i32, ptr @bit_arrays.2, align 8, !tbaa !116 ; 5 uses
  %.not332.i.i.i = icmp ugt i32 %i.ak, %i.ad
  br i1 %.not332.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %st_mult.exit.i.i.i
  %6 = sub nuw i32 %i.ad, %i.ak                   ; 2 uses
  %7 = add nuw nsw i32 %6, 1                      ; 2 uses
  %min.iters.check = icmp samesign ult i32 %6, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader221, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i32 %7, 262140                     ; 3 uses
  %i.al = add i32 %i.ak, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = add i32 %i.ak, %index
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.ao, align 8, !tbaa !122
  store <2 x ptr> splat (ptr null), ptr %i.ap, align 8, !tbaa !122
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.aq = icmp eq i32 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %7, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader221

.lr.ph.i.i.i.preheader221:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.0303.i.i.i.ph = phi i32 [ %i.ak, %.lr.ph.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader221, %.lr.ph.i.i.i
  %.0303.i.i.i = phi i32 [ %i.at, %.lr.ph.i.i.i ], [ %.0303.i.i.i.ph, %.lr.ph.i.i.i.preheader221 ] ; 2 uses
  %i.ar = zext i32 %.0303.i.i.i to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ar
  store ptr null, ptr %i.as, align 8, !tbaa !122
  %i.at = add i32 %.0303.i.i.i, 1                 ; 2 uses
  %.not33.i.i.i = icmp ugt i32 %i.at, %i.ad
  br i1 %.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !127

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block, %st_mult.exit.i.i.i
  store i32 %i.ag, ptr @bit_arrays.2, align 8, !tbaa !116
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i, %bb.b
  %i.au = phi ptr [ %i.aj, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %bb.b ]
  %i.av = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !122 ; 2 uses
  %.not34.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not34.i.i.i, label %bb.d, label %bit_arrays_at.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ay = call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #12 ; 2 uses
  %i.az = load ptr, ptr @bit_arrays.3, align 8, !tbaa !120
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.av
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !122
  br label %bit_arrays_at.exit.i

bit_arrays_at.exit.i:                             ; preds = %bb.d, %bb.c
  %i.bb = phi ptr [ %i.ax, %bb.c ], [ %i.ay, %bb.d ]
  %i.bc = zext nneg i32 %i.ae to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bc ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !128 ; 2 uses
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %bb.e, label %get_bit_array.exit

bb.e:                                             ; preds = %bit_arrays_at.exit.i
  %i.bf = call ptr @bitmap_word_alloc(i64 noundef %i.j) #12 ; 2 uses
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !128
  br label %get_bit_array.exit

get_bit_array.exit:                               ; preds = %bit_arrays_at.exit.i, %bb.e
  %i.bg = phi ptr [ %i.bf, %bb.e ], [ %i.be, %bit_arrays_at.exit.i ]
  call void @bitmap_set(ptr noundef %i.bg, i64 noundef %.060128) #12
  %i.bh = load i64, ptr %i.ab, align 8
  %i.bi = and i64 %i.bh, 562949953421312
  %.not.i70 = icmp eq i64 %i.bi, 0
  br i1 %.not.i70, label %bb.f, label %insert_no_dup.exit

bb.f:                                             ; preds = %get_bit_array.exit
  %i.bj = load ptr, ptr %i.k, align 8, !tbaa !49  ; 2 uses
  call void @prio_queue_put(ptr noundef nonnull %5, ptr noundef nonnull %i.ab) #12
  %i.bk = load i64, ptr %i.ab, align 8
  %i.bl = and i64 %i.bk, 1125899906842624
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %bb.g, label %nonstale_queue_put.exit.i

bb.g:                                             ; preds = %bb.f
  %.not11.i.i = icmp eq ptr %i.bj, null
  br i1 %.not11.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = load ptr, ptr %5, align 8, !tbaa !45
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.bo = call i32 %i.bm(ptr noundef nonnull %i.bj, ptr noundef nonnull %i.ab, ptr noundef %i.bn) #12, !inline_history !130
  %i.bp = icmp slt i32 %i.bo, 1
  br i1 %i.bp, label %bb.i, label %nonstale_queue_put.exit.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr %i.ab, ptr %i.k, align 8, !tbaa !49
  br label %nonstale_queue_put.exit.i

nonstale_queue_put.exit.i:                        ; preds = %bb.i, %bb.h, %bb.f
  %i.bq = load i64, ptr %i.ab, align 8
  %i.br = or i64 %i.bq, 562949953421312
  store i64 %i.br, ptr %i.ab, align 8
  br label %insert_no_dup.exit

insert_no_dup.exit:                               ; preds = %get_bit_array.exit, %nonstale_queue_put.exit.i
  %i.bs = add nuw i64 %.060128, 1                 ; 2 uses
  %exitcond141.not = icmp eq i64 %i.bs, %2
  br i1 %exitcond141.not, label %.preheader, label %bb.b, !llvm.loop !131

.lr.ph134:                                        ; preds = %.preheader, %free_bit_array.exit
  %i.bt = call ptr @prio_queue_get(ptr noundef nonnull %5) #12 ; 3 uses
  %i.bu = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %bb.j, label %nonstale_queue_get.exit

bb.j:                                             ; preds = %.lr.ph134
  store ptr null, ptr %i.k, align 8, !tbaa !49
  br label %nonstale_queue_get.exit

nonstale_queue_get.exit:                          ; preds = %.lr.ph134, %bb.j
  %i.bw = getelementptr i8, ptr %i.bt, i64 72     ; 2 uses
  %.val66 = load i32, ptr %i.bw, align 8, !tbaa !86 ; 2 uses
  %i.bx = udiv i32 %.val66, 65532                 ; 6 uses
  %i.by = urem i32 %.val66, 65532
  %i.bz = load i32, ptr @bit_arrays.2, align 8, !tbaa !116
  %.not.i.i.i71 = icmp ugt i32 %i.bz, %i.bx
  %.pre.i.i.i72 = load ptr, ptr @bit_arrays.3, align 8, !tbaa !120 ; 2 uses
  br i1 %.not.i.i.i71, label %bb.k, label %st_mult.exit.i.i.i73

st_mult.exit.i.i.i73:                             ; preds = %nonstale_queue_get.exit
  %i.ca = add nuw nsw i32 %i.bx, 1                ; 2 uses
  %i.cb = shl nuw nsw i32 %i.ca, 3
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = call ptr @xrealloc(ptr noundef %.pre.i.i.i72, i64 noundef %i.cc) #12 ; 4 uses
  store ptr %i.cd, ptr @bit_arrays.3, align 8, !tbaa !120
  %i.ce = load i32, ptr @bit_arrays.2, align 8, !tbaa !116 ; 5 uses
  %.not332.i.i.i74 = icmp ugt i32 %i.ce, %i.bx
  br i1 %.not332.i.i.i74, label %._crit_edge.i.i.i78, label %.lr.ph.i.i.i75.preheader

.lr.ph.i.i.i75.preheader:                         ; preds = %st_mult.exit.i.i.i73
  %8 = sub nuw i32 %i.bx, %i.ce                   ; 2 uses
  %9 = add nuw nsw i32 %8, 1                      ; 2 uses
  %min.iters.check198 = icmp samesign ult i32 %8, 3
  br i1 %min.iters.check198, label %.lr.ph.i.i.i75.preheader220, label %vector.ph199

vector.ph199:                                     ; preds = %.lr.ph.i.i.i75.preheader
  %n.vec200 = and i32 %9, 262140                  ; 3 uses
  %i.cf = add i32 %i.ce, %n.vec200
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph199
  %index202 = phi i32 [ 0, %vector.ph199 ], [ %index.next203, %vector.body201 ] ; 2 uses
  %i.cg = add i32 %i.ce, %index202
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.ci, align 8, !tbaa !122
  store <2 x ptr> splat (ptr null), ptr %i.cj, align 8, !tbaa !122
  %index.next203 = add nuw i32 %index202, 4       ; 2 uses
  %i.ck = icmp eq i32 %index.next203, %n.vec200
  br i1 %i.ck, label %middle.block204, label %vector.body201, !llvm.loop !132

middle.block204:                                  ; preds = %vector.body201
  %cmp.n205 = icmp eq i32 %9, %n.vec200
  br i1 %cmp.n205, label %._crit_edge.i.i.i78, label %.lr.ph.i.i.i75.preheader220

.lr.ph.i.i.i75.preheader220:                      ; preds = %.lr.ph.i.i.i75.preheader, %middle.block204
  %.0303.i.i.i76.ph = phi i32 [ %i.ce, %.lr.ph.i.i.i75.preheader ], [ %i.cf, %middle.block204 ]
  br label %.lr.ph.i.i.i75

.lr.ph.i.i.i75:                                   ; preds = %.lr.ph.i.i.i75.preheader220, %.lr.ph.i.i.i75
  %.0303.i.i.i76 = phi i32 [ %i.cn, %.lr.ph.i.i.i75 ], [ %.0303.i.i.i76.ph, %.lr.ph.i.i.i75.preheader220 ] ; 2 uses
  %i.cl = zext i32 %.0303.i.i.i76 to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cl
  store ptr null, ptr %i.cm, align 8, !tbaa !122
  %i.cn = add i32 %.0303.i.i.i76, 1               ; 2 uses
  %.not33.i.i.i77 = icmp ugt i32 %i.cn, %i.bx
  br i1 %.not33.i.i.i77, label %._crit_edge.i.i.i78, label %.lr.ph.i.i.i75, !llvm.loop !133

._crit_edge.i.i.i78:                              ; preds = %.lr.ph.i.i.i75, %middle.block204, %st_mult.exit.i.i.i73
  store i32 %i.ca, ptr @bit_arrays.2, align 8, !tbaa !116
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i.i78, %nonstale_queue_get.exit
  %i.co = phi ptr [ %i.cd, %._crit_edge.i.i.i78 ], [ %.pre.i.i.i72, %nonstale_queue_get.exit ]
  %i.cp = zext nneg i32 %i.bx to i64              ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !122 ; 2 uses
  %.not34.i.i.i79 = icmp eq ptr %i.cr, null
  br i1 %.not34.i.i.i79, label %bb.l, label %bit_arrays_at.exit.i80

bb.l:                                             ; preds = %bb.k
  %i.cs = call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #12 ; 2 uses
  %i.ct = load ptr, ptr @bit_arrays.3, align 8, !tbaa !120
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cp
  store ptr %i.cs, ptr %i.cu, align 8, !tbaa !122
  br label %bit_arrays_at.exit.i80

bit_arrays_at.exit.i80:                           ; preds = %bb.l, %bb.k
  %i.cv = phi ptr [ %i.cr, %bb.k ], [ %i.cs, %bb.l ]
  %i.cw = zext nneg i32 %i.by to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cw ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !128 ; 2 uses
  %.not.i81 = icmp eq ptr %i.cy, null
  br i1 %.not.i81, label %bb.m, label %get_bit_array.exit82

bb.m:                                             ; preds = %bit_arrays_at.exit.i80
  %i.cz = call ptr @bitmap_word_alloc(i64 noundef %i.j) #12 ; 2 uses
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !128
  br label %get_bit_array.exit82

get_bit_array.exit82:                             ; preds = %bit_arrays_at.exit.i80, %bb.m
  %i.da = phi ptr [ %i.cz, %bb.m ], [ %i.cy, %bit_arrays_at.exit.i80 ] ; 3 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %.062130 = load ptr, ptr %i.db, align 8, !tbaa !18 ; 2 uses
  %.not65131 = icmp eq ptr %.062130, null
  br i1 %.not65131, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %get_bit_array.exit82, %bb.s
  %.061129 = phi i64 [ 0, %get_bit_array.exit82 ], [ %i.dr, %bb.s ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %.061129 ; 4 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !134
  %i.de = call i32 @bitmap_get(ptr noundef %i.da, i64 noundef %i.dd) #12
  %i.df = icmp ne i32 %i.de, 0
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !135
  %i.di = call i32 @bitmap_get(ptr noundef %i.da, i64 noundef %i.dh) #12
  %i.dj = icmp ne i32 %i.di, 0                    ; 2 uses
  %i.dk = xor i1 %i.df, %i.dj
  br i1 %i.dk, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  br i1 %i.dj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 20 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !114
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !114
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !112
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr %i.do, align 8, !tbaa !112
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.o
  %i.dr = add nuw i64 %.061129, 1                 ; 2 uses
  %exitcond142.not = icmp eq i64 %i.dr, %4
  br i1 %exitcond142.not, label %bb.n, label %bb.o, !llvm.loop !136

.lr.ph:                                           ; preds = %bb.n, %insert_no_dup.exit99
  %.062132 = phi ptr [ %.062, %insert_no_dup.exit99 ], [ %.062130, %bb.n ] ; 5 uses
  %i.ds = load ptr, ptr %.062132, align 8, !tbaa !12
  %i.dt = call i32 @repo_parse_commit_gently(ptr noundef %0, ptr noundef %i.ds, i32 noundef 0) #12 ; 0 uses
  %i.du = load ptr, ptr %.062132, align 8, !tbaa !12
  %i.dv = getelementptr i8, ptr %i.du, i64 72
  %.val = load i32, ptr %i.dv, align 8, !tbaa !86 ; 2 uses
  %i.dw = udiv i32 %.val, 65532                   ; 6 uses
  %i.dx = urem i32 %.val, 65532
  %i.dy = load i32, ptr @bit_arrays.2, align 8, !tbaa !116
  %.not.i.i.i83 = icmp ugt i32 %i.dy, %i.dw
  %.pre.i.i.i84 = load ptr, ptr @bit_arrays.3, align 8, !tbaa !120 ; 2 uses
  br i1 %.not.i.i.i83, label %bb.t, label %st_mult.exit.i.i.i85

st_mult.exit.i.i.i85:                             ; preds = %.lr.ph
  %i.dz = add nuw nsw i32 %i.dw, 1                ; 2 uses
  %i.ea = shl nuw nsw i32 %i.dz, 3
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = call ptr @xrealloc(ptr noundef %.pre.i.i.i84, i64 noundef %i.eb) #12 ; 4 uses
  store ptr %i.ec, ptr @bit_arrays.3, align 8, !tbaa !120
  %i.ed = load i32, ptr @bit_arrays.2, align 8, !tbaa !116 ; 5 uses
  %.not332.i.i.i86 = icmp ugt i32 %i.ed, %i.dw
  br i1 %.not332.i.i.i86, label %._crit_edge.i.i.i90, label %.lr.ph.i.i.i87.preheader

.lr.ph.i.i.i87.preheader:                         ; preds = %st_mult.exit.i.i.i85
  %10 = sub nuw i32 %i.dw, %i.ed                  ; 2 uses
  %11 = add nuw nsw i32 %10, 1                    ; 2 uses
  %min.iters.check188 = icmp samesign ult i32 %10, 3
  br i1 %min.iters.check188, label %.lr.ph.i.i.i87.preheader218, label %vector.ph189

vector.ph189:                                     ; preds = %.lr.ph.i.i.i87.preheader
  %n.vec190 = and i32 %11, 262140                 ; 3 uses
  %i.ee = add i32 %i.ed, %n.vec190
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i32 [ 0, %vector.ph189 ], [ %index.next193, %vector.body191 ] ; 2 uses
  %i.ef = add i32 %i.ed, %index192
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.eh, align 8, !tbaa !122
  store <2 x ptr> splat (ptr null), ptr %i.ei, align 8, !tbaa !122
  %index.next193 = add nuw i32 %index192, 4       ; 2 uses
  %i.ej = icmp eq i32 %index.next193, %n.vec190
  br i1 %i.ej, label %middle.block194, label %vector.body191, !llvm.loop !137

middle.block194:                                  ; preds = %vector.body191
  %cmp.n195 = icmp eq i32 %11, %n.vec190
  br i1 %cmp.n195, label %._crit_edge.i.i.i90, label %.lr.ph.i.i.i87.preheader218

.lr.ph.i.i.i87.preheader218:                      ; preds = %.lr.ph.i.i.i87.preheader, %middle.block194
  %.0303.i.i.i88.ph = phi i32 [ %i.ed, %.lr.ph.i.i.i87.preheader ], [ %i.ee, %middle.block194 ]
  br label %.lr.ph.i.i.i87

.lr.ph.i.i.i87:                                   ; preds = %.lr.ph.i.i.i87.preheader218, %.lr.ph.i.i.i87
  %.0303.i.i.i88 = phi i32 [ %i.em, %.lr.ph.i.i.i87 ], [ %.0303.i.i.i88.ph, %.lr.ph.i.i.i87.preheader218 ] ; 2 uses
  %i.ek = zext i32 %.0303.i.i.i88 to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ek
  store ptr null, ptr %i.el, align 8, !tbaa !122
  %i.em = add i32 %.0303.i.i.i88, 1               ; 2 uses
  %.not33.i.i.i89 = icmp ugt i32 %i.em, %i.dw
  br i1 %.not33.i.i.i89, label %._crit_edge.i.i.i90, label %.lr.ph.i.i.i87, !llvm.loop !138

._crit_edge.i.i.i90:                              ; preds = %.lr.ph.i.i.i87, %middle.block194, %st_mult.exit.i.i.i85
  store i32 %i.dz, ptr @bit_arrays.2, align 8, !tbaa !116
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.i.i90, %.lr.ph
  %i.en = phi ptr [ %i.ec, %._crit_edge.i.i.i90 ], [ %.pre.i.i.i84, %.lr.ph ]
  %i.eo = zext nneg i32 %i.dw to i64              ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !122 ; 2 uses
  %.not34.i.i.i91 = icmp eq ptr %i.eq, null
  br i1 %.not34.i.i.i91, label %bb.u, label %bit_arrays_at.exit.i92

bb.u:                                             ; preds = %bb.t
  %i.er = call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #12 ; 2 uses
  %i.es = load ptr, ptr @bit_arrays.3, align 8, !tbaa !120
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.eo
  store ptr %i.er, ptr %i.et, align 8, !tbaa !122
  br label %bit_arrays_at.exit.i92

bit_arrays_at.exit.i92:                           ; preds = %bb.u, %bb.t
  %i.eu = phi ptr [ %i.eq, %bb.t ], [ %i.er, %bb.u ]
  %i.ev = zext nneg i32 %i.dx to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ev ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !128 ; 2 uses
  %.not.i93 = icmp eq ptr %i.ex, null
  br i1 %.not.i93, label %bb.v, label %get_bit_array.exit94

bb.v:                                             ; preds = %bit_arrays_at.exit.i92
  %i.ey = call ptr @bitmap_word_alloc(i64 noundef %i.j) #12 ; 2 uses
  store ptr %i.ey, ptr %i.ew, align 8, !tbaa !128
  br label %get_bit_array.exit94

get_bit_array.exit94:                             ; preds = %bit_arrays_at.exit.i92, %bb.v
  %i.ez = phi ptr [ %i.ey, %bb.v ], [ %i.ex, %bit_arrays_at.exit.i92 ] ; 2 uses
  call void @bitmap_or(ptr noundef %i.ez, ptr noundef %i.da) #12
  %i.fa = call i64 @bitmap_popcount(ptr noundef %i.ez) #12
  %i.fb = icmp eq i64 %i.fa, %2
  br i1 %i.fb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %get_bit_array.exit94
  %i.fc = load ptr, ptr %.062132, align 8, !tbaa !12 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = or i64 %i.fd, 1125899906842624
  store i64 %i.fe, ptr %i.fc, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %get_bit_array.exit94
  %i.ff = load ptr, ptr %.062132, align 8, !tbaa !12 ; 7 uses
  %i.fg = load i64, ptr %i.ff, align 8
  %i.fh = and i64 %i.fg, 562949953421312
  %.not.i95 = icmp eq i64 %i.fh, 0
  br i1 %.not.i95, label %bb.y, label %insert_no_dup.exit99

bb.y:                                             ; preds = %bb.x
  %i.fi = load ptr, ptr %i.k, align 8, !tbaa !49  ; 2 uses
  call void @prio_queue_put(ptr noundef nonnull %5, ptr noundef nonnull %i.ff) #12
  %i.fj = load i64, ptr %i.ff, align 8
  %i.fk = and i64 %i.fj, 1125899906842624
  %.not.i.i96 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i96, label %bb.z, label %nonstale_queue_put.exit.i97

bb.z:                                             ; preds = %bb.y
  %.not11.i.i98 = icmp eq ptr %i.fi, null
  br i1 %.not11.i.i98, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fl = load ptr, ptr %5, align 8, !tbaa !45
  %i.fm = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.fn = call i32 %i.fl(ptr noundef nonnull %i.fi, ptr noundef nonnull %i.ff, ptr noundef %i.fm) #12, !inline_history !130
  %i.fo = icmp slt i32 %i.fn, 1
  br i1 %i.fo, label %bb.ab, label %nonstale_queue_put.exit.i97

bb.ab:                                            ; preds = %bb.aa, %bb.z
  store ptr %i.ff, ptr %i.k, align 8, !tbaa !49
  br label %nonstale_queue_put.exit.i97

nonstale_queue_put.exit.i97:                      ; preds = %bb.ab, %bb.aa, %bb.y
  %i.fp = load i64, ptr %i.ff, align 8
  %i.fq = or i64 %i.fp, 562949953421312
  store i64 %i.fq, ptr %i.ff, align 8
  br label %insert_no_dup.exit99

insert_no_dup.exit99:                             ; preds = %bb.x, %nonstale_queue_put.exit.i97
  %i.fr = getelementptr inbounds nuw i8, ptr %.062132, i64 8
  %.062 = load ptr, ptr %i.fr, align 8, !tbaa !18 ; 2 uses
  %.not65 = icmp eq ptr %.062, null
  br i1 %.not65, label %._crit_edge, label %.lr.ph, !llvm.loop !139

._crit_edge:                                      ; preds = %insert_no_dup.exit99, %bb.n
  %.val69 = load i32, ptr %i.bw, align 8, !tbaa !86 ; 2 uses
  %i.fs = udiv i32 %.val69, 65532                 ; 6 uses
  %i.ft = urem i32 %.val69, 65532
  %i.fu = load i32, ptr @bit_arrays.2, align 8, !tbaa !116
  %.not.i.i.i100 = icmp ugt i32 %i.fu, %i.fs
  %.pre.i.i.i101 = load ptr, ptr @bit_arrays.3, align 8, !tbaa !120 ; 2 uses
  br i1 %.not.i.i.i100, label %bb.ac, label %st_mult.exit.i.i.i102

st_mult.exit.i.i.i102:                            ; preds = %._crit_edge
  %i.fv = add nuw nsw i32 %i.fs, 1                ; 2 uses
  %i.fw = shl nuw nsw i32 %i.fv, 3
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = call ptr @xrealloc(ptr noundef %.pre.i.i.i101, i64 noundef %i.fx) #12 ; 4 uses
  store ptr %i.fy, ptr @bit_arrays.3, align 8, !tbaa !120
  %i.fz = load i32, ptr @bit_arrays.2, align 8, !tbaa !116 ; 5 uses
  %.not332.i.i.i103 = icmp ugt i32 %i.fz, %i.fs
  br i1 %.not332.i.i.i103, label %._crit_edge.i.i.i107, label %.lr.ph.i.i.i104.preheader

.lr.ph.i.i.i104.preheader:                        ; preds = %st_mult.exit.i.i.i102
  %12 = sub nuw i32 %i.fs, %i.fz                  ; 2 uses
  %13 = add nuw nsw i32 %12, 1                    ; 2 uses
  %min.iters.check178 = icmp samesign ult i32 %12, 3
  br i1 %min.iters.check178, label %.lr.ph.i.i.i104.preheader219, label %vector.ph179

vector.ph179:                                     ; preds = %.lr.ph.i.i.i104.preheader
  %n.vec180 = and i32 %13, 262140                 ; 3 uses
  %i.ga = add i32 %i.fz, %n.vec180
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i32 [ 0, %vector.ph179 ], [ %index.next183, %vector.body181 ] ; 2 uses
  %i.gb = add i32 %i.fz, %index182
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.gc ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.gd, align 8, !tbaa !122
  store <2 x ptr> splat (ptr null), ptr %i.ge, align 8, !tbaa !122
  %index.next183 = add nuw i32 %index182, 4       ; 2 uses
  %i.gf = icmp eq i32 %index.next183, %n.vec180
  br i1 %i.gf, label %middle.block184, label %vector.body181, !llvm.loop !140

middle.block184:                                  ; preds = %vector.body181
  %cmp.n185 = icmp eq i32 %13, %n.vec180
  br i1 %cmp.n185, label %._crit_edge.i.i.i107, label %.lr.ph.i.i.i104.preheader219

.lr.ph.i.i.i104.preheader219:                     ; preds = %.lr.ph.i.i.i104.preheader, %middle.block184
  %.0303.i.i.i105.ph = phi i32 [ %i.fz, %.lr.ph.i.i.i104.preheader ], [ %i.ga, %middle.block184 ]
  br label %.lr.ph.i.i.i104

.lr.ph.i.i.i104:                                  ; preds = %.lr.ph.i.i.i104.preheader219, %.lr.ph.i.i.i104
  %.0303.i.i.i105 = phi i32 [ %i.gi, %.lr.ph.i.i.i104 ], [ %.0303.i.i.i105.ph, %.lr.ph.i.i.i104.preheader219 ] ; 2 uses
  %i.gg = zext i32 %.0303.i.i.i105 to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.gg
  store ptr null, ptr %i.gh, align 8, !tbaa !122
  %i.gi = add i32 %.0303.i.i.i105, 1              ; 2 uses
  %.not33.i.i.i106 = icmp ugt i32 %i.gi, %i.fs
  br i1 %.not33.i.i.i106, label %._crit_edge.i.i.i107, label %.lr.ph.i.i.i104, !llvm.loop !141

._crit_edge.i.i.i107:                             ; preds = %.lr.ph.i.i.i104, %middle.block184, %st_mult.exit.i.i.i102
  store i32 %i.fv, ptr @bit_arrays.2, align 8, !tbaa !116
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i.i.i107, %._crit_edge
  %i.gj = phi ptr [ %i.fy, %._crit_edge.i.i.i107 ], [ %.pre.i.i.i101, %._crit_edge ]
  %i.gk = zext nneg i32 %i.fs to i64              ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gk
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !122 ; 2 uses
  %.not34.i.i.i108 = icmp eq ptr %i.gm, null
  br i1 %.not34.i.i.i108, label %bb.ad, label %bit_arrays_at.exit.i109

bb.ad:                                            ; preds = %bb.ac
  %i.gn = call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #12 ; 2 uses
  %i.go = load ptr, ptr @bit_arrays.3, align 8, !tbaa !120
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gk
  store ptr %i.gn, ptr %i.gp, align 8, !tbaa !122
  br label %bit_arrays_at.exit.i109

bit_arrays_at.exit.i109:                          ; preds = %bb.ad, %bb.ac
  %i.gq = phi ptr [ %i.gm, %bb.ac ], [ %i.gn, %bb.ad ]
  %i.gr = zext nneg i32 %i.ft to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.gr ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !128 ; 2 uses
  %.not.i110 = icmp eq ptr %i.gt, null
  br i1 %.not.i110, label %free_bit_array.exit, label %bb.ae

bb.ae:                                            ; preds = %bit_arrays_at.exit.i109
  call void @bitmap_free(ptr noundef nonnull %i.gt) #12
  store ptr null, ptr %i.gs, align 8, !tbaa !128
  br label %free_bit_array.exit

free_bit_array.exit:                              ; preds = %bit_arrays_at.exit.i109, %bb.ae
  %i.gu = load ptr, ptr %i.k, align 8, !tbaa !49
  %.not = icmp eq ptr %i.gu, null
  br i1 %.not, label %._crit_edge135, label %.lr.ph134, !llvm.loop !142

._crit_edge135:                                   ; preds = %free_bit_array.exit, %.preheader
  call void @repo_clear_commit_marks(ptr noundef %0, i32 noundef 393216) #12
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !143
  %.not140 = icmp eq i64 %i.gw, 0
  br i1 %.not140, label %._crit_edge139, label %.lr.ph138

.lr.ph138:                                        ; preds = %._crit_edge135
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.pre.i.i.i113.pre144 = load ptr, ptr @bit_arrays.3, align 8, !tbaa !120
  br label %bb.af

._crit_edge139:                                   ; preds = %free_bit_array.exit123, %._crit_edge135
  %i.gy = load i32, ptr @bit_arrays.2, align 8, !tbaa !116
  %.not.i111 = icmp eq i32 %i.gy, 0
  br i1 %.not.i111, label %clear_bit_arrays.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge139
  %i.gz = load ptr, ptr @bit_arrays.3, align 8, !tbaa !120
  %i.ha = load i32, ptr @bit_arrays.2, align 8, !tbaa !116
  %i.hb = zext i32 %i.ha to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.i
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !122
  call void @free(ptr noundef %i.hd) #12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.he = icmp samesign ult i64 %indvars.iv.next.i, %i.hb
  br i1 %i.he, label %.lr.ph.i, label %clear_bit_arrays.exit, !llvm.loop !144

clear_bit_arrays.exit:                            ; preds = %.lr.ph.i, %._crit_edge139
  store i32 0, ptr @bit_arrays.2, align 8, !tbaa !116
  %i.hf = load ptr, ptr @bit_arrays.3, align 8, !tbaa !120
  call void @free(ptr noundef %i.hf) #12
  store ptr null, ptr @bit_arrays.3, align 8, !tbaa !120
  call void @clear_prio_queue(ptr noundef nonnull %5) #12
  br label %bb.aj

bb.af:                                            ; preds = %.lr.ph138, %free_bit_array.exit123
  %.pre.i.i.i113 = phi ptr [ %.pre.i.i.i113.pre144, %.lr.ph138 ], [ %.pre.i.i.i113145, %free_bit_array.exit123 ] ; 2 uses
  %.0136 = phi i64 [ 0, %.lr.ph138 ], [ %i.im, %free_bit_array.exit123 ] ; 2 uses
  %i.hg = load ptr, ptr %i.gx, align 8, !tbaa !145
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.hg, i64 %.0136
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !146
  %i.hk = getelementptr i8, ptr %i.hj, i64 72
  %.val68 = load i32, ptr %i.hk, align 8, !tbaa !86 ; 2 uses
  %i.hl = udiv i32 %.val68, 65532                 ; 6 uses
  %i.hm = urem i32 %.val68, 65532
  %i.hn = load i32, ptr @bit_arrays.2, align 8, !tbaa !116
  %.not.i.i.i112 = icmp ugt i32 %i.hn, %i.hl
  br i1 %.not.i.i.i112, label %bb.ag, label %st_mult.exit.i.i.i114

st_mult.exit.i.i.i114:                            ; preds = %bb.af
  %i.ho = add nuw nsw i32 %i.hl, 1                ; 2 uses
  %i.hp = shl nuw nsw i32 %i.ho, 3
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = call ptr @xrealloc(ptr noundef %.pre.i.i.i113, i64 noundef %i.hq) #12 ; 4 uses
  store ptr %i.hr, ptr @bit_arrays.3, align 8, !tbaa !120
  %i.hs = load i32, ptr @bit_arrays.2, align 8, !tbaa !116 ; 5 uses
  %.not332.i.i.i115 = icmp ugt i32 %i.hs, %i.hl
  br i1 %.not332.i.i.i115, label %._crit_edge.i.i.i119, label %.lr.ph.i.i.i116.preheader

.lr.ph.i.i.i116.preheader:                        ; preds = %st_mult.exit.i.i.i114
  %14 = sub nuw i32 %i.hl, %i.hs                  ; 2 uses
  %15 = add nuw nsw i32 %14, 1                    ; 2 uses
  %min.iters.check208 = icmp samesign ult i32 %14, 3
  br i1 %min.iters.check208, label %.lr.ph.i.i.i116.preheader217, label %vector.ph209

vector.ph209:                                     ; preds = %.lr.ph.i.i.i116.preheader
  %n.vec210 = and i32 %15, 262140                 ; 3 uses
  %i.ht = add i32 %i.hs, %n.vec210
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph209
  %index212 = phi i32 [ 0, %vector.ph209 ], [ %index.next213, %vector.body211 ] ; 2 uses
  %i.hu = add i32 %i.hs, %index212
  %i.hv = zext i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hv ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.hw, align 8, !tbaa !122
  store <2 x ptr> splat (ptr null), ptr %i.hx, align 8, !tbaa !122
  %index.next213 = add nuw i32 %index212, 4       ; 2 uses
  %i.hy = icmp eq i32 %index.next213, %n.vec210
  br i1 %i.hy, label %middle.block214, label %vector.body211, !llvm.loop !148

middle.block214:                                  ; preds = %vector.body211
  %cmp.n215 = icmp eq i32 %15, %n.vec210
  br i1 %cmp.n215, label %._crit_edge.i.i.i119, label %.lr.ph.i.i.i116.preheader217

.lr.ph.i.i.i116.preheader217:                     ; preds = %.lr.ph.i.i.i116.preheader, %middle.block214
  %.0303.i.i.i117.ph = phi i32 [ %i.hs, %.lr.ph.i.i.i116.preheader ], [ %i.ht, %middle.block214 ]
  br label %.lr.ph.i.i.i116

.lr.ph.i.i.i116:                                  ; preds = %.lr.ph.i.i.i116.preheader217, %.lr.ph.i.i.i116
  %.0303.i.i.i117 = phi i32 [ %i.ib, %.lr.ph.i.i.i116 ], [ %.0303.i.i.i117.ph, %.lr.ph.i.i.i116.preheader217 ] ; 2 uses
  %i.hz = zext i32 %.0303.i.i.i117 to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hz
  store ptr null, ptr %i.ia, align 8, !tbaa !122
  %i.ib = add i32 %.0303.i.i.i117, 1              ; 2 uses
  %.not33.i.i.i118 = icmp ugt i32 %i.ib, %i.hl
  br i1 %.not33.i.i.i118, label %._crit_edge.i.i.i119, label %.lr.ph.i.i.i116, !llvm.loop !149

._crit_edge.i.i.i119:                             ; preds = %.lr.ph.i.i.i116, %middle.block214, %st_mult.exit.i.i.i114
  store i32 %i.ho, ptr @bit_arrays.2, align 8, !tbaa !116
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i.i.i119, %bb.af
  %.pre.i.i.i113147 = phi ptr [ %i.hr, %._crit_edge.i.i.i119 ], [ %.pre.i.i.i113, %bb.af ] ; 2 uses
  %i.ic = zext nneg i32 %i.hl to i64              ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i113147, i64 %i.ic
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !122 ; 2 uses
  %.not34.i.i.i120 = icmp eq ptr %i.ie, null
  br i1 %.not34.i.i.i120, label %bb.ah, label %bit_arrays_at.exit.i121

bb.ah:                                            ; preds = %bb.ag
  %i.if = call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #12 ; 2 uses
  %i.ig = load ptr, ptr @bit_arrays.3, align 8, !tbaa !120 ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.ic
  store ptr %i.if, ptr %i.ih, align 8, !tbaa !122
  br label %bit_arrays_at.exit.i121

bit_arrays_at.exit.i121:                          ; preds = %bb.ah, %bb.ag
  %.pre.i.i.i113146 = phi ptr [ %.pre.i.i.i113147, %bb.ag ], [ %i.ig, %bb.ah ]
  %i.ii = phi ptr [ %i.ie, %bb.ag ], [ %i.if, %bb.ah ]
  %i.ij = zext nneg i32 %i.hm to i64
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.ij ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !128 ; 2 uses
  %.not.i122 = icmp eq ptr %i.il, null
  br i1 %.not.i122, label %free_bit_array.exit123, label %bb.ai

bb.ai:                                            ; preds = %bit_arrays_at.exit.i121
  call void @bitmap_free(ptr noundef nonnull %i.il) #12
  store ptr null, ptr %i.ik, align 8, !tbaa !128
  %.pre.i.i.i113.pre = load ptr, ptr @bit_arrays.3, align 8, !tbaa !120
  br label %free_bit_array.exit123

free_bit_array.exit123:                           ; preds = %bit_arrays_at.exit.i121, %bb.ai
  %.pre.i.i.i113145 = phi ptr [ %.pre.i.i.i113146, %bit_arrays_at.exit.i121 ], [ %.pre.i.i.i113.pre, %bb.ai ]
  %i.im = add nuw i64 %.0136, 1                   ; 2 uses
  %i.in = load i64, ptr %i.gv, align 8, !tbaa !143
  %i.io = icmp ult i64 %i.im, %i.in
  br i1 %i.io, label %bb.af, label %._crit_edge139, !llvm.loop !150

bb.aj:                                            ; preds = %bb.a, %clear_bit_arrays.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void
}

declare void @ensure_generations_valid(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @bitmap_set(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @bitmap_get(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @bitmap_or(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @bitmap_popcount(ptr noundef) local_unnamed_addr #2

declare void @repo_clear_commit_marks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @tips_reachable_from_bases(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !18
  %i.b = icmp ne ptr %1, null
  %i.c = icmp ne ptr %2, null
  %or.cond = and i1 %i.b, %i.c
  %i.d = icmp ne i64 %3, 0
  %or.cond3 = and i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @xcalloc(i64 noundef %3, i64 noundef 16) #12 ; 16 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.e
  %i.f = icmp ugt i64 %3, 1
  br i1 %i.f, label %bb.d, label %sane_qsort.exit

bb.d:                                             ; preds = %bb.c
  tail call void @qsort(ptr noundef nonnull %i.e, i64 noundef %3, i64 noundef 16, ptr noundef nonnull @compare_commit_and_index_by_generation) #12
  br label %sane_qsort.exit

sane_qsort.exit:                                  ; preds = %bb.c, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !151
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.i = icmp ult i64 %3, 4
  br i1 %i.i, label %.epil.preheader, label %sane_qsort.exit.new

sane_qsort.exit.new:                              ; preds = %sane_qsort.exit
  %unroll_iter = and i64 %3, -4
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.e
  %.073109 = phi i64 [ 0, %bb.b ], [ %i.o, %bb.e ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.073109
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.073109 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !153
  %i.m = tail call i64 @commit_graph_generation(ptr noundef %i.k) #12
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !151
  %i.o = add nuw i64 %.073109, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %3
  br i1 %exitcond.not, label %bb.c, label %bb.e, !llvm.loop !154

bb.f:                                             ; preds = %bb.f, %sane_qsort.exit.new
  %.072110 = phi i64 [ 0, %sane_qsort.exit.new ], [ %i.ai, %bb.f ] ; 5 uses
  %niter = phi i64 [ 0, %sane_qsort.exit.new ], [ %niter.next.3, %bb.f ]
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.072110
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !153  ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = or i64 %i.r, 2251799813685248
  store i64 %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.072110
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !153  ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = or i64 %i.w, 2251799813685248
  store i64 %i.x, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.072110
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !153 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = or i64 %i.ab, 2251799813685248
  store i64 %i.ac, ptr %i.aa, align 8
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.072110
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !153 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = or i64 %i.ag, 2251799813685248
  store i64 %i.ah, ptr %i.af, align 8
  %i.ai = add nuw i64 %.072110, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader106.preheader.unr-lcssa, label %bb.f, !llvm.loop !155

.preheader106.preheader.unr-lcssa:                ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader106.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader106.preheader.unr-lcssa, %sane_qsort.exit
  %.072110.epil.init = phi i64 [ 0, %sane_qsort.exit ], [ %i.ai, %.preheader106.preheader.unr-lcssa ]
  %lcmp.mod142 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod142)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.072110.epil = phi i64 [ %.072110.epil.init, %.epil.preheader ], [ %i.an, %bb.g ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.072110.epil
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !153 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = or i64 %i.al, 2251799813685248
  store i64 %i.am, ptr %i.ak, align 8
  %i.an = add nuw i64 %.072110.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader106.preheader, label %bb.g, !llvm.loop !156

.preheader106.preheader:                          ; preds = %bb.g, %.preheader106.preheader.unr-lcssa
  br label %.preheader106

end_hunk_0
begin_hunk_1_@tips_reachable_from_bases:bb.a
.critedge.thread101.epil:                         ; preds = %.critedge.thread101.epil, %.critedge.thread101.epil.preheader
  %.0119.epil = phi i64 [ %i.cq, %.critedge.thread101.epil ], [ %.0119.epil.init, %.critedge.thread101.epil.preheader ] ; 2 uses
  %epil.iter144 = phi i64 [ %epil.iter144.next, %.critedge.thread101.epil ], [ 0, %.critedge.thread101.epil.preheader ]
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.0119.epil
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !153 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = and i64 %i.co, -2251799813685249
  store i64 %i.cp, ptr %i.cn, align 8
  %i.cq = add nuw i64 %.0119.epil, 1
  %epil.iter144.next = add i64 %epil.iter144, 1   ; 2 uses
  %epil.iter144.cmp.not = icmp eq i64 %epil.iter144.next, %xtraiter143
  br i1 %epil.iter144.cmp.not, label %.epilog-lcssa, label %.critedge.thread101.epil, !llvm.loop !160

.epilog-lcssa:                                    ; preds = %.critedge.thread101.epil, %.unr-lcssa
  call void @free(ptr noundef nonnull %i.e) #12
  call void @repo_clear_commit_marks(ptr noundef %0, i32 noundef 1) #12
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !18
  call void @commit_list_free(ptr noundef %i.cr) #12
  br label %bb.q

.critedge.thread101:                              ; preds = %.critedge.thread101, %.critedge.thread101.preheader.new
  %.0119 = phi i64 [ 0, %.critedge.thread101.preheader.new ], [ %i.dl, %.critedge.thread101 ] ; 5 uses
  %niter148 = phi i64 [ 0, %.critedge.thread101.preheader.new ], [ %niter148.next.3, %.critedge.thread101 ]
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.0119
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !153 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = and i64 %i.cu, -2251799813685249
  store i64 %i.cv, ptr %i.ct, align 8
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.0119
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !153 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = and i64 %i.cz, -2251799813685249
  store i64 %i.da, ptr %i.cy, align 8
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.0119
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !153 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = and i64 %i.de, -2251799813685249
  store i64 %i.df, ptr %i.dd, align 8
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.0119
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !153 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = and i64 %i.dj, -2251799813685249
  store i64 %i.dk, ptr %i.di, align 8
  %i.dl = add nuw i64 %.0119, 4                   ; 2 uses
  %niter148.next.3 = add i64 %niter148, 4         ; 2 uses
  %niter148.ncmp.3 = icmp eq i64 %niter148.next.3, %unroll_iter147
  br i1 %niter148.ncmp.3, label %.unr-lcssa, label %.critedge.thread101, !llvm.loop !161

bb.q:                                             ; preds = %bb.a, %.epilog-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @compare_commit_and_index_by_generation(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !151
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !151
  %.0 = tail call i32 @llvm.ucmp.i32.i64(i64 %i.b, i64 %i.d)
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2147483647) i32 @get_branch_base_for_tip(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.prio_queue, align 8         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) @__const.get_branch_base_for_tip.queue, i64 48, i1 false)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @repo_parse_commit_gently(ptr noundef %0, ptr noundef %1, i32 noundef 0) #12 ; 0 uses
  %i.b = tail call i64 @commit_graph_generation(ptr noundef %1) #12
  %i.c = icmp eq i64 %i.b, 9223372036854775807
  %spec.select = zext i1 %i.c to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %.not91 = icmp eq i32 %spec.select96, 0
  br i1 %.not91, label %st_mult.exit.i.i, label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.d
  %.178188 = phi i32 [ %spec.select, %bb.b ], [ %spec.select96, %bb.d ]
  %.083187 = phi i64 [ 0, %bb.b ], [ %i.i, %bb.d ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.083187
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %i.f = tail call i32 @repo_parse_commit_gently(ptr noundef %0, ptr noundef %i.e, i32 noundef 0) #12 ; 0 uses
  %i.g = tail call i64 @commit_graph_generation(ptr noundef %i.e) #12
  %i.h = icmp eq i64 %i.g, 9223372036854775807
  %spec.select96 = select i1 %i.h, i32 1, i32 %.178188 ; 2 uses
  %i.i = add nuw i64 %.083187, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %3
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !162

bb.e:                                             ; preds = %bb.c
  %i.j = add i64 %3, 1                            ; 2 uses
  %i.k = tail call ptr @xcalloc(i64 noundef %i.j, i64 noundef 8) #12 ; 4 uses
  %mul.ov.i.i = icmp ugt i64 %3, 2305843009213693951
  br i1 %mul.ov.i.i, label %bb.f, label %copy_array.exit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.5, i64 noundef 8, i64 noundef %3) #13
  unreachable

copy_array.exit:                                  ; preds = %bb.e
  %i.l = shl nuw i64 %3, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull readonly align 1 %2, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %3
  store ptr %1, ptr %i.m, align 8, !tbaa !21
  tail call void @ensure_generations_valid(ptr noundef %0, ptr noundef %i.k, i64 noundef %i.j) #12
  tail call void @free(ptr noundef %i.k) #12
  br label %st_mult.exit.i.i

st_mult.exit.i.i:                                 ; preds = %bb.c, %copy_array.exit
  store i32 0, ptr @best_branch_base.2, align 8, !tbaa !163
  store ptr null, ptr @best_branch_base.3, align 8, !tbaa !166
  %i.n = getelementptr i8, ptr %1, i64 72
  %.val104 = load i32, ptr %i.n, align 8, !tbaa !86 ; 2 uses
  %i.o = udiv i32 %.val104, 131064                ; 4 uses
  %i.p = urem i32 %.val104, 131064
  %i.q = add nuw nsw i32 %i.o, 1                  ; 2 uses
  %i.r = shl nuw nsw i32 %i.q, 3
  %i.s = zext nneg i32 %i.r to i64
  %i.t = tail call ptr @xrealloc(ptr noundef null, i64 noundef %i.s) #12 ; 3 uses
  store ptr %i.t, ptr @best_branch_base.3, align 8, !tbaa !166
  %i.u = load i32, ptr @best_branch_base.2, align 8, !tbaa !163 ; 3 uses
  %.not332.i.i = icmp ugt i32 %i.u, %i.o
  br i1 %.not332.i.i, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %st_mult.exit.i.i
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 3
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.w
  %i.x = sub nuw nsw i32 %i.o, %i.u
  %i.y = shl nuw nsw i32 %i.x, 3
  %narrow = add nuw nsw i32 %i.y, 8
  %i.z = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.z, i1 false), !tbaa !167
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.preheader, %st_mult.exit.i.i
  store i32 %i.q, ptr @best_branch_base.2, align 8, !tbaa !163
  %i.aa = zext nneg i32 %i.o to i64               ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !167 ; 2 uses
  %.not34.i.i = icmp eq ptr %i.ac, null
  br i1 %.not34.i.i, label %bb.g, label %best_branch_base_at.exit

bb.g:                                             ; preds = %.loopexit
  %i.ad = tail call ptr @xcalloc(i64 noundef 131064, i64 noundef 4) #12 ; 2 uses
  %i.ae = load ptr, ptr @best_branch_base.3, align 8, !tbaa !166
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aa
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !167
  br label %best_branch_base_at.exit

best_branch_base_at.exit:                         ; preds = %.loopexit, %bb.g
  %i.ag = phi ptr [ %i.ac, %.loopexit ], [ %i.ad, %bb.g ]
  %i.ah = zext nneg i32 %i.p to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  store i32 -1, ptr %i.ai, align 4, !tbaa !27
  call void @prio_queue_put(ptr noundef nonnull %4, ptr noundef nonnull %1) #12
  %.pre.i.i106.pre197 = load ptr, ptr @best_branch_base.3, align 8, !tbaa !166
  br label %bb.h

.preheader:                                       ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !169
  %.not93190 = icmp eq i64 %i.ak, 0
  br i1 %.not93190, label %.thread182, label %.lr.ph

bb.h:                                             ; preds = %best_branch_base_at.exit, %bb.n
  %.pre.i.i106 = phi ptr [ %.pre.i.i106.pre197, %best_branch_base_at.exit ], [ %.pre.i.i106198, %bb.n ] ; 2 uses
  %.084189 = phi i64 [ 0, %best_branch_base_at.exit ], [ %i.cu, %bb.n ] ; 4 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.084189
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !21 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 72     ; 2 uses
  %.val103 = load i32, ptr %i.an, align 8, !tbaa !86 ; 2 uses
  %i.ao = udiv i32 %.val103, 131064               ; 6 uses
  %i.ap = urem i32 %.val103, 131064
  %i.aq = load i32, ptr @best_branch_base.2, align 8, !tbaa !163
  %.not.i.i105 = icmp ugt i32 %i.aq, %i.ao
  br i1 %.not.i.i105, label %bb.i, label %st_mult.exit.i.i107

st_mult.exit.i.i107:                              ; preds = %bb.h
  %i.ar = add nuw nsw i32 %i.ao, 1                ; 2 uses
  %i.as = shl nuw nsw i32 %i.ar, 3
  %i.at = zext nneg i32 %i.as to i64
  %i.au = call ptr @xrealloc(ptr noundef %.pre.i.i106, i64 noundef %i.at) #12 ; 4 uses
  store ptr %i.au, ptr @best_branch_base.3, align 8, !tbaa !166
  %i.av = load i32, ptr @best_branch_base.2, align 8, !tbaa !163 ; 5 uses
  %.not332.i.i108 = icmp ugt i32 %i.av, %i.ao
  br i1 %.not332.i.i108, label %._crit_edge.i.i112, label %.lr.ph.i.i109.preheader

.lr.ph.i.i109.preheader:                          ; preds = %st_mult.exit.i.i107
  %5 = sub nuw i32 %i.ao, %i.av                   ; 2 uses
  %6 = add nuw nsw i32 %5, 1                      ; 2 uses
  %min.iters.check249 = icmp samesign ult i32 %5, 3
  br i1 %min.iters.check249, label %.lr.ph.i.i109.preheader314, label %vector.ph250

vector.ph250:                                     ; preds = %.lr.ph.i.i109.preheader
  %n.vec251 = and i32 %6, 131068                  ; 3 uses
  %i.aw = add i32 %i.av, %n.vec251
  br label %vector.body252

vector.body252:                                   ; preds = %vector.body252, %vector.ph250
  %index253 = phi i32 [ 0, %vector.ph250 ], [ %index.next254, %vector.body252 ] ; 2 uses
  %i.ax = add i32 %i.av, %index253
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.az, align 8, !tbaa !167
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !167
  %index.next254 = add nuw i32 %index253, 4       ; 2 uses
  %i.bb = icmp eq i32 %index.next254, %n.vec251
  br i1 %i.bb, label %middle.block255, label %vector.body252, !llvm.loop !170

middle.block255:                                  ; preds = %vector.body252
  %cmp.n256 = icmp eq i32 %6, %n.vec251
  br i1 %cmp.n256, label %._crit_edge.i.i112, label %.lr.ph.i.i109.preheader314

.lr.ph.i.i109.preheader314:                       ; preds = %.lr.ph.i.i109.preheader, %middle.block255
  %.0303.i.i110.ph = phi i32 [ %i.av, %.lr.ph.i.i109.preheader ], [ %i.aw, %middle.block255 ]
  br label %.lr.ph.i.i109

.lr.ph.i.i109:                                    ; preds = %.lr.ph.i.i109.preheader314, %.lr.ph.i.i109
  %.0303.i.i110 = phi i32 [ %i.be, %.lr.ph.i.i109 ], [ %.0303.i.i110.ph, %.lr.ph.i.i109.preheader314 ] ; 2 uses
  %i.bc = zext i32 %.0303.i.i110 to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bc
  store ptr null, ptr %i.bd, align 8, !tbaa !167
  %i.be = add i32 %.0303.i.i110, 1                ; 2 uses
  %.not33.i.i111 = icmp ugt i32 %i.be, %i.ao
  br i1 %.not33.i.i111, label %._crit_edge.i.i112, label %.lr.ph.i.i109, !llvm.loop !171

._crit_edge.i.i112:                               ; preds = %.lr.ph.i.i109, %middle.block255, %st_mult.exit.i.i107
  store i32 %i.ar, ptr @best_branch_base.2, align 8, !tbaa !163
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i112, %bb.h
  %.pre.i.i106200 = phi ptr [ %i.au, %._crit_edge.i.i112 ], [ %.pre.i.i106, %bb.h ] ; 2 uses
  %i.bf = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i106200, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !167 ; 2 uses
  %.not34.i.i113 = icmp eq ptr %i.bh, null
  br i1 %.not34.i.i113, label %bb.j, label %best_branch_base_at.exit114

bb.j:                                             ; preds = %bb.i
  %i.bi = call ptr @xcalloc(i64 noundef 131064, i64 noundef 4) #12 ; 2 uses
  %i.bj = load ptr, ptr @best_branch_base.3, align 8, !tbaa !166 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bf
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !167
  br label %best_branch_base_at.exit114

best_branch_base_at.exit114:                      ; preds = %bb.i, %bb.j
  %.pre.i.i116 = phi ptr [ %.pre.i.i106200, %bb.i ], [ %i.bj, %bb.j ] ; 3 uses
  %i.bl = phi ptr [ %i.bh, %bb.i ], [ %i.bi, %bb.j ]
  %i.bm = zext nneg i32 %i.ap to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !27
  switch i32 %i.bo, label %bb.n [
    i32 0, label %bb.k
    i32 -1, label %.thread179
  ]

bb.k:                                             ; preds = %best_branch_base_at.exit114
  %i.bp = trunc i64 %.084189 to i32
  %i.bq = add i32 %i.bp, 1
  %.val102 = load i32, ptr %i.an, align 8, !tbaa !86 ; 2 uses
  %i.br = udiv i32 %.val102, 131064               ; 6 uses
  %i.bs = urem i32 %.val102, 131064
  %i.bt = load i32, ptr @best_branch_base.2, align 8, !tbaa !163
  %.not.i.i115 = icmp ugt i32 %i.bt, %i.br
  br i1 %.not.i.i115, label %bb.l, label %st_mult.exit.i.i117

st_mult.exit.i.i117:                              ; preds = %bb.k
  %i.bu = add nuw nsw i32 %i.br, 1                ; 2 uses
  %i.bv = shl nuw nsw i32 %i.bu, 3
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = call ptr @xrealloc(ptr noundef nonnull %.pre.i.i116, i64 noundef %i.bw) #12 ; 4 uses
  store ptr %i.bx, ptr @best_branch_base.3, align 8, !tbaa !166
  %i.by = load i32, ptr @best_branch_base.2, align 8, !tbaa !163 ; 5 uses
  %.not332.i.i118 = icmp ugt i32 %i.by, %i.br
  br i1 %.not332.i.i118, label %._crit_edge.i.i122, label %.lr.ph.i.i119.preheader

.lr.ph.i.i119.preheader:                          ; preds = %st_mult.exit.i.i117
  %7 = sub nuw i32 %i.br, %i.by                   ; 2 uses
  %8 = add nuw nsw i32 %7, 1                      ; 2 uses
  %min.iters.check = icmp samesign ult i32 %7, 3
  br i1 %min.iters.check, label %.lr.ph.i.i119.preheader313, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i119.preheader
  %n.vec = and i32 %8, 131068                     ; 3 uses
  %i.bz = add i32 %i.by, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = add i32 %i.by, %index
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.cc, align 8, !tbaa !167
  store <2 x ptr> splat (ptr null), ptr %i.cd, align 8, !tbaa !167
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.ce = icmp eq i32 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !172

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %8, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i122, label %.lr.ph.i.i119.preheader313

.lr.ph.i.i119.preheader313:                       ; preds = %.lr.ph.i.i119.preheader, %middle.block
  %.0303.i.i120.ph = phi i32 [ %i.by, %.lr.ph.i.i119.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i.i119

.lr.ph.i.i119:                                    ; preds = %.lr.ph.i.i119.preheader313, %.lr.ph.i.i119
  %.0303.i.i120 = phi i32 [ %i.ch, %.lr.ph.i.i119 ], [ %.0303.i.i120.ph, %.lr.ph.i.i119.preheader313 ] ; 2 uses
  %i.cf = zext i32 %.0303.i.i120 to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cf
  store ptr null, ptr %i.cg, align 8, !tbaa !167
  %i.ch = add i32 %.0303.i.i120, 1                ; 2 uses
  %.not33.i.i121 = icmp ugt i32 %i.ch, %i.br
  br i1 %.not33.i.i121, label %._crit_edge.i.i122, label %.lr.ph.i.i119, !llvm.loop !173

._crit_edge.i.i122:                               ; preds = %.lr.ph.i.i119, %middle.block, %st_mult.exit.i.i117
  store i32 %i.bu, ptr @best_branch_base.2, align 8, !tbaa !163
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i122, %bb.k
  %i.ci = phi ptr [ %i.bx, %._crit_edge.i.i122 ], [ %.pre.i.i116, %bb.k ]
  %i.cj = zext nneg i32 %i.br to i64              ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !167 ; 2 uses
  %.not34.i.i123 = icmp eq ptr %i.cl, null
  br i1 %.not34.i.i123, label %bb.m, label %best_branch_base_at.exit124

bb.m:                                             ; preds = %bb.l
  %i.cm = call ptr @xcalloc(i64 noundef 131064, i64 noundef 4) #12 ; 2 uses
  %i.cn = load ptr, ptr @best_branch_base.3, align 8, !tbaa !166
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cj
  store ptr %i.cm, ptr %i.co, align 8, !tbaa !167
  br label %best_branch_base_at.exit124

best_branch_base_at.exit124:                      ; preds = %bb.l, %bb.m
  %i.cp = phi ptr [ %i.cl, %bb.l ], [ %i.cm, %bb.m ]
  %i.cq = zext nneg i32 %i.bs to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cq
  store i32 %i.bq, ptr %i.cr, align 4, !tbaa !27
  call void @prio_queue_put(ptr noundef nonnull %4, ptr noundef nonnull %i.am) #12
  %.pre.i.i106.pre = load ptr, ptr @best_branch_base.3, align 8, !tbaa !166
  br label %bb.n

.thread179:                                       ; preds = %best_branch_base_at.exit114
  %i.cs = trunc i64 %.084189 to i32
  %i.ct = add i32 %i.cs, 1
  br label %.thread182

bb.n:                                             ; preds = %best_branch_base_at.exit124, %best_branch_base_at.exit114
  %.pre.i.i106198 = phi ptr [ %.pre.i.i106.pre, %best_branch_base_at.exit124 ], [ %.pre.i.i116, %best_branch_base_at.exit114 ]
  %i.cu = add nuw i64 %.084189, 1                 ; 2 uses
  %exitcond196.not = icmp eq i64 %i.cu, %3
  br i1 %exitcond196.not, label %.preheader, label %bb.h, !llvm.loop !174

.lr.ph:                                           ; preds = %.preheader, %bb.af
  %.3192 = phi i32 [ %.5, %bb.af ], [ -1, %.preheader ] ; 7 uses
  %.075191 = phi ptr [ %.176, %bb.af ], [ null, %.preheader ] ; 5 uses
  %i.cv = call ptr @prio_queue_get(ptr noundef nonnull %4) #12 ; 4 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 72
  %.val101 = load i32, ptr %i.cw, align 8, !tbaa !86 ; 2 uses
  %i.cx = udiv i32 %.val101, 131064               ; 6 uses
  %i.cy = urem i32 %.val101, 131064
  %i.cz = load i32, ptr @best_branch_base.2, align 8, !tbaa !163
  %.not.i.i125 = icmp ugt i32 %i.cz, %i.cx
  %.pre.i.i126 = load ptr, ptr @best_branch_base.3, align 8, !tbaa !166 ; 2 uses
  br i1 %.not.i.i125, label %bb.o, label %st_mult.exit.i.i127

st_mult.exit.i.i127:                              ; preds = %.lr.ph
  %i.da = add nuw nsw i32 %i.cx, 1                ; 2 uses
  %i.db = shl nuw nsw i32 %i.da, 3
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = call ptr @xrealloc(ptr noundef %.pre.i.i126, i64 noundef %i.dc) #12 ; 4 uses
  store ptr %i.dd, ptr @best_branch_base.3, align 8, !tbaa !166
  %i.de = load i32, ptr @best_branch_base.2, align 8, !tbaa !163 ; 5 uses
  %.not332.i.i128 = icmp ugt i32 %i.de, %i.cx
  br i1 %.not332.i.i128, label %._crit_edge.i.i132, label %.lr.ph.i.i129.preheader

.lr.ph.i.i129.preheader:                          ; preds = %st_mult.exit.i.i127
  %9 = sub nuw i32 %i.cx, %i.de                   ; 2 uses
  %10 = add nuw nsw i32 %9, 1                     ; 2 uses
  %min.iters.check299 = icmp samesign ult i32 %9, 3
  br i1 %min.iters.check299, label %.lr.ph.i.i129.preheader312, label %vector.ph300

vector.ph300:                                     ; preds = %.lr.ph.i.i129.preheader
  %n.vec301 = and i32 %10, 131068                 ; 3 uses
  %i.df = add i32 %i.de, %n.vec301
  br label %vector.body302

vector.body302:                                   ; preds = %vector.body302, %vector.ph300
  %index303 = phi i32 [ 0, %vector.ph300 ], [ %index.next304, %vector.body302 ] ; 2 uses
  %i.dg = add i32 %i.de, %index303
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.di, align 8, !tbaa !167
  store <2 x ptr> splat (ptr null), ptr %i.dj, align 8, !tbaa !167
  %index.next304 = add nuw i32 %index303, 4       ; 2 uses
  %i.dk = icmp eq i32 %index.next304, %n.vec301
  br i1 %i.dk, label %middle.block305, label %vector.body302, !llvm.loop !175

middle.block305:                                  ; preds = %vector.body302
  %cmp.n306 = icmp eq i32 %10, %n.vec301
  br i1 %cmp.n306, label %._crit_edge.i.i132, label %.lr.ph.i.i129.preheader312

.lr.ph.i.i129.preheader312:                       ; preds = %.lr.ph.i.i129.preheader, %middle.block305
  %.0303.i.i130.ph = phi i32 [ %i.de, %.lr.ph.i.i129.preheader ], [ %i.df, %middle.block305 ]
  br label %.lr.ph.i.i129

.lr.ph.i.i129:                                    ; preds = %.lr.ph.i.i129.preheader312, %.lr.ph.i.i129
  %.0303.i.i130 = phi i32 [ %i.dn, %.lr.ph.i.i129 ], [ %.0303.i.i130.ph, %.lr.ph.i.i129.preheader312 ] ; 2 uses
  %i.dl = zext i32 %.0303.i.i130 to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dl
  store ptr null, ptr %i.dm, align 8, !tbaa !167
  %i.dn = add i32 %.0303.i.i130, 1                ; 2 uses
  %.not33.i.i131 = icmp ugt i32 %i.dn, %i.cx
  br i1 %.not33.i.i131, label %._crit_edge.i.i132, label %.lr.ph.i.i129, !llvm.loop !176

._crit_edge.i.i132:                               ; preds = %.lr.ph.i.i129, %middle.block305, %st_mult.exit.i.i127
  store i32 %i.da, ptr @best_branch_base.2, align 8, !tbaa !163
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i132, %.lr.ph
  %i.do = phi ptr [ %i.dd, %._crit_edge.i.i132 ], [ %.pre.i.i126, %.lr.ph ]
  %i.dp = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !167 ; 2 uses
  %.not34.i.i133 = icmp eq ptr %i.dr, null
  br i1 %.not34.i.i133, label %bb.p, label %best_branch_base_at.exit134

bb.p:                                             ; preds = %bb.o
  %i.ds = call ptr @xcalloc(i64 noundef 131064, i64 noundef 4) #12 ; 2 uses
  %i.dt = load ptr, ptr @best_branch_base.3, align 8, !tbaa !166
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dp
  store ptr %i.ds, ptr %i.du, align 8, !tbaa !167
  br label %best_branch_base_at.exit134

best_branch_base_at.exit134:                      ; preds = %bb.o, %bb.p
  %i.dv = phi ptr [ %i.dr, %bb.o ], [ %i.ds, %bb.p ]
  %i.dw = zext nneg i32 %i.cy to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !27 ; 6 uses
  %i.dz = icmp eq ptr %i.cv, %.075191
  br i1 %i.dz, label %.thread182, label %bb.q

bb.q:                                             ; preds = %best_branch_base_at.exit134
  %i.ea = call i32 @repo_parse_commit_gently(ptr noundef %0, ptr noundef nonnull %i.cv, i32 noundef 0) #12 ; 0 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !53 ; 2 uses
  %.not94 = icmp eq ptr %i.ec, null
  br i1 %.not94, label %bb.af, label %bb.r, !llvm.loop !177

bb.r:                                             ; preds = %bb.q
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !12 ; 4 uses
  %i.ee = call i32 @repo_parse_commit_gently(ptr noundef %0, ptr noundef %i.ed, i32 noundef 0) #12 ; 0 uses
  %i.ef = getelementptr i8, ptr %i.ed, i64 72     ; 4 uses
  %.val100 = load i32, ptr %i.ef, align 8, !tbaa !86 ; 2 uses
  %i.eg = udiv i32 %.val100, 131064               ; 6 uses
  %i.eh = urem i32 %.val100, 131064
  %i.ei = load i32, ptr @best_branch_base.2, align 8, !tbaa !163
  %.not.i.i135 = icmp ugt i32 %i.ei, %i.eg
  %.pre.i.i136 = load ptr, ptr @best_branch_base.3, align 8, !tbaa !166 ; 2 uses
  br i1 %.not.i.i135, label %bb.s, label %st_mult.exit.i.i137

st_mult.exit.i.i137:                              ; preds = %bb.r
  %i.ej = add nuw nsw i32 %i.eg, 1                ; 2 uses
  %i.ek = shl nuw nsw i32 %i.ej, 3
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = call ptr @xrealloc(ptr noundef %.pre.i.i136, i64 noundef %i.el) #12 ; 4 uses
  store ptr %i.em, ptr @best_branch_base.3, align 8, !tbaa !166
  %i.en = load i32, ptr @best_branch_base.2, align 8, !tbaa !163 ; 5 uses
  %.not332.i.i138 = icmp ugt i32 %i.en, %i.eg
  br i1 %.not332.i.i138, label %._crit_edge.i.i142, label %.lr.ph.i.i139.preheader

.lr.ph.i.i139.preheader:                          ; preds = %st_mult.exit.i.i137
  %11 = sub nuw i32 %i.eg, %i.en                  ; 2 uses
  %12 = add nuw nsw i32 %11, 1                    ; 2 uses
  %min.iters.check289 = icmp samesign ult i32 %11, 3
  br i1 %min.iters.check289, label %.lr.ph.i.i139.preheader311, label %vector.ph290

vector.ph290:                                     ; preds = %.lr.ph.i.i139.preheader
  %n.vec291 = and i32 %12, 131068                 ; 3 uses
  %i.eo = add i32 %i.en, %n.vec291
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i32 [ 0, %vector.ph290 ], [ %index.next294, %vector.body292 ] ; 2 uses
  %i.ep = add i32 %i.en, %index293
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.eq ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.er, align 8, !tbaa !167
  store <2 x ptr> splat (ptr null), ptr %i.es, align 8, !tbaa !167
  %index.next294 = add nuw i32 %index293, 4       ; 2 uses
  %i.et = icmp eq i32 %index.next294, %n.vec291
  br i1 %i.et, label %middle.block295, label %vector.body292, !llvm.loop !178

middle.block295:                                  ; preds = %vector.body292
  %cmp.n296 = icmp eq i32 %12, %n.vec291
  br i1 %cmp.n296, label %._crit_edge.i.i142, label %.lr.ph.i.i139.preheader311

.lr.ph.i.i139.preheader311:                       ; preds = %.lr.ph.i.i139.preheader, %middle.block295
  %.0303.i.i140.ph = phi i32 [ %i.en, %.lr.ph.i.i139.preheader ], [ %i.eo, %middle.block295 ]
  br label %.lr.ph.i.i139

.lr.ph.i.i139:                                    ; preds = %.lr.ph.i.i139.preheader311, %.lr.ph.i.i139
  %.0303.i.i140 = phi i32 [ %i.ew, %.lr.ph.i.i139 ], [ %.0303.i.i140.ph, %.lr.ph.i.i139.preheader311 ] ; 2 uses
  %i.eu = zext i32 %.0303.i.i140 to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.eu
  store ptr null, ptr %i.ev, align 8, !tbaa !167
  %i.ew = add i32 %.0303.i.i140, 1                ; 2 uses
  %.not33.i.i141 = icmp ugt i32 %i.ew, %i.eg
  br i1 %.not33.i.i141, label %._crit_edge.i.i142, label %.lr.ph.i.i139, !llvm.loop !179

._crit_edge.i.i142:                               ; preds = %.lr.ph.i.i139, %middle.block295, %st_mult.exit.i.i137
  store i32 %i.ej, ptr @best_branch_base.2, align 8, !tbaa !163
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i142, %bb.r
  %i.ex = phi ptr [ %i.em, %._crit_edge.i.i142 ], [ %.pre.i.i136, %bb.r ] ; 2 uses
  %i.ey = zext nneg i32 %i.eg to i64              ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ey
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !167 ; 2 uses
  %.not34.i.i143 = icmp eq ptr %i.fa, null
  br i1 %.not34.i.i143, label %bb.t, label %best_branch_base_at.exit144

bb.t:                                             ; preds = %bb.s
  %i.fb = call ptr @xcalloc(i64 noundef 131064, i64 noundef 4) #12 ; 2 uses
  %i.fc = load ptr, ptr @best_branch_base.3, align 8, !tbaa !166 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.ey
  store ptr %i.fb, ptr %i.fd, align 8, !tbaa !167
  br label %best_branch_base_at.exit144

best_branch_base_at.exit144:                      ; preds = %bb.s, %bb.t
  %.pre.i.i146 = phi ptr [ %i.ex, %bb.s ], [ %i.fc, %bb.t ] ; 6 uses
  %i.fe = phi ptr [ %i.fa, %bb.s ], [ %i.fb, %bb.t ]
  %i.ff = zext nneg i32 %i.eh to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !27 ; 4 uses
  %.not95 = icmp eq i32 %i.fh, 0
  br i1 %.not95, label %bb.u, label %bb.x

bb.u:                                             ; preds = %best_branch_base_at.exit144
  %.val99 = load i32, ptr %i.ef, align 8, !tbaa !86 ; 2 uses
  %i.fi = udiv i32 %.val99, 131064                ; 6 uses
  %i.fj = urem i32 %.val99, 131064
  %i.fk = load i32, ptr @best_branch_base.2, align 8, !tbaa !163
  %.not.i.i145 = icmp ugt i32 %i.fk, %i.fi
  br i1 %.not.i.i145, label %bb.v, label %st_mult.exit.i.i147

st_mult.exit.i.i147:                              ; preds = %bb.u
  %i.fl = add nuw nsw i32 %i.fi, 1                ; 2 uses
  %i.fm = shl nuw nsw i32 %i.fl, 3
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = call ptr @xrealloc(ptr noundef nonnull %.pre.i.i146, i64 noundef %i.fn) #12 ; 4 uses
  store ptr %i.fo, ptr @best_branch_base.3, align 8, !tbaa !166
  %i.fp = load i32, ptr @best_branch_base.2, align 8, !tbaa !163 ; 5 uses
  %.not332.i.i148 = icmp ugt i32 %i.fp, %i.fi
  br i1 %.not332.i.i148, label %._crit_edge.i.i152, label %.lr.ph.i.i149.preheader

.lr.ph.i.i149.preheader:                          ; preds = %st_mult.exit.i.i147
  %13 = sub nuw i32 %i.fi, %i.fp                  ; 2 uses
  %14 = add nuw nsw i32 %13, 1                    ; 2 uses
  %min.iters.check259 = icmp samesign ult i32 %13, 3
  br i1 %min.iters.check259, label %.lr.ph.i.i149.preheader308, label %vector.ph260

vector.ph260:                                     ; preds = %.lr.ph.i.i149.preheader
  %n.vec261 = and i32 %14, 131068                 ; 3 uses
  %i.fq = add i32 %i.fp, %n.vec261
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %vector.ph260
  %index263 = phi i32 [ 0, %vector.ph260 ], [ %index.next264, %vector.body262 ] ; 2 uses
  %i.fr = add i32 %i.fp, %index263
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fs ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.ft, align 8, !tbaa !167
  store <2 x ptr> splat (ptr null), ptr %i.fu, align 8, !tbaa !167
  %index.next264 = add nuw i32 %index263, 4       ; 2 uses
  %i.fv = icmp eq i32 %index.next264, %n.vec261
  br i1 %i.fv, label %middle.block265, label %vector.body262, !llvm.loop !180

middle.block265:                                  ; preds = %vector.body262
  %cmp.n266 = icmp eq i32 %14, %n.vec261
  br i1 %cmp.n266, label %._crit_edge.i.i152, label %.lr.ph.i.i149.preheader308

.lr.ph.i.i149.preheader308:                       ; preds = %.lr.ph.i.i149.preheader, %middle.block265
  %.0303.i.i150.ph = phi i32 [ %i.fp, %.lr.ph.i.i149.preheader ], [ %i.fq, %middle.block265 ]
  br label %.lr.ph.i.i149

.lr.ph.i.i149:                                    ; preds = %.lr.ph.i.i149.preheader308, %.lr.ph.i.i149
  %.0303.i.i150 = phi i32 [ %i.fy, %.lr.ph.i.i149 ], [ %.0303.i.i150.ph, %.lr.ph.i.i149.preheader308 ] ; 2 uses
  %i.fw = zext i32 %.0303.i.i150 to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fw
  store ptr null, ptr %i.fx, align 8, !tbaa !167
  %i.fy = add i32 %.0303.i.i150, 1                ; 2 uses
  %.not33.i.i151 = icmp ugt i32 %i.fy, %i.fi
  br i1 %.not33.i.i151, label %._crit_edge.i.i152, label %.lr.ph.i.i149, !llvm.loop !181

._crit_edge.i.i152:                               ; preds = %.lr.ph.i.i149, %middle.block265, %st_mult.exit.i.i147
  store i32 %i.fl, ptr @best_branch_base.2, align 8, !tbaa !163
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.i.i152, %bb.u
  %i.fz = phi ptr [ %i.fo, %._crit_edge.i.i152 ], [ %.pre.i.i146, %bb.u ]
  %i.ga = zext nneg i32 %i.fi to i64              ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.ga
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !167 ; 2 uses
  %.not34.i.i153 = icmp eq ptr %i.gc, null
  br i1 %.not34.i.i153, label %bb.w, label %best_branch_base_at.exit154

bb.w:                                             ; preds = %bb.v
  %i.gd = call ptr @xcalloc(i64 noundef 131064, i64 noundef 4) #12 ; 2 uses
  %i.ge = load ptr, ptr @best_branch_base.3, align 8, !tbaa !166
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.ga
  store ptr %i.gd, ptr %i.gf, align 8, !tbaa !167
  br label %best_branch_base_at.exit154

best_branch_base_at.exit154:                      ; preds = %bb.v, %bb.w
  %i.gg = phi ptr [ %i.gc, %bb.v ], [ %i.gd, %bb.w ]
  %i.gh = zext nneg i32 %i.fj to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gh
  store i32 %i.dy, ptr %i.gi, align 4, !tbaa !27
  call void @prio_queue_put(ptr noundef nonnull %4, ptr noundef nonnull %i.ed) #12
  br label %bb.af, !llvm.loop !177

bb.x:                                             ; preds = %best_branch_base_at.exit144
  %i.gj = icmp sgt i32 %i.fh, 0
  %i.gk = icmp sgt i32 %i.dy, 0
  %or.cond = select i1 %i.gj, i1 %i.gk, i1 false
  br i1 %or.cond, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.gl = icmp samesign ult i32 %i.dy, %i.fh
  br i1 %i.gl, label %bb.z, label %bb.af, !llvm.loop !177

bb.z:                                             ; preds = %bb.y
  %.val98 = load i32, ptr %i.ef, align 8, !tbaa !86 ; 2 uses
  %i.gm = udiv i32 %.val98, 131064                ; 6 uses
  %i.gn = urem i32 %.val98, 131064
  %i.go = load i32, ptr @best_branch_base.2, align 8, !tbaa !163
  %.not.i.i155 = icmp ugt i32 %i.go, %i.gm
  br i1 %.not.i.i155, label %bb.aa, label %st_mult.exit.i.i157

st_mult.exit.i.i157:                              ; preds = %bb.z
  %i.gp = add nuw nsw i32 %i.gm, 1                ; 2 uses
  %i.gq = shl nuw nsw i32 %i.gp, 3
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = call ptr @xrealloc(ptr noundef nonnull %.pre.i.i146, i64 noundef %i.gr) #12 ; 4 uses
  store ptr %i.gs, ptr @best_branch_base.3, align 8, !tbaa !166
  %i.gt = load i32, ptr @best_branch_base.2, align 8, !tbaa !163 ; 5 uses
  %.not332.i.i158 = icmp ugt i32 %i.gt, %i.gm
  br i1 %.not332.i.i158, label %._crit_edge.i.i162, label %.lr.ph.i.i159.preheader

.lr.ph.i.i159.preheader:                          ; preds = %st_mult.exit.i.i157
  %15 = sub nuw i32 %i.gm, %i.gt                  ; 2 uses
  %16 = add nuw nsw i32 %15, 1                    ; 2 uses
  %min.iters.check269 = icmp samesign ult i32 %15, 3
  br i1 %min.iters.check269, label %.lr.ph.i.i159.preheader309, label %vector.ph270

vector.ph270:                                     ; preds = %.lr.ph.i.i159.preheader
  %n.vec271 = and i32 %16, 131068                 ; 3 uses
  %i.gu = add i32 %i.gt, %n.vec271
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph270
  %index273 = phi i32 [ 0, %vector.ph270 ], [ %index.next274, %vector.body272 ] ; 2 uses
  %i.gv = add i32 %i.gt, %index273
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gw ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.gx, align 8, !tbaa !167
  store <2 x ptr> splat (ptr null), ptr %i.gy, align 8, !tbaa !167
  %index.next274 = add nuw i32 %index273, 4       ; 2 uses
  %i.gz = icmp eq i32 %index.next274, %n.vec271
  br i1 %i.gz, label %middle.block275, label %vector.body272, !llvm.loop !182

middle.block275:                                  ; preds = %vector.body272
  %cmp.n276 = icmp eq i32 %16, %n.vec271
  br i1 %cmp.n276, label %._crit_edge.i.i162, label %.lr.ph.i.i159.preheader309

.lr.ph.i.i159.preheader309:                       ; preds = %.lr.ph.i.i159.preheader, %middle.block275
  %.0303.i.i160.ph = phi i32 [ %i.gt, %.lr.ph.i.i159.preheader ], [ %i.gu, %middle.block275 ]
  br label %.lr.ph.i.i159

.lr.ph.i.i159:                                    ; preds = %.lr.ph.i.i159.preheader309, %.lr.ph.i.i159
  %.0303.i.i160 = phi i32 [ %i.hc, %.lr.ph.i.i159 ], [ %.0303.i.i160.ph, %.lr.ph.i.i159.preheader309 ] ; 2 uses
  %i.ha = zext i32 %.0303.i.i160 to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.ha
  store ptr null, ptr %i.hb, align 8, !tbaa !167
  %i.hc = add i32 %.0303.i.i160, 1                ; 2 uses
  %.not33.i.i161 = icmp ugt i32 %i.hc, %i.gm
  br i1 %.not33.i.i161, label %._crit_edge.i.i162, label %.lr.ph.i.i159, !llvm.loop !183

._crit_edge.i.i162:                               ; preds = %.lr.ph.i.i159, %middle.block275, %st_mult.exit.i.i157
  store i32 %i.gp, ptr @best_branch_base.2, align 8, !tbaa !163
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i.i162, %bb.z
  %i.hd = phi ptr [ %i.gs, %._crit_edge.i.i162 ], [ %.pre.i.i146, %bb.z ]
  %i.he = zext nneg i32 %i.gm to i64              ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.he
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !167 ; 2 uses
  %.not34.i.i163 = icmp eq ptr %i.hg, null
  br i1 %.not34.i.i163, label %bb.ab, label %best_branch_base_at.exit164

bb.ab:                                            ; preds = %bb.aa
  %i.hh = call ptr @xcalloc(i64 noundef 131064, i64 noundef 4) #12 ; 2 uses
  %i.hi = load ptr, ptr @best_branch_base.3, align 8, !tbaa !166
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.he
  store ptr %i.hh, ptr %i.hj, align 8, !tbaa !167
  br label %best_branch_base_at.exit164

best_branch_base_at.exit164:                      ; preds = %bb.aa, %bb.ab
  %i.hk = phi ptr [ %i.hg, %bb.aa ], [ %i.hh, %bb.ab ]
  %i.hl = zext nneg i32 %i.gn to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hl
  store i32 %i.dy, ptr %i.hm, align 4, !tbaa !27
  br label %bb.af, !llvm.loop !177

bb.ac:                                            ; preds = %bb.x
  %i.hn = icmp slt i32 %i.dy, 0
  %i.ho = select i1 %i.hn, i32 %i.fh, i32 %i.dy   ; 2 uses
  %i.hp = icmp slt i32 %.3192, 0
  %i.hq = call i32 @llvm.smin.i32(i32 %i.ho, i32 %.3192)
  %.4 = select i1 %i.hp, i32 %i.ho, i32 %i.hq
  %.val = load i32, ptr %i.ef, align 8, !tbaa !86 ; 2 uses
  %i.hr = udiv i32 %.val, 131064                  ; 6 uses
  %i.hs = urem i32 %.val, 131064
  %i.ht = load i32, ptr @best_branch_base.2, align 8, !tbaa !163
  %.not.i.i165 = icmp ugt i32 %i.ht, %i.hr
  br i1 %.not.i.i165, label %bb.ad, label %st_mult.exit.i.i167

st_mult.exit.i.i167:                              ; preds = %bb.ac
  %i.hu = add nuw nsw i32 %i.hr, 1                ; 2 uses
  %i.hv = shl nuw nsw i32 %i.hu, 3
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = call ptr @xrealloc(ptr noundef nonnull %.pre.i.i146, i64 noundef %i.hw) #12 ; 4 uses
  store ptr %i.hx, ptr @best_branch_base.3, align 8, !tbaa !166
  %i.hy = load i32, ptr @best_branch_base.2, align 8, !tbaa !163 ; 5 uses
  %.not332.i.i168 = icmp ugt i32 %i.hy, %i.hr
  br i1 %.not332.i.i168, label %._crit_edge.i.i172, label %.lr.ph.i.i169.preheader

.lr.ph.i.i169.preheader:                          ; preds = %st_mult.exit.i.i167
  %17 = sub nuw i32 %i.hr, %i.hy                  ; 2 uses
  %18 = add nuw nsw i32 %17, 1                    ; 2 uses
  %min.iters.check279 = icmp samesign ult i32 %17, 3
  br i1 %min.iters.check279, label %.lr.ph.i.i169.preheader310, label %vector.ph280

vector.ph280:                                     ; preds = %.lr.ph.i.i169.preheader
  %n.vec281 = and i32 %18, 131068                 ; 3 uses
  %i.hz = add i32 %i.hy, %n.vec281
  br label %vector.body282

vector.body282:                                   ; preds = %vector.body282, %vector.ph280
  %index283 = phi i32 [ 0, %vector.ph280 ], [ %index.next284, %vector.body282 ] ; 2 uses
  %i.ia = add i32 %i.hy, %index283
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.ib ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.ic, align 8, !tbaa !167
  store <2 x ptr> splat (ptr null), ptr %i.id, align 8, !tbaa !167
  %index.next284 = add nuw i32 %index283, 4       ; 2 uses
  %i.ie = icmp eq i32 %index.next284, %n.vec281
  br i1 %i.ie, label %middle.block285, label %vector.body282, !llvm.loop !184

middle.block285:                                  ; preds = %vector.body282
  %cmp.n286 = icmp eq i32 %18, %n.vec281
  br i1 %cmp.n286, label %._crit_edge.i.i172, label %.lr.ph.i.i169.preheader310

.lr.ph.i.i169.preheader310:                       ; preds = %.lr.ph.i.i169.preheader, %middle.block285
  %.0303.i.i170.ph = phi i32 [ %i.hy, %.lr.ph.i.i169.preheader ], [ %i.hz, %middle.block285 ]
  br label %.lr.ph.i.i169

.lr.ph.i.i169:                                    ; preds = %.lr.ph.i.i169.preheader310, %.lr.ph.i.i169
  %.0303.i.i170 = phi i32 [ %i.ih, %.lr.ph.i.i169 ], [ %.0303.i.i170.ph, %.lr.ph.i.i169.preheader310 ] ; 2 uses
  %i.if = zext i32 %.0303.i.i170 to i64
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.if
  store ptr null, ptr %i.ig, align 8, !tbaa !167
  %i.ih = add i32 %.0303.i.i170, 1                ; 2 uses
  %.not33.i.i171 = icmp ugt i32 %i.ih, %i.hr
  br i1 %.not33.i.i171, label %._crit_edge.i.i172, label %.lr.ph.i.i169, !llvm.loop !185

._crit_edge.i.i172:                               ; preds = %.lr.ph.i.i169, %middle.block285, %st_mult.exit.i.i167
  store i32 %i.hu, ptr @best_branch_base.2, align 8, !tbaa !163
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i.i172, %bb.ac
  %i.ii = phi ptr [ %i.hx, %._crit_edge.i.i172 ], [ %.pre.i.i146, %bb.ac ]
  %i.ij = zext nneg i32 %i.hr to i64              ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.ij
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !167 ; 2 uses
  %.not34.i.i173 = icmp eq ptr %i.il, null
  br i1 %.not34.i.i173, label %bb.ae, label %best_branch_base_at.exit174

bb.ae:                                            ; preds = %bb.ad
  %i.im = call ptr @xcalloc(i64 noundef 131064, i64 noundef 4) #12 ; 2 uses
  %i.in = load ptr, ptr @best_branch_base.3, align 8, !tbaa !166
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.ij
  store ptr %i.im, ptr %i.io, align 8, !tbaa !167
  br label %best_branch_base_at.exit174

best_branch_base_at.exit174:                      ; preds = %bb.ad, %bb.ae
  %i.ip = phi ptr [ %i.il, %bb.ad ], [ %i.im, %bb.ae ]
  %i.iq = zext nneg i32 %i.hs to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.iq
  store i32 -1, ptr %i.ir, align 4, !tbaa !27
  br label %bb.af

bb.af:                                            ; preds = %bb.y, %best_branch_base_at.exit164, %bb.q, %best_branch_base_at.exit174, %best_branch_base_at.exit154
  %.176 = phi ptr [ %.075191, %bb.y ], [ %.075191, %bb.q ], [ %i.ed, %best_branch_base_at.exit174 ], [ %.075191, %best_branch_base_at.exit154 ], [ %.075191, %best_branch_base_at.exit164 ]
  %.5 = phi i32 [ %.3192, %bb.y ], [ %.3192, %bb.q ], [ %.4, %best_branch_base_at.exit174 ], [ %.3192, %best_branch_base_at.exit154 ], [ %.3192, %best_branch_base_at.exit164 ] ; 2 uses
  %i.is = load i64, ptr %i.aj, align 8, !tbaa !169
  %.not93 = icmp eq i64 %i.is, 0
  br i1 %.not93, label %.thread182, label %.lr.ph

.thread182:                                       ; preds = %bb.af, %best_branch_base_at.exit134, %.preheader, %.thread179
  %.6 = phi i32 [ %i.ct, %.thread179 ], [ -1, %.preheader ], [ %.5, %bb.af ], [ %.3192, %best_branch_base_at.exit134 ]
  %i.it = load i32, ptr @best_branch_base.2, align 8, !tbaa !163
  %.not.i175 = icmp eq i32 %i.it, 0
  br i1 %.not.i175, label %clear_best_branch_base.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.thread182
  %i.iu = load ptr, ptr @best_branch_base.3, align 8, !tbaa !166
  %i.iv = load i32, ptr @best_branch_base.2, align 8, !tbaa !163
  %i.iw = zext i32 %i.iv to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %indvars.iv.i
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !167
  call void @free(ptr noundef %i.iy) #12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.iz = icmp samesign ult i64 %indvars.iv.next.i, %i.iw
  br i1 %i.iz, label %.lr.ph.i, label %clear_best_branch_base.exit, !llvm.loop !186

clear_best_branch_base.exit:                      ; preds = %.lr.ph.i, %.thread182
  store i32 0, ptr @best_branch_base.2, align 8, !tbaa !163
  %i.ja = load ptr, ptr @best_branch_base.3, align 8, !tbaa !166
  call void @free(ptr noundef %i.ja) #12
  store ptr null, ptr @best_branch_base.3, align 8, !tbaa !166
  call void @clear_prio_queue(ptr noundef nonnull %4) #12
  %i.jb = call i32 @llvm.smax.i32(i32 %.6, i32 0)
  %i.jc = add nsw i32 %i.jb, -1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %clear_best_branch_base.exit
  %.0 = phi i32 [ -1, %bb.a ], [ %i.jc, %clear_best_branch_base.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i32 %.0
}

declare i32 @commit_list_count(ptr noundef) local_unnamed_addr #2

declare void @commit_list_sort_by_date(ptr noundef) local_unnamed_addr #2

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

declare ptr @oid_to_hex(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @repo_parse_commit_gently(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @corrected_commit_dates_enabled(ptr noundef) local_unnamed_addr #2

declare i32 @compare_commits_by_commit_date(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #8

declare void @commit_stack_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @commit_stack_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @commit_stack_clear(ptr noundef) local_unnamed_addr #2

declare void @load_commit_graph_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @contains_test(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %.val = load i32, ptr %i.a, align 8, !tbaa !86  ; 2 uses
  %i.b = load i32, ptr %2, align 8, !tbaa !87     ; 2 uses
  %i.c = udiv i32 %.val, %i.b                     ; 5 uses
  %i.d = urem i32 %.val, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !89
  %.not.i.i = icmp ugt i32 %i.f, %i.c
  br i1 %.not.i.i, label %bb.b, label %st_mult.exit.i.i

st_mult.exit.i.i:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.h = add i32 %i.c, 1                          ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !90
  %i.k = shl nuw nsw i64 %i.i, 3
  %i.l = tail call ptr @xrealloc(ptr noundef %i.j, i64 noundef %i.k) #12
  store ptr %i.l, ptr %i.g, align 8, !tbaa !90
  %i.m = load i32, ptr %i.e, align 8, !tbaa !89   ; 2 uses
  %.not332.i.i = icmp ugt i32 %i.m, %i.c
  br i1 %.not332.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %st_mult.exit.i.i, %.lr.ph.i.i
  %.0303.i.i = phi i32 [ %i.q, %.lr.ph.i.i ], [ %i.m, %st_mult.exit.i.i ] ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !90
  %i.o = zext i32 %.0303.i.i to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  store ptr null, ptr %i.p, align 8, !tbaa !91
  %i.q = add i32 %.0303.i.i, 1                    ; 2 uses
  %.not33.i.i = icmp ugt i32 %i.q, %i.c
  br i1 %.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !92

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %st_mult.exit.i.i
  store i32 %i.h, ptr %i.e, align 8, !tbaa !89
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !90
  %i.t = zext i32 %i.c to i64                     ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !91   ; 2 uses
  %.not34.i.i = icmp eq ptr %i.v, null
  br i1 %.not34.i.i, label %bb.c, label %contains_cache_at.exit

bb.c:                                             ; preds = %bb.b
  %i.w = load i32, ptr %2, align 8, !tbaa !87
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !93
  %i.aa = zext i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = tail call ptr @xcalloc(i64 noundef %i.x, i64 noundef %i.ab) #12
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !90
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.t
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !91
  %.pre.i.i = load ptr, ptr %i.r, align 8, !tbaa !90
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %i.t
  %.pre4.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !91
  br label %contains_cache_at.exit

contains_cache_at.exit:                           ; preds = %bb.b, %bb.c
  %i.af = phi ptr [ %i.v, %bb.b ], [ %.pre4.i.i, %bb.c ]
end_hunk_1
