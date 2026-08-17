inline.NumInlined: 240
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE21MultiplyByTenToTheNthEi:bb.a
  %i.z = mul nuw nsw i64 %i.y, 1220703125
  %i.aa = add nuw nsw i64 %i.z, %i.u              ; 2 uses
  %i.ab = trunc i64 %i.aa to i32
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !14
  %i.ac = lshr i64 %i.aa, 32                      ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter54.next.1 = add i64 %niter54, 2           ; 2 uses
  %niter54.ncmp.1 = icmp eq i64 %niter54.next.1, %unroll_iter53
  br i1 %niter54.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.d, !llvm.loop !19

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ad = trunc nuw nsw i64 %.lcssa42 to i32
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %wide.trip.count.i.i
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !14
  %i.af = add nuw nsw i32 %i.d, 1
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i: ; preds = %bb.e, %._crit_edge.i.i, %bb.c
  %i.ag = phi i32 [ %i.d, %bb.c ], [ %i.d, %._crit_edge.i.i ], [ %i.af, %bb.e ] ; 3 uses
  %i.ah = add nsw i32 %.015.i, -13                ; 2 uses
  %i.ai = icmp sgt i32 %.015.i, 25
  br i1 %i.ai, label %bb.c, label %._crit_edge.i, !llvm.loop !22

._crit_edge.i:                                    ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i
  %i.aj = icmp sgt i32 %.015.i, 13
  br i1 %i.aj, label %._crit_edge.i.thread, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit

._crit_edge.i.thread:                             ; preds = %bb.b, %._crit_edge.i
  %i.ak = phi i32 [ %i.ag, %._crit_edge.i ], [ %.promoted.i, %bb.b ] ; 9 uses
  %.0.lcssa.i15 = phi i32 [ %i.ah, %._crit_edge.i ], [ %1, %bb.b ]
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.thread
  %i.am = zext nneg i32 %.0.lcssa.i15 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2026052616strings_internal10kFiveToNthE, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !14
  %i.ap = zext i32 %i.ao to i64                   ; 3 uses
  %i.aq = icmp sgt i32 %i.ak, 0
  br i1 %i.aq, label %.lr.ph.i4.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit

.lr.ph.i4.i:                                      ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %wide.trip.count.i5.i = zext nneg i32 %i.ak to i64 ; 3 uses
  %xtraiter56 = and i64 %wide.trip.count.i5.i, 1
  %i.as = icmp eq i32 %i.ak, 1
  br i1 %i.as, label %.epil.preheader55, label %.lr.ph.i4.i.new

.lr.ph.i4.i.new:                                  ; preds = %.lr.ph.i4.i
  %unroll_iter60 = and i64 %wide.trip.count.i5.i, 2147483646
  br label %bb.g

._crit_edge.i10.i.unr-lcssa:                      ; preds = %bb.g
  %lcmp.mod57.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod57.not, label %._crit_edge.i10.i, label %.epil.preheader55

.epil.preheader55:                                ; preds = %._crit_edge.i10.i.unr-lcssa, %.lr.ph.i4.i
  %indvars.iv.i6.i.epil.init = phi i64 [ 0, %.lr.ph.i4.i ], [ %indvars.iv.next.i8.i.1, %._crit_edge.i10.i.unr-lcssa ]
  %.01418.i7.i.epil.init = phi i64 [ 0, %.lr.ph.i4.i ], [ %i.bp, %._crit_edge.i10.i.unr-lcssa ]
  %lcmp.mod59 = trunc i32 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i6.i.epil.init ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !14
  %i.av = zext i32 %i.au to i64
  %i.aw = mul nuw i64 %i.av, %i.ap
  %i.ax = add nuw i64 %i.aw, %.01418.i7.i.epil.init ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  store i32 %i.ay, ptr %i.at, align 4, !tbaa !14
  %i.az = lshr i64 %i.ax, 32
  br label %._crit_edge.i10.i

._crit_edge.i10.i:                                ; preds = %._crit_edge.i10.i.unr-lcssa, %.epil.preheader55
  %.lcssa = phi i64 [ %i.bp, %._crit_edge.i10.i.unr-lcssa ], [ %i.az, %.epil.preheader55 ] ; 2 uses
  %.not.i11.i = icmp ne i64 %.lcssa, 0
  %i.ba = icmp samesign ult i32 %i.ak, 4
  %or.cond17.i12.i = and i1 %i.ba, %.not.i11.i
  br i1 %or.cond17.i12.i, label %._crit_edge.thread.sink.split.i.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit

bb.g:                                             ; preds = %bb.g, %.lr.ph.i4.i.new
  %indvars.iv.i6.i = phi i64 [ 0, %.lr.ph.i4.i.new ], [ %indvars.iv.next.i8.i.1, %bb.g ] ; 3 uses
  %.01418.i7.i = phi i64 [ 0, %.lr.ph.i4.i.new ], [ %i.bp, %bb.g ]
  %niter61 = phi i64 [ 0, %.lr.ph.i4.i.new ], [ %niter61.next.1, %bb.g ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i6.i ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !14
  %i.bd = zext i32 %i.bc to i64
  %i.be = mul nuw i64 %i.bd, %i.ap
  %i.bf = add nuw i64 %i.be, %.01418.i7.i         ; 2 uses
  %i.bg = trunc i64 %i.bf to i32
  store i32 %i.bg, ptr %i.bb, align 4, !tbaa !14
  %i.bh = lshr i64 %i.bf, 32
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i6.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !14
  %i.bl = zext i32 %i.bk to i64
  %i.bm = mul nuw i64 %i.bl, %i.ap
  %i.bn = add nuw i64 %i.bm, %i.bh                ; 2 uses
  %i.bo = trunc i64 %i.bn to i32
  store i32 %i.bo, ptr %i.bj, align 4, !tbaa !14
  %i.bp = lshr i64 %i.bn, 32                      ; 3 uses
  %indvars.iv.next.i8.i.1 = add nuw nsw i64 %indvars.iv.i6.i, 2 ; 2 uses
  %niter61.next.1 = add i64 %niter61, 2           ; 2 uses
  %niter61.ncmp.1 = icmp eq i64 %niter61.next.1, %unroll_iter60
  br i1 %niter61.ncmp.1, label %._crit_edge.i10.i.unr-lcssa, label %bb.g, !llvm.loop !19

._crit_edge.thread.sink.split.i.i:                ; preds = %._crit_edge.i10.i
  %i.bq = trunc nuw i64 %.lcssa to i32
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %wide.trip.count.i5.i
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !14
  %i.bs = add nuw nsw i32 %i.ak, 1
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit: ; preds = %._crit_edge.thread.sink.split.i.i, %._crit_edge.i10.i, %bb.f, %._crit_edge.i
  %i.bt = phi i32 [ %i.bs, %._crit_edge.thread.sink.split.i.i ], [ %i.ak, %._crit_edge.i10.i ], [ %i.ak, %bb.f ], [ %i.ag, %._crit_edge.i ] ; 3 uses
  %i.bu = icmp samesign ugt i32 %1, 127
  br i1 %i.bu, label %bb.h, label %bb.i

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit.thread: ; preds = %._crit_edge.i.thread
  %i.bv = icmp samesign ugt i32 %1, 127
  br i1 %i.bv, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9SetToZeroEv.exit.i, label %bb.i

bb.h:                                             ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit
  %i.bw = icmp slt i32 %i.bt, 1
  br i1 %i.bw, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9SetToZeroEv.exit.i, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i: ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.by = zext nneg i32 %i.bt to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.by, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bx, i8 0, i64 %.idx.i.i.i.i, i1 false), !tbaa !14
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9SetToZeroEv.exit.i

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9SetToZeroEv.exit.i: ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit.thread, %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i, %bb.h
  store i32 0, ptr %0, align 4, !tbaa !9
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9ShiftLeftEi.exit

bb.i:                                             ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit.thread, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit
  %i.bz = phi i32 [ 0, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit.thread ], [ %i.bt, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit ]
  %i.ca = lshr i32 %1, 5                          ; 7 uses
  %i.cb = add nsw i32 %i.bz, %i.ca                ; 3 uses
  %.sroa.speculated28.i = tail call i32 @llvm.smin.i32(i32 %i.cb, i32 4) ; 4 uses
  store i32 %.sroa.speculated28.i, ptr %0, align 4, !tbaa !9
  %i.cc = and i32 %1, 31                          ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.cf = sext i32 %.sroa.speculated28.i to i64   ; 2 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cf ; 2 uses
  %.idx.i = shl nsw i64 %i.cf, 2
  %i.ch = shl nuw nsw i32 %i.ca, 2
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = sub nsw i64 %.idx.i, %i.ci              ; 3 uses
  %i.ck = ashr exact i64 %i.cj, 2                 ; 2 uses
  %i.cl = icmp sgt i64 %i.ck, 1
  br i1 %i.cl, label %bb.k, label %bb.l, !prof !23

bb.k:                                             ; preds = %bb.j
  %i.cm = sub nsw i64 0, %i.ck
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cm
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cn, ptr nonnull align 4 %i.ce, i64 %i.cj, i1 false)
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.co = icmp eq i64 %i.cj, 4
  br i1 %i.co, label %bb.m, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cp = getelementptr inbounds i8, ptr %i.cg, i64 -4
  %i.cq = load i32, ptr %i.ce, align 4, !tbaa !14
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !14
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.n:                                             ; preds = %bb.i
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.cb, i32 3) ; 2 uses
  %i.cr = icmp sgt i32 %.sroa.speculated.i, %i.ca
  br i1 %i.cr, label %.lr.ph.i6, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.n
  %.pre.i = zext nneg i32 %i.ca to i64
  br label %._crit_edge.i5

.lr.ph.i6:                                        ; preds = %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ct = zext nneg i32 %.sroa.speculated.i to i64
  %i.cu = zext nneg i32 %i.ca to i64              ; 3 uses
  br label %bb.o

._crit_edge.i5:                                   ; preds = %bb.o, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %i.cu, %bb.o ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !14
  %i.cx = shl i32 %i.cw, %i.cc
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.pre-phi.i
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !14
  %i.cz = icmp slt i32 %i.cb, 4
  br i1 %i.cz, label %bb.p, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.o:                                             ; preds = %bb.o, %.lr.ph.i6
  %indvars.iv.i = phi i64 [ %i.ct, %.lr.ph.i6 ], [ %indvars.iv.next.i, %bb.o ] ; 3 uses
  %i.da = sub nsw i64 %indvars.iv.i, %i.cu
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !14
  %i.dd = getelementptr i8, ptr %i.db, i64 -4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !14
  %i.df = tail call i32 @llvm.fshl.i32(i32 %i.dc, i32 %i.de, i32 %1)
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.i
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !14
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.dh = icmp samesign ugt i64 %indvars.iv.next.i, %i.cu
  br i1 %i.dh, label %bb.o, label %._crit_edge.i5, !llvm.loop !24

bb.p:                                             ; preds = %._crit_edge.i5
  %i.di = sext i32 %.sroa.speculated28.i to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !14
  %.not.i = icmp eq i32 %i.dk, 0
  br i1 %.not.i, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dl = add nsw i32 %.sroa.speculated28.i, 1
  store i32 %i.dl, ptr %0, align 4, !tbaa !9
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i

_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.q, %bb.p, %._crit_edge.i5, %bb.m, %bb.l, %bb.k
  %i.dm = icmp eq i32 %i.ca, 0
  br i1 %i.dm, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9ShiftLeftEi.exit, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i:   ; preds = %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.do = shl nuw nsw i32 %i.ca, 2
  %.idx.i.i.i = zext nneg i32 %i.do to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dn, i8 0, i64 %.idx.i.i.i, i1 false), !tbaa !14
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9ShiftLeftEi.exit

bb.r:                                             ; preds = %bb.a
  %i.dp = icmp sgt i32 %1, 0
  br i1 %i.dp, label %bb.s, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9ShiftLeftEi.exit

bb.s:                                             ; preds = %bb.r
  %i.dq = load i32, ptr %0, align 4, !tbaa !9     ; 7 uses
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9ShiftLeftEi.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ds = zext nneg i32 %1 to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2026052616strings_internal9kTenToNthE, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !14
  %i.dv = zext i32 %i.du to i64                   ; 3 uses
  %i.dw = icmp sgt i32 %i.dq, 0
  br i1 %i.dw, label %.lr.ph.i7, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9ShiftLeftEi.exit

.lr.ph.i7:                                        ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.dq to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.dy = icmp eq i32 %i.dq, 1
  br i1 %i.dy, label %.epil.preheader, label %.lr.ph.i7.new

