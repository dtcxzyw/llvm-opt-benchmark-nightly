Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/time_zone_format?download=true
inline.NumInlined: 499
inline.NumDeleted: 172
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
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
  %i.a = load i8, ptr %0, align 1, !tbaa !17      ; 2 uses
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
  %.052 = phi i32 [ %1, %bb.c ], [ 1, %.fold.split ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.c, align 1, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.d = phi i8 [ %.pre, %bb.d ], [ %i.a, %bb.b ]
  %.153 = phi i32 [ %.052, %bb.d ], [ %1, %bb.b ]
  %.048 = phi ptr [ %i.c, %bb.d ], [ %0, %bb.b ]  ; 3 uses
  %i.e = sext i8 %i.d to i32
  %memchr95 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.e, i64 11) ; 2 uses
  %.not7396 = icmp eq ptr %memchr95, null
  br i1 %.not7396, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.i
  %memchr100 = phi ptr [ %memchr, %bb.i ], [ %memchr95, %bb.e ]
  %.04299 = phi i32 [ %i.n, %bb.i ], [ 0, %bb.e ] ; 4 uses
  %.14998 = phi ptr [ %i.o, %bb.i ], [ %.048, %bb.e ] ; 4 uses
  %.25497 = phi i32 [ %.557, %bb.i ], [ %.153, %bb.e ] ; 2 uses
  %i.f = ptrtoint ptr %memchr100 to i64
  %i.g = trunc i64 %i.f to i32
  %i.h = sub i32 %i.g, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.i = icmp sgt i32 %i.h, 9
  br i1 %i.i, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.j = icmp slt i32 %.04299, -214748364
  br i1 %i.j, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = mul nsw i32 %.04299, 10                  ; 2 uses
  %i.l = or disjoint i32 %i.h, -2147483648
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = sub nsw i32 %i.k, %i.h                   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.14998, i64 1 ; 4 uses
  switch i32 %.25497, label %.fold.split123 [
    i32 0, label %bb.i
    i32 1, label %select.unfold
  ]

.fold.split123:                                   ; preds = %bb.h
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.fold.split123
  %.557 = phi i32 [ %.25497, %bb.h ], [ 1, %.fold.split123 ]
  %i.p = load i8, ptr %i.o, align 1, !tbaa !17
  %i.q = sext i8 %i.p to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.q, i64 11) ; 2 uses
  %.not73 = icmp eq ptr %memchr, null
  br i1 %.not73, label %select.unfold, label %.lr.ph

select.unfold:                                    ; preds = %bb.g, %bb.f, %.lr.ph, %bb.i, %bb.h, %bb.e
  %.351.ph = phi ptr [ %.048, %bb.e ], [ %i.o, %bb.h ], [ %.14998, %bb.f ], [ %.14998, %.lr.ph ], [ %i.o, %bb.i ], [ %.14998, %bb.g ] ; 2 uses
  %.247.ph.not = phi i1 [ true, %bb.e ], [ true, %bb.h ], [ false, %bb.f ], [ true, %.lr.ph ], [ true, %bb.i ], [ false, %bb.g ]
  %.2.ph = phi i32 [ 0, %bb.e ], [ %i.n, %bb.h ], [ %.04299, %bb.f ], [ %.04299, %.lr.ph ], [ %i.n, %bb.i ], [ -2147483640, %bb.g ] ; 4 uses
  %i.r = icmp ne ptr %.351.ph, %.048
  %or.cond.not94 = and i1 %i.r, %.247.ph.not
  %i.s = icmp ne i32 %.2.ph, -2147483648
  %or.cond3 = select i1 %i.b, i1 true, i1 %i.s
  %or.cond76 = select i1 %or.cond.not94, i1 %or.cond3, i1 false
  %or.cond76.not = xor i1 %or.cond76, true
  %i.t = icmp eq i32 %.2.ph, 0
  %or.cond5.not = select i1 %i.b, i1 %i.t, i1 false
  %or.cond80 = select i1 %or.cond76.not, i1 true, i1 %or.cond5.not
  br i1 %or.cond80, label %.thread, label %bb.j

bb.j:                                             ; preds = %select.unfold
  %i.u = sub nsw i32 0, %.2.ph
  %spec.select = select i1 %i.b, i32 %.2.ph, i32 %i.u ; 3 uses
  %.not = icmp sgt i32 %2, %spec.select
  %.not75 = icmp sgt i32 %spec.select, %3
  %or.cond77 = or i1 %.not, %.not75
  br i1 %or.cond77, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %spec.select, ptr %4, align 4, !tbaa !21
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.k, %bb.j, %select.unfold, %bb.a
  %.5 = phi ptr [ null, %bb.a ], [ null, %select.unfold ], [ %.351.ph, %bb.k ], [ null, %bb.j ], [ null, %bb.c ]
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
  %i.d = load ptr, ptr %1, align 8, !tbaa !30
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0170 = phi ptr [ %i.d, %bb.a ], [ %i.h, %bb.b ] ; 3 uses
  %i.e = load i8, ptr %.0170, align 1, !tbaa !17
  %i.f = sext i8 %i.e to i32
  %i.g = tail call i32 @isspace(i32 noundef %i.f) #23
  %.not = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %.0170, i64 1
  br i1 %.not, label %._crit_edge.i.i, label %bb.b, !llvm.loop !60

._crit_edge.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 1970, ptr %i.a, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 0, i32 70, i32 4, i32 0>, ptr %6, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i64 0, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 0, ptr %i.b, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 11 uses
  store ptr %i.p, ptr %8, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.p, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i64 3, ptr %i.q, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 19
  store i8 0, ptr %i.r, align 1, !tbaa !17
  %i.s = load ptr, ptr %0, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 17
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 17 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363
  %.1171.ph855 = phi ptr [ %.0170, %._crit_edge.i.i ], [ %.13, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363 ] ; 2 uses
  %.0177.ph852 = phi i1 [ false, %._crit_edge.i.i ], [ %.3180, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363 ] ; 47 uses
  %.0181.ph850 = phi i1 [ false, %._crit_edge.i.i ], [ %.4185, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363 ] ; 47 uses
  %.0200.ph849 = phi i1 [ false, %._crit_edge.i.i ], [ %.2202, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363 ] ; 46 uses
  %.0203.ph848 = phi i32 [ 6, %._crit_edge.i.i ], [ %.1204, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363 ] ; 41 uses
  %.0205.ph847 = phi i1 [ false, %._crit_edge.i.i ], [ %.2207, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363 ] ; 48 uses
  %.0208.ph846 = phi i1 [ false, %._crit_edge.i.i ], [ %.6214, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363 ] ; 52 uses
  %.0215.ph845 = phi ptr [ %i.s, %._crit_edge.i.i ], [ %.7222, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363 ] ; 2 uses
  %.0.ph844 = phi i32 [ -1, %._crit_edge.i.i ], [ %.1, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363 ] ; 39 uses
  %.0680.ph843 = phi i64 [ 0, %._crit_edge.i.i ], [ %.1681, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363 ] ; 46 uses
  %i.aa = load i8, ptr %.0215.ph845, align 1, !tbaa !17 ; 2 uses
  %.not258.not1313 = icmp eq i8 %i.aa, 0          ; 25 uses
  br i1 %.not258.not1313, label %.critedge, label %.lr.ph1317

