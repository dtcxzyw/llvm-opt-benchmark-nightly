begin_hunk_0
  %i.ho = load i64, ptr %i.hn, align 8
  %i.hp = lshr i64 %i.ho, 32
  %i.hq = trunc nuw i64 %i.hp to i32
  %7 = icmp uge i32 %.0129, %i.hq                 ; 2 uses
  %.not24.i = icmp eq i8 %.01828.i, 0
  %cond1.i = select i1 %7, i1 true, i1 %.not24.i
  br i1 %cond1.i, label %bb.am, label %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit

bb.am:                                            ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit.i
  %.220.i = select i1 %7, i8 %.01828.i, i8 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge, label %_ZNK6icu_789UVector6410elementAtiEi.exit.i, !llvm.loop !12

_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit: ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit.i
  %i.hr = load i16, ptr %i.fp, align 8            ; 3 uses
  %i.hs = icmp slt i16 %i.hr, 0
  %i.ht = ashr i16 %i.hr, 5
end_hunk_0
begin_hunk_1

_ZNK6icu_789UVector6410elementAtiEi.exit.i236:    ; preds = %bb.ap, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i234
  %indvars.iv.i237 = phi i64 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i234 ], [ %indvars.iv.next.i240, %bb.ap ] ; 2 uses
  %.01828.i238 = phi i8 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i234 ], [ %.220.i241, %bb.ap ] ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %indvars.iv.i237
  %i.iw = load i64, ptr %i.iv, align 8
  %i.ix = lshr i64 %i.iw, 32
  %i.iy = trunc nuw i64 %i.ix to i32
  %8 = icmp uge i32 %.0129, %i.iy                 ; 2 uses
  %.not24.i239 = icmp eq i8 %.01828.i238, 0
  %cond1.i240 = select i1 %8, i1 true, i1 %.not24.i239
  br i1 %cond1.i240, label %bb.ap, label %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit243

bb.ap:                                            ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit.i236
  %.220.i241 = select i1 %8, i8 %.01828.i238, i8 1
  %indvars.iv.next.i240 = add nuw nsw i64 %indvars.iv.i237, 1 ; 2 uses
  %exitcond.not.i241 = icmp eq i64 %indvars.iv.next.i240, %wide.trip.count.i235
  br i1 %exitcond.not.i241, label %.loopexit366, label %_ZNK6icu_789UVector6410elementAtiEi.exit.i236, !llvm.loop !12
end_hunk_1
begin_hunk_2
  %i.ji = icmp slt i32 %.pre404, 1
  br i1 %i.ji, label %bb.at, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit243: ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit.i236, %.lr.ph
  %i.jj = add nsw i32 %.0156377, -1               ; 2 uses
  %i.jk = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef %i.jj) #13 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 136
end_hunk_2
