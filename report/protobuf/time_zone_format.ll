inline.NumInlined: 481
inline.NumDeleted: 166
begin_hunk_0_@_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_16ToWeekERKNS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE:bb.a
  %indvars.iv17.i = phi i64 [ %indvars.iv.next18.i, %.preheader.i ], [ %indvars.iv.i, %bb.e ]
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_2025051213time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.k_weekdays_back, i64 %indvars.iv.next18.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !26
  %i.al = icmp eq i32 %1, %i.ak
  br i1 %i.al, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit, label %.preheader.i, !llvm.loop !56

_ZN4absl12lts_2025051213time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit: ; preds = %.preheader.i
  %i.am = sub nsw i64 %indvars.iv.next18.i, %indvars.iv.i
  %sext20.i = shl i64 %i.am, 32
  %i.an = ashr exact i64 %sext20.i, 32
  %i.ao = tail call { i64, i64 } @_ZN4absl12lts_2025051213time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl(i64 %.sroa.0.0.i, i64 257, i64 noundef %i.an) #18 ; 2 uses
  %i.ap = extractvalue { i64, i64 } %i.ao, 0
  %i.aq = extractvalue { i64, i64 } %i.ao, 1      ; 2 uses
  %.sroa.2.8.extract.trunc.i.i = trunc i64 %i.aq to i8
  %.sroa.4.8.extract.shift.i.i = lshr i64 %i.aq, 8
  %.sroa.4.8.extract.trunc.i.i = trunc i64 %.sroa.4.8.extract.shift.i.i to i8
  %i.ar = tail call noundef i64 @_ZN4absl12lts_2025051213time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %.sroa.0.0.i, i8 noundef signext %.sroa.6.sroa.0.0.in.i, i8 noundef signext %.sroa.6.sroa.6.0.in.i, i64 noundef %i.ap, i8 noundef signext %.sroa.2.8.extract.trunc.i.i, i8 noundef signext %.sroa.4.8.extract.trunc.i.i) #18
  %i.as = sdiv i64 %i.ar, 7
  %i.at = trunc i64 %i.as to i32
  ret i32 %i.at
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_(ptr noundef readonly captures(address, ret: address, provenance) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 6, 1025) %3, ptr noundef nonnull writeonly captures(none) %4) unnamed_addr #4 {
bb.a:
  %.not70 = icmp eq ptr %0, null
  br i1 %.not70, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !14      ; 2 uses
  %i.b = icmp eq i8 %i.a, 45                      ; 4 uses
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  switch i32 %1, label %.fold.split [
    i32 0, label %bb.d
    i32 1, label %.thread
  ]

.fold.split:                                      ; preds = %bb.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.fold.split
  %.044 = phi i32 [ %1, %bb.c ], [ 1, %.fold.split ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.c, align 1, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.d = phi i8 [ %.pre, %bb.d ], [ %i.a, %bb.b ]
  %.145 = phi i32 [ %.044, %bb.d ], [ %1, %bb.b ]
  %.0 = phi ptr [ %i.c, %bb.d ], [ %0, %bb.b ]    ; 3 uses
  %i.e = sext i8 %i.d to i32
  %memchr95 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.e, i64 11) ; 2 uses
  %.not7396 = icmp eq ptr %memchr95, null
  br i1 %.not7396, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.i
  %memchr100 = phi ptr [ %memchr, %bb.i ], [ %memchr95, %bb.e ]
  %.199 = phi ptr [ %i.o, %bb.i ], [ %.0, %bb.e ] ; 4 uses
  %.24698 = phi i32 [ %.549, %bb.i ], [ %.145, %bb.e ] ; 2 uses
  %.05397 = phi i32 [ %i.n, %bb.i ], [ 0, %bb.e ] ; 4 uses
  %i.f = ptrtoint ptr %memchr100 to i64
  %i.g = trunc i64 %i.f to i32
  %i.h = sub i32 %i.g, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.i = icmp sgt i32 %i.h, 9
  br i1 %i.i, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.j = icmp slt i32 %.05397, -214748364
  br i1 %i.j, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = mul nsw i32 %.05397, 10                  ; 2 uses
  %i.l = or disjoint i32 %i.h, -2147483648
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = sub nsw i32 %i.k, %i.h                   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.199, i64 1 ; 4 uses
  switch i32 %.24698, label %.fold.split125 [
    i32 0, label %bb.i
    i32 1, label %select.unfold
  ]

.fold.split125:                                   ; preds = %bb.h
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.fold.split125
  %.549 = phi i32 [ %.24698, %bb.h ], [ 1, %.fold.split125 ]
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14
  %i.q = sext i8 %i.p to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.q, i64 11) ; 2 uses
  %.not73 = icmp eq ptr %memchr, null
  br i1 %.not73, label %select.unfold, label %.lr.ph

select.unfold:                                    ; preds = %bb.g, %bb.f, %.lr.ph, %bb.i, %bb.h, %bb.e
  %.255.ph = phi i32 [ 0, %bb.e ], [ %i.n, %bb.h ], [ %.05397, %bb.f ], [ %.05397, %.lr.ph ], [ %i.n, %bb.i ], [ -2147483640, %bb.g ] ; 4 uses
  %.252.ph.not = phi i1 [ true, %bb.e ], [ true, %bb.h ], [ false, %bb.f ], [ true, %.lr.ph ], [ true, %bb.i ], [ false, %bb.g ]
  %.3.ph = phi ptr [ %.0, %bb.e ], [ %i.o, %bb.h ], [ %.199, %bb.f ], [ %.199, %.lr.ph ], [ %i.o, %bb.i ], [ %.199, %bb.g ] ; 2 uses
  %i.r = icmp ne ptr %.3.ph, %.0
  %or.cond.not94 = and i1 %.252.ph.not, %i.r
  %i.s = icmp ne i32 %.255.ph, -2147483648
  %or.cond3 = select i1 %i.b, i1 true, i1 %i.s
  %or.cond76 = select i1 %or.cond.not94, i1 %or.cond3, i1 false
  %or.cond76.not = xor i1 %or.cond76, true
  %i.t = icmp eq i32 %.255.ph, 0
  %or.cond5.not = select i1 %i.b, i1 %i.t, i1 false
  %or.cond80 = select i1 %or.cond76.not, i1 true, i1 %or.cond5.not
  br i1 %or.cond80, label %.thread, label %bb.j

bb.j:                                             ; preds = %select.unfold
  %i.u = sub nsw i32 0, %.255.ph
  %spec.select = select i1 %i.b, i32 %.255.ph, i32 %i.u ; 3 uses
  %.not = icmp sgt i32 %2, %spec.select
  %.not75 = icmp sgt i32 %spec.select, %3
  %or.cond77 = or i1 %.not, %.not75
  br i1 %or.cond77, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %spec.select, ptr %4, align 4, !tbaa !3
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.k, %bb.j, %select.unfold, %bb.a
  %.5 = phi ptr [ null, %bb.a ], [ null, %select.unfold ], [ %.3.ph, %bb.k ], [ null, %bb.j ], [ null, %bb.c ]
  ret ptr %.5
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051213time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(none) %4, ptr noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %6 = alloca %struct.tm, align 16                ; 18 uses
  %7 = alloca %"class.std::chrono::duration.1", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %struct.tm, align 8                ; 6 uses
  %12 = alloca %"class.absl::lts_20250512::time_internal::cctz::time_zone", align 8 ; 7 uses
  %13 = alloca %"class.absl::lts_20250512::time_internal::cctz::detail::civil_time", align 8 ; 12 uses
  %14 = alloca %"class.absl::lts_20250512::time_internal::cctz::detail::civil_time", align 8 ; 7 uses
  %15 = alloca %"class.absl::lts_20250512::time_internal::cctz::detail::civil_time", align 8 ; 7 uses
  %16 = alloca %"struct.absl::lts_20250512::time_internal::cctz::time_zone::civil_lookup", align 8 ; 5 uses
  %17 = alloca %"struct.absl::lts_20250512::time_internal::cctz::time_zone::absolute_lookup", align 8 ; 6 uses
  %18 = alloca %"class.std::chrono::time_point", align 8 ; 5 uses
  %19 = alloca %"struct.absl::lts_20250512::time_internal::cctz::time_zone::absolute_lookup", align 8 ; 6 uses
  %20 = alloca %"class.std::chrono::time_point", align 8 ; 5 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !36
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0170 = phi ptr [ %i.e, %bb.a ], [ %i.i, %bb.b ] ; 3 uses
  %i.f = load i8, ptr %.0170, align 1, !tbaa !14
  %i.g = sext i8 %i.f to i32
  %i.h = tail call i32 @isspace(i32 noundef %i.g) #22
  %.not = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %.0170, i64 1
  br i1 %.not, label %._crit_edge.i.i, label %bb.b, !llvm.loop !57

._crit_edge.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 1970, ptr %i.b, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %6, align 16, !tbaa !3
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store <4 x i32> <i32 0, i32 70, i32 4, i32 0>, ptr %i.l, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i64 0, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 0, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store ptr %i.q, ptr %8, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.q, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i64 3, ptr %i.r, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 19
  store i8 0, ptr %i.s, align 1, !tbaa !14
  %i.t = load ptr, ptr %0, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 17
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362
  %.1171.ph798 = phi ptr [ %.0170, %._crit_edge.i.i ], [ %.13, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362 ] ; 2 uses
  %.0177.ph795 = phi i1 [ false, %._crit_edge.i.i ], [ %.3180, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362 ] ; 47 uses
  %.0181.ph793 = phi i1 [ false, %._crit_edge.i.i ], [ %.4185, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362 ] ; 47 uses
  %.0208.ph792 = phi ptr [ %i.t, %._crit_edge.i.i ], [ %.7215, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362 ] ; 2 uses
  %.0216.ph791 = phi i1 [ false, %._crit_edge.i.i ], [ %.6222, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362 ] ; 52 uses
  %.0223.ph790 = phi i1 [ false, %._crit_edge.i.i ], [ %.2225, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362 ] ; 48 uses
  %.0226.ph789 = phi i32 [ 6, %._crit_edge.i.i ], [ %.1227, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362 ] ; 41 uses
  %.0228.ph788 = phi i1 [ false, %._crit_edge.i.i ], [ %.2230, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362 ] ; 46 uses
  %.0.ph787 = phi i32 [ -1, %._crit_edge.i.i ], [ %.1, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362 ] ; 39 uses
  %.0669.ph786 = phi i64 [ 0, %._crit_edge.i.i ], [ %.1670, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362 ] ; 46 uses
  %i.aa = load i8, ptr %.0208.ph792, align 1, !tbaa !14 ; 2 uses
  %.not258.not1129 = icmp eq i8 %i.aa, 0          ; 25 uses
  br i1 %.not258.not1129, label %.critedge, label %.lr.ph1133

.lr.ph1133:                                       ; preds = %.lr.ph, %select.unfold.backedge
  %i.ab = phi i8 [ %i.am, %select.unfold.backedge ], [ %i.aa, %.lr.ph ] ; 3 uses
  %.02087541131 = phi ptr [ %.0208.be, %select.unfold.backedge ], [ %.0208.ph792, %.lr.ph ] ; 19 uses
  %.11717551130 = phi ptr [ %.1171.be, %select.unfold.backedge ], [ %.1171.ph798, %.lr.ph ] ; 59 uses
  %i.ac = sext i8 %i.ab to i32
  %i.ad = call i32 @isspace(i32 noundef %i.ac) #22
  %.not278 = icmp eq i32 %i.ad, 0
  br i1 %.not278, label %bb.c, label %.preheader705

.preheader705:                                    ; preds = %.lr.ph1133, %.preheader705
  %.2172 = phi ptr [ %i.ah, %.preheader705 ], [ %.11717551130, %.lr.ph1133 ] ; 3 uses
  %i.ae = load i8, ptr %.2172, align 1, !tbaa !14
  %i.af = sext i8 %i.ae to i32
  %i.ag = call i32 @isspace(i32 noundef %i.af) #22
  %.not304 = icmp eq i32 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %.2172, i64 1
  br i1 %.not304, label %.preheader704, label %.preheader705, !llvm.loop !58

.preheader704:                                    ; preds = %.preheader705, %.preheader704
  %.1209 = phi ptr [ %i.ai, %.preheader704 ], [ %.02087541131, %.preheader705 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.1209, i64 1 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !14
  %i.ak = sext i8 %i.aj to i32
  %i.al = call i32 @isspace(i32 noundef %i.ak) #22
  %.not305 = icmp eq i32 %i.al, 0
  br i1 %.not305, label %select.unfold.backedge, label %.preheader704, !llvm.loop !59

select.unfold.backedge:                           ; preds = %.preheader704, %bb.d
  %.0208.be = phi ptr [ %.2210, %bb.d ], [ %i.ai, %.preheader704 ] ; 2 uses
  %.1171.be = phi ptr [ %i.ap, %bb.d ], [ %.2172, %.preheader704 ] ; 2 uses
  %i.am = load i8, ptr %.0208.be, align 1, !tbaa !14 ; 2 uses
  %.not258.not = icmp eq i8 %i.am, 0
  br i1 %.not258.not, label %.critedge, label %.lr.ph1133, !llvm.loop !60

bb.c:                                             ; preds = %.lr.ph1133
  %.not279 = icmp eq i8 %i.ab, 37
  br i1 %.not279, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = load i8, ptr %.11717551130, align 1, !tbaa !14
  %i.ao = icmp eq i8 %i.an, %i.ab                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.11717551130, i64 1
  %.2210.idx = zext i1 %i.ao to i64
  %.2210 = getelementptr inbounds nuw i8, ptr %.02087541131, i64 %.2210.idx
  br i1 %i.ao, label %select.unfold.backedge, label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %.02087541131, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !14  ; 2 uses
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %.critedge, label %bb.f, !llvm.loop !60

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.02087541131, i64 2 ; 31 uses
  switch i8 %i.ar, label %bb.dn [
    i8 89, label %bb.g
    i8 109, label %bb.o
    i8 100, label %bb.u
    i8 101, label %bb.u
    i8 85, label %bb.aa
    i8 87, label %bb.ah
    i8 117, label %bb.ao
    i8 119, label %bb.aw
    i8 72, label %bb.be
    i8 77, label %bb.bk
    i8 83, label %bb.bq
    i8 73, label %bb.bw
    i8 108, label %bb.bw
    i8 114, label %bb.bw
    i8 82, label %bb.bx
    i8 84, label %bb.bx
    i8 99, label %bb.bx
    i8 88, label %bb.bx
    i8 122, label %bb.by
    i8 90, label %bb.bz
    i8 115, label %bb.cd
    i8 58, label %bb.cj
    i8 37, label %bb.cp
    i8 69, label %bb.cq
    i8 79, label %bb.dm
  ]

bb.g:                                             ; preds = %bb.f
  %i.au = load i8, ptr %.11717551130, align 1, !tbaa !14 ; 2 uses
  %i.av = icmp eq i8 %i.au, 45                    ; 4 uses
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.11717551130, i64 1 ; 2 uses
  %.pre.i = load i8, ptr %i.aw, align 1, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = phi i8 [ %.pre.i, %bb.h ], [ %i.au, %bb.g ]
  %.0.i = phi ptr [ %i.aw, %bb.h ], [ %.11717551130, %bb.g ] ; 3 uses
  %i.ay = sext i8 %i.ax to i32
  %memchr94.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ay, i64 11) ; 2 uses
  %.not7295.i = icmp eq ptr %memchr94.i, null
  br i1 %.not7295.i, label %select.unfold.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.l
  %memchr99.i = phi ptr [ %memchr.i, %bb.l ], [ %memchr94.i, %bb.i ]
  %.198.i = phi ptr [ %i.bi, %bb.l ], [ %.0.i, %bb.i ] ; 4 uses
  %.05396.i = phi i64 [ %i.bj, %bb.l ], [ 0, %bb.i ] ; 4 uses
  %i.az = ptrtoint ptr %memchr99.i to i64
  %i.ba = trunc i64 %i.az to i32
  %i.bb = sub i32 %i.ba, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 9
  br i1 %i.bc, label %select.unfold.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.bd = icmp slt i64 %.05396.i, -922337203685477580
  br i1 %i.bd, label %select.unfold.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = mul nsw i64 %.05396.i, 10               ; 2 uses
  %i.bf = sext i32 %i.bb to i64                   ; 2 uses
  %i.bg = or disjoint i64 %i.bf, -9223372036854775808
  %i.bh = icmp slt i64 %i.be, %i.bg
  br i1 %i.bh, label %select.unfold.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %.198.i, i64 1 ; 3 uses
  %i.bj = sub nsw i64 %i.be, %i.bf                ; 2 uses
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !14
  %i.bl = sext i8 %i.bk to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bl, i64 11) ; 2 uses
  %.not72.i = icmp eq ptr %memchr.i, null
  br i1 %.not72.i, label %select.unfold.i, label %.lr.ph.i

select.unfold.i:                                  ; preds = %bb.l, %bb.k, %bb.j, %.lr.ph.i, %bb.i
  %.255.ph.i = phi i64 [ 0, %bb.i ], [ %i.bj, %bb.l ], [ %.05396.i, %.lr.ph.i ], [ %.05396.i, %bb.j ], [ -9223372036854775800, %bb.k ] ; 4 uses
  %.252.ph.not.i = phi i1 [ true, %bb.i ], [ true, %bb.l ], [ true, %.lr.ph.i ], [ false, %bb.j ], [ false, %bb.k ]
  %.3.ph.i = phi ptr [ %.0.i, %bb.i ], [ %i.bi, %bb.l ], [ %.198.i, %.lr.ph.i ], [ %.198.i, %bb.j ], [ %.198.i, %bb.k ] ; 2 uses
  %i.bm = icmp ne ptr %.3.ph.i, %.0.i
  %or.cond.not93.i = and i1 %.252.ph.not.i, %i.bm
  %i.bn = icmp ne i64 %.255.ph.i, -9223372036854775808
  %or.cond3.i = select i1 %i.av, i1 true, i1 %i.bn
  %or.cond75.i = select i1 %or.cond.not93.i, i1 %or.cond3.i, i1 false
  %or.cond75.not.i = xor i1 %or.cond75.i, true
  %i.bo = icmp eq i64 %.255.ph.i, 0
  %or.cond5.not.i = select i1 %i.av, i1 %i.bo, i1 false
  %or.cond79.i = select i1 %or.cond75.not.i, i1 true, i1 %or.cond5.not.i
  br i1 %or.cond79.i, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit, label %bb.m

