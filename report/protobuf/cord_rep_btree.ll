inline.NumInlined: 754
inline.NumDeleted: 205
begin_hunk_0_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE0EEEPS2_S5_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
bb.n:                                             ; preds = %.loopexit.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eu = atomicrmw sub ptr %i.et, i32 2 acq_rel, align 4
  %.not.i.i36.i.i = icmp eq i32 %i.eu, 2
  br i1 %.not.i.i36.i.i, label %bb.o, label %.loopexit, !prof !30

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %0)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i68, %.loopexit.i.i, %bb.o, %bb.n, %bb.m
  %.2.i.i = phi ptr [ %.sroa.024.3.i.i, %bb.o ], [ %.sroa.024.3.i.i, %bb.n ], [ %i.dh, %bb.m ], [ %.sroa.024.3.i.i, %.loopexit.i.i ], [ %i.ej, %.lr.ph.i.i68 ]
  %i.ev = add nuw nsw i32 %i.d, 1
  store i32 %i.ev, ptr %4, align 8, !tbaa !21
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit
  %.sroa.11.0 = phi ptr [ %i.cu, %.loopexit ], [ %2, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.ct, %.loopexit ], [ %1, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit ] ; 4 uses
  %.160 = phi ptr [ %.2.i.i, %.loopexit ], [ %0, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit ] ; 2 uses
  %i.ew = tail call noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE0EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm(i64 %.sroa.0.0, ptr %.sroa.11.0, i64 noundef %3) ; 3 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !8  ; 2 uses
  %.not105 = icmp eq i64 %i.ex, %.sroa.0.0
  br i1 %.not105, label %.thread84, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  br label %bb.q

.thread84:                                        ; preds = %bb.t, %bb.p
  %.063.lcssa = phi i32 [ %i.d, %bb.p ], [ %i.fg, %bb.t ]
  %.261.lcssa = phi ptr [ %.160, %bb.p ], [ %i.fd, %bb.t ]
  %.lcssa92 = phi ptr [ %i.ew, %bb.p ], [ %i.gv, %bb.t ]
  %.lcssa = phi i64 [ %.sroa.0.0, %bb.p ], [ %.sroa.speculated.i.i, %bb.t ]
  %i.ez = call fastcc noundef ptr @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %.261.lcssa, i32 noundef %.063.lcssa, i64 noundef %.lcssa, ptr nonnull %.lcssa92, i32 2)
  br label %bb.u

bb.q:                                             ; preds = %.lr.ph, %bb.t
  %i.fa = phi i64 [ %i.ex, %.lr.ph ], [ %i.gw, %bb.t ] ; 2 uses
  %i.fb = phi ptr [ %i.ew, %.lr.ph ], [ %i.gv, %bb.t ]
  %.261108 = phi ptr [ %.160, %.lr.ph ], [ %i.fd, %bb.t ]
  %.063107 = phi i32 [ %i.d, %.lr.ph ], [ %i.fg, %bb.t ]
  %.sroa.0.1106 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %.sroa.speculated.i.i, %bb.t ] ; 2 uses
  %i.fc = sub i64 %.sroa.0.1106, %i.fa
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.1106, i64 %i.fc) ; 4 uses
  %i.fd = call fastcc noundef ptr @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %.261108, i32 noundef %.063107, i64 noundef %i.fa, ptr nonnull %i.fb, i32 2) ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 13
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !7   ; 4 uses
  %i.fg = zext i8 %i.ff to i32                    ; 3 uses
  %.not91 = icmp eq i8 %i.ff, 0
  br i1 %.not91, label %bb.t, label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %bb.q
  %wide.trip.count.i71 = zext i8 %i.ff to i64     ; 2 uses
  %xtraiter181 = and i64 %wide.trip.count.i71, 3  ; 3 uses
  %i.fh = icmp ult i8 %i.ff, 4
  br i1 %i.fh, label %.epil.preheader, label %.lr.ph.i70.new