.lr.ph.i7.new:                                    ; preds = %.lr.ph.i7
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.u

._crit_edge.i10.unr-lcssa:                        ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i10, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i10.unr-lcssa, %.lr.ph.i7
  %indvars.iv.i8.epil.init = phi i64 [ 0, %.lr.ph.i7 ], [ %indvars.iv.next.i9.1, %._crit_edge.i10.unr-lcssa ]
  %.01418.i.epil.init = phi i64 [ 0, %.lr.ph.i7 ], [ %i.ev, %._crit_edge.i10.unr-lcssa ]
  %lcmp.mod47 = trunc i32 %i.dq to i1
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i8.epil.init ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !14
  %i.eb = zext i32 %i.ea to i64
  %i.ec = mul nuw i64 %i.eb, %i.dv
  %i.ed = add nuw i64 %i.ec, %.01418.i.epil.init  ; 2 uses
  %i.ee = trunc i64 %i.ed to i32
  store i32 %i.ee, ptr %i.dz, align 4, !tbaa !14
  %i.ef = lshr i64 %i.ed, 32
  br label %._crit_edge.i10

._crit_edge.i10:                                  ; preds = %._crit_edge.i10.unr-lcssa, %.epil.preheader
  %.lcssa45 = phi i64 [ %i.ev, %._crit_edge.i10.unr-lcssa ], [ %i.ef, %.epil.preheader ] ; 2 uses
  %.not.i11 = icmp ne i64 %.lcssa45, 0
  %i.eg = icmp samesign ult i32 %i.dq, 4
  %or.cond17.i = and i1 %i.eg, %.not.i11
  br i1 %or.cond17.i, label %._crit_edge.thread.sink.split.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9ShiftLeftEi.exit

bb.u:                                             ; preds = %bb.u, %.lr.ph.i7.new
  %indvars.iv.i8 = phi i64 [ 0, %.lr.ph.i7.new ], [ %indvars.iv.next.i9.1, %bb.u ] ; 3 uses
  %.01418.i = phi i64 [ 0, %.lr.ph.i7.new ], [ %i.ev, %bb.u ]
  %niter = phi i64 [ 0, %.lr.ph.i7.new ], [ %niter.next.1, %bb.u ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i8 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !14
  %i.ej = zext i32 %i.ei to i64
  %i.ek = mul nuw i64 %i.ej, %i.dv
  %i.el = add nuw i64 %i.ek, %.01418.i            ; 2 uses
  %i.em = trunc i64 %i.el to i32
  store i32 %i.em, ptr %i.eh, align 4, !tbaa !14
  %i.en = lshr i64 %i.el, 32
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !14
  %i.er = zext i32 %i.eq to i64
  %i.es = mul nuw i64 %i.er, %i.dv
  %i.et = add nuw i64 %i.es, %i.en                ; 2 uses
  %i.eu = trunc i64 %i.et to i32
  store i32 %i.eu, ptr %i.ep, align 4, !tbaa !14
  %i.ev = lshr i64 %i.et, 32                      ; 3 uses
  %indvars.iv.next.i9.1 = add nuw nsw i64 %indvars.iv.i8, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i10.unr-lcssa, label %bb.u, !llvm.loop !19

._crit_edge.thread.sink.split.i:                  ; preds = %._crit_edge.i10
  %i.ew = trunc nuw i64 %.lcssa45 to i32
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %wide.trip.count.i
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !14
  %i.ey = add nuw nsw i32 %i.dq, 1
  store i32 %i.ey, ptr %0, align 4, !tbaa !9
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9ShiftLeftEi.exit

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9ShiftLeftEi.exit: ; preds = %._crit_edge.thread.sink.split.i, %._crit_edge.i10, %bb.t, %bb.s, %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i, %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9SetToZeroEv.exit.i, %bb.r
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef i32 @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE17ReadFloatMantissaERKNS1_11ParsedFloatEi(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9SetToZeroEv.exit, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i:   ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = zext nneg i32 %i.a to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.d, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.c, i8 0, i64 %.idx.i.i.i, i1 false), !tbaa !14
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9SetToZeroEv.exit

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9SetToZeroEv.exit: ; preds = %bb.a, %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i
  store i32 0, ptr %0, align 4, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9SetToZeroEv.exit
  %i.h = load i64, ptr %1, align 8, !tbaa !31     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.h, ptr %i.i, align 4
  %.not = icmp ult i64 %i.h, 4294967296
  br i1 %.not, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %.not11 = icmp eq i64 %i.h, 0
  br i1 %.not11, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 2, %bb.b ], [ 1, %bb.c ]
  store i32 %.sink, ptr %0, align 4, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !32
  br label %bb.f

bb.e:                                             ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9SetToZeroEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.n = tail call noundef i32 @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10ReadDigitsEPKcS5_i(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull %i.f, ptr noundef %i.m, i32 noundef %2)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34
  %i.q = add nsw i32 %i.p, %i.n
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.k, %bb.d ], [ %i.q, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9SetToZeroEv(ptr noundef nonnull align 4 dereferenceable(20) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = zext nneg i32 %i.a to i64
  %.idx.i.i = shl nuw nsw i64 %i.d, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.c, i8 0, i64 %.idx.i.i, i1 false), !tbaa !14
  br label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit:              ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit, %bb.a
  store i32 0, ptr %0, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 5                           ; 8 uses
  %i.c = icmp samesign ugt i32 %1, 127
  %i.d = load i32, ptr %0, align 4, !tbaa !9      ; 3 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9SetToZeroEv.exit, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i:   ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = zext nneg i32 %i.d to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.f, i8 0, i64 %.idx.i.i.i, i1 false), !tbaa !14
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9SetToZeroEv.exit

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9SetToZeroEv.exit: ; preds = %bb.c, %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i
  store i32 0, ptr %0, align 4, !tbaa !9
  br label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = add nsw i32 %i.d, %i.b                   ; 3 uses
  %.sroa.speculated28 = tail call i32 @llvm.smin.i32(i32 %i.h, i32 4) ; 4 uses
  store i32 %.sroa.speculated28, ptr %0, align 4, !tbaa !9
  %i.i = and i32 %1, 31                           ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.l = sext i32 %.sroa.speculated28 to i64      ; 2 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %.idx = shl nsw i64 %i.l, 2
  %i.n = shl nuw nsw i32 %i.b, 2
  %i.o = zext nneg i32 %i.n to i64
  %i.p = sub nsw i64 %.idx, %i.o                  ; 3 uses
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.f, label %bb.g, !prof !23

bb.f:                                             ; preds = %bb.e
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.s
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.t, ptr nonnull align 4 %i.k, i64 %i.p, i1 false)
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit

bb.g:                                             ; preds = %bb.e
  %i.u = icmp eq i64 %i.p, 4
  br i1 %i.u, label %bb.h, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.w = load i32, ptr %i.k, align 4, !tbaa !14
  store i32 %i.w, ptr %i.v, align 4, !tbaa !14
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %bb.d
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.h, i32 3) ; 2 uses
  %i.x = icmp sgt i32 %.sroa.speculated, %i.b
  br i1 %i.x, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.i
  %.pre = zext nneg i32 %i.b to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.z = zext nneg i32 %.sroa.speculated to i64
  %i.aa = zext nneg i32 %i.b to i64               ; 2 uses
  %i.ab = zext nneg i32 %i.b to i64
  br label %bb.j

._crit_edge:                                      ; preds = %bb.j, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.aa, %bb.j ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !14
  %i.ae = shl i32 %i.ad, %i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.pre-phi
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !14
  %i.ag = icmp slt i32 %i.h, 4
  br i1 %i.ag, label %bb.k, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ %i.z, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.ah = sub nsw i64 %indvars.iv, %i.aa
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !14
  %i.ak = getelementptr i8, ptr %i.ai, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !14
  %i.am = tail call i32 @llvm.fshl.i32(i32 %i.aj, i32 %i.al, i32 %1)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  store i32 %i.am, ptr %i.an, align 4, !tbaa !14
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ao = icmp samesign ugt i64 %indvars.iv.next, %i.ab
  br i1 %i.ao, label %bb.j, label %._crit_edge, !llvm.loop !24

bb.k:                                             ; preds = %._crit_edge
  %i.ap = sext i32 %.sroa.speculated28 to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !14
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = add nsw i32 %.sroa.speculated28, 1
  store i32 %i.as, ptr %0, align 4, !tbaa !9
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit

_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.g, %bb.f, %._crit_edge, %bb.k, %bb.l
  %i.at = icmp eq i32 %i.b, 0
  br i1 %i.at, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit:     ; preds = %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.av = shl nuw nsw i32 %i.b, 2
  %.idx.i.i = zext nneg i32 %i.av to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.au, i8 0, i64 %.idx.i.i, i1 false), !tbaa !14
  br label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit:              ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit, %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE9SetToZeroEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEj(ptr noundef nonnull align 4 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9      ; 9 uses
  %i.b = icmp eq i32 %i.a, 0
  %i.c = icmp eq i32 %1, 1
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %1, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %i.a, 1
  br i1 %i.e, label %._crit_edge.thread.sink.split, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i:   ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = zext nneg i32 %i.a to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.f, i8 0, i64 %.idx.i.i.i, i1 false), !tbaa !14
  br label %._crit_edge.thread.sink.split

bb.d:                                             ; preds = %bb.b
  %i.h = zext i32 %1 to i64                       ; 3 uses
  %i.i = icmp sgt i32 %i.a, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.k = icmp eq i32 %i.a, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.e

