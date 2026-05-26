inline.NumInlined: 65
inline.NumDeleted: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN4absl14ascii_internal8kToUpperE = external local_unnamed_addr constant [256 x i8], align 16
@_ZN4absl14ascii_internal8kToLowerE = external local_unnamed_addr constant [256 x i8], align 16

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4absl16EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4absl16strings_internal10memcasecmpEPKcS2_m(ptr noundef %1, ptr noundef %3, i64 noundef %0) #7
  %i.c = icmp eq i32 %i.b, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i1 [ false, %bb.a ], [ %i.c, %bb.b ]
  ret i1 %i.d
}

declare noundef i32 @_ZN4absl16strings_internal10memcasecmpEPKcS2_m(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4absl21StrContainsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #0 {
bb.a:
  %.not7.not = icmp ult i64 %0, %2
  br i1 %.not7.not, label %._crit_edge, label %_ZN4absl20StartsWithIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES3_.exit

_ZN4absl20StartsWithIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES3_.exit: ; preds = %bb.a, %_ZN4absl20StartsWithIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES3_.exit
  %.sroa.5.09 = phi ptr [ %i.c, %_ZN4absl20StartsWithIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES3_.exit ], [ %1, %bb.a ] ; 2 uses
  %.sroa.04.08 = phi i64 [ %i.d, %_ZN4absl20StartsWithIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES3_.exit ], [ %0, %bb.a ]
  %i.a = tail call noundef i32 @_ZN4absl16strings_internal10memcasecmpEPKcS2_m(ptr noundef %.sroa.5.09, ptr noundef %3, i64 noundef %2) #7
  %i.b = icmp eq i32 %i.a, 0                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.5.09, i64 1
  %i.d = add i64 %.sroa.04.08, -1                 ; 2 uses
  %.not.not = icmp ult i64 %i.d, %2
  %or.cond = select i1 %i.b, i1 true, i1 %.not.not
  br i1 %or.cond, label %._crit_edge, label %_ZN4absl20StartsWithIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES3_.exit, !llvm.loop !5

._crit_edge:                                      ; preds = %_ZN4absl20StartsWithIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES3_.exit, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ %i.b, %_ZN4absl20StartsWithIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES3_.exit ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4absl20StartsWithIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp ult i64 %0, %2
  br i1 %.not, label %bb.b, label %_ZN4absl16EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES3_.exit

_ZN4absl16EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES3_.exit: ; preds = %bb.a
  %i.a = tail call noundef i32 @_ZN4absl16strings_internal10memcasecmpEPKcS2_m(ptr noundef %1, ptr noundef %3, i64 noundef %2) #7
  %i.b = icmp eq i32 %i.a, 0
  br label %bb.b

bb.b:                                             ; preds = %_ZN4absl16EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES3_.exit, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %_ZN4absl16EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES3_.exit ]
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN4absl21StrContainsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEEc(i64 %0, ptr %1, i8 noundef signext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 7 uses
  %i.b = zext i8 %2 to i64                        ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr @_ZN4absl14ascii_internal8kToUpperE, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1               ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN4absl14ascii_internal8kToLowerE, i64 %i.b
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = icmp eq i8 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %0, 0
  br i1 %.not.i, label %_ZN4absl11StrContainsESt17basic_string_viewIcSt11char_traitsIcEEc.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.b
  %i.h = sext i8 %2 to i32
  %i.i = tail call ptr @memchr(ptr noundef %1, i32 noundef %i.h, i64 noundef %0) #7 ; 2 uses
  %.not.i.i = icmp ne ptr %i.i, null
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ne i64 %i.l, -1
  %i.n = select i1 %.not.i.i, i1 %i.m, i1 false
  br label %_ZN4absl11StrContainsESt17basic_string_viewIcSt11char_traitsIcEEc.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i8 %i.f, ptr %i.a, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.d, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.p, align 1
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #7 ; 2 uses
  %.not.i.i7 = icmp ne i64 %i.q, 0
  %i.r = icmp ne i64 %0, 0
  %or.cond15.i.i = select i1 %.not.i.i7, i1 %i.r, i1 false
  br i1 %or.cond15.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i8, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i8:    ; preds = %bb.c, %bb.d
  %.01116.i.i = phi i64 [ %i.w, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.01116.i.i
  %i.t = load i8, ptr %i.s, align 1
  %i.u = sext i8 %i.t to i32
  %i.v = call ptr @memchr(ptr noundef nonnull %i.a, i32 noundef %i.u, i64 noundef %i.q) #7
  %.not13.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not13.not.i.i, label %bb.d, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.loopexit

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i8
  %i.w = add nuw i64 %.01116.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %0
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.loopexit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i8, !llvm.loop !7

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.loopexit: ; preds = %bb.d, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i8
  %.2.i.i.ph = phi i64 [ -1, %bb.d ], [ %.01116.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i8 ]
  %i.x = icmp ne i64 %.2.i.i.ph, -1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.loopexit, %bb.c
  %.2.i.i = phi i1 [ false, %bb.c ], [ %i.x, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %_ZN4absl11StrContainsESt17basic_string_viewIcSt11char_traitsIcEEc.exit

_ZN4absl11StrContainsESt17basic_string_viewIcSt11char_traitsIcEEc.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.b, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
  %.0 = phi i1 [ %.2.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit ], [ %i.n, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4absl18EndsWithIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp ult i64 %0, %2
  br i1 %.not, label %bb.b, label %_ZN4absl16EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES3_.exit

_ZN4absl16EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES3_.exit: ; preds = %bb.a
  %i.a = sub nuw i64 %0, %2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.c = tail call noundef i32 @_ZN4absl16strings_internal10memcasecmpEPKcS2_m(ptr noundef %i.b, ptr noundef %3, i64 noundef %2) #7
  %i.d = icmp eq i32 %i.c, 0
  br label %bb.b

bb.b:                                             ; preds = %_ZN4absl16EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES3_.exit, %bb.a
  %i.e = phi i1 [ false, %bb.a ], [ %i.d, %_ZN4absl16EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES3_.exit ]
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, ptr } @_ZN4absl23FindLongestCommonPrefixESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %0, ptr %1, i64 %2, ptr readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %0) ; 7 uses
  %i.a = icmp ult i64 %.sroa.speculated, 8
  br i1 %i.a, label %.preheader, label %.preheader82, !prof !8

.preheader:                                       ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]     ; 8 uses
  %i.b = add i64 %.0, 2                           ; 2 uses
  %.not57 = icmp ugt i64 %i.b, %.sroa.speculated
  br i1 %.not57, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.0
  %.0.copyload.i.i = load i16, ptr %i.c, align 1  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %.0
  %.0.copyload.i.i61 = load i16, ptr %i.d, align 1 ; 2 uses
  %.not59 = icmp eq i16 %.0.copyload.i.i, %.0.copyload.i.i61
  br i1 %.not59, label %.preheader, label %.thread, !prof !9

.thread:                                          ; preds = %bb.b
  %i.e = xor i16 %.0.copyload.i.i61, %.0.copyload.i.i
  %i.f = and i16 %i.e, 255
  %i.g = icmp eq i16 %i.f, 0
  %i.h = zext i1 %i.g to i64
  %spec.select = or disjoint i64 %.0, %i.h
  br label %bb.i

bb.c:                                             ; preds = %.preheader
  %.not58 = icmp eq i64 %.0, %.sroa.speculated
  br i1 %.not58, label %bb.i, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.0
  %i.j = load i8, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 %.0
  %i.l = load i8, ptr %i.k, align 1
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
  br i1 %.not, label %bb.f, label %bb.e, !prof !9

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
  br i1 %i.w, label %.preheader82, label %bb.g, !prof !9, !llvm.loop !10

bb.g:                                             ; preds = %bb.f
  %i.x = add i64 %.sroa.speculated, -8            ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %.0.copyload.i.i64 = load i64, ptr %i.y, align 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %i.x
  %.0.copyload.i.i65 = load i64, ptr %i.z, align 1 ; 2 uses
  %.not56 = icmp eq i64 %.0.copyload.i.i64, %.0.copyload.i.i65
  br i1 %.not56, label %bb.i, label %bb.h, !prof !8

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
define dso_local { i64, ptr } @_ZN4absl23FindLongestCommonSuffixESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %0, ptr %1, i64 %2, ptr readonly captures(none) %3) local_unnamed_addr #2 {
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
  %i.e = load i8, ptr %.01027, align 1
  %i.f = load i8, ptr %.0926, align 1
  %i.g = icmp eq i8 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw i64 %.025, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %.sroa.speculated
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !11

.critedge:                                        ; preds = %bb.c, %bb.d, %bb.a
  %.sroa.321.0 = phi ptr [ null, %bb.a ], [ %scevgep, %bb.d ], [ %.pn24, %bb.c ]
  %.sroa.020.0 = phi i64 [ 0, %bb.a ], [ %.sroa.speculated, %bb.d ], [ %.025, %bb.c ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.020.0, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.321.0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
end_hunk_0
