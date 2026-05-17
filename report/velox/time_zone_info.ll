inline.NumInlined: 1347
inline.NumDeleted: 560
begin_hunk_0_@_ZN4absl12lts_2024011613time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %_ZNSt10unique_ptrIN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EED2Ev.exit14

_ZNSt10unique_ptrIN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EED2Ev.exit14: ; preds = %_ZNKSt14default_deleteIN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceEEclEPS4_.exit.i13, %bb.l, %_ZNSt14_Function_baseD2Ev.exit11
  %.pn = phi { ptr, i32 } [ %i.p, %_ZNSt14_Function_baseD2Ev.exit11 ], [ %i.u, %bb.l ], [ %i.u, %_ZNKSt14default_deleteIN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceEEclEPS4_.exit.i13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EED2Ev.exit, %bb.b
  %.06 = phi i1 [ true, %bb.b ], [ %i.o, %_ZNSt10unique_ptrIN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i1 %.06
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare noundef zeroext i1 @_ZN4absl12lts_2024011613time_internal4cctz19FixedOffsetFromNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNSt6chrono8durationIlSt5ratioILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011613time_internal4cctz12TimeZoneInfo3UTCEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.18") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::chrono::duration", align 8 ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #28 ; 16 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4absl12lts_2024011613time_internal4cctz12TimeZoneInfoE, i64 16), ptr %i.a, align 8, !tbaa !112
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 0, ptr %i.e, align 8, !tbaa !7
  store i8 0, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %i.h, align 8, !tbaa !7
  store i8 0, ptr %i.g, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 0, ptr %i.k, align 8, !tbaa !7
  store i8 0, ptr %i.j, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store i64 0, ptr %1, align 8
  %i.m = invoke noundef zeroext i1 @_ZN4absl12lts_2024011613time_internal4cctz12TimeZoneInfo17ResetToBuiltinUTCERKNSt6chrono8durationIlSt5ratioILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(192) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %_ZNSt10unique_ptrIN4absl12lts_2024011613time_internal4cctz12TimeZoneInfoESt14default_deleteIS4_EED2Ev.exit ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

_ZNSt10unique_ptrIN4absl12lts_2024011613time_internal4cctz12TimeZoneInfoESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(192) %i.a) #26, !inline_history !154
  resume { ptr, i32 } %i.n
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011613time_internal4cctz12TimeZoneInfo4MakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.18") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #28 ; 18 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4absl12lts_2024011613time_internal4cctz12TimeZoneInfoE, i64 16), ptr %i.a, align 8, !tbaa !112
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 0, ptr %i.e, align 8, !tbaa !7
  store i8 0, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %i.h, align 8, !tbaa !7
  store i8 0, ptr %i.g, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 0, ptr %i.k, align 8, !tbaa !7
  store i8 0, ptr %i.j, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !152
  %i.m = invoke noundef zeroext i1 @_ZN4absl12lts_2024011613time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(192) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %_ZNSt10unique_ptrIN4absl12lts_2024011613time_internal4cctz12TimeZoneInfoESt14default_deleteIS4_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.m, label %bb.c, label %_ZNSt10unique_ptrIN4absl12lts_2024011613time_internal4cctz12TimeZoneInfoESt14default_deleteIS4_EE5resetEPS4_.exit

_ZNSt10unique_ptrIN4absl12lts_2024011613time_internal4cctz12TimeZoneInfoESt14default_deleteIS4_EE5resetEPS4_.exit: ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !152
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(192) %i.a) #26, !inline_history !155
  br label %bb.c

_ZNSt10unique_ptrIN4absl12lts_2024011613time_internal4cctz12TimeZoneInfoESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(192) %i.a) #26, !inline_history !154
  resume { ptr, i32 } %i.q

