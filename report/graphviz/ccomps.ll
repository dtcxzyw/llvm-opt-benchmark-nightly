Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/ccomps?download=true
inline.NumInlined: 89
inline.NumDeleted: 34
begin_hunk_0_@gwrite:bb.a
  %i.s = load ptr, ptr %1, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull readonly align 1 %i.a, i64 %i.h, i1 false)
  %i.u = add i64 %i.r, %i.h
  store i64 %i.u, ptr %i.k, align 8, !tbaa !14
  br label %agxbput.exit.i

bb.g:                                             ; preds = %bb.c
  %i.v = load ptr, ptr @suffix, align 8, !tbaa !12 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  %i.w = load i64, ptr @rootpath.1, align 8, !tbaa !73
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  %i.y = load ptr, ptr @rootpath.0, align 8, !tbaa !74 ; 2 uses
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, ptr, ...) @agxbprint(ptr noundef nonnull %1, ptr noundef nonnull @.str.26, i32 noundef %i.x, ptr noundef %i.y, i32 noundef %i.f, ptr noundef nonnull %i.v)
  br label %agxbput.exit.i

bb.i:                                             ; preds = %bb.g
  call void (ptr, ptr, ...) @agxbprint(ptr noundef nonnull %1, ptr noundef nonnull @.str.27, i32 noundef %i.x, ptr noundef %i.y, i32 noundef %i.f)
  br label %agxbput.exit.i

agxbput.exit.i:                                   ; preds = %bb.i, %bb.h, %bb.f, %.thread.i, %bb.d
  %i.z = load i32, ptr @sufcnt, align 4, !tbaa !9
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr @sufcnt, align 4, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 2 uses
  %.val.i.i = load i8, ptr %i.ab, align 1, !tbaa !14 ; 2 uses
  %.not.i.i = icmp eq i8 %.val.i.i, -1
  br i1 %.not.i.i, label %agxbsizeof.exit.i.i2.i, label %agxblen.exit.i.i

agxblen.exit.i.i:                                 ; preds = %agxbput.exit.i
  %i.ac = zext i8 %.val.i.i to i64                ; 2 uses
  %i.ad = call noalias ptr @strndup(ptr noundef nonnull readonly %1, i64 noundef %i.ac) #22 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %getName.exit

bb.j:                                             ; preds = %agxblen.exit.i.i
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.ag = add nuw nsw i64 %i.ac, 1
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.22, i64 noundef %i.ag) #24 ; 0 uses
  tail call fastcc void @graphviz_exit(i32 noundef 1) #25
  unreachable

agxbsizeof.exit.i.i2.i:                           ; preds = %agxbput.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !14 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !14
  %.not.i7.i.i = icmp ult i64 %i.aj, %i.al
  br i1 %.not.i7.i.i, label %.thread.i.i, label %bb.k

bb.k:                                             ; preds = %agxbsizeof.exit.i.i2.i
  call fastcc void @agxbmore(ptr noundef nonnull %1, i64 noundef 1)
  %.val.i15.pre.i.i.i = load i8, ptr %i.ab, align 1, !tbaa !14 ; 2 uses
  %.not.i16.i.i.i = icmp eq i8 %.val.i15.pre.i.i.i, -1
  br i1 %.not.i16.i.i.i, label %..thread_crit_edge.i.i, label %bb.l

..thread_crit_edge.i.i:                           ; preds = %bb.k
  %.pre.i.i = load i64, ptr %i.ai, align 8, !tbaa !14
  br label %.thread.i.i

bb.l:                                             ; preds = %bb.k
  %i.am = zext i8 %.val.i15.pre.i.i.i to i64
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.am
  store i8 0, ptr %i.an, align 1, !tbaa !14
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !14
  br label %getName.exit

.thread.i.i:                                      ; preds = %..thread_crit_edge.i.i, %agxbsizeof.exit.i.i2.i
  %i.ao = phi i64 [ %.pre.i.i, %..thread_crit_edge.i.i ], [ %i.aj, %agxbsizeof.exit.i.i2.i ]
  %i.ap = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 0, ptr %i.aq, align 1, !tbaa !14
  br label %getName.exit

