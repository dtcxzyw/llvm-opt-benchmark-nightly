inline.NumInlined: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@pmix_argv_join_range:bb.a
  %i.al = load i8, ptr %.137, align 1, !tbaa !18  ; 2 uses
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %.137, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ak
  store i8 %i.al, ptr %i.ao, align 1, !tbaa !18
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ak
  store i8 %i.z, ptr %i.ap, align 1, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2.1 = phi ptr [ %i.aq, %bb.l ], [ %.2, %bb.k ]
  %.137.1 = phi ptr [ %i.ar, %bb.l ], [ %i.an, %bb.k ] ; 2 uses
  %i.as = add nuw i64 %.148, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !19

.loopexit.sink.split:                             ; preds = %._crit_edge, %bb.d, %bb.a, %bb.b, %bb.c
  %i.at = tail call noalias dereferenceable_or_null(1) ptr @strdup(ptr noundef nonnull @.str) #11
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph50
  %.148.epil.init = phi i64 [ 0, %.lr.ph50 ], [ %i.as, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.03647.epil.init = phi ptr [ %i.g, %.lr.ph50 ], [ %.137.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod64 = trunc i64 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.au = load i8, ptr %.03647.epil.init, align 1, !tbaa !18 ; 2 uses
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.epil.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 %.148.epil.init
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !18
  br label %.loopexit

bb.o:                                             ; preds = %.epil.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 %.148.epil.init
  store i8 %i.z, ptr %i.ax, align 1, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.o, %bb.n, %.loopexit.sink.split, %bb.f, %bb.e
  %.035 = phi ptr [ %i.v, %bb.f ], [ %i.at, %.loopexit.sink.split ], [ null, %bb.e ], [ %i.v, %bb.n ], [ %i.v, %bb.o ], [ %i.v, %.loopexit.loopexit.unr-lcssa ]
  ret ptr %.035
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @pmix_argv_len(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %.not11 = icmp eq ptr %i.b, null
  br i1 %.not11, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.c = phi ptr [ %i.h, %.lr.ph ], [ %i.b, %.preheader ]
  %.013 = phi i64 [ %i.f, %.lr.ph ], [ 8, %.preheader ]
  %.0712 = phi ptr [ %i.g, %.lr.ph ], [ %0, %.preheader ]
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #12
  %i.e = add i64 %.013, 9
  %i.f = add i64 %i.e, %i.d                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0712, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !20

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  %.08 = phi i64 [ 0, %bb.a ], [ 8, %.preheader ], [ %i.f, %.lr.ph ]
  ret i64 %.08
}

; Function Attrs: nounwind uwtable
define noalias ptr @pmix_argv_copy_strip(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #13 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !8
  store ptr null, ptr %i.c, align 8, !tbaa !13
  %i.d = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %.not39 = icmp eq ptr %i.d, null
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.thread33
  %indvars.iv = phi i64 [ %indvars.iv.next, %.thread33 ], [ 0, %bb.b ] ; 2 uses
  %i.e = phi ptr [ %i.w, %.thread33 ], [ %i.d, %bb.b ] ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.g = load i8, ptr %i.e, align 1, !tbaa !18
  %i.h = icmp eq i8 %i.g, 34
  %spec.select.idx = zext i1 %i.h to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.e, i64 %spec.select.idx ; 2 uses
  %i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #12
  %i.j = add i64 %i.i, -1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !18
  %i.m = icmp eq i8 %i.l, 34
  br i1 %i.m, label %bb.c, label %.thread

bb.c:                                             ; preds = %.lr.ph
  store i8 0, ptr %i.k, align 1, !tbaa !18
  %i.n = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.a, ptr noundef nonnull %spec.select) #11
  %.not31 = icmp eq i32 %i.n, 0
  br i1 %.not31, label %bb.f, label %bb.e

.thread:                                          ; preds = %.lr.ph
  %i.o = call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %i.a, ptr noundef nonnull %spec.select) #11
  %.not3132 = icmp eq i32 %i.o, 0
  br i1 %.not3132, label %.thread33, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !8
  call void @PMIx_Argv_free(ptr noundef %i.p) #11
  br label %._crit_edge

bb.e:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !8
  call void @PMIx_Argv_free(ptr noundef %i.q) #11
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  store i8 34, ptr %i.s, align 1, !tbaa !18
  br label %._crit_edge

bb.f:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.j
  store i8 34, ptr %i.u, align 1, !tbaa !18
  br label %.thread33

.thread33:                                        ; preds = %.thread, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !21

._crit_edge.loopexit:                             ; preds = %.thread33
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit, %bb.d, %bb.e, %bb.a
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.a ], [ null, %bb.e ], [ %.pre, %._crit_edge.loopexit ], [ %i.c, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.0
}

