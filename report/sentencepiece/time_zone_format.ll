Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/time_zone_format?download=true
inline.NumInlined: 515
inline.NumDeleted: 152
begin_hunk_0_@_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_(ptr nofree noundef readonly captures(address, ret: address, provenance) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 6, 1025) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %.not70 = icmp eq ptr %0, null
  br i1 %.not70, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !18      ; 2 uses
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
  %.pre = load i8, ptr %i.c, align 1, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.d = phi i8 [ %.pre, %bb.d ], [ %i.a, %bb.b ]
  %.153 = phi i32 [ %.052, %bb.d ], [ %1, %bb.b ]
  %.048 = phi ptr [ %i.c, %bb.d ], [ %0, %bb.b ]  ; 3 uses
  %i.e = sext i8 %i.d to i32
  %memchr95 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.e, i64 11) ; 2 uses
  %.not7396 = icmp eq ptr %memchr95, null
  br i1 %.not7396, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.i
  %memchr100 = phi ptr [ %memchr, %bb.i ], [ %memchr95, %bb.e ]
  %.04299 = phi i32 [ %i.n, %bb.i ], [ 0, %bb.e ] ; 4 uses
  %.14998 = phi ptr [ %i.o, %bb.i ], [ %.048, %bb.e ] ; 4 uses
  %.25497 = phi i32 [ %.557, %bb.i ], [ %.153, %bb.e ] ; 2 uses
  %i.f = ptrtoint ptr %memchr100 to i64
  %i.g = trunc i64 %i.f to i32
  %i.h = sub i32 %i.g, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
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
  %i.p = load i8, ptr %i.o, align 1, !tbaa !18
  %i.q = sext i8 %i.p to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.q, i64 11) ; 2 uses
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
  store i32 %spec.select, ptr %4, align 4, !tbaa !22
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.k, %bb.j, %select.unfold, %bb.a
  %.5 = phi ptr [ null, %bb.a ], [ null, %select.unfold ], [ %.351.ph, %bb.k ], [ null, %bb.j ], [ null, %bb.c ]
  ret ptr %.5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_2026052613time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 10 uses
  %6 = alloca %struct.tm, align 16                ; 19 uses
  %7 = alloca %"class.std::chrono::duration.1", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %struct.tm, align 8                ; 6 uses
  %12 = alloca %"class.absl::lts_20260526::time_internal::cctz::time_zone", align 8 ; 7 uses
  %13 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 12 uses
  %14 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 7 uses
  %15 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 7 uses
  %16 = alloca %"struct.absl::lts_20260526::time_internal::cctz::time_zone::civil_lookup", align 8 ; 5 uses
  %17 = alloca %"struct.absl::lts_20260526::time_internal::cctz::time_zone::absolute_lookup", align 8 ; 6 uses
  %18 = alloca %"class.std::chrono::time_point", align 8 ; 5 uses
  %19 = alloca %"struct.absl::lts_20260526::time_internal::cctz::time_zone::absolute_lookup", align 8 ; 6 uses
  %20 = alloca %"class.std::chrono::time_point", align 8 ; 5 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !31     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !17
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0192 = phi ptr [ %i.e, %bb.a ], [ %i.k, %bb.b ] ; 4 uses
  %i.h = load i8, ptr %.0192, align 1, !tbaa !18
  %i.i = sext i8 %i.h to i32
  %i.j = tail call i32 @isspace(i32 noundef %i.i) #21
  %.not = icmp eq i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %.0192, i64 1
  br i1 %.not, label %._crit_edge.i.i, label %bb.b, !llvm.loop !60

._crit_edge.i.i:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 1970, ptr %i.b, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %6, align 16, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store <4 x i32> <i32 0, i32 70, i32 4, i32 0>, ptr %i.o, align 16, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i64 0, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 0, ptr %i.c, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store ptr %i.t, ptr %8, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.t, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i64 3, ptr %i.u, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 19
  store i8 0, ptr %i.v, align 1, !tbaa !18
  %i.w = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !17   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y ; 3 uses
  %.not1024 = icmp samesign eq i64 %i.y, 0
  br i1 %.not1024, label %.preheader.preheader, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %._crit_edge.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 17
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397
  %.1193.ph1014 = phi ptr [ %.0192, %.lr.ph.lr.ph ], [ %.15, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397 ]
  %.0199.ph1011 = phi i1 [ false, %.lr.ph.lr.ph ], [ %.4203, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397 ] ; 44 uses
  %.0207.ph1010 = phi i1 [ false, %.lr.ph.lr.ph ], [ %.2209, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397 ] ; 51 uses
  %.0210.ph1009 = phi i32 [ 6, %.lr.ph.lr.ph ], [ %.1211, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397 ] ; 47 uses
  %.0212.ph1008 = phi i1 [ false, %.lr.ph.lr.ph ], [ %.2214, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397 ] ; 52 uses
  %.0215.ph1007 = phi i1 [ false, %.lr.ph.lr.ph ], [ %.6221, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397 ] ; 55 uses
  %.0222.ph1006 = phi ptr [ %i.w, %.lr.ph.lr.ph ], [ %.7229, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397 ]
  %.0252.ph1004 = phi i1 [ false, %.lr.ph.lr.ph ], [ %.4256, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397 ] ; 51 uses
  %.0.ph1003 = phi i32 [ -1, %.lr.ph.lr.ph ], [ %.1, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397 ] ; 37 uses
  %.0877.ph1002 = phi i64 [ 0, %.lr.ph.lr.ph ], [ %.1878, %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397 ] ; 51 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.backedge
  %.1193984 = phi ptr [ %.1193.ph1014, %.lr.ph ], [ %.1193.be, %.backedge ] ; 73 uses
  %.0222983 = phi ptr [ %.0222.ph1006, %.lr.ph ], [ %.0222.be, %.backedge ] ; 20 uses
  %i.ag = load i8, ptr %.0222983, align 1, !tbaa !18 ; 3 uses
  %i.ah = sext i8 %i.ag to i32
  %i.ai = call i32 @isspace(i32 noundef %i.ah) #21
  %.not307 = icmp eq i32 %i.ai, 0
  br i1 %.not307, label %bb.d, label %.preheader948

