Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/time_zone_format?download=true
inline.NumInlined: 497
inline.NumDeleted: 172
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_16ToWeekERKNS2_10civil_timeINS2_7day_tagEEENS2_7weekdayE:bb.a
  %i.ar = tail call noundef i64 @_ZN4absl13time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %.sroa.0.0.i, i8 noundef signext %.sroa.6.sroa.0.0.in.i, i8 noundef signext %.sroa.6.sroa.6.0.in.i, i64 noundef %i.ap, i8 noundef signext %.sroa.2.8.extract.trunc.i.i, i8 noundef signext %.sroa.4.8.extract.trunc.i.i) #18
  %i.as = sdiv i64 %i.ar, 7
  %i.at = trunc i64 %i.as to i32
  ret i32 %i.at
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_(ptr nofree noundef readonly captures(address, ret: address, provenance) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 6, 1025) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #3 {
bb.a:
  %.not70 = icmp eq ptr %0, null
  br i1 %.not70, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
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
  %.pre = load i8, ptr %i.c, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.d = phi i8 [ %.pre, %bb.d ], [ %i.a, %bb.b ]
  %.153 = phi i32 [ %.052, %bb.d ], [ %1, %bb.b ]
  %.048 = phi ptr [ %i.c, %bb.d ], [ %0, %bb.b ]  ; 3 uses
  %i.e = sext i8 %i.d to i32
  %memchr95 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.e, i64 11) ; 2 uses
  %.not7396 = icmp eq ptr %memchr95, null
  br i1 %.not7396, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.i
  %memchr100 = phi ptr [ %memchr, %bb.i ], [ %memchr95, %bb.e ]
  %.04299 = phi i32 [ %i.n, %bb.i ], [ 0, %bb.e ] ; 4 uses
  %.14998 = phi ptr [ %i.o, %bb.i ], [ %.048, %bb.e ] ; 4 uses
  %.25497 = phi i32 [ %.557, %bb.i ], [ %.153, %bb.e ] ; 2 uses
  %i.f = ptrtoint ptr %memchr100 to i64
  %i.g = trunc i64 %i.f to i32
  %i.h = sub i32 %i.g, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
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
  %i.p = load i8, ptr %i.o, align 1
  %i.q = sext i8 %i.p to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.q, i64 11) ; 2 uses
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
  store i32 %spec.select, ptr %4, align 4
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.k, %bb.j, %select.unfold, %bb.a
  %.5 = phi ptr [ null, %bb.a ], [ null, %select.unfold ], [ %.351.ph, %bb.k ], [ null, %bb.j ], [ null, %bb.c ]
  ret ptr %.5
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4absl13time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS1_9time_zoneEPNSt6chrono10time_pointINSE_3_V212system_clockENSE_8durationIlSt5ratioILl1ELl1EEEEEEPNSI_IlSJ_ILl1ELl1000000000000000EEEEPS8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %6 = alloca %struct.tm, align 16                ; 18 uses
  %7 = alloca %"class.std::chrono::duration.1", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %struct.tm, align 8                ; 6 uses
  %12 = alloca %"class.absl::time_internal::cctz::time_zone", align 8 ; 6 uses
  %13 = alloca %"class.absl::time_internal::cctz::detail::civil_time", align 8 ; 11 uses
  %14 = alloca %"class.absl::time_internal::cctz::detail::civil_time", align 8 ; 7 uses
  %15 = alloca %"class.absl::time_internal::cctz::detail::civil_time", align 8 ; 7 uses
  %16 = alloca %"struct.absl::time_internal::cctz::time_zone::civil_lookup", align 8 ; 4 uses
  %17 = alloca %"struct.absl::time_internal::cctz::time_zone::absolute_lookup", align 8 ; 5 uses
  %18 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %19 = alloca %"struct.absl::time_internal::cctz::time_zone::absolute_lookup", align 8 ; 5 uses
  %20 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %i.d = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0186 = phi ptr [ %i.d, %bb.a ], [ %i.h, %bb.b ] ; 3 uses
  %i.e = load i8, ptr %.0186, align 1
  %i.f = sext i8 %i.e to i32
  %i.g = tail call i32 @isspace(i32 noundef %i.f) #22
  %.not = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %.0186, i64 1
  br i1 %.not, label %._crit_edge.i.i, label %bb.b, !llvm.loop !19

._crit_edge.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 1970, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %6, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store <4 x i32> <i32 0, i32 70, i32 4, i32 0>, ptr %i.k, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i64 0, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  store ptr %i.p, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.p, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i64 3, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 19
  store i8 0, ptr %i.r, align 1
  %i.s = load ptr, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 17
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 17 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354
  %.1187.ph989 = phi ptr [ %.0186, %._crit_edge.i.i ], [ %.15, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354 ] ; 2 uses
  %.0193.ph986 = phi i1 [ false, %._crit_edge.i.i ], [ %.4197, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354 ] ; 49 uses
  %.0198.ph984 = phi i1 [ false, %._crit_edge.i.i ], [ %.4202, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354 ] ; 56 uses
  %.0203.ph983 = phi ptr [ %i.s, %._crit_edge.i.i ], [ %.7210, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354 ] ; 2 uses
  %.0211.ph982 = phi i1 [ false, %._crit_edge.i.i ], [ %.6217, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354 ] ; 60 uses
  %.0221.ph981 = phi i1 [ false, %._crit_edge.i.i ], [ %.2223, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354 ] ; 55 uses
  %.0224.ph980 = phi i32 [ 6, %._crit_edge.i.i ], [ %.1225, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354 ] ; 50 uses
  %.0226.ph979 = phi i1 [ false, %._crit_edge.i.i ], [ %.2228, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354 ] ; 57 uses
  %.0.ph978 = phi i32 [ -1, %._crit_edge.i.i ], [ %.1, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354 ] ; 40 uses
  %.0822.ph977 = phi i64 [ 0, %._crit_edge.i.i ], [ %.1823, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354 ] ; 55 uses
  %i.aa = load i8, ptr %.0203.ph983, align 1      ; 2 uses
  %.not259.not1386 = icmp eq i8 %i.aa, 0          ; 32 uses
  br i1 %.not259.not1386, label %.critedge, label %.lr.ph1390