bb.m:                                             ; preds = %select.unfold.i
  %i.bp = sub nsw i64 0, %.255.ph.i
  %spec.select.i = select i1 %i.av, i64 %.255.ph.i, i64 %i.bp
  store i64 %spec.select.i, ptr %i.b, align 8, !tbaa !41
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit: ; preds = %select.unfold.i, %bb.m
  %.4.i = phi ptr [ null, %select.unfold.i ], [ %.3.ph.i, %bb.m ] ; 2 uses
  %.not296 = icmp ne ptr %.4.i, null
  %spec.select = select i1 %.not296, i1 true, i1 %.0177.ph795
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362, !llvm.loop !60

bb.n:                                             ; preds = %bb.cc
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.o:                                             ; preds = %bb.f
  %i.br = load i8, ptr %.11717551130, align 1, !tbaa !14 ; 2 uses
  %i.bs = icmp eq i8 %i.br, 45                    ; 5 uses
  br i1 %i.bs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %.11717551130, i64 1 ; 2 uses
  %.pre.i330 = load i8, ptr %i.bt, align 1, !tbaa !14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bu = phi i8 [ %.pre.i330, %bb.p ], [ %i.br, %bb.o ]
  %.0.i319 = phi ptr [ %i.bt, %bb.p ], [ %.11717551130, %bb.o ] ; 5 uses
  %i.bv = sext i8 %i.bu to i32
  %memchr95.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bv, i64 11) ; 2 uses
  %.not7396.i = icmp eq ptr %memchr95.i, null
  br i1 %.not7396.i, label %select.unfold.i323, label %.lr.ph.i320.peel

.lr.ph.i320.peel:                                 ; preds = %bb.q
  %i.bw = ptrtoint ptr %memchr95.i to i64
  %i.bx = trunc i64 %i.bw to i32
  %i.by = sub i32 %i.bx, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.bz = icmp sgt i32 %i.by, 9
  br i1 %i.bz, label %select.unfold.i323, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i320.peel
  %i.ca = sub nsw i32 0, %i.by                    ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i319, i64 1 ; 4 uses
  br i1 %i.bs, label %select.unfold.i323, label %.fold.split.peel

.fold.split.peel:                                 ; preds = %bb.r
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !14
  %i.cd = sext i8 %i.cc to i32
  %memchr.i322.peel = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.cd, i64 11) ; 2 uses
  %.not73.i.peel = icmp eq ptr %memchr.i322.peel, null
  br i1 %.not73.i.peel, label %select.unfold.i323, label %.lr.ph.i320.preheader.peel.newph

.lr.ph.i320.preheader.peel.newph:                 ; preds = %.fold.split.peel
  %i.ce = mul i32 %i.by, -10                      ; 2 uses
  %i.cf = ptrtoint ptr %memchr.i322.peel to i64
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = sub i32 %i.cg, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.ci = or disjoint i32 %i.ch, -2147483648
  %i.cj = icmp sgt i32 %i.ch, 9                   ; 3 uses
  %i.ck = icmp slt i32 %i.ce, %i.ci
  %brmerge = select i1 %i.cj, i1 true, i1 %i.ck
  %.mux = select i1 %i.cj, i32 %i.ca, i32 -2147483640
  %.mux1360 = select i1 %i.cj, i1 true, i1 false
  br i1 %brmerge, label %select.unfold.i323, label %select.unfold.i323.loopexit.loopexit.split.loop.exit1356

select.unfold.i323.loopexit.loopexit.split.loop.exit1356: ; preds = %.lr.ph.i320.preheader.peel.newph
  %i.cl = sub nsw i32 %i.ce, %i.ch
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i319, i64 2
  br label %select.unfold.i323

select.unfold.i323:                               ; preds = %.lr.ph.i320.preheader.peel.newph, %.lr.ph.i320.peel, %bb.r, %.fold.split.peel, %select.unfold.i323.loopexit.loopexit.split.loop.exit1356, %bb.q
  %.255.ph.i324 = phi i32 [ 0, %bb.q ], [ 0, %.lr.ph.i320.peel ], [ %i.ca, %bb.r ], [ %i.ca, %.fold.split.peel ], [ %.mux, %.lr.ph.i320.preheader.peel.newph ], [ %i.cl, %select.unfold.i323.loopexit.loopexit.split.loop.exit1356 ] ; 4 uses
  %.252.ph.not.i325 = phi i1 [ true, %bb.q ], [ true, %.lr.ph.i320.peel ], [ true, %bb.r ], [ true, %.fold.split.peel ], [ %.mux1360, %.lr.ph.i320.preheader.peel.newph ], [ true, %select.unfold.i323.loopexit.loopexit.split.loop.exit1356 ]
  %.3.ph.i326 = phi ptr [ %.0.i319, %bb.q ], [ %.0.i319, %.lr.ph.i320.peel ], [ %i.cb, %bb.r ], [ %i.cb, %.fold.split.peel ], [ %i.cb, %.lr.ph.i320.preheader.peel.newph ], [ %i.cm, %select.unfold.i323.loopexit.loopexit.split.loop.exit1356 ] ; 2 uses
  %i.cn = icmp ne ptr %.3.ph.i326, %.0.i319
  %or.cond.not94.i = and i1 %.252.ph.not.i325, %i.cn
  %i.co = icmp ne i32 %.255.ph.i324, -2147483648
  %or.cond3.i327 = select i1 %i.bs, i1 true, i1 %i.co
  %or.cond76.i = select i1 %or.cond.not94.i, i1 %or.cond3.i327, i1 false
  %or.cond76.not.i = xor i1 %or.cond76.i, true
  %i.cp = icmp eq i32 %.255.ph.i324, 0
  %or.cond5.not.i328 = select i1 %i.bs, i1 %i.cp, i1 false
  %or.cond80.i = select i1 %or.cond76.not.i, i1 true, i1 %or.cond5.not.i328
  br i1 %or.cond80.i, label %.critedge, label %bb.s, !llvm.loop !60

bb.s:                                             ; preds = %select.unfold.i323
  %i.cq = sub nsw i32 0, %.255.ph.i324
  %spec.select.i329 = select i1 %i.bs, i32 %.255.ph.i324, i32 %i.cq ; 2 uses
  %i.cr = add i32 %spec.select.i329, -13
  %or.cond77.i = icmp ult i32 %i.cr, -12
  br i1 %or.cond77.i, label %.critedge, label %bb.t, !llvm.loop !60

bb.t:                                             ; preds = %bb.s
  %i.cs = add nsw i32 %spec.select.i329, -1
  store i32 %i.cs, ptr %i.l, align 16, !tbaa !22
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362, !llvm.loop !60

bb.u:                                             ; preds = %bb.f, %bb.f
  %i.ct = load i8, ptr %.11717551130, align 1, !tbaa !14 ; 2 uses
  %i.cu = icmp eq i8 %i.ct, 45                    ; 5 uses
  br i1 %i.cu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cv = getelementptr inbounds nuw i8, ptr %.11717551130, i64 1 ; 2 uses
  %.pre.i361 = load i8, ptr %i.cv, align 1, !tbaa !14
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cw = phi i8 [ %.pre.i361, %bb.v ], [ %i.ct, %bb.u ]
  %.0.i333 = phi ptr [ %i.cv, %bb.v ], [ %.11717551130, %bb.u ] ; 5 uses
  %i.cx = sext i8 %i.cw to i32
  %memchr95.i334 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.cx, i64 11) ; 2 uses
  %.not7396.i335 = icmp eq ptr %memchr95.i334, null
  br i1 %.not7396.i335, label %select.unfold.i346, label %.lr.ph.i336.peel

.lr.ph.i336.peel:                                 ; preds = %bb.w
  %i.cy = ptrtoint ptr %memchr95.i334 to i64
  %i.cz = trunc i64 %i.cy to i32
  %i.da = sub i32 %i.cz, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.db = icmp sgt i32 %i.da, 9
  br i1 %i.db, label %select.unfold.i346, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i336.peel
  %i.dc = sub nsw i32 0, %i.da                    ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i333, i64 1 ; 4 uses
  br i1 %i.cu, label %select.unfold.i346, label %.fold.split695.peel.a

.fold.split695.peel.a:                            ; preds = %bb.x
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !14
  %i.df = sext i8 %i.de to i32
  %memchr.i344.peel = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.df, i64 11) ; 2 uses
  %.not73.i345.peel = icmp eq ptr %memchr.i344.peel, null
  br i1 %.not73.i345.peel, label %select.unfold.i346, label %.lr.ph.i336.preheader.peel.newph

.lr.ph.i336.preheader.peel.newph:                 ; preds = %.fold.split695.peel.a
  %i.dg = mul i32 %i.da, -10                      ; 2 uses
  %i.dh = ptrtoint ptr %memchr.i344.peel to i64
  %i.di = trunc i64 %i.dh to i32
  %i.dj = sub i32 %i.di, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.dk = or disjoint i32 %i.dj, -2147483648
  %i.dl = icmp sgt i32 %i.dj, 9                   ; 3 uses
  %i.dm = icmp slt i32 %i.dg, %i.dk
  %brmerge1361 = select i1 %i.dl, i1 true, i1 %i.dm
  %.mux1362 = select i1 %i.dl, i32 %i.dc, i32 -2147483640
  %.mux1363 = select i1 %i.dl, i1 true, i1 false
  br i1 %brmerge1361, label %select.unfold.i346, label %select.unfold.i346.loopexit.loopexit.split.loop.exit1340

select.unfold.i346.loopexit.loopexit.split.loop.exit1340: ; preds = %.lr.ph.i336.preheader.peel.newph
  %i.dn = sub nsw i32 %i.dg, %i.dj
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i333, i64 2
  br label %select.unfold.i346

select.unfold.i346:                               ; preds = %.lr.ph.i336.preheader.peel.newph, %.lr.ph.i336.peel, %bb.x, %.fold.split695.peel.a, %select.unfold.i346.loopexit.loopexit.split.loop.exit1340, %bb.w
  %.255.ph.i347 = phi i32 [ 0, %bb.w ], [ 0, %.lr.ph.i336.peel ], [ %i.dc, %bb.x ], [ %i.dc, %.fold.split695.peel.a ], [ %.mux1362, %.lr.ph.i336.preheader.peel.newph ], [ %i.dn, %select.unfold.i346.loopexit.loopexit.split.loop.exit1340 ] ; 4 uses
  %.252.ph.not.i348 = phi i1 [ true, %bb.w ], [ true, %.lr.ph.i336.peel ], [ true, %bb.x ], [ true, %.fold.split695.peel.a ], [ %.mux1363, %.lr.ph.i336.preheader.peel.newph ], [ true, %select.unfold.i346.loopexit.loopexit.split.loop.exit1340 ]
  %.3.ph.i349 = phi ptr [ %.0.i333, %bb.w ], [ %.0.i333, %.lr.ph.i336.peel ], [ %i.dd, %bb.x ], [ %i.dd, %.fold.split695.peel.a ], [ %i.dd, %.lr.ph.i336.preheader.peel.newph ], [ %i.do, %select.unfold.i346.loopexit.loopexit.split.loop.exit1340 ] ; 2 uses
  %i.dp = icmp ne ptr %.3.ph.i349, %.0.i333
  %or.cond.not94.i350 = and i1 %.252.ph.not.i348, %i.dp
  %i.dq = icmp ne i32 %.255.ph.i347, -2147483648
  %or.cond3.i351 = select i1 %i.cu, i1 true, i1 %i.dq
  %or.cond76.i352 = select i1 %or.cond.not94.i350, i1 %or.cond3.i351, i1 false
  %or.cond76.not.i353 = xor i1 %or.cond76.i352, true
  %i.dr = icmp eq i32 %.255.ph.i347, 0
  %or.cond5.not.i354 = select i1 %i.cu, i1 %i.dr, i1 false
  %or.cond80.i355 = select i1 %or.cond76.not.i353, i1 true, i1 %or.cond5.not.i354
  br i1 %or.cond80.i355, label %.critedge, label %bb.y, !llvm.loop !60

bb.y:                                             ; preds = %select.unfold.i346
  %i.ds = sub nsw i32 0, %.255.ph.i347
  %spec.select.i356 = select i1 %i.cu, i32 %.255.ph.i347, i32 %i.ds ; 2 uses
  %i.dt = add i32 %spec.select.i356, -32
  %or.cond77.i359 = icmp ult i32 %i.dt, -31
  br i1 %or.cond77.i359, label %.critedge, label %bb.z, !llvm.loop !60

bb.z:                                             ; preds = %bb.y
  store i32 %spec.select.i356, ptr %i.m, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362, !llvm.loop !60

bb.aa:                                            ; preds = %bb.f
  %i.du = load i8, ptr %.11717551130, align 1, !tbaa !14 ; 2 uses
  %i.dv = icmp eq i8 %i.du, 45                    ; 4 uses
  br i1 %i.dv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dw = getelementptr inbounds nuw i8, ptr %.11717551130, i64 1 ; 2 uses
  %.pre.i393 = load i8, ptr %i.dw, align 1, !tbaa !14
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dx = phi i8 [ %.pre.i393, %bb.ab ], [ %i.du, %bb.aa ]
  %.0.i365 = phi ptr [ %i.dw, %bb.ab ], [ %.11717551130, %bb.aa ] ; 3 uses
  %i.dy = sext i8 %i.dx to i32
  %memchr95.i366 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.dy, i64 11) ; 2 uses
  %.not7396.i367 = icmp eq ptr %memchr95.i366, null
  br i1 %.not7396.i367, label %select.unfold.i378, label %.lr.ph.i368

.lr.ph.i368:                                      ; preds = %bb.ac, %bb.af
  %memchr100.i369 = phi ptr [ %memchr.i376, %bb.af ], [ %memchr95.i366, %bb.ac ]
  %.199.i370 = phi ptr [ %i.ei, %bb.af ], [ %.0.i365, %bb.ac ] ; 4 uses
  %.05397.i372 = phi i32 [ %i.eh, %bb.af ], [ 0, %bb.ac ] ; 4 uses
  %i.dz = ptrtoint ptr %memchr100.i369 to i64
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = sub i32 %i.ea, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.ec = icmp sgt i32 %i.eb, 9
  br i1 %i.ec, label %select.unfold.i378, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i368
  %i.ed = icmp slt i32 %.05397.i372, -214748364
  br i1 %i.ed, label %select.unfold.i378, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ee = mul nsw i32 %.05397.i372, 10            ; 2 uses
  %i.ef = or disjoint i32 %i.eb, -2147483648
  %i.eg = icmp slt i32 %i.ee, %i.ef
  br i1 %i.eg, label %select.unfold.i378, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eh = sub nsw i32 %i.ee, %i.eb                ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.199.i370, i64 1 ; 3 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !14
  %i.ek = sext i8 %i.ej to i32
  %memchr.i376 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ek, i64 11) ; 2 uses
  %.not73.i377 = icmp eq ptr %memchr.i376, null
  br i1 %.not73.i377, label %select.unfold.i378, label %.lr.ph.i368

select.unfold.i378:                               ; preds = %bb.af, %bb.ae, %bb.ad, %.lr.ph.i368, %bb.ac
  %.255.ph.i379 = phi i32 [ 0, %bb.ac ], [ %i.eh, %bb.af ], [ %.05397.i372, %.lr.ph.i368 ], [ %.05397.i372, %bb.ad ], [ -2147483640, %bb.ae ] ; 4 uses
  %.252.ph.not.i380 = phi i1 [ true, %bb.ac ], [ true, %bb.af ], [ true, %.lr.ph.i368 ], [ false, %bb.ad ], [ false, %bb.ae ]
  %.3.ph.i381 = phi ptr [ %.0.i365, %bb.ac ], [ %i.ei, %bb.af ], [ %.199.i370, %.lr.ph.i368 ], [ %.199.i370, %bb.ad ], [ %.199.i370, %bb.ae ] ; 2 uses
  %i.el = icmp ne ptr %.3.ph.i381, %.0.i365
  %or.cond.not94.i382 = and i1 %.252.ph.not.i380, %i.el
  %i.em = icmp ne i32 %.255.ph.i379, -2147483648
  %or.cond3.i383 = select i1 %i.dv, i1 true, i1 %i.em
  %or.cond76.i384 = select i1 %or.cond.not94.i382, i1 %or.cond3.i383, i1 false
  %or.cond76.not.i385 = xor i1 %or.cond76.i384, true
  %i.en = icmp eq i32 %.255.ph.i379, 0
  %or.cond5.not.i386 = select i1 %i.dv, i1 %i.en, i1 false
  %or.cond80.i387 = select i1 %or.cond76.not.i385, i1 true, i1 %or.cond5.not.i386
  br i1 %or.cond80.i387, label %.critedge, label %bb.ag, !llvm.loop !60

