Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/tree-walk?download=true
inline.NumInlined: 87
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@strbuf_make_traverse_path:bb.a
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
  %wide.trip.count256 = zext nneg i32 %1 to i64
  %wide.trip.count262 = zext nneg i32 %1 to i64
  %wide.trip.count268 = zext nneg i32 %1 to i64
  %wide.trip.count280 = zext nneg i32 %1 to i64   ; 3 uses
  br i1 %.not238, label %._crit_edge236, label %.lr.ph209.preheader.preheader

.lr.ph209.preheader.preheader:                    ; preds = %bb.i
  %xtraiter358 = and i64 %wide.trip.count280, 1
  %i.bf = icmp eq i32 %1, 1
  %unroll_iter364 = and i64 %wide.trip.count280, 2147483646
  %lcmp.mod359.not = icmp eq i64 %xtraiter358, 0
  %lcmp.mod363 = trunc i32 %1 to i1
  br label %.lr.ph209.preheader

.lr.ph209.preheader.loopexit:                     ; preds = %update_extended_entry.exit
  br label %.lr.ph209.preheader, !llvm.loop !82

.lr.ph209.preheader:                              ; preds = %.lr.ph209.preheader.preheader, %.lr.ph209.preheader.loopexit
  %.0127350 = phi i32 [ %.0.i175192, %.lr.ph209.preheader.loopexit ], [ 1, %.lr.ph209.preheader.preheader ] ; 2 uses
  %.0135349 = phi i32 [ %.2137, %.lr.ph209.preheader.loopexit ], [ 0, %.lr.ph209.preheader.preheader ] ; 5 uses
  br label %.lr.ph209

.lr.ph209:                                        ; preds = %.lr.ph209.preheader, %extended_entry_extract.exit
  %indvars.iv253 = phi i64 [ %indvars.iv.next254, %extended_entry_extract.exit ], [ 0, %.lr.ph209.preheader ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %indvars.iv253 ; 3 uses
  %i.bh = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %indvars.iv253 ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 72 ; 4 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !99
  %.not47.i = icmp eq i32 %i.bj, 0
  br i1 %.not47.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph209
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  br label %bb.j

._crit_edge.i:                                    ; preds = %update_tree_entry.exit, %.lr.ph209
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, i8 0, i64 56, i1 false)
  br label %extended_entry_extract.exit

bb.j:                                             ; preds = %update_tree_entry.exit, %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.bk, i64 56, i1 false), !tbaa.struct !61
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.0.in.i = phi ptr [ %i.bl, %bb.j ], [ %.0.i, %bb.l ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !100 ; 3 uses
  %.not31.i = icmp eq ptr %.0.i, null
  br i1 %.not31.i, label %extended_entry_extract.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !72
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !102
  %i.bt = icmp eq ptr %i.bq, %i.bs
  br i1 %i.bt, label %bb.m, label %bb.k, !llvm.loop !83

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) @__const.get_tree_entry_follow_symlinks.namebuf, i64 24, i1 false)
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !46
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !55
  %i.bw = load i32, ptr %i.bp, align 8, !tbaa !56
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %i.bv, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ca = load ptr, ptr %i.bh, align 8, !tbaa !45
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !59
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cc ; 3 uses
  %i.ce = load i32, ptr %i.bi, align 8, !tbaa !47
  %i.cf = zext i32 %i.ce to i64                   ; 3 uses
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = ptrtoint ptr %i.bu to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 3 uses
  %i.cj = icmp ugt i64 %i.ci, %i.cf
  br i1 %i.cj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ck = call fastcc ptr @_(ptr noundef nonnull @.str.12)
  call void (ptr, ...) @die(ptr noundef %i.ck) #16
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.cl = sub nuw nsw i64 %i.cf, %i.ci            ; 2 uses
  store ptr %i.cd, ptr %i.bn, align 8, !tbaa !46
  %i.cm = trunc nuw i64 %i.cl to i32
  store i32 %i.cm, ptr %i.bi, align 8, !tbaa !47
  %.not.i.i179 = icmp eq i64 %i.ci, %i.cf
  br i1 %.not.i.i179, label %update_tree_entry.exit, label %update_tree_entry_internal.exit.i

update_tree_entry_internal.exit.i:                ; preds = %bb.o
  %i.cn = call fastcc i32 @decode_tree_entry(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.cd, i64 noundef %i.cl, ptr noundef nonnull %6)
  %.not.i180 = icmp eq i32 %i.cn, 0
  br i1 %.not.i180, label %update_tree_entry.exit, label %bb.p

bb.p:                                             ; preds = %update_tree_entry_internal.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !50
  call void (ptr, ...) @die(ptr noundef nonnull @.str, ptr noundef %i.cp) #16
  unreachable

