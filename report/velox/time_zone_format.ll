inline.NumInlined: 498
inline.NumDeleted: 172
begin_hunk_0_@_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_16ToWeekERKNS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE:bb.a
  %.sroa.4.8.extract.trunc.i.i = trunc i64 %.sroa.4.8.extract.shift.i.i to i8
  %i.ar = tail call noundef i64 @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %.sroa.0.0.i, i8 noundef signext %.sroa.6.sroa.0.0.in.i, i8 noundef signext %.sroa.6.sroa.6.0.in.i, i64 noundef %i.ap, i8 noundef signext %.sroa.2.8.extract.trunc.i.i, i8 noundef signext %.sroa.4.8.extract.trunc.i.i) #19
  %i.as = sdiv i64 %i.ar, 7
  %i.at = trunc i64 %i.as to i32
  ret i32 %i.at
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_(ptr nofree noundef readonly captures(address, ret: address, provenance) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 6, 1025) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #4 {
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
  %memchr95 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.e, i64 11) ; 2 uses
  %.not7396 = icmp eq ptr %memchr95, null
  br i1 %.not7396, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.i
  %memchr100 = phi ptr [ %memchr, %bb.i ], [ %memchr95, %bb.e ]
  %.199 = phi ptr [ %i.o, %bb.i ], [ %.0, %bb.e ] ; 4 uses
  %.24698 = phi i32 [ %.549, %bb.i ], [ %.145, %bb.e ] ; 2 uses
  %.05397 = phi i32 [ %i.n, %bb.i ], [ 0, %bb.e ] ; 4 uses
  %i.f = ptrtoint ptr %memchr100 to i64
  %i.g = trunc i64 %i.f to i32
  %i.h = sub i32 %i.g, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
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
  switch i32 %.24698, label %.fold.split124 [
    i32 0, label %bb.i
    i32 1, label %select.unfold
  ]

.fold.split124:                                   ; preds = %bb.h
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.fold.split124
  %.549 = phi i32 [ %.24698, %bb.h ], [ 1, %.fold.split124 ]
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14
  %i.q = sext i8 %i.p to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.q, i64 11) ; 2 uses
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
define noundef zeroext i1 @_ZN4absl12lts_2024011613time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %6 = alloca %struct.tm, align 8                 ; 18 uses
  %7 = alloca %"class.std::chrono::duration.1", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %struct.tm, align 8                ; 6 uses
  %12 = alloca %"class.absl::lts_20240116::time_internal::cctz::time_zone", align 8 ; 7 uses
  %13 = alloca %"class.absl::lts_20240116::time_internal::cctz::detail::civil_time", align 8 ; 12 uses
  %14 = alloca %"class.absl::lts_20240116::time_internal::cctz::detail::civil_time", align 8 ; 7 uses
  %15 = alloca %"class.absl::lts_20240116::time_internal::cctz::detail::civil_time", align 8 ; 7 uses
  %16 = alloca %"struct.absl::lts_20240116::time_internal::cctz::time_zone::civil_lookup", align 8 ; 5 uses
  %17 = alloca %"struct.absl::lts_20240116::time_internal::cctz::time_zone::absolute_lookup", align 8 ; 6 uses
  %18 = alloca %"class.std::chrono::time_point", align 8 ; 5 uses
  %19 = alloca %"struct.absl::lts_20240116::time_internal::cctz::time_zone::absolute_lookup", align 8 ; 6 uses
  %20 = alloca %"class.std::chrono::time_point", align 8 ; 5 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !36
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0170 = phi ptr [ %i.d, %bb.a ], [ %i.h, %bb.b ] ; 3 uses
  %i.e = load i8, ptr %.0170, align 1, !tbaa !14
  %i.f = sext i8 %i.e to i32
  %i.g = tail call i32 @isspace(i32 noundef %i.f) #23
  %.not = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %.0170, i64 1
  br i1 %.not, label %._crit_edge.i.i, label %bb.b, !llvm.loop !58

._crit_edge.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 1970, ptr %i.a, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 0, i32 70, i32 4, i32 0>, ptr %6, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i64 0, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 0, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store ptr %i.p, ptr %8, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.p, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i64 3, ptr %i.q, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 19
  store i8 0, ptr %i.r, align 1, !tbaa !14
  %i.s = load ptr, ptr %0, align 8, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 17
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 17 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363
  %.1171.ph824 = phi ptr [ %.0170, %._crit_edge.i.i ], [ %.13, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363 ] ; 2 uses
  %.0177.ph821 = phi i1 [ false, %._crit_edge.i.i ], [ %.3180, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363 ] ; 47 uses
  %.0181.ph819 = phi i1 [ false, %._crit_edge.i.i ], [ %.4185, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363 ] ; 47 uses
  %.0208.ph818 = phi ptr [ %i.s, %._crit_edge.i.i ], [ %.7215, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363 ] ; 2 uses
  %.0216.ph817 = phi i1 [ false, %._crit_edge.i.i ], [ %.6222, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363 ] ; 52 uses
  %.0223.ph816 = phi i1 [ false, %._crit_edge.i.i ], [ %.2225, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363 ] ; 48 uses
  %.0226.ph815 = phi i32 [ 6, %._crit_edge.i.i ], [ %.1227, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363 ] ; 41 uses
  %.0228.ph814 = phi i1 [ false, %._crit_edge.i.i ], [ %.2230, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363 ] ; 46 uses
  %.0.ph813 = phi i32 [ -1, %._crit_edge.i.i ], [ %.1, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363 ] ; 39 uses
  %.0671.ph812 = phi i64 [ 0, %._crit_edge.i.i ], [ %.1672, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363 ] ; 46 uses
  %i.aa = load i8, ptr %.0208.ph818, align 1, !tbaa !14 ; 2 uses
  %.not258.not1199 = icmp eq i8 %i.aa, 0          ; 25 uses
  br i1 %.not258.not1199, label %.critedge, label %.lr.ph1203

