Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/tree-walk?download=true
inline.NumInlined: 87
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@trace2_traverse_trees_statistics_atexit:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @make_traverse_path(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, i64 noundef %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.c = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.b, i64 %4) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.d, label %bb.b, label %st_add.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.17, i64 noundef %i.b, i64 noundef %4) #16
  unreachable

st_add.exit:                                      ; preds = %bb.a
  %i.e = extractvalue { i64, i1 } %i.c, 0         ; 3 uses
  %.not = icmp ult i64 %i.e, %1
  br i1 %.not, label %.lr.ph.preheader, label %bb.c

bb.c:                                             ; preds = %st_add.exit
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.2, i32 noundef 220, ptr noundef nonnull @.str.3) #16
  unreachable

.lr.ph.preheader:                                 ; preds = %st_add.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  store i8 0, ptr %i.f, align 1, !tbaa !53
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.2, i32 noundef 225, ptr noundef nonnull @.str.4) #16
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.031 = phi i64 [ %i.i, %bb.f ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.02130 = phi i64 [ %i.n, %bb.f ], [ %4, %.lr.ph.preheader ] ; 3 uses
  %.02229 = phi ptr [ %i.l, %bb.f ], [ %3, %.lr.ph.preheader ]
  %.02328 = phi ptr [ %i.p, %bb.f ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %i.g = sub nuw i64 %.031, %.02130               ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %.02229, i64 %.02130, i1 false)
  %.not26 = icmp eq i64 %.031, %.02130
  br i1 %.not26, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.i = add i64 %i.g, -1                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  store i8 47, ptr %i.j, align 1, !tbaa !53
  %.not27 = icmp eq ptr %.02328, null
  br i1 %.not27, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.2, i32 noundef 234, ptr noundef nonnull @.str.5) #16
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.02328, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65
  %i.m = getelementptr inbounds nuw i8, ptr %.02328, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !66   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02328, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68
  %i.q = icmp ult i64 %i.i, %i.n
  br i1 %i.q, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  ret ptr %0
}

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @strbuf_make_traverse_path(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.b = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.val, i64 %3) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 1
  br i1 %i.c, label %bb.b, label %traverse_path_len.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.17, i64 noundef %.val, i64 noundef %3) #16
  unreachable

traverse_path_len.exit:                           ; preds = %bb.a
  %i.d = extractvalue { i64, i1 } %i.b, 0         ; 2 uses
  tail call void @strbuf_grow(ptr noundef %0, i64 noundef %i.d) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !69   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h ; 3 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.k = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.j, i64 %3) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.c, label %st_add.exit.i

bb.c:                                             ; preds = %traverse_path_len.exit
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.17, i64 noundef %i.j, i64 noundef %3) #16
  unreachable

st_add.exit.i:                                    ; preds = %traverse_path_len.exit
  %i.m = load i64, ptr %0, align 8, !tbaa !70
  %i.n = sub i64 %i.m, %i.h
  %i.o = extractvalue { i64, i1 } %i.k, 0         ; 3 uses
  %.not.i = icmp ult i64 %i.o, %i.n
  br i1 %.not.i, label %.lr.ph.preheader.i, label %bb.d

bb.d:                                             ; preds = %st_add.exit.i
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.2, i32 noundef 220, ptr noundef nonnull @.str.3) #16
  unreachable

.lr.ph.preheader.i:                               ; preds = %st_add.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.o
  store i8 0, ptr %i.p, align 1, !tbaa !53
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.2, i32 noundef 225, ptr noundef nonnull @.str.4) #16
  unreachable

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %.031.i = phi i64 [ %i.s, %bb.g ], [ %i.o, %.lr.ph.preheader.i ] ; 2 uses
  %.02130.i = phi i64 [ %i.x, %bb.g ], [ %3, %.lr.ph.preheader.i ] ; 3 uses
  %.02229.i = phi ptr [ %i.v, %bb.g ], [ %2, %.lr.ph.preheader.i ]
  %.02328.i = phi ptr [ %i.z, %bb.g ], [ %1, %.lr.ph.preheader.i ] ; 4 uses
  %i.q = sub nuw i64 %.031.i, %.02130.i           ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %.02229.i, i64 %.02130.i, i1 false)
  %.not26.i = icmp eq i64 %.031.i, %.02130.i
  br i1 %.not26.i, label %make_traverse_path.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.s = add i64 %i.q, -1                         ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  store i8 47, ptr %i.t, align 1, !tbaa !53
  %.not27.i = icmp eq ptr %.02328.i, null
  br i1 %.not27.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.2, i32 noundef 234, ptr noundef nonnull @.str.5) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.02328.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !65
  %i.w = getelementptr inbounds nuw i8, ptr %.02328.i, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !66   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02328.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !68
  %i.aa = icmp ult i64 %i.s, %i.x
  br i1 %i.aa, label %._crit_edge.i, label %.lr.ph.i

make_traverse_path.exit:                          ; preds = %.lr.ph.i
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !69
  %i.ac = add i64 %i.ab, %i.d                     ; 3 uses
  %i.ad = load i64, ptr %0, align 8, !tbaa !70
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.ad, i64 1)
  %i.ae = icmp ugt i64 %i.ac, %spec.select.i
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %make_traverse_path.exit
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.18, i32 noundef 167, ptr noundef nonnull @.str.19) #16
  unreachable

