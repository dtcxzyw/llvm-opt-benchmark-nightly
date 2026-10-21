Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/argv?download=true
inline.NumInlined: 19
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@opal_argv_join_range:bb.a
  br i1 %i.ao, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.136, i64 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.am
  store i8 %i.an, ptr %i.aq, align 1, !tbaa !18
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.am
  store i8 %i.ab, ptr %i.ar, align 1, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2.1 = phi ptr [ %i.as, %bb.k ], [ %.2, %bb.j ]
  %.136.1 = phi ptr [ %i.at, %bb.k ], [ %i.ap, %bb.j ] ; 2 uses
  %i.au = add nuw i64 %.148, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !26

.loopexit.sink.split:                             ; preds = %._crit_edge, %bb.c, %bb.a, %bb.b, %opal_argv_count.exit
  %i.av = tail call noalias dereferenceable_or_null(1) ptr @strdup(ptr noundef nonnull @.str) #16
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph50
  %.148.epil.init = phi i64 [ 0, %.lr.ph50 ], [ %i.au, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.03547.epil.init = phi ptr [ %i.i, %.lr.ph50 ], [ %.136.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod63 = trunc i64 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.aw = load i8, ptr %.03547.epil.init, align 1, !tbaa !18 ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.epil.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %.148.epil.init
  store i8 %i.aw, ptr %i.ay, align 1, !tbaa !18
  br label %.loopexit

bb.n:                                             ; preds = %.epil.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 %.148.epil.init
  store i8 %i.ab, ptr %i.az, align 1, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.n, %bb.m, %.loopexit.sink.split, %bb.e, %bb.d
  %.039 = phi ptr [ %i.x, %bb.e ], [ %i.av, %.loopexit.sink.split ], [ null, %bb.d ], [ %i.x, %bb.m ], [ %i.x, %bb.n ], [ %i.x, %.loopexit.loopexit.unr-lcssa ]
  ret ptr %.039
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @opal_argv_len(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not11 = icmp eq ptr %i.b, null
  br i1 %.not11, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.c = phi ptr [ %i.h, %.lr.ph ], [ %i.b, %.preheader ]
  %.013 = phi i64 [ %i.f, %.lr.ph ], [ 8, %.preheader ]
  %.0712 = phi ptr [ %i.g, %.lr.ph ], [ %0, %.preheader ]
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #18
  %i.e = add i64 %.013, 9
  %i.f = add i64 %i.e, %i.d                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0712, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !27

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  %.08 = phi i64 [ 0, %bb.a ], [ 8, %.preheader ], [ %i.f, %.lr.ph ]
  ret i64 %.08
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @opal_argv_copy(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %opal_argv_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #17 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !15
  %i.c = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not18 = icmp eq ptr %i.c, null
  br i1 %.not18, label %opal_argv_free.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b, %.preheader.i.i
  %i.d = phi ptr [ %i.s, %.preheader.i.i ], [ null, %bb.b ]
  %i.e = phi ptr [ %i.u, %.preheader.i.i ], [ %i.c, %bb.b ]
  %.020 = phi ptr [ %i.t, %.preheader.i.i ], [ %0, %bb.b ]
  %.01119 = phi ptr [ %i.l, %.preheader.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not9.i.i.i, label %opal_argv_count.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.011.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i ], [ 0, %.preheader.i.i.i ]
  %.0610.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %.01119, %.preheader.i.i.i ]
  %i.f = add nuw nsw i32 %.011.i.i.i, 1           ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0610.i.i.i, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %opal_argv_count.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

opal_argv_count.exit.i.i:                         ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  %.07.i.i.i = phi i32 [ 0, %.preheader.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 2 uses
  %i.i = add nsw i32 %.07.i.i.i, 2
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 3
  %i.l = tail call ptr @realloc(ptr noundef nonnull %.01119, i64 noundef %i.k) #15 ; 8 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %opal_argv_free.exit, label %bb.c

bb.c:                                             ; preds = %opal_argv_count.exit.i.i
  %i.n = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.e) #16 ; 2 uses
  %i.o = sext i32 %.07.i.i.i to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.o ; 2 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !15
  %i.q = icmp eq ptr %i.n, null
  br i1 %i.q, label %.preheader.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.p, i64 8
  store ptr null, ptr %i.r, align 8, !tbaa !15
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %.020, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %opal_argv_free.exit, label %.preheader.i.i.i, !llvm.loop !28

.preheader.i:                                     ; preds = %bb.c
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !15   ; 2 uses
  %.not8.i = icmp eq ptr %i.v, null
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.w = phi ptr [ %i.y, %.lr.ph.i ], [ %i.v, %.preheader.i ]
  %.09.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.l, %.preheader.i ]
  tail call void @free(ptr noundef nonnull %i.w) #16
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  tail call void @free(ptr noundef nonnull %i.l) #16
  br label %opal_argv_free.exit

opal_argv_free.exit:                              ; preds = %.preheader.i.i, %opal_argv_count.exit.i.i, %bb.b, %._crit_edge.i, %bb.a
  %.05 = phi ptr [ null, %._crit_edge.i ], [ null, %bb.a ], [ %i.b, %bb.b ], [ %i.l, %.preheader.i.i ], [ null, %opal_argv_count.exit.i.i ]
  ret ptr %.05
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -5, 1) i32 @opal_argv_delete(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !13     ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp eq i32 %3, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.g, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !15
  %.not9.i = icmp eq ptr %i.e, null
  br i1 %.not9.i, label %opal_argv_count.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.011.i = phi i32 [ %i.f, %.lr.ph.i ], [ 0, %.preheader.i ]
  %.0610.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.b, %.preheader.i ]
  %i.f = add nuw nsw i32 %.011.i, 1               ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0610.i, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %opal_argv_count.exit, label %.lr.ph.i, !llvm.loop !0

opal_argv_count.exit:                             ; preds = %.lr.ph.i, %.preheader.i
  %.07.i = phi i32 [ 0, %.preheader.i ], [ %i.f, %.lr.ph.i ] ; 3 uses
  %i.i = icmp sgt i32 %2, %.07.i
  br i1 %i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %opal_argv_count.exit
  %i.j = or i32 %3, %2
  %or.cond3.not = icmp sgt i32 %i.j, -1
  br i1 %or.cond3.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %3, %2                           ; 2 uses
  %i.l = sub i32 %.07.i, %i.k                     ; 2 uses
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %.07.i, i32 %i.k) ; 2 uses
  %or.cond5051 = icmp slt i32 %2, %invariant.smin
  br i1 %or.cond5051, label %.lr.ph.preheader, label %.critedge.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.m = zext i32 %2 to i64
  br label %.lr.ph