.lr.ph1203:                                       ; preds = %.lr.ph, %select.unfold.backedge
  %i.ab = phi i8 [ %i.am, %select.unfold.backedge ], [ %i.aa, %.lr.ph ] ; 3 uses
  %.02087801201 = phi ptr [ %.0208.be, %select.unfold.backedge ], [ %.0208.ph818, %.lr.ph ] ; 19 uses
  %.11717811200 = phi ptr [ %.1171.be, %select.unfold.backedge ], [ %.1171.ph824, %.lr.ph ] ; 62 uses
  %i.ac = sext i8 %i.ab to i32
  %i.ad = call i32 @isspace(i32 noundef %i.ac) #23
  %.not278 = icmp eq i32 %i.ad, 0
  br i1 %.not278, label %bb.c, label %.preheader708

.preheader708:                                    ; preds = %.lr.ph1203, %.preheader708
  %.2172 = phi ptr [ %i.ah, %.preheader708 ], [ %.11717811200, %.lr.ph1203 ] ; 3 uses
  %i.ae = load i8, ptr %.2172, align 1, !tbaa !14
  %i.af = sext i8 %i.ae to i32
  %i.ag = call i32 @isspace(i32 noundef %i.af) #23
  %.not304 = icmp eq i32 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %.2172, i64 1
  br i1 %.not304, label %.preheader707, label %.preheader708, !llvm.loop !59

.preheader707:                                    ; preds = %.preheader708, %.preheader707
  %.1209 = phi ptr [ %i.ai, %.preheader707 ], [ %.02087801201, %.preheader708 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.1209, i64 1 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !14
  %i.ak = sext i8 %i.aj to i32
  %i.al = call i32 @isspace(i32 noundef %i.ak) #23
  %.not305 = icmp eq i32 %i.al, 0
  br i1 %.not305, label %select.unfold.backedge, label %.preheader707, !llvm.loop !60

select.unfold.backedge:                           ; preds = %.preheader707, %bb.d
  %.0208.be = phi ptr [ %spec.select696, %bb.d ], [ %i.ai, %.preheader707 ] ; 2 uses
  %.1171.be = phi ptr [ %i.ap, %bb.d ], [ %.2172, %.preheader707 ] ; 2 uses
  %i.am = load i8, ptr %.0208.be, align 1, !tbaa !14 ; 2 uses
  %.not258.not = icmp eq i8 %i.am, 0
  br i1 %.not258.not, label %.critedge, label %.lr.ph1203, !llvm.loop !61

bb.c:                                             ; preds = %.lr.ph1203
  %.not279 = icmp eq i8 %i.ab, 37
  br i1 %.not279, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = load i8, ptr %.11717811200, align 1, !tbaa !14
  %i.ao = icmp eq i8 %i.an, %i.ab                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.11717811200, i64 1
  %spec.select696.idx = zext i1 %i.ao to i64
  %spec.select696 = getelementptr inbounds nuw i8, ptr %.02087801201, i64 %spec.select696.idx
  br i1 %i.ao, label %select.unfold.backedge, label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %.02087801201, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !14  ; 2 uses
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %.critedge, label %bb.f, !llvm.loop !61

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.02087801201, i64 2 ; 31 uses
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
  %i.au = load i8, ptr %.11717811200, align 1, !tbaa !14 ; 2 uses
  %i.av = icmp eq i8 %i.au, 45                    ; 4 uses
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.11717811200, i64 1 ; 2 uses
  %.pre.i = load i8, ptr %i.aw, align 1, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = phi i8 [ %.pre.i, %bb.h ], [ %i.au, %bb.g ]
  %.0.i = phi ptr [ %i.aw, %bb.h ], [ %.11717811200, %bb.g ] ; 3 uses
  %i.ay = sext i8 %i.ax to i32
  %memchr94.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ay, i64 11) ; 2 uses
  %.not7295.i = icmp eq ptr %memchr94.i, null
  br i1 %.not7295.i, label %select.unfold.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.l
  %memchr99.i = phi ptr [ %memchr.i, %bb.l ], [ %memchr94.i, %bb.i ]
  %.198.i = phi ptr [ %i.bi, %bb.l ], [ %.0.i, %bb.i ] ; 4 uses
  %.05396.i = phi i64 [ %i.bj, %bb.l ], [ 0, %bb.i ] ; 4 uses
  %i.az = ptrtoint ptr %memchr99.i to i64
  %i.ba = trunc i64 %i.az to i32
  %i.bb = sub i32 %i.ba, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
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
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bl, i64 11) ; 2 uses
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
  br i1 %or.cond79.i, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit, label %bb.m

bb.m:                                             ; preds = %select.unfold.i
  %i.bp = sub nsw i64 0, %.255.ph.i
  %spec.select.i = select i1 %i.av, i64 %.255.ph.i, i64 %i.bp
  store i64 %spec.select.i, ptr %i.a, align 8, !tbaa !43
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit: ; preds = %select.unfold.i, %bb.m
  %.4.i = phi ptr [ null, %select.unfold.i ], [ %.3.ph.i, %bb.m ] ; 2 uses
  %.not296 = icmp ne ptr %.4.i, null
  %spec.select = select i1 %.not296, i1 true, i1 %.0177.ph821
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363, !llvm.loop !61

bb.n:                                             ; preds = %bb.cc
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.o:                                             ; preds = %bb.f
  %i.br = load i8, ptr %.11717811200, align 1, !tbaa !14 ; 2 uses
  %i.bs = icmp eq i8 %i.br, 45                    ; 5 uses
  br i1 %i.bs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %21 = getelementptr inbounds nuw i8, ptr %.11717811200, i64 1 ; 2 uses
  %.pre.i332 = load i8, ptr %21, align 1, !tbaa !14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %22 = phi i8 [ %.pre.i332, %bb.p ], [ %i.br, %bb.o ]
  %.0.i321 = phi ptr [ %21, %bb.p ], [ %.11717811200, %bb.o ] ; 5 uses
  %i.bt = sext i8 %22 to i32
  %memchr95.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bt, i64 11) ; 2 uses
  %.not7396.i = icmp eq ptr %memchr95.i, null
  br i1 %.not7396.i, label %select.unfold.i325, label %.lr.ph.i322.peel

.lr.ph.i322.peel:                                 ; preds = %bb.q
  %i.bu = ptrtoint ptr %memchr95.i to i64
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = sub i32 %i.bv, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.bx = icmp sgt i32 %i.bw, 9
  br i1 %i.bx, label %select.unfold.i325, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i322.peel
  %i.by = sub nsw i32 0, %i.bw                    ; 3 uses
  %23 = getelementptr inbounds nuw i8, ptr %.0.i321, i64 1 ; 4 uses
  br i1 %i.bs, label %select.unfold.i325, label %.fold.split.peel

