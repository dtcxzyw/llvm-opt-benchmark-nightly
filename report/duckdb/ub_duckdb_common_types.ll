Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types?download=true
inline.NumInlined: 41205
inline.NumDeleted: 6297
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZN6duckdb4Date18ExtractISOYearWeekENS_6date_tERiS2_:bb.a
  br label %_ZN6duckdbL14GetISOYearWeekENS_6date_tERi.exit

bb.h:                                             ; preds = %_ZN6duckdbL13GetISOWeekOneEi.exit.i
  %i.aw = icmp samesign ugt i32 %.0.i.i, 51
  br i1 %i.aw, label %bb.i, label %_ZN6duckdbL14GetISOYearWeekENS_6date_tERi.exit

bb.i:                                             ; preds = %bb.h
  %i.ax = load i32, ptr %1, align 4, !tbaa !165
  %i.ay = add nsw i32 %i.ax, 1
  %i.az = tail call i32 @_ZN6duckdb4Date8FromDateEiii(i32 noundef %i.ay, i32 noundef 1, i32 noundef 1) ; 4 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.lhs.trunc.i.i25.i = sub i32 3, %i.az
  %i.bb = urem i32 %.lhs.trunc.i.i25.i, 7
  %i.bc = sub nuw nsw i32 6, %i.bb
  br label %_ZN6duckdbL13GetISOWeekOneEi.exit26.i

bb.k:                                             ; preds = %bb.i
  %narrow.i.i22.i = add nuw i32 %i.az, 3
  %i.bd = urem i32 %narrow.i.i22.i, 7
  br label %_ZN6duckdbL13GetISOWeekOneEi.exit26.i

_ZN6duckdbL13GetISOWeekOneEi.exit26.i:            ; preds = %bb.k, %bb.j
  %.0.i.i23.i = phi i32 [ %i.bc, %bb.j ], [ %i.bd, %bb.k ] ; 2 uses
  %i.be = sub nsw i32 %i.az, %.0.i.i23.i          ; 2 uses
  %i.bf = icmp samesign ugt i32 %.0.i.i23.i, 3
  %i.bg = add nsw i32 %i.be, 7
  %spec.select.i24.i = select i1 %i.bf, i32 %i.bg, i32 %i.be
  %.not.i = icmp slt i32 %0, %spec.select.i24.i
  br i1 %.not.i, label %_ZN6duckdbL14GetISOYearWeekENS_6date_tERi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdbL13GetISOWeekOneEi.exit26.i
  %i.bh = load i32, ptr %1, align 4, !tbaa !165
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %1, align 4, !tbaa !165
  br label %_ZN6duckdbL14GetISOYearWeekENS_6date_tERi.exit