.lr.ph.i70.new:                                   ; preds = %.lr.ph.i70
  %unroll_iter = and i64 %wide.trip.count.i71, 252
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i70.new
  %indvars.iv.i72 = phi i64 [ 0, %.lr.ph.i70.new ], [ %indvars.iv.next.i73.3, %bb.r ] ; 5 uses
  %.067.i = phi ptr [ %i.fd, %.lr.ph.i70.new ], [ %i.gm, %bb.r ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i70.new ], [ %niter.next.3, %bb.r ]
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.i72
  store ptr %.067.i, ptr %i.fi, align 8, !tbaa !14
  %i.fj = getelementptr inbounds nuw i8, ptr %.067.i, i64 14
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %.067.i, i64 16
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fl
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !17 ; 3 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.i72
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store ptr %i.fo, ptr %i.fq, align 8, !tbaa !14
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 14
  %i.fs = load i8, ptr %i.fr, align 1
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.ft
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !17 ; 3 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.i72
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store ptr %i.fw, ptr %i.fy, align 8, !tbaa !14
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 14
  %i.ga = load i8, ptr %i.fz, align 1
  %i.gb = zext i8 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.gb
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !17 ; 3 uses
  %indvars.iv.next.i73.3 = add nuw nsw i64 %indvars.iv.i72, 4 ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.i72
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  store ptr %i.ge, ptr %i.gg, align 8, !tbaa !14
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 14
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = zext i8 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gj
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !17 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.r, !llvm.loop !50

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.r
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod182.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i70
  %indvars.iv.i72.epil.init = phi i64 [ 0, %.lr.ph.i70 ], [ %indvars.iv.next.i73.3, %._crit_edge.loopexit.i.unr-lcssa ]
  %.067.i.epil.init = phi ptr [ %i.fd, %.lr.ph.i70 ], [ %i.gm, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod183 = icmp ne i64 %xtraiter181, 0
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %indvars.iv.i72.epil = phi i64 [ %indvars.iv.i72.epil.init, %.epil.preheader ], [ %indvars.iv.next.i73.epil, %bb.s ] ; 2 uses
  %.067.i.epil = phi ptr [ %.067.i.epil.init, %.epil.preheader ], [ %i.gt, %bb.s ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %indvars.iv.next.i73.epil = add nuw nsw i64 %indvars.iv.i72.epil, 1
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.i72.epil
  store ptr %.067.i.epil, ptr %i.gn, align 8, !tbaa !14
  %i.go = getelementptr inbounds nuw i8, ptr %.067.i.epil, i64 14
  %i.gp = load i8, ptr %i.go, align 1
  %i.gq = zext i8 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %.067.i.epil, i64 16
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gq
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !17
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter181
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %bb.s, !llvm.loop !51

._crit_edge.loopexit.i:                           ; preds = %bb.s, %._crit_edge.loopexit.i.unr-lcssa
  %i.gu = add nuw nsw i32 %i.fg, 1
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.loopexit.i, %bb.q
  %.0.lcssa.i69 = phi i32 [ 1, %bb.q ], [ %i.gu, %._crit_edge.loopexit.i ]
  store i32 %.0.lcssa.i69, ptr %4, align 8, !tbaa !21
  %i.gv = tail call noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE0EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm(i64 %.sroa.speculated.i.i, ptr %.sroa.11.0, i64 noundef %3) ; 3 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !8  ; 2 uses
  %.not = icmp eq i64 %i.gw, %.sroa.speculated.i.i
  br i1 %.not, label %.thread84, label %bb.q

bb.u:                                             ; preds = %.thread84, %.thread
  %.4 = phi ptr [ %i.ez, %.thread84 ], [ %i.cy, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u
  %.5 = phi ptr [ %.4, %bb.u ], [ %0, %bb.a ]
  ret ptr %.5
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE0EEESt17basic_string_viewIcSt11char_traitsIcEES8_m(ptr noundef nonnull align 8 captures(none) dereferenceable(64) %0, i64 %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !7     ; 2 uses
  %i.c = zext i8 %i.b to i64
  %i.d = sub nsw i64 6, %i.c                      ; 2 uses
  %.not.i = icmp eq i8 %i.b, 6
  br i1 %.not.i, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree8AlignEndEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !7
  %i.g = zext i8 %i.f to i64
  %i.h = add nsw i64 %i.d, %i.g                   ; 3 uses
  %i.i = trunc i64 %i.h to i8
  store i8 %i.i, ptr %i.e, align 2, !tbaa !7
  store i8 6, ptr %i.a, align 1, !tbaa !7
  %.not1415.i = icmp ugt i64 %i.h, 5
  br i1 %.not1415.i, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree8AlignEndEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.016.i = phi i64 [ 5, %.lr.ph.i ], [ %.0.i, %bb.c ] ; 3 uses
  %i.k = sub i64 %.016.i, %i.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.016.i
  store ptr %i.m, ptr %i.n, align 8, !tbaa !17
  %.0.i = add nsw i64 %.016.i, -1                 ; 2 uses
  %.not14.i = icmp ult i64 %.0.i, %i.h
  br i1 %.not14.i, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree8AlignEndEv.exit, label %bb.c, !llvm.loop !29

_ZN4absl12lts_2025051213cord_internal12CordRepBtree8AlignEndEv.exit: ; preds = %bb.c, %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree8AlignEndEv.exit
  %.sroa.0.0 = phi i64 [ %1, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree8AlignEndEv.exit ], [ %.sroa.speculated.i.i, %bb.d ] ; 4 uses
  %i.q = add i64 %.sroa.0.0, %3                   ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 4083)
  %4 = add nuw nsw i64 %spec.store.select.i.i, 13
  %.narrow.i.i = icmp ult i64 %i.q, 19
  %.0.i.i = select i1 %.narrow.i.i, i64 32, i64 %4 ; 2 uses
  %i.r = icmp samesign ult i64 %.0.i.i, 513       ; 2 uses
  %.neg.i.i = select i1 %i.r, i64 -8, i64 -64
  %i.s = select i1 %i.r, i64 8, i64 64
  %i.t = add nsw i64 %.0.i.i, -1
  %i.u = add nuw nsw i64 %i.t, %i.s
  %i.v = and i64 %i.u, %.neg.i.i                  ; 3 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #18 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 2, ptr %i.y, align 8, !tbaa !26
  %i.z = icmp samesign ult i64 %i.v, 513          ; 2 uses
  %.sink6.i.i.i.i = select i1 %i.z, i64 3, i64 6
  %.sink5.i.i.i.i = select i1 %i.z, i64 2, i64 58
  %i.aa = lshr i64 %i.v, %.sink6.i.i.i.i
  %i.ab = add nuw nsw i64 %i.aa, %.sink5.i.i.i.i  ; 3 uses
  %i.ac = trunc nuw nsw i64 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i8 %i.ac, ptr %i.ad, align 4, !tbaa !27
  %i.ae = trunc nuw nsw i64 %i.ab to i32
  %i.af = icmp samesign ult i64 %i.ab, 67         ; 2 uses
  %.sink6.i.i.i = select i1 %i.af, i32 3, i32 6
  %i.ag = shl nuw nsw i32 %i.ae, %.sink6.i.i.i
  %i.ah = select i1 %i.af, i32 -29, i32 -3725
  %narrow.i.i = add nsw i32 %i.ag, %i.ah
  %i.ai = sext i32 %narrow.i.i to i64
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0, i64 %i.ai) ; 3 uses
  store i64 %.sroa.speculated, ptr %i.w, align 8, !tbaa !8
  %i.aj = load i8, ptr %i.p, align 2, !tbaa !7
  %i.ak = add i8 %i.aj, -1                        ; 3 uses
  store i8 %i.ak, ptr %i.p, align 2, !tbaa !7
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.al
  store ptr %i.w, ptr %i.am, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 13
  %i.ao = sub i64 %.sroa.0.0, %.sroa.speculated   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %i.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr align 1 %i.ap, i64 %.sroa.speculated, i1 false)
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0, i64 %i.ao) ; 3 uses
  %i.aq = icmp eq i64 %.sroa.speculated.i.i, 0
  %.not = icmp eq i8 %i.ak, 0
  %or.cond = or i1 %.not, %i.aq
  br i1 %or.cond, label %.critedge, label %bb.d, !llvm.loop !52