.fold.split.peel:                                 ; preds = %bb.r
  %24 = load i8, ptr %23, align 1, !tbaa !14
  %25 = sext i8 %24 to i32
  %memchr.i324.peel = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %25, i64 11) ; 2 uses
  %.not73.i.peel = icmp eq ptr %memchr.i324.peel, null
  br i1 %.not73.i.peel, label %select.unfold.i325, label %.lr.ph.i322.preheader.peel.newph

.lr.ph.i322.preheader.peel.newph:                 ; preds = %.fold.split.peel
  %26 = mul i32 %i.bw, -10                        ; 2 uses
  %27 = ptrtoint ptr %memchr.i324.peel to i64
  %28 = trunc i64 %27 to i32
  %i.bz = sub i32 %28, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %29 = or disjoint i32 %i.bz, -2147483648
  %30 = icmp sgt i32 %i.bz, 9                     ; 3 uses
  %31 = icmp slt i32 %26, %29
  %brmerge = select i1 %30, i1 true, i1 %31
  %.mux = select i1 %30, i32 %i.by, i32 -2147483640
  %.mux1464 = select i1 %30, i1 true, i1 false
  br i1 %brmerge, label %select.unfold.i325, label %select.unfold.i325.loopexit.loopexit.split.loop.exit1460

select.unfold.i325.loopexit.loopexit.split.loop.exit1460: ; preds = %.lr.ph.i322.preheader.peel.newph
  %i.ca = sub nsw i32 %26, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i321, i64 2
  br label %select.unfold.i325

select.unfold.i325:                               ; preds = %.lr.ph.i322.preheader.peel.newph, %.lr.ph.i322.peel, %bb.r, %.fold.split.peel, %select.unfold.i325.loopexit.loopexit.split.loop.exit1460, %bb.q
  %.255.ph.i326 = phi i32 [ 0, %bb.q ], [ 0, %.lr.ph.i322.peel ], [ %i.by, %bb.r ], [ %i.by, %.fold.split.peel ], [ %.mux, %.lr.ph.i322.preheader.peel.newph ], [ %i.ca, %select.unfold.i325.loopexit.loopexit.split.loop.exit1460 ] ; 4 uses
  %.252.ph.not.i327 = phi i1 [ true, %bb.q ], [ true, %.lr.ph.i322.peel ], [ true, %bb.r ], [ true, %.fold.split.peel ], [ %.mux1464, %.lr.ph.i322.preheader.peel.newph ], [ true, %select.unfold.i325.loopexit.loopexit.split.loop.exit1460 ]
  %.3.ph.i328 = phi ptr [ %.0.i321, %bb.q ], [ %.0.i321, %.lr.ph.i322.peel ], [ %23, %bb.r ], [ %23, %.fold.split.peel ], [ %23, %.lr.ph.i322.preheader.peel.newph ], [ %i.cb, %select.unfold.i325.loopexit.loopexit.split.loop.exit1460 ] ; 2 uses
  %i.cc = icmp ne ptr %.3.ph.i328, %.0.i321
  %or.cond.not94.i = and i1 %.252.ph.not.i327, %i.cc
  %i.cd = icmp ne i32 %.255.ph.i326, -2147483648
  %or.cond3.i329 = select i1 %i.bs, i1 true, i1 %i.cd
  %or.cond76.i = select i1 %or.cond.not94.i, i1 %or.cond3.i329, i1 false
  %or.cond76.not.i = xor i1 %or.cond76.i, true
  %i.ce = icmp eq i32 %.255.ph.i326, 0
  %or.cond5.not.i330 = select i1 %i.bs, i1 %i.ce, i1 false
  %or.cond80.i = select i1 %or.cond76.not.i, i1 true, i1 %or.cond5.not.i330
  br i1 %or.cond80.i, label %.critedge, label %bb.s, !llvm.loop !61

bb.s:                                             ; preds = %select.unfold.i325
  %i.cf = sub nsw i32 0, %.255.ph.i326
  %spec.select.i331 = select i1 %i.bs, i32 %.255.ph.i326, i32 %i.cf ; 2 uses
  %i.cg = add i32 %spec.select.i331, -13
  %or.cond77.i = icmp ult i32 %i.cg, -12
  br i1 %or.cond77.i, label %.critedge, label %bb.t, !llvm.loop !61

bb.t:                                             ; preds = %bb.s
  %i.ch = add nsw i32 %spec.select.i331, -1
  store i32 %i.ch, ptr %i.k, align 8, !tbaa !22
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363, !llvm.loop !61

bb.u:                                             ; preds = %bb.f, %bb.f
  %i.ci = load i8, ptr %.11717811200, align 1, !tbaa !14 ; 2 uses
  %i.cj = icmp eq i8 %i.ci, 45                    ; 5 uses
  br i1 %i.cj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %.11717811200, i64 1 ; 2 uses
  %.pre.i362 = load i8, ptr %i.ck, align 1, !tbaa !14
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cl = phi i8 [ %.pre.i362, %bb.v ], [ %i.ci, %bb.u ]
  %.0.i335 = phi ptr [ %i.ck, %bb.v ], [ %.11717811200, %bb.u ] ; 5 uses
  %i.cm = sext i8 %i.cl to i32
  %memchr95.i336 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.cm, i64 11) ; 2 uses
  %.not7396.i337 = icmp eq ptr %memchr95.i336, null
  br i1 %.not7396.i337, label %select.unfold.i347, label %.lr.ph.i338.peel

.lr.ph.i338.peel:                                 ; preds = %bb.w
  %i.cn = ptrtoint ptr %memchr95.i336 to i64
  %i.co = trunc i64 %i.cn to i32
  %i.cp = sub i32 %i.co, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.cq = icmp sgt i32 %i.cp, 9
  br i1 %i.cq, label %select.unfold.i347, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i338.peel
  %i.cr = sub nsw i32 0, %i.cp                    ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i335, i64 1 ; 4 uses
  br i1 %i.cj, label %select.unfold.i347, label %.fold.split698.peel

