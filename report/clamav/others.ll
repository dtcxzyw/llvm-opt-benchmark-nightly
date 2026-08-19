inline.NumInlined: 32
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cli_recursion_stack_change_type:bb.a
  %.not29 = icmp eq i32 %i.k, 0
  br i1 %.not29, label %bb.f, label %bb.ar

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !124
  %i.n = load i32, ptr %i.m, align 4, !tbaa !127
  %i.o = and i32 %i.n, 2
  %.not30 = icmp eq i32 %i.o, 0
  br i1 %.not30, label %.thread35, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !129  ; 2 uses
  %.not31 = icmp eq ptr %i.q, null
  br i1 %.not31, label %.thread35, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @cli_ftname(i32 noundef %1) #22
  %i.s = tail call i32 @cli_jsonstr(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.112, ptr noundef %i.r) #22 ; 3 uses
  switch i32 %i.s, label %bb.ap [
    i32 0, label %.thread35
    i32 34, label %bb.ao
    i32 1, label %bb.aq
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.k
    i32 5, label %bb.l
    i32 6, label %bb.m
    i32 7, label %bb.n
    i32 27, label %bb.o
    i32 8, label %bb.p
    i32 9, label %bb.q
    i32 10, label %bb.r
    i32 11, label %bb.s
    i32 12, label %bb.t
    i32 13, label %bb.u
    i32 14, label %bb.v
    i32 15, label %bb.w
    i32 16, label %bb.x
    i32 17, label %bb.y
    i32 18, label %bb.z
    i32 19, label %bb.aa
    i32 20, label %bb.ab
    i32 21, label %bb.ac
    i32 22, label %bb.ad
    i32 23, label %bb.ae
    i32 24, label %bb.af
    i32 25, label %bb.ag
    i32 26, label %bb.ah
    i32 28, label %bb.ai
    i32 29, label %bb.aj
    i32 30, label %bb.ak
    i32 31, label %bb.al
    i32 32, label %bb.am
    i32 33, label %bb.an
  ]

bb.i:                                             ; preds = %bb.h
  br label %bb.aq

bb.j:                                             ; preds = %bb.h
  br label %bb.aq

bb.k:                                             ; preds = %bb.h
  br label %bb.aq

bb.l:                                             ; preds = %bb.h
  br label %bb.aq

bb.m:                                             ; preds = %bb.h
  br label %bb.aq

bb.n:                                             ; preds = %bb.h
  br label %bb.aq

bb.o:                                             ; preds = %bb.h
  br label %bb.aq

bb.p:                                             ; preds = %bb.h
  br label %bb.aq

bb.q:                                             ; preds = %bb.h
  br label %bb.aq

bb.r:                                             ; preds = %bb.h
  br label %bb.aq

bb.s:                                             ; preds = %bb.h
  br label %bb.aq

bb.t:                                             ; preds = %bb.h
  br label %bb.aq

bb.u:                                             ; preds = %bb.h
  br label %bb.aq

bb.v:                                             ; preds = %bb.h
  br label %bb.aq

bb.w:                                             ; preds = %bb.h
  br label %bb.aq

bb.x:                                             ; preds = %bb.h
  br label %bb.aq

bb.y:                                             ; preds = %bb.h
  br label %bb.aq

bb.z:                                             ; preds = %bb.h
  br label %bb.aq

bb.aa:                                            ; preds = %bb.h
  br label %bb.aq

bb.ab:                                            ; preds = %bb.h
  br label %bb.aq

bb.ac:                                            ; preds = %bb.h
  br label %bb.aq

bb.ad:                                            ; preds = %bb.h
  br label %bb.aq

bb.ae:                                            ; preds = %bb.h
  br label %bb.aq

bb.af:                                            ; preds = %bb.h
  br label %bb.aq

bb.ag:                                            ; preds = %bb.h
  br label %bb.aq

bb.ah:                                            ; preds = %bb.h
  br label %bb.aq

bb.ai:                                            ; preds = %bb.h
  br label %bb.aq

bb.aj:                                            ; preds = %bb.h
  br label %bb.aq

bb.ak:                                            ; preds = %bb.h
  br label %bb.aq

bb.al:                                            ; preds = %bb.h
  br label %bb.aq

bb.am:                                            ; preds = %bb.h
  br label %bb.aq

bb.an:                                            ; preds = %bb.h
  br label %bb.aq

bb.ao:                                            ; preds = %bb.h
  br label %bb.aq

