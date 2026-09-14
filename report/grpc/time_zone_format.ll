Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/time_zone_format?download=true
inline.NumInlined: 481
inline.NumDeleted: 166
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_16ToWeekERKNS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE:bb.a
  %i.ar = tail call noundef i64 @_ZN4absl12lts_2025051213time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %.sroa.0.0.i, i8 noundef signext %.sroa.6.sroa.0.0.in.i, i8 noundef signext %.sroa.6.sroa.6.0.in.i, i64 noundef %i.ap, i8 noundef signext %.sroa.2.8.extract.trunc.i.i, i8 noundef signext %.sroa.4.8.extract.trunc.i.i) #18
  %i.as = sdiv i64 %i.ar, 7
  %i.at = trunc i64 %i.as to i32
  ret i32 %i.at
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_(ptr nofree noundef readonly captures(address, ret: address, provenance) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 6, 1025) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #4 {
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
  %memchr95 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.e, i64 11) ; 2 uses
  %.not7396 = icmp eq ptr %memchr95, null
  br i1 %.not7396, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.i
  %memchr100 = phi ptr [ %memchr, %bb.i ], [ %memchr95, %bb.e ]
  %.04299 = phi i32 [ %i.n, %bb.i ], [ 0, %bb.e ] ; 4 uses
  %.14998 = phi ptr [ %i.o, %bb.i ], [ %.048, %bb.e ] ; 4 uses
  %.25497 = phi i32 [ %.557, %bb.i ], [ %.153, %bb.e ] ; 2 uses
  %i.f = ptrtoint ptr %memchr100 to i64
  %i.g = trunc i64 %i.f to i32
  %i.h = sub i32 %i.g, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
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
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.q, i64 11) ; 2 uses
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
define noundef zeroext i1 @_ZN4absl12lts_2025051213time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
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
  %i.e = load ptr, ptr %1, align 8, !tbaa !30
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0170 = phi ptr [ %i.e, %bb.a ], [ %i.i, %bb.b ] ; 3 uses
  %i.f = load i8, ptr %.0170, align 1, !tbaa !17
  %i.g = sext i8 %i.f to i32
  %i.h = tail call i32 @isspace(i32 noundef %i.g) #22
  %.not = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %.0170, i64 1
  br i1 %.not, label %._crit_edge.i.i, label %bb.b, !llvm.loop !59

._crit_edge.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 1970, ptr %i.b, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %6, align 16, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store <4 x i32> <i32 0, i32 70, i32 4, i32 0>, ptr %i.l, align 16, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i64 0, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 0, ptr %i.c, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store ptr %i.q, ptr %8, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.q, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i64 3, ptr %i.r, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 19
  store i8 0, ptr %i.s, align 1, !tbaa !17
  %i.t = load ptr, ptr %0, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 17
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361
  %.1171.ph790 = phi ptr [ %.0170, %._crit_edge.i.i ], [ %.13, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361 ] ; 2 uses
  %.0177.ph787 = phi i1 [ false, %._crit_edge.i.i ], [ %.3180, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361 ] ; 47 uses
  %.0181.ph785 = phi i1 [ false, %._crit_edge.i.i ], [ %.4185, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361 ] ; 47 uses
  %.0200.ph784 = phi i1 [ false, %._crit_edge.i.i ], [ %.2202, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361 ] ; 46 uses
  %.0203.ph783 = phi i32 [ 6, %._crit_edge.i.i ], [ %.1204, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361 ] ; 41 uses
  %.0205.ph782 = phi i1 [ false, %._crit_edge.i.i ], [ %.2207, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361 ] ; 48 uses
  %.0208.ph781 = phi i1 [ false, %._crit_edge.i.i ], [ %.6214, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361 ] ; 52 uses
  %.0215.ph780 = phi ptr [ %i.t, %._crit_edge.i.i ], [ %.7222, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361 ] ; 2 uses
  %.0.ph779 = phi i32 [ -1, %._crit_edge.i.i ], [ %.1, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361 ] ; 39 uses
  %.0660.ph778 = phi i64 [ 0, %._crit_edge.i.i ], [ %.1661, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361 ] ; 46 uses
  %i.aa = load i8, ptr %.0215.ph780, align 1, !tbaa !17 ; 2 uses
  %.not258.not1131 = icmp eq i8 %i.aa, 0          ; 25 uses
  br i1 %.not258.not1131, label %.critedge, label %.lr.ph1135

.lr.ph1135:                                       ; preds = %.lr.ph, %select.unfold.backedge
  %i.ab = phi i8 [ %i.am, %select.unfold.backedge ], [ %i.aa, %.lr.ph ] ; 3 uses
  %.02157461133 = phi ptr [ %.0215.be, %select.unfold.backedge ], [ %.0215.ph780, %.lr.ph ] ; 19 uses
  %.11717471132 = phi ptr [ %.1171.be, %select.unfold.backedge ], [ %.1171.ph790, %.lr.ph ] ; 66 uses
  %i.ac = sext i8 %i.ab to i32
  %i.ad = call i32 @isspace(i32 noundef %i.ac) #22
  %.not278 = icmp eq i32 %i.ad, 0
  br i1 %.not278, label %bb.c, label %.preheader697

