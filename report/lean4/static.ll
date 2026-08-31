Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/static?download=true
inline.NumInlined: 1572
inline.NumDeleted: 309
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 39
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZL17mi_random_init_exP15mi_random_cxt_sb:bb.a
  store i32 0, ptr %i.ed, align 4, !tbaa !71
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.dr, ptr %i.ee, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z20_mi_random_init_weakP15mi_random_cxt_s(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  tail call fastcc void @_ZL17mi_random_init_exP15mi_random_cxt_sb(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_Z30_mi_commit_mask_committed_sizePK16mi_commit_mask_sm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !74     ; 3 uses
  switch i64 %i.a, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

bb.b:                                             ; preds = %bb.a
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.016 = phi i64 [ %i.c, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %.115 = phi i64 [ %spec.select, %.lr.ph ], [ 0, %bb.a ]
  %i.b = and i64 %.016, 1
  %spec.select = add i64 %i.b, %.115              ; 2 uses
  %i.c = lshr i64 %.016, 1                        ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !319

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %bb.b
  %.3 = phi i64 [ 64, %bb.b ], [ %i.a, %bb.a ], [ %spec.select, %.lr.ph ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !74   ; 2 uses
  switch i64 %i.e, label %.lr.ph.1 [
    i64 -1, label %bb.c
    i64 0, label %.loopexit.1
  ]

bb.c:                                             ; preds = %.loopexit
  %i.f = add i64 %.3, 64
  br label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %.lr.ph.1
  %.016.1 = phi i64 [ %i.h, %.lr.ph.1 ], [ %i.e, %.loopexit ] ; 2 uses
  %.115.1 = phi i64 [ %spec.select.1, %.lr.ph.1 ], [ %.3, %.loopexit ]
  %i.g = and i64 %.016.1, 1
  %spec.select.1 = add i64 %i.g, %.115.1          ; 2 uses
  %i.h = lshr i64 %.016.1, 1                      ; 2 uses
  %.not.1 = icmp eq i64 %i.h, 0
  br i1 %.not.1, label %.loopexit.1, label %.lr.ph.1, !llvm.loop !319

.loopexit.1:                                      ; preds = %.lr.ph.1, %bb.c, %.loopexit
  %.3.1 = phi i64 [ %i.f, %bb.c ], [ %.3, %.loopexit ], [ %spec.select.1, %.lr.ph.1 ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !74   ; 2 uses
  switch i64 %i.j, label %.lr.ph.2 [
    i64 -1, label %bb.d
    i64 0, label %.loopexit.2
  ]

bb.d:                                             ; preds = %.loopexit.1
  %i.k = add i64 %.3.1, 64
  br label %.loopexit.2

.lr.ph.2:                                         ; preds = %.loopexit.1, %.lr.ph.2
  %.016.2 = phi i64 [ %i.m, %.lr.ph.2 ], [ %i.j, %.loopexit.1 ] ; 2 uses
  %.115.2 = phi i64 [ %spec.select.2, %.lr.ph.2 ], [ %.3.1, %.loopexit.1 ]
  %i.l = and i64 %.016.2, 1
  %spec.select.2 = add i64 %i.l, %.115.2          ; 2 uses
  %i.m = lshr i64 %.016.2, 1                      ; 2 uses
  %.not.2 = icmp eq i64 %i.m, 0
  br i1 %.not.2, label %.loopexit.2, label %.lr.ph.2, !llvm.loop !319

.loopexit.2:                                      ; preds = %.lr.ph.2, %bb.d, %.loopexit.1
  %.3.2 = phi i64 [ %i.k, %bb.d ], [ %.3.1, %.loopexit.1 ], [ %spec.select.2, %.lr.ph.2 ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !74   ; 2 uses
  switch i64 %i.o, label %.lr.ph.3 [
    i64 -1, label %bb.e
    i64 0, label %.loopexit.3
  ]

bb.e:                                             ; preds = %.loopexit.2
  %i.p = add i64 %.3.2, 64
  br label %.loopexit.3

.lr.ph.3:                                         ; preds = %.loopexit.2, %.lr.ph.3
  %.016.3 = phi i64 [ %i.r, %.lr.ph.3 ], [ %i.o, %.loopexit.2 ] ; 2 uses
  %.115.3 = phi i64 [ %spec.select.3, %.lr.ph.3 ], [ %.3.2, %.loopexit.2 ]
  %i.q = and i64 %.016.3, 1
  %spec.select.3 = add i64 %i.q, %.115.3          ; 2 uses
  %i.r = lshr i64 %.016.3, 1                      ; 2 uses
  %.not.3 = icmp eq i64 %i.r, 0
  br i1 %.not.3, label %.loopexit.3, label %.lr.ph.3, !llvm.loop !319

.loopexit.3:                                      ; preds = %.lr.ph.3, %bb.e, %.loopexit.2
  %.3.3 = phi i64 [ %i.p, %bb.e ], [ %.3.2, %.loopexit.2 ], [ %spec.select.3, %.lr.ph.3 ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !74   ; 2 uses
  switch i64 %i.t, label %.lr.ph.4 [
    i64 -1, label %bb.f
    i64 0, label %.loopexit.4
  ]

bb.f:                                             ; preds = %.loopexit.3
  %i.u = add i64 %.3.3, 64
  br label %.loopexit.4

.lr.ph.4:                                         ; preds = %.loopexit.3, %.lr.ph.4
  %.016.4 = phi i64 [ %i.w, %.lr.ph.4 ], [ %i.t, %.loopexit.3 ] ; 2 uses
  %.115.4 = phi i64 [ %spec.select.4, %.lr.ph.4 ], [ %.3.3, %.loopexit.3 ]
  %i.v = and i64 %.016.4, 1
  %spec.select.4 = add i64 %i.v, %.115.4          ; 2 uses
  %i.w = lshr i64 %.016.4, 1                      ; 2 uses
  %.not.4 = icmp eq i64 %i.w, 0
  br i1 %.not.4, label %.loopexit.4, label %.lr.ph.4, !llvm.loop !319

.loopexit.4:                                      ; preds = %.lr.ph.4, %bb.f, %.loopexit.3
  %.3.4 = phi i64 [ %i.u, %bb.f ], [ %.3.3, %.loopexit.3 ], [ %spec.select.4, %.lr.ph.4 ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !74   ; 2 uses
  switch i64 %i.y, label %.lr.ph.5 [
    i64 -1, label %bb.g
    i64 0, label %.loopexit.5
  ]

bb.g:                                             ; preds = %.loopexit.4
  %i.z = add i64 %.3.4, 64
  br label %.loopexit.5

.lr.ph.5:                                         ; preds = %.loopexit.4, %.lr.ph.5
  %.016.5 = phi i64 [ %i.ab, %.lr.ph.5 ], [ %i.y, %.loopexit.4 ] ; 2 uses
  %.115.5 = phi i64 [ %spec.select.5, %.lr.ph.5 ], [ %.3.4, %.loopexit.4 ]
  %i.aa = and i64 %.016.5, 1
  %spec.select.5 = add i64 %i.aa, %.115.5         ; 2 uses
  %i.ab = lshr i64 %.016.5, 1                     ; 2 uses
  %.not.5 = icmp eq i64 %i.ab, 0
  br i1 %.not.5, label %.loopexit.5, label %.lr.ph.5, !llvm.loop !319

.loopexit.5:                                      ; preds = %.lr.ph.5, %bb.g, %.loopexit.4
  %.3.5 = phi i64 [ %i.z, %bb.g ], [ %.3.4, %.loopexit.4 ], [ %spec.select.5, %.lr.ph.5 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !74 ; 2 uses
  switch i64 %i.ad, label %.lr.ph.6 [
    i64 -1, label %bb.h
    i64 0, label %.loopexit.6
  ]

bb.h:                                             ; preds = %.loopexit.5
  %i.ae = add i64 %.3.5, 64
  br label %.loopexit.6

.lr.ph.6:                                         ; preds = %.loopexit.5, %.lr.ph.6
  %.016.6 = phi i64 [ %i.ag, %.lr.ph.6 ], [ %i.ad, %.loopexit.5 ] ; 2 uses
  %.115.6 = phi i64 [ %spec.select.6, %.lr.ph.6 ], [ %.3.5, %.loopexit.5 ]
  %i.af = and i64 %.016.6, 1
  %spec.select.6 = add i64 %i.af, %.115.6         ; 2 uses
  %i.ag = lshr i64 %.016.6, 1                     ; 2 uses
  %.not.6 = icmp eq i64 %i.ag, 0
  br i1 %.not.6, label %.loopexit.6, label %.lr.ph.6, !llvm.loop !319

.loopexit.6:                                      ; preds = %.lr.ph.6, %bb.h, %.loopexit.5
  %.3.6 = phi i64 [ %i.ae, %bb.h ], [ %.3.5, %.loopexit.5 ], [ %spec.select.6, %.lr.ph.6 ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !74 ; 2 uses
  switch i64 %i.ai, label %.lr.ph.7 [
    i64 -1, label %bb.i
    i64 0, label %.loopexit.7
  ]

bb.i:                                             ; preds = %.loopexit.6
  %i.aj = add i64 %.3.6, 64
  br label %.loopexit.7

.lr.ph.7:                                         ; preds = %.loopexit.6, %.lr.ph.7
  %.016.7 = phi i64 [ %i.al, %.lr.ph.7 ], [ %i.ai, %.loopexit.6 ] ; 2 uses
  %.115.7 = phi i64 [ %spec.select.7, %.lr.ph.7 ], [ %.3.6, %.loopexit.6 ]
  %i.ak = and i64 %.016.7, 1
  %spec.select.7 = add i64 %i.ak, %.115.7         ; 2 uses
  %i.al = lshr i64 %.016.7, 1                     ; 2 uses
  %.not.7 = icmp eq i64 %i.al, 0
  br i1 %.not.7, label %.loopexit.7, label %.lr.ph.7, !llvm.loop !319

.loopexit.7:                                      ; preds = %.lr.ph.7, %bb.i, %.loopexit.6
  %.3.7 = phi i64 [ %i.aj, %bb.i ], [ %.3.6, %.loopexit.6 ], [ %spec.select.7, %.lr.ph.7 ]
  %i.am = lshr i64 %1, 9
  %i.an = mul i64 %.3.7, %i.am
  ret i64 %i.an
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_Z24_mi_commit_mask_next_runPK16mi_commit_mask_sPm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #22 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !74     ; 3 uses
  %i.b = lshr i64 %i.a, 6                         ; 3 uses
  %i.c = icmp ult i64 %i.a, 512
  br i1 %i.c, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = and i64 %i.a, 63                         ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.f = load i64, ptr %i.e, align 8, !tbaa !74
  %i.g = lshr i64 %i.f, %i.d                      ; 2 uses
  %.not.peel = icmp eq i64 %i.g, 0
  br i1 %.not.peel, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.h = add nuw nsw i64 %i.b, 1                  ; 2 uses
  %exitcond.peel.not = icmp eq i64 %i.h, 8
  br i1 %exitcond.peel.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.03348 = phi i64 [ %i.q, %bb.c ], [ %i.h, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03348
  %i.j = load i64, ptr %i.i, align 8, !tbaa !74   ; 2 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.lr.ph.preheader
  %.03049.lcssa = phi i64 [ %i.d, %.lr.ph.preheader ], [ 0, %.lr.ph ] ; 2 uses
  %.03348.lcssa = phi i64 [ %i.b, %.lr.ph.preheader ], [ %.03348, %.lr.ph ] ; 2 uses
  %.lcssa57 = phi i64 [ %i.g, %.lr.ph.preheader ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.k = and i64 %.lcssa57, 1
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.lr.ph52, label %._crit_edge

.lr.ph52:                                         ; preds = %.preheader, %.lr.ph52
  %.12951 = phi i64 [ %i.m, %.lr.ph52 ], [ %.lcssa57, %.preheader ] ; 2 uses
  %.13150 = phi i64 [ %i.n, %.lr.ph52 ], [ %.03049.lcssa, %.preheader ]
  %i.m = lshr exact i64 %.12951, 1                ; 2 uses
  %i.n = add i64 %.13150, 1                       ; 2 uses
  %i.o = and i64 %.12951, 2
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph52, label %._crit_edge, !llvm.loop !320

bb.c:                                             ; preds = %.lr.ph
  %i.q = add nuw nsw i64 %.03348, 1               ; 2 uses
  %exitcond.not.a = icmp eq i64 %i.q, 8
  br i1 %exitcond.not.a, label %.thread, label %.lr.ph, !llvm.loop !321

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a
  store i64 512, ptr %1, align 8, !tbaa !74
  br label %.loopexit

._crit_edge:                                      ; preds = %.lr.ph52, %.preheader
  %.131.lcssa = phi i64 [ %.03049.lcssa, %.preheader ], [ %i.n, %.lr.ph52 ] ; 2 uses
  %.129.lcssa = phi i64 [ %.lcssa57, %.preheader ], [ %i.m, %.lr.ph52 ]
  %i.r = shl nuw nsw i64 %.03348.lcssa, 6
  %i.s = add i64 %.131.lcssa, %i.r
  store i64 %i.s, ptr %1, align 8, !tbaa !74
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %._crit_edge
  %.134 = phi i64 [ %.03348.lcssa, %._crit_edge ], [ %.235, %bb.i ] ; 3 uses
  %.3 = phi i64 [ %.129.lcssa, %._crit_edge ], [ %.5, %bb.i ]
  %.0 = phi i64 [ 0, %._crit_edge ], [ %i.t, %bb.i ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.4 = phi i64 [ %.3, %bb.d ], [ %i.u, %bb.e ]   ; 2 uses
  %.1 = phi i64 [ %.0, %bb.d ], [ %i.t, %bb.e ]
  %i.t = add i64 %.1, 1                           ; 5 uses
  %i.u = lshr i64 %.4, 1                          ; 2 uses
  %i.v = and i64 %.4, 2
  %.not40 = icmp eq i64 %i.v, 0
  br i1 %.not40, label %bb.f, label %bb.e, !llvm.loop !323

bb.f:                                             ; preds = %bb.e
  %i.w = add i64 %i.t, %.131.lcssa
  %i.x = and i64 %i.w, 63
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = icmp ugt i64 %.134, 6
  br i1 %i.z, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = add nuw nsw i64 %.134, 1                ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !74
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %.235 = phi i64 [ %i.aa, %bb.h ], [ %.134, %bb.f ]
  %.5 = phi i64 [ %i.ac, %bb.h ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = and i64 %.5, 1
  %.not41 = icmp eq i64 %i.ad, 0
  br i1 %.not41, label %.loopexit, label %bb.d, !llvm.loop !324

.loopexit:                                        ; preds = %bb.i, %bb.g, %.thread
  %.036 = phi i64 [ 0, %.thread ], [ %i.t, %bb.g ], [ %i.t, %bb.i ]
  ret i64 %.036
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z19_mi_segment_collectP12mi_segment_sb(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #6 {
bb.a:
  tail call fastcc void @_ZL20mi_segment_try_purgeP12mi_segment_sb(ptr noundef %0, i1 noundef zeroext %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL20mi_segment_try_purgeP12mi_segment_sb(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #6 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.mi_commit_mask_s, align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.b = load i8, ptr %i.a, align 1, !tbaa !325, !range !91, !noundef !92
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !326
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !74
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.d, label %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8, !tbaa !74
  %.not.1.i = icmp eq i64 %i.j, 0
  br i1 %.not.1.i, label %bb.e, label %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !74
  %.not.2.i = icmp eq i64 %i.l, 0
  br i1 %.not.2.i, label %bb.f, label %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load i64, ptr %i.m, align 8, !tbaa !74
  %.not.3.i = icmp eq i64 %i.n, 0
  br i1 %.not.3.i, label %bb.g, label %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load i64, ptr %i.o, align 8, !tbaa !74
  %.not.4.i = icmp eq i64 %i.p, 0
  br i1 %.not.4.i, label %bb.h, label %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load i64, ptr %i.q, align 8, !tbaa !74
  %.not.5.i = icmp eq i64 %i.r, 0
  br i1 %.not.5.i, label %bb.i, label %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load i64, ptr %i.s, align 8, !tbaa !74
  %.not.6.i = icmp eq i64 %i.t, 0
  br i1 %.not.6.i, label %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit, label %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.thread

_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit: ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = load i64, ptr %i.u, align 8, !tbaa !74
  %.not.7.i = icmp eq i64 %i.v, 0
  br i1 %.not.7.i, label %bb.u, label %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.thread

_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.thread: ; preds = %bb.i, %bb.f, %bb.h, %bb.e, %bb.d, %bb.g, %bb.c, %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.w = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #55 ; 0 uses
  %i.x = load i64, ptr %2, align 8, !tbaa !159
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !161
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br i1 %1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.thread
  %i.aa = sdiv i64 %i.z, 1000000
  %i.ab = mul nsw i64 %i.x, 1000
  %i.ac = add nsw i64 %i.aa, %i.ab
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !326
  %i.ae = icmp slt i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false), !tbaa.struct !327
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, i8 0, i64 72, i1 false)
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.k, %bb.t
  %i.af = phi i64 [ 0, %bb.k ], [ %i.bl, %bb.t ]  ; 3 uses
  %storemerge29 = phi i64 [ 0, %bb.k ], [ %i.bk, %bb.t ]
  %i.ag = and i64 %storemerge29, 63               ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.af
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !74
  %i.aj = lshr i64 %i.ai, %i.ag                   ; 2 uses
  %.not.peel.i = icmp eq i64 %i.aj, 0
  br i1 %.not.peel.i, label %bb.l, label %.preheader.i

bb.l:                                             ; preds = %.lr.ph.preheader.i
  %i.ak = add nuw nsw i64 %i.af, 1                ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %i.ak, 8
  br i1 %exitcond.peel.not.i, label %_Z24_mi_commit_mask_next_runPK16mi_commit_mask_sPm.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.m
  %.03348.i = phi i64 [ %i.at, %bb.m ], [ %i.ak, %bb.l ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03348.i
  %i.am = load i64, ptr %i.al, align 8, !tbaa !74 ; 2 uses
  %.not.i15 = icmp eq i64 %i.am, 0
  br i1 %.not.i15, label %bb.m, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.03049.lcssa.i = phi i64 [ %i.ag, %.lr.ph.preheader.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.03348.lcssa.i = phi i64 [ %i.af, %.lr.ph.preheader.i ], [ %.03348.i, %.lr.ph.i ] ; 2 uses
  %.lcssa57.i = phi i64 [ %i.aj, %.lr.ph.preheader.i ], [ %i.am, %.lr.ph.i ] ; 3 uses
  %i.an = and i64 %.lcssa57.i, 1
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph52.i, label %._crit_edge.i

.lr.ph52.i:                                       ; preds = %.preheader.i, %.lr.ph52.i
  %.12951.i = phi i64 [ %i.ap, %.lr.ph52.i ], [ %.lcssa57.i, %.preheader.i ] ; 2 uses
  %.13150.i = phi i64 [ %i.aq, %.lr.ph52.i ], [ %.03049.lcssa.i, %.preheader.i ]
  %i.ap = lshr exact i64 %.12951.i, 1             ; 2 uses
  %i.aq = add i64 %.13150.i, 1                    ; 2 uses
  %i.ar = and i64 %.12951.i, 2
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph52.i, label %._crit_edge.i, !llvm.loop !320

bb.m:                                             ; preds = %.lr.ph.i
  %i.at = add nuw nsw i64 %.03348.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.at, 8
  br i1 %exitcond.not.i, label %_Z24_mi_commit_mask_next_runPK16mi_commit_mask_sPm.exit.thread, label %.lr.ph.i, !llvm.loop !321

._crit_edge.i:                                    ; preds = %.lr.ph52.i, %.preheader.i
  %.131.lcssa.i = phi i64 [ %.03049.lcssa.i, %.preheader.i ], [ %i.aq, %.lr.ph52.i ] ; 2 uses
  %.129.lcssa.i = phi i64 [ %.lcssa57.i, %.preheader.i ], [ %i.ap, %.lr.ph52.i ]
  %i.au = shl nuw nsw i64 %.03348.lcssa.i, 6
  %i.av = add i64 %.131.lcssa.i, %i.au            ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.s, %._crit_edge.i
  %.134.i = phi i64 [ %.03348.lcssa.i, %._crit_edge.i ], [ %.235.i, %bb.s ] ; 3 uses
  %.3.i = phi i64 [ %.129.lcssa.i, %._crit_edge.i ], [ %.5.i, %bb.s ]
  %.0.i = phi i64 [ 0, %._crit_edge.i ], [ %i.aw, %bb.s ]
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.4.i = phi i64 [ %.3.i, %bb.n ], [ %i.ax, %bb.o ] ; 2 uses
  %.1.i = phi i64 [ %.0.i, %bb.n ], [ %i.aw, %bb.o ]
  %i.aw = add i64 %.1.i, 1                        ; 6 uses
  %i.ax = lshr i64 %.4.i, 1                       ; 2 uses
  %i.ay = and i64 %.4.i, 2
  %.not40.i = icmp eq i64 %i.ay, 0
  br i1 %.not40.i, label %bb.p, label %bb.o, !llvm.loop !323

bb.p:                                             ; preds = %bb.o
  %i.az = add i64 %i.aw, %.131.lcssa.i
  %i.ba = and i64 %i.az, 63
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bc = icmp ugt i64 %.134.i, 6
  br i1 %i.bc, label %_Z24_mi_commit_mask_next_runPK16mi_commit_mask_sPm.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = add nuw nsw i64 %.134.i, 1              ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !74
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.235.i = phi i64 [ %i.bd, %bb.r ], [ %.134.i, %bb.p ]
  %.5.i = phi i64 [ %i.bf, %bb.r ], [ %i.ax, %bb.p ] ; 2 uses
  %i.bg = and i64 %.5.i, 1
  %.not41.i = icmp eq i64 %i.bg, 0
  br i1 %.not41.i, label %_Z24_mi_commit_mask_next_runPK16mi_commit_mask_sPm.exit, label %bb.n, !llvm.loop !324

_Z24_mi_commit_mask_next_runPK16mi_commit_mask_sPm.exit: ; preds = %bb.q, %bb.s
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %_Z24_mi_commit_mask_next_runPK16mi_commit_mask_sPm.exit.thread, label %bb.t

bb.t:                                             ; preds = %_Z24_mi_commit_mask_next_runPK16mi_commit_mask_sPm.exit
  %i.bh = shl i64 %i.av, 16
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bh
  %i.bj = shl i64 %i.aw, 16
  call fastcc void @_ZL16mi_segment_purgeP12mi_segment_sPhm(ptr noundef %0, ptr noundef %i.bi, i64 noundef %i.bj)
  %i.bk = add i64 %i.aw, %i.av                    ; 3 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = icmp ult i64 %i.bk, 512
  br i1 %i.bm, label %.lr.ph.preheader.i, label %_Z24_mi_commit_mask_next_runPK16mi_commit_mask_sPm.exit.thread, !llvm.loop !328

_Z24_mi_commit_mask_next_runPK16mi_commit_mask_sPm.exit.thread: ; preds = %bb.t, %bb.l, %_Z24_mi_commit_mask_next_runPK16mi_commit_mask_sPm.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  br label %bb.u

bb.u:                                             ; preds = %_Z24_mi_commit_mask_next_runPK16mi_commit_mask_sPm.exit.thread, %bb.j, %bb.a, %bb.b, %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL21mi_segment_page_clearP9mi_page_sP17mi_segments_tld_s(ptr noundef %0, ptr nofree noundef captures(address) %1) unnamed_addr #6 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = add i64 %i.a, -1                         ; 2 uses
  %i.c = and i64 %i.b, -33554432
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = icmp slt i64 %i.b, 33554432
  %i.f = select i1 %i.e, ptr null, ptr %i.d       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !30
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %.val = load i64, ptr %i.j, align 8, !tbaa !20
  %i.k = mul i64 %.val, %i.i                      ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !227  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 5 uses
  %i.o = icmp eq i64 %i.k, 0
  br i1 %i.o, label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = icmp uge ptr %i.n, @_mi_stats_main
  %i.q = icmp ult ptr %i.n, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 4184)
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 3 uses
  br i1 %i.r, label %bb.c, label %bb.e, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.t = atomicrmw sub ptr %i.s, i64 %i.k monotonic, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 136 ; 2 uses
  %i.v = sub nsw i64 %i.t, %i.k                   ; 3 uses
  %i.w = load atomic i64, ptr %i.u monotonic, align 8 ; 2 uses
  %.old3.i.i.i = icmp slt i64 %i.w, %i.v
  br i1 %.old3.i.i.i, label %.preheader.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.c, %.preheader.i.i.i
  %.0.i.i.i = phi i64 [ %i.z, %.preheader.i.i.i ], [ %i.w, %bb.c ]
  %i.x = cmpxchg weak ptr %i.u, i64 %.0.i.i.i, i64 %i.v release monotonic, align 8 ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1
  %i.z = extractvalue { i64, i1 } %i.x, 0         ; 2 uses
  %i.aa = icmp sge i64 %i.z, %i.v
  %or.cond.not.i.i.i = select i1 %i.y, i1 true, i1 %i.aa
  br i1 %or.cond.not.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, label %.preheader.i.i.i, !llvm.loop !147

_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i:       ; preds = %.preheader.i.i.i, %bb.c
  %i.ab = icmp slt i64 %i.k, 0
  br i1 %i.ab, label %bb.d, label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit

bb.d:                                             ; preds = %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i
  %i.ac = atomicrmw sub ptr %i.n, i64 %i.k monotonic, align 8 ; 0 uses
  br label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit

bb.e:                                             ; preds = %bb.b
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !154
  %i.ae = sub nsw i64 %i.ad, %i.k                 ; 3 uses
  store i64 %i.ae, ptr %i.s, align 8, !tbaa !154
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 136 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !156
  %i.ah = icmp sgt i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !156
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = icmp slt i64 %i.k, 0
  br i1 %i.ai, label %bb.h, label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit

bb.h:                                             ; preds = %bb.g
  %i.aj = load i64, ptr %i.n, align 8, !tbaa !157
  %i.ak = sub nsw i64 %i.aj, %i.k
  store i64 %i.ak, ptr %i.n, align 8, !tbaa !157
  br label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit

_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit:    ; preds = %bb.a, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, %bb.d, %bb.g, %bb.h
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !227 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.an = icmp uge ptr %i.am, @_mi_stats_main
  %i.ao = icmp ult ptr %i.am, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 4184)
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 3 uses
  br i1 %i.ap, label %bb.i, label %bb.j, !prof !19

bb.i:                                             ; preds = %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.at = add nsw i64 %i.ar, -1                   ; 3 uses
  %i.au = load atomic i64, ptr %i.as monotonic, align 8 ; 2 uses
  %.old3.i.i.i21 = icmp slt i64 %i.au, %i.at
  br i1 %.old3.i.i.i21, label %.preheader.i.i.i23, label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit26

.preheader.i.i.i23:                               ; preds = %bb.i, %.preheader.i.i.i23
  %.0.i.i.i24 = phi i64 [ %i.ax, %.preheader.i.i.i23 ], [ %i.au, %bb.i ]
  %i.av = cmpxchg weak ptr %i.as, i64 %.0.i.i.i24, i64 %i.at release monotonic, align 8 ; 2 uses
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  %i.ax = extractvalue { i64, i1 } %i.av, 0       ; 2 uses
  %i.ay = icmp sge i64 %i.ax, %i.at
  %or.cond.not.i.i.i25 = select i1 %i.aw, i1 true, i1 %i.ay
  br i1 %or.cond.not.i.i.i25, label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit26, label %.preheader.i.i.i23, !llvm.loop !147

bb.j:                                             ; preds = %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit
  %i.az = load i64, ptr %i.aq, align 8, !tbaa !154
  %i.ba = add nsw i64 %i.az, -1                   ; 3 uses
  store i64 %i.ba, ptr %i.aq, align 8, !tbaa !154
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !156
  %i.bd = icmp sgt i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.k, label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit26

bb.k:                                             ; preds = %bb.j
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !156
  br label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit26

_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit26:  ; preds = %.preheader.i.i.i23, %bb.j, %bb.k, %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !329, !range !91, !noundef !92
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.l, label %bb.t

bb.l:                                             ; preds = %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit26
  %i.bh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 360), align 8, !tbaa !111
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.m, label %mi_option_is_enabled.exit, !prof !19

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 352)), !inline_history !115
  br label %mi_option_is_enabled.exit

mi_option_is_enabled.exit:                        ; preds = %bb.l, %bb.m
  %i.bj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 352), align 16, !tbaa !116
  %.not = icmp eq i64 %i.bj, 0
  br i1 %.not, label %bb.t, label %bb.n

bb.n:                                             ; preds = %mi_option_is_enabled.exit
  %.val.i = load i64, ptr %i.j, align 8, !tbaa !20 ; 10 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.a, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 96
  %i.bo = load i32, ptr %0, align 8, !tbaa !123
  %i.bp = zext i32 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 16               ; 2 uses
  %i.br = shl i64 %i.bn, 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.br ; 2 uses
  %i.bt = add i64 %.val.i, -1
  %or.cond.i.i = icmp ult i64 %i.bt, 65536
  br i1 %or.cond.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = urem i64 %i.bu, %.val.i
  %i.bw = sub nsw i64 %.val.i, %i.bv              ; 3 uses
  %i.bx = icmp uge i64 %i.bw, %.val.i
  %i.by = add nuw nsw i64 %i.bw, %.val.i
  %.not.i.i = icmp ult i64 %i.bq, %i.by
  %or.cond35.i.i = select i1 %i.bx, i1 true, i1 %.not.i.i
  %.0.i.i = select i1 %or.cond35.i.i, i64 0, i64 %i.bw
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1.i.i = phi i64 [ %.0.i.i, %bb.o ], [ 0, %bb.n ] ; 3 uses
  %i.bz = icmp ugt i64 %.val.i, 7
  br i1 %i.bz, label %bb.q, label %_Z22_mi_segment_page_startPK12mi_segment_sPK9mi_page_sPm.exit

bb.q:                                             ; preds = %bb.p
  %i.ca = icmp ult i64 %.val.i, 65
  br i1 %i.ca, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cb = mul nuw nsw i64 %.val.i, 3
  %i.cc = add nuw nsw i64 %.1.i.i, %i.cb
  br label %_Z22_mi_segment_page_startPK12mi_segment_sPK9mi_page_sPm.exit

bb.s:                                             ; preds = %bb.q
  %i.cd = icmp ult i64 %.val.i, 513
end_hunk_0
begin_hunk_1_@_ZL12chacha_blockP15mi_random_cxt_s:.preheader21
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %.sroa.39.0.copyload = load i32, ptr %.sroa.39.0..sroa_idx, align 4, !tbaa !71
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %.sroa.42.0.copyload = load i32, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !71
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.sroa.45.0.copyload = load i32, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !71
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %.sroa.48.0.copyload = load i32, ptr %.sroa.48.0..sroa_idx, align 4, !tbaa !71
  br label %bb.a

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %0, align 4, !tbaa !71
  %i.c = add i32 %i.b, %i.dd
  store i32 %i.c, ptr %i.a, align 4, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = load <4 x i32>, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !71
  %i.f = insertelement <4 x i32> poison, i32 %i.dy, i64 0
  %i.g = insertelement <4 x i32> %i.f, i32 %i.ea, i64 1
  %i.h = insertelement <4 x i32> %i.g, i32 %i.eg, i64 2
  %i.i = insertelement <4 x i32> %i.h, i32 %i.es, i64 3
  %i.j = add <4 x i32> %i.e, %i.i
  store <4 x i32> %i.j, ptr %i.d, align 4, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.l = load <4 x i32>, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !71
  %i.m = insertelement <4 x i32> poison, i32 %i.el, i64 0
  %i.n = insertelement <4 x i32> %i.m, i32 %i.ep, i64 1
  %i.o = insertelement <4 x i32> %i.n, i32 %i.ef, i64 2
  %i.p = insertelement <4 x i32> %i.o, i32 %i.ed, i64 3
  %i.q = add <4 x i32> %i.l, %i.p
  store <4 x i32> %i.q, ptr %i.k, align 4, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.s = load i32, ptr %.sroa.39.0..sroa_idx, align 4, !tbaa !71
  %i.t = load <4 x i32>, ptr %.sroa.30.0..sroa_idx, align 4, !tbaa !71
  %i.u = insertelement <4 x i32> poison, i32 %i.eq, i64 0
  %i.v = insertelement <4 x i32> %i.u, i32 %i.ej, i64 1
  %i.w = insertelement <4 x i32> %i.v, i32 %i.en, i64 2
  %i.x = insertelement <4 x i32> %i.w, i32 %i.em, i64 3
  %i.y = add <4 x i32> %i.t, %i.x
  store <4 x i32> %i.y, ptr %i.r, align 4, !tbaa !71
  %i.z = load i32, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !71 ; 2 uses
  %i.aa = add i32 %i.z, %i.ec
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !71
  %i.ac = load i32, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !71 ; 2 uses
  %i.ad = add i32 %i.ac, %i.ei
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !71
  %i.af = load i32, ptr %.sroa.48.0..sroa_idx, align 4, !tbaa !71
  %i.ag = add i32 %i.af, %i.df
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !71
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 16, ptr %i.ai, align 4, !tbaa !107
  %i.aj = add i32 %i.s, 1                         ; 2 uses
  store i32 %i.aj, ptr %.sroa.39.0..sroa_idx, align 4, !tbaa !71
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.b, label %bb.d

bb.a:                                             ; preds = %.preheader21, %bb.a
  %.01953 = phi i64 [ 0, %.preheader21 ], [ %i.et, %bb.a ] ; 2 uses
  %i.al = phi i32 [ %.sroa.15.0.copyload, %.preheader21 ], [ %i.es, %bb.a ] ; 2 uses
  %i.am = phi i32 [ %.sroa.0.0.copyload, %.preheader21 ], [ %i.dd, %bb.a ]
  %i.an = phi i32 [ %.sroa.39.0.copyload, %.preheader21 ], [ %i.em, %bb.a ]
  %i.ao = phi i32 [ %.sroa.27.0.copyload, %.preheader21 ], [ %i.ed, %bb.a ]
  %i.ap = phi i32 [ %.sroa.18.0.copyload, %.preheader21 ], [ %i.el, %bb.a ] ; 2 uses
  %i.aq = phi i32 [ %.sroa.6.0.copyload, %.preheader21 ], [ %i.dy, %bb.a ]
  %i.ar = phi i32 [ %.sroa.42.0.copyload, %.preheader21 ], [ %i.ec, %bb.a ]
  %i.as = phi i32 [ %.sroa.30.0.copyload, %.preheader21 ], [ %i.eq, %bb.a ]
  %i.at = phi i32 [ %.sroa.21.0.copyload, %.preheader21 ], [ %i.ep, %bb.a ] ; 2 uses
  %i.au = phi i32 [ %.sroa.9.0.copyload, %.preheader21 ], [ %i.ea, %bb.a ]
  %i.av = phi i32 [ %.sroa.45.0.copyload, %.preheader21 ], [ %i.ei, %bb.a ]
  %i.aw = phi i32 [ %.sroa.33.0.copyload, %.preheader21 ], [ %i.ej, %bb.a ]
  %i.ax = phi i32 [ %.sroa.24.0.copyload, %.preheader21 ], [ %i.ef, %bb.a ] ; 2 uses
  %i.ay = phi i32 [ %.sroa.12.0.copyload, %.preheader21 ], [ %i.eg, %bb.a ]
  %i.az = phi i32 [ %.sroa.48.0.copyload, %.preheader21 ], [ %i.df, %bb.a ]
  %i.ba = phi i32 [ %.sroa.36.0.copyload, %.preheader21 ], [ %i.en, %bb.a ]
  %i.bb = add i32 %i.am, %i.al                    ; 2 uses
  %i.bc = xor i32 %i.an, %i.bb                    ; 2 uses
  %i.bd = tail call noundef i32 @llvm.fshl.i32(i32 %i.bc, i32 %i.bc, i32 16) ; 2 uses
  %i.be = add i32 %i.bd, %i.ao                    ; 2 uses
  %i.bf = xor i32 %i.be, %i.al                    ; 2 uses
  %i.bg = tail call noundef i32 @llvm.fshl.i32(i32 %i.bf, i32 %i.bf, i32 12) ; 2 uses
  %i.bh = add i32 %i.bg, %i.bb                    ; 2 uses
  %i.bi = xor i32 %i.bh, %i.bd                    ; 2 uses
  %i.bj = tail call noundef i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 8) ; 2 uses
  %i.bk = add i32 %i.bj, %i.be                    ; 2 uses
  %i.bl = xor i32 %i.bk, %i.bg                    ; 2 uses
  %i.bm = tail call noundef i32 @llvm.fshl.i32(i32 %i.bl, i32 %i.bl, i32 7) ; 2 uses
  %i.bn = add i32 %i.aq, %i.ap                    ; 2 uses
  %i.bo = xor i32 %i.ar, %i.bn                    ; 2 uses
  %i.bp = tail call noundef i32 @llvm.fshl.i32(i32 %i.bo, i32 %i.bo, i32 16) ; 2 uses
  %i.bq = add i32 %i.bp, %i.as                    ; 2 uses
  %i.br = xor i32 %i.bq, %i.ap                    ; 2 uses
  %i.bs = tail call noundef i32 @llvm.fshl.i32(i32 %i.br, i32 %i.br, i32 12) ; 2 uses
  %i.bt = add i32 %i.bs, %i.bn                    ; 2 uses
  %i.bu = xor i32 %i.bt, %i.bp                    ; 2 uses
  %i.bv = tail call noundef i32 @llvm.fshl.i32(i32 %i.bu, i32 %i.bu, i32 8) ; 2 uses
  %i.bw = add i32 %i.bv, %i.bq                    ; 2 uses
  %i.bx = xor i32 %i.bw, %i.bs                    ; 2 uses
  %i.by = tail call noundef i32 @llvm.fshl.i32(i32 %i.bx, i32 %i.bx, i32 7) ; 2 uses
  %i.bz = add i32 %i.au, %i.at                    ; 2 uses
  %i.ca = xor i32 %i.av, %i.bz                    ; 2 uses
  %i.cb = tail call noundef i32 @llvm.fshl.i32(i32 %i.ca, i32 %i.ca, i32 16) ; 2 uses
  %i.cc = add i32 %i.cb, %i.aw                    ; 2 uses
  %i.cd = xor i32 %i.cc, %i.at                    ; 2 uses
  %i.ce = tail call noundef i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 12) ; 2 uses
  %i.cf = add i32 %i.ce, %i.bz                    ; 2 uses
  %i.cg = xor i32 %i.cf, %i.cb                    ; 2 uses
  %i.ch = tail call noundef i32 @llvm.fshl.i32(i32 %i.cg, i32 %i.cg, i32 8) ; 2 uses
  %i.ci = add i32 %i.ch, %i.cc                    ; 2 uses
  %i.cj = xor i32 %i.ci, %i.ce                    ; 2 uses
  %i.ck = tail call noundef i32 @llvm.fshl.i32(i32 %i.cj, i32 %i.cj, i32 7) ; 2 uses
  %i.cl = add i32 %i.ay, %i.ax                    ; 2 uses
  %i.cm = xor i32 %i.az, %i.cl                    ; 2 uses
  %i.cn = tail call noundef i32 @llvm.fshl.i32(i32 %i.cm, i32 %i.cm, i32 16) ; 2 uses
  %i.co = add i32 %i.cn, %i.ba                    ; 2 uses
  %i.cp = xor i32 %i.co, %i.ax                    ; 2 uses
  %i.cq = tail call noundef i32 @llvm.fshl.i32(i32 %i.cp, i32 %i.cp, i32 12) ; 2 uses
  %i.cr = add i32 %i.cq, %i.cl                    ; 2 uses
  %i.cs = xor i32 %i.cr, %i.cn                    ; 2 uses
  %i.ct = tail call noundef i32 @llvm.fshl.i32(i32 %i.cs, i32 %i.cs, i32 8) ; 2 uses
  %i.cu = add i32 %i.ct, %i.co                    ; 2 uses
  %i.cv = xor i32 %i.cu, %i.cq                    ; 2 uses
  %i.cw = tail call noundef i32 @llvm.fshl.i32(i32 %i.cv, i32 %i.cv, i32 7) ; 2 uses
  %i.cx = add i32 %i.by, %i.bh                    ; 2 uses
  %i.cy = xor i32 %i.ct, %i.cx                    ; 2 uses
  %i.cz = tail call noundef i32 @llvm.fshl.i32(i32 %i.cy, i32 %i.cy, i32 16) ; 2 uses
  %i.da = add i32 %i.cz, %i.ci                    ; 2 uses
  %i.db = xor i32 %i.da, %i.by                    ; 2 uses
  %i.dc = tail call noundef i32 @llvm.fshl.i32(i32 %i.db, i32 %i.db, i32 12) ; 2 uses
  %i.dd = add i32 %i.dc, %i.cx                    ; 3 uses
  %i.de = xor i32 %i.dd, %i.cz                    ; 2 uses
  %i.df = tail call noundef i32 @llvm.fshl.i32(i32 %i.de, i32 %i.de, i32 8) ; 3 uses
  %i.dg = add i32 %i.ck, %i.bt                    ; 2 uses
  %i.dh = xor i32 %i.dg, %i.bj                    ; 2 uses
  %i.di = tail call noundef i32 @llvm.fshl.i32(i32 %i.dh, i32 %i.dh, i32 16) ; 2 uses
  %i.dj = add i32 %i.cu, %i.di                    ; 2 uses
  %i.dk = xor i32 %i.dj, %i.ck                    ; 2 uses
  %i.dl = tail call noundef i32 @llvm.fshl.i32(i32 %i.dk, i32 %i.dk, i32 12) ; 2 uses
  %i.dm = add i32 %i.cw, %i.cf                    ; 2 uses
  %i.dn = xor i32 %i.dm, %i.bv                    ; 2 uses
  %i.do = tail call noundef i32 @llvm.fshl.i32(i32 %i.dn, i32 %i.dn, i32 16) ; 2 uses
  %i.dp = add i32 %i.do, %i.bk                    ; 2 uses
  %i.dq = xor i32 %i.dp, %i.cw                    ; 2 uses
  %i.dr = tail call noundef i32 @llvm.fshl.i32(i32 %i.dq, i32 %i.dq, i32 12) ; 2 uses
  %i.ds = add i32 %i.cr, %i.bm                    ; 2 uses
  %i.dt = xor i32 %i.ds, %i.ch                    ; 2 uses
  %i.du = tail call noundef i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.dt, i32 16) ; 2 uses
  %i.dv = add i32 %i.du, %i.bw                    ; 2 uses
  %i.dw = xor i32 %i.dv, %i.bm                    ; 2 uses
  %i.dx = tail call noundef i32 @llvm.fshl.i32(i32 %i.dw, i32 %i.dw, i32 12) ; 2 uses
  %i.dy = add i32 %i.dl, %i.dg                    ; 3 uses
  %i.dz = xor i32 %i.dy, %i.di                    ; 2 uses
  %i.ea = add i32 %i.dr, %i.dm                    ; 3 uses
  %i.eb = xor i32 %i.ea, %i.do                    ; 2 uses
  %i.ec = tail call noundef i32 @llvm.fshl.i32(i32 %i.eb, i32 %i.eb, i32 8) ; 3 uses
  %i.ed = add i32 %i.ec, %i.dp                    ; 3 uses
  %i.ee = xor i32 %i.ed, %i.dr                    ; 2 uses
  %i.ef = tail call noundef i32 @llvm.fshl.i32(i32 %i.ee, i32 %i.ee, i32 7) ; 2 uses
  %i.eg = add i32 %i.dx, %i.ds                    ; 3 uses
  %i.eh = xor i32 %i.eg, %i.du                    ; 2 uses
  %i.ei = tail call noundef i32 @llvm.fshl.i32(i32 %i.eh, i32 %i.eh, i32 8) ; 3 uses
  %i.ej = add i32 %i.df, %i.da                    ; 3 uses
  %i.ek = xor i32 %i.ej, %i.dc                    ; 2 uses
  %i.el = tail call noundef i32 @llvm.fshl.i32(i32 %i.ek, i32 %i.ek, i32 7) ; 2 uses
  %i.em = tail call noundef i32 @llvm.fshl.i32(i32 %i.dz, i32 %i.dz, i32 8) ; 3 uses
  %i.en = add i32 %i.em, %i.dj                    ; 3 uses
  %i.eo = xor i32 %i.en, %i.dl                    ; 2 uses
  %i.ep = tail call noundef i32 @llvm.fshl.i32(i32 %i.eo, i32 %i.eo, i32 7) ; 2 uses
  %i.eq = add i32 %i.ei, %i.dv                    ; 3 uses
  %i.er = xor i32 %i.eq, %i.dx                    ; 2 uses
  %i.es = tail call noundef i32 @llvm.fshl.i32(i32 %i.er, i32 %i.er, i32 7) ; 2 uses
  %i.et = add nuw nsw i64 %.01953, 2
  %i.eu = icmp samesign ult i64 %.01953, 18
  br i1 %i.eu, label %bb.a, label %.preheader, !llvm.loop !391

bb.b:                                             ; preds = %.preheader
  %i.ev = add i32 %i.z, 1                         ; 2 uses
  store i32 %i.ev, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !71
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ex = add i32 %i.ac, 1
  store i32 %i.ex, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !71
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL16mi_segment_purgeP12mi_segment_sPhm(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.mi_commit_mask_s, align 16  ; 11 uses
  %4 = alloca %struct.mi_commit_mask_s, align 16  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.d = load i8, ptr %i.c, align 1, !tbaa !325, !range !91, !noundef !92
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store ptr null, ptr %i.a, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i64 0, ptr %i.b, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call fastcc void @_ZL22mi_segment_commit_maskP12mi_segment_sbPhmPS1_PmP16mi_commit_mask_s(ptr noundef nonnull %0, i1 noundef zeroext true, ptr noundef %1, i64 noundef %2, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %3)
  %i.f = load <2 x i64>, ptr %3, align 16         ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load <2 x i64>, ptr %i.g, align 16       ; 6 uses
  %i.i = shufflevector <2 x i64> %i.f, <2 x i64> %i.h, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x i64> %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.k = load <2 x i64>, ptr %i.j, align 16
  %.fr4 = freeze <2 x i64> %i.k                   ; 5 uses
  %i.l = extractelement <2 x i64> %.fr4, i64 0    ; 2 uses
  %i.m = extractelement <2 x i64> %.fr4, i64 1    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = load i64, ptr %i.n, align 16             ; 5 uses
  %.not.6.i = icmp eq i64 %i.o, 0
  %i.p = icmp ne <4 x i64> %.fr, zeroinitializer
  %i.q = bitcast <4 x i1> %i.p to i4
  %i.r = icmp eq i4 %i.q, 0
  %i.s = or i64 %i.m, %i.l
  %i.t = icmp eq i64 %i.s, 0
  %i.u = and i1 %i.r, %i.t
  %op.rdx2 = select i1 %i.u, i1 %.not.6.i, i1 false
  br i1 %op.rdx2, label %bb.c, label %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !74
  %.not.7.i = icmp eq i64 %i.w, 0
  br label %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit

_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit: ; preds = %bb.b, %bb.c
  %.not.lcssa.i = phi i1 [ false, %bb.b ], [ %.not.7.i, %bb.c ]
  %i.x = load i64, ptr %i.b, align 8              ; 5 uses
  %i.y = icmp eq i64 %i.x, 0
  %or.cond = select i1 %.not.lcssa.i, i1 true, i1 %i.y
  br i1 %or.cond, label %bb.o, label %bb.d

bb.d:                                             ; preds = %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !74
  %i.ab = extractelement <2 x i64> %i.f, i64 0
  %i.ac = and i64 %i.aa, %i.ab
  %.not.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.not.i, label %bb.e, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !74
  %i.af = extractelement <2 x i64> %i.f, i64 1
  %i.ag = and i64 %i.af, %i.ae
  %.not.1.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.1.not.i, label %bb.f, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !74
  %i.aj = extractelement <2 x i64> %i.h, i64 0
  %i.ak = and i64 %i.aj, %i.ai
  %.not.2.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.2.not.i, label %bb.g, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.am = load i64, ptr %i.al, align 8, !tbaa !74
  %i.an = extractelement <2 x i64> %i.h, i64 1
  %i.ao = and i64 %i.an, %i.am
  %.not.3.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.3.not.i, label %bb.h, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !74
  %i.ar = and i64 %i.l, %i.aq
  %.not.4.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.4.not.i, label %bb.i, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.at = load i64, ptr %i.as, align 8, !tbaa !74
  %i.au = and i64 %i.m, %i.at
  %.not.5.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.5.not.i, label %bb.j, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !74
  %i.ax = and i64 %i.o, %i.aw
  %.not.6.not.i = icmp eq i64 %i.ax, 0
  br i1 %.not.6.not.i, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread

_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit: ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !74
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !74 ; 2 uses
  %i.bc = and i64 %i.bb, %i.az
  %.not.7.not.i.not = icmp eq i64 %i.bc, 0
  br i1 %.not.7.not.i.not, label %bb.n, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread

_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread: ; preds = %bb.j, %bb.g, %bb.i, %bb.f, %bb.e, %bb.d, %bb.h, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.be = tail call noundef zeroext i1 @_Z15_mi_os_purge_exPvmbm(ptr noundef %i.bd, i64 noundef %i.x, i1 noundef zeroext true, i64 noundef %i.x)
  br i1 %i.be, label %bb.k, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread._crit_edge

_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread._crit_edge: ; preds = %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !74
  br label %bb.n

bb.k:                                             ; preds = %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.bf = load <2 x i64>, ptr %i.z, align 8, !tbaa !74
  %i.bg = and <2 x i64> %i.bf, %i.f
  store <2 x i64> %i.bg, ptr %4, align 16, !tbaa !74
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bj = load <2 x i64>, ptr %i.bh, align 8, !tbaa !74
  %i.bk = and <2 x i64> %i.h, %i.bj
  store <2 x i64> %i.bk, ptr %i.bi, align 16, !tbaa !74
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bn = load <2 x i64>, ptr %i.bl, align 8, !tbaa !74
  %i.bo = and <2 x i64> %.fr4, %i.bn
  store <2 x i64> %i.bo, ptr %i.bm, align 16, !tbaa !74
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !74
  %i.br = and i64 %i.o, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.br, ptr %i.bs, align 16, !tbaa !74
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !74
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !74 ; 3 uses
  %i.bx = and i64 %i.bw, %i.bu
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !74
  %i.bz = call noundef i64 @_Z30_mi_commit_mask_committed_sizePK16mi_commit_mask_sm(ptr noundef nonnull %4, i64 noundef 33554432) ; 2 uses
  %i.ca = sub i64 %i.x, %i.bz                     ; 4 uses
  %i.cb = icmp eq i64 %i.x, %i.bz
  br i1 %i.cb, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 72), i64 %i.ca monotonic, align 8
  %i.cd = add nsw i64 %i.cc, %i.ca                ; 3 uses
  %i.ce = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64) monotonic, align 64 ; 2 uses
  %.old3.i.i.i = icmp slt i64 %i.ce, %i.cd
  br i1 %.old3.i.i.i, label %.preheader.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.l, %.preheader.i.i.i
  %.0.i.i.i = phi i64 [ %i.ch, %.preheader.i.i.i ], [ %i.ce, %bb.l ]
  %i.cf = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64), i64 %.0.i.i.i, i64 %i.cd release monotonic, align 8 ; 2 uses
  %i.cg = extractvalue { i64, i1 } %i.cf, 1
  %i.ch = extractvalue { i64, i1 } %i.cf, 0       ; 2 uses
  %i.ci = icmp sge i64 %i.ch, %i.cd
  %or.cond.not.i.i.i = select i1 %i.cg, i1 true, i1 %i.ci
  br i1 %or.cond.not.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, label %.preheader.i.i.i, !llvm.loop !147

_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i:       ; preds = %.preheader.i.i.i, %bb.l
  %i.cj = icmp sgt i64 %i.ca, 0
  br i1 %i.cj, label %bb.m, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.m:                                             ; preds = %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i
  %i.ck = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 56), i64 %i.ca monotonic, align 8 ; 0 uses
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

_Z17_mi_stat_increaseP15mi_stat_count_sm.exit:    ; preds = %bb.k, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, %bb.m
  %i.cl = xor <2 x i64> %i.f, splat (i64 -1)
  %i.cm = load <2 x i64>, ptr %i.z, align 8, !tbaa !74
  %i.cn = and <2 x i64> %i.cm, %i.cl
  store <2 x i64> %i.cn, ptr %i.z, align 8, !tbaa !74
  %i.co = xor <2 x i64> %i.h, splat (i64 -1)
  %i.cp = load <2 x i64>, ptr %i.bh, align 8, !tbaa !74
  %i.cq = and <2 x i64> %i.cp, %i.co
  store <2 x i64> %i.cq, ptr %i.bh, align 8, !tbaa !74
  %i.cr = xor <2 x i64> %.fr4, splat (i64 -1)
  %i.cs = load <2 x i64>, ptr %i.bl, align 8, !tbaa !74
  %i.ct = and <2 x i64> %i.cs, %i.cr
  store <2 x i64> %i.ct, ptr %i.bl, align 8, !tbaa !74
  %i.cu = insertelement <2 x i64> poison, i64 %i.o, i64 0
  %i.cv = insertelement <2 x i64> %i.cu, i64 %i.bw, i64 1
  %i.cw = xor <2 x i64> %i.cv, splat (i64 -1)
  %i.cx = load <2 x i64>, ptr %i.bp, align 8, !tbaa !74
  %i.cy = and <2 x i64> %i.cx, %i.cw
  store <2 x i64> %i.cy, ptr %i.bp, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  br label %bb.n

bb.n:                                             ; preds = %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread._crit_edge, %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit
  %i.cz = phi i64 [ %.pre, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread._crit_edge ], [ %i.bw, %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit ], [ %i.bb, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.db = xor <2 x i64> %i.f, splat (i64 -1)
  %i.dc = load <2 x i64>, ptr %i.da, align 8, !tbaa !74
end_hunk_1
begin_hunk_2_@_ZL29mi_segment_span_free_coalesceP9mi_page_sP17mi_segments_tld_s:bb.a
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.aa, %_ZL33mi_segment_span_remove_from_queueP9mi_page_sP17mi_segments_tld_s.exit ], [ %i.o, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.aw = icmp ugt ptr %0, %i.q
  br i1 %i.aw, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds i8, ptr %0, i64 -96
  %i.ay = getelementptr inbounds i8, ptr %0, i64 -92
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !25 ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.ax, i64 %i.bb ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !20
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.bg = load i32, ptr %i.bc, align 8, !tbaa !123
  %i.bh = zext i32 %i.bg to i64
  %i.bi = add nuw nsw i64 %.0, %i.bh              ; 2 uses
  store i32 0, ptr %0, align 8, !tbaa !123
  %.neg = add i32 %i.az, 96
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.neg, ptr %i.bj, align 4, !tbaa !25
  br i1 %i.m, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = load i32, ptr %i.bc, align 8, !tbaa !123 ; 2 uses
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = icmp ult i32 %i.bk, 9
  br i1 %i.bm, label %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i41, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = add nsw i64 %i.bl, -1                   ; 2 uses
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 true) ; 2 uses
  %i.bp = shl nuw nsw i64 %i.bo, 2
  %i.bq = sub nuw nsw i64 61, %i.bo
  %i.br = lshr i64 %i.bn, %i.bq
  %i.bs = and i64 %i.br, 3
  %i.bt = or disjoint i64 %i.bs, %i.bp
  %i.bu = xor i64 %i.bt, 252
  %i.bv = add nsw i64 %i.bu, -4
  br label %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i41

_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i41: ; preds = %bb.q, %bb.p
  %.1.i.i.i.i42 = phi i64 [ %i.bl, %bb.p ], [ %i.bv, %bb.q ]
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.1.i.i.i.i42 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !304 ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.by, null
  %.phi.trans.insert.i44 = getelementptr inbounds nuw i8, ptr %i.bc, i64 72 ; 2 uses
  %.pre.i45 = load ptr, ptr %.phi.trans.insert.i44, align 8, !tbaa !221 ; 4 uses
  br i1 %.not.i.i43, label %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit._crit_edge.i46, label %bb.r

bb.r:                                             ; preds = %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i41
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  store ptr %.pre.i45, ptr %i.bz, align 8, !tbaa !221
  br label %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit._crit_edge.i46

_ZL17mi_span_queue_formP17mi_segments_tld_s.exit._crit_edge.i46: ; preds = %bb.r, %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i41
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !332
  %i.cb = icmp eq ptr %i.bc, %i.ca
  br i1 %i.cb, label %bb.s, label %._crit_edge.i.i47

bb.s:                                             ; preds = %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit._crit_edge.i46
  store ptr %.pre.i45, ptr %i.bw, align 8, !tbaa !332
  br label %._crit_edge.i.i47

._crit_edge.i.i47:                                ; preds = %bb.s, %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit._crit_edge.i46
  %.not19.i.i48 = icmp eq ptr %.pre.i45, null
  br i1 %.not19.i.i48, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.i47
  %i.cc = getelementptr inbounds nuw i8, ptr %.pre.i45, i64 80
  store ptr %i.by, ptr %i.cc, align 8, !tbaa !304
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i47
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !334
  %i.cf = icmp eq ptr %i.bc, %i.ce
  br i1 %i.cf, label %bb.v, label %_ZL33mi_segment_span_remove_from_queueP9mi_page_sP17mi_segments_tld_s.exit49

bb.v:                                             ; preds = %bb.u
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !304
  store ptr %i.cg, ptr %i.cd, align 8, !tbaa !334
  br label %_ZL33mi_segment_span_remove_from_queueP9mi_page_sP17mi_segments_tld_s.exit49

_ZL33mi_segment_span_remove_from_queueP9mi_page_sP17mi_segments_tld_s.exit49: ; preds = %bb.u, %bb.v
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert.i44, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.bd, align 8, !tbaa !20
  br label %bb.w

bb.w:                                             ; preds = %bb.n, %_ZL33mi_segment_span_remove_from_queueP9mi_page_sP17mi_segments_tld_s.exit49, %bb.o, %bb.m
  %.137 = phi ptr [ %0, %bb.m ], [ %0, %bb.n ], [ %i.bc, %_ZL33mi_segment_span_remove_from_queueP9mi_page_sP17mi_segments_tld_s.exit49 ], [ %i.bc, %bb.o ] ; 2 uses
  %.2 = phi i64 [ %.0, %bb.m ], [ %.0, %bb.n ], [ %i.bi, %_ZL33mi_segment_span_remove_from_queueP9mi_page_sP17mi_segments_tld_s.exit49 ], [ %i.bi, %bb.o ]
  %i.ch = ptrtoint ptr %.137 to i64               ; 2 uses
  %i.ci = add i64 %i.ch, -1                       ; 2 uses
  %i.cj = and i64 %i.ci, -33554432
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = icmp slt i64 %i.ci, 33554432
  %i.cm = select i1 %i.cl, ptr null, ptr %i.ck
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 288
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.ch, %i.co
  %i.cq = sdiv exact i64 %i.cp, 96
  tail call fastcc void @_ZL20mi_segment_span_freeP12mi_segment_smmbP17mi_segments_tld_s(ptr noundef nonnull %i.d, i64 noundef %i.cq, i64 noundef %.2, i1 noundef zeroext true, ptr noundef %1)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.b
  %.035 = phi ptr [ %0, %bb.b ], [ %.137, %bb.w ]
  ret ptr %.035
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL20mi_segment_span_freeP12mi_segment_smmbP17mi_segments_tld_s(ptr noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr nofree noundef captures(address) %4) unnamed_addr #6 {
bb.a:
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %6 = alloca %struct.mi_commit_mask_s, align 16  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.d = load i32, ptr %i.c, align 8, !tbaa !331
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.g = load atomic i64, ptr %i.f monotonic, align 8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult i64 %2, 9
  br i1 %i.i, label %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add i64 %2, -1                           ; 2 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true) ; 2 uses
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = sub nuw nsw i64 61, %i.k
  %i.n = lshr i64 %i.j, %i.m
  %i.o = and i64 %i.n, 3
  %i.p = or disjoint i64 %i.o, %i.l
  %i.q = xor i64 %i.p, 252
  %i.r = add nsw i64 %i.q, -4
  br label %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit

_ZL17mi_span_queue_formP17mi_segments_tld_s.exit: ; preds = %bb.c, %bb.d
  %.1.i.i.i = phi i64 [ %2, %bb.c ], [ %i.r, %bb.d ]
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %.1.i.i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit
  %i.t = phi ptr [ %i.s, %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit ], [ null, %bb.b ], [ null, %bb.a ] ; 4 uses
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %2, i64 1) ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.v = getelementptr inbounds nuw [96 x i8], ptr %i.u, i64 %1 ; 10 uses
  %i.w = trunc i64 %spec.store.select to i32      ; 2 uses
  store i32 %i.w, ptr %i.v, align 8, !tbaa !123
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 0, ptr %i.x, align 4, !tbaa !25
  %i.y = icmp ugt i64 %2, 1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw [96 x i8], ptr %i.v, i64 %spec.store.select
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -96 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !122
  %i.ad = getelementptr inbounds nuw [96 x i8], ptr %i.u, i64 %i.ac ; 2 uses
  %i.ae = icmp ugt ptr %i.aa, %i.ad
  %spec.select = select i1 %i.ae, ptr %i.ad, ptr %i.aa ; 3 uses
  store i32 0, ptr %spec.select, align 8, !tbaa !123
  %i.af = mul i32 %i.w, 96
  %i.ag = add i32 %i.af, -96
  %i.ah = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %spec.select, i64 40
  store i64 0, ptr %i.ai, align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %3, label %bb.h, label %_ZL25mi_segment_schedule_purgeP12mi_segment_sPhm.exit

bb.h:                                             ; preds = %bb.g
  %i.aj = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.ak = add i64 %i.aj, -1                       ; 2 uses
  %i.al = and i64 %i.ak, -33554432
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = icmp slt i64 %i.ak, 33554432
  %i.ao = select i1 %i.an, ptr null, ptr %i.am    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 288
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aj, %i.aq
  %i.as = sdiv exact i64 %i.ar, 96
  %i.at = shl i64 %i.as, 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.at ; 2 uses
  %i.av = shl i64 %spec.store.select, 16          ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !325, !range !91, !noundef !92
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.i, label %_ZL25mi_segment_schedule_purgeP12mi_segment_sPhm.exit

bb.i:                                             ; preds = %bb.h
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 488), align 8, !tbaa !111
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.j, label %mi_option_get.exit.i, !prof !19

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480)), !inline_history !121
  br label %mi_option_get.exit.i