.lr.ph1317:                                       ; preds = %.lr.ph, %select.unfold.backedge
  %i.ab = phi i8 [ %i.am, %select.unfold.backedge ], [ %i.aa, %.lr.ph ] ; 3 uses
  %.02158111315 = phi ptr [ %.0215.be, %select.unfold.backedge ], [ %.0215.ph845, %.lr.ph ] ; 19 uses
  %.11718121314 = phi ptr [ %.1171.be, %select.unfold.backedge ], [ %.1171.ph855, %.lr.ph ] ; 70 uses
  %i.ac = sext i8 %i.ab to i32
  %i.ad = call i32 @isspace(i32 noundef %i.ac) #23
  %.not278 = icmp eq i32 %i.ad, 0
  br i1 %.not278, label %bb.c, label %.preheader718

.preheader718:                                    ; preds = %.lr.ph1317, %.preheader718
  %.2172 = phi ptr [ %i.ah, %.preheader718 ], [ %.11718121314, %.lr.ph1317 ] ; 3 uses
  %i.ae = load i8, ptr %.2172, align 1, !tbaa !17
  %i.af = sext i8 %i.ae to i32
  %i.ag = call i32 @isspace(i32 noundef %i.af) #23
  %.not304 = icmp eq i32 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %.2172, i64 1
  br i1 %.not304, label %.preheader717, label %.preheader718, !llvm.loop !61

.preheader717:                                    ; preds = %.preheader718, %.preheader717
  %.1216 = phi ptr [ %i.ai, %.preheader717 ], [ %.02158111315, %.preheader718 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.1216, i64 1 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !17
  %i.ak = sext i8 %i.aj to i32
  %i.al = call i32 @isspace(i32 noundef %i.ak) #23
  %.not305 = icmp eq i32 %i.al, 0
  br i1 %.not305, label %select.unfold.backedge, label %.preheader717, !llvm.loop !62

select.unfold.backedge:                           ; preds = %.preheader717, %bb.d
  %.0215.be = phi ptr [ %spec.select706, %bb.d ], [ %i.ai, %.preheader717 ] ; 2 uses
  %.1171.be = phi ptr [ %i.ap, %bb.d ], [ %.2172, %.preheader717 ] ; 2 uses
  %i.am = load i8, ptr %.0215.be, align 1, !tbaa !17 ; 2 uses
  %.not258.not = icmp eq i8 %i.am, 0
  br i1 %.not258.not, label %.critedge, label %.lr.ph1317, !llvm.loop !63

bb.c:                                             ; preds = %.lr.ph1317
  %.not279 = icmp eq i8 %i.ab, 37
  br i1 %.not279, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = load i8, ptr %.11718121314, align 1, !tbaa !17
  %i.ao = icmp eq i8 %i.an, %i.ab                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.11718121314, i64 1
  %spec.select706.idx = zext i1 %i.ao to i64
  %spec.select706 = getelementptr inbounds nuw i8, ptr %.02158111315, i64 %spec.select706.idx
  br i1 %i.ao, label %select.unfold.backedge, label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %.02158111315, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !17  ; 2 uses
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %.critedge, label %bb.f, !llvm.loop !63

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.02158111315, i64 2 ; 31 uses
  switch i8 %i.ar, label %bb.dr [
    i8 89, label %bb.g
    i8 109, label %bb.n
    i8 100, label %bb.s
    i8 101, label %bb.s
    i8 85, label %bb.y
    i8 87, label %bb.af
    i8 117, label %bb.am
    i8 119, label %bb.au
    i8 72, label %bb.bc
    i8 77, label %bb.bi
    i8 83, label %bb.bo
    i8 73, label %bb.bu
    i8 108, label %bb.bu
    i8 114, label %bb.bu
    i8 82, label %bb.bv
    i8 84, label %bb.bv
    i8 99, label %bb.bv
    i8 88, label %bb.bv
    i8 122, label %bb.bw
    i8 90, label %bb.bx
    i8 115, label %bb.ch
    i8 58, label %bb.cn
    i8 37, label %bb.ct
    i8 69, label %bb.cu
    i8 79, label %bb.dq
  ]

bb.g:                                             ; preds = %bb.f
  %i.au = load i8, ptr %.11718121314, align 1, !tbaa !17 ; 2 uses
  %i.av = icmp eq i8 %i.au, 45                    ; 4 uses
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.11718121314, i64 1 ; 2 uses
  %.pre.i = load i8, ptr %i.aw, align 1, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = phi i8 [ %.pre.i, %bb.h ], [ %i.au, %bb.g ]
  %.048.i = phi ptr [ %i.aw, %bb.h ], [ %.11718121314, %bb.g ] ; 3 uses
  %i.ay = sext i8 %i.ax to i32
  %memchr94.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ay, i64 11) ; 2 uses
  %.not7295.i = icmp eq ptr %memchr94.i, null
  br i1 %.not7295.i, label %select.unfold.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.l
  %memchr99.i = phi ptr [ %memchr.i, %bb.l ], [ %memchr94.i, %bb.i ]
  %.04298.i = phi i64 [ %i.bj, %bb.l ], [ 0, %bb.i ] ; 4 uses
  %.14997.i = phi ptr [ %i.bi, %bb.l ], [ %.048.i, %bb.i ] ; 4 uses
  %i.az = ptrtoint ptr %memchr99.i to i64
  %i.ba = trunc i64 %i.az to i32
  %i.bb = sub i32 %i.ba, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 9
  br i1 %i.bc, label %select.unfold.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.bd = icmp slt i64 %.04298.i, -922337203685477580
  br i1 %i.bd, label %select.unfold.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = mul nsw i64 %.04298.i, 10               ; 2 uses
  %i.bf = sext i32 %i.bb to i64                   ; 2 uses
  %i.bg = or disjoint i64 %i.bf, -9223372036854775808
  %i.bh = icmp slt i64 %i.be, %i.bg
  br i1 %i.bh, label %select.unfold.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %.14997.i, i64 1 ; 3 uses
  %i.bj = sub nsw i64 %i.be, %i.bf                ; 2 uses
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !17
  %i.bl = sext i8 %i.bk to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bl, i64 11) ; 2 uses
  %.not72.i = icmp eq ptr %memchr.i, null
  br i1 %.not72.i, label %select.unfold.i, label %.lr.ph.i

select.unfold.i:                                  ; preds = %bb.l, %bb.k, %bb.j, %.lr.ph.i, %bb.i
  %.351.ph.i = phi ptr [ %.048.i, %bb.i ], [ %i.bi, %bb.l ], [ %.14997.i, %.lr.ph.i ], [ %.14997.i, %bb.j ], [ %.14997.i, %bb.k ] ; 2 uses
  %.247.ph.not.i = phi i1 [ true, %bb.i ], [ true, %bb.l ], [ true, %.lr.ph.i ], [ false, %bb.j ], [ false, %bb.k ]
  %.2.ph.i = phi i64 [ 0, %bb.i ], [ %i.bj, %bb.l ], [ %.04298.i, %.lr.ph.i ], [ %.04298.i, %bb.j ], [ -9223372036854775800, %bb.k ] ; 4 uses
  %i.bm = icmp ne ptr %.351.ph.i, %.048.i
  %or.cond.not93.i = and i1 %i.bm, %.247.ph.not.i
  %i.bn = icmp ne i64 %.2.ph.i, -9223372036854775808
  %or.cond3.i = select i1 %i.av, i1 true, i1 %i.bn
  %or.cond75.i = select i1 %or.cond.not93.i, i1 %or.cond3.i, i1 false
  %or.cond75.not.i = xor i1 %or.cond75.i, true
  %i.bo = icmp eq i64 %.2.ph.i, 0
  %or.cond5.not.i = select i1 %i.av, i1 %i.bo, i1 false
  %or.cond79.i = select i1 %or.cond75.not.i, i1 true, i1 %or.cond5.not.i
  br i1 %or.cond79.i, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit, label %bb.m

