Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/civil_time?download=true
inline.NumInlined: 417
inline.NumDeleted: 171
begin_hunk_0_@_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_8year_tagEEE:bb.a
._crit_edge.i.i.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %bb.c
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i ], [ %i.b, %bb.c ] ; 3 uses
  switch i64 %0, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.k = load i8, ptr %1, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr readonly align 1 %1, i64 %0, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit.i: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %0
  store i8 0, ptr %i.m, align 1
  %i.n = load ptr, ptr %5, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.o = tail call ptr @__errno_location() #15    ; 2 uses
  store i32 0, ptr %i.o, align 4
  %i.p = call i64 @__isoc23_strtoll(ptr noundef %i.n, ptr noundef nonnull %i.a, i32 noundef 10) #10 ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = icmp eq ptr %i.q, %i.n
  br i1 %i.r, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit.i
  %i.s = load i32, ptr %i.o, align 4
  %i.t = icmp eq i32 %i.s, 34
  br i1 %i.t, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.u = srem i64 %i.p, 400
  %i.v = add nsw i64 %i.u, 2400
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.x = call noundef ptr @_ZN4absl16numbers_internal15FastIntToBufferElPc(i64 noundef %i.v, ptr noundef nonnull %i.w) #10
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  store i64 %i.aa, ptr %7, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.w, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.ac = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZN4absl8AlphaNumC2EPKc.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ac) #10
  br label %_ZN4absl8AlphaNumC2EPKc.exit.i