.preheader697:                                    ; preds = %.lr.ph1135, %.preheader697
  %.2172 = phi ptr [ %i.ah, %.preheader697 ], [ %.11717471132, %.lr.ph1135 ] ; 3 uses
  %i.ae = load i8, ptr %.2172, align 1, !tbaa !17
  %i.af = sext i8 %i.ae to i32
  %i.ag = call i32 @isspace(i32 noundef %i.af) #22
  %.not304 = icmp eq i32 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %.2172, i64 1
  br i1 %.not304, label %.preheader696, label %.preheader697, !llvm.loop !60

.preheader696:                                    ; preds = %.preheader697, %.preheader696
  %.1216 = phi ptr [ %i.ai, %.preheader696 ], [ %.02157461133, %.preheader697 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.1216, i64 1 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !17
  %i.ak = sext i8 %i.aj to i32
  %i.al = call i32 @isspace(i32 noundef %i.ak) #22
  %.not305 = icmp eq i32 %i.al, 0
  br i1 %.not305, label %select.unfold.backedge, label %.preheader696, !llvm.loop !61

select.unfold.backedge:                           ; preds = %.preheader696, %bb.d
  %.0215.be = phi ptr [ %spec.select685, %bb.d ], [ %i.ai, %.preheader696 ] ; 2 uses
  %.1171.be = phi ptr [ %i.ap, %bb.d ], [ %.2172, %.preheader696 ] ; 2 uses
  %i.am = load i8, ptr %.0215.be, align 1, !tbaa !17 ; 2 uses
  %.not258.not = icmp eq i8 %i.am, 0
  br i1 %.not258.not, label %.critedge, label %.lr.ph1135, !llvm.loop !62

bb.c:                                             ; preds = %.lr.ph1135
  %.not279 = icmp eq i8 %i.ab, 37
  br i1 %.not279, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = load i8, ptr %.11717471132, align 1, !tbaa !17
  %i.ao = icmp eq i8 %i.an, %i.ab                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.11717471132, i64 1
  %spec.select685.idx = zext i1 %i.ao to i64
  %spec.select685 = getelementptr inbounds nuw i8, ptr %.02157461133, i64 %spec.select685.idx
  br i1 %i.ao, label %select.unfold.backedge, label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %.02157461133, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !17  ; 2 uses
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %.critedge, label %bb.f, !llvm.loop !62

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.02157461133, i64 2 ; 31 uses
  switch i8 %i.ar, label %bb.dl [
    i8 89, label %bb.g
    i8 109, label %bb.o
    i8 100, label %bb.t
    i8 101, label %bb.t
    i8 85, label %bb.z
    i8 87, label %bb.ag
    i8 117, label %bb.an
    i8 119, label %bb.av
    i8 72, label %bb.bd
    i8 77, label %bb.bj
    i8 83, label %bb.bp
    i8 73, label %bb.bv
    i8 108, label %bb.bv
    i8 114, label %bb.bv
    i8 82, label %bb.bw
    i8 84, label %bb.bw
    i8 99, label %bb.bw
    i8 88, label %bb.bw
    i8 122, label %bb.bx
    i8 90, label %bb.by
    i8 115, label %bb.cb
    i8 58, label %bb.ch
    i8 37, label %bb.cn
    i8 69, label %bb.co
    i8 79, label %bb.dk
  ]

bb.g:                                             ; preds = %bb.f
  %i.au = load i8, ptr %.11717471132, align 1, !tbaa !17 ; 2 uses
  %i.av = icmp eq i8 %i.au, 45                    ; 4 uses
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.11717471132, i64 1 ; 2 uses
  %.pre.i = load i8, ptr %i.aw, align 1, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = phi i8 [ %.pre.i, %bb.h ], [ %i.au, %bb.g ]
  %.048.i = phi ptr [ %i.aw, %bb.h ], [ %.11717471132, %bb.g ] ; 3 uses
  %i.ay = sext i8 %i.ax to i32
  %memchr94.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ay, i64 11) ; 2 uses
  %.not7295.i = icmp eq ptr %memchr94.i, null
  br i1 %.not7295.i, label %select.unfold.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.l
  %memchr99.i = phi ptr [ %memchr.i, %bb.l ], [ %memchr94.i, %bb.i ]
  %.04298.i = phi i64 [ %i.bj, %bb.l ], [ 0, %bb.i ] ; 4 uses
  %.14997.i = phi ptr [ %i.bi, %bb.l ], [ %.048.i, %bb.i ] ; 4 uses
  %i.az = ptrtoint ptr %memchr99.i to i64
  %i.ba = trunc i64 %i.az to i32
  %i.bb = sub i32 %i.ba, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
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
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bl, i64 11) ; 2 uses
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
  br i1 %or.cond79.i, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit, label %bb.m

bb.m:                                             ; preds = %select.unfold.i
  %i.bp = sub nsw i64 0, %.2.ph.i
  %spec.select.i = select i1 %i.av, i64 %.2.ph.i, i64 %i.bp
  store i64 %spec.select.i, ptr %i.b, align 8, !tbaa !32
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit: ; preds = %select.unfold.i, %bb.m
  %.4.i = phi ptr [ null, %select.unfold.i ], [ %.351.ph.i, %bb.m ] ; 2 uses
  %.not296 = icmp ne ptr %.4.i, null
  %spec.select = select i1 %.not296, i1 true, i1 %.0177.ph787
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361, !llvm.loop !62