.critedge:                                        ; preds = %bb.d
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %.sroa.speculated.i.i, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %2, 1
  ret { i64, ptr } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE0EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm(i64 %0, ptr readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 2, ptr %i.b, align 4, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 3, ptr %i.c, align 4, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 0, ptr %i.d, align 1, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 6, ptr %i.e, align 1, !tbaa !7
  %i.f = icmp eq i64 %0, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.029 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %bb.b ]
  %.01928 = phi i64 [ 6, %.lr.ph ], [ %i.ab, %bb.b ]
  %.sroa.0.027 = phi i64 [ %0, %.lr.ph ], [ %.sroa.speculated.i.i, %bb.b ] ; 4 uses
  %i.h = add i64 %.sroa.0.027, %2                 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 4083)
  %3 = add nuw nsw i64 %spec.store.select.i.i, 13
  %.narrow.i.i = icmp ult i64 %i.h, 19
  %.0.i.i = select i1 %.narrow.i.i, i64 32, i64 %3 ; 2 uses
  %i.i = icmp samesign ult i64 %.0.i.i, 513       ; 2 uses
  %.neg.i.i = select i1 %i.i, i64 -8, i64 -64
  %i.j = select i1 %i.i, i64 8, i64 64
  %i.k = add nsw i64 %.0.i.i, -1
  %i.l = add nuw nsw i64 %i.k, %i.j
  %i.m = and i64 %i.l, %.neg.i.i                  ; 3 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #18 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 2, ptr %i.p, align 8, !tbaa !26
  %i.q = icmp samesign ult i64 %i.m, 513          ; 2 uses
  %.sink6.i.i.i.i = select i1 %i.q, i64 3, i64 6
  %.sink5.i.i.i.i = select i1 %i.q, i64 2, i64 58
  %i.r = lshr i64 %i.m, %.sink6.i.i.i.i
  %i.s = add nuw nsw i64 %i.r, %.sink5.i.i.i.i    ; 3 uses
  %i.t = trunc nuw nsw i64 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i8 %i.t, ptr %i.u, align 4, !tbaa !27
  %i.v = trunc nuw nsw i64 %i.s to i32
  %i.w = icmp samesign ult i64 %i.s, 67           ; 2 uses
  %.sink6.i.i.i = select i1 %i.w, i32 3, i32 6
  %i.x = shl nuw nsw i32 %i.v, %.sink6.i.i.i
  %i.y = select i1 %i.w, i32 -29, i32 -3725
  %narrow.i.i = add nsw i32 %i.x, %i.y
  %i.z = sext i32 %narrow.i.i to i64
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.0.027, i64 %i.z) ; 4 uses
  store i64 %.sroa.speculated, ptr %i.n, align 8, !tbaa !8
  %i.aa = add i64 %.sroa.speculated, %.029        ; 2 uses
  %i.ab = add nsw i64 %.01928, -1                 ; 4 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ab
  store ptr %i.n, ptr %i.ac, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 13
  %i.ae = sub i64 %.sroa.0.027, %.sroa.speculated ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr align 1 %i.af, i64 %.sroa.speculated, i1 false)
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.027, i64 %i.ae) ; 2 uses
  %i.ag = icmp eq i64 %.sroa.speculated.i.i, 0
  %i.ah = icmp eq i64 %i.ab, 0
  %.not20 = or i1 %i.ag, %i.ah
  br i1 %.not20, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !53

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.ai = trunc i64 %i.ab to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.019.lcssa = phi i8 [ 6, %bb.a ], [ %i.ai, %._crit_edge.loopexit ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.aa, %._crit_edge.loopexit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i64 %.0.lcssa, ptr %i.a, align 8, !tbaa !8
  store i8 %.019.lcssa, ptr %i.aj, align 2, !tbaa !7
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE1EEEPS2_S5_St17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef %0, i64 %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20250512::cord_internal::(anonymous namespace)::StackOperations.0", align 8 ; 14 uses
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.w, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.c = load i8, ptr %i.b, align 1, !tbaa !7     ; 5 uses
  %i.d = zext i8 %i.c to i32                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %.not106 = icmp eq i8 %i.c, 0                   ; 2 uses
  br i1 %.not106, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %wide.trip.count.i = zext i8 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.01416.i = phi ptr [ %0, %.lr.ph.i ], [ %i.n, %bb.d ] ; 4 uses
  %i.f = getelementptr i8, ptr %.01416.i, i64 8   ; 2 uses
  %i.g = load atomic i32, ptr %i.f acquire, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.d, label %.critedge.loopexit.i

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  store ptr %.01416.i, ptr %i.i, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %.01416.i, i64 15
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr [8 x i8], ptr %i.f, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %bb.c, !llvm.loop !33

.critedge.thread.i:                               ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load atomic i32, ptr %i.o acquire, align 4
  %i.q = icmp eq i32 %i.p, 2
  %i.r = zext i1 %i.q to i32
  %i.s = add nuw nsw i32 %i.r, %i.d               ; 2 uses
  store i32 %i.s, ptr %4, align 8, !tbaa !34
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit

.critedge.loopexit.i:                             ; preds = %bb.c
  %i.t = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.b
  %.014.lcssa.i = phi ptr [ %0, %bb.b ], [ %.01416.i, %.critedge.loopexit.i ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.t, %.critedge.loopexit.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.014.lcssa.i, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = icmp eq i32 %i.v, 2
  %i.x = zext i1 %i.w to i32
  %i.y = add nuw nsw i32 %.0.lcssa.i, %i.x        ; 4 uses
  store i32 %i.y, ptr %4, align 8, !tbaa !34
  %i.z = icmp slt i32 %.0.lcssa.i, %i.d
  br i1 %i.z, label %.lr.ph24.i, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit

.lr.ph24.i:                                       ; preds = %.critedge.i
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.ab = zext i32 %.0.lcssa.i to i64             ; 4 uses
  %wide.trip.count = zext i8 %i.c to i64          ; 3 uses
  %i.ac = sub nsw i64 %wide.trip.count, %i.ab
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph24.i, %.prol.preheader
  %indvars.iv27.i.prol = phi i64 [ %indvars.iv.next28.i.prol, %.prol.preheader ], [ %i.ab, %.lr.ph24.i ] ; 2 uses
  %.11522.i.prol = phi ptr [ %i.aj, %.prol.preheader ], [ %.014.lcssa.i, %.lr.ph24.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph24.i ]
  %indvars.iv.next28.i.prol = add nuw nsw i64 %indvars.iv27.i.prol, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv27.i.prol
  store ptr %.11522.i.prol, ptr %i.ad, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %.11522.i.prol, i64 15
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr i8, ptr %.11522.i.prol, i64 8
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !17 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !54

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph24.i
  %.lcssa221.unr = phi ptr [ poison, %.lr.ph24.i ], [ %i.aj, %.prol.preheader ]
  %indvars.iv27.i.unr = phi i64 [ %i.ab, %.lr.ph24.i ], [ %indvars.iv.next28.i.prol, %.prol.preheader ]
  %.11522.i.unr = phi ptr [ %.014.lcssa.i, %.lr.ph24.i ], [ %i.aj, %.prol.preheader ]
  %i.ak = sub nsw i64 %i.ab, %wide.trip.count
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit, label %.lr.ph24.i.new

.lr.ph24.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph24.i.new
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i.3, %.lr.ph24.i.new ], [ %indvars.iv27.i.unr, %.prol.loopexit ] ; 5 uses
  %.11522.i = phi ptr [ %i.bq, %.lr.ph24.i.new ], [ %.11522.i.unr, %.prol.loopexit ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv27.i
  store ptr %.11522.i, ptr %i.am, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %.11522.i, i64 15
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr i8, ptr %.11522.i, i64 8
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !17 ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv27.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.as, ptr %i.au, align 8, !tbaa !14
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 15
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr i8, ptr %i.as, i64 8
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !17 ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv27.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 15
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr i8, ptr %i.ba, i64 8
  %i.bh = getelementptr [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !17 ; 3 uses
  %indvars.iv.next28.i.3 = add nuw nsw i64 %indvars.iv27.i, 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv27.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 15
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr i8, ptr %i.bi, i64 8
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !17 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next28.i.3, %wide.trip.count
  br i1 %exitcond.not.3, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit, label %.lr.ph24.i.new, !llvm.loop !37

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit: ; preds = %.prol.loopexit, %.lr.ph24.i.new, %.critedge.thread.i, %.critedge.i
  %i.br = phi i32 [ %i.y, %.critedge.i ], [ %i.s, %.critedge.thread.i ], [ %i.y, %.lr.ph24.i.new ], [ %i.y, %.prol.loopexit ] ; 2 uses
  %.115.lcssa.i = phi ptr [ %.014.lcssa.i, %.critedge.i ], [ %i.n, %.critedge.thread.i ], [ %.lcssa221.unr, %.prol.loopexit ], [ %i.bq, %.lr.ph24.i.new ] ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 15 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE1EEEPS2_S5_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.ce, ptr noundef nonnull align 4 dereferenceable(52) %i.cf, i64 52, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 16 ; 2 uses
  %i.ch = load i8, ptr %i.bv, align 2, !tbaa !7   ; 2 uses
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !7   ; 2 uses
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cj
  %.not10.i.i = icmp eq i8 %i.ch, %i.ci
  br i1 %.not10.i.i, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10ToOpResultEb.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.cl = zext i8 %i.ch to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cl
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.011.i.i = phi ptr [ %i.cq, %.lr.ph.i.i ], [ %i.cm, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.cn = load ptr, ptr %.011.i.i, align 8, !tbaa !17, !nonnull !28, !noundef !28
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = atomicrmw add ptr %i.co, i32 2 monotonic, align 4 ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cq, %i.ck
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10ToOpResultEb.exit, label %.lr.ph.i.i

_ZN4absl12lts_2025051213cord_internal12CordRepBtree10ToOpResultEb.exit: ; preds = %.lr.ph.i.i, %bb.e, %bb.f
  %.sroa.0.0.i = phi ptr [ %.115.lcssa.i, %bb.e ], [ %i.cc, %bb.f ], [ %i.cc, %.lr.ph.i.i ] ; 8 uses
  %.sroa.3.0.i = phi i32 [ 0, %bb.e ], [ 1, %bb.f ], [ 1, %.lr.ph.i.i ] ; 3 uses
  %i.cr = tail call { i64, ptr } @_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES8_m(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0.i, i64 %1, ptr %2, i64 noundef %3) ; 2 uses
  %i.cs = extractvalue { i64, ptr } %i.cr, 0      ; 3 uses
  %i.ct = extractvalue { i64, ptr } %i.cr, 1
  %i.cu = icmp eq i64 %i.cs, 0
  br i1 %i.cu, label %.thread, label %bb.g

.thread:                                          ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10ToOpResultEb.exit
  %i.cv = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !8
  %i.cw = add i64 %i.cv, %1
  store i64 %i.cw, ptr %.sroa.0.0.i, align 8, !tbaa !8
  %i.cx = call fastcc noundef ptr @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull %0, i32 noundef %i.d, i64 noundef %1, ptr nonnull %.sroa.0.0.i, i32 %.sroa.3.0.i)
  br label %bb.v

bb.g:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10ToOpResultEb.exit
  %i.cy = sub i64 %1, %i.cs                       ; 4 uses
  %i.cz = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !8
  %i.da = add i64 %i.cz, %i.cy
  store i64 %i.da, ptr %.sroa.0.0.i, align 8, !tbaa !8
  br i1 %.not106, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.g
  %i.db = zext i8 %i.c to i64
  %i.dc = add nsw i32 %i.d, -1
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = sext i32 %i.br to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.i.i, %.preheader.i.i
  %indvars.iv58.i.i = phi i64 [ %i.dd, %.preheader.i.i ], [ %indvars.iv.next59.i.i, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %i.db, %.preheader.i.i ], [ %indvars.iv.next.i.i, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.i.i ] ; 5 uses
  %.sroa.024.0.i.i = phi ptr [ %.sroa.0.0.i, %.preheader.i.i ], [ %.sroa.015.0.i.i.i, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.i.i ]
  %.sroa.7.0.i.i = phi i32 [ %.sroa.3.0.i, %.preheader.i.i ], [ %.sroa.517.0.i.i.i, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.i.i ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.df = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i.i ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !14 ; 11 uses
  %i.dh = icmp eq i32 %.sroa.7.0.i.i, 0
  br i1 %i.dh, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not45.i.i = icmp sgt i64 %indvars.iv.i.i, %i.de
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 15
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = zext i8 %i.dj to i64
  %i.dl = add nsw i64 %i.dk, -1                   ; 4 uses
  br i1 %.not45.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dl
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !17 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = atomicrmw sub ptr %i.dp, i32 2 acq_rel, align 4
  %.not.i.i.i.i = icmp eq i32 %i.dq, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.i.i, !prof !30

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.do)
  br label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.i.i

bb.l:                                             ; preds = %bb.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dg, i64 14
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = load i64, ptr %i.dg, align 8, !tbaa !8
  %i.du = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i32 2, ptr %i.dv, align 4, !tbaa !26
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.dw, ptr noundef nonnull align 4 dereferenceable(52) %i.dx, i64 52, i1 false)
  %i.dy = zext i8 %i.ds to i64                    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dl
  %.not19.i.i.i = icmp samesign eq i64 %i.dl, %i.dy
  br i1 %.not19.i.i.i, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.l
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dy
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi ptr [ %i.ef, %.lr.ph.i.i.i ], [ %i.eb, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.ec = load ptr, ptr %.020.i.i.i, align 8, !tbaa !17, !nonnull !28, !noundef !28
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = atomicrmw add ptr %i.ed, i32 2 monotonic, align 4 ; 0 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ef, %i.ea
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.i.i, label %.lr.ph.i.i.i

bb.m:                                             ; preds = %bb.h
  %i.eg = load i64, ptr %i.dg, align 8, !tbaa !8
  %i.eh = add i64 %i.eg, %i.cy
  store i64 %i.eh, ptr %i.dg, align 8, !tbaa !8
  %i.ei = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.ei, label %.lr.ph.i.i68, label %.loopexit

.lr.ph.i.i68:                                     ; preds = %bb.m, %.lr.ph.i.i68
  %indvars.iv61.i.i = phi i64 [ %indvars.iv.next62.i.i, %.lr.ph.i.i68 ], [ %indvars.iv58.i.i, %bb.m ] ; 3 uses
  %indvars.iv.next62.i.i = add nsw i64 %indvars.iv61.i.i, -1
  %i.ej = getelementptr [8 x i8], ptr %4, i64 %indvars.iv61.i.i
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !14 ; 3 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !8
  %i.em = add i64 %i.el, %i.cy
  store i64 %i.em, ptr %i.ek, align 8, !tbaa !8
  %i.en = icmp sgt i64 %indvars.iv61.i.i, 1
  br i1 %i.en, label %.lr.ph.i.i68, label %.loopexit, !llvm.loop !55

_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.j, %bb.k, %bb.l
  %.sroa.015.0.i.i.i = phi ptr [ %i.dg, %bb.k ], [ %i.dg, %bb.j ], [ %i.du, %bb.l ], [ %i.du, %.lr.ph.i.i.i ] ; 6 uses
  %.sroa.517.0.i.i.i = phi i32 [ 0, %bb.k ], [ 0, %bb.j ], [ 1, %bb.l ], [ 1, %.lr.ph.i.i.i ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i.i.i, i64 16
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.dl
  store ptr %.sroa.024.0.i.i, ptr %i.ep, align 8, !tbaa !17
  %i.eq = load i64, ptr %.sroa.015.0.i.i.i, align 8, !tbaa !8
  %i.er = add i64 %i.eq, %i.cy
  store i64 %i.er, ptr %.sroa.015.0.i.i.i, align 8, !tbaa !8
  store ptr %.sroa.015.0.i.i.i, ptr %i.df, align 8, !tbaa !14
  %i.es = icmp sgt i64 %indvars.iv.i.i, 1
  %indvars.iv.next59.i.i = add nsw i64 %indvars.iv58.i.i, -1
  br i1 %i.es, label %bb.h, label %.loopexit.i.i, !llvm.loop !56

.loopexit.i.i:                                    ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.i.i, %bb.g
  %.sroa.024.3.i.i = phi ptr [ %.sroa.0.0.i, %bb.g ], [ %.sroa.015.0.i.i.i, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.i.i ] ; 3 uses
  %.sroa.7.3.i.i = phi i32 [ %.sroa.3.0.i, %bb.g ], [ %.sroa.517.0.i.i.i, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit.i.i ]
  %i.et = icmp eq i32 %.sroa.7.3.i.i, 0
  br i1 %i.et, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.loopexit.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ev = atomicrmw sub ptr %i.eu, i32 2 acq_rel, align 4
  %.not.i.i35.i.i = icmp eq i32 %i.ev, 2
  br i1 %.not.i.i35.i.i, label %bb.o, label %.loopexit, !prof !30

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %0)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i68, %.loopexit.i.i, %bb.o, %bb.n, %bb.m
  %.2.i.i = phi ptr [ %.sroa.024.3.i.i, %bb.o ], [ %.sroa.024.3.i.i, %bb.n ], [ %i.dg, %bb.m ], [ %.sroa.024.3.i.i, %.loopexit.i.i ], [ %i.ek, %.lr.ph.i.i68 ]
  %i.ew = add nuw nsw i32 %i.d, 1
  store i32 %i.ew, ptr %4, align 8, !tbaa !34
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit
  %.sroa.11.0 = phi ptr [ %i.ct, %.loopexit ], [ %2, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit ]
  %.sroa.0.0 = phi i64 [ %i.cs, %.loopexit ], [ %1, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit ]
  %.160 = phi ptr [ %.2.i.i, %.loopexit ], [ %0, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit ]
  %i.ex = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 2, ptr %i.ey, align 4, !tbaa !26
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  store i8 3, ptr %i.ez, align 4, !tbaa !27
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 13
  store i8 0, ptr %i.fa, align 1, !tbaa !7
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 14
  store i8 0, ptr %i.fb, align 2, !tbaa !7
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i: ; preds = %bb.u, %bb.p
  %i.fd = phi ptr [ %i.ex, %bb.p ], [ %i.id, %bb.u ] ; 5 uses
  %.261136 = phi ptr [ %.160, %bb.p ], [ %i.gl, %bb.u ] ; 2 uses
  %.063135 = phi i32 [ %i.d, %bb.p ], [ %i.go, %bb.u ] ; 2 uses
  %.sroa.0.1134 = phi i64 [ %.sroa.0.0, %bb.p ], [ %i.gj, %bb.u ] ; 6 uses
  %.sroa.11.1133 = phi ptr [ %.sroa.11.0, %bb.p ], [ %i.gk, %bb.u ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i: ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i
  %.029.i = phi i64 [ 0, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i ], [ %i.fx, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i ]
  %.01828.i = phi i64 [ 0, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i ], [ %i.fy, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i ] ; 2 uses
  %.sroa.6.027.i = phi ptr [ %.sroa.11.1133, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i ], [ %i.gc, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i ] ; 2 uses
  %.sroa.0.026.i = phi i64 [ %.sroa.0.1134, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i ], [ %i.gb, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i ] ; 3 uses
  %i.ff = add i64 %.sroa.0.026.i, %3              ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ff, i64 4083)
  %5 = add nuw nsw i64 %spec.store.select.i.i.i, 13
  %.narrow.i.i.i = icmp ult i64 %i.ff, 19
  %.0.i.i.i = select i1 %.narrow.i.i.i, i64 32, i64 %5 ; 2 uses
  %i.fg = icmp samesign ult i64 %.0.i.i.i, 513    ; 2 uses
  %.neg.i.i.i = select i1 %i.fg, i64 -8, i64 -64
  %i.fh = select i1 %i.fg, i64 8, i64 64
  %i.fi = add nsw i64 %.0.i.i.i, -1
  %i.fj = add nuw nsw i64 %i.fi, %i.fh
  %i.fk = and i64 %i.fj, %.neg.i.i.i              ; 3 uses
  %i.fl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fk) #18 ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i64 2, ptr %i.fm, align 8
  %i.fn = icmp samesign ult i64 %i.fk, 513        ; 2 uses
  %.sink6.i.i.i.i.i = select i1 %i.fn, i64 3, i64 6
  %.sink5.i.i.i.i.i = select i1 %i.fn, i64 2, i64 58
  %i.fo = lshr i64 %i.fk, %.sink6.i.i.i.i.i
  %i.fp = add nuw nsw i64 %i.fo, %.sink5.i.i.i.i.i ; 3 uses
  %i.fq = trunc nuw nsw i64 %i.fp to i8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  store i8 %i.fq, ptr %i.fr, align 4, !tbaa !27
  %i.fs = trunc nuw nsw i64 %i.fp to i32
  %i.ft = icmp samesign ult i64 %i.fp, 67         ; 2 uses
  %.sink6.i.i.i.i = select i1 %i.ft, i32 3, i32 6
  %i.fu = shl nuw nsw i32 %i.fs, %.sink6.i.i.i.i
  %i.fv = select i1 %i.ft, i32 -29, i32 -3725
  %narrow.i.i.i = add nsw i32 %i.fu, %i.fv
  %i.fw = sext i32 %narrow.i.i.i to i64
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.026.i, i64 %i.fw) ; 5 uses
  store i64 %.sroa.speculated.i, ptr %i.fl, align 8, !tbaa !8
  %i.fx = add i64 %.sroa.speculated.i, %.029.i    ; 8 uses
  %i.fy = add nuw nsw i64 %.01828.i, 1            ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %.01828.i
  store ptr %i.fl, ptr %i.fz, align 8, !tbaa !17
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fl, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ga, ptr align 1 %.sroa.6.027.i, i64 %.sroa.speculated.i, i1 false)
  %i.gb = sub nuw i64 %.sroa.0.026.i, %.sroa.speculated.i ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.6.027.i, i64 %.sroa.speculated.i
  %i.gd = icmp eq i64 %i.gb, 0
  %i.ge = icmp eq i64 %i.fy, 6
  %.not19.i = select i1 %i.gd, i1 true, i1 %i.ge
  br i1 %.not19.i, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE1EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm.exit, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i, !llvm.loop !57

