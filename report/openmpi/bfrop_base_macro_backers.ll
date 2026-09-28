Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/bfrop_base_macro_backers?download=true
inline.NumInlined: 556
inline.NumDeleted: 143
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 43
begin_hunk_0_@PMIx_Argv_append_nosize:bb.a
  %i.m = phi ptr [ %i.k, %pmix_bfrops_base_tma_argv_count.exit.i ], [ %calloc.i, %bb.b ]
  %.0.i = phi i32 [ %.07.i.i, %pmix_bfrops_base_tma_argv_count.exit.i ], [ 0, %bb.b ]
  %i.n = tail call noalias ptr @strdup(ptr noundef readonly %1) #40 ; 2 uses
  %i.o = sext i32 %.0.i to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.o ; 2 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !42
  %i.q = icmp eq ptr %i.n, null
  br i1 %i.q, label %pmix_bfrops_base_tma_argv_append_nosize.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.p, i64 8
  store ptr null, ptr %i.r, align 8, !tbaa !42
  br label %pmix_bfrops_base_tma_argv_append_nosize.exit

pmix_bfrops_base_tma_argv_append_nosize.exit:     ; preds = %bb.b, %pmix_bfrops_base_tma_argv_count.exit.i, %bb.c, %bb.d
  %.022.i = phi i32 [ -29, %bb.b ], [ -29, %pmix_bfrops_base_tma_argv_count.exit.i ], [ 0, %bb.d ], [ -29, %bb.c ]
  ret i32 %.022.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -29, 1) i32 @PMIx_Argv_prepend_nosize(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.preheader.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #41 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !45
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %pmix_bfrops_base_tma_argv_prepend_nosize.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias ptr @strdup(ptr noundef readonly %1) #40
  store ptr %i.e, ptr %i.c, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !42
  br label %pmix_bfrops_base_tma_argv_prepend_nosize.exit

.preheader.i.i:                                   ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !42
  %.not1.i.i = icmp eq ptr %i.g, null
  br i1 %.not1.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.03.i.i = phi i32 [ %i.h, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %.062.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.a, %.preheader.i.i ]
  %i.h = add nuw nsw i32 %.03.i.i, 1              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.062.i.i, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i, label %.lr.ph.i.i, !llvm.loop !2

pmix_bfrops_base_tma_argv_count.exit.i:           ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.07.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.h, %.lr.ph.i.i ] ; 5 uses
  %i.k = add nsw i32 %.07.i.i, 2
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 3
  %i.n = tail call noalias noundef ptr @realloc(ptr noundef nonnull %i.a, i64 noundef %i.m) #39 ; 6 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !45
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %pmix_bfrops_base_tma_argv_prepend_nosize.exit, label %bb.d

bb.d:                                             ; preds = %pmix_bfrops_base_tma_argv_count.exit.i
  %i.p = sext i32 %.07.i.i to i64
  %i.q = getelementptr [8 x i8], ptr %i.n, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 8
  store ptr null, ptr %i.r, align 8, !tbaa !42
  %i.s = icmp sgt i32 %.07.i.i, 0
  br i1 %i.s, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.t = zext nneg i32 %.07.i.i to i64
  %i.u = shl nuw nsw i64 %i.t, 3                  ; 3 uses
  %i.v = add nsw i32 %.07.i.i, -1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 3                  ; 2 uses
  %i.y = sub nuw nsw i64 %i.u, %i.x
  %scevgep.i = getelementptr i8, ptr %i.n, i64 %i.y
  %i.z = add nsw i64 %i.u, -8
  %i.aa = sub nsw i64 %i.z, %i.x
  %scevgep2.i = getelementptr i8, ptr %i.n, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i, ptr align 8 %scevgep2.i, i64 %i.u, i1 false), !tbaa !42
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.d
  %i.ab = tail call noalias ptr @strdup(ptr noundef readonly %1) #40
  store ptr %i.ab, ptr %i.n, align 8, !tbaa !42
  br label %pmix_bfrops_base_tma_argv_prepend_nosize.exit