.preheader948:                                    ; preds = %bb.c, %.preheader948
  %.2194 = phi ptr [ %i.am, %.preheader948 ], [ %.1193984, %bb.c ] ; 3 uses
  %i.aj = load i8, ptr %.2194, align 1, !tbaa !18
  %i.ak = sext i8 %i.aj to i32
  %i.al = call i32 @isspace(i32 noundef %i.ak) #21
  %.not338 = icmp eq i32 %i.al, 0
  %i.am = getelementptr inbounds nuw i8, ptr %.2194, i64 1
  br i1 %.not338, label %.preheader947, label %.preheader948, !llvm.loop !61

.preheader947:                                    ; preds = %.preheader948, %.preheader947
  %.1223 = phi ptr [ %i.an, %.preheader947 ], [ %.0222983, %.preheader948 ]
  %i.an = getelementptr inbounds nuw i8, ptr %.1223, i64 1 ; 3 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !18
  %i.ap = sext i8 %i.ao to i32
  %i.aq = call i32 @isspace(i32 noundef %i.ap) #21
  %.not339 = icmp eq i32 %i.aq, 0
  br i1 %.not339, label %.backedge, label %.preheader947, !llvm.loop !62

.backedge:                                        ; preds = %.preheader947, %bb.g
  %.0222.be = phi ptr [ %i.au, %bb.g ], [ %i.an, %.preheader947 ] ; 2 uses
  %.1193.be = phi ptr [ %i.at, %bb.g ], [ %.2194, %.preheader947 ] ; 2 uses
  %.not1317 = icmp eq ptr %.0222.be, %i.z
  br i1 %.not1317, label %.outer._crit_edge, label %bb.c, !llvm.loop !63

bb.d:                                             ; preds = %bb.c
  %.not308 = icmp eq i8 %i.ag, 37
  br i1 %.not308, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not337 = icmp eq ptr %.1193984, %i.l
  br i1 %.not337, label %.outer._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load i8, ptr %.1193984, align 1, !tbaa !18
  %i.as = icmp eq i8 %i.ar, %i.ag
  br i1 %i.as, label %bb.g, label %.outer._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %.1193984, i64 1
  %i.au = getelementptr inbounds nuw i8, ptr %.0222983, i64 1
  br label %.backedge

bb.h:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %.0222983, i64 1 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.z
  br i1 %i.aw, label %.outer._crit_edge, label %bb.i, !llvm.loop !63

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %.0222983, i64 2 ; 33 uses
  %i.ay = load i8, ptr %i.av, align 1, !tbaa !18
  switch i8 %i.ay, label %bb.ez [
    i8 0, label %.outer._crit_edge
    i8 89, label %bb.j
    i8 109, label %bb.r
    i8 100, label %bb.w
    i8 101, label %bb.w
    i8 70, label %bb.ac
    i8 85, label %bb.av
    i8 87, label %bb.bc
    i8 117, label %bb.bj
    i8 119, label %bb.br
    i8 72, label %bb.bz
    i8 77, label %bb.cf
    i8 83, label %bb.cl
    i8 84, label %bb.cr
    i8 73, label %bb.dj
    i8 108, label %bb.dj
    i8 114, label %bb.dj
    i8 82, label %bb.dk
    i8 99, label %bb.dk
    i8 88, label %bb.dk
    i8 122, label %bb.dl
    i8 90, label %bb.dm
    i8 115, label %bb.dp
    i8 58, label %bb.dv
    i8 37, label %bb.eb
    i8 69, label %bb.ec
    i8 79, label %bb.ey
  ], !llvm.loop !63

bb.j:                                             ; preds = %bb.i
  %i.az = load i8, ptr %.1193984, align 1, !tbaa !18 ; 2 uses
  %i.ba = icmp eq i8 %i.az, 45                    ; 4 uses
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.1193984, i64 1 ; 2 uses
  %.pre.i = load i8, ptr %i.bb, align 1, !tbaa !18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bc = phi i8 [ %.pre.i, %bb.k ], [ %i.az, %bb.j ]
  %.048.i = phi ptr [ %i.bb, %bb.k ], [ %.1193984, %bb.j ] ; 3 uses
  %i.bd = sext i8 %i.bc to i32
  %memchr94.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bd, i64 11) ; 2 uses
  %.not7295.i = icmp eq ptr %memchr94.i, null
  br i1 %.not7295.i, label %select.unfold.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.o
  %memchr99.i = phi ptr [ %memchr.i, %bb.o ], [ %memchr94.i, %bb.l ]
  %.04298.i = phi i64 [ %i.bo, %bb.o ], [ 0, %bb.l ] ; 4 uses
  %.14997.i = phi ptr [ %i.bn, %bb.o ], [ %.048.i, %bb.l ] ; 4 uses
  %i.be = ptrtoint ptr %memchr99.i to i64
  %i.bf = trunc i64 %i.be to i32
  %i.bg = sub i32 %i.bf, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 9
  br i1 %i.bh, label %select.unfold.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.bi = icmp slt i64 %.04298.i, -922337203685477580
  br i1 %i.bi, label %select.unfold.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = mul nsw i64 %.04298.i, 10               ; 2 uses
  %i.bk = sext i32 %i.bg to i64                   ; 2 uses
  %i.bl = or disjoint i64 %i.bk, -9223372036854775808
  %i.bm = icmp slt i64 %i.bj, %i.bl
  br i1 %i.bm, label %select.unfold.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %.14997.i, i64 1 ; 3 uses
  %i.bo = sub nsw i64 %i.bj, %i.bk                ; 2 uses
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !18
  %i.bq = sext i8 %i.bp to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bq, i64 11) ; 2 uses
  %.not72.i = icmp eq ptr %memchr.i, null
  br i1 %.not72.i, label %select.unfold.i, label %.lr.ph.i