bb.i:                                             ; preds = %make_traverse_path.exit
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !69
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !50  ; 2 uses
  %.not9.i = icmp eq ptr %i.af, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  store i8 0, ptr %i.ag, align 1, !tbaa !53
  br label %strbuf_setlen.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !53
  %.not10.i = icmp eq i8 %i.ah, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #16
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.j, %bb.k
  ret void
}

declare void @strbuf_grow(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @traverse_trees(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.strbuf, align 8             ; 6 uses
  %5 = alloca %struct.strbuf, align 8             ; 8 uses
  %6 = alloca %struct.strbuf, align 8             ; 6 uses
  %7 = alloca %struct.tree_desc, align 8          ; 10 uses
  %8 = alloca %struct.strbuf, align 8             ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) @__const.get_tree_entry_follow_symlinks.namebuf, i64 24, i1 false)
  %.not = icmp eq ptr %0, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.in = select i1 %.not, ptr @the_repository, ptr %i.a
  %i.b = load ptr, ptr %.in, align 8, !tbaa !16
  %i.c = load i32, ptr @traverse_trees_cur_depth, align 4, !tbaa !54 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.e = load i32, ptr %i.d, align 8, !tbaa !91
  %i.f = icmp sgt i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.6) #15 ; 0 uses
  br label %bb.bl

bb.c:                                             ; preds = %bb.a
  %i.h = load i32, ptr @traverse_trees_count, align 4, !tbaa !54
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr @traverse_trees_count, align 4, !tbaa !54
  %i.j = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.j, ptr @traverse_trees_cur_depth, align 4, !tbaa !54
  %i.k = load i32, ptr @traverse_trees_max_depth, align 4, !tbaa !54
  %.not147 = icmp slt i32 %i.c, %i.k
  br i1 %.not147, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.j, ptr @traverse_trees_max_depth, align 4, !tbaa !54
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = sext i32 %1 to i64                       ; 3 uses
  %mul.ov.i = icmp slt i32 %1, 0
  br i1 %mul.ov.i, label %bb.f, label %st_mult.exit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.21, i64 noundef 56, i64 noundef %i.l) #16
  unreachable

st_mult.exit:                                     ; preds = %bb.e
  %i.m = mul nuw nsw i64 %i.l, 56
  %i.n = tail call ptr @xmalloc(i64 noundef %i.m) #15 ; 9 uses
  %i.o = mul nuw nsw i64 %i.l, 88
  %i.p = tail call ptr @xmalloc(i64 noundef %i.o) #15 ; 8 uses
  %.not238 = icmp eq i32 %1, 0                    ; 2 uses
  br i1 %.not238, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %st_mult.exit
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.q = icmp eq i32 %1, 1
  br i1 %i.q, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.r = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %2, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(80) %i.s, i64 80, i1 false), !tbaa.struct !94
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  store ptr null, ptr %i.t, align 8, !tbaa !97
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %indvars.iv.next ; 2 uses
  %i.v = getelementptr inbounds nuw [80 x i8], ptr %2, i64 %indvars.iv.next
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.u, ptr noundef nonnull align 8 dereferenceable(80) %i.v, i64 80, i1 false), !tbaa.struct !94
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  store ptr null, ptr %i.w, align 8, !tbaa !97
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !81

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod357 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod357)
  %i.x = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %indvars.iv.epil.init ; 2 uses
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %2, i64 %indvars.iv.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(80) %i.y, i64 80, i1 false), !tbaa.struct !94
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  store ptr null, ptr %i.z, align 8, !tbaa !97
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %st_mult.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !68 ; 2 uses
  %.not148 = icmp eq ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !65 ; 2 uses
  br i1 %.not148, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !66
  call void @strbuf_make_traverse_path(ptr noundef nonnull %8, ptr noundef nonnull %i.ab, ptr noundef %i.ad, i64 noundef %i.af)
  %i.ag = load i64, ptr %8, align 8, !tbaa !70    ; 2 uses
  %.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i, label %strbuf_avail.exit.thread.i, label %strbuf_avail.exit.i

strbuf_avail.exit.i:                              ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !69 ; 2 uses
  %.neg.i = add i64 %i.ai, 1                      ; 2 uses
  %.not.i = icmp eq i64 %i.ag, %.neg.i
  br i1 %.not.i, label %strbuf_avail.exit.thread.i, label %strbuf_addch.exit

strbuf_avail.exit.thread.i:                       ; preds = %strbuf_avail.exit.i, %bb.g
  call void @strbuf_grow(ptr noundef nonnull %8, i64 noundef 1) #15
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !69 ; 2 uses
  %.pre7.i = add i64 %.pre.i, 1
  br label %strbuf_addch.exit

