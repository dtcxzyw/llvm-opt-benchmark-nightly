Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/getopt?download=true
begin_hunk_0_@getopt_test:bb.a
  store i32 99, ptr %i.m, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store i32 100, ptr %i.q, align 4
  store ptr null, ptr %i.r, align 8
  call fastcc void @getopt_long_test(i32 noundef 4, i32 noundef 6, ptr noundef %i.a, ptr noundef nonnull @.str.39, ptr noundef %0, ptr noundef %1) #11
  %puts10 = call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  store ptr null, ptr %i.a, align 16
  store <4 x ptr> <ptr @.str.1, ptr @.str.13, ptr @.str.3, ptr @.str.4>, ptr %i.b, align 8
  store ptr @.str.15, ptr %i.d, align 8
  store ptr @.str.6, ptr %i.e, align 16
  store ptr @.str.7, ptr %i.f, align 8
  store ptr null, ptr %i.g, align 16
  store ptr @.str.17, ptr %0, align 16
  store i32 0, ptr %i.v, align 8
  store ptr @g_flag, ptr %i.w, align 16
  store i32 98, ptr %i.x, align 8
  store ptr @.str.19, ptr %i.y, align 16
  store i32 2, ptr %i.z, align 8
  store ptr @g_flag, ptr %i.aa, align 16
  store i32 100, ptr %i.ab, align 8
  store ptr null, ptr %i.ac, align 16
  store i32 0, ptr %i.ad, align 8
  store ptr null, ptr %i.ae, align 16
  store i32 0, ptr %i.af, align 8
  store i32 97, ptr %1, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store i32 98, ptr %i.k, align 4
  store ptr null, ptr %i.l, align 8
  store <2 x i32> <i32 99, i32 0>, ptr %i.m, align 16
  store ptr @.str.4, ptr %i.o, align 8
  store <2 x i32> <i32 0, i32 100>, ptr %i.p, align 16
  store ptr @.str.6, ptr %i.r, align 8
  call fastcc void @getopt_longonly_test(ptr noundef %i.a, ptr noundef %0, ptr noundef %1) #11
  %puts11 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  store ptr null, ptr %i.a, align 16
  store ptr @.str.31, ptr %i.b, align 8
  store <4 x ptr> <ptr @.str.2, ptr @.str.14, ptr @.str.4, ptr @.str.5>, ptr %i.c, align 16
  store ptr @.str.6, ptr %i.e, align 16
  store ptr @.str.7, ptr %i.f, align 8
  store ptr null, ptr %i.g, align 16
  store ptr @.str.16, ptr %0, align 16
  store i32 0, ptr %i.v, align 8
  store ptr null, ptr %i.w, align 16
  store i32 97, ptr %i.x, align 8
  store ptr @.str.18, ptr %i.y, align 16
  store i32 1, ptr %i.z, align 8
  store ptr null, ptr %i.aa, align 16
  store i32 99, ptr %i.ab, align 8
  store ptr null, ptr %i.ac, align 16
  store i32 0, ptr %i.ad, align 8
  store ptr null, ptr %i.ae, align 16
  store i32 0, ptr %i.af, align 8
  store <2 x i32> <i32 97, i32 0>, ptr %1, align 16
  store ptr null, ptr %i.i, align 8
  store <2 x i32> <i32 98, i32 0>, ptr %i.j, align 16
  store ptr null, ptr %i.l, align 8
  store <2 x i32> <i32 99, i32 0>, ptr %i.m, align 16
  store ptr @.str.4, ptr %i.o, align 8
  store <2 x i32> <i32 100, i32 0>, ptr %i.p, align 16
  store ptr @.str.6, ptr %i.r, align 8
  call fastcc void @getopt_longonly_test(ptr noundef %i.a, ptr noundef %0, ptr noundef %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nofree noredzone nounwind optsize
declare dso_local noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: noredzone nounwind optsize uwtable
define internal fastcc void @getopt_short_test(i32 noundef range(i32 4, 6) %0, i32 noundef range(i32 7, 10) %1, ptr noundef nonnull %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @getoptargp() #12
  store ptr null, ptr %i.a, align 8
  %i.b = tail call i32 @getopt(i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.39) #12 ; 2 uses
  %.not12 = icmp eq i32 %i.b, -1
  br i1 %.not12, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %i.d = phi i32 [ %i.b, %.lr.ph.preheader ], [ %i.an, %bb.l ] ; 2 uses
  %i.e = tail call ptr @getoptindp() #12
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = tail call ptr @getoptindp() #12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp sgt i32 %i.i, %1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.k = tail call ptr @getoptindp() #12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.l) #11 ; 0 uses
  tail call void @__assert(ptr noundef nonnull @.str.33, i32 noundef 206, ptr noundef nonnull @.str.34) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %.not38 = icmp eq i32 %i.o, %i.d
  br i1 %.not38, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  %i.q = add nuw nsw i32 %i.p, 1
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %i.q, i32 noundef %i.d, i32 noundef %i.o) #11 ; 0 uses
  tail call void @__assert(ptr noundef nonnull @.str.33, i32 noundef 219, ptr noundef nonnull @.str.34) #13
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.v = tail call ptr @getoptargp() #12
  %i.w = load ptr, ptr %i.v, align 8
  %.not39 = icmp eq ptr %i.w, null
  br i1 %.not39, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.pr = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not40 = icmp eq ptr %.pr, null
  br i1 %.not40, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.f, %bb.h
  %i.x = phi ptr [ %.pr, %bb.h ], [ %i.t, %bb.f ]
  %i.y = tail call ptr @getoptargp() #12
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull %i.x, ptr noundef %i.z) #11
  %.not41 = icmp eq i32 %i.aa, 0
  br i1 %.not41, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.thread, %bb.g
  %i.ab = tail call ptr @getoptargp() #12
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call ptr @getoptargp() #12
  %i.af = load ptr, ptr %i.ae, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ag = phi ptr [ %i.af, %bb.j ], [ @.str.37, %bb.i ]
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  %i.ai = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  %spec.select = select i1 %i.aj, ptr @.str.37, ptr %i.ai
  %i.ak = add nuw nsw i32 %i.ah, 1
  %i.al = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %i.ak, ptr noundef %i.ag, ptr noundef nonnull %spec.select) #11 ; 0 uses
  tail call void @__assert(ptr noundef nonnull @.str.33, i32 noundef 231, ptr noundef nonnull @.str.34) #13
  unreachable

