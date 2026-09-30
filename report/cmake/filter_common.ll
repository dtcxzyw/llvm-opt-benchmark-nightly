Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/filter_common?download=true
inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@lzma_filters_free:bb.a
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.013 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  tail call void @lzma_free(ptr noundef %i.e, ptr noundef %1) #4
  store ptr null, ptr %i.d, align 8, !tbaa !14
  store i64 -1, ptr %i.c, align 8, !tbaa !13
  %i.f = add nuw nsw i64 %.013, 1                 ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %.not = icmp eq i64 %i.h, -1
  %i.i = icmp eq i64 %i.f, 4
  %or.cond = or i1 %i.i, %.not
  br i1 %or.cond, label %.loopexit, label %.lr.ph, !llvm.loop !27

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 12) i32 @lzma_validate_chain(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !13     ; 2 uses
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
  %i.g = load i8, ptr %i.f, align 8, !tbaa !18, !range !19, !noundef !20
  %i.h = getelementptr inbounds nuw i8, ptr %.lcssa, i64 18
  %i.i = load i8, ptr %i.h, align 2, !tbaa !21, !range !19, !noundef !20
  %i.j = zext nneg i8 %i.i to i64
  %i.k = add i64 %.028, %i.j                      ; 2 uses
  %i.l = add i64 %.024, 1                         ; 4 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13   ; 2 uses
  %.not34 = icmp eq i64 %i.n, -1
  br i1 %.not34, label %bb.d, label %.preheader, !llvm.loop !0

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.lcssa, i64 17
  %i.p = load i8, ptr %i.o, align 1, !tbaa !22, !range !19, !noundef !20
  %i.q = icmp ult i64 %i.l, 5
  %i.r = trunc nuw i8 %i.p to i1
  %or.cond = and i1 %i.q, %i.r
  %i.s = icmp ult i64 %i.k, 4
  %or.cond3.not = select i1 %or.cond, i1 %i.s, i1 false
  br i1 %or.cond3.not, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  store i64 %i.l, ptr %1, align 8, !tbaa !28
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
  %i.b = load i64, ptr %2, align 8, !tbaa !13     ; 2 uses
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

._crit_edge.fold.split.i:                         ; preds = %.preheader.i
  br label %._crit_edge.i

._crit_edge.fold.split54.i:                       ; preds = %.preheader.i
  br label %._crit_edge.i

._crit_edge.fold.split55.i:                       ; preds = %.preheader.i
  br label %._crit_edge.i

._crit_edge.fold.split56.i:                       ; preds = %.preheader.i
  br label %._crit_edge.i

._crit_edge.fold.split57.i:                       ; preds = %.preheader.i
  br label %._crit_edge.i

._crit_edge.fold.split58.i:                       ; preds = %.preheader.i
  br label %._crit_edge.i

._crit_edge.fold.split59.i:                       ; preds = %.preheader.i
  br label %._crit_edge.i

._crit_edge.fold.split60.i:                       ; preds = %.preheader.i
  br label %._crit_edge.i

._crit_edge.fold.split61.i:                       ; preds = %.preheader.i
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.fold.split61.i, %._crit_edge.fold.split60.i, %._crit_edge.fold.split59.i, %._crit_edge.fold.split58.i, %._crit_edge.fold.split57.i, %._crit_edge.fold.split56.i, %._crit_edge.fold.split55.i, %._crit_edge.fold.split54.i, %._crit_edge.fold.split.i, %.preheader.i
  %.lcssa.i = phi ptr [ @features, %.preheader.i ], [ getelementptr inbounds nuw (i8, ptr @features, i64 192), %._crit_edge.fold.split60.i ], [ getelementptr inbounds nuw (i8, ptr @features, i64 24), %._crit_edge.fold.split.i ], [ getelementptr inbounds nuw (i8, ptr @features, i64 48), %._crit_edge.fold.split54.i ], [ getelementptr inbounds nuw (i8, ptr @features, i64 72), %._crit_edge.fold.split55.i ], [ getelementptr inbounds nuw (i8, ptr @features, i64 96), %._crit_edge.fold.split56.i ], [ getelementptr inbounds nuw (i8, ptr @features, i64 120), %._crit_edge.fold.split57.i ], [ getelementptr inbounds nuw (i8, ptr @features, i64 144), %._crit_edge.fold.split58.i ], [ getelementptr inbounds nuw (i8, ptr @features, i64 168), %._crit_edge.fold.split59.i ], [ getelementptr inbounds nuw (i8, ptr @features, i64 216), %._crit_edge.fold.split61.i ] ; 3 uses
  %i.e = trunc nuw i8 %.026.i to i1
  br i1 %i.e, label %bb.c, label %lzma_validate_chain.exit.thread

bb.c:                                             ; preds = %._crit_edge.i
  %i.f = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !18, !range !19, !noundef !20
  %i.h = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 18
  %i.i = load i8, ptr %i.h, align 2, !tbaa !21, !range !19, !noundef !20
  %i.j = zext nneg i8 %i.i to i64
  %i.k = add i64 %.028.i, %i.j                    ; 2 uses
  %i.l = add i64 %.024.i, 1                       ; 6 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13   ; 2 uses
  %.not34.i = icmp eq i64 %i.n, -1
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %.not34.i, label %bb.d, label %.preheader.i, !llvm.loop !0

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 17
  %i.p = load i8, ptr %i.o, align 1, !tbaa !22, !range !19, !noundef !20
  %i.q = icmp ult i64 %i.l, 5
  %i.r = trunc nuw i8 %i.p to i1
  %or.cond.i = and i1 %i.q, %i.r
  %i.s = icmp ult i64 %i.k, 4
  %or.cond3.not.i = select i1 %or.cond.i, i1 %i.s, i1 false
  br i1 %or.cond3.not.i, label %lzma_validate_chain.exit, label %lzma_validate_chain.exit.thread

lzma_validate_chain.exit:                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %.not6186.not = icmp eq i64 %i.l, 0             ; 2 uses
  br i1 %4, label %.preheader, label %.preheader80

.preheader80:                                     ; preds = %lzma_validate_chain.exit
  br i1 %.not6186.not, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %lzma_validate_chain.exit
  br i1 %.not6186.not, label %.loopexit, label %.lr.ph88

.lr.ph88:                                         ; preds = %.preheader
  %i.t = getelementptr [24 x i8], ptr %5, i64 %i.l
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph88, %bb.g
  %.05087 = phi i64 [ 0, %.lr.ph88 ], [ %i.ai, %bb.g ] ; 3 uses
  %i.u = xor i64 %.05087, -1
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.05087 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !13
  %i.x = tail call ptr %3(i64 noundef %i.w) #4    ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.thread72, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.thread72, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load i64, ptr %i.v, align 8, !tbaa !13
  %i.ad = getelementptr [24 x i8], ptr %i.t, i64 %i.u ; 3 uses
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.aa, ptr %i.ae, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !35
  %i.ai = add nuw i64 %.05087, 1                  ; 2 uses
  %exitcond94.not = icmp eq i64 %i.ai, %indvars.iv
  br i1 %exitcond94.not, label %.loopexit, label %bb.e, !llvm.loop !29

.lr.ph:                                           ; preds = %.preheader80, %bb.i
  %.085 = phi i64 [ %i.aw, %bb.i ], [ 0, %.preheader80 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.085 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !13
  %i.al = tail call ptr %3(i64 noundef %i.ak) #4  ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.thread72, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !31 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.thread72, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load i64, ptr %i.aj, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.085 ; 3 uses
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ao, ptr %i.as, align 8, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !14
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.au, ptr %i.av, align 8, !tbaa !35
  %i.aw = add nuw i64 %.085, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %indvars.iv
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !30

.loopexit:                                        ; preds = %bb.i, %bb.g, %.preheader80, %.preheader
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.l ; 2 uses
  store i64 -1, ptr %i.ax, align 8, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr null, ptr %i.ay, align 8, !tbaa !34
  %i.az = call i32 @lzma_next_filter_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #4 ; 2 uses
  %.not62 = icmp eq i32 %i.az, 0
  br i1 %.not62, label %.thread72, label %bb.j

bb.j:                                             ; preds = %.loopexit
  call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #4
  br label %.thread72

.thread72:                                        ; preds = %bb.h, %.lr.ph, %bb.f, %bb.e, %.loopexit, %bb.j
  %.7 = phi i32 [ 8, %bb.f ], [ 0, %.loopexit ], [ %i.az, %bb.j ], [ 8, %bb.e ], [ 8, %.lr.ph ], [ 8, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  br label %lzma_validate_chain.exit.thread

lzma_validate_chain.exit.thread:                  ; preds = %._crit_edge.i, %.preheader.i, %bb.d, %bb.b, %bb.a, %.thread72
  %.8 = phi i32 [ %.7, %.thread72 ], [ 11, %bb.b ], [ 11, %bb.a ], [ 8, %bb.d ], [ 8, %.preheader.i ], [ 8, %._crit_edge.i ]
  ret i32 %.8
}

declare i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_raw_coder_memusage(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !13     ; 3 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %i.d = phi i64 [ %i.n, %bb.c ], [ %i.b, %bb.b ]
  %.028.i = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ]
  %.026.i = phi i8 [ %i.g, %bb.c ], [ 1, %bb.b ]
  %.024.i = phi i64 [ %i.l, %bb.c ], [ 0, %bb.b ]
  switch i64 %i.d, label %.critedge [
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

._crit_edge.fold.split.i:                         ; preds = %.preheader.i
  br label %._crit_edge.i

._crit_edge.fold.split54.i:                       ; preds = %.preheader.i
  br label %._crit_edge.i

._crit_edge.fold.split55.i:                       ; preds = %.preheader.i
  br label %._crit_edge.i

._crit_edge.fold.split56.i:                       ; preds = %.preheader.i
  br label %._crit_edge.i

._crit_edge.fold.split57.i:                       ; preds = %.preheader.i
  br label %._crit_edge.i

._crit_edge.fold.split58.i:                       ; preds = %.preheader.i
  br label %._crit_edge.i

._crit_edge.fold.split59.i:                       ; preds = %.preheader.i
  br label %._crit_edge.i

._crit_edge.fold.split60.i:                       ; preds = %.preheader.i
  br label %._crit_edge.i

._crit_edge.fold.split61.i:                       ; preds = %.preheader.i
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.fold.split61.i, %._crit_edge.fold.split60.i, %._crit_edge.fold.split59.i, %._crit_edge.fold.split58.i, %._crit_edge.fold.split57.i, %._crit_edge.fold.split56.i, %._crit_edge.fold.split55.i, %._crit_edge.fold.split54.i, %._crit_edge.fold.split.i, %.preheader.i
  %.lcssa.i = phi ptr [ @features, %.preheader.i ], [ getelementptr inbounds nuw (i8, ptr @features, i64 192), %._crit_edge.fold.split60.i ], [ getelementptr inbounds nuw (i8, ptr @features, i64 24), %._crit_edge.fold.split.i ], [ getelementptr inbounds nuw (i8, ptr @features, i64 48), %._crit_edge.fold.split54.i ], [ getelementptr inbounds nuw (i8, ptr @features, i64 72), %._crit_edge.fold.split55.i ], [ getelementptr inbounds nuw (i8, ptr @features, i64 96), %._crit_edge.fold.split56.i ], [ getelementptr inbounds nuw (i8, ptr @features, i64 120), %._crit_edge.fold.split57.i ], [ getelementptr inbounds nuw (i8, ptr @features, i64 144), %._crit_edge.fold.split58.i ], [ getelementptr inbounds nuw (i8, ptr @features, i64 168), %._crit_edge.fold.split59.i ], [ getelementptr inbounds nuw (i8, ptr @features, i64 216), %._crit_edge.fold.split61.i ] ; 3 uses
  %i.e = trunc nuw i8 %.026.i to i1
  br i1 %i.e, label %bb.c, label %.critedge

bb.c:                                             ; preds = %._crit_edge.i
  %i.f = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !18, !range !19, !noundef !20
  %i.h = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 18
  %i.i = load i8, ptr %i.h, align 2, !tbaa !21, !range !19, !noundef !20
  %i.j = zext nneg i8 %i.i to i64
  %i.k = add i64 %.028.i, %i.j                    ; 2 uses
  %i.l = add i64 %.024.i, 1                       ; 3 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13   ; 2 uses
  %.not34.i = icmp eq i64 %i.n, -1
  br i1 %.not34.i, label %bb.d, label %.preheader.i, !llvm.loop !0

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 17
  %i.p = load i8, ptr %i.o, align 1, !tbaa !22, !range !19, !noundef !20
  %i.q = icmp ult i64 %i.l, 5
  %i.r = trunc nuw i8 %i.p to i1
  %or.cond.i = and i1 %i.q, %i.r
  %i.s = icmp ult i64 %i.k, 4
  %or.cond3.not.i = select i1 %or.cond.i, i1 %i.s, i1 false
  br i1 %or.cond3.not.i, label %lzma_validate_chain.exit, label %.critedge

lzma_validate_chain.exit:                         ; preds = %bb.d, %bb.h
  %i.t = phi i64 [ %i.ah, %bb.h ], [ %i.b, %bb.d ]
  %.020 = phi i64 [ %.3, %bb.h ], [ 0, %bb.d ]    ; 2 uses
  %.0 = phi i64 [ %i.af, %bb.h ], [ 0, %bb.d ]    ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.0
  %i.v = tail call ptr %0(i64 noundef %i.t) #4    ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.critedge, label %bb.e

bb.e:                                             ; preds = %lzma_validate_chain.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !37   ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = add i64 %.020, 1024
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !14
  %i.ad = tail call i64 %i.y(ptr noundef %i.ac) #4 ; 2 uses
  %.not31 = icmp eq i64 %i.ad, -1
  %i.ae = add i64 %i.ad, %.020
  br i1 %.not31, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.3 = phi i64 [ %i.aa, %bb.f ], [ %i.ae, %bb.g ] ; 2 uses
  %i.af = add i64 %.0, 1                          ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !13 ; 2 uses
  %.not32 = icmp eq i64 %i.ah, -1
  br i1 %.not32, label %bb.i, label %lzma_validate_chain.exit, !llvm.loop !36

bb.i:                                             ; preds = %bb.h
  %i.ai = add i64 %.3, 32768
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge.i, %.preheader.i, %lzma_validate_chain.exit, %bb.g, %bb.d, %bb.b, %bb.a, %bb.i
  %.6 = phi i64 [ -1, %bb.d ], [ %i.ai, %bb.i ], [ -1, %lzma_validate_chain.exit ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.g ], [ -1, %.preheader.i ], [ -1, %._crit_edge.i ]
  ret i64 %.6
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !17}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"", !10, i64 0, !11, i64 8}
!13 = !{!12, !10, i64 0}
!14 = !{!12, !11, i64 8}
!15 = !{!"_Bool", !6, i64 0}
!16 = !{!"", !10, i64 0, !10, i64 8, !15, i64 16, !15, i64 17, !15, i64 18}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!16, !15, i64 16}
!19 = !{i8 0, i8 2}
!20 = !{}
!21 = !{!16, !15, i64 18}
!22 = !{!16, !15, i64 17}
!23 = !{!"", !10, i64 0, !11, i64 8, !11, i64 16}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
!26 = !{!16, !10, i64 8}
!27 = distinct !{!27, !17}
!28 = !{!10, !10, i64 0}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
!31 = !{!23, !11, i64 8}
!32 = !{!"lzma_filter_info_s", !10, i64 0, !11, i64 8, !11, i64 16}
!33 = !{!32, !10, i64 0}
!34 = !{!32, !11, i64 8}
!35 = !{!32, !11, i64 16}
end_hunk_0