strbuf_addch.exit:                                ; preds = %strbuf_avail.exit.i, %strbuf_avail.exit.thread.i
  %.pre-phi.i = phi i64 [ %.pre7.i, %strbuf_avail.exit.thread.i ], [ %.neg.i, %strbuf_avail.exit.i ]
  %i.aj = phi i64 [ %.pre.i, %strbuf_avail.exit.thread.i ], [ %i.ai, %strbuf_avail.exit.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !50
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 %.pre-phi.i, ptr %i.am, align 8, !tbaa !69
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 47, ptr %i.an, align 1, !tbaa !53
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !50
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !69
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  store i8 0, ptr %i.aq, align 1, !tbaa !53
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !50
  %i.as = load i64, ptr %i.am, align 8, !tbaa !69
  %i.at = call ptr @xstrndup(ptr noundef %i.ar, i64 noundef %i.as) #15
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !67
  %i.aw = tail call ptr @xstrndup(ptr noundef %i.ad, i64 noundef %i.av) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %strbuf_addch.exit
  %.0126 = phi ptr [ %i.at, %strbuf_addch.exit ], [ %i.aw, %bb.h ] ; 2 uses
  store ptr %.0126, ptr %3, align 8, !tbaa !98
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bc = getelementptr i8, ptr %3, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bf = call i32 @llvm.umax.i32(i32 %1, i32 1)  ; 6 uses
  %wide.trip.count256 = zext nneg i32 %i.bf to i64
  %wide.trip.count262 = zext nneg i32 %i.bf to i64
  %wide.trip.count268 = zext nneg i32 %i.bf to i64
  %wide.trip.count280 = zext nneg i32 %i.bf to i64 ; 3 uses
  br i1 %.not238, label %._crit_edge236, label %.lr.ph209.preheader.preheader

.lr.ph209.preheader.preheader:                    ; preds = %bb.i
  %xtraiter358 = and i64 %wide.trip.count280, 1
  %i.bg = icmp eq i32 %1, 1
  %unroll_iter364 = and i64 %wide.trip.count280, 2147483646
  %lcmp.mod359.not = icmp eq i64 %xtraiter358, 0
  %lcmp.mod363 = trunc i32 %i.bf to i1
  br label %.lr.ph209.preheader

.lr.ph209.preheader.loopexit:                     ; preds = %update_extended_entry.exit
  br label %.lr.ph209.preheader, !llvm.loop !82

.lr.ph209.preheader:                              ; preds = %.lr.ph209.preheader.preheader, %.lr.ph209.preheader.loopexit
  %.0127350 = phi i32 [ %.0.i175192, %.lr.ph209.preheader.loopexit ], [ 1, %.lr.ph209.preheader.preheader ] ; 2 uses
  %.0135349 = phi i32 [ %.2137, %.lr.ph209.preheader.loopexit ], [ 0, %.lr.ph209.preheader.preheader ] ; 5 uses
  br label %.lr.ph209

.lr.ph209:                                        ; preds = %.lr.ph209.preheader, %extended_entry_extract.exit
  %indvars.iv253 = phi i64 [ %indvars.iv.next254, %extended_entry_extract.exit ], [ 0, %.lr.ph209.preheader ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %indvars.iv253 ; 3 uses
  %i.bi = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %indvars.iv253 ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 72 ; 4 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !99
  %.not47.i = icmp eq i32 %i.bk, 0
  br i1 %.not47.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph209
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  br label %bb.j

._crit_edge.i:                                    ; preds = %update_tree_entry.exit, %.lr.ph209
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, i8 0, i64 56, i1 false)
  br label %extended_entry_extract.exit

bb.j:                                             ; preds = %update_tree_entry.exit, %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.bl, i64 56, i1 false), !tbaa.struct !61
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.0.in.i = phi ptr [ %i.bm, %bb.j ], [ %.0.i, %bb.l ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !100 ; 3 uses
  %.not31.i = icmp eq ptr %.0.i, null
  br i1 %.not31.i, label %extended_entry_extract.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !72
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !102
  %i.bu = icmp eq ptr %i.br, %i.bt
  br i1 %i.bu, label %bb.m, label %bb.k, !llvm.loop !83

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) @__const.get_tree_entry_follow_symlinks.namebuf, i64 24, i1 false)
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !46
  %i.bw = load ptr, ptr %i.bp, align 8, !tbaa !55
  %i.bx = load i32, ptr %i.bq, align 8, !tbaa !56
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds i8, ptr %i.bw, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cb = load ptr, ptr %i.bi, align 8, !tbaa !45
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !59
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cd ; 3 uses
  %i.cf = load i32, ptr %i.bj, align 8, !tbaa !47
  %i.cg = zext i32 %i.cf to i64                   ; 3 uses
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = ptrtoint ptr %i.bv to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 3 uses
  %i.ck = icmp ugt i64 %i.cj, %i.cg
  br i1 %i.ck, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cl = call fastcc ptr @_(ptr noundef nonnull @.str.12)
  call void (ptr, ...) @die(ptr noundef %i.cl) #16
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.cm = sub nuw nsw i64 %i.cg, %i.cj            ; 2 uses
  store ptr %i.ce, ptr %i.bo, align 8, !tbaa !46
  %i.cn = trunc nuw i64 %i.cm to i32
  store i32 %i.cn, ptr %i.bj, align 8, !tbaa !47
  %.not.i.i179 = icmp eq i64 %i.cj, %i.cg
  br i1 %.not.i.i179, label %update_tree_entry.exit, label %update_tree_entry_internal.exit.i

update_tree_entry_internal.exit.i:                ; preds = %bb.o
  %i.co = call fastcc i32 @decode_tree_entry(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.ce, i64 noundef %i.cm, ptr noundef nonnull %6)
  %.not.i180 = icmp eq i32 %i.co, 0
  br i1 %.not.i180, label %update_tree_entry.exit, label %bb.p

bb.p:                                             ; preds = %update_tree_entry_internal.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !50
  call void (ptr, ...) @die(ptr noundef nonnull @.str, ptr noundef %i.cq) #16
  unreachable