bb.c:                                             ; preds = %bb.b, %_ZNSt10unique_ptrIN4absl12lts_2024011613time_internal4cctz12TimeZoneInfoESt14default_deleteIS4_EE5resetEPS4_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_10TransitionE(ptr dead_on_unwind noalias writable writeonly sret(%"struct.absl::lts_20240116::time_internal::cctz::time_zone::absolute_lookup") align 8 captures(none) initializes((0, 21), (24, 32)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(192) %1, i64 noundef %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !55
  %i.d = zext i8 %i.c to i64
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.d ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.0.0.copyload = load i64, ptr %i.g, align 8, !tbaa !72
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 5 uses
  %i.h = load i64, ptr %3, align 8, !tbaa !62
  %i.i = sub nsw i64 %2, %i.h                     ; 2 uses
  %sext.i.i = shl i64 %.sroa.2.0.copyload, 56
  %i.j = ashr exact i64 %sext.i.i, 56
  %i.k = shl i64 %.sroa.2.0.copyload, 48
  %i.l = ashr i64 %i.k, 56
  %i.m = shl i64 %.sroa.2.0.copyload, 40
  %i.n = ashr i64 %i.m, 56
  %i.o = shl i64 %.sroa.2.0.copyload, 32
  %i.p = ashr i64 %i.o, 56
  %i.q = sdiv i64 %i.i, 60
  %i.r = add nsw i64 %i.q, %i.p
  %i.s = shl i64 %.sroa.2.0.copyload, 24
  %i.t = ashr i64 %i.s, 56
  %i.u = srem i64 %i.i, 60
  %i.v = add nsw i64 %i.u, %i.t
  %i.w = tail call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %.sroa.0.0.copyload, i64 noundef %i.j, i64 noundef %i.l, i64 noundef %i.n, i64 noundef %i.r, i64 noundef %i.v) #26 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i64 } %i.w, 1
  %.sroa.2.8.insert.ext.i = and i64 %.fca.1.extract.i.i, 1099511627775
  %i.x = extractvalue { i64, i64 } %i.w, 0
  store i64 %i.x, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.2.8.insert.ext.i, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.f, align 8, !tbaa !23
  store i32 %i.aa, ptr %i.z, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !24, !range !25, !noundef !26
  store i8 %i.ad, ptr %i.ab, align 4, !tbaa !89
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 41
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !18
  %i.ai = zext i8 %i.ah to i64
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo9TimeLocalERKNS2_6detail10civil_timeINS4_10second_tagEEEl(ptr dead_on_unwind noalias writable sret(%"struct.absl::lts_20240116::time_internal::cctz::time_zone::civil_lookup") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !112
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"struct.absl::lts_20240116::time_internal::cctz::time_zone::civil_lookup") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.d = icmp sgt i64 %3, 730692561
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 9223372036854775807, ptr %i.f, align 8, !tbaa !72
  store i64 9223372036854775807, ptr %i.e, align 8, !tbaa !72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9223372036854775807, ptr %i.g, align 8, !tbaa !72
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = mul nsw i64 %3, 12622780800
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %4 = load <3 x i64>, ptr %i.i, align 8, !tbaa !72
  %5 = insertelement <3 x i64> poison, i64 %i.h, i64 0
  %6 = shufflevector <3 x i64> %5, <3 x i64> poison, <3 x i32> zeroinitializer
  %7 = tail call <3 x i64> @llvm.sadd.sat.v3i64(<3 x i64> %6, <3 x i64> %4)
  store <3 x i64> %7, ptr %i.i, align 8, !tbaa !72
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo9BreakTimeERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind noalias writable sret(%"struct.absl::lts_20240116::time_internal::cctz::time_zone::absolute_lookup") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i1.i = load i64, ptr %2, align 8, !tbaa !72 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !61   ; 6 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = sdiv exact i64 %i.g, 48
  %i.i = load i64, ptr %i.d, align 8, !tbaa !62
  %i.j = icmp slt i64 %.sroa.0.0.copyload.i.i1.i, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i8, ptr %i.l, align 8, !tbaa !98
  %i.n = zext i8 %i.m to i64
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.n ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.q = sdiv i64 %.sroa.0.0.copyload.i.i1.i, 60
  %i.r = srem i64 %.sroa.0.0.copyload.i.i1.i, 60
  %i.s = tail call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_secEllllll(i64 noundef 1970, i64 noundef 1, i64 noundef 1, i64 noundef 0, i64 noundef %i.q, i64 noundef %i.r) #26, !noalias !156 ; 2 uses
  %.fca.1.extract.i.i.i = extractvalue { i64, i64 } %i.s, 1 ; 5 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0
  %i.u = load i32, ptr %i.p, align 8, !tbaa !23, !noalias !156 ; 2 uses
  %sext.i.i5.i = shl i64 %.fca.1.extract.i.i.i, 56
  %i.v = ashr exact i64 %sext.i.i5.i, 56
  %i.w = shl i64 %.fca.1.extract.i.i.i, 48
  %i.x = ashr i64 %i.w, 56
  %i.y = shl i64 %.fca.1.extract.i.i.i, 40
  %i.z = ashr i64 %i.y, 56
  %i.aa = shl i64 %.fca.1.extract.i.i.i, 32
  %i.ab = ashr i64 %i.aa, 56
  %i.ac = sdiv i32 %i.u, 60
  %.sext.i = sext i32 %i.ac to i64
  %i.ad = add nsw i64 %i.ab, %.sext.i
  %.sroa.2.8.insert.ext.i.i = shl i64 %.fca.1.extract.i.i.i, 24
  %i.ae = ashr i64 %.sroa.2.8.insert.ext.i.i, 56
  %i.af = srem i32 %i.u, 60
  %.sext10.i = sext i32 %i.af to i64
  %i.ag = add nsw i64 %i.ae, %.sext10.i
  %i.ah = tail call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %i.t, i64 noundef %i.v, i64 noundef %i.x, i64 noundef %i.z, i64 noundef %i.ad, i64 noundef %i.ag) #26, !noalias !156 ; 2 uses
  %.fca.1.extract.i.i6.i = extractvalue { i64, i64 } %i.ah, 1
  %.sroa.2.8.insert.ext.i7.i = and i64 %.fca.1.extract.i.i6.i, 1099511627775
  %i.ai = extractvalue { i64, i64 } %i.ah, 0
  store i64 %i.ai, ptr %0, align 8, !alias.scope !156
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.2.8.insert.ext.i7.i, ptr %i.aj, align 8, !alias.scope !156
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load i32, ptr %i.p, align 8, !tbaa !23, !noalias !156
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !87, !alias.scope !156
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !24, !range !25, !noalias !156, !noundef !26
  store i8 %i.ao, ptr %i.am, align 4, !tbaa !89, !alias.scope !156
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 41
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !18, !noalias !156
  %i.at = zext i8 %i.as to i64
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !17, !noalias !156
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !90, !alias.scope !156
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.g    ; 4 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 -48
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !62 ; 3 uses
  %.not = icmp slt i64 %.sroa.0.0.copyload.i.i1.i, %i.ay
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !34, !range !25, !noundef !26
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bc = sub nsw i64 %.sroa.0.0.copyload.i.i1.i, %i.ay
  %i.bd = sdiv i64 %i.bc, 12622780800
  %i.be = add nsw i64 %i.bd, 1                    ; 2 uses
  %.neg = mul i64 %i.be, -12622780800
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.bf = add i64 %.neg, %.sroa.0.0.copyload.i.i1.i
  store i64 %i.bf, ptr %3, align 8
  %i.bg = load ptr, ptr %1, align 8, !tbaa !112
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr dead_on_unwind writable sret(%"struct.absl::lts_20240116::time_internal::cctz::time_zone::absolute_lookup") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.bj = mul nsw i64 %i.be, 400
  %i.bk = load i64, ptr %0, align 8, !tbaa !63
  %i.bl = add nsw i64 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !91
  %i.bo = sext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !92
  %i.br = sext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bt = load i8, ptr %i.bs, align 2, !tbaa !141
  %i.bu = sext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !142
  %i.bx = sext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !143
  %i.ca = sext i8 %i.bz to i64
  %i.cb = call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %i.bl, i64 noundef %i.bo, i64 noundef %i.br, i64 noundef %i.bu, i64 noundef %i.bx, i64 noundef %i.ca) #26 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i64 } %i.cb, 1
  %.sroa.2.8.insert.ext.i = and i64 %.fca.1.extract.i.i, 1099511627775
  %i.cc = extractvalue { i64, i64 } %i.cb, 0
  store i64 %i.cc, ptr %0, align 8, !tbaa !72
  store i64 %.sroa.2.8.insert.ext.i, ptr %i.bm, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ce = getelementptr i8, ptr %i.aw, i64 -40
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !55, !noalias !159
  %i.cg = zext i8 %i.cf to i64
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !16, !noalias !159
  %i.ci = getelementptr inbounds nuw [48 x i8], ptr %i.ch, i64 %i.cg ; 3 uses
  %i.cj = getelementptr i8, ptr %i.aw, i64 -32
  %.sroa.0.0.copyload.i = load i64, ptr %i.cj, align 8, !tbaa !72, !noalias !159
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.aw, i64 -24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !159 ; 5 uses
  %i.ck = sub nsw i64 %.sroa.0.0.copyload.i.i1.i, %i.ay ; 2 uses
  %sext.i.i.i = shl i64 %.sroa.2.0.copyload.i, 56
  %i.cl = ashr exact i64 %sext.i.i.i, 56
  %i.cm = shl i64 %.sroa.2.0.copyload.i, 48
  %i.cn = ashr i64 %i.cm, 56
  %i.co = shl i64 %.sroa.2.0.copyload.i, 40
  %i.cp = ashr i64 %i.co, 56
  %i.cq = shl i64 %.sroa.2.0.copyload.i, 32
  %i.cr = ashr i64 %i.cq, 56
  %i.cs = sdiv i64 %i.ck, 60
  %i.ct = add nsw i64 %i.cr, %i.cs
  %i.cu = shl i64 %.sroa.2.0.copyload.i, 24
  %i.cv = ashr i64 %i.cu, 56
  %i.cw = srem i64 %i.ck, 60
  %i.cx = add nsw i64 %i.cv, %i.cw
  %i.cy = tail call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %.sroa.0.0.copyload.i, i64 noundef %i.cl, i64 noundef %i.cn, i64 noundef %i.cp, i64 noundef %i.ct, i64 noundef %i.cx) #26, !noalias !159 ; 2 uses
  %.fca.1.extract.i.i.i33 = extractvalue { i64, i64 } %i.cy, 1
  %.sroa.2.8.insert.ext.i.i34 = and i64 %.fca.1.extract.i.i.i33, 1099511627775
  %i.cz = extractvalue { i64, i64 } %i.cy, 0
  store i64 %i.cz, ptr %0, align 8, !alias.scope !159
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.2.8.insert.ext.i.i34, ptr %i.da, align 8, !alias.scope !159
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dc = load i32, ptr %i.ci, align 8, !tbaa !23, !noalias !159
  store i32 %i.dc, ptr %i.db, align 8, !tbaa !87, !alias.scope !159
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.de = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.df = load i8, ptr %i.de, align 8, !tbaa !24, !range !25, !noalias !159, !noundef !26
  store i8 %i.df, ptr %i.dd, align 4, !tbaa !89, !alias.scope !159
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %i.ci, i64 41
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !18, !noalias !159
  %i.dk = zext i8 %i.dj to i64
  %i.dl = load ptr, ptr %i.dh, align 8, !tbaa !17, !noalias !159
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk
  store ptr %i.dm, ptr %i.dg, align 8, !tbaa !90, !alias.scope !159
  br label %bb.l

bb.g:                                             ; preds = %bb.c
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.do = load atomic i64, ptr %i.dn monotonic, align 8 ; 3 uses
  %.not31 = icmp ne i64 %i.do, 0
  %i.dp = icmp ult i64 %i.do, %i.h
  %or.cond = and i1 %.not31, %i.dp
  br i1 %or.cond, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.dq = getelementptr [48 x i8], ptr %i.d, i64 %i.do ; 5 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 -48
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !62 ; 2 uses
  %.not32 = icmp sgt i64 %i.ds, %.sroa.0.0.copyload.i.i1.i
  br i1 %.not32, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dt = load i64, ptr %i.dq, align 8, !tbaa !62
  %i.du = icmp slt i64 %.sroa.0.0.copyload.i.i1.i, %i.dt
  br i1 %i.du, label %bb.j, label %bb.k