bb.ag:                                            ; preds = %select.unfold.i378
  %i.eo = sub nsw i32 0, %.255.ph.i379
  %spec.select.i388 = select i1 %i.dv, i32 %.255.ph.i379, i32 %i.eo ; 2 uses
  %or.cond77.i391 = icmp ugt i32 %spec.select.i388, 53
  br i1 %or.cond77.i391, label %.critedge, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362, !llvm.loop !60

bb.ah:                                            ; preds = %bb.f
  %i.ep = load i8, ptr %.11717551130, align 1, !tbaa !14 ; 2 uses
  %i.eq = icmp eq i8 %i.ep, 45                    ; 4 uses
  br i1 %i.eq, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.er = getelementptr inbounds nuw i8, ptr %.11717551130, i64 1 ; 2 uses
  %.pre.i425 = load i8, ptr %i.er, align 1, !tbaa !14
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.es = phi i8 [ %.pre.i425, %bb.ai ], [ %i.ep, %bb.ah ]
  %.0.i397 = phi ptr [ %i.er, %bb.ai ], [ %.11717551130, %bb.ah ] ; 3 uses
  %i.et = sext i8 %i.es to i32
  %memchr95.i398 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.et, i64 11) ; 2 uses
  %.not7396.i399 = icmp eq ptr %memchr95.i398, null
  br i1 %.not7396.i399, label %select.unfold.i410, label %.lr.ph.i400

.lr.ph.i400:                                      ; preds = %bb.aj, %bb.am
  %memchr100.i401 = phi ptr [ %memchr.i408, %bb.am ], [ %memchr95.i398, %bb.aj ]
  %.199.i402 = phi ptr [ %i.fd, %bb.am ], [ %.0.i397, %bb.aj ] ; 4 uses
  %.05397.i404 = phi i32 [ %i.fc, %bb.am ], [ 0, %bb.aj ] ; 4 uses
  %i.eu = ptrtoint ptr %memchr100.i401 to i64
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = sub i32 %i.ev, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.ex = icmp sgt i32 %i.ew, 9
  br i1 %i.ex, label %select.unfold.i410, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i400
  %i.ey = icmp slt i32 %.05397.i404, -214748364
  br i1 %i.ey, label %select.unfold.i410, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ez = mul nsw i32 %.05397.i404, 10            ; 2 uses
  %i.fa = or disjoint i32 %i.ew, -2147483648
  %i.fb = icmp slt i32 %i.ez, %i.fa
  br i1 %i.fb, label %select.unfold.i410, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fc = sub nsw i32 %i.ez, %i.ew                ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.199.i402, i64 1 ; 3 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !14
  %i.ff = sext i8 %i.fe to i32
  %memchr.i408 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ff, i64 11) ; 2 uses
  %.not73.i409 = icmp eq ptr %memchr.i408, null
  br i1 %.not73.i409, label %select.unfold.i410, label %.lr.ph.i400

select.unfold.i410:                               ; preds = %bb.am, %bb.al, %bb.ak, %.lr.ph.i400, %bb.aj
  %.255.ph.i411 = phi i32 [ 0, %bb.aj ], [ %i.fc, %bb.am ], [ %.05397.i404, %.lr.ph.i400 ], [ %.05397.i404, %bb.ak ], [ -2147483640, %bb.al ] ; 4 uses
  %.252.ph.not.i412 = phi i1 [ true, %bb.aj ], [ true, %bb.am ], [ true, %.lr.ph.i400 ], [ false, %bb.ak ], [ false, %bb.al ]
  %.3.ph.i413 = phi ptr [ %.0.i397, %bb.aj ], [ %i.fd, %bb.am ], [ %.199.i402, %.lr.ph.i400 ], [ %.199.i402, %bb.ak ], [ %.199.i402, %bb.al ] ; 2 uses
  %i.fg = icmp ne ptr %.3.ph.i413, %.0.i397
  %or.cond.not94.i414 = and i1 %.252.ph.not.i412, %i.fg
  %i.fh = icmp ne i32 %.255.ph.i411, -2147483648
  %or.cond3.i415 = select i1 %i.eq, i1 true, i1 %i.fh
  %or.cond76.i416 = select i1 %or.cond.not94.i414, i1 %or.cond3.i415, i1 false
  %or.cond76.not.i417 = xor i1 %or.cond76.i416, true
  %i.fi = icmp eq i32 %.255.ph.i411, 0
  %or.cond5.not.i418 = select i1 %i.eq, i1 %i.fi, i1 false
  %or.cond80.i419 = select i1 %or.cond76.not.i417, i1 true, i1 %or.cond5.not.i418
  br i1 %or.cond80.i419, label %.critedge, label %bb.an, !llvm.loop !60

bb.an:                                            ; preds = %select.unfold.i410
  %i.fj = sub nsw i32 0, %.255.ph.i411
  %spec.select.i420 = select i1 %i.eq, i32 %.255.ph.i411, i32 %i.fj ; 2 uses
  %or.cond77.i423 = icmp ugt i32 %spec.select.i420, 53
  br i1 %or.cond77.i423, label %.critedge, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362, !llvm.loop !60

bb.ao:                                            ; preds = %bb.f
  %i.fk = load i8, ptr %.11717551130, align 1, !tbaa !14 ; 2 uses
  %i.fl = icmp eq i8 %i.fk, 45                    ; 4 uses
  br i1 %i.fl, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fm = getelementptr inbounds nuw i8, ptr %.11717551130, i64 1 ; 2 uses
  %.pre.i457 = load i8, ptr %i.fm, align 1, !tbaa !14
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fn = phi i8 [ %.pre.i457, %bb.ap ], [ %i.fk, %bb.ao ]
  %.0.i429 = phi ptr [ %i.fm, %bb.ap ], [ %.11717551130, %bb.ao ] ; 3 uses
  %i.fo = sext i8 %i.fn to i32
  %memchr95.i430 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.fo, i64 11) ; 2 uses
  %.not7396.i431 = icmp eq ptr %memchr95.i430, null
  br i1 %.not7396.i431, label %select.unfold.i442, label %.lr.ph.i432

.lr.ph.i432:                                      ; preds = %bb.aq, %bb.at
  %memchr100.i433 = phi ptr [ %memchr.i440, %bb.at ], [ %memchr95.i430, %bb.aq ]
  %.199.i434 = phi ptr [ %i.fy, %bb.at ], [ %.0.i429, %bb.aq ] ; 4 uses
  %.05397.i436 = phi i32 [ %i.fx, %bb.at ], [ 0, %bb.aq ] ; 4 uses
  %i.fp = ptrtoint ptr %memchr100.i433 to i64
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = sub i32 %i.fq, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.fs = icmp sgt i32 %i.fr, 9
  br i1 %i.fs, label %select.unfold.i442, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i432
  %i.ft = icmp slt i32 %.05397.i436, -214748364
  br i1 %i.ft, label %select.unfold.i442, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fu = mul nsw i32 %.05397.i436, 10            ; 2 uses
  %i.fv = or disjoint i32 %i.fr, -2147483648
  %i.fw = icmp slt i32 %i.fu, %i.fv
  br i1 %i.fw, label %select.unfold.i442, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fx = sub nsw i32 %i.fu, %i.fr                ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.199.i434, i64 1 ; 3 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !14
  %i.ga = sext i8 %i.fz to i32
  %memchr.i440 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ga, i64 11) ; 2 uses
  %.not73.i441 = icmp eq ptr %memchr.i440, null
  br i1 %.not73.i441, label %select.unfold.i442, label %.lr.ph.i432

select.unfold.i442:                               ; preds = %bb.at, %bb.as, %bb.ar, %.lr.ph.i432, %bb.aq
  %.255.ph.i443 = phi i32 [ 0, %bb.aq ], [ %i.fx, %bb.at ], [ %.05397.i436, %.lr.ph.i432 ], [ %.05397.i436, %bb.ar ], [ -2147483640, %bb.as ] ; 4 uses
  %.252.ph.not.i444 = phi i1 [ true, %bb.aq ], [ true, %bb.at ], [ true, %.lr.ph.i432 ], [ false, %bb.ar ], [ false, %bb.as ]
  %.3.ph.i445 = phi ptr [ %.0.i429, %bb.aq ], [ %i.fy, %bb.at ], [ %.199.i434, %.lr.ph.i432 ], [ %.199.i434, %bb.ar ], [ %.199.i434, %bb.as ] ; 2 uses
  %i.gb = icmp ne ptr %.3.ph.i445, %.0.i429
  %or.cond.not94.i446 = and i1 %.252.ph.not.i444, %i.gb
  %i.gc = icmp ne i32 %.255.ph.i443, -2147483648
  %or.cond3.i447 = select i1 %i.fl, i1 true, i1 %i.gc
  %or.cond76.i448 = select i1 %or.cond.not94.i446, i1 %or.cond3.i447, i1 false
  %or.cond76.not.i449 = xor i1 %or.cond76.i448, true
  %i.gd = icmp eq i32 %.255.ph.i443, 0
  %or.cond5.not.i450 = select i1 %i.fl, i1 %i.gd, i1 false
  %or.cond80.i451 = select i1 %or.cond76.not.i449, i1 true, i1 %or.cond5.not.i450
  br i1 %or.cond80.i451, label %.critedge, label %bb.au

bb.au:                                            ; preds = %select.unfold.i442
  %i.ge = sub nsw i32 0, %.255.ph.i443
  %spec.select.i452 = select i1 %i.fl, i32 %.255.ph.i443, i32 %i.ge
  %spec.select.i452.frozen = freeze i32 %spec.select.i452 ; 4 uses
  %i.gf = add i32 %spec.select.i452.frozen, -8
  %or.cond77.i455 = icmp ult i32 %i.gf, -7
  br i1 %or.cond77.i455, label %.critedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.urem = add nsw i32 %spec.select.i452.frozen, -7
  %.cmp = icmp ult i32 %spec.select.i452.frozen, 7
  %i.gg = select i1 %.cmp, i32 %spec.select.i452.frozen, i32 %.urem
  store i32 %i.gg, ptr %i.p, align 8, !tbaa !28
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362, !llvm.loop !60

bb.aw:                                            ; preds = %bb.f
  %i.gh = load i8, ptr %.11717551130, align 1, !tbaa !14 ; 2 uses
  %i.gi = icmp eq i8 %i.gh, 45                    ; 4 uses
  br i1 %i.gi, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gj = getelementptr inbounds nuw i8, ptr %.11717551130, i64 1 ; 2 uses
  %.pre.i489 = load i8, ptr %i.gj, align 1, !tbaa !14
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gk = phi i8 [ %.pre.i489, %bb.ax ], [ %i.gh, %bb.aw ]
  %.0.i461 = phi ptr [ %i.gj, %bb.ax ], [ %.11717551130, %bb.aw ] ; 3 uses
  %i.gl = sext i8 %i.gk to i32
  %memchr95.i462 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.gl, i64 11) ; 2 uses
  %.not7396.i463 = icmp eq ptr %memchr95.i462, null
  br i1 %.not7396.i463, label %select.unfold.i474, label %.lr.ph.i464

.lr.ph.i464:                                      ; preds = %bb.ay, %bb.bb
  %memchr100.i465 = phi ptr [ %memchr.i472, %bb.bb ], [ %memchr95.i462, %bb.ay ]
  %.199.i466 = phi ptr [ %i.gv, %bb.bb ], [ %.0.i461, %bb.ay ] ; 4 uses
  %.05397.i468 = phi i32 [ %i.gu, %bb.bb ], [ 0, %bb.ay ] ; 4 uses
  %i.gm = ptrtoint ptr %memchr100.i465 to i64
  %i.gn = trunc i64 %i.gm to i32
  %i.go = sub i32 %i.gn, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.gp = icmp sgt i32 %i.go, 9
  br i1 %i.gp, label %select.unfold.i474, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i464
  %i.gq = icmp slt i32 %.05397.i468, -214748364
  br i1 %i.gq, label %select.unfold.i474, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gr = mul nsw i32 %.05397.i468, 10            ; 2 uses
  %i.gs = or disjoint i32 %i.go, -2147483648
  %i.gt = icmp slt i32 %i.gr, %i.gs
  br i1 %i.gt, label %select.unfold.i474, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gu = sub nsw i32 %i.gr, %i.go                ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.199.i466, i64 1 ; 3 uses
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !14
  %i.gx = sext i8 %i.gw to i32
  %memchr.i472 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.gx, i64 11) ; 2 uses
  %.not73.i473 = icmp eq ptr %memchr.i472, null
  br i1 %.not73.i473, label %select.unfold.i474, label %.lr.ph.i464

select.unfold.i474:                               ; preds = %bb.bb, %bb.ba, %bb.az, %.lr.ph.i464, %bb.ay
  %.255.ph.i475 = phi i32 [ 0, %bb.ay ], [ %i.gu, %bb.bb ], [ %.05397.i468, %.lr.ph.i464 ], [ %.05397.i468, %bb.az ], [ -2147483640, %bb.ba ] ; 4 uses
  %.252.ph.not.i476 = phi i1 [ true, %bb.ay ], [ true, %bb.bb ], [ true, %.lr.ph.i464 ], [ false, %bb.az ], [ false, %bb.ba ]
  %.3.ph.i477 = phi ptr [ %.0.i461, %bb.ay ], [ %i.gv, %bb.bb ], [ %.199.i466, %.lr.ph.i464 ], [ %.199.i466, %bb.az ], [ %.199.i466, %bb.ba ] ; 2 uses
  %i.gy = icmp ne ptr %.3.ph.i477, %.0.i461
  %or.cond.not94.i478 = and i1 %.252.ph.not.i476, %i.gy
  %i.gz = icmp ne i32 %.255.ph.i475, -2147483648
  %or.cond3.i479 = select i1 %i.gi, i1 true, i1 %i.gz
  %or.cond76.i480 = select i1 %or.cond.not94.i478, i1 %or.cond3.i479, i1 false
  %or.cond76.not.i481 = xor i1 %or.cond76.i480, true
  %i.ha = icmp eq i32 %.255.ph.i475, 0
  %or.cond5.not.i482 = select i1 %i.gi, i1 %i.ha, i1 false
  %or.cond80.i483 = select i1 %or.cond76.not.i481, i1 true, i1 %or.cond5.not.i482
  br i1 %or.cond80.i483, label %.critedge, label %bb.bc, !llvm.loop !60

bb.bc:                                            ; preds = %select.unfold.i474
  %i.hb = sub nsw i32 0, %.255.ph.i475
  %spec.select.i484 = select i1 %i.gi, i32 %.255.ph.i475, i32 %i.hb ; 2 uses
  %or.cond77.i487 = icmp ugt i32 %spec.select.i484, 6
  br i1 %or.cond77.i487, label %.critedge, label %bb.bd, !llvm.loop !60

bb.bd:                                            ; preds = %bb.bc
  store i32 %spec.select.i484, ptr %i.p, align 8, !tbaa !3
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362, !llvm.loop !60

bb.be:                                            ; preds = %bb.f
  %i.hc = load i8, ptr %.11717551130, align 1, !tbaa !14 ; 2 uses
  %i.hd = icmp eq i8 %i.hc, 45                    ; 5 uses
  br i1 %i.hd, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.he = getelementptr inbounds nuw i8, ptr %.11717551130, i64 1 ; 2 uses
  %.pre.i521 = load i8, ptr %i.he, align 1, !tbaa !14
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.hf = phi i8 [ %.pre.i521, %bb.bf ], [ %i.hc, %bb.be ]
  %.0.i493 = phi ptr [ %i.he, %bb.bf ], [ %.11717551130, %bb.be ] ; 5 uses
  %i.hg = sext i8 %i.hf to i32
  %memchr95.i494 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.hg, i64 11) ; 2 uses
  %.not7396.i495 = icmp eq ptr %memchr95.i494, null
  br i1 %.not7396.i495, label %select.unfold.i506, label %.lr.ph.i496.peel

.lr.ph.i496.peel:                                 ; preds = %bb.bg
  %i.hh = ptrtoint ptr %memchr95.i494 to i64
  %i.hi = trunc i64 %i.hh to i32
  %i.hj = sub i32 %i.hi, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.hk = icmp sgt i32 %i.hj, 9
  br i1 %i.hk, label %select.unfold.i506, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i496.peel
  %i.hl = sub nsw i32 0, %i.hj                    ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.0.i493, i64 1 ; 4 uses
  br i1 %i.hd, label %select.unfold.i506, label %.fold.split700.peel

.fold.split700.peel:                              ; preds = %bb.bh
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !14
  %i.ho = sext i8 %i.hn to i32
  %memchr.i504.peel = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ho, i64 11) ; 2 uses
  %.not73.i505.peel = icmp eq ptr %memchr.i504.peel, null
  br i1 %.not73.i505.peel, label %select.unfold.i506, label %.lr.ph.i496.preheader.peel.newph

.lr.ph.i496.preheader.peel.newph:                 ; preds = %.fold.split700.peel
  %i.hp = mul i32 %i.hj, -10                      ; 2 uses
  %i.hq = ptrtoint ptr %memchr.i504.peel to i64
  %i.hr = trunc i64 %i.hq to i32
  %i.hs = sub i32 %i.hr, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.ht = or disjoint i32 %i.hs, -2147483648
  %i.hu = icmp sgt i32 %i.hs, 9                   ; 3 uses
  %i.hv = icmp slt i32 %i.hp, %i.ht
  %brmerge1364 = select i1 %i.hu, i1 true, i1 %i.hv
  %.mux1365 = select i1 %i.hu, i32 %i.hl, i32 -2147483640
  %.mux1366 = select i1 %i.hu, i1 true, i1 false
  br i1 %brmerge1364, label %select.unfold.i506, label %select.unfold.i506.loopexit.loopexit.split.loop.exit1324
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_:bb.a
.fold.split701.peel:                              ; preds = %bb.bn
  %i.in = load i8, ptr %i.im, align 1, !tbaa !14
  %i.io = sext i8 %i.in to i32
  %memchr.i536.peel = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.io, i64 11) ; 2 uses
  %.not73.i537.peel = icmp eq ptr %memchr.i536.peel, null
  br i1 %.not73.i537.peel, label %select.unfold.i538, label %.lr.ph.i528.preheader.peel.newph

