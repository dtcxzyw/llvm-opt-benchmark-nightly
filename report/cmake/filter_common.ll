Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/filter_common?download=true
inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@lzma_filters_copy:bb.a
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
  store ptr null, ptr %i.at, align 8, !tbaa !14
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
  %i.av = load i64, ptr %i.au, align 8, !tbaa !21 ; 2 uses
  %i.aw = tail call ptr @lzma_alloc(i64 noundef %i.av, ptr noundef %2) #4 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !14
  %i.ay = icmp eq ptr %i.aw, null
  br i1 %i.ay, label %.thread, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr align 1 %i.az, i64 %i.av, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !13 ; 3 uses
  %.not = icmp eq i64 %i.bb, -1
  br i1 %.not, label %._crit_edge61, label %.lr.ph60, !llvm.loop !17

._crit_edge61:                                    ; preds = %bb.n, %bb.e, %bb.h, %bb.k, %bb.b
  %.036.lcssa = phi i64 [ 0, %bb.b ], [ 1, %bb.n ], [ 2, %bb.e ], [ 3, %bb.h ], [ 4, %bb.k ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.036.lcssa ; 2 uses
  store i64 -1, ptr %i.bc, align 16, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr null, ptr %i.bd, align 8, !tbaa !14
  %i.be = shl nuw nsw i64 %.036.lcssa, 4
  %i.bf = add nuw nsw i64 %i.be, 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(1) %3, i64 %i.bf, i1 false)
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
  %i.bg = add nsw i64 %.164, -1                   ; 3 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !14
  tail call void @lzma_free(ptr noundef %i.bj, ptr noundef %2) #4
  %.not47 = icmp eq i64 %i.bg, 0
  br i1 %.not47, label %.loopexit, label %.lr.ph65, !llvm.loop !18

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
  %i.b = load i64, ptr %0, align 8, !tbaa !13
  %.not12 = icmp eq i64 %i.b, -1
  br i1 %.not12, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.013 = phi i64 [ %i.f, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
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
  br i1 %or.cond, label %.loopexit, label %.lr.ph, !llvm.loop !22

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 12) i32 @lzma_validate_chain(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.c
  %i.d = phi i64 [ %i.k, %bb.c ], [ %i.b, %bb.b ]
  %.028 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ]
  %.026 = phi i1 [ %i.e, %bb.c ], [ true, %bb.b ]
  %.024 = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ]
  switch i64 %i.d, label %.critedge [
    i64 4611686018427387905, label %._crit_edge
    i64 4611686018427387906, label %._crit_edge
    i64 33, label %._crit_edge
    i64 4, label %._crit_edge.fold.split53
    i64 5, label %._crit_edge.fold.split53
    i64 6, label %._crit_edge.fold.split53
    i64 7, label %._crit_edge.fold.split53
    i64 8, label %._crit_edge.fold.split53
    i64 9, label %._crit_edge.fold.split53
    i64 3, label %._crit_edge.fold.split53
  ]

._crit_edge.fold.split53:                         ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %.preheader, %.preheader, %._crit_edge.fold.split53
  %i.e = phi i1 [ false, %.preheader ], [ false, %.preheader ], [ true, %._crit_edge.fold.split53 ], [ false, %.preheader ]
  %i.f = phi i1 [ true, %.preheader ], [ true, %.preheader ], [ false, %._crit_edge.fold.split53 ], [ true, %.preheader ] ; 2 uses
  br i1 %.026, label %bb.c, label %.critedge

bb.c:                                             ; preds = %._crit_edge
  %i.g = zext i1 %i.f to i64
  %i.h = add i64 %.028, %i.g                      ; 2 uses
  %i.i = add i64 %.024, 1                         ; 4 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %.not34 = icmp eq i64 %i.k, -1
  br i1 %.not34, label %bb.d, label %.preheader, !llvm.loop !0

bb.d:                                             ; preds = %bb.c
  %2 = icmp ugt i64 %i.i, 4
  %.not36 = xor i1 %i.f, true
  %or.cond.not37 = or i1 %2, %.not36
  %3 = icmp ugt i64 %i.h, 3
  %or.cond3.not = select i1 %or.cond.not37, i1 true, i1 %3
  br i1 %or.cond3.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.i, ptr %1, align 8, !tbaa !23
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
  %i.d = phi i64 [ %i.k, %bb.c ], [ %i.b, %bb.b ]
  %.028.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ]
  %.026.i = phi i1 [ %i.e, %bb.c ], [ true, %bb.b ]
  %.024.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ]
  switch i64 %i.d, label %lzma_validate_chain.exit.thread [
    i64 4611686018427387905, label %._crit_edge.i
    i64 4611686018427387906, label %._crit_edge.i
    i64 33, label %._crit_edge.i
    i64 4, label %._crit_edge.fold.split53.i
    i64 5, label %._crit_edge.fold.split53.i
    i64 6, label %._crit_edge.fold.split53.i
    i64 7, label %._crit_edge.fold.split53.i
    i64 8, label %._crit_edge.fold.split53.i
    i64 9, label %._crit_edge.fold.split53.i
    i64 3, label %._crit_edge.fold.split53.i
  ]