pmix_bfrops_base_tma_argv_prepend_nosize.exit:    ; preds = %bb.b, %bb.c, %pmix_bfrops_base_tma_argv_count.exit.i, %._crit_edge.i
  %.027.i = phi i32 [ -29, %bb.b ], [ -29, %pmix_bfrops_base_tma_argv_count.exit.i ], [ 0, %._crit_edge.i ], [ 0, %bb.c ]
  ret i32 %.027.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -29, 1) i32 @PMIx_Argv_append_unique_nosize(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %.not1.i = icmp eq ptr %i.c, null
  br i1 %.not1.i, label %pmix_bfrops_base_tma_argv_count.exit.i21.i, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  %calloc.i.i = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 3 uses
  store ptr %calloc.i.i, ptr %0, align 8, !tbaa !45
  %i.d = icmp eq ptr %calloc.i.i, null
  br i1 %i.d, label %pmix_bfrops_base_tma_argv_append_unique_nosize.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias ptr @strdup(ptr noundef readonly %1) #40 ; 2 uses
  store ptr %i.e, ptr %calloc.i.i, align 8, !tbaa !42
  %i.f = icmp eq ptr %i.e, null
  %spec.select.i = select i1 %i.f, i32 -29, i32 0
  br label %pmix_bfrops_base_tma_argv_append_unique_nosize.exit

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %.lr.ph.i.i17.i, label %.lr.ph.i, !llvm.loop !151

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.preheader.i ]
  %i.i = phi ptr [ %i.h, %bb.d ], [ %i.c, %.preheader.i ]
  %i.j = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.i) #38
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %pmix_bfrops_base_tma_argv_append_unique_nosize.exit, label %bb.d

.lr.ph.i.i17.i:                                   ; preds = %bb.d, %.lr.ph.i.i17.i
  %.03.i.i18.i = phi i32 [ %i.l, %.lr.ph.i.i17.i ], [ 0, %bb.d ]
  %.062.i.i19.i = phi ptr [ %i.m, %.lr.ph.i.i17.i ], [ %i.a, %bb.d ]
  %i.l = add nuw nsw i32 %.03.i.i18.i, 1          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.062.i.i19.i, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42
  %.not.i.i20.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i20.i, label %pmix_bfrops_base_tma_argv_count.exit.i21.i, label %.lr.ph.i.i17.i, !llvm.loop !2

pmix_bfrops_base_tma_argv_count.exit.i21.i:       ; preds = %.lr.ph.i.i17.i, %.preheader.i
  %.07.i.i22.i = phi i32 [ 0, %.preheader.i ], [ %i.l, %.lr.ph.i.i17.i ] ; 2 uses
  %i.o = add nsw i32 %.07.i.i22.i, 2
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 3
  %i.r = tail call noalias noundef ptr @realloc(ptr noundef nonnull %i.a, i64 noundef %i.q) #39 ; 3 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !45
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %pmix_bfrops_base_tma_argv_append_unique_nosize.exit, label %bb.e

bb.e:                                             ; preds = %pmix_bfrops_base_tma_argv_count.exit.i21.i
  %i.t = tail call noalias ptr @strdup(ptr noundef readonly %1) #40 ; 2 uses
  %i.u = sext i32 %.07.i.i22.i to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.u ; 2 uses
  store ptr %i.t, ptr %i.v, align 8, !tbaa !42
  %i.w = icmp eq ptr %i.t, null
  br i1 %i.w, label %pmix_bfrops_base_tma_argv_append_unique_nosize.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.v, i64 8
  store ptr null, ptr %i.x, align 8, !tbaa !42
  br label %pmix_bfrops_base_tma_argv_append_unique_nosize.exit