_ZN4absl12lts_2025051213cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE1EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.i
  %i.gf = trunc i64 %i.fy to i8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fd, i64 15
  store i64 %i.fx, ptr %i.fd, align 8, !tbaa !8
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !7
  %.not = icmp eq i64 %i.fx, %.sroa.0.1134
  br i1 %.not, label %.thread99, label %bb.q

.thread99:                                        ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE1EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm.exit
  %i.gh = call fastcc noundef ptr @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %.261136, i32 noundef %.063135, i64 noundef %.sroa.0.1134, ptr nonnull %i.fd, i32 2)
  br label %bb.v

bb.q:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE1EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm.exit
  %i.gi = icmp ugt i64 %i.fx, %.sroa.0.1134
  br i1 %i.gi, label %bb.r, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES9_m.exit

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i64 noundef %i.fx, i64 noundef %.sroa.0.1134) #19
  unreachable

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES9_m.exit: ; preds = %bb.q
  %i.gj = sub nuw i64 %.sroa.0.1134, %i.fx
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.11.1133, i64 %i.fx
  %i.gl = call fastcc noundef ptr @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %.261136, i32 noundef %.063135, i64 noundef %i.fx, ptr nonnull %i.fd, i32 2) ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 13
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !7   ; 4 uses
  %i.go = zext i8 %i.gn to i32                    ; 2 uses
  %.not107 = icmp eq i8 %i.gn, 0
  br i1 %.not107, label %bb.u, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES9_m.exit
  %wide.trip.count.i72 = zext i8 %i.gn to i64     ; 2 uses
  %xtraiter225 = and i64 %wide.trip.count.i72, 3  ; 3 uses
  %i.gp = icmp ult i8 %i.gn, 4
  br i1 %i.gp, label %.epil.preheader, label %.lr.ph.i71.new