end_hunk_0
begin_hunk_1_@_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEE:bb.a
  %.sroa.4.8.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.26.0.copyload.i, 8
  %.sroa.4.8.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.4.8.extract.shift.i.i.i.i.i.i to i8
  %i.ka = tail call noundef i64 @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.gb, i8 noundef signext %.sroa.22.8.extract.trunc.i.i.i.i.i.i, i8 noundef signext %.sroa.43.8.extract.trunc.i.i.i.i.i.i, i64 noundef %i.gd, i8 noundef signext %.sroa.2.8.extract.trunc.i.i.i.i.i.i, i8 noundef signext %.sroa.4.8.extract.trunc.i.i.i.i.i.i) #26, !noalias !182
  %i.kb = shl i64 %.sroa.28.0.copyload.i, 40
  %i.kc = ashr i64 %i.kb, 56
  %i.kd = shl i64 %.sroa.26.0.copyload.i, 40
  %i.ke = ashr i64 %i.kd, 56
  %i.kf = sub nsw i64 %i.kc, %i.ke
  %.pn.i.i.i.i.i = mul i64 %i.ka, 24
  %i.kg = add i64 %i.kf, %.pn.i.i.i.i.i
  %i.kh = shl i64 %.sroa.28.0.copyload.i, 32
  %i.ki = ashr i64 %i.kh, 56
  %i.kj = shl i64 %.sroa.26.0.copyload.i, 32
  %i.kk = ashr i64 %i.kj, 56
  %i.kl = sub nsw i64 %i.ki, %i.kk
  %.pn.i.i.i.i76 = mul i64 %i.kg, 60
  %i.km = add i64 %i.kl, %.pn.i.i.i.i76
  %i.kn = shl i64 %.sroa.28.0.copyload.i, 24
  %i.ko = ashr i64 %i.kn, 56
  %i.kp = shl i64 %.sroa.26.0.copyload.i, 24
  %i.kq = ashr i64 %i.kp, 56
  %.pn.i.i.i77 = mul i64 %i.km, 60
  %i.kr = add i64 %i.jz, -1
  %i.ks = add i64 %i.kr, %i.ko
  %i.kt = sub i64 %i.ks, %i.kq
  %i.ku = add i64 %i.kt, %.pn.i.i.i77
  store i64 %i.ku, ptr %i.jy, align 8, !tbaa !72, !alias.scope !182
  %i.kv = load i64, ptr %i.d, align 8, !tbaa !62, !noalias !182 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.kv, ptr %i.kw, align 8, !tbaa !72, !alias.scope !182
  %.sroa.01.0.copyload.i = load i64, ptr %i.j, align 8, !tbaa !72, !noalias !182
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !noalias !182 ; 5 uses
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !72, !noalias !182
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.28.0..sroa_idx.i, align 8, !noalias !182 ; 5 uses
  %.sroa.22.8.extract.trunc.i.i.i.i.i16.i = trunc i64 %.sroa.22.0.copyload.i to i8
  %.sroa.43.8.extract.shift.i.i.i.i.i17.i = lshr i64 %.sroa.22.0.copyload.i, 8
  %.sroa.43.8.extract.trunc.i.i.i.i.i18.i = trunc i64 %.sroa.43.8.extract.shift.i.i.i.i.i17.i to i8
  %.sroa.2.8.extract.trunc.i.i.i.i.i19.i = trunc i64 %.sroa.2.0.copyload.i to i8
  %.sroa.4.8.extract.shift.i.i.i.i.i20.i = lshr i64 %.sroa.2.0.copyload.i, 8
  %.sroa.4.8.extract.trunc.i.i.i.i.i21.i = trunc i64 %.sroa.4.8.extract.shift.i.i.i.i.i20.i to i8
  %i.kx = tail call noundef i64 @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %.sroa.01.0.copyload.i, i8 noundef signext %.sroa.22.8.extract.trunc.i.i.i.i.i16.i, i8 noundef signext %.sroa.43.8.extract.trunc.i.i.i.i.i18.i, i64 noundef %.sroa.0.0.copyload.i, i8 noundef signext %.sroa.2.8.extract.trunc.i.i.i.i.i19.i, i8 noundef signext %.sroa.4.8.extract.trunc.i.i.i.i.i21.i) #26, !noalias !182
  %i.ky = shl i64 %.sroa.22.0.copyload.i, 40
  %i.kz = ashr i64 %i.ky, 56
  %i.la = shl i64 %.sroa.2.0.copyload.i, 40
  %i.lb = ashr i64 %i.la, 56
  %i.lc = sub nsw i64 %i.kz, %i.lb
  %.pn.i.i.i.i22.i = mul i64 %i.kx, 24
  %i.ld = add i64 %i.lc, %.pn.i.i.i.i22.i
  %i.le = shl i64 %.sroa.22.0.copyload.i, 32
  %i.lf = ashr i64 %i.le, 56
  %i.lg = shl i64 %.sroa.2.0.copyload.i, 32
  %i.lh = ashr i64 %i.lg, 56
  %i.li = sub nsw i64 %i.lf, %i.lh
  %.pn.i.i.i23.i = mul i64 %i.ld, 60
  %i.lj = add i64 %i.li, %.pn.i.i.i23.i
  %i.lk = shl i64 %.sroa.22.0.copyload.i, 24
  %i.ll = ashr i64 %i.lk, 56
  %i.lm = shl i64 %.sroa.2.0.copyload.i, 24
  %i.ln = ashr i64 %i.lm, 56
  %.pn.i.i24.neg.i = mul i64 %i.lj, -60
  %.neg.i = sub i64 %i.kv, %i.ll
  %.neg25.i = add i64 %.neg.i, %i.ln
  %i.lo = add i64 %.neg25.i, %.pn.i.i24.neg.i
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.lo, ptr %i.lp, align 8, !tbaa !72, !alias.scope !182
  br label %bb.dg

bb.bo:                                            ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detailgeINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread
  %i.lq = icmp eq ptr %.2, %i.c
  br i1 %i.lq, label %bb.bp, label %bb.cn

bb.bp:                                            ; preds = %bb.bo
  %i.lr = getelementptr inbounds i8, ptr %.2, i64 -48 ; 3 uses
  %i.ls = getelementptr inbounds i8, ptr %.2, i64 -16
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !63 ; 3 uses
  %i.lu = load i64, ptr %2, align 8, !tbaa !63    ; 9 uses
  %i.lv = icmp slt i64 %i.lt, %i.lu
  br i1 %i.lv, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lw = icmp eq i64 %i.lt, %i.lu
  br i1 %i.lw, label %bb.br, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread217

bb.br:                                            ; preds = %bb.bq
  %i.lx = getelementptr inbounds i8, ptr %.2, i64 -8
  %i.ly = load i8, ptr %i.lx, align 8, !tbaa !91  ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ma = load i8, ptr %i.lz, align 8, !tbaa !91  ; 2 uses
  %i.mb = icmp slt i8 %i.ly, %i.ma
  br i1 %i.mb, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mc = icmp eq i8 %i.ly, %i.ma
  br i1 %i.mc, label %bb.bt, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread217

bb.bt:                                            ; preds = %bb.bs
  %i.md = getelementptr inbounds i8, ptr %.2, i64 -7
  %i.me = load i8, ptr %i.md, align 1, !tbaa !92  ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !92  ; 2 uses
  %i.mh = icmp slt i8 %i.me, %i.mg
  br i1 %i.mh, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.mi = icmp eq i8 %i.me, %i.mg
  br i1 %i.mi, label %bb.bv, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread217

bb.bv:                                            ; preds = %bb.bu
  %i.mj = getelementptr inbounds i8, ptr %.2, i64 -6
  %i.mk = load i8, ptr %i.mj, align 2, !tbaa !141 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.mm = load i8, ptr %i.ml, align 2, !tbaa !141 ; 2 uses
  %i.mn = icmp slt i8 %i.mk, %i.mm
  br i1 %i.mn, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.mo = icmp eq i8 %i.mk, %i.mm
  br i1 %i.mo, label %bb.bx, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread217

bb.bx:                                            ; preds = %bb.bw
  %i.mp = getelementptr inbounds i8, ptr %.2, i64 -5
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !142 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !142 ; 2 uses
  %i.mt = icmp slt i8 %i.mq, %i.ms
  br i1 %i.mt, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mu = icmp eq i8 %i.mq, %i.ms
  br i1 %i.mu, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread217

_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit: ; preds = %bb.by
  %i.mv = getelementptr inbounds i8, ptr %.2, i64 -4
  %i.mw = load i8, ptr %i.mv, align 4, !tbaa !143
  %i.mx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.my = load i8, ptr %i.mx, align 4, !tbaa !143
  %i.mz = icmp slt i8 %i.mw, %i.my
  br i1 %i.mz, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread217

