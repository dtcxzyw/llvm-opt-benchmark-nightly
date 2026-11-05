Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/hilbert_basis?download=true
inline.NumInlined: 1547
inline.NumDeleted: 579
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZSt16__introsort_loopIPN13hilbert_basis8offset_tElN9__gnu_cxx5__ops15_Iter_comp_iterINS0_11vector_lt_tEEEEvT_S8_T0_T1_:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__sort_heapIPN13hilbert_basis8offset_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_11vector_lt_tEEEEvT_S8_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !54 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIPN13hilbert_basis8offset_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_11vector_lt_tEEEEvT_S8_S8_RT0_.exit
  %.049 = phi ptr [ %1, %.lr.ph ], [ %i.g, %_ZSt10__pop_heapIPN13hilbert_basis8offset_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_11vector_lt_tEEEEvT_S8_S8_RT0_.exit ]
  %i.g = getelementptr inbounds i8, ptr %.049, i64 -4 ; 4 uses
  %.sroa.02.0.copyload.i = load i32, ptr %i.g, align 4, !tbaa !92 ; 2 uses
  %i.h = load i32, ptr %0, align 4, !tbaa !92
  store i32 %i.h, ptr %i.g, align 4, !tbaa !92
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 2                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = icmp sgt i64 %i.k, 2
  br i1 %i.n, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !105  ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -4
  br i1 %i.p, label %.lr.ph.i.i.us, label %.lr.ph.i.i.preheader.split

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.us
  %.030.i.i.us = phi i64 [ %i.s, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.r = shl i64 %.030.i.i.us, 1
  %i.s = add i64 %i.r, 2                          ; 4 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %.030.i.i.us
  %i.v = load i32, ptr %i.t, align 4, !tbaa !92
  store i32 %i.v, ptr %i.u, align 4, !tbaa !92
  %i.w = icmp slt i64 %i.s, %i.m
  br i1 %i.w, label %.lr.ph.i.i.us, label %._crit_edge.i.i, !llvm.loop !15

.lr.ph.i.i.preheader.split:                       ; preds = %.lr.ph.i.i.preheader
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !103  ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader.split, %_ZNK13hilbert_basis9vector_ltENS_8offset_tES0_.exit34.thread
  %.030.i.i = phi i64 [ %i.bq, %_ZNK13hilbert_basis9vector_ltENS_8offset_tES0_.exit34.thread ], [ 0, %.lr.ph.i.i.preheader.split ] ; 2 uses
  %i.y = shl i64 %.030.i.i, 1                     ; 3 uses
  %i.z = add i64 %i.y, 2                          ; 5 uses
  %i.aa = getelementptr [4 x i8], ptr %0, i64 %i.y
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ab, align 4, !tbaa !92
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %i.z
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !92 ; 4 uses
  %i.ad = load i32, ptr %i.q, align 4, !tbaa !92  ; 3 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = zext i32 %.sroa.01.0.copyload.i.i.i to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  %i.ai = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ae
  %i.al = icmp eq i32 %i.ad, 0
  br i1 %i.al, label %_ZNK13hilbert_basis9vector_ltENS_8offset_tES0_.exit34.thread, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.lr.ph.split.i9

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.lr.ph.split.i9: ; preds = %.lr.ph.i.i
  %i.am = add i32 %i.ad, -1
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !103 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZNK13hilbert_basis9vector_ltENS_8offset_tES0_.exit34.thread, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.lr.ph.split.split.split.i10

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.lr.ph.split.split.split.i10: ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.lr.ph.split.i9
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !92 ; 2 uses
  %.not.i11 = icmp eq i32 %i.as, 0
  br i1 %.not.i11, label %_ZNK13hilbert_basis9vector_ltENS_8offset_tES0_.exit34.thread, label %.lr.ph.preheader.i12

.lr.ph.preheader.i12:                             ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.lr.ph.split.split.split.i10
  %wide.trip.count.i13 = zext i32 %i.as to i64
  br label %.lr.ph.i14

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i25: ; preds = %_Z3absRK13checked_int64ILb1EE.exit10.i22
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i15, 1 ; 2 uses
  %exitcond.not.i27 = icmp eq i64 %indvars.iv.next.i26, %wide.trip.count.i13
  br i1 %exitcond.not.i27, label %_ZNK13hilbert_basis9vector_ltENS_8offset_tES0_.exit34, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i25, %.lr.ph.preheader.i12
  %indvars.iv.i15 = phi i64 [ 0, %.lr.ph.preheader.i12 ], [ %indvars.iv.next.i26, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i25 ] ; 3 uses
  %.sroa.017.03152.i16 = phi i64 [ 0, %.lr.ph.preheader.i12 ], [ %i.az, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i25 ] ; 2 uses
  %.sroa.015.03251.i17 = phi i64 [ 0, %.lr.ph.preheader.i12 ], [ %i.bj, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i25 ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i15
  %i.au = load i64, ptr %i.at, align 8, !tbaa !137 ; 4 uses
  %i.av = icmp sgt i64 %i.au, -1
  br i1 %i.av, label %_Z3absRK13checked_int64ILb1EE.exit.i18, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i14
  %i.aw = icmp eq i64 %i.au, -9223372036854775808
  br i1 %i.aw, label %.split.us.i33, label %bb.d

.split.us.i33:                                    ; preds = %bb.c
  %i.ax = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ax, align 8, !tbaa !71
  tail call void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ay = sub nsw i64 0, %i.au
  br label %_Z3absRK13checked_int64ILb1EE.exit.i18

_Z3absRK13checked_int64ILb1EE.exit.i18:           ; preds = %bb.d, %.lr.ph.i14
  %.sroa.0.0.i.i.i19 = phi i64 [ %i.ay, %bb.d ], [ %i.au, %.lr.ph.i14 ]
  %i.az = add i64 %.sroa.0.0.i.i.i19, %.sroa.017.03152.i16 ; 3 uses
  %i.ba = icmp sgt i64 %.sroa.017.03152.i16, 0
  %i.bb = icmp slt i64 %i.az, 1
  %or.cond.i20 = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond.i20, label %.split45.us.i32, label %_ZN13checked_int64ILb1EEpLERKS0_.exit.i21

.split45.us.i32:                                  ; preds = %_Z3absRK13checked_int64ILb1EE.exit.i18
  %i.bc = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.bc, align 8, !tbaa !71
  tail call void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEpLERKS0_.exit.i21:        ; preds = %_Z3absRK13checked_int64ILb1EE.exit.i18
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i15
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !137 ; 4 uses
  %i.bf = icmp sgt i64 %i.be, -1
  br i1 %i.bf, label %_Z3absRK13checked_int64ILb1EE.exit10.i22, label %bb.e

bb.e:                                             ; preds = %_ZN13checked_int64ILb1EEpLERKS0_.exit.i21
  %i.bg = icmp eq i64 %i.be, -9223372036854775808
  br i1 %i.bg, label %.split47.us.i31, label %bb.f

.split47.us.i31:                                  ; preds = %bb.e
  %i.bh = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.bh, align 8, !tbaa !71
  tail call void @__cxa_throw(ptr nonnull %i.bh, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.bi = sub nsw i64 0, %i.be
  br label %_Z3absRK13checked_int64ILb1EE.exit10.i22

_Z3absRK13checked_int64ILb1EE.exit10.i22:         ; preds = %bb.f, %_ZN13checked_int64ILb1EEpLERKS0_.exit.i21
  %.sroa.0.0.i.i9.i23 = phi i64 [ %i.bi, %bb.f ], [ %i.be, %_ZN13checked_int64ILb1EEpLERKS0_.exit.i21 ]
  %i.bj = add i64 %.sroa.0.0.i.i9.i23, %.sroa.015.03251.i17 ; 3 uses
  %i.bk = icmp sgt i64 %.sroa.015.03251.i17, 0
  %i.bl = icmp slt i64 %i.bj, 1
  %or.cond22.i24 = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %or.cond22.i24, label %.split49.us.i30, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i25

.split49.us.i30:                                  ; preds = %_Z3absRK13checked_int64ILb1EE.exit10.i22
  %i.bm = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.bm, align 8, !tbaa !71
  tail call void @__cxa_throw(ptr nonnull %i.bm, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZNK13hilbert_basis9vector_ltENS_8offset_tES0_.exit34: ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i25
  %i.bn = icmp slt i64 %i.az, %i.bj
  %i.bo = or disjoint i64 %i.y, 1
  %cond.fr = freeze i1 %i.bn
  %spec.select = select i1 %cond.fr, i64 %i.bo, i64 %i.z ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !92
  br label %_ZNK13hilbert_basis9vector_ltENS_8offset_tES0_.exit34.thread

_ZNK13hilbert_basis9vector_ltENS_8offset_tES0_.exit34.thread: ; preds = %_ZNK13hilbert_basis9vector_ltENS_8offset_tES0_.exit34, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.lr.ph.split.split.split.i10, %.lr.ph.i.i, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.lr.ph.split.i9
  %i.bp = phi i32 [ %.sroa.01.0.copyload.i.i.i, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.lr.ph.split.split.split.i10 ], [ %.pre, %_ZNK13hilbert_basis9vector_ltENS_8offset_tES0_.exit34 ], [ %.sroa.01.0.copyload.i.i.i, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.lr.ph.split.i9 ], [ %.sroa.01.0.copyload.i.i.i, %.lr.ph.i.i ]
  %i.bq = phi i64 [ %i.z, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.lr.ph.split.split.split.i10 ], [ %spec.select, %_ZNK13hilbert_basis9vector_ltENS_8offset_tES0_.exit34 ], [ %i.z, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.lr.ph.split.i9 ], [ %i.z, %.lr.ph.i.i ] ; 3 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %0, i64 %.030.i.i
  store i32 %i.bp, ptr %i.br, align 4, !tbaa !92
  %i.bs = icmp slt i64 %i.bq, %i.m
  br i1 %i.bs, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !15

._crit_edge.i.i:                                  ; preds = %_ZNK13hilbert_basis9vector_ltENS_8offset_tES0_.exit34.thread, %.lr.ph.i.i.us, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.s, %.lr.ph.i.i.us ], [ %i.bq, %_ZNK13hilbert_basis9vector_ltENS_8offset_tES0_.exit34.thread ] ; 5 uses
  %i.bt = and i64 %i.j, 4
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.bv = add nsw i64 %i.k, -2
  %i.bw = ashr exact i64 %i.bv, 1
  %i.bx = icmp eq i64 %.0.lcssa.i.i, %i.bw
  br i1 %i.bx, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %bb.g
  %i.by = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bz = or disjoint i64 %i.by, 1                ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !92
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !92
  br label %.lr.ph.i.i.preheader.i

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPN13hilbert_basis8offset_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_11vector_lt_tEEEEvT_S8_S8_RT0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.h, %.thread.i
  %.1.i14.i = phi i64 [ %i.bz, %.thread.i ], [ %.0.lcssa.i.i, %bb.h ] ; 2 uses
  %i.cd = load ptr, ptr %i.e, align 8, !tbaa !105 ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 -4
  br i1 %i.ce, label %_ZSt10__pop_heapIPN13hilbert_basis8offset_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_11vector_lt_tEEEEvT_S8_S8_RT0_.exit, label %.lr.ph.i.i.preheader.i.split

.lr.ph.i.i.preheader.i.split:                     ; preds = %.lr.ph.i.i.preheader.i
  %i.cg = zext i32 %.sroa.02.0.copyload.i to i64
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !103 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cg
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.lr.ph.i.i.preheader.i.split
  %.01317.i.i.i = phi i64 [ %.018.i.i910.i, %bb.m ], [ %.1.i14.i, %.lr.ph.i.i.preheader.i.split ] ; 6 uses
  %.018.in.i.i.i = add nsw i64 %.01317.i.i.i, -1
  %.018.i.i910.i = lshr i64 %.018.in.i.i.i, 1     ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i910.i
  %.sroa.01.0.copyload.i.i.i.i = load i32, ptr %i.cj, align 4, !tbaa !92 ; 2 uses
  %i.ck = load i32, ptr %i.cf, align 4, !tbaa !92 ; 3 uses
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = zext i32 %.sroa.01.0.copyload.i.i.i.i to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cl
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cl
  %i.cq = icmp eq i32 %i.ck, 0
  br i1 %i.cq, label %_ZSt10__pop_heapIPN13hilbert_basis8offset_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_11vector_lt_tEEEEvT_S8_S8_RT0_.exit, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.lr.ph.split.i

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.lr.ph.split.i: ; preds = %.lr.ph.i.i.i
  %i.cr = add i32 %i.ck, -1
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !103 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZSt10__pop_heapIPN13hilbert_basis8offset_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_11vector_lt_tEEEEvT_S8_S8_RT0_.exit, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.lr.ph.split.split.split.i

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.lr.ph.split.split.split.i: ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.lr.ph.split.i
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 -4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !92 ; 2 uses
  %.not.i7 = icmp eq i32 %i.cx, 0
  br i1 %.not.i7, label %_ZSt10__pop_heapIPN13hilbert_basis8offset_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_11vector_lt_tEEEEvT_S8_S8_RT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.lr.ph.split.split.split.i
  %wide.trip.count.i = zext i32 %i.cx to i64
  br label %.lr.ph.i

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i: ; preds = %_Z3absRK13checked_int64ILb1EE.exit10.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK13hilbert_basis9vector_ltENS_8offset_tES0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i ] ; 3 uses
  %.sroa.017.03152.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.de, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i ] ; 2 uses
  %.sroa.015.03251.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.do, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.i
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !137 ; 4 uses
  %i.da = icmp sgt i64 %i.cz, -1
  br i1 %i.da, label %_Z3absRK13checked_int64ILb1EE.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.db = icmp eq i64 %i.cz, -9223372036854775808
  br i1 %i.db, label %.split.us.i, label %bb.j

.split.us.i:                                      ; preds = %bb.i
  %i.dc = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.dc, align 8, !tbaa !71
  tail call void @__cxa_throw(ptr nonnull %i.dc, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.dd = sub nsw i64 0, %i.cz
  br label %_Z3absRK13checked_int64ILb1EE.exit.i

_Z3absRK13checked_int64ILb1EE.exit.i:             ; preds = %bb.j, %.lr.ph.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.dd, %bb.j ], [ %i.cz, %.lr.ph.i ]
  %i.de = add i64 %.sroa.0.0.i.i.i, %.sroa.017.03152.i ; 3 uses
  %i.df = icmp sgt i64 %.sroa.017.03152.i, 0
  %i.dg = icmp slt i64 %i.de, 1
  %or.cond.i = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %or.cond.i, label %.split45.us.i, label %_ZN13checked_int64ILb1EEpLERKS0_.exit.i

.split45.us.i:                                    ; preds = %_Z3absRK13checked_int64ILb1EE.exit.i
  %i.dh = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.dh, align 8, !tbaa !71
  tail call void @__cxa_throw(ptr nonnull %i.dh, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEpLERKS0_.exit.i:          ; preds = %_Z3absRK13checked_int64ILb1EE.exit.i
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.i
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !137 ; 4 uses
  %i.dk = icmp sgt i64 %i.dj, -1
  br i1 %i.dk, label %_Z3absRK13checked_int64ILb1EE.exit10.i, label %bb.k

bb.k:                                             ; preds = %_ZN13checked_int64ILb1EEpLERKS0_.exit.i
  %i.dl = icmp eq i64 %i.dj, -9223372036854775808
  br i1 %i.dl, label %.split47.us.i, label %bb.l

.split47.us.i:                                    ; preds = %bb.k
  %i.dm = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.dm, align 8, !tbaa !71
  tail call void @__cxa_throw(ptr nonnull %i.dm, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.dn = sub nsw i64 0, %i.dj
  br label %_Z3absRK13checked_int64ILb1EE.exit10.i

_Z3absRK13checked_int64ILb1EE.exit10.i:           ; preds = %bb.l, %_ZN13checked_int64ILb1EEpLERKS0_.exit.i
  %.sroa.0.0.i.i9.i = phi i64 [ %i.dn, %bb.l ], [ %i.dj, %_ZN13checked_int64ILb1EEpLERKS0_.exit.i ]
  %i.do = add i64 %.sroa.0.0.i.i9.i, %.sroa.015.03251.i ; 3 uses
  %i.dp = icmp sgt i64 %.sroa.015.03251.i, 0
  %i.dq = icmp slt i64 %i.do, 1
  %or.cond22.i = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %or.cond22.i, label %.split49.us.i, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i

.split49.us.i:                                    ; preds = %_Z3absRK13checked_int64ILb1EE.exit10.i
  %i.dr = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.dr, align 8, !tbaa !71
  tail call void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZNK13hilbert_basis9vector_ltENS_8offset_tES0_.exit: ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i
  %i.ds = icmp slt i64 %i.de, %i.do
  br i1 %i.ds, label %bb.m, label %_ZSt10__pop_heapIPN13hilbert_basis8offset_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_11vector_lt_tEEEEvT_S8_S8_RT0_.exit

bb.m:                                             ; preds = %_ZNK13hilbert_basis9vector_ltENS_8offset_tES0_.exit
  %i.dt = getelementptr inbounds [4 x i8], ptr %0, i64 %.01317.i.i.i
  store i32 %.sroa.01.0.copyload.i.i.i.i, ptr %i.dt, align 4, !tbaa !92
  %.not11.i = icmp eq i64 %.018.i.i910.i, 0
  br i1 %.not11.i, label %_ZSt10__pop_heapIPN13hilbert_basis8offset_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_11vector_lt_tEEEEvT_S8_S8_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !16

_ZSt10__pop_heapIPN13hilbert_basis8offset_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_11vector_lt_tEEEEvT_S8_S8_RT0_.exit: ; preds = %bb.m, %_ZNK13hilbert_basis9vector_ltENS_8offset_tES0_.exit, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.lr.ph.split.i, %.lr.ph.i.i.i, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.lr.ph.split.split.split.i, %.lr.ph.i.i.preheader.i, %bb.h
  %.013.lcssa.i.i.i = phi i64 [ 0, %bb.h ], [ %.1.i14.i, %.lr.ph.i.i.preheader.i ], [ 0, %bb.m ], [ %.01317.i.i.i, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.lr.ph.split.split.split.i ], [ %.01317.i.i.i, %.lr.ph.i.i.i ], [ %.01317.i.i.i, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.lr.ph.split.i ], [ %.01317.i.i.i, %_ZNK13hilbert_basis9vector_ltENS_8offset_tES0_.exit ]
  %i.du = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i
  store i32 %.sroa.02.0.copyload.i, ptr %i.du, align 4, !tbaa !92
  %i.dv = icmp sgt i64 %i.j, 4
  br i1 %i.dv, label %bb.b, label %._crit_edge, !llvm.loop !326

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIPN13hilbert_basis8offset_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_11vector_lt_tEEEEvT_S8_S8_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPN13hilbert_basis8offset_tEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_11vector_lt_tEEEEvT_S8_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !54 ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24 ; 2 uses
  %i.l = and i64 %i.c, 4
  %i.m = icmp eq i64 %i.l, 0
  %i.n = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.o = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIPN13hilbert_basis8offset_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_11vector_lt_tEEEEvT_T0_S9_T1_T2_.exit, %bb.b
  %.015 = phi i64 [ %i.g, %bb.b ], [ %i.du, %_ZSt13__adjust_heapIPN13hilbert_basis8offset_tElS1_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_11vector_lt_tEEEEvT_T0_S9_T1_T2_.exit ] ; 9 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015
  %.sroa.02.0.copyload = load i32, ptr %i.r, align 4, !tbaa !92 ; 2 uses
  %i.s = icmp slt i64 %.015, %i.i
  br i1 %i.s, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !105  ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -4
  br i1 %i.u, label %.lr.ph.i.us, label %.lr.ph.i.preheader.split

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader, %.lr.ph.i.us
  %.030.i.us = phi i64 [ %i.x, %.lr.ph.i.us ], [ %.015, %.lr.ph.i.preheader ] ; 2 uses
  %i.w = shl i64 %.030.i.us, 1
  %i.x = add i64 %i.w, 2                          ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %.030.i.us
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !92
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !92
  %i.ab = icmp slt i64 %i.x, %i.i
  br i1 %i.ab, label %.lr.ph.i.us, label %._crit_edge.i, !llvm.loop !15
end_hunk_0