pmix_bfrops_base_tma_argv_append_unique_nosize.exit: ; preds = %.lr.ph.i, %bb.b, %bb.c, %pmix_bfrops_base_tma_argv_count.exit.i21.i, %bb.e, %bb.f
  %.013.i = phi i32 [ 0, %bb.f ], [ -29, %pmix_bfrops_base_tma_argv_count.exit.i21.i ], [ -29, %bb.b ], [ %spec.select.i, %bb.c ], [ -29, %bb.e ], [ 0, %.lr.ph.i ]
  ret i32 %.013.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @PMIx_Argv_free(ptr noundef captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %pmix_bfrops_base_tma_argv_free.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !42     ; 2 uses
  %.not101.i = icmp eq ptr %i.a, null
  br i1 %.not101.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  tail call void @free(ptr noundef nonnull %0) #40
  br label %pmix_bfrops_base_tma_argv_free.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.b = phi ptr [ %i.d, %.lr.ph.i ], [ %i.a, %.preheader.i ]
  %.02.i = phi ptr [ %i.c, %.lr.ph.i ], [ %0, %.preheader.i ]
  tail call void @free(ptr noundef nonnull %i.b) #40
  %i.c = getelementptr inbounds nuw i8, ptr %.02.i, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 2 uses
  %.not10.i = icmp eq ptr %i.d, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3

pmix_bfrops_base_tma_argv_free.exit:              ; preds = %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias ptr @PMIx_Argv_split_inter(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc ptr @pmix_bfrops_base_tma_argv_split_inter(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2)
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noalias ptr @pmix_bfrops_base_tma_argv_split_inter(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #6 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %.not27 = icmp eq ptr %0, null
  br i1 %.not27, label %.critedge, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !36      ; 2 uses
  %.not43102 = icmp eq i8 %i.b, 0
  br i1 %.not43102, label %.critedge, label %.preheader

.preheader:                                       ; preds = %.lr.ph30.preheader, %.backedge
  %i.c = phi i8 [ %i.y, %.backedge ], [ %i.b, %.lr.ph30.preheader ]
  %.0528104 = phi ptr [ %.05.be, %.backedge ], [ null, %.lr.ph30.preheader ] ; 17 uses
  %.04029103 = phi ptr [ %.040.be, %.backedge ], [ %0, %.lr.ph30.preheader ] ; 5 uses
  %i.d = sext i8 %i.c to i32
  %.not4522 = icmp eq i32 %1, %i.d
  br i1 %.not4522, label %.critedge2.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.024 = phi i64 [ %i.f, %.lr.ph ], [ 0, %.preheader ] ; 4 uses
  %.03823 = phi ptr [ %i.e, %.lr.ph ], [ %.04029103, %.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.03823, i64 1 ; 3 uses
  %i.f = add i64 %.024, 1                         ; 5 uses
  %.pr = load i8, ptr %i.e, align 1, !tbaa !36    ; 2 uses
  %.not44 = icmp eq i8 %.pr, 0                    ; 2 uses
  %i.g = sext i8 %.pr to i32
  %.not45 = icmp eq i32 %1, %i.g
  %or.cond = or i1 %.not44, %.not45
  br i1 %or.cond, label %.critedge2, label %.lr.ph, !llvm.loop !152

.critedge2.thread:                                ; preds = %.preheader
  br i1 %2, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.critedge2.thread
  store i8 0, ptr %i.a, align 16, !tbaa !36
  %i.h = icmp eq ptr %.0528104, null
  br i1 %i.h, label %bb.c, label %.preheader.i.i

bb.c:                                             ; preds = %bb.b
  %calloc.i = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 2 uses
  %i.i = icmp eq ptr %calloc.i, null
  br i1 %i.i, label %.critedge, label %bb.d

.preheader.i.i:                                   ; preds = %bb.b
  %i.j = load ptr, ptr %.0528104, align 8, !tbaa !42
  %.not1.i.i = icmp eq ptr %i.j, null
  br i1 %.not1.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.03.i.i = phi i32 [ %i.k, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %.062.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %.0528104, %.preheader.i.i ]
  %i.k = add nuw nsw i32 %.03.i.i, 1              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.062.i.i, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !42
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i, label %.lr.ph.i.i, !llvm.loop !2

pmix_bfrops_base_tma_argv_count.exit.i:           ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.07.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.k, %.lr.ph.i.i ] ; 2 uses
  %i.n = add nsw i32 %.07.i.i, 2
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 3
  %i.q = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.0528104, i64 noundef %i.p) #39 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c, %pmix_bfrops_base_tma_argv_count.exit.i
  %.1 = phi ptr [ %i.q, %pmix_bfrops_base_tma_argv_count.exit.i ], [ %calloc.i, %bb.c ] ; 2 uses
  %.0.i = phi i32 [ %.07.i.i, %pmix_bfrops_base_tma_argv_count.exit.i ], [ 0, %bb.c ]
  %i.s = call noalias ptr @strdup(ptr noundef nonnull readonly %i.a) #40 ; 2 uses
  %i.t = sext i32 %.0.i to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %.1, i64 %i.t ; 2 uses
  store ptr %i.s, ptr %i.u, align 8, !tbaa !42
  %i.v = icmp eq ptr %i.s, null
  br i1 %i.v, label %.critedge, label %pmix_bfrops_base_tma_argv_append_nosize.exit

pmix_bfrops_base_tma_argv_append_nosize.exit:     ; preds = %bb.d
  %i.w = getelementptr i8, ptr %i.u, i64 8
  store ptr null, ptr %i.w, align 8, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %pmix_bfrops_base_tma_argv_append_nosize.exit, %.critedge2.thread
  %.3 = phi ptr [ %.1, %pmix_bfrops_base_tma_argv_append_nosize.exit ], [ %.0528104, %.critedge2.thread ]
  %i.x = getelementptr inbounds nuw i8, ptr %.04029103, i64 1
  br label %.backedge

.backedge:                                        ; preds = %bb.e, %bb.t, %pmix_bfrops_base_tma_argv_append_nosize.exit61
  %.05.be = phi ptr [ %.3, %bb.e ], [ %.4, %pmix_bfrops_base_tma_argv_append_nosize.exit61 ], [ %.10, %bb.t ] ; 2 uses
  %.040.be = phi ptr [ %i.x, %bb.e ], [ %i.e, %pmix_bfrops_base_tma_argv_append_nosize.exit61 ], [ %i.cl, %bb.t ] ; 2 uses
  %i.y = load i8, ptr %.040.be, align 1, !tbaa !36 ; 2 uses
  %.not43 = icmp eq i8 %i.y, 0
  br i1 %.not43, label %.critedge, label %.preheader

.critedge2:                                       ; preds = %.lr.ph
  br i1 %.not44, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.critedge2
  %i.z = icmp eq ptr %.0528104, null
  br i1 %i.z, label %bb.g, label %.preheader.i.i50

bb.g:                                             ; preds = %bb.f
  %calloc.i60 = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 2 uses
  %i.aa = icmp eq ptr %calloc.i60, null
  br i1 %i.aa, label %.critedge, label %bb.h

.preheader.i.i50:                                 ; preds = %bb.f
  %i.ab = load ptr, ptr %.0528104, align 8, !tbaa !42
  %.not1.i.i51 = icmp eq ptr %i.ab, null
  br i1 %.not1.i.i51, label %pmix_bfrops_base_tma_argv_count.exit.i56, label %.lr.ph.i.i52

.lr.ph.i.i52:                                     ; preds = %.preheader.i.i50, %.lr.ph.i.i52
  %.03.i.i53 = phi i32 [ %i.ac, %.lr.ph.i.i52 ], [ 0, %.preheader.i.i50 ]
  %.062.i.i54 = phi ptr [ %i.ad, %.lr.ph.i.i52 ], [ %.0528104, %.preheader.i.i50 ]
  %i.ac = add nuw nsw i32 %.03.i.i53, 1           ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.062.i.i54, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42
  %.not.i.i55 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i55, label %pmix_bfrops_base_tma_argv_count.exit.i56, label %.lr.ph.i.i52, !llvm.loop !2

pmix_bfrops_base_tma_argv_count.exit.i56:         ; preds = %.lr.ph.i.i52, %.preheader.i.i50
  %.07.i.i57 = phi i32 [ 0, %.preheader.i.i50 ], [ %i.ac, %.lr.ph.i.i52 ] ; 2 uses
  %i.af = add nsw i32 %.07.i.i57, 2
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 3
  %i.ai = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.0528104, i64 noundef %i.ah) #39 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g, %pmix_bfrops_base_tma_argv_count.exit.i56
  %.4 = phi ptr [ %i.ai, %pmix_bfrops_base_tma_argv_count.exit.i56 ], [ %calloc.i60, %bb.g ] ; 2 uses
  %.0.i58 = phi i32 [ %.07.i.i57, %pmix_bfrops_base_tma_argv_count.exit.i56 ], [ 0, %bb.g ]
  %i.ak = tail call noalias ptr @strdup(ptr noundef nonnull readonly %.04029103) #40 ; 2 uses
  %i.al = sext i32 %.0.i58 to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %.4, i64 %i.al ; 2 uses
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !42
  %i.an = icmp eq ptr %i.ak, null
  br i1 %i.an, label %.critedge, label %pmix_bfrops_base_tma_argv_append_nosize.exit61

pmix_bfrops_base_tma_argv_append_nosize.exit61:   ; preds = %bb.h
  %i.ao = getelementptr i8, ptr %i.am, i64 8
  store ptr null, ptr %i.ao, align 8, !tbaa !42
  br label %.backedge

bb.i:                                             ; preds = %.critedge2
  %i.ap = icmp ugt i64 %i.f, 511
  br i1 %i.ap, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.aq = add i64 %.024, 2
  %i.ar = tail call noalias noundef ptr @malloc(i64 noundef %i.aq) #41 ; 6 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %.012.i = phi i64 [ %i.av, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %.0811.i = phi ptr [ %i.ax, %bb.k ], [ %i.ar, %bb.j ] ; 3 uses
  %.0910.i = phi ptr [ %i.aw, %bb.k ], [ %.04029103, %bb.j ] ; 2 uses
  %i.at = load i8, ptr %.0910.i, align 1, !tbaa !36 ; 2 uses
  store i8 %i.at, ptr %.0811.i, align 1, !tbaa !36
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %pmix_strncpy.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.av = add nuw i64 %.012.i, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i, i64 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.0811.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.012.i, %.024
  br i1 %exitcond.not.i, label %pmix_strncpy.exit, label %.lr.ph.i, !llvm.loop !0

pmix_strncpy.exit:                                ; preds = %.lr.ph.i, %bb.k
  %.08.lcssa.i = phi ptr [ %i.ax, %bb.k ], [ %.0811.i, %.lr.ph.i ]
  store i8 0, ptr %.08.lcssa.i, align 1, !tbaa !36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f
  store i8 0, ptr %i.ay, align 1, !tbaa !36
  %i.az = icmp eq ptr %.0528104, null
  br i1 %i.az, label %bb.l, label %.preheader.i.i62

bb.l:                                             ; preds = %pmix_strncpy.exit
  %calloc.i72 = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 2 uses
  %i.ba = icmp eq ptr %calloc.i72, null
  br i1 %i.ba, label %bb.n, label %bb.m

.preheader.i.i62:                                 ; preds = %pmix_strncpy.exit
  %i.bb = load ptr, ptr %.0528104, align 8, !tbaa !42
  %.not1.i.i63 = icmp eq ptr %i.bb, null
  br i1 %.not1.i.i63, label %pmix_bfrops_base_tma_argv_count.exit.i68, label %.lr.ph.i.i64

.lr.ph.i.i64:                                     ; preds = %.preheader.i.i62, %.lr.ph.i.i64
  %.03.i.i65 = phi i32 [ %i.bc, %.lr.ph.i.i64 ], [ 0, %.preheader.i.i62 ]
  %.062.i.i66 = phi ptr [ %i.bd, %.lr.ph.i.i64 ], [ %.0528104, %.preheader.i.i62 ]
  %i.bc = add nuw nsw i32 %.03.i.i65, 1           ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.062.i.i66, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !42
  %.not.i.i67 = icmp eq ptr %i.be, null
  br i1 %.not.i.i67, label %pmix_bfrops_base_tma_argv_count.exit.i68, label %.lr.ph.i.i64, !llvm.loop !2

pmix_bfrops_base_tma_argv_count.exit.i68:         ; preds = %.lr.ph.i.i64, %.preheader.i.i62
  %.07.i.i69 = phi i32 [ 0, %.preheader.i.i62 ], [ %i.bc, %.lr.ph.i.i64 ] ; 2 uses
  %i.bf = add nsw i32 %.07.i.i69, 2
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 3
  %i.bi = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.0528104, i64 noundef %i.bh) #39 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %pmix_bfrops_base_tma_argv_count.exit.i68
  %.6 = phi ptr [ %i.bi, %pmix_bfrops_base_tma_argv_count.exit.i68 ], [ %calloc.i72, %bb.l ] ; 2 uses
  %.0.i70 = phi i32 [ %.07.i.i69, %pmix_bfrops_base_tma_argv_count.exit.i68 ], [ 0, %bb.l ]
  %i.bk = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.ar) #40 ; 2 uses
  %i.bl = sext i32 %.0.i70 to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %.6, i64 %i.bl ; 2 uses
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !42
  %i.bn = icmp eq ptr %i.bk, null
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.l, %pmix_bfrops_base_tma_argv_count.exit.i68, %bb.m
  tail call void @free(ptr noundef nonnull %i.ar) #40
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bo = getelementptr i8, ptr %i.bm, i64 8
  store ptr null, ptr %i.bo, align 8, !tbaa !42
  tail call void @free(ptr noundef nonnull %i.ar) #40
  br label %bb.t

