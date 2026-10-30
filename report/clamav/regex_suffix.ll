Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/regex_suffix?download=true
inline.NumInlined: 19
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@build_suffixtree_descend:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20   ; 2 uses
  %i.q = icmp ugt i64 %i.n, %i.p
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !16  ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = add i64 %i.p, 4096
  %..i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.r)
  %i.s = and i64 %..i.i, 4294967295               ; 2 uses
  %i.t = tail call ptr @cli_max_realloc(ptr noundef %.pre.i, i64 noundef %i.s) #9 ; 3 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %textbuffer_putc.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.g
  store i64 %i.s, ptr %i.o, align 8, !tbaa !20
  store ptr %i.t, ptr %1, align 8, !tbaa !16
  %.pre5.i = load i64, ptr %i.l, align 8, !tbaa !19 ; 2 uses
  %.pre6.i = add i64 %.pre5.i, 1
  br label %bb.h

bb.h:                                             ; preds = %.thread.i.i, %bb.f
  %.pre-phi.i = phi i64 [ %.pre6.i, %.thread.i.i ], [ %i.n, %bb.f ]
  %i.u = phi i64 [ %.pre5.i, %.thread.i.i ], [ %i.m, %bb.f ]
  %i.v = phi ptr [ %i.t, %.thread.i.i ], [ %.pre.i, %bb.f ]
  store i64 %.pre-phi.i, ptr %i.l, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !17
  br label %textbuffer_putc.exit

textbuffer_putc.exit:                             ; preds = %bb.g, %bb.h
  %i.x = load ptr, ptr %1, align 8, !tbaa !16
  %i.y = load i64, ptr %i.l, align 8, !tbaa !19
  %i.z = add i64 %i.y, -1
  %i.aa = tail call i32 %2(ptr noundef %3, ptr noundef %i.x, i64 noundef %i.z, ptr noundef nonnull %4) #9
  %.not33 = icmp eq i32 %i.aa, 0
  %. = select i1 %.not33, i32 0, i32 20
  br label %.critedge36

bb.i:                                             ; preds = %.lr.ph, %.lr.ph
  %i.ab = tail call fastcc i32 @build_suffixtree_ascend(ptr noundef nonnull %.03142, ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %.not32 = icmp eq i32 %i.ab, 0
  %.37 = select i1 %.not32, i32 0, i32 20
  br label %.critedge36

.critedge36:                                      ; preds = %bb.b, %.lr.ph, %bb.a, %bb.e, %bb.i, %textbuffer_putc.exit, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.e ], [ %.37, %bb.i ], [ 20, %bb.c ], [ %., %textbuffer_putc.exit ], [ 20, %bb.d ], [ 0, %bb.a ], [ 0, %.lr.ph ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @destroy_tree(ptr noundef captures(address_is_null) %0) unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !18
  switch i32 %i.a, label %bb.f [
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 5, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  tail call fastcc void @destroy_tree(ptr noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  tail call fastcc void @destroy_tree(ptr noundef %i.e)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 3 uses
  %.not11 = icmp eq ptr %i.g, @dot_bitmap
  %.not12 = icmp eq ptr %i.g, null
  %or.cond = or i1 %.not11, %.not12
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.g) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b
  tail call void @free(ptr noundef nonnull %0) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @dup_node(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #11 ; 14 uses
  %.not32 = icmp eq ptr %i.a, null
  br i1 %.not32, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.5) #9
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.b = load i32, ptr %0, align 8, !tbaa !18     ; 2 uses
  store i32 %i.b, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !14
  switch i32 %i.b, label %bb.i [
    i32 4, label %bb.e
    i32 5, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.e, ptr %i.f, align 8, !tbaa !17
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.g = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #11 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !17
  %.not33 = icmp eq ptr %i.g, null
  br i1 %.not33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.6) #9
  tail call void @free(ptr noundef nonnull %i.a) #9
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.g, ptr noundef nonnull align 1 dereferenceable(32) %i.j, i64 32, i1 false)
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.m = tail call fastcc ptr @dup_node(ptr noundef %i.l) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.p = tail call fastcc ptr @dup_node(ptr noundef %i.o) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %i.q, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.p, ptr %i.r, align 8, !tbaa !17
  %.not34 = icmp eq ptr %i.m, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.a, ptr %i.s, align 8, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not35 = icmp eq ptr %i.p, null
  br i1 %.not35, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.a, ptr %i.t, align 8, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.h, %bb.l, %bb.k, %bb.a, %bb.g, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.g ], [ null, %bb.c ], [ %i.a, %bb.k ], [ %i.a, %bb.l ], [ %i.a, %bb.h ], [ %i.a, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 21) i32 @build_suffixtree_ascend(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef nonnull %5) unnamed_addr #0 {
