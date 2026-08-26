Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/civil_time?download=true
inline.NumInlined: 449
inline.NumDeleted: 167
begin_hunk_0_@_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_8year_tagEEE:bb.a
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !24
  %i.am = load ptr, ptr %6, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !24
  %i.ap = invoke noundef zeroext i1 @_ZN4absl12lts_202605269ParseTimeESt17basic_string_viewIcSt11char_traitsIcEES4_NS0_8TimeZoneEPNS0_4TimeEPNSt7__cxx1112basic_stringIcS3_SaIcEEE(i64 %i.al, ptr %i.aj, i64 %i.ao, ptr %i.am, ptr %i.ag, ptr noundef nonnull %9, ptr noundef null)
          to label %bb.n unwind label %bb.u       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !25
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br i1 %i.ap, label %bb.o, label %bb.v

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.sroa.02.0.copyload.i = load i64, ptr %9, align 8
  %.sroa.23.0.copyload.i = load i32, ptr %i.ah, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.ag, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZNK4absl12lts_202605268TimeZone2AtENS0_4TimeE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::TimeZone::CivilInfo") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %.sroa.02.0.copyload.i, i32 %.sroa.23.0.copyload.i) #10
  %.sroa.28.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.28.0.copyload.i.i = load i64, ptr %.sroa.28.0..sroa_idx.i.i, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %sext.i = shl i64 %.sroa.28.0.copyload.i.i, 56
  %i.av = ashr exact i64 %sext.i, 56
  %i.aw = shl i64 %.sroa.28.0.copyload.i.i, 48
  %i.ax = ashr i64 %i.aw, 56
  %i.ay = shl i64 %.sroa.28.0.copyload.i.i, 40
  %i.az = ashr i64 %i.ay, 56
  %i.ba = shl i64 %.sroa.28.0.copyload.i.i, 32
  %i.bb = ashr i64 %i.ba, 56
  %i.bc = shl i64 %.sroa.28.0.copyload.i.i, 24
  %i.bd = ashr i64 %i.bc, 56
  %i.be = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %i.q, i64 noundef %i.av, i64 noundef %i.ax, i64 noundef %i.az, i64 noundef %i.bb, i64 noundef %i.bd) #10
  %.fca.0.extract.i.i = extractvalue { i64, i64 } %i.be, 0
  store i64 %.fca.0.extract.i.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 257, ptr %.sroa.4.0..sroa_idx.i, align 8
  br label %bb.v