getName.exit:                                     ; preds = %agxblen.exit.i.i, %bb.l, %.thread.i.i
  %.0.i.i = phi ptr [ %i.ad, %agxblen.exit.i.i ], [ %i.ap, %.thread.i.i ], [ %.pre.i, %bb.l ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.ar = tail call noalias ptr @fopen(ptr noundef %.0.i.i, ptr noundef nonnull @.str.23) ; 3 uses
  %.not9 = icmp eq ptr %i.ar, null
  br i1 %.not9, label %bb.m, label %bb.n

bb.m:                                             ; preds = %getName.exit
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.at = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.24, ptr noundef %.0.i.i) #24 ; 0 uses
  tail call void @perror(ptr noundef nonnull @.str.25) #29
  tail call void @free(ptr noundef %.0.i.i) #22
  tail call fastcc void @graphviz_exit(i32 noundef 1) #25
  unreachable

bb.n:                                             ; preds = %getName.exit
  tail call void @free(ptr noundef %.0.i.i) #22
  %i.au = tail call i32 @agwrite(ptr noundef %0, ptr noundef nonnull %i.ar) #22 ; 0 uses
  %i.av = tail call i32 @fclose(ptr noundef nonnull %i.ar) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.b
  ret void
}

declare ptr @agfstnode(ptr noundef) local_unnamed_addr #2

declare i32 @agnnodes(ptr noundef) local_unnamed_addr #2

declare i32 @agdelete(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agnxtnode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @printSorted(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #10 {
bb.a:
  %.not.i = icmp eq i64 %1, 0                     ; 3 uses
  br i1 %.not.i, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  %i.a = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #28
  br label %gv_calloc.exit

bb.b:                                             ; preds = %bb.a
  %mul.ov.i = icmp ugt i64 %1, 2305843009213693951
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.21, i64 noundef %1, i64 noundef 8) #24 ; 0 uses
  tail call fastcc void @graphviz_exit(i32 noundef 1) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noalias ptr @calloc(i64 noundef %1, i64 noundef 8) #28 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %gv_calloc.exit

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.g = shl nuw i64 %1, 3
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.22, i64 noundef %i.g) #24 ; 0 uses
  tail call fastcc void @graphviz_exit(i32 noundef 1) #25
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.d
  %i.i = phi ptr [ %i.a, %.thread.i ], [ %i.d, %bb.d ] ; 7 uses
  %i.j = tail call ptr @agfstsubg(ptr noundef nonnull %0) #22 ; 2 uses
  %.not64 = icmp eq ptr %i.j, null
  br i1 %.not64, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %gv_calloc.exit
  tail call void @qsort(ptr noundef %i.i, i64 noundef %1, i64 noundef 8, ptr noundef nonnull @cmp) #22
  %i.k = load i32, ptr @sortIndex, align 4, !tbaa !9 ; 4 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.h, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  br i1 %.not.i, label %.loopexit, label %.lr.ph68

.lr.ph:                                           ; preds = %gv_calloc.exit, %bb.g
  %.04766 = phi ptr [ %i.t, %bb.g ], [ %i.j, %gv_calloc.exit ] ; 3 uses
  %.04865 = phi i64 [ %.1, %bb.g ], [ 0, %gv_calloc.exit ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.04766, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !40, !range !41, !noundef !42
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.r = add i64 %.04865, 1
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.04865
  store ptr %.04766, ptr %i.s, align 8, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.1 = phi i64 [ %i.r, %bb.f ], [ %.04865, %.lr.ph ]
  %i.t = tail call ptr @agnxtsubg(ptr noundef nonnull %.04766) #22 ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !75

bb.h:                                             ; preds = %._crit_edge
  %i.u = load i32, ptr @x_mode, align 4, !tbaa !9
  switch i32 %i.u, label %.loopexit [
    i32 1, label %bb.i
    i32 2, label %bb.n
  ]

bb.i:                                             ; preds = %bb.h
  %i.v = zext nneg i32 %i.k to i64                ; 3 uses
  %.not57 = icmp ugt i64 %1, %i.v
  br i1 %.not57, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.x = tail call ptr @agnameof(ptr noundef nonnull %0) #22
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.16, i32 noundef %i.k, ptr noundef %i.x) #24 ; 0 uses
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.z = load i32, ptr @sortFinal, align 4, !tbaa !9 ; 2 uses
  %.not58 = icmp slt i32 %i.z, %i.k
  %i.aa = add i64 %1, -1
  %i.ab = zext nneg i32 %i.z to i64               ; 2 uses
  %.not59 = icmp ule i64 %1, %i.ab
  %2 = select i1 %.not58, i1 true, i1 %.not59
  %.0 = select i1 %2, i64 %i.aa, i64 %i.ab        ; 2 uses
  %.not6073 = icmp ult i64 %.0, %i.v
  br i1 %.not6073, label %.loopexit, label %.lr.ph76

