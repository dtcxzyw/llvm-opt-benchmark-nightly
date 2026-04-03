begin_hunk_0
inline.NumInlined: 754
inline.NumDeleted: 205
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.c = load i8, ptr %i.b, align 1, !tbaa !7     ; 5 uses
  %i.d = zext i8 %i.c to i32                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %.not90 = icmp eq i8 %i.c, 0                    ; 2 uses
  br i1 %.not90, label %.critedge.i, label %.lr.ph.i
end_hunk_1
begin_hunk_2
  %i.bx = zext i8 %i.bw to i64
  %i.by = sub nsw i64 %i.bu, %i.bx
  %i.bz = icmp ult i64 %i.by, 6
  br i1 %i.bz, label %bb.e, label %5

bb.e:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit
  %i.ca = icmp sgt i32 %.val, %i.d
end_hunk_2
begin_hunk_3
  %.2.i.i = phi ptr [ %.sroa.024.3.i.i, %bb.o ], [ %.sroa.024.3.i.i, %bb.n ], [ %i.df, %bb.m ], [ %.sroa.024.3.i.i, %.loopexit.i.i ], [ %i.ej, %.lr.ph.i.i68 ]
  %i.ev = add nuw nsw i32 %i.d, 1
  store i32 %i.ev, ptr %4, align 8, !tbaa !21
  br label %5

5:                                                ; preds = %.loopexit, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit
  %.sroa.11.0 = phi ptr [ %i.ct, %.loopexit ], [ %2, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit ]
  %.sroa.0.0 = phi i64 [ %i.cs, %.loopexit ], [ %1, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit ]
  %.160 = phi ptr [ %.2.i.i, %.loopexit ], [ %0, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit ]
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %5
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %5 ], [ %.sroa.speculated.i.i, %bb.t ] ; 6 uses
  %.063 = phi i32 [ %i.d, %5 ], [ %i.fb, %bb.t ]  ; 2 uses
  %.sroa.11.0.a = phi ptr [ %.160, %5 ], [ %i.ey, %bb.t ] ; 2 uses
  %7 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18 ; 9 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 2, ptr %8, align 4, !tbaa !26
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 3, ptr %9, align 4, !tbaa !27
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 13
  store i8 0, ptr %10, align 1, !tbaa !7
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 15
  store i8 6, ptr %11, align 1, !tbaa !7
  %.not105 = icmp eq i64 %.sroa.0.1, 0
  br i1 %.not105, label %.thread84, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %12

12:                                               ; preds = %12, %.lr.ph
  %.029.i = phi i64 [ 0, %.lr.ph ], [ %33, %12 ]
  %.01928.i = phi i64 [ 6, %.lr.ph ], [ %34, %12 ]
  %.sroa.0.027.i = phi i64 [ %.sroa.0.1, %.lr.ph ], [ %37, %12 ] ; 3 uses
  %13 = add i64 %.sroa.0.027.i, %3                ; 2 uses
  %14 = icmp ult i64 %13, 20
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %13, i64 4083)
  %15 = add nuw nsw i64 %spec.store.select.i.i.i, 13
  %.0.i.i.i70 = select i1 %14, i64 32, i64 %15    ; 2 uses
  %16 = icmp samesign ult i64 %.0.i.i.i70, 513    ; 2 uses
  %.neg.i.i.i = select i1 %16, i64 -8, i64 -64
  %17 = select i1 %16, i64 8, i64 64
  %18 = add nsw i64 %.0.i.i.i70, -1
  %19 = add nuw nsw i64 %18, %17
  %20 = and i64 %19, %.neg.i.i.i                  ; 3 uses
  %21 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %20) #19 ; 5 uses
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 2, ptr %22, align 8
  %23 = icmp samesign ult i64 %20, 513            ; 2 uses
  %.sink6.i.i.i.i.i = select i1 %23, i64 3, i64 6
  %.sink5.i.i.i.i.i = select i1 %23, i64 2, i64 58
  %24 = lshr i64 %20, %.sink6.i.i.i.i.i
  %25 = add nuw nsw i64 %24, %.sink5.i.i.i.i.i    ; 3 uses
  %26 = trunc nuw nsw i64 %25 to i8
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 12
  store i8 %26, ptr %27, align 4, !tbaa !27
  %28 = trunc nuw nsw i64 %25 to i32
  %29 = icmp samesign ult i64 %25, 67             ; 2 uses
  %.sink6.i.i.i.i = select i1 %29, i32 3, i32 6
  %30 = shl nuw nsw i32 %28, %.sink6.i.i.i.i
  %31 = select i1 %29, i32 -29, i32 -3725
  %narrow.i.i.i = add nsw i32 %30, %31
  %32 = sext i32 %narrow.i.i.i to i64
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.027.i, i64 %32) ; 4 uses
  store i64 %.sroa.speculated.i, ptr %21, align 8, !tbaa !8
  %33 = add i64 %.sroa.speculated.i, %.029.i      ; 2 uses
  %34 = add nsw i64 %.01928.i, -1                 ; 4 uses
  %35 = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %34
  store ptr %21, ptr %35, align 8, !tbaa !17
  %36 = getelementptr inbounds nuw i8, ptr %21, i64 13
  %37 = sub nuw i64 %.sroa.0.027.i, %.sroa.speculated.i ; 3 uses
  %38 = getelementptr inbounds nuw i8, ptr %.sroa.11.0, i64 %37
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %36, ptr readonly align 1 %38, i64 %.sroa.speculated.i, i1 false)
  %39 = icmp eq i64 %37, 0
  %40 = icmp eq i64 %34, 0
  %.not20.i = or i1 %40, %39
  br i1 %.not20.i, label %._crit_edge.loopexit.i, label %12, !llvm.loop !50