bb.n:                                             ; preds = %bb.ca
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.o:                                             ; preds = %bb.f
  %i.br = load i8, ptr %.11717471132, align 1, !tbaa !17 ; 2 uses
  %i.bs = icmp eq i8 %i.br, 45                    ; 3 uses
  br i1 %i.bs, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = sext i8 %i.br to i32
  %memchr95.i.jt2 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bt, i64 11) ; 2 uses
  %.not7396.i.jt2 = icmp eq ptr %memchr95.i.jt2, null
  br i1 %.not7396.i.jt2, label %select.unfold.i323, label %.lr.ph.i320.jt2

bb.q:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.11717471132, i64 1 ; 5 uses
  %.pre.i330 = load i8, ptr %i.bu, align 1, !tbaa !17
  %i.bv = sext i8 %.pre.i330 to i32
  %memchr95.i.jt1 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bv, i64 11) ; 2 uses
  %.not7396.i.jt1 = icmp eq ptr %memchr95.i.jt1, null
  br i1 %.not7396.i.jt1, label %select.unfold.i323, label %.lr.ph.i320.jt1

.lr.ph.i320.jt2:                                  ; preds = %bb.p
  %i.bw = ptrtoint ptr %memchr95.i.jt2 to i64
  %i.bx = trunc i64 %i.bw to i32
  %i.by = sub i32 %i.bx, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 9
  br i1 %i.bz, label %select.unfold.i323, label %.fold.split

.lr.ph.i320.jt1:                                  ; preds = %bb.q, %.fold.split
  %.048.i319927 = phi ptr [ %.11717471132, %.fold.split ], [ %i.bu, %bb.q ] ; 2 uses
  %memchr100.i.jt1 = phi ptr [ %memchr.i322, %.fold.split ], [ %memchr95.i.jt1, %bb.q ]
  %.04299.i.jt1 = phi i32 [ %i.ce, %.fold.split ], [ 0, %bb.q ] ; 2 uses
  %.14998.i.jt1 = phi ptr [ %i.cf, %.fold.split ], [ %i.bu, %bb.q ]
  %i.ca = ptrtoint ptr %memchr100.i.jt1 to i64
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = sub i32 %i.cb, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 9
  br i1 %i.cd, label %select.unfold.i323, label %.thread.a

.thread.a:                                        ; preds = %.lr.ph.i320.jt1
  %21 = mul nsw i32 %.04299.i.jt1, 10
  %22 = sub nsw i32 %21, %i.cc
  %23 = getelementptr inbounds nuw i8, ptr %.11717471132, i64 2
  br label %select.unfold.i323

.fold.split:                                      ; preds = %.lr.ph.i320.jt2
  %i.ce = sub nsw i32 0, %i.by                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.11717471132, i64 1 ; 3 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !17
  %i.ch = sext i8 %i.cg to i32
  %memchr.i322 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ch, i64 11) ; 2 uses
  %.not73.i = icmp eq ptr %memchr.i322, null
  br i1 %.not73.i, label %select.unfold.i323, label %.lr.ph.i320.jt1

select.unfold.i323:                               ; preds = %.fold.split, %.lr.ph.i320.jt1, %.lr.ph.i320.jt2, %.thread.a, %bb.p, %bb.q
  %.048.i319926 = phi ptr [ %.11717471132, %bb.p ], [ %i.bu, %bb.q ], [ %.048.i319927, %.lr.ph.i320.jt1 ], [ %.048.i319927, %.thread.a ], [ %.11717471132, %.lr.ph.i320.jt2 ], [ %.11717471132, %.fold.split ]
  %.351.ph.i324 = phi ptr [ %.11717471132, %bb.p ], [ %i.bu, %bb.q ], [ %.14998.i.jt1, %.lr.ph.i320.jt1 ], [ %23, %.thread.a ], [ %.11717471132, %.lr.ph.i320.jt2 ], [ %i.cf, %.fold.split ] ; 2 uses
  %.2.ph.i326 = phi i32 [ 0, %bb.p ], [ 0, %bb.q ], [ %.04299.i.jt1, %.lr.ph.i320.jt1 ], [ %22, %.thread.a ], [ 0, %.lr.ph.i320.jt2 ], [ %i.ce, %.fold.split ] ; 3 uses
  %.not1053 = icmp eq ptr %.351.ph.i324, %.048.i319926
  %i.ci = icmp eq i32 %.2.ph.i326, 0
  %or.cond5.not.i328 = select i1 %i.bs, i1 %i.ci, i1 false
  %or.cond80.i = select i1 %.not1053, i1 true, i1 %or.cond5.not.i328
  br i1 %or.cond80.i, label %.critedge, label %bb.r, !llvm.loop !62

bb.r:                                             ; preds = %select.unfold.i323
  %i.cj = sub nsw i32 0, %.2.ph.i326
  %spec.select.i329 = select i1 %i.bs, i32 %.2.ph.i326, i32 %i.cj ; 2 uses
  %i.ck = add i32 %spec.select.i329, -13
  %or.cond77.i = icmp ult i32 %i.ck, -12
  br i1 %or.cond77.i, label %.critedge, label %bb.s, !llvm.loop !62