.lr.ph.i528.preheader.peel.newph:                 ; preds = %.fold.split701.peel
  %i.ip = mul i32 %i.ij, -10                      ; 2 uses
  %i.iq = ptrtoint ptr %memchr.i536.peel to i64
  %i.ir = trunc i64 %i.iq to i32
  %i.is = sub i32 %i.ir, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.it = or disjoint i32 %i.is, -2147483648
  %i.iu = icmp sgt i32 %i.is, 9                   ; 3 uses
  %i.iv = icmp slt i32 %i.ip, %i.it
  %brmerge1367 = select i1 %i.iu, i1 true, i1 %i.iv
  %.mux1368 = select i1 %i.iu, i32 %i.il, i32 -2147483640
  %.mux1369 = select i1 %i.iu, i1 true, i1 false
  br i1 %brmerge1367, label %select.unfold.i538, label %select.unfold.i538.loopexit.loopexit.split.loop.exit1308

select.unfold.i538.loopexit.loopexit.split.loop.exit1308: ; preds = %.lr.ph.i528.preheader.peel.newph
  %i.iw = sub nsw i32 %i.ip, %i.is
  %i.ix = getelementptr inbounds nuw i8, ptr %.0.i525, i64 2
  br label %select.unfold.i538

select.unfold.i538:                               ; preds = %.lr.ph.i528.preheader.peel.newph, %.lr.ph.i528.peel, %bb.bn, %.fold.split701.peel, %select.unfold.i538.loopexit.loopexit.split.loop.exit1308, %bb.bm
  %.255.ph.i539 = phi i32 [ 0, %bb.bm ], [ 0, %.lr.ph.i528.peel ], [ %i.il, %bb.bn ], [ %i.il, %.fold.split701.peel ], [ %.mux1368, %.lr.ph.i528.preheader.peel.newph ], [ %i.iw, %select.unfold.i538.loopexit.loopexit.split.loop.exit1308 ] ; 4 uses
  %.252.ph.not.i540 = phi i1 [ true, %bb.bm ], [ true, %.lr.ph.i528.peel ], [ true, %bb.bn ], [ true, %.fold.split701.peel ], [ %.mux1369, %.lr.ph.i528.preheader.peel.newph ], [ true, %select.unfold.i538.loopexit.loopexit.split.loop.exit1308 ]
  %.3.ph.i541 = phi ptr [ %.0.i525, %bb.bm ], [ %.0.i525, %.lr.ph.i528.peel ], [ %i.im, %bb.bn ], [ %i.im, %.fold.split701.peel ], [ %i.im, %.lr.ph.i528.preheader.peel.newph ], [ %i.ix, %select.unfold.i538.loopexit.loopexit.split.loop.exit1308 ] ; 2 uses
  %i.iy = icmp ne ptr %.3.ph.i541, %.0.i525
  %or.cond.not94.i542 = and i1 %.252.ph.not.i540, %i.iy
  %i.iz = icmp ne i32 %.255.ph.i539, -2147483648
  %or.cond3.i543 = select i1 %i.id, i1 true, i1 %i.iz
  %or.cond76.i544 = select i1 %or.cond.not94.i542, i1 %or.cond3.i543, i1 false
  %or.cond76.not.i545 = xor i1 %or.cond76.i544, true
  %i.ja = icmp eq i32 %.255.ph.i539, 0
  %or.cond5.not.i546 = select i1 %i.id, i1 %i.ja, i1 false
  %or.cond80.i547 = select i1 %or.cond76.not.i545, i1 true, i1 %or.cond5.not.i546
  br i1 %or.cond80.i547, label %.critedge, label %bb.bo, !llvm.loop !60

bb.bo:                                            ; preds = %select.unfold.i538
  %i.jb = sub nsw i32 0, %.255.ph.i539
  %spec.select.i548 = select i1 %i.id, i32 %.255.ph.i539, i32 %i.jb ; 2 uses
  %or.cond77.i551 = icmp ugt i32 %spec.select.i548, 59
  br i1 %or.cond77.i551, label %.critedge, label %bb.bp, !llvm.loop !60

bb.bp:                                            ; preds = %bb.bo
  store i32 %spec.select.i548, ptr %i.o, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362, !llvm.loop !60

bb.bq:                                            ; preds = %bb.f
  %i.jc = load i8, ptr %.11717551130, align 1, !tbaa !14 ; 2 uses
  %i.jd = icmp eq i8 %i.jc, 45                    ; 5 uses
  br i1 %i.jd, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.je = getelementptr inbounds nuw i8, ptr %.11717551130, i64 1 ; 2 uses
  %.pre.i585 = load i8, ptr %i.je, align 1, !tbaa !14
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.jf = phi i8 [ %.pre.i585, %bb.br ], [ %i.jc, %bb.bq ]
  %.0.i557 = phi ptr [ %i.je, %bb.br ], [ %.11717551130, %bb.bq ] ; 5 uses
  %i.jg = sext i8 %i.jf to i32
  %memchr95.i558 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.jg, i64 11) ; 2 uses
  %.not7396.i559 = icmp eq ptr %memchr95.i558, null
  br i1 %.not7396.i559, label %select.unfold.i570, label %.lr.ph.i560.peel

.lr.ph.i560.peel:                                 ; preds = %bb.bs
  %i.jh = ptrtoint ptr %memchr95.i558 to i64
  %i.ji = trunc i64 %i.jh to i32
  %i.jj = sub i32 %i.ji, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.jk = icmp sgt i32 %i.jj, 9
  br i1 %i.jk, label %select.unfold.i570, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i560.peel
  %i.jl = sub nsw i32 0, %i.jj                    ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.i557, i64 1 ; 4 uses
  br i1 %i.jd, label %select.unfold.i570, label %.fold.split702.peel

.fold.split702.peel:                              ; preds = %bb.bt
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !14
  %i.jo = sext i8 %i.jn to i32
  %memchr.i568.peel = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.jo, i64 11) ; 2 uses
  %.not73.i569.peel = icmp eq ptr %memchr.i568.peel, null
  br i1 %.not73.i569.peel, label %select.unfold.i570, label %.lr.ph.i560.preheader.peel.newph

.lr.ph.i560.preheader.peel.newph:                 ; preds = %.fold.split702.peel
  %i.jp = mul i32 %i.jj, -10                      ; 2 uses
  %i.jq = ptrtoint ptr %memchr.i568.peel to i64
  %i.jr = trunc i64 %i.jq to i32
  %i.js = sub i32 %i.jr, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.jt = or disjoint i32 %i.js, -2147483648
  %i.ju = icmp sgt i32 %i.js, 9                   ; 3 uses
  %i.jv = icmp slt i32 %i.jp, %i.jt
  %brmerge1370 = select i1 %i.ju, i1 true, i1 %i.jv
  %.mux1371 = select i1 %i.ju, i32 %i.jl, i32 -2147483640
  %.mux1372 = select i1 %i.ju, i1 true, i1 false
  br i1 %brmerge1370, label %select.unfold.i570, label %select.unfold.i570.loopexit.loopexit.split.loop.exit1292

select.unfold.i570.loopexit.loopexit.split.loop.exit1292: ; preds = %.lr.ph.i560.preheader.peel.newph
  %i.jw = sub nsw i32 %i.jp, %i.js
  %i.jx = getelementptr inbounds nuw i8, ptr %.0.i557, i64 2
  br label %select.unfold.i570

select.unfold.i570:                               ; preds = %.lr.ph.i560.preheader.peel.newph, %.lr.ph.i560.peel, %bb.bt, %.fold.split702.peel, %select.unfold.i570.loopexit.loopexit.split.loop.exit1292, %bb.bs
  %.255.ph.i571 = phi i32 [ 0, %bb.bs ], [ 0, %.lr.ph.i560.peel ], [ %i.jl, %bb.bt ], [ %i.jl, %.fold.split702.peel ], [ %.mux1371, %.lr.ph.i560.preheader.peel.newph ], [ %i.jw, %select.unfold.i570.loopexit.loopexit.split.loop.exit1292 ] ; 4 uses
  %.252.ph.not.i572 = phi i1 [ true, %bb.bs ], [ true, %.lr.ph.i560.peel ], [ true, %bb.bt ], [ true, %.fold.split702.peel ], [ %.mux1372, %.lr.ph.i560.preheader.peel.newph ], [ true, %select.unfold.i570.loopexit.loopexit.split.loop.exit1292 ]
  %.3.ph.i573 = phi ptr [ %.0.i557, %bb.bs ], [ %.0.i557, %.lr.ph.i560.peel ], [ %i.jm, %bb.bt ], [ %i.jm, %.fold.split702.peel ], [ %i.jm, %.lr.ph.i560.preheader.peel.newph ], [ %i.jx, %select.unfold.i570.loopexit.loopexit.split.loop.exit1292 ] ; 2 uses
  %i.jy = icmp ne ptr %.3.ph.i573, %.0.i557
  %or.cond.not94.i574 = and i1 %.252.ph.not.i572, %i.jy
  %i.jz = icmp ne i32 %.255.ph.i571, -2147483648
  %or.cond3.i575 = select i1 %i.jd, i1 true, i1 %i.jz
  %or.cond76.i576 = select i1 %or.cond.not94.i574, i1 %or.cond3.i575, i1 false
  %or.cond76.not.i577 = xor i1 %or.cond76.i576, true
  %i.ka = icmp eq i32 %.255.ph.i571, 0
  %or.cond5.not.i578 = select i1 %i.jd, i1 %i.ka, i1 false
  %or.cond80.i579 = select i1 %or.cond76.not.i577, i1 true, i1 %or.cond5.not.i578
  br i1 %or.cond80.i579, label %.critedge, label %bb.bu, !llvm.loop !60

bb.bu:                                            ; preds = %select.unfold.i570
  %i.kb = sub nsw i32 0, %.255.ph.i571
  %spec.select.i580 = select i1 %i.jd, i32 %.255.ph.i571, i32 %i.kb ; 2 uses
  %or.cond77.i583 = icmp ugt i32 %spec.select.i580, 60
  br i1 %or.cond77.i583, label %.critedge, label %bb.bv, !llvm.loop !60

bb.bv:                                            ; preds = %bb.bu
  store i32 %spec.select.i580, ptr %6, align 16, !tbaa !3
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362, !llvm.loop !60

bb.bw:                                            ; preds = %bb.f, %bb.f, %bb.f
  br label %bb.dn

bb.bx:                                            ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  br label %bb.dn

bb.by:                                            ; preds = %bb.f
  %i.kc = call fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_111ParseOffsetEPKcS6_Pi(ptr noundef %.11717551130, i8 0, ptr noundef %i.c) ; 2 uses
  %.not293 = icmp ne ptr %i.kc, null
  %spec.select306 = select i1 %.not293, i1 true, i1 %.0181.ph793
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362, !llvm.loop !60

bb.bz:                                            ; preds = %bb.f
  store i64 0, ptr %i.r, align 8, !tbaa !11
  %i.kd = load ptr, ptr %8, align 8, !tbaa !36
  store i8 0, ptr %i.kd, align 1, !tbaa !14
  %i.ke = load i8, ptr %.11717551130, align 1, !tbaa !14 ; 2 uses
  %.not12.i = icmp eq i8 %i.ke, 0
  br i1 %.not12.i, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i587.a

.lr.ph.i587.a:                                    ; preds = %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i
  %i.kf = phi i8 [ %i.kv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i ], [ %i.ke, %bb.bz ] ; 2 uses
  %.013.i = phi ptr [ %i.ki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i ], [ %.11717551130, %bb.bz ] ; 2 uses
  %i.kg = sext i8 %i.kf to i32
  %i.kh = call i32 @isspace(i32 noundef %i.kg) #22
  %.not11.i = icmp eq i32 %i.kh, 0
  br i1 %.not11.i, label %bb.ca, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.ca:                                            ; preds = %.lr.ph.i587.a
  %i.ki = getelementptr inbounds nuw i8, ptr %.013.i, i64 1 ; 3 uses
  %i.kj = load i64, ptr %i.r, align 8, !tbaa !11  ; 4 uses
  %i.kk = add i64 %i.kj, 1                        ; 3 uses
  %i.kl = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.q                 ; 2 uses
  br i1 %i.km, label %bb.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.kn = icmp ult i64 %i.kj, 16
  call void @llvm.assume(i1 %i.kn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.cb, %bb.ca
  %i.ko = load i64, ptr %i.q, align 8
  %i.kp = select i1 %i.km, i64 15, i64 %i.ko
  %i.kq = icmp ugt i64 %i.kk, %i.kp
  br i1 %i.kq, label %bb.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

bb.cc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.kj, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc590 unwind label %bb.n

.noexc590:                                        ; preds = %bb.cc
  %.pre.i.i = load ptr, ptr %8, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i: ; preds = %.noexc590, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.kr = phi ptr [ %.pre.i.i, %.noexc590 ], [ %i.kl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kj
  store i8 %i.kf, ptr %i.ks, align 1, !tbaa !14
  store i64 %i.kk, ptr %i.r, align 8, !tbaa !11
  %i.kt = load ptr, ptr %8, align 8, !tbaa !36
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.kk
  store i8 0, ptr %i.ku, align 1, !tbaa !14
  %i.kv = load i8, ptr %i.ki, align 1, !tbaa !14  ; 2 uses
  %.not.i589 = icmp eq i8 %i.kv, 0
  br i1 %.not.i589, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i587.a, !llvm.loop !61

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i587.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i, %bb.bz
  %.0.lcssa.i = phi ptr [ %.11717551130, %bb.bz ], [ %.013.i, %.lr.ph.i587.a ], [ %i.ki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i ]
  %i.kw = load i64, ptr %i.r, align 8, !tbaa !11
  %i.kx = icmp eq i64 %i.kw, 0
  br i1 %i.kx, label %.critedge, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362

bb.cd:                                            ; preds = %bb.f
  %i.ky = load i8, ptr %.11717551130, align 1, !tbaa !14 ; 2 uses
  %i.kz = icmp eq i8 %i.ky, 45                    ; 4 uses
  br i1 %i.kz, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.la = getelementptr inbounds nuw i8, ptr %.11717551130, i64 1 ; 2 uses
  %.pre.i617 = load i8, ptr %i.la, align 1, !tbaa !14
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.lb = phi i8 [ %.pre.i617, %bb.ce ], [ %i.ky, %bb.cd ]
  %.0.i592 = phi ptr [ %i.la, %bb.ce ], [ %.11717551130, %bb.cd ] ; 3 uses
  %i.lc = sext i8 %i.lb to i32
  %memchr94.i593 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.lc, i64 11) ; 2 uses
  %.not7295.i594 = icmp eq ptr %memchr94.i593, null
  br i1 %.not7295.i594, label %select.unfold.i603, label %.lr.ph.i595

.lr.ph.i595:                                      ; preds = %bb.cf, %bb.ci
  %memchr99.i596 = phi ptr [ %memchr.i601, %bb.ci ], [ %memchr94.i593, %bb.cf ]
  %.198.i597 = phi ptr [ %i.lm, %bb.ci ], [ %.0.i592, %bb.cf ] ; 4 uses
  %.05396.i599 = phi i64 [ %i.ln, %bb.ci ], [ 0, %bb.cf ] ; 4 uses
  %i.ld = ptrtoint ptr %memchr99.i596 to i64
  %i.le = trunc i64 %i.ld to i32
  %i.lf = sub i32 %i.le, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %i.lg = icmp sgt i32 %i.lf, 9
  br i1 %i.lg, label %select.unfold.i603, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i595
  %i.lh = icmp slt i64 %.05396.i599, -922337203685477580
  br i1 %i.lh, label %select.unfold.i603, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.li = mul nsw i64 %.05396.i599, 10            ; 2 uses
  %i.lj = sext i32 %i.lf to i64                   ; 2 uses
  %i.lk = or disjoint i64 %i.lj, -9223372036854775808
  %i.ll = icmp slt i64 %i.li, %i.lk
  br i1 %i.ll, label %select.unfold.i603, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lm = getelementptr inbounds nuw i8, ptr %.198.i597, i64 1 ; 3 uses
  %i.ln = sub nsw i64 %i.li, %i.lj                ; 2 uses
  %i.lo = load i8, ptr %i.lm, align 1, !tbaa !14
  %i.lp = sext i8 %i.lo to i32
  %memchr.i601 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.lp, i64 11) ; 2 uses
  %.not72.i602 = icmp eq ptr %memchr.i601, null
  br i1 %.not72.i602, label %select.unfold.i603, label %.lr.ph.i595

