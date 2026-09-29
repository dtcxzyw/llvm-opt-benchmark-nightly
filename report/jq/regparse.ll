Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/regparse?download=true
inline.NumInlined: 358
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 21
begin_hunk_0_@node_free_body:bb.a

onig_node_free.exit50:                            ; preds = %bb.n, %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !28 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %common.ret, label %bb.p

common.ret.sink.split:                            ; preds = %bb.k, %bb.j, %bb.i, %bb.d, %bb.p, %onig_node_free.exit52, %onig_node_free.exit54
  %.sink = phi ptr [ %i.af, %bb.p ], [ %i.s, %bb.j ], [ %i.f, %bb.d ], [ %i.am, %onig_node_free.exit54 ], [ %i.ai, %onig_node_free.exit52 ], [ %i.s, %bb.i ], [ %i.v, %bb.k ]
  tail call void @free(ptr noundef nonnull %.sink) #26
  br label %common.ret

common.ret:                                       ; preds = %onig_node_free.exit48, %common.ret.sink.split, %onig_node_free.exit, %bb.b, %bb.a, %bb.d, %bb.c, %bb.k, %bb.q, %bb.s, %bb.h, %bb.m, %onig_node_free.exit50
  ret void

bb.p:                                             ; preds = %onig_node_free.exit50
  tail call fastcc void @node_free_body(ptr noundef nonnull %i.af), !inline_history !101
  br label %common.ret.sink.split

bb.q:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !28 ; 3 uses
  %.not40 = icmp eq ptr %i.ai, null
  br i1 %.not40, label %common.ret, label %onig_node_free.exit52

onig_node_free.exit52:                            ; preds = %bb.q
  tail call fastcc void @node_free_body(ptr noundef nonnull %i.ai), !inline_history !101
  br label %common.ret.sink.split

bb.r:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !28 ; 3 uses
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %bb.s, label %onig_node_free.exit53

onig_node_free.exit53:                            ; preds = %bb.r
  tail call fastcc void @node_free_body(ptr noundef nonnull %i.ak), !inline_history !101
  tail call void @free(ptr noundef nonnull %i.ak) #26, !inline_history !101
  br label %bb.s

bb.s:                                             ; preds = %onig_node_free.exit53, %bb.r
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28 ; 3 uses
  %.not39 = icmp eq ptr %i.am, null
  br i1 %.not39, label %common.ret, label %onig_node_free.exit54