select.unfold.i:                                  ; preds = %bb.o, %bb.n, %bb.m, %.lr.ph.i, %bb.l
  %.351.ph.i = phi ptr [ %.048.i, %bb.l ], [ %i.bn, %bb.o ], [ %.14997.i, %.lr.ph.i ], [ %.14997.i, %bb.m ], [ %.14997.i, %bb.n ] ; 2 uses
  %.247.ph.not.i = phi i1 [ true, %bb.l ], [ true, %bb.o ], [ true, %.lr.ph.i ], [ false, %bb.m ], [ false, %bb.n ]
  %.2.ph.i = phi i64 [ 0, %bb.l ], [ %i.bo, %bb.o ], [ %.04298.i, %.lr.ph.i ], [ %.04298.i, %bb.m ], [ -9223372036854775800, %bb.n ] ; 4 uses
  %i.br = icmp ne ptr %.351.ph.i, %.048.i
  %or.cond.not93.i = and i1 %i.br, %.247.ph.not.i
  %i.bs = icmp ne i64 %.2.ph.i, -9223372036854775808
  %or.cond3.i = select i1 %i.ba, i1 true, i1 %i.bs
  %or.cond75.i = select i1 %or.cond.not93.i, i1 %or.cond3.i, i1 false
  %or.cond75.not.i = xor i1 %or.cond75.i, true
  %i.bt = icmp eq i64 %.2.ph.i, 0
  %or.cond5.not.i = select i1 %i.ba, i1 %i.bt, i1 false
  %or.cond79.i = select i1 %or.cond75.not.i, i1 true, i1 %or.cond5.not.i
  br i1 %or.cond79.i, label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit, label %bb.p

bb.p:                                             ; preds = %select.unfold.i
  %i.bu = sub nsw i64 0, %.2.ph.i
  %spec.select.i = select i1 %i.ba, i64 %.2.ph.i, i64 %i.bu
  store i64 %spec.select.i, ptr %i.b, align 8, !tbaa !32
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_.exit: ; preds = %select.unfold.i, %bb.p
  %.4.i = phi ptr [ null, %select.unfold.i ], [ %.351.ph.i, %bb.p ] ; 2 uses
  %.not329 = icmp ne ptr %.4.i, null
  %spec.select = select i1 %.not329, i1 true, i1 %.0199.ph1011
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397, !llvm.loop !63

bb.q:                                             ; preds = %bb.do
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

bb.r:                                             ; preds = %bb.i
  %i.bw = load i8, ptr %.1193984, align 1, !tbaa !18 ; 2 uses
  %i.bx = icmp eq i8 %i.bw, 45                    ; 3 uses
  br i1 %i.bx, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = sext i8 %i.bw to i32
  %memchr95.i.jt2 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.by, i64 11) ; 2 uses
  %.not7396.i.jt2 = icmp eq ptr %memchr95.i.jt2, null
  br i1 %.not7396.i.jt2, label %select.unfold.i359, label %.lr.ph.i356.jt2

bb.t:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %.1193984, i64 1 ; 5 uses
  %.pre.i366 = load i8, ptr %i.bz, align 1, !tbaa !18
  %i.ca = sext i8 %.pre.i366 to i32
  %memchr95.i.jt1 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ca, i64 11) ; 2 uses
  %.not7396.i.jt1 = icmp eq ptr %memchr95.i.jt1, null
  br i1 %.not7396.i.jt1, label %select.unfold.i359, label %.lr.ph.i356.jt1

.lr.ph.i356.jt2:                                  ; preds = %bb.s
  %i.cb = ptrtoint ptr %memchr95.i.jt2 to i64
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = sub i32 %i.cc, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, 9
  br i1 %i.ce, label %select.unfold.i359, label %.fold.split

.lr.ph.i356.jt1:                                  ; preds = %bb.t, %.fold.split
  %.048.i3551164 = phi ptr [ %.1193984, %.fold.split ], [ %i.bz, %bb.t ] ; 2 uses
  %memchr100.i.jt1 = phi ptr [ %memchr.i358, %.fold.split ], [ %memchr95.i.jt1, %bb.t ]
  %.04299.i.jt1 = phi i32 [ %i.cj, %.fold.split ], [ 0, %bb.t ] ; 2 uses
  %.14998.i.jt1 = phi ptr [ %i.ck, %.fold.split ], [ %i.bz, %bb.t ]
  %i.cf = ptrtoint ptr %memchr100.i.jt1 to i64
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = sub i32 %i.cg, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, 9
  br i1 %i.ci, label %select.unfold.i359, label %.thread

.thread:                                          ; preds = %.lr.ph.i356.jt1
  %21 = mul nsw i32 %.04299.i.jt1, 10
  %22 = sub nsw i32 %21, %i.ch
  %23 = getelementptr inbounds nuw i8, ptr %.1193984, i64 2
  br label %select.unfold.i359

.fold.split:                                      ; preds = %.lr.ph.i356.jt2
  %i.cj = sub nsw i32 0, %i.cd                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.1193984, i64 1 ; 3 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !18
  %i.cm = sext i8 %i.cl to i32
  %memchr.i358 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.cm, i64 11) ; 2 uses
  %.not73.i = icmp eq ptr %memchr.i358, null
  br i1 %.not73.i, label %select.unfold.i359, label %.lr.ph.i356.jt1