bb.s:                                             ; preds = %bb.r
  %i.cl = add nsw i32 %spec.select.i329, -1
  store i32 %i.cl, ptr %i.l, align 16, !tbaa !24
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361, !llvm.loop !62

bb.t:                                             ; preds = %bb.f, %bb.f
  %i.cm = load i8, ptr %.11717471132, align 1, !tbaa !17 ; 2 uses
  %i.cn = icmp eq i8 %i.cm, 45                    ; 5 uses
  br i1 %i.cn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %.11717471132, i64 1 ; 2 uses
  %.pre.i360 = load i8, ptr %i.co, align 1, !tbaa !17
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cp = phi i8 [ %.pre.i360, %bb.u ], [ %i.cm, %bb.t ]
  %.048.i333 = phi ptr [ %i.co, %bb.u ], [ %.11717471132, %bb.t ] ; 5 uses
  %i.cq = sext i8 %i.cp to i32
  %memchr95.i334 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.cq, i64 11) ; 2 uses
  %.not7396.i335 = icmp eq ptr %memchr95.i334, null
  br i1 %.not7396.i335, label %select.unfold.i345, label %.lr.ph.i336.peel

.lr.ph.i336.peel:                                 ; preds = %bb.v
  %i.cr = ptrtoint ptr %memchr95.i334 to i64
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = sub i32 %i.cs, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.cu = icmp sgt i32 %i.ct, 9
  br i1 %i.cu, label %select.unfold.i345, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i336.peel
  %i.cv = sub nsw i32 0, %i.ct                    ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.048.i333, i64 1 ; 4 uses
  br i1 %i.cn, label %select.unfold.i345, label %.fold.split687.peel

.fold.split687.peel:                              ; preds = %bb.w
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !17
  %i.cy = sext i8 %i.cx to i32
  %memchr.i343.peel = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.cy, i64 11) ; 2 uses
  %.not73.i344.peel = icmp eq ptr %memchr.i343.peel, null
  br i1 %.not73.i344.peel, label %select.unfold.i345, label %.lr.ph.i336.preheader.peel.newph

.lr.ph.i336.preheader.peel.newph:                 ; preds = %.fold.split687.peel
  %i.cz = mul i32 %i.ct, -10                      ; 2 uses
  %i.da = ptrtoint ptr %memchr.i343.peel to i64
  %i.db = trunc i64 %i.da to i32
  %i.dc = sub i32 %i.db, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.dd = or disjoint i32 %i.dc, -2147483648
  %i.de = icmp sgt i32 %i.dc, 9                   ; 3 uses
  %i.df = icmp slt i32 %i.cz, %i.dd
  %brmerge = select i1 %i.de, i1 true, i1 %i.df
  %.mux = select i1 %i.de, i1 true, i1 false
  %.mux1345 = select i1 %i.de, i32 %i.cv, i32 -2147483640
  br i1 %brmerge, label %select.unfold.i345, label %select.unfold.i345.loopexit.loopexit.split.loop.exit1341

select.unfold.i345.loopexit.loopexit.split.loop.exit1341: ; preds = %.lr.ph.i336.preheader.peel.newph
  %i.dg = sub nsw i32 %i.cz, %i.dc
  %i.dh = getelementptr inbounds nuw i8, ptr %.048.i333, i64 2
  br label %select.unfold.i345

select.unfold.i345:                               ; preds = %.lr.ph.i336.preheader.peel.newph, %.lr.ph.i336.peel, %bb.w, %.fold.split687.peel, %select.unfold.i345.loopexit.loopexit.split.loop.exit1341, %bb.v
  %.351.ph.i346 = phi ptr [ %.048.i333, %bb.v ], [ %.048.i333, %.lr.ph.i336.peel ], [ %i.cw, %bb.w ], [ %i.cw, %.fold.split687.peel ], [ %i.cw, %.lr.ph.i336.preheader.peel.newph ], [ %i.dh, %select.unfold.i345.loopexit.loopexit.split.loop.exit1341 ] ; 2 uses
  %.247.ph.not.i347 = phi i1 [ true, %bb.v ], [ true, %.lr.ph.i336.peel ], [ true, %bb.w ], [ true, %.fold.split687.peel ], [ %.mux, %.lr.ph.i336.preheader.peel.newph ], [ true, %select.unfold.i345.loopexit.loopexit.split.loop.exit1341 ]
  %.2.ph.i348 = phi i32 [ 0, %bb.v ], [ 0, %.lr.ph.i336.peel ], [ %i.cv, %bb.w ], [ %i.cv, %.fold.split687.peel ], [ %.mux1345, %.lr.ph.i336.preheader.peel.newph ], [ %i.dg, %select.unfold.i345.loopexit.loopexit.split.loop.exit1341 ] ; 4 uses
  %i.di = icmp ne ptr %.351.ph.i346, %.048.i333
  %or.cond.not94.i349 = and i1 %i.di, %.247.ph.not.i347
  %i.dj = icmp ne i32 %.2.ph.i348, -2147483648
  %or.cond3.i350 = select i1 %i.cn, i1 true, i1 %i.dj
  %or.cond76.i351 = select i1 %or.cond.not94.i349, i1 %or.cond3.i350, i1 false
  %or.cond76.not.i352 = xor i1 %or.cond76.i351, true
  %i.dk = icmp eq i32 %.2.ph.i348, 0
  %or.cond5.not.i353 = select i1 %i.cn, i1 %i.dk, i1 false
  %or.cond80.i354 = select i1 %or.cond76.not.i352, i1 true, i1 %or.cond5.not.i353
  br i1 %or.cond80.i354, label %.critedge, label %bb.x, !llvm.loop !62

