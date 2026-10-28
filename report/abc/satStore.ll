Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/satStore?download=true
inline.NumInlined: 17
inline.NumDeleted: 6
begin_hunk_0_@Sto_ManDumpClauses:bb.a
  %i.f = load i32, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !23
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.4, i32 noundef %i.d, i32 noundef %i.f, i32 noundef %i.h, i32 noundef %i.j) #17 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.01821 = load ptr, ptr %i.l, align 8, !tbaa !22 ; 2 uses
  %.not22 = icmp eq ptr %.01821, null
  br i1 %.not22, label %._crit_edge24, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.01823 = phi ptr [ %.018, %._crit_edge ], [ %.01821, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.01823, i64 28 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 134217720
  %.not25 = icmp eq i32 %i.o, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %.01823, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !18   ; 2 uses
  %i.s = and i32 %i.r, 1
  %.not.i = icmp eq i32 %i.s, 0
  %i.t = ashr i32 %i.r, 1                         ; 2 uses
  %i.u = xor i32 %i.t, -1
  %i.v = add nsw i32 %i.t, 1
  %i.w = select i1 %.not.i, i32 %i.v, i32 %i.u
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.5, i32 noundef %i.w) #17 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = load i32, ptr %i.m, align 4
  %i.z = lshr i32 %i.y, 3
  %i.aa = and i32 %i.z, 16777215
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = icmp samesign ult i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.d, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.6, i64 3, i64 1, ptr nonnull %i.a) ; 0 uses
  %.018 = load ptr, ptr %.01823, align 8, !tbaa !22 ; 2 uses
  %.not = icmp eq ptr %.018, null
  br i1 %.not, label %._crit_edge24, label %.preheader, !llvm.loop !38

._crit_edge24:                                    ; preds = %._crit_edge, %bb.c
  %i.ad = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge24, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define range(i32 0, 2) i32 @Sto_ManLoadNumber(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.a
  %i.a = tail call i32 @fgetc(ptr noundef %0)
  switch i32 %i.a, label %.preheader [
    i32 -1, label %.loopexit
    i32 32, label %.critedge.backedge
    i32 13, label %.critedge.backedge
    i32 10, label %.critedge.backedge
    i32 9, label %.critedge.backedge
  ]

.critedge.backedge:                               ; preds = %.critedge, %.critedge, %.critedge, %.critedge
  br label %.critedge

.preheader:                                       ; preds = %.critedge, %bb.d
  %.037 = phi i32 [ %.138, %bb.d ], [ 0, %.critedge ] ; 4 uses
  %.0 = phi i32 [ %.1, %bb.d ], [ 0, %.critedge ] ; 2 uses
  %i.b = tail call i32 @fgetc(ptr noundef %0)     ; 5 uses
  switch i32 %i.b, label %bb.b [
    i32 32, label %bb.e
    i32 13, label %bb.e
    i32 10, label %bb.e
    i32 9, label %bb.e
  ]

bb.b:                                             ; preds = %.preheader
  %i.c = add i32 %i.b, -58
  %or.cond11 = icmp ult i32 %i.c, -10
  %i.d = icmp ne i32 %i.b, 45                     ; 3 uses
  %or.cond13 = and i1 %i.d, %or.cond11
  br i1 %or.cond13, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.b) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.f = mul nsw i32 %.037, 10
  %i.g = add nsw i32 %i.b, %i.f
  %.138 = select i1 %i.d, i32 %i.g, i32 %.037
  %.1 = select i1 %i.d, i32 %.0, i32 1
  br label %.preheader

bb.e:                                             ; preds = %.preheader, %.preheader, %.preheader, %.preheader
  %.not = icmp eq i32 %.0, 0
  %i.h = sub nsw i32 0, %.037
  %i.i = select i1 %.not, i32 %.037, i32 %i.h
  store i32 %i.i, ptr %1, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %bb.e, %bb.c
  %.039 = phi i32 [ 0, %bb.c ], [ 1, %bb.e ], [ 0, %.critedge ]
  ret i32 %.039
}

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define noundef ptr @Sto_ManLoadClauses(ptr noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.8) ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %0) ; 0 uses
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %calloc.i = tail call noalias noundef dereferenceable_or_null(56) ptr @calloc(i64 1, i64 56) ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 40
  store i32 65536, ptr %i.e, align 8, !tbaa !14
  %i.f = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #16
  %i.g = getelementptr inbounds nuw i8, ptr %calloc.i, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8 ; 2 uses
  %i.j = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef nonnull %i.b)
  %.not72 = icmp eq ptr %i.j, null
  br i1 %.not72, label %.outer.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.backedge
  %i.k = load i8, ptr %i.a, align 16, !tbaa !42
  switch i8 %i.k, label %bb.e [
    i8 99, label %.backedge
    i8 112, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.m = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.l, ptr noundef nonnull @.str.10, ptr noundef nonnull %calloc.i, ptr noundef nonnull %i.i, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g) #17 ; 0 uses
  br label %.outer.preheader