bb.p:                                             ; preds = %bb.i
  %.not.i74 = icmp eq i64 %i.f, 0
  br i1 %.not.i74, label %pmix_strncpy.exit81, label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %bb.p, %bb.q
  %.012.i76 = phi i64 [ %i.br, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %.0811.i77 = phi ptr [ %i.bt, %bb.q ], [ %i.a, %bb.p ] ; 3 uses
  %.0910.i78 = phi ptr [ %i.bs, %bb.q ], [ %.04029103, %bb.p ] ; 2 uses
  %i.bp = load i8, ptr %.0910.i78, align 1, !tbaa !36 ; 2 uses
  store i8 %i.bp, ptr %.0811.i77, align 1, !tbaa !36
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %pmix_strncpy.exit81, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i75
  %i.br = add nuw nsw i64 %.012.i76, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.0910.i78, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i77, i64 1 ; 2 uses
  %exitcond.not.i79 = icmp eq i64 %.012.i76, %.024
  br i1 %exitcond.not.i79, label %pmix_strncpy.exit81, label %.lr.ph.i75, !llvm.loop !0

pmix_strncpy.exit81:                              ; preds = %.lr.ph.i75, %bb.q, %bb.p
  %.08.lcssa.i80 = phi ptr [ %i.a, %bb.p ], [ %.0811.i77, %.lr.ph.i75 ], [ %i.bt, %bb.q ]
  store i8 0, ptr %.08.lcssa.i80, align 1, !tbaa !36
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  store i8 0, ptr %i.bu, align 1, !tbaa !36
  %i.bv = icmp eq ptr %.0528104, null
  br i1 %i.bv, label %bb.r, label %.preheader.i.i82

bb.r:                                             ; preds = %pmix_strncpy.exit81
  %calloc.i92 = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 2 uses
  %i.bw = icmp eq ptr %calloc.i92, null
  br i1 %i.bw, label %.critedge, label %bb.s

.preheader.i.i82:                                 ; preds = %pmix_strncpy.exit81
  %i.bx = load ptr, ptr %.0528104, align 8, !tbaa !42
  %.not1.i.i83 = icmp eq ptr %i.bx, null
  br i1 %.not1.i.i83, label %pmix_bfrops_base_tma_argv_count.exit.i88, label %.lr.ph.i.i84

.lr.ph.i.i84:                                     ; preds = %.preheader.i.i82, %.lr.ph.i.i84
  %.03.i.i85 = phi i32 [ %i.by, %.lr.ph.i.i84 ], [ 0, %.preheader.i.i82 ]
  %.062.i.i86 = phi ptr [ %i.bz, %.lr.ph.i.i84 ], [ %.0528104, %.preheader.i.i82 ]
  %i.by = add nuw nsw i32 %.03.i.i85, 1           ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.062.i.i86, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !42
  %.not.i.i87 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i87, label %pmix_bfrops_base_tma_argv_count.exit.i88, label %.lr.ph.i.i84, !llvm.loop !2

pmix_bfrops_base_tma_argv_count.exit.i88:         ; preds = %.lr.ph.i.i84, %.preheader.i.i82
  %.07.i.i89 = phi i32 [ 0, %.preheader.i.i82 ], [ %i.by, %.lr.ph.i.i84 ] ; 2 uses
  %i.cb = add nsw i32 %.07.i.i89, 2
  %i.cc = sext i32 %i.cb to i64
  %i.cd = shl nsw i64 %i.cc, 3
  %i.ce = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.0528104, i64 noundef %i.cd) #39 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r, %pmix_bfrops_base_tma_argv_count.exit.i88
  %.8 = phi ptr [ %i.ce, %pmix_bfrops_base_tma_argv_count.exit.i88 ], [ %calloc.i92, %bb.r ] ; 2 uses
  %.0.i90 = phi i32 [ %.07.i.i89, %pmix_bfrops_base_tma_argv_count.exit.i88 ], [ 0, %bb.r ]
  %i.cg = call noalias ptr @strdup(ptr noundef nonnull readonly %i.a) #40 ; 2 uses
  %i.ch = sext i32 %.0.i90 to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %.8, i64 %i.ch ; 2 uses
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !42
  %i.cj = icmp eq ptr %i.cg, null
  br i1 %i.cj, label %.critedge, label %pmix_bfrops_base_tma_argv_append_nosize.exit93

