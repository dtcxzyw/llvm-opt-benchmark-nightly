Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/helpers?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_PyTokenizer_translate_newlines:bb.a
  %i.c = tail call ptr @PyMem_Malloc(i64 noundef %i.b) #7 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1, !tbaa !19      ; 3 uses
  %.not63 = icmp eq i8 %i.e, 0
  br i1 %.not63, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %.lr.ph.split, label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph, %.lr.ph.split.us.split
  %i.g = phi i8 [ %i.j, %.lr.ph.split.us.split ], [ %i.e, %.lr.ph ] ; 2 uses
  %.04466.us = phi ptr [ %i.i, %.lr.ph.split.us.split ], [ %i.c, %.lr.ph ] ; 2 uses
  %.05164.us = phi ptr [ %i.h, %.lr.ph.split.us.split ], [ %0, %.lr.ph ]
  store i8 %i.g, ptr %.04466.us, align 1, !tbaa !19
  %i.h = getelementptr i8, ptr %.05164.us, i64 1  ; 2 uses
  %i.i = getelementptr i8, ptr %.04466.us, i64 1  ; 2 uses
  %i.j = load i8, ptr %i.h, align 1, !tbaa !19    ; 2 uses
  %.not.us = icmp eq i8 %i.j, 0
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us.split, !llvm.loop !39

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %3, i64 64
  store i32 15, ptr %i.k, align 8, !tbaa !16
  br label %bb.i

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %i.l = phi i8 [ %i.s, %bb.d ], [ %i.e, %.lr.ph ] ; 2 uses
  %.04466 = phi ptr [ %i.r, %bb.d ], [ %i.c, %.lr.ph ] ; 3 uses
  %.04765 = phi i1 [ %i.p, %bb.d ], [ false, %.lr.ph ]
  %.05164 = phi ptr [ %i.q, %bb.d ], [ %0, %.lr.ph ] ; 2 uses
  %i.m = icmp eq i8 %i.l, 10
  %or.cond60 = and i1 %.04765, %i.m
  br i1 %or.cond60, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split
  %i.n = getelementptr i8, ptr %.05164, i64 1     ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !19    ; 2 uses
  %.not59 = icmp eq i8 %i.o, 0
  br i1 %.not59, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split
  %.152 = phi ptr [ %i.n, %bb.c ], [ %.05164, %.lr.ph.split ]
  %.1 = phi i8 [ %i.o, %bb.c ], [ %i.l, %.lr.ph.split ] ; 2 uses
  %i.p = icmp eq i8 %.1, 13                       ; 2 uses
  %spec.select = select i1 %i.p, i8 10, i8 %.1    ; 2 uses
  store i8 %spec.select, ptr %.04466, align 1, !tbaa !19
  %i.q = getelementptr i8, ptr %.152, i64 1       ; 2 uses
  %i.r = getelementptr i8, ptr %.04466, i64 1     ; 2 uses
  %i.s = load i8, ptr %i.q, align 1, !tbaa !19    ; 2 uses
  %.not = icmp eq i8 %i.s, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph.split.us.split, %bb.d, %bb.c, %.preheader
  %.044.lcssa = phi ptr [ %i.c, %.preheader ], [ %.04466, %bb.c ], [ %i.r, %bb.d ], [ %i.i, %.lr.ph.split.us.split ] ; 5 uses
  %.3 = phi i8 [ 0, %.preheader ], [ 0, %bb.c ], [ %spec.select, %bb.d ], [ %i.g, %.lr.ph.split.us.split ]
  %.not62 = icmp eq i32 %1, 0
  br i1 %.not62, label %bb.f, label %switch.early.test

switch.early.test:                                ; preds = %._crit_edge
  switch i8 %.3, label %bb.e [
    i8 10, label %bb.f
    i8 0, label %bb.f
  ]

bb.e:                                             ; preds = %switch.early.test
  store i8 10, ptr %.044.lcssa, align 1, !tbaa !19
  %i.t = getelementptr i8, ptr %.044.lcssa, i64 1
  br label %bb.f