.lr.ph1390:                                       ; preds = %.lr.ph, %select.unfold.backedge
  %i.ab = phi i8 [ %i.am, %select.unfold.backedge ], [ %i.aa, %.lr.ph ] ; 3 uses
  %.02039451388 = phi ptr [ %.0203.be, %select.unfold.backedge ], [ %.0203.ph983, %.lr.ph ] ; 19 uses
  %.11879461387 = phi ptr [ %.1187.be, %select.unfold.backedge ], [ %.1187.ph989, %.lr.ph ] ; 76 uses
  %i.ac = sext i8 %i.ab to i32
  %i.ad = call i32 @isspace(i32 noundef %i.ac) #22
  %.not272 = icmp eq i32 %i.ad, 0
  br i1 %.not272, label %bb.c, label %.preheader897

.preheader897:                                    ; preds = %.lr.ph1390, %.preheader897
  %.2188 = phi ptr [ %i.ah, %.preheader897 ], [ %.11879461387, %.lr.ph1390 ] ; 3 uses
  %i.ae = load i8, ptr %.2188, align 1
  %i.af = sext i8 %i.ae to i32
  %i.ag = call i32 @isspace(i32 noundef %i.af) #22
  %.not295 = icmp eq i32 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %.2188, i64 1
  br i1 %.not295, label %.preheader896, label %.preheader897, !llvm.loop !20

.preheader896:                                    ; preds = %.preheader897, %.preheader896
  %.1204 = phi ptr [ %i.ai, %.preheader896 ], [ %.02039451388, %.preheader897 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.1204, i64 1 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = sext i8 %i.aj to i32
  %i.al = call i32 @isspace(i32 noundef %i.ak) #22
  %.not296 = icmp eq i32 %i.al, 0
  br i1 %.not296, label %select.unfold.backedge, label %.preheader896, !llvm.loop !21

select.unfold.backedge:                           ; preds = %.preheader896, %bb.d
  %.0203.be = phi ptr [ %spec.select880, %bb.d ], [ %i.ai, %.preheader896 ] ; 2 uses
  %.1187.be = phi ptr [ %i.ap, %bb.d ], [ %.2188, %.preheader896 ] ; 2 uses
  %i.am = load i8, ptr %.0203.be, align 1         ; 2 uses
  %.not259.not = icmp eq i8 %i.am, 0
  br i1 %.not259.not, label %.critedge, label %.lr.ph1390, !llvm.loop !22

bb.c:                                             ; preds = %.lr.ph1390
  %.not273 = icmp eq i8 %i.ab, 37
  br i1 %.not273, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = load i8, ptr %.11879461387, align 1
  %i.ao = icmp eq i8 %i.an, %i.ab                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.11879461387, i64 1
  %spec.select880.idx = zext i1 %i.ao to i64
  %spec.select880 = getelementptr inbounds nuw i8, ptr %.02039451388, i64 %spec.select880.idx
  br i1 %i.ao, label %select.unfold.backedge, label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %.02039451388, i64 1
  %i.ar = load i8, ptr %i.aq, align 1             ; 2 uses
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %.critedge, label %bb.f, !llvm.loop !22

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.02039451388, i64 2 ; 33 uses
  switch i8 %i.ar, label %bb.fc [
    i8 89, label %bb.g
    i8 109, label %bb.n
    i8 100, label %bb.s
    i8 101, label %bb.s
    i8 70, label %bb.y
    i8 85, label %bb.ar
    i8 87, label %bb.ay
    i8 117, label %bb.bf
    i8 119, label %bb.bn
    i8 72, label %bb.bv
    i8 77, label %bb.cb
    i8 83, label %bb.ch
    i8 84, label %bb.cn
    i8 73, label %bb.df
    i8 108, label %bb.df
    i8 114, label %bb.df
    i8 82, label %bb.dg
    i8 99, label %bb.dg
    i8 88, label %bb.dg
    i8 122, label %bb.dh
    i8 90, label %bb.di
    i8 115, label %bb.ds
    i8 58, label %bb.dy
    i8 37, label %bb.ee
    i8 69, label %bb.ef
    i8 79, label %bb.fb
  ]

bb.g:                                             ; preds = %bb.f
  %i.au = load i8, ptr %.11879461387, align 1     ; 2 uses
  %i.av = icmp eq i8 %i.au, 45                    ; 4 uses
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.11879461387, i64 1 ; 2 uses
  %.pre.i = load i8, ptr %i.aw, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = phi i8 [ %.pre.i, %bb.h ], [ %i.au, %bb.g ]
  %.048.i = phi ptr [ %i.aw, %bb.h ], [ %.11879461387, %bb.g ] ; 3 uses
  %i.ay = sext i8 %i.ax to i32
  %memchr94.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ay, i64 11) ; 2 uses
  %.not7295.i = icmp eq ptr %memchr94.i, null
  br i1 %.not7295.i, label %select.unfold.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.l
  %memchr99.i = phi ptr [ %memchr.i, %bb.l ], [ %memchr94.i, %bb.i ]
  %.04298.i = phi i64 [ %i.bj, %bb.l ], [ 0, %bb.i ] ; 4 uses
  %.14997.i = phi ptr [ %i.bi, %bb.l ], [ %.048.i, %bb.i ] ; 4 uses
  %i.az = ptrtoint ptr %memchr99.i to i64
  %i.ba = trunc i64 %i.az to i32
  %i.bb = sub i32 %i.ba, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
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
  %i.bk = load i8, ptr %i.bi, align 1
  %i.bl = sext i8 %i.bk to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bl, i64 11) ; 2 uses
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
  br i1 %or.cond79.i, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS6_iT_S7_PS7_.exit, label %bb.m

