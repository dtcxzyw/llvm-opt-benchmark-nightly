Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/schema?download=true
begin_hunk_0_@ArrowSchemaSetTypeDecimal:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %ArrowSchemaSetFormat.exit
  %.1 = phi i32 [ %.019, %ArrowSchemaSetFormat.exit ], [ 22, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 23) i32 @ArrowSchemaSetTypeRunEndEncoded(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  switch i32 %1, label %ArrowSchemaSetFormat.exit [
    i32 6, label %bb.b
    i32 8, label %bb.b
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ArrowFree(ptr noundef nonnull %i.a) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.b = tail call ptr @ArrowMalloc(i64 noundef 3) #17 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !18
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %ArrowSchemaSetFormat.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.b, ptr noundef nonnull align 1 dereferenceable(3) @.str.67, i64 3, i1 false)
  %i.d = tail call fastcc i32 @ArrowSchemaInitChildrenIfNeeded(ptr noundef nonnull %0, i32 noundef 39) ; 2 uses
  %.not24.not = icmp eq i32 %i.d, 0
  br i1 %.not24.not, label %bb.f, label %ArrowSchemaSetFormat.exit

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = tail call i32 @ArrowSchemaSetType(ptr noundef %i.g, i32 noundef %1) ; 2 uses
  %.not25.not = icmp eq i32 %i.h, 0
  br i1 %.not25.not, label %bb.g, label %ArrowSchemaSetFormat.exit

bb.g:                                             ; preds = %bb.f
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18   ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %ArrowSchemaSetType.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ArrowFree(ptr noundef nonnull %i.l) #17, !inline_history !28
  br label %ArrowSchemaSetType.exit

ArrowSchemaSetType.exit:                          ; preds = %bb.g, %bb.h
  store ptr null, ptr %i.k, align 8, !tbaa !18
  br label %ArrowSchemaSetFormat.exit

ArrowSchemaSetFormat.exit:                        ; preds = %bb.d, %ArrowSchemaSetType.exit, %bb.f, %bb.e, %bb.a
  %.4 = phi i32 [ %i.d, %bb.e ], [ 22, %bb.a ], [ 0, %ArrowSchemaSetType.exit ], [ %i.h, %bb.f ], [ 12, %bb.d ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define range(i32 0, 35) i32 @ArrowSchemaSetTypeDateTime(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 9 uses
  %i.b = icmp ult i32 %2, 4
  br i1 %i.b, label %switch.lookup, label %ArrowTimeUnitFormatString.exit

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i32 %2 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ArrowSchemaSetTypeDateTime, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  switch i32 %1, label %ArrowSchemaSetFormat.exit [
    i32 20, label %bb.b
    i32 21, label %bb.d
    i32 19, label %bb.f
    i32 34, label %bb.g
  ]

bb.b:                                             ; preds = %switch.lookup
  %.not23 = icmp ne ptr %3, null
  %switch = icmp ugt i32 %2, 1
  %or.cond = or i1 %.not23, %switch
  br i1 %or.cond, label %ArrowSchemaSetFormat.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.6, ptr noundef nonnull %switch.load) #17
  br label %bb.i

bb.d:                                             ; preds = %switch.lookup
  %.not22 = icmp ne ptr %3, null
  %switch24 = icmp samesign ult i32 %2, 2
  %or.cond25 = or i1 %switch24, %.not22
  br i1 %or.cond25, label %ArrowSchemaSetFormat.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.6, ptr noundef nonnull %switch.load) #17
  br label %bb.i

bb.f:                                             ; preds = %switch.lookup
  %i.f = icmp eq ptr %3, null
  %spec.store.select = select i1 %i.f, ptr @.str.7, ptr %3
  %i.g = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.8, ptr noundef nonnull %switch.load, ptr noundef nonnull %spec.store.select) #17
  br label %bb.i

bb.g:                                             ; preds = %switch.lookup
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.h, label %ArrowSchemaSetFormat.exit

bb.h:                                             ; preds = %bb.g
  %i.h = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.9, ptr noundef nonnull %switch.load) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ %i.e, %bb.e ], [ %i.g, %bb.f ], [ %i.h, %bb.h ] ; 2 uses
  %i.i = icmp ugt i32 %.0, 127
  br i1 %i.i, label %ArrowSchemaSetFormat.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = zext nneg i32 %.0 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j
  store i8 0, ptr %i.k, align 1, !tbaa !29
  %i.l = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @ArrowFree(ptr noundef nonnull %i.l) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.m = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.a) #18
  %i.n = add i64 %i.m, 1                          ; 2 uses
  %i.o = tail call ptr @ArrowMalloc(i64 noundef %i.n) #17 ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !18
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %ArrowSchemaSetFormat.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 16 %i.a, i64 %i.n, i1 false)
  br label %ArrowSchemaSetFormat.exit