update_tree_entry.exit:                           ; preds = %bb.o, %update_tree_entry_internal.exit.i
  call void @strbuf_release(ptr noundef nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.cq = load i32, ptr %i.bi, align 8, !tbaa !99
  %.not.i165 = icmp eq i32 %i.cq, 0
  br i1 %.not.i165, label %._crit_edge.i, label %bb.j

extended_entry_extract.exit:                      ; preds = %bb.k, %._crit_edge.i
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %exitcond257.not = icmp eq i64 %indvars.iv.next254, %wide.trip.count256
  br i1 %exitcond257.not, label %.lr.ph213, label %.lr.ph209, !llvm.loop !84

.lr.ph213:                                        ; preds = %extended_entry_extract.exit, %bb.t
  %indvars.iv258 = phi i64 [ %indvars.iv.next259, %bb.t ], [ 0, %extended_entry_extract.exit ] ; 2 uses
  %.0115212 = phi i32 [ %.1116, %bb.t ], [ 0, %extended_entry_extract.exit ] ; 3 uses
  %.0117211 = phi ptr [ %.1118, %bb.t ], [ null, %extended_entry_extract.exit ] ; 4 uses
  %i.cr = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %indvars.iv258 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !72 ; 3 uses
  %.not157 = icmp eq ptr %i.ct, null
  br i1 %.not157, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.lr.ph213
  %i.cu = getelementptr i8, ptr %i.cr, i64 48
  %.val159 = load i32, ptr %i.cu, align 8, !tbaa !73 ; 3 uses
  %.not158 = icmp eq ptr %.0117211, null
  br i1 %.not158, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = sext i32 %.val159 to i64
  %i.cw = sext i32 %.0115212 to i64
  %i.cx = call i32 @name_compare(ptr noundef nonnull %i.ct, i64 noundef %i.cv, ptr noundef nonnull %.0117211, i64 noundef %i.cw) #15
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cz = load ptr, ptr %i.cs, align 8, !tbaa !72
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s, %.lr.ph213
  %.1118 = phi ptr [ %i.cz, %bb.s ], [ %.0117211, %bb.r ], [ %.0117211, %.lr.ph213 ], [ %i.ct, %bb.q ] ; 7 uses
  %.1116 = phi i32 [ %.val159, %bb.s ], [ %.0115212, %bb.r ], [ %.0115212, %.lr.ph213 ], [ %.val159, %bb.q ] ; 4 uses
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next259, %wide.trip.count262
  br i1 %exitcond263.not, label %._crit_edge214, label %.lr.ph213, !llvm.loop !85

._crit_edge214:                                   ; preds = %bb.t
  %.not149 = icmp eq ptr %.1118, null
  br i1 %.not149, label %.lr.ph226.preheader, label %.lr.ph219

.lr.ph219:                                        ; preds = %._crit_edge214
  %i.da = sext i32 %.1116 to i64                  ; 7 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph219, %bb.as
  %indvars.iv264 = phi i64 [ 0, %.lr.ph219 ], [ %indvars.iv.next265, %bb.as ] ; 3 uses
  %i.db = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %indvars.iv264 ; 11 uses
  %i.dc = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %indvars.iv264 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 72 ; 4 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !99
  %.not47.i166 = icmp eq i32 %i.de, 0
  br i1 %.not47.i166, label %.critedge.i.thread, label %.lr.ph.i167

.lr.ph.i167:                                      ; preds = %bb.u
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  br label %bb.v

.critedge.i.thread:                               ; preds = %update_tree_entry.exit188, %bb.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.db, i8 0, i64 56, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  br label %extended_entry_extract.exit174

bb.v:                                             ; preds = %update_tree_entry.exit188, %.lr.ph.i167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.db, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.df, i64 56, i1 false), !tbaa.struct !61
  %.pre = load ptr, ptr %i.dh, align 8, !tbaa !72 ; 5 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %.0.in.i168 = phi ptr [ %i.dg, %bb.v ], [ %.0.i169, %bb.x ]
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
  %i.dp = load ptr, ptr %i.di, align 8, !tbaa !46
  %i.dq = load ptr, ptr %i.dj, align 8, !tbaa !55
  %i.dr = load i32, ptr %i.dk, align 8, !tbaa !56
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dv = load ptr, ptr %i.dc, align 8, !tbaa !45
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
end_hunk_0
begin_hunk_1_@traverse_trees:bb.a
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !72
  %.not154 = icmp eq ptr %i.gh, null
  br i1 %.not154, label %.lr.ph226.1, label %bb.at

bb.at:                                            ; preds = %.lr.ph226
  %i.gi = shl nuw i64 1, %indvars.iv270           ; 2 uses
  %i.gj = or i64 %i.gi, %.0122222
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 52
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !74
  %i.gm = and i32 %i.gl, 61440
  %i.gn = icmp eq i32 %i.gm, 16384
  %i.go = select i1 %i.gn, i64 %i.gi, i64 0
  %spec.select = or i64 %i.go, %.0119223
  br label %.lr.ph226.1