bb.ap:                                            ; preds = %bb.h
  br label %bb.aq

bb.aq:                                            ; preds = %bb.h, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.0.i = phi ptr [ @.str.35, %bb.ap ], [ @.str.34, %bb.ao ], [ @.str.33, %bb.an ], [ @.str.2, %bb.i ], [ @.str.3, %bb.j ], [ @.str.4, %bb.k ], [ @.str.5, %bb.l ], [ @.str.6, %bb.m ], [ @.str.7, %bb.n ], [ @.str.8, %bb.o ], [ @.str.9, %bb.p ], [ @.str.10, %bb.q ], [ @.str.11, %bb.r ], [ @.str.12, %bb.s ], [ @.str.13, %bb.t ], [ @.str.14, %bb.u ], [ @.str.15, %bb.v ], [ @.str.16, %bb.w ], [ @.str.17, %bb.x ], [ @.str.18, %bb.y ], [ @.str.19, %bb.z ], [ @.str.20, %bb.aa ], [ @.str.21, %bb.ab ], [ @.str.22, %bb.ac ], [ @.str.23, %bb.ad ], [ @.str.24, %bb.ae ], [ @.str.25, %bb.af ], [ @.str.26, %bb.ag ], [ @.str.27, %bb.ah ], [ @.str.28, %bb.ai ], [ @.str.29, %bb.aj ], [ @.str.30, %bb.ak ], [ @.str.31, %bb.al ], [ @.str.32, %bb.am ], [ @.str.1, %bb.h ]
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.130, ptr noundef nonnull %.0.i) #22
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.e
  %.2 = phi i32 [ %i.s, %bb.aq ], [ %i.k, %bb.e ] ; 2 uses
  %i.t = icmp eq i32 %.2, 34
  br i1 %i.t, label %.thread35.sink.split, label %.thread35

.thread35.sink.split:                             ; preds = %bb.ar, %bb.a, %bb.b, %bb.c
  %.str.129.sink = phi ptr [ @.str.129, %bb.a ], [ @.str.129, %bb.c ], [ @.str.129, %bb.b ], [ @.str.131, %bb.ar ]
  %.237.ph = phi i32 [ 3, %bb.a ], [ 3, %bb.c ], [ 3, %bb.b ], [ 34, %bb.ar ]
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull %.str.129.sink) #22
  br label %.thread35