bb.m:                                             ; preds = %select.unfold.i
  %i.bp = sub nsw i64 0, %.2.ph.i
  %spec.select.i = select i1 %i.av, i64 %.2.ph.i, i64 %i.bp
  store i64 %spec.select.i, ptr %i.a, align 8
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS6_iT_S7_PS7_.exit

_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS6_iT_S7_PS7_.exit: ; preds = %select.unfold.i, %bb.m
  %.4.i = phi ptr [ null, %select.unfold.i ], [ %.351.ph.i, %bb.m ] ; 2 uses
  %.not294 = icmp ne ptr %.4.i, null
  %spec.select = select i1 %.not294, i1 true, i1 %.0193.ph986
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354, !llvm.loop !22

bb.n:                                             ; preds = %bb.f
  %i.bq = load i8, ptr %.11879461387, align 1     ; 2 uses
  %i.br = icmp eq i8 %i.bq, 45                    ; 4 uses
  br i1 %i.br, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = sext i8 %i.bq to i32
  %memchr95.i.jt2 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bs, i64 11) ; 2 uses
  %.not7396.i.jt2 = icmp eq ptr %memchr95.i.jt2, null
  br i1 %.not7396.i.jt2, label %select.unfold.i316, label %.lr.ph.i313.jt2

bb.p:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.11879461387, i64 1 ; 5 uses
  %.pre.i323 = load i8, ptr %i.bt, align 1
  %i.bu = sext i8 %.pre.i323 to i32
  %memchr95.i.jt1 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bu, i64 11) ; 2 uses
  %.not7396.i.jt1 = icmp eq ptr %memchr95.i.jt1, null
  %21 = ptrtoint ptr %memchr95.i.jt1 to i64
  %22 = trunc i64 %21 to i32
  %23 = sub i32 %22, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %24 = icmp sgt i32 %23, 9
  %or.cond1316 = or i1 %.not7396.i.jt1, %24
  br i1 %or.cond1316, label %select.unfold.i316, label %.thread.a

.lr.ph.i313.jt2:                                  ; preds = %bb.o
  %i.bv = ptrtoint ptr %memchr95.i.jt2 to i64
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = sub i32 %i.bw, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.by = icmp sgt i32 %i.bx, 9
  br i1 %i.by, label %select.unfold.i316, label %.fold.split

.lr.ph.i313.jt1:                                  ; preds = %.fold.split
  %i.bz = ptrtoint ptr %memchr.i315 to i64
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = sub i32 %i.ca, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 9
  br i1 %i.cc, label %select.unfold.i316, label %25

25:                                               ; preds = %.lr.ph.i313.jt1
  %26 = mul i32 %i.bx, -10
  br label %.thread.a

.thread.a:                                        ; preds = %25, %bb.p
  %.048.i312116011701178 = phi ptr [ %.11879461387, %25 ], [ %i.bt, %bb.p ] ; 2 uses
  %.04299.i.jt111711177 = phi i32 [ %26, %25 ], [ 0, %bb.p ] ; 2 uses
  %.14998.i.jt111721176 = phi ptr [ %i.ce, %25 ], [ %i.bt, %bb.p ]
  %27 = phi i32 [ %i.cb, %25 ], [ %23, %bb.p ]    ; 2 uses
  %28 = or disjoint i32 %27, -2147483648
  %29 = icmp slt i32 %.04299.i.jt111711177, %28
  br i1 %29, label %select.unfold.i316, label %30

.fold.split:                                      ; preds = %.lr.ph.i313.jt2
  %i.cd = sub nsw i32 0, %i.bx                    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.11879461387, i64 1 ; 4 uses
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = sext i8 %i.cf to i32
  %memchr.i315 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.cg, i64 11) ; 2 uses
  %.not73.i = icmp eq ptr %memchr.i315, null
  br i1 %.not73.i, label %select.unfold.i316, label %.lr.ph.i313.jt1

30:                                               ; preds = %.thread.a
  %31 = sub nsw i32 %.04299.i.jt111711177, %27
  %32 = getelementptr inbounds nuw i8, ptr %.11879461387, i64 2
  br label %select.unfold.i316