._crit_edge.loopexit.i:                           ; preds = %12
  %41 = trunc i64 %34 to i8
  br label %.thread84

.thread84:                                        ; preds = %bb.p, %._crit_edge.loopexit.i
  %.019.lcssa.i = phi i8 [ 6, %bb.p ], [ %41, %._crit_edge.loopexit.i ]
  %.0.lcssa.i71 = phi i64 [ 0, %bb.p ], [ %33, %._crit_edge.loopexit.i ] ; 4 uses
  %42 = getelementptr inbounds nuw i8, ptr %7, i64 14
  store i64 %.0.lcssa.i71, ptr %7, align 8, !tbaa !8
  store i8 %.019.lcssa.i, ptr %42, align 2, !tbaa !7
  %.not = icmp eq i64 %.0.lcssa.i71, %.sroa.0.1
  br i1 %.not, label %.thread88, label %bb.q

.thread88:                                        ; preds = %.thread84
  %43 = call fastcc noundef ptr @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %.sroa.11.0.a, i32 noundef %.063, i64 noundef %.sroa.0.1, ptr nonnull %7, i32 2)
  br label %bb.u

bb.q:                                             ; preds = %.thread84
  %i.ex = sub i64 %.sroa.0.1, %.0.lcssa.i71
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.1, i64 %i.ex)
  %i.ey = call fastcc noundef ptr @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %.sroa.11.0.a, i32 noundef %.063, i64 noundef %.0.lcssa.i71, ptr nonnull %7, i32 2) ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 13
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !7   ; 4 uses
  %i.fb = zext i8 %i.fa to i32                    ; 2 uses
  %.not91 = icmp eq i8 %i.fa, 0
  br i1 %.not91, label %bb.t, label %.lr.ph.i70

end_hunk_3
begin_hunk_4
  %indvars.iv.i72 = phi i64 [ 0, %.lr.ph.i70.new ], [ %indvars.iv.next.i73.3, %bb.r ] ; 5 uses
  %.067.i = phi ptr [ %i.ey, %.lr.ph.i70.new ], [ %i.gh, %bb.r ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i70.new ], [ %niter.next.3, %bb.r ]
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.i72
  store ptr %.067.i, ptr %i.fd, align 8, !tbaa !14
  %i.fe = getelementptr inbounds nuw i8, ptr %.067.i, i64 14
  %i.ff = load i8, ptr %i.fe, align 1