mi_option_get.exit.i:                             ; preds = %bb.j, %bb.i
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480), align 16, !tbaa !116
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %mi_option_get.exit.i
  tail call fastcc void @_ZL16mi_segment_purgeP12mi_segment_sPhm(ptr noundef nonnull %0, ptr noundef %i.au, i64 noundef %i.av)
  br label %_ZL25mi_segment_schedule_purgeP12mi_segment_sPhm.exit

bb.l:                                             ; preds = %mi_option_get.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i64 0, ptr %i.b, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  call fastcc void @_ZL22mi_segment_commit_maskP12mi_segment_sbPhmPS1_PmP16mi_commit_mask_s(ptr noundef nonnull %0, i1 noundef zeroext true, ptr noundef %i.au, i64 noundef %i.av, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %6)
  %i.bd = load <2 x i64>, ptr %6, align 16        ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bf = load <2 x i64>, ptr %i.be, align 16     ; 2 uses
  %i.bg = shufflevector <2 x i64> %i.bd, <2 x i64> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x i64> %i.bg
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bi = load <2 x i64>, ptr %i.bh, align 16
  %.fr39 = freeze <2 x i64> %i.bi                 ; 3 uses
  %i.bj = extractelement <2 x i64> %.fr39, i64 0
  %i.bk = extractelement <2 x i64> %.fr39, i64 1
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bm = load i64, ptr %i.bl, align 16           ; 2 uses
  %.not.6.i.i = icmp eq i64 %i.bm, 0
  %i.bn = icmp ne <4 x i64> %.fr, zeroinitializer
  %i.bo = bitcast <4 x i1> %i.bn to i4
  %i.bp = icmp eq i4 %i.bo, 0
  %i.bq = or i64 %i.bk, %i.bj
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = and i1 %i.bp, %i.br
  %op.rdx37 = select i1 %i.bs, i1 %.not.6.i.i, i1 false
  br i1 %op.rdx37, label %bb.m, label %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !74
  %.not.7.i.i = icmp eq i64 %i.bu, 0
  br label %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i