ArrowSchemaSetFormat.exit:                        ; preds = %.thread.i, %bb.l, %bb.i, %switch.lookup, %bb.g, %bb.d, %bb.b
  %.019 = phi i32 [ 22, %bb.g ], [ 22, %bb.d ], [ 22, %switch.lookup ], [ 34, %bb.i ], [ 22, %bb.b ], [ 12, %bb.l ], [ 0, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %ArrowTimeUnitFormatString.exit

ArrowTimeUnitFormatString.exit:                   ; preds = %bb.a, %ArrowSchemaSetFormat.exit
  %.1 = phi i32 [ %.019, %ArrowSchemaSetFormat.exit ], [ 22, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 35) i32 @ArrowSchemaSetTypeUnion(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 9 uses
  %or.cond = icmp ugt i64 %2, 127
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  switch i32 %1, label %ArrowSchemaSetFormat.exit [
    i32 28, label %bb.c
    i32 29, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.10, i64 5, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.11, i64 5, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.not = icmp eq i64 %2, 0                       ; 2 uses
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 48, ptr %i.b, align 4
  %.not92 = icmp eq i64 %2, 1
  br i1 %.not92, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.d = icmp slt i32 %i.e, 0
  br i1 %i.d, label %ArrowSchemaSetFormat.exit, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.15379 = phi i64 [ %i.h, %.lr.ph ], [ 507, %.lr.ph.preheader ] ; 2 uses
  %.05478 = phi i64 [ %i.i, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.15877 = phi ptr [ %i.g, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.e = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.15877, i64 noundef %.15379, ptr noundef nonnull @.str.13, i64 noundef %.05478) #17 ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.15877, i64 %i.f
  %i.h = sub nsw i64 %.15379, %i.f
  %i.i = add nuw nsw i64 %.05478, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.critedge:                                        ; preds = %bb.f, %bb.e, %._crit_edge
  %i.j = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge
  tail call void @ArrowFree(ptr noundef nonnull %i.j) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge
  %i.k = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.a) #18
  %i.l = add i64 %i.k, 1                          ; 2 uses
  %i.m = tail call ptr @ArrowMalloc(i64 noundef %i.l) #17 ; 3 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !18
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %ArrowSchemaSetFormat.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 16 %i.a, i64 %i.l, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %.not.i66 = icmp ne ptr %i.p, null              ; 2 uses
  %brmerge = or i1 %.not.i66, %.not
  %.mux = select i1 %.not.i66, i32 17, i32 0
  br i1 %brmerge, label %ArrowSchemaSetFormat.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = shl nuw nsw i64 %2, 3                    ; 2 uses
  %i.r = tail call ptr @ArrowMalloc(i64 noundef %i.q) #17 ; 3 uses
  store ptr %i.r, ptr %i.o, align 8, !tbaa !21
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %ArrowSchemaSetFormat.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.t, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.r, i8 0, i64 %i.q, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %.01924.i = phi i64 [ %i.z, %bb.k ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.u = tail call ptr @ArrowMalloc(i64 noundef 72) #17 ; 3 uses
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.01924.i
  store ptr %i.u, ptr %i.w, align 8, !tbaa !23
  %i.x = icmp eq ptr %i.u, null
  br i1 %i.x, label %ArrowSchemaSetFormat.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr null, ptr %i.y, align 8, !tbaa !17
  %i.z = add nuw nsw i64 %.01924.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %2
  br i1 %exitcond.not.i, label %.lr.ph81.preheader, label %.lr.ph.i

.lr.ph81.preheader:                               ; preds = %bb.k
  %xtraiter = and i64 %2, 1
  %i.aa = icmp eq i64 %2, 1
  br i1 %i.aa, label %.lr.ph81.epil.preheader, label %.lr.ph81.preheader.new

.lr.ph81.preheader.new:                           ; preds = %.lr.ph81.preheader
  %unroll_iter = and i64 %2, 126
  br label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81, %.lr.ph81.preheader.new
  %.080 = phi i64 [ 0, %.lr.ph81.preheader.new ], [ %i.aq, %.lr.ph81 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph81.preheader.new ], [ %niter.next.1, %.lr.ph81 ]
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.080
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !23 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  store i64 2, ptr %i.ae, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  store ptr null, ptr %i.ag, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  store ptr @ArrowSchemaReleaseInternal, ptr %i.ah, align 8, !tbaa !17
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.080
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !23 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  store i64 2, ptr %i.am, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store ptr null, ptr %i.ao, align 8, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  store ptr @ArrowSchemaReleaseInternal, ptr %i.ap, align 8, !tbaa !17
  %i.aq = add nuw nsw i64 %.080, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ArrowSchemaSetFormat.exit.loopexit.unr-lcssa, label %.lr.ph81

ArrowSchemaSetFormat.exit.loopexit.unr-lcssa:     ; preds = %.lr.ph81
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ArrowSchemaSetFormat.exit, label %.lr.ph81.epil.preheader

.lr.ph81.epil.preheader:                          ; preds = %ArrowSchemaSetFormat.exit.loopexit.unr-lcssa, %.lr.ph81.preheader
  %.080.epil.init = phi i64 [ 0, %.lr.ph81.preheader ], [ %i.aq, %ArrowSchemaSetFormat.exit.loopexit.unr-lcssa ]
  %lcmp.mod95 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod95)
  %i.ar = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.080.epil.init
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !23 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  store i64 2, ptr %i.au, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  store ptr null, ptr %i.aw, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  store ptr @ArrowSchemaReleaseInternal, ptr %i.ax, align 8, !tbaa !17
  br label %ArrowSchemaSetFormat.exit

ArrowSchemaSetFormat.exit:                        ; preds = %.lr.ph.i, %.lr.ph81.epil.preheader, %ArrowSchemaSetFormat.exit.loopexit.unr-lcssa, %bb.i, %bb.j, %bb.h, %._crit_edge, %bb.b
  %.2 = phi i32 [ 12, %bb.h ], [ 12, %bb.j ], [ 22, %bb.b ], [ 34, %._crit_edge ], [ 0, %.lr.ph81.epil.preheader ], [ %.mux, %bb.i ], [ 0, %ArrowSchemaSetFormat.exit.loopexit.unr-lcssa ], [ 12, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %ArrowSchemaSetFormat.exit
  %.3 = phi i32 [ %.2, %ArrowSchemaSetFormat.exit ], [ 22, %bb.a ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @ArrowFree(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @ArrowMalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define range(i32 0, 13) i32 @ArrowSchemaSetName(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ArrowFree(ptr noundef nonnull %i.b) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not16 = icmp eq ptr %1, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %i.d = add i64 %i.c, 1                          ; 2 uses
  %i.e = tail call ptr @ArrowMalloc(i64 noundef %i.d) #17 ; 3 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !19
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread, %bb.d
  %.1 = phi i32 [ 12, %bb.d ], [ 0, %.thread ], [ 0, %bb.e ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 13) i32 @ArrowSchemaSetMetadata(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ArrowFree(ptr noundef nonnull %i.b) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not16 = icmp eq ptr %1, null
  br i1 %.not16, label %bb.d, label %ArrowMetadataReaderInit.exit.i

ArrowMetadataReaderInit.exit.i:                   ; preds = %bb.c
  %i.c = load i32, ptr %1, align 1                ; 5 uses
end_hunk_0
begin_hunk_1_@ArrowSchemaViewValidate:bb.a
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.al = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.98, i64 noundef %.01828.i51) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.w:                                             ; preds = %bb.u
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !17
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ap = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.99, i64 noundef %.01828.i51) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.y:                                             ; preds = %bb.w
  %i.aq = add nuw nsw i64 %.01828.i51, 1          ; 2 uses
  %exitcond.not.i52 = icmp eq i64 %i.aq, %.pre31.i48
  br i1 %exitcond.not.i52, label %ArrowSchemaViewValidateNChildren.exit, label %bb.u

bb.z:                                             ; preds = %bb.a, %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %.pre31.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !22 ; 2 uses
  %.not2427.i.i = icmp sgt i64 %.pre31.i.i, 0
  br i1 %.not2427.i.i, label %.lr.ph.i.i, label %ArrowSchemaViewValidateNChildren.exit

.lr.ph.i.i:                                       ; preds = %bb.z
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %.lr.ph.i.i
  %.01828.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bb, %bb.ae ] ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.01828.i.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !23 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.aw = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.98, i64 noundef %.01828.i.i) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !17
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ba = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.99, i64 noundef %.01828.i.i) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.ae:                                            ; preds = %bb.ac
  %i.bb = add nuw nsw i64 %.01828.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bb, %.pre31.i.i
  br i1 %exitcond.not.i.i, label %ArrowSchemaViewValidateNChildren.exit, label %bb.aa

bb.af:                                            ; preds = %bb.a
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !31 ; 2 uses
  %.phi.trans.insert.i.i54 = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 32
  %.pre31.i.i55 = load i64, ptr %.phi.trans.insert.i.i54, align 8, !tbaa !22 ; 2 uses
  %.not23.i.i = icmp eq i64 %.pre31.i.i55, 1
  br i1 %.not23.i.i, label %._crit_edge.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bc = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.97, i64 noundef 1, i64 noundef %.pre31.i.i55) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

._crit_edge.i.i:                                  ; preds = %bb.af
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !21
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !23 ; 6 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i
  %i.bh = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.98, i64 noundef 0) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.ai:                                            ; preds = %._crit_edge.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !17
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bl = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.99, i64 noundef 0) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.ak:                                            ; preds = %bb.ai
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !22 ; 2 uses
  %.not17.i = icmp eq i64 %i.bn, 2
  br i1 %.not17.i, label %sub_0.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bo = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.100, i64 noundef %i.bn) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

sub_0.i:                                          ; preds = %bb.ak
  %i.bp = load ptr, ptr %i.bf, align 8, !tbaa !18 ; 4 uses
  %i.bq = load i8, ptr %i.bp, align 1
  %.not.i = icmp eq i8 %i.bq, 43
  br i1 %.not.i, label %sub_1.i, label %.tail.thread.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.bs = load i8, ptr %i.br, align 1
  %.not25.i = icmp eq i8 %i.bs, 115
  br i1 %.not25.i, label %.tail.i, label %.tail.thread.i

.tail.i:                                          ; preds = %sub_1.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %bb.am, label %.tail.thread.i

