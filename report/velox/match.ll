inline.NumInlined: 65
inline.NumDeleted: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$__clang_call_terminate = comdat any

@_ZN4absl12lts_2024011614ascii_internal8kToUpperE = external local_unnamed_addr constant [256 x i8], align 16
@_ZN4absl12lts_2024011614ascii_internal8kToLowerE = external local_unnamed_addr constant [256 x i8], align 16

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %0, %2
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef i32 @_ZN4absl12lts_2024011616strings_internal10memcasecmpEPKcS3_m(ptr noundef %1, ptr noundef %3, i64 noundef %0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %i.b, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.d = phi i1 [ false, %bb.a ], [ %i.c, %bb.c ]
  ret i1 %i.d

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #9
  unreachable
}

declare noundef i32 @_ZN4absl12lts_2024011616strings_internal10memcasecmpEPKcS3_m(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011621StrContainsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not8.not = icmp ult i64 %0, %2
  br i1 %.not8.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2024011620StartsWithIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_.exit
  %.sroa.5.010 = phi ptr [ %i.e, %_ZN4absl12lts_2024011620StartsWithIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_.exit ], [ %1, %bb.a ] ; 2 uses
  %.sroa.04.09 = phi i64 [ %i.f, %_ZN4absl12lts_2024011620StartsWithIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_.exit ], [ %0, %bb.a ]
  %i.a = invoke noundef i32 @_ZN4absl12lts_2024011616strings_internal10memcasecmpEPKcS3_m(ptr noundef %.sroa.5.010, ptr noundef %3, i64 noundef %2)
          to label %_ZN4absl12lts_2024011620StartsWithIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_.exit unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #9
  unreachable

_ZN4absl12lts_2024011620StartsWithIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_.exit: ; preds = %.lr.ph
  %i.d = icmp eq i32 %i.a, 0                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.5.010, i64 1
  %i.f = add i64 %.sroa.04.09, -1                 ; 2 uses
  %.not.not = icmp ult i64 %i.f, %2
  %or.cond = select i1 %i.d, i1 true, i1 %.not.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph, !llvm.loop !7

._crit_edge:                                      ; preds = %_ZN4absl12lts_2024011620StartsWithIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_.exit, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ %i.d, %_ZN4absl12lts_2024011620StartsWithIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_.exit ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011620StartsWithIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp ult i64 %0, %2
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef i32 @_ZN4absl12lts_2024011616strings_internal10memcasecmpEPKcS3_m(ptr noundef %1, ptr noundef %3, i64 noundef %2)
          to label %_ZN4absl12lts_2024011616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #9
  unreachable

_ZN4absl12lts_2024011616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_.exit: ; preds = %bb.b
  %i.d = icmp eq i32 %i.a, 0
  br label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2024011616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_.exit, %bb.a
  %i.e = phi i1 [ false, %bb.a ], [ %i.d, %_ZN4absl12lts_2024011616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_.exit ]
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011621StrContainsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEEc(i64 %0, ptr %1, i8 noundef signext %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 7 uses
  %i.b = zext i8 %2 to i64                        ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011614ascii_internal8kToUpperE, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !9     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011614ascii_internal8kToLowerE, i64 %i.b
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9     ; 2 uses
  %i.g = icmp eq i8 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %0, 0
  br i1 %.not.i, label %_ZN4absl12lts_2024011611StrContainsESt17basic_string_viewIcSt11char_traitsIcEEc.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.b
  %i.h = sext i8 %2 to i32
  %i.i = tail call ptr @memchr(ptr noundef %1, i32 noundef %i.h, i64 noundef %0) #10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN4absl12lts_2024011611StrContainsESt17basic_string_viewIcSt11char_traitsIcEEc.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ne i64 %i.l, -1
  br label %_ZN4absl12lts_2024011611StrContainsESt17basic_string_viewIcSt11char_traitsIcEEc.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i8 %i.f, ptr %i.a, align 1, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.d, ptr %i.n, align 1, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.o, align 1, !tbaa !9
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #10 ; 2 uses
  %.not.i.i7 = icmp ne i64 %i.p, 0
  %i.q = icmp ne i64 %0, 0
  %or.cond = select i1 %.not.i.i7, i1 %i.q, i1 false
  br i1 %or.cond, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i8, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i8:    ; preds = %bb.d, %bb.e
  %.0111420.i.i = phi i64 [ %i.v, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.0111420.i.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !9
  %i.t = sext i8 %i.s to i32
  %i.u = call ptr @memchr(ptr noundef nonnull %i.a, i32 noundef %i.t, i64 noundef %i.p) #10
  %.not13.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not13.not.i.i, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.loopexit

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i8
  %i.v = add nuw i64 %.0111420.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.v, %0
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.loopexit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i8

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.loopexit: ; preds = %bb.e, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i8
  %.2.i.i.ph = phi i64 [ -1, %bb.e ], [ %.0111420.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i8 ]
  %i.w = icmp ne i64 %.2.i.i.ph, -1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.loopexit, %bb.d
  %.2.i.i = phi i1 [ false, %bb.d ], [ %i.w, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_ZN4absl12lts_2024011611StrContainsESt17basic_string_viewIcSt11char_traitsIcEEc.exit

_ZN4absl12lts_2024011611StrContainsESt17basic_string_viewIcSt11char_traitsIcEEc.exit: ; preds = %bb.c, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.b, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
  %.0 = phi i1 [ %.2.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit ], [ false, %bb.b ], [ %i.m, %bb.c ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011618EndsWithIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp ult i64 %0, %2
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sub nuw i64 %0, %2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.c = invoke noundef i32 @_ZN4absl12lts_2024011616strings_internal10memcasecmpEPKcS3_m(ptr noundef %i.b, ptr noundef %3, i64 noundef %2)
          to label %_ZN4absl12lts_2024011616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #9
  unreachable

_ZN4absl12lts_2024011616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_.exit: ; preds = %bb.b
  %i.f = icmp eq i32 %i.c, 0
  br label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2024011616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_.exit, %bb.a
  %i.g = phi i1 [ false, %bb.a ], [ %i.f, %_ZN4absl12lts_2024011616EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_.exit ]
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, ptr } @_ZN4absl12lts_2024011623FindLongestCommonPrefixESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 %2, ptr nofree readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %0) ; 7 uses
  %i.a = icmp ult i64 %.sroa.speculated, 8
  br i1 %i.a, label %.preheader, label %.preheader82, !prof !10

.preheader:                                       ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]     ; 8 uses
  %i.b = add i64 %.0, 2                           ; 2 uses
  %.not57 = icmp ugt i64 %i.b, %.sroa.speculated
  br i1 %.not57, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.0
  %.0.copyload.i.i = load i16, ptr %i.c, align 1  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %.0
  %.0.copyload.i.i61 = load i16, ptr %i.d, align 1 ; 2 uses
  %.not59 = icmp eq i16 %.0.copyload.i.i, %.0.copyload.i.i61
  br i1 %.not59, label %.preheader, label %.thread, !prof !11

.thread:                                          ; preds = %bb.b
  %i.e = xor i16 %.0.copyload.i.i61, %.0.copyload.i.i
  %i.f = and i16 %i.e, 255
  %i.g = icmp eq i16 %i.f, 0
  %i.h = zext i1 %i.g to i64
  %spec.select = or disjoint i64 %.0, %i.h
  br label %bb.i

bb.c:                                             ; preds = %.preheader
  %.not58 = icmp eq i64 %.0, %.sroa.speculated
  br i1 %.not58, label %bb.i, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.0
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 %.0
  %i.l = load i8, ptr %i.k, align 1, !tbaa !9
  %i.m = icmp eq i8 %i.j, %i.l
  %i.n = zext i1 %i.m to i64
  %spec.select60 = or disjoint i64 %.0, %i.n
  br label %bb.i

.preheader82:                                     ; preds = %bb.a, %bb.f
  %.4 = phi i64 [ %i.u, %bb.f ], [ 0, %bb.a ]     ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.4
  %.0.copyload.i.i62 = load i64, ptr %i.o, align 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %.4
  %.0.copyload.i.i63 = load i64, ptr %i.p, align 1 ; 2 uses
  %.not = icmp eq i64 %.0.copyload.i.i62, %.0.copyload.i.i63
  br i1 %.not, label %bb.f, label %bb.e, !prof !11

bb.e:                                             ; preds = %.preheader82
  %i.q = xor i64 %.0.copyload.i.i63, %.0.copyload.i.i62
  %i.r = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.q, i1 true)
  %i.s = lshr i64 %i.r, 3
  %i.t = or disjoint i64 %i.s, %.4
  br label %bb.i

bb.f:                                             ; preds = %.preheader82
  %i.u = add i64 %.4, 8
  %i.v = add i64 %.4, 16
  %i.w = icmp ult i64 %i.v, %.sroa.speculated
  br i1 %i.w, label %.preheader82, label %bb.g, !prof !11, !llvm.loop !12

bb.g:                                             ; preds = %bb.f
  %i.x = add i64 %.sroa.speculated, -8            ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %.0.copyload.i.i64 = load i64, ptr %i.y, align 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %i.x
  %.0.copyload.i.i65 = load i64, ptr %i.z, align 1 ; 2 uses
  %.not56 = icmp eq i64 %.0.copyload.i.i64, %.0.copyload.i.i65
  br i1 %.not56, label %bb.i, label %bb.h, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.aa = xor i64 %.0.copyload.i.i65, %.0.copyload.i.i64
  %i.ab = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aa, i1 true)
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw i64 %i.ac, %i.x
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.c, %bb.d, %.thread, %bb.h
  %.sroa.071.4 = phi i64 [ %i.t, %bb.e ], [ %spec.select, %.thread ], [ %spec.select60, %bb.d ], [ %i.ad, %bb.h ], [ %.sroa.speculated, %bb.c ], [ %.sroa.speculated, %bb.g ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.071.4, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %1, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, ptr } @_ZN4absl12lts_2024011623FindLongestCommonSuffixESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 %2, ptr nofree readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %0) ; 4 uses
  %i.a = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %2
  %i.d = sub i64 %0, %.sroa.speculated
  %scevgep = getelementptr i8, ptr %1, i64 %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  %.pn = phi ptr [ %i.c, %bb.b ], [ %.0926, %bb.d ]
  %.025 = phi i64 [ 0, %bb.b ], [ %i.h, %bb.d ]   ; 2 uses
  %.pn24 = phi ptr [ %i.b, %bb.b ], [ %.01027, %bb.d ] ; 2 uses
  %.0926 = getelementptr inbounds i8, ptr %.pn, i64 -1 ; 2 uses
  %.01027 = getelementptr inbounds i8, ptr %.pn24, i64 -1 ; 2 uses
  %i.e = load i8, ptr %.01027, align 1, !tbaa !9
  %i.f = load i8, ptr %.0926, align 1, !tbaa !9
  %i.g = icmp eq i8 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw i64 %.025, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %.sroa.speculated
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !13

.critedge:                                        ; preds = %bb.c, %bb.d, %bb.a
  %.sroa.321.0 = phi ptr [ null, %bb.a ], [ %scevgep, %bb.d ], [ %.pn24, %bb.c ]
  %.sroa.020.0 = phi i64 [ 0, %bb.a ], [ %.sroa.speculated, %bb.d ], [ %.025, %bb.c ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.020.0, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.321.0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

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
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!5, !5, i64 0}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
end_hunk_0