.lr.ph226.1:                                      ; preds = %.lr.ph226, %bb.at
  %.1123 = phi i64 [ %i.gj, %bb.at ], [ %.0122222, %.lr.ph226 ] ; 2 uses
  %.2121 = phi i64 [ %spec.select, %bb.at ], [ %.0119223, %.lr.ph226 ] ; 2 uses
  %.5 = phi ptr [ %i.gf, %bb.at ], [ %.4224, %.lr.ph226 ]
  %i.gp = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %indvars.iv270 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 96
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !72
  %.not154.1 = icmp eq ptr %i.gr, null
  br i1 %.not154.1, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph226.1
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 56
  %i.gt = shl nuw i64 2, %indvars.iv270           ; 2 uses
  %i.gu = or i64 %i.gt, %.1123
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 108
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !74
  %i.gx = and i32 %i.gw, 61440
  %i.gy = icmp eq i32 %i.gx, 16384
  %i.gz = select i1 %i.gy, i64 %i.gt, i64 0
  %spec.select.1 = or i64 %i.gz, %.2121
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph226.1
  %.1123.1 = phi i64 [ %i.gu, %bb.au ], [ %.1123, %.lr.ph226.1 ] ; 3 uses
  %.2121.1 = phi i64 [ %spec.select.1, %bb.au ], [ %.2121, %.lr.ph226.1 ] ; 3 uses
  %.5.1 = phi ptr [ %i.gs, %bb.au ], [ %.5, %.lr.ph226.1 ] ; 3 uses
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
  %i.ha = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %indvars.iv270.epil.init ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !72
  %.not154.epil = icmp eq ptr %i.hc, null
  br i1 %.not154.epil, label %._crit_edge227, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph226.epil.preheader
  %i.hd = shl nuw i64 1, %indvars.iv270.epil.init ; 2 uses
  %i.he = or i64 %i.hd, %.0122222.epil.init
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 52
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !74
  %i.hh = and i32 %i.hg, 61440
  %i.hi = icmp eq i32 %i.hh, 16384
  %i.hj = select i1 %i.hi, i64 %i.hd, i64 0
  %spec.select.epil = or i64 %i.hj, %.0119223.epil.init
  br label %._crit_edge227

._crit_edge227:                                   ; preds = %.lr.ph226.epil.preheader, %bb.aw, %._crit_edge227.unr-lcssa
  %.1123.lcssa = phi i64 [ %.1123.1, %._crit_edge227.unr-lcssa ], [ %i.he, %bb.aw ], [ %.0122222.epil.init, %.lr.ph226.epil.preheader ] ; 4 uses
  %.2121.lcssa = phi i64 [ %.2121.1, %._crit_edge227.unr-lcssa ], [ %spec.select.epil, %bb.aw ], [ %.0119223.epil.init, %.lr.ph226.epil.preheader ]
  %.5.lcssa = phi ptr [ %.5.1, %._crit_edge227.unr-lcssa ], [ %i.ha, %bb.aw ], [ %.4224.epil.init, %.lr.ph226.epil.preheader ] ; 3 uses
  %.not150 = icmp eq i64 %.1123.lcssa, 0
  br i1 %.not150, label %.lr.ph235.preheader, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge227
  %.val160 = load ptr, ptr %i.bc, align 8, !tbaa !103 ; 4 uses
  %i.hk = icmp eq ptr %.val160, null
  %i.hl = icmp eq i32 %.0127350, 2
  %or.cond.i = or i1 %i.hl, %i.hk
  br i1 %or.cond.i, label %.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hm = icmp slt i32 %.0127350, 0
  br i1 %i.hm, label %.lr.ph235.preheader, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hn = call fastcc i32 @do_match(ptr noundef %0, ptr noundef readonly %.5.lcssa, ptr noundef nonnull %8, ptr noundef nonnull readonly %.val160, i32 noundef 0) ; 5 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.val160, i64 8
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !77
  %i.hq = and i32 %i.hp, 32
  %i.hr = icmp eq i32 %i.hq, 0
  %i.hs = icmp slt i32 %i.hn, 1
  %or.cond.i.i = select i1 %i.hr, i1 true, i1 %i.hs
  br i1 %or.cond.i.i, label %prune_traversal.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ht = call fastcc i32 @do_match(ptr noundef %0, ptr noundef readonly %.5.lcssa, ptr noundef nonnull %8, ptr noundef nonnull readonly %.val160, i32 noundef 1) ; 3 uses
  %i.hu = icmp eq i32 %i.hn, 2                    ; 2 uses
  %i.hv = icmp eq i32 %i.ht, 0
  %or.cond3.i.i = select i1 %i.hu, i1 %i.hv, i1 false
  br i1 %or.cond3.i.i, label %.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hw = icmp slt i32 %i.ht, 1
  br i1 %i.hw, label %.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hx = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 52
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !74
  %i.hz = and i32 %i.hy, 61440
  %i.ia = icmp eq i32 %i.hz, 16384
  %i.ib = icmp eq i32 %i.ht, 1                    ; 2 uses
  %or.cond7.i.i = select i1 %i.ia, i1 %i.ib, i1 false
  br i1 %or.cond7.i.i, label %.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ic = icmp eq i32 %i.hn, 1
  %or.cond11.i.i = select i1 %i.hu, i1 %i.ib, i1 false
  %or.cond35.i.i = select i1 %i.ic, i1 true, i1 %or.cond11.i.i
  %not.or.cond35.i.i = xor i1 %or.cond35.i.i, true
  %spec.select.i.i = sext i1 %not.or.cond35.i.i to i32
  br label %prune_traversal.exit