select.unfold.i316:                               ; preds = %.fold.split, %.lr.ph.i313.jt1, %.thread.a, %.lr.ph.i313.jt2, %30, %bb.o, %bb.p
  %.048.i3121159 = phi ptr [ %.11879461387, %bb.o ], [ %i.bt, %bb.p ], [ %.048.i312116011701178, %.thread.a ], [ %.048.i312116011701178, %30 ], [ %.11879461387, %.lr.ph.i313.jt1 ], [ %.11879461387, %.fold.split ], [ %.11879461387, %.lr.ph.i313.jt2 ]
  %.351.ph.i317 = phi ptr [ %.11879461387, %bb.o ], [ %i.bt, %bb.p ], [ %.14998.i.jt111721176, %.thread.a ], [ %32, %30 ], [ %i.ce, %.lr.ph.i313.jt1 ], [ %i.ce, %.fold.split ], [ %.11879461387, %.lr.ph.i313.jt2 ] ; 2 uses
  %.247.ph.not.i318 = phi i1 [ true, %bb.o ], [ true, %bb.p ], [ false, %.thread.a ], [ true, %30 ], [ true, %.lr.ph.i313.jt1 ], [ true, %.fold.split ], [ true, %.lr.ph.i313.jt2 ]
  %.2.ph.i319 = phi i32 [ 0, %bb.o ], [ 0, %bb.p ], [ -2147483640, %.thread.a ], [ %31, %30 ], [ %i.cd, %.lr.ph.i313.jt1 ], [ %i.cd, %.fold.split ], [ 0, %.lr.ph.i313.jt2 ] ; 4 uses
  %33 = icmp ne ptr %.351.ph.i317, %.048.i3121159
  %or.cond.not94.i = and i1 %33, %.247.ph.not.i318
  %34 = icmp ne i32 %.2.ph.i319, -2147483648
  %or.cond3.i320 = select i1 %i.br, i1 true, i1 %34
  %or.cond76.i = select i1 %or.cond.not94.i, i1 %or.cond3.i320, i1 false
  %or.cond76.not.i = xor i1 %or.cond76.i, true
  %i.ch = icmp eq i32 %.2.ph.i319, 0
  %or.cond5.not.i321 = select i1 %i.br, i1 %i.ch, i1 false
  %or.cond80.i = select i1 %or.cond76.not.i, i1 true, i1 %or.cond5.not.i321
  br i1 %or.cond80.i, label %.critedge, label %bb.q, !llvm.loop !22

bb.q:                                             ; preds = %select.unfold.i316
  %i.ci = sub nsw i32 0, %.2.ph.i319
  %spec.select.i322 = select i1 %i.br, i32 %.2.ph.i319, i32 %i.ci ; 2 uses
  %i.cj = add i32 %spec.select.i322, -13
  %or.cond77.i = icmp ult i32 %i.cj, -12
  br i1 %or.cond77.i, label %.critedge, label %bb.r, !llvm.loop !22

bb.r:                                             ; preds = %bb.q
  %i.ck = add nsw i32 %spec.select.i322, -1
  store i32 %i.ck, ptr %i.k, align 16
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354, !llvm.loop !22

bb.s:                                             ; preds = %bb.f, %bb.f
  %i.cl = load i8, ptr %.11879461387, align 1     ; 2 uses
  %i.cm = icmp eq i8 %i.cl, 45                    ; 5 uses
  br i1 %i.cm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %.11879461387, i64 1 ; 2 uses
  %.pre.i353 = load i8, ptr %i.cn, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.co = phi i8 [ %.pre.i353, %bb.t ], [ %i.cl, %bb.s ]
  %.048.i326 = phi ptr [ %i.cn, %bb.t ], [ %.11879461387, %bb.s ] ; 5 uses
  %i.cp = sext i8 %i.co to i32
  %memchr95.i327 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.cp, i64 11) ; 2 uses
  %.not7396.i328 = icmp eq ptr %memchr95.i327, null
  br i1 %.not7396.i328, label %select.unfold.i338, label %.lr.ph.i329.peel

.lr.ph.i329.peel:                                 ; preds = %bb.u
  %i.cq = ptrtoint ptr %memchr95.i327 to i64
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = sub i32 %i.cr, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.ct = icmp sgt i32 %i.cs, 9
  br i1 %i.ct, label %select.unfold.i338, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i329.peel
  %i.cu = sub nsw i32 0, %i.cs                    ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.048.i326, i64 1 ; 4 uses
  br i1 %i.cm, label %select.unfold.i338, label %.fold.split882.peel

.fold.split882.peel:                              ; preds = %bb.v
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = sext i8 %i.cw to i32
  %memchr.i336.peel = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.cx, i64 11) ; 2 uses
  %.not73.i337.peel = icmp eq ptr %memchr.i336.peel, null
  br i1 %.not73.i337.peel, label %select.unfold.i338, label %.lr.ph.i329.preheader.peel.newph

.lr.ph.i329.preheader.peel.newph:                 ; preds = %.fold.split882.peel
  %i.cy = mul i32 %i.cs, -10                      ; 2 uses
  %i.cz = ptrtoint ptr %memchr.i336.peel to i64
  %i.da = trunc i64 %i.cz to i32
  %i.db = sub i32 %i.da, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.dc = or disjoint i32 %i.db, -2147483648
  %i.dd = icmp sgt i32 %i.db, 9                   ; 3 uses
  %i.de = icmp slt i32 %i.cy, %i.dc
  %brmerge = select i1 %i.dd, i1 true, i1 %i.de
  %.mux = select i1 %i.dd, i1 true, i1 false
  %.mux1702.a = select i1 %i.dd, i32 %i.cu, i32 -2147483640
  br i1 %brmerge, label %select.unfold.i338, label %select.unfold.i338.loopexit.loopexit.split.loop.exit1698

select.unfold.i338.loopexit.loopexit.split.loop.exit1698: ; preds = %.lr.ph.i329.preheader.peel.newph
  %i.df = sub nsw i32 %i.cy, %i.db
  %i.dg = getelementptr inbounds nuw i8, ptr %.048.i326, i64 2
  br label %select.unfold.i338