._crit_edge.unr-lcssa:                            ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.01418.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ah, %._crit_edge.unr-lcssa ]
  %lcmp.mod26 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.epil.init ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !14
  %i.n = zext i32 %i.m to i64
  %i.o = mul nuw i64 %i.n, %i.h
  %i.p = add nuw i64 %i.o, %.01418.epil.init      ; 2 uses
  %i.q = trunc i64 %i.p to i32
  store i32 %i.q, ptr %i.l, align 4, !tbaa !14
  %i.r = lshr i64 %i.p, 32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ah, %._crit_edge.unr-lcssa ], [ %i.r, %.epil.preheader ] ; 2 uses
  %.not = icmp ne i64 %.lcssa, 0
  %i.s = icmp samesign ult i32 %i.a, 4
  %or.cond17 = and i1 %i.s, %.not
  br i1 %or.cond17, label %bb.f, label %._crit_edge.thread

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.e ] ; 3 uses
  %.01418 = phi i64 [ 0, %.lr.ph.new ], [ %i.ah, %bb.e ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.e ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !14
  %i.v = zext i32 %i.u to i64
  %i.w = mul nuw i64 %i.v, %i.h
  %i.x = add nuw i64 %i.w, %.01418                ; 2 uses
  %i.y = trunc i64 %i.x to i32
  store i32 %i.y, ptr %i.t, align 4, !tbaa !14
  %i.z = lshr i64 %i.x, 32
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !14
  %i.ad = zext i32 %i.ac to i64
  %i.ae = mul nuw i64 %i.ad, %i.h
  %i.af = add nuw i64 %i.ae, %i.z                 ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  store i32 %i.ag, ptr %i.ab, align 4, !tbaa !14
  %i.ah = lshr i64 %i.af, 32                      ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.e, !llvm.loop !19

bb.f:                                             ; preds = %._crit_edge
  %i.ai = trunc nuw i64 %.lcssa to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ak = zext nneg i32 %i.a to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak
  store i32 %i.ai, ptr %i.al, align 4, !tbaa !14
  %i.am = load i32, ptr %0, align 4, !tbaa !9
  %i.an = add nsw i32 %i.am, 1
  br label %._crit_edge.thread.sink.split

._crit_edge.thread.sink.split:                    ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i, %bb.c, %bb.f
  %.sink = phi i32 [ %i.an, %bb.f ], [ 0, %bb.c ], [ 0, %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i ]
  store i32 %.sink, ptr %0, align 4, !tbaa !9
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge.thread.sink.split, %bb.d, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEm(ptr noundef nonnull align 4 dereferenceable(20) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = trunc i64 %1 to i32                      ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.c = icmp ult i64 %1, 4294967296
  %i.d = load i32, ptr %0, align 4, !tbaa !9      ; 12 uses
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %i.d, 0
  %i.f = icmp eq i32 %i.b, 1
  %or.cond.i = or i1 %i.f, %i.e
  br i1 %or.cond.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %i.b, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = icmp slt i32 %i.d, 1
  br i1 %i.h, label %._crit_edge.thread.sink.split.i, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = zext nneg i32 %i.d to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.j, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 0, i64 %.idx.i.i.i.i, i1 false), !tbaa !14
  br label %._crit_edge.thread.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.k = icmp sgt i32 %i.d, 0
  br i1 %i.k, label %.lr.ph.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.d to i64  ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.m = icmp eq i32 %i.d, 1
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.f

._crit_edge.i.unr-lcssa:                          ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi:bb.a
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i6.epil.init ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !14
  %i.au = zext i32 %i.at to i64
  %i.av = mul nuw i64 %i.au, %i.ao
  %i.aw = add nuw i64 %i.av, %.01418.i7.epil.init ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  store i32 %i.ax, ptr %i.as, align 4, !tbaa !14
  %i.ay = lshr i64 %i.aw, 32
  br label %._crit_edge.i10

._crit_edge.i10:                                  ; preds = %._crit_edge.i10.unr-lcssa, %.epil.preheader31
  %.lcssa = phi i64 [ %i.bo, %._crit_edge.i10.unr-lcssa ], [ %i.ay, %.epil.preheader31 ] ; 2 uses
  %.not.i11 = icmp ne i64 %.lcssa, 0
  %i.az = icmp samesign ult i32 %i.aj, 4
  %or.cond17.i12 = and i1 %i.az, %.not.i11
  br i1 %or.cond17.i12, label %._crit_edge.thread.sink.split.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit13

bb.g:                                             ; preds = %bb.g, %.lr.ph.i4.new
  %indvars.iv.i6 = phi i64 [ 0, %.lr.ph.i4.new ], [ %indvars.iv.next.i8.1, %bb.g ] ; 3 uses
  %.01418.i7 = phi i64 [ 0, %.lr.ph.i4.new ], [ %i.bo, %bb.g ]
  %niter37 = phi i64 [ 0, %.lr.ph.i4.new ], [ %niter37.next.1, %bb.g ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i6 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !14
  %i.bc = zext i32 %i.bb to i64
  %i.bd = mul nuw i64 %i.bc, %i.ao
  %i.be = add nuw i64 %i.bd, %.01418.i7           ; 2 uses
  %i.bf = trunc i64 %i.be to i32
  store i32 %i.bf, ptr %i.ba, align 4, !tbaa !14
  %i.bg = lshr i64 %i.be, 32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i6
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !14
  %i.bk = zext i32 %i.bj to i64
  %i.bl = mul nuw i64 %i.bk, %i.ao
  %i.bm = add nuw i64 %i.bl, %i.bg                ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  store i32 %i.bn, ptr %i.bi, align 4, !tbaa !14
  %i.bo = lshr i64 %i.bm, 32                      ; 3 uses
  %indvars.iv.next.i8.1 = add nuw nsw i64 %indvars.iv.i6, 2 ; 2 uses
  %niter37.next.1 = add i64 %niter37, 2           ; 2 uses
  %niter37.ncmp.1 = icmp eq i64 %niter37.next.1, %unroll_iter36
  br i1 %niter37.ncmp.1, label %._crit_edge.i10.unr-lcssa, label %bb.g, !llvm.loop !19

._crit_edge.thread.sink.split.i:                  ; preds = %._crit_edge.i10
  %i.bp = trunc nuw i64 %.lcssa to i32
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %wide.trip.count.i5
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !14
  %i.br = add nuw nsw i32 %i.aj, 1
  store i32 %i.br, ptr %0, align 4, !tbaa !9
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit13

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit13: ; preds = %._crit_edge.thread.sink.split.i, %._crit_edge.i10, %bb.f, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12FiveToTheNthEi(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20260526::strings_internal::BigUnsigned") align 4 %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EEC1Em(ptr noundef nonnull align 4 dereferenceable(20) %0, i64 noundef 1)
  %i.a = icmp sgt i32 %1, 26
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit
  %.023 = phi i32 [ %1, %.lr.ph ], [ %i.dy, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit ] ; 2 uses
  %.01122 = phi i1 [ true, %.lr.ph ], [ false, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit ]
  %i.c = udiv i32 %.023, 27
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.c, i32 20) ; 8 uses
  br i1 %.01122, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit, label %bb.c

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit:              ; preds = %bb.b
  %i.d = add nsw i32 %.sroa.speculated, -1
  %i.e = mul nuw nsw i32 %i.d, %.sroa.speculated
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2026052616strings_internal12_GLOBAL__N_118kLargePowersOfFiveE, i64 %i.f
  %i.h = shl nuw nsw i32 %.sroa.speculated, 1
  %i.i = shl nuw nsw i32 %.sroa.speculated, 3
  %.idx.i.i = zext nneg i32 %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.b, ptr nonnull align 4 %i.g, i64 %.idx.i.i, i1 false)
  store i32 %i.h, ptr %0, align 4, !tbaa !9
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit

bb.c:                                             ; preds = %bb.b
  %i.j = shl nuw nsw i32 %.sroa.speculated, 1     ; 5 uses
  %i.k = add nsw i32 %.sroa.speculated, -1
  %i.l = mul nuw nsw i32 %i.k, %.sroa.speculated
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2026052616strings_internal12_GLOBAL__N_118kLargePowersOfFiveE, i64 %i.m ; 4 uses
  %i.o = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  %i.p = add nsw i32 %i.o, %i.j                   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %select.unfold.preheader.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit

select.unfold.preheader.i:                        ; preds = %bb.c
  %i.r = add nsw i32 %i.o, -1
  %i.s = tail call i32 @llvm.umin.i32(i32 %i.p, i32 5)
  %umin = zext nneg i32 %i.s to i64
  %i.t = add nsw i64 %umin, -2
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit, %select.unfold.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit ], [ %i.t, %select.unfold.preheader.i ] ; 13 uses
  %i.u = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.r) ; 5 uses
  %i.v = sub i32 %i.u, %.sroa.speculated.i        ; 2 uses
  %i.w = icmp sgt i32 %.sroa.speculated.i, -1
  %i.x = icmp slt i32 %i.v, %i.j
  %i.y = and i1 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i12, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.thread.i

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.thread.i: ; preds = %select.unfold.i
  %i.z = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 0, ptr %i.z, align 4, !tbaa !14
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit

.lr.ph.i12:                                       ; preds = %select.unfold.i
  %i.aa = zext nneg i32 %.sroa.speculated.i to i64 ; 4 uses
  %i.ab = zext i32 %i.v to i64                    ; 4 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aa
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !14
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ab
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !14
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul nuw i64 %i.ah, %i.ae                ; 3 uses
  %i.aj = lshr i64 %i.ai, 32                      ; 2 uses
  %i.ak = and i64 %i.ai, 4294967295               ; 2 uses
  %indvars.iv.next38.i = add nuw nsw i64 %i.ab, 1 ; 2 uses
  %i.al = icmp ne i32 %.sroa.speculated.i, 0
  %i.am = trunc nuw i64 %indvars.iv.next38.i to i32
  %i.an = icmp sgt i32 %i.j, %i.am
  %i.ao = select i1 %i.al, i1 %i.an, i1 false
  br i1 %i.ao, label %bb.d, label %._crit_edge.i13

bb.d:                                             ; preds = %.lr.ph.i12
  %i.ap = getelementptr [4 x i8], ptr %0, i64 %i.aa
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !14
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next38.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !14
  %i.au = zext i32 %i.at to i64
  %i.av = mul nuw i64 %i.au, %i.ar
  %i.aw = add nuw i64 %i.av, %i.ak                ; 3 uses
  %i.ax = lshr i64 %i.aw, 32
  %i.ay = add nuw nsw i64 %i.ax, %i.aj            ; 2 uses
  %i.az = and i64 %i.aw, 4294967295               ; 2 uses
  %indvars.iv.next38.i.1 = add nuw nsw i64 %i.ab, 2 ; 2 uses
  %i.ba = icmp ne i32 %.sroa.speculated.i, 1
  %i.bb = trunc nuw i64 %indvars.iv.next38.i.1 to i32
  %i.bc = icmp sgt i32 %i.j, %i.bb
  %i.bd = select i1 %i.ba, i1 %i.bc, i1 false
  br i1 %i.bd, label %bb.e, label %._crit_edge.i13

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.1 = add nsw i64 %i.aa, -2    ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.1
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !14
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next38.i.1
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !14
  %i.bj = zext i32 %i.bi to i64
  %i.bk = mul nuw i64 %i.bj, %i.bg
  %i.bl = add nuw i64 %i.bk, %i.az                ; 3 uses
  %i.bm = lshr i64 %i.bl, 32
  %i.bn = add nuw nsw i64 %i.bm, %i.ay            ; 2 uses
  %i.bo = and i64 %i.bl, 4294967295               ; 2 uses
  %indvars.iv.next38.i.2 = add nuw nsw i64 %i.ab, 3 ; 2 uses
  %i.bp = icmp ne i64 %indvars.iv.next.i.1, 0
  %i.bq = trunc nuw i64 %indvars.iv.next38.i.2 to i32
  %i.br = icmp sgt i32 %i.j, %i.bq
  %i.bs = select i1 %i.bp, i1 %i.br, i1 false
  br i1 %i.bs, label %bb.f, label %._crit_edge.i13

bb.f:                                             ; preds = %bb.e
  %i.bt = getelementptr [4 x i8], ptr %i.b, i64 %i.aa
  %i.bu = getelementptr i8, ptr %i.bt, i64 -12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !14
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next38.i.2
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !14
  %i.bz = zext i32 %i.by to i64
  %i.ca = mul nuw i64 %i.bz, %i.bw
  %i.cb = add nuw i64 %i.ca, %i.bo                ; 3 uses
  %i.cc = lshr i64 %i.cb, 32
  %i.cd = add nuw nsw i64 %i.cc, %i.bn
  %i.ce = and i64 %i.cb, 4294967295
  br label %._crit_edge.i13

._crit_edge.i13:                                  ; preds = %bb.f, %bb.e, %bb.d, %.lr.ph.i12
  %.lcssa58 = phi i64 [ %i.ai, %.lr.ph.i12 ], [ %i.aw, %bb.d ], [ %i.bl, %bb.e ], [ %i.cb, %bb.f ]
  %.lcssa57 = phi i64 [ %i.aj, %.lr.ph.i12 ], [ %i.ay, %bb.d ], [ %i.bn, %bb.e ], [ %i.cd, %bb.f ] ; 3 uses
  %.lcssa56 = phi i64 [ %i.ak, %.lr.ph.i12 ], [ %i.az, %bb.d ], [ %i.bo, %bb.e ], [ %i.ce, %bb.f ]
  %i.cf = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.cg = icmp ne i64 %.lcssa57, 0
  %i.ch = icmp slt i64 %indvars.iv, 3
  %or.cond.i.i = and i1 %i.ch, %i.cg
  br i1 %or.cond.i.i, label %bb.g, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i

bb.g:                                             ; preds = %._crit_edge.i13
  %i.ci = lshr i64 %.lcssa57, 32                  ; 2 uses
  %i.cj = trunc nuw i64 %i.ci to i32              ; 2 uses
  %i.ck = trunc i64 %.lcssa57 to i32              ; 2 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cf ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !14
  %i.cn = add i32 %i.cm, %i.ck                    ; 2 uses
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !14
  %i.co = icmp ult i32 %i.cn, %i.ck
  br i1 %i.co, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.cp = add i32 %i.cj, 1                        ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.i, label %.preheader.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.cr = icmp slt i64 %indvars.iv, 1
  %i.cs = trunc i64 %indvars.iv to i32
  %i.ct = add i32 %i.cs, 3                        ; 2 uses
  br i1 %i.cr, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.017.i.i.i = phi i32 [ %i.cz, %.lr.ph.i.i.i ], [ 1, %bb.i ] ; 2 uses
  %.0916.i.i.i = phi i32 [ %.110.i.i.i, %.lr.ph.i.i.i ], [ %i.ct, %bb.i ] ; 2 uses
  %i.cu = sext i32 %.0916.i.i.i to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !14
  %i.cx = add i32 %i.cw, %.017.i.i.i              ; 2 uses
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !14
  %i.cy = icmp ugt i32 %.017.i.i.i, %i.cx         ; 2 uses
  %i.cz = zext i1 %i.cy to i32                    ; 2 uses
  %.110.i.i.i = add nsw i32 %.0916.i.i.i, %i.cz   ; 3 uses
  %i.da = icmp slt i32 %.110.i.i.i, 4
  %i.db = and i1 %i.cy, %i.da
  br i1 %i.db, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit.i.i, !llvm.loop !20

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.i
  %.09.lcssa.i.i.i = phi i32 [ %i.ct, %bb.i ], [ %.110.i.i.i, %.lr.ph.i.i.i ]
  %i.dc = add nsw i32 %.09.lcssa.i.i.i, 1
  br label %.sink.split.i.i