declare void @PMIx_Argv_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -27, 1) i32 @pmix_argv_delete(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp eq i32 %3, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @PMIx_Argv_count(ptr noundef nonnull %i.b) #11 ; 3 uses
  %i.f = icmp sgt i32 %2, %i.e
  br i1 %i.f, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = or i32 %3, %2
  %or.cond3.not = icmp sgt i32 %i.g, -1
  br i1 %or.cond3.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.h = add i32 %3, %2                           ; 2 uses
  %i.i = sub i32 %i.e, %i.h                       ; 2 uses
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.h) ; 2 uses
  %or.cond5051 = icmp slt i32 %2, %invariant.smin
  br i1 %or.cond5051, label %.lr.ph.preheader, label %.critedge.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.j = zext i32 %2 to i64
  br label %.lr.ph

.critedge.preheader:                              ; preds = %.lr.ph, %bb.e
  %i.k = add i32 %i.i, %2                         ; 2 uses
  %.not55 = icmp slt i32 %i.i, 1
  %.pre = load ptr, ptr %1, align 8, !tbaa !8     ; 5 uses
  br i1 %.not55, label %.critedge._crit_edge, label %.lr.ph54

.lr.ph54:                                         ; preds = %.critedge.preheader
  %i.l = zext i32 %2 to i64                       ; 3 uses
  %i.m = zext i32 %3 to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.m ; 2 uses
  %i.n = add i32 %2, 1
  %i.o = tail call i32 @llvm.smax.i32(i32 %i.k, i32 %i.n)
  %i.p = xor i32 %2, -1
  %i.q = add i32 %i.o, %i.p                       ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.q, 3
  br i1 %min.iters.check, label %.critedge.preheader69, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph54
  %n.vec = and i64 %i.s, 8589934588               ; 4 uses
  %i.t = add nuw nsw i64 %n.vec, %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = add nuw i64 %index, %i.l                 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <2 x ptr>, ptr %i.v, align 8, !tbaa !13
  %wide.load68 = load <2 x ptr>, ptr %i.w, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.u ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x ptr> %wide.load, ptr %i.x, align 8, !tbaa !13
  store <2 x ptr> %wide.load68, ptr %i.y, align 8, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %i.aa = trunc i64 %n.vec to i32
  %i.ab = add i32 %2, %i.aa
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.critedge._crit_edge, label %.critedge.preheader69

.critedge.preheader69:                            ; preds = %.lr.ph54, %middle.block
  %indvars.iv58.ph = phi i64 [ %i.l, %.lr.ph54 ], [ %i.t, %middle.block ]
  br label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.j, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !13
  tail call void @free(ptr noundef %i.ae) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = trunc nuw i64 %indvars.iv.next to i32
  %or.cond50 = icmp sgt i32 %invariant.smin, %i.af
  br i1 %or.cond50, label %.lr.ph, label %.critedge.preheader, !llvm.loop !25

.critedge:                                        ; preds = %.critedge.preheader69, %.critedge
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %.critedge ], [ %indvars.iv58.ph, %.critedge.preheader69 ] ; 3 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv58
  %i.ag = load ptr, ptr %gep, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv58
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !13
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %i.ai = trunc nuw i64 %indvars.iv.next59 to i32 ; 2 uses
  %i.aj = icmp sgt i32 %i.k, %i.ai
  br i1 %i.aj, label %.critedge, label %.critedge._crit_edge, !llvm.loop !26