._crit_edge.fold.split53.i:                       ; preds = %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.preheader.i, %.preheader.i, %._crit_edge.fold.split53.i, %.preheader.i
  %i.e = phi i1 [ false, %.preheader.i ], [ false, %.preheader.i ], [ true, %._crit_edge.fold.split53.i ], [ false, %.preheader.i ]
  %i.f = phi i1 [ true, %.preheader.i ], [ true, %.preheader.i ], [ false, %._crit_edge.fold.split53.i ], [ true, %.preheader.i ] ; 2 uses
  br i1 %.026.i, label %bb.c, label %lzma_validate_chain.exit.thread

bb.c:                                             ; preds = %._crit_edge.i
  %i.g = zext i1 %i.f to i64
  %i.h = add i64 %.028.i, %i.g                    ; 2 uses
  %i.i = add i64 %.024.i, 1                       ; 6 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %.not34.i = icmp eq i64 %i.k, -1
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %.not34.i, label %bb.d, label %.preheader.i, !llvm.loop !0

bb.d:                                             ; preds = %bb.c
  %6 = icmp ugt i64 %i.i, 4
  %.not36.i = xor i1 %i.f, true
  %or.cond.not37.i = or i1 %6, %.not36.i
  %7 = icmp ugt i64 %i.h, 3
  %or.cond3.not.i = select i1 %or.cond.not37.i, i1 true, i1 %7
  br i1 %or.cond3.not.i, label %lzma_validate_chain.exit.thread, label %lzma_validate_chain.exit

lzma_validate_chain.exit:                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %.not6187.not = icmp eq i64 %i.i, 0             ; 2 uses
  br i1 %4, label %.preheader, label %.preheader80

.preheader80:                                     ; preds = %lzma_validate_chain.exit
  br i1 %.not6187.not, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %lzma_validate_chain.exit
  br i1 %.not6187.not, label %.loopexit, label %.lr.ph89

.lr.ph89:                                         ; preds = %.preheader
  %i.l = getelementptr [24 x i8], ptr %5, i64 %i.i
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph89, %bb.g
  %.05088 = phi i64 [ 0, %.lr.ph89 ], [ %i.aa, %bb.g ] ; 3 uses
  %i.m = xor i64 %.05088, -1
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.05088 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13
  %i.p = tail call ptr %3(i64 noundef %i.o) #4    ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.thread72, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.thread72, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i64, ptr %i.n, align 8, !tbaa !13
  %i.v = getelementptr [24 x i8], ptr %i.l, i64 %i.m ; 3 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.s, ptr %i.w, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !30
  %i.aa = add nuw i64 %.05088, 1                  ; 2 uses
  %exitcond96.not = icmp eq i64 %i.aa, %indvars.iv
  br i1 %exitcond96.not, label %.loopexit, label %bb.e, !llvm.loop !24

.lr.ph:                                           ; preds = %.preheader80, %bb.i
  %.086 = phi i64 [ %i.ao, %bb.i ], [ 0, %.preheader80 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.086 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !13
  %i.ad = tail call ptr %3(i64 noundef %i.ac) #4  ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.thread72, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !26 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.thread72, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load i64, ptr %i.ab, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.086 ; 3 uses
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ag, ptr %i.ak, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.am, ptr %i.an, align 8, !tbaa !30
  %i.ao = add nuw i64 %.086, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %indvars.iv
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !25

.loopexit:                                        ; preds = %bb.i, %bb.g, %.preheader80, %.preheader
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.i ; 2 uses
  store i64 -1, ptr %i.ap, align 8, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr null, ptr %i.aq, align 8, !tbaa !29
  %i.ar = call i32 @lzma_next_filter_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #4 ; 2 uses
  %.not62 = icmp eq i32 %i.ar, 0
  br i1 %.not62, label %.thread72, label %bb.j

bb.j:                                             ; preds = %.loopexit
  call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #4
  br label %.thread72

.thread72:                                        ; preds = %bb.h, %.lr.ph, %bb.f, %bb.e, %.loopexit, %bb.j
  %.7 = phi i32 [ 8, %bb.f ], [ 0, %.loopexit ], [ %i.ar, %bb.j ], [ 8, %bb.e ], [ 8, %.lr.ph ], [ 8, %bb.h ]
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
  %i.d = phi i64 [ %i.k, %bb.c ], [ %i.b, %bb.b ]
  %.028.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ]
  %.026.i = phi i1 [ %i.e, %bb.c ], [ true, %bb.b ]
  %.024.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ]
  switch i64 %i.d, label %.critedge [
    i64 4611686018427387905, label %._crit_edge.i
    i64 4611686018427387906, label %._crit_edge.i
    i64 33, label %._crit_edge.i
    i64 4, label %._crit_edge.fold.split53.i
    i64 5, label %._crit_edge.fold.split53.i
    i64 6, label %._crit_edge.fold.split53.i
    i64 7, label %._crit_edge.fold.split53.i
    i64 8, label %._crit_edge.fold.split53.i
    i64 9, label %._crit_edge.fold.split53.i
    i64 3, label %._crit_edge.fold.split53.i
  ]