select.unfold.i338:                               ; preds = %.lr.ph.i329.preheader.peel.newph, %.lr.ph.i329.peel, %bb.v, %.fold.split882.peel, %select.unfold.i338.loopexit.loopexit.split.loop.exit1698, %bb.u
  %.351.ph.i339 = phi ptr [ %.048.i326, %bb.u ], [ %.048.i326, %.lr.ph.i329.peel ], [ %i.cv, %bb.v ], [ %i.cv, %.fold.split882.peel ], [ %i.cv, %.lr.ph.i329.preheader.peel.newph ], [ %i.dg, %select.unfold.i338.loopexit.loopexit.split.loop.exit1698 ] ; 2 uses
  %.247.ph.not.i340 = phi i1 [ true, %bb.u ], [ true, %.lr.ph.i329.peel ], [ true, %bb.v ], [ true, %.fold.split882.peel ], [ %.mux, %.lr.ph.i329.preheader.peel.newph ], [ true, %select.unfold.i338.loopexit.loopexit.split.loop.exit1698 ]
  %.2.ph.i341 = phi i32 [ 0, %bb.u ], [ 0, %.lr.ph.i329.peel ], [ %i.cu, %bb.v ], [ %i.cu, %.fold.split882.peel ], [ %.mux1702.a, %.lr.ph.i329.preheader.peel.newph ], [ %i.df, %select.unfold.i338.loopexit.loopexit.split.loop.exit1698 ] ; 4 uses
  %i.dh = icmp ne ptr %.351.ph.i339, %.048.i326
  %or.cond.not94.i342 = and i1 %i.dh, %.247.ph.not.i340
  %i.di = icmp ne i32 %.2.ph.i341, -2147483648
  %or.cond3.i343 = select i1 %i.cm, i1 true, i1 %i.di
  %or.cond76.i344 = select i1 %or.cond.not94.i342, i1 %or.cond3.i343, i1 false
  %or.cond76.not.i345 = xor i1 %or.cond76.i344, true
  %i.dj = icmp eq i32 %.2.ph.i341, 0
  %or.cond5.not.i346 = select i1 %i.cm, i1 %i.dj, i1 false
  %or.cond80.i347 = select i1 %or.cond76.not.i345, i1 true, i1 %or.cond5.not.i346
  br i1 %or.cond80.i347, label %.critedge, label %bb.w, !llvm.loop !22

bb.w:                                             ; preds = %select.unfold.i338
  %i.dk = sub nsw i32 0, %.2.ph.i341
  %spec.select.i348 = select i1 %i.cm, i32 %.2.ph.i341, i32 %i.dk ; 2 uses
  %i.dl = add i32 %spec.select.i348, -32
  %or.cond77.i351 = icmp ult i32 %i.dl, -31
  br i1 %or.cond77.i351, label %.critedge, label %bb.x, !llvm.loop !22

bb.x:                                             ; preds = %bb.w
  store i32 %spec.select.i348, ptr %i.l, align 4
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit354, !llvm.loop !22

bb.y:                                             ; preds = %bb.f
  %i.dm = load i8, ptr %.11879461387, align 1     ; 2 uses
  %i.dn = icmp eq i8 %i.dm, 45                    ; 4 uses
  br i1 %i.dn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %.11879461387, i64 1 ; 2 uses
  %.pre.i381 = load i8, ptr %i.do, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dp = phi i8 [ %.pre.i381, %bb.z ], [ %i.dm, %bb.y ]
  %.048.i356 = phi ptr [ %i.do, %bb.z ], [ %.11879461387, %bb.y ] ; 3 uses
  %i.dq = sext i8 %i.dp to i32
  %memchr94.i357 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.dq, i64 11) ; 2 uses
  %.not7295.i358 = icmp eq ptr %memchr94.i357, null
  br i1 %.not7295.i358, label %select.unfold.i367, label %.lr.ph.i359

.lr.ph.i359:                                      ; preds = %bb.aa, %bb.ad
  %memchr99.i360 = phi ptr [ %memchr.i365, %bb.ad ], [ %memchr94.i357, %bb.aa ]
  %.04298.i361 = phi i64 [ %i.eb, %bb.ad ], [ 0, %bb.aa ] ; 4 uses
  %.14997.i362 = phi ptr [ %i.ea, %bb.ad ], [ %.048.i356, %bb.aa ] ; 4 uses
  %i.dr = ptrtoint ptr %memchr99.i360 to i64
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = sub i32 %i.ds, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %i.du = icmp sgt i32 %i.dt, 9
  br i1 %i.du, label %select.unfold.i367, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i359
  %i.dv = icmp slt i64 %.04298.i361, -922337203685477580
  br i1 %i.dv, label %select.unfold.i367, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dw = mul nsw i64 %.04298.i361, 10            ; 2 uses
  %i.dx = sext i32 %i.dt to i64                   ; 2 uses
  %i.dy = or disjoint i64 %i.dx, -9223372036854775808
  %i.dz = icmp slt i64 %i.dw, %i.dy
  br i1 %i.dz, label %select.unfold.i367, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ea = getelementptr inbounds nuw i8, ptr %.14997.i362, i64 1 ; 3 uses
  %i.eb = sub nsw i64 %i.dw, %i.dx                ; 2 uses
  %i.ec = load i8, ptr %i.ea, align 1
  %i.ed = sext i8 %i.ec to i32
  %memchr.i365 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ed, i64 11) ; 2 uses
  %.not72.i366 = icmp eq ptr %memchr.i365, null
  br i1 %.not72.i366, label %select.unfold.i367, label %.lr.ph.i359

