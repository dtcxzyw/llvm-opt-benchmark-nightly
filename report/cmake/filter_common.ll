Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/filter_common?download=true
inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@lzma_filters_copy:bb.a

._crit_edge.fold.split89.2:                       ; preds = %.preheader.2
  br label %._crit_edge.2

._crit_edge.fold.split88.2:                       ; preds = %.preheader.2
  br label %._crit_edge.2

._crit_edge.fold.split87.2:                       ; preds = %.preheader.2
  br label %._crit_edge.2

._crit_edge.fold.split86.2:                       ; preds = %.preheader.2
  br label %._crit_edge.2

._crit_edge.fold.split85.2:                       ; preds = %.preheader.2
  br label %._crit_edge.2

._crit_edge.fold.split.2:                         ; preds = %.preheader.2
  br label %._crit_edge.2

._crit_edge.2:                                    ; preds = %._crit_edge.fold.split.2, %._crit_edge.fold.split85.2, %._crit_edge.fold.split86.2, %._crit_edge.fold.split87.2, %._crit_edge.fold.split88.2, %._crit_edge.fold.split89.2, %._crit_edge.fold.split90.2, %._crit_edge.fold.split91.2, %._crit_edge.fold.split92.2, %.preheader.2
  %.lcssa.2 = phi ptr [ @features, %.preheader.2 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 192), %._crit_edge.fold.split91.2 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 24), %._crit_edge.fold.split.2 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 48), %._crit_edge.fold.split85.2 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 72), %._crit_edge.fold.split86.2 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 96), %._crit_edge.fold.split87.2 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 120), %._crit_edge.fold.split88.2 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 144), %._crit_edge.fold.split89.2 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 168), %._crit_edge.fold.split90.2 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 216), %._crit_edge.fold.split92.2 ]
  %i.u = getelementptr inbounds nuw i8, ptr %.lcssa.2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !14   ; 2 uses
  %i.w = tail call ptr @lzma_alloc(i64 noundef %i.v, ptr noundef %2) #4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.w, ptr %i.x, align 8, !tbaa !13
  %i.y = icmp eq ptr %i.w, null
  br i1 %i.y, label %.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge.2
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.z, i64 %i.v, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph60.1
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.aa, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !9  ; 3 uses
  %.not.2 = icmp eq i64 %i.ac, -1
  br i1 %.not.2, label %._crit_edge61, label %.lr.ph60.2, !llvm.loop !17

.lr.ph60.2:                                       ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %i.ac, ptr %i.ad, align 16, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !13
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.j, label %.preheader.3

.preheader.3:                                     ; preds = %.lr.ph60.2
  switch i64 %i.ac, label %.thread [
    i64 4611686018427387905, label %._crit_edge.3
    i64 4611686018427387906, label %._crit_edge.fold.split.3
    i64 33, label %._crit_edge.fold.split85.3
    i64 4, label %._crit_edge.fold.split86.3
    i64 5, label %._crit_edge.fold.split87.3
    i64 6, label %._crit_edge.fold.split88.3
    i64 7, label %._crit_edge.fold.split89.3
    i64 8, label %._crit_edge.fold.split90.3
    i64 9, label %._crit_edge.fold.split91.3
    i64 3, label %._crit_edge.fold.split92.3
  ]

._crit_edge.fold.split92.3:                       ; preds = %.preheader.3
  br label %._crit_edge.3

._crit_edge.fold.split91.3:                       ; preds = %.preheader.3
  br label %._crit_edge.3

._crit_edge.fold.split90.3:                       ; preds = %.preheader.3
  br label %._crit_edge.3

._crit_edge.fold.split89.3:                       ; preds = %.preheader.3
  br label %._crit_edge.3

._crit_edge.fold.split88.3:                       ; preds = %.preheader.3
  br label %._crit_edge.3

._crit_edge.fold.split87.3:                       ; preds = %.preheader.3
  br label %._crit_edge.3

._crit_edge.fold.split86.3:                       ; preds = %.preheader.3
  br label %._crit_edge.3

._crit_edge.fold.split85.3:                       ; preds = %.preheader.3
  br label %._crit_edge.3

._crit_edge.fold.split.3:                         ; preds = %.preheader.3
  br label %._crit_edge.3