_ZN4absl8AlphaNumC2EPKc.exit.i:                   ; preds = %bb.l, %bb.k
  %.sroa.0.0.i.i.i = phi i64 [ %i.ad, %bb.l ], [ 0, %bb.k ]
  store i64 %.sroa.0.0.i.i.i, ptr %8, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.ac, ptr %i.ae, align 8
  call void @_ZN4absl6StrCatB5cxx11ERKNS_8AlphaNumES2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.af = call ptr @_ZN4absl13time_internal4cctz13utc_time_zoneEv() #10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  store i64 0, ptr %9, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i32 0, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  store i64 2, ptr %11, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.6, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  store i64 0, ptr %12, align 8
  %.sroa.2.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @.str.5, ptr %.sroa.2.0..sroa_idx.i19.i, align 8
  call void @_ZN4absl6StrCatB5cxx11ERKNS_8AlphaNumES2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(48) %12) #10
  %i.ai = load ptr, ptr %10, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = load ptr, ptr %6, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = call noundef zeroext i1 @_ZN4absl9ParseTimeESt17basic_string_viewIcSt11char_traitsIcEES3_NS_8TimeZoneEPNS_4TimeEPNSt7__cxx1112basic_stringIcS2_SaIcEEE(i64 %i.ak, ptr %i.ai, i64 %i.an, ptr %i.al, ptr %i.af, ptr noundef nonnull %9, ptr noundef null) #10 ; 2 uses
  %i.ap = load ptr, ptr %10, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4absl8AlphaNumC2EPKc.exit.i
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN4absl8AlphaNumC2EPKc.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.sroa.02.0.copyload.i = load i64, ptr %9, align 8
  %.sroa.23.0.copyload.i = load i32, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.af, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZNK4absl8TimeZone2AtENS_4TimeE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::TimeZone::CivilInfo") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %.sroa.02.0.copyload.i, i32 %.sroa.23.0.copyload.i) #10
  %.sroa.28.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.28.0.copyload.i.i = load i64, ptr %.sroa.28.0..sroa_idx.i.i, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %sext.i = shl i64 %.sroa.28.0.copyload.i.i, 56
  %i.au = ashr exact i64 %sext.i, 56
  %i.av = shl i64 %.sroa.28.0.copyload.i.i, 48
  %i.aw = ashr i64 %i.av, 56
  %i.ax = shl i64 %.sroa.28.0.copyload.i.i, 40
  %i.ay = ashr i64 %i.ax, 56
  %i.az = shl i64 %.sroa.28.0.copyload.i.i, 32
  %i.ba = ashr i64 %i.az, 56
  %i.bb = shl i64 %.sroa.28.0.copyload.i.i, 24
  %i.bc = ashr i64 %i.bb, 56
  %i.bd = call { i64, i64 } @_ZN4absl13time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %i.p, i64 noundef %i.au, i64 noundef %i.aw, i64 noundef %i.ay, i64 noundef %i.ba, i64 noundef %i.bc) #10
  %.fca.0.extract.i.i = extractvalue { i64, i64 } %i.bd, 0
  store i64 %.fca.0.extract.i.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 257, ptr %.sroa.4.0..sroa_idx.i, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  %i.be = load ptr, ptr %6, align 8               ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i: ; preds = %bb.n
  %i.bh = load i64, ptr %i.bf, align 8
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit.i
  %.1.i = phi i1 [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i ], [ false, %bb.j ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.bj = load ptr, ptr %5, align 8               ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.b
  br i1 %i.bk, label %_ZN4absl12_GLOBAL__N_112ParseYearAndINS_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEESB_PT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i: ; preds = %bb.o
  %i.bl = load i64, ptr %i.b, align 8
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #12
  br label %_ZN4absl12_GLOBAL__N_112ParseYearAndINS_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEESB_PT_.exit

_ZN4absl12_GLOBAL__N_112ParseYearAndINS_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEESB_PT_.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i1 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4absl21ParseLenientCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_10second_tagEEE(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.absl::time_internal::cctz::detail::civil_time.0", align 8 ; 8 uses
  %4 = alloca %"class.absl::time_internal::cctz::detail::civil_time.3", align 8 ; 8 uses
  %5 = alloca %"class.absl::time_internal::cctz::detail::civil_time.1", align 8 ; 8 uses
  %6 = alloca %"class.absl::time_internal::cctz::detail::civil_time", align 8 ; 8 uses
  %7 = alloca %"class.absl::time_internal::cctz::detail::civil_time.2", align 8 ; 8 uses
  %i.a = tail call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_10second_tagEEE(i64 %0, ptr readonly %1, ptr noundef %2)
  br i1 %i.a, label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  store i64 1970, ptr %7, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 0, ptr %i.c, align 4
  %i.d = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_7day_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %7)
  br i1 %i.d, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEENS5_INS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.c

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEENS5_INS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %7, align 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %i.b, align 8
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.2.0.copyload.i.i.i to i40
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store i64 1970, ptr %6, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 0, ptr %i.f, align 4
  %i.g = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_10second_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %6)
  br i1 %i.g, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEES7_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.d

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEES7_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i64 1970, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 0, ptr %i.i, align 4
  %i.j = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_8hour_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %5)
  br i1 %i.j, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEENS5_INS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.e

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEENS5_INS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.d
  %.sroa.0.0.copyload.i.i27.i = load i64, ptr %5, align 8
  %.sroa.2.0.copyload.i.i28.i = load i64, ptr %i.h, align 8
  %.sroa.2.0.extract.trunc.i.i.i29.i = trunc i64 %.sroa.2.0.copyload.i.i28.i to i40
  store i64 %.sroa.0.0.copyload.i.i27.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i30.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i29.i, ptr %.sroa.4.0..sroa_idx.i30.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i64 1970, ptr %4, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 0, ptr %i.l, align 4
  %i.m = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_9month_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %4)
  br i1 %i.m, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEENS5_INS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.f

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEENS5_INS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.e
  %.sroa.0.0.copyload.i.i31.i = load i64, ptr %4, align 8
  %.sroa.2.0.copyload.i.i32.i = load i64, ptr %i.k, align 8
  %.sroa.2.0.extract.trunc.i.i.i33.i = trunc i64 %.sroa.2.0.copyload.i.i32.i to i40
  store i64 %.sroa.0.0.copyload.i.i31.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i34.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i33.i, ptr %.sroa.4.0..sroa_idx.i34.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 1970, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.o, align 4
  %i.p = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_10minute_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %3)
  br i1 %i.p, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEENS5_INS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.g

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEENS5_INS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.f
  %.sroa.0.0.copyload.i.i35.i = load i64, ptr %3, align 8
  %.sroa.2.0.copyload.i.i36.i = load i64, ptr %i.n, align 8
  %.sroa.2.0.extract.trunc.i.i.i37.i = trunc i64 %.sroa.2.0.copyload.i.i36.i to i40
  store i64 %.sroa.0.0.copyload.i.i35.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i38.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i37.i, ptr %.sroa.4.0..sroa_idx.i38.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.q = tail call fastcc noundef zeroext i1 @_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEENS5_INS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr readonly %1, ptr noundef %2)
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit: ; preds = %bb.a, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEENS5_INS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEES7_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEENS5_INS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEENS5_INS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEENS5_INS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %bb.g
  %.0.i = phi i1 [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEENS5_INS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %bb.a ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEENS5_INS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEES7_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEENS5_INS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEENS5_INS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ %i.q, %bb.g ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4absl21ParseLenientCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_10minute_tagEEE(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.absl::time_internal::cctz::detail::civil_time.0", align 8 ; 8 uses
  %4 = alloca %"class.absl::time_internal::cctz::detail::civil_time.3", align 8 ; 8 uses
  %5 = alloca %"class.absl::time_internal::cctz::detail::civil_time.1", align 8 ; 8 uses
  %6 = alloca %"class.absl::time_internal::cctz::detail::civil_time", align 8 ; 8 uses
  %7 = alloca %"class.absl::time_internal::cctz::detail::civil_time.2", align 8 ; 8 uses
  %i.a = tail call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_10minute_tagEEE(i64 %0, ptr readonly %1, ptr noundef %2)
  br i1 %i.a, label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  store i64 1970, ptr %7, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 0, ptr %i.c, align 4
  %i.d = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_7day_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %7)
  br i1 %i.d, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEENS5_INS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.c

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEENS5_INS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %7, align 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %i.b, align 8
  %.sroa.2.8.insert.insert.i.i.i.i.i = and i64 %.sroa.2.0.copyload.i.i.i, 4294967295
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i.i to i40
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store i64 1970, ptr %6, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 0, ptr %i.f, align 4
  %i.g = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_10second_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %6)
  br i1 %i.g, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEENS5_INS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.d

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEENS5_INS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.c
  %.sroa.0.0.copyload.i.i27.i = load i64, ptr %6, align 8
  %.sroa.2.0.copyload.i.i28.i = load i64, ptr %i.e, align 8
  %.sroa.2.8.insert.insert.i.i.i.i29.i = and i64 %.sroa.2.0.copyload.i.i28.i, 4294967295
  %.sroa.2.0.extract.trunc.i.i.i30.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i29.i to i40
  store i64 %.sroa.0.0.copyload.i.i27.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i31.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i30.i, ptr %.sroa.4.0..sroa_idx.i31.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i64 1970, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 0, ptr %i.i, align 4
  %i.j = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_8hour_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %5)
  br i1 %i.j, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEENS5_INS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.e

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEENS5_INS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.d
  %.sroa.0.0.copyload.i.i32.i = load i64, ptr %5, align 8
  %.sroa.2.0.copyload.i.i33.i = load i64, ptr %i.h, align 8
  %.sroa.2.8.insert.insert.i.i.i.i34.i = and i64 %.sroa.2.0.copyload.i.i33.i, 4294967295
  %.sroa.2.0.extract.trunc.i.i.i35.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i34.i to i40
  store i64 %.sroa.0.0.copyload.i.i32.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i36.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i35.i, ptr %.sroa.4.0..sroa_idx.i36.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i64 1970, ptr %4, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 0, ptr %i.l, align 4
  %i.m = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_9month_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %4)
  br i1 %i.m, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEENS5_INS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.f

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEENS5_INS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.e
  %.sroa.0.0.copyload.i.i37.i = load i64, ptr %4, align 8
  %.sroa.2.0.copyload.i.i38.i = load i64, ptr %i.k, align 8
  %.sroa.2.8.insert.insert.i.i.i.i39.i = and i64 %.sroa.2.0.copyload.i.i38.i, 4294967295
  %.sroa.2.0.extract.trunc.i.i.i40.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i39.i to i40
  store i64 %.sroa.0.0.copyload.i.i37.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i41.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i40.i, ptr %.sroa.4.0..sroa_idx.i41.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 1970, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.o, align 4
  %i.p = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_10minute_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %3)
  br i1 %i.p, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEES7_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.g

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEES7_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.q = tail call fastcc noundef zeroext i1 @_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEENS5_INS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr readonly %1, ptr noundef %2)
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit: ; preds = %bb.a, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEENS5_INS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEENS5_INS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEENS5_INS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEENS5_INS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEES7_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %bb.g
  %.0.i = phi i1 [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEES7_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %bb.a ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEENS5_INS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEENS5_INS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEENS5_INS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEENS5_INS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ %i.q, %bb.g ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4absl21ParseLenientCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_8hour_tagEEE(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.absl::time_internal::cctz::detail::civil_time.0", align 8 ; 8 uses
  %4 = alloca %"class.absl::time_internal::cctz::detail::civil_time.3", align 8 ; 8 uses
  %5 = alloca %"class.absl::time_internal::cctz::detail::civil_time.1", align 8 ; 8 uses
  %6 = alloca %"class.absl::time_internal::cctz::detail::civil_time", align 8 ; 8 uses
  %7 = alloca %"class.absl::time_internal::cctz::detail::civil_time.2", align 8 ; 8 uses
  %i.a = tail call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_8hour_tagEEE(i64 %0, ptr readonly %1, ptr noundef %2)
  br i1 %i.a, label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  store i64 1970, ptr %7, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 0, ptr %i.c, align 4
  %i.d = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_7day_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %7)
  br i1 %i.d, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEENS5_INS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.c

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEENS5_INS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %7, align 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %i.b, align 8
  %.sroa.2.8.insert.insert.i.i.i.i.i = and i64 %.sroa.2.0.copyload.i.i.i, 16777215
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i.i to i40
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store i64 1970, ptr %6, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 0, ptr %i.f, align 4
  %i.g = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_10second_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %6)
  br i1 %i.g, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEENS5_INS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.d

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEENS5_INS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.c
  %.sroa.0.0.copyload.i.i27.i = load i64, ptr %6, align 8
  %.sroa.2.0.copyload.i.i28.i = load i64, ptr %i.e, align 8
  %.sroa.2.8.insert.insert.i.i.i.i29.i = and i64 %.sroa.2.0.copyload.i.i28.i, 16777215
  %.sroa.2.0.extract.trunc.i.i.i30.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i29.i to i40
  store i64 %.sroa.0.0.copyload.i.i27.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i31.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i30.i, ptr %.sroa.4.0..sroa_idx.i31.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i64 1970, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 0, ptr %i.i, align 4
  %i.j = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_8hour_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %5)
  br i1 %i.j, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEES7_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.e

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEES7_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i64 1970, ptr %4, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 0, ptr %i.l, align 4
  %i.m = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_9month_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %4)
  br i1 %i.m, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEENS5_INS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.f

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEENS5_INS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.e
  %.sroa.0.0.copyload.i.i32.i = load i64, ptr %4, align 8
  %.sroa.2.0.copyload.i.i33.i = load i64, ptr %i.k, align 8
  %.sroa.2.8.insert.insert.i.i.i.i34.i = and i64 %.sroa.2.0.copyload.i.i33.i, 16777215
  %.sroa.2.0.extract.trunc.i.i.i35.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i34.i to i40
  store i64 %.sroa.0.0.copyload.i.i32.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i36.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i35.i, ptr %.sroa.4.0..sroa_idx.i36.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 1970, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.o, align 4
  %i.p = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_10minute_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %3)
  br i1 %i.p, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEENS5_INS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.g

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEENS5_INS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.f
  %.sroa.0.0.copyload.i.i37.i = load i64, ptr %3, align 8
  %.sroa.2.0.copyload.i.i38.i = load i64, ptr %i.n, align 8
  %.sroa.2.8.insert.insert.i.i.i.i39.i = and i64 %.sroa.2.0.copyload.i.i38.i, 16777215
  %.sroa.2.0.extract.trunc.i.i.i40.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i39.i to i40
  store i64 %.sroa.0.0.copyload.i.i37.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i41.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i40.i, ptr %.sroa.4.0..sroa_idx.i41.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.q = tail call fastcc noundef zeroext i1 @_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEENS5_INS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr readonly %1, ptr noundef %2)
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit: ; preds = %bb.a, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEENS5_INS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEENS5_INS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEES7_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEENS5_INS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEENS5_INS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %bb.g
  %.0.i = phi i1 [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEENS5_INS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %bb.a ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEENS5_INS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEENS5_INS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEES7_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEENS5_INS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ %i.q, %bb.g ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4absl21ParseLenientCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_7day_tagEEE(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.absl::time_internal::cctz::detail::civil_time.0", align 8 ; 8 uses
  %4 = alloca %"class.absl::time_internal::cctz::detail::civil_time.3", align 8 ; 8 uses
  %5 = alloca %"class.absl::time_internal::cctz::detail::civil_time.1", align 8 ; 8 uses
  %6 = alloca %"class.absl::time_internal::cctz::detail::civil_time", align 8 ; 8 uses
  %7 = alloca %"class.absl::time_internal::cctz::detail::civil_time.2", align 8 ; 8 uses
  %i.a = tail call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_7day_tagEEE(i64 %0, ptr readonly %1, ptr noundef %2)
  br i1 %i.a, label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  store i64 1970, ptr %7, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 0, ptr %i.c, align 4
  %i.d = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_7day_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %7)
  br i1 %i.d, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEES7_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.c

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEES7_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store i64 1970, ptr %6, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 0, ptr %i.f, align 4
  %i.g = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_10second_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %6)
  br i1 %i.g, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEENS5_INS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.d

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEENS5_INS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %6, align 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %i.e, align 8
  %.sroa.2.8.insert.insert.i.i.i.i.i = and i64 %.sroa.2.0.copyload.i.i.i, 65535
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i.i to i40
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i64 1970, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 0, ptr %i.i, align 4
  %i.j = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_8hour_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %5)
  br i1 %i.j, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEENS5_INS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.e

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEENS5_INS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.d
  %.sroa.0.0.copyload.i.i27.i = load i64, ptr %5, align 8
  %.sroa.2.0.copyload.i.i28.i = load i64, ptr %i.h, align 8
  %.sroa.2.8.insert.insert.i.i.i.i29.i = and i64 %.sroa.2.0.copyload.i.i28.i, 65535
  %.sroa.2.0.extract.trunc.i.i.i30.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i29.i to i40
  store i64 %.sroa.0.0.copyload.i.i27.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i31.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i30.i, ptr %.sroa.4.0..sroa_idx.i31.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i64 1970, ptr %4, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 0, ptr %i.l, align 4
  %i.m = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_9month_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %4)
  br i1 %i.m, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEENS5_INS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.f

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEENS5_INS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.e
  %.sroa.0.0.copyload.i.i32.i = load i64, ptr %4, align 8
  %.sroa.2.0.copyload.i.i33.i = load i64, ptr %i.k, align 8
  %.sroa.2.8.insert.insert.i.i.i.i34.i = and i64 %.sroa.2.0.copyload.i.i33.i, 65535
  %.sroa.2.0.extract.trunc.i.i.i35.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i34.i to i40
  store i64 %.sroa.0.0.copyload.i.i32.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i36.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i35.i, ptr %.sroa.4.0..sroa_idx.i36.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 1970, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.o, align 4
  %i.p = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_10minute_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %3)
  br i1 %i.p, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEENS5_INS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.g

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEENS5_INS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.f
  %.sroa.0.0.copyload.i.i37.i = load i64, ptr %3, align 8
  %.sroa.2.0.copyload.i.i38.i = load i64, ptr %i.n, align 8
  %.sroa.2.8.insert.insert.i.i.i.i39.i = and i64 %.sroa.2.0.copyload.i.i38.i, 65535
  %.sroa.2.0.extract.trunc.i.i.i40.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i39.i to i40
  store i64 %.sroa.0.0.copyload.i.i37.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i41.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i40.i, ptr %.sroa.4.0..sroa_idx.i41.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.q = tail call fastcc noundef zeroext i1 @_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEENS5_INS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr readonly %1, ptr noundef %2)
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit: ; preds = %bb.a, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEES7_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEENS5_INS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEENS5_INS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEENS5_INS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEENS5_INS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %bb.g
  %.0.i = phi i1 [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEENS5_INS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %bb.a ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEES7_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEENS5_INS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEENS5_INS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEENS5_INS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ %i.q, %bb.g ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4absl21ParseLenientCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_9month_tagEEE(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.absl::time_internal::cctz::detail::civil_time.0", align 8 ; 8 uses
  %4 = alloca %"class.absl::time_internal::cctz::detail::civil_time.3", align 8 ; 8 uses
  %5 = alloca %"class.absl::time_internal::cctz::detail::civil_time.1", align 8 ; 8 uses
  %6 = alloca %"class.absl::time_internal::cctz::detail::civil_time", align 8 ; 8 uses
  %7 = alloca %"class.absl::time_internal::cctz::detail::civil_time.2", align 8 ; 8 uses
  %i.a = tail call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_9month_tagEEE(i64 %0, ptr readonly %1, ptr noundef %2)
  br i1 %i.a, label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  store i64 1970, ptr %7, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 0, ptr %i.c, align 4
  %i.d = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_7day_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %7)
  br i1 %i.d, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEENS5_INS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.c

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEENS5_INS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %7, align 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %i.b, align 8
  %.sroa.2.8.insert.ext.i.i.i.i.i = and i64 %.sroa.2.0.copyload.i.i.i, 255
  %.sroa.2.8.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.2.8.insert.ext.i.i.i.i.i, 256
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i.i to i40
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store i64 1970, ptr %6, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 0, ptr %i.f, align 4
  %i.g = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_10second_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %6)
  br i1 %i.g, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEENS5_INS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.d

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEENS5_INS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.c
  %.sroa.0.0.copyload.i.i27.i = load i64, ptr %6, align 8
  %.sroa.2.0.copyload.i.i28.i = load i64, ptr %i.e, align 8
  %.sroa.2.8.insert.ext.i.i.i.i29.i = and i64 %.sroa.2.0.copyload.i.i28.i, 255
  %.sroa.2.8.insert.insert.i.i.i.i30.i = or disjoint i64 %.sroa.2.8.insert.ext.i.i.i.i29.i, 256
  %.sroa.2.0.extract.trunc.i.i.i31.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i30.i to i40
  store i64 %.sroa.0.0.copyload.i.i27.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i32.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i31.i, ptr %.sroa.4.0..sroa_idx.i32.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i64 1970, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 0, ptr %i.i, align 4
  %i.j = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_8hour_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %5)
  br i1 %i.j, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEENS5_INS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.e

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEENS5_INS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.d
  %.sroa.0.0.copyload.i.i33.i = load i64, ptr %5, align 8
  %.sroa.2.0.copyload.i.i34.i = load i64, ptr %i.h, align 8
  %.sroa.2.8.insert.ext.i.i.i.i35.i = and i64 %.sroa.2.0.copyload.i.i34.i, 255
  %.sroa.2.8.insert.insert.i.i.i.i36.i = or disjoint i64 %.sroa.2.8.insert.ext.i.i.i.i35.i, 256
  %.sroa.2.0.extract.trunc.i.i.i37.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i36.i to i40
  store i64 %.sroa.0.0.copyload.i.i33.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i38.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i37.i, ptr %.sroa.4.0..sroa_idx.i38.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i64 1970, ptr %4, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 0, ptr %i.l, align 4
  %i.m = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_9month_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %4)
  br i1 %i.m, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEES7_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.f

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEES7_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 1970, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.o, align 4
  %i.p = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_10minute_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %3)
  br i1 %i.p, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEENS5_INS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.g

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEENS5_INS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.f
  %.sroa.0.0.copyload.i.i39.i = load i64, ptr %3, align 8
  %.sroa.2.0.copyload.i.i40.i = load i64, ptr %i.n, align 8
  %.sroa.2.8.insert.ext.i.i.i.i41.i = and i64 %.sroa.2.0.copyload.i.i40.i, 255
  %.sroa.2.8.insert.insert.i.i.i.i42.i = or disjoint i64 %.sroa.2.8.insert.ext.i.i.i.i41.i, 256
  %.sroa.2.0.extract.trunc.i.i.i43.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i42.i to i40
  store i64 %.sroa.0.0.copyload.i.i39.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i44.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i43.i, ptr %.sroa.4.0..sroa_idx.i44.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.q = tail call fastcc noundef zeroext i1 @_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEENS5_INS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr readonly %1, ptr noundef %2)
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit: ; preds = %bb.a, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEENS5_INS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEENS5_INS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEENS5_INS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEES7_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEENS5_INS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %bb.g
  %.0.i = phi i1 [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEENS5_INS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %bb.a ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEENS5_INS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEENS5_INS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEENS5_INS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEES7_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ %i.q, %bb.g ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4absl21ParseLenientCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_8year_tagEEE(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.absl::time_internal::cctz::detail::civil_time.0", align 8 ; 6 uses
  %4 = alloca %"class.absl::time_internal::cctz::detail::civil_time.3", align 8 ; 6 uses
  %5 = alloca %"class.absl::time_internal::cctz::detail::civil_time.1", align 8 ; 6 uses
  %6 = alloca %"class.absl::time_internal::cctz::detail::civil_time", align 8 ; 6 uses
  %7 = alloca %"class.absl::time_internal::cctz::detail::civil_time.2", align 8 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_8year_tagEEE(i64 %0, ptr readonly %1, ptr noundef %2)
  br i1 %i.a, label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  store i64 1970, ptr %7, align 8
  %i.b = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_7day_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %7)
  br i1 %i.b, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEENS5_INS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.c

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEENS5_INS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %7, align 8
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 257, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store i64 1970, ptr %6, align 8
  %i.c = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_10second_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %6)
  br i1 %i.c, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEENS5_INS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.d

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEENS5_INS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.c
  %.sroa.0.0.copyload.i.i27.i = load i64, ptr %6, align 8
  store i64 %.sroa.0.0.copyload.i.i27.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 257, ptr %.sroa.4.0..sroa_idx.i28.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i64 1970, ptr %5, align 8
  %i.d = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_8hour_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %5)
  br i1 %i.d, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEENS5_INS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.e

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEENS5_INS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.d
  %.sroa.0.0.copyload.i.i29.i = load i64, ptr %5, align 8
  store i64 %.sroa.0.0.copyload.i.i29.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i30.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 257, ptr %.sroa.4.0..sroa_idx.i30.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i64 1970, ptr %4, align 8
  %i.e = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_9month_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %4)
  br i1 %i.e, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEENS5_INS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.f

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEENS5_INS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.e
  %.sroa.0.0.copyload.i.i31.i = load i64, ptr %4, align 8
  store i64 %.sroa.0.0.copyload.i.i31.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i32.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 257, ptr %.sroa.4.0..sroa_idx.i32.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 1970, ptr %3, align 8
  %i.f = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_10minute_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %3)
  br i1 %i.f, label %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEENS5_INS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.g