.tail.thread.i:                                   ; preds = %.tail.i, %sub_1.i, %sub_0.i
  %i.bw = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.101, ptr noundef nonnull %i.bp) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.am:                                            ; preds = %.tail.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !8
  %i.bz = and i64 %i.by, 2
  %.not19.i = icmp eq i64 %i.bz, 0
  br i1 %.not19.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ca = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.102) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.ao:                                            ; preds = %bb.am
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !21
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !23
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !8
  %i.cg = and i64 %i.cf, 2
  %.not20.i = icmp eq i64 %i.cg, 0
  br i1 %.not20.i, label %ArrowSchemaViewValidateNChildren.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ch = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.103) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.aq:                                            ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !37
  %.off.i = add i32 %i.cj, -3
  %switch.i = icmp ult i32 %.off.i, 8
  br i1 %switch.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ck = load ptr, ptr %0, align 8, !tbaa !31
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !18
  %i.cm = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.104, ptr noundef %i.cl) #17, !inline_history !46 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.cn = load ptr, ptr %0, align 8, !tbaa !31
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !25
  %i.cq = call i32 @ArrowSchemaViewInit(ptr noundef nonnull %3, ptr noundef %i.cp, ptr noundef %2), !inline_history !46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %ArrowSchemaViewValidateNChildren.exit

bb.at:                                            ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !36
  %i.ct = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.96, i32 noundef %i.cs) #17 ; 0 uses
  br label %ArrowSchemaViewValidateNChildren.exit

ArrowSchemaViewValidateNChildren.exit:            ; preds = %bb.ae, %bb.y, %bb.s, %bb.k, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.an, %.tail.thread.i, %bb.al, %bb.aj, %bb.ah, %bb.ag, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.q, %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %bb.c, %bb.b, %bb.at, %bb.e
  %.0 = phi i32 [ 22, %bb.at ], [ 22, %bb.aj ], [ 22, %bb.e ], [ 0, %bb.b ], [ 0, %bb.f ], [ %i.cq, %bb.as ], [ 0, %bb.k ], [ 0, %bb.t ], [ 0, %bb.y ], [ 22, %bb.c ], [ 22, %bb.g ], [ 22, %bb.i ], [ 22, %bb.j ], [ 22, %bb.l ], [ 22, %bb.n ], [ 22, %bb.o ], [ 22, %bb.q ], [ 0, %bb.s ], [ 22, %bb.v ], [ 22, %bb.x ], [ 0, %bb.z ], [ 22, %bb.ab ], [ 22, %bb.ad ], [ 22, %bb.al ], [ 22, %.tail.thread.i ], [ 22, %bb.an ], [ 22, %bb.ap ], [ 0, %bb.ao ], [ 22, %bb.ag ], [ 22, %bb.ah ], [ 22, %bb.ar ], [ 0, %bb.ae ]
  ret i32 %.0
}

declare void @ArrowLayoutInit(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 23) i32 @ArrowMetadataGetValue(ptr noundef %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %ArrowMetadataGetValueInternal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ArrowMetadataGetValueInternal.exit, label %ArrowMetadataReaderInit.exit.i

ArrowMetadataReaderInit.exit.i:                   ; preds = %bb.b
  %i.c = load i32, ptr %0, align 1                ; 2 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %ArrowMetadataGetValueInternal.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %ArrowMetadataReaderInit.exit.i, %.critedge.i
  %.sroa.7.034.i = phi i32 [ %i.m, %.critedge.i ], [ %i.c, %ArrowMetadataReaderInit.exit.i ] ; 2 uses
  %.sroa.415.033.i = phi i64 [ %i.l, %.critedge.i ], [ 4, %ArrowMetadataReaderInit.exit.i ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %0, i64 %.sroa.415.033.i ; 4 uses
  %.0.copyload2.i.i = load i32, ptr %i.e, align 1
  %i.f = sext i32 %.0.copyload2.i.i to i64        ; 3 uses
  %i.g = getelementptr i8, ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.0.copyload.i.i = load i32, ptr %i.h, align 1
  %i.i = add nsw i64 %i.f, 8                      ; 2 uses
  %i.j = sext i32 %.0.copyload.i.i to i64         ; 2 uses
  %i.k = add i64 %i.i, %.sroa.415.033.i
  %i.l = add i64 %i.k, %i.j
  %i.m = add nsw i32 %.sroa.7.034.i, -1
  %i.n = icmp eq i64 %2, %i.f
  br i1 %i.n, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.p = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull %i.o, i64 noundef %2) #18
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.critedge.thread.i, label %.critedge.i

.critedge.thread.i:                               ; preds = %bb.c
  %i.r = getelementptr inbounds i8, ptr %i.e, i64 %i.i
  store ptr %i.r, ptr %3, align 8, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.j, ptr %i.s, align 8, !tbaa !48
  br label %ArrowMetadataGetValueInternal.exit

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i
  %i.t = icmp samesign ult i32 %.sroa.7.034.i, 2
  br i1 %i.t, label %ArrowMetadataGetValueInternal.exit, label %.lr.ph.i

ArrowMetadataGetValueInternal.exit:               ; preds = %.critedge.i, %.critedge.thread.i, %ArrowMetadataReaderInit.exit.i, %bb.b, %bb.a
  %.0 = phi i32 [ 22, %bb.a ], [ 0, %bb.b ], [ 0, %ArrowMetadataReaderInit.exit.i ], [ 0, %.critedge.thread.i ], [ 0, %.critedge.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i64 -2147483648, -9223372036854775808) i64 @ArrowSchemaToString(ptr noundef %0, ptr noundef %1, i64 noundef %2, i8 noundef signext %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.ArrowSchemaView, align 8    ; 15 uses
  %5 = alloca %struct.ArrowError, align 1         ; 4 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.25) #17
  %i.c = sext i32 %i.b to i64
  br label %bb.bj

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.26) #17
  %i.h = sext i32 %i.g to i64
  br label %bb.bj

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.i = call i32 @ArrowSchemaViewInit(ptr noundef nonnull %4, ptr noundef nonnull %0, ptr noundef nonnull %5)
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.27, ptr noundef nonnull %5) #17
  %i.k = sext i32 %i.j to i64
  br label %bb.bi

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.n = load i64, ptr %i.m, align 8, !tbaa !49   ; 3 uses
  %i.o = icmp sgt i64 %i.n, 0                     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.r = icmp ne ptr %i.q, null                   ; 4 uses
  %or.cond = select i1 %i.o, i1 %i.r, i1 false    ; 2 uses
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = trunc i64 %i.n to i32
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !37
  %switch.tableidx = add i32 %i.v, -1             ; 2 uses
  %i.w = icmp ult i32 %switch.tableidx, 45
  br i1 %i.w, label %switch.lookup, label %ArrowTypeString.exit

switch.lookup:                                    ; preds = %bb.h
  %i.x = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ArrowTypeString, i64 %i.x
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %ArrowTypeString.exit

ArrowTypeString.exit:                             ; preds = %bb.h, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.h ]
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.28, i32 noundef %i.s, ptr noundef %i.t, ptr noundef %.0.i) #17
  br label %ArrowToStringLogChars.exit

bb.i:                                             ; preds = %bb.g
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = trunc i64 %i.n to i32
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.29, i32 noundef %i.z, ptr noundef %i.aa) #17
  br label %ArrowToStringLogChars.exit

bb.k:                                             ; preds = %bb.i
  br i1 %i.r, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !37
  %i.ae = call fastcc ptr @ArrowTypeString(i32 noundef %i.ad)
  %i.af = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.30, ptr noundef %i.ae) #17
  br label %ArrowToStringLogChars.exit

ArrowToStringLogChars.exit:                       ; preds = %bb.j, %bb.l, %ArrowTypeString.exit
  %.042.in = phi i32 [ %i.y, %ArrowTypeString.exit ], [ %i.ab, %bb.j ], [ %i.af, %bb.l ]
  %i.ag = call i32 @llvm.smax.i32(i32 %.042.in, i32 0)
  %spec.store.select.i = zext nneg i32 %i.ag to i64 ; 4 uses
  %i.ah = sub nsw i64 %2, %spec.store.select.i
  %spec.select.i = call i64 @llvm.smax.i64(i64 %i.ah, i64 0) ; 3 uses
  %.not.i = icmp eq ptr %1, null
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %spec.store.select.i
  %spec.select = select i1 %.not.i, ptr null, ptr %i.ai ; 3 uses
  br i1 %i.r, label %bb.az, label %ArrowToStringLogChars.exit56