bb.m:                                             ; preds = %select.unfold.i
  %i.bp = sub nsw i64 0, %.2.ph.i
  %spec.select.i = select i1 %i.av, i64 %.2.ph.i, i64 %i.bp
  store i64 %spec.select.i, ptr %i.a, align 8, !tbaa !33
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit: ; preds = %select.unfold.i, %bb.m
  %.4.i = phi ptr [ null, %select.unfold.i ], [ %.351.ph.i, %bb.m ] ; 2 uses
  %.not296 = icmp ne ptr %.4.i, null
  %spec.select = select i1 %.not296, i1 true, i1 %.0177.ph852
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363, !llvm.loop !63

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

.loopexit.split-lp:                               ; preds = %bb.bz, %bb.ce
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.n:                                             ; preds = %bb.f
  %i.bq = load i8, ptr %.11718121314, align 1, !tbaa !17 ; 2 uses
  %i.br = icmp eq i8 %i.bq, 45                    ; 4 uses
  br i1 %i.br, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = sext i8 %i.bq to i32
  %memchr95.i.jt2 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bs, i64 11) ; 2 uses
  %.not7396.i.jt2 = icmp eq ptr %memchr95.i.jt2, null
  br i1 %.not7396.i.jt2, label %select.unfold.i325, label %.lr.ph.i322.jt2

bb.p:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.11718121314, i64 1 ; 5 uses
  %.pre.i332 = load i8, ptr %i.bt, align 1, !tbaa !17
  %i.bu = sext i8 %.pre.i332 to i32
  %memchr95.i.jt1 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bu, i64 11) ; 2 uses
  %.not7396.i.jt1 = icmp eq ptr %memchr95.i.jt1, null
  %21 = ptrtoint ptr %memchr95.i.jt1 to i64
  %22 = trunc i64 %21 to i32
  %23 = sub i32 %22, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %24 = icmp sgt i32 %23, 9
  %or.cond1216 = or i1 %.not7396.i.jt1, %24
  br i1 %or.cond1216, label %select.unfold.i325, label %.thread.a

.lr.ph.i322.jt2:                                  ; preds = %bb.o
  %i.bv = ptrtoint ptr %memchr95.i.jt2 to i64
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = sub i32 %i.bw, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.by = icmp sgt i32 %i.bx, 9
  br i1 %i.by, label %select.unfold.i325, label %.fold.split

.lr.ph.i322.jt1:                                  ; preds = %.fold.split
  %i.bz = ptrtoint ptr %memchr.i324 to i64
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = sub i32 %i.ca, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 9
  br i1 %i.cc, label %select.unfold.i325, label %25

25:                                               ; preds = %.lr.ph.i322.jt1
  %26 = mul i32 %i.bx, -10
  br label %.thread.a

.thread.a:                                        ; preds = %25, %bb.p
  %.048.i321104110511059 = phi ptr [ %.11718121314, %25 ], [ %i.bt, %bb.p ] ; 2 uses
  %.04299.i.jt110521058 = phi i32 [ %26, %25 ], [ 0, %bb.p ] ; 2 uses
  %.14998.i.jt110531057 = phi ptr [ %i.ce, %25 ], [ %i.bt, %bb.p ]
  %27 = phi i32 [ %i.cb, %25 ], [ %23, %bb.p ]    ; 2 uses
  %28 = or disjoint i32 %27, -2147483648
  %29 = icmp slt i32 %.04299.i.jt110521058, %28
  br i1 %29, label %select.unfold.i325, label %30

.fold.split:                                      ; preds = %.lr.ph.i322.jt2
  %i.cd = sub nsw i32 0, %i.bx                    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.11718121314, i64 1 ; 4 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !17
  %i.cg = sext i8 %i.cf to i32
  %memchr.i324 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.cg, i64 11) ; 2 uses
  %.not73.i = icmp eq ptr %memchr.i324, null
  br i1 %.not73.i, label %select.unfold.i325, label %.lr.ph.i322.jt1

30:                                               ; preds = %.thread.a
  %31 = sub nsw i32 %.04299.i.jt110521058, %27
  %32 = getelementptr inbounds nuw i8, ptr %.11718121314, i64 2
  br label %select.unfold.i325

select.unfold.i325:                               ; preds = %.fold.split, %.lr.ph.i322.jt1, %.thread.a, %.lr.ph.i322.jt2, %30, %bb.o, %bb.p
  %.048.i3211040 = phi ptr [ %.11718121314, %bb.o ], [ %i.bt, %bb.p ], [ %.048.i321104110511059, %.thread.a ], [ %.048.i321104110511059, %30 ], [ %.11718121314, %.lr.ph.i322.jt1 ], [ %.11718121314, %.fold.split ], [ %.11718121314, %.lr.ph.i322.jt2 ]
  %.351.ph.i326 = phi ptr [ %.11718121314, %bb.o ], [ %i.bt, %bb.p ], [ %.14998.i.jt110531057, %.thread.a ], [ %32, %30 ], [ %i.ce, %.lr.ph.i322.jt1 ], [ %i.ce, %.fold.split ], [ %.11718121314, %.lr.ph.i322.jt2 ] ; 2 uses
  %.247.ph.not.i327 = phi i1 [ true, %bb.o ], [ true, %bb.p ], [ false, %.thread.a ], [ true, %30 ], [ true, %.lr.ph.i322.jt1 ], [ true, %.fold.split ], [ true, %.lr.ph.i322.jt2 ]
  %.2.ph.i328 = phi i32 [ 0, %bb.o ], [ 0, %bb.p ], [ -2147483640, %.thread.a ], [ %31, %30 ], [ %i.cd, %.lr.ph.i322.jt1 ], [ %i.cd, %.fold.split ], [ 0, %.lr.ph.i322.jt2 ] ; 4 uses
  %33 = icmp ne ptr %.351.ph.i326, %.048.i3211040
  %or.cond.not94.i = and i1 %33, %.247.ph.not.i327
  %34 = icmp ne i32 %.2.ph.i328, -2147483648
  %or.cond3.i329 = select i1 %i.br, i1 true, i1 %34
  %or.cond76.i = select i1 %or.cond.not94.i, i1 %or.cond3.i329, i1 false
  %or.cond76.not.i = xor i1 %or.cond76.i, true
  %i.ch = icmp eq i32 %.2.ph.i328, 0
  %or.cond5.not.i330 = select i1 %i.br, i1 %i.ch, i1 false
  %or.cond80.i = select i1 %or.cond76.not.i, i1 true, i1 %or.cond5.not.i330
  br i1 %or.cond80.i, label %.critedge, label %bb.q, !llvm.loop !63

bb.q:                                             ; preds = %select.unfold.i325
  %i.ci = sub nsw i32 0, %.2.ph.i328
  %spec.select.i331 = select i1 %i.br, i32 %.2.ph.i328, i32 %i.ci ; 2 uses
  %i.cj = add i32 %spec.select.i331, -13
  %or.cond77.i = icmp ult i32 %i.cj, -12
  br i1 %or.cond77.i, label %.critedge, label %bb.r, !llvm.loop !63

bb.r:                                             ; preds = %bb.q
  %i.ck = add nsw i32 %spec.select.i331, -1
  store i32 %i.ck, ptr %i.k, align 8, !tbaa !24
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363, !llvm.loop !63