_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread: ; preds = %bb.bx, %bb.bv, %bb.bt, %bb.br, %bb.bp, %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.nb = load i8, ptr %i.na, align 8, !tbaa !34, !range !25, !noundef !26
  %i.nc = trunc nuw i8 %i.nb to i1
  br i1 %i.nc, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !64 ; 2 uses
  %i.nf = icmp sgt i64 %i.lu, %i.ne
  br i1 %i.nf, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  %i.ng = xor i64 %i.ne, -1
  %i.nh = add i64 %i.lu, %i.ng                    ; 2 uses
  %i.ni = sdiv i64 %i.nh, 400
  %i.nj = add nsw i64 %i.ni, 1                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.nk = mul nsw i64 %i.nj, -400
  %i.nl = add nsw i64 %i.nk, %i.lu
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.nn = load i8, ptr %i.nm, align 8, !tbaa !91
  %i.no = sext i8 %i.nn to i64
  %i.np = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !92
  %i.nr = sext i8 %i.nq to i64
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.nt = load i8, ptr %i.ns, align 2, !tbaa !141
  %i.nu = sext i8 %i.nt to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !142
  %i.nx = sext i8 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.nz = load i8, ptr %i.ny, align 4, !tbaa !143
  %i.oa = sext i8 %i.nz to i64
  %i.ob = tail call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %i.nl, i64 noundef %i.no, i64 noundef %i.nr, i64 noundef %i.nu, i64 noundef %i.nx, i64 noundef %i.oa) #26 ; 2 uses
  %.fca.1.extract.i.i78 = extractvalue { i64, i64 } %i.ob, 1
  %.sroa.2.8.insert.ext.i79 = and i64 %.fca.1.extract.i.i78, 1099511627775
  %i.oc = extractvalue { i64, i64 } %i.ob, 0
  store i64 %i.oc, ptr %3, align 8
  %i.od = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.2.8.insert.ext.i79, ptr %i.od, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.oe = load ptr, ptr %1, align 8, !tbaa !112, !noalias !185
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 24
  %i.og = load ptr, ptr %i.of, align 8, !noalias !185
  call void %i.og(ptr dead_on_unwind writable sret(%"struct.absl::lts_20240116::time_internal::cctz::time_zone::civil_lookup") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !188
  %i.oh = icmp sgt i64 %i.nh, 292277024399
  br i1 %i.oh, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 9223372036854775807, ptr %i.oj, align 8, !tbaa !72, !alias.scope !185
  store i64 9223372036854775807, ptr %i.oi, align 8, !tbaa !72, !alias.scope !185
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9223372036854775807, ptr %i.ok, align 8, !tbaa !72, !alias.scope !185
  br label %_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo9TimeLocalERKNS2_6detail10civil_timeINS4_10second_tagEEEl.exit

bb.cc:                                            ; preds = %bb.ca
  %i.ol = mul nsw i64 %i.nj, 12622780800
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %4 = load <3 x i64>, ptr %i.om, align 8, !tbaa !72, !alias.scope !185
  %5 = insertelement <3 x i64> poison, i64 %i.ol, i64 0
  %6 = shufflevector <3 x i64> %5, <3 x i64> poison, <3 x i32> zeroinitializer
  %7 = call <3 x i64> @llvm.sadd.sat.v3i64(<3 x i64> %6, <3 x i64> %4)
  store <3 x i64> %7, ptr %i.om, align 8, !tbaa !72, !alias.scope !185
  br label %_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo9TimeLocalERKNS2_6detail10civil_timeINS4_10second_tagEEEl.exit

_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo9TimeLocalERKNS2_6detail10civil_timeINS4_10second_tagEEEl.exit: ; preds = %bb.cb, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.dg

bb.cd:                                            ; preds = %bb.bz, %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.oo = getelementptr inbounds i8, ptr %.2, i64 -40
  %i.op = load i8, ptr %i.oo, align 8, !tbaa !55
  %i.oq = zext i8 %i.op to i64
  %i.or = load ptr, ptr %i.on, align 8, !tbaa !16
  %i.os = getelementptr inbounds nuw [48 x i8], ptr %i.or, i64 %i.oq ; 6 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !63 ; 2 uses
  %i.ov = icmp slt i64 %i.ou, %i.lu
  br i1 %i.ov, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit81.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ow = icmp eq i64 %i.ou, %i.lu
  br i1 %i.ow, label %bb.cf, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit81.thread219

bb.cf:                                            ; preds = %bb.ce
  %i.ox = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %i.oy = load i8, ptr %i.ox, align 8, !tbaa !91  ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.pa = load i8, ptr %i.oz, align 8, !tbaa !91  ; 2 uses
  %i.pb = icmp slt i8 %i.oy, %i.pa
  br i1 %i.pb, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit81.thread, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.pc = icmp eq i8 %i.oy, %i.pa
  br i1 %i.pc, label %bb.ch, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit81.thread219

bb.ch:                                            ; preds = %bb.cg
  %i.pd = getelementptr inbounds nuw i8, ptr %i.os, i64 17
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !92  ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !92  ; 2 uses
  %i.ph = icmp slt i8 %i.pe, %i.pg
  br i1 %i.ph, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit81.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.pi = icmp eq i8 %i.pe, %i.pg
  br i1 %i.pi, label %bb.cj, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit81.thread219

bb.cj:                                            ; preds = %bb.ci
  %i.pj = getelementptr inbounds nuw i8, ptr %i.os, i64 18
  %i.pk = load i8, ptr %i.pj, align 2, !tbaa !141 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.pm = load i8, ptr %i.pl, align 2, !tbaa !141 ; 2 uses
  %i.pn = icmp slt i8 %i.pk, %i.pm
  br i1 %i.pn, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit81.thread, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.po = icmp eq i8 %i.pk, %i.pm
  br i1 %i.po, label %bb.cl, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit81.thread219

bb.cl:                                            ; preds = %bb.ck
  %i.pp = getelementptr inbounds nuw i8, ptr %i.os, i64 19
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !142 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !142 ; 2 uses
  %i.pt = icmp slt i8 %i.pq, %i.ps
  br i1 %i.pt, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit81.thread, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.pu = icmp eq i8 %i.pq, %i.ps
  br i1 %i.pu, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit81, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit81.thread219

_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit81: ; preds = %bb.cm
  %i.pv = getelementptr inbounds nuw i8, ptr %i.os, i64 20
  %i.pw = load i8, ptr %i.pv, align 4, !tbaa !143
  %i.px = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.py = load i8, ptr %i.px, align 4, !tbaa !143
  %i.pz = icmp slt i8 %i.pw, %i.py
  br i1 %i.pz, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit81.thread, label %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit81.thread219

_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit81.thread: ; preds = %bb.cl, %bb.cj, %bb.ch, %bb.cf, %bb.cd, %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit81
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %0, align 8, !tbaa !170, !alias.scope !189
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 9223372036854775807, ptr %i.qb, align 8, !tbaa !72, !alias.scope !189
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 9223372036854775807, ptr %i.qc, align 8, !tbaa !72, !alias.scope !189
  store i64 9223372036854775807, ptr %i.qa, align 8, !tbaa !72, !alias.scope !189
  br label %bb.dg

_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit81.thread219: ; preds = %bb.ci, %bb.cg, %bb.ck, %bb.ce, %bb.cm, %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit81
  %i.qd = load i64, ptr %i.lr, align 8, !tbaa !62
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8 ; 5 uses
  %i.qe = getelementptr inbounds i8, ptr %.2, i64 -32
  %.sroa.03.0.copyload = load i64, ptr %i.qe, align 8, !tbaa !72
  %.sroa.24.0..sroa_idx = getelementptr inbounds i8, ptr %.2, i64 -24
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8 ; 5 uses
  %.sroa.22.8.extract.trunc.i.i.i.i.i82 = trunc i64 %.sroa.26.0.copyload to i8
  %.sroa.43.8.extract.shift.i.i.i.i.i83 = lshr i64 %.sroa.26.0.copyload, 8
  %.sroa.43.8.extract.trunc.i.i.i.i.i84 = trunc i64 %.sroa.43.8.extract.shift.i.i.i.i.i83 to i8
  %.sroa.2.8.extract.trunc.i.i.i.i.i85 = trunc i64 %.sroa.24.0.copyload to i8
  %.sroa.4.8.extract.shift.i.i.i.i.i86 = lshr i64 %.sroa.24.0.copyload, 8
  %.sroa.4.8.extract.trunc.i.i.i.i.i87 = trunc i64 %.sroa.4.8.extract.shift.i.i.i.i.i86 to i8
  %i.qf = tail call noundef i64 @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.lu, i8 noundef signext %.sroa.22.8.extract.trunc.i.i.i.i.i82, i8 noundef signext %.sroa.43.8.extract.trunc.i.i.i.i.i84, i64 noundef %.sroa.03.0.copyload, i8 noundef signext %.sroa.2.8.extract.trunc.i.i.i.i.i85, i8 noundef signext %.sroa.4.8.extract.trunc.i.i.i.i.i87) #26
  %i.qg = shl i64 %.sroa.26.0.copyload, 40
  %i.qh = ashr i64 %i.qg, 56
  %i.qi = shl i64 %.sroa.24.0.copyload, 40
  %i.qj = ashr i64 %i.qi, 56
  %i.qk = sub nsw i64 %i.qh, %i.qj
  %.pn.i.i.i.i88 = mul i64 %i.qf, 24
  %i.ql = add i64 %i.qk, %.pn.i.i.i.i88
  %i.qm = shl i64 %.sroa.26.0.copyload, 32
  %i.qn = ashr i64 %i.qm, 56
  %i.qo = shl i64 %.sroa.24.0.copyload, 32
  %i.qp = ashr i64 %i.qo, 56
  %i.qq = sub nsw i64 %i.qn, %i.qp
  %.pn.i.i.i89 = mul i64 %i.ql, 60
  %i.qr = add i64 %i.qq, %.pn.i.i.i89
  %i.qs = shl i64 %.sroa.26.0.copyload, 24
  %i.qt = ashr i64 %i.qs, 56
  %i.qu = shl i64 %.sroa.24.0.copyload, 24
  %i.qv = ashr i64 %i.qu, 56
  %.pn.i.i90 = mul i64 %i.qr, 60
  %i.qw = add i64 %i.qt, %i.qd
  %i.qx = sub i64 %i.qw, %i.qv
  %i.qy = add i64 %i.qx, %.pn.i.i90               ; 3 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %0, align 8, !tbaa !170, !alias.scope !192
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.qy, ptr %i.ra, align 8, !tbaa !72, !alias.scope !192
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.qy, ptr %i.rb, align 8, !tbaa !72, !alias.scope !192
  store i64 %i.qy, ptr %i.qz, align 8, !tbaa !72, !alias.scope !192
  br label %bb.dg