select.unfold.i359:                               ; preds = %.fold.split, %.lr.ph.i356.jt1, %.lr.ph.i356.jt2, %.thread, %bb.s, %bb.t
  %.048.i3551163 = phi ptr [ %.1193984, %bb.s ], [ %i.bz, %bb.t ], [ %.048.i3551164, %.lr.ph.i356.jt1 ], [ %.048.i3551164, %.thread ], [ %.1193984, %.lr.ph.i356.jt2 ], [ %.1193984, %.fold.split ]
  %.351.ph.i360 = phi ptr [ %.1193984, %bb.s ], [ %i.bz, %bb.t ], [ %.14998.i.jt1, %.lr.ph.i356.jt1 ], [ %23, %.thread ], [ %.1193984, %.lr.ph.i356.jt2 ], [ %i.ck, %.fold.split ] ; 2 uses
  %.2.ph.i362 = phi i32 [ 0, %bb.s ], [ 0, %bb.t ], [ %.04299.i.jt1, %.lr.ph.i356.jt1 ], [ %22, %.thread ], [ 0, %.lr.ph.i356.jt2 ], [ %i.cj, %.fold.split ] ; 3 uses
  %.not1299 = icmp eq ptr %.351.ph.i360, %.048.i3551163
  %i.cn = icmp eq i32 %.2.ph.i362, 0
  %or.cond5.not.i364 = select i1 %i.bx, i1 %i.cn, i1 false
  %or.cond80.i = select i1 %.not1299, i1 true, i1 %or.cond5.not.i364
  br i1 %or.cond80.i, label %.outer._crit_edge, label %bb.u, !llvm.loop !63

bb.u:                                             ; preds = %select.unfold.i359
  %i.co = sub nsw i32 0, %.2.ph.i362
  %spec.select.i365 = select i1 %i.bx, i32 %.2.ph.i362, i32 %i.co ; 2 uses
  %i.cp = add i32 %spec.select.i365, -13
  %or.cond77.i = icmp ult i32 %i.cp, -12
  br i1 %or.cond77.i, label %.outer._crit_edge, label %bb.v, !llvm.loop !63

bb.v:                                             ; preds = %bb.u
  %i.cq = add nsw i32 %spec.select.i365, -1
  store i32 %i.cq, ptr %i.o, align 16, !tbaa !25
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397, !llvm.loop !63

bb.w:                                             ; preds = %bb.i, %bb.i
  %i.cr = load i8, ptr %.1193984, align 1, !tbaa !18 ; 2 uses
  %i.cs = icmp eq i8 %i.cr, 45                    ; 5 uses
  br i1 %i.cs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ct = getelementptr inbounds nuw i8, ptr %.1193984, i64 1 ; 2 uses
  %.pre.i396 = load i8, ptr %i.ct, align 1, !tbaa !18
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cu = phi i8 [ %.pre.i396, %bb.x ], [ %i.cr, %bb.w ]
  %.048.i369 = phi ptr [ %i.ct, %bb.x ], [ %.1193984, %bb.w ] ; 5 uses
  %i.cv = sext i8 %i.cu to i32
  %memchr95.i370 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.cv, i64 11) ; 2 uses
  %.not7396.i371 = icmp eq ptr %memchr95.i370, null
  br i1 %.not7396.i371, label %select.unfold.i381, label %.lr.ph.i372.peel

.lr.ph.i372.peel:                                 ; preds = %bb.y
  %i.cw = ptrtoint ptr %memchr95.i370 to i64
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = sub i32 %i.cx, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.cz = icmp sgt i32 %i.cy, 9
  br i1 %i.cz, label %select.unfold.i381, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i372.peel
  %i.da = sub nsw i32 0, %i.cy                    ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.048.i369, i64 1 ; 4 uses
  br i1 %i.cs, label %select.unfold.i381, label %.fold.split933.peel

.fold.split933.peel:                              ; preds = %bb.z
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !18
  %i.dd = sext i8 %i.dc to i32
  %memchr.i379.peel = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.dd, i64 11) ; 2 uses
  %.not73.i380.peel = icmp eq ptr %memchr.i379.peel, null
  br i1 %.not73.i380.peel, label %select.unfold.i381, label %.lr.ph.i372.preheader.peel.newph

.lr.ph.i372.preheader.peel.newph:                 ; preds = %.fold.split933.peel
  %i.de = mul i32 %i.cy, -10                      ; 2 uses
  %i.df = ptrtoint ptr %memchr.i379.peel to i64
  %i.dg = trunc i64 %i.df to i32
  %i.dh = sub i32 %i.dg, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.di = or disjoint i32 %i.dh, -2147483648
  %i.dj = icmp sgt i32 %i.dh, 9                   ; 3 uses
  %i.dk = icmp slt i32 %i.de, %i.di
  %brmerge = select i1 %i.dj, i1 true, i1 %i.dk
  %.mux = select i1 %i.dj, i1 true, i1 false
  %.mux1601.a = select i1 %i.dj, i32 %i.da, i32 -2147483640
  br i1 %brmerge, label %select.unfold.i381, label %select.unfold.i381.loopexit.loopexit.split.loop.exit1597

select.unfold.i381.loopexit.loopexit.split.loop.exit1597: ; preds = %.lr.ph.i372.preheader.peel.newph
  %i.dl = sub nsw i32 %i.de, %i.dh
  %i.dm = getelementptr inbounds nuw i8, ptr %.048.i369, i64 2
  br label %select.unfold.i381