update_tree_entry.exit:                           ; preds = %bb.o, %update_tree_entry_internal.exit.i
  call void @strbuf_release(ptr noundef nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.cr = load i32, ptr %i.bj, align 8, !tbaa !99
  %.not.i165 = icmp eq i32 %i.cr, 0
  br i1 %.not.i165, label %._crit_edge.i, label %bb.j

extended_entry_extract.exit:                      ; preds = %bb.k, %._crit_edge.i
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %exitcond257.not = icmp eq i64 %indvars.iv.next254, %wide.trip.count256
  br i1 %exitcond257.not, label %.lr.ph213, label %.lr.ph209, !llvm.loop !84

.lr.ph213:                                        ; preds = %extended_entry_extract.exit, %bb.t
  %indvars.iv258 = phi i64 [ %indvars.iv.next259, %bb.t ], [ 0, %extended_entry_extract.exit ] ; 2 uses
  %.0115212 = phi i32 [ %.1116, %bb.t ], [ 0, %extended_entry_extract.exit ] ; 3 uses
  %.0117211 = phi ptr [ %.1118, %bb.t ], [ null, %extended_entry_extract.exit ] ; 4 uses
  %i.cs = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %indvars.iv258 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !72 ; 3 uses
  %.not157 = icmp eq ptr %i.cu, null
  br i1 %.not157, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.lr.ph213
  %i.cv = getelementptr i8, ptr %i.cs, i64 48
  %.val159 = load i32, ptr %i.cv, align 8, !tbaa !73 ; 3 uses
  %.not158 = icmp eq ptr %.0117211, null
  br i1 %.not158, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = sext i32 %.val159 to i64
  %i.cx = sext i32 %.0115212 to i64
  %i.cy = call i32 @name_compare(ptr noundef nonnull %i.cu, i64 noundef %i.cw, ptr noundef nonnull %.0117211, i64 noundef %i.cx) #15
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.da = load ptr, ptr %i.ct, align 8, !tbaa !72
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s, %.lr.ph213
  %.1118 = phi ptr [ %i.da, %bb.s ], [ %.0117211, %bb.r ], [ %.0117211, %.lr.ph213 ], [ %i.cu, %bb.q ] ; 7 uses
  %.1116 = phi i32 [ %.val159, %bb.s ], [ %.0115212, %bb.r ], [ %.0115212, %.lr.ph213 ], [ %.val159, %bb.q ] ; 4 uses
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next259, %wide.trip.count262
  br i1 %exitcond263.not, label %._crit_edge214, label %.lr.ph213, !llvm.loop !85

._crit_edge214:                                   ; preds = %bb.t
  %.not149 = icmp eq ptr %.1118, null
  br i1 %.not149, label %.lr.ph226.preheader, label %.lr.ph219

.lr.ph219:                                        ; preds = %._crit_edge214
  %i.db = sext i32 %.1116 to i64                  ; 7 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph219, %bb.as
  %indvars.iv264 = phi i64 [ 0, %.lr.ph219 ], [ %indvars.iv.next265, %bb.as ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %indvars.iv264 ; 11 uses
  %i.dd = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %indvars.iv264 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 72 ; 4 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !99
  %.not47.i166 = icmp eq i32 %i.df, 0
  br i1 %.not47.i166, label %.critedge.i.thread, label %.lr.ph.i167

.lr.ph.i167:                                      ; preds = %bb.u
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 80
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  br label %bb.v

.critedge.i.thread:                               ; preds = %update_tree_entry.exit188, %bb.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dc, i8 0, i64 56, i1 false)
  %9 = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  br label %extended_entry_extract.exit174

bb.v:                                             ; preds = %update_tree_entry.exit188, %.lr.ph.i167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dc, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.dg, i64 56, i1 false), !tbaa.struct !61
  %.pre = load ptr, ptr %i.di, align 8, !tbaa !72 ; 5 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %.0.in.i168 = phi ptr [ %i.dh, %bb.v ], [ %.0.i169, %bb.x ]
  %.0.i169 = load ptr, ptr %.0.in.i168, align 8, !tbaa !100 ; 3 uses
  %.not31.i170 = icmp eq ptr %.0.i169, null
  br i1 %.not31.i170, label %.critedge.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i169, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !102
  %i.do = icmp eq ptr %.pre, %i.dn
  br i1 %i.do, label %bb.y, label %bb.w, !llvm.loop !83

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.get_tree_entry_follow_symlinks.namebuf, i64 24, i1 false)
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !46
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !55
  %i.dr = load i32, ptr %i.dl, align 8, !tbaa !56
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dv = load ptr, ptr %i.dd, align 8, !tbaa !45
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !59
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dx ; 3 uses
  %i.dz = load i32, ptr %i.de, align 8, !tbaa !47
  %i.ea = zext i32 %i.dz to i64                   ; 3 uses
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = ptrtoint ptr %i.dp to i64
  %i.ed = sub i64 %i.eb, %i.ec                    ; 3 uses
  %i.ee = icmp ugt i64 %i.ed, %i.ea
  br i1 %i.ee, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ef = call fastcc ptr @_(ptr noundef nonnull @.str.12)
  call void (ptr, ...) @die(ptr noundef %i.ef) #16
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.eg = sub nuw nsw i64 %i.ea, %i.ed            ; 2 uses
  store ptr %i.dy, ptr %i.dj, align 8, !tbaa !46
  %i.eh = trunc nuw i64 %i.eg to i32
  store i32 %i.eh, ptr %i.de, align 8, !tbaa !47
  %.not.i.i185 = icmp eq i64 %i.ed, %i.ea
  br i1 %.not.i.i185, label %update_tree_entry.exit188, label %update_tree_entry_internal.exit.i186

