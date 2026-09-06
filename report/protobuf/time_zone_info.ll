Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/time_zone_info?download=true
inline.NumInlined: 1282
inline.NumDeleted: 547
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE7reserveEm:bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !55     ; 5 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !54   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 48, i1 false), !tbaa.struct !61, !alias.scope !138
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit
  %.not.i8 = icmp eq ptr %i.p, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.p to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.w) #27
  br label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.x, ptr %i.j, align 8, !tbaa !54
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %1
  store ptr %i.y, ptr %i.b, align 8, !tbaa !59
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.absl::lts_20250512::time_internal::cctz::time_zone::absolute_lookup") align 8 captures(none) initializes((0, 21), (24, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(42) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sdiv i64 %2, 60
  %i.b = srem i64 %2, 60
  %i.c = tail call { i64, i64 } @_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_secEllllll(i64 noundef 1970, i64 noundef 1, i64 noundef 1, i64 noundef 0, i64 noundef %i.a, i64 noundef %i.b) #24 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i64 } %i.c, 1 ; 5 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = load i32, ptr %3, align 8, !tbaa !27     ; 2 uses
  %sext.i.i5 = shl i64 %.fca.1.extract.i.i, 56
  %i.f = ashr exact i64 %sext.i.i5, 56
  %i.g = shl i64 %.fca.1.extract.i.i, 48
  %i.h = ashr i64 %i.g, 56
  %i.i = shl i64 %.fca.1.extract.i.i, 40
  %i.j = ashr i64 %i.i, 56
  %i.k = shl i64 %.fca.1.extract.i.i, 32
  %i.l = ashr i64 %i.k, 56
  %i.m = sdiv i32 %i.e, 60
  %.sext = sext i32 %i.m to i64
  %i.n = add nsw i64 %i.l, %.sext
  %.sroa.2.8.insert.ext.i = shl i64 %.fca.1.extract.i.i, 24
  %i.o = ashr i64 %.sroa.2.8.insert.ext.i, 56
  %i.p = srem i32 %i.e, 60
  %.sext10 = sext i32 %i.p to i64
  %i.q = add nsw i64 %i.o, %.sext10
  %i.r = tail call { i64, i64 } @_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.h, i64 noundef %i.j, i64 noundef %i.n, i64 noundef %i.q) #24 ; 2 uses
  %.fca.1.extract.i.i6 = extractvalue { i64, i64 } %i.r, 1
  %.sroa.2.8.insert.ext.i7 = and i64 %.fca.1.extract.i.i6, 1099511627775
  %i.s = extractvalue { i64, i64 } %i.r, 0
  store i64 %i.s, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.2.8.insert.ext.i7, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i32, ptr %3, align 8, !tbaa !27
  store i32 %i.v, ptr %i.u, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load i8, ptr %i.x, align 8, !tbaa !28, !range !29, !noundef !30
  store i8 %i.y, ptr %i.w, align 4, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 41
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !26
  %i.ad = zext i8 %i.ac to i64
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  store ptr %i.af, ptr %i.z, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN4absl12lts_2025051213time_internal4cctz6detailmiENS3_10civil_timeINS3_10second_tagEEES6_(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #4 comdat {
bb.a:
  %.sroa.22.8.extract.trunc.i.i.i.i = trunc i64 %1 to i8
  %.sroa.43.8.extract.shift.i.i.i.i = lshr i64 %1, 8
  %.sroa.43.8.extract.trunc.i.i.i.i = trunc i64 %.sroa.43.8.extract.shift.i.i.i.i to i8
  %.sroa.2.8.extract.trunc.i.i.i.i = trunc i64 %3 to i8
  %.sroa.4.8.extract.shift.i.i.i.i = lshr i64 %3, 8
  %.sroa.4.8.extract.trunc.i.i.i.i = trunc i64 %.sroa.4.8.extract.shift.i.i.i.i to i8
  %i.a = tail call noundef i64 @_ZN4absl12lts_2025051213time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %0, i8 noundef signext %.sroa.22.8.extract.trunc.i.i.i.i, i8 noundef signext %.sroa.43.8.extract.trunc.i.i.i.i, i64 noundef %2, i8 noundef signext %.sroa.2.8.extract.trunc.i.i.i.i, i8 noundef signext %.sroa.4.8.extract.trunc.i.i.i.i) #24
  %i.b = shl i64 %1, 40
  %i.c = ashr i64 %i.b, 56
  %i.d = shl i64 %3, 40
  %i.e = ashr i64 %i.d, 56
  %i.f = sub nsw i64 %i.c, %i.e
  %.pn.i.i.i = mul i64 %i.a, 24
  %i.g = add i64 %i.f, %.pn.i.i.i
  %i.h = shl i64 %1, 32
  %i.i = ashr i64 %i.h, 56
  %i.j = shl i64 %3, 32
  %i.k = ashr i64 %i.j, 56
  %i.l = sub nsw i64 %i.i, %i.k
  %.pn.i.i = mul i64 %i.g, 60
  %i.m = add i64 %i.l, %.pn.i.i
  %i.n = shl i64 %1, 24
  %i.o = ashr i64 %i.n, 56
  %i.p = shl i64 %3, 24
  %i.q = ashr i64 %i.p, 56
  %i.r = sub nsw i64 %i.o, %i.q
  %.pn.i = mul i64 %i.m, 60
  %i.s = add i64 %i.r, %.pn.i
  ret i64 %i.s
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN4absl12lts_2025051213time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !57
  %i.b = srem i64 %i.a, 400
  %i.c = add nsw i64 %i.b, 2400
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !66    ; 2 uses
  %i.f = icmp slt i8 %i.e, 3
  %.neg = sext i1 %i.f to i64
  %i.g = add nsw i64 %i.c, %.neg                  ; 3 uses
  %i.h = lshr i64 %i.g, 2
  %.lhs.trunc = trunc nuw nsw i64 %i.g to i16     ; 2 uses
  %i.i = udiv i16 %.lhs.trunc, 100
  %.zext = zext nneg i16 %i.i to i64
  %i.j = udiv i16 %.lhs.trunc, 400
  %.zext10 = zext nneg i16 %i.j to i64
  %i.k = sext i8 %i.e to i64
  %i.l = getelementptr inbounds [4 x i8], ptr @__const._ZN4absl12lts_2025051213time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_offsets, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.o = load i8, ptr %i.n, align 1, !tbaa !67
  %i.p = sext i8 %i.o to i32
  %i.q = add nsw i32 %i.m, %i.p
  %i.r = sext i32 %i.q to i64
  %i.s = add nuw nsw i64 %i.h, %i.g
  %i.t = add nsw i64 %i.s, %i.r
  %i.u = sub nsw i64 %i.t, %.zext
  %i.v = add nsw i64 %i.u, %.zext10
  %i.w = srem i64 %i.v, 7
  %i.x = getelementptr [4 x i8], ptr @__const._ZN4absl12lts_2025051213time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_by_mon_off, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 24
  %i.z = load i32, ptr %i.y, align 4, !tbaa !140
  ret i32 %i.z
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051213time_internal4cctz13PosixTimeZoneD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !36
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !36
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo17ResetToBuiltinUTCERKNSt6chrono8durationIlSt5ratioILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 5 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !68
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %3 = ptrtoint ptr %i.c to i64
  %4 = ptrtoint ptr %i.d to i64
  %5 = sub i64 %3, %4
  %i.f = icmp ugt i64 %5, 48
  br i1 %i.f, label %bb.d, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, %i.g
  br i1 %.not.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE6resizeEm.exit, label %_ZSt8_DestroyIPN4absl12lts_2025051213time_internal4cctz14TransitionTypeES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4absl12lts_2025051213time_internal4cctz14TransitionTypeES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.g, ptr %i.b, align 8, !tbaa !19
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE6resizeEm.exit

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN4absl12lts_2025051213time_internal4cctz14TransitionTypeES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.h = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.g, %_ZSt8_DestroyIPN4absl12lts_2025051213time_internal4cctz14TransitionTypeES4_EvT_S6_RSaIT0_E.exit.i.i ] ; 7 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -48 ; 4 uses
  %i.j = load i64, ptr %1, align 8, !tbaa !150
  %i.k = trunc i64 %i.j to i32
  store i32 %i.k, ptr %i.i, align 8, !tbaa !27
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -8
  store i8 0, ptr %i.l, align 8, !tbaa !28
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -7
  store i8 0, ptr %i.m, align 1, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54
  %.not.i.i24 = icmp eq ptr %i.q, %i.o
  br i1 %.not.i.i24, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE5clearEv.exit, label %_ZSt8_DestroyIPN4absl12lts_2025051213time_internal4cctz10TransitionES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4absl12lts_2025051213time_internal4cctz10TransitionES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE6resizeEm.exit
  store ptr %i.o, ptr %i.p, align 8, !tbaa !54
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE5clearEv.exit

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE5clearEv.exit: ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE6resizeEm.exit, %_ZSt8_DestroyIPN4absl12lts_2025051213time_internal4cctz10TransitionES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 48
  %i.x = icmp ult i64 %i.w, 12
  br i1 %i.x, label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE7reserveEm.exit.preheader