select.unfold.i381:                               ; preds = %.lr.ph.i372.preheader.peel.newph, %.lr.ph.i372.peel, %bb.z, %.fold.split933.peel, %select.unfold.i381.loopexit.loopexit.split.loop.exit1597, %bb.y
  %.351.ph.i382 = phi ptr [ %.048.i369, %bb.y ], [ %.048.i369, %.lr.ph.i372.peel ], [ %i.db, %bb.z ], [ %i.db, %.fold.split933.peel ], [ %i.db, %.lr.ph.i372.preheader.peel.newph ], [ %i.dm, %select.unfold.i381.loopexit.loopexit.split.loop.exit1597 ] ; 2 uses
  %.247.ph.not.i383 = phi i1 [ true, %bb.y ], [ true, %.lr.ph.i372.peel ], [ true, %bb.z ], [ true, %.fold.split933.peel ], [ %.mux, %.lr.ph.i372.preheader.peel.newph ], [ true, %select.unfold.i381.loopexit.loopexit.split.loop.exit1597 ]
  %.2.ph.i384 = phi i32 [ 0, %bb.y ], [ 0, %.lr.ph.i372.peel ], [ %i.da, %bb.z ], [ %i.da, %.fold.split933.peel ], [ %.mux1601.a, %.lr.ph.i372.preheader.peel.newph ], [ %i.dl, %select.unfold.i381.loopexit.loopexit.split.loop.exit1597 ] ; 4 uses
  %i.dn = icmp ne ptr %.351.ph.i382, %.048.i369
  %or.cond.not94.i385 = and i1 %i.dn, %.247.ph.not.i383
  %i.do = icmp ne i32 %.2.ph.i384, -2147483648
  %or.cond3.i386 = select i1 %i.cs, i1 true, i1 %i.do
  %or.cond76.i387 = select i1 %or.cond.not94.i385, i1 %or.cond3.i386, i1 false
  %or.cond76.not.i388 = xor i1 %or.cond76.i387, true
  %i.dp = icmp eq i32 %.2.ph.i384, 0
  %or.cond5.not.i389 = select i1 %i.cs, i1 %i.dp, i1 false
  %or.cond80.i390 = select i1 %or.cond76.not.i388, i1 true, i1 %or.cond5.not.i389
  br i1 %or.cond80.i390, label %.outer._crit_edge, label %bb.aa, !llvm.loop !63

bb.aa:                                            ; preds = %select.unfold.i381
  %i.dq = sub nsw i32 0, %.2.ph.i384
  %spec.select.i391 = select i1 %i.cs, i32 %.2.ph.i384, i32 %i.dq ; 2 uses
  %i.dr = add i32 %spec.select.i391, -32
  %or.cond77.i394 = icmp ult i32 %i.dr, -31
  br i1 %or.cond77.i394, label %.outer._crit_edge, label %bb.ab, !llvm.loop !63

bb.ab:                                            ; preds = %bb.aa
  store i32 %spec.select.i391, ptr %i.p, align 4, !tbaa !22
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit397, !llvm.loop !63

bb.ac:                                            ; preds = %bb.i
  %i.ds = load i8, ptr %.1193984, align 1, !tbaa !18 ; 2 uses
  %i.dt = icmp eq i8 %i.ds, 45                    ; 4 uses
  br i1 %i.dt, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.du = getelementptr inbounds nuw i8, ptr %.1193984, i64 1 ; 2 uses
  %.pre.i424 = load i8, ptr %i.du, align 1, !tbaa !18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dv = phi i8 [ %.pre.i424, %bb.ad ], [ %i.ds, %bb.ac ]
  %.048.i399 = phi ptr [ %i.du, %bb.ad ], [ %.1193984, %bb.ac ] ; 3 uses
  %i.dw = sext i8 %i.dv to i32
  %memchr94.i400 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.dw, i64 11) ; 2 uses
  %.not7295.i401 = icmp eq ptr %memchr94.i400, null
  br i1 %.not7295.i401, label %select.unfold.i410, label %.lr.ph.i402

.lr.ph.i402:                                      ; preds = %bb.ae, %bb.ah
  %memchr99.i403 = phi ptr [ %memchr.i408, %bb.ah ], [ %memchr94.i400, %bb.ae ]
  %.04298.i404 = phi i64 [ %i.eh, %bb.ah ], [ 0, %bb.ae ] ; 4 uses
  %.14997.i405 = phi ptr [ %i.eg, %bb.ah ], [ %.048.i399, %bb.ae ] ; 4 uses
  %i.dx = ptrtoint ptr %memchr99.i403 to i64
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = sub i32 %i.dy, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %i.ea = icmp sgt i32 %i.dz, 9
  br i1 %i.ea, label %select.unfold.i410, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i402
  %i.eb = icmp slt i64 %.04298.i404, -922337203685477580
  br i1 %i.eb, label %select.unfold.i410, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ec = mul nsw i64 %.04298.i404, 10            ; 2 uses
  %i.ed = sext i32 %i.dz to i64                   ; 2 uses
  %i.ee = or disjoint i64 %i.ed, -9223372036854775808
  %i.ef = icmp slt i64 %i.ec, %i.ee
  br i1 %i.ef, label %select.unfold.i410, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eg = getelementptr inbounds nuw i8, ptr %.14997.i405, i64 1 ; 3 uses
  %i.eh = sub nsw i64 %i.ec, %i.ed                ; 2 uses
  %i.ei = load i8, ptr %i.eg, align 1, !tbaa !18
  %i.ej = sext i8 %i.ei to i32
  %memchr.i408 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ej, i64 11) ; 2 uses
  %.not72.i409 = icmp eq ptr %memchr.i408, null
  br i1 %.not72.i409, label %select.unfold.i410, label %.lr.ph.i402

select.unfold.i410:                               ; preds = %bb.ah, %bb.ag, %bb.af, %.lr.ph.i402, %bb.ae
  %.351.ph.i411 = phi ptr [ %.048.i399, %bb.ae ], [ %i.eg, %bb.ah ], [ %.14997.i405, %.lr.ph.i402 ], [ %.14997.i405, %bb.af ], [ %.14997.i405, %bb.ag ] ; 4 uses
  %.247.ph.not.i412 = phi i1 [ true, %bb.ae ], [ true, %bb.ah ], [ true, %.lr.ph.i402 ], [ false, %bb.af ], [ false, %bb.ag ]
  %.2.ph.i413 = phi i64 [ 0, %bb.ae ], [ %i.eh, %bb.ah ], [ %.04298.i404, %.lr.ph.i402 ], [ %.04298.i404, %bb.af ], [ -9223372036854775800, %bb.ag ] ; 4 uses
  %i.ek = icmp ne ptr %.351.ph.i411, %.048.i399
  %or.cond.not93.i414 = and i1 %i.ek, %.247.ph.not.i412
  %i.el = icmp ne i64 %.2.ph.i413, -9223372036854775808
  %or.cond3.i415 = select i1 %i.dt, i1 true, i1 %i.el
  %or.cond75.i416 = select i1 %or.cond.not93.i414, i1 %or.cond3.i415, i1 false
  %or.cond75.not.i417 = xor i1 %or.cond75.i416, true
  %i.em = icmp eq i64 %.2.ph.i413, 0
  %or.cond5.not.i418 = select i1 %i.dt, i1 %i.em, i1 false
  %or.cond79.i419 = select i1 %or.cond75.not.i417, i1 true, i1 %or.cond5.not.i418
  br i1 %or.cond79.i419, label %.outer._crit_edge, label %bb.ai, !llvm.loop !63