end_hunk_4
begin_hunk_5
  %i.fh = getelementptr inbounds nuw i8, ptr %.067.i, i64 16
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fg
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !17 ; 3 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.i72
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.fj, ptr %i.fl, align 8, !tbaa !14
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 14
end_hunk_5
begin_hunk_6
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fo
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !17 ; 3 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.i72
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store ptr %i.fr, ptr %i.ft, align 8, !tbaa !14
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 14
end_hunk_6
begin_hunk_7
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fw
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !17 ; 3 uses
  %indvars.iv.next.i73.3 = add nuw nsw i64 %indvars.iv.i72, 4 ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.i72
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  store ptr %i.fz, ptr %i.gb, align 8, !tbaa !14
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 14
end_hunk_7
begin_hunk_8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !17 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.r, !llvm.loop !51

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.r
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
end_hunk_8
begin_hunk_9
  %.067.i.epil = phi ptr [ %.067.i.epil.init, %.epil.preheader ], [ %i.go, %bb.s ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %indvars.iv.next.i73.epil = add nuw nsw i64 %indvars.iv.i72.epil, 1
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.i72.epil
  store ptr %.067.i.epil, ptr %i.gi, align 8, !tbaa !14
  %i.gj = getelementptr inbounds nuw i8, ptr %.067.i.epil, i64 14
  %i.gk = load i8, ptr %i.gj, align 1
end_hunk_9
begin_hunk_10
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !17
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter181
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.a, label %bb.s, !llvm.loop !52

._crit_edge.loopexit.i.a:                         ; preds = %bb.s, %._crit_edge.loopexit.i.unr-lcssa
  %i.gp = add nuw nsw i32 %i.fb, 1
end_hunk_10
begin_hunk_11
bb.t:                                             ; preds = %._crit_edge.loopexit.i.a, %bb.q
  %.0.lcssa.i69 = phi i32 [ 1, %bb.q ], [ %i.gp, %._crit_edge.loopexit.i.a ]
  store i32 %.0.lcssa.i69, ptr %4, align 8, !tbaa !21
  br label %bb.p

bb.u:                                             ; preds = %.thread88, %.thread
  %.4 = phi ptr [ %43, %.thread88 ], [ %i.cx, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.v

end_hunk_11
begin_hunk_12
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree8AlignEndEv.exit
  %.sroa.0.0 = phi i64 [ %1, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree8AlignEndEv.exit ], [ %i.aq, %bb.d ] ; 3 uses
  %i.q = add i64 %.sroa.0.0, %3                   ; 2 uses
  %i.r = icmp ult i64 %i.q, 20
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 4083)
end_hunk_12
begin_hunk_13
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.an
  store ptr %i.y, ptr %i.ao, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 13
  %i.aq = sub nuw i64 %.sroa.0.0, %.sroa.speculated ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr align 1 %i.ar, i64 %.sroa.speculated, i1 false)
  %i.as = icmp eq i64 %i.aq, 0
  %.not = icmp eq i8 %i.am, 0
  %or.cond = or i1 %.not, %i.as
  br i1 %or.cond, label %.critedge, label %bb.d, !llvm.loop !53

.critedge:                                        ; preds = %bb.d
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %i.aq, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %2, 1
  ret { i64, ptr } %.fca.1.insert.i.i
}
end_hunk_13
begin_hunk_14
bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.029 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %bb.b ]
  %.01928 = phi i64 [ 6, %.lr.ph ], [ %i.ad, %bb.b ]
  %.sroa.0.027 = phi i64 [ %0, %.lr.ph ], [ %i.ag, %bb.b ] ; 3 uses
  %i.h = add i64 %.sroa.0.027, %2                 ; 2 uses
  %i.i = icmp ult i64 %i.h, 20
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 4083)
end_hunk_14
begin_hunk_15
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ad
  store ptr %i.p, ptr %i.ae, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 13
  %i.ag = sub nuw i64 %.sroa.0.027, %.sroa.speculated ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %i.ah, i64 %.sroa.speculated, i1 false)
  %i.ai = icmp eq i64 %i.ag, 0
  %i.aj = icmp eq i64 %i.ad, 0
  %.not20 = or i1 %i.ai, %i.aj
  br i1 %.not20, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !50

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.ak = trunc i64 %i.ad to i8
end_hunk_15
begin_hunk_16
!48 = distinct !{!48, !20}
!49 = distinct !{!49, !20}
!50 = distinct !{!50, !20}
!51 = distinct !{!51, !20}
!52 = distinct !{!52, !24}
!53 = distinct !{!53, !20}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !20}
end_hunk_16