bb.j:                                             ; preds = %bb.g
  %.not.i.i15 = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i15, label %bb.k, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.j, %bb.h
  %.031.i.i = phi i32 [ %i.cj, %bb.j ], [ %i.cp, %bb.h ]
  %i.dd = icmp slt i64 %indvars.iv, 2
  br i1 %i.dd, label %.lr.ph.i21.preheader.i.i, label %.sink.split.i.i

.lr.ph.i21.preheader.i.i:                         ; preds = %.preheader.i.i.i
  %i.de = trunc i64 %indvars.iv to i32
  %i.df = add i32 %i.de, 2
  br label %.lr.ph.i21.i.i

.lr.ph.i21.i.i:                                   ; preds = %.lr.ph.i21.i.i, %.lr.ph.i21.preheader.i.i
  %.017.i22.i.i = phi i32 [ %i.dl, %.lr.ph.i21.i.i ], [ %.031.i.i, %.lr.ph.i21.preheader.i.i ] ; 2 uses
  %.0916.i23.i.i = phi i32 [ %.110.i24.i.i, %.lr.ph.i21.i.i ], [ %i.df, %.lr.ph.i21.preheader.i.i ] ; 2 uses
  %i.dg = sext i32 %.0916.i23.i.i to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !14
  %i.dj = add i32 %i.di, %.017.i22.i.i            ; 2 uses
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !14
  %i.dk = icmp ugt i32 %.017.i22.i.i, %i.dj       ; 2 uses
  %i.dl = zext i1 %i.dk to i32                    ; 2 uses
  %.110.i24.i.i = add nsw i32 %.0916.i23.i.i, %i.dl ; 3 uses
  %i.dm = icmp slt i32 %.110.i24.i.i, 4
  %i.dn = and i1 %i.dk, %i.dm
  br i1 %i.dn, label %.lr.ph.i21.i.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit25.loopexit.i.i, !llvm.loop !20

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit25.loopexit.i.i: ; preds = %.lr.ph.i21.i.i
  %i.do = add nsw i32 %.110.i24.i.i, 1
  br label %.sink.split.i.i

bb.k:                                             ; preds = %bb.j
  %i.dp = trunc i64 %indvars.iv to i32
  %i.dq = add i32 %i.dp, 2
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.k, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit25.loopexit.i.i, %.preheader.i.i.i, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit.i.i
  %.sink35.i.i = phi i32 [ %i.dc, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit.i.i ], [ %i.dq, %bb.k ], [ 5, %.preheader.i.i.i ], [ %i.do, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit25.loopexit.i.i ]
  %i.dr = load i32, ptr %0, align 4, !tbaa !14
  %i.ds = tail call i32 @llvm.smax.i32(i32 %.sink35.i.i, i32 %i.dr)
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ds, i32 4)
  store i32 %.sroa.speculated.i.i.i, ptr %0, align 4, !tbaa !9
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i: ; preds = %.sink.split.i.i, %._crit_edge.i13
  %i.dt = trunc i64 %.lcssa58 to i32
  %i.du = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !14
  %.not.i14 = icmp eq i64 %.lcssa56, 0
  %2 = load i32, ptr %0, align 4
  %i.dv = sext i32 %2 to i64
  %.not23.i = icmp slt i64 %indvars.iv, %i.dv
  %or.cond = select i1 %.not.i14, i1 true, i1 %.not23.i
  br i1 %or.cond, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i
  %i.dw = trunc nsw i64 %i.cf to i32
  store i32 %i.dw, ptr %0, align 4, !tbaa !9
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit: ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.thread.i, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i, %bb.l
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.dx = icmp eq i64 %indvars.iv, 0
  br i1 %i.dx, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit, label %select.unfold.i, !llvm.loop !35

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit: ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit, %bb.c, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit
  %.neg = mul nsw i32 %.sroa.speculated, -27
  %i.dy = add nsw i32 %.neg, %.023                ; 3 uses
  %i.dz = icmp sgt i32 %i.dy, 26
  br i1 %i.dz, label %bb.b, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit, %bb.a
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.dy, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit ] ; 3 uses
  %i.ea = icmp sgt i32 %.0.lcssa, 12
  br i1 %i.ea, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %.promoted.i = load i32, ptr %0, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i, %.lr.ph.i
  %.015.i = phi i32 [ %.0.lcssa, %.lr.ph.i ], [ %i.fg, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i ] ; 2 uses
  %i.ec = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.ff, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i ] ; 8 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph.i.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %wide.trip.count.i.i = zext nneg i32 %i.ec to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.ee = icmp eq i32 %i.ec, 1
  br i1 %i.ee, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.n

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.unr-lcssa ]
  %.01418.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.fb, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod61 = trunc i32 %i.ec to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !14
  %i.eh = zext i32 %i.eg to i64
  %i.ei = mul nuw nsw i64 %i.eh, 1220703125
  %i.ej = add nuw nsw i64 %i.ei, %.01418.i.i.epil.init ; 2 uses
  %i.ek = trunc i64 %i.ej to i32
  store i32 %i.ek, ptr %i.ef, align 4, !tbaa !14
  %i.el = lshr i64 %i.ej, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa54 = phi i64 [ %i.fb, %._crit_edge.i.i.unr-lcssa ], [ %i.el, %.epil.preheader ] ; 2 uses
  %.not.i.i = icmp ne i64 %.lcssa54, 0
  %i.em = icmp samesign ult i32 %i.ec, 4
  %or.cond17.i.i = and i1 %i.em, %.not.i.i
  br i1 %or.cond17.i.i, label %bb.o, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.n ] ; 3 uses
  %.01418.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.fb, %bb.n ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.n ]
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i.i ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !14
  %i.ep = zext i32 %i.eo to i64
  %i.eq = mul nuw nsw i64 %i.ep, 1220703125
  %i.er = add nuw nsw i64 %i.eq, %.01418.i.i      ; 2 uses
  %i.es = trunc i64 %i.er to i32
  store i32 %i.es, ptr %i.en, align 4, !tbaa !14
  %i.et = lshr i64 %i.er, 32
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !14
  %i.ex = zext i32 %i.ew to i64
  %i.ey = mul nuw nsw i64 %i.ex, 1220703125
  %i.ez = add nuw nsw i64 %i.ey, %i.et            ; 2 uses
  %i.fa = trunc i64 %i.ez to i32
  store i32 %i.fa, ptr %i.ev, align 4, !tbaa !14
  %i.fb = lshr i64 %i.ez, 32                      ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.n, !llvm.loop !19

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.fc = trunc nuw nsw i64 %.lcssa54 to i32
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %wide.trip.count.i.i
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !14
  %i.fe = add nuw nsw i32 %i.ec, 1                ; 2 uses
  store i32 %i.fe, ptr %0, align 4, !tbaa !9
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i: ; preds = %bb.o, %._crit_edge.i.i, %bb.m
  %i.ff = phi i32 [ %i.ec, %bb.m ], [ %i.ec, %._crit_edge.i.i ], [ %i.fe, %bb.o ]
  %i.fg = add nsw i32 %.015.i, -13                ; 2 uses
  %i.fh = icmp sgt i32 %.015.i, 25
  br i1 %i.fh, label %bb.m, label %._crit_edge.i, !llvm.loop !22

._crit_edge.i:                                    ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i, %._crit_edge
  %.0.lcssa.i = phi i32 [ %.0.lcssa, %._crit_edge ], [ %i.fg, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i ] ; 2 uses
  %i.fi = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.fi, label %bb.p, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit

bb.p:                                             ; preds = %._crit_edge.i
  %i.fj = load i32, ptr %0, align 4, !tbaa !9     ; 7 uses
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fl = zext nneg i32 %.0.lcssa.i to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2026052616strings_internal10kFiveToNthE, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !14
  %i.fo = zext i32 %i.fn to i64                   ; 3 uses
  %i.fp = icmp sgt i32 %i.fj, 0
  br i1 %i.fp, label %.lr.ph.i4.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit

.lr.ph.i4.i:                                      ; preds = %bb.q
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %wide.trip.count.i5.i = zext nneg i32 %i.fj to i64 ; 3 uses
  %xtraiter63 = and i64 %wide.trip.count.i5.i, 1
  %i.fr = icmp eq i32 %i.fj, 1
  br i1 %i.fr, label %.epil.preheader62, label %.lr.ph.i4.i.new

.lr.ph.i4.i.new:                                  ; preds = %.lr.ph.i4.i
  %unroll_iter67 = and i64 %wide.trip.count.i5.i, 2147483646
  br label %bb.r

._crit_edge.i10.i.unr-lcssa:                      ; preds = %bb.r
  %lcmp.mod64.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64.not, label %._crit_edge.i10.i, label %.epil.preheader62

.epil.preheader62:                                ; preds = %._crit_edge.i10.i.unr-lcssa, %.lr.ph.i4.i
  %indvars.iv.i6.i.epil.init = phi i64 [ 0, %.lr.ph.i4.i ], [ %indvars.iv.next.i8.i.1, %._crit_edge.i10.i.unr-lcssa ]
  %.01418.i7.i.epil.init = phi i64 [ 0, %.lr.ph.i4.i ], [ %i.go, %._crit_edge.i10.i.unr-lcssa ]
  %lcmp.mod66 = trunc i32 %i.fj to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv.i6.i.epil.init ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !14
  %i.fu = zext i32 %i.ft to i64
  %i.fv = mul nuw i64 %i.fu, %i.fo
  %i.fw = add nuw i64 %i.fv, %.01418.i7.i.epil.init ; 2 uses
  %i.fx = trunc i64 %i.fw to i32
  store i32 %i.fx, ptr %i.fs, align 4, !tbaa !14
  %i.fy = lshr i64 %i.fw, 32
  br label %._crit_edge.i10.i

._crit_edge.i10.i:                                ; preds = %._crit_edge.i10.i.unr-lcssa, %.epil.preheader62
  %.lcssa = phi i64 [ %i.go, %._crit_edge.i10.i.unr-lcssa ], [ %i.fy, %.epil.preheader62 ] ; 2 uses
  %.not.i11.i = icmp ne i64 %.lcssa, 0
  %i.fz = icmp samesign ult i32 %i.fj, 4
  %or.cond17.i12.i = and i1 %i.fz, %.not.i11.i
  br i1 %or.cond17.i12.i, label %._crit_edge.thread.sink.split.i.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit

bb.r:                                             ; preds = %bb.r, %.lr.ph.i4.i.new
  %indvars.iv.i6.i = phi i64 [ 0, %.lr.ph.i4.i.new ], [ %indvars.iv.next.i8.i.1, %bb.r ] ; 3 uses
  %.01418.i7.i = phi i64 [ 0, %.lr.ph.i4.i.new ], [ %i.go, %bb.r ]
  %niter68 = phi i64 [ 0, %.lr.ph.i4.i.new ], [ %niter68.next.1, %bb.r ]
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv.i6.i ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !14
  %i.gc = zext i32 %i.gb to i64
  %i.gd = mul nuw i64 %i.gc, %i.fo
  %i.ge = add nuw i64 %i.gd, %.01418.i7.i         ; 2 uses
  %i.gf = trunc i64 %i.ge to i32
  store i32 %i.gf, ptr %i.ga, align 4, !tbaa !14
  %i.gg = lshr i64 %i.ge, 32
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv.i6.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !14
  %i.gk = zext i32 %i.gj to i64
  %i.gl = mul nuw i64 %i.gk, %i.fo
  %i.gm = add nuw i64 %i.gl, %i.gg                ; 2 uses
  %i.gn = trunc i64 %i.gm to i32
  store i32 %i.gn, ptr %i.gi, align 4, !tbaa !14
  %i.go = lshr i64 %i.gm, 32                      ; 3 uses
  %indvars.iv.next.i8.i.1 = add nuw nsw i64 %indvars.iv.i6.i, 2 ; 2 uses
  %niter68.next.1 = add i64 %niter68, 2           ; 2 uses
  %niter68.ncmp.1 = icmp eq i64 %niter68.next.1, %unroll_iter67
  br i1 %niter68.ncmp.1, label %._crit_edge.i10.i.unr-lcssa, label %bb.r, !llvm.loop !19