_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE5clearEv.exit
  %i.y = tail call noalias noundef nonnull dereferenceable(576) ptr @_Znwm(i64 noundef 576) #26 ; 4 uses
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !55   ; 5 uses
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !54  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %i.y, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.z, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i, i64 48, i1 false), !tbaa.struct !61, !alias.scope !151
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48
  %.not.i.i.i.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.z, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.z to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ag) #27
  br label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.y, ptr %i.n, align 8, !tbaa !55
  store ptr %i.y, ptr %i.p, align 8, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 576
  store ptr %i.ah, ptr %i.r, align 8, !tbaa !59
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE7reserveEm.exit.preheader

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE7reserveEm.exit.preheader: ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE5clearEv.exit, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit.i
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE7reserveEm.exit

bb.f:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE7emplaceIJEEEN9__gnu_cxx17__normal_iteratorIPS4_S6_EENS9_IPKS4_S6_EEDpOT_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.ai, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN4absl12lts_2025051213time_internal4cctz17FixedOffsetToAbbrB5cxx11ERKNSt6chrono8durationIlSt5ratioILl1ELl1EEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  %i.an = load ptr, ptr %2, align 8, !tbaa !21    ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ap = icmp eq ptr %i.an, %i.ao                ; 2 uses
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.f
  br i1 %i.ap, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.f
  br i1 %i.ap, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !16 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  switch i64 %i.ar, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.at = load i8, ptr %i.an, align 1, !tbaa !36
  store i8 %i.at, ptr %i.ak, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.an, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.au = load i64, ptr %i.aq, align 8, !tbaa !16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.au, ptr %i.av, align 8, !tbaa !16
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !36
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = load <2 x i64>, ptr %i.az, align 8, !tbaa !36
  store <2 x i64> %i.ba, ptr %i.ay, align 8, !tbaa !36
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bb = load i64, ptr %i.al, align 8, !tbaa !36
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !tbaa !36
  store <2 x i64> %i.be, ptr %i.bd, align 8, !tbaa !36
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ak, ptr %2, align 8, !tbaa !21
  store i64 %i.bb, ptr %i.ao, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ao, ptr %2, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.bf = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ak, %bb.j ], [ %i.ao, %bb.k ]
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bg, align 8, !tbaa !16
  store i8 0, ptr %i.bf, align 1, !tbaa !36
  %i.bh = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !36
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !16
  %i.bo = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 noundef %i.bn, i64 noundef 0, i64 noundef 1, i8 noundef signext 0) ; 0 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 0, ptr %i.bq, align 8, !tbaa !16
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !21
  store i8 0, ptr %i.br, align 1, !tbaa !36
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 0, ptr %i.bs, align 8, !tbaa !49
  %i.bt = call { i64, i64 } @_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 1970, i8 noundef signext 1, i64 noundef 1, i64 noundef 106751991167300, i8 noundef signext 15, i8 noundef signext 30, i8 noundef signext 7) #24, !noalias !152 ; 2 uses
  %.fca.1.extract.i.i.i.i = extractvalue { i64, i64 } %i.bt, 1 ; 5 uses
  %i.bu = extractvalue { i64, i64 } %i.bt, 0
  %i.bv = load i32, ptr %i.i, align 8, !tbaa !27, !noalias !152 ; 2 uses
  %sext.i.i5.i = shl i64 %.fca.1.extract.i.i.i.i, 56
  %i.bw = ashr exact i64 %sext.i.i5.i, 56
  %i.bx = shl i64 %.fca.1.extract.i.i.i.i, 48
  %i.by = ashr i64 %i.bx, 56
  %i.bz = shl i64 %.fca.1.extract.i.i.i.i, 40
  %i.ca = ashr i64 %i.bz, 56
  %i.cb = shl i64 %.fca.1.extract.i.i.i.i, 32
  %i.cc = ashr i64 %i.cb, 56
  %i.cd = sdiv i32 %i.bv, 60
  %.sext.i = sext i32 %i.cd to i64
  %i.ce = add nsw i64 %i.cc, %.sext.i
  %.sroa.6.sroa.0.0.insert.insert.i = shl i64 %.fca.1.extract.i.i.i.i, 24
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE17_M_default_appendEm:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 1970, ptr %i.at, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i8 1, ptr %i.au, align 8, !tbaa !34
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 17
  store i8 1, ptr %i.av, align 1, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 1970, ptr %i.aw, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i8 1, ptr %i.ax, align 8, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 33
  store i8 1, ptr %i.ay, align 1, !tbaa !35
  %i.az = add nsw i64 %1, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  br label %.lr.ph.i.i.i30.prol.loopexit

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.as, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.ba, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.az, %.lr.ph.i.i.i30.prol ]
  %i.bb = icmp eq i64 %1, 1
  br i1 %i.bb, label %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz14TransitionTypeEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bq, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 15 uses
  %.057.i.i.i32 = phi i64 [ %i.bp, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.08.i.i.i31, i8 0, i64 48, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
  store i64 1970, ptr %i.bc, align 8, !tbaa !33
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  store i8 1, ptr %i.bd, align 8, !tbaa !34
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 17
  store i8 1, ptr %i.be, align 1, !tbaa !35
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  store i64 1970, ptr %i.bf, align 8, !tbaa !33
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 32
  store i8 1, ptr %i.bg, align 8, !tbaa !34
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 33
  store i8 1, ptr %i.bh, align 1, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, i8 0, i64 48, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 56
  store i64 1970, ptr %i.bj, align 8, !tbaa !33
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 64
  store i8 1, ptr %i.bk, align 8, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 65
  store i8 1, ptr %i.bl, align 1, !tbaa !35
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  store i64 1970, ptr %i.bm, align 8, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 80
  store i8 1, ptr %i.bn, align 8, !tbaa !34
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 81
  store i8 1, ptr %i.bo, align 1, !tbaa !35
  %i.bp = add i64 %.057.i.i.i32, -2               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  %.not.i.i.i33.1 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i33.1, label %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz14TransitionTypeEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !251

_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz14TransitionTypeEmS4_ET_S6_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz14TransitionTypeEmS4_ET_S6_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i37 ], [ %i.ar, %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz14TransitionTypeEmS4_ET_S6_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz14TransitionTypeEmS4_ET_S6_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 48, i1 false), !tbaa.struct !85, !alias.scope !255
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i38 = icmp eq ptr %i.br, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i37, !llvm.loop !1

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz14TransitionTypeEmS4_ET_S6_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE13_M_deallocateEPS4_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.bt = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bv) #27
  br label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE13_M_deallocateEPS4_m.exit41