bb.s:                                             ; preds = %bb.f, %bb.f
  %i.cl = load i8, ptr %.11718121314, align 1, !tbaa !17 ; 2 uses
  %i.cm = icmp eq i8 %i.cl, 45                    ; 5 uses
  br i1 %i.cm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %.11718121314, i64 1 ; 2 uses
  %.pre.i362 = load i8, ptr %i.cn, align 1, !tbaa !17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.co = phi i8 [ %.pre.i362, %bb.t ], [ %i.cl, %bb.s ]
  %.048.i335 = phi ptr [ %i.cn, %bb.t ], [ %.11718121314, %bb.s ] ; 5 uses
  %i.cp = sext i8 %i.co to i32
  %memchr95.i336 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.cp, i64 11) ; 2 uses
  %.not7396.i337 = icmp eq ptr %memchr95.i336, null
  br i1 %.not7396.i337, label %select.unfold.i347, label %.lr.ph.i338.peel

.lr.ph.i338.peel:                                 ; preds = %bb.u
  %i.cq = ptrtoint ptr %memchr95.i336 to i64
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = sub i32 %i.cr, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.ct = icmp sgt i32 %i.cs, 9
  br i1 %i.ct, label %select.unfold.i347, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i338.peel
  %i.cu = sub nsw i32 0, %i.cs                    ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.048.i335, i64 1 ; 4 uses
  br i1 %i.cm, label %select.unfold.i347, label %.fold.split708.peel

.fold.split708.peel:                              ; preds = %bb.v
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !17
  %i.cx = sext i8 %i.cw to i32
  %memchr.i345.peel = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.cx, i64 11) ; 2 uses
  %.not73.i346.peel = icmp eq ptr %memchr.i345.peel, null
  br i1 %.not73.i346.peel, label %select.unfold.i347, label %.lr.ph.i338.preheader.peel.newph

.lr.ph.i338.preheader.peel.newph:                 ; preds = %.fold.split708.peel
  %i.cy = mul i32 %i.cs, -10                      ; 2 uses
  %i.cz = ptrtoint ptr %memchr.i345.peel to i64
  %i.da = trunc i64 %i.cz to i32
  %i.db = sub i32 %i.da, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.dc = or disjoint i32 %i.db, -2147483648
  %i.dd = icmp sgt i32 %i.db, 9                   ; 3 uses
  %i.de = icmp slt i32 %i.cy, %i.dc
  %brmerge = select i1 %i.dd, i1 true, i1 %i.de
  %.mux = select i1 %i.dd, i1 true, i1 false
  %.mux1595 = select i1 %i.dd, i32 %i.cu, i32 -2147483640
  br i1 %brmerge, label %select.unfold.i347, label %select.unfold.i347.loopexit.loopexit.split.loop.exit1591

select.unfold.i347.loopexit.loopexit.split.loop.exit1591: ; preds = %.lr.ph.i338.preheader.peel.newph
  %i.df = sub nsw i32 %i.cy, %i.db
  %i.dg = getelementptr inbounds nuw i8, ptr %.048.i335, i64 2
  br label %select.unfold.i347

select.unfold.i347:                               ; preds = %.lr.ph.i338.preheader.peel.newph, %.lr.ph.i338.peel, %bb.v, %.fold.split708.peel, %select.unfold.i347.loopexit.loopexit.split.loop.exit1591, %bb.u
  %.351.ph.i348 = phi ptr [ %.048.i335, %bb.u ], [ %.048.i335, %.lr.ph.i338.peel ], [ %i.cv, %bb.v ], [ %i.cv, %.fold.split708.peel ], [ %i.cv, %.lr.ph.i338.preheader.peel.newph ], [ %i.dg, %select.unfold.i347.loopexit.loopexit.split.loop.exit1591 ] ; 2 uses
  %.247.ph.not.i349 = phi i1 [ true, %bb.u ], [ true, %.lr.ph.i338.peel ], [ true, %bb.v ], [ true, %.fold.split708.peel ], [ %.mux, %.lr.ph.i338.preheader.peel.newph ], [ true, %select.unfold.i347.loopexit.loopexit.split.loop.exit1591 ]
  %.2.ph.i350 = phi i32 [ 0, %bb.u ], [ 0, %.lr.ph.i338.peel ], [ %i.cu, %bb.v ], [ %i.cu, %.fold.split708.peel ], [ %.mux1595, %.lr.ph.i338.preheader.peel.newph ], [ %i.df, %select.unfold.i347.loopexit.loopexit.split.loop.exit1591 ] ; 4 uses
  %i.dh = icmp ne ptr %.351.ph.i348, %.048.i335
  %or.cond.not94.i351 = and i1 %i.dh, %.247.ph.not.i349
  %i.di = icmp ne i32 %.2.ph.i350, -2147483648
  %or.cond3.i352 = select i1 %i.cm, i1 true, i1 %i.di
  %or.cond76.i353 = select i1 %or.cond.not94.i351, i1 %or.cond3.i352, i1 false
  %or.cond76.not.i354 = xor i1 %or.cond76.i353, true
  %i.dj = icmp eq i32 %.2.ph.i350, 0
  %or.cond5.not.i355 = select i1 %i.cm, i1 %i.dj, i1 false
  %or.cond80.i356 = select i1 %or.cond76.not.i354, i1 true, i1 %or.cond5.not.i355
  br i1 %or.cond80.i356, label %.critedge, label %bb.w, !llvm.loop !63

bb.w:                                             ; preds = %select.unfold.i347
  %i.dk = sub nsw i32 0, %.2.ph.i350
  %spec.select.i357 = select i1 %i.cm, i32 %.2.ph.i350, i32 %i.dk ; 2 uses
  %i.dl = add i32 %spec.select.i357, -32
  %or.cond77.i360 = icmp ult i32 %i.dl, -31
  br i1 %or.cond77.i360, label %.critedge, label %bb.x, !llvm.loop !63

bb.x:                                             ; preds = %bb.w
  store i32 %spec.select.i357, ptr %i.l, align 4, !tbaa !21
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363, !llvm.loop !63

bb.y:                                             ; preds = %bb.f
  %i.dm = load i8, ptr %.11718121314, align 1, !tbaa !17 ; 2 uses
  %i.dn = icmp eq i8 %i.dm, 45                    ; 4 uses
  br i1 %i.dn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %.11718121314, i64 1 ; 2 uses
  %.pre.i393 = load i8, ptr %i.do, align 1, !tbaa !17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dp = phi i8 [ %.pre.i393, %bb.z ], [ %i.dm, %bb.y ]
  %.048.i366 = phi ptr [ %i.do, %bb.z ], [ %.11718121314, %bb.y ] ; 3 uses
  %i.dq = sext i8 %i.dp to i32
  %memchr95.i367 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.dq, i64 11) ; 2 uses
  %.not7396.i368 = icmp eq ptr %memchr95.i367, null
  br i1 %.not7396.i368, label %select.unfold.i378, label %.lr.ph.i369

.lr.ph.i369:                                      ; preds = %bb.aa, %bb.ad
  %memchr100.i370 = phi ptr [ %memchr.i376, %bb.ad ], [ %memchr95.i367, %bb.aa ]
  %.04299.i371 = phi i32 [ %i.dz, %bb.ad ], [ 0, %bb.aa ] ; 4 uses
  %.14998.i372 = phi ptr [ %i.ea, %bb.ad ], [ %.048.i366, %bb.aa ] ; 4 uses
  %i.dr = ptrtoint ptr %memchr100.i370 to i64
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = sub i32 %i.ds, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.du = icmp sgt i32 %i.dt, 9
  br i1 %i.du, label %select.unfold.i378, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i369
  %i.dv = icmp slt i32 %.04299.i371, -214748364
  br i1 %i.dv, label %select.unfold.i378, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dw = mul nsw i32 %.04299.i371, 10            ; 2 uses
  %i.dx = or disjoint i32 %i.dt, -2147483648
  %i.dy = icmp slt i32 %i.dw, %i.dx
  br i1 %i.dy, label %select.unfold.i378, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dz = sub nsw i32 %i.dw, %i.dt                ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.14998.i372, i64 1 ; 3 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !17
  %i.ec = sext i8 %i.eb to i32
  %memchr.i376 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ec, i64 11) ; 2 uses
  %.not73.i377 = icmp eq ptr %memchr.i376, null
  br i1 %.not73.i377, label %select.unfold.i378, label %.lr.ph.i369