bb.l:                                             ; preds = %bb.h, %.thread
  %i.am = tail call ptr @getoptargp() #12
  store ptr null, ptr %i.am, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.an = tail call i32 @getopt(i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.39) #12 ; 2 uses
  %i.ao = icmp ne i32 %i.an, -1
  %i.ap = icmp samesign ult i64 %indvars.iv.next, %i.c
  %i.aq = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %i.aq, label %.lr.ph, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.l
  %i.ar = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  %.not = icmp eq i32 %0, %i.ar
  br i1 %.not, label %bb.m, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.0.lcssa34 = phi i32 [ %i.ar, %._crit_edge ], [ 0, %bb.a ]
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %.0.lcssa34, i32 noundef %0) #11 ; 0 uses
  tail call void @__assert(ptr noundef nonnull @.str.33, i32 noundef 245, ptr noundef nonnull @.str.34) #13
  unreachable

bb.m:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal fastcc void @getopt_long_test(i32 noundef range(i32 4, 6) %0, i32 noundef range(i32 6, 10) %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr nofree noundef nonnull readonly captures(none) %5) unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @getoptargp() #12
  store ptr null, ptr %i.a, align 8
  store i32 0, ptr @g_flag, align 4
  %i.b = tail call i32 @getopt_long(i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef null) #12 ; 2 uses
  %.not18 = icmp eq i32 %i.b, -1
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.o
  %6 = phi i32 [ %i.aq, %bb.o ], [ %i.b, %bb.a ]  ; 2 uses
  %i.c = phi i32 [ %8, %bb.o ], [ 0, %bb.a ]      ; 6 uses
  %i.d = tail call ptr @getoptindp() #12
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = tail call ptr @getoptindp() #12
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp sgt i32 %i.h, %1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.j = tail call ptr @getoptindp() #12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.k) #11 ; 0 uses
  tail call void @__assert(ptr noundef nonnull @.str.33, i32 noundef 275, ptr noundef nonnull @.str.34) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = icmp samesign ult i32 %i.c, %0
  br i1 %i.m, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %7 = zext nneg i32 %i.c to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %7 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %.not46 = icmp eq i32 %i.o, %6
  br i1 %.not46, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw nsw i32 %i.c, 1
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %i.p, i32 noundef %6, i32 noundef %i.o) #11 ; 0 uses
  tail call void @__assert(ptr noundef nonnull @.str.33, i32 noundef 288, ptr noundef nonnull @.str.34) #13
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = load i32, ptr @g_flag, align 4           ; 2 uses
  %.not47 = icmp eq i32 %i.s, %i.t
  br i1 %.not47, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add nuw nsw i32 %i.c, 1
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %i.u, i32 noundef %i.s, i32 noundef %i.t) #11 ; 0 uses
  tail call void @__assert(ptr noundef nonnull @.str.33, i32 noundef 295, ptr noundef nonnull @.str.34) #13
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.z = tail call ptr @getoptargp() #12
  %i.aa = load ptr, ptr %i.z, align 8
  %.not48 = icmp eq ptr %i.aa, null
  br i1 %.not48, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.pr = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not49 = icmp eq ptr %.pr, null
  br i1 %.not49, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.i, %bb.k
  %i.ab = phi ptr [ %.pr, %bb.k ], [ %i.x, %bb.i ]
  %i.ac = tail call ptr @getoptargp() #12
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull %i.ab, ptr noundef %i.ad) #11
  %.not50 = icmp eq i32 %i.ae, 0
  br i1 %.not50, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.j
  %i.af = tail call ptr @getoptargp() #12
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = tail call ptr @getoptargp() #12
  %i.aj = load ptr, ptr %i.ai, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ak = phi ptr [ %i.aj, %bb.m ], [ @.str.37, %bb.l ]
  %i.al = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  %spec.select = select i1 %i.am, ptr @.str.37, ptr %i.al
  %i.an = add nuw nsw i32 %i.c, 1
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %i.an, ptr noundef %i.ak, ptr noundef nonnull %spec.select) #11 ; 0 uses
  tail call void @__assert(ptr noundef nonnull @.str.33, i32 noundef 307, ptr noundef nonnull @.str.34) #13
  unreachable