bb.a:
  %.not131 = icmp eq ptr %0, null
  br i1 %.not131, label %.thread120, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %.066133 = phi ptr [ %0, %.lr.ph ], [ %7, %bb.x ] ; 9 uses
  %.069132 = phi ptr [ %2, %.lr.ph ], [ %.066133, %bb.x ]
  %i.c = load i32, ptr %.066133, align 8, !tbaa !18
  switch i32 %i.c, label %bb.x [
    i32 0, label %bb.c
    i32 4, label %bb.f
    i32 5, label %.preheader125
    i32 1, label %bb.s
    i32 2, label %.sink.split
    i32 3, label %bb.u
  ]

.preheader125:                                    ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.066133, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.i = icmp ugt i64 %i.g, %i.h
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !16  ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = add i64 %i.h, 4096
  %..i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.j)
  %i.k = and i64 %..i.i, 4294967295               ; 2 uses
  %i.l = tail call ptr @cli_max_realloc(ptr noundef %.pre.i, i64 noundef %i.k) #9 ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %textbuffer_putc.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d
  store i64 %i.k, ptr %i.b, align 8, !tbaa !20
  store ptr %i.l, ptr %1, align 8, !tbaa !16
  %.pre5.i = load i64, ptr %i.a, align 8, !tbaa !19 ; 2 uses
  %.pre6.i = add i64 %.pre5.i, 1
  br label %bb.e

bb.e:                                             ; preds = %.thread.i.i, %bb.c
  %.pre-phi.i = phi i64 [ %.pre6.i, %.thread.i.i ], [ %i.g, %bb.c ]
  %i.m = phi i64 [ %.pre5.i, %.thread.i.i ], [ %i.f, %bb.c ]
  %i.n = phi ptr [ %i.l, %.thread.i.i ], [ %.pre.i, %bb.c ]
  store i64 %.pre-phi.i, ptr %i.a, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 0, ptr %i.o, align 1, !tbaa !17
  br label %textbuffer_putc.exit

textbuffer_putc.exit:                             ; preds = %bb.d, %bb.e
  %i.p = load ptr, ptr %1, align 8, !tbaa !16
  %i.q = load i64, ptr %i.a, align 8, !tbaa !19
  %i.r = add i64 %i.q, -1
  %i.s = tail call i32 %3(ptr noundef %4, ptr noundef %i.p, i64 noundef %i.r, ptr noundef nonnull %5) #9
  %.not79 = icmp eq i32 %i.s, 0
  %. = select i1 %.not79, i32 0, i32 20
  br label %.thread120

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.066133, i64 16
  %i.u = load i8, ptr %i.t, align 8, !tbaa !17
  %i.v = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.w = add i64 %i.v, 1                          ; 3 uses
  %i.x = load i64, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.y = icmp ugt i64 %i.w, %i.x
  %.pre.i83 = load ptr, ptr %1, align 8, !tbaa !16 ; 2 uses
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = add i64 %i.x, 4096
  %..i.i86 = tail call i64 @llvm.umax.i64(i64 %i.w, i64 %i.z)
  %i.aa = and i64 %..i.i86, 4294967295            ; 2 uses
  %i.ab = tail call ptr @cli_max_realloc(ptr noundef %.pre.i83, i64 noundef %i.aa) #9 ; 3 uses
  %.not.i.i87 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i87, label %.sink.split, label %.thread.i.i88

.thread.i.i88:                                    ; preds = %bb.g
  store i64 %i.aa, ptr %i.b, align 8, !tbaa !20
  store ptr %i.ab, ptr %1, align 8, !tbaa !16
  %.pre5.i89 = load i64, ptr %i.a, align 8, !tbaa !19 ; 2 uses
  %.pre6.i90 = add i64 %.pre5.i89, 1
  br label %bb.h

bb.h:                                             ; preds = %.thread.i.i88, %bb.f
  %.pre-phi.i84 = phi i64 [ %.pre6.i90, %.thread.i.i88 ], [ %i.w, %bb.f ]
  %i.ac = phi i64 [ %.pre5.i89, %.thread.i.i88 ], [ %i.v, %bb.f ]
  %i.ad = phi ptr [ %i.ab, %.thread.i.i88 ], [ %.pre.i83, %bb.f ]
  store i64 %.pre-phi.i84, ptr %i.a, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 %i.u, ptr %i.ae, align 1, !tbaa !17
  br label %.sink.split