_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i: ; preds = %bb.m, %bb.l
  %.not.lcssa.i.i = phi i1 [ false, %bb.l ], [ %.not.7.i.i, %bb.m ]
  %i.bv = load i64, ptr %i.b, align 8
  %i.bw = icmp eq i64 %i.bv, 0
  %or.cond.i = select i1 %.not.lcssa.i.i, i1 true, i1 %i.bw
  br i1 %or.cond.i, label %bb.y, label %bb.n

bb.n:                                             ; preds = %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !74
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ce = load <2 x i64>, ptr %i.bx, align 8, !tbaa !74
  %i.cf = and <2 x i64> %i.ce, %i.bd
  %i.cg = load <2 x i64>, ptr %i.cd, align 8, !tbaa !74
  %i.ch = or <2 x i64> %i.cg, %i.cf
  store <2 x i64> %i.ch, ptr %i.cd, align 8, !tbaa !74
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cj = load <2 x i64>, ptr %i.by, align 8, !tbaa !74
  %i.ck = and <2 x i64> %i.cj, %i.bf
  %i.cl = load <2 x i64>, ptr %i.ci, align 8, !tbaa !74
  %i.cm = or <2 x i64> %i.cl, %i.ck
  store <2 x i64> %i.cm, ptr %i.ci, align 8, !tbaa !74
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.co = load <2 x i64>, ptr %i.bz, align 8, !tbaa !74
  %i.cp = and <2 x i64> %i.co, %.fr39
  %i.cq = load <2 x i64>, ptr %i.cn, align 8, !tbaa !74
  %i.cr = or <2 x i64> %i.cq, %i.cp
  store <2 x i64> %i.cr, ptr %i.cn, align 8, !tbaa !74
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ct = load <2 x i64>, ptr %i.ca, align 8, !tbaa !74
  %i.cu = insertelement <2 x i64> poison, i64 %i.bm, i64 0
  %i.cv = insertelement <2 x i64> %i.cu, i64 %i.cc, i64 1
  %i.cw = and <2 x i64> %i.ct, %i.cv
  %i.cx = load <2 x i64>, ptr %i.cs, align 8, !tbaa !74
  %i.cy = or <2 x i64> %i.cx, %i.cw
  store <2 x i64> %i.cy, ptr %i.cs, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.cz = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #55 ; 0 uses
  %i.da = load i64, ptr %5, align 8, !tbaa !159
  %i.db = mul nsw i64 %i.da, 1000
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !161
  %i.de = sdiv i64 %i.dd, 1000000
  %i.df = add nsw i64 %i.de, %i.db                ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !326 ; 4 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 488), align 8, !tbaa !111
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.p, label %mi_option_get.exit22.i, !prof !19