_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread217: ; preds = %bb.bu, %bb.bs, %bb.bw, %bb.bq, %bb.by, %_ZN4absl12lts_2024011613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %0, align 8, !tbaa !170, !alias.scope !197
  %i.rd = load i64, ptr %i.lr, align 8, !tbaa !62, !noalias !197
  %.sroa.28.0..sroa_idx.i92 = getelementptr inbounds i8, ptr %.2, i64 -8
  %.sroa.28.0.copyload.i93 = load i64, ptr %.sroa.28.0..sroa_idx.i92, align 8, !noalias !197 ; 5 uses
  %.sroa.26.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.26.0.copyload.i96 = load i64, ptr %.sroa.26.0..sroa_idx.i95, align 8, !noalias !197 ; 5 uses
  %.sroa.22.8.extract.trunc.i.i.i.i.i.i97 = trunc i64 %.sroa.28.0.copyload.i93 to i8
  %.sroa.43.8.extract.shift.i.i.i.i.i.i98 = lshr i64 %.sroa.28.0.copyload.i93, 8
  %.sroa.43.8.extract.trunc.i.i.i.i.i.i99 = trunc i64 %.sroa.43.8.extract.shift.i.i.i.i.i.i98 to i8
  %.sroa.2.8.extract.trunc.i.i.i.i.i.i100 = trunc i64 %.sroa.26.0.copyload.i96 to i8
  %.sroa.4.8.extract.shift.i.i.i.i.i.i101 = lshr i64 %.sroa.26.0.copyload.i96, 8
  %.sroa.4.8.extract.trunc.i.i.i.i.i.i102 = trunc i64 %.sroa.4.8.extract.shift.i.i.i.i.i.i101 to i8
  %i.re = tail call noundef i64 @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.lt, i8 noundef signext %.sroa.22.8.extract.trunc.i.i.i.i.i.i97, i8 noundef signext %.sroa.43.8.extract.trunc.i.i.i.i.i.i99, i64 noundef %i.lu, i8 noundef signext %.sroa.2.8.extract.trunc.i.i.i.i.i.i100, i8 noundef signext %.sroa.4.8.extract.trunc.i.i.i.i.i.i102) #26, !noalias !197
  %i.rf = shl i64 %.sroa.28.0.copyload.i93, 40
  %i.rg = ashr i64 %i.rf, 56
  %i.rh = shl i64 %.sroa.26.0.copyload.i96, 40
  %i.ri = ashr i64 %i.rh, 56
  %i.rj = sub nsw i64 %i.rg, %i.ri
  %.pn.i.i.i.i.i103 = mul i64 %i.re, 24
  %i.rk = add i64 %i.rj, %.pn.i.i.i.i.i103
  %i.rl = shl i64 %.sroa.28.0.copyload.i93, 32
  %i.rm = ashr i64 %i.rl, 56
  %i.rn = shl i64 %.sroa.26.0.copyload.i96, 32
  %i.ro = ashr i64 %i.rn, 56
  %i.rp = sub nsw i64 %i.rm, %i.ro
  %.pn.i.i.i.i104 = mul i64 %i.rk, 60
  %i.rq = add i64 %i.rp, %.pn.i.i.i.i104
  %i.rr = shl i64 %.sroa.28.0.copyload.i93, 24
  %i.rs = ashr i64 %i.rr, 56
  %i.rt = shl i64 %.sroa.26.0.copyload.i96, 24
  %i.ru = ashr i64 %i.rt, 56
  %i.rv = sub nsw i64 %i.rs, %i.ru
  %.pn.i.i.i105 = mul i64 %i.rq, 60
  %i.rw = add i64 %i.rv, %.pn.i.i.i105
  %i.rx = xor i64 %i.rw, -1
  %i.ry = add i64 %i.rd, %i.rx
  store i64 %i.ry, ptr %i.rc, align 8, !tbaa !72, !alias.scope !197
  %i.rz = load i64, ptr %i.lr, align 8, !tbaa !62, !noalias !197 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.rz, ptr %i.sa, align 8, !tbaa !72, !alias.scope !197
  %.sroa.01.0.copyload.i106 = load i64, ptr %2, align 8, !tbaa !72, !noalias !197
  %.sroa.22.0.copyload.i107 = load i64, ptr %.sroa.26.0..sroa_idx.i95, align 8, !noalias !197 ; 5 uses
  %i.sb = getelementptr inbounds i8, ptr %.2, i64 -32
  %.sroa.0.0.copyload.i108 = load i64, ptr %i.sb, align 8, !tbaa !72, !noalias !197
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %.2, i64 -24
  %.sroa.2.0.copyload.i109 = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !197 ; 5 uses
  %.sroa.22.8.extract.trunc.i.i.i.i.i16.i110 = trunc i64 %.sroa.22.0.copyload.i107 to i8
  %.sroa.43.8.extract.shift.i.i.i.i.i17.i111 = lshr i64 %.sroa.22.0.copyload.i107, 8
  %.sroa.43.8.extract.trunc.i.i.i.i.i18.i112 = trunc i64 %.sroa.43.8.extract.shift.i.i.i.i.i17.i111 to i8
  %.sroa.2.8.extract.trunc.i.i.i.i.i19.i113 = trunc i64 %.sroa.2.0.copyload.i109 to i8
  %.sroa.4.8.extract.shift.i.i.i.i.i20.i114 = lshr i64 %.sroa.2.0.copyload.i109, 8
  %.sroa.4.8.extract.trunc.i.i.i.i.i21.i115 = trunc i64 %.sroa.4.8.extract.shift.i.i.i.i.i20.i114 to i8
  %i.sc = tail call noundef i64 @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %.sroa.01.0.copyload.i106, i8 noundef signext %.sroa.22.8.extract.trunc.i.i.i.i.i16.i110, i8 noundef signext %.sroa.43.8.extract.trunc.i.i.i.i.i18.i112, i64 noundef %.sroa.0.0.copyload.i108, i8 noundef signext %.sroa.2.8.extract.trunc.i.i.i.i.i19.i113, i8 noundef signext %.sroa.4.8.extract.trunc.i.i.i.i.i21.i115) #26, !noalias !197
  %i.sd = shl i64 %.sroa.22.0.copyload.i107, 40
  %i.se = ashr i64 %i.sd, 56
  %i.sf = shl i64 %.sroa.2.0.copyload.i109, 40
  %i.sg = ashr i64 %i.sf, 56
  %i.sh = sub nsw i64 %i.se, %i.sg
  %.pn.i.i.i.i22.i116 = mul i64 %i.sc, 24
  %i.si = add i64 %i.sh, %.pn.i.i.i.i22.i116
  %i.sj = shl i64 %.sroa.22.0.copyload.i107, 32
  %i.sk = ashr i64 %i.sj, 56
  %i.sl = shl i64 %.sroa.2.0.copyload.i109, 32
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_dayElallaaa:bb.a
  %i.v = add nsw i64 %i.s, %i.u                   ; 3 uses
  %i.w = and i64 %i.v, 3
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.f, label %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit

bb.f:                                             ; preds = %bb.e
  %i.y = srem i64 %i.v, 100
  %.not.i.i = icmp ne i64 %i.y, 0
  %i.z = srem i64 %i.v, 400
  %i.aa = icmp eq i64 %i.z, 0
  %or.cond.i = or i1 %.not.i.i, %i.aa
  %i.ab = select i1 %or.cond.i, i64 366, i64 365
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit

_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit: ; preds = %bb.e, %bb.f
  %i.ac = phi i64 [ 365, %bb.e ], [ %i.ab, %bb.f ]
  %i.ad = add nsw i64 %i.ac, %i.m
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ae = add nsw i64 %i.k, -400
  %i.af = add nsw i64 %i.m, 146097
  br label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit, %bb.g, %bb.b, %bb.c
  %.182 = phi i64 [ %i.p, %bb.c ], [ %i.k, %bb.b ], [ %i.s, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit ], [ %i.ae, %bb.g ] ; 4 uses
  %.072 = phi i64 [ %i.q, %bb.c ], [ %i.m, %bb.b ], [ %i.ad, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit ], [ %i.af, %bb.g ] ; 5 uses
  %i.ag = icmp samesign ugt i64 %.072, 365
  br i1 %i.ag, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp sgt i8 %1, 2
  %i.ai = zext i1 %i.ah to i64                    ; 2 uses
  %i.aj = add nsw i64 %.182, %i.ai
  %i.ak = srem i64 %i.aj, 400                     ; 2 uses
  %i.al = trunc nsw i64 %i.ak to i32              ; 2 uses
  %i.am = icmp slt i64 %i.ak, 0
  %i.an = add nsw i32 %i.al, 400
  %i.ao = select i1 %i.am, i32 %i.an, i32 %i.al   ; 4 uses
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = icmp sgt i32 %i.ao, 300
  %i.ar = or i1 %i.ap, %i.aq
  %i.as = select i1 %i.ar, i64 36525, i64 36524   ; 2 uses
  %.not149 = icmp samesign ugt i64 %.072, %i.as
  br i1 %.not149, label %.lr.ph, label %.preheader130.preheader

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %i.at = phi i64 [ %i.ba, %.lr.ph ], [ %i.as, %bb.i ]
  %.173152 = phi i64 [ %i.au, %.lr.ph ], [ %.072, %bb.i ]
  %.283151 = phi i64 [ %i.av, %.lr.ph ], [ %.182, %bb.i ]
  %.092150 = phi i32 [ %spec.select, %.lr.ph ], [ %i.ao, %bb.i ] ; 2 uses
  %i.au = sub nuw nsw i64 %.173152, %i.at         ; 3 uses
  %i.av = add nsw i64 %.283151, 100               ; 2 uses
  %i.aw = icmp sgt i32 %.092150, 299
  %spec.select.v = select i1 %i.aw, i32 -300, i32 100
  %spec.select = add nsw i32 %spec.select.v, %.092150 ; 4 uses
  %i.ax = icmp eq i32 %spec.select, 0
  %i.ay = icmp sgt i32 %spec.select, 300
  %i.az = or i1 %i.ax, %i.ay
  %i.ba = select i1 %i.az, i64 36525, i64 36524   ; 2 uses
  %.not = icmp samesign ugt i64 %i.au, %i.ba
  br i1 %.not, label %.lr.ph, label %.preheader130.preheader

.preheader130.preheader:                          ; preds = %.lr.ph, %bb.i
  %.395.ph = phi i32 [ %i.ao, %bb.i ], [ %spec.select, %.lr.ph ]
  %.485.ph = phi i64 [ %.182, %bb.i ], [ %i.av, %.lr.ph ]
  %.375.ph = phi i64 [ %.072, %bb.i ], [ %i.au, %.lr.ph ]
  br label %.preheader130

.preheader130:                                    ; preds = %.preheader130.preheader, %bb.k
  %.395 = phi i32 [ %spec.select113, %bb.k ], [ %.395.ph, %.preheader130.preheader ] ; 5 uses
  %.485 = phi i64 [ %i.bj, %bb.k ], [ %.485.ph, %.preheader130.preheader ] ; 2 uses
  %.375 = phi i64 [ %i.bi, %bb.k ], [ %.375.ph, %.preheader130.preheader ] ; 3 uses
  %i.bb = icmp eq i32 %.395, 0
  %i.bc = icmp sgt i32 %.395, 300
  %or.cond.i118 = or i1 %i.bb, %i.bc
  br i1 %or.cond.i118, label %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl15days_per_4yearsEi.exit, label %bb.j

bb.j:                                             ; preds = %.preheader130
  %i.bd = add nsw i32 %.395, -1
  %i.be = srem i32 %i.bd, 100
  %i.bf = icmp slt i32 %i.be, 96
  %i.bg = select i1 %i.bf, i64 1461, i64 1460
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl15days_per_4yearsEi.exit

_ZN4absl12lts_2024011613time_internal4cctz6detail4impl15days_per_4yearsEi.exit: ; preds = %.preheader130, %bb.j
  %i.bh = phi i64 [ %i.bg, %bb.j ], [ 1461, %.preheader130 ] ; 2 uses
  %.not110 = icmp samesign ugt i64 %.375, %i.bh
  br i1 %.not110, label %bb.k, label %.preheader129

bb.k:                                             ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl15days_per_4yearsEi.exit
  %i.bi = sub nuw nsw i64 %.375, %i.bh
  %i.bj = add nsw i64 %.485, 4
  %i.bk = icmp sgt i32 %.395, 395
  %spec.select113.v = select i1 %i.bk, i32 -396, i32 4
  %spec.select113 = add nsw i32 %spec.select113.v, %.395
  br label %.preheader130

.preheader129:                                    ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl15days_per_4yearsEi.exit, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit122
  %.687 = phi i64 [ %i.bu, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit122 ], [ %.485, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl15days_per_4yearsEi.exit ] ; 3 uses
  %.5 = phi i64 [ %i.bt, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit122 ], [ %.375, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl15days_per_4yearsEi.exit ] ; 3 uses
  %i.bl = add i64 %.687, %i.ai                    ; 3 uses
  %i.bm = and i64 %i.bl, 3
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.l, label %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit122

bb.l:                                             ; preds = %.preheader129
  %i.bo = srem i64 %i.bl, 100
  %.not.i.i119 = icmp ne i64 %i.bo, 0
  %i.bp = srem i64 %i.bl, 400
  %i.bq = icmp eq i64 %i.bp, 0
  %or.cond.i120 = or i1 %.not.i.i119, %i.bq
  %i.br = select i1 %or.cond.i120, i64 366, i64 365
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit122

_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit122: ; preds = %.preheader129, %bb.l
  %i.bs = phi i64 [ 365, %.preheader129 ], [ %i.br, %bb.l ] ; 2 uses
  %.not111 = icmp sgt i64 %.5, %i.bs
  %i.bt = sub nsw i64 %.5, %i.bs
  %i.bu = add nsw i64 %.687, 1
  br i1 %.not111, label %.preheader129, label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit122, %bb.h
  %.889 = phi i64 [ %.182, %bb.h ], [ %.687, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit122 ] ; 2 uses
  %.7 = phi i64 [ %.072, %bb.h ], [ %.5, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl13days_per_yearEla.exit122 ] ; 3 uses
  %i.bv = icmp sgt i64 %.7, 28
  br i1 %i.bv, label %.preheader, label %.thread

.preheader:                                       ; preds = %.loopexit, %bb.o
  %.990 = phi i64 [ %spec.select115, %bb.o ], [ %.889, %.loopexit ] ; 5 uses
  %.8 = phi i64 [ %i.cj, %bb.o ], [ %.7, %.loopexit ] ; 3 uses
  %.0 = phi i8 [ %spec.select116, %bb.o ], [ %1, %.loopexit ] ; 4 uses
  %i.bw = sext i8 %.0 to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr @__const._ZN4absl12lts_2024011613time_internal4cctz6detail4impl14days_per_monthEla.k_days_per_month, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = icmp eq i8 %.0, 2
  %i.ca = and i64 %.990, 3
  %i.cb = icmp eq i64 %i.ca, 0
  %or.cond.i123 = and i1 %i.cb, %i.bz
  br i1 %or.cond.i123, label %bb.m, label %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14days_per_monthEla.exit

bb.m:                                             ; preds = %.preheader
  %i.cc = srem i64 %.990, 100
  %.not.i.i124 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i124, label %bb.n, label %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14days_per_monthEla.exit

bb.n:                                             ; preds = %bb.m
  %i.cd = srem i64 %.990, 400
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14days_per_monthEla.exit

_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14days_per_monthEla.exit: ; preds = %.preheader, %bb.m, %bb.n
  %i.cg = phi i32 [ 0, %.preheader ], [ %i.cf, %bb.n ], [ 1, %bb.m ]
  %i.ch = add nsw i32 %i.cg, %i.by
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %.not112 = icmp sgt i64 %.8, %i.ci
  br i1 %.not112, label %bb.o, label %.thread

bb.o:                                             ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14days_per_monthEla.exit
  %i.cj = sub nsw i64 %.8, %i.ci
  %i.ck = add i8 %.0, 1                           ; 2 uses
  %i.cl = icmp sgt i8 %i.ck, 12                   ; 2 uses
  %i.cm = zext i1 %i.cl to i64
  %spec.select115 = add nsw i64 %.990, %i.cm
  %spec.select116 = select i1 %i.cl, i8 1, i8 %i.ck
  br label %.preheader