.fold.split698.peel:                              ; preds = %bb.x
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !14
  %i.cu = sext i8 %i.ct to i32
  %memchr.i345.peel = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.cu, i64 11) ; 2 uses
  %.not73.i346.peel = icmp eq ptr %memchr.i345.peel, null
  br i1 %.not73.i346.peel, label %select.unfold.i347, label %.lr.ph.i338.preheader.peel.newph

.lr.ph.i338.preheader.peel.newph:                 ; preds = %.fold.split698.peel
  %i.cv = mul i32 %i.cp, -10                      ; 2 uses
  %i.cw = ptrtoint ptr %memchr.i345.peel to i64
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = sub i32 %i.cx, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.cz = or disjoint i32 %i.cy, -2147483648
  %i.da = icmp sgt i32 %i.cy, 9                   ; 3 uses
  %i.db = icmp slt i32 %i.cv, %i.cz
  %brmerge1465 = select i1 %i.da, i1 true, i1 %i.db
  %.mux1466 = select i1 %i.da, i32 %i.cr, i32 -2147483640
  %.mux1467 = select i1 %i.da, i1 true, i1 false
  br i1 %brmerge1465, label %select.unfold.i347, label %select.unfold.i347.loopexit.loopexit.split.loop.exit1444

select.unfold.i347.loopexit.loopexit.split.loop.exit1444: ; preds = %.lr.ph.i338.preheader.peel.newph
  %i.dc = sub nsw i32 %i.cv, %i.cy
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i335, i64 2
  br label %select.unfold.i347

select.unfold.i347:                               ; preds = %.lr.ph.i338.preheader.peel.newph, %.lr.ph.i338.peel, %bb.x, %.fold.split698.peel, %select.unfold.i347.loopexit.loopexit.split.loop.exit1444, %bb.w
  %.255.ph.i348 = phi i32 [ 0, %bb.w ], [ 0, %.lr.ph.i338.peel ], [ %i.cr, %bb.x ], [ %i.cr, %.fold.split698.peel ], [ %.mux1466, %.lr.ph.i338.preheader.peel.newph ], [ %i.dc, %select.unfold.i347.loopexit.loopexit.split.loop.exit1444 ] ; 4 uses
  %.252.ph.not.i349 = phi i1 [ true, %bb.w ], [ true, %.lr.ph.i338.peel ], [ true, %bb.x ], [ true, %.fold.split698.peel ], [ %.mux1467, %.lr.ph.i338.preheader.peel.newph ], [ true, %select.unfold.i347.loopexit.loopexit.split.loop.exit1444 ]
  %.3.ph.i350 = phi ptr [ %.0.i335, %bb.w ], [ %.0.i335, %.lr.ph.i338.peel ], [ %i.cs, %bb.x ], [ %i.cs, %.fold.split698.peel ], [ %i.cs, %.lr.ph.i338.preheader.peel.newph ], [ %i.dd, %select.unfold.i347.loopexit.loopexit.split.loop.exit1444 ] ; 2 uses
  %i.de = icmp ne ptr %.3.ph.i350, %.0.i335
  %or.cond.not94.i351 = and i1 %.252.ph.not.i349, %i.de
  %i.df = icmp ne i32 %.255.ph.i348, -2147483648
  %or.cond3.i352 = select i1 %i.cj, i1 true, i1 %i.df
  %or.cond76.i353 = select i1 %or.cond.not94.i351, i1 %or.cond3.i352, i1 false
  %or.cond76.not.i354 = xor i1 %or.cond76.i353, true
  %i.dg = icmp eq i32 %.255.ph.i348, 0
  %or.cond5.not.i355 = select i1 %i.cj, i1 %i.dg, i1 false
  %or.cond80.i356 = select i1 %or.cond76.not.i354, i1 true, i1 %or.cond5.not.i355
  br i1 %or.cond80.i356, label %.critedge, label %bb.y, !llvm.loop !61

bb.y:                                             ; preds = %select.unfold.i347
  %i.dh = sub nsw i32 0, %.255.ph.i348
  %spec.select.i357 = select i1 %i.cj, i32 %.255.ph.i348, i32 %i.dh ; 2 uses
  %i.di = add i32 %spec.select.i357, -32
  %or.cond77.i360 = icmp ult i32 %i.di, -31
  br i1 %or.cond77.i360, label %.critedge, label %bb.z, !llvm.loop !61

bb.z:                                             ; preds = %bb.y
  store i32 %spec.select.i357, ptr %i.l, align 4, !tbaa !3
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363, !llvm.loop !61

bb.aa:                                            ; preds = %bb.f
  %i.dj = load i8, ptr %.11717811200, align 1, !tbaa !14 ; 2 uses
  %i.dk = icmp eq i8 %i.dj, 45                    ; 4 uses
  br i1 %i.dk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dl = getelementptr inbounds nuw i8, ptr %.11717811200, i64 1 ; 2 uses
  %.pre.i393 = load i8, ptr %i.dl, align 1, !tbaa !14
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dm = phi i8 [ %.pre.i393, %bb.ab ], [ %i.dj, %bb.aa ]
  %.0.i366 = phi ptr [ %i.dl, %bb.ab ], [ %.11717811200, %bb.aa ] ; 3 uses
  %i.dn = sext i8 %i.dm to i32
  %memchr95.i367 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.dn, i64 11) ; 2 uses
  %.not7396.i368 = icmp eq ptr %memchr95.i367, null
  br i1 %.not7396.i368, label %select.unfold.i378, label %.lr.ph.i369

