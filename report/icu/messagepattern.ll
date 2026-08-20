inline.NumInlined: 271
inline.NumDeleted: 70
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK6icu_7814MessagePatterneqERKS0_:bb.a
  %i.v = icmp slt i16 %i.u, 0
  %i.w = ashr i16 %i.u, 5
  %i.x = sext i16 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = select i1 %i.v, i32 %i.z, i32 %i.x
  %i.ab = and i16 %i.u, 1
  %.not9.i = icmp eq i16 %i.ab, 0
  %i.ac = icmp eq i32 %i.s, %i.aa
  %or.cond.i = and i1 %.not9.i, %i.ac
  br i1 %or.cond.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

_ZNK6icu_7813UnicodeStringeqERKS0_.exit:          ; preds = %bb.d
  %i.ad = and i16 %i.u, 2
  %.not.i.i.i = icmp eq i16 %i.ad, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = select i1 %.not.i.i.i, ptr %i.ag, ptr %i.ae
  %i.ai = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef %i.ah, i32 noundef %i.s)
  %.not = icmp eq i8 %i.ai, 0
  br i1 %.not, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread, label %bb.e

bb.e:                                             ; preds = %.split, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !34 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.am = load i32, ptr %i.al, align 8, !tbaa !34
  %i.an = icmp eq i32 %i.ak, %i.am
  br i1 %i.an, label %bb.f, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ao = icmp sgt i32 %i.ak, 0
  br i1 %i.ao, label %.lr.ph.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

.lr.ph.i:                                         ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !25 ; 2 uses
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !25 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %i.ak to i64
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_ZNK6icu_7814MessagePattern4PartneERKS1_.exit.thread11.i, %.lr.ph.split.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i, %_ZNK6icu_7814MessagePattern4PartneERKS1_.exit.thread11.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %indvars.iv.i ; 5 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %indvars.iv.i ; 5 uses
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !46
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !46
  %i.ba = icmp eq i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.g, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

bb.g:                                             ; preds = %.lr.ph.split.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !50
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !50
  %i.bf = icmp eq i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.h, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bh = load i16, ptr %i.bg, align 4, !tbaa !51
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bj = load i16, ptr %i.bi, align 4, !tbaa !51
  %i.bk = icmp eq i16 %i.bh, %i.bj
  br i1 %i.bk, label %bb.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 10
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !52
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 10
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !52
  %i.bp = icmp eq i16 %i.bm, %i.bo
  br i1 %i.bp, label %_ZNK6icu_7814MessagePattern4PartneERKS1_.exit.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

_ZNK6icu_7814MessagePattern4PartneERKS1_.exit.i:  ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !53
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !53
  %.not.i10 = icmp eq i32 %i.br, %i.bt
  br i1 %.not.i10, label %_ZNK6icu_7814MessagePattern4PartneERKS1_.exit.thread11.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

_ZNK6icu_7814MessagePattern4PartneERKS1_.exit.thread11.i: ; preds = %_ZNK6icu_7814MessagePattern4PartneERKS1_.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread, label %.lr.ph.split.i, !llvm.loop !60

