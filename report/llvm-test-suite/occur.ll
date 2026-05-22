inline.NumInlined: 76
inline.NumDeleted: 11
begin_hunk_0_@_ZN2kc20f_useoccurlistphylumEPNS_7impl_IDE:bb.a
  tail call void @_ZN2kc21kc_no_default_in_withEPKciS1_(ptr noundef nonnull @.str.44, i32 noundef 556, ptr noundef nonnull @.str.1)
  br label %bb.q

bb.o:                                             ; preds = %bb.b
  %i.br = tail call noundef ptr @_ZN2kc13Problem1S1tIDEPKcPNS_7impl_IDE(ptr noundef nonnull @.str.45, ptr noundef nonnull %0)
  %i.bs = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.bs, align 8, !tbaa !22
  %i.bt = getelementptr i8, ptr %0, i64 32
  %.val24 = load ptr, ptr %i.bt, align 8, !tbaa !24
  %i.bu = tail call noundef ptr @_ZN2kc8FileLineEPNS_20impl_casestring__StrEi(ptr noundef %.val24, i32 noundef %.val)
  %i.bv = tail call noundef ptr @_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE(ptr noundef %i.bu, ptr noundef %i.br)
  tail call void @_ZN2kc8v_reportEPNS_10impl_errorE(ptr noundef %i.bv)
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  tail call void @_ZN2kc21kc_no_default_in_withEPKciS1_(ptr noundef nonnull @.str.44, i32 noundef 567, ptr noundef nonnull @.str.1)
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.j, %bb.n, %bb.m, %bb.h, %bb.e, %bb.p
  %.2 = phi i1 [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.e ], [ false, %bb.h ], [ false, %bb.n ], [ false, %bb.m ], [ true, %bb.j ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN2kc19f_useoccuruviewnameEPNS_7impl_IDE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i32 %i.b(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.d = icmp eq i32 %i.c, 7
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.l = icmp eq i32 %i.k, 180
  br i1 %i.l, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.p = icmp eq i32 %i.o, 179
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noundef ptr @_ZN2kc13Problem1S1tIDEPKcPNS_7impl_IDE(ptr noundef nonnull @.str.46, ptr noundef nonnull %0)
  %i.r = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.r, align 8, !tbaa !22
  %i.s = getelementptr i8, ptr %0, i64 32
  %.val9 = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.t = tail call noundef ptr @_ZN2kc8FileLineEPNS_20impl_casestring__StrEi(ptr noundef %.val9, i32 noundef %.val)
  %i.u = tail call noundef ptr @_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE(ptr noundef %i.t, ptr noundef %i.q)
  tail call void @_ZN2kc8v_reportEPNS_10impl_errorE(ptr noundef %i.u)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN2kc21kc_no_default_in_withEPKciS1_(ptr noundef nonnull @.str.47, i32 noundef 592, ptr noundef nonnull @.str.1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.e
  %.1 = phi i1 [ false, %bb.e ], [ false, %bb.d ], [ true, %bb.b ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN2kc19f_useoccurrviewnameEPNS_7impl_IDE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i32 %i.b(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.d = icmp eq i32 %i.c, 7
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.l = icmp eq i32 %i.k, 183
  br i1 %i.l, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.p = icmp eq i32 %i.o, 182
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noundef ptr @_ZN2kc13Problem1S1tIDEPKcPNS_7impl_IDE(ptr noundef nonnull @.str.48, ptr noundef nonnull %0)
  %i.r = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.r, align 8, !tbaa !22
  %i.s = getelementptr i8, ptr %0, i64 32
  %.val9 = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.t = tail call noundef ptr @_ZN2kc8FileLineEPNS_20impl_casestring__StrEi(ptr noundef %.val9, i32 noundef %.val)
  %i.u = tail call noundef ptr @_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE(ptr noundef %i.t, ptr noundef %i.q)
  tail call void @_ZN2kc8v_reportEPNS_10impl_errorE(ptr noundef %i.u)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN2kc21kc_no_default_in_withEPKciS1_(ptr noundef nonnull @.str.49, i32 noundef 617, ptr noundef nonnull @.str.1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.e
  %.1 = phi i1 [ false, %bb.e ], [ false, %bb.d ], [ true, %bb.b ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN2kc22f_useoccurstorageclassEPNS_7impl_IDE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i32 %i.b(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.d = icmp eq i32 %i.c, 7
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.l = icmp eq i32 %i.k, 178
  br i1 %i.l, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.p = icmp eq i32 %i.o, 177
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noundef ptr @_ZN2kc13Problem1S1tIDEPKcPNS_7impl_IDE(ptr noundef nonnull @.str.50, ptr noundef nonnull %0)
  %i.r = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.r, align 8, !tbaa !22
  %i.s = getelementptr i8, ptr %0, i64 32
  %.val9 = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.t = tail call noundef ptr @_ZN2kc8FileLineEPNS_20impl_casestring__StrEi(ptr noundef %.val9, i32 noundef %.val)
  %i.u = tail call noundef ptr @_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE(ptr noundef %i.t, ptr noundef %i.q)
  tail call void @_ZN2kc8v_reportEPNS_10impl_errorE(ptr noundef %i.u)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN2kc21kc_no_default_in_withEPKciS1_(ptr noundef nonnull @.str.51, i32 noundef 642, ptr noundef nonnull @.str.1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.e
  %.1 = phi i1 [ false, %bb.e ], [ false, %bb.d ], [ true, %bb.b ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN2kc22f_useoccurlanguagenameEPNS_18impl_languagenamesE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i32 %i.b(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.d = icmp eq i32 %i.c, 164
  br i1 %i.d, label %_ZN2kcL17occurlanguagenameEPNS_7impl_IDE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.h = icmp eq i32 %i.g, 165
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.m = tail call noundef zeroext i1 @_ZN2kc22f_useoccurlanguagenameEPNS_18impl_languagenamesE(ptr noundef %i.l)
  %.01621.i = load ptr, ptr @Thelanguages, align 8, !tbaa !52 ; 3 uses
  %i.n = load ptr, ptr %.01621.i, align 8, !tbaa !8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(24) %.01621.i), !inline_history !53
  %i.q = icmp eq i32 %i.p, 165
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01622.i, i64 16
  %.016.i = load ptr, ptr %i.r, align 8, !tbaa !52 ; 3 uses
  %i.s = load ptr, ptr %.016.i, align 8, !tbaa !8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(24) %.016.i), !inline_history !53
  %i.v = icmp eq i32 %i.u, 165
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !54

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.01622.i = phi ptr [ %.016.i, %bb.d ], [ %.01621.i, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01622.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = tail call noundef zeroext i1 @_ZNK2kc20impl_abstract_phylum2eqEPKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.x)
  br i1 %i.y, label %_ZN2kcL17occurlanguagenameEPNS_7impl_IDE.exit, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !22
  %i.ad = tail call noundef ptr @_ZN2kc8FileLineEPNS_20impl_casestring__StrEi(ptr noundef %i.aa, i32 noundef %i.ac)
  %i.ae = tail call noundef ptr @_ZN2kc13Problem1S1tIDEPKcPNS_7impl_IDE(ptr noundef nonnull @.str.79, ptr noundef %i.j)
  %i.af = tail call noundef ptr @_ZN2kc5FatalEPNS_13impl_filelineEPNS_12impl_problemE(ptr noundef %i.ad, ptr noundef %i.ae)
  tail call void @_ZN2kc8v_reportEPNS_10impl_errorE(ptr noundef %i.af)
  br label %_ZN2kcL17occurlanguagenameEPNS_7impl_IDE.exit

bb.e:                                             ; preds = %bb.b
  tail call void @_ZN2kc21kc_no_default_in_withEPKciS1_(ptr noundef nonnull @.str.52, i32 noundef 694, ptr noundef nonnull @.str.1)
  br label %_ZN2kcL17occurlanguagenameEPNS_7impl_IDE.exit

_ZN2kcL17occurlanguagenameEPNS_7impl_IDE.exit:    ; preds = %.lr.ph.i, %._crit_edge.i, %bb.a, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.a ], [ false, %._crit_edge.i ], [ %i.m, %.lr.ph.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN2kc25f_useoccurpatternvariableEPNS_7impl_IDE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i32 %i.b(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.d = icmp eq i32 %i.c, 7
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.l = icmp eq i32 %i.k, 185
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZN2kc13Problem1S1tIDEPKcPNS_7impl_IDE(ptr noundef nonnull @.str.53, ptr noundef nonnull %0)
  %i.n = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.n, align 8, !tbaa !22
  %i.o = getelementptr i8, ptr %0, i64 32
  %.val8 = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.p = tail call noundef ptr @_ZN2kc8FileLineEPNS_20impl_casestring__StrEi(ptr noundef %.val8, i32 noundef %.val)
  %i.q = tail call noundef ptr @_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE(ptr noundef %i.p, ptr noundef %i.m)
  tail call void @_ZN2kc8v_reportEPNS_10impl_errorE(ptr noundef %i.q)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN2kc21kc_no_default_in_withEPKciS1_(ptr noundef nonnull @.str.54, i32 noundef 716, ptr noundef nonnull @.str.1)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.1 = phi i1 [ false, %bb.d ], [ true, %bb.b ], [ false, %bb.c ]
  ret i1 %.1
}

declare void @_ZN2kc8v_reportEPNS_10impl_errorE(ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN2kc8FileLineEPNS_20impl_casestring__StrEi(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN2kc22Problem1S1ID1S1ID1S1IDEPKcPNS_7impl_IDES1_S3_S1_S3_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN2kc26ConsscopetypefilelinestackEPNS_22impl_scopetypefilelineEPNS_27impl_scopetypefilelinestackE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN2kc17ScopeTypeFileLineEPNS_17impl_integer__IntEPNS_11impl_IDtypeEPNS_20impl_casestring__StrES1_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN2kc9mkintegerEi(i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN2kc5FatalEPNS_13impl_filelineEPNS_12impl_problemE(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !17, i64 40}
!11 = !{!"_ZTSN2kc10impl_ID_IdE", !12, i64 0, !17, i64 40}
!12 = !{!"_ZTSN2kc7impl_IDE", !13, i64 0, !14, i64 8, !16, i64 16, !5, i64 24, !16, i64 32}
!13 = !{!"_ZTSN2kc20impl_abstract_phylumE"}
!14 = !{!"p1 _ZTSN2kc11impl_IDtypeE", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"p1 _ZTSN2kc20impl_casestring__StrE", !15, i64 0}
!17 = !{!"p1 _ZTSN2kc11impl_uniqIDE", !15, i64 0}
!18 = !{!12, !14, i64 8}
!19 = !{!20, !14, i64 8}
!20 = !{!"_ZTSN2kc11impl_uniqIDE", !13, i64 0, !14, i64 8, !5, i64 16, !16, i64 24, !21, i64 32}
!21 = !{!"p1 _ZTSN2kc27impl_scopetypefilelinestackE", !15, i64 0}
!22 = !{!12, !5, i64 24}
!23 = !{!20, !5, i64 16}
!24 = !{!12, !16, i64 32}
!25 = !{!20, !16, i64 24}
!26 = !{!27, !29, i64 8}
!27 = !{!"_ZTSN2kc26impl_IDtype_ITUserFunctionE", !28, i64 0, !29, i64 8}
!28 = !{!"_ZTSN2kc11impl_IDtypeE", !13, i64 0}
!29 = !{!"p1 _ZTSN2kc12impl_fnclassE", !15, i64 0}
!30 = !{!31, !33, i64 16}
!31 = !{!"_ZTSN2kc29impl_IDtype_ITPatternVariableE", !28, i64 0, !32, i64 8, !33, i64 16}
!32 = !{!"p1 _ZTSN2kc7impl_IDE", !15, i64 0}
!33 = !{!"p1 _ZTSN2kc17impl_integer__IntE", !15, i64 0}
!34 = !{!31, !32, i64 8}
!35 = !{!20, !21, i64 32}
!36 = !{!37, !38, i64 8}
!37 = !{!"_ZTSN2kc24impl_IDtype_ITUserPhylumE", !28, i64 0, !38, i64 8}
!38 = !{!"p1 _ZTSN2kc22impl_phylumdeclarationE", !15, i64 0}
!39 = !{!40, !45, i64 48}
!40 = !{!"_ZTSN2kc40impl_phylumdeclaration_PhylumDeclarationE", !41, i64 0, !32, i64 32, !44, i64 40, !45, i64 48, !46, i64 56}
!41 = !{!"_ZTSN2kc22impl_phylumdeclarationE", !13, i64 0, !5, i64 8, !42, i64 16, !43, i64 24}
!42 = !{!"p1 _ZTSN2kc19impl_fndeclarationsE", !15, i64 0}
!43 = !{!"p1 _ZTSN2kc19impl_baseclass_listE", !15, i64 0}
!44 = !{!"p1 _ZTSN2kc18impl_storageoptionE", !15, i64 0}
!45 = !{!"p1 _ZTSN2kc20impl_productionblockE", !15, i64 0}
!46 = !{!"p1 _ZTSN2kc17impl_Ccode_optionE", !15, i64 0}
!47 = !{!48, !32, i64 8}
!48 = !{!"_ZTSN2kc18impl_languagenamesE", !49, i64 0, !32, i64 8, !50, i64 16}
!49 = !{!"_ZTSN2kc18impl_abstract_listE", !13, i64 0}
!50 = !{!"p1 _ZTSN2kc18impl_languagenamesE", !15, i64 0}
!51 = !{!48, !50, i64 16}
!52 = !{!50, !50, i64 0}
!53 = distinct !{null}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
end_hunk_0