select.unfold.i378:                               ; preds = %bb.ad, %bb.ac, %bb.ab, %.lr.ph.i369, %bb.aa
  %.351.ph.i379 = phi ptr [ %.048.i366, %bb.aa ], [ %i.ea, %bb.ad ], [ %.14998.i372, %.lr.ph.i369 ], [ %.14998.i372, %bb.ab ], [ %.14998.i372, %bb.ac ] ; 2 uses
  %.247.ph.not.i380 = phi i1 [ true, %bb.aa ], [ true, %bb.ad ], [ true, %.lr.ph.i369 ], [ false, %bb.ab ], [ false, %bb.ac ]
  %.2.ph.i381 = phi i32 [ 0, %bb.aa ], [ %i.dz, %bb.ad ], [ %.04299.i371, %.lr.ph.i369 ], [ %.04299.i371, %bb.ab ], [ -2147483640, %bb.ac ] ; 4 uses
  %i.ed = icmp ne ptr %.351.ph.i379, %.048.i366
  %or.cond.not94.i382 = and i1 %i.ed, %.247.ph.not.i380
  %i.ee = icmp ne i32 %.2.ph.i381, -2147483648
  %or.cond3.i383 = select i1 %i.dn, i1 true, i1 %i.ee
  %or.cond76.i384 = select i1 %or.cond.not94.i382, i1 %or.cond3.i383, i1 false
  %or.cond76.not.i385 = xor i1 %or.cond76.i384, true
  %i.ef = icmp eq i32 %.2.ph.i381, 0
  %or.cond5.not.i386 = select i1 %i.dn, i1 %i.ef, i1 false
  %or.cond80.i387 = select i1 %or.cond76.not.i385, i1 true, i1 %or.cond5.not.i386
  br i1 %or.cond80.i387, label %.critedge, label %bb.ae, !llvm.loop !63

bb.ae:                                            ; preds = %select.unfold.i378
  %i.eg = sub nsw i32 0, %.2.ph.i381
  %spec.select.i388 = select i1 %i.dn, i32 %.2.ph.i381, i32 %i.eg ; 2 uses
  %or.cond77.i391 = icmp ugt i32 %spec.select.i388, 53
  br i1 %or.cond77.i391, label %.critedge, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit363, !llvm.loop !63

bb.af:                                            ; preds = %bb.f
  %i.eh = load i8, ptr %.11718121314, align 1, !tbaa !17 ; 2 uses
  %i.ei = icmp eq i8 %i.eh, 45                    ; 4 uses
  br i1 %i.ei, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ej = getelementptr inbounds nuw i8, ptr %.11718121314, i64 1 ; 2 uses
  %.pre.i424 = load i8, ptr %i.ej, align 1, !tbaa !17
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ek = phi i8 [ %.pre.i424, %bb.ag ], [ %i.eh, %bb.af ]
  %.048.i397 = phi ptr [ %i.ej, %bb.ag ], [ %.11718121314, %bb.af ] ; 3 uses
  %i.el = sext i8 %i.ek to i32
  %memchr95.i398 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.el, i64 11) ; 2 uses
  %.not7396.i399 = icmp eq ptr %memchr95.i398, null
  br i1 %.not7396.i399, label %select.unfold.i409, label %.lr.ph.i400

.lr.ph.i400:                                      ; preds = %bb.ah, %bb.ak
  %memchr100.i401 = phi ptr [ %memchr.i407, %bb.ak ], [ %memchr95.i398, %bb.ah ]
  %.04299.i402 = phi i32 [ %i.eu, %bb.ak ], [ 0, %bb.ah ] ; 4 uses
  %.14998.i403 = phi ptr [ %i.ev, %bb.ak ], [ %.048.i397, %bb.ah ] ; 4 uses
  %i.em = ptrtoint ptr %memchr100.i401 to i64
  %i.en = trunc i64 %i.em to i32
  %i.eo = sub i32 %i.en, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.ep = icmp sgt i32 %i.eo, 9
  br i1 %i.ep, label %select.unfold.i409, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i400
  %i.eq = icmp slt i32 %.04299.i402, -214748364
  br i1 %i.eq, label %select.unfold.i409, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.er = mul nsw i32 %.04299.i402, 10            ; 2 uses
  %i.es = or disjoint i32 %i.eo, -2147483648
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %select.unfold.i409, label %bb.ak
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011613time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_:bb.a

