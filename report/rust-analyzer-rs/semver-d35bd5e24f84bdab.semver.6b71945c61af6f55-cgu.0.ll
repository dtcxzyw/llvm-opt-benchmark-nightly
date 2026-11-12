Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/semver-d35bd5e24f84bdab.semver.6b71945c61af6f55-cgu.0?download=true
inline.NumInlined: 523
inline.NumDeleted: 83
begin_hunk_0_@_RNvXNtCs9dV2ZPf2jOH_6semver7displayNtB4_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt:bb.a
  %i.g = zext i16 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp ult i64 %i.i, 10
  br i1 %i.j, label %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i, label %tailrecurse.i.i.i.i

tailrecurse.i.i.i.i:                              ; preds = %bb.b, %tailrecurse.i.i.i.i
  %.tr2.i.i.i.i = phi i64 [ %i.k, %tailrecurse.i.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %accumulator.tr1.i.i.i.i = phi i64 [ %i.l, %tailrecurse.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.k = udiv i64 %.tr2.i.i.i.i, 10
  %i.l = add i64 %accumulator.tr1.i.i.i.i, 1
  %i.m = icmp ult i64 %.tr2.i.i.i.i, 100
  br i1 %i.m, label %tailrecurse._crit_edge.loopexit.i.i.i.i, label %tailrecurse.i.i.i.i

tailrecurse._crit_edge.loopexit.i.i.i.i:          ; preds = %tailrecurse.i.i.i.i
  %i.n = add i64 %accumulator.tr1.i.i.i.i, 4
  br label %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i

_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i: ; preds = %tailrecurse._crit_edge.loopexit.i.i.i.i, %bb.b
  %accumulator.tr.lcssa.i.i.i.i = phi i64 [ 3, %bb.b ], [ %i.n, %tailrecurse._crit_edge.loopexit.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp ult i64 %i.p, 10
  br i1 %i.q, label %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i, label %tailrecurse.i1.i.i.i

tailrecurse.i1.i.i.i:                             ; preds = %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i, %tailrecurse.i1.i.i.i
  %.tr2.i2.i.i.i = phi i64 [ %i.r, %tailrecurse.i1.i.i.i ], [ %i.p, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i ] ; 2 uses
  %accumulator.tr1.i3.i.i.i = phi i64 [ %i.s, %tailrecurse.i1.i.i.i ], [ 0, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i ] ; 2 uses
  %i.r = udiv i64 %.tr2.i2.i.i.i, 10
  %i.s = add i64 %accumulator.tr1.i3.i.i.i, 1
  %i.t = icmp ult i64 %.tr2.i2.i.i.i, 100
  br i1 %i.t, label %tailrecurse._crit_edge.loopexit.i4.i.i.i, label %tailrecurse.i1.i.i.i

tailrecurse._crit_edge.loopexit.i4.i.i.i:         ; preds = %tailrecurse.i1.i.i.i
  %i.u = add i64 %accumulator.tr1.i3.i.i.i, 2
  br label %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i

_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i: ; preds = %tailrecurse._crit_edge.loopexit.i4.i.i.i, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i
  %accumulator.tr.lcssa.i5.i.i.i = phi i64 [ 1, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i ], [ %i.u, %tailrecurse._crit_edge.loopexit.i4.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp ult i64 %i.w, 10
  br i1 %i.x, label %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit12.i.i.i, label %tailrecurse.i7.i.i.i

tailrecurse.i7.i.i.i:                             ; preds = %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i, %tailrecurse.i7.i.i.i
  %.tr2.i8.i.i.i = phi i64 [ %i.y, %tailrecurse.i7.i.i.i ], [ %i.w, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i ] ; 2 uses
  %accumulator.tr1.i9.i.i.i = phi i64 [ %i.z, %tailrecurse.i7.i.i.i ], [ 0, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i ] ; 2 uses
  %i.y = udiv i64 %.tr2.i8.i.i.i, 10
  %i.z = add i64 %accumulator.tr1.i9.i.i.i, 1
  %i.aa = icmp ult i64 %.tr2.i8.i.i.i, 100
  br i1 %i.aa, label %tailrecurse._crit_edge.loopexit.i10.i.i.i, label %tailrecurse.i7.i.i.i

tailrecurse._crit_edge.loopexit.i10.i.i.i:        ; preds = %tailrecurse.i7.i.i.i
  %i.ab = add i64 %accumulator.tr1.i9.i.i.i, 2
  br label %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit12.i.i.i

_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit12.i.i.i: ; preds = %tailrecurse._crit_edge.loopexit.i10.i.i.i, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i
  %accumulator.tr.lcssa.i11.i.i.i = phi i64 [ 1, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i ], [ %i.ab, %tailrecurse._crit_edge.loopexit.i10.i.i.i ]
  %.val.i.i.i.i = load ptr, ptr %0, align 8       ; 4 uses
  %i.ac = icmp ne ptr %.val.i.i.i.i, inttoptr (i64 -1 to ptr) ; 2 uses
  %i.ad = ptrtoint ptr %.val.i.i.i.i to i64       ; 2 uses
  br i1 %i.ac, label %bb.c, label %_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i

bb.c:                                             ; preds = %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit12.i.i.i
  %i.ae = icmp sgt ptr %.val.i.i.i.i, inttoptr (i64 -1 to ptr)
  br i1 %i.ae, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr i8, ptr %.val.i.i.i.i, i64 %i.ad ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i16, ptr %i.af, align 1 ; 2 uses
  %i.ag = icmp sgt i16 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, -1
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = tail call fastcc i64 @_RNvNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len15decode_len_cold(ptr nonnull readonly %i.af) #29
  br label %_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ai = and i16 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 127 ; 2 uses
  %i.aj = zext nneg i16 %i.ai to i64
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_RNvNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs9dV2ZPf2jOH_6semver(ptr nonnull align 8 @10) #30
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true)
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = lshr i32 %i.al, 3
  %narrow.i.i.i.i.i.i.i = sub nuw nsw i32 8, %i.am
  %i.an = zext nneg i32 %narrow.i.i.i.i.i.i.i to i64
  br label %_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i

_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i: ; preds = %bb.h, %bb.f, %bb.e, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit12.i.i.i
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit12.i.i.i ], [ %i.an, %bb.h ], [ %i.ah, %bb.e ], [ %i.aj, %bb.f ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i13.i.i.i = load ptr, ptr %i.ao, align 8  ; 4 uses
  %i.ap = icmp ne ptr %.val.i13.i.i.i, inttoptr (i64 -1 to ptr) ; 2 uses
  %i.aq = ptrtoint ptr %.val.i13.i.i.i to i64     ; 2 uses
  br i1 %i.ap, label %bb.i, label %_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmts_0INtNtNtBT_3ops8function6FnOnceuE9call_onceB9_.exit.i

bb.i:                                             ; preds = %_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i
  %i.ar = icmp sgt ptr %.val.i13.i.i.i, inttoptr (i64 -1 to ptr)
  br i1 %i.ar, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr i8, ptr %.val.i13.i.i.i, i64 %i.aq ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i15.i.i.i = load i16, ptr %i.as, align 1 ; 2 uses
  %i.at = icmp sgt i16 %.sroa.0.0.copyload.i.i.i.i.i15.i.i.i, -1
  br i1 %i.at, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = tail call fastcc i64 @_RNvNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len15decode_len_cold(ptr nonnull readonly %i.as) #29
  br label %_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmts_0INtNtNtBT_3ops8function6FnOnceuE9call_onceB9_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.av = and i16 %.sroa.0.0.copyload.i.i.i.i.i15.i.i.i, 127 ; 2 uses
  %i.aw = zext nneg i16 %i.av to i64
  %.not.i.i.i.i.i21.i.i.i = icmp eq i16 %i.av, 0
  br i1 %.not.i.i.i.i.i21.i.i.i, label %bb.m, label %_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmts_0INtNtNtBT_3ops8function6FnOnceuE9call_onceB9_.exit.i

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_RNvNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs9dV2ZPf2jOH_6semver(ptr nonnull align 8 @10) #30
  unreachable

bb.n:                                             ; preds = %bb.i
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aq, i1 true)
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = lshr i32 %i.ay, 3
  %narrow.i.i.i.i22.i.i.i = sub nuw nsw i32 8, %i.az
  %i.ba = zext nneg i32 %narrow.i.i.i.i22.i.i.i to i64
  br label %_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmts_0INtNtNtBT_3ops8function6FnOnceuE9call_onceB9_.exit.i

_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmts_0INtNtNtBT_3ops8function6FnOnceuE9call_onceB9_.exit.i: ; preds = %bb.n, %bb.l, %bb.k, %_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i
  %.sroa.4.0.i.i19.i.i.i = phi i64 [ 0, %_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i ], [ %i.ba, %bb.n ], [ %i.au, %bb.k ], [ %i.aw, %bb.l ]
  %i.bb = zext i1 %i.ac to i64
  %i.bc = zext i1 %i.ap to i64
  %i.bd = add i64 %accumulator.tr.lcssa.i5.i.i.i, %accumulator.tr.lcssa.i.i.i.i
  %i.be = add i64 %i.bd, %accumulator.tr.lcssa.i11.i.i.i
  %i.bf = add i64 %i.be, %i.bb
  %i.bg = add i64 %i.bf, %.sroa.4.0.i.i.i.i.i
  %i.bh = add i64 %i.bg, %i.bc
  %i.bi = add i64 %i.bh, %.sroa.4.0.i.i19.i.i.i   ; 2 uses
  %.not.i = icmp ult i64 %i.bi, %i.g
  br i1 %.not.i, label %bb.o, label %_RNvXs4_NtNtCshzWfHUSfYae_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs9dV2ZPf2jOH_6semver.exit9.sink.split.i

bb.o:                                             ; preds = %_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmts_0INtNtNtBT_3ops8function6FnOnceuE9call_onceB9_.exit.i
  %.val.i = load i32, ptr %i.a, align 8
  %i.bj = lshr i32 %.val.i, 29
  %i.bk = and i32 %i.bj, 3
  %i.bl = sub nuw nsw i64 %i.g, %i.bi             ; 5 uses
  switch i32 %i.bk, label %default.unreachable [
    i32 0, label %_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 3, label %_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i
  ]

default.unreachable:                              ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  br label %_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i

_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.o
  %.sroa.4.0.i = phi i64 [ %i.bp, %bb.q ], [ 0, %bb.p ], [ %i.bl, %bb.o ], [ %i.bl, %bb.o ] ; 2 uses
  %.sroa.03.0.i = phi i64 [ %i.bn, %bb.q ], [ %i.bl, %bb.p ], [ 0, %bb.o ], [ 0, %bb.o ] ; 2 uses
  %i.bm = tail call i32 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter4fill(ptr nonnull align 8 %1) ; 2 uses
  %exitcond.not.i9 = icmp eq i64 %.sroa.03.0.i, 0
  br i1 %exitcond.not.i9, label %._crit_edge, label %.lr.ph

bb.q:                                             ; preds = %bb.o
  %i.bn = lshr i64 %i.bl, 1
  %i.bo = add nuw nsw i64 %i.bl, 1
  %i.bp = lshr i64 %i.bo, 1
  br label %_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i

bb.r:                                             ; preds = %.lr.ph
  %i.bq = add nuw i64 %.sroa.0.0.i10, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bq, %.sroa.03.0.i
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i, %bb.r
  %.sroa.0.0.i10 = phi i64 [ %i.bq, %bb.r ], [ 0, %_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i ]
  %i.br = tail call zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr align 8 %1, i32 %i.bm)
  br i1 %i.br, label %_RINvNtCs9dV2ZPf2jOH_6semver7display3padNCNvXB2_NtB4_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0NCBD_s_0EB4_.exit, label %bb.r

._crit_edge:                                      ; preds = %bb.r, %_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i
  %i.bs = tail call fastcc zeroext i1 @_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0INtNtNtBT_3ops8function6FnOnceTQNtBR_9FormatterEE9call_onceB9_(ptr nonnull align 8 %0, ptr align 8 %1) #28
  br i1 %i.bs, label %_RINvNtCs9dV2ZPf2jOH_6semver7display3padNCNvXB2_NtB4_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0NCBD_s_0EB4_.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %._crit_edge
  %exitcond30.not.not.i.not11 = icmp eq i64 %.sroa.4.0.i, 0
  br i1 %exitcond30.not.not.i.not11, label %_RINvNtCs9dV2ZPf2jOH_6semver7display3padNCNvXB2_NtB4_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0NCBD_s_0EB4_.exit, label %.lr.ph13

.lr.ph13:                                         ; preds = %.lr.ph13, %.preheader.i.preheader
  %.sroa.010.0.i12 = phi i64 [ %i.bu, %.lr.ph13 ], [ 0, %.preheader.i.preheader ]
  %i.bt = tail call zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr align 8 %1, i32 %i.bm) ; 2 uses
  %i.bu = add nuw nsw i64 %.sroa.010.0.i12, 1     ; 2 uses
  %exitcond30.not.not.i.not = icmp eq i64 %i.bu, %.sroa.4.0.i
  %or.cond = select i1 %i.bt, i1 true, i1 %exitcond30.not.not.i.not
  br i1 %or.cond, label %_RINvNtCs9dV2ZPf2jOH_6semver7display3padNCNvXB2_NtB4_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0NCBD_s_0EB4_.exit, label %.lr.ph13