bb.ai:                                            ; preds = %select.unfold.i410
  %i.en = sub nsw i64 0, %.2.ph.i413
  %spec.select.i420 = select i1 %i.dt, i64 %.2.ph.i413, i64 %i.en
  store i64 %spec.select.i420, ptr %i.b, align 8, !tbaa !32
  %i.eo = load i8, ptr %.351.ph.i411, align 1, !tbaa !18
  %i.ep = icmp eq i8 %i.eo, 45
  br i1 %i.ep, label %bb.aj, label %.outer._crit_edge, !llvm.loop !63

bb.aj:                                            ; preds = %bb.ai
  %i.eq = getelementptr inbounds nuw i8, ptr %.351.ph.i411, i64 1 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !18  ; 2 uses
  %i.es = icmp eq i8 %i.er, 45                    ; 5 uses
  br i1 %i.es, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.et = getelementptr inbounds nuw i8, ptr %.351.ph.i411, i64 2 ; 2 uses
  %.pre.i455 = load i8, ptr %i.et, align 1, !tbaa !18
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.eu = phi i8 [ %.pre.i455, %bb.ak ], [ %i.er, %bb.aj ]
  %.048.i428 = phi ptr [ %i.et, %bb.ak ], [ %i.eq, %bb.aj ] ; 5 uses
  %i.ev = sext i8 %i.eu to i32
  %memchr95.i429 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ev, i64 11) ; 2 uses
  %.not7396.i430 = icmp eq ptr %memchr95.i429, null
  br i1 %.not7396.i430, label %select.unfold.i440, label %.lr.ph.i431.peel

.lr.ph.i431.peel:                                 ; preds = %bb.al
  %i.ew = ptrtoint ptr %memchr95.i429 to i64
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = sub i32 %i.ex, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.ez = icmp sgt i32 %i.ey, 9
  br i1 %i.ez, label %select.unfold.i440, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i431.peel
  %i.fa = sub nsw i32 0, %i.ey                    ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.048.i428, i64 1 ; 4 uses
  br i1 %i.es, label %select.unfold.i440, label %.fold.split934.peel

.fold.split934.peel:                              ; preds = %bb.am
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !18
  %i.fd = sext i8 %i.fc to i32
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052613time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_:bb.a