select.unfold.i367:                               ; preds = %bb.ad, %bb.ac, %bb.ab, %.lr.ph.i359, %bb.aa
  %.351.ph.i368 = phi ptr [ %.048.i356, %bb.aa ], [ %i.ea, %bb.ad ], [ %.14997.i362, %.lr.ph.i359 ], [ %.14997.i362, %bb.ab ], [ %.14997.i362, %bb.ac ] ; 4 uses
  %.247.ph.not.i369 = phi i1 [ true, %bb.aa ], [ true, %bb.ad ], [ true, %.lr.ph.i359 ], [ false, %bb.ab ], [ false, %bb.ac ]
  %.2.ph.i370 = phi i64 [ 0, %bb.aa ], [ %i.eb, %bb.ad ], [ %.04298.i361, %.lr.ph.i359 ], [ %.04298.i361, %bb.ab ], [ -9223372036854775800, %bb.ac ] ; 4 uses
  %i.ee = icmp ne ptr %.351.ph.i368, %.048.i356
  %or.cond.not93.i371 = and i1 %i.ee, %.247.ph.not.i369
  %i.ef = icmp ne i64 %.2.ph.i370, -9223372036854775808
  %or.cond3.i372 = select i1 %i.dn, i1 true, i1 %i.ef
  %or.cond75.i373 = select i1 %or.cond.not93.i371, i1 %or.cond3.i372, i1 false
  %or.cond75.not.i374 = xor i1 %or.cond75.i373, true
  %i.eg = icmp eq i64 %.2.ph.i370, 0
  %or.cond5.not.i375 = select i1 %i.dn, i1 %i.eg, i1 false
  %or.cond79.i376 = select i1 %or.cond75.not.i374, i1 true, i1 %or.cond5.not.i375
  br i1 %or.cond79.i376, label %.critedge, label %bb.ae, !llvm.loop !22

bb.ae:                                            ; preds = %select.unfold.i367
  %i.eh = sub nsw i64 0, %.2.ph.i370
  %spec.select.i377 = select i1 %i.dn, i64 %.2.ph.i370, i64 %i.eh
  store i64 %spec.select.i377, ptr %i.a, align 8
  %i.ei = load i8, ptr %.351.ph.i368, align 1
  %i.ej = icmp eq i8 %i.ei, 45
  br i1 %i.ej, label %bb.af, label %.critedge, !llvm.loop !22

bb.af:                                            ; preds = %bb.ae
  %i.ek = getelementptr inbounds nuw i8, ptr %.351.ph.i368, i64 1 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1             ; 2 uses
  %i.em = icmp eq i8 %i.el, 45                    ; 5 uses
  br i1 %i.em, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.en = getelementptr inbounds nuw i8, ptr %.351.ph.i368, i64 2 ; 2 uses
  %.pre.i412 = load i8, ptr %i.en, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.eo = phi i8 [ %.pre.i412, %bb.ag ], [ %i.el, %bb.af ]
  %.048.i385 = phi ptr [ %i.en, %bb.ag ], [ %i.ek, %bb.af ] ; 5 uses
  %i.ep = sext i8 %i.eo to i32
  %memchr95.i386 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ep, i64 11) ; 2 uses
  %.not7396.i387 = icmp eq ptr %memchr95.i386, null
  br i1 %.not7396.i387, label %select.unfold.i397, label %.lr.ph.i388.peel

.lr.ph.i388.peel:                                 ; preds = %bb.ah
  %i.eq = ptrtoint ptr %memchr95.i386 to i64
  %i.er = trunc i64 %i.eq to i32
  %i.es = sub i32 %i.er, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.et = icmp sgt i32 %i.es, 9
  br i1 %i.et, label %select.unfold.i397, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i388.peel
  %i.eu = sub nsw i32 0, %i.es                    ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.048.i385, i64 1 ; 4 uses
  br i1 %i.em, label %select.unfold.i397, label %.fold.split883.peel

.fold.split883.peel:                              ; preds = %bb.ai
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = sext i8 %i.ew to i32
end_hunk_0
begin_hunk_1_@_ZN4absl13time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS1_9time_zoneEPNSt6chrono10time_pointINSE_3_V212system_clockENSE_8durationIlSt5ratioILl1ELl1EEEEEEPNSI_IlSJ_ILl1ELl1000000000000000EEEEPS8_:bb.a
  %.not266 = icmp eq ptr %5, null
  br i1 %.not266, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.ach = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.13) ; 0 uses
  br label %bb.hb

bb.hb:                                            ; preds = %bb.gz, %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.hh

.thread879:                                       ; preds = %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.hg

bb.hc:                                            ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  store i64 -9223372036854775808, ptr %20, align 8
  call void @_ZNK4absl13time_internal4cctz9time_zone6lookupERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::time_internal::cctz::time_zone::absolute_lookup") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %i.aci = call noundef zeroext i1 @_ZN4absl13time_internal4cctz6detailltINS2_10second_tagES4_EEbRKNS2_10civil_timeIT_EERKNS5_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %19) #18
  br i1 %i.aci, label %bb.hd, label %.critedge308

bb.hd:                                            ; preds = %bb.hc
  %.not267 = icmp eq ptr %5, null
  br i1 %.not267, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.acj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.13) ; 0 uses
  br label %bb.hf

bb.hf:                                            ; preds = %bb.hd, %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.hh

.critedge308:                                     ; preds = %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.hg