prune_traversal.exit:                             ; preds = %bb.az, %bb.bd
  %.0.i175 = phi i32 [ %spec.select.i.i, %bb.bd ], [ %i.hn, %bb.az ] ; 3 uses
  %i.id = icmp slt i32 %.0.i175, 0
  br i1 %i.id, label %.lr.ph235.preheader, label %bb.be

bb.be:                                            ; preds = %prune_traversal.exit
  %.not151 = icmp eq i32 %.0.i175, 0
  br i1 %.not151, label %bb.bh, label %.thread

.thread:                                          ; preds = %bb.ax, %bb.ba, %bb.bb, %bb.bc, %bb.be
  %.0.i175191197 = phi i32 [ %.0.i175, %bb.be ], [ 1, %bb.bc ], [ %i.hn, %bb.bb ], [ 1, %bb.ba ], [ 2, %bb.ax ]
  %i.ie = load ptr, ptr %i.bd, align 8, !tbaa !104
  %i.if = call i32 %i.ie(i32 noundef %1, i64 noundef %.1123.lcssa, i64 noundef %.2121.lcssa, ptr noundef nonnull %i.n, ptr noundef nonnull %3) #15 ; 4 uses
  %i.ig = icmp slt i32 %i.if, 0
  br i1 %i.ig, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.thread
  %i.ih = load i32, ptr %i.be, align 8, !tbaa !105
  %.not152 = icmp eq i32 %i.ih, 0
  br i1 %.not152, label %.lr.ph235.preheader, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.thread
  %.1136 = phi i32 [ %i.if, %bb.bf ], [ %.0135349, %.thread ]
  %i.ii = sext i32 %i.if to i64
  %i.ij = and i64 %.1123.lcssa, %i.ii
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be
  %.0.i175192 = phi i32 [ %.0.i175191197, %bb.bg ], [ 0, %bb.be ]
  %.2137 = phi i32 [ %.1136, %bb.bg ], [ %.0135349, %bb.be ]
  %.2124 = phi i64 [ %i.ij, %bb.bg ], [ %.1123.lcssa, %bb.be ]
  br label %.lr.ph233

.lr.ph233:                                        ; preds = %bb.bh, %update_extended_entry.exit
  %indvars.iv276 = phi i64 [ %indvars.iv.next277, %update_extended_entry.exit ], [ 0, %bb.bh ] ; 4 uses
  %i.ik = shl nuw i64 1, %indvars.iv276
  %i.il = and i64 %i.ik, %.2124
  %.not153 = icmp eq i64 %i.il, 0
  br i1 %.not153, label %update_extended_entry.exit, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph233
  %i.im = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %indvars.iv276 ; 3 uses
  %i.in = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %indvars.iv276
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 56
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !106
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 40 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !72
  %i.is = icmp eq ptr %i.ip, %i.ir
  br i1 %i.is, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @update_tree_entry(ptr noundef nonnull %i.im)
  br label %update_extended_entry.exit

bb.bk:                                            ; preds = %bb.bi
  %i.it = call ptr @xmalloc(i64 noundef 16) #15   ; 3 uses
  %i.iu = load ptr, ptr %i.iq, align 8, !tbaa !72
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store ptr %i.iu, ptr %i.iv, align 8, !tbaa !102
  %i.iw = getelementptr inbounds nuw i8, ptr %i.im, i64 80 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !97
  store ptr %i.ix, ptr %i.it, align 8, !tbaa !107
  store ptr %i.it, ptr %i.iw, align 8, !tbaa !97
  br label %update_extended_entry.exit

update_extended_entry.exit:                       ; preds = %bb.bk, %bb.bj, %.lr.ph233
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %exitcond281.not = icmp eq i64 %indvars.iv.next277, %wide.trip.count280
  br i1 %exitcond281.not, label %.lr.ph209.preheader.loopexit, label %.lr.ph233, !llvm.loop !82

.lr.ph235.preheader:                              ; preds = %bb.ay, %prune_traversal.exit, %bb.bf, %._crit_edge227
  %.3138.ph = phi i32 [ %.0135349, %._crit_edge227 ], [ %.0135349, %bb.ay ], [ %.0135349, %prune_traversal.exit ], [ %i.if, %bb.bf ]
  %wide.trip.count286 = zext nneg i32 %1 to i64
  br label %.lr.ph235

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %free_extended_entry.exit
  %indvars.iv282 = phi i64 [ 0, %.lr.ph235.preheader ], [ %indvars.iv.next283, %free_extended_entry.exit ] ; 2 uses
  %i.iy = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %indvars.iv282
  %i.iz = getelementptr i8, ptr %i.iy, i64 80
  %.val161 = load ptr, ptr %i.iz, align 8, !tbaa !97 ; 2 uses
  %.not1.i = icmp eq ptr %.val161, null
  br i1 %.not1.i, label %free_extended_entry.exit, label %.lr.ph.i176