select.unfold.i603:                               ; preds = %bb.ci, %bb.ch, %bb.cg, %.lr.ph.i595, %bb.cf
  %.255.ph.i604 = phi i64 [ 0, %bb.cf ], [ %i.ln, %bb.ci ], [ %.05396.i599, %.lr.ph.i595 ], [ %.05396.i599, %bb.cg ], [ -9223372036854775800, %bb.ch ] ; 4 uses
  %.252.ph.not.i605 = phi i1 [ true, %bb.cf ], [ true, %bb.ci ], [ true, %.lr.ph.i595 ], [ false, %bb.cg ], [ false, %bb.ch ]
  %.3.ph.i606 = phi ptr [ %.0.i592, %bb.cf ], [ %i.lm, %bb.ci ], [ %.198.i597, %.lr.ph.i595 ], [ %.198.i597, %bb.cg ], [ %.198.i597, %bb.ch ] ; 2 uses
  %i.lq = icmp ne ptr %.3.ph.i606, %.0.i592
  %or.cond.not93.i607 = and i1 %.252.ph.not.i605, %i.lq
  %i.lr = icmp ne i64 %.255.ph.i604, -9223372036854775808
  %or.cond3.i608 = select i1 %i.kz, i1 true, i1 %i.lr
  %or.cond75.i609 = select i1 %or.cond.not93.i607, i1 %or.cond3.i608, i1 false
  %or.cond75.not.i610 = xor i1 %or.cond75.i609, true
  %i.ls = icmp eq i64 %.255.ph.i604, 0
  %or.cond5.not.i611 = select i1 %i.kz, i1 %i.ls, i1 false
  %or.cond79.i612 = select i1 %or.cond75.not.i610, i1 true, i1 %or.cond5.not.i611
  %i.lt = sub nsw i64 0, %.255.ph.i604
  %.2671 = select i1 %i.kz, i64 %.255.ph.i604, i64 %i.lt
  br i1 %or.cond79.i612, label %.critedge, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362, !llvm.loop !60

bb.cj:                                            ; preds = %bb.f
  %i.lu = load i8, ptr %i.at, align 1, !tbaa !14
  switch i8 %i.lu, label %bb.dn [
    i8 122, label %bb.cm
    i8 58, label %bb.ck
  ]

bb.ck:                                            ; preds = %bb.cj
  %i.lv = getelementptr inbounds nuw i8, ptr %.02087541131, i64 3
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !14
  switch i8 %i.lw, label %bb.dn [
    i8 122, label %bb.cm
    i8 58, label %bb.cl
  ]

bb.cl:                                            ; preds = %bb.ck
  %i.lx = getelementptr inbounds nuw i8, ptr %.02087541131, i64 4
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !14
  %i.lz = icmp eq i8 %i.ly, 122
  br i1 %i.lz, label %bb.cm, label %bb.dn

bb.cm:                                            ; preds = %bb.ck, %bb.cj, %bb.cl
  %i.ma = call fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_111ParseOffsetEPKcS6_Pi(ptr noundef %.11717551130, i8 58, ptr noundef %i.c) ; 2 uses
  %.not291 = icmp ne ptr %i.ma, null
  %spec.select308 = select i1 %.not291, i1 true, i1 %.0181.ph793
  %i.mb = load i8, ptr %i.at, align 1, !tbaa !14
  %i.mc = icmp eq i8 %i.mb, 122
  br i1 %i.mc, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.md = getelementptr inbounds nuw i8, ptr %.02087541131, i64 3
  %i.me = load i8, ptr %i.md, align 1, !tbaa !14
  %i.mf = icmp eq i8 %i.me, 122
  %i.mg = select i1 %i.mf, i64 2, i64 3
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %i.mh = phi i64 [ %i.mg, %bb.cn ], [ 1, %bb.cm ]
  %i.mi = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.mh
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362, !llvm.loop !60

bb.cp:                                            ; preds = %bb.f
  %i.mj = load i8, ptr %.11717551130, align 1, !tbaa !14
  %i.mk = icmp eq i8 %i.mj, 37
  %i.ml = getelementptr inbounds nuw i8, ptr %.11717551130, i64 1
  br i1 %i.mk, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362, label %.critedge, !llvm.loop !60

bb.cq:                                            ; preds = %bb.f
  %i.mm = load i8, ptr %i.at, align 1, !tbaa !14  ; 3 uses
  switch i8 %i.mm, label %bb.de [
    i8 84, label %bb.cr
    i8 122, label %bb.cu
    i8 42, label %bb.ct
    i8 52, label %bb.dc
  ]

bb.cr:                                            ; preds = %bb.cq
  %i.mn = load i8, ptr %.11717551130, align 1, !tbaa !14
  switch i8 %i.mn, label %.critedge [
    i8 84, label %bb.cs
    i8 116, label %bb.cs
  ], !llvm.loop !60

bb.cs:                                            ; preds = %bb.cr, %bb.cr
  %i.mo = getelementptr inbounds nuw i8, ptr %.11717551130, i64 1
  %i.mp = getelementptr inbounds nuw i8, ptr %.02087541131, i64 3
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362, !llvm.loop !60

bb.ct:                                            ; preds = %bb.cq
  %i.mq = getelementptr inbounds nuw i8, ptr %.02087541131, i64 3
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !14
  switch i8 %i.mr, label %.thread682.thread [
    i8 122, label %bb.cu
    i8 83, label %bb.cv
    i8 102, label %bb.cz
  ]

bb.cu:                                            ; preds = %bb.ct, %bb.cq
  %i.ms = call fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_111ParseOffsetEPKcS6_Pi(ptr noundef %.11717551130, i8 58, ptr noundef %i.c) ; 2 uses
  %.not290 = icmp ne ptr %i.ms, null
  %spec.select309 = select i1 %.not290, i1 true, i1 %.0181.ph793
  %i.mt = load i8, ptr %i.at, align 1, !tbaa !14
  %i.mu = icmp eq i8 %i.mt, 122
  %i.mv = select i1 %i.mu, i64 1, i64 2
  %i.mw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.mv
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362, !llvm.loop !60

bb.cv:                                            ; preds = %bb.ct
  %i.mx = call fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_(ptr noundef nonnull %.11717551130, i32 noundef 2, i32 noundef 0, i32 noundef 60, ptr noundef %6) ; 4 uses
  %.not289 = icmp eq ptr %i.mx, null
  br i1 %.not289, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !14
  %i.mz = icmp eq i8 %i.my, 46
  br i1 %i.mz, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 1
  %i.nb = call fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_115ParseSubSecondsEPKcPNSt6chrono8durationIlSt5ratioILl1ELl1000000000000000EEEE(ptr noundef %i.na, ptr noundef %7)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %bb.cv
  %.5175 = phi ptr [ null, %bb.cv ], [ %i.mx, %bb.cw ], [ %i.nb, %bb.cx ]
  %i.nc = getelementptr inbounds nuw i8, ptr %.02087541131, i64 4
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362, !llvm.loop !60

.thread682.thread:                                ; preds = %bb.ct
  %i.nd = getelementptr inbounds nuw i8, ptr %.02087541131, i64 3
  br label %bb.dn

bb.cz:                                            ; preds = %bb.ct
  %i.ne = load i8, ptr %.11717551130, align 1, !tbaa !14
  %i.nf = sext i8 %i.ne to i32
  %isdigittmp287 = add nsw i32 %i.nf, -48
  %isdigit288 = icmp ult i32 %isdigittmp287, 10
  br i1 %isdigit288, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.ng = call fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_115ParseSubSecondsEPKcPNSt6chrono8durationIlSt5ratioILl1ELl1000000000000000EEEE(ptr noundef %.11717551130, ptr noundef %7)
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.6176 = phi ptr [ %.11717551130, %bb.cz ], [ %i.ng, %bb.da ]
  %i.nh = getelementptr inbounds nuw i8, ptr %.02087541131, i64 4
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362, !llvm.loop !60

bb.dc:                                            ; preds = %bb.cq
  %i.ni = getelementptr inbounds nuw i8, ptr %.02087541131, i64 3
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !14
  %i.nk = icmp eq i8 %i.nj, 89
  br i1 %i.nk, label %bb.dd, label %.thread679

bb.dd:                                            ; preds = %bb.dc
  %i.nl = call fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_(ptr noundef %.11717551130, i32 noundef 4, i64 noundef -999, i64 noundef 9999, ptr noundef %i.b) ; 3 uses
  %.not286 = icmp ne ptr %i.nl, null
  %i.nm = ptrtoint ptr %i.nl to i64
  %i.nn = ptrtoint ptr %.11717551130 to i64
  %i.no = sub i64 %i.nm, %i.nn
  %i.np = icmp eq i64 %i.no, 4                    ; 2 uses
  %.not801 = and i1 %.not286, %i.np
  %.2179 = select i1 %.not801, i1 true, i1 %.0177.ph795
  %i.nq = getelementptr inbounds nuw i8, ptr %.02087541131, i64 4
  br i1 %i.np, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362, label %.critedge

bb.de:                                            ; preds = %bb.cq
  %i.nr = sext i8 %i.mm to i32
  %isdigittmp = add nsw i32 %i.nr, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %.thread679, label %.thread682

.thread679:                                       ; preds = %bb.dc, %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !3
  %i.ns = call fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_(ptr noundef nonnull %i.at, i32 noundef 0, i32 noundef 0, i32 noundef 1024, ptr noundef %i.d) ; 3 uses
  %.not281 = icmp eq ptr %i.ns, null
  br i1 %.not281, label %.thread686, label %bb.df

bb.df:                                            ; preds = %.thread679
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !14
  switch i8 %i.nt, label %.thread686 [
    i8 83, label %bb.dg
    i8 102, label %bb.dj
  ]

bb.dg:                                            ; preds = %bb.df
  %i.nu = call fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_(ptr noundef nonnull %.11717551130, i32 noundef 2, i32 noundef 0, i32 noundef 60, ptr noundef %6) ; 4 uses
  %.not284 = icmp eq ptr %i.nu, null
  br i1 %.not284, label %bb.dl, label %bb.dh, !llvm.loop !60

bb.dh:                                            ; preds = %bb.dg
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !14
  %i.nw = icmp eq i8 %i.nv, 46
  br i1 %i.nw, label %bb.di, label %bb.dl, !llvm.loop !60

bb.di:                                            ; preds = %bb.dh
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 1
  br label %.sink.split, !llvm.loop !60

bb.dj:                                            ; preds = %bb.df
  %i.ny = load i8, ptr %.11717551130, align 1, !tbaa !14
  %i.nz = sext i8 %i.ny to i32
  %isdigittmp282 = add nsw i32 %i.nz, -48
  %isdigit283 = icmp ult i32 %isdigittmp282, 10
  br i1 %isdigit283, label %bb.dk, label %bb.dl, !llvm.loop !60

bb.dk:                                            ; preds = %bb.dj
  br label %.sink.split, !llvm.loop !60

.thread686:                                       ; preds = %bb.df, %.thread679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %.pre = load i8, ptr %i.at, align 1, !tbaa !14
  %i.oa = freeze i8 %.pre
  br label %.thread682

.sink.split:                                      ; preds = %bb.di, %bb.dk
  %.1171755.lcssa1011.sink = phi ptr [ %.11717551130, %bb.dk ], [ %i.nx, %bb.di ]
  %i.ob = call fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_115ParseSubSecondsEPKcPNSt6chrono8durationIlSt5ratioILl1ELl1000000000000000EEEE(ptr noundef %.1171755.lcssa1011.sink, ptr noundef %7)
  br label %bb.dl

bb.dl:                                            ; preds = %.sink.split, %bb.dj, %bb.dg, %bb.dh
  %.10 = phi ptr [ %.11717551130, %bb.dj ], [ null, %bb.dg ], [ %i.nu, %bb.dh ], [ %i.ob, %.sink.split ]
  %.4212 = getelementptr inbounds nuw i8, ptr %i.ns, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362

.thread682:                                       ; preds = %.thread686, %bb.de
  %.fr = phi i8 [ %i.mm, %bb.de ], [ %i.oa, %.thread686 ] ; 3 uses
  %i.oc = icmp ne i8 %.fr, 99
  %i.od = icmp ne i8 %.fr, 88
  %.not804 = and i1 %i.od, %i.oc
  %.2218 = select i1 %.not804, i1 %.0216.ph791, i1 false
  %.not285 = icmp eq i8 %.fr, 0
  %i.oe = getelementptr inbounds nuw i8, ptr %.02087541131, i64 3
  %spec.select1064 = select i1 %.not285, ptr %i.at, ptr %i.oe
  br label %bb.dn

bb.dm:                                            ; preds = %bb.f
  %i.of = load i8, ptr %i.at, align 1, !tbaa !14  ; 3 uses
  %i.og = icmp ne i8 %i.of, 72
  %spec.select311 = select i1 %i.og, i1 %.0216.ph791, i1 false
  %i.oh = icmp eq i8 %i.of, 73
  %.4220 = select i1 %i.oh, i1 true, i1 %spec.select311
  %.not280 = icmp eq i8 %i.of, 0
  %i.oi = getelementptr inbounds nuw i8, ptr %.02087541131, i64 3
  %spec.select317 = select i1 %.not280, ptr %i.at, ptr %i.oi
  br label %bb.dn

bb.dn:                                            ; preds = %.thread682, %.thread682.thread, %bb.f, %bb.bw, %bb.bx, %bb.cl, %bb.cj, %bb.ck, %bb.dm
  %.5221 = phi i1 [ %.0216.ph791, %bb.f ], [ true, %bb.bw ], [ false, %bb.bx ], [ %.0216.ph791, %bb.cl ], [ %.0216.ph791, %bb.ck ], [ %.0216.ph791, %bb.cj ], [ %.4220, %bb.dm ], [ %.0216.ph791, %.thread682.thread ], [ %.2218, %.thread682 ]
  %.6214 = phi ptr [ %i.at, %bb.f ], [ %i.at, %bb.bw ], [ %i.at, %bb.bx ], [ %i.at, %bb.cl ], [ %i.at, %bb.ck ], [ %i.at, %bb.cj ], [ %spec.select317, %bb.dm ], [ %i.nd, %.thread682.thread ], [ %spec.select1064, %.thread682 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.oj = ptrtoint ptr %.6214 to i64
  %i.ok = ptrtoint ptr %.02087541131 to i64
  %i.ol = sub i64 %i.oj, %i.ok                    ; 4 uses
  store ptr %i.u, ptr %9, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.ol, ptr %i.a, align 8, !tbaa !41
  %i.om = icmp ugt i64 %i.ol, 15
  br i1 %i.om, label %.noexc.i620, label %._crit_edge.i.i619

.noexc.i620:                                      ; preds = %bb.dn
  %i.on = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc622 unwind label %bb.dr ; 2 uses

.noexc622:                                        ; preds = %.noexc.i620
  store ptr %i.on, ptr %9, align 8, !tbaa !36
  %i.oo = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.oo, ptr %i.u, align 8, !tbaa !14
  br label %._crit_edge.i.i619

._crit_edge.i.i619:                               ; preds = %.noexc622, %bb.dn
  %i.op = phi ptr [ %i.on, %.noexc622 ], [ %i.u, %bb.dn ] ; 2 uses
  switch i64 %i.ol, label %bb.dp [
    i64 1, label %bb.do
    i64 0, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit
  ]

bb.do:                                            ; preds = %._crit_edge.i.i619
  %i.oq = load i8, ptr %.02087541131, align 1, !tbaa !14
  store i8 %i.oq, ptr %i.op, align 1, !tbaa !14
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit

bb.dp:                                            ; preds = %._crit_edge.i.i619
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.op, ptr nonnull align 1 %.02087541131, i64 %i.ol, i1 false)
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit: ; preds = %bb.dp, %bb.do, %._crit_edge.i.i619
  %i.or = load i64, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  store i64 %i.or, ptr %i.v, align 8, !tbaa !11
  %i.os = load ptr, ptr %9, align 8, !tbaa !36
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.or
  store i8 0, ptr %i.ot, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ou = load ptr, ptr %9, align 8, !tbaa !36
  %i.ov = call ptr @strptime(ptr noundef nonnull %.11717551130, ptr noundef %i.ou, ptr noundef nonnull %6) #18 ; 3 uses
  %i.ow = load i64, ptr %i.v, align 8, !tbaa !11
  %i.ox = icmp eq i64 %i.ow, 2
  %.pre860 = load ptr, ptr %9, align 8, !tbaa !36 ; 3 uses
  br i1 %i.ox, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit
  %i.oy = load i16, ptr %.pre860, align 1
  %i.oz = icmp ne i16 %i.oy, 28709
  %i.pa = zext i1 %i.oz to i32
  %i.pb = icmp eq i32 %i.pa, 0
  %i.pc = icmp ne ptr %i.ov, null
  %or.cond = and i1 %i.pc, %i.pb
  br i1 %or.cond, label %._crit_edge.i.i625, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

._crit_edge.i.i625:                               ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store ptr %i.w, ptr %10, align 8, !tbaa !7
  store i8 49, ptr %i.w, align 8, !tbaa !14
  store i64 1, ptr %i.x, align 8, !tbaa !11
  store i8 0, ptr %i.z, align 1, !tbaa !14
  %i.pd = ptrtoint ptr %i.ov to i64
  %i.pe = ptrtoint ptr %.11717551130 to i64
  %i.pf = sub i64 %i.pd, %i.pe                    ; 2 uses
  %i.pg = icmp ugt i64 %i.pf, 4611686018427387902
  br i1 %i.pg, label %bb.dq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.dq:                                            ; preds = %._crit_edge.i.i625
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #19
          to label %.noexc629 unwind label %.loopexit.split-lp