.lr.ph.i369:                                      ; preds = %bb.ac, %bb.af
  %memchr100.i370 = phi ptr [ %memchr.i376, %bb.af ], [ %memchr95.i367, %bb.ac ]
  %.199.i371 = phi ptr [ %i.dx, %bb.af ], [ %.0.i366, %bb.ac ] ; 4 uses
  %.05397.i373 = phi i32 [ %i.dw, %bb.af ], [ 0, %bb.ac ] ; 4 uses
  %i.do = ptrtoint ptr %memchr100.i370 to i64
  %i.dp = trunc i64 %i.do to i32
  %i.dq = sub i32 %i.dp, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.dr = icmp sgt i32 %i.dq, 9
  br i1 %i.dr, label %select.unfold.i378, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i369
  %i.ds = icmp slt i32 %.05397.i373, -214748364
  br i1 %i.ds, label %select.unfold.i378, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dt = mul nsw i32 %.05397.i373, 10            ; 2 uses
  %i.du = or disjoint i32 %i.dq, -2147483648
  %i.dv = icmp slt i32 %i.dt, %i.du
  br i1 %i.dv, label %select.unfold.i378, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dw = sub nsw i32 %i.dt, %i.dq                ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.199.i371, i64 1 ; 3 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !14
  %i.dz = sext i8 %i.dy to i32
  %memchr.i376 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.dz, i64 11) ; 2 uses
  %.not73.i377 = icmp eq ptr %memchr.i376, null
  br i1 %.not73.i377, label %select.unfold.i378, label %.lr.ph.i369

select.unfold.i378:                               ; preds = %bb.af, %bb.ae, %bb.ad, %.lr.ph.i369, %bb.ac
  %.255.ph.i379 = phi i32 [ 0, %bb.ac ], [ %i.dw, %bb.af ], [ %.05397.i373, %.lr.ph.i369 ], [ %.05397.i373, %bb.ad ], [ -2147483640, %bb.ae ] ; 4 uses
  %.252.ph.not.i380 = phi i1 [ true, %bb.ac ], [ true, %bb.af ], [ true, %.lr.ph.i369 ], [ false, %bb.ad ], [ false, %bb.ae ]
  %.3.ph.i381 = phi ptr [ %.0.i366, %bb.ac ], [ %i.dx, %bb.af ], [ %.199.i371, %.lr.ph.i369 ], [ %.199.i371, %bb.ad ], [ %.199.i371, %bb.ae ] ; 2 uses
  %i.ea = icmp ne ptr %.3.ph.i381, %.0.i366
  %or.cond.not94.i382 = and i1 %.252.ph.not.i380, %i.ea
  %i.eb = icmp ne i32 %.255.ph.i379, -2147483648
  %or.cond3.i383 = select i1 %i.dk, i1 true, i1 %i.eb
  %or.cond76.i384 = select i1 %or.cond.not94.i382, i1 %or.cond3.i383, i1 false
  %or.cond76.not.i385 = xor i1 %or.cond76.i384, true
  %i.ec = icmp eq i32 %.255.ph.i379, 0
  %or.cond5.not.i386 = select i1 %i.dk, i1 %i.ec, i1 false
  %or.cond80.i387 = select i1 %or.cond76.not.i385, i1 true, i1 %or.cond5.not.i386
  br i1 %or.cond80.i387, label %.critedge, label %bb.ag, !llvm.loop !61

bb.ag:                                            ; preds = %select.unfold.i378
  %i.ed = sub nsw i32 0, %.255.ph.i379
  %spec.select.i388 = select i1 %i.dk, i32 %.255.ph.i379, i32 %i.ed ; 2 uses
  %or.cond77.i391 = icmp ugt i32 %spec.select.i388, 53
  br i1 %or.cond77.i391, label %.critedge, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363, !llvm.loop !61

bb.ah:                                            ; preds = %bb.f
  %i.ee = load i8, ptr %.11717811200, align 1, !tbaa !14 ; 2 uses
  %i.ef = icmp eq i8 %i.ee, 45                    ; 4 uses
  br i1 %i.ef, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eg = getelementptr inbounds nuw i8, ptr %.11717811200, i64 1 ; 2 uses
  %.pre.i424 = load i8, ptr %i.eg, align 1, !tbaa !14
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.eh = phi i8 [ %.pre.i424, %bb.ai ], [ %i.ee, %bb.ah ]
  %.0.i397 = phi ptr [ %i.eg, %bb.ai ], [ %.11717811200, %bb.ah ] ; 3 uses
  %i.ei = sext i8 %i.eh to i32
  %memchr95.i398 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ei, i64 11) ; 2 uses
  %.not7396.i399 = icmp eq ptr %memchr95.i398, null
  br i1 %.not7396.i399, label %select.unfold.i409, label %.lr.ph.i400