._crit_edge.3:                                    ; preds = %._crit_edge.fold.split.3, %._crit_edge.fold.split85.3, %._crit_edge.fold.split86.3, %._crit_edge.fold.split87.3, %._crit_edge.fold.split88.3, %._crit_edge.fold.split89.3, %._crit_edge.fold.split90.3, %._crit_edge.fold.split91.3, %._crit_edge.fold.split92.3, %.preheader.3
  %.lcssa.3 = phi ptr [ @features, %.preheader.3 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 192), %._crit_edge.fold.split91.3 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 24), %._crit_edge.fold.split.3 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 48), %._crit_edge.fold.split85.3 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 72), %._crit_edge.fold.split86.3 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 96), %._crit_edge.fold.split87.3 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 120), %._crit_edge.fold.split88.3 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 144), %._crit_edge.fold.split89.3 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 168), %._crit_edge.fold.split90.3 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 216), %._crit_edge.fold.split92.3 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.lcssa.3, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !14 ; 2 uses
  %i.aj = tail call ptr @lzma_alloc(i64 noundef %i.ai, ptr noundef %2) #4 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !13
  %i.al = icmp eq ptr %i.aj, null
  br i1 %i.al, label %.thread, label %bb.i

bb.i:                                             ; preds = %._crit_edge.3
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.am, i64 %i.ai, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph60.2
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.an, align 8, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !9
  %.not.3 = icmp eq i64 %i.ap, -1
  br i1 %.not.3, label %._crit_edge61, label %.lr.ph65.preheader, !llvm.loop !17

.lr.ph60.preheader:                               ; preds = %bb.b
  store i64 %i.c, ptr %3, align 16, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !13
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.l, label %.preheader

.preheader:                                       ; preds = %.lr.ph60.preheader
  switch i64 %i.c, label %.thread [
    i64 4611686018427387905, label %._crit_edge
    i64 4611686018427387906, label %._crit_edge.fold.split
    i64 33, label %._crit_edge.fold.split85
    i64 4, label %._crit_edge.fold.split86
    i64 5, label %._crit_edge.fold.split87
    i64 6, label %._crit_edge.fold.split88
    i64 7, label %._crit_edge.fold.split89
    i64 8, label %._crit_edge.fold.split90
    i64 9, label %._crit_edge.fold.split91
    i64 3, label %._crit_edge.fold.split92
  ]

bb.l:                                             ; preds = %.lr.ph60.preheader
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.at, align 8, !tbaa !13
  br label %bb.n

._crit_edge.fold.split:                           ; preds = %.preheader
  br label %._crit_edge

._crit_edge.fold.split85:                         ; preds = %.preheader
  br label %._crit_edge

._crit_edge.fold.split86:                         ; preds = %.preheader
  br label %._crit_edge

._crit_edge.fold.split87:                         ; preds = %.preheader
  br label %._crit_edge

._crit_edge.fold.split88:                         ; preds = %.preheader
  br label %._crit_edge

._crit_edge.fold.split89:                         ; preds = %.preheader
  br label %._crit_edge

._crit_edge.fold.split90:                         ; preds = %.preheader
  br label %._crit_edge

._crit_edge.fold.split91:                         ; preds = %.preheader
  br label %._crit_edge

._crit_edge.fold.split92:                         ; preds = %.preheader
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %._crit_edge.fold.split92, %._crit_edge.fold.split91, %._crit_edge.fold.split90, %._crit_edge.fold.split89, %._crit_edge.fold.split88, %._crit_edge.fold.split87, %._crit_edge.fold.split86, %._crit_edge.fold.split85, %._crit_edge.fold.split
  %.lcssa = phi ptr [ @features, %.preheader ], [ getelementptr inbounds nuw (i8, ptr @features, i64 192), %._crit_edge.fold.split91 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 24), %._crit_edge.fold.split ], [ getelementptr inbounds nuw (i8, ptr @features, i64 48), %._crit_edge.fold.split85 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 72), %._crit_edge.fold.split86 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 96), %._crit_edge.fold.split87 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 120), %._crit_edge.fold.split88 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 144), %._crit_edge.fold.split89 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 168), %._crit_edge.fold.split90 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 216), %._crit_edge.fold.split92 ]
  %i.au = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !14 ; 2 uses
  %i.aw = tail call ptr @lzma_alloc(i64 noundef %i.av, ptr noundef %2) #4 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !13
  %i.ay = icmp eq ptr %i.aw, null
  br i1 %i.ay, label %.thread, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr align 1 %i.az, i64 %i.av, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !9  ; 3 uses
  %.not = icmp eq i64 %i.bb, -1
  br i1 %.not, label %._crit_edge61, label %.lr.ph60, !llvm.loop !17