bb.p:                                             ; preds = %bb.o
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480)), !inline_history !121
  br label %mi_option_get.exit22.i

mi_option_get.exit22.i:                           ; preds = %bb.p, %bb.o
  %i.dl = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480), align 16, !tbaa !116
  %i.dm = add nsw i64 %i.dl, %i.df
  store i64 %i.dm, ptr %i.dg, align 8, !tbaa !326
  br label %bb.y

bb.q:                                             ; preds = %bb.n
  %.not.i = icmp sgt i64 %i.dh, %i.df
  %i.dn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 808), align 8, !tbaa !111
  %i.do = icmp eq i32 %i.dn, 0                    ; 2 uses
  br i1 %.not.i, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.do, label %bb.s, label %mi_option_get.exit23.i, !prof !19

bb.s:                                             ; preds = %bb.r
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 800)), !inline_history !121
  br label %mi_option_get.exit23.i

mi_option_get.exit23.i:                           ; preds = %bb.s, %bb.r
  %i.dp = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 800), align 16, !tbaa !116 ; 2 uses
  %i.dq = add nsw i64 %i.dp, %i.dh
  %.not21.i = icmp sgt i64 %i.dq, %i.df
  br i1 %.not21.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %mi_option_get.exit23.i
  call fastcc void @_ZL20mi_segment_try_purgeP12mi_segment_sb(ptr noundef nonnull %0, i1 noundef zeroext true)
  br label %bb.y