bb.x:                                             ; preds = %select.unfold.i345
  %i.dl = sub nsw i32 0, %.2.ph.i348
  %spec.select.i355 = select i1 %i.cn, i32 %.2.ph.i348, i32 %i.dl ; 2 uses
  %i.dm = add i32 %spec.select.i355, -32
  %or.cond77.i358 = icmp ult i32 %i.dm, -31
  br i1 %or.cond77.i358, label %.critedge, label %bb.y, !llvm.loop !62

bb.y:                                             ; preds = %bb.x
  store i32 %spec.select.i355, ptr %i.m, align 4, !tbaa !21
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361, !llvm.loop !62

bb.z:                                             ; preds = %bb.f
  %i.dn = load i8, ptr %.11717471132, align 1, !tbaa !17 ; 2 uses
  %i.do = icmp eq i8 %i.dn, 45                    ; 4 uses
  br i1 %i.do, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dp = getelementptr inbounds nuw i8, ptr %.11717471132, i64 1 ; 2 uses
  %.pre.i391 = load i8, ptr %i.dp, align 1, !tbaa !17
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dq = phi i8 [ %.pre.i391, %bb.aa ], [ %i.dn, %bb.z ]
  %.048.i364 = phi ptr [ %i.dp, %bb.aa ], [ %.11717471132, %bb.z ] ; 3 uses
  %i.dr = sext i8 %i.dq to i32
  %memchr95.i365 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.dr, i64 11) ; 2 uses
  %.not7396.i366 = icmp eq ptr %memchr95.i365, null
  br i1 %.not7396.i366, label %select.unfold.i376, label %.lr.ph.i367

.lr.ph.i367:                                      ; preds = %bb.ab, %bb.ae
  %memchr100.i368 = phi ptr [ %memchr.i374, %bb.ae ], [ %memchr95.i365, %bb.ab ]
  %.04299.i369 = phi i32 [ %i.ea, %bb.ae ], [ 0, %bb.ab ] ; 4 uses
  %.14998.i370 = phi ptr [ %i.eb, %bb.ae ], [ %.048.i364, %bb.ab ] ; 4 uses
  %i.ds = ptrtoint ptr %memchr100.i368 to i64
  %i.dt = trunc i64 %i.ds to i32
  %i.du = sub i32 %i.dt, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.dv = icmp sgt i32 %i.du, 9
  br i1 %i.dv, label %select.unfold.i376, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i367
  %i.dw = icmp slt i32 %.04299.i369, -214748364
  br i1 %i.dw, label %select.unfold.i376, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dx = mul nsw i32 %.04299.i369, 10            ; 2 uses
  %i.dy = or disjoint i32 %i.du, -2147483648
  %i.dz = icmp slt i32 %i.dx, %i.dy
  br i1 %i.dz, label %select.unfold.i376, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ea = sub nsw i32 %i.dx, %i.du                ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.14998.i370, i64 1 ; 3 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !17
  %i.ed = sext i8 %i.ec to i32
  %memchr.i374 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ed, i64 11) ; 2 uses
  %.not73.i375 = icmp eq ptr %memchr.i374, null
  br i1 %.not73.i375, label %select.unfold.i376, label %.lr.ph.i367

select.unfold.i376:                               ; preds = %bb.ae, %bb.ad, %bb.ac, %.lr.ph.i367, %bb.ab
  %.351.ph.i377 = phi ptr [ %.048.i364, %bb.ab ], [ %i.eb, %bb.ae ], [ %.14998.i370, %.lr.ph.i367 ], [ %.14998.i370, %bb.ac ], [ %.14998.i370, %bb.ad ] ; 2 uses
  %.247.ph.not.i378 = phi i1 [ true, %bb.ab ], [ true, %bb.ae ], [ true, %.lr.ph.i367 ], [ false, %bb.ac ], [ false, %bb.ad ]
  %.2.ph.i379 = phi i32 [ 0, %bb.ab ], [ %i.ea, %bb.ae ], [ %.04299.i369, %.lr.ph.i367 ], [ %.04299.i369, %bb.ac ], [ -2147483640, %bb.ad ] ; 4 uses
  %i.ee = icmp ne ptr %.351.ph.i377, %.048.i364
  %or.cond.not94.i380 = and i1 %i.ee, %.247.ph.not.i378
  %i.ef = icmp ne i32 %.2.ph.i379, -2147483648
  %or.cond3.i381 = select i1 %i.do, i1 true, i1 %i.ef
  %or.cond76.i382 = select i1 %or.cond.not94.i380, i1 %or.cond3.i381, i1 false
  %or.cond76.not.i383 = xor i1 %or.cond76.i382, true
  %i.eg = icmp eq i32 %.2.ph.i379, 0
  %or.cond5.not.i384 = select i1 %i.do, i1 %i.eg, i1 false
  %or.cond80.i385 = select i1 %or.cond76.not.i383, i1 true, i1 %or.cond5.not.i384
  br i1 %or.cond80.i385, label %.critedge, label %bb.af, !llvm.loop !62