.noexc629:                                        ; preds = %bb.dq
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %._crit_edge.i.i625
  %i.ph = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %.11717551130, i64 noundef %i.pf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.pi = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, i8 0, i64 56, i1 false)
  %.not.i631 = icmp eq ptr %i.pi, null
  br i1 %.not.i631, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit633.thread, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit633

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit633.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit633: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.pj = call ptr @strptime(ptr noundef nonnull %i.pi, ptr noundef nonnull @.str.9, ptr noundef nonnull %11) #18 ; 0 uses
  %.pre857.a = load i32, ptr %i.y, align 8, !tbaa !62
  %.pre858 = load ptr, ptr %10, align 8, !tbaa !36 ; 2 uses
  %i.pk = icmp eq i32 %.pre857.a, 13              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.pl = icmp eq ptr %.pre858, %i.w
  br i1 %i.pl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit633.thread, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit633
  %i.pm = phi i1 [ false, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit633.thread ], [ %i.pk, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit633 ]
  %i.pn = phi ptr [ null, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit633.thread ], [ %.pre858, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit633 ]
  %i.po = load i64, ptr %i.w, align 8, !tbaa !14
  %i.pp = add i64 %i.po, 1
  call void @_ZdlPvm(ptr noundef %i.pn, i64 noundef %i.pp) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit633, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.pq = phi i1 [ %i.pm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.pk, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit633 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.pre859 = load ptr, ptr %9, align 8, !tbaa !36
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.dr:                                            ; preds = %.noexc.i620
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642

.loopexit:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

.loopexit.split-lp:                               ; preds = %bb.dq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.ds:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ps = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.pt = icmp eq ptr %i.ps, %i.w
  br i1 %i.pt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i634

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i634: ; preds = %bb.ds
  %i.pu = load i64, ptr %i.w, align 8, !tbaa !14
  %i.pv = add i64 %i.pu, 1
  call void @_ZdlPvm(ptr noundef %i.ps, i64 noundef %i.pv) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i634
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.pw = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.px = icmp eq ptr %i.pw, %i.u
  br i1 %i.px, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.py = phi ptr [ %.pre859, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pre860, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.pre860, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit ] ; 2 uses
  %.1224 = phi i1 [ %i.pq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.0223.ph790, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.0223.ph790, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17ParseTMEPKcS6_P2tm.exit ]
  %i.pz = icmp eq ptr %i.py, %i.u
  br i1 %i.pz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.qa = load i64, ptr %i.u, align 8, !tbaa !14
  %i.qb = add i64 %i.qa, 1
  call void @_ZdlPvm(ptr noundef %i.py, i64 noundef %i.qb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362: ; preds = %bb.dd, %bb.cp, %bb.an, %bb.ag, %select.unfold.i603, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.dl, %bb.bv, %bb.bp, %bb.bj, %bb.bd, %bb.z, %bb.t, %bb.cs, %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639, %bb.db, %bb.cy, %bb.cu, %bb.co, %bb.by, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit
  %.1670 = phi i64 [ %.0669.ph786, %bb.ag ], [ %.0669.ph786, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639 ], [ %.0669.ph786, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %.0669.ph786, %bb.cu ], [ %.0669.ph786, %bb.t ], [ %.0669.ph786, %bb.z ], [ %.0669.ph786, %bb.cs ], [ %.0669.ph786, %bb.bv ], [ %.0669.ph786, %bb.av ], [ %.0669.ph786, %bb.dl ], [ %.0669.ph786, %bb.bd ], [ %.0669.ph786, %bb.bj ], [ %.0669.ph786, %bb.bp ], [ %.0669.ph786, %bb.by ], [ %.0669.ph786, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.2671, %select.unfold.i603 ], [ %.0669.ph786, %bb.co ], [ %.0669.ph786, %bb.an ], [ %.0669.ph786, %bb.cy ], [ %.0669.ph786, %bb.db ], [ %.0669.ph786, %bb.cp ], [ %.0669.ph786, %bb.dd ] ; 2 uses
  %.1 = phi i32 [ %spec.select.i388, %bb.ag ], [ %.0.ph787, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639 ], [ %.0.ph787, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %.0.ph787, %bb.cu ], [ -1, %bb.t ], [ -1, %bb.z ], [ %.0.ph787, %bb.cs ], [ %.0.ph787, %bb.bv ], [ %.0.ph787, %bb.av ], [ %.0.ph787, %bb.dl ], [ %.0.ph787, %bb.bd ], [ %.0.ph787, %bb.bj ], [ %.0.ph787, %bb.bp ], [ %.0.ph787, %bb.by ], [ %.0.ph787, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.0.ph787, %select.unfold.i603 ], [ %.0.ph787, %bb.co ], [ %spec.select.i420, %bb.an ], [ %.0.ph787, %bb.cy ], [ %.0.ph787, %bb.db ], [ %.0.ph787, %bb.cp ], [ %.0.ph787, %bb.dd ] ; 2 uses
  %.2230 = phi i1 [ %.0228.ph788, %bb.ag ], [ %.0228.ph788, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639 ], [ %.0228.ph788, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %.0228.ph788, %bb.cu ], [ %.0228.ph788, %bb.t ], [ %.0228.ph788, %bb.z ], [ %.0228.ph788, %bb.cs ], [ %.0228.ph788, %bb.bv ], [ %.0228.ph788, %bb.av ], [ %.0228.ph788, %bb.dl ], [ %.0228.ph788, %bb.bd ], [ %.0228.ph788, %bb.bj ], [ %.0228.ph788, %bb.bp ], [ %.0228.ph788, %bb.by ], [ %.0228.ph788, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %select.unfold.i603 ], [ %.0228.ph788, %bb.co ], [ %.0228.ph788, %bb.an ], [ %.0228.ph788, %bb.cy ], [ %.0228.ph788, %bb.db ], [ %.0228.ph788, %bb.cp ], [ %.0228.ph788, %bb.dd ] ; 2 uses
  %.1227 = phi i32 [ 6, %bb.ag ], [ %.0226.ph789, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639 ], [ %.0226.ph789, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %.0226.ph789, %bb.cu ], [ %.0226.ph789, %bb.t ], [ %.0226.ph789, %bb.z ], [ %.0226.ph789, %bb.cs ], [ %.0226.ph789, %bb.bv ], [ %.0226.ph789, %bb.av ], [ %.0226.ph789, %bb.dl ], [ %.0226.ph789, %bb.bd ], [ %.0226.ph789, %bb.bj ], [ %.0226.ph789, %bb.bp ], [ %.0226.ph789, %bb.by ], [ %.0226.ph789, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.0226.ph789, %select.unfold.i603 ], [ %.0226.ph789, %bb.co ], [ 0, %bb.an ], [ %.0226.ph789, %bb.cy ], [ %.0226.ph789, %bb.db ], [ %.0226.ph789, %bb.cp ], [ %.0226.ph789, %bb.dd ] ; 2 uses
  %.2225 = phi i1 [ %.0223.ph790, %bb.ag ], [ %.1224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639 ], [ %.0223.ph790, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %.0223.ph790, %bb.cu ], [ %.0223.ph790, %bb.t ], [ %.0223.ph790, %bb.z ], [ %.0223.ph790, %bb.cs ], [ %.0223.ph790, %bb.bv ], [ %.0223.ph790, %bb.av ], [ %.0223.ph790, %bb.dl ], [ %.0223.ph790, %bb.bd ], [ %.0223.ph790, %bb.bj ], [ %.0223.ph790, %bb.bp ], [ %.0223.ph790, %bb.by ], [ %.0223.ph790, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.0223.ph790, %select.unfold.i603 ], [ %.0223.ph790, %bb.co ], [ %.0223.ph790, %bb.an ], [ %.0223.ph790, %bb.cy ], [ %.0223.ph790, %bb.db ], [ %.0223.ph790, %bb.cp ], [ %.0223.ph790, %bb.dd ] ; 2 uses
  %.6222 = phi i1 [ %.0216.ph791, %bb.ag ], [ %.5221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639 ], [ %.0216.ph791, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %.0216.ph791, %bb.cu ], [ %.0216.ph791, %bb.t ], [ %.0216.ph791, %bb.z ], [ %.0216.ph791, %bb.cs ], [ %.0216.ph791, %bb.bv ], [ %.0216.ph791, %bb.av ], [ %.0216.ph791, %bb.dl ], [ %.0216.ph791, %bb.bd ], [ false, %bb.bj ], [ %.0216.ph791, %bb.bp ], [ %.0216.ph791, %bb.by ], [ %.0216.ph791, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.0216.ph791, %select.unfold.i603 ], [ %.0216.ph791, %bb.co ], [ %.0216.ph791, %bb.an ], [ %.0216.ph791, %bb.cy ], [ %.0216.ph791, %bb.db ], [ %.0216.ph791, %bb.cp ], [ %.0216.ph791, %bb.dd ] ; 2 uses
  %.7215 = phi ptr [ %i.at, %bb.ag ], [ %.6214, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639 ], [ %i.at, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %i.mw, %bb.cu ], [ %i.at, %bb.t ], [ %i.at, %bb.z ], [ %i.mp, %bb.cs ], [ %i.at, %bb.bv ], [ %i.at, %bb.av ], [ %.4212, %bb.dl ], [ %i.at, %bb.bd ], [ %i.at, %bb.bj ], [ %i.at, %bb.bp ], [ %i.at, %bb.by ], [ %i.at, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.at, %select.unfold.i603 ], [ %i.mi, %bb.co ], [ %i.at, %bb.an ], [ %i.nc, %bb.cy ], [ %i.nh, %bb.db ], [ %i.at, %bb.cp ], [ %i.nq, %bb.dd ]
  %.4185 = phi i1 [ %.0181.ph793, %bb.ag ], [ %.0181.ph793, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639 ], [ %.0181.ph793, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %spec.select309, %bb.cu ], [ %.0181.ph793, %bb.t ], [ %.0181.ph793, %bb.z ], [ %.0181.ph793, %bb.cs ], [ %.0181.ph793, %bb.bv ], [ %.0181.ph793, %bb.av ], [ %.0181.ph793, %bb.dl ], [ %.0181.ph793, %bb.bd ], [ %.0181.ph793, %bb.bj ], [ %.0181.ph793, %bb.bp ], [ %spec.select306, %bb.by ], [ %.0181.ph793, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.0181.ph793, %select.unfold.i603 ], [ %spec.select308, %bb.co ], [ %.0181.ph793, %bb.an ], [ %.0181.ph793, %bb.cy ], [ %.0181.ph793, %bb.db ], [ %.0181.ph793, %bb.cp ], [ %.0181.ph793, %bb.dd ] ; 2 uses
  %.3180 = phi i1 [ %.0177.ph795, %bb.ag ], [ %.0177.ph795, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639 ], [ %spec.select, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %.0177.ph795, %bb.cu ], [ %.0177.ph795, %bb.t ], [ %.0177.ph795, %bb.z ], [ %.0177.ph795, %bb.cs ], [ %.0177.ph795, %bb.bv ], [ %.0177.ph795, %bb.av ], [ %.0177.ph795, %bb.dl ], [ %.0177.ph795, %bb.bd ], [ %.0177.ph795, %bb.bj ], [ %.0177.ph795, %bb.bp ], [ %.0177.ph795, %bb.by ], [ %.0177.ph795, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.0177.ph795, %select.unfold.i603 ], [ %.0177.ph795, %bb.co ], [ %.0177.ph795, %bb.an ], [ %.0177.ph795, %bb.cy ], [ %.0177.ph795, %bb.db ], [ %.0177.ph795, %bb.cp ], [ %.2179, %bb.dd ] ; 2 uses
  %.13 = phi ptr [ %.3.ph.i381, %bb.ag ], [ %i.ov, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639 ], [ %.4.i, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit ], [ %i.ms, %bb.cu ], [ %.3.ph.i326, %bb.t ], [ %.3.ph.i349, %bb.z ], [ %i.mo, %bb.cs ], [ %.3.ph.i573, %bb.bv ], [ %.3.ph.i445, %bb.av ], [ %.10, %bb.dl ], [ %.3.ph.i477, %bb.bd ], [ %.3.ph.i509, %bb.bj ], [ %.3.ph.i541, %bb.bp ], [ %i.kc, %bb.by ], [ %.0.lcssa.i, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.3.ph.i606, %select.unfold.i603 ], [ %i.ma, %bb.co ], [ %.3.ph.i413, %bb.an ], [ %.5175, %bb.cy ], [ %.6176, %bb.db ], [ %i.ml, %bb.cp ], [ %i.nl, %bb.dd ] ; 2 uses
  %.not257753 = icmp eq ptr %.13, null
  br i1 %.not257753, label %.critedge, label %.lr.ph

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636
  %i.qc = load i64, ptr %i.u, align 8, !tbaa !14
  %i.qd = add i64 %i.qc, 1
  call void @_ZdlPvm(ptr noundef %i.pw, i64 noundef %i.qd) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640, %bb.dr
  %.pn297.pn.pn = phi { ptr, i32 } [ %i.pr, %bb.dr ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640 ], [ %lpad.phi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.ga

.critedge:                                        ; preds = %bb.an, %bb.ag, %select.unfold.i603, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.s, %bb.bu, %select.unfold.i570, %bb.bo, %select.unfold.i538, %bb.bc, %select.unfold.i474, %select.unfold.i410, %select.unfold.i378, %bb.y, %select.unfold.i346, %bb.cr, %bb.dd, %bb.cp, %bb.au, %select.unfold.i323, %select.unfold.i442, %bb.e, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362, %.lr.ph, %bb.d, %select.unfold.backedge
  %.not258.not1071 = phi i1 [ true, %select.unfold.backedge ], [ false, %bb.d ], [ %.not258.not1129, %.lr.ph ], [ %.not258.not1129, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362 ], [ %.not258.not1129, %bb.e ], [ %.not258.not1129, %select.unfold.i442 ], [ %.not258.not1129, %select.unfold.i323 ], [ %.not258.not1129, %bb.au ], [ %.not258.not1129, %bb.cp ], [ %.not258.not1129, %bb.dd ], [ %.not258.not1129, %bb.cr ], [ %.not258.not1129, %select.unfold.i346 ], [ %.not258.not1129, %bb.y ], [ %.not258.not1129, %select.unfold.i378 ], [ %.not258.not1129, %select.unfold.i410 ], [ %.not258.not1129, %select.unfold.i474 ], [ %.not258.not1129, %bb.bc ], [ %.not258.not1129, %select.unfold.i538 ], [ %.not258.not1129, %bb.bo ], [ %.not258.not1129, %select.unfold.i570 ], [ %.not258.not1129, %bb.bu ], [ %.not258.not1129, %bb.s ], [ %.not258.not1129, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.not258.not1129, %select.unfold.i603 ], [ %.not258.not1129, %bb.ag ], [ %.not258.not1129, %bb.an ] ; 2 uses
  %.0669.ph.lcssa = phi i64 [ %.0669.ph786, %bb.d ], [ %.0669.ph786, %select.unfold.backedge ], [ %.0669.ph786, %select.unfold.i603 ], [ %.0669.ph786, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.0669.ph786, %bb.s ], [ %.0669.ph786, %bb.bu ], [ %.0669.ph786, %select.unfold.i570 ], [ %.0669.ph786, %bb.bo ], [ %.0669.ph786, %select.unfold.i538 ], [ %.0669.ph786, %bb.bc ], [ %.0669.ph786, %select.unfold.i474 ], [ %.0669.ph786, %select.unfold.i410 ], [ %.0669.ph786, %select.unfold.i378 ], [ %.0669.ph786, %bb.y ], [ %.0669.ph786, %select.unfold.i346 ], [ %.0669.ph786, %bb.cr ], [ %.0669.ph786, %bb.dd ], [ %.0669.ph786, %bb.cp ], [ %.0669.ph786, %bb.au ], [ %.0669.ph786, %select.unfold.i323 ], [ %.0669.ph786, %select.unfold.i442 ], [ %.0669.ph786, %bb.e ], [ %.1670, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362 ], [ %.0669.ph786, %bb.an ], [ %.0669.ph786, %.lr.ph ], [ %.0669.ph786, %bb.ag ]
  %.0.ph.lcssa = phi i32 [ %.0.ph787, %bb.d ], [ %.0.ph787, %select.unfold.backedge ], [ %.0.ph787, %select.unfold.i603 ], [ %.0.ph787, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ -1, %bb.s ], [ %.0.ph787, %bb.bu ], [ %.0.ph787, %select.unfold.i570 ], [ %.0.ph787, %bb.bo ], [ %.0.ph787, %select.unfold.i538 ], [ %.0.ph787, %bb.bc ], [ %.0.ph787, %select.unfold.i474 ], [ %.0.ph787, %select.unfold.i410 ], [ %.0.ph787, %select.unfold.i378 ], [ -1, %bb.y ], [ -1, %select.unfold.i346 ], [ %.0.ph787, %bb.cr ], [ %.0.ph787, %bb.dd ], [ %.0.ph787, %bb.cp ], [ %.0.ph787, %bb.au ], [ -1, %select.unfold.i323 ], [ %.0.ph787, %select.unfold.i442 ], [ %.0.ph787, %bb.e ], [ %.1, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362 ], [ %.0.ph787, %bb.an ], [ %.0.ph787, %.lr.ph ], [ %.0.ph787, %bb.ag ] ; 2 uses
  %.0228.ph.lcssa = phi i1 [ %.0228.ph788, %bb.d ], [ %.0228.ph788, %select.unfold.backedge ], [ %.0228.ph788, %select.unfold.i603 ], [ %.0228.ph788, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.0228.ph788, %bb.s ], [ %.0228.ph788, %bb.bu ], [ %.0228.ph788, %select.unfold.i570 ], [ %.0228.ph788, %bb.bo ], [ %.0228.ph788, %select.unfold.i538 ], [ %.0228.ph788, %bb.bc ], [ %.0228.ph788, %select.unfold.i474 ], [ %.0228.ph788, %select.unfold.i410 ], [ %.0228.ph788, %select.unfold.i378 ], [ %.0228.ph788, %bb.y ], [ %.0228.ph788, %select.unfold.i346 ], [ %.0228.ph788, %bb.cr ], [ %.0228.ph788, %bb.dd ], [ %.0228.ph788, %bb.cp ], [ %.0228.ph788, %bb.au ], [ %.0228.ph788, %select.unfold.i323 ], [ %.0228.ph788, %select.unfold.i442 ], [ %.0228.ph788, %bb.e ], [ %.2230, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362 ], [ %.0228.ph788, %bb.an ], [ %.0228.ph788, %.lr.ph ], [ %.0228.ph788, %bb.ag ]
  %.0226.ph.lcssa = phi i32 [ %.0226.ph789, %bb.d ], [ %.0226.ph789, %select.unfold.backedge ], [ %.0226.ph789, %select.unfold.i603 ], [ %.0226.ph789, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.0226.ph789, %bb.s ], [ %.0226.ph789, %bb.bu ], [ %.0226.ph789, %select.unfold.i570 ], [ %.0226.ph789, %bb.bo ], [ %.0226.ph789, %select.unfold.i538 ], [ %.0226.ph789, %bb.bc ], [ %.0226.ph789, %select.unfold.i474 ], [ 0, %select.unfold.i410 ], [ 6, %select.unfold.i378 ], [ %.0226.ph789, %bb.y ], [ %.0226.ph789, %select.unfold.i346 ], [ %.0226.ph789, %bb.cr ], [ %.0226.ph789, %bb.dd ], [ %.0226.ph789, %bb.cp ], [ %.0226.ph789, %bb.au ], [ %.0226.ph789, %select.unfold.i323 ], [ %.0226.ph789, %select.unfold.i442 ], [ %.0226.ph789, %bb.e ], [ %.1227, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362 ], [ 0, %bb.an ], [ %.0226.ph789, %.lr.ph ], [ 6, %bb.ag ]
  %.0223.ph.lcssa = phi i1 [ %.0223.ph790, %bb.d ], [ %.0223.ph790, %select.unfold.backedge ], [ %.0223.ph790, %select.unfold.i603 ], [ %.0223.ph790, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.0223.ph790, %bb.s ], [ %.0223.ph790, %bb.bu ], [ %.0223.ph790, %select.unfold.i570 ], [ %.0223.ph790, %bb.bo ], [ %.0223.ph790, %select.unfold.i538 ], [ %.0223.ph790, %bb.bc ], [ %.0223.ph790, %select.unfold.i474 ], [ %.0223.ph790, %select.unfold.i410 ], [ %.0223.ph790, %select.unfold.i378 ], [ %.0223.ph790, %bb.y ], [ %.0223.ph790, %select.unfold.i346 ], [ %.0223.ph790, %bb.cr ], [ %.0223.ph790, %bb.dd ], [ %.0223.ph790, %bb.cp ], [ %.0223.ph790, %bb.au ], [ %.0223.ph790, %select.unfold.i323 ], [ %.0223.ph790, %select.unfold.i442 ], [ %.0223.ph790, %bb.e ], [ %.2225, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362 ], [ %.0223.ph790, %bb.an ], [ %.0223.ph790, %.lr.ph ], [ %.0223.ph790, %bb.ag ]
  %.0216.ph.lcssa = phi i1 [ %.0216.ph791, %bb.d ], [ %.0216.ph791, %select.unfold.backedge ], [ %.0216.ph791, %select.unfold.i603 ], [ %.0216.ph791, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.0216.ph791, %bb.s ], [ %.0216.ph791, %bb.bu ], [ %.0216.ph791, %select.unfold.i570 ], [ %.0216.ph791, %bb.bo ], [ %.0216.ph791, %select.unfold.i538 ], [ %.0216.ph791, %bb.bc ], [ %.0216.ph791, %select.unfold.i474 ], [ %.0216.ph791, %select.unfold.i410 ], [ %.0216.ph791, %select.unfold.i378 ], [ %.0216.ph791, %bb.y ], [ %.0216.ph791, %select.unfold.i346 ], [ %.0216.ph791, %bb.cr ], [ %.0216.ph791, %bb.dd ], [ %.0216.ph791, %bb.cp ], [ %.0216.ph791, %bb.au ], [ %.0216.ph791, %select.unfold.i323 ], [ %.0216.ph791, %select.unfold.i442 ], [ %.0216.ph791, %bb.e ], [ %.6222, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362 ], [ %.0216.ph791, %bb.an ], [ %.0216.ph791, %.lr.ph ], [ %.0216.ph791, %bb.ag ]
  %.0181.ph.lcssa = phi i1 [ %.0181.ph793, %bb.d ], [ %.0181.ph793, %select.unfold.backedge ], [ %.0181.ph793, %select.unfold.i603 ], [ %.0181.ph793, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.0181.ph793, %bb.s ], [ %.0181.ph793, %bb.bu ], [ %.0181.ph793, %select.unfold.i570 ], [ %.0181.ph793, %bb.bo ], [ %.0181.ph793, %select.unfold.i538 ], [ %.0181.ph793, %bb.bc ], [ %.0181.ph793, %select.unfold.i474 ], [ %.0181.ph793, %select.unfold.i410 ], [ %.0181.ph793, %select.unfold.i378 ], [ %.0181.ph793, %bb.y ], [ %.0181.ph793, %select.unfold.i346 ], [ %.0181.ph793, %bb.cr ], [ %.0181.ph793, %bb.dd ], [ %.0181.ph793, %bb.cp ], [ %.0181.ph793, %bb.au ], [ %.0181.ph793, %select.unfold.i323 ], [ %.0181.ph793, %select.unfold.i442 ], [ %.0181.ph793, %bb.e ], [ %.4185, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362 ], [ %.0181.ph793, %bb.an ], [ %.0181.ph793, %.lr.ph ], [ %.0181.ph793, %bb.ag ]
  %.0177.ph.lcssa = phi i1 [ %.0177.ph795, %bb.d ], [ %.0177.ph795, %select.unfold.backedge ], [ %.0177.ph795, %select.unfold.i603 ], [ %.0177.ph795, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.0177.ph795, %bb.s ], [ %.0177.ph795, %bb.bu ], [ %.0177.ph795, %select.unfold.i570 ], [ %.0177.ph795, %bb.bo ], [ %.0177.ph795, %select.unfold.i538 ], [ %.0177.ph795, %bb.bc ], [ %.0177.ph795, %select.unfold.i474 ], [ %.0177.ph795, %select.unfold.i410 ], [ %.0177.ph795, %select.unfold.i378 ], [ %.0177.ph795, %bb.y ], [ %.0177.ph795, %select.unfold.i346 ], [ %.0177.ph795, %bb.cr ], [ %.0177.ph795, %bb.dd ], [ %.0177.ph795, %bb.cp ], [ %.0177.ph795, %bb.au ], [ %.0177.ph795, %select.unfold.i323 ], [ %.0177.ph795, %select.unfold.i442 ], [ %.0177.ph795, %bb.e ], [ %.3180, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362 ], [ %.0177.ph795, %bb.an ], [ %.0177.ph795, %.lr.ph ], [ %.0177.ph795, %bb.ag ]
  %.1171.lcssa = phi ptr [ %.1171.be, %select.unfold.backedge ], [ null, %bb.d ], [ null, %select.unfold.i603 ], [ null, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_19ParseZoneEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ null, %bb.s ], [ null, %bb.bu ], [ null, %select.unfold.i570 ], [ null, %bb.bo ], [ null, %select.unfold.i538 ], [ null, %bb.bc ], [ null, %select.unfold.i474 ], [ null, %select.unfold.i410 ], [ null, %select.unfold.i378 ], [ null, %bb.y ], [ null, %select.unfold.i346 ], [ null, %bb.cr ], [ null, %bb.dd ], [ null, %bb.cp ], [ null, %bb.au ], [ null, %select.unfold.i323 ], [ null, %select.unfold.i442 ], [ null, %bb.e ], [ null, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit362 ], [ null, %bb.an ], [ %.1171.ph798, %.lr.ph ], [ null, %bb.ag ]
  %or.cond6 = select i1 %.0216.ph.lcssa, i1 %.0223.ph.lcssa, i1 false
  %i.qe = load i32, ptr %i.n, align 8             ; 2 uses
  %i.qf = icmp slt i32 %i.qe, 12
  %or.cond9 = select i1 %or.cond6, i1 %i.qf, i1 false
  br i1 %or.cond9, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %.critedge
  %i.qg = add nsw i32 %i.qe, 12
  store i32 %i.qg, ptr %i.n, align 8, !tbaa !62
  br i1 %.not258.not1071, label %.preheader.preheader, label %.thread

bb.du:                                            ; preds = %.critedge
  br i1 %.not258.not1071, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.dt, %bb.du
  br label %.preheader

.thread:                                          ; preds = %bb.bi, %select.unfold.i506, %bb.dt, %bb.du
  %.not277 = icmp eq ptr %5, null
  br i1 %.not277, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %.invoke

bb.dv:                                            ; preds = %.invoke
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.14 = phi ptr [ %i.ql, %.preheader ], [ %.1171.lcssa, %.preheader.preheader ] ; 2 uses
  %i.qi = load i8, ptr %.14, align 1, !tbaa !14   ; 2 uses
  %i.qj = sext i8 %i.qi to i32
  %i.qk = call i32 @isspace(i32 noundef %i.qj) #22
  %.not259 = icmp eq i32 %i.qk, 0
  %i.ql = getelementptr inbounds nuw i8, ptr %.14, i64 1
  br i1 %.not259, label %bb.dw, label %.preheader, !llvm.loop !63

bb.dw:                                            ; preds = %.preheader
  %.not260 = icmp eq i8 %i.qi, 0
  br i1 %.not260, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %.not276 = icmp eq ptr %5, null
  br i1 %.not276, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %.invoke

.invoke:                                          ; preds = %bb.dx, %.thread
  %i.qm = phi ptr [ @.str.10, %.thread ], [ @.str.11, %bb.dx ]
  %i.qn = phi i64 [ 21, %.thread ], [ 37, %bb.dx ]
  %i.qo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !11
  %i.qq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.qp, ptr noundef nonnull %i.qm, i64 noundef %i.qn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.dv ; 0 uses

bb.dy:                                            ; preds = %bb.dw
  br i1 %.0228.ph.lcssa, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  store i64 %.0669.ph.lcssa, ptr %3, align 8, !tbaa !41
  store i64 0, ptr %4, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  br i1 %.0181.ph.lcssa, label %bb.eb, label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  %i.qr = invoke ptr @_ZN4absl12lts_2025051213time_internal4cctz13utc_time_zoneEv()
          to label %bb.ec unwind label %bb.eg

bb.ec:                                            ; preds = %bb.eb
  %i.qs = ptrtoint ptr %i.qr to i64
  br label %bb.ee

bb.ed:                                            ; preds = %bb.ea
  %i.qt = load i64, ptr %2, align 8, !tbaa !64
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %storemerge = phi i64 [ %i.qt, %bb.ed ], [ %i.qs, %bb.ec ]
  store i64 %storemerge, ptr %12, align 8
  %i.qu = load i32, ptr %6, align 16, !tbaa !66   ; 2 uses
  %i.qv = icmp eq i32 %i.qu, 60
  br i1 %i.qv, label %bb.ef, label %bb.eh

bb.ef:                                            ; preds = %bb.ee
  store i32 59, ptr %6, align 16, !tbaa !66
  %i.qw = load i32, ptr %i.c, align 4, !tbaa !3
  %i.qx = add nsw i32 %i.qw, -1
  store i32 %i.qx, ptr %i.c, align 4, !tbaa !3
  store i64 0, ptr %7, align 8, !tbaa !41
  br label %bb.eh

bb.eg:                                            ; preds = %bb.es, %bb.eb
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.eh:                                            ; preds = %bb.ef, %bb.ee
  %i.qz = phi i32 [ 59, %bb.ef ], [ %i.qu, %bb.ee ]
  br i1 %.0177.ph.lcssa, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ra = load i32, ptr %i.k, align 4, !tbaa !25
  %i.rb = sext i32 %i.ra to i64
  %i.rc = add nsw i64 %i.rb, 1900
  store i64 %i.rc, ptr %i.b, align 8, !tbaa !41
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.not261 = icmp eq i32 %.0.ph.lcssa, -1
  br i1 %.not261, label %._crit_edge, label %bb.ek

._crit_edge:                                      ; preds = %bb.ej
  %.pre861 = load i32, ptr %i.l, align 16, !tbaa !22
  %.pre862 = load i64, ptr %i.b, align 8, !tbaa !41
  %.pre863 = load i32, ptr %i.m, align 4, !tbaa !67
  %i.rd = add nsw i32 %.pre861, 1
  br label %bb.et

bb.ek:                                            ; preds = %bb.ej
  %i.re = load i64, ptr %i.b, align 8, !tbaa !41  ; 5 uses
  %i.rf = srem i64 %i.re, 400                     ; 4 uses
  %i.rg = add nsw i64 %i.rf, 2399                 ; 3 uses
  %i.rh = lshr i64 %i.rg, 2
  %.lhs.trunc.i.i.i = trunc nuw nsw i64 %i.rg to i16 ; 2 uses
  %i.ri = udiv i16 %.lhs.trunc.i.i.i, 100
  %i.rj = udiv i16 %.lhs.trunc.i.i.i, 400
  %i.rk = add nuw nsw i64 %i.rh, %i.rg
  %i.rl = trunc nuw nsw i64 %i.rk to i16
  %reass.sub = sub nsw i16 %i.rj, %i.ri
  %i.rm = add nuw nsw i16 %reass.sub, 1
  %.lhs.trunc.i = add nsw i16 %i.rm, %i.rl
  %i.rn = urem i16 %.lhs.trunc.i, 7
  %.zext.i = zext nneg i16 %i.rn to i64
  %i.ro = getelementptr [4 x i8], ptr @__const._ZN4absl12lts_2025051213time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_by_mon_off, i64 %.zext.i
  %i.rp = getelementptr i8, ptr %i.ro, i64 24
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !26
  br label %bb.el

bb.el:                                            ; preds = %bb.el, %bb.ek
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.el ], [ 0, %bb.ek ] ; 4 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_2025051213time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.k_weekdays_back, i64 %indvars.iv.i.i
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !26
  %i.rt = icmp eq i32 %i.rq, %i.rs
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %i.rt, label %.preheader.i.i, label %bb.el, !llvm.loop !55

.preheader.i.i:                                   ; preds = %bb.el, %.preheader.i.i
  %indvars.iv17.i.i = phi i64 [ %indvars.iv.next18.i.i, %.preheader.i.i ], [ %indvars.iv.i.i, %bb.el ]
  %indvars.iv.next18.i.i = add nuw nsw i64 %indvars.iv17.i.i, 1 ; 3 uses
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_2025051213time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.k_weekdays_back, i64 %indvars.iv.next18.i.i
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !26
  %i.rw = icmp eq i32 %.0226.ph.lcssa, %i.rv
  br i1 %i.rw, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit.i, label %.preheader.i.i, !llvm.loop !56

_ZN4absl12lts_2025051213time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit.i: ; preds = %.preheader.i.i
  %i.rx = sub nsw i64 %indvars.iv.next18.i.i, %indvars.iv.i.i
  %sext20.i.i = shl i64 %i.rx, 32
  %i.ry = ashr exact i64 %sext20.i.i, 32
  %i.rz = sub nsw i64 0, %i.ry
  %i.sa = call { i64, i64 } @_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.rf, i8 noundef signext 1, i64 noundef 1, i64 noundef %i.rz, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #18 ; 2 uses
  %.sroa.3.0.in.in.i = extractvalue { i64, i64 } %i.sa, 1 ; 2 uses
  %i.sb = extractvalue { i64, i64 } %i.sa, 0
  %.sroa.22.8.extract.trunc.i.i.i = trunc i64 %.sroa.3.0.in.in.i to i8
  %.sroa.3.0.in.i = shl i64 %.sroa.3.0.in.in.i, 48
  %i.sc = ashr i64 %.sroa.3.0.in.i, 56
  %i.sd = call { i64, i64 } @_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %i.sb, i8 noundef signext %.sroa.22.8.extract.trunc.i.i.i, i64 noundef %i.sc, i64 noundef -1, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #18 ; 2 uses
  %.sroa.3.0.in.in.i.i = extractvalue { i64, i64 } %i.sd, 1 ; 4 uses
  %i.se = extractvalue { i64, i64 } %i.sd, 0      ; 2 uses
  %i.sf = load i32, ptr %i.p, align 8, !tbaa !28
  %i.sg = srem i64 %i.se, 400
  %i.sh = add nsw i64 %i.sg, 2400
  %.sroa.4.8.extract.trunc.i23.i = trunc i64 %.sroa.3.0.in.in.i.i to i8 ; 2 uses
  %i.si = icmp slt i8 %.sroa.4.8.extract.trunc.i23.i, 3
  %.neg.i.i24.i = sext i1 %i.si to i64
  %i.sj = add nsw i64 %i.sh, %.neg.i.i24.i        ; 3 uses
  %i.sk = lshr i64 %i.sj, 2
  %.lhs.trunc.i.i25.i = trunc nuw nsw i64 %i.sj to i16 ; 2 uses
  %i.sl = udiv i16 %.lhs.trunc.i.i25.i, 100
  %.zext.i.i26.i = zext nneg i16 %i.sl to i64
  %i.sm = udiv i16 %.lhs.trunc.i.i25.i, 400
  %.zext10.i.i27.i = zext nneg i16 %i.sm to i64
  %sext.i28.i = shl i64 %.sroa.3.0.in.in.i.i, 56
  %i.sn = ashr exact i64 %sext.i28.i, 54
  %i.so = getelementptr inbounds i8, ptr @__const._ZN4absl12lts_2025051213time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_offsets, i64 %i.sn
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !3
  %.sroa.4.9.extract.shift15.i29.i = lshr i64 %.sroa.3.0.in.in.i.i, 8
  %.sroa.4.9.extract.trunc.i30.i = trunc i64 %.sroa.4.9.extract.shift15.i29.i to i8
  %i.sq = sext i8 %.sroa.4.9.extract.trunc.i30.i to i32
  %i.sr = add nsw i32 %i.sp, %i.sq
  %i.ss = sext i32 %i.sr to i64
  %i.st = add nuw nsw i64 %i.sk, %i.sj
  %i.su = add nsw i64 %i.st, %i.ss
  %i.sv = sub nsw i64 %i.su, %.zext.i.i26.i
  %i.sw = add nsw i64 %i.sv, %.zext10.i.i27.i
  %i.sx = srem i64 %i.sw, 7
  %i.sy = getelementptr [4 x i8], ptr @__const._ZN4absl12lts_2025051213time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_by_mon_off, i64 %i.sx
  %i.sz = getelementptr i8, ptr %i.sy, i64 24
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !26
  br label %bb.em

bb.em:                                            ; preds = %bb.em, %_ZN4absl12lts_2025051213time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.exit.i
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051213time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_:bb.a
  store i64 %i.vw, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  invoke void @_ZNK4absl12lts_2025051213time_internal4cctz9time_zone6lookupERKNS2_6detail10civil_timeINS4_10second_tagEEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20250512::time_internal::cctz::time_zone::civil_lookup") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.ff unwind label %bb.fk

bb.ff:                                            ; preds = %bb.fe
  %i.vx = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !41 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  switch i64 %i.vy, label %bb.fx [
    i64 9223372036854775807, label %bb.fg
    i64 -9223372036854775808, label %bb.fp
  ]

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  store i64 9223372036854775807, ptr %18, align 8
  invoke void @_ZNK4absl12lts_2025051213time_internal4cctz9time_zone6lookupERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20250512::time_internal::cctz::time_zone::absolute_lookup") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.fh unwind label %bb.fl

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.vz = call noundef zeroext i1 @_ZN4absl12lts_2025051213time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %17) #18
  br i1 %i.vz, label %bb.fi, label %.thread693

bb.fi:                                            ; preds = %bb.fh
  %.not265 = icmp eq ptr %5, null
  br i1 %.not265, label %bb.fn, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.wa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.13)
          to label %bb.fn unwind label %bb.fm     ; 0 uses