_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEENS5_INS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.f
  %.sroa.0.0.copyload.i.i33.i = load i64, ptr %3, align 8
  store i64 %.sroa.0.0.copyload.i.i33.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i34.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 257, ptr %.sroa.4.0..sroa_idx.i34.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.g = tail call fastcc noundef zeroext i1 @_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEES7_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr readonly %1, ptr noundef %2)
  br label %_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

_ZN4absl12_GLOBAL__N_112ParseLenientINS_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit: ; preds = %bb.a, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEENS5_INS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEENS5_INS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEENS5_INS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEENS5_INS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEENS5_INS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %bb.g
  %.0.i = phi i1 [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10minute_tagEEENS5_INS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %bb.a ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_7day_tagEEENS5_INS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEENS5_INS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8hour_tagEEENS5_INS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_9month_tagEEENS5_INS2_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ %i.g, %bb.g ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl13time_internallsERSoNS0_4cctz6detail10civil_timeINS0_8year_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %.sroa.2.8.insert.ext.i = and i64 %2, 1099511627775
  call fastcc void @_ZN4absl12_GLOBAL__N_113FormatYearAndB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_13time_internal4cctz6detail10civil_timeINS5_10second_tagEEE(ptr dead_on_unwind noalias nonnull writable align 8 %3, i64 0, ptr nonnull @.str.5, i64 %1, i64 %.sroa.2.8.insert.ext.i)
  %i.a = load ptr, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a, i64 noundef %i.c) #10
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret ptr %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl13time_internallsERSoNS0_4cctz6detail10civil_timeINS0_9month_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %.sroa.2.8.insert.ext.i = and i64 %2, 1099511627775
  call fastcc void @_ZN4absl12_GLOBAL__N_113FormatYearAndB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_13time_internal4cctz6detail10civil_timeINS5_10second_tagEEE(ptr dead_on_unwind noalias nonnull writable align 8 %3, i64 3, ptr nonnull @.str.4, i64 %1, i64 %.sroa.2.8.insert.ext.i)
  %i.a = load ptr, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a, i64 noundef %i.c) #10
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl13time_internallsERSoNS0_4cctz6detail10civil_timeINS0_7day_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %.sroa.2.8.insert.ext.i = and i64 %2, 1099511627775
  call fastcc void @_ZN4absl12_GLOBAL__N_113FormatYearAndB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_13time_internal4cctz6detail10civil_timeINS5_10second_tagEEE(ptr dead_on_unwind noalias nonnull writable align 8 %3, i64 6, ptr nonnull @.str.3, i64 %1, i64 %.sroa.2.8.insert.ext.i)
  %i.a = load ptr, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a, i64 noundef %i.c) #10
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
end_hunk_0
begin_hunk_1_@_ZN4absl13time_internal4cctz6detail4impl5n_dayElallaaa:bb.a
  %.3 = phi i8 [ %1, %.loopexit ], [ %.0, %_ZN4absl13time_internal4cctz6detail4impl14days_per_monthEla.exit ]
  %i.cn = sub nsw i64 %0, %i.a
  %i.co = add i64 %i.cn, %.12
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.co, 0
  %.sroa.7.8.insert.ext = zext i8 %6 to i64
  %.sroa.7.8.insert.shift = shl nuw nsw i64 %.sroa.7.8.insert.ext, 32
  %.sroa.6.8.insert.ext = zext i8 %5 to i64
  %.sroa.6.8.insert.shift = shl nuw nsw i64 %.sroa.6.8.insert.ext, 24
  %.sroa.6.8.insert.insert = or disjoint i64 %.sroa.7.8.insert.shift, %.sroa.6.8.insert.shift
  %.sroa.5.8.insert.ext = zext i8 %4 to i64
  %.sroa.5.8.insert.shift = shl nuw nsw i64 %.sroa.5.8.insert.ext, 16
  %.sroa.5.8.insert.insert = or disjoint i64 %.sroa.6.8.insert.insert, %.sroa.5.8.insert.shift
  %.sroa.4.8.insert.ext = shl i64 %.10, 8
  %.sroa.4.8.insert.shift = and i64 %.sroa.4.8.insert.ext, 65280
  %.sroa.4.8.insert.insert = or disjoint i64 %.sroa.4.8.insert.shift, %.sroa.5.8.insert.insert
  %.sroa.2.8.insert.ext = zext i8 %.3 to i64
  %.sroa.2.8.insert.insert = or disjoint i64 %.sroa.4.8.insert.insert, %.sroa.2.8.insert.ext
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.2.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