bb.af:                                            ; preds = %select.unfold.i376
  %i.eh = sub nsw i32 0, %.2.ph.i379
  %spec.select.i386 = select i1 %i.do, i32 %.2.ph.i379, i32 %i.eh ; 2 uses
  %or.cond77.i389 = icmp ugt i32 %spec.select.i386, 53
  br i1 %or.cond77.i389, label %.critedge, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit361, !llvm.loop !62

bb.ag:                                            ; preds = %bb.f
  %i.ei = load i8, ptr %.11717471132, align 1, !tbaa !17 ; 2 uses
  %i.ej = icmp eq i8 %i.ei, 45                    ; 4 uses
  br i1 %i.ej, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ek = getelementptr inbounds nuw i8, ptr %.11717471132, i64 1 ; 2 uses
  %.pre.i422 = load i8, ptr %i.ek, align 1, !tbaa !17
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.el = phi i8 [ %.pre.i422, %bb.ah ], [ %i.ei, %bb.ag ]
  %.048.i395 = phi ptr [ %i.ek, %bb.ah ], [ %.11717471132, %bb.ag ] ; 3 uses
  %i.em = sext i8 %i.el to i32
  %memchr95.i396 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.em, i64 11) ; 2 uses
  %.not7396.i397 = icmp eq ptr %memchr95.i396, null
  br i1 %.not7396.i397, label %select.unfold.i407, label %.lr.ph.i398

.lr.ph.i398:                                      ; preds = %bb.ai, %bb.al
  %memchr100.i399 = phi ptr [ %memchr.i405, %bb.al ], [ %memchr95.i396, %bb.ai ]
  %.04299.i400 = phi i32 [ %i.ev, %bb.al ], [ 0, %bb.ai ] ; 4 uses
  %.14998.i401 = phi ptr [ %i.ew, %bb.al ], [ %.048.i395, %bb.ai ] ; 4 uses
  %i.en = ptrtoint ptr %memchr100.i399 to i64
  %i.eo = trunc i64 %i.en to i32
  %i.ep = sub i32 %i.eo, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.eq = icmp sgt i32 %i.ep, 9
  br i1 %i.eq, label %select.unfold.i407, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i398
  %i.er = icmp slt i32 %.04299.i400, -214748364
  br i1 %i.er, label %select.unfold.i407, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.es = mul nsw i32 %.04299.i400, 10            ; 2 uses
  %i.et = or disjoint i32 %i.ep, -2147483648
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %select.unfold.i407, label %bb.al
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_:bb.a