._crit_edge.fold.split53.i:                       ; preds = %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.preheader.i, %.preheader.i, %._crit_edge.fold.split53.i, %.preheader.i
  %i.e = phi i1 [ false, %.preheader.i ], [ false, %.preheader.i ], [ true, %._crit_edge.fold.split53.i ], [ false, %.preheader.i ]
  %i.f = phi i1 [ true, %.preheader.i ], [ true, %.preheader.i ], [ false, %._crit_edge.fold.split53.i ], [ true, %.preheader.i ] ; 2 uses
  br i1 %.026.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %._crit_edge.i
  %i.g = zext i1 %i.f to i64
  %i.h = add i64 %.028.i, %i.g                    ; 2 uses
  %i.i = add i64 %.024.i, 1                       ; 3 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %.not34.i = icmp eq i64 %i.k, -1
  br i1 %.not34.i, label %bb.d, label %.preheader.i, !llvm.loop !0

bb.d:                                             ; preds = %bb.c
  %2 = icmp ugt i64 %i.i, 4
  %.not36.i = xor i1 %i.f, true
  %or.cond.not37.i = or i1 %2, %.not36.i
  %3 = icmp ugt i64 %i.h, 3
  %or.cond3.not.i = select i1 %or.cond.not37.i, i1 true, i1 %3
  br i1 %or.cond3.not.i, label %.critedge, label %lzma_validate_chain.exit

lzma_validate_chain.exit:                         ; preds = %bb.d, %bb.h
  %i.l = phi i64 [ %i.z, %bb.h ], [ %i.b, %bb.d ]
  %.020 = phi i64 [ %.3, %bb.h ], [ 0, %bb.d ]    ; 2 uses
  %.0 = phi i64 [ %i.x, %bb.h ], [ 0, %bb.d ]     ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.0
  %i.n = tail call ptr %0(i64 noundef %i.l) #4    ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.critedge, label %bb.e

bb.e:                                             ; preds = %lzma_validate_chain.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = add i64 %.020, 1024
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14
  %i.v = tail call i64 %i.q(ptr noundef %i.u) #4  ; 2 uses
  %.not31 = icmp eq i64 %i.v, -1
  %i.w = add i64 %i.v, %.020
  br i1 %.not31, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.3 = phi i64 [ %i.s, %bb.f ], [ %i.w, %bb.g ]  ; 2 uses
  %i.x = add i64 %.0, 1                           ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !13   ; 2 uses
  %.not32 = icmp eq i64 %i.z, -1
  br i1 %.not32, label %bb.i, label %lzma_validate_chain.exit, !llvm.loop !31

bb.i:                                             ; preds = %bb.h
  %i.aa = add i64 %.3, 32768
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge.i, %.preheader.i, %lzma_validate_chain.exit, %bb.g, %bb.d, %bb.b, %bb.a, %bb.i
  %.6 = phi i64 [ -1, %bb.d ], [ %i.aa, %bb.i ], [ -1, %lzma_validate_chain.exit ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.g ], [ -1, %.preheader.i ], [ -1, %._crit_edge.i ]
  ret i64 %.6
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !15}
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
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"", !10, i64 0, !11, i64 8, !11, i64 16}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = !{!"_Bool", !6, i64 0}
!20 = !{!"", !10, i64 0, !10, i64 8, !19, i64 16, !19, i64 17, !19, i64 18}
!21 = !{!20, !10, i64 8}
!22 = distinct !{!22, !15}
!23 = !{!10, !10, i64 0}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = !{!16, !11, i64 8}
!27 = !{!"lzma_filter_info_s", !10, i64 0, !11, i64 8, !11, i64 16}
!28 = !{!27, !10, i64 0}
!29 = !{!27, !11, i64 8}
!30 = !{!27, !11, i64 16}
!31 = distinct !{!31, !15}
!32 = !{!16, !11, i64 16}
end_hunk_0