update_tree_entry_internal.exit.i186:             ; preds = %bb.aa
  %i.ei = call fastcc i32 @decode_tree_entry(ptr noundef nonnull %i.dd, ptr noundef nonnull %i.dy, i64 noundef %i.eg, ptr noundef nonnull %4)
  %.not.i187 = icmp eq i32 %i.ei, 0
  br i1 %.not.i187, label %update_tree_entry.exit188, label %bb.ab

bb.ab:                                            ; preds = %update_tree_entry_internal.exit.i186
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !50
  call void (ptr, ...) @die(ptr noundef nonnull @.str, ptr noundef %i.ek) #16
  unreachable

update_tree_entry.exit188:                        ; preds = %bb.aa, %update_tree_entry_internal.exit.i186
  call void @strbuf_release(ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.el = load i32, ptr %i.de, align 8, !tbaa !99
  %.not.i171 = icmp eq i32 %i.el, 0
  br i1 %.not.i171, label %.critedge.i.thread, label %bb.v

.critedge.i:                                      ; preds = %bb.w
  %i.em = getelementptr inbounds nuw i8, ptr %i.dc, i64 40 ; 5 uses
  %.not33.i = icmp eq ptr %.pre, null
  br i1 %.not33.i, label %extended_entry_extract.exit174, label %bb.ac

bb.ac:                                            ; preds = %.critedge.i
  %i.en = getelementptr i8, ptr %i.dc, i64 48     ; 2 uses
  %.val35.i = load i32, ptr %i.en, align 8, !tbaa !73 ; 2 uses
  %i.eo = sext i32 %.val35.i to i64
  %i.ep = call i32 @name_compare(ptr noundef nonnull %.1118, i64 noundef %i.db, ptr noundef nonnull %.pre, i64 noundef %i.eo) #15 ; 2 uses
  %.not.i.i173 = icmp eq i32 %i.ep, 0
  br i1 %.not.i.i173, label %extended_entry_extract.exit174, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.er = icmp slt i32 %.1116, %.val35.i
  br i1 %i.er, label %bb.af, label %check_entry_match.exit.sink.split.i

bb.af:                                            ; preds = %bb.ae
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %.1118, ptr nonnull %.pre, i64 %i.db)
  %.not15.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not15.i.i, label %bb.ag, label %check_entry_match.exit.sink.split.i

bb.ag:                                            ; preds = %bb.af
  %i.es = getelementptr inbounds i8, ptr %.pre, i64 %i.db
  %i.et = load i8, ptr %i.es, align 1, !tbaa !53
  %i.eu = icmp slt i8 %i.et, 47
  br i1 %i.eu, label %bb.ah, label %check_entry_match.exit.sink.split.i

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(80) %i.dd, i64 80, i1 false), !tbaa.struct !94
  %i.ev = load i32, ptr %i.ax, align 8, !tbaa !47
  %.not3448.i = icmp eq i32 %i.ev, 0
  br i1 %.not3448.i, label %check_entry_match.exit.sink.split.i, label %.lr.ph50.i

.lr.ph50.i:                                       ; preds = %bb.ah, %update_tree_entry.exit184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dc, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.ay, i64 56, i1 false), !tbaa.struct !61
  %i.ew = load ptr, ptr %i.em, align 8, !tbaa !72 ; 3 uses
  %.val.i = load i32, ptr %i.en, align 8, !tbaa !73 ; 2 uses
  %i.ex = sext i32 %.val.i to i64
  %i.ey = call i32 @name_compare(ptr noundef nonnull %.1118, i64 noundef %i.db, ptr noundef %i.ew, i64 noundef %i.ex) #15 ; 2 uses
  %.not.i36.i = icmp eq i32 %i.ey, 0
  br i1 %.not.i36.i, label %extended_entry_extract.exit174, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph50.i
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fa = icmp slt i32 %.1116, %.val.i
  br i1 %i.fa, label %bb.ak, label %check_entry_match.exit.sink.split.i

bb.ak:                                            ; preds = %bb.aj
  %bcmp.i38.i = call i32 @bcmp(ptr nonnull %.1118, ptr %i.ew, i64 %i.db)
  %.not15.i39.i = icmp eq i32 %bcmp.i38.i, 0
  br i1 %.not15.i39.i, label %bb.al, label %check_entry_match.exit.sink.split.i

bb.al:                                            ; preds = %bb.ak
  %i.fb = getelementptr inbounds i8, ptr %i.ew, i64 %i.db
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !53
  %i.fd = icmp slt i8 %i.fc, 47
  br i1 %i.fd, label %bb.am, label %check_entry_match.exit.sink.split.i