bb.i:                                             ; preds = %bb.i, %.preheader125
  %.060135 = phi i64 [ 0, %.preheader125 ], [ %spec.select.2, %bb.i ]
  %.062134 = phi i64 [ 0, %.preheader125 ], [ %i.bi, %bb.i ] ; 5 uses
  %i.af = lshr i64 %.062134, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !17
  %i.ai = zext i8 %i.ah to i32
  %i.aj = trunc nuw nsw i64 %.062134 to i32
  %i.ak = and i32 %i.aj, 7
  %i.al = lshr i32 %i.ai, %i.ak
  %i.am = and i32 %i.al, 1
  %i.an = zext nneg i32 %i.am to i64
  %spec.select = add i64 %.060135, %i.an
  %i.ao = add nuw nsw i64 %.062134, 1             ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !17
  %i.as = zext i8 %i.ar to i32
  %i.at = trunc nuw nsw i64 %i.ao to i32
  %i.au = and i32 %i.at, 7
  %i.av = lshr i32 %i.as, %i.au
  %i.aw = and i32 %i.av, 1
  %i.ax = zext nneg i32 %i.aw to i64
  %spec.select.1 = add i64 %spec.select, %i.ax
  %i.ay = add nuw nsw i64 %.062134, 2             ; 2 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !17
  %i.bc = zext i8 %i.bb to i32
  %i.bd = trunc nuw nsw i64 %i.ay to i32
  %i.be = and i32 %i.bd, 7
  %i.bf = lshr i32 %i.bc, %i.be
  %i.bg = and i32 %i.bf, 1
  %i.bh = zext nneg i32 %i.bg to i64
  %spec.select.2 = add i64 %spec.select.1, %i.bh  ; 2 uses
  %i.bi = add nuw nsw i64 %.062134, 3             ; 2 uses
  %exitcond.not.2 = icmp eq i64 %i.bi, 255
  br i1 %exitcond.not.2, label %bb.j, label %bb.i

bb.j:                                             ; preds = %bb.i
  %i.bj = icmp ugt i64 %spec.select.2, 16
  br i1 %i.bj, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %.066133, i64 8
  br label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bm = add i64 %i.bl, 1                        ; 3 uses
  %i.bn = load i64, ptr %i.b, align 8, !tbaa !20  ; 2 uses
  %i.bo = icmp ugt i64 %i.bm, %i.bn
  %.pre.i92 = load ptr, ptr %1, align 8, !tbaa !16 ; 2 uses
  br i1 %i.bo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bp = add i64 %i.bn, 4096
  %..i.i95 = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.bp)
  %i.bq = and i64 %..i.i95, 4294967295            ; 2 uses
  %i.br = tail call ptr @cli_max_realloc(ptr noundef %.pre.i92, i64 noundef %i.bq) #9 ; 3 uses
  %.not.i.i96 = icmp eq ptr %i.br, null
  br i1 %.not.i.i96, label %textbuffer_putc.exit100, label %.thread.i.i97

.thread.i.i97:                                    ; preds = %bb.l
  store i64 %i.bq, ptr %i.b, align 8, !tbaa !20
  store ptr %i.br, ptr %1, align 8, !tbaa !16
  %.pre5.i98 = load i64, ptr %i.a, align 8, !tbaa !19 ; 2 uses
  %.pre6.i99 = add i64 %.pre5.i98, 1
  br label %bb.m

bb.m:                                             ; preds = %.thread.i.i97, %bb.k
  %.pre-phi.i93 = phi i64 [ %.pre6.i99, %.thread.i.i97 ], [ %i.bm, %bb.k ]
  %i.bs = phi i64 [ %.pre5.i98, %.thread.i.i97 ], [ %i.bl, %bb.k ]
  %i.bt = phi ptr [ %i.br, %.thread.i.i97 ], [ %.pre.i92, %bb.k ]
  store i64 %.pre-phi.i93, ptr %i.a, align 8, !tbaa !19
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs
  store i8 0, ptr %i.bu, align 1, !tbaa !17
  br label %textbuffer_putc.exit100