_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE13_M_deallocateEPS4_m.exit41: ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.e
  store ptr %i.ar, ptr %0, align 8, !tbaa !20
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %i.as, i64 %1
  store ptr %i.bw, ptr %i.a, align 8, !tbaa !19
  %i.bx = getelementptr inbounds nuw [48 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.bx, ptr %i.h, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz14TransitionTypeEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE13_M_deallocateEPS4_m.exit41, %bb.a
  ret void
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !55     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #25
  unreachable

_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i8 0, i64 48, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 1970, ptr %i.r, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i8 1, ptr %i.s, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 25
  store i8 1, ptr %i.t, align 1, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 27
  store i8 0, ptr %i.u, align 1, !tbaa !96
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 1970, ptr %i.v, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i8 1, ptr %i.w, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 41
  store i8 1, ptr %i.x, align 1, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 43
  store i8 0, ptr %i.y, align 1, !tbaa !96
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 48, i1 false), !tbaa.struct !61, !alias.scope !262
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %.lr.ph.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i16
  %.012.i.i.i17 = phi ptr [ %i.ad, %.lr.ph.i.i.i16 ], [ %i.ab, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i18 = phi ptr [ %i.ac, %.lr.ph.i.i.i16 ], [ %1, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i17, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i18, i64 48, i1 false), !tbaa.struct !61, !alias.scope !263
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 48 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 48 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.ac, %i.b
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21, label %.lr.ph.i.i.i16, !llvm.loop !0

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21: ; preds = %.lr.ph.i.i.i16, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i20 = phi ptr [ %i.ab, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ad, %.lr.ph.i.i.i16 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i22 = icmp eq ptr %i.c, null
  br i1 %.not.i22, label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !59
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ah) #27
  br label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !55
  store ptr %.0.lcssa.i.i.i20, ptr %i.a, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS5_EELb1EE8_S_do_itERS7_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %reass.sub.fr.i = freeze i64 %i.f               ; 5 uses
  %i.g = icmp ugt i64 %reass.sub.fr.i, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #25
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit.thread.i.i, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit.thread.i.i: ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %reass.sub.fr.i
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %reass.sub.fr.i) #26
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EED2Ev.exit.i ; 4 uses