bb.am:                                            ; preds = %bb.al, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.get_tree_entry_follow_symlinks.namebuf, i64 24, i1 false)
  %i.fe = load ptr, ptr %i.az, align 8, !tbaa !46
  %i.ff = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.fg = load i32, ptr %i.bb, align 8, !tbaa !56
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds i8, ptr %i.ff, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  %i.fk = load ptr, ptr %7, align 8, !tbaa !45
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !59
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fm ; 3 uses
  %i.fo = load i32, ptr %i.ax, align 8, !tbaa !47
  %i.fp = zext i32 %i.fo to i64                   ; 3 uses
  %i.fq = ptrtoint ptr %i.fn to i64
  %i.fr = ptrtoint ptr %i.fe to i64
  %i.fs = sub i64 %i.fq, %i.fr                    ; 3 uses
  %i.ft = icmp ugt i64 %i.fs, %i.fp
  br i1 %i.ft, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fu = call fastcc ptr @_(ptr noundef nonnull @.str.12)
  call void (ptr, ...) @die(ptr noundef %i.fu) #16
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.fv = sub nuw nsw i64 %i.fp, %i.fs            ; 2 uses
  store ptr %i.fn, ptr %i.az, align 8, !tbaa !46
  %i.fw = trunc nuw i64 %i.fv to i32
  store i32 %i.fw, ptr %i.ax, align 8, !tbaa !47
  %.not.i.i181 = icmp eq i64 %i.fs, %i.fp
  br i1 %.not.i.i181, label %update_tree_entry.exit184.thread, label %update_tree_entry_internal.exit.i182