._crit_edge61:                                    ; preds = %bb.n, %bb.e, %bb.h, %bb.k, %bb.b
  %.036.lcssa = phi i64 [ 0, %bb.b ], [ 1, %bb.n ], [ 2, %bb.e ], [ 3, %bb.h ], [ 4, %bb.k ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.036.lcssa ; 2 uses
  store i64 -1, ptr %i.bc, align 16, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr null, ptr %i.bd, align 8, !tbaa !13
  %i.be = shl nsw i64 %.036.lcssa, 4
  %i.bf = add nsw i64 %i.be, 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr nonnull align 16 %3, i64 %i.bf, i1 false)
  br label %.loopexit

.thread:                                          ; preds = %._crit_edge.3, %.preheader.3, %._crit_edge.2, %.preheader.2, %._crit_edge.1, %.preheader.1, %.preheader, %._crit_edge
  %.not4763 = phi i1 [ true, %.preheader ], [ true, %._crit_edge ], [ false, %.preheader.1 ], [ false, %._crit_edge.1 ], [ false, %.preheader.2 ], [ false, %._crit_edge.2 ], [ false, %.preheader.3 ], [ false, %._crit_edge.3 ]
  %.0365896.lcssa = phi i64 [ 0, %.preheader ], [ 0, %._crit_edge ], [ 1, %.preheader.1 ], [ 1, %._crit_edge.1 ], [ 2, %.preheader.2 ], [ 2, %._crit_edge.2 ], [ 3, %.preheader.3 ], [ 3, %._crit_edge.3 ]
  %.3 = phi i32 [ 8, %.preheader ], [ 5, %._crit_edge ], [ 8, %.preheader.1 ], [ 5, %._crit_edge.1 ], [ 8, %.preheader.2 ], [ 5, %._crit_edge.2 ], [ 8, %.preheader.3 ], [ 5, %._crit_edge.3 ] ; 2 uses
  br i1 %.not4763, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.k, %.thread
  %.381 = phi i32 [ %.3, %.thread ], [ 8, %bb.k ]
  %.036587080 = phi i64 [ %.0365896.lcssa, %.thread ], [ 4, %bb.k ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader, %.lr.ph65
  %.164 = phi i64 [ %i.bg, %.lr.ph65 ], [ %.036587080, %.lr.ph65.preheader ]
  %i.bg = add i64 %.164, -1                       ; 3 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !13
  tail call void @lzma_free(ptr noundef %i.bj, ptr noundef %2) #4
  %.not47 = icmp eq i64 %i.bg, 0
  br i1 %.not47, label %.loopexit, label %.lr.ph65, !llvm.loop !19

.loopexit:                                        ; preds = %.lr.ph65, %.thread, %._crit_edge61
  %.039 = phi i32 [ 0, %._crit_edge61 ], [ %.3, %.thread ], [ %.381, %.lr.ph65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %.loopexit
  %.140 = phi i32 [ %.039, %.loopexit ], [ 11, %bb.a ]
  ret i32 %.140
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @lzma_filters_free(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !9
  %.not12 = icmp eq i64 %i.b, -1
  br i1 %.not12, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.013 = phi i64 [ %i.f, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.013 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  tail call void @lzma_free(ptr noundef %i.e, ptr noundef %1) #4
  store ptr null, ptr %i.d, align 8, !tbaa !13
  store i64 -1, ptr %i.c, align 8, !tbaa !9
  %i.f = add nuw nsw i64 %.013, 1                 ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !9
  %.not = icmp eq i64 %i.h, -1
  %i.i = icmp eq i64 %i.f, 4
  %or.cond = or i1 %i.i, %.not
  br i1 %or.cond, label %.loopexit, label %.lr.ph, !llvm.loop !20

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 12) i32 @lzma_validate_chain(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.c
  %i.d = phi i64 [ %i.n, %bb.c ], [ %i.b, %bb.b ]
  %.028 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ]
  %.026 = phi i8 [ %i.g, %bb.c ], [ 1, %bb.b ]
  %.024 = phi i64 [ %i.l, %bb.c ], [ 0, %bb.b ]
  switch i64 %i.d, label %.critedge [
    i64 4611686018427387905, label %._crit_edge
    i64 4611686018427387906, label %._crit_edge.fold.split
    i64 33, label %._crit_edge.fold.split54
    i64 4, label %._crit_edge.fold.split55
    i64 5, label %._crit_edge.fold.split56
    i64 6, label %._crit_edge.fold.split57
    i64 7, label %._crit_edge.fold.split58
    i64 8, label %._crit_edge.fold.split59
    i64 9, label %._crit_edge.fold.split60
    i64 3, label %._crit_edge.fold.split61
  ]

._crit_edge.fold.split:                           ; preds = %.preheader
  br label %._crit_edge

._crit_edge.fold.split54:                         ; preds = %.preheader
  br label %._crit_edge

._crit_edge.fold.split55:                         ; preds = %.preheader
  br label %._crit_edge

._crit_edge.fold.split56:                         ; preds = %.preheader
  br label %._crit_edge

._crit_edge.fold.split57:                         ; preds = %.preheader
  br label %._crit_edge

._crit_edge.fold.split58:                         ; preds = %.preheader
  br label %._crit_edge

._crit_edge.fold.split59:                         ; preds = %.preheader
  br label %._crit_edge

._crit_edge.fold.split60:                         ; preds = %.preheader
  br label %._crit_edge

._crit_edge.fold.split61:                         ; preds = %.preheader
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %._crit_edge.fold.split61, %._crit_edge.fold.split60, %._crit_edge.fold.split59, %._crit_edge.fold.split58, %._crit_edge.fold.split57, %._crit_edge.fold.split56, %._crit_edge.fold.split55, %._crit_edge.fold.split54, %._crit_edge.fold.split
  %.lcssa = phi ptr [ @features, %.preheader ], [ getelementptr inbounds nuw (i8, ptr @features, i64 192), %._crit_edge.fold.split60 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 24), %._crit_edge.fold.split ], [ getelementptr inbounds nuw (i8, ptr @features, i64 48), %._crit_edge.fold.split54 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 72), %._crit_edge.fold.split55 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 96), %._crit_edge.fold.split56 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 120), %._crit_edge.fold.split57 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 144), %._crit_edge.fold.split58 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 168), %._crit_edge.fold.split59 ], [ getelementptr inbounds nuw (i8, ptr @features, i64 216), %._crit_edge.fold.split61 ] ; 3 uses
  %i.e = trunc nuw i8 %.026 to i1
  br i1 %i.e, label %bb.c, label %.critedge