bb.gg:                                            ; preds = %bb.ge, %bb.gd
  %.pn268 = phi { ptr, i32 } [ %i.wn, %bb.ge ], [ %i.wm, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.gi

.critedge315:                                     ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.gh

bb.gh:                                            ; preds = %bb.fp, %.thread705, %.critedge315
  store i64 %i.we, ptr %3, align 8, !tbaa !33
  %i.wo = load i64, ptr %7, align 8, !tbaa !33
  store i64 %i.wo, ptr %4, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit653

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit653: ; preds = %bb.gh, %bb.fx, %bb.gf, %bb.fg, %bb.fm, %bb.fn, %bb.ff
  %.4 = phi i1 [ false, %bb.fg ], [ false, %bb.ff ], [ false, %bb.fm ], [ false, %bb.fn ], [ true, %bb.gh ], [ false, %bb.gf ], [ false, %bb.fx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit651

bb.gi:                                            ; preds = %bb.fu, %bb.fy, %bb.gg, %bb.fh
  %.pn273 = phi { ptr, i32 } [ %i.vg, %bb.fh ], [ %.pn268, %bb.gg ], [ %i.wh, %bb.fu ], [ %.pn, %bb.fy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.gj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit651: ; preds = %bb.fc, %bb.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit653
  %.5 = phi i1 [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit653 ], [ false, %bb.fb ], [ false, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.gj:                                            ; preds = %bb.gi, %bb.eq
  %.pn273.pn = phi { ptr, i32 } [ %.pn273, %bb.gi ], [ %i.re, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.gk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %.invoke, %bb.eh, %.thread1110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit651, %bb.ej
  %.6 = phi i1 [ %.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit651 ], [ false, %.thread1110 ], [ true, %bb.ej ], [ false, %bb.eh ], [ false, %.invoke ]
  %i.wp = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.wq = icmp eq ptr %i.wp, %i.p
  br i1 %i.wq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.wr = load i64, ptr %i.p, align 8, !tbaa !17
  %i.ws = add i64 %i.wr, 1
  call void @_ZdlPvm(ptr noundef %i.wp, i64 noundef %i.ws) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i1 %.6

bb.gk:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit645, %bb.gj, %bb.ef
  %.pn297.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn273.pn, %bb.gj ], [ %i.qn, %bb.ef ], [ %.pn297.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit645 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.wt = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.wu = icmp eq ptr %i.wt, %i.p
  br i1 %i.wu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i659

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i659: ; preds = %bb.gk
  %i.wv = load i64, ptr %i.p, align 8, !tbaa !17
  %i.ww = add i64 %i.wv, 1
  call void @_ZdlPvm(ptr noundef %i.wt, i64 noundef %i.ww) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661: ; preds = %bb.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i659
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
  %i.a = load i8, ptr %0, align 1, !tbaa !17      ; 2 uses
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
  %.052 = phi i32 [ 0, %bb.b ], [ %i.d, %bb.c ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.e, align 1, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.f = phi i8 [ %.pre, %bb.d ], [ %i.a, %bb.a ]
  %.153 = phi i32 [ %.052, %bb.d ], [ %1, %bb.a ]
  %.048 = phi ptr [ %i.e, %bb.d ], [ %0, %bb.a ]  ; 3 uses
  %i.g = sext i8 %i.f to i32
  %memchr94 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.g, i64 11) ; 2 uses
  %.not7295 = icmp eq ptr %memchr94, null
  br i1 %.not7295, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.j
  %memchr99 = phi ptr [ %memchr, %bb.j ], [ %memchr94, %bb.e ]
  %.04298 = phi i64 [ %i.q, %bb.j ], [ 0, %bb.e ] ; 4 uses
  %.14997 = phi ptr [ %i.r, %bb.j ], [ %.048, %bb.e ] ; 4 uses
  %.25496 = phi i32 [ %.557, %bb.j ], [ %.153, %bb.e ] ; 2 uses
  %i.h = ptrtoint ptr %memchr99 to i64
  %i.i = trunc i64 %i.h to i32
  %i.j = sub i32 %i.i, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %i.k = icmp sgt i32 %i.j, 9
  br i1 %i.k, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.l = icmp slt i64 %.04298, -922337203685477580
  br i1 %i.l, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = mul nsw i64 %.04298, 10                  ; 2 uses
  %i.n = sext i32 %i.j to i64                     ; 2 uses
  %i.o = or disjoint i64 %i.n, -9223372036854775808
  %i.p = icmp slt i64 %i.m, %i.o
  br i1 %i.p, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = sub nsw i64 %i.m, %i.n                   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.14997, i64 1 ; 4 uses
  %i.s = icmp sgt i32 %.25496, 0
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = add nsw i32 %.25496, -1                  ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %select.unfold, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.557 = phi i32 [ 0, %bb.h ], [ %i.t, %bb.i ]
  %i.v = load i8, ptr %i.r, align 1, !tbaa !17
  %i.w = sext i8 %i.v to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.w, i64 11) ; 2 uses
  %.not72 = icmp eq ptr %memchr, null
  br i1 %.not72, label %select.unfold, label %.lr.ph

select.unfold:                                    ; preds = %bb.g, %bb.f, %.lr.ph, %bb.j, %bb.i, %bb.e
  %.351.ph = phi ptr [ %.048, %bb.e ], [ %i.r, %bb.i ], [ %.14997, %bb.f ], [ %.14997, %.lr.ph ], [ %i.r, %bb.j ], [ %.14997, %bb.g ] ; 2 uses
  %.247.ph.not = phi i1 [ true, %bb.e ], [ true, %bb.i ], [ false, %bb.f ], [ true, %.lr.ph ], [ true, %bb.j ], [ false, %bb.g ]
  %.2.ph = phi i64 [ 0, %bb.e ], [ %i.q, %bb.i ], [ %.04298, %bb.f ], [ %.04298, %.lr.ph ], [ %i.q, %bb.j ], [ -9223372036854775800, %bb.g ] ; 4 uses
  %i.x = icmp ne ptr %.351.ph, %.048
  %or.cond.not93 = and i1 %i.x, %.247.ph.not
  %i.y = icmp ne i64 %.2.ph, -9223372036854775808
  %or.cond3 = select i1 %i.b, i1 true, i1 %i.y
  %or.cond75 = select i1 %or.cond.not93, i1 %or.cond3, i1 false
  %or.cond75.not = xor i1 %or.cond75, true
  %i.z = icmp eq i64 %.2.ph, 0
  %or.cond5.not = select i1 %i.b, i1 %i.z, i1 false
  %or.cond79 = select i1 %or.cond75.not, i1 true, i1 %or.cond5.not
  br i1 %or.cond79, label %.thread, label %bb.k

bb.k:                                             ; preds = %select.unfold
  %i.aa = sub nsw i64 0, %.2.ph
  %spec.select = select i1 %i.b, i64 %.2.ph, i64 %i.aa ; 3 uses
  %.not = icmp sgt i64 %2, %spec.select
  %.not74 = icmp sgt i64 %spec.select, %3
  %or.cond76 = or i1 %.not, %.not74
  br i1 %or.cond76, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %spec.select, ptr %4, align 8, !tbaa !33
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.l, %bb.k, %select.unfold
  %.4 = phi ptr [ null, %select.unfold ], [ %.351.ph, %bb.l ], [ null, %bb.k ], [ null, %bb.c ]
  ret ptr %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_111ParseOffsetEPKcS6_Pi(ptr noundef nonnull %0, i8 %.0.val, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !17      ; 3 uses
  %i.c = icmp eq i8 %i.b, 45
  switch i8 %i.b, label %bb.v [
    i8 45, label %bb.b
    i8 43, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !17    ; 2 uses
  %i.e = icmp eq i8 %i.d, 45                      ; 5 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.pre.i = load i8, ptr %i.f, align 1, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i8 [ %.pre.i, %bb.c ], [ %i.d, %bb.b ]
  %.048.i = phi ptr [ %i.f, %bb.c ], [ %i.a, %bb.b ] ; 5 uses
  %i.h = sext i8 %i.g to i32
  %memchr95.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.h, i64 11) ; 2 uses
  %.not7396.i = icmp eq ptr %memchr95.i, null
  br i1 %.not7396.i, label %select.unfold.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.i = ptrtoint ptr %memchr95.i to i64
  %i.j = trunc i64 %i.i to i32
  %i.k = sub i32 %i.j, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.l = icmp sgt i32 %i.k, 9
  br i1 %i.l, label %select.unfold.i, label %bb.e

.lr.ph.i.jt1:                                     ; preds = %.fold.split
  %i.m = ptrtoint ptr %memchr.i to i64
  %i.n = trunc i64 %i.m to i32
  %i.o = sub i32 %i.n, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.p = icmp sgt i32 %i.o, 9
  br i1 %i.p, label %select.unfold.i, label %2

bb.e:                                             ; preds = %.lr.ph.i
  %i.q = sub nsw i32 0, %i.k                      ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.048.i, i64 1 ; 5 uses
  br i1 %i.e, label %select.unfold.i, label %.fold.split

2:                                                ; preds = %.lr.ph.i.jt1
  %3 = mul i32 %i.k, -10                          ; 2 uses
  %4 = or disjoint i32 %i.o, -2147483648
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %select.unfold.i, label %bb.f

bb.f:                                             ; preds = %2
  %i.s = sub nsw i32 %3, %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %.048.i, i64 2
  br label %select.unfold.i

.fold.split:                                      ; preds = %bb.e
  %i.u = load i8, ptr %i.r, align 1, !tbaa !17
  %i.v = sext i8 %i.u to i32
  %memchr.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.v, i64 11) ; 2 uses
  %.not73.i = icmp eq ptr %memchr.i, null
  br i1 %.not73.i, label %select.unfold.i, label %.lr.ph.i.jt1

select.unfold.i:                                  ; preds = %bb.e, %.fold.split, %.lr.ph.i, %.lr.ph.i.jt1, %2, %bb.f, %bb.d
  %.351.ph.i = phi ptr [ %.048.i, %bb.d ], [ %i.r, %bb.e ], [ %i.t, %bb.f ], [ %.048.i, %.lr.ph.i ], [ %i.r, %.fold.split ], [ %i.r, %2 ], [ %i.r, %.lr.ph.i.jt1 ] ; 8 uses
  %.247.ph.not.i = phi i1 [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %.lr.ph.i ], [ true, %.fold.split ], [ false, %2 ], [ true, %.lr.ph.i.jt1 ]
  %.2.ph.i = phi i32 [ 0, %bb.d ], [ %i.q, %bb.e ], [ %i.s, %bb.f ], [ 0, %.lr.ph.i ], [ %i.q, %.fold.split ], [ -2147483640, %2 ], [ %i.q, %.lr.ph.i.jt1 ] ; 4 uses
  %6 = icmp ne ptr %.351.ph.i, %.048.i
  %or.cond.not94.i = and i1 %6, %.247.ph.not.i
  %7 = icmp ne i32 %.2.ph.i, -2147483648
  %or.cond3.i = select i1 %i.e, i1 true, i1 %7
  %or.cond76.i = select i1 %or.cond.not94.i, i1 %or.cond3.i, i1 false
  %or.cond76.not.i = xor i1 %or.cond76.i, true
  %i.w = icmp eq i32 %.2.ph.i, 0
  %or.cond5.not.i = select i1 %i.e, i1 %i.w, i1 false
  %or.cond80.i = select i1 %or.cond76.not.i, i1 true, i1 %or.cond5.not.i
  br i1 %or.cond80.i, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit.thread, label %bb.g

bb.g:                                             ; preds = %select.unfold.i
  %i.x = sub nsw i32 0, %.2.ph.i
  %spec.select.i = select i1 %i.e, i32 %.2.ph.i, i32 %i.x ; 2 uses
  %or.cond77.i = icmp ult i32 %spec.select.i, 24
  %i.y = ptrtoint ptr %.351.ph.i to i64
  %i.z = ptrtoint ptr %i.a to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp eq i64 %i.aa, 2
  %or.cond = select i1 %or.cond77.i, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.h, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit.thread

bb.h:                                             ; preds = %bb.g
  %.not50 = icmp eq i8 %.0.val, 0                 ; 2 uses
  br i1 %.not50, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i8, ptr %.351.ph.i, align 1, !tbaa !17
  %i.ad = icmp eq i8 %i.ac, %.0.val
  %spec.select.idx = zext i1 %i.ad to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.351.ph.i, i64 %spec.select.idx
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.040 = phi ptr [ %.351.ph.i, %bb.h ], [ %spec.select, %bb.i ] ; 4 uses
  %i.ae = load i8, ptr %.040, align 1, !tbaa !17  ; 2 uses
  %i.af = icmp eq i8 %i.ae, 45                    ; 5 uses
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %.040, i64 1 ; 2 uses
  %.pre.i95 = load i8, ptr %i.ag, align 1, !tbaa !17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ah = phi i8 [ %.pre.i95, %bb.k ], [ %i.ae, %bb.j ]
  %.048.i68 = phi ptr [ %i.ag, %bb.k ], [ %.040, %bb.j ] ; 5 uses
  %i.ai = sext i8 %i.ah to i32
  %memchr95.i69 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ai, i64 11) ; 2 uses
  %.not7396.i70 = icmp eq ptr %memchr95.i69, null
  br i1 %.not7396.i70, label %select.unfold.i80, label %.lr.ph.i71.peel

.lr.ph.i71.peel:                                  ; preds = %bb.l
  %i.aj = ptrtoint ptr %memchr95.i69 to i64
  %i.ak = trunc i64 %i.aj to i32
  %i.al = sub i32 %i.ak, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.am = icmp sgt i32 %i.al, 9
  br i1 %i.am, label %select.unfold.i80, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i71.peel
  %i.an = sub nsw i32 0, %i.al                    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.048.i68, i64 1 ; 4 uses
  br i1 %i.af, label %select.unfold.i80, label %.fold.split16.peel

.fold.split16.peel:                               ; preds = %bb.m
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !17
  %i.aq = sext i8 %i.ap to i32
  %memchr.i78.peel = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.aq, i64 11) ; 2 uses
  %.not73.i79.peel = icmp eq ptr %memchr.i78.peel, null
  br i1 %.not73.i79.peel, label %select.unfold.i80, label %.lr.ph.i71.preheader.peel.newph

.lr.ph.i71.preheader.peel.newph:                  ; preds = %.fold.split16.peel
  %i.ar = mul i32 %i.al, -10                      ; 2 uses
  %i.as = ptrtoint ptr %memchr.i78.peel to i64
  %i.at = trunc i64 %i.as to i32
  %i.au = sub i32 %i.at, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.av = or disjoint i32 %i.au, -2147483648
  %i.aw = icmp sgt i32 %i.au, 9                   ; 3 uses
  %i.ax = icmp slt i32 %i.ar, %i.av
  %brmerge = select i1 %i.aw, i1 true, i1 %i.ax
  %.mux = select i1 %i.aw, i1 true, i1 false
  %.mux68 = select i1 %i.aw, i32 %i.an, i32 -2147483640
  br i1 %brmerge, label %select.unfold.i80, label %select.unfold.i80.loopexit.loopexit.split.loop.exit48

select.unfold.i80.loopexit.loopexit.split.loop.exit48: ; preds = %.lr.ph.i71.preheader.peel.newph
  %i.ay = sub nsw i32 %i.ar, %i.au
  %i.az = getelementptr inbounds nuw i8, ptr %.048.i68, i64 2
  br label %select.unfold.i80

select.unfold.i80:                                ; preds = %.lr.ph.i71.preheader.peel.newph, %.lr.ph.i71.peel, %bb.m, %.fold.split16.peel, %select.unfold.i80.loopexit.loopexit.split.loop.exit48, %bb.l
  %.351.ph.i81 = phi ptr [ %.048.i68, %bb.l ], [ %.048.i68, %.lr.ph.i71.peel ], [ %i.ao, %bb.m ], [ %i.ao, %.fold.split16.peel ], [ %i.ao, %.lr.ph.i71.preheader.peel.newph ], [ %i.az, %select.unfold.i80.loopexit.loopexit.split.loop.exit48 ] ; 6 uses
  %.247.ph.not.i82 = phi i1 [ true, %bb.l ], [ true, %.lr.ph.i71.peel ], [ true, %bb.m ], [ true, %.fold.split16.peel ], [ %.mux, %.lr.ph.i71.preheader.peel.newph ], [ true, %select.unfold.i80.loopexit.loopexit.split.loop.exit48 ]
  %.2.ph.i83 = phi i32 [ 0, %bb.l ], [ 0, %.lr.ph.i71.peel ], [ %i.an, %bb.m ], [ %i.an, %.fold.split16.peel ], [ %.mux68, %.lr.ph.i71.preheader.peel.newph ], [ %i.ay, %select.unfold.i80.loopexit.loopexit.split.loop.exit48 ] ; 4 uses
  %i.ba = icmp ne ptr %.351.ph.i81, %.048.i68
  %or.cond.not94.i84 = and i1 %i.ba, %.247.ph.not.i82
  %i.bb = icmp ne i32 %.2.ph.i83, -2147483648
  %or.cond3.i85 = select i1 %i.af, i1 true, i1 %i.bb
  %or.cond76.i86 = select i1 %or.cond.not94.i84, i1 %or.cond3.i85, i1 false
  %or.cond76.not.i87 = xor i1 %or.cond76.i86, true
  %i.bc = icmp eq i32 %.2.ph.i83, 0
  %or.cond5.not.i88 = select i1 %i.af, i1 %i.bc, i1 false
  %or.cond80.i89 = select i1 %or.cond76.not.i87, i1 true, i1 %or.cond5.not.i88
  br i1 %or.cond80.i89, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96.thread, label %bb.n

bb.n:                                             ; preds = %select.unfold.i80
  %i.bd = sub nsw i32 0, %.2.ph.i83
  %spec.select.i90 = select i1 %i.af, i32 %.2.ph.i83, i32 %i.bd ; 3 uses
  %or.cond77.i93 = icmp ugt i32 %spec.select.i90, 59
  br i1 %or.cond77.i93, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96.thread, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96: ; preds = %bb.n
  %i.be = ptrtoint ptr %.351.ph.i81 to i64
  %i.bf = ptrtoint ptr %.040 to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = icmp eq i64 %i.bg, 2
  br i1 %i.bh, label %bb.o, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96.thread

bb.o:                                             ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96
  br i1 %.not50, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = load i8, ptr %.351.ph.i81, align 1, !tbaa !17
  %i.bj = icmp eq i8 %i.bi, %.0.val
  %spec.select61.idx = zext i1 %i.bj to i64
  %spec.select61 = getelementptr inbounds nuw i8, ptr %.351.ph.i81, i64 %spec.select61.idx
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.0 = phi ptr [ %.351.ph.i81, %bb.o ], [ %spec.select61, %bb.p ] ; 4 uses
  %i.bk = load i8, ptr %.0, align 1, !tbaa !17    ; 2 uses
  %i.bl = icmp eq i8 %i.bk, 45                    ; 5 uses
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %.pre.i126 = load i8, ptr %i.bm, align 1, !tbaa !17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bn = phi i8 [ %.pre.i126, %bb.r ], [ %i.bk, %bb.q ]
  %.048.i99 = phi ptr [ %i.bm, %bb.r ], [ %.0, %bb.q ] ; 5 uses
  %i.bo = sext i8 %i.bn to i32
  %memchr95.i100 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bo, i64 11) ; 2 uses
  %.not7396.i101 = icmp eq ptr %memchr95.i100, null
  br i1 %.not7396.i101, label %select.unfold.i111, label %.lr.ph.i102.peel

.lr.ph.i102.peel:                                 ; preds = %bb.s
  %i.bp = ptrtoint ptr %memchr95.i100 to i64
  %i.bq = trunc i64 %i.bp to i32
  %i.br = sub i32 %i.bq, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.bs = icmp sgt i32 %i.br, 9
  br i1 %i.bs, label %select.unfold.i111, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i102.peel
  %i.bt = sub nsw i32 0, %i.br                    ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.048.i99, i64 1 ; 4 uses
  br i1 %i.bl, label %select.unfold.i111, label %.fold.split17.peel

.fold.split17.peel:                               ; preds = %bb.t
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !17
  %i.bw = sext i8 %i.bv to i32
  %memchr.i109.peel = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bw, i64 11) ; 2 uses
  %.not73.i110.peel = icmp eq ptr %memchr.i109.peel, null
  br i1 %.not73.i110.peel, label %select.unfold.i111, label %.lr.ph.i102.preheader.peel.newph