.noexc5.i:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %reass.sub.fr.i
  %i.k = add nsw i64 %reass.sub.fr.i, -48         ; 2 uses
  %i.l = urem i64 %i.k, 48
  %i.m = sub nuw nsw i64 %i.k, %i.l
  %i.n = add nsw i64 %i.m, 48                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 8 %i.a, i64 %i.n, i1 false)
  %scevgep.i.i = getelementptr i8, ptr %i.i, i64 %i.n
  %.pre = load ptr, ptr %0, align 8, !tbaa !55
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit

_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.o, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %.09) #24 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EED2Ev.exit unwind label %bb.d

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit: ; preds = %.noexc5.i, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit.thread.i.i
  %i.q = phi ptr [ %i.a, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit.thread.i.i ], [ %.pre, %.noexc5.i ] ; 3 uses
  %.sroa.12.0 = phi ptr [ %i.h, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit.thread.i.i ], [ %i.j, %.noexc5.i ]
  %.sroa.012.0 = phi ptr [ null, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit.thread.i.i ], [ %i.i, %.noexc5.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit.thread.i.i ], [ %scevgep.i.i, %.noexc5.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !59
  store ptr %.sroa.012.0, ptr %0, align 8, !tbaa !55
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.b, align 8, !tbaa !54
  store ptr %.sroa.12.0, ptr %i.r, align 8, !tbaa !59
  %.not.i.i.i10 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #27
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EED2Ev.exit: ; preds = %bb.c, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EED2Ev.exit.i ], [ true, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit ], [ true, %bb.c ]
  ret i1 %.0

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EED2Ev.exit.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !55     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 48                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59
  %i.j = ptrtoint ptr %i.i to i64
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
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1970, ptr %i.p, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 1, ptr %i.q, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  store i8 1, ptr %i.r, align 1, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 1970, ptr %i.s, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i8 1, ptr %i.t, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 41
  store i8 1, ptr %i.u, align 1, !tbaa !35
  %i.v = add nsw i64 %1, -1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.w, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.w, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %i.x = icmp eq i64 %1, 1
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 15 uses
  %.057.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.08.i.i.i, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  store i64 1970, ptr %i.y, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  store i8 1, ptr %i.z, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 25
  store i8 1, ptr %i.aa, align 1, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  store i64 1970, ptr %i.ab, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  store i8 1, ptr %i.ac, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 41
  store i8 1, ptr %i.ad, align 1, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i8 0, i64 48, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  store i64 1970, ptr %i.af, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72
  store i8 1, ptr %i.ag, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 73
  store i8 1, ptr %i.ah, align 1, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  store i64 1970, ptr %i.ai, align 8, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88
  store i8 1, ptr %i.aj, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 89
  store i8 1, ptr %i.ak, align 1, !tbaa !35
  %i.al = add i64 %.057.i.i.i, -2                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.1, label %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !264