_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread:   ; preds = %_ZNK6icu_7814MessagePattern4PartneERKS1_.exit.thread11.i, %_ZNK6icu_7814MessagePattern4PartneERKS1_.exit.i, %bb.i, %bb.h, %bb.g, %.lr.ph.split.i, %.lr.ph.i, %bb.d, %.split, %bb.b, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit, %bb.e, %bb.f, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ false, %bb.e ], [ false, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit ], [ false, %bb.b ], [ true, %bb.f ], [ false, %bb.d ], [ false, %.split ], [ true, %.lr.ph.i ], [ false, %.lr.ph.split.i ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ false, %_ZNK6icu_7814MessagePattern4PartneERKS1_.exit.i ], [ true, %_ZNK6icu_7814MessagePattern4PartneERKS1_.exit.thread11.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7814MessagePattern8hashCodeEv(ptr noundef nonnull align 8 dereferenceable(127) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10
  %i.c = mul nsw i32 %i.b, 37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = tail call noundef i32 @_ZNK6icu_7813UnicodeString10doHashCodeEv(ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  %i.f = add nsw i32 %i.c, %i.e
  %i.g = mul nsw i32 %i.f, 37
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load i32, ptr %i.h, align 8, !tbaa !34   ; 5 uses
  %i.j = add nsw i32 %i.g, %i.i                   ; 3 uses
  %i.k = icmp sgt i32 %i.i, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.n = icmp eq i32 %i.i, 1
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.056.epil.init = phi i32 [ %i.j, %.lr.ph ], [ %i.bh, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod10 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv.epil.init ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !46
  %i.q = mul nsw i32 %i.p, 37
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !50
  %i.t = add nsw i32 %i.q, %i.s
  %i.u = mul nsw i32 %i.t, 37
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = load i16, ptr %i.v, align 4, !tbaa !51
  %i.x = zext i16 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  %i.z = load i16, ptr %i.y, align 2, !tbaa !52
  %i.aa = sext i16 %i.z to i32
  %i.ab = add i32 %.056.epil.init, %i.x
  %reass.add.epil = add i32 %i.ab, %i.u
  %reass.mul.epil = mul i32 %reass.add.epil, 37
  %i.ac = add i32 %reass.mul.epil, %i.aa
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.05.lcssa = phi i32 [ %i.j, %bb.a ], [ %i.bh, %._crit_edge.loopexit.unr-lcssa ], [ %i.ac, %.epil.preheader ]
  ret i32 %.05.lcssa

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.056 = phi i32 [ %i.j, %.lr.ph.new ], [ %i.bh, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !46
  %i.af = mul nsw i32 %i.ae, 37
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !50
  %i.ai = add nsw i32 %i.af, %i.ah
  %i.aj = mul nsw i32 %i.ai, 37
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.al = load i16, ptr %i.ak, align 4, !tbaa !51
  %i.am = zext i16 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 10
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !52
  %i.ap = sext i16 %i.ao to i32
  %i.aq = add i32 %.056, %i.am
  %reass.add = add i32 %i.aq, %i.aj
  %reass.mul = mul i32 %reass.add, 37
  %i.ar = add i32 %reass.mul, %i.ap
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i32, ptr %i.at, align 4, !tbaa !46
  %i.av = mul nsw i32 %i.au, 37
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !50
  %i.ay = add nsw i32 %i.av, %i.ax
  %i.az = mul nsw i32 %i.ay, 37
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !51
  %i.bc = zext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 26
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !52
  %i.bf = sext i16 %i.be to i32
  %i.bg = add i32 %i.ar, %i.bc
  %reass.add.1 = add i32 %i.bg, %i.az
  %reass.mul.1 = mul i32 %reass.add.1, 37
  %i.bh = add i32 %reass.mul.1, %i.bf             ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !61
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7814MessagePattern20validateArgumentNameERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !21   ; 4 uses
  %i.c = and i16 %i.b, 17
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = and i16 %i.b, 2
  %.not2.i = icmp eq i16 %i.d, 0
  br i1 %.not2.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.g, %bb.d ], [ %i.e, %bb.c ], [ null, %bb.a ]
  %i.h = icmp slt i16 %i.b, 0
  %i.i = ashr i16 %i.b, 5
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = select i1 %i.h, i32 %i.l, i32 %i.j
  %i.n = tail call noundef signext i8 @_ZN6icu_7812PatternProps12isIdentifierEPKDsi(ptr noundef %.0.i, i32 noundef %i.m)
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  %i.o = load i16, ptr %i.a, align 8, !tbaa !21
  %.fr53.i = freeze i16 %i.o                      ; 4 uses
  %i.p = icmp slt i16 %.fr53.i, 0                 ; 2 uses
  %i.q = lshr i16 %.fr53.i, 5
  %i.r = zext nneg i16 %i.q to i32
  %i.s = load i32, ptr %i.k, align 4              ; 2 uses
  %i.t = select i1 %i.p, i32 %i.s, i32 %i.r       ; 5 uses
  %.not.i4 = icmp sgt i32 %i.t, 0
  br i1 %.not.i4, label %bb.f, label %_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit

bb.f:                                             ; preds = %bb.e
  %i.u = lshr i16 %.fr53.i, 5
  %i.v = zext nneg i16 %i.u to i32
  %i.w = select i1 %i.p, i32 %i.s, i32 %i.v       ; 2 uses
  %.not6 = icmp eq i32 %i.w, 0
  br i1 %.not6, label %_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %bb.f
  %i.x = and i16 %.fr53.i, 2
  %.not.i.i.i.i = icmp eq i16 %i.x, 0             ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = select i1 %.not.i.i.i.i, ptr %i.aa, ptr %i.y
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !32 ; 3 uses
  %i.ad = zext nneg i16 %i.ac to i32
  %i.ae = icmp eq i16 %i.ac, 48
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %i.af = icmp eq i32 %i.t, 1
  br i1 %i.af, label %_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit, label %.lr.ph.i

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %i.ag = add i16 %i.ac, -49
  %or.cond.i = icmp ult i16 %i.ag, 9
  br i1 %or.cond.i, label %bb.i, label %_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = add nsw i32 %i.ad, -48                  ; 2 uses
  %.not7 = icmp eq i32 %i.t, 1
  br i1 %.not7, label %_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %.0.i525 = phi i8 [ 0, %bb.i ], [ 1, %bb.g ]    ; 2 uses
  %.026.i24 = phi i32 [ %i.ah, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %wide.trip.count14 = zext i32 %i.w to i64       ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.j
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %bb.j ], [ 1, %.lr.ph.i ] ; 3 uses
  %.150.us.i = phi i8 [ %.2.us.i, %bb.j ], [ %.0.i525, %.lr.ph.i ]
  %.12749.us.i = phi i32 [ %.228.us.i, %bb.j ], [ %.026.i24, %.lr.ph.i ] ; 3 uses
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond15.not = icmp eq i64 %indvars.iv56.i, %wide.trip.count14
  br i1 %exitcond15.not, label %_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit39.us.i

_ZNK6icu_7813UnicodeString6charAtEi.exit39.us.i:  ; preds = %.lr.ph.split.us.i
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv56.i
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !32 ; 2 uses
  %i.ak = add i16 %i.aj, -48
  %or.cond5.us.i = icmp ult i16 %i.ak, 10
  br i1 %or.cond5.us.i, label %bb.j, label %_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit

bb.j:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit39.us.i
  %i.al = zext nneg i16 %i.aj to i32
  %i.am = icmp sgt i32 %.12749.us.i, 214748363    ; 2 uses
  %i.an = mul nsw i32 %.12749.us.i, 10
  %i.ao = add i32 %i.an, -48
  %i.ap = add i32 %i.ao, %i.al
  %.228.us.i = select i1 %i.am, i32 %.12749.us.i, i32 %i.ap ; 2 uses
  %.2.us.i = select i1 %i.am, i8 1, i8 %.150.us.i ; 2 uses
  %lftr.wideiv16 = trunc i64 %indvars.iv.next57.i to i32
  %exitcond17 = icmp eq i32 %i.t, %lftr.wideiv16
  br i1 %exitcond17, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !62

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 1, %.lr.ph.i ] ; 3 uses
  %.150.i = phi i8 [ %.2.i, %bb.k ], [ %.0.i525, %.lr.ph.i ]
  %.12749.i = phi i32 [ %.228.i, %bb.k ], [ %.026.i24, %.lr.ph.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.i, %wide.trip.count14
  br i1 %exitcond.not, label %_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit39.i

_ZNK6icu_7813UnicodeString6charAtEi.exit39.i:     ; preds = %.lr.ph.split.i
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !32 ; 2 uses
  %i.as = add i16 %i.ar, -48
  %or.cond5.i = icmp ult i16 %i.as, 10
  br i1 %or.cond5.i, label %bb.k, label %_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit

bb.k:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit39.i
  %i.at = zext nneg i16 %i.ar to i32
  %i.au = icmp sgt i32 %.12749.i, 214748363       ; 2 uses
  %i.av = mul nsw i32 %.12749.i, 10
  %i.aw = add i32 %i.av, -48
  %i.ax = add i32 %i.aw, %i.at
  %.228.i = select i1 %i.au, i32 %.12749.i, i32 %i.ax ; 2 uses
  %.2.i = select i1 %i.au, i8 1, i8 %.150.i       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond12 = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond12, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !62

._crit_edge.i:                                    ; preds = %bb.k, %bb.j
  %.127.lcssa.i = phi i32 [ %.228.us.i, %bb.j ], [ %.228.i, %bb.k ]
  %.1.lcssa.i = phi i8 [ %.2.us.i, %bb.j ], [ %.2.i, %bb.k ]
  %.1.lcssa.i.fr = freeze i8 %.1.lcssa.i
  %.not36.i = icmp eq i8 %.1.lcssa.i.fr, 0
  %spec.select = select i1 %.not36.i, i32 %.127.lcssa.i, i32 -2
  br label %_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit

_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii.exit: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit39.i, %.lr.ph.split.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit39.us.i, %.lr.ph.split.us.i, %._crit_edge.i, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  %.0 = phi i32 [ -2, %_ZNK6icu_7813UnicodeString9getBufferEv.exit ], [ -2, %bb.e ], [ 0, %bb.g ], [ -1, %bb.h ], [ %i.ah, %bb.i ], [ -1, %bb.f ], [ %spec.select, %._crit_edge.i ], [ -1, %_ZNK6icu_7813UnicodeString6charAtEi.exit39.us.i ], [ -1, %.lr.ph.split.us.i ], [ -1, %.lr.ph.split.i ], [ -1, %_ZNK6icu_7813UnicodeString6charAtEi.exit39.i ]
  ret i32 %.0
}

declare noundef signext i8 @_ZN6icu_7812PatternProps12isIdentifierEPKDsi(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN6icu_7814MessagePattern14parseArgNumberERKNS_13UnicodeStringEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %.not = icmp slt i32 %1, %2
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = add nuw nsw i32 %1, 1                    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !21
  %.fr53 = freeze i16 %i.c                        ; 3 uses
  %i.d = icmp slt i16 %.fr53, 0
  %i.e = lshr i16 %.fr53, 5
  %i.f = zext nneg i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %i.i = select i1 %i.d, i32 %i.h, i32 %i.f       ; 3 uses
  %i.j = icmp ult i32 %1, %i.i
  br i1 %i.j, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.b
  %i.k = and i16 %.fr53, 2
  %.not.i.i.i = icmp eq i16 %i.k, 0               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = select i1 %.not.i.i.i, ptr %i.n, ptr %i.l
  %i.p = sext i32 %1 to i64
  %i.q = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !32   ; 3 uses
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp eq i16 %i.r, 48
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.u = icmp eq i32 %i.a, %2
  br i1 %i.u, label %.thread, label %bb.f

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.v = add i16 %i.r, -49
  %or.cond = icmp ult i16 %i.v, 9
  br i1 %or.cond, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.s, -48
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.026 = phi i32 [ %i.w, %bb.e ], [ 0, %bb.c ]   ; 3 uses
  %.0 = phi i8 [ 0, %bb.e ], [ 1, %bb.c ]         ; 3 uses
  %i.x = icmp slt i32 %i.a, %2
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.y = sext i32 %i.a to i64                     ; 2 uses
  br i1 %.not.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %bb.g ], [ %i.y, %.lr.ph ] ; 3 uses
  %.150.us = phi i8 [ %.2.us, %bb.g ], [ %.0, %.lr.ph ]
  %.12749.us = phi i32 [ %.228.us, %bb.g ], [ %.026, %.lr.ph ] ; 3 uses
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, 1 ; 2 uses
  %i.z = trunc nsw i64 %indvars.iv56 to i32
  %i.aa = icmp ugt i32 %i.i, %i.z
  br i1 %i.aa, label %_ZNK6icu_7813UnicodeString6charAtEi.exit39.us, label %.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit39.us:    ; preds = %.lr.ph.split.us
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.n, i64 %indvars.iv56
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !32 ; 2 uses
  %i.ad = add i16 %i.ac, -48
  %or.cond5.us = icmp ult i16 %i.ad, 10
  br i1 %or.cond5.us, label %bb.g, label %.thread

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit39.us
  %i.ae = zext nneg i16 %i.ac to i32
  %i.af = icmp sgt i32 %.12749.us, 214748363      ; 2 uses
  %i.ag = mul nsw i32 %.12749.us, 10
  %i.ah = add i32 %i.ag, -48
  %i.ai = add i32 %i.ah, %i.ae
  %.228.us = select i1 %i.af, i32 %.12749.us, i32 %i.ai ; 2 uses
  %.2.us = select i1 %i.af, i8 1, i8 %.150.us     ; 2 uses
  %lftr.wideiv58 = trunc i64 %indvars.iv.next57 to i32
  %exitcond59.not = icmp eq i32 %2, %lftr.wideiv58
  br i1 %exitcond59.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !62

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ %i.y, %.lr.ph ] ; 3 uses
  %.150 = phi i8 [ %.2, %bb.h ], [ %.0, %.lr.ph ]
  %.12749 = phi i32 [ %.228, %bb.h ], [ %.026, %.lr.ph ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aj = trunc nsw i64 %indvars.iv to i32
  %i.ak = icmp ugt i32 %i.i, %i.aj
  br i1 %i.ak, label %_ZNK6icu_7813UnicodeString6charAtEi.exit39, label %.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit39:       ; preds = %.lr.ph.split
  %i.al = getelementptr inbounds [2 x i8], ptr %i.l, i64 %indvars.iv
  %i.am = load i16, ptr %i.al, align 2, !tbaa !32 ; 2 uses
  %i.an = add i16 %i.am, -48
  %or.cond5 = icmp ult i16 %i.an, 10
  br i1 %or.cond5, label %bb.h, label %.thread

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit39
  %i.ao = zext nneg i16 %i.am to i32
  %i.ap = icmp sgt i32 %.12749, 214748363         ; 2 uses
  %i.aq = mul nsw i32 %.12749, 10
  %i.ar = add i32 %i.aq, -48
  %i.as = add i32 %i.ar, %i.ao
  %.228 = select i1 %i.ap, i32 %.12749, i32 %i.as ; 2 uses
  %.2 = select i1 %i.ap, i8 1, i8 %.150           ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.h, %bb.g, %bb.f
  %.127.lcssa = phi i32 [ %.026, %bb.f ], [ %.228.us, %bb.g ], [ %.228, %bb.h ]
  %.1.lcssa = phi i8 [ %.0, %bb.f ], [ %.2.us, %bb.g ], [ %.2, %bb.h ]
  %.not36 = icmp eq i8 %.1.lcssa, 0
  %.127. = select i1 %.not36, i32 %.127.lcssa, i32 -2
  br label %.thread

.thread:                                          ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit39, %.lr.ph.split, %_ZNK6icu_7813UnicodeString6charAtEi.exit39.us, %.lr.ph.split.us, %bb.b, %bb.c, %bb.d, %._crit_edge, %bb.a
  %.130 = phi i32 [ -2, %bb.a ], [ 0, %bb.c ], [ -1, %bb.d ], [ %.127., %._crit_edge ], [ -1, %bb.b ], [ -1, %_ZNK6icu_7813UnicodeString6charAtEi.exit39.us ], [ -1, %.lr.ph.split.us ], [ -1, %.lr.ph.split ], [ -1, %_ZNK6icu_7813UnicodeString6charAtEi.exit39 ]
  ret i32 %.130
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_7814MessagePattern23autoQuoteApostropheDeepEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(127) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 126
  %i.c = load i8, ptr %i.b, align 2, !tbaa !41
  %.not = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.i = zext nneg i32 %i.f to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv.next ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !46
  %i.m = icmp eq i32 %i.l, 3
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.q = load i16, ptr %i.p, align 2, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.q, ptr %i.a, align 2, !tbaa !32
  %i.r = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.o, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeString6insertEiDs.exit unwind label %bb.e ; 0 uses

_ZN6icu_7813UnicodeString6insertEiDs.exit:        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #18
  resume { ptr, i32 } %i.s

bb.f:                                             ; preds = %_ZN6icu_7813UnicodeString6insertEiDs.exit, %bb.c
  %i.t = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.t, label %bb.c, label %.loopexit, !llvm.loop !63

.loopexit:                                        ; preds = %bb.f, %bb.a, %bb.b
  ret void
}
end_hunk_0