onig_node_free.exit54:                            ; preds = %bb.s
  tail call fastcc void @node_free_body(ptr noundef nonnull %i.am), !inline_history !101
  br label %common.ret.sink.split
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 -6, 1) i32 @onig_node_copy(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !110
  %i.a = load i32, ptr %1, align 8, !tbaa !28
  switch i32 %i.a, label %bb.j [
    i32 7, label %bb.b
    i32 8, label %bb.b
    i32 6, label %bb.b
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %calloc.i = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 13 uses
  %i.b = icmp eq ptr %calloc.i, null
  br i1 %i.b, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %calloc.i, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.c = load i32, ptr %calloc.i, align 8, !tbaa !28
  switch i32 %i.c, label %.thread [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %calloc.i, i64 32
  store i32 0, ptr %i.h, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %calloc.i, i64 36 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24
  store ptr %i.i, ptr %i.k, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %calloc.i, i64 60
  store i32 0, ptr %i.l, align 4, !tbaa !28
  %i.m = tail call range(i32 -5, 1) i32 @onig_node_str_cat(ptr noundef nonnull %calloc.i, ptr noundef %i.e, ptr noundef %i.g) ; 2 uses
  %.not29 = icmp eq i32 %i.m, 0
  br i1 %.not29, label %.thread, label %onig_node_free.exit

onig_node_free.exit:                              ; preds = %bb.f, %bbuf_free.exit.i, %bb.d
  %.021 = phi i32 [ %i.m, %bb.d ], [ -5, %bbuf_free.exit.i ], [ -5, %bb.f ]
  tail call fastcc void @node_free_body(ptr noundef nonnull %calloc.i), !inline_history !101
  tail call void @free(ptr noundef nonnull %calloc.i) #26, !inline_history !101
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !105  ; 4 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %calloc.i, i64 56 ; 2 uses
  %i.q = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #27 ; 7 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !111
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %onig_node_free.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !112  ; 3 uses
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.q, align 8, !tbaa !107
  br label %bbuf_clone.exit

bb.i:                                             ; preds = %bb.g
  %i.v = zext nneg i32 %i.t to i64
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #27 ; 3 uses
  store ptr %i.w, ptr %i.q, align 8, !tbaa !107
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bbuf_free.exit.i, label %bbuf_clone.exit

bbuf_free.exit.i:                                 ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.q) #26
  store ptr null, ptr %i.p, align 8, !tbaa !111
  br label %onig_node_free.exit

bbuf_clone.exit:                                  ; preds = %bb.h, %bb.i
  %i.y = phi ptr [ null, %bb.h ], [ %i.w, %bb.i ]
  %.0.i.i = phi i32 [ 0, %bb.h ], [ %i.t, %bb.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 %.0.i.i, ptr %i.z, align 4, !tbaa !112
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !113 ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !113
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !107
  %i.ae = zext i32 %i.ac to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.ad, i64 %i.ae, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.e, %bbuf_clone.exit, %bb.c, %bb.d
  store ptr %calloc.i, ptr %0, align 8, !tbaa !110
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.a, %.thread, %onig_node_free.exit
  %.022 = phi i32 [ %.021, %onig_node_free.exit ], [ -6, %bb.a ], [ 0, %.thread ], [ -5, %bb.b ]
  ret i32 %.022
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 -5, 1) i32 @onig_node_str_set(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #15 {
bb.a:
  %.not.i = icmp eq i32 %3, 0
  br i1 %.not.i, label %onig_node_str_clear.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %.not11.i = icmp eq i32 %i.b, 0
  br i1 %.not11.i, label %onig_node_str_clear.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 3 uses
  %.not12.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.not13.i = icmp eq ptr %i.d, %i.e
  %or.cond.i = select i1 %.not12.i, i1 true, i1 %.not13.i
  br i1 %or.cond.i, label %onig_node_str_clear.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #26
  br label %onig_node_str_clear.exit

onig_node_str_clear.exit:                         ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.f, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.i, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.j, align 4, !tbaa !28
  %i.k = tail call i32 @onig_node_str_cat(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noundef ptr @onig_node_new_list(ptr noundef %0, ptr noundef %1) local_unnamed_addr #16 {
bb.a:
  %calloc.i.i = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 5 uses
  %i.a = icmp eq ptr %calloc.i.i, null
  br i1 %i.a, label %node_new_list.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 7, ptr %calloc.i.i, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 16
  store ptr %0, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 24
  store ptr %1, ptr %i.c, align 8, !tbaa !28
  br label %node_new_list.exit

node_new_list.exit:                               ; preds = %bb.a, %bb.b
  ret ptr %calloc.i.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noundef ptr @onig_node_new_alt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #16 {
bb.a:
  %calloc.i = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 5 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 8, ptr %calloc.i, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %0, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24
  store ptr %1, ptr %i.c, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %calloc.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noundef ptr @onig_node_new_bag(i32 noundef %0) local_unnamed_addr #16 {
bb.a:
  %calloc.i.i = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 7 uses
  %i.a = icmp eq ptr %calloc.i.i, null
  br i1 %i.a, label %node_new_bag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 5, ptr %calloc.i.i, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 24
  store i32 %0, ptr %i.b, align 8, !tbaa !28
  %cond = icmp eq i32 %0, 0
  br i1 %cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 36
  store i32 -1, ptr %i.c, align 4, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 40
  store i32 1, ptr %i.d, align 8, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 64
  store i32 0, ptr %i.e, align 8, !tbaa !28
  br label %node_new_bag.exit

node_new_bag.exit:                                ; preds = %bb.a, %bb.d
  ret ptr %calloc.i.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef i32 @onig_node_reset_fail(ptr nofree noundef captures(address) %0) local_unnamed_addr #14 {
bb.a:
  tail call fastcc void @node_free_body(ptr noundef %0)
  store i32 10, ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !28
  ret i32 0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @onig_free_reg_callout_list(i32 noundef %0, ptr noundef captures(address_is_null) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.h, label %.preheader28

.preheader28:                                     ; preds = %bb.a
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %.lr.ph31.preheader, label %._crit_edge

.lr.ph31.preheader:                               ; preds = %.preheader28
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph31

.lr.ph31:                                         ; preds = %.lr.ph31.preheader, %.loopexit
  %indvars.iv33 = phi i64 [ 0, %.lr.ph31.preheader ], [ %indvars.iv.next34, %.loopexit ] ; 2 uses
  %i.c = getelementptr inbounds nuw [144 x i8], ptr %1, i64 %indvars.iv33 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !114
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %.preheader, label %bb.f

.preheader:                                       ; preds = %.lr.ph31
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 60 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !28   ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.l = phi i32 [ %i.h, %.lr.ph ], [ %i.r, %bb.e ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !28
  %i.o = icmp eq i32 %i.n, 4
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28   ; 2 uses
  %.not27 = icmp eq ptr %i.q, null
  br i1 %.not27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.q) #26
  %.pre = load i32, ptr %i.g, align 4, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %i.r = phi i32 [ %i.l, %bb.b ], [ %.pre, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %bb.b, label %.loopexit, !llvm.loop !195

bb.f:                                             ; preds = %.lr.ph31
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !28   ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.v) #26
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.g, %bb.f
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph31, !llvm.loop !196

._crit_edge:                                      ; preds = %.loopexit, %.preheader28
  tail call void @free(ptr noundef nonnull %1) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 -5, 1) i32 @onig_node_str_cat(ptr nofree noundef captures(address) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #15 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 7 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 6 uses
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !28   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  %i.q = add nsw i32 %i.m, %i.d                   ; 4 uses
  %i.r = icmp sgt i32 %i.q, 23
  %or.cond = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.c, label %onig_strcpy.exit56

bb.c:                                             ; preds = %bb.b
  %i.s = add nsw i32 %i.q, 16                     ; 2 uses
  %.not = icmp sgt i32 %i.s, %i.o
  br i1 %.not, label %bb.d, label %onig_strcpy.exit

onig_strcpy.exit:                                 ; preds = %bb.c
  %sext51 = shl i64 %i.l, 32
  %i.t = ashr exact i64 %sext51, 32               ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.t ; 2 uses
  %i.v = and i64 %i.c, 2147483647                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %1, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  store i8 0, ptr %i.w, align 1, !tbaa !28
  br label %.critedge54

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.y = icmp eq ptr %i.i, %i.x
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.z = add nsw i32 %i.q, 17
  %i.aa = sext i32 %i.z to i64
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.aa) #27 ; 5 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp sgt i32 %i.m, 0
  br i1 %i.ad, label %bb.g, label %strcat_capa_from_static.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = and i64 %i.l, 2147483647                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr align 1 %i.i, i64 %i.ae, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  store i8 0, ptr %i.af, align 1, !tbaa !28
  br label %strcat_capa_from_static.exit

bb.h:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.i, null
  %i.ag = add nsw i32 %i.q, 17
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = tail call ptr @realloc(ptr noundef nonnull %i.i, i64 noundef %i.ah) #28
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ah) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
end_hunk_0
begin_hunk_1_@prs_exp:bb.a
  tail call fastcc void @node_str_remove_char(ptr noundef %i.agh)
  %.pr578 = load ptr, ptr %0, align 8, !tbaa !110
  br label %bb.hs

bb.kn:                                            ; preds = %bb.b
  %i.agi = getelementptr inbounds nuw i8, ptr %5, i64 240 ; 2 uses
  %i.agj = load i32, ptr %i.agi, align 8, !tbaa !160 ; 2 uses
  %i.agk = add nsw i32 %i.agj, 1
  store i32 %i.agk, ptr %i.agi, align 8, !tbaa !160
  %calloc.i.i.i462 = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 5 uses
  store ptr %calloc.i.i.i462, ptr %0, align 8, !tbaa !110
  %i.agl = icmp eq ptr %calloc.i.i.i462, null
  br i1 %i.agl, label %.critedge416, label %node_new_keep.exit

node_new_keep.exit:                               ; preds = %bb.kn
  store i32 10, ptr %calloc.i.i.i462, align 8, !tbaa !28
  %i.agm = getelementptr inbounds nuw i8, ptr %calloc.i.i.i462, i64 28
  store i32 %i.agj, ptr %i.agm, align 4, !tbaa !28
  %i.agn = getelementptr inbounds nuw i8, ptr %calloc.i.i.i462, i64 16
  store i32 1, ptr %i.agn, align 8, !tbaa !28
  %i.ago = getelementptr inbounds nuw i8, ptr %5, i64 236 ; 2 uses
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !242
  %i.agq = add nsw i32 %i.agp, 1
  store i32 %i.agq, ptr %i.ago, align 4, !tbaa !242
  br label %.thread588

bb.ko:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.agr = load ptr, ptr %i.v, align 8, !tbaa !125
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 48
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !152
  %i.agu = call i32 %i.agt(i32 noundef 13, ptr noundef nonnull %i.b) #26, !inline_history !237 ; 4 uses
  %i.agv = icmp slt i32 %i.agu, 0
  br i1 %i.agv, label %node_new_general_newline.exit.thread, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.agw = load ptr, ptr %i.v, align 8, !tbaa !125
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 48
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !152
  %i.agz = zext nneg i32 %i.agu to i64
  %i.aha = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.agz ; 2 uses
  %i.ahb = call i32 %i.agy(i32 noundef 10, ptr noundef nonnull %i.aha) #26, !inline_history !237 ; 3 uses
  %i.ahc = icmp slt i32 %i.ahb, 0
  br i1 %i.ahc, label %node_new_general_newline.exit.thread, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %calloc.i.i.i.i.i464 = call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 9 uses
  %i.ahd = icmp eq ptr %calloc.i.i.i.i.i464, null
  br i1 %i.ahd, label %node_new_general_newline.exit.thread, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.ahe = zext nneg i32 %i.ahb to i64
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.aha, i64 %i.ahe
  %i.ahg = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i.i464, i64 36 ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i.i464, i64 16
  store ptr %i.ahg, ptr %i.ahh, align 8, !tbaa !28
  %i.ahi = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i.i464, i64 24
  store ptr %i.ahg, ptr %i.ahi, align 8, !tbaa !28
  %i.ahj = call range(i32 -5, 1) i32 @onig_node_str_cat(ptr noundef nonnull %calloc.i.i.i.i.i464, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ahf)
  %.not.i.i.i.i465 = icmp eq i32 %i.ahj, 0
  br i1 %.not.i.i.i.i465, label %bb.ks, label %node_new_general_newline.exit.thread.sink.split

bb.ks:                                            ; preds = %bb.kr
  %i.ahk = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i.i464, i64 32 ; 2 uses
  %i.ahl = load i32, ptr %i.ahk, align 8, !tbaa !28
  %i.ahm = or i32 %i.ahl, 1
  store i32 %i.ahm, ptr %i.ahk, align 8, !tbaa !28
  %calloc.i.i.i468 = call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 8 uses
  %i.ahn = icmp eq ptr %calloc.i.i.i468, null
  br i1 %i.ahn, label %node_new_general_newline.exit.thread.sink.split, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  store i32 1, ptr %calloc.i.i.i468, align 8, !tbaa !28
  %i.aho = icmp eq i32 %i.agu, 1
  br i1 %i.aho, label %.lr.ph.i.i, label %bb.ku

.lr.ph.i.i:                                       ; preds = %bb.kt
  %i.ahp = getelementptr inbounds nuw i8, ptr %calloc.i.i.i468, i64 20
  store i32 15360, ptr %i.ahp, align 4, !tbaa !26
  br label %bitset_set_range.exit.i

bb.ku:                                            ; preds = %bb.kt
  %i.ahq = getelementptr inbounds nuw i8, ptr %calloc.i.i.i468, i64 56
  %i.ahr = call fastcc i32 @add_code_range_to_buf(ptr noundef nonnull %i.ahq, i32 noundef 10, i32 noundef 13)
  %.not.i469 = icmp eq i32 %i.ahr, 0
  br i1 %.not.i469, label %bitset_set_range.exit.i, label %onig_node_free.exit.i

onig_node_free.exit.i:                            ; preds = %bb.kx, %bb.kw, %bb.kv, %bb.ku
  call fastcc void @node_free_body(ptr noundef nonnull %calloc.i.i.i468), !inline_history !101
  call void @free(ptr noundef nonnull %calloc.i.i.i468) #26, !inline_history !101
  br label %node_new_general_newline.exit.thread.sink.split

bitset_set_range.exit.i:                          ; preds = %bb.ku, %.lr.ph.i.i
  %i.ahs = load ptr, ptr %i.v, align 8, !tbaa !125
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 144
  %i.ahu = load i32, ptr %i.aht, align 8, !tbaa !87
  %i.ahv = and i32 %i.ahu, 2
  %.not37.i = icmp eq i32 %i.ahv, 0
  br i1 %.not37.i, label %bb.kx, label %bb.kv

bb.kv:                                            ; preds = %bitset_set_range.exit.i
  %i.ahw = getelementptr inbounds nuw i8, ptr %calloc.i.i.i468, i64 56 ; 2 uses
  %i.ahx = call fastcc i32 @add_code_range_to_buf(ptr noundef nonnull %i.ahw, i32 noundef 133, i32 noundef 133)
  %.not38.i = icmp eq i32 %i.ahx, 0
  br i1 %.not38.i, label %bb.kw, label %onig_node_free.exit.i

bb.kw:                                            ; preds = %bb.kv
  %i.ahy = call fastcc i32 @add_code_range_to_buf(ptr noundef nonnull %i.ahw, i32 noundef 8232, i32 noundef 8233)
  %.not39.i = icmp eq i32 %i.ahy, 0
  br i1 %.not39.i, label %bb.kx, label %onig_node_free.exit.i

bb.kx:                                            ; preds = %bb.kw, %bitset_set_range.exit.i
  %calloc.i.i.i.i = call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 6 uses
  %i.ahz = icmp eq ptr %calloc.i.i.i.i, null
  br i1 %i.ahz, label %onig_node_free.exit.i, label %node_new_general_newline.exit

node_new_general_newline.exit.thread.sink.split:  ; preds = %bb.ks, %onig_node_free.exit.i, %bb.kr
  call fastcc void @node_free_body(ptr noundef nonnull %calloc.i.i.i.i.i464)
  call void @free(ptr noundef nonnull %calloc.i.i.i.i.i464) #26
  br label %node_new_general_newline.exit.thread

node_new_general_newline.exit.thread:             ; preds = %node_new_general_newline.exit.thread.sink.split, %bb.ko, %bb.kp, %bb.kq
  %.0.i467.ph = phi i32 [ -5, %bb.kq ], [ %i.ahb, %bb.kp ], [ %i.agu, %bb.ko ], [ -5, %node_new_general_newline.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.critedge416

node_new_general_newline.exit:                    ; preds = %bb.kx
  store i32 5, ptr %calloc.i.i.i.i, align 8, !tbaa !28
  %i.aia = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i, i64 24
  store i32 3, ptr %i.aia, align 8, !tbaa !28
  %i.aib = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i, i64 16
  store ptr %calloc.i.i.i.i.i464, ptr %i.aib, align 8, !tbaa !28
  %i.aic = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i, i64 40
  store ptr %calloc.i.i.i468, ptr %i.aic, align 8, !tbaa !28
  store ptr %calloc.i.i.i.i, ptr %0, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.thread588

bb.ky:                                            ; preds = %bb.b
  %calloc.i.i.i.i470 = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 4 uses
  %i.aid = icmp eq ptr %calloc.i.i.i.i470, null
  br i1 %i.aid, label %.critedge416, label %node_new_no_newline.exit

node_new_no_newline.exit:                         ; preds = %bb.ky
  store i32 2, ptr %calloc.i.i.i.i470, align 8, !tbaa !28
  %i.aie = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i470, i64 16
  store i32 -1, ptr %i.aie, align 8, !tbaa !28
  store ptr %calloc.i.i.i.i470, ptr %0, align 8, !tbaa !110
  br label %.thread588

bb.kz:                                            ; preds = %bb.b
  %calloc.i.i.i.i472 = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 5 uses
  %i.aif = icmp eq ptr %calloc.i.i.i.i472, null
  br i1 %i.aif, label %.critedge416, label %node_new_true_anychar.exit

node_new_true_anychar.exit:                       ; preds = %bb.kz
  store i32 2, ptr %calloc.i.i.i.i472, align 8, !tbaa !28
  %i.aig = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i472, i64 16
  store i32 -1, ptr %i.aig, align 8, !tbaa !28
  %i.aih = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i472, i64 4
  store i32 4194304, ptr %i.aih, align 4, !tbaa !28
  store ptr %calloc.i.i.i.i472, ptr %0, align 8, !tbaa !110
  br label %.thread588

bb.la:                                            ; preds = %bb.b
  %.val422 = load i32, ptr %5, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.aii = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %calloc.i.i.i.i474 = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 8 uses
  %i.aij = icmp eq ptr %calloc.i.i.i.i474, null
  br i1 %i.aij, label %make_text_segment.exit.thread, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  store i32 6, ptr %calloc.i.i.i.i474, align 8, !tbaa !28
  %i.aik = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i474, i64 24
  store i32 131072, ptr %i.aik, align 8, !tbaa !28
  %i.ail = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i474, i64 32
  store i32 -1, ptr %i.ail, align 8, !tbaa !28
  %i.aim = and i32 %.val422, 2097152
  %.not21.i.i = icmp eq i32 %i.aim, 0
  br i1 %.not21.i.i, label %bb.ld, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.ain = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i474, i64 4
  store i32 8388608, ptr %i.ain, align 4, !tbaa !28
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %bb.lb
  store ptr %calloc.i.i.i.i474, ptr %i.a, align 16, !tbaa !110
  %calloc.i.i.i.i.i475 = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 6 uses
  %i.aio = icmp eq ptr %calloc.i.i.i.i.i475, null
  br i1 %i.aio, label %onig_node_free.exit.i477, label %bb.le

bb.le:                                            ; preds = %bb.ld
  store i32 2, ptr %calloc.i.i.i.i.i475, align 8, !tbaa !28
  %i.aip = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i.i475, i64 16
  store i32 -1, ptr %i.aip, align 8, !tbaa !28
  %i.aiq = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i.i475, i64 4
  store i32 4194304, ptr %i.aiq, align 4, !tbaa !28
  store ptr %calloc.i.i.i.i.i475, ptr %i.aii, align 8, !tbaa !110
  %i.air = call fastcc noundef ptr @make_list_or_alt(i32 noundef 7, i32 noundef 2, ptr noundef nonnull readonly %i.a) ; 3 uses
  %i.ais = icmp eq ptr %i.air, null
  br i1 %i.ais, label %onig_node_free.exit.i477, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %calloc.i.i.i476 = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 9 uses
  %i.ait = icmp eq ptr %calloc.i.i.i476, null
  br i1 %i.ait, label %onig_node_free.exit.i477, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  store i32 4, ptr %calloc.i.i.i476, align 8, !tbaa !28
  %i.aiu = getelementptr inbounds nuw i8, ptr %calloc.i.i.i476, i64 28
  store i32 -1, ptr %i.aiu, align 4, !tbaa !28
  %i.aiv = getelementptr inbounds nuw i8, ptr %calloc.i.i.i476, i64 32
  store i32 1, ptr %i.aiv, align 8, !tbaa !28
  %i.aiw = getelementptr inbounds nuw i8, ptr %calloc.i.i.i476, i64 4
  store i32 16384, ptr %i.aiw, align 4, !tbaa !28
  %i.aix = getelementptr inbounds nuw i8, ptr %calloc.i.i.i476, i64 16
  store ptr %i.air, ptr %i.aix, align 8, !tbaa !28
  store ptr %calloc.i.i.i476, ptr %i.aii, align 8, !tbaa !110
  %calloc.i.i.i.i27.i = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 6 uses
  %i.aiy = icmp eq ptr %calloc.i.i.i.i27.i, null
  br i1 %i.aiy, label %onig_node_free.exit.thread12.i, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  store i32 2, ptr %calloc.i.i.i.i27.i, align 8, !tbaa !28
  %i.aiz = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i27.i, i64 16
  store i32 -1, ptr %i.aiz, align 8, !tbaa !28
  %i.aja = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i27.i, i64 4
  store i32 4194304, ptr %i.aja, align 4, !tbaa !28
  store ptr %calloc.i.i.i.i27.i, ptr %i.a, align 16, !tbaa !110
  %i.ajb = call fastcc noundef ptr @make_list_or_alt(i32 noundef 7, i32 noundef 2, ptr noundef nonnull readonly %i.a) ; 3 uses
  %i.ajc = icmp eq ptr %i.ajb, null
  br i1 %i.ajc, label %onig_node_free.exit.i477, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %calloc.i.i30.i = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 5 uses
  %i.ajd = icmp eq ptr %calloc.i.i30.i, null
  br i1 %i.ajd, label %onig_node_free.exit.i477, label %make_text_segment.exit

onig_node_free.exit.i477:                         ; preds = %bb.li, %bb.lh, %bb.lf, %bb.le, %bb.ld
  %.ph.i = phi ptr [ %calloc.i.i.i476, %bb.lh ], [ %calloc.i.i.i.i.i475, %bb.le ], [ null, %bb.ld ], [ null, %bb.lf ], [ null, %bb.li ] ; 2 uses
  %calloc.i.i.i7.ph.i = phi ptr [ %calloc.i.i.i.i27.i, %bb.lh ], [ %calloc.i.i.i.i474, %bb.le ], [ %calloc.i.i.i.i474, %bb.ld ], [ %i.air, %bb.lf ], [ %i.ajb, %bb.li ] ; 2 uses
  tail call fastcc void @node_free_body(ptr noundef nonnull %calloc.i.i.i7.ph.i), !inline_history !101
  tail call void @free(ptr noundef nonnull %calloc.i.i.i7.ph.i) #26, !inline_history !101
  %i.aje = icmp eq ptr %.ph.i, null
  br i1 %i.aje, label %make_text_segment.exit.thread, label %onig_node_free.exit.thread12.i

onig_node_free.exit.thread12.i:                   ; preds = %onig_node_free.exit.i477, %bb.lg
  %i.ajf = phi ptr [ %.ph.i, %onig_node_free.exit.i477 ], [ %calloc.i.i.i476, %bb.lg ] ; 2 uses
  tail call fastcc void @node_free_body(ptr noundef nonnull %i.ajf), !inline_history !101
  tail call void @free(ptr noundef nonnull %i.ajf) #26, !inline_history !101
  br label %make_text_segment.exit.thread

make_text_segment.exit.thread:                    ; preds = %onig_node_free.exit.i477, %onig_node_free.exit.thread12.i, %bb.la
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.critedge416

make_text_segment.exit:                           ; preds = %bb.li
  store i32 5, ptr %calloc.i.i30.i, align 8, !tbaa !28
  %i.ajg = getelementptr inbounds nuw i8, ptr %calloc.i.i30.i, i64 24
  store i32 2, ptr %i.ajg, align 8, !tbaa !28
  %i.ajh = getelementptr inbounds nuw i8, ptr %calloc.i.i30.i, i64 16
  store ptr %i.ajb, ptr %i.ajh, align 8, !tbaa !28
  store ptr %calloc.i.i30.i, ptr %0, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread588

.thread588:                                       ; preds = %bb.hc, %onig_node_free.exit485, %bb.lv, %bb.ly, %bb.js, %bb.ih, %bb.io, %bb.jw, %bb.hd, %bb.im, %bb.hf, %.thread582, %prs_char_property.exit.thread597, %.thread608, %node_new_anychar.exit.thread, %bb.jy, %bb.jz, %node_new_anchor_with_options.exit.thread, %node_new_empty.exit461, %node_new_keep.exit, %node_new_general_newline.exit, %node_new_no_newline.exit, %node_new_true_anychar.exit, %make_text_segment.exit, %bb.it, %bb.is, %bb.je, %bb.jd, %bb.jg
  %.2333 = phi i32 [ 0, %onig_node_free.exit485 ], [ 0, %make_text_segment.exit ], [ 2, %bb.hf ], [ 0, %bb.jg ], [ 0, %bb.ih ], [ 0, %bb.im ], [ 0, %bb.io ], [ 0, %bb.jz ], [ 0, %prs_char_property.exit.thread597 ], [ 0, %.thread608 ], [ 0, %node_new_anychar.exit.thread ], [ 0, %bb.js ], [ 0, %bb.jw ], [ 0, %bb.jd ], [ 0, %node_new_anchor_with_options.exit.thread ], [ 0, %node_new_empty.exit461 ], [ 0, %node_new_keep.exit ], [ 0, %node_new_general_newline.exit ], [ 0, %node_new_no_newline.exit ], [ 0, %node_new_true_anychar.exit ], [ 1, %bb.hd ], [ 0, %.thread582 ], [ 0, %bb.is ], [ 0, %bb.jy ], [ 0, %bb.it ], [ 0, %bb.je ], [ 0, %bb.ly ], [ 0, %bb.lv ], [ 0, %bb.hc ]
  %.0324 = phi ptr [ %.1325, %onig_node_free.exit485 ], [ %0, %make_text_segment.exit ], [ %0, %bb.hf ], [ %0, %bb.jg ], [ %0, %bb.ih ], [ %0, %bb.im ], [ %0, %bb.io ], [ %0, %bb.jz ], [ %0, %prs_char_property.exit.thread597 ], [ %0, %.thread608 ], [ %0, %node_new_anychar.exit.thread ], [ %0, %bb.js ], [ %0, %bb.jw ], [ %0, %bb.jd ], [ %0, %node_new_anchor_with_options.exit.thread ], [ %0, %node_new_empty.exit461 ], [ %0, %node_new_keep.exit ], [ %0, %node_new_general_newline.exit ], [ %0, %node_new_no_newline.exit ], [ %0, %node_new_true_anychar.exit ], [ %0, %bb.hd ], [ %0, %.thread582 ], [ %0, %bb.is ], [ %0, %bb.jy ], [ %0, %bb.it ], [ %0, %bb.je ], [ %i.aku, %bb.ly ], [ %.1325, %bb.lv ], [ %0, %bb.hc ]
  %.0321 = phi i32 [ %i.ajr, %onig_node_free.exit485 ], [ %i.ag, %make_text_segment.exit ], [ %i.ag, %bb.hf ], [ %i.ag, %bb.jg ], [ %i.ag, %bb.ih ], [ %i.ag, %bb.im ], [ %i.ag, %bb.io ], [ %i.ag, %bb.jz ], [ %i.ag, %prs_char_property.exit.thread597 ], [ %i.ag, %.thread608 ], [ %i.ag, %node_new_anychar.exit.thread ], [ %i.ag, %bb.js ], [ %i.ag, %bb.jw ], [ %i.ag, %bb.jd ], [ %i.ag, %node_new_anchor_with_options.exit.thread ], [ %i.ag, %node_new_empty.exit461 ], [ %i.ag, %node_new_keep.exit ], [ %i.ag, %node_new_general_newline.exit ], [ %i.ag, %node_new_no_newline.exit ], [ %i.ag, %node_new_true_anychar.exit ], [ %i.ag, %bb.hd ], [ %i.ag, %.thread582 ], [ %i.ag, %bb.is ], [ %i.ag, %bb.jy ], [ %i.ag, %bb.it ], [ %i.ag, %bb.je ], [ %i.ajr, %bb.ly ], [ %i.ajr, %bb.lv ], [ %i.ag, %bb.hc ]
  %i.aji = call fastcc i32 @fetch_token(ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 3 uses
  %i.ajj = icmp slt i32 %i.aji, 0
  br i1 %i.ajj, label %.critedge416, label %.loopexit

.loopexit:                                        ; preds = %bb.hu, %bb.id, %.thread588
  %.1338 = phi i32 [ %i.aji, %.thread588 ], [ %i.xt, %bb.id ], [ %i.wl, %bb.hu ] ; 4 uses
  %.3334 = phi i32 [ %.2333, %.thread588 ], [ 0, %bb.id ], [ 0, %bb.hu ] ; 2 uses
  %.1325 = phi ptr [ %.0324, %.thread588 ], [ %0, %bb.id ], [ %0, %bb.hu ] ; 12 uses
  %.1322 = phi i32 [ %.0321, %.thread588 ], [ %i.ag, %bb.id ], [ %i.ag, %bb.hu ]
  %.not635 = icmp eq i32 %.1338, 11
  %i.ajk = and i32 %.1338, -2
  %or.cond14 = icmp eq i32 %i.ajk, 10
  br i1 %or.cond14, label %bb.lj, label %.critedge416

bb.lj:                                            ; preds = %.loopexit
  %i.ajl = load ptr, ptr %.1325, align 8, !tbaa !110
  %i.ajm = call fastcc i32 @is_invalid_quantifier_target(ptr noundef %i.ajl)
  %.not409 = icmp eq i32 %i.ajm, 0
  br i1 %.not409, label %bb.ll, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.ajn = load ptr, ptr %i.w, align 8, !tbaa !126
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 8
  %i.ajp = load i32, ptr %i.ajo, align 4, !tbaa !66
  %i.ajq = and i32 %i.ajp, 3
  %or.cond417.not = icmp eq i32 %i.ajq, 3
  %spec.select418 = select i1 %or.cond417.not, i32 -114, i32 %.1338
  br label %.critedge416

bb.ll:                                            ; preds = %bb.lj
  %i.ajr = add i32 %.1322, 1                      ; 4 uses
  %i.ajs = load i32, ptr @ParseDepthLimit, align 4, !tbaa !26
  %i.ajt = icmp ugt i32 %i.ajr, %i.ajs
  br i1 %i.ajt, label %.critedge416, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.aju = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ajv = load <2 x i32>, ptr %i.aju, align 8, !tbaa !28
  %calloc.i.i478 = call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 13 uses
  %i.ajw = icmp eq ptr %calloc.i.i478, null
  br i1 %i.ajw, label %.critedge416, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  store i32 4, ptr %calloc.i.i478, align 8, !tbaa !28
  %i.ajx = getelementptr inbounds nuw i8, ptr %calloc.i.i478, i64 24
  store <2 x i32> %i.ajv, ptr %i.ajx, align 8, !tbaa !28
  %i.ajy = getelementptr inbounds nuw i8, ptr %calloc.i.i478, i64 32
  br i1 %.not635, label %bb.lo, label %bb.lp

bb.lo:                                            ; preds = %bb.ln
  %i.ajz = getelementptr inbounds nuw i8, ptr %calloc.i.i478, i64 4
  store i32 16384, ptr %i.ajz, align 4, !tbaa !28
  br label %bb.lp

bb.lp:                                            ; preds = %bb.ln, %bb.lo
  %i.aka = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.akb = load i32, ptr %i.aka, align 8, !tbaa !28
  store i32 %i.akb, ptr %i.ajy, align 8, !tbaa !28
  %i.akc = icmp eq i32 %.3334, 2
  %i.akd = load ptr, ptr %.1325, align 8, !tbaa !110 ; 5 uses
  br i1 %i.akc, label %.split, label %.split352

.split:                                           ; preds = %bb.lp
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 16 ; 2 uses
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !28 ; 2 uses
  store ptr null, ptr %i.ake, align 8, !tbaa !28
  call fastcc void @node_free_body(ptr noundef nonnull %i.akd), !inline_history !101
  call void @free(ptr noundef nonnull %i.akd) #26, !inline_history !101
  store ptr null, ptr %.1325, align 8, !tbaa !110
  %i.akg = call fastcc i32 @assign_quantifier_body(ptr noundef %calloc.i.i478, ptr noundef %i.akf, i32 noundef 2, ptr noundef %5)
  br label %bb.lq

.split352:                                        ; preds = %bb.lp
  %i.akh = call fastcc i32 @assign_quantifier_body(ptr noundef %calloc.i.i478, ptr noundef %i.akd, i32 noundef %.3334, ptr noundef %5)
  br label %bb.lq

bb.lq:                                            ; preds = %.split352, %.split
  %phi.call = phi i32 [ %i.akg, %.split ], [ %i.akh, %.split352 ] ; 3 uses
  %.0 = phi ptr [ %i.akf, %.split ], [ %i.akd, %.split352 ]
  %i.aki = icmp slt i32 %phi.call, 0
  br i1 %i.aki, label %onig_node_free.exit482, label %bb.lr

onig_node_free.exit482:                           ; preds = %bb.lq
  call fastcc void @node_free_body(ptr noundef nonnull %calloc.i.i478), !inline_history !101
  call void @free(ptr noundef nonnull %calloc.i.i478) #26, !inline_history !101
  store ptr null, ptr %.1325, align 8, !tbaa !110
  br label %.critedge416

bb.lr:                                            ; preds = %bb.lq
  %i.akj = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !28
  %.not410 = icmp eq i32 %i.akk, 0
  br i1 %.not410, label %bb.lu, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %calloc.i.i483 = call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 6 uses
  %i.akl = icmp eq ptr %calloc.i.i483, null
  br i1 %i.akl, label %.thread616, label %bb.lt

.thread616:                                       ; preds = %bb.ls
  call fastcc void @node_free_body(ptr noundef nonnull %calloc.i.i478), !inline_history !101
  call void @free(ptr noundef nonnull %calloc.i.i478) #26, !inline_history !101
  br label %.critedge416

bb.lt:                                            ; preds = %bb.ls
  store i32 5, ptr %calloc.i.i483, align 8, !tbaa !28
  %i.akm = getelementptr inbounds nuw i8, ptr %calloc.i.i483, i64 24
  store i32 2, ptr %i.akm, align 8, !tbaa !28
  %i.akn = getelementptr inbounds nuw i8, ptr %calloc.i.i483, i64 64
  store i32 0, ptr %i.akn, align 8, !tbaa !28
  %i.ako = getelementptr inbounds nuw i8, ptr %calloc.i.i483, i64 16
  store ptr %calloc.i.i478, ptr %i.ako, align 8, !tbaa !28
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.lr
  %.1330 = phi ptr [ %calloc.i.i483, %bb.lt ], [ %calloc.i.i478, %bb.lr ] ; 8 uses
  switch i32 %phi.call, label %default.unreachable [
    i32 0, label %bb.lv
    i32 1, label %onig_node_free.exit485
    i32 2, label %bb.lw
  ]

bb.lv:                                            ; preds = %bb.lu
  store ptr %.1330, ptr %.1325, align 8, !tbaa !110
  br label %.thread588

onig_node_free.exit485:                           ; preds = %bb.lu
  call fastcc void @node_free_body(ptr noundef nonnull %.1330), !inline_history !101
  call void @free(ptr noundef nonnull %.1330) #26, !inline_history !101
  store ptr %.0, ptr %.1325, align 8, !tbaa !110
  br label %.thread588

bb.lw:                                            ; preds = %bb.lu
  %i.akp = load ptr, ptr %.1325, align 8, !tbaa !110
  %calloc.i.i486 = call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 5 uses
  %i.akq = icmp eq ptr %calloc.i.i486, null
  br i1 %i.akq, label %onig_node_free.exit487, label %bb.lx

onig_node_free.exit487:                           ; preds = %bb.lw
  store ptr null, ptr %.1325, align 8, !tbaa !110
  call fastcc void @node_free_body(ptr noundef nonnull %.1330), !inline_history !101
  call void @free(ptr noundef nonnull %.1330) #26, !inline_history !101
  br label %.critedge416

bb.lx:                                            ; preds = %bb.lw
  store i32 7, ptr %calloc.i.i486, align 8, !tbaa !28
  %i.akr = getelementptr inbounds nuw i8, ptr %calloc.i.i486, i64 16
  store ptr %i.akp, ptr %i.akr, align 8, !tbaa !28
  %i.aks = getelementptr inbounds nuw i8, ptr %calloc.i.i486, i64 24 ; 2 uses
  store ptr null, ptr %i.aks, align 8, !tbaa !28
  store ptr %calloc.i.i486, ptr %.1325, align 8, !tbaa !110
  %calloc.i.i488 = call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 5 uses
  %i.akt = icmp eq ptr %calloc.i.i488, null
  br i1 %i.akt, label %onig_node_free.exit1039, label %bb.ly

onig_node_free.exit1039:                          ; preds = %bb.lx
  store ptr null, ptr %i.aks, align 8, !tbaa !28
  call fastcc void @node_free_body(ptr noundef nonnull %.1330), !inline_history !101
  call void @free(ptr noundef nonnull %.1330) #26, !inline_history !101
  br label %.critedge416

bb.ly:                                            ; preds = %bb.lx
  store i32 7, ptr %calloc.i.i488, align 8, !tbaa !28
  %i.aku = getelementptr inbounds nuw i8, ptr %calloc.i.i488, i64 16 ; 2 uses
  store ptr %.1330, ptr %i.aku, align 8, !tbaa !28
  %i.akv = getelementptr inbounds nuw i8, ptr %calloc.i.i488, i64 24
  store ptr null, ptr %i.akv, align 8, !tbaa !28
  %i.akw = load ptr, ptr %.1325, align 8, !tbaa !110
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 24
  store ptr %calloc.i.i488, ptr %i.akx, align 8, !tbaa !28
  br label %.thread588

default.unreachable:                              ; preds = %bb.lu
  unreachable

.critedge416:                                     ; preds = %bb.b, %bb.hh, %prs_bag.exit, %bb.iw, %bb.iw, %bb.iw, %bb.iw, %bb.iv, %bb.ic, %bb.ib, %bb.ia, %bb.hv, %bb.ht, %onig_node_free.exit1039, %onig_node_free.exit487, %bb.lm, %onig_node_free.exit482, %bb.ll, %bb.lk, %.thread616, %bb.kz, %bb.ky, %bb.kn, %bb.jr, %bb.jf, %bb.iy, %node_new_cclass.exit.thread.i, %bb.jc, %node_new_str_with_options.exit440, %make_text_segment.exit.thread, %node_new_general_newline.exit.thread, %node_new_empty.exit461.thread, %node_new_anchor_with_options.exit, %node_new_call.exit.thread, %node_new_anychar.exit454, %node_new_anychar.exit, %.thread600, %prs_char_property.exit, %bb.ir, %node_new_cclass.exit.thread, %.thread579, %node_new_str_crude_char.exit.thread, %.thread575, %.thread572, %prs_bag.exit.thread, %node_new_empty.exit.thread, %.loopexit, %.thread588, %bb.ki, %bb.jw, %bb.in, %bb.io, %bb.hz, %bb.hs, %bb.ho, %bb.ih, %bb.hn, %bb.c
  %.19 = phi i32 [ -5, %bb.ky ], [ %.lcssa662, %bb.c ], [ -5, %make_text_segment.exit.thread ], [ -5, %node_new_empty.exit.thread ], [ -117, %bb.iw ], [ -5, %bb.kz ], [ %i.aji, %.thread588 ], [ -5, %.thread572 ], [ %i.abt, %bb.iy ], [ %i.vo, %bb.hn ], [ %.1340.ph, %.thread575 ], [ -5, %onig_node_free.exit487 ], [ -16, %bb.ll ], [ -5, %node_new_str_crude_char.exit.thread ], [ %spec.select418, %bb.lk ], [ %i.yh, %bb.ic ], [ -116, %bb.ho ], [ -5, %bb.hs ], [ -5, %onig_node_free.exit1039 ], [ %i.wq, %bb.hv ], [ -5, %bb.ih ], [ -5, %node_new_call.exit.thread ], [ -5, %bb.io ], [ -5, %node_new_str_with_options.exit440 ], [ %i.yt, %.thread579 ], [ -11, %bb.in ], [ %.7346, %.thread600 ], [ -5, %prs_char_property.exit ], [ -5, %node_new_anychar.exit ], [ -5, %node_new_anychar.exit454 ], [ %i.aco, %bb.jf ], [ %i.aci, %bb.jc ], [ %.1338, %.loopexit ], [ -5, %node_new_anchor_with_options.exit ], [ -113, %bb.ki ], [ -5, %node_new_empty.exit461.thread ], [ -5, %bb.jr ], [ %.0.i467.ph, %node_new_general_newline.exit.thread ], [ -5, %bb.kn ], [ -400, %bb.hz ], [ -5, %bb.jw ], [ %.13.i.ph, %prs_bag.exit.thread ], [ -5, %node_new_cclass.exit.thread ], [ %i.abb, %bb.ir ], [ -5, %node_new_cclass.exit.thread.i ], [ -5, %.thread616 ], [ -5, %bb.lm ], [ %phi.call, %onig_node_free.exit482 ], [ %i.wl, %bb.ht ], [ %i.yd, %bb.ia ], [ -206, %bb.ib ], [ -117, %bb.iv ], [ -117, %bb.iw ], [ -117, %bb.iw ], [ -117, %bb.iw ], [ %i.ux, %bb.hh ], [ -11, %bb.b ], [ %.13.i, %prs_bag.exit ]
  ret i32 %.19
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @node_new_str_with_options(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #14 {
bb.a:
  %calloc.i.i = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 8 uses
  %i.a = icmp eq ptr %calloc.i.i, null
  br i1 %i.a, label %node_new_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 36 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 24
  store ptr %i.b, ptr %i.d, align 8, !tbaa !28
  %i.e = tail call range(i32 -5, 1) i32 @onig_node_str_cat(ptr noundef nonnull %calloc.i.i, ptr noundef %0, ptr noundef %1)
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %node_new_str.exit, label %onig_node_free.exit.i

onig_node_free.exit.i:                            ; preds = %bb.b
  tail call fastcc void @node_free_body(ptr noundef nonnull %calloc.i.i), !inline_history !101
  tail call void @free(ptr noundef nonnull %calloc.i.i) #26, !inline_history !101
  br label %node_new_str.exit

node_new_str.exit:                                ; preds = %bb.a, %bb.b, %onig_node_free.exit.i
  %.0.i = phi ptr [ null, %bb.a ], [ null, %onig_node_free.exit.i ], [ %calloc.i.i, %bb.b ] ; 2 uses
  %i.f = and i32 %2, 1
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %node_new_str.exit
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !28
  %i.i = or i32 %i.h, 2097152
  store i32 %i.i, ptr %i.g, align 4, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %node_new_str.exit
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @node_new_ctype(i32 noundef range(i32 -1, 13) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #16 {
bb.a:
  %calloc.i = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 6 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %calloc.i, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store i32 %0, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %calloc.i, i64 20
  store i32 %1, ptr %i.c, align 4, !tbaa !28
  %i.d = icmp sgt i32 %0, -1
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %2, 524288
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ne i32 %0, 12
  %i.g = and i32 %2, 65536
  %.not19 = icmp eq i32 %i.g, 0
  %or.cond = or i1 %i.f, %.not19
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = icmp ne i32 %0, 4
  %i.i = and i32 %2, 131072
  %.not20 = icmp eq i32 %i.i, 0
  %or.cond21 = or i1 %i.h, %.not20
  br i1 %or.cond21, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = icmp eq i32 %0, 9
  %i.k = and i32 %2, 262144
  %i.l = icmp ne i32 %i.k, 0
  %i.m = and i1 %i.j, %i.l
  %i.n = zext i1 %i.m to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.f, %bb.b
  %i.o = phi i32 [ 0, %bb.b ], [ 1, %bb.e ], [ 1, %bb.d ], [ 1, %bb.c ], [ %i.n, %bb.f ]
  %i.p = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24
  store i32 %i.o, ptr %i.p, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret ptr %calloc.i
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @add_ctype_to_cc(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125  ; 9 uses
  %i.e = icmp sgt i32 %1, -1
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = icmp samesign ult i32 %1, 14
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %3, align 8, !tbaa !123
  %i.h = and i32 %i.g, 524288
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  switch i32 %1, label %bb.g [
    i32 12, label %.sink.split
    i32 4, label %bb.e
    i32 9, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.f, %bb.e
  %.sink334 = phi i32 [ 655360, %bb.e ], [ 786432, %bb.f ], [ 589824, %bb.d ]
  %i.i = load i32, ptr %3, align 8, !tbaa !123
  %i.j = and i32 %i.i, %.sink334
  %.not134 = icmp ne i32 %i.j, 0
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.d, %bb.c, %bb.a
  %i.k = phi i1 [ false, %bb.a ], [ false, %bb.d ], [ true, %bb.c ], [ %.not134, %.sink.split ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !264
  %i.n = call i32 %i.m(i32 noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #26 ; 2 uses
  switch i32 %i.n, label %add_ctype_to_cc_by_range.exit [
    i32 0, label %bb.h
    i32 -2, label %bb.ag
  ]

bb.h:                                             ; preds = %bb.g
  %i.o = load i32, ptr %i.b, align 4, !tbaa !26   ; 22 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !61   ; 9 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !26   ; 11 uses
  %i.r = icmp eq i32 %2, 0                        ; 2 uses
  %i.s = icmp sgt i32 %i.q, 0                     ; 6 uses
  br i1 %i.k, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.r, label %.preheader.i, label %.preheader9.i

.preheader9.i:                                    ; preds = %bb.i
  br i1 %i.s, label %.preheader7.lr.ph.i, label %.preheader5.i

.preheader7.lr.ph.i:                              ; preds = %.preheader9.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  %wide.trip.count.i = zext nneg i32 %i.q to i64
  br label %.preheader7.i

.preheader.i:                                     ; preds = %bb.i
  br i1 %i.s, label %.lr.ph35.i, label %.loopexit.i

.lr.ph35.i:                                       ; preds = %.preheader.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  %wide.trip.count67.i = zext nneg i32 %i.q to i64
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge32.i, %.lr.ph35.i
  %indvars.iv64.i = phi i64 [ 0, %.lr.ph35.i ], [ %indvars.iv.next65.i, %._crit_edge32.i ] ; 4 uses
  %.idx84.i = shl nuw nsw i64 %indvars.iv64.i, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx84.i ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !26   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !26
  %.not9628.i = icmp ugt i32 %i.x, %i.z
  br i1 %.not9628.i, label %._crit_edge32.i, label %.lr.ph31.preheader.i

.lr.ph31.preheader.i:                             ; preds = %bb.j
  %umax62.i = call i32 @llvm.umax.i32(i32 %i.x, i32 %i.o) ; 3 uses
  %exitcond63.not.i204.not = icmp ult i32 %i.x, %i.o
  br i1 %exitcond63.not.i204.not, label %.lr.ph206, label %.lr.ph31.preheader.i._crit_edge.thread

.lr.ph31.preheader.i._crit_edge.thread:           ; preds = %.lr.ph31.preheader.i
  %i.aa = trunc nuw nsw i64 %indvars.iv64.i to i32
  br label %.loopexit.i

.lr.ph31.i:                                       ; preds = %.lr.ph206
  %i.ab = add nuw i32 %.08029.i205, 1             ; 2 uses
  %exitcond63.not.i = icmp eq i32 %i.ab, %umax62.i
  br i1 %exitcond63.not.i, label %.lr.ph31.preheader.i._crit_edge, label %.lr.ph206, !llvm.loop !243

.lr.ph31.preheader.i._crit_edge:                  ; preds = %.lr.ph31.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.pre = load i32, ptr %i.ac, align 4, !tbaa !26
  %i.ad = icmp ugt i32 %umax62.i, %.pre
  %i.ae = trunc nuw nsw i64 %indvars.iv64.i to i32 ; 2 uses
  br i1 %i.ad, label %bb.k, label %.loopexit.i

bb.k:                                             ; preds = %.lr.ph31.preheader.i._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = call fastcc i32 @add_code_range_to_buf(ptr noundef nonnull %i.af, i32 noundef %umax62.i, i32 noundef %i.ap) ; 2 uses
  %.not98.i = icmp eq i32 %i.ag, 0
  br i1 %.not98.i, label %bb.l, label %add_ctype_to_cc_by_range.exit

bb.l:                                             ; preds = %bb.k
  %i.ah = add nuw nsw i32 %i.ae, 1
  br label %.loopexit.i

.lr.ph206:                                        ; preds = %.lr.ph31.preheader.i, %.lr.ph31.i
  %.08029.i205 = phi i32 [ %i.ab, %.lr.ph31.i ], [ %i.x, %.lr.ph31.preheader.i ] ; 4 uses
  %i.ai = and i32 %.08029.i205, 31
  %i.aj = shl nuw i32 1, %i.ai
  %i.ak = lshr i32 %.08029.i205, 5
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !26
  %i.ao = or i32 %i.an, %i.aj
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !26
  %i.ap = load i32, ptr %i.y, align 4, !tbaa !26  ; 2 uses
  %.not96.not.i = icmp ult i32 %.08029.i205, %i.ap
  br i1 %.not96.not.i, label %.lr.ph31.i, label %._crit_edge32.i, !llvm.loop !243

._crit_edge32.i:                                  ; preds = %.lr.ph206, %bb.j
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, %wide.trip.count67.i
  br i1 %exitcond68.not.i, label %add_ctype_to_cc_by_range.exit, label %bb.j, !llvm.loop !244

.loopexit.i:                                      ; preds = %.lr.ph31.preheader.i._crit_edge.thread, %bb.l, %.lr.ph31.preheader.i._crit_edge, %.preheader.i
  %.183.i = phi i32 [ %i.ah, %bb.l ], [ %i.ae, %.lr.ph31.preheader.i._crit_edge ], [ 0, %.preheader.i ], [ %i.aa, %.lr.ph31.preheader.i._crit_edge.thread ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ar = icmp slt i32 %.183.i, %i.q
  br i1 %i.ar, label %.lr.ph39.preheader.i, label %add_ctype_to_cc_by_range.exit

.lr.ph39.preheader.i:                             ; preds = %.loopexit.i
  %i.as = sext i32 %.183.i to i64
  br label %.lr.ph39.i
end_hunk_1
begin_hunk_2_@i_apply_case_fold:bb.a
  br i1 %i.as, label %bb.n, label %bb.y

bb.n:                                             ; preds = %bb.m
  %calloc.i.i = call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 8 uses
  %i.at = icmp eq ptr %calloc.i.i, null
  br i1 %i.at, label %node_new_cclass.exit.thread, label %bb.p

node_new_cclass.exit.thread:                      ; preds = %bb.aa, %bb.n, %bb.ae, %onig_node_free.exit.i
  %i.au = icmp sgt i32 %.0100134, 0
  br i1 %i.au, label %.lr.ph139.preheader, label %.critedge

.lr.ph139.preheader:                              ; preds = %node_new_cclass.exit.thread
  %wide.trip.count152 = zext nneg i32 %.0100134 to i64
  br label %.lr.ph139

.lr.ph139:                                        ; preds = %.lr.ph139.preheader, %onig_node_free.exit
  %indvars.iv149 = phi i64 [ 0, %.lr.ph139.preheader ], [ %indvars.iv.next150, %onig_node_free.exit ] ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv149
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !110 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %onig_node_free.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph139
  call fastcc void @node_free_body(ptr noundef nonnull %i.aw), !inline_history !101
  call void @free(ptr noundef nonnull %i.aw) #26, !inline_history !101
  br label %onig_node_free.exit

onig_node_free.exit:                              ; preds = %.lr.ph139, %bb.o
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count152
  br i1 %exitcond153.not, label %.critedge, label %.lr.ph139, !llvm.loop !276

bb.p:                                             ; preds = %bb.n
  store i32 1, ptr %calloc.i.i, align 8, !tbaa !28
  %i.ay = zext nneg i32 %i.ar to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr @OnigUnicodeFolds1, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !26 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 20
  %i.bf = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 56
  %wide.trip.count = zext nneg i32 %i.bb to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !26 ; 5 uses
  %i.bi = load i32, ptr %i.al, align 4, !tbaa !119
  %i.bj = icmp sgt i32 %i.bi, 1
  br i1 %i.bj, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = load ptr, ptr %i.am, align 8, !tbaa !120
  %i.bl = call i32 %i.bk(i32 noundef %i.bh) #26
  %.not117 = icmp eq i32 %i.bl, 1
  br i1 %.not117, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bm = call fastcc i32 @add_code_range_to_buf(ptr noundef nonnull %i.bf, i32 noundef %i.bh, i32 noundef %i.bh) ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bn = and i32 %i.bh, 31
  %i.bo = shl nuw i32 1, %i.bn
  %i.bp = lshr i32 %i.bh, 5
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !26
  %i.bt = or i32 %i.bs, %i.bo
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !26
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !277

._crit_edge:                                      ; preds = %bb.u, %bb.p
  %i.bu = load i32, ptr %i.al, align 4, !tbaa !119
  %i.bv = icmp sgt i32 %i.bu, 1
  br i1 %i.bv, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.bw = load ptr, ptr %i.am, align 8, !tbaa !120
  %i.bx = load i32, ptr %i.aq, align 4, !tbaa !26
  %i.by = call i32 %i.bw(i32 noundef %i.bx) #26
  %.not116 = icmp eq i32 %i.by, 1
  br i1 %.not116, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 56
  %i.ca = load i32, ptr %i.aq, align 4, !tbaa !26 ; 2 uses
  %i.cb = call fastcc i32 @add_code_range_to_buf(ptr noundef nonnull %i.bz, i32 noundef %i.ca, i32 noundef %i.ca) ; 0 uses
  br label %.sink.split

bb.x:                                             ; preds = %bb.v
  %i.cc = load i32, ptr %i.aq, align 4, !tbaa !26 ; 2 uses
  %i.cd = and i32 %i.cc, 31
  %i.ce = shl nuw i32 1, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 20
  %i.cg = lshr i32 %i.cc, 5
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ch ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !26
  %i.ck = or i32 %i.ce, %i.cj
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !26
  br label %.sink.split

bb.y:                                             ; preds = %bb.m, %bb.l
  %i.cl = load ptr, ptr %i.an, align 8, !tbaa !152
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv144
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !26
  %i.co = call i32 %i.cl(i32 noundef %i.cn, ptr noundef nonnull %i.a) #26 ; 2 uses
  %i.cp = icmp eq i32 %.0100134, 0
  br i1 %i.cp, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = sext i32 %.0100134 to i64
  %i.cr = getelementptr [8 x i8], ptr %i.b, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 -8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !110 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !28
  %.not115 = icmp eq i32 %i.cu, 0
  br i1 %.not115, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %calloc.i.i125 = call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 11 uses
  %i.cv = icmp eq ptr %calloc.i.i125, null
  br i1 %i.cv, label %node_new_cclass.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = sext i32 %i.co to i64
  %i.cx = getelementptr inbounds i8, ptr %i.a, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %calloc.i.i125, i64 36 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %calloc.i.i125, i64 16
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !28
  %i.da = getelementptr inbounds nuw i8, ptr %calloc.i.i125, i64 24
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !28
  %i.db = call range(i32 -5, 1) i32 @onig_node_str_cat(ptr noundef nonnull %calloc.i.i125, ptr noundef nonnull %i.a, ptr noundef nonnull %i.cx)
  %.not.i = icmp eq i32 %i.db, 0
  br i1 %.not.i, label %node_new_str.exit, label %onig_node_free.exit.i

onig_node_free.exit.i:                            ; preds = %bb.ab
  call fastcc void @node_free_body(ptr noundef nonnull %calloc.i.i125), !inline_history !101
  call void @free(ptr noundef nonnull %calloc.i.i125) #26, !inline_history !101
  br label %node_new_cclass.exit.thread

node_new_str.exit:                                ; preds = %bb.ab
  br i1 %.not114, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %node_new_str.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %calloc.i.i125, i64 4 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !28
  %i.de = or i32 %i.dd, 2097152
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !28
  br label %.sink.split

bb.ad:                                            ; preds = %node_new_str.exit
  %i.df = getelementptr inbounds nuw i8, ptr %calloc.i.i125, i64 32 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !28
  %i.dh = or i32 %i.dg, 2
  store i32 %i.dh, ptr %i.df, align 8, !tbaa !28
  br label %.sink.split

bb.ae:                                            ; preds = %bb.z
  %i.di = sext i32 %i.co to i64
  %i.dj = getelementptr inbounds i8, ptr %i.a, i64 %i.di
  %i.dk = call i32 @onig_node_str_cat(ptr noundef nonnull %i.ct, ptr noundef nonnull %i.a, ptr noundef nonnull %i.dj)
  %i.dl = icmp slt i32 %i.dk, 0
  br i1 %i.dl, label %node_new_cclass.exit.thread, label %bb.af

.sink.split:                                      ; preds = %bb.ac, %bb.ad, %bb.w, %bb.x
  %calloc.i.i125.sink = phi ptr [ %calloc.i.i, %bb.w ], [ %calloc.i.i, %bb.x ], [ %calloc.i.i125, %bb.ad ], [ %calloc.i.i125, %bb.ac ]
  %i.dm = add nsw i32 %.0100134, 1
  %i.dn = sext i32 %.0100134 to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.dn
  store ptr %calloc.i.i125.sink, ptr %i.do, align 8, !tbaa !110
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %bb.ae
  %.2102 = phi i32 [ %.0100134, %bb.ae ], [ %i.dm, %.sink.split ] ; 3 uses
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count147
  br i1 %exitcond148.not, label %._crit_edge137, label %bb.l, !llvm.loop !278

._crit_edge137:                                   ; preds = %bb.af
  %i.dp = icmp eq i32 %.2102, 1
  br i1 %i.dp, label %bb.ag, label %._crit_edge137.thread

bb.ag:                                            ; preds = %._crit_edge137
  %i.dq = load ptr, ptr %i.b, align 16, !tbaa !110
  br label %bb.ah

._crit_edge137.thread:                            ; preds = %bb.k, %._crit_edge137
  %.0100.lcssa158 = phi i32 [ %.2102, %._crit_edge137 ], [ 0, %bb.k ]
  %i.dr = call fastcc noundef ptr @make_list_or_alt(i32 noundef 7, i32 noundef range(i32 2, 1) %.0100.lcssa158, ptr noundef nonnull readonly %i.b)
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge137.thread, %bb.ag
  %.096 = phi ptr [ %i.dq, %bb.ag ], [ %i.dr, %._crit_edge137.thread ] ; 4 uses
  %calloc.i.i126 = call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 5 uses
  %i.ds = icmp eq ptr %calloc.i.i126, null
  br i1 %i.ds, label %bb.ai, label %.critedge122

bb.ai:                                            ; preds = %bb.ah
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !159
  store ptr null, ptr %i.du, align 8, !tbaa !110
  %i.dv = icmp eq ptr %.096, null
  br i1 %i.dv, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call fastcc void @node_free_body(ptr noundef nonnull %.096), !inline_history !101
  call void @free(ptr noundef nonnull %.096) #26, !inline_history !101
  br label %.critedge

.critedge122:                                     ; preds = %bb.ah
  store i32 8, ptr %calloc.i.i126, align 8, !tbaa !28
  %i.dw = getelementptr inbounds nuw i8, ptr %calloc.i.i126, i64 16
  store ptr %.096, ptr %i.dw, align 8, !tbaa !28
  %i.dx = getelementptr inbounds nuw i8, ptr %calloc.i.i126, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !159
  store ptr %calloc.i.i126, ptr %i.dz, align 8, !tbaa !110
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.ak

.critedge:                                        ; preds = %onig_node_free.exit, %node_new_cclass.exit.thread, %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.al

bb.ak:                                            ; preds = %bb.i, %bb.j, %.critedge122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.al

bb.al:                                            ; preds = %bb.c, %bb.g, %bb.h, %bb.d, %bb.ak, %.critedge
  %.5 = phi i32 [ -5, %.critedge ], [ 0, %bb.ak ], [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %bb.c ]
  ret i32 %.5
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @node_new_backref(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) unnamed_addr #14 {
bb.a:
  %calloc.i = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 13 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 3, ptr %calloc.i, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store i32 %0, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %calloc.i, i64 48
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 32768, ptr %i.d, align 4, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi i32 [ 32768, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %i.f = load i32, ptr %5, align 8, !tbaa !123
  %i.g = and i32 %i.f, 1
  %.not56 = icmp eq i32 %i.g, 0
  br i1 %.not56, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  %i.i = or disjoint i32 %i.e, 2097152            ; 2 uses
  store i32 %i.i, ptr %i.h, align 4, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = phi i32 [ %i.i, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %.not57 = icmp eq i32 %3, 0
  br i1 %.not57, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  %i.l = or i32 %i.j, 8192                        ; 2 uses
  store i32 %i.l, ptr %i.k, align 4, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %calloc.i, i64 56
  store i32 %4, ptr %i.m, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = phi i32 [ %i.l, %bb.g ], [ %i.j, %bb.f ]
  %i.o = icmp sgt i32 %0, 0
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 84
  %i.q = load i32, ptr %i.p, align 4, !tbaa !135
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 96
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !26   ; 2 uses
  %.not58 = icmp sgt i32 %i.u, %i.q
  br i1 %.not58, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !136  ; 2 uses
  %.not59 = icmp eq ptr %i.v, null
  %i.w = select i1 %.not59, ptr %i.s, ptr %i.v
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds [16 x i8], ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !138
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  %i.ac = or i32 %i.n, 64
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !28
  br label %.loopexit62

bb.l:                                             ; preds = %bb.i, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit62, label %bb.i, !llvm.loop !279

.loopexit62:                                      ; preds = %bb.l, %bb.k
  %i.ad = icmp slt i32 %0, 7
  br i1 %i.ad, label %.lr.ph67, label %bb.m

.lr.ph67:                                         ; preds = %.loopexit62
  %i.ae = getelementptr inbounds nuw i8, ptr %calloc.i, i64 20
  %i.af = zext nneg i32 %0 to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ae, ptr nonnull align 4 %1, i64 %i.ag, i1 false), !tbaa !28
  br label %.loopexit

bb.m:                                             ; preds = %.loopexit62
  %i.ah = zext nneg i32 %0 to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2                ; 2 uses
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ai) #27 ; 3 uses
  %.not60 = icmp eq ptr %i.aj, null
  br i1 %.not60, label %.thread, label %.lr.ph65.preheader

.thread:                                          ; preds = %bb.m
  tail call fastcc void @node_free_body(ptr noundef nonnull %calloc.i), !inline_history !101
  tail call void @free(ptr noundef nonnull %calloc.i) #26, !inline_history !101
  br label %bb.n

.lr.ph65.preheader:                               ; preds = %bb.m
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aj, ptr nonnull align 4 %1, i64 %i.ai, i1 false), !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.lr.ph65.preheader, %.lr.ph67
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 232 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !280
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !280
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.a, %.loopexit
  %.150 = phi ptr [ null, %.thread ], [ %calloc.i, %.loopexit ], [ null, %bb.a ]
  ret ptr %.150
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @node_str_remove_char(ptr nofree noundef captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %.lr.ph27, label %._crit_edge28

.lr.ph27:                                         ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.p, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %.01725 = phi i32 [ %.1, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %.01824 = phi ptr [ %.119, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.g = load i8, ptr %.01824, align 1, !tbaa !28
  %i.h = icmp eq i8 %i.g, 92
  %.021 = getelementptr inbounds nuw i8, ptr %.01824, i64 1 ; 3 uses
  br i1 %i.h, label %.preheader, label %bb.b

.preheader:                                       ; preds = %.lr.ph27
  %i.i = icmp ult ptr %.021, %i.f
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.023 = phi ptr [ %.0, %.lr.ph ], [ %.021, %.preheader ] ; 2 uses
  %.01622 = phi ptr [ %i.k, %.lr.ph ], [ %.01824, %.preheader ] ; 2 uses
  %i.j = load i8, ptr %.023, align 1, !tbaa !28
  store i8 %i.j, ptr %.01622, align 1, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %.01622, i64 1
  %.0 = getelementptr inbounds nuw i8, ptr %.023, i64 1 ; 2 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.m = icmp ult ptr %.0, %i.l
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !281

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.lcssa = phi ptr [ %i.f, %.preheader ], [ %i.l, %.lr.ph ]
  %i.n = add nsw i32 %.01725, 1
  %i.o = getelementptr inbounds i8, ptr %.lcssa, i64 -1 ; 2 uses
  store ptr %i.o, ptr %i.c, align 8, !tbaa !28
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph27, %._crit_edge
  %i.p = phi ptr [ %i.o, %._crit_edge ], [ %i.f, %.lr.ph27 ] ; 2 uses
  %.119 = phi ptr [ %.01824, %._crit_edge ], [ %.021, %.lr.ph27 ] ; 2 uses
  %.1 = phi i32 [ %i.n, %._crit_edge ], [ %.01725, %.lr.ph27 ]
  %i.q = icmp ult ptr %.119, %i.p
  br i1 %i.q, label %.lr.ph27, label %._crit_edge28, !llvm.loop !282

._crit_edge28:                                    ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @is_invalid_quantifier_target(ptr nofree noundef readonly captures(none) %0) unnamed_addr #20 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !28
  switch i32 %i.a, label %.loopexit11 [
    i32 6, label %.loopexit
    i32 10, label %.loopexit
    i32 8, label %.preheader
    i32 7, label %.preheader12
  ]

.preheader12:                                     ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %0, %bb.a ]    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = tail call fastcc i32 @is_invalid_quantifier_target(ptr noundef %i.c)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader12
  %i.e = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %.not8 = icmp eq ptr %i.f, null
end_hunk_2
begin_hunk_3_@name_add:bb.a
  br i1 %i.m, label %onig_st_insert_strend.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.l, ptr %i.b, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %name_find.exit, %bb.d
  %.0 = phi ptr [ %i.l, %bb.d ], [ %i.c, %name_find.exit ]
  %i.n = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #27 ; 9 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %onig_st_insert_strend.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.r = call ptr @onigenc_strdup(ptr noundef %i.q, ptr noundef %1, ptr noundef %2) #26 ; 4 uses
  store ptr %i.r, ptr %i.n, align 8, !tbaa !51
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.n) #26
  br label %onig_st_insert_strend.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.t = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #27 ; 5 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %onig_st_insert_strend.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = ptrtoint ptr %i.n to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.f
  store ptr %i.r, ptr %i.t, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !31
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = call i32 @onig_st_insert(ptr noundef nonnull %.0, i64 noundef %i.y, i64 noundef %i.v) #26 ; 3 uses
  %.not.i75 = icmp eq i32 %i.z, 0
  br i1 %.not.i75, label %.thread99, label %onig_st_insert_strend.exit

onig_st_insert_strend.exit:                       ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.t) #26
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %onig_st_insert_strend.exit.thread, label %.thread99

.thread99:                                        ; preds = %bb.i, %onig_st_insert_strend.exit
  %i.ab = trunc i64 %i.f to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !52
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i32 0, ptr %i.ad, align 8, !tbaa !287
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr null, ptr %i.ae, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 1, ptr %i.af, align 4, !tbaa !53
  br label %bb.n

bb.j:                                             ; preds = %name_find.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.i, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !53 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.i, i64 12 ; 3 uses
  %i.ah = icmp sgt i32 %.pre, 0
  br i1 %i.ah, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !126
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !66
  %i.am = and i32 %i.al, 256
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %1, ptr %i.an, align 8, !tbaa !139
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %2, ptr %i.ao, align 8, !tbaa !140
  br label %onig_st_insert_strend.exit.thread

bb.m:                                             ; preds = %bb.j
  %i.ap = add nsw i32 %.pre, 1                    ; 2 uses
  store i32 %i.ap, ptr %i.ag, align 4, !tbaa !53
  %i.aq = icmp eq i32 %.pre, 0
  br i1 %i.aq, label %bb.n, label %.thread80

bb.n:                                             ; preds = %.thread99, %bb.m
  %.06398101 = phi ptr [ %i.n, %.thread99 ], [ %.pre.i, %bb.m ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.06398101, i64 20
  store i32 %3, ptr %i.ar, align 4, !tbaa !55
  br label %onig_st_insert_strend.exit.thread

bb.o:                                             ; preds = %bb.k
  %i.as = add nuw nsw i32 %.pre, 1                ; 3 uses
  store i32 %i.as, ptr %i.ag, align 4, !tbaa !53
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %bb.p, label %.thread80

bb.p:                                             ; preds = %bb.o
  %i.au = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #27 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  store ptr %i.au, ptr %i.av, align 8, !tbaa !54
  %i.aw = icmp eq ptr %i.au, null
  br i1 %i.aw, label %onig_st_insert_strend.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  store i32 8, ptr %i.ax, align 8, !tbaa !287
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre.i, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !55
  store i32 %i.az, ptr %i.au, align 4, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 %3, ptr %i.ba, align 4, !tbaa !26
  br label %onig_st_insert_strend.exit.thread

.thread80:                                        ; preds = %bb.m, %bb.o
  %i.bb = phi i32 [ %i.ap, %bb.m ], [ %i.as, %bb.o ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !287 ; 2 uses
  %.not74 = icmp slt i32 %.pre, %i.bd
  br i1 %.not74, label %.thread80._crit_edge, label %bb.r

.thread80._crit_edge:                             ; preds = %.thread80
  %.phi.trans.insert81 = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %.pre82 = load ptr, ptr %.phi.trans.insert81, align 8, !tbaa !54
  br label %bb.t

bb.r:                                             ; preds = %.thread80
  %i.be = shl nsw i32 %i.bd, 1                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !54
  %i.bh = sext i32 %i.be to i64
  %i.bi = shl nsw i64 %i.bh, 2
  %i.bj = call ptr @realloc(ptr noundef %i.bg, i64 noundef %i.bi) #28 ; 3 uses
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !54
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %onig_st_insert_strend.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !287
  %.pre83 = load i32, ptr %i.ag, align 4, !tbaa !53
  br label %bb.t

bb.t:                                             ; preds = %.thread80._crit_edge, %bb.s
  %i.bl = phi i32 [ %i.bb, %.thread80._crit_edge ], [ %.pre83, %bb.s ]
  %i.bm = phi ptr [ %.pre82, %.thread80._crit_edge ], [ %i.bj, %bb.s ]
  %i.bn = sext i32 %i.bl to i64
  %i.bo = getelementptr [4 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 -4
  store i32 %3, ptr %i.bp, align 4, !tbaa !26
  br label %onig_st_insert_strend.exit.thread

onig_st_insert_strend.exit.thread:                ; preds = %bb.h, %bb.n, %bb.t, %bb.q, %bb.r, %bb.p, %onig_st_insert_strend.exit, %bb.e, %bb.c, %bb.a, %bb.l, %bb.g
  %.064 = phi i32 [ -219, %bb.l ], [ -214, %bb.a ], [ -5, %bb.c ], [ -5, %bb.g ], [ -5, %bb.e ], [ -5, %bb.r ], [ %i.z, %onig_st_insert_strend.exit ], [ -5, %bb.p ], [ 0, %bb.q ], [ 0, %bb.t ], [ 0, %bb.n ], [ -5, %bb.h ]
  ret i32 %.064
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -5, 1) i32 @make_range_clear(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef captures(none) %1) unnamed_addr #14 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %0, align 8, !tbaa !110
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !160  ; 3 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !160
  %calloc.i.i = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 9 uses
  %i.f = icmp eq ptr %calloc.i.i, null
  br i1 %i.f, label %onig_node_free.exit38, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 10, ptr %calloc.i.i, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 28
  store i32 %i.d, ptr %i.g, align 4, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 16
  store i32 1, ptr %i.h, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 20
  store i32 2, ptr %i.i, align 4, !tbaa !28
  %calloc.i.i30 = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 8 uses
  store ptr %calloc.i.i30, ptr %i.a, align 16, !tbaa !110
  %i.j = icmp eq ptr %calloc.i.i30, null
  br i1 %i.j, label %onig_node_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 10, ptr %calloc.i.i30, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i.i30, i64 28
  store i32 %i.d, ptr %i.k, align 4, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %calloc.i.i30, i64 16
  store i32 2, ptr %i.l, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %calloc.i.i30, i64 20
  store i32 2, ptr %i.m, align 4, !tbaa !28
  %calloc.i.i32 = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 4 uses
  store ptr %calloc.i.i32, ptr %i.b, align 8, !tbaa !110
  %i.n = icmp eq ptr %calloc.i.i32, null
  br i1 %i.n, label %onig_node_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 10, ptr %calloc.i.i32, align 8, !tbaa !28
  %i.o = call fastcc noundef ptr @make_list_or_alt(i32 noundef 7, i32 noundef 2, ptr noundef nonnull readonly %i.a) ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %onig_node_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.o, ptr %i.b, align 8, !tbaa !110
  %calloc.i.i34 = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 7 uses
  store ptr %calloc.i.i34, ptr %i.a, align 16, !tbaa !110
  %i.q = icmp eq ptr %calloc.i.i34, null
  br i1 %i.q, label %onig_node_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 10, ptr %calloc.i.i34, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %calloc.i.i34, i64 16
  store i32 2, ptr %i.r, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %calloc.i.i34, i64 20
  store i32 5, ptr %i.s, align 4, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %calloc.i.i34, i64 4
  store i32 16777216, ptr %i.t, align 4, !tbaa !28
  %i.u = call fastcc noundef ptr @make_list_or_alt(i32 noundef 8, i32 noundef 2, ptr noundef nonnull readonly %i.a) ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %onig_node_free.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !28
  %i.y = or i32 %i.x, 524288
  store i32 %i.y, ptr %i.w, align 4, !tbaa !28
  store ptr %calloc.i.i, ptr %i.a, align 16, !tbaa !110
  store ptr %i.u, ptr %i.b, align 8, !tbaa !110
  %i.z = call fastcc noundef ptr @make_list_or_alt(i32 noundef 7, i32 noundef 2, ptr noundef nonnull readonly %i.a) ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %onig_node_free.exit.thread59, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.z, ptr %0, align 8, !tbaa !110
  br label %onig_node_free.exit38

onig_node_free.exit:                              ; preds = %bb.e, %bb.b, %bb.c, %bb.f, %bb.d
  %.ph = phi ptr [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ null, %bb.c ], [ null, %bb.b ], [ %calloc.i.i32, %bb.d ] ; 2 uses
  %.ph50 = phi ptr [ null, %bb.e ], [ %calloc.i.i34, %bb.f ], [ %calloc.i.i30, %bb.c ], [ null, %bb.b ], [ %calloc.i.i30, %bb.d ] ; 2 uses
  tail call fastcc void @node_free_body(ptr noundef nonnull %calloc.i.i), !inline_history !101
  tail call void @free(ptr noundef nonnull %calloc.i.i) #26, !inline_history !101
  %i.ab = icmp eq ptr %.ph50, null
  br i1 %i.ab, label %onig_node_free.exit37, label %onig_node_free.exit.thread59

onig_node_free.exit.thread59:                     ; preds = %bb.g, %onig_node_free.exit
  %i.ac = phi ptr [ %.ph, %onig_node_free.exit ], [ %i.u, %bb.g ]
  %i.ad = phi ptr [ %.ph50, %onig_node_free.exit ], [ %calloc.i.i, %bb.g ] ; 2 uses
  tail call fastcc void @node_free_body(ptr noundef nonnull %i.ad), !inline_history !101
  tail call void @free(ptr noundef nonnull %i.ad) #26, !inline_history !101
  br label %onig_node_free.exit37

onig_node_free.exit37:                            ; preds = %onig_node_free.exit, %onig_node_free.exit.thread59
  %i.ae = phi ptr [ %i.ac, %onig_node_free.exit.thread59 ], [ %.ph, %onig_node_free.exit ] ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %onig_node_free.exit38, label %bb.i

bb.i:                                             ; preds = %onig_node_free.exit37
  tail call fastcc void @node_free_body(ptr noundef nonnull %i.ae), !inline_history !101
  tail call void @free(ptr noundef nonnull %i.ae) #26, !inline_history !101
  br label %onig_node_free.exit38

onig_node_free.exit38:                            ; preds = %bb.a, %bb.i, %onig_node_free.exit37, %bb.h
  %.019 = phi i32 [ 0, %bb.h ], [ -5, %bb.i ], [ -5, %onig_node_free.exit37 ], [ -5, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -5, 1) i32 @make_absent_tree(ptr nofree noundef nonnull writeonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3, ptr nofree noundef captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 9 uses
  %i.b = alloca [7 x ptr], align 16               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.b, i8 0, i64 56, i1 false), !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  store ptr %2, ptr %i.c, align 16, !tbaa !110
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  store ptr %1, ptr %i.d, align 8, !tbaa !110
  %i.e = icmp eq i32 %3, 0                        ; 2 uses
  br i1 %i.e, label %bb.b, label %.thread103

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %2, null
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %calloc.i.i = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 6 uses
  %i.g = icmp eq ptr %calloc.i.i, null
  br i1 %i.g, label %node_new_save_gimmick.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 4, ptr %calloc.i.i, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 28
  store i32 -1, ptr %i.h, align 4, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 32
  store i32 1, ptr %i.i, align 8, !tbaa !28
  %calloc.i.i.i.i = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 5 uses
  %i.j = icmp eq ptr %calloc.i.i.i.i, null
  br i1 %i.j, label %node_new_save_gimmick.exit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr %calloc.i.i.i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i, i64 16
  store i32 -1, ptr %i.k, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i, i64 4
  store i32 4194304, ptr %i.l, align 4, !tbaa !28
  br label %bb.o

bb.f:                                             ; preds = %bb.b
  %i.m = load i32, ptr %2, align 8, !tbaa !28
  switch i32 %i.m, label %.thread103 [
    i32 4, label %bb.i
    i32 5, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !109
  %i.p = icmp eq i32 %i.o, 2
  br i1 %i.p, label %bb.h, label %.thread103

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !290  ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !28
  %.not.i = icmp eq i32 %i.s, 4
  br i1 %.not.i, label %bb.i, label %.thread103

bb.i:                                             ; preds = %bb.h, %bb.f
  %.189 = phi i32 [ 0, %bb.f ], [ 1, %bb.h ]
  %.138.i = phi ptr [ %2, %bb.f ], [ %i.r, %bb.h ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.138.i, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !28
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.thread103, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %.138.i, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28   ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !28
  switch i32 %i.y, label %.thread103 [
    i32 0, label %bb.k
    i32 1, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !164 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !163
  %i.ad = icmp ult ptr %i.aa, %i.ac
  br i1 %i.ad, label %.lr.ph.i, label %.thread103

.lr.ph.i:                                         ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i
  %.046.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %i.aj, %bb.l ] ; 2 uses
  %.03545.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ak, %bb.l ] ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !125
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !84
  %i.ah = tail call i32 %i.ag(ptr noundef %.046.i) #26, !inline_history !288
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %.046.i, i64 %i.ai ; 2 uses
  %i.ak = add nuw nsw i32 %.03545.i, 1
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !163
  %i.am = icmp ult ptr %i.aj, %i.al
  br i1 %i.am, label %bb.l, label %._crit_edge.i, !llvm.loop !289

._crit_edge.i:                                    ; preds = %bb.l
  %i.an = icmp eq i32 %.03545.i, 0
  br i1 %i.an, label %bb.m, label %.thread103

bb.m:                                             ; preds = %._crit_edge.i, %bb.j
  %.not44.i = icmp eq ptr %2, %.138.i
  br i1 %.not44.i, label %is_simple_one_char_repeat.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.ao, align 8, !tbaa !28
  tail call fastcc void @node_free_body(ptr noundef nonnull %2), !inline_history !101
  tail call void @free(ptr noundef nonnull %2) #26, !inline_history !101
  br label %is_simple_one_char_repeat.exit

is_simple_one_char_repeat.exit:                   ; preds = %bb.m, %bb.n
  store ptr null, ptr %i.w, align 8, !tbaa !28
  br label %bb.o

bb.o:                                             ; preds = %is_simple_one_char_repeat.exit, %bb.e
  %.088 = phi i32 [ 0, %bb.e ], [ %.189, %is_simple_one_char_repeat.exit ]
  %.086 = phi ptr [ %calloc.i.i, %bb.e ], [ %.138.i, %is_simple_one_char_repeat.exit ] ; 4 uses
  %.084 = phi ptr [ %calloc.i.i.i.i, %bb.e ], [ %i.x, %is_simple_one_char_repeat.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %0, align 8, !tbaa !110
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr %.084, ptr %i.aq, align 16, !tbaa !110
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %1, ptr %i.ar, align 8, !tbaa !110
  %i.as = getelementptr inbounds nuw i8, ptr %.086, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !28
  %i.au = getelementptr inbounds nuw i8, ptr %.086, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !28
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 240 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !160 ; 4 uses
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !160
  %calloc.i.i.i = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 6 uses
  store ptr %calloc.i.i.i, ptr %i.a, align 16, !tbaa !110
  %i.az = icmp eq ptr %calloc.i.i.i, null
  br i1 %i.az, label %onig_node_free.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 10, ptr %calloc.i.i.i, align 8, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %calloc.i.i.i, i64 28
  store i32 %i.ax, ptr %i.ba, align 4, !tbaa !28
  %i.bb = getelementptr inbounds nuw i8, ptr %calloc.i.i.i, i64 16
  store i32 1, ptr %i.bb, align 8, !tbaa !28
  %i.bc = getelementptr inbounds nuw i8, ptr %calloc.i.i.i, i64 20
  store i32 2, ptr %i.bc, align 4, !tbaa !28
  %i.bd = call fastcc i32 @make_absent_engine(ptr noundef %i.ap, i32 noundef %i.ax, ptr noundef %1, ptr noundef nonnull %.084, i32 noundef %i.at, i32 noundef %i.av, i32 noundef %.088, i32 noundef 0, ptr noundef nonnull %4) ; 2 uses
  %.not31.i = icmp eq i32 %i.bd, 0
  br i1 %.not31.i, label %bb.q, label %node_new_save_gimmick.exit.i

bb.q:                                             ; preds = %bb.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %calloc.i.i33.i = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 6 uses
  store ptr %calloc.i.i33.i, ptr %i.aq, align 16, !tbaa !110
  %i.be = icmp eq ptr %calloc.i.i33.i, null
  br i1 %i.be, label %node_new_save_gimmick.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 10, ptr %calloc.i.i33.i, align 8, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %calloc.i.i33.i, i64 28
  store i32 %i.ax, ptr %i.bf, align 4, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %calloc.i.i33.i, i64 16
  store i32 2, ptr %i.bg, align 8, !tbaa !28
  %i.bh = getelementptr inbounds nuw i8, ptr %calloc.i.i33.i, i64 20
  store i32 2, ptr %i.bh, align 4, !tbaa !28
  %i.bi = call fastcc noundef ptr @make_list_or_alt(i32 noundef 7, i32 noundef 3, ptr noundef nonnull readonly %i.a) ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %node_new_save_gimmick.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.bi, ptr %0, align 8, !tbaa !110
  br label %onig_node_free.exit67

node_new_save_gimmick.exit.i:                     ; preds = %bb.r, %bb.q, %bb.p
  %.025.ph.i = phi i32 [ -5, %bb.q ], [ %i.bd, %bb.p ], [ -5, %bb.r ] ; 2 uses
  %.pr.i = load ptr, ptr %i.a, align 16, !tbaa !110 ; 3 uses
  %i.bk = icmp eq ptr %.pr.i, null
  br i1 %i.bk, label %onig_node_free.exit.i, label %bb.t

bb.t:                                             ; preds = %node_new_save_gimmick.exit.i
  tail call fastcc void @node_free_body(ptr noundef nonnull %.pr.i), !inline_history !101
  tail call void @free(ptr noundef nonnull %.pr.i) #26, !inline_history !101
  br label %onig_node_free.exit.i

onig_node_free.exit.i:                            ; preds = %bb.t, %node_new_save_gimmick.exit.i, %bb.o
  %.02547.i = phi i32 [ %.025.ph.i, %bb.t ], [ %.025.ph.i, %node_new_save_gimmick.exit.i ], [ -5, %bb.o ] ; 2 uses
  %i.bl = load ptr, ptr %i.ap, align 8, !tbaa !110 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %onig_node_free.exit.1.i, label %bb.u

bb.u:                                             ; preds = %onig_node_free.exit.i
  tail call fastcc void @node_free_body(ptr noundef nonnull %i.bl), !inline_history !101
  tail call void @free(ptr noundef nonnull %i.bl) #26, !inline_history !101
  br label %onig_node_free.exit.1.i

onig_node_free.exit.1.i:                          ; preds = %bb.u, %onig_node_free.exit.i
  %i.bn = load ptr, ptr %i.aq, align 16, !tbaa !110 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %onig_node_free.exit.2.i, label %bb.v

bb.v:                                             ; preds = %onig_node_free.exit.1.i
  tail call fastcc void @node_free_body(ptr noundef nonnull %i.bn), !inline_history !101
  tail call void @free(ptr noundef nonnull %i.bn) #26, !inline_history !101
  br label %onig_node_free.exit.2.i

onig_node_free.exit.2.i:                          ; preds = %bb.v, %onig_node_free.exit.1.i
  %i.bp = load ptr, ptr %i.ar, align 8, !tbaa !110 ; 3 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %onig_node_free.exit67, label %bb.w

bb.w:                                             ; preds = %onig_node_free.exit.2.i
  tail call fastcc void @node_free_body(ptr noundef nonnull %i.bp), !inline_history !101
  tail call void @free(ptr noundef nonnull %i.bp) #26, !inline_history !101
  br label %onig_node_free.exit67

onig_node_free.exit67:                            ; preds = %bb.s, %onig_node_free.exit.2.i, %bb.w
  %.026.i = phi i32 [ 0, %bb.s ], [ %.02547.i, %bb.w ], [ %.02547.i, %onig_node_free.exit.2.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  tail call fastcc void @node_free_body(ptr noundef nonnull %.086), !inline_history !101
  tail call void @free(ptr noundef nonnull %.086) #26, !inline_history !101
  %.not59 = icmp eq i32 %.026.i, 0
  br i1 %.not59, label %.thread100, label %onig_node_free.exit68

onig_node_free.exit68:                            ; preds = %onig_node_free.exit67
  store ptr null, ptr %i.c, align 16, !tbaa !110
  br label %node_new_save_gimmick.exit.sink.split

.thread103:                                       ; preds = %bb.f, %bb.i, %._crit_edge.i, %bb.h, %bb.j, %bb.g, %bb.k, %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 240 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !160 ; 5 uses
  %i.bt = add nsw i32 %i.bs, 1                    ; 3 uses
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !160
  %calloc.i.i69 = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 6 uses
  store ptr %calloc.i.i69, ptr %i.b, align 16, !tbaa !110
  %i.bu = icmp eq ptr %calloc.i.i69, null
  br i1 %i.bu, label %onig_node_free.exit79, label %bb.x

bb.x:                                             ; preds = %.thread103
  store i32 10, ptr %calloc.i.i69, align 8, !tbaa !28
  %i.bv = getelementptr inbounds nuw i8, ptr %calloc.i.i69, i64 28
  store i32 %i.bs, ptr %i.bv, align 4, !tbaa !28
  %i.bw = getelementptr inbounds nuw i8, ptr %calloc.i.i69, i64 16
  store i32 1, ptr %i.bw, align 8, !tbaa !28
  %i.bx = getelementptr inbounds nuw i8, ptr %calloc.i.i69, i64 20
  store i32 2, ptr %i.bx, align 4, !tbaa !28
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bz = add nsw i32 %i.bs, 2
  store i32 %i.bz, ptr %i.br, align 8, !tbaa !160
  %calloc.i.i71 = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 6 uses
  store ptr %calloc.i.i71, ptr %i.by, align 8, !tbaa !110
  %i.ca = icmp eq ptr %calloc.i.i71, null
  br i1 %i.ca, label %node_new_save_gimmick.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 10, ptr %calloc.i.i71, align 8, !tbaa !28
  %i.cb = getelementptr inbounds nuw i8, ptr %calloc.i.i71, i64 28
  store i32 %i.bt, ptr %i.cb, align 4, !tbaa !28
  %i.cc = getelementptr inbounds nuw i8, ptr %calloc.i.i71, i64 16
  store i32 1, ptr %i.cc, align 8, !tbaa !28
  %i.cd = getelementptr inbounds nuw i8, ptr %calloc.i.i71, i64 20
  store i32 1, ptr %i.cd, align 4, !tbaa !28
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %calloc.i.i.i.i74 = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 6 uses
  %i.cf = icmp eq ptr %calloc.i.i.i.i74, null
  br i1 %i.cf, label %node_new_save_gimmick.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 2, ptr %calloc.i.i.i.i74, align 8, !tbaa !28
  %i.cg = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i74, i64 16
  store i32 -1, ptr %i.cg, align 8, !tbaa !28
  %i.ch = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i74, i64 4
  store i32 4194304, ptr %i.ch, align 4, !tbaa !28
  store ptr %calloc.i.i.i.i74, ptr %i.ce, align 8, !tbaa !110
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cj = call fastcc i32 @make_absent_engine(ptr noundef %i.ci, i32 noundef %i.bs, ptr noundef %1, ptr noundef nonnull %calloc.i.i.i.i74, i32 noundef 0, i32 noundef -1, i32 noundef 1, i32 noundef %3, ptr noundef nonnull %4) ; 2 uses
  %.not63 = icmp eq i32 %i.cj, 0
  br i1 %.not63, label %bb.aa, label %node_new_save_gimmick.exit

bb.aa:                                            ; preds = %bb.z
  store ptr null, ptr %i.d, align 8, !tbaa !110
  %calloc.i.i77 = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 6 uses
  store ptr %calloc.i.i77, ptr %i.ce, align 8, !tbaa !110
  %i.ck = icmp eq ptr %calloc.i.i77, null
  br i1 %i.ck, label %node_new_save_gimmick.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 10, ptr %calloc.i.i77, align 8, !tbaa !28
  %i.cl = getelementptr inbounds nuw i8, ptr %calloc.i.i77, i64 28
  store i32 %i.bt, ptr %i.cl, align 4, !tbaa !28
  %i.cm = getelementptr inbounds nuw i8, ptr %calloc.i.i77, i64 16
  store i32 2, ptr %i.cm, align 8, !tbaa !28
  %i.cn = getelementptr inbounds nuw i8, ptr %calloc.i.i77, i64 20
  store i32 1, ptr %i.cn, align 4, !tbaa !28
  br i1 %i.e, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.co = call fastcc noundef ptr @make_list_or_alt(i32 noundef 7, i32 noundef 4, ptr noundef nonnull readonly %i.b) ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %node_new_save_gimmick.exit, label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.cr = call fastcc i32 @make_absent_tail(ptr noundef %i.d, ptr noundef %i.cq, i32 noundef %i.bs, ptr noundef nonnull %4) ; 2 uses
  %.not66 = icmp eq i32 %i.cr, 0
  br i1 %.not66, label %bb.ae, label %node_new_save_gimmick.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cs = call fastcc noundef ptr @make_list_or_alt(i32 noundef 7, i32 noundef 7, ptr noundef nonnull readonly %i.b) ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %node_new_save_gimmick.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %.040 = phi ptr [ %i.co, %bb.ac ], [ %i.cs, %bb.ae ]
  store ptr %.040, ptr %0, align 8, !tbaa !110
  br label %.thread100

node_new_save_gimmick.exit.sink.split:            ; preds = %bb.d, %onig_node_free.exit68
  %.084.sink137 = phi ptr [ %.084, %onig_node_free.exit68 ], [ %calloc.i.i, %bb.d ] ; 2 uses
  %.143.ph.ph = phi i32 [ %.026.i, %onig_node_free.exit68 ], [ -5, %bb.d ]
  tail call fastcc void @node_free_body(ptr noundef nonnull %.084.sink137)
  tail call void @free(ptr noundef nonnull %.084.sink137) #26
  br label %node_new_save_gimmick.exit

node_new_save_gimmick.exit:                       ; preds = %node_new_save_gimmick.exit.sink.split, %bb.ac, %bb.ae, %bb.c, %bb.aa, %bb.y, %bb.x, %bb.ad, %bb.z
  %.143.ph = phi i32 [ -5, %bb.x ], [ -5, %bb.ac ], [ -5, %bb.ae ], [ -5, %bb.c ], [ %i.cr, %bb.ad ], [ -5, %bb.aa ], [ -5, %bb.y ], [ %i.cj, %bb.z ], [ %.143.ph.ph, %node_new_save_gimmick.exit.sink.split ] ; 2 uses
  %.pr = load ptr, ptr %i.b, align 16, !tbaa !110 ; 3 uses
  %i.cu = icmp eq ptr %.pr, null
  br i1 %i.cu, label %onig_node_free.exit79, label %bb.ag

bb.ag:                                            ; preds = %node_new_save_gimmick.exit
  tail call fastcc void @node_free_body(ptr noundef nonnull %.pr), !inline_history !101
  tail call void @free(ptr noundef nonnull %.pr) #26, !inline_history !101
  br label %onig_node_free.exit79

onig_node_free.exit79:                            ; preds = %.thread103, %node_new_save_gimmick.exit, %bb.ag
  %.143136 = phi i32 [ %.143.ph, %bb.ag ], [ %.143.ph, %node_new_save_gimmick.exit ], [ -5, %.thread103 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !110 ; 3 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %onig_node_free.exit79.1, label %bb.ah

bb.ah:                                            ; preds = %onig_node_free.exit79
  tail call fastcc void @node_free_body(ptr noundef nonnull %i.cw), !inline_history !101
  tail call void @free(ptr noundef nonnull %i.cw) #26, !inline_history !101
  br label %onig_node_free.exit79.1

onig_node_free.exit79.1:                          ; preds = %bb.ah, %onig_node_free.exit79
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cz = load ptr, ptr %i.cy, align 16, !tbaa !110 ; 3 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %onig_node_free.exit79.2, label %bb.ai

bb.ai:                                            ; preds = %onig_node_free.exit79.1
  tail call fastcc void @node_free_body(ptr noundef nonnull %i.cz), !inline_history !101
  tail call void @free(ptr noundef nonnull %i.cz) #26, !inline_history !101
  br label %onig_node_free.exit79.2

onig_node_free.exit79.2:                          ; preds = %bb.ai, %onig_node_free.exit79.1
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !110 ; 3 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %onig_node_free.exit79.3, label %bb.aj

bb.aj:                                            ; preds = %onig_node_free.exit79.2
  tail call fastcc void @node_free_body(ptr noundef nonnull %i.dc), !inline_history !101
  tail call void @free(ptr noundef nonnull %i.dc) #26, !inline_history !101
  br label %onig_node_free.exit79.3

onig_node_free.exit79.3:                          ; preds = %bb.aj, %onig_node_free.exit79.2
  %i.de = load ptr, ptr %i.c, align 16, !tbaa !110 ; 3 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %onig_node_free.exit79.4, label %bb.ak

bb.ak:                                            ; preds = %onig_node_free.exit79.3
  tail call fastcc void @node_free_body(ptr noundef nonnull %i.de), !inline_history !101
  tail call void @free(ptr noundef nonnull %i.de) #26, !inline_history !101
  br label %onig_node_free.exit79.4

onig_node_free.exit79.4:                          ; preds = %bb.ak, %onig_node_free.exit79.3
  %i.dg = load ptr, ptr %i.d, align 8, !tbaa !110 ; 3 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %onig_node_free.exit79.5, label %bb.al

bb.al:                                            ; preds = %onig_node_free.exit79.4
  tail call fastcc void @node_free_body(ptr noundef nonnull %i.dg), !inline_history !101
  tail call void @free(ptr noundef nonnull %i.dg) #26, !inline_history !101
  br label %onig_node_free.exit79.5

onig_node_free.exit79.5:                          ; preds = %bb.al, %onig_node_free.exit79.4
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.dj = load ptr, ptr %i.di, align 16, !tbaa !110 ; 3 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %.thread100, label %bb.am

bb.am:                                            ; preds = %onig_node_free.exit79.5
  tail call fastcc void @node_free_body(ptr noundef nonnull %i.dj), !inline_history !101
  tail call void @free(ptr noundef nonnull %i.dj) #26, !inline_history !101
  br label %.thread100

.thread100:                                       ; preds = %onig_node_free.exit79.5, %bb.am, %onig_node_free.exit67, %bb.af
  %.145 = phi i32 [ 0, %onig_node_free.exit67 ], [ 0, %bb.af ], [ %.143136, %bb.am ], [ %.143136, %onig_node_free.exit79.5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret i32 %.145
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @prs_callout_of_contents(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125  ; 11 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !131    ; 2 uses
  %i.e = icmp ult ptr %i.d, %2
  br i1 %i.e, label %.preheader183, label %.loopexit

.preheader183:                                    ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader183, %bb.d
  %.0147 = phi i32 [ %i.k, %bb.d ], [ 0, %.preheader183 ] ; 4 uses
  %.0 = phi ptr [ %i.o, %bb.d ], [ %i.d, %.preheader183 ] ; 8 uses
  %i.g = icmp ult ptr %.0, %2
  br i1 %i.g, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.i = tail call i32 %i.h(ptr noundef %.0, ptr noundef nonnull %2) #26
  %i.j = icmp eq i32 %i.i, 123
  br i1 %i.j, label %bb.d, label %.lr.ph199

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %.0147, 1
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !84
  %i.m = tail call i32 %i.l(ptr noundef %.0) #26
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %.0, i64 %i.n ; 2 uses
  %i.p = icmp ult ptr %i.o, %2
  br i1 %i.p, label %bb.b, label %.loopexit, !llvm.loop !291

.lr.ph199:                                        ; preds = %bb.c
  %.not215 = icmp eq i32 %.0147, 0
  br i1 %.not215, label %.lr.ph199.split.split.us, label %.lr.ph199.split.us.preheader

.lr.ph199.split.us.preheader:                     ; preds = %.lr.ph199
  %i.q = icmp sgt i32 %.0147, 0
  br label %.lr.ph199.split.us

.lr.ph199.split.us:                               ; preds = %.lr.ph199.split.us.preheader, %.thread.us
  %.1198.us = phi ptr [ %.4.us, %.thread.us ], [ %.0, %.lr.ph199.split.us.preheader ] ; 4 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.s = tail call i32 %i.r(ptr noundef %.1198.us, ptr noundef nonnull %2) #26
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !84
  %i.u = tail call i32 %i.t(ptr noundef %.1198.us) #26
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %.1198.us, i64 %i.v ; 2 uses
  %i.x = icmp eq i32 %i.s, 125
  br i1 %i.x, label %.preheader181.us, label %.thread.us

.preheader181.us:                                 ; preds = %.lr.ph199.split.us, %bb.f
  %.2196.us = phi ptr [ %i.ae, %bb.f ], [ %i.w, %.lr.ph199.split.us ] ; 4 uses
  %.0155195.us = phi i32 [ %i.ag, %bb.f ], [ %.0147, %.lr.ph199.split.us ] ; 2 uses
  %i.y = icmp ult ptr %.2196.us, %2
  br i1 %i.y, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.preheader181.us
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.aa = tail call i32 %i.z(ptr noundef %.2196.us, ptr noundef nonnull %2) #26
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !84
  %i.ac = tail call i32 %i.ab(ptr noundef %.2196.us) #26
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %.2196.us, i64 %i.ad ; 4 uses
  %i.af = icmp eq i32 %i.aa, 125
  br i1 %i.af, label %bb.f, label %.thread.us

bb.f:                                             ; preds = %bb.e
  %i.ag = add nsw i32 %.0155195.us, -1
  %i.ah = icmp sgt i32 %.0155195.us, 1
  br i1 %i.ah, label %.preheader181.us, label %._crit_edge.us, !llvm.loop !292

.thread.us:                                       ; preds = %bb.e, %._crit_edge.us, %.lr.ph199.split.us
  %.4.us = phi ptr [ %i.ae, %._crit_edge.us ], [ %i.w, %.lr.ph199.split.us ], [ %i.ae, %bb.e ] ; 2 uses
  %i.ai = icmp ult ptr %.4.us, %2
  br i1 %i.ai, label %.lr.ph199.split.us, label %.loopexit

._crit_edge.us:                                   ; preds = %bb.f
  br i1 %i.q, label %.split.us, label %.thread.us

.lr.ph199.split.split.us:                         ; preds = %.lr.ph199, %.thread.us204
  %.1198.us202 = phi ptr [ %i.ao, %.thread.us204 ], [ %.0, %.lr.ph199 ] ; 4 uses
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.ak = tail call i32 %i.aj(ptr noundef %.1198.us202, ptr noundef nonnull %2) #26
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !84
  %i.am = tail call i32 %i.al(ptr noundef %.1198.us202) #26
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %.1198.us202, i64 %i.an ; 3 uses
  %i.ap = icmp eq i32 %i.ak, 125
  br i1 %i.ap, label %.split.us, label %.thread.us204

.thread.us204:                                    ; preds = %.lr.ph199.split.split.us
  %i.aq = icmp ult ptr %i.ao, %2
  br i1 %i.aq, label %.lr.ph199.split.split.us, label %.loopexit

.split.us:                                        ; preds = %._crit_edge.us, %.lr.ph199.split.split.us
  %.us-phi200 = phi ptr [ %.1198.us202, %.lr.ph199.split.split.us ], [ %.1198.us, %._crit_edge.us ] ; 2 uses
  %.us-phi201 = phi ptr [ %i.ao, %.lr.ph199.split.split.us ], [ %i.ae, %._crit_edge.us ] ; 4 uses
  %i.ar = icmp ult ptr %.us-phi201, %2
end_hunk_3
begin_hunk_4_@prs_callout_of_name:bb.a
  %i.fw = zext nneg i32 %i.dn to i64
  %i.fx = getelementptr inbounds nuw [120 x i8], ptr %i.fv, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !72
  %i.fz = getelementptr i8, ptr %i.fg, i64 -112
  store i32 %i.fy, ptr %i.fz, align 8, !tbaa !298
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !70
  %i.gc = zext nneg i32 %i.dn to i64
  %i.gd = getelementptr inbounds nuw [120 x i8], ptr %i.gb, i64 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !74
  br label %bb.aq

onig_get_callout_start_func_by_name_id.exit:      ; preds = %bb.am
  %i.gg = getelementptr i8, ptr %i.fg, i64 -112
  store i32 0, ptr %i.gg, align 8, !tbaa !298
  %i.gh = getelementptr i8, ptr %i.fg, i64 -104
  store ptr null, ptr %i.gh, align 8, !tbaa !94
  br label %onig_get_callout_end_func_by_name_id.exit

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %.0.i204.ph = phi ptr [ null, %bb.ao ], [ %i.gf, %bb.ap ]
  %i.gi = getelementptr i8, ptr %i.fg, i64 -104
  store ptr %.0.i204.ph, ptr %i.gi, align 8, !tbaa !94
  %i.gj = load ptr, ptr @GlobalCalloutNameList, align 8, !tbaa !25 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !68
  %.not.i205 = icmp slt i32 %i.dn, %i.gk
  br i1 %.not.i205, label %bb.ar, label %onig_get_callout_end_func_by_name_id.exit

bb.ar:                                            ; preds = %bb.aq
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !70
  %i.gn = zext nneg i32 %i.dn to i64
  %i.go = getelementptr inbounds nuw [120 x i8], ptr %i.gm, i64 %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !75
  br label %onig_get_callout_end_func_by_name_id.exit

onig_get_callout_end_func_by_name_id.exit:        ; preds = %onig_get_callout_start_func_by_name_id.exit, %bb.aq, %bb.ar
  %.0.i206 = phi ptr [ %i.gq, %bb.ar ], [ null, %bb.aq ], [ null, %onig_get_callout_start_func_by_name_id.exit ]
  %i.gr = getelementptr i8, ptr %i.fg, i64 -96
  store ptr %.0.i206, ptr %i.gr, align 8, !tbaa !299
  %i.gs = getelementptr i8, ptr %i.fg, i64 -88
  store i32 %.1141, ptr %i.gs, align 8, !tbaa !28
  %i.gt = getelementptr i8, ptr %i.fg, i64 -84
  store i32 %.1143, ptr %i.gt, align 4, !tbaa !28
  %.not335 = icmp eq i32 %.1141, 0
  br i1 %.not335, label %._crit_edge268, label %.lr.ph267

.lr.ph267:                                        ; preds = %onig_get_callout_end_func_by_name_id.exit
  %i.gu = getelementptr i8, ptr %i.fg, i64 -80
  %i.gv = getelementptr i8, ptr %i.fg, i64 -64
  %i.gw = zext nneg i32 %.1143 to i64
  %wide.trip.count = zext nneg i32 %.1141 to i64
  %i.gx = load ptr, ptr @GlobalCalloutNameList, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph267, %bb.av
  %indvars.iv = phi i64 [ 0, %.lr.ph267 ], [ %indvars.iv.next, %bb.av ] ; 7 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !26
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !28
  %i.hc = icmp samesign ult i64 %indvars.iv, %i.gw
  %i.hd = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %indvars.iv ; 2 uses
  br i1 %i.hc, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hd, ptr noundef nonnull align 16 dereferenceable(16) %i.he, i64 16, i1 false), !tbaa.struct !81
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.hf = load ptr, ptr %i.gy, align 8, !tbaa !70
  %i.hg = getelementptr inbounds [120 x i8], ptr %i.hf, i64 %i.dy
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %indvars.iv
  %i.hj = load <2 x ptr>, ptr %i.hi, align 8
  store <2 x ptr> %i.hj, ptr %i.hd, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge268, label %bb.as, !llvm.loop !296

._crit_edge268:                                   ; preds = %bb.av, %onig_get_callout_end_func_by_name_id.exit
  store ptr %calloc.i.i, ptr %0, align 8, !tbaa !110
  store ptr %i.dm, ptr %1, align 8, !tbaa !131
  br label %clear_callout_args.exit

node_new_callout.exit:                            ; preds = %bb.ak, %bb.aj, %bb.al, %bb.x, %onig_reg_callout_list_at.exit, %bb.ae, %bb.ac, %onig_get_callout_in_by_name_id.exit, %bb.ai, %bb.ag, %bb.ad
  %.2144 = phi i32 [ %.1143, %onig_reg_callout_list_at.exit ], [ %.1143, %onig_get_callout_in_by_name_id.exit ], [ %.1143, %bb.ad ], [ %.1143, %bb.ac ], [ %.1143, %bb.ag ], [ %.1143, %bb.ai ], [ %.1143, %bb.ae ], [ %.1143, %bb.al ], [ %i.cp, %bb.x ], [ %.1143, %bb.aj ], [ %.1143, %bb.ak ] ; 2 uses
  %.1132 = phi i32 [ -5, %onig_reg_callout_list_at.exit ], [ -232, %onig_get_callout_in_by_name_id.exit ], [ %i.eg, %bb.ad ], [ -227, %bb.ac ], [ %i.er, %bb.ag ], [ %i.eu, %bb.ai ], [ -5, %bb.ae ], [ -5, %bb.al ], [ -118, %bb.x ], [ -5, %bb.aj ], [ -5, %bb.ak ] ; 2 uses
  %.not = icmp eq i32 %.2144, 0
  br i1 %.not, label %clear_callout_args.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %node_new_callout.exit
  %wide.trip.count.i = zext nneg i32 %.2144 to i64
  br label %.lr.ph.i207

.lr.ph.i207:                                      ; preds = %bb.ay, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ay ] ; 3 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !26
  %cond.i = icmp eq i32 %i.hl, 4
  br i1 %cond.i, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %.lr.ph.i207
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.i
  %i.hn = load ptr, ptr %i.hm, align 16, !tbaa !28 ; 2 uses
  %.not.i208 = icmp eq ptr %i.hn, null
  br i1 %.not.i208, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @free(ptr noundef nonnull %i.hn) #26
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %.lr.ph.i207
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %clear_callout_args.exit, label %.lr.ph.i207, !llvm.loop !11

clear_callout_args.exit:                          ; preds = %bb.b, %bb.f, %bb.e, %bb.j, %bb.i, %bb.n, %bb.s, %bb.ay, %bb.t, %._crit_edge265, %bb.v, %bb.m, %._crit_edge256, %bb.d, %node_new_callout.exit, %bb.y, %is_allowed_callout_tag_name.exit, %bb.g, %bb.a, %._crit_edge268
  %.1 = phi i32 [ -227, %bb.t ], [ %i.cz, %bb.y ], [ 0, %._crit_edge268 ], [ -118, %is_allowed_callout_tag_name.exit ], [ -227, %bb.s ], [ -118, %bb.g ], [ -227, %bb.a ], [ -228, %bb.f ], [ %.1132, %bb.ay ], [ %.1132, %node_new_callout.exit ], [ -228, %bb.d ], [ -227, %bb.n ], [ -231, %._crit_edge256 ], [ -231, %bb.j ], [ -118, %bb.m ], [ %i.cp, %._crit_edge265 ], [ %i.cc, %bb.v ], [ -231, %bb.i ], [ -228, %bb.e ], [ -118, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -403, 1) i32 @set_whole_options(i32 noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 268 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !134  ; 2 uses
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = or disjoint i32 %i.b, 2
  store i32 %i.d, ptr %i.a, align 4, !tbaa !134
  %i.e = and i32 %0, 128
  %.not11 = icmp eq i32 %i.e, 0
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !129
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !62
  %i.j = or i32 %i.i, 128
  store i32 %i.j, ptr %i.h, align 8, !tbaa !62
  %i.k = and i32 %0, 384
  %i.l = icmp eq i32 %i.k, 384
  br i1 %i.l, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = and i32 %0, 32768
  %.not12 = icmp eq i32 %i.m, 0
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !129  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 120 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !124
  %i.r = and i32 %i.q, -1074790402
  %i.s = or disjoint i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 8, !tbaa !124
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 104 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !62
  %i.v = or i32 %i.u, 32768
  store i32 %i.v, ptr %i.t, align 8, !tbaa !62
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = and i32 %0, 16
  %.not13 = icmp eq i32 %i.w, 0
  br i1 %.not13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !129
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 104 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !62
  %i.ab = or i32 %i.aa, 16
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !62
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.a
  %.0 = phi i32 [ -403, %bb.c ], [ -120, %bb.a ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @make_list_or_alt(i32 noundef range(i32 7, 9) %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #14 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 1
  %calloc.i = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 10 uses
  %i.c = icmp eq ptr %calloc.i, null              ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %0, ptr %calloc.i, align 8, !tbaa !28
  %i.d = load ptr, ptr %2, align 8, !tbaa !110
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !28
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = add nsw i32 %1, -1
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = tail call fastcc ptr @make_list_or_alt(i32 noundef %0, i32 noundef %i.f, ptr noundef %i.g) ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %onig_node_free.exit, label %.critedge

onig_node_free.exit:                              ; preds = %bb.f
  tail call fastcc void @node_free_body(ptr noundef nonnull %calloc.i), !inline_history !101
  tail call void @free(ptr noundef nonnull %calloc.i) #26, !inline_history !101
  br label %bb.g

.critedge:                                        ; preds = %bb.f
  store i32 %0, ptr %calloc.i, align 8, !tbaa !28
  %i.j = load ptr, ptr %2, align 8, !tbaa !110
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24
  store ptr %i.h, ptr %i.l, align 8, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %.critedge, %onig_node_free.exit, %bb.e, %bb.c, %bb.a
  %.1 = phi ptr [ null, %bb.c ], [ null, %bb.a ], [ null, %onig_node_free.exit ], [ null, %bb.e ], [ %calloc.i, %bb.d ], [ %calloc.i, %.critedge ]
  ret ptr %.1
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -5, 1) i32 @make_absent_engine(ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 2) %7, ptr nofree noundef captures(none) %8) unnamed_addr #14 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !110
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 240 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !160  ; 3 uses
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !160
  %calloc.i.i = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 9 uses
  store ptr %calloc.i.i, ptr %i.a, align 16, !tbaa !110
  %i.h = icmp eq ptr %calloc.i.i, null
  br i1 %i.h, label %onig_node_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 10, ptr %calloc.i.i, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 28
  store i32 %i.f, ptr %i.i, align 4, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 16
  store i32 1, ptr %i.j, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 20
  store i32 1, ptr %i.k, align 4, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %calloc.i.i62 = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 9 uses
  store ptr %calloc.i.i62, ptr %i.l, align 16, !tbaa !110
  %i.m = icmp eq ptr %calloc.i.i62, null
  br i1 %i.m, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 10, ptr %calloc.i.i62, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %calloc.i.i62, i64 28
  store i32 %i.f, ptr %i.n, align 4, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %calloc.i.i62, i64 16
  store i32 2, ptr %i.o, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %calloc.i.i62, i64 20
  store i32 3, ptr %i.p, align 4, !tbaa !28
  %.not57 = icmp eq i32 %7, 0                     ; 2 uses
  br i1 %.not57, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %calloc.i.i62, i64 4
  store i32 16777216, ptr %i.q, align 4, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %calloc.i.i64 = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 4 uses
  store ptr %calloc.i.i64, ptr %i.d, align 8, !tbaa !110
  %i.r = icmp eq ptr %calloc.i.i64, null
  br i1 %i.r, label %bb.s, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 10, ptr %calloc.i.i64, align 8, !tbaa !28
  %i.s = call fastcc noundef ptr @make_list_or_alt(i32 noundef 7, i32 noundef 4, ptr noundef nonnull readonly %i.a) ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.s, ptr %i.a, align 16, !tbaa !110
  store ptr %3, ptr %i.c, align 8, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.u = call fastcc noundef ptr @make_list_or_alt(i32 noundef 8, i32 noundef 2, ptr noundef nonnull readonly %i.a) ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %calloc.i.i66 = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 10 uses
  %i.w = icmp eq ptr %calloc.i.i66, null
  br i1 %i.w, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 4, ptr %calloc.i.i66, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %calloc.i.i66, i64 24
  store i32 %4, ptr %i.x, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %calloc.i.i66, i64 28
  store i32 %5, ptr %i.y, align 4, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %calloc.i.i66, i64 32
  store i32 1, ptr %i.z, align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %calloc.i.i66, i64 16
  store ptr %i.u, ptr %i.aa, align 8, !tbaa !28
  store ptr %calloc.i.i66, ptr %i.a, align 16, !tbaa !110
  %.not59 = icmp eq i32 %6, 0
  br i1 %.not59, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %calloc.i.i67 = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 6 uses
  %i.ab = icmp eq ptr %calloc.i.i67, null
  br i1 %i.ab, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 5, ptr %calloc.i.i67, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %calloc.i.i67, i64 24
  store i32 2, ptr %i.ac, align 8, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %calloc.i.i67, i64 16
  store ptr %calloc.i.i66, ptr %i.ad, align 8, !tbaa !28
  store ptr %calloc.i.i67, ptr %i.a, align 16, !tbaa !110
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.ae = phi ptr [ %calloc.i.i67, %bb.k ], [ %calloc.i.i66, %bb.i ] ; 4 uses
  %calloc.i.i68 = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 8 uses
  store ptr %calloc.i.i68, ptr %i.c, align 8, !tbaa !110
  %i.af = icmp eq ptr %calloc.i.i68, null
  br i1 %i.af, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 10, ptr %calloc.i.i68, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %calloc.i.i68, i64 28
  store i32 %1, ptr %i.ag, align 4, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %calloc.i.i68, i64 16
  store i32 2, ptr %i.ah, align 8, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %calloc.i.i68, i64 20
  store i32 2, ptr %i.ai, align 4, !tbaa !28
  %calloc.i.i71 = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 4 uses
  store ptr %calloc.i.i71, ptr %i.l, align 16, !tbaa !110
  %i.aj = icmp eq ptr %calloc.i.i71, null
  br i1 %i.aj, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 10, ptr %calloc.i.i71, align 8, !tbaa !28
  %i.ak = call fastcc noundef ptr @make_list_or_alt(i32 noundef 7, i32 noundef 2, ptr noundef nonnull readonly %i.c) ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !110
  store ptr null, ptr %i.l, align 16, !tbaa !110
  %i.am = call fastcc noundef ptr @make_list_or_alt(i32 noundef 8, i32 noundef 2, ptr noundef nonnull readonly %i.a) ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.not57, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !28
  %i.aq = or i32 %i.ap, 524288
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store ptr %i.am, ptr %0, align 8, !tbaa !110
  br label %.loopexit

bb.s:                                             ; preds = %bb.j, %bb.h, %bb.m, %bb.l, %bb.e, %bb.b, %bb.f, %bb.g, %bb.n, %bb.o
  %.ph = phi ptr [ null, %bb.o ], [ null, %bb.n ], [ null, %bb.g ], [ %calloc.i.i64, %bb.f ], [ %3, %bb.b ], [ null, %bb.e ], [ null, %bb.l ], [ null, %bb.m ], [ null, %bb.h ], [ null, %bb.j ]
  %.ph95 = phi ptr [ null, %bb.o ], [ %calloc.i.i71, %bb.n ], [ null, %bb.g ], [ %calloc.i.i62, %bb.f ], [ null, %bb.b ], [ %calloc.i.i62, %bb.e ], [ null, %bb.l ], [ null, %bb.m ], [ null, %bb.h ], [ null, %bb.j ]
  %.ph96 = phi ptr [ %i.ak, %bb.o ], [ %calloc.i.i68, %bb.n ], [ %3, %bb.g ], [ %2, %bb.f ], [ %2, %bb.b ], [ %2, %bb.e ], [ null, %bb.l ], [ %calloc.i.i68, %bb.m ], [ %3, %bb.h ], [ %3, %bb.j ]
  %.ph97 = phi ptr [ %i.ae, %bb.o ], [ %i.ae, %bb.n ], [ %i.s, %bb.g ], [ %calloc.i.i, %bb.f ], [ %calloc.i.i, %bb.b ], [ %calloc.i.i, %bb.e ], [ %i.ae, %bb.l ], [ %i.ae, %bb.m ], [ %i.u, %bb.h ], [ %calloc.i.i66, %bb.j ] ; 2 uses
  tail call fastcc void @node_free_body(ptr noundef nonnull %.ph97), !inline_history !101
  tail call void @free(ptr noundef nonnull %.ph97) #26, !inline_history !101
  br label %onig_node_free.exit

onig_node_free.exit:                              ; preds = %bb.a, %bb.s
  %i.ar = phi ptr [ %.ph96, %bb.s ], [ %2, %bb.a ] ; 3 uses
  %i.as = phi ptr [ %.ph95, %bb.s ], [ null, %bb.a ] ; 3 uses
  %i.at = phi ptr [ %.ph, %bb.s ], [ %3, %bb.a ]  ; 3 uses
  %i.au = icmp eq ptr %i.ar, null
  br i1 %i.au, label %onig_node_free.exit.1, label %bb.t

bb.t:                                             ; preds = %onig_node_free.exit
  tail call fastcc void @node_free_body(ptr noundef nonnull %i.ar), !inline_history !101
  tail call void @free(ptr noundef nonnull %i.ar) #26, !inline_history !101
  br label %onig_node_free.exit.1

onig_node_free.exit.1:                            ; preds = %bb.t, %onig_node_free.exit
  %i.av = icmp eq ptr %i.as, null
  br i1 %i.av, label %onig_node_free.exit.2, label %bb.u

bb.u:                                             ; preds = %onig_node_free.exit.1
  tail call fastcc void @node_free_body(ptr noundef nonnull %i.as), !inline_history !101
  tail call void @free(ptr noundef nonnull %i.as) #26, !inline_history !101
  br label %onig_node_free.exit.2

onig_node_free.exit.2:                            ; preds = %bb.u, %onig_node_free.exit.1
  %i.aw = icmp eq ptr %i.at, null
  br i1 %i.aw, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %onig_node_free.exit.2
  tail call fastcc void @node_free_body(ptr noundef nonnull %i.at), !inline_history !101
  tail call void @free(ptr noundef nonnull %i.at) #26, !inline_history !101
  br label %.loopexit

.loopexit:                                        ; preds = %onig_node_free.exit.2, %bb.v, %bb.r
  %.044 = phi i32 [ 0, %bb.r ], [ -5, %bb.v ], [ -5, %onig_node_free.exit.2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.044
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -5, 1) i32 @make_absent_tail(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %1, i32 noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #14 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %1, align 8, !tbaa !110
  store ptr null, ptr %0, align 8, !tbaa !110
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !160  ; 3 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !160
  %calloc.i.i = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 8 uses
  %i.f = icmp eq ptr %calloc.i.i, null
  br i1 %i.f, label %onig_node_free.exit37, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 10, ptr %calloc.i.i, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 28
  store i32 %i.d, ptr %i.g, align 4, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 16
  store i32 1, ptr %i.h, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 20
  store i32 2, ptr %i.i, align 4, !tbaa !28
  %calloc.i.i29 = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 8 uses
  store ptr %calloc.i.i29, ptr %i.a, align 16, !tbaa !110
  %i.j = icmp eq ptr %calloc.i.i29, null
  br i1 %i.j, label %onig_node_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 10, ptr %calloc.i.i29, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i.i29, i64 28
  store i32 %i.d, ptr %i.k, align 4, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %calloc.i.i29, i64 16
  store i32 2, ptr %i.l, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %calloc.i.i29, i64 20
  store i32 2, ptr %i.m, align 4, !tbaa !28
  %calloc.i.i31 = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 4 uses
  store ptr %calloc.i.i31, ptr %i.b, align 8, !tbaa !110
  %i.n = icmp eq ptr %calloc.i.i31, null
  br i1 %i.n, label %onig_node_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 10, ptr %calloc.i.i31, align 8, !tbaa !28
  %i.o = call fastcc noundef ptr @make_list_or_alt(i32 noundef 7, i32 noundef 2, ptr noundef nonnull readonly %i.a) ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %onig_node_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.o, ptr %i.b, align 8, !tbaa !110
  %calloc.i.i33 = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 7 uses
  store ptr %calloc.i.i33, ptr %i.a, align 16, !tbaa !110
  %i.q = icmp eq ptr %calloc.i.i33, null
  br i1 %i.q, label %onig_node_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 10, ptr %calloc.i.i33, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %calloc.i.i33, i64 28
  store i32 %2, ptr %i.r, align 4, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %calloc.i.i33, i64 16
  store i32 2, ptr %i.s, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %calloc.i.i33, i64 20
  store i32 2, ptr %i.t, align 4, !tbaa !28
  %i.u = call fastcc noundef ptr @make_list_or_alt(i32 noundef 8, i32 noundef 2, ptr noundef nonnull readonly %i.a) ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %onig_node_free.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %calloc.i.i, ptr %0, align 8, !tbaa !110
  store ptr %i.u, ptr %1, align 8, !tbaa !110
  br label %onig_node_free.exit37

onig_node_free.exit:                              ; preds = %bb.f, %bb.d, %bb.b, %bb.c, %bb.e
  %.ph = phi ptr [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ null, %bb.c ], [ null, %bb.b ], [ %calloc.i.i31, %bb.d ] ; 3 uses
  %.ph48 = phi ptr [ null, %bb.e ], [ %calloc.i.i33, %bb.f ], [ %calloc.i.i29, %bb.c ], [ null, %bb.b ], [ %calloc.i.i29, %bb.d ] ; 3 uses
  tail call fastcc void @node_free_body(ptr noundef nonnull %calloc.i.i), !inline_history !101
  tail call void @free(ptr noundef nonnull %calloc.i.i) #26, !inline_history !101
  %i.w = icmp eq ptr %.ph48, null
  br i1 %i.w, label %onig_node_free.exit36, label %bb.h

bb.h:                                             ; preds = %onig_node_free.exit
  tail call fastcc void @node_free_body(ptr noundef nonnull %.ph48), !inline_history !101
  tail call void @free(ptr noundef nonnull %.ph48) #26, !inline_history !101
  br label %onig_node_free.exit36

onig_node_free.exit36:                            ; preds = %onig_node_free.exit, %bb.h
  %i.x = icmp eq ptr %.ph, null
  br i1 %i.x, label %onig_node_free.exit37, label %bb.i

bb.i:                                             ; preds = %onig_node_free.exit36
  tail call fastcc void @node_free_body(ptr noundef nonnull %.ph), !inline_history !101
  tail call void @free(ptr noundef nonnull %.ph) #26, !inline_history !101
  br label %onig_node_free.exit37

onig_node_free.exit37:                            ; preds = %bb.a, %bb.i, %onig_node_free.exit36, %bb.g
  %.019 = phi i32 [ 0, %bb.g ], [ -5, %bb.i ], [ -5, %onig_node_free.exit36 ], [ -5, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @is_allowed_callout_tag_name(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %.not = icmp ult ptr %1, %2
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.thread
  %.038 = phi ptr [ %1, %.preheader ], [ %i.l, %.thread ] ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.c = tail call i32 %i.b(ptr noundef %.038, ptr noundef nonnull %2) #26 ; 4 uses
  %i.d = and i32 %i.c, -33
  %i.e = add i32 %i.d, -65
  %or.cond34 = icmp ult i32 %i.e, 26
  br i1 %or.cond34, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add i32 %i.c, -48
  %or.cond5 = icmp ult i32 %i.f, 10
  %i.g = icmp eq i32 %i.c, 95
  %or.cond7 = or i1 %i.g, %or.cond5
  br i1 %or.cond7, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq ptr %.038, %1
  %or.cond9 = icmp samesign ult i32 %i.c, 58
  %or.cond35 = and i1 %i.h, %or.cond9
  br i1 %or.cond35, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.b, %bb.d
  %i.i = load ptr, ptr %0, align 8, !tbaa !84
  %i.j = tail call i32 %i.i(ptr noundef %.038) #26
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %.038, i64 %i.k ; 2 uses
  %i.m = icmp ult ptr %i.l, %2
  br i1 %i.m, label %bb.b, label %.loopexit, !llvm.loop !9

.loopexit:                                        ; preds = %.thread, %bb.d, %bb.c, %bb.a
  %.031 = phi i32 [ 0, %bb.a ], [ 1, %.thread ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.031
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -5, 1) i32 @reg_callout_list_entry(ptr %.72.val, ptr nofree noundef nonnull writeonly captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @onig_get_regex_ext(ptr noundef %.72.val) #26 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias dereferenceable_or_null(432) ptr @malloc(i64 noundef 432) #27 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.c
  store ptr %i.f, ptr %i.c, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 3, ptr %i.h, align 4, !tbaa !300
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !91 ; 4 uses
  %.phi.trans.insert1 = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.pre2 = load i32, ptr %.phi.trans.insert1, align 4, !tbaa !300 ; 2 uses
  %i.i = add nsw i32 %.pre, 1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.not = icmp slt i32 %.pre, %.pre2
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = shl nsw i32 %.pre2, 1                    ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.l, 144
  %i.n = tail call ptr @realloc(ptr noundef nonnull %i.d, i64 noundef %i.m) #28 ; 3 uses
  %.not41 = icmp eq ptr %i.n, null
  br i1 %.not41, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.n, ptr %i.c, align 8, !tbaa !92
  store i32 %i.k, ptr %i.j, align 4, !tbaa !300
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f, %bb.d
  %i.o = phi i32 [ %i.i, %bb.f ], [ %i.i, %bb.d ], [ 1, %.thread ] ; 2 uses
  %i.p = phi i32 [ %.pre, %bb.f ], [ %.pre, %bb.d ], [ 0, %.thread ]
  %i.q = phi ptr [ %i.n, %bb.f ], [ %i.d, %bb.d ], [ %i.f, %.thread ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [144 x i8], ptr %i.q, i64 %i.s ; 5 uses
  store i32 0, ptr %i.t, align 8, !tbaa !97
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 0, ptr %i.u, align 4, !tbaa !114
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !166
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store i32 %i.o, ptr %i.r, align 8, !tbaa !91
  store i32 %i.o, ptr %0, align 4, !tbaa !26
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.c, %bb.a, %bb.g
  %.1 = phi i32 [ -5, %bb.e ], [ -5, %bb.a ], [ 0, %bb.g ], [ -5, %bb.c ]
  ret i32 %.1
}

declare ptr @onig_get_regex_ext(ptr noundef) local_unnamed_addr #8

declare i32 @onig_ext_set_pattern(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @callout_tag_entry(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef range(i64 -2147483648, 2147483648) %4) unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.st_str_end_key, align 8     ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call ptr @onig_get_regex_ext(ptr noundef %1) #26 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %ext_ensure_tag_table.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @onig_st_init_table_with_size(ptr noundef nonnull @onig_st_init_strend_table_with_size.hashType, i32 noundef 5) #26 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %ext_ensure_tag_table.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.g, ptr %i.d, align 8, !tbaa !98
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.i = tail call ptr @onig_get_regex_ext(ptr noundef %1) #26 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %ext_ensure_tag_table.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !98   ; 3 uses
  %i.m = ptrtoint ptr %3 to i64
  %i.n = ptrtoint ptr %2 to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp slt i64 %i.o, 1
  br i1 %i.p, label %callout_tag_entry_raw.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 -1, ptr %i.a, align 8, !tbaa !100
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %callout_tag_find.exit.thread.i, label %callout_tag_find.exit.i
end_hunk_4