textbuffer_putc.exit100:                          ; preds = %bb.l, %bb.m
  %i.bv = load ptr, ptr %1, align 8, !tbaa !16
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !19
  %i.bx = add i64 %i.bw, -1
  %i.by = tail call i32 %3(ptr noundef %4, ptr noundef %i.bv, i64 noundef %i.bx, ptr noundef nonnull %5) #9
  %.not77 = icmp eq i32 %i.by, 0
  %.80 = select i1 %.not77, i32 0, i32 20
  br label %.thread120

bb.n:                                             ; preds = %.preheader, %bb.r
  %.163136 = phi i64 [ 0, %.preheader ], [ %i.cv, %bb.r ] ; 4 uses
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.ca = lshr i64 %.163136, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !17
  %i.cd = zext i8 %i.cc to i32
  %i.ce = trunc nuw nsw i64 %.163136 to i32
  %i.cf = and i32 %i.ce, 7
  %i.cg = shl nuw nsw i32 1, %i.cf
  %i.ch = and i32 %i.cg, %i.cd
  %.not75 = icmp eq i32 %i.ch, 0
  br i1 %.not75, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !19  ; 3 uses
  %i.cj = trunc nuw i64 %.163136 to i8
  %i.ck = add i64 %i.ci, 1                        ; 3 uses
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !20  ; 2 uses
  %i.cm = icmp ugt i64 %i.ck, %i.cl
  %.pre.i101 = load ptr, ptr %1, align 8, !tbaa !16 ; 2 uses
  br i1 %i.cm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cn = add i64 %i.cl, 4096
  %..i.i104 = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 %i.cn)
  %i.co = and i64 %..i.i104, 4294967295           ; 2 uses
  %i.cp = tail call ptr @cli_max_realloc(ptr noundef %.pre.i101, i64 noundef %i.co) #9 ; 3 uses
  %.not.i.i105 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i105, label %textbuffer_putc.exit109, label %.thread.i.i106

.thread.i.i106:                                   ; preds = %bb.p
  store i64 %i.co, ptr %i.b, align 8, !tbaa !20
  store ptr %i.cp, ptr %1, align 8, !tbaa !16
  %.pre5.i107 = load i64, ptr %i.a, align 8, !tbaa !19 ; 2 uses
  %.pre6.i108 = add i64 %.pre5.i107, 1
  br label %bb.q

bb.q:                                             ; preds = %.thread.i.i106, %bb.o
  %.pre-phi.i102 = phi i64 [ %.pre6.i108, %.thread.i.i106 ], [ %i.ck, %bb.o ]
  %i.cq = phi i64 [ %.pre5.i107, %.thread.i.i106 ], [ %i.ci, %bb.o ]
  %i.cr = phi ptr [ %i.cp, %.thread.i.i106 ], [ %.pre.i101, %bb.o ]
  store i64 %.pre-phi.i102, ptr %i.a, align 8, !tbaa !19
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cq
  store i8 %i.cj, ptr %i.cs, align 1, !tbaa !17
  br label %textbuffer_putc.exit109