.lr.ph.i102.preheader.peel.newph:                 ; preds = %.fold.split17.peel
  %i.bx = mul i32 %i.br, -10                      ; 2 uses
  %i.by = ptrtoint ptr %memchr.i109.peel to i64
  %i.bz = trunc i64 %i.by to i32
  %i.ca = sub i32 %i.bz, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.cb = or disjoint i32 %i.ca, -2147483648
  %i.cc = icmp sgt i32 %i.ca, 9                   ; 3 uses
  %i.cd = icmp slt i32 %i.bx, %i.cb
  %brmerge69 = select i1 %i.cc, i1 true, i1 %i.cd
  %.mux70 = select i1 %i.cc, i1 true, i1 false
  %.mux71 = select i1 %i.cc, i32 %i.bt, i32 -2147483640
  br i1 %brmerge69, label %select.unfold.i111, label %select.unfold.i111.loopexit.loopexit.split.loop.exit64

select.unfold.i111.loopexit.loopexit.split.loop.exit64: ; preds = %.lr.ph.i102.preheader.peel.newph
  %i.ce = sub nsw i32 %i.bx, %i.ca
  %i.cf = getelementptr inbounds nuw i8, ptr %.048.i99, i64 2
  br label %select.unfold.i111

select.unfold.i111:                               ; preds = %.lr.ph.i102.preheader.peel.newph, %.lr.ph.i102.peel, %bb.t, %.fold.split17.peel, %select.unfold.i111.loopexit.loopexit.split.loop.exit64, %bb.s
  %.351.ph.i112 = phi ptr [ %.048.i99, %bb.s ], [ %.048.i99, %.lr.ph.i102.peel ], [ %i.bu, %bb.t ], [ %i.bu, %.fold.split17.peel ], [ %i.bu, %.lr.ph.i102.preheader.peel.newph ], [ %i.cf, %select.unfold.i111.loopexit.loopexit.split.loop.exit64 ] ; 2 uses
  %.247.ph.not.i113 = phi i1 [ true, %bb.s ], [ true, %.lr.ph.i102.peel ], [ true, %bb.t ], [ true, %.fold.split17.peel ], [ %.mux70, %.lr.ph.i102.preheader.peel.newph ], [ true, %select.unfold.i111.loopexit.loopexit.split.loop.exit64 ]
  %.2.ph.i114 = phi i32 [ 0, %bb.s ], [ 0, %.lr.ph.i102.peel ], [ %i.bt, %bb.t ], [ %i.bt, %.fold.split17.peel ], [ %.mux71, %.lr.ph.i102.preheader.peel.newph ], [ %i.ce, %select.unfold.i111.loopexit.loopexit.split.loop.exit64 ] ; 4 uses
  %i.cg = icmp ne ptr %.351.ph.i112, %.048.i99
  %or.cond.not94.i115 = and i1 %i.cg, %.247.ph.not.i113
  %i.ch = icmp ne i32 %.2.ph.i114, -2147483648
  %or.cond3.i116 = select i1 %i.bl, i1 true, i1 %i.ch
  %or.cond76.i117 = select i1 %or.cond.not94.i115, i1 %or.cond3.i116, i1 false
  %or.cond76.not.i118 = xor i1 %or.cond76.i117, true
  %i.ci = icmp eq i32 %.2.ph.i114, 0
  %or.cond5.not.i119 = select i1 %i.bl, i1 %i.ci, i1 false
  %or.cond80.i120 = select i1 %or.cond76.not.i118, i1 true, i1 %or.cond5.not.i119
  br i1 %or.cond80.i120, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit127, label %bb.u

bb.u:                                             ; preds = %select.unfold.i111
  %i.cj = sub nsw i32 0, %.2.ph.i114
  %spec.select.i121 = select i1 %i.bl, i32 %.2.ph.i114, i32 %i.cj ; 2 uses
  %or.cond77.i124 = icmp ugt i32 %spec.select.i121, 59 ; 2 uses
  %spec.select18 = select i1 %or.cond77.i124, i32 0, i32 %spec.select.i121
  %spec.select19 = select i1 %or.cond77.i124, ptr null, ptr %.351.ph.i112
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit127

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit127: ; preds = %bb.u, %select.unfold.i111
  %.03 = phi i32 [ %spec.select18, %bb.u ], [ 0, %select.unfold.i111 ]
  %.5.i125 = phi ptr [ %spec.select19, %bb.u ], [ null, %select.unfold.i111 ] ; 3 uses
end_hunk_1