.critedge.preheader.loopexit:                     ; preds = %.lr.ph
  %.pre.pre = load ptr, ptr %1, align 8, !tbaa !13
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %.critedge.preheader.loopexit, %bb.d
  %.pre = phi ptr [ %.pre.pre, %.critedge.preheader.loopexit ], [ %i.b, %bb.d ] ; 5 uses
  %i.n = add i32 %i.l, %2                         ; 2 uses
  %.not55 = icmp slt i32 %i.l, 1
  br i1 %.not55, label %.critedge._crit_edge, label %.lr.ph54

.lr.ph54:                                         ; preds = %.critedge.preheader
  %i.o = zext i32 %2 to i64                       ; 3 uses
  %i.p = zext i32 %3 to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.p ; 2 uses
  %i.q = add i32 %2, 1
  %i.r = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %i.q)
  %i.s = xor i32 %2, -1
  %i.t = add i32 %i.r, %i.s                       ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.t, 3
  br i1 %min.iters.check, label %.critedge.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph54
  %n.vec = and i64 %i.v, 8589934588               ; 4 uses
  %i.w = add nuw nsw i64 %n.vec, %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = add nuw i64 %index, %i.o                 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <2 x ptr>, ptr %i.y, align 8, !tbaa !15
  %wide.load70 = load <2 x ptr>, ptr %i.z, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.x ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x ptr> %wide.load, ptr %i.aa, align 8, !tbaa !15
  store <2 x ptr> %wide.load70, ptr %i.ab, align 8, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %i.ad = trunc i64 %n.vec to i32
  %i.ae = add i32 %2, %i.ad
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.critedge._crit_edge, label %.critedge.preheader71

.critedge.preheader71:                            ; preds = %.lr.ph54, %middle.block
  %indvars.iv59.ph = phi i64 [ %i.o, %.lr.ph54 ], [ %i.w, %middle.block ]
  br label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.m, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.af = load ptr, ptr %1, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.ah) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = trunc nuw i64 %indvars.iv.next to i32
  %or.cond50 = icmp sgt i32 %invariant.smin, %i.ai
  br i1 %or.cond50, label %.lr.ph, label %.critedge.preheader.loopexit, !llvm.loop !30

.critedge:                                        ; preds = %.critedge.preheader71, %.critedge
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %.critedge ], [ %indvars.iv59.ph, %.critedge.preheader71 ] ; 3 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv59
  %i.aj = load ptr, ptr %gep, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv59
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !15
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.al = trunc nuw i64 %indvars.iv.next60 to i32 ; 2 uses
  %i.am = icmp sgt i32 %i.n, %i.al
  br i1 %i.am, label %.critedge, label %.critedge._crit_edge, !llvm.loop !31

.critedge._crit_edge:                             ; preds = %.critedge, %middle.block, %.critedge.preheader
  %.1.lcssa = phi i32 [ %2, %.critedge.preheader ], [ %i.ae, %middle.block ], [ %i.al, %.critedge ] ; 2 uses
  %i.an = zext nneg i32 %.1.lcssa to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.an
  store ptr null, ptr %i.ao, align 8, !tbaa !15
  %i.ap = add nuw nsw i32 %.1.lcssa, 1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = tail call ptr @realloc(ptr noundef %.pre, i64 noundef %i.ar) #15 ; 2 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge._crit_edge
  store ptr %i.as, ptr %1, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge._crit_edge
  %i.at = load i32, ptr %0, align 4, !tbaa !17
  %i.au = sub nsw i32 %i.at, %3
  store i32 %i.au, ptr %0, align 4, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %opal_argv_count.exit, %bb.a, %bb.b, %bb.f
  %.043 = phi i32 [ 0, %bb.f ], [ 0, %bb.a ], [ 0, %opal_argv_count.exit ], [ 0, %bb.b ], [ -5, %bb.c ]
  ret i32 %.043
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -5, 1) i32 @opal_argv_insert(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !13     ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp slt i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %2, null
  br i1 %i.e, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !15
  %.not9.i = icmp eq ptr %i.f, null
  br i1 %.not9.i, label %.preheader.i48, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.011.i = phi i32 [ %i.g, %.lr.ph.i ], [ 0, %.preheader.i ]
  %.0610.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.b, %.preheader.i ]
  %i.g = add nuw nsw i32 %.011.i, 1               ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0610.i, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %.preheader.i48, label %.lr.ph.i, !llvm.loop !0