bb.hg:                                            ; preds = %bb.gx, %.thread879, %.critedge308
  store i64 %i.acf, ptr %3, align 8
  %i.ack = load i64, ptr %7, align 8
  store i64 %i.ack, ptr %4, align 8
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hb, %bb.hf, %bb.gv, %bb.gw, %bb.gp, %bb.gq
  %.4 = phi i1 [ false, %bb.gv ], [ false, %bb.gp ], [ false, %bb.gq ], [ false, %bb.gw ], [ true, %bb.hg ], [ false, %bb.hf ], [ false, %bb.hb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.hi

bb.hi:                                            ; preds = %bb.gl, %bb.gm, %bb.hh
  %.5 = phi i1 [ %.4, %bb.hh ], [ false, %bb.gm ], [ false, %bb.gl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.hj

bb.hj:                                            ; preds = %bb.fs, %bb.ft, %.thread1229, %bb.fq, %bb.hi, %bb.fv
  %.6 = phi i1 [ %.5, %bb.hi ], [ false, %.thread1229 ], [ true, %bb.fv ], [ false, %bb.fq ], [ false, %bb.ft ], [ false, %bb.fs ]
  %i.acl = load ptr, ptr %8, align 8              ; 2 uses
  %i.acm = icmp eq ptr %i.acl, %i.p
  br i1 %i.acm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit806, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i804

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i804: ; preds = %bb.hj
  %i.acn = load i64, ptr %i.p, align 8
  %i.aco = add i64 %i.acn, 1
  call void @_ZdlPvm(ptr noundef %i.acl, i64 noundef %i.aco) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit806

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit806: ; preds = %bb.hj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i804
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i1 %.6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS6_iT_S7_PS7_(ptr nofree noundef nonnull readonly captures(address, ret: address, provenance) %0, i32 noundef range(i32 0, 5) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
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
  %.pre = load i8, ptr %i.e, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.f = phi i8 [ %.pre, %bb.d ], [ %i.a, %bb.a ]
  %.153 = phi i32 [ %.052, %bb.d ], [ %1, %bb.a ]
  %.048 = phi ptr [ %i.e, %bb.d ], [ %0, %bb.a ]  ; 3 uses
  %i.g = sext i8 %i.f to i32
  %memchr94 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.g, i64 11) ; 2 uses
  %.not7295 = icmp eq ptr %memchr94, null
  br i1 %.not7295, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.j
  %memchr99 = phi ptr [ %memchr, %bb.j ], [ %memchr94, %bb.e ]
  %.04298 = phi i64 [ %i.q, %bb.j ], [ 0, %bb.e ] ; 4 uses
  %.14997 = phi ptr [ %i.r, %bb.j ], [ %.048, %bb.e ] ; 4 uses
  %.25496 = phi i32 [ %.557, %bb.j ], [ %.153, %bb.e ] ; 2 uses
  %i.h = ptrtoint ptr %memchr99 to i64
  %i.i = trunc i64 %i.h to i32
  %i.j = sub i32 %i.i, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
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
  %i.v = load i8, ptr %i.r, align 1
  %i.w = sext i8 %i.v to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.w, i64 11) ; 2 uses
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
  store i64 %spec.select, ptr %4, align 8
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.l, %bb.k, %select.unfold
  %.4 = phi ptr [ null, %select.unfold ], [ %.351.ph, %bb.l ], [ null, %bb.k ], [ null, %bb.c ]
  ret ptr %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_111ParseOffsetEPKcS5_Pi(ptr noundef nonnull %0, i8 %.0.val, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.b = load i8, ptr %0, align 1                 ; 3 uses
  %i.c = icmp eq i8 %i.b, 45
  switch i8 %i.b, label %bb.v [
    i8 45, label %bb.b
    i8 43, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.d = load i8, ptr %i.a, align 1               ; 2 uses
  %i.e = icmp eq i8 %i.d, 45                      ; 5 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.pre.i = load i8, ptr %i.f, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i8 [ %.pre.i, %bb.c ], [ %i.d, %bb.b ]
  %.048.i = phi ptr [ %i.f, %bb.c ], [ %i.a, %bb.b ] ; 5 uses
  %i.h = sext i8 %i.g to i32
  %memchr95.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.h, i64 11) ; 2 uses
  %.not7396.i = icmp eq ptr %memchr95.i, null
  br i1 %.not7396.i, label %select.unfold.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.i = ptrtoint ptr %memchr95.i to i64
  %i.j = trunc i64 %i.i to i32
  %i.k = sub i32 %i.j, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.l = icmp sgt i32 %i.k, 9
  br i1 %i.l, label %select.unfold.i, label %bb.e

.lr.ph.i.jt1:                                     ; preds = %.fold.split
  %i.m = ptrtoint ptr %memchr.i to i64
  %i.n = trunc i64 %i.m to i32
  %i.o = sub i32 %i.n, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
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
  %i.u = load i8, ptr %i.r, align 1
  %i.v = sext i8 %i.u to i32
  %memchr.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.v, i64 11) ; 2 uses
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
  br i1 %or.cond80.i, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit.thread, label %bb.g

bb.g:                                             ; preds = %select.unfold.i
  %i.x = sub nsw i32 0, %.2.ph.i
  %spec.select.i = select i1 %i.e, i32 %.2.ph.i, i32 %i.x ; 2 uses
  %or.cond77.i = icmp ult i32 %spec.select.i, 24
  %i.y = ptrtoint ptr %.351.ph.i to i64
  %i.z = ptrtoint ptr %i.a to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp eq i64 %i.aa, 2
  %or.cond = select i1 %or.cond77.i, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.h, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit.thread

bb.h:                                             ; preds = %bb.g
  %.not50 = icmp eq i8 %.0.val, 0                 ; 2 uses
  br i1 %.not50, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i8, ptr %.351.ph.i, align 1
  %i.ad = icmp eq i8 %i.ac, %.0.val
  %spec.select.idx = zext i1 %i.ad to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.351.ph.i, i64 %spec.select.idx
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.040 = phi ptr [ %.351.ph.i, %bb.h ], [ %spec.select, %bb.i ] ; 4 uses
  %i.ae = load i8, ptr %.040, align 1             ; 2 uses
  %i.af = icmp eq i8 %i.ae, 45                    ; 5 uses
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %.040, i64 1 ; 2 uses
  %.pre.i95 = load i8, ptr %i.ag, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ah = phi i8 [ %.pre.i95, %bb.k ], [ %i.ae, %bb.j ]
  %.048.i68 = phi ptr [ %i.ag, %bb.k ], [ %.040, %bb.j ] ; 5 uses
  %i.ai = sext i8 %i.ah to i32
  %memchr95.i69 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ai, i64 11) ; 2 uses
  %.not7396.i70 = icmp eq ptr %memchr95.i69, null
  br i1 %.not7396.i70, label %select.unfold.i80, label %.lr.ph.i71.peel