._crit_edge.thread.sink.split.i.i:                ; preds = %._crit_edge.i10.i
  %i.gp = trunc nuw i64 %.lcssa to i32
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %wide.trip.count.i5.i
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !14
  %i.gr = add nuw nsw i32 %i.fj, 1
  store i32 %i.gr, ptr %0, align 4, !tbaa !9
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE21MultiplyByTenToTheNthEi:bb.a
  %i.z = mul nuw nsw i64 %i.y, 1220703125
  %i.aa = add nuw nsw i64 %i.z, %i.u              ; 2 uses
  %i.ab = trunc i64 %i.aa to i32
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !14
  %i.ac = lshr i64 %i.aa, 32                      ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter54.next.1 = add i64 %niter54, 2           ; 2 uses
  %niter54.ncmp.1 = icmp eq i64 %niter54.next.1, %unroll_iter53
  br i1 %niter54.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.d, !llvm.loop !52

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ad = trunc nuw nsw i64 %.lcssa42 to i32
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %wide.trip.count.i.i
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !14
  %i.af = add nuw nsw i32 %i.d, 1
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.i

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.i: ; preds = %bb.e, %._crit_edge.i.i, %bb.c
  %i.ag = phi i32 [ %i.d, %bb.c ], [ %i.d, %._crit_edge.i.i ], [ %i.af, %bb.e ] ; 3 uses
  %i.ah = add nsw i32 %.015.i, -13                ; 2 uses
  %i.ai = icmp sgt i32 %.015.i, 25
  br i1 %i.ai, label %bb.c, label %._crit_edge.i, !llvm.loop !55

._crit_edge.i:                                    ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.i
  %i.aj = icmp sgt i32 %.015.i, 13
  br i1 %i.aj, label %._crit_edge.i.thread, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi.exit

._crit_edge.i.thread:                             ; preds = %bb.b, %._crit_edge.i
  %i.ak = phi i32 [ %i.ag, %._crit_edge.i ], [ %.promoted.i, %bb.b ] ; 9 uses
  %.0.lcssa.i15 = phi i32 [ %i.ah, %._crit_edge.i ], [ %1, %bb.b ]
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.thread
  %i.am = zext nneg i32 %.0.lcssa.i15 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2026052616strings_internal10kFiveToNthE, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !14
  %i.ap = zext i32 %i.ao to i64                   ; 3 uses
  %i.aq = icmp sgt i32 %i.ak, 0
  br i1 %i.aq, label %.lr.ph.i4.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi.exit

.lr.ph.i4.i:                                      ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %wide.trip.count.i5.i = zext nneg i32 %i.ak to i64 ; 3 uses
  %xtraiter56 = and i64 %wide.trip.count.i5.i, 1
  %i.as = icmp eq i32 %i.ak, 1
  br i1 %i.as, label %.epil.preheader55, label %.lr.ph.i4.i.new

.lr.ph.i4.i.new:                                  ; preds = %.lr.ph.i4.i
  %unroll_iter60 = and i64 %wide.trip.count.i5.i, 2147483646
  br label %bb.g

._crit_edge.i10.i.unr-lcssa:                      ; preds = %bb.g
  %lcmp.mod57.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod57.not, label %._crit_edge.i10.i, label %.epil.preheader55

.epil.preheader55:                                ; preds = %._crit_edge.i10.i.unr-lcssa, %.lr.ph.i4.i
  %indvars.iv.i6.i.epil.init = phi i64 [ 0, %.lr.ph.i4.i ], [ %indvars.iv.next.i8.i.1, %._crit_edge.i10.i.unr-lcssa ]
  %.01418.i7.i.epil.init = phi i64 [ 0, %.lr.ph.i4.i ], [ %i.bp, %._crit_edge.i10.i.unr-lcssa ]
  %lcmp.mod59 = trunc i32 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i6.i.epil.init ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !14
  %i.av = zext i32 %i.au to i64
  %i.aw = mul nuw i64 %i.av, %i.ap
  %i.ax = add nuw i64 %i.aw, %.01418.i7.i.epil.init ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  store i32 %i.ay, ptr %i.at, align 4, !tbaa !14
  %i.az = lshr i64 %i.ax, 32
  br label %._crit_edge.i10.i

._crit_edge.i10.i:                                ; preds = %._crit_edge.i10.i.unr-lcssa, %.epil.preheader55
  %.lcssa = phi i64 [ %i.bp, %._crit_edge.i10.i.unr-lcssa ], [ %i.az, %.epil.preheader55 ] ; 2 uses
  %.not.i11.i = icmp ne i64 %.lcssa, 0
  %i.ba = icmp samesign ult i32 %i.ak, 84
  %or.cond17.i12.i = and i1 %i.ba, %.not.i11.i
  br i1 %or.cond17.i12.i, label %._crit_edge.thread.sink.split.i.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi.exit

bb.g:                                             ; preds = %bb.g, %.lr.ph.i4.i.new
  %indvars.iv.i6.i = phi i64 [ 0, %.lr.ph.i4.i.new ], [ %indvars.iv.next.i8.i.1, %bb.g ] ; 3 uses
  %.01418.i7.i = phi i64 [ 0, %.lr.ph.i4.i.new ], [ %i.bp, %bb.g ]
  %niter61 = phi i64 [ 0, %.lr.ph.i4.i.new ], [ %niter61.next.1, %bb.g ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i6.i ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !14
  %i.bd = zext i32 %i.bc to i64
  %i.be = mul nuw i64 %i.bd, %i.ap
  %i.bf = add nuw i64 %i.be, %.01418.i7.i         ; 2 uses
  %i.bg = trunc i64 %i.bf to i32
  store i32 %i.bg, ptr %i.bb, align 4, !tbaa !14
  %i.bh = lshr i64 %i.bf, 32
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i6.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !14
  %i.bl = zext i32 %i.bk to i64
  %i.bm = mul nuw i64 %i.bl, %i.ap
  %i.bn = add nuw i64 %i.bm, %i.bh                ; 2 uses
  %i.bo = trunc i64 %i.bn to i32
  store i32 %i.bo, ptr %i.bj, align 4, !tbaa !14
  %i.bp = lshr i64 %i.bn, 32                      ; 3 uses
  %indvars.iv.next.i8.i.1 = add nuw nsw i64 %indvars.iv.i6.i, 2 ; 2 uses
  %niter61.next.1 = add i64 %niter61, 2           ; 2 uses
  %niter61.ncmp.1 = icmp eq i64 %niter61.next.1, %unroll_iter60
  br i1 %niter61.ncmp.1, label %._crit_edge.i10.i.unr-lcssa, label %bb.g, !llvm.loop !52

._crit_edge.thread.sink.split.i.i:                ; preds = %._crit_edge.i10.i
  %i.bq = trunc nuw i64 %.lcssa to i32
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %wide.trip.count.i5.i
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !14
  %i.bs = add nuw nsw i32 %i.ak, 1
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi.exit

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi.exit: ; preds = %._crit_edge.thread.sink.split.i.i, %._crit_edge.i10.i, %bb.f, %._crit_edge.i
  %i.bt = phi i32 [ %i.bs, %._crit_edge.thread.sink.split.i.i ], [ %i.ak, %._crit_edge.i10.i ], [ %i.ak, %bb.f ], [ %i.ag, %._crit_edge.i ] ; 3 uses
  %i.bu = icmp samesign ugt i32 %1, 2687
  br i1 %i.bu, label %bb.h, label %bb.i

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi.exit.thread: ; preds = %._crit_edge.i.thread
  %i.bv = icmp samesign ugt i32 %1, 2687
  br i1 %i.bv, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i, label %bb.i

bb.h:                                             ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi.exit
  %i.bw = icmp slt i32 %i.bt, 1
  br i1 %i.bw, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i: ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.by = zext nneg i32 %i.bt to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.by, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bx, i8 0, i64 %.idx.i.i.i.i, i1 false), !tbaa !14
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i: ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi.exit.thread, %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i, %bb.h
  store i32 0, ptr %0, align 4, !tbaa !47
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit

bb.i:                                             ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi.exit.thread, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi.exit
  %i.bz = phi i32 [ 0, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi.exit.thread ], [ %i.bt, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi.exit ]
  %i.ca = lshr i32 %1, 5                          ; 7 uses
  %i.cb = add nsw i32 %i.bz, %i.ca                ; 3 uses
  %.sroa.speculated28.i = tail call i32 @llvm.smin.i32(i32 %i.cb, i32 84) ; 4 uses
  store i32 %.sroa.speculated28.i, ptr %0, align 4, !tbaa !47
  %i.cc = and i32 %1, 31                          ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.cf = sext i32 %.sroa.speculated28.i to i64   ; 2 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cf ; 2 uses
  %.idx.i = shl nsw i64 %i.cf, 2
  %i.ch = shl nuw nsw i32 %i.ca, 2
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = sub nsw i64 %.idx.i, %i.ci              ; 3 uses
  %i.ck = ashr exact i64 %i.cj, 2                 ; 2 uses
  %i.cl = icmp sgt i64 %i.ck, 1
  br i1 %i.cl, label %bb.k, label %bb.l, !prof !23

bb.k:                                             ; preds = %bb.j
  %i.cm = sub nsw i64 0, %i.ck
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cm
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cn, ptr nonnull align 4 %i.ce, i64 %i.cj, i1 false)
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.co = icmp eq i64 %i.cj, 4
  br i1 %i.co, label %bb.m, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cp = getelementptr inbounds i8, ptr %i.cg, i64 -4
  %i.cq = load i32, ptr %i.ce, align 4, !tbaa !14
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !14
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.n:                                             ; preds = %bb.i
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.cb, i32 83) ; 2 uses
  %i.cr = icmp sgt i32 %.sroa.speculated.i, %i.ca
  br i1 %i.cr, label %.lr.ph.i6, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.n
  %.pre.i = zext nneg i32 %i.ca to i64
  br label %._crit_edge.i5

.lr.ph.i6:                                        ; preds = %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ct = zext nneg i32 %.sroa.speculated.i to i64
  %i.cu = zext nneg i32 %i.ca to i64              ; 3 uses
  br label %bb.o

._crit_edge.i5:                                   ; preds = %bb.o, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %i.cu, %bb.o ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !14
  %i.cx = shl i32 %i.cw, %i.cc
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.pre-phi.i
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !14
  %i.cz = icmp slt i32 %i.cb, 84
  br i1 %i.cz, label %bb.p, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.o:                                             ; preds = %bb.o, %.lr.ph.i6
  %indvars.iv.i = phi i64 [ %i.ct, %.lr.ph.i6 ], [ %indvars.iv.next.i, %bb.o ] ; 3 uses
  %i.da = sub nsw i64 %indvars.iv.i, %i.cu
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !14
  %i.dd = getelementptr i8, ptr %i.db, i64 -4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !14
  %i.df = tail call i32 @llvm.fshl.i32(i32 %i.dc, i32 %i.de, i32 %1)
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.i
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !14
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.dh = icmp samesign ugt i64 %indvars.iv.next.i, %i.cu
  br i1 %i.dh, label %bb.o, label %._crit_edge.i5, !llvm.loop !56

bb.p:                                             ; preds = %._crit_edge.i5
  %i.di = sext i32 %.sroa.speculated28.i to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !14
  %.not.i = icmp eq i32 %i.dk, 0
  br i1 %.not.i, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dl = add nsw i32 %.sroa.speculated28.i, 1
  store i32 %i.dl, ptr %0, align 4, !tbaa !47
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i

_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.q, %bb.p, %._crit_edge.i5, %bb.m, %bb.l, %bb.k
  %i.dm = icmp eq i32 %i.ca, 0
  br i1 %i.dm, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i:   ; preds = %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.do = shl nuw nsw i32 %i.ca, 2
  %.idx.i.i.i = zext nneg i32 %i.do to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dn, i8 0, i64 %.idx.i.i.i, i1 false), !tbaa !14
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit

bb.r:                                             ; preds = %bb.a
  %i.dp = icmp sgt i32 %1, 0
  br i1 %i.dp, label %bb.s, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit

bb.s:                                             ; preds = %bb.r
  %i.dq = load i32, ptr %0, align 4, !tbaa !47    ; 7 uses
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ds = zext nneg i32 %1 to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2026052616strings_internal9kTenToNthE, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !14
  %i.dv = zext i32 %i.du to i64                   ; 3 uses
  %i.dw = icmp sgt i32 %i.dq, 0
  br i1 %i.dw, label %.lr.ph.i7, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit

.lr.ph.i7:                                        ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.dq to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.dy = icmp eq i32 %i.dq, 1
  br i1 %i.dy, label %.epil.preheader, label %.lr.ph.i7.new