bb.u:                                             ; preds = %mi_option_get.exit23.i
  %i.dr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 808), align 8, !tbaa !111
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.v, label %mi_option_get.exit24.i, !prof !19

bb.v:                                             ; preds = %bb.u
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 800)), !inline_history !121
  %.pre.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 800), align 16, !tbaa !116
  br label %mi_option_get.exit24.i

mi_option_get.exit24.i:                           ; preds = %bb.v, %bb.u
  %i.dt = phi i64 [ %i.dp, %bb.u ], [ %.pre.i, %bb.v ]
  %i.du = add nsw i64 %i.dt, %i.df
  store i64 %i.du, ptr %i.dg, align 8, !tbaa !326
  br label %bb.y

bb.w:                                             ; preds = %bb.q
  br i1 %i.do, label %bb.x, label %mi_option_get.exit25.i, !prof !19

bb.x:                                             ; preds = %bb.w
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 800)), !inline_history !121
  %.pre38.i = load i64, ptr %i.dg, align 8, !tbaa !326
  br label %mi_option_get.exit25.i

mi_option_get.exit25.i:                           ; preds = %bb.x, %bb.w
  %i.dv = phi i64 [ %i.dh, %bb.w ], [ %.pre38.i, %bb.x ]
  %i.dw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 800), align 16, !tbaa !116
  %i.dx = add nsw i64 %i.dw, %i.dv
  store i64 %i.dx, ptr %i.dg, align 8, !tbaa !326
  br label %bb.y

bb.y:                                             ; preds = %mi_option_get.exit25.i, %mi_option_get.exit24.i, %bb.t, %mi_option_get.exit22.i, %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %_ZL25mi_segment_schedule_purgeP12mi_segment_sPhm.exit

_ZL25mi_segment_schedule_purgeP12mi_segment_sPhm.exit: ; preds = %bb.y, %bb.k, %bb.h, %bb.g
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %_ZL18mi_span_queue_pushP15mi_span_queue_sP9mi_page_s.exit, label %bb.z

bb.z:                                             ; preds = %_ZL25mi_segment_schedule_purgeP12mi_segment_sPhm.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store ptr null, ptr %i.dy, align 8, !tbaa !304
  %i.dz = load ptr, ptr %i.t, align 8, !tbaa !332 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !221
  store ptr %i.v, ptr %i.t, align 8, !tbaa !332
  %.not.i31 = icmp eq ptr %i.dz, null
  br i1 %.not.i31, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 80
  store ptr %i.v, ptr %i.eb, align 8, !tbaa !304
  br label %_ZL18mi_span_queue_pushP15mi_span_queue_sP9mi_page_s.exit

bb.ab:                                            ; preds = %bb.z
  %i.ec = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.v, ptr %i.ec, align 8, !tbaa !334
  br label %_ZL18mi_span_queue_pushP15mi_span_queue_sP9mi_page_s.exit

_ZL18mi_span_queue_pushP15mi_span_queue_sP9mi_page_s.exit: ; preds = %_ZL25mi_segment_schedule_purgeP12mi_segment_sPhm.exit, %bb.ab, %bb.aa
  %i.ed = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i64 0, ptr %i.ed, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal fastcc void @_ZL22mi_segments_track_sizelP17mi_segments_tld_s(i64 noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #13 {
bb.a:
  %i.a = icmp sgt i64 %0, -1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 912
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !227  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 376 ; 5 uses
  %i.e = icmp uge ptr %i.d, @_mi_stats_main
  %i.f = icmp ult ptr %i.d, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 4184)
  %i.g = select i1 %i.e, i1 %i.f, i1 false        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 392 ; 6 uses
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %bb.d, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 384 ; 2 uses
  %i.k = add nsw i64 %i.i, 1
  %i.l = load atomic i64, ptr %i.j monotonic, align 8 ; 2 uses
  %.old3.i.i.i.not = icmp sgt i64 %i.l, %i.i
  br i1 %.old3.i.i.i.not, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.c, %.preheader.i.i.i
  %.0.i.i.i = phi i64 [ %i.o, %.preheader.i.i.i ], [ %i.l, %bb.c ]
  %i.m = cmpxchg weak ptr %i.j, i64 %.0.i.i.i, i64 %i.k release monotonic, align 8 ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  %i.o = extractvalue { i64, i1 } %i.m, 0         ; 2 uses
  %i.p = icmp sgt i64 %i.o, %i.i
  %or.cond.not.i.i.i = select i1 %i.n, i1 true, i1 %i.p
  br i1 %or.cond.not.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, label %.preheader.i.i.i, !llvm.loop !147

_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i:       ; preds = %.preheader.i.i.i, %bb.c
  %i.q = atomicrmw add ptr %i.d, i64 1 monotonic, align 8 ; 0 uses
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.h, align 8, !tbaa !154  ; 2 uses
  %i.s = add nsw i64 %i.r, 1                      ; 2 uses
  store i64 %i.s, ptr %i.h, align 8, !tbaa !154
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 384 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !156
  %.not = icmp slt i64 %i.r, %i.u
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.s, ptr %i.t, align 8, !tbaa !156
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = load i64, ptr %i.d, align 8, !tbaa !157
  %i.w = add nsw i64 %i.v, 1
  store i64 %i.w, ptr %i.d, align 8, !tbaa !157
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.g:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.h, label %bb.i, !prof !19

bb.h:                                             ; preds = %bb.g
  %i.x = atomicrmw sub ptr %i.h, i64 1 monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 384 ; 2 uses
  %i.z = add nsw i64 %i.x, -1                     ; 3 uses
  %i.aa = load atomic i64, ptr %i.y monotonic, align 8 ; 2 uses
  %.old3.i.i.i15 = icmp slt i64 %i.aa, %i.z
  br i1 %.old3.i.i.i15, label %.preheader.i.i.i17, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

.preheader.i.i.i17:                               ; preds = %bb.h, %.preheader.i.i.i17
  %.0.i.i.i18 = phi i64 [ %i.ad, %.preheader.i.i.i17 ], [ %i.aa, %bb.h ]
  %i.ab = cmpxchg weak ptr %i.y, i64 %.0.i.i.i18, i64 %i.z release monotonic, align 8 ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  %i.ad = extractvalue { i64, i1 } %i.ab, 0       ; 2 uses
  %i.ae = icmp sge i64 %i.ad, %i.z
  %or.cond.not.i.i.i19 = select i1 %i.ac, i1 true, i1 %i.ae
  br i1 %or.cond.not.i.i.i19, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit, label %.preheader.i.i.i17, !llvm.loop !147

bb.i:                                             ; preds = %bb.g
  %i.af = load i64, ptr %i.h, align 8, !tbaa !154
  %i.ag = add nsw i64 %i.af, -1                   ; 3 uses
  store i64 %i.ag, ptr %i.h, align 8, !tbaa !154
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 384 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !156
  %i.aj = icmp sgt i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.j, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.j:                                             ; preds = %bb.i
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !156
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

_Z17_mi_stat_increaseP15mi_stat_count_sm.exit:    ; preds = %.preheader.i.i.i17, %bb.h, %bb.j, %bb.i, %bb.f, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i
  %i.ak = phi i64 [ 1, %bb.f ], [ 1, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i ], [ -1, %bb.i ], [ -1, %bb.j ], [ -1, %bb.h ], [ -1, %.preheader.i.i.i17 ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !347
  %i.an = add i64 %i.am, %i.ak                    ; 3 uses
  store i64 %i.an, ptr %i.al, align 8, !tbaa !347
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 872 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !394
  %i.aq = icmp ugt i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !394
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 880 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !395
  %i.at = add i64 %i.as, %0                       ; 3 uses
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !395
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 888 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !396
  %i.aw = icmp ugt i64 %i.at, %i.av
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 %i.at, ptr %i.au, align 8, !tbaa !396
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL16mi_segment_allocmmiP17mi_segments_tld_sPP9mi_page_s(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef captures(address) %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #6 {
bb.a:
  %5 = alloca %struct.mi_memid_s, align 8         ; 6 uses
  %6 = alloca %struct.mi_memid_s, align 8         ; 9 uses
  %7 = alloca %struct.mi_commit_mask_s, align 8   ; 10 uses
  %i.a = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !67 ; 4 uses
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.a)
  %i.c = icmp samesign ult i64 %i.b, 2
  %i.d = add i64 %i.a, 49535                      ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = sub i64 0, %i.a
  %i.f = and i64 %i.d, %i.e
  br label %_ZL27mi_segment_calculate_slicesmPm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = urem i64 %i.d, %i.a
  %i.h = sub nuw i64 %i.d, %i.g
  br label %_ZL27mi_segment_calculate_slicesmPm.exit

_ZL27mi_segment_calculate_slicesmPm.exit:         ; preds = %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.f, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.i = add i64 %.0.i.i, 65535                   ; 3 uses
  %i.j = icmp eq i64 %0, 0
  %i.k = or i64 %i.i, 65535
  %i.l = add i64 %i.k, %0
  %i.m = lshr i64 %i.l, 16
  %i.n = select i1 %i.j, i64 512, i64 %i.m
  %i.o = load atomic i64, ptr @_ZL12thread_count monotonic, align 8
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %bb.d, label %.thread

bb.d:                                             ; preds = %_ZL27mi_segment_calculate_slicesmPm.exit
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 872
  %i.r = load i64, ptr %i.q, align 8, !tbaa !394
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 456), align 8, !tbaa !111
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.f, !prof !19

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 448)), !inline_history !121
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 448), align 16, !tbaa !116
  %i.v = icmp ult i64 %i.r, %i.u
  br i1 %i.v, label %bb.h, label %.thread

.thread:                                          ; preds = %_ZL27mi_segment_calculate_slicesmPm.exit, %bb.f
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 104), align 8, !tbaa !111
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %mi_option_is_enabled.exit, !prof !19

bb.g:                                             ; preds = %.thread
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 96)), !inline_history !115
  br label %mi_option_is_enabled.exit

mi_option_is_enabled.exit:                        ; preds = %.thread, %bb.g
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 96), align 16, !tbaa !116
  %i.z = icmp ne i64 %i.y, 0
  br label %bb.h

bb.h:                                             ; preds = %mi_option_is_enabled.exit, %bb.f
  %not..i = phi i1 [ false, %bb.f ], [ true, %mi_option_is_enabled.exit ]
  %i.aa = phi i1 [ false, %bb.f ], [ %i.z, %mi_option_is_enabled.exit ]
  %i.ab = icmp ne i64 %0, 0                       ; 2 uses
  %i.ac = or i1 %i.ab, %i.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = and i64 %i.i, -65536
  %i.ae = add i64 %.0.i.i, 33554431
  %i.af = and i64 %i.ae, -33554432                ; 2 uses
  %i.ag = sub i64 %i.af, %i.ad
  %i.ah = add i64 %i.ag, %0                       ; 2 uses
  %i.ai = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !67 ; 4 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ai)
  %i.ak = icmp samesign ult i64 %i.aj, 2
  %i.al = add i64 %i.ai, 49535                    ; 3 uses
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = sub i64 0, %i.ai
  %i.an = and i64 %i.al, %i.am
  br label %_ZL27mi_segment_calculate_slicesmPm.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ao = urem i64 %i.al, %i.ai
  %i.ap = sub nuw i64 %i.al, %i.ao
  br label %_ZL27mi_segment_calculate_slicesmPm.exit.i