bb.ft:                                            ; preds = %bb.fr, %bb.fq
  %.pn268 = phi { ptr, i32 } [ %i.wa, %bb.fr ], [ %i.vz, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.fv

.critedge315:                                     ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.fu

bb.fu:                                            ; preds = %bb.fc, %.thread684, %.critedge315
  store i64 %i.vr, ptr %3, align 8, !tbaa !32
  %i.wb = load i64, ptr %7, align 8, !tbaa !32
  store i64 %i.wb, ptr %4, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit641

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit641: ; preds = %bb.fu, %bb.fk, %bb.fs, %bb.et, %bb.ez, %bb.fa, %bb.es
  %.4 = phi i1 [ false, %bb.et ], [ false, %bb.es ], [ false, %bb.ez ], [ false, %bb.fa ], [ true, %bb.fu ], [ false, %bb.fs ], [ false, %bb.fk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit639

bb.fv:                                            ; preds = %bb.fh, %bb.fl, %bb.ft, %bb.eu
  %.pn273 = phi { ptr, i32 } [ %i.ut, %bb.eu ], [ %.pn268, %bb.ft ], [ %i.vu, %bb.fh ], [ %.pn, %bb.fl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.fw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit639: ; preds = %bb.ep, %bb.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit641
  %.5 = phi i1 [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit641 ], [ false, %bb.eo ], [ false, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.fw:                                            ; preds = %bb.fv, %bb.ed
  %.pn273.pn = phi { ptr, i32 } [ %.pn273, %bb.fv ], [ %i.qr, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.fx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %.invoke, %bb.du, %.thread996, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit639, %bb.dw
  %.6 = phi i1 [ %.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit639 ], [ false, %.thread996 ], [ true, %bb.dw ], [ false, %bb.du ], [ false, %.invoke ]
  %i.wc = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.wd = icmp eq ptr %i.wc, %i.q
  br i1 %i.wd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit646, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i644

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i644: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.we = load i64, ptr %i.q, align 8, !tbaa !17
  %i.wf = add i64 %i.we, 1
  call void @_ZdlPvm(ptr noundef %i.wc, i64 noundef %i.wf) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit646

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit646: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i644
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i1 %.6

bb.fx:                                            ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633, %bb.fw, %bb.ds
  %.pn297.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn273.pn, %bb.fw ], [ %i.qa, %bb.ds ], [ %i.bq, %bb.n ], [ %.pn297.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633 ]
  %i.wg = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.wh = icmp eq ptr %i.wg, %i.q
  br i1 %i.wh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit649, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i647

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i647: ; preds = %bb.fx
  %i.wi = load i64, ptr %i.q, align 8, !tbaa !17
  %i.wj = add i64 %i.wi, 1
  call void @_ZdlPvm(ptr noundef %i.wg, i64 noundef %i.wj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit649

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit649: ; preds = %bb.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i647
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
define internal fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_(ptr nofree noundef nonnull readonly captures(address, ret: address, provenance) %0, i32 noundef range(i32 0, 5) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #4 {
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
  %memchr94 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.g, i64 11) ; 2 uses
  %.not7295 = icmp eq ptr %memchr94, null
  br i1 %.not7295, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.j
  %memchr99 = phi ptr [ %memchr, %bb.j ], [ %memchr94, %bb.e ]
  %.04298 = phi i64 [ %i.q, %bb.j ], [ 0, %bb.e ] ; 4 uses
  %.14997 = phi ptr [ %i.r, %bb.j ], [ %.048, %bb.e ] ; 4 uses
  %.25496 = phi i32 [ %.557, %bb.j ], [ %.153, %bb.e ] ; 2 uses
  %i.h = ptrtoint ptr %memchr99 to i64
  %i.i = trunc i64 %i.h to i32
  %i.j = sub i32 %i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
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
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.w, i64 11) ; 2 uses
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
  store i64 %spec.select, ptr %4, align 8, !tbaa !32
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.l, %bb.k, %select.unfold
  %.4 = phi ptr [ null, %select.unfold ], [ %.351.ph, %bb.l ], [ null, %bb.k ], [ null, %bb.c ]
  ret ptr %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_111ParseOffsetEPKcS6_Pi(ptr noundef nonnull %0, i8 %.0.val, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #7 {
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
  %i.e = icmp eq i8 %i.d, 45                      ; 4 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.pre.i = load i8, ptr %i.f, align 1, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i8 [ %.pre.i, %bb.c ], [ %i.d, %bb.b ]
  %.048.i = phi ptr [ %i.f, %bb.c ], [ %i.a, %bb.b ] ; 5 uses
  %i.h = sext i8 %i.g to i32
  %memchr95.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.h, i64 11) ; 2 uses
  %.not7396.i = icmp eq ptr %memchr95.i, null
  br i1 %.not7396.i, label %select.unfold.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.i = ptrtoint ptr %memchr95.i to i64
  %i.j = trunc i64 %i.i to i32
  %i.k = sub i32 %i.j, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.l = icmp sgt i32 %i.k, 9
  br i1 %i.l, label %select.unfold.i, label %bb.e

.lr.ph.i.jt1:                                     ; preds = %.fold.split
  %i.m = ptrtoint ptr %memchr.i to i64
  %i.n = trunc i64 %i.m to i32
  %i.o = sub i32 %i.n, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %i.p = icmp sgt i32 %i.o, 9
  br i1 %i.p, label %select.unfold.i, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.q = sub nsw i32 0, %i.k                      ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.048.i, i64 1 ; 4 uses
  br i1 %i.e, label %select.unfold.i, label %.fold.split

bb.f:                                             ; preds = %.lr.ph.i.jt1
  %2 = mul i32 %i.k, -10
  %i.s = sub nsw i32 %2, %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %.048.i, i64 2
  br label %select.unfold.i

.fold.split:                                      ; preds = %bb.e
  %i.u = load i8, ptr %i.r, align 1, !tbaa !17
  %i.v = sext i8 %i.u to i32
  %memchr.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.v, i64 11) ; 2 uses
  %.not73.i = icmp eq ptr %memchr.i, null
  br i1 %.not73.i, label %select.unfold.i, label %.lr.ph.i.jt1

select.unfold.i:                                  ; preds = %bb.e, %.fold.split, %.lr.ph.i, %.lr.ph.i.jt1, %bb.f, %bb.d
  %.351.ph.i = phi ptr [ %.048.i, %bb.d ], [ %i.r, %bb.e ], [ %i.t, %bb.f ], [ %.048.i, %.lr.ph.i ], [ %i.r, %.fold.split ], [ %i.r, %.lr.ph.i.jt1 ] ; 8 uses
  %.2.ph.i = phi i32 [ 0, %bb.d ], [ %i.q, %bb.e ], [ %i.s, %bb.f ], [ 0, %.lr.ph.i ], [ %i.q, %.fold.split ], [ %i.q, %.lr.ph.i.jt1 ] ; 3 uses
  %.not = icmp eq ptr %.351.ph.i, %.048.i
  %i.w = icmp eq i32 %.2.ph.i, 0
  %or.cond5.not.i = select i1 %i.e, i1 %i.w, i1 false
  %or.cond80.i = select i1 %.not, i1 true, i1 %or.cond5.not.i
  br i1 %or.cond80.i, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit.thread, label %bb.g

bb.g:                                             ; preds = %select.unfold.i
  %i.x = sub nsw i32 0, %.2.ph.i
  %spec.select.i = select i1 %i.e, i32 %.2.ph.i, i32 %i.x ; 2 uses
  %or.cond77.i = icmp ult i32 %spec.select.i, 24
  %i.y = ptrtoint ptr %.351.ph.i to i64
  %i.z = ptrtoint ptr %i.a to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp eq i64 %i.aa, 2
  %or.cond = select i1 %or.cond77.i, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.h, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit.thread

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
  %memchr95.i69 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ai, i64 11) ; 2 uses
  %.not7396.i70 = icmp eq ptr %memchr95.i69, null
  br i1 %.not7396.i70, label %select.unfold.i80, label %.lr.ph.i71.peel

.lr.ph.i71.peel:                                  ; preds = %bb.l
  %i.aj = ptrtoint ptr %memchr95.i69 to i64
  %i.ak = trunc i64 %i.aj to i32
  %i.al = sub i32 %i.ak, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.am = icmp sgt i32 %i.al, 9
  br i1 %i.am, label %select.unfold.i80, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i71.peel
  %i.an = sub nsw i32 0, %i.al                    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.048.i68, i64 1 ; 4 uses
  br i1 %i.af, label %select.unfold.i80, label %.fold.split16.peel

.fold.split16.peel:                               ; preds = %bb.m
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !17
  %i.aq = sext i8 %i.ap to i32
  %memchr.i78.peel = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.aq, i64 11) ; 2 uses
  %.not73.i79.peel = icmp eq ptr %memchr.i78.peel, null
  br i1 %.not73.i79.peel, label %select.unfold.i80, label %.lr.ph.i71.preheader.peel.newph

.lr.ph.i71.preheader.peel.newph:                  ; preds = %.fold.split16.peel
  %i.ar = mul i32 %i.al, -10                      ; 2 uses
  %i.as = ptrtoint ptr %memchr.i78.peel to i64
  %i.at = trunc i64 %i.as to i32
  %i.au = sub i32 %i.at, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
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
  br i1 %or.cond80.i89, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96.thread, label %bb.n

bb.n:                                             ; preds = %select.unfold.i80
  %i.bd = sub nsw i32 0, %.2.ph.i83
  %spec.select.i90 = select i1 %i.af, i32 %.2.ph.i83, i32 %i.bd ; 3 uses
  %or.cond77.i93 = icmp ugt i32 %spec.select.i90, 59
  br i1 %or.cond77.i93, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96.thread, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96: ; preds = %bb.n
  %i.be = ptrtoint ptr %.351.ph.i81 to i64
  %i.bf = ptrtoint ptr %.040 to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = icmp eq i64 %i.bg, 2
  br i1 %i.bh, label %bb.o, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96.thread

bb.o:                                             ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96
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
  %memchr95.i100 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bo, i64 11) ; 2 uses
  %.not7396.i101 = icmp eq ptr %memchr95.i100, null
  br i1 %.not7396.i101, label %select.unfold.i111, label %.lr.ph.i102.peel