.thread35:                                        ; preds = %.thread35.sink.split, %bb.h, %bb.f, %bb.g, %bb.ar
  %.237 = phi i32 [ %i.s, %bb.h ], [ %.2, %bb.ar ], [ 0, %bb.f ], [ 0, %bb.g ], [ %.237.ph, %.thread35.sink.split ]
  ret i32 %.237
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @cli_recursion_stack_get_type(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !145  ; 5 uses
  %i.c = icmp slt i32 %1, 0
  %i.d = add i32 %i.b, 1                          ; 2 uses
  %i.e = select i1 %i.c, i32 %i.d, i32 0
  %.015.i = add i32 %i.e, %1                      ; 3 uses
  %i.f = icmp sgt i32 %.015.i, %i.b
  br i1 %i.f, label %recursion_stack_get.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.g = icmp sgt i32 %i.b, 0
  br i1 %i.g, label %.lr.ph.i, label %recursion_stack_get.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !144
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.020.i = phi i32 [ %i.b, %.lr.ph.i ], [ %3, %bb.b ] ; 4 uses
  %.119.i = phi i32 [ %.015.i, %.lr.ph.i ], [ %spec.select.i, %bb.b ]
  %2 = zext nneg i32 %.020.i to i64
  %i.j = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %2
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.l = load i32, ptr %i.k, align 4, !tbaa !161
  %i.m = and i32 %i.l, 1
  %spec.select.i = sub nsw i32 %.119.i, %i.m      ; 3 uses
  %3 = add nsw i32 %.020.i, -1
  %i.n = icmp sgt i32 %.020.i, %spec.select.i
  %i.o = icmp samesign ugt i32 %.020.i, 1
  %i.p = and i1 %i.o, %i.n
  br i1 %i.p, label %bb.b, label %recursion_stack_get.exit

recursion_stack_get.exit:                         ; preds = %bb.b, %bb.a, %.preheader.i
  %.3.i = phi i32 [ %i.d, %bb.a ], [ %.015.i, %.preheader.i ], [ %spec.select.i, %bb.b ] ; 3 uses
  %i.q = icmp slt i32 %.3.i, 0
  br i1 %i.q, label %bb.e, label %bb.c

bb.c:                                             ; preds = %recursion_stack_get.exit
  %i.r = icmp ult i32 %i.b, %.3.i
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !144
  %i.u = zext nneg i32 %.3.i to i64
  %i.v = getelementptr inbounds nuw [104 x i8], ptr %i.t, i64 %i.u
  %i.w = load i32, ptr %i.v, align 8, !tbaa !155
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %recursion_stack_get.exit, %bb.d
  %.0 = phi i32 [ %i.w, %bb.d ], [ 0, %recursion_stack_get.exit ], [ 587, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @cli_recursion_stack_get_size(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !145  ; 5 uses
  %i.c = icmp slt i32 %1, 0
  %i.d = add i32 %i.b, 1                          ; 2 uses
  %i.e = select i1 %i.c, i32 %i.d, i32 0
  %.015.i = add i32 %i.e, %1                      ; 3 uses
  %i.f = icmp sgt i32 %.015.i, %i.b
  br i1 %i.f, label %recursion_stack_get.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.g = icmp sgt i32 %i.b, 0
  br i1 %i.g, label %.lr.ph.i, label %recursion_stack_get.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !144
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.020.i = phi i32 [ %i.b, %.lr.ph.i ], [ %3, %bb.b ] ; 4 uses
  %.119.i = phi i32 [ %.015.i, %.lr.ph.i ], [ %spec.select.i, %bb.b ]
  %2 = zext nneg i32 %.020.i to i64
  %i.j = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %2
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.l = load i32, ptr %i.k, align 4, !tbaa !161
  %i.m = and i32 %i.l, 1
  %spec.select.i = sub nsw i32 %.119.i, %i.m      ; 3 uses
  %3 = add nsw i32 %.020.i, -1
  %i.n = icmp sgt i32 %.020.i, %spec.select.i
  %i.o = icmp samesign ugt i32 %.020.i, 1
  %i.p = and i1 %i.o, %i.n
  br i1 %i.p, label %bb.b, label %recursion_stack_get.exit

recursion_stack_get.exit:                         ; preds = %bb.b, %bb.a, %.preheader.i
  %.3.i = phi i32 [ %i.d, %bb.a ], [ %.015.i, %.preheader.i ], [ %spec.select.i, %bb.b ] ; 3 uses
  %i.q = icmp slt i32 %.3.i, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %recursion_stack_get.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !144
  br label %.sink.split

bb.d:                                             ; preds = %recursion_stack_get.exit
  %i.t = icmp ult i32 %i.b, %.3.i
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !144
  %i.w = zext nneg i32 %.3.i to i64
  %i.x = getelementptr inbounds nuw [104 x i8], ptr %i.v, i64 %i.w
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.e
  %.sink10 = phi ptr [ %i.x, %bb.e ], [ %i.s, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sink10, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !156
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  %.0 = phi i64 [ 0, %bb.d ], [ %i.z, %.sink.split ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @cli_rmdirs(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 3 uses
  %1 = alloca %struct.stat, align 8               ; 4 uses
  %2 = alloca %struct.stat, align 8               ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.c = tail call i32 @chmod(ptr noundef %0, i32 noundef 448) #22 ; 0 uses
  %i.d = tail call noalias ptr @opendir(ptr noundef %0) ; 10 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.q, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = call i32 @stat(ptr noundef %0, ptr noundef nonnull %1) #22
  %.not3673 = icmp eq i32 %i.e, -1
  br i1 %.not3673, label %._crit_edge75, label %.lr.ph74

.lr.ph74:                                         ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph74, %._crit_edge
  %i.g = tail call i32 @rmdir(ptr noundef %0) #22
  %.not37 = icmp eq i32 %i.g, 0
  br i1 %.not37, label %._crit_edge75, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__errno_location() #25    ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9    ; 2 uses
  switch i32 %i.i, label %bb.d [
    i32 39, label %bb.e
    i32 17, label %bb.e
    i32 9, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @cli_strerror(i32 noundef %i.i, ptr noundef nonnull %i.b, i64 noundef 128) #22
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.132, ptr noundef %0, ptr noundef %i.j) #22
  %i.k = call i32 @closedir(ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.q

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.l = tail call ptr @readdir(ptr noundef nonnull %i.d) #22 ; 2 uses
  %.not4172 = icmp eq ptr %i.l, null
  br i1 %.not4172, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.p
  %i.m = phi ptr [ %i.az, %bb.p ], [ %i.l, %bb.e ] ; 5 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !176
  %.not42 = icmp eq i64 %i.n, 0
  br i1 %.not42, label %bb.p, label %sub_0

sub_0:                                            ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 19 ; 4 uses
  %i.p = load i8, ptr %i.o, align 1
  %.not77 = icmp eq i8 %i.p, 46
  br i1 %.not77, label %.tail, label %.tail51.thread

.tail:                                            ; preds = %sub_0
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.r = load i8, ptr %i.q, align 4
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.p, label %sub_153

sub_153:                                          ; preds = %.tail
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.u = load i8, ptr %i.t, align 4
  %.not79 = icmp eq i8 %i.u, 46
  br i1 %.not79, label %.tail51, label %.tail51.thread

.tail51:                                          ; preds = %sub_153
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 21
  %i.w = load i8, ptr %i.v, align 1
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.p, label %.tail51.thread

.tail51.thread:                                   ; preds = %sub_0, %sub_153, %.tail51
  %i.y = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %i.z = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #26
  %i.aa = add i64 %i.y, 2
  %i.ab = add i64 %i.aa, %i.z
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.ab) #24 ; 12 uses
  %.not45 = icmp eq ptr %i.ac, null
  br i1 %.not45, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.tail51.thread
  %i.ad = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %i.ae = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #26
  %i.af = add i64 %i.ad, 2
  %i.ag = add i64 %i.af, %i.ae
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.135, i64 noundef %i.ag) #22
  %i.ah = tail call i32 @closedir(ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.q

bb.g:                                             ; preds = %.tail51.thread
  %i.ai = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ac, ptr noundef nonnull dereferenceable(1) @.str.136, ptr noundef nonnull %0, ptr noundef nonnull %i.o) #22 ; 0 uses
  %i.aj = call i32 @lstat(ptr noundef nonnull %i.ac, ptr noundef nonnull %2) #22
  %.not46 = icmp eq i32 %i.aj, -1
  br i1 %.not46, label %cli_unlink.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load i32, ptr %i.f, align 8, !tbaa !179
  %i.al = and i32 %i.ak, 61440
  %i.am = icmp eq i32 %i.al, 16384
  br i1 %i.am, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.an = tail call i32 @rmdir(ptr noundef nonnull %i.ac) #22
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %bb.j, label %cli_unlink.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ap = load i32, ptr %i.h, align 4, !tbaa !9
  %i.aq = icmp eq i32 %i.ap, 13
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.137) #22
  %i.ar = tail call i32 @closedir(ptr noundef nonnull %i.d) ; 0 uses
  tail call void @free(ptr noundef nonnull %i.ac) #22
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.as = tail call i32 @cli_rmdirs(ptr noundef nonnull %i.ac)
  %.not48 = icmp eq i32 %i.as, 0
  br i1 %.not48, label %cli_unlink.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.138, ptr noundef nonnull %i.ac) #22
  tail call void @free(ptr noundef nonnull %i.ac) #22
  %i.at = tail call i32 @closedir(ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.q

bb.n:                                             ; preds = %bb.h
  %i.au = tail call i32 @unlink(ptr noundef nonnull %i.ac) #22
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %bb.o, label %cli_unlink.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.aw = load i32, ptr %i.h, align 4, !tbaa !9
  %i.ax = call ptr @cli_strerror(i32 noundef %i.aw, ptr noundef nonnull %i.a, i64 noundef 128) #22
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.83, ptr noundef nonnull %i.ac, ptr noundef %i.ax) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @free(ptr noundef nonnull %i.ac) #22
  %i.ay = call i32 @closedir(ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.q

cli_unlink.exit.thread:                           ; preds = %bb.n, %bb.l, %bb.i, %bb.g
  tail call void @free(ptr noundef nonnull %i.ac) #22
  br label %bb.p

bb.p:                                             ; preds = %.tail, %.tail51, %cli_unlink.exit.thread, %.lr.ph
  %i.az = tail call ptr @readdir(ptr noundef nonnull %i.d) #22 ; 2 uses
  %.not41 = icmp eq ptr %i.az, null
  br i1 %.not41, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.p, %bb.e
  tail call void @rewinddir(ptr noundef nonnull %i.d) #22
  %i.ba = call i32 @stat(ptr noundef %0, ptr noundef nonnull %1) #22
  %.not36 = icmp eq i32 %i.ba, -1
  br i1 %.not36, label %._crit_edge75, label %bb.b
end_hunk_0
