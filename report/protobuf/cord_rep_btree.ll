begin_hunk_0
inline.NumInlined: 753
inline.NumDeleted: 205
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.c = load i8, ptr %i.b, align 1, !tbaa !7     ; 5 uses
  %i.d = zext i8 %i.c to i32                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %.not90 = icmp eq i8 %i.c, 0                    ; 2 uses
  br i1 %.not90, label %.critedge.i, label %.lr.ph.i
end_hunk_1
begin_hunk_2
  %i.bx = zext i8 %i.bw to i64
  %i.by = sub nsw i64 %i.bu, %i.bx
  %i.bz = icmp ult i64 %i.by, 6
  br i1 %i.bz, label %bb.e, label %bb.p

bb.e:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit
  %i.ca = icmp sgt i32 %.val, %i.d
end_hunk_2
begin_hunk_3
  %.2.i.i = phi ptr [ %.sroa.024.3.i.i, %bb.o ], [ %.sroa.024.3.i.i, %bb.n ], [ %i.df, %bb.m ], [ %.sroa.024.3.i.i, %.loopexit.i.i ], [ %i.ej, %.lr.ph.i.i68 ]
  %i.ev = add nuw nsw i32 %i.d, 1
  store i32 %i.ev, ptr %4, align 8, !tbaa !21
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit
  %.sroa.11.0.a = phi ptr [ %i.ct, %.loopexit ], [ %2, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.cs, %.loopexit ], [ %1, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit ] ; 4 uses
  %.160 = phi ptr [ %.2.i.i, %.loopexit ], [ %0, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit ] ; 2 uses
  %5 = tail call noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE0EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm(i64 %.sroa.0.0, ptr %.sroa.11.0.a, i64 noundef %3) ; 3 uses
  %6 = load i64, ptr %5, align 8, !tbaa !8        ; 2 uses
  %.not105 = icmp eq i64 %6, %.sroa.0.0
  br i1 %.not105, label %.thread84, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  br label %bb.q

.thread84:                                        ; preds = %bb.t, %bb.p
  %.063.lcssa = phi i32 [ %i.d, %bb.p ], [ %i.fb, %bb.t ]
  %.261.lcssa = phi ptr [ %.160, %bb.p ], [ %i.ey, %bb.t ]
  %.lcssa92 = phi ptr [ %5, %bb.p ], [ %10, %bb.t ]
  %.lcssa = phi i64 [ %.sroa.0.0, %bb.p ], [ %.sroa.speculated.i.i, %bb.t ]
  %7 = call fastcc noundef ptr @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %.261.lcssa, i32 noundef %.063.lcssa, i64 noundef %.lcssa, ptr nonnull %.lcssa92, i32 2)
  br label %bb.u

bb.q:                                             ; preds = %.lr.ph, %bb.t
  %8 = phi i64 [ %6, %.lr.ph ], [ %11, %bb.t ]    ; 2 uses
  %9 = phi ptr [ %5, %.lr.ph ], [ %10, %bb.t ]
  %.261108 = phi ptr [ %.160, %.lr.ph ], [ %i.ey, %bb.t ]
  %.063107 = phi i32 [ %i.d, %.lr.ph ], [ %i.fb, %bb.t ]
  %.sroa.0.1106 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %.sroa.speculated.i.i, %bb.t ] ; 2 uses
  %i.ex = sub i64 %.sroa.0.1106, %8
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.1106, i64 %i.ex) ; 4 uses
  %i.ey = call fastcc noundef ptr @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %.261108, i32 noundef %.063107, i64 noundef %8, ptr nonnull %9, i32 2) ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 13
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !7   ; 4 uses
  %i.fb = zext i8 %i.fa to i32                    ; 3 uses
  %.not91 = icmp eq i8 %i.fa, 0
  br i1 %.not91, label %bb.t, label %.lr.ph.i70

end_hunk_3
begin_hunk_4
  %indvars.iv.i72 = phi i64 [ 0, %.lr.ph.i70.new ], [ %indvars.iv.next.i73.3, %bb.r ] ; 5 uses
  %.067.i = phi ptr [ %i.ey, %.lr.ph.i70.new ], [ %i.gh, %bb.r ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i70.new ], [ %niter.next.3, %bb.r ]
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i72
  store ptr %.067.i, ptr %i.fd, align 8, !tbaa !14
  %i.fe = getelementptr inbounds nuw i8, ptr %.067.i, i64 14
  %i.ff = load i8, ptr %i.fe, align 1