bb.hh:                                            ; preds = %bb.hf, %bb.he
  %.pn297 = phi { ptr, i32 } [ %i.acv, %bb.hf ], [ %i.acu, %bb.he ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.hj

.critedge351:                                     ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.hi

bb.hi:                                            ; preds = %bb.gq, %.thread932, %.critedge351
  store i64 %i.acm, ptr %3, align 8, !tbaa !32
  %i.acw = load i64, ptr %7, align 8, !tbaa !32
  store i64 %i.acw, ptr %4, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit858

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit858: ; preds = %bb.hi, %bb.gy, %bb.hg, %bb.gh, %bb.gn, %bb.go, %bb.gg
  %.4 = phi i1 [ false, %bb.gh ], [ false, %bb.gg ], [ false, %bb.gn ], [ false, %bb.go ], [ true, %bb.hi ], [ false, %bb.hg ], [ false, %bb.gy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit856

bb.hj:                                            ; preds = %bb.gv, %bb.gz, %bb.hh, %bb.gi
  %.pn302 = phi { ptr, i32 } [ %i.abo, %bb.gi ], [ %.pn297, %bb.hh ], [ %i.acp, %bb.gv ], [ %.pn, %bb.gz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.hk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit856: ; preds = %bb.gd, %bb.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit858
  %.5 = phi i1 [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit858 ], [ false, %bb.gc ], [ false, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.hk:                                            ; preds = %bb.hj, %bb.fr
  %.pn302.pn = phi { ptr, i32 } [ %.pn302, %bb.hj ], [ %i.xm, %bb.fr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.hl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %.invoke, %bb.fi, %.thread1252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit856, %bb.fk
  %.6 = phi i1 [ %.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit856 ], [ false, %.thread1252 ], [ true, %bb.fk ], [ false, %bb.fi ], [ false, %.invoke ]
  %i.acx = load ptr, ptr %8, align 8, !tbaa !31   ; 2 uses
  %i.acy = icmp eq ptr %i.acx, %i.t
  br i1 %i.acy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i861

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i861: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.acz = load i64, ptr %i.t, align 8, !tbaa !18
  %i.ada = add i64 %i.acz, 1
  call void @_ZdlPvm(ptr noundef %i.acx, i64 noundef %i.ada) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i861
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i1 %.6

bb.hl:                                            ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit850, %bb.hk, %bb.fg
  %.pn330.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn302.pn, %bb.hk ], [ %i.wv, %bb.fg ], [ %i.bv, %bb.q ], [ %.pn330.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit850 ]
  %i.adb = load ptr, ptr %8, align 8, !tbaa !31   ; 2 uses
  %i.adc = icmp eq ptr %i.adb, %i.t
  br i1 %i.adc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit866, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i864

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i864: ; preds = %bb.hl
  %i.add = load i64, ptr %i.t, align 8, !tbaa !18
  %i.ade = add i64 %i.add, 1
  call void @_ZdlPvm(ptr noundef %i.adb, i64 noundef %i.ade) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit866

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit866: ; preds = %bb.hl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i864
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  resume { ptr, i32 } %.pn330.pn.pn.pn.pn
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_(ptr nofree noundef nonnull readonly captures(address, ret: address, provenance) %0, i32 noundef range(i32 0, 5) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !18      ; 2 uses
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
  %.pre = load i8, ptr %i.e, align 1, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.f = phi i8 [ %.pre, %bb.d ], [ %i.a, %bb.a ]
  %.153 = phi i32 [ %.052, %bb.d ], [ %1, %bb.a ]
  %.048 = phi ptr [ %i.e, %bb.d ], [ %0, %bb.a ]  ; 3 uses
  %i.g = sext i8 %i.f to i32
  %memchr94 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.g, i64 11) ; 2 uses
  %.not7295 = icmp eq ptr %memchr94, null
  br i1 %.not7295, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.j
  %memchr99 = phi ptr [ %memchr, %bb.j ], [ %memchr94, %bb.e ]
  %.04298 = phi i64 [ %i.q, %bb.j ], [ 0, %bb.e ] ; 4 uses
  %.14997 = phi ptr [ %i.r, %bb.j ], [ %.048, %bb.e ] ; 4 uses
  %.25496 = phi i32 [ %.557, %bb.j ], [ %.153, %bb.e ] ; 2 uses
  %i.h = ptrtoint ptr %memchr99 to i64
  %i.i = trunc i64 %i.h to i32
  %i.j = sub i32 %i.i, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
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
  %i.v = load i8, ptr %i.r, align 1, !tbaa !18
  %i.w = sext i8 %i.v to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.w, i64 11) ; 2 uses
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
define internal fastcc noundef ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_111ParseOffsetEPKcS6_Pi(ptr noundef nonnull %0, i8 %.0.val, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !18      ; 3 uses
  %i.c = icmp eq i8 %i.b, 45
  switch i8 %i.b, label %bb.v [
    i8 45, label %bb.b
    i8 43, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !18    ; 2 uses
  %i.e = icmp eq i8 %i.d, 45                      ; 4 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.pre.i = load i8, ptr %i.f, align 1, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i8 [ %.pre.i, %bb.c ], [ %i.d, %bb.b ]
  %.048.i = phi ptr [ %i.f, %bb.c ], [ %i.a, %bb.b ] ; 5 uses
  %i.h = sext i8 %i.g to i32
  %memchr95.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.h, i64 11) ; 2 uses
  %.not7396.i = icmp eq ptr %memchr95.i, null
  br i1 %.not7396.i, label %select.unfold.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.i = ptrtoint ptr %memchr95.i to i64
  %i.j = trunc i64 %i.i to i32
  %i.k = sub i32 %i.j, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.l = icmp sgt i32 %i.k, 9
  br i1 %i.l, label %select.unfold.i, label %bb.e

.lr.ph.i.jt1:                                     ; preds = %.fold.split
  %i.m = ptrtoint ptr %memchr.i to i64
  %i.n = trunc i64 %i.m to i32
  %i.o = sub i32 %i.n, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
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
  %i.u = load i8, ptr %i.r, align 1, !tbaa !18
  %i.v = sext i8 %i.u to i32
  %memchr.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.v, i64 11) ; 2 uses
  %.not73.i = icmp eq ptr %memchr.i, null
  br i1 %.not73.i, label %select.unfold.i, label %.lr.ph.i.jt1

select.unfold.i:                                  ; preds = %bb.e, %.fold.split, %.lr.ph.i, %.lr.ph.i.jt1, %bb.f, %bb.d
  %.351.ph.i = phi ptr [ %.048.i, %bb.d ], [ %i.r, %bb.e ], [ %i.t, %bb.f ], [ %.048.i, %.lr.ph.i ], [ %i.r, %.fold.split ], [ %i.r, %.lr.ph.i.jt1 ] ; 8 uses
  %.2.ph.i = phi i32 [ 0, %bb.d ], [ %i.q, %bb.e ], [ %i.s, %bb.f ], [ 0, %.lr.ph.i ], [ %i.q, %.fold.split ], [ %i.q, %.lr.ph.i.jt1 ] ; 3 uses
  %.not = icmp eq ptr %.351.ph.i, %.048.i
  %i.w = icmp eq i32 %.2.ph.i, 0
  %or.cond5.not.i = select i1 %i.e, i1 %i.w, i1 false
  %or.cond80.i = select i1 %.not, i1 true, i1 %or.cond5.not.i
  br i1 %or.cond80.i, label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit.thread, label %bb.g

bb.g:                                             ; preds = %select.unfold.i
  %i.x = sub nsw i32 0, %.2.ph.i
  %spec.select.i = select i1 %i.e, i32 %.2.ph.i, i32 %i.x ; 2 uses
  %or.cond77.i = icmp ult i32 %spec.select.i, 24
  %i.y = ptrtoint ptr %.351.ph.i to i64
  %i.z = ptrtoint ptr %i.a to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp eq i64 %i.aa, 2
  %or.cond = select i1 %or.cond77.i, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.h, label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit.thread

bb.h:                                             ; preds = %bb.g
  %.not50 = icmp eq i8 %.0.val, 0                 ; 2 uses
  br i1 %.not50, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i8, ptr %.351.ph.i, align 1, !tbaa !18
  %i.ad = icmp eq i8 %i.ac, %.0.val
  %spec.select.idx = zext i1 %i.ad to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.351.ph.i, i64 %spec.select.idx
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.040 = phi ptr [ %.351.ph.i, %bb.h ], [ %spec.select, %bb.i ] ; 4 uses
  %i.ae = load i8, ptr %.040, align 1, !tbaa !18  ; 2 uses
  %i.af = icmp eq i8 %i.ae, 45                    ; 5 uses
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %.040, i64 1 ; 2 uses
  %.pre.i95 = load i8, ptr %i.ag, align 1, !tbaa !18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ah = phi i8 [ %.pre.i95, %bb.k ], [ %i.ae, %bb.j ]
  %.048.i68 = phi ptr [ %i.ag, %bb.k ], [ %.040, %bb.j ] ; 5 uses
  %i.ai = sext i8 %i.ah to i32
  %memchr95.i69 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.ai, i64 11) ; 2 uses
  %.not7396.i70 = icmp eq ptr %memchr95.i69, null
  br i1 %.not7396.i70, label %select.unfold.i80, label %.lr.ph.i71.peel

.lr.ph.i71.peel:                                  ; preds = %bb.l
  %i.aj = ptrtoint ptr %memchr95.i69 to i64
  %i.ak = trunc i64 %i.aj to i32
  %i.al = sub i32 %i.ak, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.am = icmp sgt i32 %i.al, 9
  br i1 %i.am, label %select.unfold.i80, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i71.peel
  %i.an = sub nsw i32 0, %i.al                    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.048.i68, i64 1 ; 4 uses
  br i1 %i.af, label %select.unfold.i80, label %.fold.split16.peel

.fold.split16.peel:                               ; preds = %bb.m
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !18
  %i.aq = sext i8 %i.ap to i32
  %memchr.i78.peel = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.aq, i64 11) ; 2 uses
  %.not73.i79.peel = icmp eq ptr %memchr.i78.peel, null
  br i1 %.not73.i79.peel, label %select.unfold.i80, label %.lr.ph.i71.preheader.peel.newph

.lr.ph.i71.preheader.peel.newph:                  ; preds = %.fold.split16.peel
  %i.ar = mul i32 %i.al, -10                      ; 2 uses
  %i.as = ptrtoint ptr %memchr.i78.peel to i64
  %i.at = trunc i64 %i.as to i32
  %i.au = sub i32 %i.at, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
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
  br i1 %or.cond80.i89, label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96.thread, label %bb.n

bb.n:                                             ; preds = %select.unfold.i80
  %i.bd = sub nsw i32 0, %.2.ph.i83
  %spec.select.i90 = select i1 %i.af, i32 %.2.ph.i83, i32 %i.bd ; 3 uses
  %or.cond77.i93 = icmp ugt i32 %spec.select.i90, 59
  br i1 %or.cond77.i93, label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96.thread, label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96

_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96: ; preds = %bb.n
  %i.be = ptrtoint ptr %.351.ph.i81 to i64
  %i.bf = ptrtoint ptr %.040 to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = icmp eq i64 %i.bg, 2
  br i1 %i.bh, label %bb.o, label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96.thread

bb.o:                                             ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit96
  br i1 %.not50, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = load i8, ptr %.351.ph.i81, align 1, !tbaa !18
  %i.bj = icmp eq i8 %i.bi, %.0.val
  %spec.select61.idx = zext i1 %i.bj to i64
  %spec.select61 = getelementptr inbounds nuw i8, ptr %.351.ph.i81, i64 %spec.select61.idx
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.0 = phi ptr [ %.351.ph.i81, %bb.o ], [ %spec.select61, %bb.p ] ; 4 uses
  %i.bk = load i8, ptr %.0, align 1, !tbaa !18    ; 2 uses
  %i.bl = icmp eq i8 %i.bk, 45                    ; 5 uses
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %.pre.i126 = load i8, ptr %i.bm, align 1, !tbaa !18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bn = phi i8 [ %.pre.i126, %bb.r ], [ %i.bk, %bb.q ]
  %.048.i99 = phi ptr [ %i.bm, %bb.r ], [ %.0, %bb.q ] ; 5 uses
  %i.bo = sext i8 %i.bn to i32
  %memchr95.i100 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bo, i64 11) ; 2 uses
  %.not7396.i101 = icmp eq ptr %memchr95.i100, null
  br i1 %.not7396.i101, label %select.unfold.i111, label %.lr.ph.i102.peel