.critedge:                                        ; preds = %bb.k
  %spec.select.i54 = call i64 @llvm.smax.i64(i64 %2, i64 0)
  br label %ArrowToStringLogChars.exit56

ArrowToStringLogChars.exit56:                     ; preds = %.critedge, %ArrowToStringLogChars.exit
  %.0147 = phi ptr [ %spec.select, %ArrowToStringLogChars.exit ], [ %1, %.critedge ] ; 7 uses
  %.0141 = phi i64 [ %spec.select.i, %ArrowToStringLogChars.exit ], [ %spec.select.i54, %.critedge ] ; 7 uses
  %.0138 = phi i64 [ %spec.store.select.i, %ArrowToStringLogChars.exit ], [ 0, %.critedge ]
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !36
  switch i32 %i.ak, label %ArrowTypeString.exit.i [
    i32 1, label %ArrowTypeString.exit.thread.i
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.o
    i32 5, label %bb.p
    i32 6, label %bb.q
    i32 7, label %bb.r
    i32 8, label %bb.s
    i32 9, label %bb.t
    i32 10, label %bb.u
    i32 11, label %bb.v
    i32 12, label %bb.w
    i32 13, label %bb.x
    i32 14, label %bb.y
    i32 15, label %bb.z
    i32 16, label %ArrowTypeString.exit.thread44.i
    i32 17, label %bb.aa
    i32 18, label %bb.ab
    i32 19, label %ArrowTypeString.exit.thread52.i
    i32 20, label %ArrowTypeString.exit.thread39.i
    i32 21, label %bb.ac
    i32 22, label %bb.ad
    i32 23, label %bb.ae
    i32 42, label %ArrowTypeString.exit.thread34.i
    i32 43, label %bb.af
    i32 24, label %bb.ag
    i32 25, label %bb.ah
    i32 26, label %bb.ai
    i32 27, label %bb.aj
    i32 28, label %ArrowTypeString.exit.thread49.i
    i32 29, label %bb.ak
    i32 30, label %bb.al
    i32 31, label %bb.am
    i32 32, label %bb.an
    i32 33, label %bb.ao
    i32 34, label %bb.ap
    i32 35, label %bb.aq
    i32 36, label %bb.ar
    i32 37, label %bb.as
    i32 38, label %bb.at
    i32 39, label %bb.au
    i32 40, label %bb.av
    i32 41, label %bb.aw
    i32 44, label %bb.ax
    i32 45, label %bb.ay
  ]

bb.m:                                             ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.n:                                             ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.o:                                             ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.p:                                             ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.q:                                             ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

bb.r:                                             ; preds = %ArrowToStringLogChars.exit56
  br label %ArrowTypeString.exit.thread.i

end_hunk_1
begin_hunk_2_@ArrowSchemaToString:bb.a
  %.2143.lcssa = phi i64 [ %spec.select.i63, %ArrowToStringLogChars.exit65 ], [ %spec.select.i79.peel, %ArrowToStringLogChars.exit77.peel ], [ %spec.select.i79, %ArrowToStringLogChars.exit77 ] ; 2 uses
  %.2140.lcssa = phi i64 [ %i.bt, %ArrowToStringLogChars.exit65 ], [ %i.cl, %ArrowToStringLogChars.exit77.peel ], [ %i.do, %ArrowToStringLogChars.exit77 ]
  %i.cq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.2149.lcssa, i64 noundef %.2143.lcssa, ptr noundef nonnull @.str.34) #17
  %i.cr = call i32 @llvm.smax.i32(i32 %i.cq, i32 0)
  %spec.store.select.i66 = zext nneg i32 %i.cr to i64 ; 3 uses
  %i.cs = add nsw i64 %.2140.lcssa, %spec.store.select.i66
  %i.ct = sub nsw i64 %.2143.lcssa, %spec.store.select.i66
  %spec.select.i67 = call i64 @llvm.smax.i64(i64 %i.ct, i64 0)
  %.not.i68 = icmp eq ptr %.2149.lcssa, null
  %i.cu = getelementptr inbounds nuw i8, ptr %.2149.lcssa, i64 %spec.store.select.i66
  %spec.select156 = select i1 %.not.i68, ptr null, ptr %i.cu
  br label %ArrowToStringLogChars.exit69

ArrowToStringLogChars.exit73:                     ; preds = %ArrowToStringLogChars.exit77.peel, %ArrowToStringLogChars.exit77
  %.0163 = phi i64 [ %i.dr, %ArrowToStringLogChars.exit77 ], [ 1, %ArrowToStringLogChars.exit77.peel ] ; 3 uses
  %.2140162 = phi i64 [ %i.do, %ArrowToStringLogChars.exit77 ], [ %i.cl, %ArrowToStringLogChars.exit77.peel ]
  %.2143161 = phi i64 [ %spec.select.i79, %ArrowToStringLogChars.exit77 ], [ %spec.select.i79.peel, %ArrowToStringLogChars.exit77.peel ] ; 2 uses
  %.2149160 = phi ptr [ %spec.select159, %ArrowToStringLogChars.exit77 ], [ %spec.select159.peel, %ArrowToStringLogChars.exit77.peel ] ; 3 uses
  %i.cv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.2149160, i64 noundef %.2143161, ptr noundef nonnull @.str.32) #17
  %i.cw = call i32 @llvm.smax.i32(i32 %i.cv, i32 0)
  %spec.store.select.i70 = zext nneg i32 %i.cw to i64 ; 3 uses
  %i.cx = add nsw i64 %.2140162, %spec.store.select.i70 ; 4 uses
  %i.cy = sub nsw i64 %.2143161, %spec.store.select.i70
  %spec.select.i71 = call i64 @llvm.smax.i64(i64 %i.cy, i64 0) ; 5 uses
  %.not.i72 = icmp eq ptr %.2149160, null
  %i.cz = getelementptr inbounds nuw i8, ptr %.2149160, i64 %spec.store.select.i70
  %spec.select157 = select i1 %.not.i72, ptr null, ptr %i.cz ; 6 uses
  %i.da = load ptr, ptr %i.bz, align 8, !tbaa !21
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %.0163
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !23 ; 5 uses
  %.not51 = icmp eq ptr %i.dc, null
  br i1 %.not51, label %ArrowToStringLogChars.exit77, label %bb.be

bb.be:                                            ; preds = %ArrowToStringLogChars.exit73
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !17
  %.not52 = icmp eq ptr %i.de, null
  br i1 %.not52, label %ArrowToStringLogChars.exit77, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !19 ; 2 uses
  %.not53 = icmp eq ptr %i.dg, null
  br i1 %.not53, label %ArrowToStringLogChars.exit77, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %spec.select157, i64 noundef %spec.select.i71, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.dg) #17
  %i.di = call i32 @llvm.smax.i32(i32 %i.dh, i32 0)
  %spec.store.select.i74 = zext nneg i32 %i.di to i64 ; 3 uses
  %i.dj = add nsw i64 %i.cx, %spec.store.select.i74
  %i.dk = sub nsw i64 %spec.select.i71, %spec.store.select.i74
  %spec.select.i75 = call i64 @llvm.smax.i64(i64 %i.dk, i64 0)
  %.not.i76 = icmp eq ptr %spec.select157, null
  %i.dl = getelementptr inbounds nuw i8, ptr %spec.select157, i64 %spec.store.select.i74
  %spec.select158 = select i1 %.not.i76, ptr null, ptr %i.dl
  %.pre170 = load ptr, ptr %i.bz, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre170, i64 %.0163
  %.pre171 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !23
  br label %ArrowToStringLogChars.exit77