_ZN6duckdbL14GetISOYearWeekENS_6date_tERi.exit:   ; preds = %_ZN6duckdbL13GetISOWeekOneEi.exit18.i, %bb.h, %_ZN6duckdbL13GetISOWeekOneEi.exit26.i, %bb.l
  %.0.i = phi i32 [ %.0.i21.i, %_ZN6duckdbL13GetISOWeekOneEi.exit18.i ], [ 0, %bb.l ], [ %.0.i.i, %_ZN6duckdbL13GetISOWeekOneEi.exit26.i ], [ %.0.i.i, %bb.h ]
  %i.bj = add nsw i32 %.0.i, 1
  store i32 %i.bj, ptr %2, align 4, !tbaa !165
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6duckdb4Date20ExtractISOWeekNumberENS_6date_tE(i32 %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @_ZN6duckdb4Date18ExtractISOYearWeekENS_6date_tERiS2_(i32 %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.c = load i32, ptr %i.b, align 4, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6duckdb4Date20ExtractISOYearNumberENS_6date_tE(i32 %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @_ZN6duckdb4Date18ExtractISOYearWeekENS_6date_tERiS2_(i32 %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 306783380) i32 @_ZN6duckdb4Date24ExtractWeekNumberRegularENS_6date_tEb(i32 %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %.lr.ph.i.preheader.i, label %.preheader.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %reass.sub = tail call i32 @llvm.usub.sat.i32(i32 -146097, i32 %0)
  %i.b = add nuw nsw i32 %reass.sub, 146096
  %i.c = udiv i32 %i.b, 146097                    ; 2 uses
  %i.d = mul nuw nsw i32 %i.c, 146097
  %i.e = add nsw i32 %0, 146097
  %i.f = add i32 %i.e, %i.d
  %.neg32.i = mul nsw i32 %i.c, -400
  %i.g = add nsw i32 %.neg32.i, 1570
  br label %._crit_edge.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.h = icmp samesign ugt i32 %0, 146096
  br i1 %i.h, label %.lr.ph17.i.preheader.i, label %._crit_edge.i.i

.lr.ph17.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.i = add nsw i32 %0, -146097
  %i.j = tail call i32 @llvm.usub.sat.i32(i32 %0, i32 292193)
  %i.k = add nuw nsw i32 %i.j, 146096
  %i.l = udiv i32 %i.k, 146097                    ; 2 uses
  %.neg.i = mul nsw i32 %i.l, -146097
  %i.m = add nsw i32 %i.i, %.neg.i
  %i.n = mul nuw nsw i32 %i.l, 400
  %i.o = add nuw nsw i32 %i.n, 2370
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph17.i.preheader.i, %.preheader.i.i, %.lr.ph.i.preheader.i
  %i.p = phi i32 [ %i.g, %.lr.ph.i.preheader.i ], [ 1970, %.preheader.i.i ], [ %i.o, %.lr.ph17.i.preheader.i ]
  %.1.i = phi i32 [ %i.f, %.lr.ph.i.preheader.i ], [ %0, %.preheader.i.i ], [ %i.m, %.lr.ph17.i.preheader.i ] ; 3 uses
  %i.q = udiv i32 %.1.i, 365
  %i.r = zext nneg i32 %i.q to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.b ], [ %i.r, %._crit_edge.i.i ] ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %indvars.iv.i.i ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !165  ; 3 uses
  %i.u = icmp slt i32 %.1.i, %i.t
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  br i1 %i.u, label %bb.b, label %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit, !llvm.loop !37

_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit: ; preds = %bb.b
  %i.v = trunc nsw i64 %indvars.iv.i.i to i32
  %i.w = add nsw i32 %i.p, %i.v
  %.fr25 = freeze i32 %i.w                        ; 4 uses
  %i.x = sub nsw i32 %.1.i, %i.t                  ; 2 uses
  %i.y = getelementptr i8, ptr %i.s, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !165
  %i.aa = sub nsw i32 %i.z, %i.t
  %i.ab = icmp eq i32 %i.aa, 366                  ; 2 uses
  %i.ac = zext nneg i32 %i.x to i64
  %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i = select i1 %i.ab, ptr @_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE, ptr @_ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE
  %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE.i = select i1 %i.ab, ptr @_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE, ptr @_ZN6duckdb4Date15CUMULATIVE_DAYSE
  %i.ad = getelementptr inbounds nuw i8, ptr %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !273 ; 2 uses
  %i.af = sext i8 %i.ae to i32
  %i.ag = sext i8 %i.ae to i64
  %i.ah = getelementptr [4 x i8], ptr %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE.i, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !165
  %i.ak = sub nsw i32 %i.x, %i.aj
  %i.al = add nsw i32 %i.af, -1                   ; 3 uses
  %i.am = and i32 %.fr25, 3
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.c, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread22

_ZN6duckdb4Date10IsLeapYearEi.exit.thread22:      ; preds = %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit
  %i.ao = sext i32 %i.al to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date15CUMULATIVE_DAYSE, i64 %i.ao
  br label %bb.d

bb.c:                                             ; preds = %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit
  %i.aq = srem i32 %.fr25, 100
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %_ZN6duckdb4Date10IsLeapYearEi.exit, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread

_ZN6duckdb4Date10IsLeapYearEi.exit.thread:        ; preds = %bb.c
  %i.ar = sext i32 %i.al to i64
  %i.as = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE, i64 %i.ar
  br label %bb.d

_ZN6duckdb4Date10IsLeapYearEi.exit:               ; preds = %bb.c
  %i.at = srem i32 %.fr25, 400
  %i.au = icmp eq i32 %i.at, 0
  %i.av = sext i32 %i.al to i64
  %spec.select24.v = select i1 %i.au, ptr @_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE, ptr @_ZN6duckdb4Date15CUMULATIVE_DAYSE
  %spec.select24 = getelementptr inbounds [4 x i8], ptr %spec.select24.v, i64 %i.av
  br label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread22
  %i.aw = phi ptr [ %i.ap, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread22 ], [ %spec.select24, %_ZN6duckdb4Date10IsLeapYearEi.exit ], [ %i.as, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread ]
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !165
  %i.ay = add nsw i32 %i.ax, %i.ak                ; 2 uses
  %i.az = tail call i32 @_ZN6duckdb4Date8FromDateEiii(i32 noundef %.fr25, i32 noundef 1, i32 noundef 1) ; 3 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.lhs.trunc.i = sub i32 3, %i.az
  %i.bb = urem i32 %.lhs.trunc.i, 7
  %i.bc = xor i32 %i.bb, 7
  br label %_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit

bb.f:                                             ; preds = %bb.d
  %narrow.i = add nuw i32 %i.az, 3
  %i.bd = urem i32 %narrow.i, 7
  %narrow4.i = add nuw nsw i32 %i.bd, 1
  br label %_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit

_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.bc, %bb.e ], [ %narrow4.i, %bb.f ] ; 3 uses
  %i.be = sub nuw nsw i32 7, %.0.i
  %i.bf = icmp eq i32 %.0.i, 1
  %i.bg = sub nuw nsw i32 8, %.0.i
  %spec.select = select i1 %i.bf, i32 0, i32 %i.bg
  %.0 = select i1 %1, i32 %spec.select, i32 %i.be ; 2 uses
  %i.bh = icmp slt i32 %i.ay, %.0
  br i1 %i.bh, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit
  %i.bi = sub nuw nsw i32 %i.ay, %.0
  %i.bj = udiv i32 %i.bi, 7
  %i.bk = add nuw nsw i32 %i.bj, 1
  br label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit, %bb.g
  %.011 = phi i32 [ %i.bk, %bb.g ], [ 0, %_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit ]
  ret i32 %.011
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @_ZN6duckdb4Date22GetMondayOfCurrentWeekENS_6date_tE(i32 %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.lhs.trunc.i = sub i32 3, %0
  %i.b = urem i32 %.lhs.trunc.i, 7
  %i.c = sub nuw nsw i32 6, %i.b
  br label %_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit

bb.c:                                             ; preds = %bb.a
  %narrow.i = add nuw i32 %0, 3
  %i.d = urem i32 %narrow.i, 7
  br label %_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit

_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = sub nsw i32 %0, %.0.i
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7Decimal8ToStringB5cxx11Eshh(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i16 noundef signext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6duckdb24TemplatedDecimalToStringIsEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_hh(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i16 noundef signext %1, i8 noundef zeroext %2, i8 noundef zeroext %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb24TemplatedDecimalToStringIsEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_hh(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i16 noundef signext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = icmp eq i8 %3, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.neg6.i.i = lshr i16 %1, 15
  %i.c = tail call i16 @llvm.abs.i16(i16 %1, i1 false)
  %i.d = insertelement <4 x i16> poison, i16 %i.c, i64 0
  %i.e = shufflevector <4 x i16> %i.d, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.f = icmp ugt <4 x i16> %i.e, <i16 99, i16 999, i16 9999, i16 9>
  %i.g = select <4 x i1> %i.f, <4 x i32> <i32 1, i32 1, i32 1, i32 2>, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.neg.i.i = zext nneg i16 %.neg6.i.i to i32
  %i.h = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.g)
  %op.rdx = add nuw nsw i32 %i.h, %.neg.i.i
  br label %_ZN6duckdb15DecimalToString13DecimalLengthIsEEiT_hh.exit

bb.c:                                             ; preds = %bb.a
  %i.i = zext i8 %3 to i32
  %i.j = icmp ugt i8 %2, %3
  %i.k = select i1 %i.j, i32 2, i32 1
  %.lobit.i = lshr i16 %1, 15
  %i.l = zext nneg i16 %.lobit.i to i32           ; 2 uses
  %i.m = add nuw nsw i32 %i.i, %i.l
  %i.n = add nuw nsw i32 %i.m, %i.k
  %i.o = tail call i16 @llvm.abs.i16(i16 %1, i1 false)
  %i.p = insertelement <4 x i16> poison, i16 %i.o, i64 0
  %i.q = shufflevector <4 x i16> %i.p, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.r = icmp ugt <4 x i16> %i.q, <i16 99, i16 999, i16 9999, i16 9>
  %i.s = select <4 x i1> %i.r, <4 x i32> <i32 1, i32 1, i32 1, i32 2>, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.t = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.s)
  %op.rdx21 = add nuw nsw i32 %i.t, 1
  %op.rdx22 = add nuw nsw i32 %op.rdx21, %i.l
  %i.u = tail call i32 @llvm.umax.i32(i32 %i.n, i32 %op.rdx22)
  br label %_ZN6duckdb15DecimalToString13DecimalLengthIsEEiT_hh.exit

_ZN6duckdb15DecimalToString13DecimalLengthIsEEiT_hh.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %op.rdx, %bb.b ], [ %i.u, %bb.c ] ; 4 uses
  %i.v = add nuw nsw i32 %.0.i, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.w) #48, !noalias !1620 ; 5 uses
  %i.y = zext nneg i32 %.0.i to i64               ; 3 uses
  invoke void @_ZN6duckdb15DecimalToString13FormatDecimalIsEEvT_hhPcm(i16 noundef signext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef nonnull %i.x, i64 noundef %i.y)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN6duckdb15DecimalToString13DecimalLengthIsEEiT_hh.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 %i.y, ptr %i.a, align 8, !tbaa !245
  %i.aa = icmp samesign ugt i32 %.0.i, 15
  br i1 %i.aa, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %._crit_edge.i.i.thread unwind label %bb.h ; 2 uses

._crit_edge.i.i.thread:                           ; preds = %.noexc.i
  store ptr %i.ab, ptr %0, align 8, !tbaa !235
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !245
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !273
  br label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.d
  %cond = icmp eq i32 %.0.i, 1
  br i1 %cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !273
  store i8 %i.ad, ptr %i.z, align 8, !tbaa !273
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.f:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.ae = phi ptr [ %i.ab, %._crit_edge.i.i.thread ], [ %i.z, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull align 1 %i.x, i64 %i.y, i1 false)
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.f, %bb.e
  %i.af = load i64, ptr %i.a, align 8, !tbaa !245 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !272
  %i.ah = load ptr, ptr %0, align 8, !tbaa !235
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  call void @_ZdaPv(ptr noundef nonnull %i.x) #47
  ret void

bb.g:                                             ; preds = %_ZN6duckdb15DecimalToString13DecimalLengthIsEEiT_hh.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit15

bb.h:                                             ; preds = %.noexc.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit15

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit15: ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %i.aj, %bb.g ]
  call void @_ZdaPv(ptr noundef nonnull %i.x) #47
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7Decimal8ToStringB5cxx11Eihh(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6duckdb24TemplatedDecimalToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_hh(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb24TemplatedDecimalToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_hh(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = icmp eq i8 %3, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 7 uses
  %i.d = icmp samesign ugt i32 %i.c, 9999
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ugt i32 %i.c, 99999
  %i.f = select i1 %i.e, i32 6, i32 5
  %i.g = icmp samesign ugt i32 %i.c, 999999
  %i.h = zext i1 %i.g to i32
  %i.i = add nuw nsw i32 %i.f, %i.h
  %i.j = icmp samesign ugt i32 %i.c, 9999999
  %i.k = zext i1 %i.j to i32
  %i.l = add nuw nsw i32 %i.i, %i.k
  br label %_ZN6duckdb13NumericHelper12SignedLengthIijEEiT_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = icmp samesign ugt i32 %i.c, 9
  %i.n = select i1 %i.m, i32 2, i32 1
  br label %_ZN6duckdb13NumericHelper12SignedLengthIijEEiT_.exit.i

_ZN6duckdb13NumericHelper12SignedLengthIijEEiT_.exit.i: ; preds = %bb.d, %bb.c
  %.sink27.i.i.i = phi i32 [ 99, %bb.d ], [ 99999999, %bb.c ]
  %.sink25.i.i.i = phi i32 [ %i.n, %bb.d ], [ %i.l, %bb.c ]
  %.sink24.i.i.i = phi i32 [ 999, %bb.d ], [ 999999999, %bb.c ]
  %.lobit.neg.neg6.i.i = lshr i32 %1, 31
  %i.o = icmp samesign ugt i32 %i.c, %.sink27.i.i.i
  %i.p = zext i1 %i.o to i32
  %i.q = icmp samesign ugt i32 %i.c, %.sink24.i.i.i
  %i.r = zext i1 %i.q to i32
  %i.s = add nuw nsw i32 %.sink25.i.i.i, %.lobit.neg.neg6.i.i
  %i.t = add nuw nsw i32 %i.s, %i.p
  %i.u = add nuw nsw i32 %i.t, %i.r
  br label %_ZN6duckdb15DecimalToString13DecimalLengthIiEEiT_hh.exit

bb.e:                                             ; preds = %bb.a
  %i.v = zext i8 %3 to i32
  %i.w = icmp ugt i8 %2, %3
  %i.x = select i1 %i.w, i32 2, i32 1
  %.lobit.i = lshr i32 %1, 31                     ; 2 uses
  %i.y = add nuw nsw i32 %.lobit.i, %i.v
end_hunk_0