.lr.ph.i176:                                      ; preds = %.lr.ph235, %.lr.ph.i176
  %.02.i = phi ptr [ %i.ja, %.lr.ph.i176 ], [ %.val161, %.lr.ph235 ] ; 2 uses
  %i.ja = load ptr, ptr %.02.i, align 8, !tbaa !107 ; 2 uses
  call void @free(ptr noundef nonnull %.02.i) #15
  %.not.i177 = icmp eq ptr %i.ja, null
  br i1 %.not.i177, label %free_extended_entry.exit, label %.lr.ph.i176, !llvm.loop !89

free_extended_entry.exit:                         ; preds = %.lr.ph.i176, %.lr.ph235
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next283, %wide.trip.count286
  br i1 %exitcond287.not, label %._crit_edge236, label %.lr.ph235, !llvm.loop !90

._crit_edge236:                                   ; preds = %free_extended_entry.exit, %bb.i
  %.3138.ph321 = phi i32 [ 0, %bb.i ], [ %.3138.ph, %free_extended_entry.exit ]
  call void @free(ptr noundef %i.p) #15
  call void @free(ptr noundef %i.n) #15
  call void @free(ptr noundef %.0126) #15
  store ptr null, ptr %3, align 8, !tbaa !98
  call void @strbuf_release(ptr noundef nonnull %8) #15
  %i.jb = load i32, ptr @traverse_trees_cur_depth, align 4, !tbaa !54
  %i.jc = add nsw i32 %i.jb, -1
  store i32 %i.jc, ptr @traverse_trees_cur_depth, align 4, !tbaa !54
  br label %bb.bl