_ZL27mi_segment_calculate_slicesmPm.exit.i:       ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi i64 [ %i.an, %bb.j ], [ %i.ap, %bb.k ]
  %i.aq = add i64 %.0.i.i.i, 65535                ; 2 uses
  %i.ar = icmp eq i64 %i.ah, 0
  %i.as = or i64 %i.aq, 65535
  %i.at = add i64 %i.as, %i.ah
  %i.au = lshr i64 %i.at, 16
  %i.av = select i1 %i.ar, i64 512, i64 %i.au
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h, %_ZL27mi_segment_calculate_slicesmPm.exit.i
  %.053.in = phi i64 [ %i.aq, %_ZL27mi_segment_calculate_slicesmPm.exit.i ], [ %i.i, %bb.h ] ; 6 uses
  %.0 = phi i64 [ %i.av, %_ZL27mi_segment_calculate_slicesmPm.exit.i ], [ %i.n, %bb.h ] ; 5 uses
  %.043.i = phi i64 [ %i.af, %_ZL27mi_segment_calculate_slicesmPm.exit.i ], [ 0, %bb.h ]
  %.042.i = phi i64 [ %1, %_ZL27mi_segment_calculate_slicesmPm.exit.i ], [ 33554432, %bb.h ]
  %.053 = lshr i64 %.053.in, 16                   ; 9 uses
  %i.aw = shl nuw i64 %.0, 16                     ; 4 uses
  %i.ax = call noundef ptr @_Z23_mi_arena_alloc_alignedmmmbbiP10mi_memid_s(i64 noundef %i.aw, i64 noundef %.042.i, i64 noundef %.043.i, i1 noundef zeroext %i.ac, i1 noundef zeroext %not..i, i32 noundef %2, ptr noundef nonnull %6) ; 28 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZL19mi_segment_os_allocmmbiPmS_bP17mi_segments_tld_s.exit.thread, label %bb.l

_ZL19mi_segment_os_allocmmbiPmS_bP17mi_segments_tld_s.exit.thread: ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.ar

bb.l:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #55
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 17
  %i.ba = load i8, ptr %i.az, align 1, !range !91, !noundef !92
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 -1, i64 64, i1 false), !tbaa !74
  br label %.critedge.i

bb.n:                                             ; preds = %bb.l
  switch i64 %.053, label %.lr.ph.i.i [
    i64 512, label %bb.o
    i64 0, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 -1, i64 64, i1 false), !tbaa !74
  br label %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false), !tbaa !74
  br label %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit.i

.lr.ph.i.i:                                       ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bc, i8 0, i64 56, i1 false), !tbaa !74
  %i.bd = tail call i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %.053, i64 64) ; 2 uses
  %i.be = icmp ugt i64 %.053.in, 4194303
  %notmask.peel.i.i = shl nsw i64 -1, %i.bd
  %i.bf = xor i64 %notmask.peel.i.i, -1
  %i.bg = select i1 %i.be, i64 -1, i64 %i.bf
  store i64 %i.bg, ptr %7, align 8, !tbaa !74
  %i.bh = sub nuw nsw i64 %.053, %i.bd            ; 2 uses
  %.not.peel.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.peel.i.i, label %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.lr.ph.i.i, %.peel.next.i.i
  %.02127.in.i.i = phi i64 [ %.02127.i.i, %.peel.next.i.i ], [ 0, %.lr.ph.i.i ]
  %.02226.i.i = phi i64 [ %i.bn, %.peel.next.i.i ], [ %i.bh, %.lr.ph.i.i ] ; 3 uses
  %.02127.i.i = add i64 %.02127.in.i.i, 1         ; 2 uses
  %i.bi = tail call i64 @llvm.umin.i64(i64 %.02226.i.i, i64 64) ; 2 uses
  %i.bj = icmp ugt i64 %.02226.i.i, 63
  %notmask.i.i = shl nsw i64 -1, %i.bi
  %i.bk = xor i64 %notmask.i.i, -1
  %i.bl = select i1 %i.bj, i64 -1, i64 %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.02127.i.i
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !74
  %i.bn = sub nuw nsw i64 %.02226.i.i, %i.bi      ; 2 uses
  %.not.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i, label %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit.i, label %.peel.next.i.i, !llvm.loop !393

_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit.i: ; preds = %.peel.next.i.i, %.lr.ph.i.i, %bb.p, %bb.o
  %i.bo = and i64 %.053.in, -65536                ; 2 uses
  %i.bp = tail call noundef zeroext i1 @_Z16_mi_os_commit_exPvmPbm(ptr noundef nonnull %i.ax, i64 noundef %i.bo, ptr noundef null, i64 noundef %i.bo)
  br i1 %i.bp, label %.critedge.i, label %_ZL19mi_segment_os_allocmmbiPmS_bP17mi_segments_tld_s.exit

.critedge.i:                                      ; preds = %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit.i, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.br = load i8, ptr %i.bq, align 8, !range !91, !noundef !92 ; 2 uses
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = xor i8 %i.br, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i8 %i.bt, ptr %i.bu, align 8, !tbaa !329
  br i1 %i.bs, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.critedge.i
  %i.bv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 488), align 8, !tbaa !111
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.r, label %mi_option_get.exit.i, !prof !19

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480)), !inline_history !121
  br label %mi_option_get.exit.i

mi_option_get.exit.i:                             ; preds = %bb.r, %bb.q
  %i.bx = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480), align 16, !tbaa !116
  %i.by = icmp sgt i64 %i.bx, -1
  %i.bz = zext i1 %i.by to i8
  br label %bb.s

bb.s:                                             ; preds = %mi_option_get.exit.i, %.critedge.i
  %i.ca = phi i8 [ 0, %.critedge.i ], [ %i.bz, %mi_option_get.exit.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ax, i64 25
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !325
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store i64 %i.aw, ptr %i.cc, align 8, !tbaa !397
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 904
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !217
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !85
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cg, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false), !tbaa.struct !327
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ch, i8 0, i64 72, i1 false)
  tail call fastcc void @_ZL22mi_segments_track_sizelP17mi_segments_tld_s(i64 noundef %i.aw, ptr noundef %3)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !78
  %i.ck = icmp eq i32 %i.cj, 6
  br i1 %i.ck, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.cl = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.cm = icmp ugt ptr %i.ax, inttoptr (i64 52776558133247 to ptr)
  br i1 %i.cm, label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = udiv i64 %i.cl, 2164663517184
  %.in.in.i.i = urem i64 %i.cl, 2164663517184     ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr @_ZL14mi_segment_map, i64 %i.cn ; 2 uses
  %i.cp = load atomic ptr, ptr %i.co monotonic, align 8 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.v, label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15.i.i, !prof !19

bb.v:                                             ; preds = %bb.u
  %i.cr = call noundef ptr @_Z12_mi_os_allocmP10mi_memid_s(i64 noundef 8088, ptr noundef nonnull %5) ; 5 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.ct = cmpxchg ptr %i.co, ptr null, ptr %i.cr release monotonic, align 8 ; 2 uses
  %i.cu = extractvalue { ptr, i1 } %i.ct, 1
  br i1 %i.cu, label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15.i.i, label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.i.i

_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread.i.i: ; preds = %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.i.i: ; preds = %bb.w
  %i.cv = extractvalue { ptr, i1 } %i.ct, 0
  tail call void @_Z14_mi_os_free_exPvmb10mi_memid_s(ptr noundef nonnull %i.cr, i64 poison, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %5)
  br label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15.i.i

_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15.i.i: ; preds = %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.i.i, %bb.w, %bb.u
  %.325.i17.i.i = phi ptr [ %i.cv, %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.i.i ], [ %i.cr, %bb.w ], [ %i.cp, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.cw = lshr i64 %.in.in.i.i, 31
  %.in.i.i = lshr i64 %.in.in.i.i, 25
  %i.cx = and i64 %.in.i.i, 63
  %i.cy = getelementptr inbounds nuw i8, ptr %.325.i17.i.i, i64 24
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cw ; 3 uses
  %i.da = load atomic i64, ptr %i.cz monotonic, align 8 ; 2 uses
  %i.db = shl nuw i64 1, %i.cx                    ; 2 uses
  %i.dc = or i64 %i.da, %i.db
  %i.dd = cmpxchg weak ptr %i.cz, i64 %i.da, i64 %i.dc release monotonic, align 8 ; 2 uses
  %i.de = extractvalue { i64, i1 } %i.dd, 1
  br i1 %i.de, label %.loopexit, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i

_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i: ; preds = %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15.i.i, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i
  %i.df = phi { i64, i1 } [ %i.di, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i ], [ %i.dd, %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15.i.i ]
  %i.dg = extractvalue { i64, i1 } %i.df, 0       ; 2 uses
  %i.dh = or i64 %i.dg, %i.db
  %i.di = cmpxchg weak ptr %i.cz, i64 %i.dg, i64 %i.dh release monotonic, align 8 ; 2 uses
  %i.dj = extractvalue { i64, i1 } %i.di, 1
  br i1 %i.dj, label %.loopexit, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i, !llvm.loop !353

_ZL19mi_segment_os_allocmmbiPmS_bP17mi_segments_tld_s.exit: ; preds = %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit.i
  tail call void @_Z14_mi_arena_freePvmm10mi_memid_s(ptr noundef nonnull %i.ax, i64 noundef %i.aw, i64 noundef 0, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.ar

.loopexit:                                        ; preds = %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i, %bb.s, %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread.i.i, %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ax, i64 18
  %i.dl = load i8, ptr %i.dk, align 2, !tbaa !398, !range !91, !noundef !92
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.loopexit
  %i.dn = mul nuw nsw i64 %.0, 96
  %i.do = add nuw nsw i64 %i.dn, 200
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ax, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dp, i8 0, i64 %i.do, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.loopexit
  %i.dq = tail call i64 @llvm.umin.i64(i64 %.0, i64 512)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ax, i64 248
  store i64 %.0, ptr %i.dr, align 8, !tbaa !337
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ax, i64 256
  store i64 %.053, ptr %i.ds, align 8, !tbaa !392
  %i.dt = tail call ptr @llvm.thread.pointer.p0()
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ax, i64 280 ; 2 uses
  store atomic i64 %i.du, ptr %i.dv seq_cst, align 8
  %i.dw = ptrtoint ptr %i.ax to i64
  %i.dx = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 32), align 32, !tbaa !234
  %i.dy = xor i64 %i.dx, %i.dw
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ax, i64 224
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !246
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ax, i64 272 ; 2 uses
  store i64 %i.dq, ptr %i.ea, align 8, !tbaa !122
  %i.eb = zext i1 %i.ab to i32
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ax, i64 264 ; 2 uses
  store i32 %i.eb, ptr %i.ec, align 8, !tbaa !331
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 912
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !227 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 128 ; 5 uses
  %i.eg = and i64 %.053.in, -65536                ; 6 uses
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ei = icmp uge ptr %i.ef, @_mi_stats_main
  %i.ej = icmp ult ptr %i.ef, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 4184)
  %i.ek = select i1 %i.ei, i1 %i.ej, i1 false
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 144 ; 3 uses
  br i1 %i.ek, label %bb.aa, label %bb.ac, !prof !19

bb.aa:                                            ; preds = %bb.z
  %i.em = atomicrmw add ptr %i.el, i64 %i.eg monotonic, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 136 ; 2 uses
  %i.eo = add nsw i64 %i.em, %i.eg                ; 3 uses
  %i.ep = load atomic i64, ptr %i.en monotonic, align 8 ; 2 uses
  %.old3.i.i.i = icmp slt i64 %i.ep, %i.eo
  br i1 %.old3.i.i.i, label %.preheader.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.aa, %.preheader.i.i.i
  %.0.i.i.i42 = phi i64 [ %i.es, %.preheader.i.i.i ], [ %i.ep, %bb.aa ]
  %i.eq = cmpxchg weak ptr %i.en, i64 %.0.i.i.i42, i64 %i.eo release monotonic, align 8 ; 2 uses
  %i.er = extractvalue { i64, i1 } %i.eq, 1
  %i.es = extractvalue { i64, i1 } %i.eq, 0       ; 2 uses
  %i.et = icmp sge i64 %i.es, %i.eo
  %or.cond.not.i.i.i = select i1 %i.er, i1 true, i1 %i.et
  br i1 %or.cond.not.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, label %.preheader.i.i.i, !llvm.loop !147

_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i:       ; preds = %.preheader.i.i.i, %bb.aa
  %i.eu = icmp sgt i64 %.053.in, 65535
  br i1 %i.eu, label %bb.ab, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.ab:                                            ; preds = %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i
  %i.ev = atomicrmw add ptr %i.ef, i64 %i.eg monotonic, align 8 ; 0 uses
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.ac:                                            ; preds = %bb.z
  %i.ew = load i64, ptr %i.el, align 8, !tbaa !154
  %i.ex = add nsw i64 %i.ew, %i.eg                ; 3 uses
  store i64 %i.ex, ptr %i.el, align 8, !tbaa !154
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ee, i64 136 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !156
  %i.fa = icmp sgt i64 %i.ex, %i.ez
  br i1 %i.fa, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !156
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fb = icmp sgt i64 %.053.in, 65535
  br i1 %i.fb, label %bb.af, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.af:                                            ; preds = %bb.ae
  %i.fc = load i64, ptr %i.ef, align 8, !tbaa !157
  %i.fd = add nsw i64 %i.fc, %i.eg
  store i64 %i.fd, ptr %i.ef, align 8, !tbaa !157
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

_Z17_mi_stat_increaseP15mi_stat_count_sm.exit:    ; preds = %bb.y, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, %bb.ab, %bb.ae, %bb.af
  %i.fe = tail call fastcc noundef ptr @_ZL24mi_segment_span_allocateP12mi_segment_smm(ptr noundef nonnull %i.ax, i64 noundef 0, i64 noundef %.053)
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %bb.ar, label %bb.ag

bb.ag:                                            ; preds = %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ax, i64 216
  store i64 0, ptr %i.fg, align 8, !tbaa !225
  %i.fh = load i32, ptr %i.ec, align 8, !tbaa !331
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.ah, label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  %i.fj = load i64, ptr %i.ea, align 8, !tbaa !122 ; 2 uses
  %i.fk = sub i64 %i.fj, %.053                    ; 5 uses
  %i.fl = load atomic i64, ptr %i.dv monotonic, align 8
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fn = icmp ult i64 %i.fk, 9
  br i1 %i.fn, label %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fo = add i64 %i.fk, -1                       ; 2 uses
  %i.fp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fo, i1 true) ; 2 uses
  %i.fq = shl nuw nsw i64 %i.fp, 2
  %i.fr = sub nuw nsw i64 61, %i.fp
  %i.fs = lshr i64 %i.fo, %i.fr
  %i.ft = and i64 %i.fs, 3
  %i.fu = or disjoint i64 %i.ft, %i.fq
  %i.fv = xor i64 %i.fu, 252
end_hunk_2
begin_hunk_3_@_ZL24mi_segment_span_allocateP12mi_segment_smm:bb.a
  %i.bt = and i64 %i.br, %i.bs                    ; 2 uses
  %.not.2.i15.i.i = icmp eq i64 %i.bt, %i.bs
  %or.cond.i = select i1 %or.cond58.i.i, i1 %.not.2.i15.i.i, i1 false
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !74
  %i.bw = extractelement <2 x i64> %i.ar, i64 1   ; 4 uses
  %i.bx = and i64 %i.bv, %i.bw                    ; 2 uses
  %.not.3.i16.i.i = icmp eq i64 %i.bx, %i.bw
  %or.cond = select i1 %or.cond.i, i1 %.not.3.i16.i.i, i1 false
  br i1 %or.cond, label %bb.q, label %_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.thread.i.i

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !74
  %i.ca = and i64 %i.bz, %i.av
  %.not.4.i17.i.i = icmp eq i64 %i.ca, %i.av
  br i1 %.not.4.i17.i.i, label %bb.r, label %_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.thread.i.i