bb.o:                                             ; preds = %bb.k, %.thread, %bb.d
  %i.ap = tail call ptr @getoptargp() #12
  store ptr null, ptr %i.ap, align 8
  store i32 0, ptr @g_flag, align 4
  %8 = add nuw nsw i32 %i.c, 1                    ; 2 uses
  %i.aq = tail call i32 @getopt_long(i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef null) #12 ; 2 uses
  %.not = icmp eq i32 %i.aq, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.o, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %8, %bb.o ] ; 3 uses
  %.not44 = icmp eq i32 %.0.lcssa, %0
  %i.ar = add nuw nsw i32 %0, 1
  %.not45 = icmp eq i32 %.0.lcssa, %i.ar
  %or.cond = select i1 %.not44, i1 true, i1 %.not45
  br i1 %or.cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %.0.lcssa, i32 noundef %0) #11 ; 0 uses
  tail call void @__assert(ptr noundef nonnull @.str.33, i32 noundef 322, ptr noundef nonnull @.str.34) #13
  unreachable

bb.q:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal fastcc void @getopt_longonly_test(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @getoptargp() #12
  store ptr null, ptr %i.a, align 8
  store i32 0, ptr @g_flag, align 4
  %i.b = tail call i32 @getopt_long_only(i32 noundef 8, ptr noundef nonnull %0, ptr noundef nonnull @.str.39, ptr noundef nonnull %1, ptr noundef null) #12 ; 2 uses
  %.not18 = icmp eq i32 %i.b, -1
  br i1 %.not18, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.o
  %3 = phi i32 [ %i.aq, %bb.o ], [ %i.b, %bb.a ]  ; 2 uses
  %i.c = phi i32 [ %5, %bb.o ], [ 0, %bb.a ]      ; 6 uses
  %i.d = tail call ptr @getoptindp() #12
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = tail call ptr @getoptindp() #12
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp sgt i32 %i.h, 8
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.j = tail call ptr @getoptindp() #12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.k) #11 ; 0 uses
  tail call void @__assert(ptr noundef nonnull @.str.33, i32 noundef 352, ptr noundef nonnull @.str.34) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = icmp samesign ult i32 %i.c, 4
  br i1 %i.m, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %4 = zext nneg i32 %i.c to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %4 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %.not46 = icmp eq i32 %i.o, %3
  br i1 %.not46, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw nsw i32 %i.c, 1
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %i.p, i32 noundef %3, i32 noundef %i.o) #11 ; 0 uses
  tail call void @__assert(ptr noundef nonnull @.str.33, i32 noundef 365, ptr noundef nonnull @.str.34) #13
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = load i32, ptr @g_flag, align 4           ; 2 uses
  %.not47 = icmp eq i32 %i.s, %i.t
  br i1 %.not47, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add nuw nsw i32 %i.c, 1
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %i.u, i32 noundef %i.s, i32 noundef %i.t) #11 ; 0 uses
  tail call void @__assert(ptr noundef nonnull @.str.33, i32 noundef 372, ptr noundef nonnull @.str.34) #13
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.z = tail call ptr @getoptargp() #12
  %i.aa = load ptr, ptr %i.z, align 8
  %.not48 = icmp eq ptr %i.aa, null
  br i1 %.not48, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.pr = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not49 = icmp eq ptr %.pr, null
  br i1 %.not49, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.i, %bb.k
  %i.ab = phi ptr [ %.pr, %bb.k ], [ %i.x, %bb.i ]
  %i.ac = tail call ptr @getoptargp() #12
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull %i.ab, ptr noundef %i.ad) #11
  %.not50 = icmp eq i32 %i.ae, 0
  br i1 %.not50, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.j
  %i.af = tail call ptr @getoptargp() #12
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = tail call ptr @getoptargp() #12
  %i.aj = load ptr, ptr %i.ai, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ak = phi ptr [ %i.aj, %bb.m ], [ @.str.37, %bb.l ]
  %i.al = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  %spec.select = select i1 %i.am, ptr @.str.37, ptr %i.al
  %i.an = add nuw nsw i32 %i.c, 1
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %i.an, ptr noundef %i.ak, ptr noundef nonnull %spec.select) #11 ; 0 uses
  tail call void @__assert(ptr noundef nonnull @.str.33, i32 noundef 384, ptr noundef nonnull @.str.34) #13
  unreachable