.lr.ph.i7.new:                                    ; preds = %.lr.ph.i7
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.u

._crit_edge.i10.unr-lcssa:                        ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i10, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i10.unr-lcssa, %.lr.ph.i7
  %indvars.iv.i8.epil.init = phi i64 [ 0, %.lr.ph.i7 ], [ %indvars.iv.next.i9.1, %._crit_edge.i10.unr-lcssa ]
  %.01418.i.epil.init = phi i64 [ 0, %.lr.ph.i7 ], [ %i.ev, %._crit_edge.i10.unr-lcssa ]
  %lcmp.mod47 = trunc i32 %i.dq to i1
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i8.epil.init ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !14
  %i.eb = zext i32 %i.ea to i64
  %i.ec = mul nuw i64 %i.eb, %i.dv
  %i.ed = add nuw i64 %i.ec, %.01418.i.epil.init  ; 2 uses
  %i.ee = trunc i64 %i.ed to i32
  store i32 %i.ee, ptr %i.dz, align 4, !tbaa !14
  %i.ef = lshr i64 %i.ed, 32
  br label %._crit_edge.i10

._crit_edge.i10:                                  ; preds = %._crit_edge.i10.unr-lcssa, %.epil.preheader
  %.lcssa45 = phi i64 [ %i.ev, %._crit_edge.i10.unr-lcssa ], [ %i.ef, %.epil.preheader ] ; 2 uses
  %.not.i11 = icmp ne i64 %.lcssa45, 0
  %i.eg = icmp samesign ult i32 %i.dq, 84
  %or.cond17.i = and i1 %i.eg, %.not.i11
  br i1 %or.cond17.i, label %._crit_edge.thread.sink.split.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit

bb.u:                                             ; preds = %bb.u, %.lr.ph.i7.new
  %indvars.iv.i8 = phi i64 [ 0, %.lr.ph.i7.new ], [ %indvars.iv.next.i9.1, %bb.u ] ; 3 uses
  %.01418.i = phi i64 [ 0, %.lr.ph.i7.new ], [ %i.ev, %bb.u ]
  %niter = phi i64 [ 0, %.lr.ph.i7.new ], [ %niter.next.1, %bb.u ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i8 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !14
  %i.ej = zext i32 %i.ei to i64
  %i.ek = mul nuw i64 %i.ej, %i.dv
  %i.el = add nuw i64 %i.ek, %.01418.i            ; 2 uses
  %i.em = trunc i64 %i.el to i32
  store i32 %i.em, ptr %i.eh, align 4, !tbaa !14
  %i.en = lshr i64 %i.el, 32
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !14
  %i.er = zext i32 %i.eq to i64
  %i.es = mul nuw i64 %i.er, %i.dv
  %i.et = add nuw i64 %i.es, %i.en                ; 2 uses
  %i.eu = trunc i64 %i.et to i32
  store i32 %i.eu, ptr %i.ep, align 4, !tbaa !14
  %i.ev = lshr i64 %i.et, 32                      ; 3 uses
  %indvars.iv.next.i9.1 = add nuw nsw i64 %indvars.iv.i8, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i10.unr-lcssa, label %bb.u, !llvm.loop !52

._crit_edge.thread.sink.split.i:                  ; preds = %._crit_edge.i10
  %i.ew = trunc nuw i64 %.lcssa45 to i32
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %wide.trip.count.i
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !14
  %i.ey = add nuw nsw i32 %i.dq, 1
  store i32 %i.ey, ptr %0, align 4, !tbaa !47
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit: ; preds = %._crit_edge.thread.sink.split.i, %._crit_edge.i10, %bb.t, %bb.s, %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i, %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i, %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef i32 @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE17ReadFloatMantissaERKNS1_11ParsedFloatEi(ptr noundef nonnull align 4 dereferenceable(340) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !47     ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i:   ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = zext nneg i32 %i.a to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.d, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.c, i8 0, i64 %.idx.i.i.i, i1 false), !tbaa !14
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit: ; preds = %bb.a, %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i
  store i32 0, ptr %0, align 4, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit
  %i.h = load i64, ptr %1, align 8, !tbaa !31     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.h, ptr %i.i, align 4
  %.not = icmp ult i64 %i.h, 4294967296
  br i1 %.not, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %.not11 = icmp eq i64 %i.h, 0
  br i1 %.not11, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 2, %bb.b ], [ 1, %bb.c ]
  store i32 %.sink, ptr %0, align 4, !tbaa !47
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !32
  br label %bb.f

bb.e:                                             ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.n = tail call noundef i32 @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10ReadDigitsEPKcS5_i(ptr noundef nonnull align 4 dereferenceable(340) %0, ptr noundef nonnull %i.f, ptr noundef %i.m, i32 noundef %2)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34
  %i.q = add nsw i32 %i.p, %i.n
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.k, %bb.d ], [ %i.q, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv(ptr noundef nonnull align 4 dereferenceable(340) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !47     ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = zext nneg i32 %i.a to i64
  %.idx.i.i = shl nuw nsw i64 %i.d, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.c, i8 0, i64 %.idx.i.i, i1 false), !tbaa !14
  br label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit:              ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit, %bb.a
  store i32 0, ptr %0, align 4, !tbaa !47
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(340) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 5                           ; 8 uses
  %i.c = icmp samesign ugt i32 %1, 2687
  %i.d = load i32, ptr %0, align 4, !tbaa !47     ; 3 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i:   ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = zext nneg i32 %i.d to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.f, i8 0, i64 %.idx.i.i.i, i1 false), !tbaa !14
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit: ; preds = %bb.c, %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i
  store i32 0, ptr %0, align 4, !tbaa !47
  br label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = add nsw i32 %i.d, %i.b                   ; 3 uses
  %.sroa.speculated28 = tail call i32 @llvm.smin.i32(i32 %i.h, i32 84) ; 4 uses
  store i32 %.sroa.speculated28, ptr %0, align 4, !tbaa !47
  %i.i = and i32 %1, 31                           ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.l = sext i32 %.sroa.speculated28 to i64      ; 2 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %.idx = shl nsw i64 %i.l, 2
  %i.n = shl nuw nsw i32 %i.b, 2
  %i.o = zext nneg i32 %i.n to i64
  %i.p = sub nsw i64 %.idx, %i.o                  ; 3 uses
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.f, label %bb.g, !prof !23

bb.f:                                             ; preds = %bb.e
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.s
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.t, ptr nonnull align 4 %i.k, i64 %i.p, i1 false)
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit

bb.g:                                             ; preds = %bb.e
  %i.u = icmp eq i64 %i.p, 4
  br i1 %i.u, label %bb.h, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.w = load i32, ptr %i.k, align 4, !tbaa !14
  store i32 %i.w, ptr %i.v, align 4, !tbaa !14
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %bb.d
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.h, i32 83) ; 2 uses
  %i.x = icmp sgt i32 %.sroa.speculated, %i.b
  br i1 %i.x, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.i
  %.pre = zext nneg i32 %i.b to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.z = zext nneg i32 %.sroa.speculated to i64
  %i.aa = zext nneg i32 %i.b to i64               ; 2 uses
  %i.ab = zext nneg i32 %i.b to i64
  br label %bb.j

._crit_edge:                                      ; preds = %bb.j, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.aa, %bb.j ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !14
  %i.ae = shl i32 %i.ad, %i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.pre-phi
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !14
  %i.ag = icmp slt i32 %i.h, 84
  br i1 %i.ag, label %bb.k, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ %i.z, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.ah = sub nsw i64 %indvars.iv, %i.aa
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !14
  %i.ak = getelementptr i8, ptr %i.ai, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !14
  %i.am = tail call i32 @llvm.fshl.i32(i32 %i.aj, i32 %i.al, i32 %1)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  store i32 %i.am, ptr %i.an, align 4, !tbaa !14
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ao = icmp samesign ugt i64 %indvars.iv.next, %i.ab
  br i1 %i.ao, label %bb.j, label %._crit_edge, !llvm.loop !56

bb.k:                                             ; preds = %._crit_edge
  %i.ap = sext i32 %.sroa.speculated28 to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !14
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = add nsw i32 %.sroa.speculated28, 1
  store i32 %i.as, ptr %0, align 4, !tbaa !47
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit

_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.g, %bb.f, %._crit_edge, %bb.k, %bb.l
  %i.at = icmp eq i32 %i.b, 0
  br i1 %i.at, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit:     ; preds = %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.av = shl nuw nsw i32 %i.b, 2
  %.idx.i.i = zext nneg i32 %i.av to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.au, i8 0, i64 %.idx.i.i, i1 false), !tbaa !14
  br label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit:              ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit, %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj(ptr noundef nonnull align 4 dereferenceable(340) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !47     ; 9 uses
  %i.b = icmp eq i32 %i.a, 0
  %i.c = icmp eq i32 %1, 1
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %1, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %i.a, 1
  br i1 %i.e, label %._crit_edge.thread.sink.split, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i:   ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = zext nneg i32 %i.a to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.f, i8 0, i64 %.idx.i.i.i, i1 false), !tbaa !14
  br label %._crit_edge.thread.sink.split

bb.d:                                             ; preds = %bb.b
  %i.h = zext i32 %1 to i64                       ; 3 uses
  %i.i = icmp sgt i32 %i.a, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.k = icmp eq i32 %i.a, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.e

._crit_edge.unr-lcssa:                            ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.01418.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ah, %._crit_edge.unr-lcssa ]
  %lcmp.mod26 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.epil.init ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !14
  %i.n = zext i32 %i.m to i64
  %i.o = mul nuw i64 %i.n, %i.h
  %i.p = add nuw i64 %i.o, %.01418.epil.init      ; 2 uses
  %i.q = trunc i64 %i.p to i32
  store i32 %i.q, ptr %i.l, align 4, !tbaa !14
  %i.r = lshr i64 %i.p, 32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ah, %._crit_edge.unr-lcssa ], [ %i.r, %.epil.preheader ] ; 2 uses
  %.not = icmp ne i64 %.lcssa, 0
  %i.s = icmp samesign ult i32 %i.a, 84
  %or.cond17 = and i1 %i.s, %.not
  br i1 %or.cond17, label %bb.f, label %._crit_edge.thread

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.e ] ; 3 uses
  %.01418 = phi i64 [ 0, %.lr.ph.new ], [ %i.ah, %bb.e ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.e ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !14
  %i.v = zext i32 %i.u to i64
  %i.w = mul nuw i64 %i.v, %i.h
  %i.x = add nuw i64 %i.w, %.01418                ; 2 uses
  %i.y = trunc i64 %i.x to i32
  store i32 %i.y, ptr %i.t, align 4, !tbaa !14
  %i.z = lshr i64 %i.x, 32
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !14
  %i.ad = zext i32 %i.ac to i64
  %i.ae = mul nuw i64 %i.ad, %i.h
  %i.af = add nuw i64 %i.ae, %i.z                 ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  store i32 %i.ag, ptr %i.ab, align 4, !tbaa !14
  %i.ah = lshr i64 %i.af, 32                      ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.e, !llvm.loop !52

bb.f:                                             ; preds = %._crit_edge
  %i.ai = trunc nuw i64 %.lcssa to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ak = zext nneg i32 %i.a to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak
  store i32 %i.ai, ptr %i.al, align 4, !tbaa !14
  %i.am = load i32, ptr %0, align 4, !tbaa !47
  %i.an = add nsw i32 %i.am, 1
  br label %._crit_edge.thread.sink.split

._crit_edge.thread.sink.split:                    ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i, %bb.c, %bb.f
  %.sink = phi i32 [ %i.an, %bb.f ], [ 0, %bb.c ], [ 0, %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i ]
  store i32 %.sink, ptr %0, align 4, !tbaa !47
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge.thread.sink.split, %bb.d, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEm(ptr noundef nonnull align 4 dereferenceable(340) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = trunc i64 %1 to i32                      ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.c = icmp ult i64 %1, 4294967296
  %i.d = load i32, ptr %0, align 4, !tbaa !47     ; 12 uses
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %i.d, 0
  %i.f = icmp eq i32 %i.b, 1
  %or.cond.i = or i1 %i.f, %i.e
  br i1 %or.cond.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %i.b, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = icmp slt i32 %i.d, 1
  br i1 %i.h, label %._crit_edge.thread.sink.split.i, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = zext nneg i32 %i.d to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.j, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 0, i64 %.idx.i.i.i.i, i1 false), !tbaa !14
  br label %._crit_edge.thread.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.k = icmp sgt i32 %i.d, 0
  br i1 %i.k, label %.lr.ph.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.d to i64  ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.m = icmp eq i32 %i.d, 1
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.f

._crit_edge.i.unr-lcssa:                          ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi:bb.a
  %i.ae = add nuw nsw i32 %i.c, 1                 ; 2 uses
  store i32 %i.ae, ptr %0, align 4, !tbaa !47
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit: ; preds = %bb.b, %._crit_edge.i, %bb.d
  %i.af = phi i32 [ %i.c, %bb.b ], [ %i.c, %._crit_edge.i ], [ %i.ae, %bb.d ]
  %i.ag = add nsw i32 %.015, -13                  ; 2 uses
  %i.ah = icmp sgt i32 %.015, 25
  br i1 %i.ah, label %bb.b, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit, %bb.a
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.ag, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit ] ; 2 uses
  %i.ai = icmp sgt i32 %.0.lcssa, 0
  br i1 %i.ai, label %bb.e, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit13