bb.r:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !74
  %i.cd = and i64 %i.cc, %i.aw
  %.not.5.i18.i.i = icmp eq i64 %i.cd, %i.aw
  br i1 %.not.5.i18.i.i, label %bb.s, label %_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.thread.i.i

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !74
  %i.cg = and i64 %i.cf, %i.ay
  %.not.6.i19.i.i = icmp eq i64 %i.cg, %i.ay
  br i1 %.not.6.i19.i.i, label %_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.i.i, label %_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.thread.i.i

_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.i.i: ; preds = %bb.s
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !74
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !74 ; 3 uses
  %i.cl = and i64 %i.ck, %i.ci
  %.not.7.i20.i.i = icmp eq i64 %i.cl, %i.ck
  br i1 %.not.7.i20.i.i, label %bb.w, label %_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.thread.i.i

_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.thread.i.i: ; preds = %bb.p, %_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.i.i, %bb.s, %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  store i64 %i.bl, ptr %5, align 8, !tbaa !74
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bp, ptr %i.cm, align 8, !tbaa !74
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.bt, ptr %i.cn, align 8, !tbaa !74
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.bx, ptr %i.co, align 8, !tbaa !74
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cr = load <2 x i64>, ptr %i.cp, align 8, !tbaa !74
  %i.cs = and <2 x i64> %i.cr, %.fr71
  store <2 x i64> %i.cs, ptr %i.cq, align 8, !tbaa !74
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !74
  %i.cv = and i64 %i.cu, %i.ay
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !74
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !74
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !74 ; 3 uses
  %i.db = and i64 %i.da, %i.cy
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !74
  %i.dd = call noundef i64 @_Z30_mi_commit_mask_committed_sizePK16mi_commit_mask_sm(ptr noundef nonnull %5, i64 noundef 33554432) ; 5 uses
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.thread.i.i
  %i.df = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 72), i64 %i.dd monotonic, align 8
  %i.dg = sub nsw i64 %i.df, %i.dd                ; 3 uses
  %i.dh = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64) monotonic, align 64 ; 2 uses
  %.old3.i.i.i.i.i = icmp slt i64 %i.dh, %i.dg
  br i1 %.old3.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.t, %.preheader.i.i.i.i.i
  %.0.i.i.i.i.i = phi i64 [ %i.dk, %.preheader.i.i.i.i.i ], [ %i.dh, %bb.t ]
  %i.di = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64), i64 %.0.i.i.i.i.i, i64 %i.dg release monotonic, align 8 ; 2 uses
  %i.dj = extractvalue { i64, i1 } %i.di, 1
  %i.dk = extractvalue { i64, i1 } %i.di, 0       ; 2 uses
  %i.dl = icmp sge i64 %i.dk, %i.dg
  %or.cond.not.i.i.i.i.i = select i1 %i.dj, i1 true, i1 %i.dl
  br i1 %or.cond.not.i.i.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !147

_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i.i:   ; preds = %.preheader.i.i.i.i.i, %bb.t
  %i.dm = icmp slt i64 %i.dd, 0
  br i1 %i.dm, label %bb.u, label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i.i

bb.u:                                             ; preds = %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i.i
  %i.dn = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 56), i64 %i.dd monotonic, align 8 ; 0 uses
  br label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i.i

_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i.i: ; preds = %bb.u, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i.i, %_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.thread.i.i
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.dp = call noundef zeroext i1 @_Z16_mi_os_commit_exPvmPbm(ptr noundef %i.do, i64 noundef %i.bh, ptr noundef nonnull %i.c, i64 noundef %i.bh)
  br i1 %i.dp, label %bb.v, label %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit

bb.v:                                             ; preds = %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i.i
  %i.dq = load <2 x i64>, ptr %i.j, align 8, !tbaa !74
  %i.dr = or <2 x i64> %i.dq, %i.ap
  store <2 x i64> %i.dr, ptr %i.j, align 8, !tbaa !74
  %i.ds = load <2 x i64>, ptr %i.bq, align 8, !tbaa !74
  %i.dt = or <2 x i64> %i.ds, %i.ar
  store <2 x i64> %i.dt, ptr %i.bq, align 8, !tbaa !74
  %i.du = load <2 x i64>, ptr %i.cp, align 8, !tbaa !74
  %i.dv = or <2 x i64> %i.du, %.fr71
  store <2 x i64> %i.dv, ptr %i.cp, align 8, !tbaa !74
  %i.dw = load i64, ptr %i.ct, align 8, !tbaa !74
  %i.dx = or i64 %i.dw, %i.ay
  store i64 %i.dx, ptr %i.ct, align 8, !tbaa !74
  %i.dy = load i64, ptr %i.cx, align 8, !tbaa !74
  %i.dz = or i64 %i.dy, %i.da
  store i64 %i.dz, ptr %i.cx, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.i.i
  %i.ea = phi i64 [ %i.da, %bb.v ], [ %i.ck, %_ZL22mi_commit_mask_all_setPK16mi_commit_mask_sS1_.exit.i.i ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !74 ; 2 uses
  %i.ed = and i64 %i.ec, %i.bk
  %.not.not.i.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not.not.i.i.i, label %bb.x, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i

bb.x:                                             ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !74 ; 2 uses
  %i.eg = and i64 %i.ef, %i.bo
  %.not.1.not.i.i.i = icmp eq i64 %i.eg, 0
  br i1 %.not.1.not.i.i.i, label %bb.y, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i

bb.y:                                             ; preds = %bb.x
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !74 ; 2 uses
  %i.ej = and i64 %i.ei, %i.bs
  %.not.2.not.i.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not.2.not.i.i.i, label %bb.z, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i

bb.z:                                             ; preds = %bb.y
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !74 ; 2 uses
  %i.em = and i64 %i.el, %i.bw
  %.not.3.not.i.i.i = icmp eq i64 %i.em, 0
  br i1 %.not.3.not.i.i.i, label %bb.aa, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i

bb.aa:                                            ; preds = %bb.z
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !74 ; 2 uses
  %i.ep = and i64 %i.eo, %i.av
  %.not.4.not.i.i.i = icmp eq i64 %i.ep, 0
  br i1 %.not.4.not.i.i.i, label %bb.ab, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !74 ; 2 uses
  %i.es = and i64 %i.er, %i.aw
  %.not.5.not.i.i.i = icmp eq i64 %i.es, 0
  br i1 %.not.5.not.i.i.i, label %bb.ac, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !74 ; 2 uses
  %i.ev = and i64 %i.eu, %i.ay
  %.not.6.not.i.i.i = icmp eq i64 %i.ev, 0
  br i1 %.not.6.not.i.i.i, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i

_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i: ; preds = %bb.ac
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !74 ; 2 uses
  %i.ey = and i64 %i.ex, %i.ea
  %.not.7.not.i.not.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not.7.not.i.not.i.i, label %bb.ae, label %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i

_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i: ; preds = %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.ez = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #55 ; 0 uses
  %i.fa = load i64, ptr %3, align 8, !tbaa !159
  %i.fb = mul nsw i64 %i.fa, 1000
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !161
  %i.fe = sdiv i64 %i.fd, 1000000
  %i.ff = add nsw i64 %i.fe, %i.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.fg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 488), align 8, !tbaa !111
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.ad, label %mi_option_get.exit.i.i, !prof !19

bb.ad:                                            ; preds = %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480)), !inline_history !121
  br label %mi_option_get.exit.i.i

mi_option_get.exit.i.i:                           ; preds = %bb.ad, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.thread.i.i
  %i.fi = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480), align 16, !tbaa !116
  %i.fj = add nsw i64 %i.ff, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !326
  %.pre36.i.i = load i64, ptr %i.eb, align 8, !tbaa !74
  %.phi.trans.insert37.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre38.i.i = load i64, ptr %.phi.trans.insert37.i.i, align 8, !tbaa !74
  %.phi.trans.insert39.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre40.i.i = load i64, ptr %.phi.trans.insert39.i.i, align 8, !tbaa !74
  %.phi.trans.insert41.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre42.i.i = load i64, ptr %.phi.trans.insert41.i.i, align 8, !tbaa !74
  %.phi.trans.insert43.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre44.i.i = load i64, ptr %.phi.trans.insert43.i.i, align 8, !tbaa !74
  %.phi.trans.insert45.i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre46.i.i = load i64, ptr %.phi.trans.insert45.i.i, align 8, !tbaa !74
  %.phi.trans.insert47.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre48.i.i = load i64, ptr %.phi.trans.insert47.i.i, align 8, !tbaa !74
  %.phi.trans.insert49.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre50.i.i = load i64, ptr %.phi.trans.insert49.i.i, align 8, !tbaa !74
  br label %bb.ae