.lr.ph.i400:                                      ; preds = %bb.aj, %bb.am
  %memchr100.i401 = phi ptr [ %memchr.i407, %bb.am ], [ %memchr95.i398, %bb.aj ]
  %.199.i402 = phi ptr [ %i.es, %bb.am ], [ %.0.i397, %bb.aj ] ; 4 uses
  %.05397.i404 = phi i32 [ %i.er, %bb.am ], [ 0, %bb.aj ] ; 4 uses
  %i.ej = ptrtoint ptr %memchr100.i401 to i64
  %i.ek = trunc i64 %i.ej to i32
  %i.el = sub i32 %i.ek, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.em = icmp sgt i32 %i.el, 9
  br i1 %i.em, label %select.unfold.i409, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i400
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011613time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_:bb.a
bb.gf:                                            ; preds = %bb.fr, %bb.fv, %bb.gd, %bb.fe
  %.pn273 = phi { ptr, i32 } [ %i.ur, %bb.fe ], [ %.pn268, %bb.gd ], [ %i.vs, %bb.fr ], [ %.pn, %bb.fv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.gg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit650: ; preds = %bb.ez, %bb.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit652
  %.5 = phi i1 [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit652 ], [ false, %bb.ey ], [ false, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.gg:                                            ; preds = %bb.gf, %bb.en
  %.pn273.pn = phi { ptr, i32 } [ %.pn273, %bb.gf ], [ %i.qp, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.gh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %.invoke, %bb.ee, %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit650, %bb.eg
  %.6 = phi i1 [ %.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit650 ], [ false, %.thread ], [ true, %bb.eg ], [ false, %bb.ee ], [ false, %.invoke ]
  %i.wa = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.wb = icmp eq ptr %i.wa, %i.p
  br i1 %i.wb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i655

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i655: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.wc = load i64, ptr %i.p, align 8, !tbaa !14
  %i.wd = add i64 %i.wc, 1
  call void @_ZdlPvm(ptr noundef %i.wa, i64 noundef %i.wd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i655
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i1 %.6

bb.gh:                                            ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644, %bb.gg, %bb.ec
  %.pn297.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn273.pn, %bb.gg ], [ %i.py, %bb.ec ], [ %i.bq, %bb.n ], [ %.pn297.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644 ]
  %i.we = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.wf = icmp eq ptr %i.we, %i.p
  br i1 %i.wf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i658

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i658: ; preds = %bb.gh
  %i.wg = load i64, ptr %i.p, align 8, !tbaa !14
  %i.wh = add i64 %i.wg, 1
  call void @_ZdlPvm(ptr noundef %i.we, i64 noundef %i.wh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660: ; preds = %bb.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i658
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  resume { ptr, i32 } %.pn297.pn.pn.pn.pn
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_(ptr nofree noundef nonnull readonly captures(address, ret: address, provenance) %0, i32 noundef range(i32 0, 5) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #4 {
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
  %memchr94 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.g, i64 11) ; 2 uses
  %.not7295 = icmp eq ptr %memchr94, null
  br i1 %.not7295, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.j
  %memchr99 = phi ptr [ %memchr, %bb.j ], [ %memchr94, %bb.e ]
  %.198 = phi ptr [ %i.r, %bb.j ], [ %.0, %bb.e ] ; 4 uses
  %.24697 = phi i32 [ %.549, %bb.j ], [ %.145, %bb.e ] ; 2 uses
  %.05396 = phi i64 [ %i.q, %bb.j ], [ 0, %bb.e ] ; 4 uses
  %i.h = ptrtoint ptr %memchr99 to i64
  %i.i = trunc i64 %i.h to i32
  %i.j = sub i32 %i.i, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
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
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.w, i64 11) ; 2 uses
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
  store i64 %spec.select, ptr %4, align 8, !tbaa !43
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.l, %bb.k, %select.unfold
  %.4 = phi ptr [ null, %select.unfold ], [ %.3.ph, %bb.l ], [ null, %bb.k ], [ null, %bb.c ]
  ret ptr %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_111ParseOffsetEPKcS6_Pi(ptr noundef nonnull %0, i8 %.0.val, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #7 {
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
  %memchr95.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.h, i64 11) ; 2 uses
  %.not7396.i = icmp eq ptr %memchr95.i, null
  br i1 %.not7396.i, label %select.unfold.i, label %.lr.ph.i.peel

.lr.ph.i.peel:                                    ; preds = %bb.d
  %i.i = ptrtoint ptr %memchr95.i to i64
  %i.j = trunc i64 %i.i to i32
  %i.k = sub i32 %i.j, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.l = icmp sgt i32 %i.k, 9
  br i1 %i.l, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.peel
  %i.m = sub nsw i32 0, %i.k                      ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 4 uses
  br i1 %i.e, label %select.unfold.i, label %.fold.split.peel

.fold.split.peel:                                 ; preds = %bb.e
  %3 = load i8, ptr %2, align 1, !tbaa !14
  %4 = sext i8 %3 to i32
  %memchr.i.peel = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %4, i64 11) ; 2 uses
  %.not73.i.peel = icmp eq ptr %memchr.i.peel, null
  br i1 %.not73.i.peel, label %select.unfold.i, label %.lr.ph.i.preheader.peel.newph

.lr.ph.i.preheader.peel.newph:                    ; preds = %.fold.split.peel
  %i.n = mul i32 %i.k, -10                        ; 2 uses
  %5 = ptrtoint ptr %memchr.i.peel to i64
  %6 = trunc i64 %5 to i32
  %7 = sub i32 %6, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.o = or disjoint i32 %7, -2147483648
  %8 = icmp sgt i32 %7, 9                         ; 3 uses
  %i.p = icmp slt i32 %i.n, %i.o
  %brmerge = select i1 %8, i1 true, i1 %i.p
  %.mux = select i1 %8, i32 %i.m, i32 -2147483640
  %.mux85 = select i1 %8, i1 true, i1 false
  br i1 %brmerge, label %select.unfold.i, label %select.unfold.i.loopexit.loopexit.split.loop.exit49

select.unfold.i.loopexit.loopexit.split.loop.exit49: ; preds = %.lr.ph.i.preheader.peel.newph
  %i.q = sub nsw i32 %i.n, %7
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %.lr.ph.i.preheader.peel.newph, %.lr.ph.i.peel, %bb.e, %.fold.split.peel, %select.unfold.i.loopexit.loopexit.split.loop.exit49, %bb.d
  %.255.ph.i = phi i32 [ 0, %bb.d ], [ 0, %.lr.ph.i.peel ], [ %i.m, %bb.e ], [ %i.m, %.fold.split.peel ], [ %.mux, %.lr.ph.i.preheader.peel.newph ], [ %i.q, %select.unfold.i.loopexit.loopexit.split.loop.exit49 ] ; 4 uses
  %.252.ph.not.i = phi i1 [ true, %bb.d ], [ true, %.lr.ph.i.peel ], [ true, %bb.e ], [ true, %.fold.split.peel ], [ %.mux85, %.lr.ph.i.preheader.peel.newph ], [ true, %select.unfold.i.loopexit.loopexit.split.loop.exit49 ]
  %.3.ph.i = phi ptr [ %.0.i, %bb.d ], [ %.0.i, %.lr.ph.i.peel ], [ %2, %bb.e ], [ %2, %.fold.split.peel ], [ %2, %.lr.ph.i.preheader.peel.newph ], [ %i.r, %select.unfold.i.loopexit.loopexit.split.loop.exit49 ] ; 8 uses
  %i.s = icmp ne ptr %.3.ph.i, %.0.i
  %or.cond.not94.i = and i1 %.252.ph.not.i, %i.s
  %i.t = icmp ne i32 %.255.ph.i, -2147483648
  %or.cond3.i = select i1 %i.e, i1 true, i1 %i.t
  %or.cond76.i = select i1 %or.cond.not94.i, i1 %or.cond3.i, i1 false
  %or.cond76.not.i = xor i1 %or.cond76.i, true
  %i.u = icmp eq i32 %.255.ph.i, 0
  %or.cond5.not.i = select i1 %i.e, i1 %i.u, i1 false
  %or.cond80.i = select i1 %or.cond76.not.i, i1 true, i1 %or.cond5.not.i
  br i1 %or.cond80.i, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit.thread, label %bb.f

bb.f:                                             ; preds = %select.unfold.i
  %i.v = sub nsw i32 0, %.255.ph.i
  %spec.select.i = select i1 %i.e, i32 %.255.ph.i, i32 %i.v ; 2 uses
  %or.cond77.i = icmp ult i32 %spec.select.i, 24
  %i.w = ptrtoint ptr %.3.ph.i to i64
  %i.x = ptrtoint ptr %i.a to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp eq i64 %i.y, 2
  %or.cond = select i1 %or.cond77.i, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.g, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit.thread

bb.g:                                             ; preds = %bb.f
  %.not50 = icmp eq i8 %.0.val, 0                 ; 2 uses
  br i1 %.not50, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i8, ptr %.3.ph.i, align 1, !tbaa !14
  %i.ab = icmp eq i8 %i.aa, %.0.val
  %spec.select.idx = zext i1 %i.ab to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.3.ph.i, i64 %spec.select.idx
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.041 = phi ptr [ %.3.ph.i, %bb.g ], [ %spec.select, %bb.h ] ; 4 uses
  %i.ac = load i8, ptr %.041, align 1, !tbaa !14  ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 45                    ; 5 uses
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.041, i64 1 ; 2 uses
  %.pre.i95 = load i8, ptr %i.ae, align 1, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.af = phi i8 [ %.pre.i95, %bb.j ], [ %i.ac, %bb.i ]
  %.0.i68 = phi ptr [ %i.ae, %bb.j ], [ %.041, %bb.i ] ; 5 uses
  %i.ag = sext i8 %i.af to i32
  %memchr95.i69 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ag, i64 11) ; 2 uses
  %.not7396.i70 = icmp eq ptr %memchr95.i69, null
  br i1 %.not7396.i70, label %select.unfold.i80, label %.lr.ph.i71.peel

.lr.ph.i71.peel:                                  ; preds = %bb.k
  %i.ah = ptrtoint ptr %memchr95.i69 to i64
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = sub i32 %i.ai, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 9
  br i1 %i.ak, label %select.unfold.i80, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i71.peel
  %i.al = sub nsw i32 0, %i.aj                    ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i68, i64 1 ; 4 uses
  br i1 %i.ad, label %select.unfold.i80, label %.fold.split16.peel

.fold.split16.peel:                               ; preds = %bb.l
  %i.an = load i8, ptr %i.am, align 1, !tbaa !14
  %i.ao = sext i8 %i.an to i32
  %memchr.i78.peel = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ao, i64 11) ; 2 uses
  %.not73.i79.peel = icmp eq ptr %memchr.i78.peel, null
  br i1 %.not73.i79.peel, label %select.unfold.i80, label %.lr.ph.i71.preheader.peel.newph