update_tree_entry.exit184.thread:                 ; preds = %bb.ao
  call void @strbuf_release(ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %check_entry_match.exit.sink.split.i

update_tree_entry_internal.exit.i182:             ; preds = %bb.ao
  %i.fx = call fastcc i32 @decode_tree_entry(ptr noundef nonnull %7, ptr noundef nonnull %i.fn, i64 noundef %i.fv, ptr noundef nonnull %5)
  %.not.i183 = icmp eq i32 %i.fx, 0
  br i1 %.not.i183, label %update_tree_entry.exit184, label %bb.ap

bb.ap:                                            ; preds = %update_tree_entry_internal.exit.i182
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !50
  call void (ptr, ...) @die(ptr noundef nonnull @.str, ptr noundef %i.fz) #16
  unreachable

update_tree_entry.exit184:                        ; preds = %update_tree_entry_internal.exit.i182
  %.pr = load i32, ptr %i.ax, align 8, !tbaa !47
  call void @strbuf_release(ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.not34.i = icmp eq i32 %.pr, 0
  br i1 %.not34.i, label %check_entry_match.exit.sink.split.i, label %.lr.ph50.i, !llvm.loop !86

check_entry_match.exit.sink.split.i:              ; preds = %update_tree_entry.exit184, %bb.al, %bb.ak, %bb.aj, %update_tree_entry.exit184.thread, %bb.ah, %bb.ag, %bb.af, %bb.ae
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dc, i8 0, i64 56, i1 false)
  br label %extended_entry_extract.exit174

extended_entry_extract.exit174:                   ; preds = %.lr.ph50.i, %.critedge.i.thread, %.critedge.i, %bb.ac, %check_entry_match.exit.sink.split.i
  %10 = phi ptr [ %9, %.critedge.i.thread ], [ %i.em, %check_entry_match.exit.sink.split.i ], [ %i.em, %.critedge.i ], [ %i.em, %bb.ac ], [ %i.em, %.lr.ph50.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %11 = load ptr, ptr %10, align 8, !tbaa !72     ; 2 uses
  %.not155 = icmp eq ptr %11, null
  br i1 %.not155, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %extended_entry_extract.exit174
  %i.ga = getelementptr i8, ptr %i.dc, i64 48
  %.val = load i32, ptr %i.ga, align 8, !tbaa !73
  %i.gb = sext i32 %.val to i64
  %i.gc = call i32 @name_compare(ptr noundef nonnull %11, i64 noundef %i.gb, ptr noundef nonnull %.1118, i64 noundef %i.db) #15
  %.not156 = icmp eq i32 %i.gc, 0
  br i1 %.not156, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dc, i8 0, i64 56, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar, %extended_entry_extract.exit174
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %exitcond269.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count268
  br i1 %exitcond269.not, label %.lr.ph226.preheader, label %bb.u, !llvm.loop !87

.lr.ph226.preheader:                              ; preds = %bb.as, %._crit_edge214
  %.4224.ph = phi ptr [ %i.cs, %._crit_edge214 ], [ %i.dc, %bb.as ] ; 2 uses
  br i1 %i.bg, label %.lr.ph226.epil.preheader, label %.lr.ph226

.lr.ph226:                                        ; preds = %.lr.ph226.preheader, %bb.av
  %indvars.iv270 = phi i64 [ %indvars.iv.next271.1, %bb.av ], [ 0, %.lr.ph226.preheader ] ; 5 uses
  %.4224 = phi ptr [ %.5.1, %bb.av ], [ %.4224.ph, %.lr.ph226.preheader ]
  %.0119223 = phi i64 [ %.2121.1, %bb.av ], [ 0, %.lr.ph226.preheader ] ; 2 uses
  %.0122222 = phi i64 [ %.1123.1, %bb.av ], [ 0, %.lr.ph226.preheader ] ; 2 uses
  %niter365 = phi i64 [ %niter365.next.1, %bb.av ], [ 0, %.lr.ph226.preheader ]
  %i.gd = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %indvars.iv270 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !72
  %.not154 = icmp eq ptr %i.gf, null
  br i1 %.not154, label %.lr.ph226.1, label %bb.at

bb.at:                                            ; preds = %.lr.ph226
  %i.gg = shl nuw i64 1, %indvars.iv270           ; 2 uses
  %i.gh = or i64 %i.gg, %.0122222
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 52
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !74
  %i.gk = and i32 %i.gj, 61440
  %i.gl = icmp eq i32 %i.gk, 16384
  %i.gm = select i1 %i.gl, i64 %i.gg, i64 0
  %spec.select = or i64 %i.gm, %.0119223
  br label %.lr.ph226.1

.lr.ph226.1:                                      ; preds = %.lr.ph226, %bb.at
  %.1123 = phi i64 [ %i.gh, %bb.at ], [ %.0122222, %.lr.ph226 ] ; 2 uses
  %.2121 = phi i64 [ %spec.select, %bb.at ], [ %.0119223, %.lr.ph226 ] ; 2 uses
  %.5 = phi ptr [ %i.gd, %bb.at ], [ %.4224, %.lr.ph226 ]
  %i.gn = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %indvars.iv270 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 96
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !72
  %.not154.1 = icmp eq ptr %i.gp, null
  br i1 %.not154.1, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph226.1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 56
  %i.gr = shl nuw i64 2, %indvars.iv270           ; 2 uses
  %i.gs = or i64 %i.gr, %.1123
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 108
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !74
  %i.gv = and i32 %i.gu, 61440
  %i.gw = icmp eq i32 %i.gv, 16384
  %i.gx = select i1 %i.gw, i64 %i.gr, i64 0
  %spec.select.1 = or i64 %i.gx, %.2121
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph226.1
  %.1123.1 = phi i64 [ %i.gs, %bb.au ], [ %.1123, %.lr.ph226.1 ] ; 3 uses
  %.2121.1 = phi i64 [ %spec.select.1, %bb.au ], [ %.2121, %.lr.ph226.1 ] ; 3 uses
  %.5.1 = phi ptr [ %i.gq, %bb.au ], [ %.5, %.lr.ph226.1 ] ; 3 uses
  %indvars.iv.next271.1 = add nuw nsw i64 %indvars.iv270, 2 ; 2 uses
  %niter365.next.1 = add i64 %niter365, 2         ; 2 uses
  %niter365.ncmp.1 = icmp eq i64 %niter365.next.1, %unroll_iter364
  br i1 %niter365.ncmp.1, label %._crit_edge227.unr-lcssa, label %.lr.ph226, !llvm.loop !88

._crit_edge227.unr-lcssa:                         ; preds = %bb.av
  br i1 %lcmp.mod359.not, label %._crit_edge227, label %.lr.ph226.epil.preheader

.lr.ph226.epil.preheader:                         ; preds = %._crit_edge227.unr-lcssa, %.lr.ph226.preheader
  %indvars.iv270.epil.init = phi i64 [ 0, %.lr.ph226.preheader ], [ %indvars.iv.next271.1, %._crit_edge227.unr-lcssa ] ; 2 uses
  %.4224.epil.init = phi ptr [ %.4224.ph, %.lr.ph226.preheader ], [ %.5.1, %._crit_edge227.unr-lcssa ]
  %.0119223.epil.init = phi i64 [ 0, %.lr.ph226.preheader ], [ %.2121.1, %._crit_edge227.unr-lcssa ] ; 2 uses
  %.0122222.epil.init = phi i64 [ 0, %.lr.ph226.preheader ], [ %.1123.1, %._crit_edge227.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod363)
  %i.gy = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %indvars.iv270.epil.init ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !72
  %.not154.epil = icmp eq ptr %i.ha, null
  br i1 %.not154.epil, label %._crit_edge227, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph226.epil.preheader
  %i.hb = shl nuw i64 1, %indvars.iv270.epil.init ; 2 uses
  %i.hc = or i64 %i.hb, %.0122222.epil.init
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 52
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !74
  %i.hf = and i32 %i.he, 61440
  %i.hg = icmp eq i32 %i.hf, 16384
  %i.hh = select i1 %i.hg, i64 %i.hb, i64 0
  %spec.select.epil = or i64 %i.hh, %.0119223.epil.init
  br label %._crit_edge227

._crit_edge227:                                   ; preds = %.lr.ph226.epil.preheader, %bb.aw, %._crit_edge227.unr-lcssa
  %.1123.lcssa = phi i64 [ %.1123.1, %._crit_edge227.unr-lcssa ], [ %i.hc, %bb.aw ], [ %.0122222.epil.init, %.lr.ph226.epil.preheader ] ; 4 uses
  %.2121.lcssa = phi i64 [ %.2121.1, %._crit_edge227.unr-lcssa ], [ %spec.select.epil, %bb.aw ], [ %.0119223.epil.init, %.lr.ph226.epil.preheader ]
  %.5.lcssa = phi ptr [ %.5.1, %._crit_edge227.unr-lcssa ], [ %i.gy, %bb.aw ], [ %.4224.epil.init, %.lr.ph226.epil.preheader ] ; 3 uses
  %.not150 = icmp eq i64 %.1123.lcssa, 0
  br i1 %.not150, label %.lr.ph235.preheader, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge227
  %.val160 = load ptr, ptr %i.bc, align 8, !tbaa !103 ; 4 uses
  %i.hi = icmp eq ptr %.val160, null
  %i.hj = icmp eq i32 %.0127350, 2
  %or.cond.i = or i1 %i.hj, %i.hi
  br i1 %or.cond.i, label %.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hk = icmp slt i32 %.0127350, 0
  br i1 %i.hk, label %.lr.ph235.preheader, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hl = call fastcc i32 @do_match(ptr noundef %0, ptr noundef readonly %.5.lcssa, ptr noundef nonnull %8, ptr noundef nonnull readonly %.val160, i32 noundef 0) ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.val160, i64 8
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !77
  %i.ho = and i32 %i.hn, 32
  %i.hp = icmp eq i32 %i.ho, 0
  %i.hq = icmp slt i32 %i.hl, 1
  %or.cond.i.i = select i1 %i.hp, i1 true, i1 %i.hq
  br i1 %or.cond.i.i, label %prune_traversal.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hr = call fastcc i32 @do_match(ptr noundef %0, ptr noundef readonly %.5.lcssa, ptr noundef nonnull %8, ptr noundef nonnull readonly %.val160, i32 noundef 1) ; 3 uses
  %i.hs = icmp eq i32 %i.hl, 2                    ; 2 uses
  %i.ht = icmp eq i32 %i.hr, 0
  %or.cond3.i.i = select i1 %i.hs, i1 %i.ht, i1 false
  br i1 %or.cond3.i.i, label %.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hu = icmp slt i32 %i.hr, 1
  br i1 %i.hu, label %.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hv = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 52
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !74
  %i.hx = and i32 %i.hw, 61440
  %i.hy = icmp eq i32 %i.hx, 16384
  %i.hz = icmp eq i32 %i.hr, 1                    ; 2 uses
  %or.cond7.i.i = select i1 %i.hy, i1 %i.hz, i1 false
  br i1 %or.cond7.i.i, label %.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ia = icmp eq i32 %i.hl, 1
  %or.cond11.i.i = select i1 %i.hs, i1 %i.hz, i1 false
  %or.cond35.i.i = select i1 %i.ia, i1 true, i1 %or.cond11.i.i
  %not.or.cond35.i.i = xor i1 %or.cond35.i.i, true
  %spec.select.i.i = sext i1 %not.or.cond35.i.i to i32
  br label %prune_traversal.exit

prune_traversal.exit:                             ; preds = %bb.az, %bb.bd
  %.0.i175 = phi i32 [ %spec.select.i.i, %bb.bd ], [ %i.hl, %bb.az ] ; 3 uses
  %i.ib = icmp slt i32 %.0.i175, 0
  br i1 %i.ib, label %.lr.ph235.preheader, label %bb.be

bb.be:                                            ; preds = %prune_traversal.exit
  %.not151 = icmp eq i32 %.0.i175, 0
  br i1 %.not151, label %bb.bh, label %.thread

.thread:                                          ; preds = %bb.ax, %bb.ba, %bb.bb, %bb.bc, %bb.be
  %.0.i175191197 = phi i32 [ %.0.i175, %bb.be ], [ 1, %bb.bc ], [ %i.hl, %bb.bb ], [ 1, %bb.ba ], [ 2, %bb.ax ]
  %i.ic = load ptr, ptr %i.bd, align 8, !tbaa !104
  %i.id = call i32 %i.ic(i32 noundef %1, i64 noundef %.1123.lcssa, i64 noundef %.2121.lcssa, ptr noundef nonnull %i.n, ptr noundef nonnull %3) #15 ; 4 uses
  %i.ie = icmp slt i32 %i.id, 0
  br i1 %i.ie, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.thread
  %i.if = load i32, ptr %i.be, align 8, !tbaa !105
  %.not152 = icmp eq i32 %i.if, 0
  br i1 %.not152, label %.lr.ph235.preheader, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.thread
  %.1136 = phi i32 [ %i.id, %bb.bf ], [ %.0135349, %.thread ]
  %i.ig = sext i32 %i.id to i64
  %i.ih = and i64 %.1123.lcssa, %i.ig
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be
  %.0.i175192 = phi i32 [ %.0.i175191197, %bb.bg ], [ 0, %bb.be ]
  %.2137 = phi i32 [ %.1136, %bb.bg ], [ %.0135349, %bb.be ]
  %.2124 = phi i64 [ %i.ih, %bb.bg ], [ %.1123.lcssa, %bb.be ]
  br label %.lr.ph233

.lr.ph233:                                        ; preds = %bb.bh, %update_extended_entry.exit
  %indvars.iv276 = phi i64 [ %indvars.iv.next277, %update_extended_entry.exit ], [ 0, %bb.bh ] ; 4 uses
  %i.ii = shl nuw i64 1, %indvars.iv276
  %i.ij = and i64 %i.ii, %.2124
  %.not153 = icmp eq i64 %i.ij, 0
  br i1 %.not153, label %update_extended_entry.exit, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph233
  %i.ik = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %indvars.iv276 ; 3 uses
  %i.il = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %indvars.iv276
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 56
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !106
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 40 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !72
  %i.iq = icmp eq ptr %i.in, %i.ip
  br i1 %i.iq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @update_tree_entry(ptr noundef nonnull %i.ik)
  br label %update_extended_entry.exit

bb.bk:                                            ; preds = %bb.bi
  %i.ir = call ptr @xmalloc(i64 noundef 16) #15   ; 3 uses
end_hunk_0