.lr.ph76:                                         ; preds = %bb.k, %bb.m
  %.274 = phi i64 [ %i.ae, %bb.m ], [ %i.v, %bb.k ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.274
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !43 ; 2 uses
  %.b56 = load i1, ptr @doAll, align 1
  br i1 %.b56, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph76
  tail call fastcc void @subgInduce(ptr noundef nonnull %0, ptr noundef %i.ad, i32 noundef 0)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph76
  tail call fastcc void @gwrite(ptr noundef %i.ad)
  %i.ae = add i64 %.274, 1
  %exitcond82.not = icmp eq i64 %.274, %.0
  br i1 %exitcond82.not, label %.loopexit, label %.lr.ph76, !llvm.loop !76

bb.n:                                             ; preds = %bb.h
  %i.af = load i32, ptr @sortFinal, align 4, !tbaa !9
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.ai = tail call i32 @agnnodes(ptr noundef %i.ah) #22
  store i32 %i.ai, ptr @sortFinal, align 4, !tbaa !9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %.not.i, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.p, %bb.u
  %.369 = phi i64 [ %i.aq, %bb.u ], [ 0, %bb.p ]  ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.369
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !43 ; 3 uses
  %i.al = tail call i32 @agnnodes(ptr noundef %i.ak) #22 ; 2 uses
  %i.am = load i32, ptr @sortFinal, align 4, !tbaa !9
  %i.an = icmp sgt i32 %i.al, %i.am
  br i1 %i.an, label %bb.u, label %bb.q

bb.q:                                             ; preds = %.lr.ph71
  %i.ao = load i32, ptr @sortIndex, align 4, !tbaa !9
  %i.ap = icmp slt i32 %i.al, %i.ao
  br i1 %i.ap, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.b55 = load i1, ptr @doAll, align 1
  br i1 %.b55, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @subgInduce(ptr noundef nonnull %0, ptr noundef %i.ak, i32 noundef 0)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  tail call fastcc void @gwrite(ptr noundef %i.ak)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph71
  %i.aq = add nuw i64 %.369, 1                    ; 2 uses
  %exitcond81.not = icmp eq i64 %i.aq, %1
  br i1 %exitcond81.not, label %.loopexit, label %.lr.ph71, !llvm.loop !77

.lr.ph68:                                         ; preds = %.preheader, %bb.w
  %.467 = phi i64 [ %i.at, %bb.w ], [ 0, %.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.467
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !43 ; 2 uses
  %.b = load i1, ptr @doAll, align 1
  br i1 %.b, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph68
  tail call fastcc void @subgInduce(ptr noundef nonnull %0, ptr noundef %i.as, i32 noundef 0)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph68
  tail call fastcc void @gwrite(ptr noundef %i.as)
  %i.at = add nuw i64 %.467, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph68, !llvm.loop !78

.loopexit:                                        ; preds = %bb.w, %bb.q, %bb.u, %bb.m, %bb.h, %bb.k, %bb.p, %.preheader, %bb.j
  tail call void @free(ptr noundef %i.i) #22
  ret void
}

declare i32 @agnedges(ptr noundef) local_unnamed_addr #2

declare ptr @agfstsubg(ptr noundef) local_unnamed_addr #2

declare ptr @agnxtsubg(ptr noundef) local_unnamed_addr #2

declare ptr @agopen(ptr noundef, i32, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @deriveClusters(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #10 {
bb.a:
  %i.a = tail call ptr @agfstsubg(ptr noundef nonnull %1) #22 ; 2 uses
  %.not26 = icmp eq ptr %i.a, null
  br i1 %.not26, label %._crit_edge, label %.lr.ph29

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

.lr.ph29:                                         ; preds = %bb.a, %.loopexit
  %.02127 = phi ptr [ %i.y, %.loopexit ], [ %i.a, %bb.a ] ; 8 uses
  %i.b = tail call zeroext i1 @is_a_cluster(ptr noundef nonnull %.02127) #22
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph29
  %i.c = tail call ptr @agnameof(ptr noundef nonnull %.02127) #22
  %i.d = tail call ptr @agnode(ptr noundef %0, ptr noundef %i.c, i32 noundef 1) #22 ; 3 uses
  %i.e = tail call ptr @agbindrec(ptr noundef %i.d, ptr noundef nonnull @.str.9, i32 noundef 32, i32 noundef 1) #22 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.02127, ptr %i.h, align 8, !tbaa !31
  %i.i = tail call ptr @agfstnode(ptr noundef nonnull %.02127) #22 ; 2 uses
  %.not2224 = icmp eq ptr %i.i, null
  br i1 %.not2224, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.025 = phi ptr [ %i.x, %bb.d ], [ %i.i, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.025, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %.not23 = icmp eq ptr %i.m, null
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.o = tail call ptr @agnameof(ptr noundef nonnull %.025) #22
  %i.p = tail call ptr @agnameof(ptr noundef nonnull %.02127) #22
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.t = tail call ptr @agnameof(ptr noundef %i.s) #22
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.20, ptr noundef %i.o, ptr noundef %i.p, ptr noundef %i.t) #24 ; 0 uses
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.v = phi ptr [ %.pre, %bb.c ], [ %i.k, %.lr.ph ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.d, ptr %i.w, align 8, !tbaa !31
  %i.x = tail call ptr @agnxtnode(ptr noundef nonnull %.02127, ptr noundef nonnull %.025) #22 ; 2 uses
  %.not22 = icmp eq ptr %i.x, null
  br i1 %.not22, label %.loopexit, label %.lr.ph, !llvm.loop !79

bb.e:                                             ; preds = %.lr.ph29
  tail call fastcc void @deriveClusters(ptr noundef %0, ptr noundef %.02127)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.e
  %i.y = tail call ptr @agnxtsubg(ptr noundef nonnull %.02127) #22 ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %._crit_edge, label %.lr.ph29, !llvm.loop !80
}

declare ptr @agbindrec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @agfstout(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agedge(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @agnxtout(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @is_a_cluster(ptr noundef) local_unnamed_addr #2

declare ptr @agsubnode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #13

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @agxbmore(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 31         ; 2 uses
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !14 ; 2 uses
  %.not.i = icmp eq i8 %.val.i, -1
  br i1 %.not.i, label %agxbsizeof.exit, label %bb.g

agxbsizeof.exit:                                  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14
  %.fr = freeze i64 %i.c                          ; 6 uses
  %i.d = icmp eq i64 %.fr, 0
  %i.e = shl i64 %.fr, 1
  %spec.select45 = select i1 %i.d, i64 8192, i64 %i.e
end_hunk_0
begin_hunk_1_@agxbmore:bb.a
bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %.fr
  %i.o = sub nuw i64 %spec.select34, %.fr
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %gv_recalloc.exit

bb.g:                                             ; preds = %bb.a
  %i.p = add i64 %1, 31
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.p, i64 62) ; 3 uses
  %i.q = tail call noalias ptr @calloc(i64 noundef %spec.select, i64 noundef 1) #28 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %gv_calloc.exit

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.22, i64 noundef %spec.select) #24 ; 0 uses
  tail call fastcc void @graphviz_exit(i32 noundef 1) #25
  unreachable

gv_calloc.exit:                                   ; preds = %bb.g
  %i.u = zext i8 %.val.i to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %0, i64 %i.u, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !14
  br label %gv_recalloc.exit

gv_recalloc.exit:                                 ; preds = %bb.f, %bb.e, %bb.b, %gv_calloc.exit
  %spec.select3742 = phi i64 [ %spec.select, %gv_calloc.exit ], [ 0, %bb.b ], [ %spec.select34, %bb.e ], [ %spec.select34, %bb.f ]
  %.0 = phi ptr [ %i.q, %gv_calloc.exit ], [ null, %bb.b ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  store ptr %.0, ptr %0, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select3742, ptr %i.w, align 8, !tbaa !14
  store i8 -1, ptr %i.a, align 1, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #15

declare ptr @agfstedge(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agnxtedge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i64 @gv_list_append_slot_(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @gv_list_pop_back_(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @subgInduce(ptr noundef nonnull %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #10 {
bb.a:
  %i.a = tail call ptr @agfstsubg(ptr noundef nonnull %0) #22 ; 2 uses
  %.not14 = icmp eq ptr %i.a, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp ne i32 %2, 0
  %.not13 = icmp eq i32 %2, 0
  br label %bb.b

._crit_edge:                                      ; preds = %projectG.exit.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %projectG.exit.thread
  %.015 = phi ptr [ %i.a, %.lr.ph ], [ %i.x, %projectG.exit.thread ] ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.015, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !40, !range !41, !noundef !42
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %projectG.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @agfstnode(ptr noundef nonnull %.015) #22 ; 2 uses
  %.not25.i = icmp eq ptr %i.h, null
  br i1 %.not25.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.g, %bb.c
  %.021.lcssa.i = phi ptr [ null, %bb.c ], [ %.2.i, %bb.g ] ; 2 uses
  %i.i = icmp eq ptr %.021.lcssa.i, null
  %or.cond.i = and i1 %i.b, %i.i
  br i1 %or.cond.i, label %bb.h, label %bb.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.g
  %.027.i = phi ptr [ %i.p, %bb.g ], [ %i.h, %bb.c ] ; 2 uses
  %.02126.i = phi ptr [ %.2.i, %bb.g ], [ null, %bb.c ] ; 3 uses
  %i.j = tail call ptr @agnameof(ptr noundef nonnull %.027.i) #22
  %i.k = tail call ptr @agnode(ptr noundef %1, ptr noundef %i.j, i32 noundef 0) #22 ; 2 uses
  %.not24.i = icmp eq ptr %i.k, null
  br i1 %.not24.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.l = icmp eq ptr %.02126.i, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @agnameof(ptr noundef nonnull %.015) #22
  %i.n = tail call ptr @agsubg(ptr noundef %1, ptr noundef %i.m, i32 noundef 1) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.i = phi ptr [ %i.n, %bb.e ], [ %.02126.i, %bb.d ] ; 2 uses
  %i.o = tail call ptr @agsubnode(ptr noundef %.1.i, ptr noundef nonnull %i.k, i32 noundef 1) #22 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %.2.i = phi ptr [ %.1.i, %bb.f ], [ %.02126.i, %.lr.ph.i ] ; 2 uses
  %i.p = tail call ptr @agnxtnode(ptr noundef nonnull %.015, ptr noundef nonnull %.027.i) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !81

bb.h:                                             ; preds = %._crit_edge.i
  %i.q = tail call ptr @agnameof(ptr noundef nonnull %.015) #22
  %i.r = tail call ptr @agsubg(ptr noundef %1, ptr noundef %i.q, i32 noundef 1) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %.3.i = phi ptr [ %i.r, %bb.h ], [ %.021.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.not23.i = icmp eq ptr %.3.i, null
  br i1 %.not23.i, label %projectG.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.b.i = load i1, ptr @doEdges, align 1
  br i1 %.b.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = tail call i64 @graphviz_node_induce(ptr noundef nonnull %.3.i, ptr noundef nonnull %.015) #22 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.t = tail call i32 @agcopyattr(ptr noundef nonnull %.015, ptr noundef nonnull %.3.i) #22 ; 0 uses
  br i1 %.not13, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %.b = load i1, ptr @useClusters, align 1
  br i1 %.b, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.u = tail call zeroext i1 @is_a_cluster(ptr noundef nonnull %.015) #22
  %i.v = zext i1 %i.u to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %i.w = phi i32 [ 1, %bb.l ], [ 0, %bb.m ], [ %i.v, %bb.n ]
  tail call fastcc void @subgInduce(ptr noundef %.015, ptr noundef nonnull %.3.i, i32 noundef %i.w)
  br label %projectG.exit.thread

projectG.exit.thread:                             ; preds = %bb.i, %bb.o, %bb.b
  %i.x = tail call ptr @agnxtsubg(ptr noundef nonnull %.015) #22 ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !82
}

declare i32 @agcopyattr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @agwrite(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strndup(ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #17

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43
  %i.b = tail call i32 @agnnodes(ptr noundef %i.a) #22
  %i.c = load ptr, ptr %1, align 8, !tbaa !43
  %i.d = tail call i32 @agnnodes(ptr noundef %i.c) #22
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.d, i32 %i.b)
  ret i32 %.0
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #21

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn }
attributes #14 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { cold nounwind }
attributes #25 = { noreturn }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind allocsize(1) }
attributes #28 = { nounwind allocsize(0,1) }
attributes #29 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"Agtag_s", !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !13, i64 8}
!19 = !{!"p1 _ZTS7Agrec_s", !10, i64 0}
!20 = !{!"Agobj_s", !18, i64 0, !19, i64 16}
!21 = !{!"p1 _ZTS8Agraph_s", !10, i64 0}
!22 = !{!"p1 _ZTS9dtlink_s_", !10, i64 0}
!23 = !{!"dtlink_s_", !22, i64 0, !5, i64 8}
!24 = !{!"p1 _ZTS8Agnode_s", !10, i64 0}
!25 = !{!"Agsubnode_s", !23, i64 0, !23, i64 16, !24, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64}
!26 = !{!"Agnode_s", !20, i64 0, !21, i64 24, !25, i64 32}
!27 = !{!26, !19, i64 16}
!28 = !{!"Agrec_s", !11, i64 0, !19, i64 8}
!29 = !{!"p1 _ZTS7Agobj_s", !10, i64 0}
!30 = !{!"", !28, i64 0, !5, i64 16, !29, i64 24}
!31 = !{!30, !29, i64 24}
!32 = !{!"Agdesc_s", !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0}
!33 = !{!"p1 _ZTS5dt_s_", !10, i64 0}
!34 = !{!"p1 _ZTS17graphviz_node_set", !10, i64 0}
!35 = !{!"p1 _ZTS8Agclos_s", !10, i64 0}
!36 = !{!"Agraph_s", !20, i64 0, !32, i64 24, !23, i64 32, !23, i64 48, !33, i64 64, !34, i64 72, !33, i64 80, !33, i64 88, !33, i64 96, !33, i64 104, !21, i64 112, !21, i64 120, !35, i64 128}
!37 = !{!36, !19, i64 16}
!38 = !{!"_Bool", !5, i64 0}
!39 = !{!"", !28, i64 0, !38, i64 16}
!40 = !{!39, !38, i64 16}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = !{!21, !21, i64 0}
!44 = distinct !{null}
!45 = distinct !{!45, !17}
!46 = distinct !{!46, !17}
!47 = distinct !{!47, !17}
!48 = distinct !{!48, !17}
!49 = distinct !{!49, !17}
!50 = distinct !{!50, !17}
!51 = distinct !{!51, !17}
!52 = distinct !{!52, !17}
!53 = distinct !{!53, !17}
!54 = distinct !{!54, !17}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !17}
!57 = !{!13, !13, i64 0}
!58 = !{!"any p2 pointer", !10, i64 0}
!59 = !{!"p2 omnipotent char", !58, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!"", !10, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!62 = !{!61, !13, i64 16}
!63 = !{!"Agedge_s", !20, i64 0, !23, i64 24, !23, i64 40, !24, i64 56}
!64 = !{!63, !24, i64 56}
!65 = !{!30, !5, i64 16}
!66 = !{!"", !5, i64 0, !10, i64 32, !24, i64 40}
!67 = !{!66, !24, i64 40}
!68 = !{!24, !24, i64 0}
!69 = !{!36, !21, i64 120}
!70 = !{!66, !10, i64 32}
!71 = distinct !{!71, !17}
!72 = !{!"", !11, i64 0, !13, i64 8}
!73 = !{!72, !13, i64 8}
!74 = !{!72, !11, i64 0}
!75 = distinct !{!75, !17}
!76 = distinct !{!76, !17}
!77 = distinct !{!77, !17}
!78 = distinct !{!78, !17}
!79 = distinct !{!79, !17}
!80 = distinct !{!80, !17}
!81 = distinct !{!81, !17}
!82 = distinct !{!82, !17}
end_hunk_1