_RNvXs4_NtNtCshzWfHUSfYae_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs9dV2ZPf2jOH_6semver.exit9.sink.split.i: ; preds = %_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmts_0INtNtNtBT_3ops8function6FnOnceuE9call_onceB9_.exit.i, %bb.a
  %i.bv = tail call fastcc zeroext i1 @_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0INtNtNtBT_3ops8function6FnOnceTQNtBR_9FormatterEE9call_onceB9_(ptr align 8 %0, ptr nonnull align 8 %1) #28
  br label %_RINvNtCs9dV2ZPf2jOH_6semver7display3padNCNvXB2_NtB4_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0NCBD_s_0EB4_.exit

_RINvNtCs9dV2ZPf2jOH_6semver7display3padNCNvXB2_NtB4_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0NCBD_s_0EB4_.exit: ; preds = %.lr.ph, %.lr.ph13, %.preheader.i.preheader, %._crit_edge, %_RNvXs4_NtNtCshzWfHUSfYae_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs9dV2ZPf2jOH_6semver.exit9.sink.split.i
  %.sroa.0.0.shrunk.i = phi i1 [ true, %._crit_edge ], [ %i.bt, %.lr.ph13 ], [ %i.bv, %_RNvXs4_NtNtCshzWfHUSfYae_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs9dV2ZPf2jOH_6semver.exit9.sink.split.i ], [ false, %.preheader.i.preheader ], [ true, %.lr.ph ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_RNvXNtNtCshzWfHUSfYae_4core5array8equalityAhj0_NtNtB6_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #4 !guid !154 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters9enumerate9EnumerateINtNtNtB8_5slice4iter4IterNtCs9dV2ZPf2jOH_6semver10ComparatorEENtB2_12IntoIterator9into_iterB1Q_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #11 !guid !155 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB8_3ops5range5RangejENtB2_12IntoIterator9into_iterCs9dV2ZPf2jOH_6semver(i64 %0, i64 %1) unnamed_addr #4 !guid !156 {
bb.a:
  %i.a = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.b = insertvalue { i64, i64 } %i.a, i64 %1, 1
  ret { i64, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB8_3str4iter5SplitcENtB2_12IntoIterator9into_iterCs9dV2ZPf2jOH_6semver(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) initializes((0, 72)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #11 !guid !157 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXNvXs1_NtCs9dV2ZPf2jOH_6semver5serdeNtBa_7VersionNtNtCs2zr4xB4Ewz8_10serde_core2de11Deserialize11deserializeNtB2_14VersionVisitorNtBQ_7Visitor9expecting(ptr nofree readnone captures(none) %0, ptr align 8 %1) unnamed_addr #2 !guid !158 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @32, i64 14)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXNvXs2_NtCs9dV2ZPf2jOH_6semver5serdeNtBa_10VersionReqNtNtCs2zr4xB4Ewz8_10serde_core2de11Deserialize11deserializeNtB2_17VersionReqVisitorNtBU_7Visitor9expecting(ptr nofree readnone captures(none) %0, ptr align 8 %1) unnamed_addr #2 !guid !159 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @32, i64 14)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXNvXs3_NtCs9dV2ZPf2jOH_6semver5serdeNtBa_10ComparatorNtNtCs2zr4xB4Ewz8_10serde_core2de11Deserialize11deserializeNtB2_17ComparatorVisitorNtBU_7Visitor9expecting(ptr nofree readnone captures(none) %0, ptr align 8 %1) unnamed_addr #2 !guid !160 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @33, i64 17)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs0_Cs9dV2ZPf2jOH_6semverNtB5_10VersionReqNtNtCshzWfHUSfYae_4core7default7Default7default(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #14 !guid !161 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @34, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs0_NtCs9dV2ZPf2jOH_6semver10identifierNtB5_10IdentifierNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 personality ptr @rust_eh_personality !guid !162 {
_RNvMNtCs9dV2ZPf2jOH_6semver10identifierNtB2_10Identifier8is_empty.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %or.cond.not = icmp slt ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %or.cond.not, label %bb.a, label %_RNvMNtCs9dV2ZPf2jOH_6semver10identifierNtB2_10Identifier18is_empty_or_inline.exit.thread

bb.a:                                             ; preds = %_RNvMNtCs9dV2ZPf2jOH_6semver10identifierNtB2_10Identifier8is_empty.exit
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = getelementptr i8, ptr %i.a, i64 %i.b     ; 3 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.c, align 1 ; 2 uses
  %i.d = icmp sgt i16 %.sroa.0.0.copyload.i.i, -1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i64 @_RNvNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len15decode_len_cold(ptr nonnull readonly %i.c) #29
  br label %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len.exit

bb.c:                                             ; preds = %bb.a
  %i.f = and i16 %.sroa.0.0.copyload.i.i, 127     ; 2 uses
  %i.g = zext nneg i16 %i.f to i64
  %.not.i.i = icmp eq i16 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len.exit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RNvNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs9dV2ZPf2jOH_6semver(ptr nonnull align 8 @10) #30
  unreachable

_RNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i1 = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0.0.i1, i1 true)
  %i.i = trunc nuw nsw i64 %i.h to i8
  %narrow1.i = sub nuw nsw i8 70, %i.i
  %i.j = udiv i8 %narrow1.i, 7
  %i.k = zext nneg i8 %i.j to i64
  %i.l = add i64 %.sroa.0.0.i1, %i.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr %i.c, i64 %i.l, i64 2) #31
  br label %_RNvMNtCs9dV2ZPf2jOH_6semver10identifierNtB2_10Identifier18is_empty_or_inline.exit.thread

_RNvMNtCs9dV2ZPf2jOH_6semver10identifierNtB2_10Identifier18is_empty_or_inline.exit.thread: ; preds = %_RNvMNtCs9dV2ZPf2jOH_6semver10identifierNtB2_10Identifier8is_empty.exit, %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs0_NtCs9dV2ZPf2jOH_6semver5errorNtB5_8PositionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr nofree readonly captures(none) %0, ptr align 8 %1) unnamed_addr #2 !guid !163 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCs9dV2ZPf2jOH_6semver5error8PositionNtB6_7Display3fmtBA_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCs9dV2ZPf2jOH_6semver5error8PositionNtB6_7Display3fmtBA_.30, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull %switch.load2, i64 %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCs9dV2ZPf2jOH_6semver5parseNtB7_10ComparatorNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !166 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %2
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i, %bb.a
  %.sroa.3.0.i = phi i64 [ 0, %bb.a ], [ %i.q, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.3.0.i
  store ptr %i.g, ptr %i.a, align 8, !noalias !167
  store ptr %i.f, ptr %i.e, align 8, !noalias !167
  %i.h = call { i32, i32 } @_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 %i.a) #28, !noalias !167 ; 2 uses
  %i.i = extractvalue { i32, i32 } %i.h, 0
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread.i.i

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i: ; preds = %bb.b
  %i.k = extractvalue { i32, i32 } %i.h, 1
  %i.l = load ptr, ptr %i.e, align 8, !noalias !167
  %i.m = load ptr, ptr %i.a, align 8, !noalias !167
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %2, %i.n
  %i.q = add i64 %i.p, %i.o
  %.not.i.i = icmp eq i32 %i.k, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not.i.i, label %bb.b, label %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit

_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit: ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread.i.i
  %.sroa.0.0.i = phi i64 [ %2, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.thread.i.i ], [ %.sroa.3.0.i, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i ] ; 2 uses
  %i.r = sub nuw i64 %2, %.sroa.0.0.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.i
  call fastcc void @_RNvNtCs9dV2ZPf2jOH_6semver5parse10comparator(ptr noalias align 8 %i.c, ptr %i.s, i64 %i.r)
  %i.t = load i64, ptr %i.c, align 8              ; 2 uses
  %i.u = icmp eq i64 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.v, align 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.w, align 8
  store i64 2, ptr %0, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver10ComparatorEBD_.exit

bb.d:                                             ; preds = %bb.g, %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver10ComparatorEBD_(ptr nonnull align 8 %i.d) #34
  resume { ptr, i32 } %i.x

bb.e:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.02.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.02.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, i64 40, i1 false)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.625.0.copyload = load i8, ptr %.sroa.625.0..sroa_idx, align 8
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.726.0.copyload = load ptr, ptr %.sroa.726.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  store i64 %i.t, ptr %i.d, align 8
  %.sroa.02.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
end_hunk_0