.critedge._crit_edge:                             ; preds = %.critedge, %middle.block, %.critedge.preheader
  %.1.lcssa = phi i32 [ %2, %.critedge.preheader ], [ %i.ab, %middle.block ], [ %i.ai, %.critedge ] ; 2 uses
  %i.ak = zext nneg i32 %.1.lcssa to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ak
  store ptr null, ptr %i.al, align 8, !tbaa !13
  %i.am = add nuw nsw i32 %.1.lcssa, 1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = tail call ptr @realloc(ptr noundef %.pre, i64 noundef %i.ao) #14 ; 2 uses
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge._crit_edge
  store ptr %i.ap, ptr %1, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge._crit_edge
  %i.aq = load i32, ptr %0, align 4, !tbaa !12
  %i.ar = sub nsw i32 %i.aq, %3
  store i32 %i.ar, ptr %0, align 4, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.b, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ -27, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define range(i32 -27, 1) i32 @pmix_argv_insert(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp slt i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %2, null
  br i1 %i.e, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @PMIx_Argv_count(ptr noundef nonnull %i.b) #11 ; 3 uses
  %i.g = tail call i32 @PMIx_Argv_count(ptr noundef nonnull %2) #11 ; 5 uses
  %i.h = icmp sgt i32 %1, %i.f
  br i1 %i.h, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.d
  %i.i = icmp sgt i32 %i.g, 0
  br i1 %i.i, label %.lr.ph55.preheader, label %.loopexit

.lr.ph55.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %pmix_argv_append.exit
  %indvars.iv61 = phi i64 [ 0, %.lr.ph55.preheader ], [ %indvars.iv.next62, %pmix_argv_append.exit ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv61
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.l = tail call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %0, ptr noundef nonnull %i.k) #11
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.e, label %pmix_argv_append.exit

bb.e:                                             ; preds = %.lr.ph55
  %i.m = load ptr, ptr %0, align 8, !tbaa !8
  %i.n = tail call i32 @PMIx_Argv_count(ptr noundef %i.m) #11 ; 0 uses
  br label %pmix_argv_append.exit

pmix_argv_append.exit:                            ; preds = %.lr.ph55, %bb.e
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph55, !llvm.loop !27

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %0, align 8, !tbaa !8
  %i.p = add nsw i32 %i.g, %i.f                   ; 2 uses
  %i.q = add nsw i32 %i.p, 1
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 3
  %i.t = tail call ptr @realloc(ptr noundef %i.o, i64 noundef %i.s) #14 ; 5 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !8
  %i.u = xor i32 %1, -1
  %i.v = add nsw i32 %i.f, %i.u                   ; 3 uses
  %i.w = icmp sgt i32 %i.v, -1
  %i.x = add nsw i32 %i.g, %1                     ; 2 uses
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.y = zext nneg i32 %i.v to i64                ; 5 uses
  %i.z = zext nneg i32 %1 to i64                  ; 2 uses
  %i.aa = sext i32 %i.x to i64                    ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.t, i64 %i.z ; 6 uses
  %invariant.gep72 = getelementptr [8 x i8], ptr %i.t, i64 %i.aa ; 6 uses
  %i.ab = add nuw nsw i64 %i.y, 1                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.v, 13
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ac = sub nsw i64 %i.z, %i.aa
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = add nsw i64 %i.ad, -1
  %diff.check = icmp ult i64 %i.ae, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4294967292              ; 3 uses
  %i.af = sub nsw i64 %i.y, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = sub i64 %i.y, %index                    ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ag ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8
  %i.aj = getelementptr i8, ptr %i.ah, i64 -24
  %wide.load = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !13
  %wide.load75 = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !13
  %i.ak = getelementptr [8 x i8], ptr %invariant.gep72, i64 %i.ag ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -8
  %i.am = getelementptr i8, ptr %i.ak, i64 -24
  store <2 x ptr> %wide.load, ptr %i.al, align 8, !tbaa !13
  store <2 x ptr> %wide.load75, ptr %i.am, align 8, !tbaa !13
end_hunk_0
begin_hunk_1_@pmix_argv_insert:bb.a
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph ], [ %i.af, %middle.block ] ; 4 uses
  %i.ao = add nsw i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %i.ao, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.ap = load ptr, ptr %gep.prol, align 8, !tbaa !13
  %gep73.prol = getelementptr [8 x i8], ptr %invariant.gep72, i64 %indvars.iv.prol
  store ptr %i.ap, ptr %gep73.prol, align 8, !tbaa !13
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !29

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.aq = icmp ult i64 %indvars.iv.ph, 3
  br i1 %i.aq, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ar = load ptr, ptr %gep, align 8, !tbaa !13
  %gep73 = getelementptr [8 x i8], ptr %invariant.gep72, i64 %indvars.iv
  store ptr %i.ar, ptr %gep73, align 8, !tbaa !13
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.as = load ptr, ptr %gep.1, align 8, !tbaa !13
  %gep73.1 = getelementptr [8 x i8], ptr %invariant.gep72, i64 %indvars.iv.next
  store ptr %i.as, ptr %gep73.1, align 8, !tbaa !13
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.at = load ptr, ptr %gep.2, align 8, !tbaa !13
  %gep73.2 = getelementptr [8 x i8], ptr %invariant.gep72, i64 %indvars.iv.next.1
  store ptr %i.at, ptr %gep73.2, align 8, !tbaa !13
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, -3 ; 3 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.au = load ptr, ptr %gep.3, align 8, !tbaa !13
  %gep73.3 = getelementptr [8 x i8], ptr %invariant.gep72, i64 %indvars.iv.next.2
  store ptr %i.au, ptr %gep73.3, align 8, !tbaa !13
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4
  %.not.3 = icmp eq i64 %indvars.iv.next.2, 0
  br i1 %.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.f
  %i.av = sext i32 %i.p to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.av
  store ptr null, ptr %i.aw, align 8, !tbaa !13
  %i.ax = icmp sgt i32 %i.g, 0
  br i1 %i.ax, label %.lr.ph53.preheader, label %.loopexit