declare ptr @_ZN4absl13time_internal4cctz13utc_time_zoneEv() local_unnamed_addr #2

declare noundef ptr @_ZN4absl16numbers_internal15FastIntToBufferElPc(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZNK4absl8TimeZone2AtENS_13time_internal4cctz6detail10civil_timeINS1_10second_tagEEE(ptr dead_on_unwind writable sret(%"struct.absl::TimeZone::TimeInfo") align 4, ptr noundef nonnull align 8 dereferenceable(8), i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN4absl9ParseTimeESt17basic_string_viewIcSt11char_traitsIcEES3_NS_8TimeZoneEPNS_4TimeEPNSt7__cxx1112basic_stringIcS2_SaIcEEE(i64, ptr, i64, ptr, ptr, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

declare void @_ZNK4absl8TimeZone2AtENS_4TimeE(ptr dead_on_unwind writable sret(%"struct.absl::TimeZone::CivilInfo") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEENS5_INS2_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.absl::time_internal::cctz::detail::civil_time.4", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 1970, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.b, align 4
  %i.c = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_8year_tagEEE(i64 %0, ptr %1, ptr noundef nonnull %3) ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %3, align 8
  %.sroa.2.0.copyload.i = load i64, ptr %i.a, align 8
  %.sroa.2.0.extract.trunc.i.i = trunc i64 %.sroa.2.0.copyload.i to i40
  store i64 %.sroa.0.0.copyload.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEENS5_INS2_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.absl::time_internal::cctz::detail::civil_time.4", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 1970, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.b, align 4
  %i.c = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_8year_tagEEE(i64 %0, ptr %1, ptr noundef nonnull %3) ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %3, align 8
  %.sroa.2.0.copyload.i = load i64, ptr %i.a, align 8
  %.sroa.2.8.insert.insert.i.i.i = and i64 %.sroa.2.0.copyload.i, 4294967295
  %.sroa.2.0.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i to i40
  store i64 %.sroa.0.0.copyload.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEENS5_INS2_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.absl::time_internal::cctz::detail::civil_time.4", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 1970, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.b, align 4
  %i.c = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_8year_tagEEE(i64 %0, ptr %1, ptr noundef nonnull %3) ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %3, align 8
  %.sroa.2.0.copyload.i = load i64, ptr %i.a, align 8
  %.sroa.2.8.insert.insert.i.i.i = and i64 %.sroa.2.0.copyload.i, 16777215
  %.sroa.2.0.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i to i40
  store i64 %.sroa.0.0.copyload.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEENS5_INS2_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.absl::time_internal::cctz::detail::civil_time.4", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 1970, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.b, align 4
  %i.c = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_8year_tagEEE(i64 %0, ptr %1, ptr noundef nonnull %3) ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %3, align 8
  %.sroa.2.0.copyload.i = load i64, ptr %i.a, align 8
  %.sroa.2.8.insert.insert.i.i.i = and i64 %.sroa.2.0.copyload.i, 65535
  %.sroa.2.0.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i to i40
  store i64 %.sroa.0.0.copyload.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEENS5_INS2_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.absl::time_internal::cctz::detail::civil_time.4", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 1970, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.b, align 4
  %i.c = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_8year_tagEEE(i64 %0, ptr %1, ptr noundef nonnull %3) ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %3, align 8
  %.sroa.2.0.copyload.i = load i64, ptr %i.a, align 8
  %.sroa.2.8.insert.ext.i.i.i = and i64 %.sroa.2.0.copyload.i, 255
  %.sroa.2.8.insert.insert.i.i.i = or disjoint i64 %.sroa.2.8.insert.ext.i.i.i, 256
  %.sroa.2.0.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i to i40
  store i64 %.sroa.0.0.copyload.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12_GLOBAL__N_17ParseAsINS_13time_internal4cctz6detail10civil_timeINS2_8year_tagEEES7_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.absl::time_internal::cctz::detail::civil_time.4", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 1970, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.b, align 4
  %i.c = call noundef zeroext i1 @_ZN4absl14ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS_13time_internal4cctz6detail10civil_timeINS4_8year_tagEEE(i64 %0, ptr %1, ptr noundef nonnull %3) ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i1 %i.c
}

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(read, argmem: readwrite) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read, argmem: readwrite) }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin nounwind allocsize(0) }
attributes #15 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_1