bb.fk:                                            ; preds = %bb.fe
  %i.wb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.fy

bb.fl:                                            ; preds = %bb.fg
  %i.wc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.fo

bb.fm:                                            ; preds = %bb.fj
  %i.wd = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fi, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit650

bb.fo:                                            ; preds = %bb.fm, %bb.fl
  %.pn = phi { ptr, i32 } [ %i.wd, %bb.fm ], [ %i.wc, %bb.fl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.fy

.thread693:                                       ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.fx

bb.fp:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  store i64 -9223372036854775808, ptr %20, align 8
  invoke void @_ZNK4absl12lts_2025051213time_internal4cctz9time_zone6lookupERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20250512::time_internal::cctz::time_zone::absolute_lookup") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.fq unwind label %bb.ft

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %i.we = call noundef zeroext i1 @_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %19) #18
  br i1 %i.we, label %bb.fr, label %.critedge315

bb.fr:                                            ; preds = %bb.fq
  %.not267 = icmp eq ptr %5, null
  br i1 %.not267, label %bb.fv, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.wf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.13)
          to label %bb.fv unwind label %bb.fu     ; 0 uses

bb.ft:                                            ; preds = %bb.fp
  %i.wg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.fw

bb.fu:                                            ; preds = %bb.fs
  %i.wh = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