bb.p:                                             ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.j
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn.i = phi { ptr, i32 } [ %i.bg, %bb.q ], [ %i.bf, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i

bb.s:                                             ; preds = %bb.k
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.t:                                             ; preds = %bb.l
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i

bb.u:                                             ; preds = %bb.m
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i: ; preds = %bb.u
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !25
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i, %bb.t
  %.pn30.i = phi { ptr, i32 } [ %i.bi, %bb.t ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i ], [ %i.bj, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %bb.w

bb.v:                                             ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  %i.bp = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i: ; preds = %bb.v
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !25
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.x

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i, %bb.s
  %.pn30.pn.pn.pn.i = phi { ptr, i32 } [ %.pn30.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i ], [ %i.bh, %bb.s ] ; 2 uses
  %i.bu = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i: ; preds = %bb.w
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !25
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i, %bb.r
  %.pn30.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.r ], [ %.pn30.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i ], [ %.pn30.pn.pn.pn.i, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.bz = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.c
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i
  %i.cb = load i64, ptr %i.c, align 8, !tbaa !25
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i, %bb.f, %bb.e
  %.1.i = phi i1 [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i ], [ false, %bb.f ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.cd = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.c
  br i1 %i.ce, label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseYearAndINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEESC_PT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i: ; preds = %bb.x
  %i.cf = load i64, ptr %i.c, align 8, !tbaa !25
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #12
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseYearAndINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEESC_PT_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  resume { ptr, i32 } %.pn30.pn.pn.pn.pn.i

_ZN4absl12lts_2026052612_GLOBAL__N_112ParseYearAndINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEESC_PT_.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i1 %.1.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_2026052621ParseLenientCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10second_tagEEE(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.0", align 8 ; 8 uses
  %4 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.3", align 8 ; 8 uses
  %5 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.1", align 8 ; 8 uses
  %6 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 8 uses
  %7 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.2", align 8 ; 8 uses
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10second_tagEEE(i64 %0, ptr readonly %1, ptr noundef %2)
  br i1 %i.a, label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  store i64 1970, ptr %7, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 0, ptr %i.c, align 4, !tbaa !33
  %i.d = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_7day_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %7)
  br i1 %i.d, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEENS6_INS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.c

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEENS6_INS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %7, align 8, !tbaa !27
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %i.b, align 8
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.2.0.copyload.i.i.i to i40
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 1970, ptr %6, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 0, ptr %i.f, align 4
  %i.g = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10second_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %6)
  br i1 %i.g, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEES8_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.d

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEES8_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i64 1970, ptr %5, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.h, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 0, ptr %i.i, align 4, !tbaa !33
  %i.j = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_8hour_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %5)
  br i1 %i.j, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEENS6_INS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.e

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEENS6_INS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.d
  %.sroa.0.0.copyload.i.i27.i = load i64, ptr %5, align 8, !tbaa !27
  %.sroa.2.0.copyload.i.i28.i = load i64, ptr %i.h, align 8
  %.sroa.2.0.extract.trunc.i.i.i29.i = trunc i64 %.sroa.2.0.copyload.i.i28.i to i40
  store i64 %.sroa.0.0.copyload.i.i27.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i30.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i29.i, ptr %.sroa.4.0..sroa_idx.i30.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i64 1970, ptr %4, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.k, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 0, ptr %i.l, align 4, !tbaa !33
  %i.m = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_9month_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %4)
  br i1 %i.m, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEENS6_INS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.f

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEENS6_INS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.e
  %.sroa.0.0.copyload.i.i31.i = load i64, ptr %4, align 8, !tbaa !27
  %.sroa.2.0.copyload.i.i32.i = load i64, ptr %i.k, align 8
  %.sroa.2.0.extract.trunc.i.i.i33.i = trunc i64 %.sroa.2.0.copyload.i.i32.i to i40
  store i64 %.sroa.0.0.copyload.i.i31.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i34.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i33.i, ptr %.sroa.4.0..sroa_idx.i34.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 1970, ptr %3, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.n, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.o, align 4, !tbaa !33
  %i.p = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10minute_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %3)
  br i1 %i.p, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEENS6_INS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.g

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEENS6_INS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.f
  %.sroa.0.0.copyload.i.i35.i = load i64, ptr %3, align 8, !tbaa !27
  %.sroa.2.0.copyload.i.i36.i = load i64, ptr %i.n, align 8
  %.sroa.2.0.extract.trunc.i.i.i37.i = trunc i64 %.sroa.2.0.copyload.i.i36.i to i40
  store i64 %.sroa.0.0.copyload.i.i35.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i38.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i37.i, ptr %.sroa.4.0..sroa_idx.i38.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.q = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEENS6_INS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr readonly %1, ptr noundef %2)
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit: ; preds = %bb.a, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEENS6_INS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEES8_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEENS6_INS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEENS6_INS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEENS6_INS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %bb.g
  %.0.i = phi i1 [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEENS6_INS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %bb.a ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEENS6_INS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEES8_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEENS6_INS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEENS6_INS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ %i.q, %bb.g ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_2026052621ParseLenientCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10minute_tagEEE(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.0", align 8 ; 8 uses
  %4 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.3", align 8 ; 8 uses
  %5 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.1", align 8 ; 8 uses
  %6 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 8 uses
  %7 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.2", align 8 ; 8 uses
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10minute_tagEEE(i64 %0, ptr readonly %1, ptr noundef %2)
  br i1 %i.a, label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  store i64 1970, ptr %7, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 0, ptr %i.c, align 4, !tbaa !33
  %i.d = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_7day_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %7)
  br i1 %i.d, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEENS6_INS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.c

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEENS6_INS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %7, align 8, !tbaa !27
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %i.b, align 8
  %.sroa.2.8.insert.insert.i.i.i.i.i = and i64 %.sroa.2.0.copyload.i.i.i, 4294967295
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i.i to i40
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store i64 1970, ptr %6, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 0, ptr %i.f, align 4, !tbaa !33
  %i.g = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10second_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %6)
  br i1 %i.g, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEENS6_INS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.d

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEENS6_INS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.c
  %.sroa.0.0.copyload.i.i27.i = load i64, ptr %6, align 8, !tbaa !27
  %.sroa.2.0.copyload.i.i28.i = load i64, ptr %i.e, align 8
  %.sroa.2.8.insert.insert.i.i.i.i29.i = and i64 %.sroa.2.0.copyload.i.i28.i, 4294967295
  %.sroa.2.0.extract.trunc.i.i.i30.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i29.i to i40
  store i64 %.sroa.0.0.copyload.i.i27.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i31.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i30.i, ptr %.sroa.4.0..sroa_idx.i31.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i64 1970, ptr %5, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.h, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 0, ptr %i.i, align 4, !tbaa !33
  %i.j = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_8hour_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %5)
  br i1 %i.j, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEENS6_INS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.e

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEENS6_INS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.d
  %.sroa.0.0.copyload.i.i32.i = load i64, ptr %5, align 8, !tbaa !27
  %.sroa.2.0.copyload.i.i33.i = load i64, ptr %i.h, align 8
  %.sroa.2.8.insert.insert.i.i.i.i34.i = and i64 %.sroa.2.0.copyload.i.i33.i, 4294967295
  %.sroa.2.0.extract.trunc.i.i.i35.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i34.i to i40
  store i64 %.sroa.0.0.copyload.i.i32.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i36.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i35.i, ptr %.sroa.4.0..sroa_idx.i36.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i64 1970, ptr %4, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.k, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 0, ptr %i.l, align 4, !tbaa !33
  %i.m = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_9month_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %4)
  br i1 %i.m, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEENS6_INS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.f

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEENS6_INS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.e
  %.sroa.0.0.copyload.i.i37.i = load i64, ptr %4, align 8, !tbaa !27
  %.sroa.2.0.copyload.i.i38.i = load i64, ptr %i.k, align 8
  %.sroa.2.8.insert.insert.i.i.i.i39.i = and i64 %.sroa.2.0.copyload.i.i38.i, 4294967295
  %.sroa.2.0.extract.trunc.i.i.i40.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i39.i to i40
  store i64 %.sroa.0.0.copyload.i.i37.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i41.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i40.i, ptr %.sroa.4.0..sroa_idx.i41.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 1970, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.o, align 4
  %i.p = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10minute_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %3)
  br i1 %i.p, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEES8_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.g

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEES8_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.q = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEENS6_INS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr readonly %1, ptr noundef %2)
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit: ; preds = %bb.a, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEENS6_INS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEENS6_INS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEENS6_INS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEENS6_INS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEES8_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %bb.g
  %.0.i = phi i1 [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEES8_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %bb.a ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEENS6_INS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEENS6_INS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEENS6_INS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEENS6_INS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ %i.q, %bb.g ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_2026052621ParseLenientCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_8hour_tagEEE(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.0", align 8 ; 8 uses
  %4 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.3", align 8 ; 8 uses
  %5 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.1", align 8 ; 8 uses
  %6 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 8 uses
  %7 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.2", align 8 ; 8 uses
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_8hour_tagEEE(i64 %0, ptr readonly %1, ptr noundef %2)
  br i1 %i.a, label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  store i64 1970, ptr %7, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 0, ptr %i.c, align 4, !tbaa !33
  %i.d = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_7day_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %7)
  br i1 %i.d, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEENS6_INS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.c

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEENS6_INS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %7, align 8, !tbaa !27
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %i.b, align 8
  %.sroa.2.8.insert.insert.i.i.i.i.i = and i64 %.sroa.2.0.copyload.i.i.i, 16777215
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i.i to i40
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store i64 1970, ptr %6, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 0, ptr %i.f, align 4, !tbaa !33
  %i.g = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10second_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %6)
  br i1 %i.g, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEENS6_INS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.d

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEENS6_INS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.c
  %.sroa.0.0.copyload.i.i27.i = load i64, ptr %6, align 8, !tbaa !27
  %.sroa.2.0.copyload.i.i28.i = load i64, ptr %i.e, align 8
  %.sroa.2.8.insert.insert.i.i.i.i29.i = and i64 %.sroa.2.0.copyload.i.i28.i, 16777215
  %.sroa.2.0.extract.trunc.i.i.i30.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i29.i to i40
  store i64 %.sroa.0.0.copyload.i.i27.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i31.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i30.i, ptr %.sroa.4.0..sroa_idx.i31.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 1970, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 0, ptr %i.i, align 4
  %i.j = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_8hour_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %5)
  br i1 %i.j, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEES8_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.e

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEES8_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i64 1970, ptr %4, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.k, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 0, ptr %i.l, align 4, !tbaa !33
  %i.m = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_9month_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %4)
  br i1 %i.m, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEENS6_INS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.f

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEENS6_INS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.e
  %.sroa.0.0.copyload.i.i32.i = load i64, ptr %4, align 8, !tbaa !27
  %.sroa.2.0.copyload.i.i33.i = load i64, ptr %i.k, align 8
  %.sroa.2.8.insert.insert.i.i.i.i34.i = and i64 %.sroa.2.0.copyload.i.i33.i, 16777215
  %.sroa.2.0.extract.trunc.i.i.i35.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i34.i to i40
  store i64 %.sroa.0.0.copyload.i.i32.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i36.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i35.i, ptr %.sroa.4.0..sroa_idx.i36.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 1970, ptr %3, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.n, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.o, align 4, !tbaa !33
  %i.p = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10minute_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %3)
  br i1 %i.p, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEENS6_INS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.g

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEENS6_INS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.f
  %.sroa.0.0.copyload.i.i37.i = load i64, ptr %3, align 8, !tbaa !27
  %.sroa.2.0.copyload.i.i38.i = load i64, ptr %i.n, align 8
  %.sroa.2.8.insert.insert.i.i.i.i39.i = and i64 %.sroa.2.0.copyload.i.i38.i, 16777215
  %.sroa.2.0.extract.trunc.i.i.i40.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i39.i to i40
  store i64 %.sroa.0.0.copyload.i.i37.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i41.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i40.i, ptr %.sroa.4.0..sroa_idx.i41.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.q = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEENS6_INS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr readonly %1, ptr noundef %2)
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit: ; preds = %bb.a, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEENS6_INS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEENS6_INS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEES8_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEENS6_INS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEENS6_INS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %bb.g
  %.0.i = phi i1 [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEENS6_INS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %bb.a ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEENS6_INS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEENS6_INS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEES8_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEENS6_INS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ %i.q, %bb.g ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_2026052621ParseLenientCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_7day_tagEEE(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.0", align 8 ; 8 uses
  %4 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.3", align 8 ; 8 uses
  %5 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.1", align 8 ; 8 uses
  %6 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 8 uses
  %7 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.2", align 8 ; 8 uses
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_7day_tagEEE(i64 %0, ptr readonly %1, ptr noundef %2)
  br i1 %i.a, label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 1970, ptr %7, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 0, ptr %i.c, align 4
  %i.d = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_7day_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %7)
  br i1 %i.d, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEES8_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.c

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEES8_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store i64 1970, ptr %6, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 0, ptr %i.f, align 4, !tbaa !33
  %i.g = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10second_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %6)
  br i1 %i.g, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEENS6_INS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.d

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEENS6_INS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %6, align 8, !tbaa !27
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %i.e, align 8
  %.sroa.2.8.insert.insert.i.i.i.i.i = and i64 %.sroa.2.0.copyload.i.i.i, 65535
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i.i to i40
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i64 1970, ptr %5, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.h, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 0, ptr %i.i, align 4, !tbaa !33
  %i.j = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_8hour_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %5)
  br i1 %i.j, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEENS6_INS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.e

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEENS6_INS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.d
  %.sroa.0.0.copyload.i.i27.i = load i64, ptr %5, align 8, !tbaa !27
  %.sroa.2.0.copyload.i.i28.i = load i64, ptr %i.h, align 8
  %.sroa.2.8.insert.insert.i.i.i.i29.i = and i64 %.sroa.2.0.copyload.i.i28.i, 65535
  %.sroa.2.0.extract.trunc.i.i.i30.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i29.i to i40
  store i64 %.sroa.0.0.copyload.i.i27.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i31.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i30.i, ptr %.sroa.4.0..sroa_idx.i31.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i64 1970, ptr %4, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.k, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 0, ptr %i.l, align 4, !tbaa !33
  %i.m = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_9month_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %4)
  br i1 %i.m, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEENS6_INS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.f

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEENS6_INS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.e
  %.sroa.0.0.copyload.i.i32.i = load i64, ptr %4, align 8, !tbaa !27
  %.sroa.2.0.copyload.i.i33.i = load i64, ptr %i.k, align 8
  %.sroa.2.8.insert.insert.i.i.i.i34.i = and i64 %.sroa.2.0.copyload.i.i33.i, 65535
  %.sroa.2.0.extract.trunc.i.i.i35.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i34.i to i40
  store i64 %.sroa.0.0.copyload.i.i32.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i36.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i35.i, ptr %.sroa.4.0..sroa_idx.i36.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 1970, ptr %3, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.n, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.o, align 4, !tbaa !33
  %i.p = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10minute_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %3)
  br i1 %i.p, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEENS6_INS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.g

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEENS6_INS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.f
  %.sroa.0.0.copyload.i.i37.i = load i64, ptr %3, align 8, !tbaa !27
  %.sroa.2.0.copyload.i.i38.i = load i64, ptr %i.n, align 8
  %.sroa.2.8.insert.insert.i.i.i.i39.i = and i64 %.sroa.2.0.copyload.i.i38.i, 65535
  %.sroa.2.0.extract.trunc.i.i.i40.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i39.i to i40
  store i64 %.sroa.0.0.copyload.i.i37.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i41.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i40.i, ptr %.sroa.4.0..sroa_idx.i41.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.q = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEENS6_INS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr readonly %1, ptr noundef %2)
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit: ; preds = %bb.a, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEES8_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEENS6_INS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEENS6_INS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEENS6_INS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEENS6_INS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %bb.g
  %.0.i = phi i1 [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEENS6_INS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %bb.a ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEES8_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEENS6_INS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEENS6_INS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEENS6_INS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ %i.q, %bb.g ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_2026052621ParseLenientCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_9month_tagEEE(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.0", align 8 ; 8 uses
  %4 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.3", align 8 ; 8 uses
  %5 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.1", align 8 ; 8 uses
  %6 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 8 uses
  %7 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.2", align 8 ; 8 uses
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_9month_tagEEE(i64 %0, ptr readonly %1, ptr noundef %2)
  br i1 %i.a, label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  store i64 1970, ptr %7, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 0, ptr %i.c, align 4, !tbaa !33
  %i.d = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_7day_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %7)
  br i1 %i.d, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEENS6_INS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.c

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEENS6_INS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %7, align 8, !tbaa !27
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %i.b, align 8
  %.sroa.2.8.insert.ext.i.i.i.i.i = and i64 %.sroa.2.0.copyload.i.i.i, 255
  %.sroa.2.8.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.2.8.insert.ext.i.i.i.i.i, 256
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i.i to i40
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store i64 1970, ptr %6, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 0, ptr %i.f, align 4, !tbaa !33
  %i.g = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10second_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %6)
  br i1 %i.g, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEENS6_INS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.d

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEENS6_INS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.c
  %.sroa.0.0.copyload.i.i27.i = load i64, ptr %6, align 8, !tbaa !27
  %.sroa.2.0.copyload.i.i28.i = load i64, ptr %i.e, align 8
  %.sroa.2.8.insert.ext.i.i.i.i29.i = and i64 %.sroa.2.0.copyload.i.i28.i, 255
  %.sroa.2.8.insert.insert.i.i.i.i30.i = or disjoint i64 %.sroa.2.8.insert.ext.i.i.i.i29.i, 256
  %.sroa.2.0.extract.trunc.i.i.i31.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i30.i to i40
  store i64 %.sroa.0.0.copyload.i.i27.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i32.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i31.i, ptr %.sroa.4.0..sroa_idx.i32.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i64 1970, ptr %5, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.h, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 0, ptr %i.i, align 4, !tbaa !33
  %i.j = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_8hour_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %5)
  br i1 %i.j, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEENS6_INS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.e

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEENS6_INS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.d
  %.sroa.0.0.copyload.i.i33.i = load i64, ptr %5, align 8, !tbaa !27
  %.sroa.2.0.copyload.i.i34.i = load i64, ptr %i.h, align 8
  %.sroa.2.8.insert.ext.i.i.i.i35.i = and i64 %.sroa.2.0.copyload.i.i34.i, 255
  %.sroa.2.8.insert.insert.i.i.i.i36.i = or disjoint i64 %.sroa.2.8.insert.ext.i.i.i.i35.i, 256
  %.sroa.2.0.extract.trunc.i.i.i37.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i36.i to i40
  store i64 %.sroa.0.0.copyload.i.i33.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i38.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i37.i, ptr %.sroa.4.0..sroa_idx.i38.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 1970, ptr %4, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 0, ptr %i.l, align 4
  %i.m = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_9month_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %4)
  br i1 %i.m, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEES8_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.f

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEES8_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 1970, ptr %3, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.n, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.o, align 4, !tbaa !33
  %i.p = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10minute_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %3)
  br i1 %i.p, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEENS6_INS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.g

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEENS6_INS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.f
  %.sroa.0.0.copyload.i.i39.i = load i64, ptr %3, align 8, !tbaa !27
  %.sroa.2.0.copyload.i.i40.i = load i64, ptr %i.n, align 8
  %.sroa.2.8.insert.ext.i.i.i.i41.i = and i64 %.sroa.2.0.copyload.i.i40.i, 255
  %.sroa.2.8.insert.insert.i.i.i.i42.i = or disjoint i64 %.sroa.2.8.insert.ext.i.i.i.i41.i, 256
  %.sroa.2.0.extract.trunc.i.i.i43.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i.i42.i to i40
  store i64 %.sroa.0.0.copyload.i.i39.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i44.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i43.i, ptr %.sroa.4.0..sroa_idx.i44.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.q = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEENS6_INS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr readonly %1, ptr noundef %2)
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit: ; preds = %bb.a, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEENS6_INS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEENS6_INS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEENS6_INS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEES8_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEENS6_INS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %bb.g
  %.0.i = phi i1 [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEENS6_INS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %bb.a ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEENS6_INS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEENS6_INS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEENS6_INS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEES8_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ %i.q, %bb.g ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_2026052621ParseLenientCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_8year_tagEEE(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.0", align 8 ; 6 uses
  %4 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.3", align 8 ; 6 uses
  %5 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.1", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.2", align 8 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_8year_tagEEE(i64 %0, ptr readonly %1, ptr noundef %2)
  br i1 %i.a, label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  store i64 1970, ptr %7, align 8, !tbaa !31
  %i.b = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_7day_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %7)
  br i1 %i.b, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEENS6_INS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.c

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEENS6_INS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %7, align 8, !tbaa !27
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 257, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store i64 1970, ptr %6, align 8, !tbaa !31
  %i.c = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10second_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %6)
  br i1 %i.c, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEENS6_INS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.d

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEENS6_INS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.c
  %.sroa.0.0.copyload.i.i27.i = load i64, ptr %6, align 8, !tbaa !27
  store i64 %.sroa.0.0.copyload.i.i27.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 257, ptr %.sroa.4.0..sroa_idx.i28.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i64 1970, ptr %5, align 8, !tbaa !31
  %i.d = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_8hour_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %5)
  br i1 %i.d, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEENS6_INS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.e

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEENS6_INS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.d
  %.sroa.0.0.copyload.i.i29.i = load i64, ptr %5, align 8, !tbaa !27
  store i64 %.sroa.0.0.copyload.i.i29.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i30.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 257, ptr %.sroa.4.0..sroa_idx.i30.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i64 1970, ptr %4, align 8, !tbaa !31
  %i.e = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_9month_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %4)
  br i1 %i.e, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEENS6_INS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.f

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEENS6_INS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.e
  %.sroa.0.0.copyload.i.i31.i = load i64, ptr %4, align 8, !tbaa !27
  store i64 %.sroa.0.0.copyload.i.i31.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i32.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 257, ptr %.sroa.4.0..sroa_idx.i32.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 1970, ptr %3, align 8, !tbaa !31
  %i.f = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_10minute_tagEEE(i64 %0, ptr readonly %1, ptr noundef nonnull %3)
  br i1 %i.f, label %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEENS6_INS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, label %bb.g

