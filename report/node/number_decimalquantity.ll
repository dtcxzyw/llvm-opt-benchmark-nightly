Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/number_decimalquantity?download=true
inline.NumInlined: 255
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK6icu_786number4impl15DecimalQuantityeqERKS2_:bb.a
bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load double, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load double, ptr %i.ah, align 8
  %i.aj = fcmp oeq double %i.ag, %i.ai
  br i1 %i.aj, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp eq i32 %i.al, %i.an
  br label %.critedge

bb.k:                                             ; preds = %bb.h
  %i.ap = add nsw i32 %i.g, %i.b
  %..i = tail call i32 @llvm.smax.i32(i32 %i.q, i32 %i.ap) ; 2 uses
  %..i20 = tail call noundef i32 @llvm.smin.i32(i32 %i.v, i32 %i.b) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.not18.not.not33 = icmp sgt i32 %..i, %..i20
  br i1 %.not18.not.not33, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.au = load i8, ptr %i.aq, align 8, !range !13, !noundef !14
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = load i64, ptr %i.ar, align 8
  %i.ax = load ptr, ptr %i.ar, align 8
  %i.ay = load i8, ptr %i.as, align 8, !range !13, !noundef !14
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = load i64, ptr %i.at, align 8
  %i.bb = load ptr, ptr %i.at, align 8
  br label %.lr.ph

bb.l:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25
  %.not18.not.not = icmp sgt i32 %.034, %..i20
  br i1 %.not18.not.not, label %.lr.ph, label %.critedge, !llvm.loop !50

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.034.in = phi i32 [ %.034, %bb.l ], [ %..i, %.lr.ph.preheader ]
  %.034 = add nsw i32 %.034.in, -1                ; 3 uses
  %i.bc = sub nsw i32 %.034, %i.b                 ; 10 uses
  br i1 %i.av, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph
  %i.bd = icmp sgt i32 %i.bc, -1
  %.not.i.i = icmp slt i32 %i.bc, %i.g
  %or.cond10.i.i = and i1 %i.bd, %.not.i.i
  br i1 %or.cond10.i.i, label %bb.n, label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit

bb.n:                                             ; preds = %bb.m
  %i.be = zext nneg i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1
  br label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit

bb.o:                                             ; preds = %.lr.ph
  %or.cond.i.i = icmp ugt i32 %i.bc, 15
  br i1 %or.cond.i.i, label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = shl nuw nsw i32 %i.bc, 2
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = lshr i64 %i.aw, %i.bi
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = and i8 %i.bk, 15
  br label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit

_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit: ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i.i = phi i8 [ %i.bl, %bb.p ], [ %i.bg, %bb.n ], [ 0, %bb.m ], [ 0, %bb.o ]
  br i1 %i.az, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit
  %i.bm = icmp sgt i32 %i.bc, -1
  %.not.i.i23 = icmp slt i32 %i.bc, %i.g
  %or.cond10.i.i24 = and i1 %i.bm, %.not.i.i23
  br i1 %or.cond10.i.i24, label %bb.r, label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25

bb.r:                                             ; preds = %bb.q
  %i.bn = zext nneg i32 %i.bc to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1
  br label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25

bb.s:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit
  %or.cond.i.i21 = icmp ugt i32 %i.bc, 15
  br i1 %or.cond.i.i21, label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = shl nuw nsw i32 %i.bc, 2
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = lshr i64 %i.ba, %i.br
  %i.bt = trunc i64 %i.bs to i8
  %i.bu = and i8 %i.bt, 15
  br label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25

_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25: ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i.i22 = phi i8 [ %i.bu, %bb.t ], [ %i.bp, %bb.r ], [ 0, %bb.q ], [ 0, %bb.s ]
  %.not19 = icmp eq i8 %.0.i.i, %.0.i.i22
  br i1 %.not19, label %bb.l, label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25..critedge.loopexit_crit_edge, !llvm.loop !50

_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25..critedge.loopexit_crit_edge: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25
  br label %.critedge, !llvm.loop !50