bb.e:                                             ; preds = %._crit_edge
  %i.aj = load i32, ptr %0, align 4, !tbaa !47    ; 7 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit13, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = zext nneg i32 %.0.lcssa to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2026052616strings_internal10kFiveToNthE, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !14
  %i.ao = zext i32 %i.an to i64                   ; 3 uses
  %i.ap = icmp sgt i32 %i.aj, 0
  br i1 %i.ap, label %.lr.ph.i4, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit13

.lr.ph.i4:                                        ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %wide.trip.count.i5 = zext nneg i32 %i.aj to i64 ; 3 uses
  %xtraiter32 = and i64 %wide.trip.count.i5, 1
  %i.ar = icmp eq i32 %i.aj, 1
  br i1 %i.ar, label %.epil.preheader31, label %.lr.ph.i4.new

.lr.ph.i4.new:                                    ; preds = %.lr.ph.i4
  %unroll_iter36 = and i64 %wide.trip.count.i5, 2147483646
  br label %bb.g

._crit_edge.i10.unr-lcssa:                        ; preds = %bb.g
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %._crit_edge.i10, label %.epil.preheader31

.epil.preheader31:                                ; preds = %._crit_edge.i10.unr-lcssa, %.lr.ph.i4
  %indvars.iv.i6.epil.init = phi i64 [ 0, %.lr.ph.i4 ], [ %indvars.iv.next.i8.1, %._crit_edge.i10.unr-lcssa ]
  %.01418.i7.epil.init = phi i64 [ 0, %.lr.ph.i4 ], [ %i.bo, %._crit_edge.i10.unr-lcssa ]
  %lcmp.mod35 = trunc i32 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i6.epil.init ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !14
  %i.au = zext i32 %i.at to i64
  %i.av = mul nuw i64 %i.au, %i.ao
  %i.aw = add nuw i64 %i.av, %.01418.i7.epil.init ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  store i32 %i.ax, ptr %i.as, align 4, !tbaa !14
  %i.ay = lshr i64 %i.aw, 32
  br label %._crit_edge.i10

._crit_edge.i10:                                  ; preds = %._crit_edge.i10.unr-lcssa, %.epil.preheader31
  %.lcssa = phi i64 [ %i.bo, %._crit_edge.i10.unr-lcssa ], [ %i.ay, %.epil.preheader31 ] ; 2 uses
  %.not.i11 = icmp ne i64 %.lcssa, 0
  %i.az = icmp samesign ult i32 %i.aj, 84
  %or.cond17.i12 = and i1 %i.az, %.not.i11
  br i1 %or.cond17.i12, label %._crit_edge.thread.sink.split.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit13

bb.g:                                             ; preds = %bb.g, %.lr.ph.i4.new
  %indvars.iv.i6 = phi i64 [ 0, %.lr.ph.i4.new ], [ %indvars.iv.next.i8.1, %bb.g ] ; 3 uses
  %.01418.i7 = phi i64 [ 0, %.lr.ph.i4.new ], [ %i.bo, %bb.g ]
  %niter37 = phi i64 [ 0, %.lr.ph.i4.new ], [ %niter37.next.1, %bb.g ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i6 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !14
  %i.bc = zext i32 %i.bb to i64
  %i.bd = mul nuw i64 %i.bc, %i.ao
  %i.be = add nuw i64 %i.bd, %.01418.i7           ; 2 uses
  %i.bf = trunc i64 %i.be to i32
  store i32 %i.bf, ptr %i.ba, align 4, !tbaa !14
  %i.bg = lshr i64 %i.be, 32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i6
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !14
  %i.bk = zext i32 %i.bj to i64
  %i.bl = mul nuw i64 %i.bk, %i.ao
  %i.bm = add nuw i64 %i.bl, %i.bg                ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  store i32 %i.bn, ptr %i.bi, align 4, !tbaa !14
  %i.bo = lshr i64 %i.bm, 32                      ; 3 uses
  %indvars.iv.next.i8.1 = add nuw nsw i64 %indvars.iv.i6, 2 ; 2 uses
  %niter37.next.1 = add i64 %niter37, 2           ; 2 uses
  %niter37.ncmp.1 = icmp eq i64 %niter37.next.1, %unroll_iter36
  br i1 %niter37.ncmp.1, label %._crit_edge.i10.unr-lcssa, label %bb.g, !llvm.loop !52

._crit_edge.thread.sink.split.i:                  ; preds = %._crit_edge.i10
  %i.bp = trunc nuw i64 %.lcssa to i32
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %wide.trip.count.i5
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !14
  %i.br = add nuw nsw i32 %i.aj, 1
  store i32 %i.br, ptr %0, align 4, !tbaa !47
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit13

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit13: ; preds = %._crit_edge.thread.sink.split.i, %._crit_edge.i10, %bb.f, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12FiveToTheNthEi(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20260526::strings_internal::BigUnsigned.0") align 4 %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC1Em(ptr noundef nonnull align 4 dereferenceable(340) %0, i64 noundef 1)
  %i.a = icmp sgt i32 %1, 26
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEiPKj.exit
  %.023 = phi i32 [ %1, %.lr.ph ], [ %i.ck, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEiPKj.exit ] ; 2 uses
  %.01122 = phi i1 [ true, %.lr.ph ], [ false, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEiPKj.exit ]
  %i.c = udiv i32 %.023, 27
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.c, i32 20) ; 8 uses
  br i1 %.01122, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit, label %bb.c

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit:              ; preds = %bb.b
  %i.d = add nsw i32 %.sroa.speculated, -1
  %i.e = mul nuw nsw i32 %i.d, %.sroa.speculated
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2026052616strings_internal12_GLOBAL__N_118kLargePowersOfFiveE, i64 %i.f
  %i.h = shl nuw nsw i32 %.sroa.speculated, 1
  %i.i = shl nuw nsw i32 %.sroa.speculated, 3
  %.idx.i.i = zext nneg i32 %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.b, ptr nonnull align 4 %i.g, i64 %.idx.i.i, i1 false)
  store i32 %i.h, ptr %0, align 4, !tbaa !47
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEiPKj.exit

bb.c:                                             ; preds = %bb.b
  %i.j = shl nuw nsw i32 %.sroa.speculated, 1     ; 3 uses
  %i.k = add nsw i32 %.sroa.speculated, -1
  %i.l = mul nuw nsw i32 %i.k, %.sroa.speculated
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2026052616strings_internal12_GLOBAL__N_118kLargePowersOfFiveE, i64 %i.m
  %i.o = load i32, ptr %0, align 4, !tbaa !47     ; 2 uses
  %i.p = add nsw i32 %i.o, %i.j                   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %select.unfold.preheader.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEiPKj.exit

select.unfold.preheader.i:                        ; preds = %bb.c
  %i.r = add nsw i32 %i.o, -1
  %i.s = tail call i32 @llvm.umin.i32(i32 %i.p, i32 85)
  %umin = zext nneg i32 %i.s to i64
  %i.t = add nsw i64 %umin, -2
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12MultiplyStepEiPKjii.exit, %select.unfold.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12MultiplyStepEiPKjii.exit ], [ %i.t, %select.unfold.preheader.i ] ; 13 uses
  %i.u = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.r) ; 3 uses
  %i.v = sub i32 %i.u, %.sroa.speculated.i        ; 2 uses
  %i.w = icmp sgt i32 %.sroa.speculated.i, -1
  %i.x = icmp slt i32 %i.v, %i.j
  %i.y = and i1 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i12, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12AddWithCarryEim.exit.thread.i

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12AddWithCarryEim.exit.thread.i: ; preds = %select.unfold.i
  %i.z = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 0, ptr %i.z, align 4, !tbaa !14
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12MultiplyStepEiPKjii.exit