.lr.ph.i102.peel:                                 ; preds = %bb.s
  %i.bp = ptrtoint ptr %memchr95.i100 to i64
  %i.bq = trunc i64 %i.bp to i32
  %i.br = sub i32 %i.bq, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.bs = icmp sgt i32 %i.br, 9
  br i1 %i.bs, label %select.unfold.i111, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i102.peel
  %i.bt = sub nsw i32 0, %i.br                    ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.048.i99, i64 1 ; 4 uses
  br i1 %i.bl, label %select.unfold.i111, label %.fold.split17.peel

.fold.split17.peel:                               ; preds = %bb.t
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !17
  %i.bw = sext i8 %i.bv to i32
  %memchr.i109.peel = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bw, i64 11) ; 2 uses
  %.not73.i110.peel = icmp eq ptr %memchr.i109.peel, null
  br i1 %.not73.i110.peel, label %select.unfold.i111, label %.lr.ph.i102.preheader.peel.newph

.lr.ph.i102.preheader.peel.newph:                 ; preds = %.fold.split17.peel
  %i.bx = mul i32 %i.br, -10                      ; 2 uses
  %i.by = ptrtoint ptr %memchr.i109.peel to i64
  %i.bz = trunc i64 %i.by to i32
  %i.ca = sub i32 %i.bz, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
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
  br i1 %or.cond80.i120, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit127, label %bb.u

bb.u:                                             ; preds = %select.unfold.i111
  %i.cj = sub nsw i32 0, %.2.ph.i114
  %spec.select.i121 = select i1 %i.bl, i32 %.2.ph.i114, i32 %i.cj ; 2 uses
  %or.cond77.i124 = icmp ugt i32 %spec.select.i121, 59 ; 2 uses
  %spec.select18 = select i1 %or.cond77.i124, i32 0, i32 %spec.select.i121
  %spec.select19 = select i1 %or.cond77.i124, ptr null, ptr %.351.ph.i112
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit127

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit127: ; preds = %bb.u, %select.unfold.i111
  %.03 = phi i32 [ %spec.select18, %bb.u ], [ 0, %select.unfold.i111 ]
  %.5.i125 = phi ptr [ %spec.select19, %bb.u ], [ null, %select.unfold.i111 ] ; 3 uses
end_hunk_1