.lr.ph.i71.new:                                   ; preds = %.lr.ph.i71
  %unroll_iter = and i64 %wide.trip.count.i72, 252
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i71.new
  %indvars.iv.i73 = phi i64 [ 0, %.lr.ph.i71.new ], [ %indvars.iv.next.i74.3, %bb.s ] ; 5 uses
  %.067.i = phi ptr [ %i.gl, %.lr.ph.i71.new ], [ %i.hu, %bb.s ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i71.new ], [ %niter.next.3, %bb.s ]
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.i73
  store ptr %.067.i, ptr %i.gq, align 8, !tbaa !14
  %i.gr = getelementptr inbounds nuw i8, ptr %.067.i, i64 15
  %i.gs = load i8, ptr %i.gr, align 1
  %i.gt = zext i8 %i.gs to i64
  %i.gu = getelementptr i8, ptr %.067.i, i64 8
  %i.gv = getelementptr [8 x i8], ptr %i.gu, i64 %i.gt
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !17 ; 3 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.i73
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store ptr %i.gw, ptr %i.gy, align 8, !tbaa !14
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 15
  %i.ha = load i8, ptr %i.gz, align 1
  %i.hb = zext i8 %i.ha to i64
  %i.hc = getelementptr i8, ptr %i.gw, i64 8
  %i.hd = getelementptr [8 x i8], ptr %i.hc, i64 %i.hb
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !17 ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.i73
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  store ptr %i.he, ptr %i.hg, align 8, !tbaa !14
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 15
  %i.hi = load i8, ptr %i.hh, align 1
  %i.hj = zext i8 %i.hi to i64
  %i.hk = getelementptr i8, ptr %i.he, i64 8
  %i.hl = getelementptr [8 x i8], ptr %i.hk, i64 %i.hj
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !17 ; 3 uses
  %indvars.iv.next.i74.3 = add nuw nsw i64 %indvars.iv.i73, 4 ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.i73
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  store ptr %i.hm, ptr %i.ho, align 8, !tbaa !14
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 15
  %i.hq = load i8, ptr %i.hp, align 1
  %i.hr = zext i8 %i.hq to i64
  %i.hs = getelementptr i8, ptr %i.hm, i64 8
  %i.ht = getelementptr [8 x i8], ptr %i.hs, i64 %i.hr
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !17 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i76.unr-lcssa, label %bb.s, !llvm.loop !58