bb.c:                                             ; preds = %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !21, !range !22, !noundef !23
  %i.h = getelementptr inbounds nuw i8, ptr %.lcssa, i64 18
  %i.i = load i8, ptr %i.h, align 2, !tbaa !24, !range !22, !noundef !23
  %i.j = zext nneg i8 %i.i to i64
  %i.k = add i64 %.028, %i.j                      ; 2 uses
  %i.l = add i64 %.024, 1                         ; 4 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9    ; 2 uses
  %.not34 = icmp eq i64 %i.n, -1
  br i1 %.not34, label %bb.d, label %.preheader, !llvm.loop !25

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.lcssa, i64 17
  %i.p = load i8, ptr %i.o, align 1, !tbaa !26, !range !22, !noundef !23
  %i.q = icmp ult i64 %i.l, 5
  %i.r = trunc nuw i8 %i.p to i1
  %or.cond = and i1 %i.q, %i.r
  %i.s = icmp ult i64 %i.k, 4
  %or.cond3.not = select i1 %or.cond, i1 %i.s, i1 false
  br i1 %or.cond3.not, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  store i64 %i.l, ptr %1, align 8, !tbaa !27
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge, %.preheader, %bb.e, %bb.d, %bb.a, %bb.b
  %.3 = phi i32 [ 11, %bb.a ], [ 11, %bb.b ], [ 8, %bb.d ], [ 0, %bb.e ], [ 8, %.preheader ], [ 8, %._crit_edge ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_raw_coder_init(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca [5 x %struct.lzma_filter_info_s], align 16 ; 6 uses
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %lzma_validate_chain.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %lzma_validate_chain.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 1, %bb.b ] ; 3 uses
  %i.d = phi i64 [ %i.n, %bb.c ], [ %i.b, %bb.b ]
  %.028.i = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ]
  %.026.i = phi i8 [ %i.g, %bb.c ], [ 1, %bb.b ]
  %.024.i = phi i64 [ %i.l, %bb.c ], [ 0, %bb.b ]
  switch i64 %i.d, label %lzma_validate_chain.exit.thread [
    i64 4611686018427387905, label %._crit_edge.i
    i64 4611686018427387906, label %._crit_edge.fold.split.i
    i64 33, label %._crit_edge.fold.split54.i
    i64 4, label %._crit_edge.fold.split55.i
    i64 5, label %._crit_edge.fold.split56.i
    i64 6, label %._crit_edge.fold.split57.i
    i64 7, label %._crit_edge.fold.split58.i
    i64 8, label %._crit_edge.fold.split59.i
    i64 9, label %._crit_edge.fold.split60.i
    i64 3, label %._crit_edge.fold.split61.i
  ]
end_hunk_0