.preheader.i48:                                   ; preds = %.lr.ph.i, %.preheader.i
  %.07.i = phi i32 [ 0, %.preheader.i ], [ %i.g, %.lr.ph.i ] ; 4 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !15
  %.not9.i49 = icmp eq ptr %i.j, null
  br i1 %.not9.i49, label %opal_argv_count.exit55.thread, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.preheader.i48, %.lr.ph.i50
  %.011.i51 = phi i32 [ %i.k, %.lr.ph.i50 ], [ 0, %.preheader.i48 ]
  %.0610.i52 = phi ptr [ %i.l, %.lr.ph.i50 ], [ %2, %.preheader.i48 ]
  %i.k = add nuw nsw i32 %.011.i51, 1             ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0610.i52, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15
  %.not.i53 = icmp eq ptr %i.m, null
  br i1 %.not.i53, label %opal_argv_count.exit55, label %.lr.ph.i50, !llvm.loop !0

opal_argv_count.exit55:                           ; preds = %.lr.ph.i50
  %i.n = icmp sgt i32 %1, %.07.i
  br i1 %i.n, label %.lr.ph65.preheader, label %bb.f

opal_argv_count.exit55.thread:                    ; preds = %.preheader.i48
  %i.o = icmp sgt i32 %1, %.07.i
  br i1 %i.o, label %.loopexit, label %bb.f

.lr.ph65.preheader:                               ; preds = %opal_argv_count.exit55
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader, %opal_argv_append.exit
  %i.p = phi ptr [ %i.b, %.lr.ph65.preheader ], [ %i.aj, %opal_argv_append.exit ] ; 4 uses
  %indvars.iv73 = phi i64 [ 0, %.lr.ph65.preheader ], [ %indvars.iv.next74, %opal_argv_append.exit ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv73
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15
  %i.s = icmp eq ptr %i.p, null
  br i1 %i.s, label %bb.d, label %.preheader.i.i.i

bb.d:                                             ; preds = %.lr.ph65
  %calloc.i.i = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 3 uses
  store ptr %calloc.i.i, ptr %0, align 8, !tbaa !13
  %i.t = icmp eq ptr %calloc.i.i, null
  br i1 %i.t, label %opal_argv_append.exit, label %bb.e

.preheader.i.i.i:                                 ; preds = %.lr.ph65
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !15
  %.not9.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not9.i.i.i, label %opal_argv_count.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.011.i.i.i = phi i32 [ %i.v, %.lr.ph.i.i.i ], [ 0, %.preheader.i.i.i ]
  %.0610.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %.preheader.i.i.i ]
  %i.v = add nuw nsw i32 %.011.i.i.i, 1           ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0610.i.i.i, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %opal_argv_count.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

opal_argv_count.exit.i.i:                         ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  %.07.i.i.i = phi i32 [ 0, %.preheader.i.i.i ], [ %i.v, %.lr.ph.i.i.i ] ; 2 uses
  %i.y = add nsw i32 %.07.i.i.i, 2
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 3
  %i.ab = tail call ptr @realloc(ptr noundef nonnull %i.p, i64 noundef %i.aa) #15 ; 3 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !13
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %opal_argv_append.exit, label %bb.e

bb.e:                                             ; preds = %opal_argv_count.exit.i.i, %bb.d
  %i.ad = phi ptr [ %i.ab, %opal_argv_count.exit.i.i ], [ %calloc.i.i, %bb.d ] ; 3 uses
  %.0.i.i = phi i32 [ %.07.i.i.i, %opal_argv_count.exit.i.i ], [ 0, %bb.d ]
  %i.ae = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.r) #16 ; 2 uses
  %i.af = sext i32 %.0.i.i to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.af ; 2 uses
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !15
  %i.ah = icmp eq ptr %i.ae, null
  br i1 %i.ah, label %opal_argv_append.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  store ptr null, ptr %i.ai, align 8, !tbaa !15
  br label %opal_argv_append.exit

opal_argv_append.exit:                            ; preds = %.preheader.i.i, %bb.d, %opal_argv_count.exit.i.i, %bb.e
  %i.aj = phi ptr [ %i.ad, %bb.e ], [ %i.ad, %.preheader.i.i ], [ null, %bb.d ], [ null, %opal_argv_count.exit.i.i ]
end_hunk_0