bb.o:                                             ; preds = %bb.k, %.thread, %bb.d
  %i.ap = tail call ptr @getoptargp() #12
  store ptr null, ptr %i.ap, align 8
  store i32 0, ptr @g_flag, align 4
  %5 = add nuw nsw i32 %i.c, 1                    ; 3 uses
  %i.aq = tail call i32 @getopt_long_only(i32 noundef 8, ptr noundef nonnull %0, ptr noundef nonnull @.str.39, ptr noundef nonnull %1, ptr noundef null) #12 ; 2 uses
  %.not = icmp eq i32 %i.aq, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.o
  %i.ar = and i32 %5, 2147483646
  %switch = icmp eq i32 %i.ar, 4
  br i1 %switch, label %bb.p, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.0.lcssa46 = phi i32 [ %5, %._crit_edge ], [ 0, %bb.a ]
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %.0.lcssa46, i32 noundef 4) #11 ; 0 uses
  tail call void @__assert(ptr noundef nonnull @.str.33, i32 noundef 399, ptr noundef nonnull @.str.34) #13
  unreachable

bb.p:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: noredzone optsize
declare dso_local ptr @getoptargp() local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local ptr @getoptindp() local_unnamed_addr #5

; Function Attrs: noredzone noreturn optsize
declare dso_local void @__assert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noredzone optsize
declare dso_local i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local i32 @getopt_long_only(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noredzone nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noredzone noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-strcmp" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noredzone optsize }
attributes #12 = { noredzone nounwind optsize }
attributes #13 = { noredzone noreturn nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
end_hunk_0