_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.am, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !54
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.an = icmp ult i64 %i.n, %1
  br i1 %i.an, label %bb.d, label %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
  unreachable

_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ao = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 192153584101141162) ; 2 uses
  %i.aq = mul nuw nsw i64 %i.ap, 48
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #26 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f ; 10 uses
  %xtraiter44 = and i64 %1, 1
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, i8 0, i64 48, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 1970, ptr %i.at, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i8 1, ptr %i.au, align 8, !tbaa !34
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 25
  store i8 1, ptr %i.av, align 1, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i64 1970, ptr %i.aw, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store i8 1, ptr %i.ax, align 8, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 41
  store i8 1, ptr %i.ay, align 1, !tbaa !35
  %i.az = add nsw i64 %1, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  br label %.lr.ph.i.i.i30.prol.loopexit

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.as, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.ba, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.az, %.lr.ph.i.i.i30.prol ]
  %i.bb = icmp eq i64 %1, 1
  br i1 %i.bb, label %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bq, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 15 uses
  %.057.i.i.i32 = phi i64 [ %i.bp, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.08.i.i.i31, i8 0, i64 48, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  store i64 1970, ptr %i.bc, align 8, !tbaa !33
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  store i8 1, ptr %i.bd, align 8, !tbaa !34
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 25
  store i8 1, ptr %i.be, align 1, !tbaa !35
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 32
  store i64 1970, ptr %i.bf, align 8, !tbaa !33
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  store i8 1, ptr %i.bg, align 8, !tbaa !34
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 41
end_hunk_1