bb.e:                                             ; preds = %.lr.ph
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull %i.a) ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.e, %.lr.ph
  %i.o = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef nonnull %i.b)
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.outer.preheader, label %.lr.ph, !llvm.loop !39

.outer.preheader:                                 ; preds = %.backedge, %bb.c, %bb.d
  br label %.outer

.outer:                                           ; preds = %.outer.preheader, %lit_read.exit
  %.045.ph = phi i32 [ %i.an, %lit_read.exit ], [ 0, %.outer.preheader ]
  %.043.ph = phi i32 [ %.144, %lit_read.exit ], [ 1024, %.outer.preheader ] ; 3 uses
  %.041.ph = phi ptr [ %.1, %lit_read.exit ], [ %i.f, %.outer.preheader ] ; 7 uses
  br label %bb.f

bb.f:                                             ; preds = %.outer, %bb.k
  %.045 = phi i32 [ 0, %bb.k ], [ %.045.ph, %.outer ] ; 5 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.backedge, %bb.f
  %i.p = call i32 @fgetc(ptr noundef nonnull %i.b)
  switch i32 %i.p, label %.preheader.i [
    i32 -1, label %.loopexit
    i32 32, label %.critedge.i.backedge
    i32 13, label %.critedge.i.backedge
    i32 10, label %.critedge.i.backedge
    i32 9, label %.critedge.i.backedge
  ]

.critedge.i.backedge:                             ; preds = %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i
  br label %.critedge.i

.preheader.i:                                     ; preds = %.critedge.i, %bb.i
  %.037.i = phi i32 [ %.138.i, %bb.i ], [ 0, %.critedge.i ] ; 4 uses
  %.0.i = phi i32 [ %.1.i, %bb.i ], [ 0, %.critedge.i ] ; 2 uses
  %i.q = call i32 @fgetc(ptr noundef nonnull %i.b) ; 5 uses
  switch i32 %i.q, label %bb.g [
    i32 32, label %bb.j
    i32 13, label %bb.j
    i32 10, label %bb.j
    i32 9, label %bb.j
  ]

bb.g:                                             ; preds = %.preheader.i
  %i.r = add i32 %i.q, -58
  %or.cond11.i = icmp ult i32 %i.r, -10
  %i.s = icmp ne i32 %i.q, 45                     ; 3 uses
  %or.cond13.i = and i1 %i.s, %or.cond11.i
  br i1 %or.cond13.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.q) ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.u = mul nsw i32 %.037.i, 10
  %i.v = add nsw i32 %i.q, %i.u
  %.138.i = select i1 %i.s, i32 %i.v, i32 %.037.i
  %.1.i = select i1 %i.s, i32 %.0.i, i32 1
  br label %.preheader.i

bb.j:                                             ; preds = %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i
  %.not.i = icmp eq i32 %.0.i, 0
  %1 = sub nsw i32 0, %.037.i
  %2 = select i1 %.not.i, i32 %.037.i, i32 %1     ; 4 uses
  %i.w = icmp eq i32 %2, 0
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = sext i32 %.045 to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %.041.ph, i64 %i.x
  %i.z = call i32 @Sto_ManAddClause(ptr noundef nonnull %calloc.i, ptr noundef %.041.ph, ptr noundef %i.y) ; 0 uses
  br label %bb.f