.critedge:                                        ; preds = %bb.l, %bb.k, %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25..critedge.loopexit_crit_edge, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.i, %bb.j, %bb.g, %bb.f
  %.1 = phi i1 [ false, %bb.f ], [ true, %bb.g ], [ %i.ao, %bb.j ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.i ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25..critedge.loopexit_crit_edge ], [ true, %bb.k ], [ true, %bb.l ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_786number4impl15DecimalQuantity8toStringEv(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::MaybeStackArray.4", align 8 ; 12 uses
  %i.a = alloca [100 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = add nuw nsw i32 %i.c, 1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 13
  store ptr %i.e, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 30, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  store i8 0, ptr %i.g, align 4
  %i.h = icmp sgt i32 %i.c, 29
  br i1 %i.h, label %bb.b, label %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.i = zext nneg i32 %i.d to i64
  %i.j = call noalias ptr @uprv_malloc_78(i64 noundef %i.i) #22 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.g, align 4
  %.not.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7815MaybeStackArrayIcLi30EE12releaseArrayEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %2, align 8
  call void @uprv_free_78(ptr noundef %i.l) #21
  br label %_ZN6icu_7815MaybeStackArrayIcLi30EE12releaseArrayEv.exit.i.i

_ZN6icu_7815MaybeStackArrayIcLi30EE12releaseArrayEv.exit.i.i: ; preds = %bb.d, %bb.c
  store ptr %i.j, ptr %2, align 8
  store i32 %i.d, ptr %i.f, align 8
  store i8 1, ptr %i.g, align 4
  br label %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit

_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit: ; preds = %bb.a, %bb.b, %_ZN6icu_7815MaybeStackArrayIcLi30EE12releaseArrayEv.exit.i.i
  %i.m = load i32, ptr %i.b, align 8              ; 3 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit.._crit_edge_crit_edge

_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit.._crit_edge_crit_edge: ; preds = %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit
  %.pre = sext i32 %i.m to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit, %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit.._crit_edge_crit_edge ], [ %i.bf, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit ]
  %i.q = load ptr, ptr %2, align 8
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.pre-phi
  store i8 0, ptr %i.r, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i32, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i8, ptr %i.w, align 8, !range !13, !noundef !14
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = select i1 %i.y, ptr @.str.19, ptr @.str.20
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = trunc i8 %i.ab to i1
  %i.ad = select i1 %i.ac, ptr @.str.21, ptr @.str.1
  %i.ae = load i32, ptr %i.b, align 8
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = load ptr, ptr %2, align 8
  %spec.select = select i1 %i.af, ptr @.str.2, ptr %i.ag
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 100, ptr noundef nonnull @.str.18, i32 noundef %i.t, i32 noundef %i.v, ptr noundef nonnull %i.z, ptr noundef nonnull %i.ad, ptr noundef %spec.select, ptr noundef nonnull @.str.22, i32 noundef %i.ai) #21 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.a, i32 noundef -1, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ak = load i8, ptr %i.g, align 4
  %.not.i.i7 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i7, label %_ZN6icu_7815MaybeStackArrayIcLi30EED2Ev.exit, label %bb.i

bb.e:                                             ; preds = %.lr.ph, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit ] ; 3 uses
  %i.al = phi i32 [ %i.m, %.lr.ph ], [ %i.be, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit ]
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = xor i32 %i.am, -1
  %i.ao = add i32 %i.al, %i.an                    ; 3 uses
  %i.ap = load i8, ptr %i.o, align 8, !range !13, !noundef !14
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.p, align 8
  %i.as = zext nneg i32 %i.ao to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit

bb.g:                                             ; preds = %bb.e
  %or.cond.i = icmp ugt i32 %i.ao, 15
  br i1 %or.cond.i, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = load i64, ptr %i.p, align 8
  %i.aw = shl nuw nsw i32 %i.ao, 2
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = lshr i64 %i.av, %i.ax
  %i.az = trunc i64 %i.ay to i8
  %i.ba = and i8 %i.az, 15
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit: ; preds = %bb.f, %bb.g, %bb.h
  %.0.i = phi i8 [ %i.ba, %bb.h ], [ %i.au, %bb.f ], [ 0, %bb.g ]
  %i.bb = add i8 %.0.i, 48
  %i.bc = load ptr, ptr %2, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv
  store i8 %i.bb, ptr %i.bd, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = load i32, ptr %i.b, align 8             ; 2 uses
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = icmp slt i64 %indvars.iv.next, %i.bf
  br i1 %i.bg, label %bb.e, label %._crit_edge, !llvm.loop !51

bb.i:                                             ; preds = %._crit_edge
  %i.bh = load ptr, ptr %2, align 8
  call void @uprv_free_78(ptr noundef %i.bh) #21
  br label %_ZN6icu_7815MaybeStackArrayIcLi30EED2Ev.exit

_ZN6icu_7815MaybeStackArrayIcLi30EED2Ev.exit:     ; preds = %._crit_edge, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #17

declare void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #5

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #18

declare noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64), i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK6icu_7813UnicodeString13doLastIndexOfEiii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEiii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7replaceEiii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64), i64, ptr) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.sadd.sat.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !{!0, !16}
!1 = distinct !{!1, !16}
!2 = distinct !{!2, !16}
!3 = distinct !{!3, !16}
!4 = distinct !{!4, !16}
!5 = distinct !{!5, !16}
!6 = distinct !{!6, !16}
!7 = distinct !{!7, !16}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = !{ptr @_ZN6icu_786number4impl15DecimalQuantityD2Ev}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
!35 = !{i64 2150517133}
!36 = distinct !{!36, !16}
!37 = distinct !{!37, !16}
!38 = distinct !{!38, !16}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !17}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = distinct !{!49, !16}
!50 = distinct !{!50, !16}
!51 = distinct !{!51, !16}
end_hunk_0
