inline.NumInlined: 7
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, 2
  br i1 %i.a, label %bb.b, label %.preheader31.us.preheader

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 10) #4, !inline_history !11
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.preheader31.us.preheader, label %._crit_edge

.preheader31.us.preheader:                        ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.e, %bb.b ], [ 46, %bb.a ]   ; 2 uses
  %i.h = mul i32 %i.g, %i.g                       ; 3 uses
  %i.i = mul i32 %i.h, %i.h
  %i.j = mul i32 %i.h, %i.i
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader31.us.preheader, %bb.b
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %i.j, %.preheader31.us.preheader ]
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.0.lcssa) ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %._crit_edge
  tail call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load i8, ptr %i.r, align 8, !tbaa !31
  %.not.i1.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 67
  %i.u = load i8, ptr %i.t, align 1, !tbaa !37
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.q)
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef signext i8 %i.x(ptr noundef nonnull align 8 dereferenceable(570) %i.q, i8 noundef signext 10), !inline_history !38
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i8 [ %i.u, %bb.d ], [ %i.y, %bb.e ]
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext %.0.i.i.i)
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z) ; 0 uses
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = distinct !{null}
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !7, i64 0}
!14 = !{!15, !28, i64 240}
!15 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !16, i64 0, !25, i64 216, !6, i64 224, !26, i64 225, !27, i64 232, !28, i64 240, !29, i64 248, !30, i64 256}
!16 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !18, i64 24, !19, i64 28, !19, i64 32, !20, i64 40, !21, i64 48, !6, i64 64, !5, i64 192, !22, i64 200, !23, i64 208}
!17 = !{!"long", !6, i64 0}
!18 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!19 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!20 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !10, i64 0}
!21 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !17, i64 8}
!22 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !10, i64 0}
!23 = !{!"_ZTSSt6locale", !24, i64 0}
!24 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!25 = !{!"p1 _ZTSSo", !10, i64 0}
!26 = !{!"bool", !6, i64 0}
!27 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 0}
!28 = !{!"p1 _ZTSSt5ctypeIcE", !10, i64 0}
!29 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!30 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!31 = !{!32, !6, i64 56}
!32 = !{!"_ZTSSt5ctypeIcE", !33, i64 0, !34, i64 16, !26, i64 24, !35, i64 32, !35, i64 40, !36, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!33 = !{!"_ZTSNSt6locale5facetE", !5, i64 8}
!34 = !{!"p1 _ZTS15__locale_struct", !10, i64 0}
!35 = !{!"p1 int", !10, i64 0}
!36 = !{!"p1 short", !10, i64 0}
!37 = !{!6, !6, i64 0}
!38 = distinct !{null, null, null, null}
end_hunk_0