end_hunk_4
begin_hunk_5
  %i.fh = getelementptr inbounds nuw i8, ptr %.067.i, i64 16
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fg
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !17 ; 3 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i72
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.fj, ptr %i.fl, align 8, !tbaa !14
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 14
end_hunk_5
begin_hunk_6
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fo
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !17 ; 3 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i72
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store ptr %i.fr, ptr %i.ft, align 8, !tbaa !14
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 14
end_hunk_6
begin_hunk_7
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fw
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !17 ; 3 uses
  %indvars.iv.next.i73.3 = add nuw nsw i64 %indvars.iv.i72, 4 ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i72
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  store ptr %i.fz, ptr %i.gb, align 8, !tbaa !14
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 14
end_hunk_7
begin_hunk_8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !17 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.r, !llvm.loop !50

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.r
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
end_hunk_8
begin_hunk_9
  %.067.i.epil = phi ptr [ %.067.i.epil.init, %.epil.preheader ], [ %i.go, %bb.s ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %indvars.iv.next.i73.epil = add nuw nsw i64 %indvars.iv.i72.epil, 1
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i72.epil
  store ptr %.067.i.epil, ptr %i.gi, align 8, !tbaa !14
  %i.gj = getelementptr inbounds nuw i8, ptr %.067.i.epil, i64 14
  %i.gk = load i8, ptr %i.gj, align 1
end_hunk_9
begin_hunk_10
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !17
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter181
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.a, label %bb.s, !llvm.loop !51

._crit_edge.loopexit.i.a:                         ; preds = %bb.s, %._crit_edge.loopexit.i.unr-lcssa
  %i.gp = add nuw nsw i32 %i.fb, 1
end_hunk_10
begin_hunk_11
bb.t:                                             ; preds = %._crit_edge.loopexit.i.a, %bb.q
  %.0.lcssa.i69 = phi i32 [ 1, %bb.q ], [ %i.gp, %._crit_edge.loopexit.i.a ]
  store i32 %.0.lcssa.i69, ptr %4, align 8, !tbaa !21
  %10 = tail call noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE0EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm(i64 %.sroa.speculated.i.i, ptr %.sroa.11.0.a, i64 noundef %3) ; 3 uses
  %11 = load i64, ptr %10, align 8, !tbaa !8      ; 2 uses
  %.not = icmp eq i64 %11, %.sroa.speculated.i.i
  br i1 %.not, label %.thread84, label %bb.q

bb.u:                                             ; preds = %.thread84, %.thread
  %.4 = phi ptr [ %7, %.thread84 ], [ %i.cx, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.v

end_hunk_11
begin_hunk_12
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree8AlignEndEv.exit
  %.sroa.0.0 = phi i64 [ %1, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree8AlignEndEv.exit ], [ %.sroa.speculated.i.i, %bb.d ] ; 4 uses
  %i.q = add i64 %.sroa.0.0, %3                   ; 2 uses
  %i.r = icmp ult i64 %i.q, 20
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 4083)
end_hunk_12
begin_hunk_13
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.an
  store ptr %i.y, ptr %i.ao, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 13
  %i.aq = sub i64 %.sroa.0.0, %.sroa.speculated   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr align 1 %i.ar, i64 %.sroa.speculated, i1 false)
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0, i64 %i.aq) ; 3 uses
  %i.as = icmp eq i64 %.sroa.speculated.i.i, 0
  %.not = icmp eq i8 %i.am, 0
  %or.cond = or i1 %.not, %i.as
  br i1 %or.cond, label %.critedge, label %bb.d, !llvm.loop !52

.critedge:                                        ; preds = %bb.d
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %.sroa.speculated.i.i, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %2, 1
  ret { i64, ptr } %.fca.1.insert.i.i
}
end_hunk_13
begin_hunk_14
bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.029 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %bb.b ]
  %.01928 = phi i64 [ 6, %.lr.ph ], [ %i.ad, %bb.b ]
  %.sroa.0.027 = phi i64 [ %0, %.lr.ph ], [ %.sroa.speculated.i.i, %bb.b ] ; 4 uses
  %i.h = add i64 %.sroa.0.027, %2                 ; 2 uses
  %i.i = icmp ult i64 %i.h, 20
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 4083)
end_hunk_14
begin_hunk_15
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ad
  store ptr %i.p, ptr %i.ae, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 13
  %i.ag = sub i64 %.sroa.0.027, %.sroa.speculated ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %i.ah, i64 %.sroa.speculated, i1 false)
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.027, i64 %i.ag) ; 2 uses
  %i.ai = icmp eq i64 %.sroa.speculated.i.i, 0
  %i.aj = icmp eq i64 %i.ad, 0
  %.not20 = or i1 %i.ai, %i.aj
  br i1 %.not20, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !53

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.ak = trunc i64 %i.ad to i8
end_hunk_15
begin_hunk_16
!48 = distinct !{!48, !20}
!49 = distinct !{!49, !20}
!50 = distinct !{!50, !20}
!51 = distinct !{!51, !24}
!52 = distinct !{!52, !20}
!53 = distinct !{!53, !20}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !20}
end_hunk_16