.thread:                                          ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14days_per_monthEla.exit, %.loopexit
  %.12 = phi i64 [ %.889, %.loopexit ], [ %.990, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14days_per_monthEla.exit ]
  %.10 = phi i64 [ %.7, %.loopexit ], [ %.8, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14days_per_monthEla.exit ]
  %.3 = phi i8 [ %1, %.loopexit ], [ %.0, %_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14days_per_monthEla.exit ]
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

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %0, i8 noundef signext %1, i8 noundef signext %2, i64 noundef %3, i8 noundef signext %4, i8 noundef signext %5) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = srem i64 %0, 400                         ; 2 uses
  %i.b = srem i64 %3, 400                         ; 2 uses
  %i.c = sub nsw i64 %0, %i.a
  %.neg = sub i64 %i.b, %3
  %i.d = add i64 %.neg, %i.c                      ; 5 uses
  %6 = insertelement <2 x i8> poison, i8 %1, i64 0
  %7 = insertelement <2 x i8> %6, i8 %4, i64 1    ; 2 uses
  %8 = sext <2 x i8> %7 to <2 x i16>
  %i.e = icmp slt i8 %1, 3
  %i.f = sext i1 %i.e to i64
  %i.g = add nsw i64 %i.a, %i.f                   ; 4 uses
  %i.h = add nsw i64 %i.g, 65137
  %i.i = icmp slt i64 %i.g, 0
  %i.j = select i1 %i.i, i64 %i.h, i64 %i.g
  %.lhs.trunc = trunc nuw i64 %i.j to i16
  %i.k = sdiv i16 %.lhs.trunc, 400
  %.sext = sext i16 %i.k to i64                   ; 2 uses
  %.neg.i = mul nsw i64 %.sext, -400
  %i.l = add nsw i64 %.neg.i, %i.g                ; 2 uses
  %9 = icmp sgt <2 x i8> %7, splat (i8 2)
  %i.m = sext i8 %2 to i64
  %.lhs.trunc33 = trunc i64 %i.l to i16
  %i.n = icmp slt i8 %4, 3
  %i.o = sext i1 %i.n to i64
  %i.p = add nsw i64 %i.b, %i.o                   ; 4 uses
  %i.q = add nsw i64 %i.p, 65137
  %i.r = icmp slt i64 %i.p, 0
  %i.s = select i1 %i.r, i64 %i.q, i64 %i.p
  %.lhs.trunc36 = trunc nuw i64 %i.s to i16
  %i.t = sdiv i16 %.lhs.trunc36, 400
  %.sext37 = sext i16 %i.t to i64                 ; 2 uses
  %.neg.i29 = mul nsw i64 %.sext37, -400
  %i.u = add nsw i64 %.neg.i29, %i.p              ; 2 uses
  %10 = select <2 x i1> %9, <2 x i16> splat (i16 -3), <2 x i16> splat (i16 9)
  %11 = add nsw <2 x i16> %10, %8
  %12 = mul nsw <2 x i16> %11, splat (i16 153)
  %13 = add nsw <2 x i16> %12, splat (i16 2)
  %i.v = sext i8 %5 to i64
  %.lhs.trunc38 = trunc i64 %i.u to i16
  %14 = shufflevector <2 x i16> %13, <2 x i16> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = insertelement <6 x i16> %14, i16 %.lhs.trunc33, i64 2
  %16 = insertelement <6 x i16> %15, i16 %.lhs.trunc38, i64 4
  %17 = shufflevector <6 x i16> %16, <6 x i16> poison, <6 x i32> <i32 0, i32 1, i32 2, i32 2, i32 4, i32 4>
  %18 = sdiv <6 x i16> %17, <i16 5, i16 -5, i16 4, i16 -100, i16 -4, i16 100>
  %reass.add = sub nsw i64 %i.l, %i.u
  %reass.mul = mul nsw i64 %reass.add, 365
  %reass.add51 = sub nsw i64 %.sext, %.sext37
  %reass.mul52 = mul nsw i64 %reass.add51, 146097
  %.neg48 = sub nsw i64 %i.m, %i.v
  %19 = sext <6 x i16> %18 to <6 x i64>
  %20 = tail call i64 @llvm.vector.reduce.add.v6i64(<6 x i64> %19)
  %i.w = add i64 %20, %reass.mul52
  %i.x = add nsw i64 %reass.mul, %.neg48
  %i.y = add i64 %i.w, %i.x                       ; 5 uses
  %i.z = icmp sgt i64 %i.d, 0
  %i.aa = icmp slt i64 %i.y, 0
  %or.cond = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = add nsw i64 %i.y, 292194
  %i.ac = add nsw i64 %i.d, -800
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ad = icmp slt i64 %i.d, 0
  %i.ae = icmp sgt i64 %i.y, 0
  %or.cond3 = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = add nsw i64 %i.y, -292194
  %i.ag = add nsw i64 %i.d, 800
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.025 = phi i64 [ %i.ac, %bb.b ], [ %i.ag, %bb.d ], [ %i.d, %bb.c ]
  %.0 = phi i64 [ %i.ab, %bb.b ], [ %i.af, %bb.d ], [ %i.y, %bb.c ]
  %i.ah = sdiv i64 %.025, 400
  %i.ai = mul nsw i64 %i.ah, 146097
  %i.aj = add nsw i64 %i.ai, %.0
  ret i64 %i.aj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz14TransitionTypeESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 48                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 48                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 192153584101141163
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 192153584101141162, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1970, ptr %i.p, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 1, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  store i8 1, ptr %i.r, align 1, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1970, ptr %i.s, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 1, ptr %i.t, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  store i8 1, ptr %i.u, align 1, !tbaa !32
  %i.v = add nsw i64 %1, -1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.w, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.w, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %i.x = icmp eq i64 %1, 1
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2024011613time_internal4cctz14TransitionTypeEmS4_ET_S6_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 15 uses
  %.057.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.08.i.i.i, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i64 1970, ptr %i.y, align 8, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  store i8 1, ptr %i.z, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 17
  store i8 1, ptr %i.aa, align 1, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  store i64 1970, ptr %i.ab, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  store i8 1, ptr %i.ac, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 33
  store i8 1, ptr %i.ad, align 1, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i8 0, i64 48, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  store i64 1970, ptr %i.af, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  store i8 1, ptr %i.ag, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 65
  store i8 1, ptr %i.ah, align 1, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72
  store i64 1970, ptr %i.ai, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  store i8 1, ptr %i.aj, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 81
  store i8 1, ptr %i.ak, align 1, !tbaa !32
  %i.al = add i64 %.057.i.i.i, -2                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.1, label %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2024011613time_internal4cctz14TransitionTypeEmS4_ET_S6_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !233

_ZSt27__uninitialized_default_n_aIPN4absl12lts_2024011613time_internal4cctz14TransitionTypeEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.am, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !13
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.an = icmp ult i64 %i.n, %1
  br i1 %i.an, label %bb.d, label %_ZNKSt6vectorIN4absl12lts_2024011613time_internal4cctz14TransitionTypeESaIS4_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
  unreachable

_ZNKSt6vectorIN4absl12lts_2024011613time_internal4cctz14TransitionTypeESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ao = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 192153584101141162) ; 2 uses
  %i.aq = mul nuw nsw i64 %i.ap, 48
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #28 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f ; 10 uses
  %xtraiter44 = and i64 %1, 1
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN4absl12lts_2024011613time_internal4cctz14TransitionTypeESaIS4_EE12_M_check_lenEmPKc.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, i8 0, i64 48, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 1970, ptr %i.at, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i8 1, ptr %i.au, align 8, !tbaa !31
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 17
  store i8 1, ptr %i.av, align 1, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 1970, ptr %i.aw, align 8, !tbaa !30
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i8 1, ptr %i.ax, align 8, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 33
  store i8 1, ptr %i.ay, align 1, !tbaa !32
  %i.az = add nsw i64 %1, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  br label %.lr.ph.i.i.i30.prol.loopexit

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN4absl12lts_2024011613time_internal4cctz14TransitionTypeESaIS4_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.as, %_ZNKSt6vectorIN4absl12lts_2024011613time_internal4cctz14TransitionTypeESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.ba, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN4absl12lts_2024011613time_internal4cctz14TransitionTypeESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.az, %.lr.ph.i.i.i30.prol ]
  %i.bb = icmp eq i64 %1, 1
  br i1 %i.bb, label %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2024011613time_internal4cctz14TransitionTypeEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bq, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 15 uses
  %.057.i.i.i32 = phi i64 [ %i.bp, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.08.i.i.i31, i8 0, i64 48, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
  store i64 1970, ptr %i.bc, align 8, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  store i8 1, ptr %i.bd, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 17
  store i8 1, ptr %i.be, align 1, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  store i64 1970, ptr %i.bf, align 8, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 32
  store i8 1, ptr %i.bg, align 8, !tbaa !31
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 33
  store i8 1, ptr %i.bh, align 1, !tbaa !32
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, i8 0, i64 48, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 56
  store i64 1970, ptr %i.bj, align 8, !tbaa !30
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 64
  store i8 1, ptr %i.bk, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 65
  store i8 1, ptr %i.bl, align 1, !tbaa !32
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  store i64 1970, ptr %i.bm, align 8, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 80
  store i8 1, ptr %i.bn, align 8, !tbaa !31
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 81
  store i8 1, ptr %i.bo, align 1, !tbaa !32
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD0Ev:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8, !tbaa !112
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !268  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !144
  %i.k = invoke noundef i32 %i.j(ptr noundef nonnull %i.h)
          to label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD2Ev.exit unwind label %bb.c, !inline_history !328 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #30, !inline_history !328
  unreachable

_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.b
  tail call void @_ZN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %0) #26, !inline_history !328
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource7VersionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !47
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !7    ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !99