bb.bl:                                            ; preds = %._crit_edge236, %bb.b
  %.0139 = phi i32 [ -1, %bb.b ], [ %.3138.ph321, %._crit_edge236 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret i32 %.0139
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @xstrndup(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @name_compare(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @get_tree_entry(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.strbuf, align 8             ; 6 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %6 = alloca %struct.object_id, align 4          ; 5 uses
  %7 = alloca %struct.tree_desc, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = call ptr @odb_read_object_peeled(ptr noundef %i.c, ptr noundef %1, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %6) #15 ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %2, align 1, !tbaa !53
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull readonly align 4 dereferenceable(32) %6, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.h, ptr %i.i, align 4, !tbaa !13
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %.not16 = icmp eq i64 %i.j, 0
  br i1 %.not16, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.get_tree_entry_follow_symlinks.namebuf, i64 24, i1 false)
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i32, ptr %i.k, align 4, !tbaa !13   ; 2 uses
  %.not18.i.i = icmp eq i32 %i.l, 0
  br i1 %.not18.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [112 x i8], ptr @hash_algos, i64 %i.m
  br label %init_tree_desc_internal.exit.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.o = load ptr, ptr @the_repository, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 448
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42
  br label %init_tree_desc_internal.exit.i

init_tree_desc_internal.exit.i:                   ; preds = %bb.g, %bb.h
  %i.r = phi ptr [ %i.n, %bb.g ], [ %i.q, %bb.h ]
  store ptr %i.r, ptr %7, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.d, ptr %i.s, align 8, !tbaa !46
  %i.t = trunc i64 %i.j to i32
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i32 %i.t, ptr %i.u, align 8, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 76
  store i32 0, ptr %i.v, align 4, !tbaa !48
  %i.w = call fastcc i32 @decode_tree_entry(ptr noundef nonnull %7, ptr noundef nonnull %i.d, i64 noundef %i.j, ptr noundef nonnull %5)
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %init_tree_desc.exit, label %bb.i

bb.i:                                             ; preds = %init_tree_desc_internal.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  call void (ptr, ...) @die(ptr noundef nonnull @.str, ptr noundef %i.y) #16
  unreachable

init_tree_desc.exit:                              ; preds = %init_tree_desc_internal.exit.i
  call void @strbuf_release(ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.z = call fastcc i32 @find_tree_entry(ptr noundef nonnull %0, ptr noundef %7, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %.sink.split

.sink.split:                                      ; preds = %init_tree_desc.exit, %bb.d, %bb.c
  %.014.ph = phi i32 [ 0, %bb.c ], [ %i.z, %init_tree_desc.exit ], [ -1, %bb.d ]
  call void @free(ptr noundef nonnull %i.d) #15
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.a
  %.014 = phi i32 [ -1, %bb.a ], [ %.014.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @find_tree_entry(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.object_id, align 4          ; 8 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #17
  %i.b = trunc i64 %i.a to i32                    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !47
  %.not43 = icmp eq i32 %i.d, 0
  br i1 %.not43, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.j = getelementptr i8, ptr %1, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.l = load i32, ptr %i.g, align 4, !tbaa !78
  %i.m = trunc i32 %i.l to i16
  store i16 %i.m, ptr %4, align 2, !tbaa !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.n = load i32, ptr %i.h, align 8, !tbaa !13   ; 3 uses
  store i32 %i.n, ptr %i.i, align 4, !tbaa !13
  %.val = load i32, ptr %i.j, align 8, !tbaa !73  ; 4 uses
  tail call void @update_tree_entry(ptr noundef nonnull %1)
  %i.o = icmp sgt i32 %.val, %i.b
  br i1 %i.o, label %bb.l, label %bb.c, !llvm.loop !108

bb.c:                                             ; preds = %bb.b
  %i.p = sext i32 %.val to i64                    ; 2 uses
  %i.q = tail call i32 @memcmp(ptr noundef nonnull %2, ptr noundef %i.k, i64 noundef %i.p) #17 ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.l, label %bb.d, !llvm.loop !108

bb.d:                                             ; preds = %bb.c
  %i.s = icmp slt i32 %i.q, 0
  br i1 %i.s, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp eq i32 %.val, %i.b
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull readonly align 4 dereferenceable(32) %5, i64 32, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.n, ptr %i.u, align 4, !tbaa !13
  br label %.loopexit.sink.split

bb.g:                                             ; preds = %bb.e
end_hunk_1
begin_hunk_2_@decode_tree_entry:bb.a
  %i.l = load i32, ptr @git_gettext_enabled, align 4, !tbaa !54
  %.not4.i = icmp eq i32 %i.l, 0
  br i1 %.not4.i, label %_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #15
  br label %_.exit

_.exit:                                           ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.m, %bb.d ], [ @.str.8, %bb.c ] ; 2 uses
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #17
  tail call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull %.0.i, i64 noundef %i.n) #15
  br label %bb.u

bb.e:                                             ; preds = %bb.b
  %i.o = load i8, ptr %1, align 1, !tbaa !53      ; 2 uses
  %i.p = icmp eq i8 %i.o, 32
  br i1 %i.p, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.i
  %i.r = phi ptr [ %i.q, %.preheader.i ], [ %i.y, %bb.g ] ; 2 uses
  %.016.i = phi i16 [ 0, %.preheader.i ], [ %i.x, %bb.g ] ; 2 uses
  %i.s = phi i8 [ %i.o, %.preheader.i ], [ %.pr.i, %bb.g ] ; 2 uses
  %i.t = add i8 %i.s, -56
  %or.cond.i = icmp ult i8 %i.t, -8
  br i1 %or.cond.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = zext nneg i8 %i.s to i16
  %i.v = shl i16 %.016.i, 3                       ; 2 uses
  %i.w = add nsw i16 %i.u, -48
  %i.x = or disjoint i16 %i.w, %i.v               ; 2 uses
  %.pr.i = load i8, ptr %i.r, align 1, !tbaa !53  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 5 uses
  %.not.i = icmp eq i8 %.pr.i, 32
  br i1 %.not.i, label %parse_mode.exit, label %bb.f, !llvm.loop !126

.loopexit:                                        ; preds = %bb.f, %bb.e
  %i.z = load i32, ptr @git_gettext_enabled, align 4, !tbaa !54
  %.not4.i28 = icmp eq i32 %i.z, 0
  br i1 %.not4.i28, label %_.exit30, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.aa = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #15
  br label %_.exit30

_.exit30:                                         ; preds = %.loopexit, %bb.h
  %.0.i29 = phi ptr [ %i.aa, %bb.h ], [ @.str.9, %.loopexit ] ; 2 uses
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i29) #17
  tail call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull %.0.i29, i64 noundef %i.ab) #15
  br label %bb.u

parse_mode.exit:                                  ; preds = %bb.g
  %i.ac = load i8, ptr %i.y, align 1, !tbaa !53
  %.not26 = icmp eq i8 %i.ac, 0
  br i1 %.not26, label %bb.i, label %bb.k

bb.i:                                             ; preds = %parse_mode.exit
  %i.ad = load i32, ptr @git_gettext_enabled, align 4, !tbaa !54
  %.not4.i31 = icmp eq i32 %i.ad, 0
  br i1 %.not4.i31, label %_.exit33, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #15
  br label %_.exit33

_.exit33:                                         ; preds = %bb.i, %bb.j
  %.0.i32 = phi ptr [ %i.ae, %bb.j ], [ @.str.10, %bb.i ] ; 2 uses
  %i.af = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i32) #17
  tail call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull %.0.i32, i64 noundef %i.af) #15
  br label %bb.u

bb.k:                                             ; preds = %parse_mode.exit
  %i.ag = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #17 ; 2 uses
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = add i64 %i.ag, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.y, ptr %i.ak, align 8, !tbaa !55
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.am = load i32, ptr %i.al, align 4, !tbaa !48
  %i.an = and i32 %i.am, 1
  %.not27 = icmp eq i32 %i.an, 0
  br i1 %.not27, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = zext i16 %i.x to i32
  br label %canon_mode.exit

bb.m:                                             ; preds = %bb.k
  %trunc.i = and i16 %i.v, -4096
  switch i16 %trunc.i, label %bb.p [
    i16 -32768, label %bb.n
    i16 -24576, label %canon_mode.exit
    i16 16384, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.ap = and i16 %.016.i, 8
  %.not.i35 = icmp eq i16 %i.ap, 0
  %i.aq = select i1 %.not.i35, i32 33188, i32 33261
  br label %canon_mode.exit

bb.o:                                             ; preds = %bb.m
  br label %canon_mode.exit

bb.p:                                             ; preds = %bb.m
  br label %canon_mode.exit

canon_mode.exit:                                  ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %i.ar = phi i32 [ %i.ao, %bb.l ], [ %i.aq, %bb.n ], [ 57344, %bb.p ], [ 16384, %bb.o ], [ 40960, %bb.m ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !78
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.ah, ptr %i.at, align 8, !tbaa !56
  %i.au = and i64 %i.ai, 4294967295
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr nonnull readonly align 1 %i.av, i64 %i.c, i1 false)
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !59  ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 32
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %canon_mode.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.aw
  %i.az = sub nuw nsw i64 32, %i.aw
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ay, i8 0, i64 %i.az, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %canon_mode.exit
  %.not.i.i = icmp eq ptr %i.a, @hash_algos
  br i1 %.not.i.i, label %oidread.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.1.i.i = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i.i, label %oidread.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.2.i.i = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %spec.select.i.i = select i1 %.not.2.i.i, i32 2, i32 0
  br label %oidread.exit

oidread.exit:                                     ; preds = %bb.r, %bb.s, %bb.t
  %.2.i.i = phi i32 [ %spec.select.i.i, %bb.t ], [ 0, %bb.r ], [ 1, %bb.s ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.2.i.i, ptr %i.ba, align 8, !tbaa !13
  br label %bb.u

bb.u:                                             ; preds = %oidread.exit, %_.exit33, %_.exit30, %_.exit
  %.0 = phi i32 [ -1, %_.exit ], [ 0, %oidread.exit ], [ -1, %_.exit33 ], [ -1, %_.exit30 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @jw_object_begin(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @jw_object_intmax(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @jw_end(ptr noundef) local_unnamed_addr #3

declare void @trace2_data_json_fl(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @jw_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #10

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

declare i32 @within_depth(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @git_fnmatch(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @match_pathspec_attrs(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"object_id", !8, i64 0, !9, i64 32}
!13 = !{!12, !9, i64 32}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 _ZTS10repository", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"p1 omnipotent char", !14, i64 0}
!18 = !{!"p1 _ZTS15object_database", !14, i64 0}
!19 = !{!"p1 _ZTS18parsed_object_pool", !14, i64 0}
!20 = !{!"p1 _ZTS9ref_store", !14, i64 0}
!21 = !{!"_Bool", !8, i64 0}
!22 = !{!"any p2 pointer", !14, i64 0}
!23 = !{!"p2 _ZTS13hashmap_entry", !22, i64 0}
!24 = !{!"hashmap", !23, i64 0, !14, i64 8, !14, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40}
!25 = !{!"p1 _ZTS8mem_pool", !14, i64 0}
!26 = !{!"strmap", !24, i64 0, !25, i64 48, !9, i64 56}
!27 = !{!"repo_path_cache", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48}
!28 = !{!"p1 _ZTS18fsmonitor_settings", !14, i64 0}
!29 = !{!"long", !8, i64 0}
!30 = !{!"repo_settings", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !28, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !29, i64 96, !29, i64 104, !29, i64 112, !29, i64 120, !9, i64 128, !17, i64 136}
!31 = !{!"p1 _ZTS10config_set", !14, i64 0}
!32 = !{!"p1 _ZTS15submodule_cache", !14, i64 0}
!33 = !{!"p1 _ZTS11index_state", !14, i64 0}
!34 = !{!"p1 _ZTS12remote_state", !14, i64 0}
!35 = !{!"p1 _ZTS13git_hash_algo", !14, i64 0}
!36 = !{!"repo_config_values", !17, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44}
!37 = !{!"p1 _ZTS6strmap", !14, i64 0}
!38 = !{!"p1 _ZTS16string_list_item", !14, i64 0}
!39 = !{!"string_list", !38, i64 0, !29, i64 8, !29, i64 16, !9, i64 24, !14, i64 32}
!40 = !{!"p1 _ZTS22promisor_remote_config", !14, i64 0}
!41 = !{!"repository", !17, i64 0, !17, i64 8, !18, i64 16, !19, i64 24, !20, i64 32, !21, i64 40, !26, i64 48, !26, i64 112, !27, i64 176, !17, i64 232, !17, i64 240, !17, i64 248, !21, i64 256, !21, i64 257, !17, i64 264, !30, i64 272, !31, i64 416, !32, i64 424, !33, i64 432, !34, i64 440, !35, i64 448, !35, i64 456, !36, i64 464, !9, i64 512, !17, i64 520, !9, i64 528, !9, i64 532, !37, i64 536, !9, i64 544, !26, i64 552, !39, i64 616, !17, i64 656, !40, i64 664, !9, i64 672, !9, i64 676, !9, i64 680, !9, i64 684, !9, i64 688, !21, i64 689, !21, i64 690}
!42 = !{!41, !35, i64 448}
!43 = !{!"name_entry", !12, i64 0, !17, i64 40, !9, i64 48, !9, i64 52}
!44 = !{!"tree_desc", !35, i64 0, !14, i64 8, !43, i64 16, !9, i64 72, !9, i64 76}
!45 = !{!44, !35, i64 0}
!46 = !{!44, !14, i64 8}
!47 = !{!44, !9, i64 72}
!48 = !{!44, !9, i64 76}
!49 = !{!"strbuf", !29, i64 0, !29, i64 8, !17, i64 16}
!50 = !{!49, !17, i64 16}
!51 = !{!29, !29, i64 0}
!52 = !{!41, !18, i64 16}
!53 = !{!8, !8, i64 0}
!54 = !{!9, !9, i64 0}
!55 = !{!44, !17, i64 56}
!56 = !{!44, !9, i64 64}
!57 = !{!"p1 _ZTS9object_id", !14, i64 0}
!58 = !{!"git_hash_algo", !17, i64 0, !9, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !57, i64 80, !57, i64 88, !57, i64 96, !35, i64 104}
!59 = !{!58, !29, i64 16}
!60 = !{!17, !17, i64 0}
!61 = !{i64 0, i64 32, !53, i64 32, i64 4, !54, i64 40, i64 8, !60, i64 48, i64 4, !54, i64 52, i64 4, !54}
!62 = !{!"p1 _ZTS13traverse_info", !14, i64 0}
!63 = !{!"p1 _ZTS8pathspec", !14, i64 0}
!64 = !{!"traverse_info", !17, i64 0, !62, i64 8, !17, i64 16, !29, i64 24, !9, i64 32, !29, i64 40, !63, i64 48, !29, i64 56, !14, i64 64, !14, i64 72, !9, i64 80}
!65 = !{!64, !17, i64 16}
!66 = !{!64, !29, i64 24}
!67 = !{!64, !29, i64 40}
!68 = !{!64, !62, i64 8}
!69 = !{!49, !29, i64 8}
!70 = !{!49, !29, i64 0}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!43, !17, i64 40}
!73 = !{!43, !9, i64 48}
!74 = !{!43, !9, i64 52}
!75 = !{!"p1 _ZTS13pathspec_item", !14, i64 0}
!76 = !{!"pathspec", !9, i64 0, !9, i64 4, !9, i64 4, !9, i64 4, !9, i64 8, !9, i64 12, !75, i64 16}
!77 = !{!76, !9, i64 8}
!78 = !{!44, !9, i64 68}
!79 = !{!"short", !8, i64 0}
!80 = !{!79, !79, i64 0}
!81 = distinct !{!81, !71}
!82 = distinct !{!82, !71}
!83 = distinct !{!83, !71}
!84 = distinct !{!84, !71}
!85 = distinct !{!85, !71}
!86 = distinct !{!86, !71}
!87 = distinct !{!87, !71}
!88 = distinct !{!88, !71}
!89 = distinct !{!89, !71}
!90 = distinct !{!90, !71}
!91 = !{!41, !9, i64 400}
!92 = !{!35, !35, i64 0}
!93 = !{!14, !14, i64 0}
!94 = !{i64 0, i64 8, !92, i64 8, i64 8, !93, i64 16, i64 32, !53, i64 48, i64 4, !54, i64 56, i64 8, !60, i64 64, i64 4, !54, i64 68, i64 4, !54, i64 72, i64 4, !54, i64 76, i64 4, !54}
!95 = !{!"p1 _ZTS14tree_desc_skip", !14, i64 0}
!96 = !{!"tree_desc_x", !44, i64 0, !95, i64 80}
!97 = !{!96, !95, i64 80}
!98 = !{!64, !17, i64 0}
!99 = !{!96, !9, i64 72}
!100 = !{!95, !95, i64 0}
!101 = !{!"tree_desc_skip", !95, i64 0, !14, i64 8}
!102 = !{!101, !14, i64 8}
!103 = !{!64, !63, i64 48}
!104 = !{!64, !14, i64 64}
!105 = !{!64, !9, i64 80}
!106 = !{!96, !17, i64 56}
!107 = !{!101, !95, i64 0}
!108 = distinct !{!108, !71}
!109 = distinct !{!109, !71}
!110 = distinct !{!110, !71}
!111 = !{!"dir_state", !14, i64 0, !29, i64 8, !12, i64 16}
!112 = !{!111, !14, i64 0}
!113 = !{!111, !29, i64 8}
!114 = !{!76, !9, i64 0}
!115 = !{!76, !9, i64 12}
!116 = !{!76, !75, i64 16}
!117 = !{!"p1 _ZTS10attr_match", !14, i64 0}
!118 = !{!"p1 _ZTS10attr_check", !14, i64 0}
!119 = !{!"pathspec_item", !17, i64 0, !17, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !117, i64 40, !118, i64 48}
!120 = !{!119, !17, i64 0}
!121 = !{!119, !9, i64 20}
!122 = !{!119, !9, i64 16}
!123 = !{!119, !9, i64 24}
!124 = !{!119, !9, i64 36}
!125 = !{!119, !9, i64 28}
!126 = distinct !{!126, !71}
end_hunk_2