bb.fv:                                            ; preds = %bb.fr, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit650

bb.fw:                                            ; preds = %bb.fu, %bb.ft
  %.pn268 = phi { ptr, i32 } [ %i.wh, %bb.fu ], [ %i.wg, %bb.ft ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.fy

.critedge315:                                     ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.fx

bb.fx:                                            ; preds = %bb.ff, %.thread693, %.critedge315
  store i64 %i.vy, ptr %3, align 8, !tbaa !41
  %i.wi = load i64, ptr %7, align 8, !tbaa !41
  store i64 %i.wi, ptr %4, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit650

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit650: ; preds = %bb.fx, %bb.fn, %bb.fv, %bb.ew, %bb.fc, %bb.fd, %bb.ev
  %.4 = phi i1 [ false, %bb.ew ], [ false, %bb.ev ], [ false, %bb.fc ], [ false, %bb.fd ], [ true, %bb.fx ], [ false, %bb.fv ], [ false, %bb.fn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit648

bb.fy:                                            ; preds = %bb.fk, %bb.fo, %bb.fw, %bb.ex
  %.pn273 = phi { ptr, i32 } [ %i.va, %bb.ex ], [ %.pn268, %bb.fw ], [ %i.wb, %bb.fk ], [ %.pn, %bb.fo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.fz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit648: ; preds = %bb.es, %bb.er, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit650
  %.5 = phi i1 [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit650 ], [ false, %bb.er ], [ false, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.fz:                                            ; preds = %bb.fy, %bb.eg
  %.pn273.pn = phi { ptr, i32 } [ %.pn273, %bb.fy ], [ %i.qy, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.ga

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %.invoke, %bb.dx, %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit648, %bb.dz
  %.6 = phi i1 [ %.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit648 ], [ false, %.thread ], [ true, %bb.dz ], [ false, %bb.dx ], [ false, %.invoke ]
  %i.wj = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.wk = icmp eq ptr %i.wj, %i.q
  br i1 %i.wk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit655, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i653

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i653: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.wl = load i64, ptr %i.q, align 8, !tbaa !14
  %i.wm = add i64 %i.wl, 1
  call void @_ZdlPvm(ptr noundef %i.wj, i64 noundef %i.wm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit655

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit655: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i653
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i1 %.6

bb.ga:                                            ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642, %bb.fz, %bb.dv
  %.pn297.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn273.pn, %bb.fz ], [ %i.qh, %bb.dv ], [ %i.bq, %bb.n ], [ %.pn297.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642 ]
  %i.wn = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.wo = icmp eq ptr %i.wn, %i.q
  br i1 %i.wo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656: ; preds = %bb.ga
  %i.wp = load i64, ptr %i.q, align 8, !tbaa !14
  %i.wq = add i64 %i.wp, 1
  call void @_ZdlPvm(ptr noundef %i.wn, i64 noundef %i.wq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658: ; preds = %bb.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  resume { ptr, i32 } %.pn297.pn.pn.pn.pn
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_(ptr noundef nonnull readonly captures(address, ret: address, provenance) %0, i32 noundef range(i32 0, 5) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull writeonly captures(none) %4) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !14      ; 2 uses
  %i.b = icmp eq i8 %i.a, 45                      ; 4 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %1, -1                       ; 2 uses
  %.not70 = icmp eq i32 %i.d, 0
  br i1 %.not70, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.044 = phi i32 [ 0, %bb.b ], [ %i.d, %bb.c ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.e, align 1, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.f = phi i8 [ %.pre, %bb.d ], [ %i.a, %bb.a ]
  %.145 = phi i32 [ %.044, %bb.d ], [ %1, %bb.a ]
  %.0 = phi ptr [ %i.e, %bb.d ], [ %0, %bb.a ]    ; 3 uses
  %i.g = sext i8 %i.f to i32
  %memchr94 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.g, i64 11) ; 2 uses
  %.not7295 = icmp eq ptr %memchr94, null
  br i1 %.not7295, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.j
  %memchr99 = phi ptr [ %memchr, %bb.j ], [ %memchr94, %bb.e ]
  %.198 = phi ptr [ %i.r, %bb.j ], [ %.0, %bb.e ] ; 4 uses
  %.24697 = phi i32 [ %.549, %bb.j ], [ %.145, %bb.e ] ; 2 uses
  %.05396 = phi i64 [ %i.q, %bb.j ], [ 0, %bb.e ] ; 4 uses
  %i.h = ptrtoint ptr %memchr99 to i64
  %i.i = trunc i64 %i.h to i32
  %i.j = sub i32 %i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %i.k = icmp sgt i32 %i.j, 9
  br i1 %i.k, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.l = icmp slt i64 %.05396, -922337203685477580
  br i1 %i.l, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = mul nsw i64 %.05396, 10                  ; 2 uses
  %i.n = sext i32 %i.j to i64                     ; 2 uses
  %i.o = or disjoint i64 %i.n, -9223372036854775808
  %i.p = icmp slt i64 %i.m, %i.o
  br i1 %i.p, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = sub nsw i64 %i.m, %i.n                   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.198, i64 1 ; 4 uses
  %i.s = icmp sgt i32 %.24697, 0
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = add nsw i32 %.24697, -1                  ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %select.unfold, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.549 = phi i32 [ 0, %bb.h ], [ %i.t, %bb.i ]
  %i.v = load i8, ptr %i.r, align 1, !tbaa !14
  %i.w = sext i8 %i.v to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.w, i64 11) ; 2 uses
  %.not72 = icmp eq ptr %memchr, null
  br i1 %.not72, label %select.unfold, label %.lr.ph

select.unfold:                                    ; preds = %bb.g, %bb.f, %.lr.ph, %bb.j, %bb.i, %bb.e
  %.255.ph = phi i64 [ 0, %bb.e ], [ %i.q, %bb.i ], [ %.05396, %bb.f ], [ %.05396, %.lr.ph ], [ %i.q, %bb.j ], [ -9223372036854775800, %bb.g ] ; 4 uses
  %.252.ph.not = phi i1 [ true, %bb.e ], [ true, %bb.i ], [ false, %bb.f ], [ true, %.lr.ph ], [ true, %bb.j ], [ false, %bb.g ]
  %.3.ph = phi ptr [ %.0, %bb.e ], [ %i.r, %bb.i ], [ %.198, %bb.f ], [ %.198, %.lr.ph ], [ %i.r, %bb.j ], [ %.198, %bb.g ] ; 2 uses
  %i.x = icmp ne ptr %.3.ph, %.0
  %or.cond.not93 = and i1 %.252.ph.not, %i.x
  %i.y = icmp ne i64 %.255.ph, -9223372036854775808
  %or.cond3 = select i1 %i.b, i1 true, i1 %i.y
  %or.cond75 = select i1 %or.cond.not93, i1 %or.cond3, i1 false
  %or.cond75.not = xor i1 %or.cond75, true
  %i.z = icmp eq i64 %.255.ph, 0
  %or.cond5.not = select i1 %i.b, i1 %i.z, i1 false
  %or.cond79 = select i1 %or.cond75.not, i1 true, i1 %or.cond5.not
  br i1 %or.cond79, label %.thread, label %bb.k

bb.k:                                             ; preds = %select.unfold
  %i.aa = sub nsw i64 0, %.255.ph
  %spec.select = select i1 %i.b, i64 %.255.ph, i64 %i.aa ; 3 uses
  %.not = icmp sgt i64 %2, %spec.select
  %.not74 = icmp sgt i64 %spec.select, %3
  %or.cond76 = or i1 %.not, %.not74
  br i1 %or.cond76, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %spec.select, ptr %4, align 8, !tbaa !41
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.l, %bb.k, %select.unfold
  %.4 = phi ptr [ null, %select.unfold ], [ %.3.ph, %bb.l ], [ null, %bb.k ], [ null, %bb.c ]
  ret ptr %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_111ParseOffsetEPKcS6_Pi(ptr noundef nonnull %0, i8 %.0.val, ptr noundef nonnull writeonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !14      ; 3 uses
  %i.c = icmp eq i8 %i.b, 45
  switch i8 %i.b, label %bb.u [
    i8 45, label %bb.b
    i8 43, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !14    ; 2 uses
  %i.e = icmp eq i8 %i.d, 45                      ; 5 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.pre.i = load i8, ptr %i.f, align 1, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i8 [ %.pre.i, %bb.c ], [ %i.d, %bb.b ]
  %.0.i = phi ptr [ %i.f, %bb.c ], [ %i.a, %bb.b ] ; 5 uses
  %i.h = sext i8 %i.g to i32
  %memchr95.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.h, i64 11) ; 2 uses
  %.not7396.i = icmp eq ptr %memchr95.i, null
  br i1 %.not7396.i, label %select.unfold.i, label %.lr.ph.i.peel

.lr.ph.i.peel:                                    ; preds = %bb.d
  %i.i = ptrtoint ptr %memchr95.i to i64
  %i.j = trunc i64 %i.i to i32
  %i.k = sub i32 %i.j, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.l = icmp sgt i32 %i.k, 9
  br i1 %i.l, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.peel
  %i.m = sub nsw i32 0, %i.k                      ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 4 uses
  br i1 %i.e, label %select.unfold.i, label %.fold.split.peel

.fold.split.peel:                                 ; preds = %bb.e
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14
  %i.p = sext i8 %i.o to i32
  %memchr.i.peel = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.p, i64 11) ; 2 uses
  %.not73.i.peel = icmp eq ptr %memchr.i.peel, null
  br i1 %.not73.i.peel, label %select.unfold.i, label %.lr.ph.i.preheader.peel.newph

.lr.ph.i.preheader.peel.newph:                    ; preds = %.fold.split.peel
  %i.q = mul i32 %i.k, -10                        ; 2 uses
  %i.r = ptrtoint ptr %memchr.i.peel to i64
  %i.s = trunc i64 %i.r to i32
  %i.t = sub i32 %i.s, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.u = or disjoint i32 %i.t, -2147483648
  %i.v = icmp sgt i32 %i.t, 9                     ; 3 uses
  %i.w = icmp slt i32 %i.q, %i.u
  %brmerge = select i1 %i.v, i1 true, i1 %i.w
  %.mux = select i1 %i.v, i32 %i.m, i32 -2147483640
  %.mux85 = select i1 %i.v, i1 true, i1 false
  br i1 %brmerge, label %select.unfold.i, label %select.unfold.i.loopexit.loopexit.split.loop.exit49

select.unfold.i.loopexit.loopexit.split.loop.exit49: ; preds = %.lr.ph.i.preheader.peel.newph
  %i.x = sub nsw i32 %i.q, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %.lr.ph.i.preheader.peel.newph, %.lr.ph.i.peel, %bb.e, %.fold.split.peel, %select.unfold.i.loopexit.loopexit.split.loop.exit49, %bb.d
  %.255.ph.i = phi i32 [ 0, %bb.d ], [ 0, %.lr.ph.i.peel ], [ %i.m, %bb.e ], [ %i.m, %.fold.split.peel ], [ %.mux, %.lr.ph.i.preheader.peel.newph ], [ %i.x, %select.unfold.i.loopexit.loopexit.split.loop.exit49 ] ; 4 uses
  %.252.ph.not.i = phi i1 [ true, %bb.d ], [ true, %.lr.ph.i.peel ], [ true, %bb.e ], [ true, %.fold.split.peel ], [ %.mux85, %.lr.ph.i.preheader.peel.newph ], [ true, %select.unfold.i.loopexit.loopexit.split.loop.exit49 ]
  %.3.ph.i = phi ptr [ %.0.i, %bb.d ], [ %.0.i, %.lr.ph.i.peel ], [ %i.n, %bb.e ], [ %i.n, %.fold.split.peel ], [ %i.n, %.lr.ph.i.preheader.peel.newph ], [ %i.y, %select.unfold.i.loopexit.loopexit.split.loop.exit49 ] ; 8 uses
  %i.z = icmp ne ptr %.3.ph.i, %.0.i
  %or.cond.not94.i = and i1 %.252.ph.not.i, %i.z
  %i.aa = icmp ne i32 %.255.ph.i, -2147483648
  %or.cond3.i = select i1 %i.e, i1 true, i1 %i.aa
  %or.cond76.i = select i1 %or.cond.not94.i, i1 %or.cond3.i, i1 false
  %or.cond76.not.i = xor i1 %or.cond76.i, true
  %i.ab = icmp eq i32 %.255.ph.i, 0
  %or.cond5.not.i = select i1 %i.e, i1 %i.ab, i1 false
  %or.cond80.i = select i1 %or.cond76.not.i, i1 true, i1 %or.cond5.not.i
  br i1 %or.cond80.i, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit.thread, label %bb.f

bb.f:                                             ; preds = %select.unfold.i
  %i.ac = sub nsw i32 0, %.255.ph.i
  %spec.select.i = select i1 %i.e, i32 %.255.ph.i, i32 %i.ac ; 2 uses
  %or.cond77.i = icmp ult i32 %spec.select.i, 24
  %i.ad = ptrtoint ptr %.3.ph.i to i64
  %i.ae = ptrtoint ptr %i.a to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp eq i64 %i.af, 2
  %or.cond = select i1 %or.cond77.i, i1 %i.ag, i1 false
  br i1 %or.cond, label %bb.g, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit.thread

bb.g:                                             ; preds = %bb.f
  %.not50 = icmp eq i8 %.0.val, 0                 ; 2 uses
  br i1 %.not50, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i8, ptr %.3.ph.i, align 1, !tbaa !14
  %i.ai = icmp eq i8 %i.ah, %.0.val
  %spec.select.idx = zext i1 %i.ai to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.3.ph.i, i64 %spec.select.idx
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.041 = phi ptr [ %.3.ph.i, %bb.g ], [ %spec.select, %bb.h ] ; 4 uses
  %i.aj = load i8, ptr %.041, align 1, !tbaa !14  ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 45                    ; 5 uses
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %.041, i64 1 ; 2 uses
  %.pre.i96 = load i8, ptr %i.al, align 1, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = phi i8 [ %.pre.i96, %bb.j ], [ %i.aj, %bb.i ]
  %.0.i68 = phi ptr [ %i.al, %bb.j ], [ %.041, %bb.i ] ; 5 uses
  %i.an = sext i8 %i.am to i32
  %memchr95.i69 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.an, i64 11) ; 2 uses
  %.not7396.i70 = icmp eq ptr %memchr95.i69, null
  br i1 %.not7396.i70, label %select.unfold.i81, label %.lr.ph.i71.peel
end_hunk_2