._crit_edge.loopexit.i76.unr-lcssa:               ; preds = %bb.s
  %lcmp.mod226.not = icmp eq i64 %xtraiter225, 0
  br i1 %lcmp.mod226.not, label %._crit_edge.loopexit.i76, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i76.unr-lcssa, %.lr.ph.i71
  %indvars.iv.i73.epil.init = phi i64 [ 0, %.lr.ph.i71 ], [ %indvars.iv.next.i74.3, %._crit_edge.loopexit.i76.unr-lcssa ]
  %.067.i.epil.init = phi ptr [ %i.gl, %.lr.ph.i71 ], [ %i.hu, %._crit_edge.loopexit.i76.unr-lcssa ]
  %lcmp.mod227 = icmp ne i64 %xtraiter225, 0
  tail call void @llvm.assume(i1 %lcmp.mod227)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader
  %indvars.iv.i73.epil = phi i64 [ %indvars.iv.i73.epil.init, %.epil.preheader ], [ %indvars.iv.next.i74.epil, %bb.t ] ; 2 uses
  %.067.i.epil = phi ptr [ %.067.i.epil.init, %.epil.preheader ], [ %i.ib, %bb.t ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.t ]
  %indvars.iv.next.i74.epil = add nuw nsw i64 %indvars.iv.i73.epil, 1
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.i73.epil
  store ptr %.067.i.epil, ptr %i.hv, align 8, !tbaa !14
  %i.hw = getelementptr inbounds nuw i8, ptr %.067.i.epil, i64 15
  %i.hx = load i8, ptr %i.hw, align 1
  %i.hy = zext i8 %i.hx to i64
  %i.hz = getelementptr i8, ptr %.067.i.epil, i64 8
  %i.ia = getelementptr [8 x i8], ptr %i.hz, i64 %i.hy
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !17
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter225
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i76, label %bb.t, !llvm.loop !59