.lr.ph.i102.peel:                                 ; preds = %bb.s
  %i.bp = ptrtoint ptr %memchr95.i100 to i64
  %i.bq = trunc i64 %i.bp to i32
  %i.br = sub i32 %i.bq, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.bs = icmp sgt i32 %i.br, 9
  br i1 %i.bs, label %select.unfold.i111, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i102.peel
  %i.bt = sub nsw i32 0, %i.br                    ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.048.i99, i64 1 ; 4 uses
  br i1 %i.bl, label %select.unfold.i111, label %.fold.split17.peel

.fold.split17.peel:                               ; preds = %bb.t
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !18
  %i.bw = sext i8 %i.bv to i32
  %memchr.i109.peel = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.bw, i64 11) ; 2 uses
  %.not73.i110.peel = icmp eq ptr %memchr.i109.peel, null
  br i1 %.not73.i110.peel, label %select.unfold.i111, label %.lr.ph.i102.preheader.peel.newph

.lr.ph.i102.preheader.peel.newph:                 ; preds = %.fold.split17.peel
  %i.bx = mul i32 %i.br, -10                      ; 2 uses
  %i.by = ptrtoint ptr %memchr.i109.peel to i64
  %i.bz = trunc i64 %i.by to i32
  %i.ca = sub i32 %i.bz, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
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
  br i1 %or.cond80.i120, label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit127, label %bb.u

bb.u:                                             ; preds = %select.unfold.i111
  %i.cj = sub nsw i32 0, %.2.ph.i114
  %spec.select.i121 = select i1 %i.bl, i32 %.2.ph.i114, i32 %i.cj ; 2 uses
  %or.cond77.i124 = icmp ugt i32 %spec.select.i121, 59 ; 2 uses
  %spec.select18 = select i1 %or.cond77.i124, i32 0, i32 %spec.select.i121
  %spec.select19 = select i1 %or.cond77.i124, ptr null, ptr %.351.ph.i112
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit127

_ZN4absl12lts_2026052613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit127: ; preds = %bb.u, %select.unfold.i111
  %.03 = phi i32 [ %spec.select18, %bb.u ], [ 0, %select.unfold.i111 ]
  %.5.i125 = phi ptr [ %spec.select19, %bb.u ], [ null, %select.unfold.i111 ] ; 3 uses
end_hunk_1