ArrowToStringLogChars.exit77:                     ; preds = %bb.bg, %bb.bf, %bb.be, %ArrowToStringLogChars.exit73
  %i.dm = phi ptr [ null, %ArrowToStringLogChars.exit73 ], [ %i.dc, %bb.be ], [ %i.dc, %bb.bf ], [ %.pre171, %bb.bg ]
  %.4151 = phi ptr [ %spec.select157, %ArrowToStringLogChars.exit73 ], [ %spec.select157, %bb.be ], [ %spec.select157, %bb.bf ], [ %spec.select158, %bb.bg ] ; 3 uses
  %.4145 = phi i64 [ %spec.select.i71, %ArrowToStringLogChars.exit73 ], [ %spec.select.i71, %bb.be ], [ %spec.select.i71, %bb.bf ], [ %spec.select.i75, %bb.bg ] ; 2 uses
  %.4 = phi i64 [ %i.cx, %ArrowToStringLogChars.exit73 ], [ %i.cx, %bb.be ], [ %i.cx, %bb.bf ], [ %i.dj, %bb.bg ]
  %i.dn = call i64 @ArrowSchemaToString(ptr noundef %i.dm, ptr noundef %.4151, i64 noundef %.4145, i8 noundef signext %3)
  %spec.store.select.i78 = call i64 @llvm.smax.i64(i64 range(i64 -2147483648, -9223372036854775808) %i.dn, i64 0) ; 3 uses
  %i.do = add nsw i64 %spec.store.select.i78, %.4 ; 2 uses
  %i.dp = sub nsw i64 %.4145, %spec.store.select.i78
  %spec.select.i79 = call i64 @llvm.smax.i64(i64 %i.dp, i64 0) ; 2 uses
  %.not.i80 = icmp eq ptr %.4151, null
  %i.dq = getelementptr inbounds nuw i8, ptr %.4151, i64 %spec.store.select.i78
  %spec.select159 = select i1 %.not.i80, ptr null, ptr %i.dq ; 2 uses
  %i.dr = add nuw nsw i64 %.0163, 1               ; 2 uses
  %i.ds = load i64, ptr %i.bw, align 8, !tbaa !22
  %i.dt = icmp slt i64 %i.dr, %i.ds
  br i1 %i.dt, label %ArrowToStringLogChars.exit73, label %._crit_edge, !llvm.loop !51

ArrowToStringLogChars.exit69:                     ; preds = %._crit_edge, %bb.ba, %ArrowToStringLogChars.exit61
  %.5152 = phi ptr [ %spec.select154, %ArrowToStringLogChars.exit61 ], [ %spec.select154, %bb.ba ], [ %spec.select156, %._crit_edge ]
  %.5146 = phi i64 [ %spec.select.i59, %ArrowToStringLogChars.exit61 ], [ %spec.select.i59, %bb.ba ], [ %spec.select.i67, %._crit_edge ]
  %.5 = phi i64 [ %i.bl, %ArrowToStringLogChars.exit61 ], [ %i.bl, %bb.ba ], [ %i.cs, %._crit_edge ] ; 2 uses
  %brmerge181 = select i1 %i.o, i1 true, i1 %i.r
  br i1 %brmerge181, label %.sink.split, label %bb.bh

.sink.split:                                      ; preds = %ArrowToStringLogChars.exit69
  %.str.35.mux = select i1 %or.cond, ptr @.str.35, ptr @.str.36
  %.str.35.mux.mux = select i1 %i.o, ptr %.str.35.mux, ptr @.str.34
  %i.du = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.5152, i64 noundef %.5146, ptr noundef nonnull %.str.35.mux.mux) #17
  %i.dv = sext i32 %i.du to i64
  %i.dw = add nsw i64 %.5, %i.dv
  br label %bb.bh