bb.ae:                                            ; preds = %mi_option_get.exit.i.i, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i
  %i.fl = phi i64 [ %.pre50.i.i, %mi_option_get.exit.i.i ], [ %i.ex, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fm = phi i64 [ %.pre48.i.i, %mi_option_get.exit.i.i ], [ %i.eu, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fn = phi i64 [ %.pre46.i.i, %mi_option_get.exit.i.i ], [ %i.er, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fo = phi i64 [ %.pre44.i.i, %mi_option_get.exit.i.i ], [ %i.eo, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fp = phi i64 [ %.pre42.i.i, %mi_option_get.exit.i.i ], [ %i.el, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fq = phi i64 [ %.pre40.i.i, %mi_option_get.exit.i.i ], [ %i.ei, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fr = phi i64 [ %.pre38.i.i, %mi_option_get.exit.i.i ], [ %i.ef, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.fs = phi i64 [ %.pre36.i.i, %mi_option_get.exit.i.i ], [ %i.ec, %_ZL22mi_commit_mask_any_setPK16mi_commit_mask_sS1_.exit.i.i ]
  %i.ft = xor i64 %i.bk, -1
  %i.fu = and i64 %i.fs, %i.ft
  store i64 %i.fu, ptr %i.eb, align 8, !tbaa !74
  %i.fv = xor i64 %i.bo, -1
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fx = and i64 %i.fr, %i.fv
  store i64 %i.fx, ptr %i.fw, align 8, !tbaa !74
  %i.fy = xor i64 %i.bs, -1
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ga = and i64 %i.fq, %i.fy
  store i64 %i.ga, ptr %i.fz, align 8, !tbaa !74
  %i.gb = xor i64 %i.bw, -1
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gd = and i64 %i.fp, %i.gb
  store i64 %i.gd, ptr %i.gc, align 8, !tbaa !74
  %i.ge = xor i64 %i.av, -1
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gg = and i64 %i.fo, %i.ge
  store i64 %i.gg, ptr %i.gf, align 8, !tbaa !74
  %i.gh = xor i64 %i.aw, -1
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gj = and i64 %i.fn, %i.gh
  store i64 %i.gj, ptr %i.gi, align 8, !tbaa !74
  %i.gk = xor i64 %i.ay, -1
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gm = and i64 %i.fm, %i.gk
  store i64 %i.gm, ptr %i.gl, align 8, !tbaa !74
  %i.gn = xor i64 %i.ea, -1
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gp = and i64 %i.fl, %i.gn
  store i64 %i.gp, ptr %i.go, align 8, !tbaa !74
  br label %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread57

_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread57: ; preds = %bb.ae, %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread

_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit: ; preds = %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.ah

_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread: ; preds = %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i, %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread57
  %i.gq = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 0, ptr %i.gq, align 4, !tbaa !25
  %i.gr = trunc i64 %2 to i32
  store i32 %i.gr, ptr %i.e, align 8, !tbaa !123
  %i.gs = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %i.i, ptr %i.gs, align 8, !tbaa !20
  %i.gt = add i64 %2, -1
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.gt, i64 255) ; 2 uses
  %i.gu = add i64 %spec.store.select, %1
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !122 ; 3 uses
  %.not = icmp ult i64 %i.gu, %i.gw
  %i.gx = xor i64 %1, -1
  %i.gy = add i64 %i.gw, %i.gx
  %.049 = select i1 %.not, i64 %spec.store.select, i64 %i.gy ; 2 uses
  %.not5559 = icmp eq i64 %.049, 0
  br i1 %.not5559, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread
  %i.gz = add i64 %.049, 1                        ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.gz, i64 2)
  %i.ha = add i64 %umax, -1                       ; 2 uses
  %xtraiter = and i64 %i.ha, 3                    ; 3 uses
  %i.hb = icmp ult i64 %i.gz, 5
  br i1 %i.hb, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ha, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.04761.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.if, %._crit_edge.loopexit.unr-lcssa ]
  %.pn60.epil.init = phi ptr [ %i.e, %.lr.ph.preheader ], [ %.048.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.04761.epil = phi i64 [ %i.hg, %.lr.ph.epil ], [ %.04761.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.pn60.epil = phi ptr [ %.048.epil, %.lr.ph.epil ], [ %.pn60.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %.048.epil = getelementptr inbounds nuw i8, ptr %.pn60.epil, i64 96 ; 2 uses
  %i.hc = trunc i64 %.04761.epil to i32
  %i.hd = mul i32 %i.hc, 96
  %i.he = getelementptr inbounds nuw i8, ptr %.pn60.epil, i64 100
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !25
  store i32 0, ptr %.048.epil, align 8, !tbaa !123
  %i.hf = getelementptr inbounds nuw i8, ptr %.pn60.epil, i64 136
  store i64 1, ptr %i.hf, align 8, !tbaa !20
  %i.hg = add nuw i64 %.04761.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !399

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZL27mi_segment_ensure_committedP12mi_segment_sPhm.exit.thread
  %i.hh = getelementptr inbounds nuw [96 x i8], ptr %i.e, i64 %2
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 -96 ; 2 uses
  %i.hj = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %i.gw ; 2 uses
  %i.hk = icmp ugt ptr %i.hi, %i.hj
  %spec.select = select i1 %i.hk, ptr %i.hj, ptr %i.hi ; 5 uses
  %i.hl = icmp ugt ptr %spec.select, %i.e
  br i1 %i.hl, label %bb.af, label %bb.ag

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.04761 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.if, %.lr.ph ] ; 5 uses
  %.pn60 = phi ptr [ %i.e, %.lr.ph.preheader.new ], [ %.048.3, %.lr.ph ] ; 12 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %.048 = getelementptr inbounds nuw i8, ptr %.pn60, i64 96
  %i.hm = trunc i64 %.04761 to i32
  %i.hn = mul i32 %i.hm, 96
  %i.ho = getelementptr inbounds nuw i8, ptr %.pn60, i64 100
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !25
  store i32 0, ptr %.048, align 8, !tbaa !123
  %i.hp = getelementptr inbounds nuw i8, ptr %.pn60, i64 136
  store i64 1, ptr %i.hp, align 8, !tbaa !20
  %.048.1 = getelementptr inbounds nuw i8, ptr %.pn60, i64 192
  %i.hq = trunc i64 %.04761 to i32
  %i.hr = mul i32 %i.hq, 96
  %i.hs = add i32 %i.hr, 96
  %i.ht = getelementptr inbounds nuw i8, ptr %.pn60, i64 196
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !25
  store i32 0, ptr %.048.1, align 8, !tbaa !123
  %i.hu = getelementptr inbounds nuw i8, ptr %.pn60, i64 232
  store i64 1, ptr %i.hu, align 8, !tbaa !20
  %.048.2 = getelementptr inbounds nuw i8, ptr %.pn60, i64 288
  %i.hv = trunc i64 %.04761 to i32
  %i.hw = mul i32 %i.hv, 96
  %i.hx = add i32 %i.hw, 192
  %i.hy = getelementptr inbounds nuw i8, ptr %.pn60, i64 292
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !25
  store i32 0, ptr %.048.2, align 8, !tbaa !123
  %i.hz = getelementptr inbounds nuw i8, ptr %.pn60, i64 328
  store i64 1, ptr %i.hz, align 8, !tbaa !20
  %.048.3 = getelementptr inbounds nuw i8, ptr %.pn60, i64 384 ; 3 uses
  %i.ia = trunc i64 %.04761 to i32
  %i.ib = mul i32 %i.ia, 96
  %i.ic = add i32 %i.ib, 288
  %i.id = getelementptr inbounds nuw i8, ptr %.pn60, i64 388
  store i32 %i.ic, ptr %i.id, align 4, !tbaa !25
  store i32 0, ptr %.048.3, align 8, !tbaa !123
  %i.ie = getelementptr inbounds nuw i8, ptr %.pn60, i64 424
  store i64 1, ptr %i.ie, align 8, !tbaa !20
  %i.if = add nuw i64 %.04761, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !400

bb.af:                                            ; preds = %._crit_edge
  %i.ig = ptrtoint ptr %spec.select to i64
  %i.ih = sub i64 %i.ig, %i.f
  %i.ii = trunc i64 %i.ih to i32
  %i.ij = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !25
  store i32 0, ptr %spec.select, align 8, !tbaa !123
  %i.ik = getelementptr inbounds nuw i8, ptr %spec.select, i64 40
  store i64 1, ptr %i.ik, align 8, !tbaa !20
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge
  %i.il = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.im = load i8, ptr %i.il, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 264
end_hunk_3
begin_hunk_4_@llvm.experimental.cttz.elts.i64.v16i1
!121 = !{ptr @mi_option_get}
!122 = !{!79, !13, i64 272}
!123 = !{!9, !5, i64 0}
!124 = !{!9, !10, i64 12}
!125 = !{!126, !13, i64 8}
!126 = !{!"_ZTS14mi_heap_area_s", !12, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !5, i64 48}
!127 = !{!126, !13, i64 16}
!128 = !{!126, !12, i64 0}
!129 = !{!126, !13, i64 24}
!130 = !{!126, !13, i64 32}
!131 = !{!126, !13, i64 40}
!132 = !{!9, !6, i64 35}
!133 = !{!126, !5, i64 48}
!134 = distinct !{null}
!135 = distinct !{!135, !29}
!136 = !{!45, !47, i64 20}
!137 = !{!47, !47, i64 0}
!138 = !{!45, !46, i64 18}
!139 = !{!68, !46, i64 42}
!140 = !{!68, !46, i64 40}
!141 = distinct !{!141, !29}
!142 = distinct !{!142, !29}
!143 = !{!44, !46, i64 93}
!144 = !{!44, !5, i64 0}
!145 = !{!44, !46, i64 92}
!146 = !{!44, !5, i64 88}
!147 = distinct !{!147, !29}
!148 = !{!68, !46, i64 41}
!149 = !{!44, !46, i64 24}
!150 = !{!44, !52, i64 160}
!151 = distinct !{!151, !152}
!152 = !{!"llvm.loop.unroll.disable"}
!153 = distinct !{!153, !29}
!154 = !{!155, !13, i64 16}
!155 = !{!"_ZTS15mi_stat_count_s", !13, i64 0, !13, i64 8, !13, i64 16}
!156 = !{!155, !13, i64 8}
!157 = !{!155, !13, i64 0}
!158 = distinct !{!158, !152}
!159 = !{!160, !13, i64 0}
!160 = !{!"_ZTS8timespec", !13, i64 0, !13, i64 8}
!161 = !{!160, !13, i64 8}
!162 = !{!44, !52, i64 168}
!163 = distinct !{!163, !29}
!164 = distinct !{!164, !29}
!165 = distinct !{!165, !29}
!166 = distinct !{!166, !29, !167, !168}
!167 = !{!"llvm.loop.isvectorized", i32 1}
!168 = !{!"llvm.loop.unroll.runtime.disable"}
!169 = distinct !{!169, !29, !168, !167}
!170 = distinct !{!170, !29}
!171 = distinct !{!171, !29}
!172 = distinct !{!172, !152}
!173 = distinct !{!173, !152}
!174 = distinct !{!174, !29}
!175 = distinct !{!175, !29}
!176 = distinct !{!176, !29}
!177 = distinct !{!177, !29}
!178 = distinct !{!178, !29}
!179 = !{!44, !47, i64 28}
!180 = distinct !{!180, !29}
!181 = !{!45, !46, i64 16}
!182 = !{i64 0, i64 16, !27, i64 16, i64 1, !93, i64 17, i64 1, !93, i64 18, i64 1, !93, i64 20, i64 4, !137}
!183 = !{!44, !13, i64 56}
!184 = !{!44, !52, i64 152}
!185 = !{!44, !46, i64 25}
!186 = distinct !{!186, !29}
!187 = distinct !{null, ptr @_Z9_mi_fputsPFvPKcPvES1_S0_S0_}
!188 = distinct !{!188, !29}
!189 = distinct !{!189, !29}
!190 = distinct !{!190, !29}
!191 = distinct !{!191, !29}
!192 = distinct !{!192, !29}
!193 = distinct !{!193, !29}
!194 = distinct !{!194, !29}
!195 = distinct !{!195, !29}
!196 = distinct !{!196, !29}
!197 = distinct !{!197, !29}
!198 = distinct !{!198, !29}
!199 = distinct !{!199, !29}
!200 = distinct !{!200, !29}
!201 = distinct !{!201, !29}
!202 = distinct !{!202, !29}
!203 = distinct !{!203, !29}
!204 = !{!100, !101, i64 0}
!205 = !{!206, !207, i64 0}
!206 = !{!"_ZTS8mi_tld_s", !207, i64 0, !46, i64 8, !38, i64 16, !38, i64 24, !208, i64 32, !210, i64 952}
!207 = !{!"long long", !6, i64 0}
!208 = !{!"_ZTS17mi_segments_tld_s", !6, i64 0, !13, i64 864, !13, i64 872, !13, i64 880, !13, i64 888, !13, i64 896, !80, i64 904, !209, i64 912}
!209 = !{!"p1 _ZTS10mi_stats_s", !12, i64 0}
!210 = !{!"_ZTS10mi_stats_s", !5, i64 0, !155, i64 8, !155, i64 32, !155, i64 56, !155, i64 80, !155, i64 104, !155, i64 128, !155, i64 152, !155, i64 176, !155, i64 200, !155, i64 224, !155, i64 248, !211, i64 272, !211, i64 280, !211, i64 288, !211, i64 296, !211, i64 304, !211, i64 312, !211, i64 320, !211, i64 328, !211, i64 336, !211, i64 344, !211, i64 352, !211, i64 360, !211, i64 368, !155, i64 376, !155, i64 400, !155, i64 424, !155, i64 448, !211, i64 472, !211, i64 480, !211, i64 488, !211, i64 496, !6, i64 504, !6, i64 600, !6, i64 632, !6, i64 2408}
!211 = !{!"_ZTS17mi_stat_counter_s", !13, i64 0}
!212 = !{!206, !46, i64 8}
!213 = !{ptr @_Z17_mi_deferred_freeP9mi_heap_sb}
!214 = !{!100, !13, i64 16}
!215 = !{!206, !38, i64 16}
!216 = !{!100, !46, i64 240}
!217 = !{!208, !80, i64 904}
!218 = distinct !{!218, !29}
!219 = !{!100, !13, i64 192}
!220 = !{!66, !17, i64 0}
!221 = !{!9, !17, i64 72}
!222 = distinct !{!222, !29}
!223 = distinct !{!223, !29}
!224 = distinct !{!224, !29}
!225 = !{!79, !13, i64 216}
!226 = !{!79, !13, i64 200}
!227 = !{!208, !209, i64 912}
!228 = distinct !{!228, !29}
!229 = distinct !{ptr @mi_stats_merge, null, ptr @mi_heap_get_default, ptr @mi_thread_init}
!230 = !{ptr @mi_stats_merge}
!231 = !{ptr @mi_thread_init}
!232 = !{ptr @mi_heap_get_default, ptr @mi_thread_init}
!233 = !{!100, !6, i64 241}
!234 = !{!100, !13, i64 32}
!235 = !{!206, !38, i64 24}
!236 = !{!100, !38, i64 232}
!237 = distinct !{!237, !29}
!238 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!239 = distinct !{!239, !29}
!240 = distinct !{!240, !29}
!241 = distinct !{!241, !29}
!242 = distinct !{!242, !29}
!243 = !{ptr @_Z24_mi_heap_collect_abandonP9mi_heap_s}
!244 = distinct !{!244, !29}
!245 = distinct !{!245, !29}
!246 = !{!79, !13, i64 224}
!247 = distinct !{!247, !29}
!248 = distinct !{!248, !29}
!249 = distinct !{!249, !29}
!250 = distinct !{!250, !29}
!251 = distinct !{!251, !29}
!252 = !{!253, !17, i64 56}
!253 = !{!"_ZTS17mi_heap_area_ex_s", !126, i64 0, !17, i64 56}
!254 = distinct !{null, null, null, null}
!255 = !{!206, !80, i64 936}
!256 = !{!206, !209, i64 944}
!257 = distinct !{null, ptr @_Z30_mi_prim_thread_init_auto_donev}
!258 = distinct !{null}
!259 = distinct !{null, ptr @mi_stats_reset, ptr @mi_heap_get_default, ptr @mi_thread_init}
!260 = !{ptr @mi_option_is_enabled}
!261 = distinct !{null}
!262 = distinct !{!262, !29}
!263 = distinct !{null, ptr @_Z24_mi_heap_collect_abandonP9mi_heap_s}
!264 = !{!104, !46, i64 132}
!265 = !{!266, !266, i64 0}
!266 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!267 = distinct !{null, ptr @mi_heap_get_default, ptr @mi_thread_init}
!268 = distinct !{!268, !29}
!269 = distinct !{!269, !29}
!270 = distinct !{!270, !29}
!271 = !{!272, !272, i64 0}
!272 = !{!"p2 omnipotent char", !273, i64 0}
!273 = !{!"any p2 pointer", !12, i64 0}
!274 = distinct !{!274, !29}
!275 = distinct !{!275, !29}
!276 = distinct !{!276, !29}
!277 = !{!207, !207, i64 0}
!278 = distinct !{!278, !29, !279}
!279 = !{!"llvm.loop.unswitch.partial.disable"}
!280 = distinct !{!280, !29}
!281 = distinct !{!281, !29, !167, !168}
!282 = !{!"branch_weights", i32 8, i32 24}
!283 = distinct !{!283, !29, !167, !168}
!284 = distinct !{!284, !29, !167}
!285 = !{!112, !14, i64 16}
!286 = distinct !{!286, !29}
!287 = !{!112, !14, i64 24}
!288 = distinct !{!288, !29, !167, !168}
!289 = distinct !{!289, !29, !167, !168}
!290 = distinct !{!290, !29, !168, !167}
!291 = !{!112, !114, i64 12}
!292 = distinct !{null}
!293 = !{!68, !13, i64 8}
!294 = !{!68, !13, i64 16}
!295 = !{!68, !13, i64 24}
!296 = !{!211, !13, i64 0}
!297 = distinct !{!297, !29}
!298 = !{!66, !17, i64 8}
!299 = !{!"branch_weights", i32 0, i32 3, i32 2000, i32 2000, i32 2000}
!300 = distinct !{!300, !29}
!301 = distinct !{!301, !29}
!302 = distinct !{!302, !29, !167, !168}
!303 = distinct !{!303, !29, !168, !167}
!304 = !{!9, !17, i64 80}
!305 = distinct !{!305, !29, !167, !168}
!306 = distinct !{!306, !29, !168, !167}
!307 = distinct !{!307, !29}
!308 = distinct !{!308, !29, !167, !168}
!309 = distinct !{!309, !29, !168, !167}
!310 = !{!100, !13, i64 200}
!311 = !{!100, !13, i64 208}
!312 = distinct !{!312, !29}
!313 = !{!100, !13, i64 216}
!314 = !{!100, !13, i64 224}
!315 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!316 = distinct !{null}
!317 = distinct !{!317, !29}
!318 = !{ptr @_Z18_mi_os_random_weakm}
!319 = distinct !{!319, !29}
!320 = distinct !{!320, !29}
!321 = distinct !{!321, !29, !322}
!322 = !{!"llvm.loop.peeled.count", i32 1}
!323 = distinct !{!323, !29}
!324 = distinct !{!324, !29}
!325 = !{!79, !46, i64 25}
!326 = !{!79, !13, i64 48}
!327 = !{i64 0, i64 64, !27}
!328 = distinct !{!328, !29}
!329 = !{!79, !46, i64 24}
!330 = !{!79, !46, i64 193}
!331 = !{!79, !83, i64 264}
!332 = !{!333, !17, i64 0}
!333 = !{!"_ZTS15mi_span_queue_s", !17, i64 0, !17, i64 8, !13, i64 16}
!334 = !{!333, !17, i64 8}
!335 = distinct !{!335, !29}
!336 = distinct !{!336, !29}
!337 = !{!79, !13, i64 248}
!338 = !{!79, !46, i64 192}
!339 = !{!208, !13, i64 896}
!340 = distinct !{!340, !29}
!341 = !{!79, !13, i64 208}
!342 = !{!206, !13, i64 896}
!343 = !{!206, !13, i64 928}
!344 = distinct !{!344, !29}
!345 = distinct !{!345, !29}
!346 = distinct !{!346, !29}
!347 = !{!208, !13, i64 864}
!348 = distinct !{!348, !29}
!349 = distinct !{!349, !29}
!350 = distinct !{!350, !29}
!351 = distinct !{!351, !29}
!352 = distinct !{!352, !29}
!353 = distinct !{!353, !29}
!354 = distinct !{!354, !29}
!355 = !{!356, !12, i64 0}
!356 = !{!"_ZTS10buffered_s", !12, i64 0, !12, i64 8, !14, i64 16, !13, i64 24, !13, i64 32}
!357 = !{!356, !12, i64 8}
!358 = !{!356, !13, i64 32}
!359 = !{!356, !14, i64 16}
!360 = !{!361, !13, i64 0}
!361 = !{!"_ZTS7timeval", !13, i64 0, !13, i64 8}
!362 = !{!361, !13, i64 8}
!363 = !{!364, !13, i64 8}
!364 = !{!"_ZTS17mi_process_info_s", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56}
!365 = !{!364, !13, i64 16}
!366 = !{!364, !13, i64 56}
!367 = !{!364, !13, i64 32}
!368 = !{!210, !5, i64 0}
!369 = !{!370, !14, i64 0}
!370 = !{!"_ZTS13mi_heap_buf_s", !14, i64 0, !13, i64 8, !13, i64 16, !46, i64 24}
!371 = !{!370, !13, i64 8}
!372 = !{!370, !46, i64 24}
!373 = !{!370, !13, i64 16}
!374 = distinct !{!374, !29}
!375 = distinct !{!375, !29}
!376 = distinct !{!376, !29}
!377 = distinct !{!377, !29}
!378 = distinct !{!378, !29}
!379 = distinct !{!379, !29}
!380 = distinct !{!380, !152}
!381 = !{!44, !46, i64 26}
!382 = !{!45, !46, i64 17}
!383 = distinct !{!383, !152}
!384 = distinct !{!384, !152}
!385 = distinct !{!385, !152}
!386 = distinct !{!386, !29, !167, !168}
!387 = distinct !{!387, !29, !168, !167}
!388 = distinct !{!388, !29, !167, !168}
!389 = distinct !{!389, !29, !168, !167}
!390 = distinct !{!390, !29}
!391 = distinct !{!391, !29}
!392 = !{!79, !13, i64 256}
!393 = distinct !{!393, !29, !322}
!394 = !{!208, !13, i64 872}
!395 = !{!208, !13, i64 880}
!396 = !{!208, !13, i64 888}
!397 = !{!79, !13, i64 32}
!398 = !{!79, !46, i64 18}
!399 = distinct !{!399, !152}
!400 = distinct !{!400, !29}
!401 = !{!356, !13, i64 24}
!402 = distinct !{null, ptr @_Z9_mi_fputsPFvPKcPvES1_S0_S0_}
!403 = distinct !{!403, !29}
end_hunk_4