_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEENS6_INS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i: ; preds = %bb.f
  %.sroa.0.0.copyload.i.i33.i = load i64, ptr %3, align 8, !tbaa !27
  store i64 %.sroa.0.0.copyload.i.i33.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx.i34.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 257, ptr %.sroa.4.0..sroa_idx.i34.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.g = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEES8_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr readonly %1, ptr noundef %2)
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit

_ZN4absl12lts_2026052612_GLOBAL__N_112ParseLenientINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_.exit: ; preds = %bb.a, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEENS6_INS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEENS6_INS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEENS6_INS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEENS6_INS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEENS6_INS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i, %bb.g
  %.0.i = phi i1 [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10minute_tagEEENS6_INS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %bb.a ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_7day_tagEEENS6_INS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEENS6_INS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8hour_tagEEENS6_INS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_9month_tagEEENS6_INS3_8year_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_.exit.thread.i ], [ %i.g, %bb.g ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_8year_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %.sroa.2.8.insert.ext.i = and i64 %2, 1099511627775
  call fastcc void @_ZN4absl12lts_2026052612_GLOBAL__N_113FormatYearAndB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS0_13time_internal4cctz6detail10civil_timeINS6_10second_tagEEE(ptr dead_on_unwind noalias nonnull writable align 8 %3, i64 0, ptr nonnull @.str.5, i64 %1, i64 %.sroa.2.8.insert.ext.i)
  %i.a = load ptr, ptr %3, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.h = load i64, ptr %i.f, align 8, !tbaa !25
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret ptr %i.d

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !25
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  resume { ptr, i32 } %i.j
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052613time_internallsERSoNS1_4cctz6detail10civil_timeINS1_9month_tagEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %.sroa.2.8.insert.ext.i = and i64 %2, 1099511627775
  call fastcc void @_ZN4absl12lts_2026052612_GLOBAL__N_113FormatYearAndB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS0_13time_internal4cctz6detail10civil_timeINS6_10second_tagEEE(ptr dead_on_unwind noalias nonnull writable align 8 %3, i64 3, ptr nonnull @.str.4, i64 %1, i64 %.sroa.2.8.insert.ext.i)
  %i.a = load ptr, ptr %3, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa:bb.a
  %spec.select114 = add nsw i64 %.990, %i.cm
  %spec.select115 = select i1 %i.cl, i8 1, i8 %i.ck
  br label %.preheader

.thread:                                          ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14days_per_monthEla.exit, %.loopexit
  %.12 = phi i64 [ %.889, %.loopexit ], [ %.990, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14days_per_monthEla.exit ]
  %.10 = phi i64 [ %.7, %.loopexit ], [ %.8, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14days_per_monthEla.exit ]
  %.3 = phi i8 [ %1, %.loopexit ], [ %.0, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14days_per_monthEla.exit ]
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

declare ptr @_ZN4absl12lts_2026052613time_internal4cctz13utc_time_zoneEv() local_unnamed_addr #2

declare noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferElPc(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZNK4absl12lts_202605268TimeZone2AtENS0_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEE(ptr dead_on_unwind writable sret(%"struct.absl::lts_20260526::TimeZone::TimeInfo") align 4, ptr noundef nonnull align 8 dereferenceable(8), i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare noundef zeroext i1 @_ZN4absl12lts_202605269ParseTimeESt17basic_string_viewIcSt11char_traitsIcEES4_NS0_8TimeZoneEPNS0_4TimeEPNSt7__cxx1112basic_stringIcS3_SaIcEEE(i64, ptr, i64, ptr, ptr, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare void @_ZNK4absl12lts_202605268TimeZone2AtENS0_4TimeE(ptr dead_on_unwind writable sret(%"struct.absl::lts_20260526::TimeZone::CivilInfo") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64, i32) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEENS6_INS3_10second_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.4", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 1970, ptr %3, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.b, align 4, !tbaa !33
  %i.c = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_8year_tagEEE(i64 %0, ptr %1, ptr noundef nonnull %3) ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %3, align 8, !tbaa !27
  %.sroa.2.0.copyload.i = load i64, ptr %i.a, align 8
  %.sroa.2.0.extract.trunc.i.i = trunc i64 %.sroa.2.0.copyload.i to i40
  store i64 %.sroa.0.0.copyload.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEENS6_INS3_10minute_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.4", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 1970, ptr %3, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.b, align 4, !tbaa !33
  %i.c = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_8year_tagEEE(i64 %0, ptr %1, ptr noundef nonnull %3) ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %3, align 8, !tbaa !27
  %.sroa.2.0.copyload.i = load i64, ptr %i.a, align 8
  %.sroa.2.8.insert.insert.i.i.i = and i64 %.sroa.2.0.copyload.i, 4294967295
  %.sroa.2.0.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i to i40
  store i64 %.sroa.0.0.copyload.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEENS6_INS3_8hour_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.4", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 1970, ptr %3, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.b, align 4, !tbaa !33
  %i.c = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_8year_tagEEE(i64 %0, ptr %1, ptr noundef nonnull %3) ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %3, align 8, !tbaa !27
  %.sroa.2.0.copyload.i = load i64, ptr %i.a, align 8
  %.sroa.2.8.insert.insert.i.i.i = and i64 %.sroa.2.0.copyload.i, 16777215
  %.sroa.2.0.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i to i40
  store i64 %.sroa.0.0.copyload.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEENS6_INS3_7day_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.4", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 1970, ptr %3, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.b, align 4, !tbaa !33
  %i.c = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_8year_tagEEE(i64 %0, ptr %1, ptr noundef nonnull %3) ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %3, align 8, !tbaa !27
  %.sroa.2.0.copyload.i = load i64, ptr %i.a, align 8
  %.sroa.2.8.insert.insert.i.i.i = and i64 %.sroa.2.0.copyload.i, 65535
  %.sroa.2.0.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i to i40
  store i64 %.sroa.0.0.copyload.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEENS6_INS3_9month_tagEEEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.4", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 1970, ptr %3, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.b, align 4, !tbaa !33
  %i.c = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_8year_tagEEE(i64 %0, ptr %1, ptr noundef nonnull %3) ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %3, align 8, !tbaa !27
  %.sroa.2.0.copyload.i = load i64, ptr %i.a, align 8
  %.sroa.2.8.insert.ext.i.i.i = and i64 %.sroa.2.0.copyload.i, 255
  %.sroa.2.8.insert.insert.i.i.i = or disjoint i64 %.sroa.2.8.insert.ext.i.i.i, 256
  %.sroa.2.0.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i to i40
  store i64 %.sroa.0.0.copyload.i, ptr %2, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052612_GLOBAL__N_17ParseAsINS0_13time_internal4cctz6detail10civil_timeINS3_8year_tagEEES8_EEbSt17basic_string_viewIcSt11char_traitsIcEEPT0_(i64 %0, ptr nofree readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.4", align 8 ; 5 uses
  store i64 1970, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.b, align 4
  %i.c = call noundef zeroext i1 @_ZN4absl12lts_2026052614ParseCivilTimeESt17basic_string_viewIcSt11char_traitsIcEEPNS0_13time_internal4cctz6detail10civil_timeINS5_8year_tagEEE(i64 %0, ptr %1, ptr noundef nonnull %3) ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.c
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(read, argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read, argmem: readwrite) }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !11, i64 0, !12, i64 8}
!11 = !{!"long", !7, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!10, !12, i64 8}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTSN4absl12lts_202605268TimeZone8TimeInfoE", !17, i64 0, !18, i64 4, !18, i64 16, !18, i64 28}
!17 = !{!"_ZTSN4absl12lts_202605268TimeZone8TimeInfo9CivilKindE", !7, i64 0}
!18 = !{!"_ZTSN4absl12lts_202605264TimeE", !19, i64 0}
!19 = !{!"_ZTSN4absl12lts_202605268DurationE", !20, i64 0, !6, i64 8}
!20 = !{!"_ZTSN4absl12lts_202605268Duration5HiRepE", !6, i64 0, !6, i64 4}
!21 = !{!22, !12, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !11, i64 8, !7, i64 16}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!24 = !{!22, !11, i64 8}
!25 = !{!7, !7, i64 0}
!26 = !{!23, !12, i64 0}
!27 = !{!11, !11, i64 0}
!28 = !{!6, !6, i64 0}
!29 = !{!12, !12, i64 0}
!30 = !{!19, !6, i64 8}
!31 = !{!32, !11, i64 0}
!32 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz6detail6fieldsE", !11, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !7, i64 12}
!33 = !{!32, !7, i64 12}
end_hunk_1