bb.bh:                                            ; preds = %ArrowToStringLogChars.exit69, %.sink.split
  %.6 = phi i64 [ %.5, %ArrowToStringLogChars.exit69 ], [ %i.dw, %.sink.split ]
  %. = call i64 @llvm.smax.i64(i64 %.6, i64 0)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.f
  %.144 = phi i64 [ %i.k, %bb.f ], [ %., %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.d, %bb.b
  %.2 = phi i64 [ %i.c, %bb.b ], [ %i.h, %bb.d ], [ %.144, %bb.bi ]
  ret i64 %.2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef ptr @ArrowTypeString(i32 noundef %0) unnamed_addr #9 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 45
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ArrowTypeString, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @ArrowMetadataReaderInit(ptr nofree noundef writeonly captures(none) initializes((0, 20)) %0, ptr noundef %1) local_unnamed_addr #10 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !53
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink8 = phi i64 [ 4, %bb.b ], [ 0, %bb.a ]
  %.sink = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink8, ptr %i.c, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink, ptr %i.d, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 23) i32 @ArrowMetadataReaderRead(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f ; 4 uses
  %.0.copyload2 = load i32, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.h, ptr %1, align 8, !tbaa !47
  %i.i = sext i32 %.0.copyload2 to i64            ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !48
  %i.k = getelementptr i8, ptr %i.g, i64 %i.i
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.0.copyload = load i32, ptr %i.l, align 1
  %i.m = add nsw i64 %i.i, 8                      ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 %i.m
  store ptr %i.n, ptr %2, align 8, !tbaa !47
  %i.o = sext i32 %.0.copyload to i64             ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !48
  %i.q = add i64 %i.m, %i.f
  %i.r = add i64 %i.q, %i.o
  store i64 %i.r, ptr %i.e, align 8, !tbaa !55
  %i.s = add nsw i32 %i.b, -1
  store i32 %i.s, ptr %i.a, align 8, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define signext range(i8 0, 2) i8 @ArrowMetadataHasKey(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ArrowMetadataGetValue.exit, label %ArrowMetadataReaderInit.exit.i.i

ArrowMetadataReaderInit.exit.i.i:                 ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1                ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %ArrowMetadataGetValue.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %ArrowMetadataReaderInit.exit.i.i, %.critedge.i.i
  %.sroa.7.034.i.i = phi i32 [ %i.l, %.critedge.i.i ], [ %i.b, %ArrowMetadataReaderInit.exit.i.i ] ; 2 uses
  %.sroa.415.033.i.i = phi i64 [ %i.k, %.critedge.i.i ], [ 4, %ArrowMetadataReaderInit.exit.i.i ] ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 %.sroa.415.033.i.i ; 3 uses
  %.0.copyload2.i.i.i = load i32, ptr %i.d, align 1
  %i.e = sext i32 %.0.copyload2.i.i.i to i64      ; 3 uses
  %i.f = getelementptr i8, ptr %i.d, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.0.copyload.i.i.i = load i32, ptr %i.g, align 1
  %i.h = sext i32 %.0.copyload.i.i.i to i64
  %i.i = add i64 %.sroa.415.033.i.i, 8
  %i.j = add i64 %i.i, %i.e
  %i.k = add i64 %i.j, %i.h
  %i.l = add nsw i32 %.sroa.7.034.i.i, -1
  %i.m = icmp eq i64 %2, %i.e
  br i1 %i.m, label %bb.b, label %.critedge.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.o = tail call i32 @strncmp(ptr noundef readonly %1, ptr noundef nonnull %i.n, i64 noundef %2) #18
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %ArrowMetadataGetValue.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.b, %.lr.ph.i.i
  %i.q = icmp samesign ult i32 %.sroa.7.034.i.i, 2
  br i1 %i.q, label %ArrowMetadataGetValue.exit, label %.lr.ph.i.i

ArrowMetadataGetValue.exit:                       ; preds = %bb.b, %.critedge.i.i, %bb.a, %ArrowMetadataReaderInit.exit.i.i
  %.sroa.0.0 = phi i8 [ 0, %bb.a ], [ 0, %ArrowMetadataReaderInit.exit.i.i ], [ 1, %bb.b ], [ 0, %.critedge.i.i ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 13) i32 @ArrowMetadataBuilderInit(ptr noundef initializes((0, 48)) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.ArrowBufferAllocator, align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @ArrowBufferAllocatorDefault(ptr dead_on_unwind nonnull writable sret(%struct.ArrowBufferAllocator) align 8 %2) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %ArrowMetadataSizeOf.exit, label %ArrowMetadataReaderInit.exit.i

ArrowMetadataReaderInit.exit.i:                   ; preds = %bb.a
  %i.c = load i32, ptr %1, align 1                ; 5 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %ArrowMetadataSizeOf.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %ArrowMetadataReaderInit.exit.i
  %xtraiter = and i32 %i.c, 1
  %i.e = icmp eq i32 %i.c, 1
  br i1 %i.e, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.c, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.020.i = phi i64 [ 4, %.lr.ph.i.preheader.new ], [ %i.y, %.lr.ph.i ]
  %.sroa.4.018.i = phi i64 [ 4, %.lr.ph.i.preheader.new ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.f = getelementptr inbounds i8, ptr %1, i64 %.sroa.4.018.i ; 2 uses
  %.0.copyload2.i.i = load i32, ptr %i.f, align 1
  %i.g = sext i32 %.0.copyload2.i.i to i64        ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.0.copyload.i.i = load i32, ptr %i.i, align 1
  %i.j = sext i32 %.0.copyload.i.i to i64         ; 2 uses
  %i.k = add nsw i64 %i.g, 8                      ; 2 uses
  %i.l = add i64 %i.k, %.sroa.4.018.i
  %i.m = add i64 %i.l, %i.j                       ; 2 uses
  %i.n = add i64 %i.k, %.020.i
  %i.o = add i64 %i.n, %i.j
  %i.p = getelementptr inbounds i8, ptr %1, i64 %i.m ; 2 uses
  %.0.copyload2.i.i.1 = load i32, ptr %i.p, align 1
  %i.q = sext i32 %.0.copyload2.i.i.1 to i64      ; 2 uses
  %i.r = getelementptr i8, ptr %i.p, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %.0.copyload.i.i.1 = load i32, ptr %i.s, align 1
  %i.t = sext i32 %.0.copyload.i.i.1 to i64       ; 2 uses
  %i.u = add nsw i64 %i.q, 8                      ; 2 uses
  %i.v = add i64 %i.u, %i.m
  %i.w = add i64 %i.v, %i.t                       ; 2 uses
  %i.x = add i64 %i.u, %i.o
  %i.y = add i64 %i.x, %i.t                       ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ArrowMetadataSizeOf.exit.loopexit.unr-lcssa, label %.lr.ph.i

ArrowMetadataSizeOf.exit.loopexit.unr-lcssa:      ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ArrowMetadataSizeOf.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %ArrowMetadataSizeOf.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.020.i.epil.init = phi i64 [ 4, %.lr.ph.i.preheader ], [ %i.y, %ArrowMetadataSizeOf.exit.loopexit.unr-lcssa ]
  %.sroa.4.018.i.epil.init = phi i64 [ 4, %.lr.ph.i.preheader ], [ %i.w, %ArrowMetadataSizeOf.exit.loopexit.unr-lcssa ]
  %lcmp.mod9 = trunc i32 %i.c to i1
  call void @llvm.assume(i1 %lcmp.mod9)
  %i.z = getelementptr inbounds i8, ptr %1, i64 %.sroa.4.018.i.epil.init ; 2 uses
  %.0.copyload2.i.i.epil = load i32, ptr %i.z, align 1
  %i.aa = sext i32 %.0.copyload2.i.i.epil to i64  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  %.0.copyload.i.i.epil = load i32, ptr %i.ac, align 1
  %i.ad = sext i32 %.0.copyload.i.i.epil to i64
  %i.ae = add nsw i64 %i.aa, 8
  %i.af = add i64 %i.ae, %.020.i.epil.init
  %i.ag = add i64 %i.af, %i.ad
  br label %ArrowMetadataSizeOf.exit

ArrowMetadataSizeOf.exit:                         ; preds = %.lr.ph.i.epil.preheader, %ArrowMetadataSizeOf.exit.loopexit.unr-lcssa, %bb.a, %ArrowMetadataReaderInit.exit.i
  %.1.i = phi i64 [ 0, %bb.a ], [ 4, %ArrowMetadataReaderInit.exit.i ], [ %i.y, %ArrowMetadataSizeOf.exit.loopexit.unr-lcssa ], [ %i.ag, %.lr.ph.i.epil.preheader ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !59
  %i.aj = add nsw i64 %i.ai, %.1.i                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !62 ; 3 uses
  %.not.i.i = icmp sgt i64 %i.aj, %i.al
  br i1 %.not.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %ArrowMetadataSizeOf.exit
  %i.am = shl nsw i64 %i.al, 1
  %..i.i.i = call i64 @llvm.smax.i64(i64 %i.am, i64 %i.aj) ; 3 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.ao = load ptr, ptr %0, align 8, !tbaa !64
  %i.ap = call ptr %i.an(ptr noundef nonnull %i.a, ptr noundef %i.ao, i64 noundef %i.al, i64 noundef %..i.i.i) #17, !inline_history !65 ; 2 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !64
  %i.aq = icmp eq ptr %i.ap, null
  %i.ar = icmp sgt i64 %..i.i.i, 0
  %or.cond.i.i = and i1 %i.ar, %i.aq
  br i1 %or.cond.i.i, label %ArrowBufferReserve.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %..i.i.i, ptr %i.ak, align 8, !tbaa !62
  br label %bb.d

ArrowBufferReserve.exit.i:                        ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  br label %ArrowBufferAppend.exit

bb.d:                                             ; preds = %bb.c, %ArrowMetadataSizeOf.exit
  %i.as = icmp sgt i64 %.1.i, 0
  br i1 %i.as, label %bb.e, label %ArrowBufferAppend.exit

bb.e:                                             ; preds = %bb.d
  %i.at = load ptr, ptr %0, align 8, !tbaa !64
  %i.au = load i64, ptr %i.ah, align 8, !tbaa !59
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr readonly align 1 %1, i64 %.1.i, i1 false)
  %i.aw = load i64, ptr %i.ah, align 8, !tbaa !59
  %i.ax = add nsw i64 %i.aw, %.1.i
  store i64 %i.ax, ptr %i.ah, align 8, !tbaa !59
  br label %ArrowBufferAppend.exit

ArrowBufferAppend.exit:                           ; preds = %ArrowBufferReserve.exit.i, %bb.d, %bb.e
  %.1.i4 = phi i32 [ 12, %ArrowBufferReserve.exit.i ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %.1.i4
}

; Function Attrs: nounwind uwtable
define range(i32 0, 23) i32 @ArrowMetadataBuilderAppend(ptr noundef %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.ArrowStringView, align 8    ; 3 uses
  %6 = alloca %struct.ArrowStringView, align 8    ; 3 uses
  store ptr %1, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.a, align 8
  store ptr %3, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %4, ptr %i.b, align 8
  %i.c = call fastcc i32 @ArrowMetadataBuilderAppendInternal(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %6)
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 23) i32 @ArrowMetadataBuilderAppendInternal(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !62   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !59   ; 3 uses
  %i.g = add nsw i64 %i.f, 4                      ; 2 uses
  %.not.i.i.i = icmp sgt i64 %i.f, -4
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !64  ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %ArrowBufferAppendInt32.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.j = tail call ptr %i.i(ptr noundef nonnull %i.h, ptr noundef %.pre.i, i64 noundef 0, i64 noundef %i.g) #17, !inline_history !66 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !64
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %ArrowBufferAppendInt32.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.g, ptr %i.b, align 8, !tbaa !62
  %.pre1.i = load i64, ptr %i.e, align 8, !tbaa !59
  br label %ArrowBufferAppendInt32.exit.thread

ArrowBufferAppendInt32.exit.thread:               ; preds = %bb.c, %bb.e
  %i.l = phi i64 [ %.pre1.i, %bb.e ], [ %i.f, %bb.c ]
  %i.m = phi ptr [ %i.j, %bb.e ], [ %.pre.i, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %i.l
  store i32 0, ptr %i.n, align 1
  %i.o = load i64, ptr %i.e, align 8, !tbaa !59
  %i.p = add nsw i64 %i.o, 4
  store i64 %i.p, ptr %i.e, align 8, !tbaa !59
  %.pr = load i64, ptr %i.b, align 8, !tbaa !62
  br label %bb.f

ArrowBufferAppendInt32.exit:                      ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %bb.m

bb.f:                                             ; preds = %ArrowBufferAppendInt32.exit.thread, %bb.b
  %i.q = phi i64 [ %.pr, %ArrowBufferAppendInt32.exit.thread ], [ %i.c, %bb.b ] ; 4 uses
  %i.r = icmp ult i64 %i.q, 4
  br i1 %i.r, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %0, align 8, !tbaa !64     ; 3 uses
  %.0.copyload = load i32, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !48   ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !48   ; 2 uses
  %i.y = trunc i64 %i.x to i32
  %sext = shl i64 %i.u, 32
  %i.z = ashr exact i64 %sext, 32                 ; 4 uses
  %i.aa = add nsw i64 %i.z, 8
  %sext26 = shl i64 %i.x, 32
  %i.ab = ashr exact i64 %sext26, 32              ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !59 ; 2 uses
  %i.ae = add i64 %i.aa, %i.ad
  %i.af = add i64 %i.ae, %i.ab                    ; 2 uses
  %.not.i = icmp sgt i64 %i.af, %i.q
  br i1 %.not.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = shl nsw i64 %i.q, 1
  %..i.i = tail call i64 @llvm.smax.i64(i64 %i.ag, i64 %i.af) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !63
  %i.aj = tail call ptr %i.ai(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.s, i64 noundef %i.q, i64 noundef %..i.i) #17, !inline_history !67 ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !64
  %i.ak = icmp eq ptr %i.aj, null
  %i.al = icmp sgt i64 %..i.i, 0
  %or.cond.i = and i1 %i.al, %i.ak
  br i1 %or.cond.i, label %ArrowBufferReserve.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %..i.i, ptr %i.b, align 8, !tbaa !62
  %.pre = load i64, ptr %i.ac, align 8, !tbaa !59
  br label %bb.j

ArrowBufferReserve.exit:                          ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  br label %bb.m

bb.j:                                             ; preds = %bb.g, %bb.i
  %i.am = phi i64 [ %i.ad, %bb.g ], [ %.pre, %bb.i ]
  %i.an = phi ptr [ %i.s, %bb.g ], [ %i.aj, %bb.i ]
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.am
  store i32 %i.v, ptr %i.ao, align 1
  %i.ap = load i64, ptr %i.ac, align 8, !tbaa !59
  %i.aq = add nsw i64 %i.ap, 4                    ; 3 uses
  store i64 %i.aq, ptr %i.ac, align 8, !tbaa !59
  %i.ar = icmp sgt i64 %i.z, 0
  br i1 %i.ar, label %bb.k, label %ArrowBufferAppendUnsafe.exit

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %1, align 8, !tbaa !47
  %i.at = load ptr, ptr %0, align 8, !tbaa !64
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr readonly align 1 %i.as, i64 %i.z, i1 false)
  %i.av = load i64, ptr %i.ac, align 8, !tbaa !59
  %i.aw = add nsw i64 %i.av, %i.z                 ; 2 uses
  store i64 %i.aw, ptr %i.ac, align 8, !tbaa !59
  br label %ArrowBufferAppendUnsafe.exit

ArrowBufferAppendUnsafe.exit:                     ; preds = %bb.j, %bb.k
  %i.ax = phi i64 [ %i.aq, %bb.j ], [ %i.aw, %bb.k ]
  %i.ay = load ptr, ptr %0, align 8, !tbaa !64
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.ax
  store i32 %i.y, ptr %i.az, align 1
  %i.ba = load i64, ptr %i.ac, align 8, !tbaa !59
  %i.bb = add nsw i64 %i.ba, 4                    ; 2 uses
  store i64 %i.bb, ptr %i.ac, align 8, !tbaa !59
  %i.bc = icmp sgt i64 %i.ab, 0
  br i1 %i.bc, label %bb.l, label %ArrowBufferAppendUnsafe.exit28

bb.l:                                             ; preds = %ArrowBufferAppendUnsafe.exit
  %i.bd = load ptr, ptr %2, align 8, !tbaa !47
  %i.be = load ptr, ptr %0, align 8, !tbaa !64
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.bb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr readonly align 1 %i.bd, i64 %i.ab, i1 false)
  %i.bg = load i64, ptr %i.ac, align 8, !tbaa !59
  %i.bh = add nsw i64 %i.bg, %i.ab
  store i64 %i.bh, ptr %i.ac, align 8, !tbaa !59
  br label %ArrowBufferAppendUnsafe.exit28

ArrowBufferAppendUnsafe.exit28:                   ; preds = %ArrowBufferAppendUnsafe.exit, %bb.l
  %i.bi = add nsw i32 %.0.copyload, 1
  %i.bj = load ptr, ptr %0, align 8, !tbaa !64
  store i32 %i.bi, ptr %i.bj, align 1
  br label %bb.m

bb.m:                                             ; preds = %ArrowBufferAppendUnsafe.exit28, %ArrowBufferReserve.exit, %ArrowBufferAppendInt32.exit, %bb.f, %bb.a
  %.4 = phi i32 [ 12, %ArrowBufferAppendInt32.exit ], [ 0, %bb.a ], [ 22, %bb.f ], [ 0, %ArrowBufferAppendUnsafe.exit28 ], [ 12, %ArrowBufferReserve.exit ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define range(i32 0, 23) i32 @ArrowMetadataBuilderSet(ptr noundef %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.ArrowStringView, align 8    ; 3 uses
  %6 = alloca %struct.ArrowStringView, align 8    ; 3 uses
  store ptr %1, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.a, align 8
  store ptr %3, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %4, ptr %i.b, align 8
  %i.c = call fastcc i32 @ArrowMetadataBuilderSetInternal(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %6)
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 23) i32 @ArrowMetadataBuilderSetInternal(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.ArrowBufferAllocator, align 8 ; 3 uses
  %4 = alloca %struct.ArrowBufferAllocator, align 8 ; 3 uses
  %5 = alloca %struct.ArrowBufferAllocator, align 8 ; 3 uses
  %6 = alloca %struct.ArrowStringView, align 8    ; 5 uses
  %7 = alloca %struct.ArrowStringView, align 8    ; 5 uses
  %8 = alloca %struct.ArrowBuffer, align 8        ; 12 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !64     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %ArrowMetadataGetValueInternal.exit, label %ArrowMetadataReaderInit.exit.i

ArrowMetadataReaderInit.exit.i:                   ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 1              ; 2 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %ArrowMetadataGetValueInternal.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %ArrowMetadataReaderInit.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !48   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i, %.lr.ph.i
  %.sroa.7.034.i = phi i32 [ %i.c, %.lr.ph.i ], [ %i.o, %.critedge.i ] ; 2 uses
  %.sroa.415.033.i = phi i64 [ 4, %.lr.ph.i ], [ %i.n, %.critedge.i ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %.sroa.415.033.i ; 3 uses
  %.0.copyload2.i.i = load i32, ptr %i.g, align 1
  %i.h = sext i32 %.0.copyload2.i.i to i64        ; 3 uses
  %i.i = getelementptr i8, ptr %i.g, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %.0.copyload.i.i = load i32, ptr %i.j, align 1
  %i.k = sext i32 %.0.copyload.i.i to i64
  %i.l = add i64 %.sroa.415.033.i, 8
  %i.m = add i64 %i.l, %i.h
  %i.n = add i64 %i.m, %i.k
  %i.o = add nsw i32 %.sroa.7.034.i, -1
  %i.p = icmp eq i64 %i.f, %i.h
  br i1 %i.p, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.r = load ptr, ptr %1, align 8, !tbaa !47
  %i.s = tail call i32 @strncmp(ptr noundef %i.r, ptr noundef nonnull %i.q, i64 noundef %i.f) #18
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.thread68, label %.critedge.i

.thread68:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.u = load i32, ptr %i.a, align 1              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @ArrowBufferAllocatorDefault(ptr dead_on_unwind nonnull writable sret(%struct.ArrowBufferAllocator) align 8 %i.v) #17
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = icmp sgt i32 %i.u, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.critedge.i:                                      ; preds = %bb.c, %bb.b
  %i.ab = icmp samesign ult i32 %.sroa.7.034.i, 2
  br i1 %i.ab, label %ArrowMetadataGetValueInternal.exit, label %bb.b

ArrowMetadataGetValueInternal.exit:               ; preds = %.critedge.i, %bb.a, %ArrowMetadataReaderInit.exit.i
  %i.ac = icmp eq ptr %2, null
  br i1 %i.ac, label %bb.k, label %bb.d

bb.d:                                             ; preds = %ArrowMetadataGetValueInternal.exit
  %i.ad = tail call fastcc i32 @ArrowMetadataBuilderAppendInternal(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.k

bb.e:                                             ; preds = %bb.i
  %i.ae = icmp sgt i32 %.sroa.7.069, 1
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread68, %bb.e
  %.03771 = phi ptr [ %.138, %bb.e ], [ %2, %.thread68 ] ; 2 uses
  %.sroa.4.070 = phi i64 [ %i.ao, %bb.e ], [ 4, %.thread68 ] ; 2 uses
  %.sroa.7.069 = phi i32 [ %i.ap, %bb.e ], [ %i.u, %.thread68 ] ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.a, i64 %.sroa.4.070 ; 4 uses
  %.0.copyload2.i = load i32, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  store ptr %i.ag, ptr %6, align 8, !tbaa !47
  %i.ah = sext i32 %.0.copyload2.i to i64         ; 5 uses
  store i64 %i.ah, ptr %i.x, align 8, !tbaa !48
  %i.ai = getelementptr i8, ptr %i.af, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %.0.copyload.i = load i32, ptr %i.aj, align 1
  %i.ak = add nsw i64 %i.ah, 8                    ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.af, i64 %i.ak
  store ptr %i.al, ptr %7, align 8, !tbaa !47
  %i.am = sext i32 %.0.copyload.i to i64          ; 2 uses
  store i64 %i.am, ptr %i.y, align 8, !tbaa !48
  %i.an = add i64 %i.ak, %.sroa.4.070
  %i.ao = add i64 %i.an, %i.am
  %i.ap = add nsw i32 %.sroa.7.069, -1
  %i.aq = load i64, ptr %i.z, align 8, !tbaa !48
  %i.ar = icmp eq i64 %i.aq, %i.ah
  br i1 %i.ar, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.as = load ptr, ptr %1, align 8, !tbaa !47
  %i.at = call i32 @strncmp(ptr noundef %i.as, ptr noundef nonnull %i.ag, i64 noundef %i.ah) #18
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = call fastcc i32 @ArrowMetadataBuilderAppendInternal(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %.03771)
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.lr.ph
  %i.aw = call fastcc i32 @ArrowMetadataBuilderAppendInternal(ptr noundef nonnull %8, ptr noundef %6, ptr noundef nonnull %7)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.138 = phi ptr [ null, %bb.g ], [ %.03771, %bb.h ]
  %.0 = phi i32 [ %i.av, %bb.g ], [ %i.aw, %bb.h ] ; 2 uses
  %.not50 = icmp eq i32 %.0, 0
  br i1 %.not50, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !68
  %i.az = load ptr, ptr %8, align 8, !tbaa !64
  %i.ba = load i64, ptr %i.w, align 8, !tbaa !62
  call void %i.ay(ptr noundef nonnull %i.v, ptr noundef %i.az, i64 noundef %i.ba) #17, !inline_history !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @ArrowBufferAllocatorDefault(ptr dead_on_unwind nonnull writable sret(%struct.ArrowBufferAllocator) align 8 %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.j

._crit_edge:                                      ; preds = %bb.e, %.thread68
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !68
  %i.be = load ptr, ptr %0, align 8, !tbaa !64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !62
  call void %i.bd(ptr noundef nonnull %i.bb, ptr noundef %i.be, i64 noundef %i.bg) #17, !inline_history !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @ArrowBufferAllocatorDefault(ptr dead_on_unwind nonnull writable sret(%struct.ArrowBufferAllocator) align 8 %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %8, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @ArrowBufferAllocatorDefault(ptr dead_on_unwind nonnull writable sret(%struct.ArrowBufferAllocator) align 8 %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.j

bb.j:                                             ; preds = %.thread, %._crit_edge
  %.5 = phi i32 [ %.0, %.thread ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.k

bb.k:                                             ; preds = %ArrowMetadataGetValueInternal.exit, %bb.j, %bb.d
  %.7 = phi i32 [ %.5, %bb.j ], [ %i.ad, %bb.d ], [ 0, %ArrowMetadataGetValueInternal.exit ]
  ret i32 %.7
}

; Function Attrs: nounwind uwtable
define range(i32 0, 23) i32 @ArrowMetadataBuilderRemove(ptr noundef %0, ptr %1, i64 %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.ArrowStringView, align 8    ; 3 uses
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.a, align 8
  %i.b = call fastcc i32 @ArrowMetadataBuilderSetInternal(ptr noundef %0, ptr noundef %3, ptr noundef null)
  ret i32 %i.b
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint nofree norecurse nounwind uwtable
define internal fastcc i32 @_ArrowParseUnionTypeIds(ptr noundef nonnull %0) unnamed_addr #13 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !29
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.d = call i64 @strtol(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 10) #17
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.f = icmp eq ptr %i.e, %0
  %i.g = icmp ugt i64 %i.d, 127
  %or.cond31 = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond31, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.m, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.0172 = phi i32 [ %i.i, %bb.c ], [ 0, %bb.b ]
  %i.i = add nuw nsw i32 %.0172, 1                ; 2 uses
  %i.j = load i8, ptr %i.h, align 1, !tbaa !29
  switch i8 %i.j, label %.loopexit [
    i8 0, label %.loopexit.loopexit
    i8 44, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %i.l = call i64 @strtol(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, i32 noundef 10) #17
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.k
  %i.o = icmp ugt i64 %i.l, 127
  %or.cond3 = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond3, label %.loopexit, label %.lr.ph

.loopexit.loopexit:                               ; preds = %.lr.ph
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.lr.ph, %.loopexit.loopexit, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.i, %.loopexit.loopexit ], [ -1, %.lr.ph ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.loopexit
  %.1 = phi i32 [ %.0, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

declare void @ArrowBufferAllocatorDefault(ptr dead_on_unwind writable sret(%struct.ArrowBufferAllocator) align 8) local_unnamed_addr #5

end_hunk_2