.lr.ph.i71.preheader.peel.newph:                  ; preds = %.fold.split16.peel
  %i.ap = mul i32 %i.aj, -10                      ; 2 uses
  %i.aq = ptrtoint ptr %memchr.i78.peel to i64
  %i.ar = trunc i64 %i.aq to i32
  %i.as = sub i32 %i.ar, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.at = or disjoint i32 %i.as, -2147483648
  %i.au = icmp sgt i32 %i.as, 9                   ; 3 uses
  %i.av = icmp slt i32 %i.ap, %i.at
  %brmerge86 = select i1 %i.au, i1 true, i1 %i.av
  %.mux87 = select i1 %i.au, i32 %i.al, i32 -2147483640
  %.mux88 = select i1 %i.au, i1 true, i1 false
  br i1 %brmerge86, label %select.unfold.i80, label %select.unfold.i80.loopexit.loopexit.split.loop.exit65

select.unfold.i80.loopexit.loopexit.split.loop.exit65: ; preds = %.lr.ph.i71.preheader.peel.newph
  %i.aw = sub nsw i32 %i.ap, %i.as
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i68, i64 2
  br label %select.unfold.i80

select.unfold.i80:                                ; preds = %.lr.ph.i71.preheader.peel.newph, %.lr.ph.i71.peel, %bb.l, %.fold.split16.peel, %select.unfold.i80.loopexit.loopexit.split.loop.exit65, %bb.k
  %.255.ph.i81 = phi i32 [ 0, %bb.k ], [ 0, %.lr.ph.i71.peel ], [ %i.al, %bb.l ], [ %i.al, %.fold.split16.peel ], [ %.mux87, %.lr.ph.i71.preheader.peel.newph ], [ %i.aw, %select.unfold.i80.loopexit.loopexit.split.loop.exit65 ] ; 4 uses
  %.252.ph.not.i82 = phi i1 [ true, %bb.k ], [ true, %.lr.ph.i71.peel ], [ true, %bb.l ], [ true, %.fold.split16.peel ], [ %.mux88, %.lr.ph.i71.preheader.peel.newph ], [ true, %select.unfold.i80.loopexit.loopexit.split.loop.exit65 ]
  %.3.ph.i83 = phi ptr [ %.0.i68, %bb.k ], [ %.0.i68, %.lr.ph.i71.peel ], [ %i.am, %bb.l ], [ %i.am, %.fold.split16.peel ], [ %i.am, %.lr.ph.i71.preheader.peel.newph ], [ %i.ax, %select.unfold.i80.loopexit.loopexit.split.loop.exit65 ] ; 6 uses
  %i.ay = icmp ne ptr %.3.ph.i83, %.0.i68
  %or.cond.not94.i84 = and i1 %.252.ph.not.i82, %i.ay
  %i.az = icmp ne i32 %.255.ph.i81, -2147483648
  %or.cond3.i85 = select i1 %i.ad, i1 true, i1 %i.az
  %or.cond76.i86 = select i1 %or.cond.not94.i84, i1 %or.cond3.i85, i1 false
  %or.cond76.not.i87 = xor i1 %or.cond76.i86, true
  %i.ba = icmp eq i32 %.255.ph.i81, 0
  %or.cond5.not.i88 = select i1 %i.ad, i1 %i.ba, i1 false
  %or.cond80.i89 = select i1 %or.cond76.not.i87, i1 true, i1 %or.cond5.not.i88
  br i1 %or.cond80.i89, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96.thread, label %bb.m