pmix_bfrops_base_tma_argv_append_nosize.exit93:   ; preds = %bb.s
  %i.ck = getelementptr i8, ptr %i.ci, i64 8
  store ptr null, ptr %i.ck, align 8, !tbaa !42
  br label %bb.t

bb.t:                                             ; preds = %pmix_bfrops_base_tma_argv_append_nosize.exit93, %bb.o
  %.10 = phi ptr [ %.6, %bb.o ], [ %.8, %pmix_bfrops_base_tma_argv_append_nosize.exit93 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.03823, i64 2
  br label %.backedge

.critedge:                                        ; preds = %bb.s, %pmix_bfrops_base_tma_argv_count.exit.i88, %bb.r, %bb.h, %pmix_bfrops_base_tma_argv_count.exit.i56, %bb.g, %bb.d, %pmix_bfrops_base_tma_argv_count.exit.i, %bb.c, %.backedge, %bb.j, %.lr.ph30.preheader, %bb.a, %bb.n
  %.039 = phi ptr [ null, %bb.n ], [ null, %bb.a ], [ null, %.lr.ph30.preheader ], [ null, %bb.j ], [ null, %bb.h ], [ null, %bb.d ], [ %.05.be, %.backedge ], [ null, %bb.c ], [ null, %pmix_bfrops_base_tma_argv_count.exit.i ], [ null, %bb.g ], [ null, %pmix_bfrops_base_tma_argv_count.exit.i56 ], [ null, %bb.r ], [ null, %pmix_bfrops_base_tma_argv_count.exit.i88 ], [ null, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret ptr %.039
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias ptr @PMIx_Argv_split_with_empty(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noalias ptr @pmix_bfrops_base_tma_argv_split_inter(ptr noundef readonly %0, i32 noundef %1, i1 noundef zeroext true)
  ret ptr %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias ptr @PMIx_Argv_split(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noalias ptr @pmix_bfrops_base_tma_argv_split_inter(ptr noundef readonly %0, i32 noundef %1, i1 noundef zeroext false)
  ret ptr %i.a
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define noalias noundef ptr @PMIx_Argv_join(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !42     ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %.preheader.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call noalias dereferenceable_or_null(1) ptr @strdup(ptr noundef nonnull @.str.1) #40
  br label %pmix_bfrops_base_tma_argv_join.exit

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %.0272.i = phi i64 [ %i.h, %.preheader.i ], [ 0, %bb.b ] ; 2 uses
  %.0291.i = phi ptr [ %i.i, %.preheader.i ], [ %0, %bb.b ]
  %i.e = phi ptr [ %.pr.i, %.preheader.i ], [ %i.b, %bb.b ]
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #38 ; 2 uses
  %i.g = add i64 %i.f, %.0272.i                   ; 6 uses
  %i.h = add i64 %i.g, 1                          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0291.i, i64 8 ; 2 uses
  %.pr.i = load ptr, ptr %i.i, align 8, !tbaa !42 ; 2 uses
  %.not.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i, label %bb.d, label %.preheader.i, !llvm.loop !153

bb.d:                                             ; preds = %.preheader.i
  %i.j = tail call noalias noundef ptr @malloc(i64 noundef %i.h) #41 ; 12 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %pmix_bfrops_base_tma_argv_join.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  store i8 0, ptr %i.l, align 1, !tbaa !36
  %.not6.i = icmp eq i64 %i.g, 0
  br i1 %.not6.i, label %pmix_bfrops_base_tma_argv_join.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.m = trunc i32 %1 to i8                       ; 3 uses
  %i.n = add i64 %i.f, -1
  %xtraiter = and i64 %i.g, 1
  %i.o = sub i64 0, %.0272.i
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.g, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %.lr.ph.i.new
  %.05.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.af, %bb.l ] ; 4 uses
  %.0284.i = phi ptr [ %i.b, %.lr.ph.i.new ], [ %.1.i.1, %bb.l ] ; 2 uses
  %.1303.i = phi ptr [ %0, %.lr.ph.i.new ], [ %.2.i.1, %bb.l ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.l ]
  %i.q = load i8, ptr %.0284.i, align 1, !tbaa !36 ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %.05.i
  store i8 %i.m, ptr %i.s, align 1, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %.1303.i, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.0284.i, i64 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %.05.i
  store i8 %i.q, ptr %i.w, align 1, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2.i = phi ptr [ %i.t, %bb.g ], [ %.1303.i, %bb.h ] ; 2 uses
  %.1.i = phi ptr [ %i.u, %bb.g ], [ %i.v, %bb.h ] ; 2 uses
  %i.x = or disjoint i64 %.05.i, 1                ; 2 uses
  %i.y = load i8, ptr %.1.i, align 1, !tbaa !36   ; 2 uses
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.x
  store i8 %i.y, ptr %i.ab, align 1, !tbaa !36
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.x
  store i8 %i.m, ptr %i.ac, align 1, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %.2.i, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2.i.1 = phi ptr [ %i.ad, %bb.k ], [ %.2.i, %bb.j ]
  %.1.i.1 = phi ptr [ %i.ae, %bb.k ], [ %i.aa, %bb.j ] ; 2 uses
  %i.af = add nuw i64 %.05.i, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %pmix_bfrops_base_tma_argv_join.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !154

pmix_bfrops_base_tma_argv_join.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %pmix_bfrops_base_tma_argv_join.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %pmix_bfrops_base_tma_argv_join.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.05.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.af, %pmix_bfrops_base_tma_argv_join.exit.loopexit.unr-lcssa ] ; 2 uses
  %.0284.i.epil.init = phi ptr [ %i.b, %.lr.ph.i ], [ %.1.i.1, %pmix_bfrops_base_tma_argv_join.exit.loopexit.unr-lcssa ]
  %lcmp.mod12 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.ag = load i8, ptr %.0284.i.epil.init, align 1, !tbaa !36 ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.epil.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 %.05.i.epil.init
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !36
  br label %pmix_bfrops_base_tma_argv_join.exit

bb.n:                                             ; preds = %.epil.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 %.05.i.epil.init
  store i8 %i.m, ptr %i.aj, align 1, !tbaa !36
  br label %pmix_bfrops_base_tma_argv_join.exit

pmix_bfrops_base_tma_argv_join.exit:              ; preds = %pmix_bfrops_base_tma_argv_join.exit.loopexit.unr-lcssa, %bb.n, %bb.m, %bb.c, %bb.d, %bb.e
  %.031.i = phi ptr [ %i.d, %bb.c ], [ null, %bb.d ], [ %i.j, %bb.e ], [ %i.j, %bb.m ], [ %i.j, %bb.n ], [ %i.j, %pmix_bfrops_base_tma_argv_join.exit.loopexit.unr-lcssa ]
  ret ptr %.031.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @PMIx_Argv_copy(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %pmix_bfrops_base_tma_argv_copy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #41 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !42
  %i.c = load ptr, ptr %0, align 8, !tbaa !42     ; 2 uses
  %.not12.i = icmp eq ptr %i.c, null
  br i1 %.not12.i, label %pmix_bfrops_base_tma_argv_copy.exit, label %.preheader.i.i.i

.preheader.i.ithread-pre-split.i:                 ; preds = %bb.d
  %.pr.i = load ptr, ptr %i.l, align 8, !tbaa !42
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b, %.preheader.i.ithread-pre-split.i
  %i.d = phi ptr [ %.pr.i, %.preheader.i.ithread-pre-split.i ], [ null, %bb.b ]
  %i.e = phi ptr [ %i.x, %.preheader.i.ithread-pre-split.i ], [ %i.c, %bb.b ]
  %.0814.i = phi ptr [ %i.w, %.preheader.i.ithread-pre-split.i ], [ %0, %bb.b ]
  %.0313.i = phi ptr [ %i.l, %.preheader.i.ithread-pre-split.i ], [ %i.b, %bb.b ] ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not1.i.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.03.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i ], [ 0, %.preheader.i.i.i ]
  %.062.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %.0313.i, %.preheader.i.i.i ]
  %i.f = add nuw nsw i32 %.03.i.i.i, 1            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.062.i.i.i, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2

pmix_bfrops_base_tma_argv_count.exit.i.i:         ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  %.07.i.i.i = phi i32 [ 0, %.preheader.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 2 uses
  %i.i = add nsw i32 %.07.i.i.i, 2
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 3
  %i.l = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.0313.i, i64 noundef %i.k) #39 ; 8 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %pmix_bfrops_base_tma_argv_copy.exit, label %bb.c

bb.c:                                             ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i
  %i.n = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.e) #40 ; 2 uses
  %i.o = sext i32 %.07.i.i.i to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.o ; 2 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !42
  %i.q = icmp eq ptr %i.n, null
  br i1 %i.q, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %bb.c
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !42   ; 2 uses
  %.not101.i.i = icmp eq ptr %i.r, null
  br i1 %.not101.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  tail call void @free(ptr noundef nonnull %i.l) #40
  br label %pmix_bfrops_base_tma_argv_copy.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.s = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.r, %.preheader.i.i ]
  %.02.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.l, %.preheader.i.i ]
  tail call void @free(ptr noundef nonnull %i.s) #40
  %i.t = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.u, null
  br i1 %.not10.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !3
end_hunk_0