.lr.ph53.preheader:                               ; preds = %._crit_edge
  %i.ay = zext nneg i32 %1 to i64                 ; 2 uses
  %i.az = zext nneg i32 %i.x to i64
  br label %.lr.ph53

.lr.ph53:                                         ; preds = %.lr.ph53.preheader, %.lr.ph53
  %indvars.iv58 = phi i64 [ %i.ay, %.lr.ph53.preheader ], [ %indvars.iv.next59, %.lr.ph53 ] ; 3 uses
  %i.ba = sub nuw nsw i64 %indvars.iv58, %i.ay
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !13
  %i.bd = tail call noalias ptr @strdup(ptr noundef %i.bc) #11
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv58
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !13
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %i.bf = icmp samesign ult i64 %indvars.iv.next59, %i.az
  br i1 %i.bf, label %.lr.ph53, label %.loopexit, !llvm.loop !32

.loopexit:                                        ; preds = %.lr.ph53, %pmix_argv_append.exit, %._crit_edge, %.preheader, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.c ], [ -27, %bb.a ], [ -27, %bb.b ], [ 0, %.preheader ], [ 0, %._crit_edge ], [ 0, %pmix_argv_append.exit ], [ 0, %.lr.ph53 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -27, 1) i32 @pmix_argv_insert_element(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %pmix_argv_append.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp slt i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %pmix_argv_append.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %2, null
  br i1 %i.e, label %pmix_argv_append.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @PMIx_Argv_count(ptr noundef nonnull %i.b) #11 ; 4 uses
  %i.g = icmp sgt i32 %1, %i.f
  br i1 %i.g, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @PMIx_Argv_append_nosize(ptr noundef nonnull %0, ptr noundef nonnull %2) #11
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.f, label %pmix_argv_append.exit

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %0, align 8, !tbaa !8
  %i.j = tail call i32 @PMIx_Argv_count(ptr noundef %i.i) #11 ; 0 uses
  br label %pmix_argv_append.exit

bb.g:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %0, align 8, !tbaa !8
  %i.l = add nuw nsw i32 %i.f, 2
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 3
  %i.o = tail call ptr @realloc(ptr noundef %i.k, i64 noundef %i.n) #14 ; 5 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !8
  %i.p = xor i32 %1, -1
  %i.q = add nsw i32 %i.f, %i.p                   ; 3 uses
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.g
  %.pre = zext nneg i32 %1 to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.s = zext nneg i32 %i.q to i64                ; 4 uses
  %i.t = zext nneg i32 %1 to i64                  ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.o, i64 %i.t ; 2 uses
  %i.u = zext nneg i32 %1 to i64
  %invariant.gep41 = getelementptr [8 x i8], ptr %i.o, i64 %i.u ; 2 uses
  %i.v = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.q, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.v, 4294967292               ; 3 uses
  %i.w = sub nsw i64 %i.s, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = sub i64 %i.s, %index                     ; 2 uses
  %i.y = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.x ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -8
  %i.aa = getelementptr i8, ptr %i.y, i64 -24
  %wide.load = load <2 x ptr>, ptr %i.z, align 8, !tbaa !13
  %wide.load43 = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !13
  %i.ab = getelementptr [8 x i8], ptr %invariant.gep41, i64 %i.x ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -16
  store <2 x ptr> %wide.load, ptr %i.ab, align 8, !tbaa !13
  store <2 x ptr> %wide.load43, ptr %i.ac, align 8, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.s, %.lr.ph ], [ %i.w, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ae = load ptr, ptr %gep, align 8, !tbaa !13
  %gep42 = getelementptr [8 x i8], ptr %invariant.gep41, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %gep42, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !13
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge, label %scalar.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.t, %middle.block ], [ %i.t, %scalar.ph ]
  %i.ag = zext nneg i32 %i.f to i64
  %i.ah = getelementptr [8 x i8], ptr %i.o, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  store ptr null, ptr %i.ai, align 8, !tbaa !13
  %i.aj = tail call noalias ptr @strdup(ptr noundef nonnull %2) #11
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.pre-phi
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !13
  br label %pmix_argv_append.exit

pmix_argv_append.exit:                            ; preds = %bb.f, %bb.e, %bb.c, %bb.a, %bb.b, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ -27, %bb.a ], [ 0, %bb.c ], [ -27, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p2 omnipotent char", !10, i64 0}
!10 = !{!"any p2 pointer", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!5, !5, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!6, !6, i64 0}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16, !23, !24}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16, !24, !23}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16, !23, !24}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = distinct !{!31, !16, !23}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16, !23, !24}
!34 = distinct !{!34, !16, !24, !23}
end_hunk_1