bb.m:                                             ; preds = %select.unfold.i80
  %i.bb = sub nsw i32 0, %.255.ph.i81
  %spec.select.i90 = select i1 %i.ad, i32 %.255.ph.i81, i32 %i.bb ; 3 uses
  %or.cond77.i93 = icmp ugt i32 %spec.select.i90, 59
  br i1 %or.cond77.i93, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96.thread, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96: ; preds = %bb.m
  %i.bc = ptrtoint ptr %.3.ph.i83 to i64
  %i.bd = ptrtoint ptr %.041 to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp eq i64 %i.be, 2
  br i1 %i.bf, label %bb.n, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96.thread

bb.n:                                             ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96
  br i1 %.not50, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = load i8, ptr %.3.ph.i83, align 1, !tbaa !14
  %i.bh = icmp eq i8 %i.bg, %.0.val
  %spec.select61.idx = zext i1 %i.bh to i64
  %spec.select61 = getelementptr inbounds nuw i8, ptr %.3.ph.i83, i64 %spec.select61.idx
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.040 = phi ptr [ %.3.ph.i83, %bb.n ], [ %spec.select61, %bb.o ] ; 4 uses
  %i.bi = load i8, ptr %.040, align 1, !tbaa !14  ; 2 uses
  %i.bj = icmp eq i8 %i.bi, 45                    ; 5 uses
  br i1 %i.bj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %.040, i64 1 ; 2 uses
  %.pre.i126 = load i8, ptr %i.bk, align 1, !tbaa !14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bl = phi i8 [ %.pre.i126, %bb.q ], [ %i.bi, %bb.p ]
  %.0.i99 = phi ptr [ %i.bk, %bb.q ], [ %.040, %bb.p ] ; 5 uses
  %i.bm = sext i8 %i.bl to i32
  %memchr95.i100 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bm, i64 11) ; 2 uses
  %.not7396.i101 = icmp eq ptr %memchr95.i100, null
  br i1 %.not7396.i101, label %select.unfold.i111, label %.lr.ph.i102.peel

.lr.ph.i102.peel:                                 ; preds = %bb.r
  %i.bn = ptrtoint ptr %memchr95.i100 to i64
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = sub i32 %i.bo, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, 9
  br i1 %i.bq, label %select.unfold.i111, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i102.peel
  %i.br = sub nsw i32 0, %i.bp                    ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i99, i64 1 ; 4 uses
  br i1 %i.bj, label %select.unfold.i111, label %.fold.split17.peel

.fold.split17.peel:                               ; preds = %bb.s
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !14
  %i.bu = sext i8 %i.bt to i32
  %memchr.i109.peel = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bu, i64 11) ; 2 uses
  %.not73.i110.peel = icmp eq ptr %memchr.i109.peel, null
  br i1 %.not73.i110.peel, label %select.unfold.i111, label %.lr.ph.i102.preheader.peel.newph

.lr.ph.i102.preheader.peel.newph:                 ; preds = %.fold.split17.peel
  %i.bv = mul i32 %i.bp, -10                      ; 2 uses
  %i.bw = ptrtoint ptr %memchr.i109.peel to i64
  %i.bx = trunc i64 %i.bw to i32
  %i.by = sub i32 %i.bx, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.bz = or disjoint i32 %i.by, -2147483648
  %i.ca = icmp sgt i32 %i.by, 9                   ; 3 uses
  %i.cb = icmp slt i32 %i.bv, %i.bz
  %brmerge89 = select i1 %i.ca, i1 true, i1 %i.cb
  %.mux90 = select i1 %i.ca, i32 %i.br, i32 -2147483640
  %.mux91 = select i1 %i.ca, i1 true, i1 false
  br i1 %brmerge89, label %select.unfold.i111, label %select.unfold.i111.loopexit.loopexit.split.loop.exit81

select.unfold.i111.loopexit.loopexit.split.loop.exit81: ; preds = %.lr.ph.i102.preheader.peel.newph
  %i.cc = sub nsw i32 %i.bv, %i.by
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i99, i64 2
  br label %select.unfold.i111

select.unfold.i111:                               ; preds = %.lr.ph.i102.preheader.peel.newph, %.lr.ph.i102.peel, %bb.s, %.fold.split17.peel, %select.unfold.i111.loopexit.loopexit.split.loop.exit81, %bb.r
  %.255.ph.i112 = phi i32 [ 0, %bb.r ], [ 0, %.lr.ph.i102.peel ], [ %i.br, %bb.s ], [ %i.br, %.fold.split17.peel ], [ %.mux90, %.lr.ph.i102.preheader.peel.newph ], [ %i.cc, %select.unfold.i111.loopexit.loopexit.split.loop.exit81 ] ; 4 uses
  %.252.ph.not.i113 = phi i1 [ true, %bb.r ], [ true, %.lr.ph.i102.peel ], [ true, %bb.s ], [ true, %.fold.split17.peel ], [ %.mux91, %.lr.ph.i102.preheader.peel.newph ], [ true, %select.unfold.i111.loopexit.loopexit.split.loop.exit81 ]
  %.3.ph.i114 = phi ptr [ %.0.i99, %bb.r ], [ %.0.i99, %.lr.ph.i102.peel ], [ %i.bs, %bb.s ], [ %i.bs, %.fold.split17.peel ], [ %i.bs, %.lr.ph.i102.preheader.peel.newph ], [ %i.cd, %select.unfold.i111.loopexit.loopexit.split.loop.exit81 ] ; 2 uses
  %i.ce = icmp ne ptr %.3.ph.i114, %.0.i99
  %or.cond.not94.i115 = and i1 %.252.ph.not.i113, %i.ce
  %i.cf = icmp ne i32 %.255.ph.i112, -2147483648
  %or.cond3.i116 = select i1 %i.bj, i1 true, i1 %i.cf
  %or.cond76.i117 = select i1 %or.cond.not94.i115, i1 %or.cond3.i116, i1 false
  %or.cond76.not.i118 = xor i1 %or.cond76.i117, true
  %i.cg = icmp eq i32 %.255.ph.i112, 0
  %or.cond5.not.i119 = select i1 %i.bj, i1 %i.cg, i1 false
  %or.cond80.i120 = select i1 %or.cond76.not.i118, i1 true, i1 %or.cond5.not.i119
  br i1 %or.cond80.i120, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit127, label %bb.t

bb.t:                                             ; preds = %select.unfold.i111
  %i.ch = sub nsw i32 0, %.255.ph.i112
end_hunk_1
