inline.NumInlined: 40
inline.NumDeleted: 23
begin_hunk_0_@uloc_getTableStringWithFallback_78:bb.a

.thread61:                                        ; preds = %bb.p
  %.pre = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ad = icmp slt i32 %.pre, 1
  br i1 %i.ad, label %.thread61.thread79, label %.thread61.thread

.thread61.thread:                                 ; preds = %bb.q, %bb.j, %.thread61
  %.33878 = phi ptr [ %i.r, %.thread61 ], [ %i.aa, %bb.q ], [ %.035, %bb.j ]
  %i.ae = phi i32 [ %.pre, %.thread61 ], [ %i.ab, %bb.q ], [ %i.p, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 0, ptr %i.b, align 4
  store i32 %i.ae, ptr %6, align 4
  store i32 0, ptr %i.a, align 4
  %i.af = call ptr @ures_getStringByKeyWithFallback_78(ptr noundef nonnull %7, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #7
  %i.ag = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 1
  br i1 %i.ah, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.thread61.thread
  store i32 %i.ag, ptr %6, align 4
  br label %bb.y

bb.t:                                             ; preds = %.thread61.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  store ptr %i.i, ptr %9, align 8
  store i32 40, ptr %i.j, align 8
  store i8 0, ptr %i.k, align 4
  store i32 0, ptr %i.l, align 8
  store i8 0, ptr %i.i, align 1
  %i.ai = load i32, ptr %i.b, align 4
  %i.aj = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %9, ptr noundef %i.af, i32 noundef %i.ai, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #7 ; 0 uses
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef %1) #7
  %i.ak = load ptr, ptr %10, align 8
  %i.al = load i32, ptr %i.m, align 8             ; 3 uses
  %i.am = load i32, ptr %i.l, align 8
  %i.an = icmp eq i32 %i.am, %i.al
  br i1 %i.an, label %bb.u, label %._ZNK6icu_7810CharStringeqENS_11StringPieceE.exit.thread65_crit_edge

._ZNK6icu_7810CharStringeqENS_11StringPieceE.exit.thread65_crit_edge: ; preds = %bb.t
  %.pre66 = load ptr, ptr %9, align 8
  br label %_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit.thread65

bb.u:                                             ; preds = %bb.t
  %i.ao = icmp eq i32 %i.al, 0
  br i1 %i.ao, label %.sink.split, label %_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit

_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit: ; preds = %bb.u
  %i.ap = load ptr, ptr %9, align 8               ; 2 uses
  %i.aq = sext i32 %i.al to i64
  %bcmp.i = call i32 @bcmp(ptr %i.ap, ptr %i.ak, i64 %i.aq)
  %i.ar = icmp eq i32 %bcmp.i, 0
  br i1 %i.ar, label %.sink.split, label %_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit.thread65

_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit.thread65: ; preds = %._ZNK6icu_7810CharStringeqENS_11StringPieceE.exit.thread65_crit_edge, %_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit
  %i.as = phi ptr [ %.pre66, %._ZNK6icu_7810CharStringeqENS_11StringPieceE.exit.thread65_crit_edge ], [ %i.ap, %_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit ]
  %i.at = call ptr @ures_open_78(ptr noundef %0, ptr noundef %i.as, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEE12adoptInsteadEPS2_.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit.thread65
  call void @ures_close_78(ptr noundef nonnull %.sroa.0.0) #7
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEE12adoptInsteadEPS2_.exit

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEE12adoptInsteadEPS2_.exit: ; preds = %_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit.thread65, %bb.v
  %i.au = load i32, ptr %i.a, align 4             ; 2 uses
  %i.av = icmp slt i32 %i.au, 1
  br i1 %i.av, label %bb.w, label %.sink.split

.sink.split:                                      ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEE12adoptInsteadEPS2_.exit, %_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit, %bb.u
  %.sink = phi i32 [ 5, %_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit ], [ 5, %bb.u ], [ %i.au, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEE12adoptInsteadEPS2_.exit ]
  %.sroa.0.1.ph = phi ptr [ %.sroa.0.0, %_ZNK6icu_7810CharStringeqENS_11StringPieceE.exit ], [ %.sroa.0.0, %bb.u ], [ %i.at, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEE12adoptInsteadEPS2_.exit ]
  store i32 %.sink, ptr %6, align 4
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEE12adoptInsteadEPS2_.exit
  %.sroa.0.1 = phi ptr [ %i.at, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEE12adoptInsteadEPS2_.exit ], [ %.sroa.0.1.ph, %.sink.split ]
  %i.aw = phi i1 [ true, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEE12adoptInsteadEPS2_.exit ], [ false, %.sink.split ]
  %i.ax = load i8, ptr %i.k, align 4
  %.not.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ay = load ptr, ptr %9, align 8
  call void @uprv_free_78(ptr noundef %i.ay) #7
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  br label %bb.y

bb.y:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.s
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %_ZN6icu_7810CharStringD2Ev.exit ], [ %.sroa.0.0, %bb.s ]
  %.2 = phi i1 [ %i.aw, %_ZN6icu_7810CharStringD2Ev.exit ], [ false, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.thread61.thread79

.thread61.thread79:                               ; preds = %bb.n, %bb.r, %.thread61, %bb.k, %bb.y
  %.sroa.0.3 = phi ptr [ %.sroa.0.0, %.thread61 ], [ %.sroa.0.2, %bb.y ], [ %.sroa.0.0, %bb.k ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %bb.n ] ; 2 uses
  %.4 = phi ptr [ %i.r, %.thread61 ], [ %.33878, %bb.y ], [ %i.r, %bb.k ], [ %i.aa, %bb.r ], [ %i.r, %bb.n ] ; 2 uses
  %.3 = phi i1 [ false, %.thread61 ], [ %.2, %bb.y ], [ false, %bb.k ], [ false, %bb.r ], [ false, %bb.n ]
  call void @_ZN6icu_7820StackUResourceBundleD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @_ZN6icu_7820StackUResourceBundleD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  br i1 %.3, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %.thread61.thread79, %bb.c
  %.sroa.0.4 = phi ptr [ %i.e, %bb.c ], [ %.sroa.0.3, %.thread61.thread79 ] ; 2 uses
  %.039 = phi ptr [ null, %bb.c ], [ %.4, %.thread61.thread79 ]
  %.not.i54 = icmp eq ptr %.sroa.0.4, null
  br i1 %.not.i54, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @ures_close_78(ptr noundef nonnull %.sroa.0.4) #7
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit: ; preds = %.loopexit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit
  %.140 = phi ptr [ %.039, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit ], [ null, %bb.a ]
  ret ptr %.140
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @ures_open_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN6icu_7820StackUResourceBundleC1Ev(ptr noundef nonnull align 8 dereferenceable(136)) unnamed_addr #2

declare ptr @ures_getByKeyWithFallback_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ures_getStringByKeyWithFallback_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @uloc_getCurrentCountryID_78(ptr noundef) local_unnamed_addr #2

declare ptr @uloc_getCurrentLanguageID_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7820StackUResourceBundleD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 5) i32 @uloc_getCharacterOrientation_78(ptr noundef %0, ptr noundef nonnull %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_126_uloc_getOrientationHelperEPKcS1_R10UErrorCode(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull align 4 dereferenceable(4) %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 5) i32 @_ZN12_GLOBAL__N_126_uloc_getOrientationHelperEPKcS1_R10UErrorCode(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.icu_78::CharString", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i32, ptr %2, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @uloc_getDefault_78() #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.015 = phi ptr [ %i.e, %bb.c ], [ %0, %bb.b ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.015) #7
  call void @_Z23ulocimp_canonicalize_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %3, i64 %i.f, ptr nonnull %.015, ptr noundef nonnull align 4 dereferenceable(4) %2) #7
  %i.g = load i32, ptr %2, align 4
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4
  %i.i = load ptr, ptr %3, align 8
  %i.j = call ptr @uloc_getTableStringWithFallback_78(ptr noundef null, ptr noundef %i.i, ptr noundef nonnull @.str.5, ptr noundef null, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %2)
  %i.k = load i32, ptr %2, align 4
  %i.l = icmp sgt i32 %i.k, 0
  %i.m = load i32, ptr %i.a, align 4
  %.not19 = icmp eq i32 %i.m, 0
  %or.cond = select i1 %i.l, i1 true, i1 %.not19
  br i1 %or.cond, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i16, ptr %i.j, align 2
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  %4 = call i32 @llvm.fshl.i32(i32 %i.o, i32 %i.o, i32 31)
  %switch.tableidx = add i32 %4, -49              ; 3 uses
  %i.p = icmp ult i32 %switch.tableidx, 10
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 801, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond21 = select i1 %i.p, i1 %switch.lobit, i1 false
  br i1 %or.cond21, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 5, ptr %2, align 4
  br label %bb.h

switch.lookup:                                    ; preds = %bb.f
  %i.q = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN12_GLOBAL__N_126_uloc_getOrientationHelperEPKcS1_R10UErrorCode, i64 %i.q
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.h

bb.h:                                             ; preds = %switch.lookup, %bb.g, %bb.e
  %.0 = phi i32 [ 4, %bb.e ], [ 4, %bb.g ], [ %switch.load, %switch.lookup ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h
  %.1 = phi i32 [ %.0, %bb.h ], [ 4, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.s = load i8, ptr %i.r, align 4
  %.not.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %3, align 8
  call void @uprv_free_78(ptr noundef %i.t) #7
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN6icu_7810CharStringD2Ev.exit
  %.2 = phi i32 [ %.1, %_ZN6icu_7810CharStringD2Ev.exit ], [ 4, %bb.a ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 5) i32 @uloc_getLineOrientation_78(ptr noundef %0, ptr noundef nonnull %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_126_uloc_getOrientationHelperEPKcS1_R10UErrorCode(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull align 4 dereferenceable(4) %1)
  ret i32 %i.a
}

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #2

declare ptr @uloc_getDefault_78() local_unnamed_addr #2

declare void @_Z23ulocimp_canonicalize_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::CharString") align 8, i64, ptr, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare void @ures_close_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #6

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
end_hunk_0