textbuffer_putc.exit109:                          ; preds = %bb.p, %bb.q
  %i.ct = load ptr, ptr %i.bk, align 8, !tbaa !14
  %i.cu = tail call fastcc i32 @build_suffixtree_ascend(ptr noundef %i.ct, ptr noundef %1, ptr noundef nonnull %.066133, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %.not76 = icmp eq i32 %i.cu, 0
  br i1 %.not76, label %.thread, label %.thread120

.thread:                                          ; preds = %textbuffer_putc.exit109
  store i64 %i.ci, ptr %i.a, align 8, !tbaa !19
  br label %bb.r

bb.r:                                             ; preds = %.thread, %bb.n
  %i.cv = add nuw nsw i64 %.163136, 1             ; 2 uses
  %exitcond142.not = icmp eq i64 %i.cv, 255
  br i1 %exitcond142.not, label %.thread120, label %bb.n

bb.s:                                             ; preds = %bb.b
  %i.cw = getelementptr inbounds nuw i8, ptr %.066133, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !17 ; 2 uses
  %.not73 = icmp eq ptr %.069132, %i.cx
  br i1 %.not73, label %.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = tail call fastcc i32 @build_suffixtree_descend(ptr noundef %i.cx, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %.not74 = icmp eq i32 %i.cy, 0
  %.81 = select i1 %.not74, i32 0, i32 20
  br label %.thread120

bb.u:                                             ; preds = %bb.b
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.da = add i64 %i.cz, 1                        ; 3 uses
  %i.db = load i64, ptr %i.b, align 8, !tbaa !20  ; 2 uses
  %i.dc = icmp ugt i64 %i.da, %i.db
  %.pre.i110 = load ptr, ptr %1, align 8, !tbaa !16 ; 2 uses
  br i1 %i.dc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dd = add i64 %i.db, 4096
  %..i.i113 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.dd)
  %i.de = and i64 %..i.i113, 4294967295           ; 2 uses
  %i.df = tail call ptr @cli_max_realloc(ptr noundef %.pre.i110, i64 noundef %i.de) #9 ; 3 uses
  %.not.i.i114 = icmp eq ptr %i.df, null
  br i1 %.not.i.i114, label %textbuffer_putc.exit118, label %.thread.i.i115

.thread.i.i115:                                   ; preds = %bb.v
  store i64 %i.de, ptr %i.b, align 8, !tbaa !20
  store ptr %i.df, ptr %1, align 8, !tbaa !16
  %.pre5.i116 = load i64, ptr %i.a, align 8, !tbaa !19 ; 2 uses
  %.pre6.i117 = add i64 %.pre5.i116, 1
  br label %bb.w

bb.w:                                             ; preds = %.thread.i.i115, %bb.u
  %.pre-phi.i111 = phi i64 [ %.pre6.i117, %.thread.i.i115 ], [ %i.da, %bb.u ]
  %i.dg = phi i64 [ %.pre5.i116, %.thread.i.i115 ], [ %i.cz, %bb.u ]
  %i.dh = phi ptr [ %i.df, %.thread.i.i115 ], [ %.pre.i110, %bb.u ]
  store i64 %.pre-phi.i111, ptr %i.a, align 8, !tbaa !19
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg
  store i8 0, ptr %i.di, align 1, !tbaa !17
  br label %textbuffer_putc.exit118

textbuffer_putc.exit118:                          ; preds = %bb.v, %bb.w
  %i.dj = load ptr, ptr %1, align 8, !tbaa !16
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !19
  %i.dl = add i64 %i.dk, -1
  %i.dm = tail call i32 %3(ptr noundef %4, ptr noundef %i.dj, i64 noundef %i.dl, ptr noundef nonnull %5) #9
  %.not72 = icmp eq i32 %i.dm, 0
  %.82 = select i1 %.not72, i32 0, i32 20
  br label %.thread120

.sink.split:                                      ; preds = %bb.b, %bb.s, %bb.h, %bb.g
  %i.dn = getelementptr inbounds nuw i8, ptr %.066133, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !14 ; 2 uses
  %6 = icmp eq ptr %i.do, null
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.b
  %.268 = phi i1 [ false, %bb.b ], [ %6, %.sink.split ]
  %7 = phi ptr [ %.066133, %bb.b ], [ %i.do, %.sink.split ]
  br i1 %.268, label %.thread120, label %bb.b

.thread120:                                       ; preds = %bb.x, %textbuffer_putc.exit109, %bb.r, %bb.a, %textbuffer_putc.exit118, %textbuffer_putc.exit100, %bb.t, %textbuffer_putc.exit
  %.5 = phi i32 [ 20, %textbuffer_putc.exit109 ], [ %., %textbuffer_putc.exit ], [ %.82, %textbuffer_putc.exit118 ], [ %.80, %textbuffer_putc.exit100 ], [ %.81, %bb.t ], [ 0, %bb.a ], [ 0, %bb.r ], [ 0, %bb.x ]
  ret i32 %.5
}

declare ptr @cli_max_realloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"p1 _ZTS4node", !10, i64 0}
!13 = !{!"node", !5, i64 0, !12, i64 8, !4, i64 16}
!14 = !{!13, !12, i64 8}
!15 = !{!"text_buffer", !11, i64 0, !8, i64 8, !8, i64 16}
!16 = !{!15, !11, i64 0}
!17 = !{!4, !4, i64 0}
!18 = !{!13, !5, i64 0}
!19 = !{!15, !8, i64 8}
!20 = !{!15, !8, i64 16}
!21 = !{!"p1 _ZTS10regex_list", !10, i64 0}
!22 = !{!"regex_list", !11, i64 0, !10, i64 8, !21, i64 16}
!23 = !{!22, !10, i64 8}
!24 = !{!22, !21, i64 16}
!25 = !{!22, !11, i64 0}
end_hunk_0