bb.f:                                             ; preds = %switch.early.test, %switch.early.test, %._crit_edge, %bb.e
  %.145 = phi ptr [ %i.t, %bb.e ], [ %.044.lcssa, %switch.early.test ], [ %.044.lcssa, %._crit_edge ], [ %.044.lcssa, %switch.early.test ] ; 2 uses
  store i8 0, ptr %.145, align 1, !tbaa !19
  %i.u = ptrtoint ptr %.145 to i64
  %i.v = ptrtoint ptr %i.c to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = add i64 %i.w, 1                          ; 3 uses
  %i.y = icmp ult i64 %i.x, %i.b
  %i.z = icmp ne i64 %i.x, 0
  %or.cond10 = and i1 %i.y, %i.z
  br i1 %or.cond10, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call ptr @PyMem_Realloc(ptr noundef nonnull %i.c, i64 noundef %i.x) #7 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @PyMem_Free(ptr noundef nonnull %i.c) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.b
  %.050 = phi ptr [ null, %bb.b ], [ %i.c, %bb.f ], [ null, %bb.h ], [ %i.aa, %bb.g ]
  ret ptr %.050
}

declare ptr @PyMem_Realloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_PyTokenizer_check_bom(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 %0(ptr noundef %3) #7      ; 2 uses
  %i.b = getelementptr i8, ptr %3, i64 2752
  store i32 1, ptr %i.b, align 8, !tbaa !30
  switch i32 %i.a, label %bb.f [
    i32 -1, label %bb.l
    i32 239, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %0(ptr noundef nonnull %3) #7 ; 2 uses
  %.not = icmp eq i32 %i.c, 187
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %1(i32 noundef %i.c, ptr noundef nonnull %3) #7
  tail call void %1(i32 noundef 239, ptr noundef nonnull %3) #7
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 %0(ptr noundef nonnull %3) #7 ; 2 uses
  %.not38 = icmp eq i32 %i.d, 191
  br i1 %.not38, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %1(i32 noundef %i.d, ptr noundef nonnull %3) #7
  tail call void %1(i32 noundef 187, ptr noundef nonnull %3) #7
  tail call void %1(i32 noundef 239, ptr noundef nonnull %3) #7
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  tail call void %1(i32 noundef %i.a, ptr noundef nonnull %3) #7
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %3, i64 2760       ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31   ; 2 uses
  %.not39 = icmp eq ptr %i.f, null
  br i1 %.not39, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @PyMem_Free(ptr noundef nonnull %i.f) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.g = tail call ptr @PyMem_Malloc(i64 noundef 6) #7 ; 4 uses
  %.not.i = icmp ne ptr %i.g, null                ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.h = getelementptr i8, ptr %3, i64 64
  store i32 15, ptr %i.h, align 8, !tbaa !16
  br label %_PyTokenizer_new_string.exit

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.g, ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false)
  %i.i = getelementptr i8, ptr %i.g, i64 5
  store i8 0, ptr %i.i, align 1, !tbaa !19
  br label %_PyTokenizer_new_string.exit

_PyTokenizer_new_string.exit:                     ; preds = %bb.j, %bb.k
  store ptr %i.g, ptr %i.e, align 8, !tbaa !31
  %. = zext i1 %.not.i to i32
  br label %bb.l

bb.l:                                             ; preds = %_PyTokenizer_new_string.exit, %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ 1, %bb.f ], [ 1, %bb.c ], [ 1, %bb.e ], [ 1, %bb.a ], [ %., %_PyTokenizer_new_string.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_PyTokenizer_check_coding_spec(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [13 x i8], align 1                ; 30 uses
  %i.b = getelementptr i8, ptr %2, i64 2768
  %i.c = load i32, ptr %i.b, align 8, !tbaa !44
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %2, i64 2752
  store i32 2, ptr %i.d, align 8, !tbaa !30
  br label %get_coding_spec.exit

bb.c:                                             ; preds = %bb.a
  %.012.lcssa.i.sroa.gep79.i = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  %.012.lcssa.i.sroa.gep80.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.012.lcssa.i.sroa.gep81.i = getelementptr inbounds nuw i8, ptr %i.a, i64 11 ; 2 uses
  %.012.lcssa.i.sroa.gep82.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %.012.lcssa.i.sroa.gep83.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.012.lcssa.i.sroa.gep84.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  %.012.lcssa.i.sroa.gep85.i = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 2 uses
  %.012.lcssa.i.sroa.gep86.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %.012.lcssa.i.sroa.gep87.i = getelementptr inbounds nuw i8, ptr %i.a, i64 7 ; 2 uses
  %.012.lcssa.i.sroa.gep88.i = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 2 uses
  %.012.lcssa.i.sroa.gep89.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9 ; 2 uses
  %.012.lcssa.i.sroa.gep90.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.e = add i64 %1, -6                           ; 3 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.054107.i = phi i64 [ %i.i, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 %.054107.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !19
  switch i8 %i.h, label %.loopexit [
    i8 35, label %.lr.ph114.i
    i8 32, label %bb.d
    i8 9, label %bb.d
    i8 12, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.i = add nuw nsw i64 %.054107.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %i.e
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !40

.lr.ph114.i:                                      ; preds = %.lr.ph.i, %.thread99.i
  %.155112.i = phi i64 [ %i.fm, %.thread99.i ], [ %.054107.i, %.lr.ph.i ] ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 %.155112.i ; 3 uses
  %i.k = load i32, ptr %i.j, align 1
  %i.l = xor i32 %i.k, 1768189795
  %i.m = getelementptr i8, ptr %i.j, i64 4
  %i.n = load i16, ptr %i.m, align 1
  %i.o = zext i16 %i.n to i32
  %i.p = xor i32 %i.o, 26478
  %i.q = or i32 %i.l, %i.p
  %i.r = icmp ne i32 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %.thread99.i

bb.e:                                             ; preds = %.lr.ph114.i
  %i.u = getelementptr i8, ptr %i.j, i64 6        ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !19
  switch i8 %i.v, label %.thread99.i [
    i8 58, label %.critedge.i.preheader
    i8 61, label %.critedge.i.preheader
  ]

.critedge.i.preheader:                            ; preds = %bb.e, %bb.e
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.backedge, %.critedge.i.preheader
  %.051.i = phi ptr [ %i.u, %.critedge.i.preheader ], [ %i.w, %.critedge.i.backedge ]
  %i.w = getelementptr i8, ptr %.051.i, i64 1     ; 6 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !19    ; 2 uses
  switch i8 %i.x, label %.preheader.i [
    i8 32, label %.critedge.i.backedge
    i8 9, label %.critedge.i.backedge
  ]

.critedge.i.backedge:                             ; preds = %.critedge.i, %.critedge.i
  br label %.critedge.i

.preheader.i:                                     ; preds = %.critedge.i, %.critedge2.i
  %i.y = phi i8 [ %.pr.i, %.critedge2.i ], [ %i.x, %.critedge.i ] ; 2 uses
  %.1.i = phi ptr [ %i.ad, %.critedge2.i ], [ %i.w, %.critedge.i ] ; 3 uses
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !10
  %.fr101.i = freeze i32 %i.ab
  %i.ac = and i32 %.fr101.i, 7
  %.not71.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not71.not.i, label %switch.early.test.i, label %.critedge2.i

switch.early.test.i:                              ; preds = %.preheader.i
  switch i8 %i.y, label %bb.f [
    i8 95, label %.critedge2.i
    i8 46, label %.critedge2.i
    i8 45, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %.preheader.i
  %i.ad = getelementptr i8, ptr %.1.i, i64 1      ; 2 uses
  %.pr.i = load i8, ptr %i.ad, align 1, !tbaa !19
  br label %.preheader.i, !llvm.loop !41

bb.f:                                             ; preds = %switch.early.test.i
  %i.ae = icmp ult ptr %i.w, %.1.i
  br i1 %i.ae, label %bb.g, label %.thread99.i

bb.g:                                             ; preds = %bb.f
  %i.af = ptrtoint ptr %.1.i to i64
  %i.ag = ptrtoint ptr %i.w to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  %i.ai = add i64 %i.ah, 1
  %i.aj = tail call ptr @PyMem_Malloc(i64 noundef %i.ai) #7 ; 19 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %_PyTokenizer_new_string.exit.thread.i, label %bb.h

_PyTokenizer_new_string.exit.thread.i:            ; preds = %bb.g
  %i.ak = getelementptr i8, ptr %2, i64 64
  store i32 15, ptr %i.ak, align 8, !tbaa !16
  br label %get_coding_spec.exit

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %i.w, i64 %i.ah, i1 false)
  %i.al = getelementptr i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.al, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.am = load i8, ptr %i.aj, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.am, label %bb.i [
    i8 0, label %bb.af
    i8 95, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %storemerge.i.i = phi i8 [ %i.ap, %bb.i ], [ 45, %bb.h ]
  store i8 %storemerge.i.i, ptr %i.a, align 1, !tbaa !19
  %i.aq = getelementptr i8, ptr %i.aj, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.ar, label %bb.k [
    i8 0, label %bb.af
    i8 95, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink.i.i = phi i8 [ %i.au, %bb.k ], [ 45, %bb.j ]
  store i8 %.sink.i.i, ptr %.012.lcssa.i.sroa.gep80.i, align 1, !tbaa !19
  %i.av = getelementptr i8, ptr %i.aj, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.aw, label %bb.m [
    i8 0, label %bb.af
    i8 95, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink26.i.i = phi i8 [ %i.az, %bb.m ], [ 45, %bb.l ]
  store i8 %.sink26.i.i, ptr %.012.lcssa.i.sroa.gep82.i, align 1, !tbaa !19
  %i.ba = getelementptr i8, ptr %i.aj, i64 3
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.bb, label %bb.o [
    i8 0, label %bb.af
    i8 95, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink28.i.i = phi i8 [ %i.be, %bb.o ], [ 45, %bb.n ]
  store i8 %.sink28.i.i, ptr %.012.lcssa.i.sroa.gep84.i, align 1, !tbaa !19
  %i.bf = getelementptr i8, ptr %i.aj, i64 4
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.bg, label %bb.q [
    i8 0, label %bb.af
    i8 95, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink30.i.i = phi i8 [ %i.bj, %bb.q ], [ 45, %bb.p ]
  store i8 %.sink30.i.i, ptr %.012.lcssa.i.sroa.gep86.i, align 1, !tbaa !19
  %i.bk = getelementptr i8, ptr %i.aj, i64 5
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.bl, label %bb.s [
    i8 0, label %bb.af
    i8 95, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !19
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink32.i.i = phi i8 [ %i.bo, %bb.s ], [ 45, %bb.r ]
  store i8 %.sink32.i.i, ptr %.012.lcssa.i.sroa.gep88.i, align 1, !tbaa !19
  %i.bp = getelementptr i8, ptr %i.aj, i64 6
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.bq, label %bb.u [
    i8 0, label %bb.af
    i8 95, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !19
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sink34.i.i = phi i8 [ %i.bt, %bb.u ], [ 45, %bb.t ]
  store i8 %.sink34.i.i, ptr %.012.lcssa.i.sroa.gep79.i, align 1, !tbaa !19
  %i.bu = getelementptr i8, ptr %i.aj, i64 7
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.bv, label %bb.w [
    i8 0, label %bb.af
    i8 95, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink36.i.i = phi i8 [ %i.by, %bb.w ], [ 45, %bb.v ]
  store i8 %.sink36.i.i, ptr %.012.lcssa.i.sroa.gep87.i, align 1, !tbaa !19
  %i.bz = getelementptr i8, ptr %i.aj, i64 8
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.ca, label %bb.y [
    i8 0, label %bb.af
    i8 95, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !19
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sink38.i.i = phi i8 [ %i.cd, %bb.y ], [ 45, %bb.x ]
  store i8 %.sink38.i.i, ptr %.012.lcssa.i.sroa.gep83.i, align 1, !tbaa !19
  %i.ce = getelementptr i8, ptr %i.aj, i64 9
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.cf, label %bb.aa [
    i8 0, label %bb.af
    i8 95, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink40.i.i = phi i8 [ %i.ci, %bb.aa ], [ 45, %bb.z ]
  store i8 %.sink40.i.i, ptr %.012.lcssa.i.sroa.gep89.i, align 1, !tbaa !19
  %i.cj = getelementptr i8, ptr %i.aj, i64 10
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.ck, label %bb.ac [
    i8 0, label %bb.af
    i8 95, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !19
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sink42.i.i = phi i8 [ %i.cn, %bb.ac ], [ 45, %bb.ab ]
  store i8 %.sink42.i.i, ptr %.012.lcssa.i.sroa.gep85.i, align 1, !tbaa !19
  %i.co = getelementptr i8, ptr %i.aj, i64 11
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.cp, label %bb.ae [
    i8 0, label %bb.af
    i8 95, label %.sink.split.i.i
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !19
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ae, %bb.ad
  %.sink44.i.i = phi i8 [ %i.cs, %bb.ae ], [ 45, %bb.ad ]
  store i8 %.sink44.i.i, ptr %.012.lcssa.i.sroa.gep81.i, align 1, !tbaa !19
  br label %bb.af

bb.af:                                            ; preds = %.sink.split.i.i, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h
  %.012.lcssa.i.sroa.phi.i = phi ptr [ %i.a, %bb.h ], [ %.012.lcssa.i.sroa.gep79.i, %bb.t ], [ %.012.lcssa.i.sroa.gep80.i, %bb.j ], [ %.012.lcssa.i.sroa.gep81.i, %bb.ad ], [ %.012.lcssa.i.sroa.gep82.i, %bb.l ], [ %.012.lcssa.i.sroa.gep83.i, %bb.x ], [ %.012.lcssa.i.sroa.gep84.i, %bb.n ], [ %.012.lcssa.i.sroa.gep85.i, %bb.ab ], [ %.012.lcssa.i.sroa.gep86.i, %bb.p ], [ %.012.lcssa.i.sroa.gep87.i, %bb.v ], [ %.012.lcssa.i.sroa.gep88.i, %bb.r ], [ %.012.lcssa.i.sroa.gep89.i, %bb.z ], [ %.012.lcssa.i.sroa.gep90.i, %.sink.split.i.i ]
  store i8 0, ptr %.012.lcssa.i.sroa.phi.i, align 1, !tbaa !19
  %i.ct = load i32, ptr %i.a, align 1
  %i.cu = xor i32 %i.ct, 761689205
  %i.cv = getelementptr i8, ptr %i.a, i64 4
  %i.cw = load i16, ptr %i.cv, align 1
  %i.cx = zext i16 %i.cw to i32
  %i.cy = xor i32 %i.cx, 56
  %i.cz = or i32 %i.cu, %i.cy
  %i.da = icmp ne i32 %i.cz, 0
  %i.db = zext i1 %i.da to i32
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %get_normal_name.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dd = load i32, ptr %i.a, align 1
  %i.de = xor i32 %i.dd, 761689205
  %i.df = getelementptr i8, ptr %i.a, i64 4
  %i.dg = load i16, ptr %i.df, align 1
  %i.dh = zext i16 %i.dg to i32
  %i.di = xor i32 %i.dh, 11576
  %i.dj = or i32 %i.de, %i.di
  %i.dk = icmp ne i32 %i.dj, 0
  %i.dl = zext i1 %i.dk to i32
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %get_normal_name.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dn = load i64, ptr %i.a, align 1
  %i.do = icmp ne i64 %i.dn, 13842226097709420
  %i.dp = zext i1 %i.do to i32
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %get_normal_name.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dr = load i64, ptr %i.a, align 1
  %i.ds = xor i64 %i.dr, 4122262847859159913
  %i.dt = getelementptr i8, ptr %i.a, i64 3
  %i.du = load i64, ptr %i.dt, align 1
  %i.dv = xor i64 %i.du, 13841997588084781
  %i.dw = or i64 %i.ds, %i.dv
  %i.dx = icmp ne i64 %i.dw, 0
  %i.dy = zext i1 %i.dx to i32
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %get_normal_name.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ea = load i64, ptr %i.a, align 1
  %i.eb = xor i64 %i.ea, 7598805588527510377
  %i.ec = getelementptr i8, ptr %i.a, i64 8
  %i.ed = load i32, ptr %i.ec, align 1
  %i.ee = zext i32 %i.ed to i64
  %i.ef = xor i64 %i.ee, 3222894
  %i.eg = or i64 %i.eb, %i.ef
  %i.eh = icmp ne i64 %i.eg, 0
  %i.ei = zext i1 %i.eh to i32
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %get_normal_name.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ek = load i64, ptr %i.a, align 1
  %i.el = icmp ne i64 %i.ek, 3256433957804466540
  %i.em = zext i1 %i.el to i32
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %get_normal_name.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eo = load i64, ptr %i.a, align 1
  %i.ep = xor i64 %i.eo, 4122262847859159913
  %i.eq = getelementptr i8, ptr %i.a, i64 3
  %i.er = load i64, ptr %i.eq, align 1
  %i.es = xor i64 %i.er, 3256433729294841901
  %i.et = or i64 %i.ep, %i.es
  %i.eu = icmp ne i64 %i.et, 0
  %i.ev = zext i1 %i.eu to i32
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %get_normal_name.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ex = load i64, ptr %i.a, align 1
  %i.ey = xor i64 %i.ex, 7598805588527510377
  %i.ez = getelementptr i8, ptr %i.a, i64 8
  %i.fa = load i32, ptr %i.ez, align 1
  %i.fb = zext i32 %i.fa to i64
  %i.fc = xor i64 %i.fb, 758197614
  %i.fd = or i64 %i.ey, %i.fc
  %i.fe = icmp ne i64 %i.fd, 0
  %i.ff = zext i1 %i.fe to i32
  %i.fg = icmp eq i32 %i.ff, 0
  %spec.select.i.i = select i1 %i.fg, ptr @.str.15, ptr %i.aj
  br label %get_normal_name.exit.i

get_normal_name.exit.i:                           ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.013.i.i = phi ptr [ @.str.15, %bb.ah ], [ @.str.3, %bb.af ], [ @.str.3, %bb.ag ], [ %spec.select.i.i, %bb.am ], [ @.str.15, %bb.al ], [ @.str.15, %bb.ak ], [ @.str.15, %bb.aj ], [ @.str.15, %bb.ai ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.not73.i = icmp eq ptr %i.aj, %.013.i.i
  br i1 %.not73.i, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %get_normal_name.exit.i
  tail call void @PyMem_Free(ptr noundef nonnull %i.aj) #7
  %i.fh = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.013.i.i) #8 ; 3 uses
  %i.fi = add i64 %i.fh, 1
  %i.fj = tail call ptr @PyMem_Malloc(i64 noundef %i.fi) #7 ; 4 uses
  %.not.i77.i = icmp eq ptr %i.fj, null
  br i1 %.not.i77.i, label %_PyTokenizer_new_string.exit78.thread.i, label %_PyTokenizer_new_string.exit78.i

_PyTokenizer_new_string.exit78.thread.i:          ; preds = %bb.an
  %i.fk = getelementptr i8, ptr %2, i64 64
  store i32 15, ptr %i.fk, align 8, !tbaa !16
  br label %get_coding_spec.exit

_PyTokenizer_new_string.exit78.i:                 ; preds = %bb.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fj, ptr nonnull readonly align 1 %.013.i.i, i64 %i.fh, i1 false)
  %i.fl = getelementptr i8, ptr %i.fj, i64 %i.fh
  store i8 0, ptr %i.fl, align 1, !tbaa !19
  br label %bb.aq

.thread99.i:                                      ; preds = %bb.f, %bb.e, %.lr.ph114.i
  %i.fm = add nuw nsw i64 %.155112.i, 1           ; 2 uses
  %exitcond117.not.i = icmp eq i64 %i.fm, %i.e
  br i1 %exitcond117.not.i, label %.loopexit, label %.lr.ph114.i, !llvm.loop !42

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i, %.thread99.i, %bb.c
  %i.fn = icmp sgt i64 %1, 0
  br i1 %i.fn, label %.lr.ph, label %get_coding_spec.exit

.lr.ph:                                           ; preds = %.loopexit, %bb.ap
  %.064 = phi i64 [ %i.fr, %bb.ap ], [ 0, %.loopexit ] ; 2 uses
  %i.fo = getelementptr i8, ptr %0, i64 %.064
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !19
  switch i8 %i.fp, label %bb.ao [
    i8 35, label %get_coding_spec.exit
    i8 10, label %get_coding_spec.exit
    i8 13, label %get_coding_spec.exit
    i8 32, label %bb.ap
    i8 9, label %bb.ap
    i8 12, label %bb.ap
  ]

bb.ao:                                            ; preds = %.lr.ph
  %i.fq = getelementptr i8, ptr %2, i64 2752
  store i32 2, ptr %i.fq, align 8, !tbaa !30
  br label %get_coding_spec.exit

bb.ap:                                            ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.fr = add nuw nsw i64 %.064, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.fr, %1
  br i1 %exitcond.not, label %get_coding_spec.exit, label %.lr.ph, !llvm.loop !43

bb.aq:                                            ; preds = %get_normal_name.exit.i, %_PyTokenizer_new_string.exit78.i
  %.053.ph.ph = phi ptr [ %i.fj, %_PyTokenizer_new_string.exit78.i ], [ %i.aj, %get_normal_name.exit.i ] ; 9 uses
  %i.fs = getelementptr i8, ptr %2, i64 2752
  store i32 2, ptr %i.fs, align 8, !tbaa !30
  %i.ft = getelementptr i8, ptr %2, i64 2760      ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !31 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.fw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.053.ph.ph, ptr noundef nonnull dereferenceable(6) @.str.3) #8
  %.not44 = icmp eq i32 %i.fw, 0
  br i1 %.not44, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fx = tail call i32 %3(ptr noundef nonnull %2, ptr noundef nonnull %.053.ph.ph) #7
  %.not45 = icmp eq i32 %i.fx, 0
  br i1 %.not45, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fy = tail call ptr @_PyTokenizer_error_ret(ptr noundef nonnull %2) ; 0 uses
  %i.fz = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !22
  %i.ga = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.fz, ptr noundef nonnull @.str.4, ptr noundef nonnull %.053.ph.ph) #7 ; 0 uses
  tail call void @PyMem_Free(ptr noundef nonnull %.053.ph.ph) #7
  br label %get_coding_spec.exit

bb.au:                                            ; preds = %bb.as, %bb.ar
  store ptr %.053.ph.ph, ptr %i.ft, align 8, !tbaa !31
  br label %get_coding_spec.exit

bb.av:                                            ; preds = %bb.aq
  %i.gb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fu, ptr noundef nonnull dereferenceable(1) %.053.ph.ph) #8
  %.not43 = icmp eq i32 %i.gb, 0
  br i1 %.not43, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gc = getelementptr i8, ptr %2, i64 2776
  store ptr %0, ptr %i.gc, align 8, !tbaa !17
  %i.gd = getelementptr i8, ptr %2, i64 8
  store ptr %0, ptr %i.gd, align 8, !tbaa !18
  %i.ge = trunc i64 %1 to i32
  %i.gf = tail call i32 (ptr, i32, i32, ptr, ...) @_PyTokenizer_syntaxerror_known_range(ptr noundef nonnull %2, i32 noundef 0, i32 noundef %i.ge, ptr noundef nonnull @.str.5, ptr noundef nonnull %.053.ph.ph) ; 0 uses
  tail call void @PyMem_Free(ptr noundef nonnull %.053.ph.ph) #7
  %i.gg = getelementptr i8, ptr %2, i64 2756
  store i32 1, ptr %i.gg, align 4, !tbaa !23
  %i.gh = getelementptr i8, ptr %2, i64 72
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !24
  %.not.i = icmp eq ptr %i.gi, null
  br i1 %.not.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gj = getelementptr i8, ptr %2, i64 2808
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !25
  %.not11.i = icmp eq ptr %i.gk, null
  br i1 %.not11.i, label %_PyTokenizer_error_ret.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gl = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %.not12.i = icmp eq ptr %i.gl, null
  br i1 %.not12.i, label %_PyTokenizer_error_ret.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @PyMem_Free(ptr noundef nonnull %i.gl) #7
  br label %_PyTokenizer_error_ret.exit

_PyTokenizer_error_ret.exit:                      ; preds = %bb.ax, %bb.ay, %bb.az
  %i.gm = getelementptr i8, ptr %2, i64 48
  %i.gn = getelementptr i8, ptr %2, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i8 0, i64 16, i1 false)
  store i32 22, ptr %i.gn, align 8, !tbaa !16
  br label %get_coding_spec.exit

bb.ba:                                            ; preds = %bb.av
  tail call void @PyMem_Free(ptr noundef nonnull %.053.ph.ph) #7
  br label %get_coding_spec.exit

get_coding_spec.exit:                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %bb.ap, %.loopexit, %_PyTokenizer_new_string.exit78.thread.i, %_PyTokenizer_new_string.exit.thread.i, %bb.au, %bb.ba, %bb.ao, %_PyTokenizer_error_ret.exit, %bb.at, %bb.b
  %.035 = phi i32 [ 1, %bb.b ], [ 1, %bb.ao ], [ 0, %bb.at ], [ 0, %_PyTokenizer_error_ret.exit ], [ 1, %bb.au ], [ 1, %bb.ba ], [ 0, %_PyTokenizer_new_string.exit.thread.i ], [ 0, %_PyTokenizer_new_string.exit78.thread.i ], [ 1, %.loopexit ], [ 1, %bb.ap ], [ 1, %.lr.ph ], [ 1, %.lr.ph ], [ 1, %.lr.ph ]
  ret i32 %.035
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_PyTokenizer_ensure_utf8(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !19      ; 2 uses
  %.not53 = icmp eq i8 %i.a, 0
  br i1 %.not53, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %valid_utf8.exit
  %i.b = phi i8 [ %i.ad, %valid_utf8.exit ], [ %i.a, %bb.a ] ; 9 uses
  %.057 = phi ptr [ %.1, %valid_utf8.exit ], [ %0, %bb.a ] ; 2 uses
  %.02556 = phi i32 [ %.126, %valid_utf8.exit ], [ 0, %bb.a ] ; 2 uses
  %.02755 = phi ptr [ %i.ac, %valid_utf8.exit ], [ %0, %bb.a ] ; 10 uses
  %.02954 = phi i32 [ %.130, %valid_utf8.exit ], [ %2, %bb.a ] ; 3 uses
  %i.c = icmp sgt i8 %i.b, -1
  br i1 %i.c, label %valid_utf8.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp samesign ult i8 %i.b, -32           ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ult i8 %i.b, -62
  br i1 %i.e, label %.loopexit, label %.thread.i

bb.d:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i8 %i.b, -16
  br i1 %i.f, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  switch i8 %i.b, label %.thread.i [
    i8 -32, label %bb.f
    i8 -19, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr i8, ptr %.02755, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !19
  %i.i = icmp ult i8 %i.h, -96
  br i1 %i.i, label %.loopexit, label %.thread.i

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %.02755, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !19
  %i.l = icmp ugt i8 %i.k, -97
  br i1 %i.l, label %.loopexit, label %.thread.i

bb.h:                                             ; preds = %bb.d
  %i.m = icmp samesign ult i8 %i.b, -11
  br i1 %i.m, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr i8, ptr %.02755, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !19
  %i.p = icmp ult i8 %i.o, -112
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.q = icmp eq i8 %i.b, -16
  br i1 %i.q, label %.loopexit, label %.thread.i

bb.k:                                             ; preds = %bb.i
  %i.r = icmp eq i8 %i.b, -12
  br i1 %i.r, label %.loopexit, label %.thread.i

bb.l:                                             ; preds = %.thread.i
  br i1 %i.d, label %valid_utf8.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = getelementptr i8, ptr %.02755, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !19
  %or.cond.i.1 = icmp sgt i8 %i.t, -65
  br i1 %or.cond.i.1, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %exitcond.not.i.1, label %valid_utf8.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = getelementptr i8, ptr %.02755, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !19
  %or.cond.i.2 = icmp sgt i8 %i.v, -65
  br i1 %or.cond.i.2, label %.loopexit, label %valid_utf8.exit

.thread.i:                                        ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %bb.j, %bb.k
  %exitcond.not.i.1 = phi i1 [ true, %bb.g ], [ false, %bb.c ], [ true, %bb.e ], [ false, %bb.k ], [ false, %bb.j ], [ true, %bb.f ]
  %.023.i = phi i64 [ 3, %bb.g ], [ 2, %bb.c ], [ 3, %bb.e ], [ 4, %bb.k ], [ 4, %bb.j ], [ 3, %bb.f ] ; 3 uses
  %i.w = getelementptr i8, ptr %.02755, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !19
end_hunk_0