.noexc6.i:                                        ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !17
  store i64 %i.e, ptr %i.b, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !33
  store i8 %i.l, ptr %i.k, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.m, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !33
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7    ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !17     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !99

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #28 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.o) #29
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.n, ptr %0, align 8, !tbaa !17
  store i64 %.0, ptr %i.d, align 8, !tbaa !33
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !7
  store i8 0, ptr %i.c, align 1, !tbaa !33
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.s = load i8, ptr %i.r, align 1, !tbaa !33
  store i8 %i.s, ptr %i.q, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.t, align 8, !tbaa !7
  %i.u = load ptr, ptr %0, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.b
  store i8 0, ptr %i.v, align 1, !tbaa !33
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x i64> @llvm.sadd.sat.v3i64(<3 x i64>, <3 x i64>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v6i64(<6 x i64>) #25

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { cold }
attributes #32 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !12, i64 8}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !12, i64 8, !5, i64 16}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!14, !15, i64 8}
!14 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz14TransitionTypeESaIS4_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!15 = !{!"p1 _ZTSN4absl12lts_2024011613time_internal4cctz14TransitionTypeE", !11, i64 0}
!16 = !{!14, !15, i64 0}
!17 = !{!8, !10, i64 0}
!18 = !{!19, !5, i64 41}
!19 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz14TransitionTypeE", !4, i64 0, !20, i64 8, !20, i64 24, !22, i64 40, !5, i64 41}
!20 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz6detail10civil_timeINS3_10second_tagEEE", !21, i64 0}
!21 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz6detail6fieldsE", !12, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12}
!22 = !{!"bool", !5, i64 0}
!23 = !{!19, !4, i64 0}
!24 = !{!19, !22, i64 40}
!25 = !{i8 0, i8 2}
!26 = !{}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!14, !15, i64 16}
!30 = !{!21, !12, i64 0}
!31 = !{!21, !5, i64 8}
!32 = !{!21, !5, i64 9}
!33 = !{!5, !5, i64 0}
!34 = !{!35, !22, i64 160}
!35 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz12TimeZoneInfoE", !36, i64 0, !37, i64 8, !42, i64 32, !5, i64 56, !8, i64 64, !8, i64 96, !8, i64 128, !22, i64 160, !12, i64 168, !45, i64 176, !45, i64 184}
!36 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz10TimeZoneIfE"}
!37 = !{!"_ZTSSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE", !38, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE12_Vector_implE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!41 = !{!"p1 _ZTSN4absl12lts_2024011613time_internal4cctz10TransitionE", !11, i64 0}
!42 = !{!"_ZTSSt6vectorIN4absl12lts_2024011613time_internal4cctz14TransitionTypeESaIS4_EE", !43, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz14TransitionTypeESaIS4_EE", !44, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz14TransitionTypeESaIS4_EE12_Vector_implE", !14, i64 0}
!45 = !{!"_ZTSSt6atomicImE", !46, i64 0}
!46 = !{!"_ZTSSt13__atomic_baseImE", !12, i64 0}
!47 = !{!9, !10, i64 0}
!48 = !{!49, !12, i64 32}
!49 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz13PosixTimeZoneE", !8, i64 0, !12, i64 32, !8, i64 40, !12, i64 72, !50, i64 80, !50, i64 104}
!50 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz15PosixTransitionE", !51, i64 0, !53, i64 16}
!51 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz15PosixTransition4DateE", !52, i64 0, !5, i64 8}
!52 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz15PosixTransition10DateFormatE", !5, i64 0}
!53 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz15PosixTransition4TimeE", !12, i64 0}
!54 = !{!41, !41, i64 0}
!55 = !{!56, !5, i64 8}
!56 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz10TransitionE", !12, i64 0, !5, i64 8, !20, i64 16, !20, i64 32}
!57 = !{!49, !12, i64 72}
!58 = !{!49, !52, i64 80}
!59 = !{!49, !12, i64 120}
!60 = !{!40, !41, i64 8}
!61 = !{!40, !41, i64 0}
!62 = !{!56, !12, i64 0}
!63 = !{!20, !12, i64 0}
!64 = !{!35, !12, i64 168}
!65 = !{!21, !5, i64 12}
!66 = !{!50, !52, i64 0}
!67 = !{!68, !68, i64 0}
!68 = !{!"short", !5, i64 0}
!69 = !{!50, !12, i64 16}
!70 = !{!40, !41, i64 16}
!71 = !{i64 0, i64 8, !72, i64 8, i64 1, !33, i64 16, i64 8, !72, i64 24, i64 1, !33, i64 25, i64 1, !33, i64 26, i64 1, !33, i64 27, i64 1, !33, i64 28, i64 1, !33, i64 32, i64 8, !72, i64 40, i64 1, !33, i64 41, i64 1, !33, i64 42, i64 1, !33, i64 43, i64 1, !33, i64 44, i64 1, !33}
!72 = !{!12, !12, i64 0}
!73 = !{!74, !76}
!74 = distinct !{!74, !75, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!75 = distinct !{!75, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_"}
!76 = distinct !{!76, !75, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!77 = distinct !{!77, !28}
!78 = !{!79, !81}
!79 = distinct !{!79, !80, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!80 = distinct !{!80, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_"}
!81 = distinct !{!81, !80, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!82 = distinct !{!82, !28}
!83 = !{!84, !86}
!84 = distinct !{!84, !85, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!85 = distinct !{!85, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_"}
!86 = distinct !{!86, !85, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!87 = !{!88, !4, i64 16}
!88 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz9time_zone15absolute_lookupE", !20, i64 0, !4, i64 16, !22, i64 20, !10, i64 24}
!89 = !{!88, !22, i64 20}
!90 = !{!88, !10, i64 24}
!91 = !{!20, !5, i64 8}
!92 = !{!20, !5, i64 9}
!93 = !{!94, !94, i64 0}
!94 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz6detail7weekdayE", !5, i64 0}
!95 = !{!15, !15, i64 0}
!96 = !{!97, !12, i64 0}
!97 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1EEEE", !12, i64 0}
!98 = !{!35, !5, i64 56}
!99 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE: argument 0"}
!102 = distinct !{!102, !"_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE: argument 0"}
!105 = distinct !{!105, !"_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE"}
!106 = !{!107, !107, i64 0}
!107 = !{!"long long", !5, i64 0}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE: argument 0"}
!110 = distinct !{!110, !"_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE"}
!111 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!112 = !{!113, !113, i64 0}
!113 = !{!"vtable pointer", !6, i64 0}
!114 = !{!115, !12, i64 0}
!115 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_16HeaderE", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!116 = !{!115, !12, i64 8}
!117 = !{!115, !12, i64 16}
!118 = !{!115, !12, i64 24}
!119 = !{!115, !12, i64 32}
!120 = !{!115, !12, i64 40}
!121 = !{!122, !10, i64 0}
!122 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!123 = distinct !{!123, !28, !124}
!124 = !{!"llvm.loop.peeled.count", i32 1}
!125 = distinct !{!125, !28}
!126 = distinct !{!126, !28}
!127 = distinct !{!127, !28}
!128 = distinct !{!128, !28}
!129 = distinct !{null}
!130 = !{i64 0, i64 8, !72, i64 8, i64 1, !33, i64 9, i64 1, !33, i64 10, i64 1, !33, i64 11, i64 1, !33, i64 12, i64 1, !33}
!131 = distinct !{!131, !28}
!132 = !{!122, !10, i64 16}
!133 = !{!122, !10, i64 8}
!134 = !{i64 0, i64 4, !3, i64 8, i64 8, !72, i64 16, i64 1, !33, i64 17, i64 1, !33, i64 18, i64 1, !33, i64 19, i64 1, !33, i64 20, i64 1, !33, i64 24, i64 8, !72, i64 32, i64 1, !33, i64 33, i64 1, !33, i64 34, i64 1, !33, i64 35, i64 1, !33, i64 36, i64 1, !33, i64 40, i64 1, !135, i64 41, i64 1, !33}
!135 = !{!22, !22, i64 0}
!136 = !{!137, !139}
!137 = distinct !{!137, !138, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz14TransitionTypeES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!138 = distinct !{!138, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz14TransitionTypeES4_SaIS4_EEvPT_PT0_RT1_"}
!139 = distinct !{!139, !138, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz14TransitionTypeES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!140 = distinct !{!140, !28}
!141 = !{!20, !5, i64 10}
!142 = !{!20, !5, i64 11}
!143 = !{!20, !5, i64 12}
!144 = !{!11, !11, i64 0}
!145 = !{!146, !11, i64 24}
!146 = !{!"_ZTSSt8functionIFSt10unique_ptrIN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !147, i64 0, !11, i64 24}
!147 = !{!"_ZTSSt14_Function_base", !5, i64 0, !11, i64 16}
!148 = !{!147, !11, i64 16}
!149 = !{!150, !150, i64 0}
!150 = !{!"p1 _ZTSN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceE", !11, i64 0}
!151 = distinct !{null, null}
!152 = !{!153, !153, i64 0}
!153 = !{!"p1 _ZTSN4absl12lts_2024011613time_internal4cctz12TimeZoneInfoE", !11, i64 0}
!154 = distinct !{null, null}
!155 = distinct !{null, null, null}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE: argument 0"}
!158 = distinct !{!158, !"_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_10TransitionE: argument 0"}
end_hunk_3