._crit_edge.loopexit.i76:                         ; preds = %bb.t, %._crit_edge.loopexit.i76.unr-lcssa
  %i.ic = add nuw nsw i32 %i.go, 1
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.loopexit.i76, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES9_m.exit
  %.0.lcssa.i70 = phi i32 [ 1, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES9_m.exit ], [ %i.ic, %._crit_edge.loopexit.i76 ]
  store i32 %.0.lcssa.i70, ptr %4, align 8, !tbaa !34
  %i.id = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 5 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store i32 2, ptr %i.ie, align 4, !tbaa !26
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  store i8 3, ptr %i.if, align 4, !tbaa !27
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 13
  store i8 0, ptr %i.ig, align 1, !tbaa !7
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 14
  store i8 0, ptr %i.ih, align 2, !tbaa !7
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph.i

bb.v:                                             ; preds = %.thread99, %.thread
  %.4 = phi ptr [ %i.gh, %.thread99 ], [ %i.cx, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %bb.v
  %.5 = phi ptr [ %.4, %bb.v ], [ %0, %bb.a ]
  ret ptr %.5
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN4absl12lts_2025051213cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEES8_m(ptr noundef nonnull align 8 captures(none) dereferenceable(64) %0, i64 %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !7     ; 3 uses
  %i.c = zext i8 %i.b to i64                      ; 3 uses
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AlignBeginEv.exit, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !7     ; 2 uses
  %i.f = zext i8 %i.e to i64
  %i.g = sub nsw i64 %i.f, %i.c                   ; 6 uses
  store i8 0, ptr %i.a, align 2, !tbaa !7
  %i.h = trunc nuw nsw i64 %i.g to i8
  store i8 %i.h, ptr %i.d, align 1, !tbaa !7
  %i.i = icmp ult i64 %i.g, 7
  tail call void @llvm.assume(i1 %i.i)
  %.not12.i = icmp eq i8 %i.e, %i.b
  br i1 %.not12.i, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AlignBeginEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.g, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.g, 6                        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.c
  %wide.load = load <2 x ptr>, ptr %i.l, align 8, !tbaa !17
  store <2 x ptr> %wide.load, ptr %i.k, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AlignBeginEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.011.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011.i = phi i64 [ %i.q, %scalar.ph ], [ %.011.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %i.j, i64 %.011.i ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %i.n, i64 %i.c
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  store ptr %i.p, ptr %i.n, align 8, !tbaa !17
  %i.q = add nuw nsw i64 %.011.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.q, %i.g
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AlignBeginEv.exit, label %scalar.ph, !llvm.loop !61

_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AlignBeginEv.exit: ; preds = %scalar.ph, %middle.block, %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AlignBeginEv.exit
  %.sroa.0.0 = phi i64 [ %1, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AlignBeginEv.exit ], [ %i.ar, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit ] ; 3 uses
  %.sroa.7.0 = phi ptr [ %2, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree10AlignBeginEv.exit ], [ %i.as, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit ] ; 2 uses
  %i.t = add i64 %.sroa.0.0, %3                   ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 4083)
  %4 = add nuw nsw i64 %spec.store.select.i.i, 13
  %.narrow.i.i = icmp ult i64 %i.t, 19
  %.0.i.i = select i1 %.narrow.i.i, i64 32, i64 %4 ; 2 uses
  %i.u = icmp samesign ult i64 %.0.i.i, 513       ; 2 uses
  %.neg.i.i = select i1 %i.u, i64 -8, i64 -64
  %i.v = select i1 %i.u, i64 8, i64 64
  %i.w = add nsw i64 %.0.i.i, -1
  %i.x = add nuw nsw i64 %i.w, %i.v
  %i.y = and i64 %i.x, %.neg.i.i                  ; 3 uses
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #18 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 2, ptr %i.ab, align 8, !tbaa !26
  %i.ac = icmp samesign ult i64 %i.y, 513         ; 2 uses
  %.sink6.i.i.i.i = select i1 %i.ac, i64 3, i64 6
  %.sink5.i.i.i.i = select i1 %i.ac, i64 2, i64 58
  %i.ad = lshr i64 %i.y, %.sink6.i.i.i.i
  %i.ae = add nuw nsw i64 %i.ad, %.sink5.i.i.i.i  ; 3 uses
  %i.af = trunc nuw nsw i64 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i8 %i.af, ptr %i.ag, align 4, !tbaa !27
  %i.ah = trunc nuw nsw i64 %i.ae to i32
  %i.ai = icmp samesign ult i64 %i.ae, 67         ; 2 uses
  %.sink6.i.i.i = select i1 %i.ai, i32 3, i32 6
  %i.aj = shl nuw nsw i32 %i.ah, %.sink6.i.i.i
  %i.ak = select i1 %i.ai, i32 -29, i32 -3725
  %narrow.i.i = add nsw i32 %i.aj, %i.ak
  %i.al = sext i32 %narrow.i.i to i64
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0, i64 %i.al) ; 4 uses
  store i64 %.sroa.speculated, ptr %i.z, align 8, !tbaa !8
  %i.am = load i8, ptr %i.s, align 1, !tbaa !7    ; 2 uses
  %i.an = zext i8 %i.am to i64
  %i.ao = add i8 %i.am, 1                         ; 2 uses
  store i8 %i.ao, ptr %i.s, align 1, !tbaa !7
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.an
  store ptr %i.z, ptr %i.ap, align 8, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr align 1 %.sroa.7.0, i64 %.sroa.speculated, i1 false)
  %i.ar = sub nuw i64 %.sroa.0.0, %.sroa.speculated ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.7.0, i64 %.sroa.speculated ; 2 uses
  %i.at = icmp eq i64 %i.ar, 0
  %.not = icmp eq i8 %i.ao, 6
  %or.cond = or i1 %.not, %i.at
  br i1 %or.cond, label %.critedge, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit, !llvm.loop !62