bb.l:                                             ; preds = %bb.j
  %i.aa = icmp eq i32 %.045, %.043.ph
  br i1 %i.aa, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ab = shl nsw i32 %.043.ph, 1                 ; 3 uses
  %.not54 = icmp eq ptr %.041.ph, null
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 2                    ; 2 uses
  br i1 %.not54, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = call ptr @realloc(ptr noundef nonnull %.041.ph, i64 noundef %i.ad) #18
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.af = call noalias ptr @malloc(i64 noundef %i.ad) #16
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l
  %.144 = phi i32 [ %.043.ph, %bb.l ], [ %i.ab, %bb.o ], [ %i.ab, %bb.n ]
  %.1 = phi ptr [ %.041.ph, %bb.l ], [ %i.af, %bb.o ], [ %i.ae, %bb.n ] ; 2 uses
  %i.ag = icmp sgt i32 %2, 0
  br i1 %i.ag, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ah = shl nuw i32 %2, 1
  %i.ai = add i32 %i.ah, -2
  br label %lit_read.exit

bb.r:                                             ; preds = %bb.p
  %i.aj = xor i32 %2, -1
  %i.ak = shl nuw nsw i32 %i.aj, 1
  %i.al = or disjoint i32 %i.ak, 1
  br label %lit_read.exit

lit_read.exit:                                    ; preds = %bb.q, %bb.r
  %i.am = phi i32 [ %i.ai, %bb.q ], [ %i.al, %bb.r ]
  %i.an = add nsw i32 %.045, 1
  %i.ao = sext i32 %.045 to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %.1, i64 %i.ao
  store i32 %i.am, ptr %i.ap, align 4, !tbaa !18
  br label %.outer, !llvm.loop !40

.loopexit:                                        ; preds = %.critedge.i, %bb.h
  %i.aq = icmp sgt i32 %.045, 0
  br i1 %i.aq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.loopexit
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.046.in = phi ptr [ %i.ar, %bb.t ], [ %.046, %bb.u ]
  %.042 = phi i32 [ 0, %bb.t ], [ %i.as, %bb.u ]  ; 3 uses
  %.046 = load ptr, ptr %.046.in, align 8, !tbaa !22 ; 2 uses
  %.not51 = icmp eq ptr %.046, null
  %i.as = add nuw nsw i32 %.042, 1
  br i1 %.not51, label %bb.v, label %bb.u, !llvm.loop !41

bb.v:                                             ; preds = %bb.u
  %i.at = load i32, ptr %i.i, align 8, !tbaa !20  ; 2 uses
  %.not52 = icmp eq i32 %i.at, %.042
  br i1 %.not52, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %.042, i32 noundef %i.at) ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %calloc.i, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !13 ; 4 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %Sto_ManFree.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.w
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !16 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.ay, null
  br i1 %.not10.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.az = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %i.ay, %.preheader.i.i ] ; 3 uses
  %.011.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %i.aw, %.preheader.i.i ]
  call void @free(ptr noundef nonnull %.011.i.i) #17
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.0.lcssa.i.i = phi ptr [ %i.aw, %.preheader.i.i ], [ %i.az, %.lr.ph.i.i ]
  call void @free(ptr noundef nonnull %.0.lcssa.i.i) #17
  br label %Sto_ManFree.exit

Sto_ManFree.exit:                                 ; preds = %bb.w, %._crit_edge.i.i
  call void @free(ptr noundef nonnull %calloc.i) #17
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %.not53 = icmp eq ptr %.041.ph, null
  br i1 %.not53, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef nonnull %.041.ph) #17
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.bb = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %Sto_ManFree.exit, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %Sto_ManFree.exit ], [ %calloc.i, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

attributes #0 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(1) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !17}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS10Sto_Cls_t_", !9, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"Sto_Man_t_", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !10, i64 16, !10, i64 24, !10, i64 32, !6, i64 40, !6, i64 44, !11, i64 48}
!13 = !{!12, !11, i64 48}
!14 = !{!12, !6, i64 40}
!15 = !{!12, !6, i64 44}
!16 = !{!11, !11, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!6, !6, i64 0}
!19 = !{!12, !6, i64 0}
!20 = !{!12, !6, i64 8}
!21 = !{!12, !6, i64 4}
!22 = !{!10, !10, i64 0}
!23 = !{!12, !6, i64 12}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}
!28 = !{!"Sto_Cls_t_", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 28, !6, i64 28, !6, i64 28, !5, i64 32}
!29 = !{!28, !6, i64 24}
!30 = !{!12, !10, i64 16}
!31 = !{!12, !10, i64 24}
!32 = !{!28, !10, i64 0}
!33 = !{!12, !10, i64 32}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !17}
!39 = distinct !{!39, !17}
end_hunk_0