.lr.ph.i12:                                       ; preds = %select.unfold.i
  %i.aa = zext nneg i32 %.sroa.speculated.i to i64
  %i.ab = zext i32 %i.v to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i12
  %indvars.iv37.i = phi i64 [ %i.ab, %.lr.ph.i12 ], [ %indvars.iv.next38.i, %bb.d ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.aa, %.lr.ph.i12 ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.01933.i = phi i64 [ 0, %.lr.ph.i12 ], [ %i.al, %bb.d ]
  %.02032.i = phi i64 [ 0, %.lr.ph.i12 ], [ %i.am, %bb.d ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !14
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv37.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !14
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul nuw i64 %i.ah, %i.ae
  %i.aj = add nuw i64 %i.ai, %.02032.i            ; 3 uses
  %i.ak = lshr i64 %i.aj, 32
  %i.al = add i64 %i.ak, %.01933.i                ; 4 uses
  %i.am = and i64 %i.aj, 4294967295               ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %i.an = icmp ne i64 %indvars.iv.i, 0
  %i.ao = trunc nuw i64 %indvars.iv.next38.i to i32
  %i.ap = icmp sgt i32 %i.j, %i.ao
  %i.aq = select i1 %i.an, i1 %i.ap, i1 false
  br i1 %i.aq, label %bb.d, label %._crit_edge.i13, !llvm.loop !58

._crit_edge.i13:                                  ; preds = %bb.d
  %i.ar = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.as = icmp ne i64 %i.al, 0
  %i.at = icmp slt i64 %indvars.iv, 83
  %or.cond.i.i = and i1 %i.at, %i.as
  br i1 %or.cond.i.i, label %bb.e, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12AddWithCarryEim.exit.i

bb.e:                                             ; preds = %._crit_edge.i13
  %i.au = lshr i64 %i.al, 32                      ; 2 uses
  %i.av = trunc nuw i64 %i.au to i32              ; 2 uses
  %i.aw = trunc i64 %i.al to i32                  ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ar ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !14
  %i.az = add i32 %i.ay, %i.aw                    ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !14
  %i.ba = icmp ult i32 %i.az, %i.aw
  br i1 %i.ba, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bb = add i32 %i.av, 1                        ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %.preheader.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.bd = icmp slt i64 %indvars.iv, 81
  %i.be = trunc i64 %indvars.iv to i32
  %i.bf = add i32 %i.be, 3                        ; 2 uses
  br i1 %i.bd, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.017.i.i.i = phi i32 [ %i.bl, %.lr.ph.i.i.i ], [ 1, %bb.g ] ; 2 uses
  %.0916.i.i.i = phi i32 [ %.110.i.i.i, %.lr.ph.i.i.i ], [ %i.bf, %bb.g ] ; 2 uses
  %i.bg = sext i32 %.0916.i.i.i to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !14
  %i.bj = add i32 %i.bi, %.017.i.i.i              ; 2 uses
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !14
  %i.bk = icmp ugt i32 %.017.i.i.i, %i.bj         ; 2 uses
  %i.bl = zext i1 %i.bk to i32                    ; 2 uses
  %.110.i.i.i = add nsw i32 %.0916.i.i.i, %i.bl   ; 3 uses
  %i.bm = icmp slt i32 %.110.i.i.i, 84
  %i.bn = and i1 %i.bk, %i.bm
  br i1 %i.bn, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit.i.i, !llvm.loop !53

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.g
  %.09.lcssa.i.i.i = phi i32 [ %i.bf, %bb.g ], [ %.110.i.i.i, %.lr.ph.i.i.i ]
  %i.bo = add nsw i32 %.09.lcssa.i.i.i, 1
  br label %.sink.split.i.i

bb.h:                                             ; preds = %bb.e
  %.not.i.i15 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i15, label %bb.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.h, %bb.f
  %.031.i.i = phi i32 [ %i.av, %bb.h ], [ %i.bb, %bb.f ]
  %i.bp = icmp slt i64 %indvars.iv, 82
  br i1 %i.bp, label %.lr.ph.i21.preheader.i.i, label %.sink.split.i.i

.lr.ph.i21.preheader.i.i:                         ; preds = %.preheader.i.i.i
  %i.bq = trunc i64 %indvars.iv to i32
  %i.br = add i32 %i.bq, 2
  br label %.lr.ph.i21.i.i

.lr.ph.i21.i.i:                                   ; preds = %.lr.ph.i21.i.i, %.lr.ph.i21.preheader.i.i
  %.017.i22.i.i = phi i32 [ %i.bx, %.lr.ph.i21.i.i ], [ %.031.i.i, %.lr.ph.i21.preheader.i.i ] ; 2 uses
  %.0916.i23.i.i = phi i32 [ %.110.i24.i.i, %.lr.ph.i21.i.i ], [ %i.br, %.lr.ph.i21.preheader.i.i ] ; 2 uses
  %i.bs = sext i32 %.0916.i23.i.i to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !14
  %i.bv = add i32 %i.bu, %.017.i22.i.i            ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !14
  %i.bw = icmp ugt i32 %.017.i22.i.i, %i.bv       ; 2 uses
  %i.bx = zext i1 %i.bw to i32                    ; 2 uses
  %.110.i24.i.i = add nsw i32 %.0916.i23.i.i, %i.bx ; 3 uses
  %i.by = icmp slt i32 %.110.i24.i.i, 84
  %i.bz = and i1 %i.bw, %i.by
  br i1 %i.bz, label %.lr.ph.i21.i.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit25.loopexit.i.i, !llvm.loop !53

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit25.loopexit.i.i: ; preds = %.lr.ph.i21.i.i
  %i.ca = add nsw i32 %.110.i24.i.i, 1
  br label %.sink.split.i.i

bb.i:                                             ; preds = %bb.h
  %i.cb = trunc i64 %indvars.iv to i32
  %i.cc = add i32 %i.cb, 2
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.i, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit25.loopexit.i.i, %.preheader.i.i.i, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit.i.i
  %.sink35.i.i = phi i32 [ %i.bo, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit.i.i ], [ %i.cc, %bb.i ], [ 85, %.preheader.i.i.i ], [ %i.ca, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit25.loopexit.i.i ]
  %i.cd = load i32, ptr %0, align 4, !tbaa !14
  %i.ce = tail call i32 @llvm.smax.i32(i32 %.sink35.i.i, i32 %i.cd)
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ce, i32 84)
  store i32 %.sroa.speculated.i.i.i, ptr %0, align 4, !tbaa !47
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12AddWithCarryEim.exit.i

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12AddWithCarryEim.exit.i: ; preds = %.sink.split.i.i, %._crit_edge.i13
  %i.cf = trunc i64 %i.aj to i32
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !14
  %.not.i14 = icmp eq i64 %i.am, 0
  %2 = load i32, ptr %0, align 4
  %i.ch = sext i32 %2 to i64
  %.not23.i = icmp slt i64 %indvars.iv, %i.ch
  %or.cond = select i1 %.not.i14, i1 true, i1 %.not23.i
  br i1 %or.cond, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12MultiplyStepEiPKjii.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12AddWithCarryEim.exit.i
  %i.ci = trunc nsw i64 %i.ar to i32
  store i32 %i.ci, ptr %0, align 4, !tbaa !47
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12MultiplyStepEiPKjii.exit

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12MultiplyStepEiPKjii.exit: ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12AddWithCarryEim.exit.thread.i, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12AddWithCarryEim.exit.i, %bb.j
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.cj = icmp eq i64 %indvars.iv, 0
  br i1 %i.cj, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEiPKj.exit, label %select.unfold.i, !llvm.loop !57

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEiPKj.exit: ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12MultiplyStepEiPKjii.exit, %bb.c, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit
  %.neg = mul nsw i32 %.sroa.speculated, -27
  %i.ck = add nsw i32 %.neg, %.023                ; 3 uses
  %i.cl = icmp sgt i32 %i.ck, 26
  br i1 %i.cl, label %bb.b, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEiPKj.exit, %bb.a
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.ck, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEiPKj.exit ] ; 3 uses
  %i.cm = icmp sgt i32 %.0.lcssa, 12
  br i1 %i.cm, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %.promoted.i = load i32, ptr %0, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.i, %.lr.ph.i
  %.015.i = phi i32 [ %.0.lcssa, %.lr.ph.i ], [ %i.ds, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.i ] ; 2 uses
  %i.co = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.dr, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.i ] ; 8 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph.i.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %wide.trip.count.i.i = zext nneg i32 %i.co to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.cq = icmp eq i32 %i.co, 1
  br i1 %i.cq, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.l

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.unr-lcssa ]
  %.01418.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dn, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod61 = trunc i32 %i.co to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !14
  %i.ct = zext i32 %i.cs to i64
  %i.cu = mul nuw nsw i64 %i.ct, 1220703125
  %i.cv = add nuw nsw i64 %i.cu, %.01418.i.i.epil.init ; 2 uses
  %i.cw = trunc i64 %i.cv to i32
  store i32 %i.cw, ptr %i.cr, align 4, !tbaa !14
  %i.cx = lshr i64 %i.cv, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa54 = phi i64 [ %i.dn, %._crit_edge.i.i.unr-lcssa ], [ %i.cx, %.epil.preheader ] ; 2 uses
  %.not.i.i = icmp ne i64 %.lcssa54, 0
  %i.cy = icmp samesign ult i32 %i.co, 84
  %or.cond17.i.i = and i1 %i.cy, %.not.i.i
  br i1 %or.cond17.i.i, label %bb.m, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.i

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.l ] ; 3 uses
  %.01418.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.dn, %bb.l ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.l ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i.i ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !14
  %i.db = zext i32 %i.da to i64
  %i.dc = mul nuw nsw i64 %i.db, 1220703125
  %i.dd = add nuw nsw i64 %i.dc, %.01418.i.i      ; 2 uses
  %i.de = trunc i64 %i.dd to i32
  store i32 %i.de, ptr %i.cz, align 4, !tbaa !14
  %i.df = lshr i64 %i.dd, 32
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !14
  %i.dj = zext i32 %i.di to i64
  %i.dk = mul nuw nsw i64 %i.dj, 1220703125
  %i.dl = add nuw nsw i64 %i.dk, %i.df            ; 2 uses
  %i.dm = trunc i64 %i.dl to i32
  store i32 %i.dm, ptr %i.dh, align 4, !tbaa !14
  %i.dn = lshr i64 %i.dl, 32                      ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.l, !llvm.loop !52

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.do = trunc nuw nsw i64 %.lcssa54 to i32
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %wide.trip.count.i.i
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !14
  %i.dq = add nuw nsw i32 %i.co, 1                ; 2 uses
  store i32 %i.dq, ptr %0, align 4, !tbaa !47
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.i

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.i: ; preds = %bb.m, %._crit_edge.i.i, %bb.k
  %i.dr = phi i32 [ %i.co, %bb.k ], [ %i.co, %._crit_edge.i.i ], [ %i.dq, %bb.m ]
  %i.ds = add nsw i32 %.015.i, -13                ; 2 uses
  %i.dt = icmp sgt i32 %.015.i, 25
  br i1 %i.dt, label %bb.k, label %._crit_edge.i, !llvm.loop !55

._crit_edge.i:                                    ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.i, %._crit_edge
  %.0.lcssa.i = phi i32 [ %.0.lcssa, %._crit_edge ], [ %i.ds, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.i ] ; 2 uses
  %i.du = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.du, label %bb.n, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.dv = load i32, ptr %0, align 4, !tbaa !47    ; 7 uses
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dx = zext nneg i32 %.0.lcssa.i to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2026052616strings_internal10kFiveToNthE, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !14
  %i.ea = zext i32 %i.dz to i64                   ; 3 uses
  %i.eb = icmp sgt i32 %i.dv, 0
  br i1 %i.eb, label %.lr.ph.i4.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi.exit

.lr.ph.i4.i:                                      ; preds = %bb.o
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %wide.trip.count.i5.i = zext nneg i32 %i.dv to i64 ; 3 uses
  %xtraiter63 = and i64 %wide.trip.count.i5.i, 1
  %i.ed = icmp eq i32 %i.dv, 1
  br i1 %i.ed, label %.epil.preheader62, label %.lr.ph.i4.i.new

.lr.ph.i4.i.new:                                  ; preds = %.lr.ph.i4.i
  %unroll_iter67 = and i64 %wide.trip.count.i5.i, 2147483646
  br label %bb.p

._crit_edge.i10.i.unr-lcssa:                      ; preds = %bb.p
  %lcmp.mod64.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64.not, label %._crit_edge.i10.i, label %.epil.preheader62

.epil.preheader62:                                ; preds = %._crit_edge.i10.i.unr-lcssa, %.lr.ph.i4.i
  %indvars.iv.i6.i.epil.init = phi i64 [ 0, %.lr.ph.i4.i ], [ %indvars.iv.next.i8.i.1, %._crit_edge.i10.i.unr-lcssa ]
  %.01418.i7.i.epil.init = phi i64 [ 0, %.lr.ph.i4.i ], [ %i.fa, %._crit_edge.i10.i.unr-lcssa ]
  %lcmp.mod66 = trunc i32 %i.dv to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.i6.i.epil.init ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !14
  %i.eg = zext i32 %i.ef to i64
  %i.eh = mul nuw i64 %i.eg, %i.ea
  %i.ei = add nuw i64 %i.eh, %.01418.i7.i.epil.init ; 2 uses
  %i.ej = trunc i64 %i.ei to i32
  store i32 %i.ej, ptr %i.ee, align 4, !tbaa !14
  %i.ek = lshr i64 %i.ei, 32
  br label %._crit_edge.i10.i

._crit_edge.i10.i:                                ; preds = %._crit_edge.i10.i.unr-lcssa, %.epil.preheader62
  %.lcssa = phi i64 [ %i.fa, %._crit_edge.i10.i.unr-lcssa ], [ %i.ek, %.epil.preheader62 ] ; 2 uses
  %.not.i11.i = icmp ne i64 %.lcssa, 0
  %i.el = icmp samesign ult i32 %i.dv, 84
  %or.cond17.i12.i = and i1 %i.el, %.not.i11.i
  br i1 %or.cond17.i12.i, label %._crit_edge.thread.sink.split.i.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi.exit

bb.p:                                             ; preds = %bb.p, %.lr.ph.i4.i.new
  %indvars.iv.i6.i = phi i64 [ 0, %.lr.ph.i4.i.new ], [ %indvars.iv.next.i8.i.1, %bb.p ] ; 3 uses
  %.01418.i7.i = phi i64 [ 0, %.lr.ph.i4.i.new ], [ %i.fa, %bb.p ]
  %niter68 = phi i64 [ 0, %.lr.ph.i4.i.new ], [ %niter68.next.1, %bb.p ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.i6.i ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !14
  %i.eo = zext i32 %i.en to i64
  %i.ep = mul nuw i64 %i.eo, %i.ea
  %i.eq = add nuw i64 %i.ep, %.01418.i7.i         ; 2 uses
  %i.er = trunc i64 %i.eq to i32
  store i32 %i.er, ptr %i.em, align 4, !tbaa !14
  %i.es = lshr i64 %i.eq, 32
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.i6.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !14
  %i.ew = zext i32 %i.ev to i64
  %i.ex = mul nuw i64 %i.ew, %i.ea
  %i.ey = add nuw i64 %i.ex, %i.es                ; 2 uses
  %i.ez = trunc i64 %i.ey to i32
  store i32 %i.ez, ptr %i.eu, align 4, !tbaa !14
  %i.fa = lshr i64 %i.ey, 32                      ; 3 uses
  %indvars.iv.next.i8.i.1 = add nuw nsw i64 %indvars.iv.i6.i, 2 ; 2 uses
  %niter68.next.1 = add i64 %niter68, 2           ; 2 uses
  %niter68.ncmp.1 = icmp eq i64 %niter68.next.1, %unroll_iter67
  br i1 %niter68.ncmp.1, label %._crit_edge.i10.i.unr-lcssa, label %bb.p, !llvm.loop !52

._crit_edge.thread.sink.split.i.i:                ; preds = %._crit_edge.i10.i
  %i.fb = trunc nuw i64 %.lcssa to i32
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %wide.trip.count.i5.i
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !14
  %i.fd = add nuw nsw i32 %i.dv, 1
  store i32 %i.fd, ptr %0, align 4, !tbaa !47
end_hunk_3