.critedge:                                        ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit
  %.fca.0.insert.i.i = insertvalue { i64, ptr } poison, i64 %i.ar, 0
  %.fca.1.insert.i.i = insertvalue { i64, ptr } %.fca.0.insert.i.i, ptr %i.as, 1
  ret { i64, ptr } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree7NewLeafILNS2_8EdgeTypeE1EEEPS2_St17basic_string_viewIcSt11char_traitsIcEEm(i64 %0, ptr readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 2, ptr %i.b, align 4, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 3, ptr %i.c, align 4, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 0, ptr %i.d, align 1, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 0, ptr %i.e, align 2, !tbaa !7
  %i.f = icmp eq i64 %0, 0
  br i1 %i.f, label %._crit_edge, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit
  %.029 = phi i64 [ 0, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph ], [ %i.aa, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit ]
  %.01828 = phi i64 [ 0, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph ], [ %i.ab, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit ] ; 2 uses
  %.sroa.6.027 = phi ptr [ %1, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph ], [ %i.af, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit ] ; 2 uses
  %.sroa.0.026 = phi i64 [ %0, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit.lr.ph ], [ %i.ae, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit ] ; 3 uses
  %i.h = add i64 %.sroa.0.026, %2                 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 4083)
  %3 = add nuw nsw i64 %spec.store.select.i.i, 13
  %.narrow.i.i = icmp ult i64 %i.h, 19
  %.0.i.i = select i1 %.narrow.i.i, i64 32, i64 %3 ; 2 uses
  %i.i = icmp samesign ult i64 %.0.i.i, 513       ; 2 uses
  %.neg.i.i = select i1 %i.i, i64 -8, i64 -64
  %i.j = select i1 %i.i, i64 8, i64 64
  %i.k = add nsw i64 %.0.i.i, -1
  %i.l = add nuw nsw i64 %i.k, %i.j
  %i.m = and i64 %i.l, %.neg.i.i                  ; 3 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #18 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 2, ptr %i.p, align 8, !tbaa !26
  %i.q = icmp samesign ult i64 %i.m, 513          ; 2 uses
  %.sink6.i.i.i.i = select i1 %i.q, i64 3, i64 6
  %.sink5.i.i.i.i = select i1 %i.q, i64 2, i64 58
  %i.r = lshr i64 %i.m, %.sink6.i.i.i.i
  %i.s = add nuw nsw i64 %i.r, %.sink5.i.i.i.i    ; 3 uses
  %i.t = trunc nuw nsw i64 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i8 %i.t, ptr %i.u, align 4, !tbaa !27
  %i.v = trunc nuw nsw i64 %i.s to i32
  %i.w = icmp samesign ult i64 %i.s, 67           ; 2 uses
  %.sink6.i.i.i = select i1 %i.w, i32 3, i32 6
  %i.x = shl nuw nsw i32 %i.v, %.sink6.i.i.i
  %i.y = select i1 %i.w, i32 -29, i32 -3725
  %narrow.i.i = add nsw i32 %i.x, %i.y
  %i.z = sext i32 %narrow.i.i to i64
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.0.026, i64 %i.z) ; 5 uses
  store i64 %.sroa.speculated, ptr %i.n, align 8, !tbaa !8
  %i.aa = add i64 %.sroa.speculated, %.029        ; 2 uses
  %i.ab = add nuw nsw i64 %.01828, 1              ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.01828
  store ptr %i.n, ptr %i.ac, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr align 1 %.sroa.6.027, i64 %.sroa.speculated, i1 false)
  %i.ae = sub nuw i64 %.sroa.0.026, %.sroa.speculated ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.6.027, i64 %.sroa.speculated
  %i.ag = icmp eq i64 %i.ae, 0
  %i.ah = icmp eq i64 %i.ab, 6
  %.not19 = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %.not19, label %._crit_edge.loopexit, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit, !llvm.loop !57

._crit_edge.loopexit:                             ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17ConsumeILNS1_12CordRepBtree8EdgeTypeE1EEESt17basic_string_viewIcSt11char_traitsIcEEPcS9_m.exit
  %i.ai = trunc i64 %i.ab to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.018.lcssa = phi i8 [ 0, %bb.a ], [ %i.ai, %._crit_edge.loopexit ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.aa, %._crit_edge.loopexit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i64 %.0.lcssa, ptr %i.a, align 8, !tbaa !8
  store i8 %.018.lcssa, ptr %i.aj, align 1, !tbaa !7
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4absl12lts_2025051213cord_internal32SetCordBtreeExhaustiveValidationEb(i1 noundef zeroext %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %0 to i8
  store atomic i8 %i.a, ptr @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_132cord_btree_exhaustive_validationE.0 monotonic, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051213cord_internal38IsCordBtreeExhaustiveValidationEnabledEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load atomic i8, ptr @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_132cord_btree_exhaustive_validationE.0 monotonic, align 1, !range !63, !noundef !28
  %i.b = trunc nuw i8 %i.a to i1
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213cord_internal12CordRepBtree4DumpEPKNS1_7CordRepESt17basic_string_viewIcSt11char_traitsIcEEbRSo(ptr noundef %0, i64 %1, ptr %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str, i64 noundef 36) ; 0 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %2, i64 noundef %1) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !7
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !66
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.1, i64 noundef 36) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call fastcc void @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17DumpAllEPKNS1_7CordRepEbRSom(ptr noundef nonnull %0, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.2, i64 noundef 5) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_17DumpAllEPKNS1_7CordRepEbRSom(ptr noundef %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %10 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %11 = alloca %"class.absl::lts_20250512::strings_internal::StringifySink", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %15 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %16 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load atomic i32, ptr %i.d acquire, align 4
  %i.f = icmp eq i32 %i.e, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  br i1 %i.f, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.g, ptr noundef nonnull align 1 dereferenceable(7) @.str.18, i64 7, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 7, ptr %i.h, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 23
  store i8 0, ptr %i.i, align 1, !tbaa !7
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  store i64 7, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.19, ptr %i.j, align 8
  %i.k = load atomic i32, ptr %i.d acquire, align 4
  %i.l = ashr i32 %i.k, 1
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.o = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEmPc(i64 noundef %i.m, ptr noundef nonnull %i.n)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  store i64 %i.r, ptr %6, align 8, !tbaa !80
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.n, ptr %i.s, align 8, !tbaa !82
  store i64 1, ptr %7, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.20, ptr %i.t, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store i64 2, ptr %9, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.21, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.v = ptrtoint ptr %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.x, ptr %11, align 8, !tbaa !75
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.y, align 8, !tbaa !78
end_hunk_1