.lr.ph.i71.peel:                                  ; preds = %bb.l
  %i.aj = ptrtoint ptr %memchr95.i69 to i64
  %i.ak = trunc i64 %i.aj to i32
  %i.al = sub i32 %i.ak, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.am = icmp sgt i32 %i.al, 9
  br i1 %i.am, label %select.unfold.i80, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i71.peel
  %i.an = sub nsw i32 0, %i.al                    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.048.i68, i64 1 ; 4 uses
  br i1 %i.af, label %select.unfold.i80, label %.fold.split16.peel

.fold.split16.peel:                               ; preds = %bb.m
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = sext i8 %i.ap to i32
  %memchr.i78.peel = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.aq, i64 11) ; 2 uses
  %.not73.i79.peel = icmp eq ptr %memchr.i78.peel, null
  br i1 %.not73.i79.peel, label %select.unfold.i80, label %.lr.ph.i71.preheader.peel.newph

.lr.ph.i71.preheader.peel.newph:                  ; preds = %.fold.split16.peel
  %i.ar = mul i32 %i.al, -10                      ; 2 uses
  %i.as = ptrtoint ptr %memchr.i78.peel to i64
  %i.at = trunc i64 %i.as to i32
  %i.au = sub i32 %i.at, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
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
  br i1 %or.cond80.i89, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit96.thread, label %bb.n

bb.n:                                             ; preds = %select.unfold.i80
  %i.bd = sub nsw i32 0, %.2.ph.i83
  %spec.select.i90 = select i1 %i.af, i32 %.2.ph.i83, i32 %i.bd ; 3 uses
  %or.cond77.i93 = icmp ugt i32 %spec.select.i90, 59
  br i1 %or.cond77.i93, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit96.thread, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit96

_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit96: ; preds = %bb.n
  %i.be = ptrtoint ptr %.351.ph.i81 to i64
  %i.bf = ptrtoint ptr %.040 to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = icmp eq i64 %i.bg, 2
  br i1 %i.bh, label %bb.o, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit96.thread

bb.o:                                             ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit96
  br i1 %.not50, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = load i8, ptr %.351.ph.i81, align 1
  %i.bj = icmp eq i8 %i.bi, %.0.val
  %spec.select61.idx = zext i1 %i.bj to i64
  %spec.select61 = getelementptr inbounds nuw i8, ptr %.351.ph.i81, i64 %spec.select61.idx
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.0 = phi ptr [ %.351.ph.i81, %bb.o ], [ %spec.select61, %bb.p ] ; 4 uses
  %i.bk = load i8, ptr %.0, align 1               ; 2 uses
  %i.bl = icmp eq i8 %i.bk, 45                    ; 5 uses
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %.pre.i126 = load i8, ptr %i.bm, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bn = phi i8 [ %.pre.i126, %bb.r ], [ %i.bk, %bb.q ]
  %.048.i99 = phi ptr [ %i.bm, %bb.r ], [ %.0, %bb.q ] ; 5 uses
  %i.bo = sext i8 %i.bn to i32
  %memchr95.i100 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bo, i64 11) ; 2 uses
  %.not7396.i101 = icmp eq ptr %memchr95.i100, null
  br i1 %.not7396.i101, label %select.unfold.i111, label %.lr.ph.i102.peel

.lr.ph.i102.peel:                                 ; preds = %bb.s
  %i.bp = ptrtoint ptr %memchr95.i100 to i64
  %i.bq = trunc i64 %i.bp to i32
  %i.br = sub i32 %i.bq, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.bs = icmp sgt i32 %i.br, 9
  br i1 %i.bs, label %select.unfold.i111, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i102.peel
  %i.bt = sub nsw i32 0, %i.br                    ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.048.i99, i64 1 ; 4 uses
  br i1 %i.bl, label %select.unfold.i111, label %.fold.split17.peel

.fold.split17.peel:                               ; preds = %bb.t
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = sext i8 %i.bv to i32
  %memchr.i109.peel = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bw, i64 11) ; 2 uses
  %.not73.i110.peel = icmp eq ptr %memchr.i109.peel, null
  br i1 %.not73.i110.peel, label %select.unfold.i111, label %.lr.ph.i102.preheader.peel.newph

.lr.ph.i102.preheader.peel.newph:                 ; preds = %.fold.split17.peel
  %i.bx = mul i32 %i.br, -10                      ; 2 uses
  %i.by = ptrtoint ptr %memchr.i109.peel to i64
  %i.bz = trunc i64 %i.by to i32
  %i.ca = sub i32 %i.bz, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
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
  br i1 %or.cond80.i120, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit127, label %bb.u

bb.u:                                             ; preds = %select.unfold.i111
  %i.cj = sub nsw i32 0, %.2.ph.i114
  %spec.select.i121 = select i1 %i.bl, i32 %.2.ph.i114, i32 %i.cj ; 2 uses
  %or.cond77.i124 = icmp ugt i32 %spec.select.i121, 59 ; 2 uses
  %spec.select18 = select i1 %or.cond77.i124, i32 0, i32 %spec.select.i121
  %spec.select19 = select i1 %or.cond77.i124, ptr null, ptr %.351.ph.i112
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit127

_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit127: ; preds = %bb.u, %select.unfold.i111
  %.03 = phi i32 [ %spec.select18, %bb.u ], [ 0, %select.unfold.i111 ]
  %.5.i125 = phi ptr [ %spec.select19, %bb.u ], [ null, %select.unfold.i111 ] ; 3 uses
end_hunk_1
