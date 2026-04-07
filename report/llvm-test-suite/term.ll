begin_hunk_0_@term_PrintPrefix:bb.a
  %.0.i11 = phi ptr [ %.0.i.pre, %bb.c ], [ %.0.i9, %bb.b ] ; 3 uses
  %i.d = getelementptr i8, ptr %.0.i11, i64 8
  %.0.val.i = load ptr, ptr %i.d, align 8
  tail call void @term_PrintPrefix(ptr noundef %.0.val.i), !inline_history !56
  %.0.val6.i = load ptr, ptr %.0.i11, align 8
  %.not8 = icmp eq ptr %.0.val6.i, null
  br i1 %.not8, label %term_TermListPrintPrefix.exit, label %bb.c
end_hunk_0
begin_hunk_1_@term_PrintPrefix:bb.a
  %i.f = tail call i32 @putc(i32 noundef 44, ptr noundef %i.e) ; 0 uses
  %.0.i.pre = load ptr, ptr %.0.i11, align 8      ; 2 uses
  %.not = icmp eq ptr %.0.i.pre, null
  br i1 %.not, label %term_TermListPrintPrefix.exit, label %.lr.ph, !llvm.loop !57

term_TermListPrintPrefix.exit:                    ; preds = %.lr.ph, %bb.c, %bb.b
  %i.g = load ptr, ptr @stdout, align 8
end_hunk_1
begin_hunk_2_@term_TermListPrintPrefix:bb.a
  %i.c = tail call i32 @putc(i32 noundef 44, ptr noundef %i.b) ; 0 uses
  %.0.val5.pre = load ptr, ptr %.09, align 8      ; 2 uses
  %.not = icmp eq ptr %.0.val5.pre, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !57

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
end_hunk_2
begin_hunk_3_@term_TermListFPrintPrefix:bb.a
  br i1 %.not9, label %term_FPrintPrefix.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = tail call i32 @putc(i32 noundef 40, ptr noundef %0), !inline_history !58 ; 0 uses
  %.val.i = load ptr, ptr %i.b, align 8
  tail call void @term_TermListFPrintPrefix(ptr noundef %0, ptr noundef %.val.i), !inline_history !58
  %i.d = tail call i32 @putc(i32 noundef 41, ptr noundef %0), !inline_history !58 ; 0 uses
  br label %term_FPrintPrefix.exit

term_FPrintPrefix.exit:                           ; preds = %.lr.ph, %bb.b
end_hunk_3
begin_hunk_4_@term_TermListFPrintPrefix:bb.a
  %i.e = tail call i32 @putc(i32 noundef 44, ptr noundef %0) ; 0 uses
  %.0.val7.pre = load ptr, ptr %.012, align 8     ; 2 uses
  %.not = icmp eq ptr %.0.val7.pre, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !59

._crit_edge:                                      ; preds = %term_FPrintPrefix.exit, %bb.c, %bb.a
  ret void
end_hunk_4
begin_hunk_5_@term_TermListFPrintOtterPrefix:bb.a
  br i1 %.not9, label %term_FPrintOtterPrefix.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = tail call i32 @putc(i32 noundef 40, ptr noundef %0), !inline_history !60 ; 0 uses
  %.val.i = load ptr, ptr %i.b, align 8
  tail call void @term_TermListFPrintOtterPrefix(ptr noundef %0, ptr noundef %.val.i), !inline_history !60
  %i.d = tail call i32 @putc(i32 noundef 41, ptr noundef %0), !inline_history !60 ; 0 uses
  br label %term_FPrintOtterPrefix.exit

term_FPrintOtterPrefix.exit:                      ; preds = %.lr.ph, %bb.b
end_hunk_5
begin_hunk_6_@term_TermListFPrintOtterPrefix:bb.a
  %i.e = tail call i32 @putc(i32 noundef 44, ptr noundef %0) ; 0 uses
  %.0.val7.pre = load ptr, ptr %.012, align 8     ; 2 uses
  %.not = icmp eq ptr %.0.val7.pre, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !61

._crit_edge:                                      ; preds = %term_FPrintOtterPrefix.exit, %bb.c, %bb.a
  ret void
end_hunk_6
begin_hunk_7_@term_FPrintPosition:bb.a
  %i.i = add i32 %.01528, 1
  %.0 = load ptr, ptr %.029, align 8              ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph33, %bb.c
  %i.j = load ptr, ptr @stdout, align 8
end_hunk_7
begin_hunk_8_@term_Bytes:bb.a
  %i.f = add i32 %i.e, %.0611                     ; 2 uses
  %.0 = load ptr, ptr %.012, align 8              ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.06.lcssa = phi i32 [ %i.c, %bb.a ], [ %i.f, %.lr.ph ]
end_hunk_8
begin_hunk_9_@term_MarkVariables:bb.a
bb.g:                                             ; preds = %.lr.ph
  store i32 %i.k, ptr @stack_POINTER, align 4
  %.not = icmp eq i32 %i.k, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !64

.critedge:                                        ; preds = %.lr.ph
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val = load ptr, ptr %i.o, align 8
  %.val12 = load ptr, ptr %i.n, align 8
  store ptr %.val12, ptr %i.m, align 8
  br label %bb.b, !llvm.loop !65

._crit_edge:                                      ; preds = %bb.f, %bb.g
  ret void
end_hunk_9
begin_hunk_10_@term_VariableSymbols:bb.a
bb.h:                                             ; preds = %.lr.ph
  store i32 %i.ab, ptr @stack_POINTER, align 4
  %.not27 = icmp eq i32 %i.ab, %i.a
  br i1 %.not27, label %._crit_edge, label %.lr.ph, !llvm.loop !66

.critedge:                                        ; preds = %.lr.ph
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val = load ptr, ptr %i.af, align 8
  %.val21 = load ptr, ptr %i.ae, align 8
  store ptr %.val21, ptr %i.ad, align 8
  br label %bb.b, !llvm.loop !67

._crit_edge:                                      ; preds = %bb.g, %bb.h
  ret ptr %.114
end_hunk_10
begin_hunk_11_@term_NumberOfVarOccs:bb.a
bb.f:                                             ; preds = %.lr.ph
  store i32 %i.h, ptr @stack_POINTER, align 4
  %.not = icmp eq i32 %i.h, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !68

.critedge:                                        ; preds = %.lr.ph
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val = load ptr, ptr %i.l, align 8
  %.val14 = load ptr, ptr %i.k, align 8
  store ptr %.val14, ptr %i.j, align 8
  br label %bb.b, !llvm.loop !69

._crit_edge:                                      ; preds = %bb.e, %bb.f
  ret i32 %.18
end_hunk_11
begin_hunk_12_@term_NumberOfSymbolOccurrences:bb.a
  %i.d = add i32 %i.c, %.116                      ; 2 uses
  %.0 = load ptr, ptr %.017, align 8              ; 2 uses
  %.not13 = icmp eq ptr %.0, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph, !llvm.loop !70

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.1.lcssa = phi i32 [ %spec.select, %bb.a ], [ %i.d, %.lr.ph ]
end_hunk_12
begin_hunk_13_@term_ContainsFunctions:bb.a
bb.g:                                             ; preds = %.lr.ph
  store i32 %i.i, ptr @stack_POINTER, align 4
  %.not27 = icmp eq i32 %i.i, %i.a
  br i1 %.not27, label %.critedge.thread23, label %.lr.ph, !llvm.loop !71

.critedge:                                        ; preds = %.lr.ph
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val = load ptr, ptr %i.m, align 8
  %.val15 = load ptr, ptr %i.l, align 8
  store ptr %.val15, ptr %i.k, align 8
  br label %bb.b, !llvm.loop !72

.critedge.thread23:                               ; preds = %bb.f, %bb.g, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.g ], [ 0, %bb.f ]
end_hunk_13
begin_hunk_14_@term_ContainsVariable:bb.a
bb.g:                                             ; preds = %.lr.ph
  store i32 %i.f, ptr @stack_POINTER, align 4
  %.not20 = icmp eq i32 %i.f, %i.a
  br i1 %.not20, label %.critedge.thread17, label %.lr.ph, !llvm.loop !73

.critedge:                                        ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val = load ptr, ptr %i.j, align 8
  %.val14 = load ptr, ptr %i.i, align 8
  store ptr %.val14, ptr %i.h, align 8
  br label %bb.b, !llvm.loop !74

.critedge.thread17:                               ; preds = %bb.f, %bb.g, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.g ], [ 0, %bb.f ]
end_hunk_14
begin_hunk_15_@term_MaxVar:bb.a
bb.h:                                             ; preds = %.lr.ph
  store i32 %i.s, ptr @stack_POINTER, align 4
  %.not36 = icmp eq i32 %i.s, %i.a
  br i1 %.not36, label %._crit_edge, label %.lr.ph, !llvm.loop !75

.critedge:                                        ; preds = %.lr.ph
  %.not34 = icmp eq i32 %stack_POINTER.promoted41, %i.a
  br i1 %.not34, label %._crit_edge, label %.lr.ph50, !llvm.loop !76

._crit_edge:                                      ; preds = %bb.g, %.critedge, %bb.h, %bb.a, %bb.b
  %.1.lcssa = phi i32 [ %.val32, %bb.a ], [ %.2, %bb.h ], [ 0, %bb.b ], [ %.2, %.critedge ], [ %.2, %bb.g ]
end_hunk_15
begin_hunk_16_@term_Rename:bb.a
bb.i:                                             ; preds = %.lr.ph
  store i32 %i.x, ptr @stack_POINTER, align 4
  %.not26 = icmp eq i32 %i.x, %i.a
  br i1 %.not26, label %._crit_edge, label %.lr.ph, !llvm.loop !77

.critedge:                                        ; preds = %.lr.ph
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val = load ptr, ptr %i.ab, align 8
  %.val20 = load ptr, ptr %i.aa, align 8
  store ptr %.val20, ptr %i.z, align 8
  br label %bb.b, !llvm.loop !78

._crit_edge:                                      ; preds = %bb.h, %bb.i
  ret ptr %0
end_hunk_16
begin_hunk_17_@term_MakePseudoLinear:bb.a
  %.0.i = phi ptr [ %i.d, %bb.d ], [ %.033, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %.021.val26 = load ptr, ptr %.02132, align 8    ; 2 uses
  %.not = icmp eq ptr %.021.val26, null
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !79

bb.e:                                             ; preds = %bb.a
  %.val29 = load i32, ptr %0, align 8             ; 3 uses
end_hunk_17
begin_hunk_18_@term_ListOfAtoms:bb.a
  %.0.i = phi ptr [ %.01018, %bb.e ], [ %i.e, %.lr.ph ], [ %.01018, %bb.d ] ; 2 uses
  %.0 = load ptr, ptr %.019, align 8              ; 2 uses
  %.not15 = icmp eq ptr %.0, null
  br i1 %.not15, label %.loopexit, label %.lr.ph, !llvm.loop !80

.loopexit:                                        ; preds = %list_Nconc.exit, %bb.c, %bb.b
  %.011 = phi ptr [ %i.a, %bb.b ], [ null, %bb.c ], [ %.0.i, %list_Nconc.exit ]
end_hunk_18
begin_hunk_19_@term_FindAllAtoms:bb.a
bb.g:                                             ; preds = %.lr.ph
  store i32 %i.i, ptr @stack_POINTER, align 4
  %.not = icmp eq i32 %i.i, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !81

.critedge:                                        ; preds = %.lr.ph
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val = load ptr, ptr %i.m, align 8
  %.val15 = load ptr, ptr %i.l, align 8
  store ptr %.val15, ptr %i.k, align 8
  br label %bb.b, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.f, %bb.g
  ret ptr %.1
end_hunk_19
begin_hunk_20_@term_CheckTermIntern:bb.a
bb.h:                                             ; preds = %bb.g
  %i.r = tail call i32 @term_CheckTermIntern(ptr noundef nonnull %.022.val41, i32 noundef %1)
  %.not36 = icmp eq i32 %i.r, 0
  br i1 %.not36, label %term_IsTerm.exit.thread, label %.preheader60, !llvm.loop !83

.preheader:                                       ; preds = %.thread, %bb.j
  %.1.in = phi ptr [ %.1, %bb.j ], [ %i.o, %.thread ]
end_hunk_20
begin_hunk_21_@term_CheckTermIntern:bb.a
bb.j:                                             ; preds = %bb.i
  %i.u = tail call i32 @term_CheckTermIntern(ptr noundef nonnull %.1.val40, i32 noundef 0)
  %.not33 = icmp eq i32 %i.u, 0
  br i1 %.not33, label %term_IsTerm.exit.thread, label %.preheader, !llvm.loop !84

term_IsTerm.exit.thread:                          ; preds = %.preheader60, %bb.g, %bb.h, %.preheader, %bb.i, %bb.j, %bb.a, %bb.f, %bb.d, %term_IsTerm.exit
  %.0 = phi i32 [ 0, %term_IsTerm.exit ], [ 0, %bb.f ], [ 0, %bb.a ], [ 0, %bb.i ], [ 0, %bb.d ], [ 1, %.preheader ], [ 0, %bb.j ], [ 1, %.preheader60 ], [ 0, %bb.h ], [ 0, %bb.g ]
end_hunk_21
begin_hunk_22_@llvm.smax.i32
!53 = distinct !{!53, !5}
!54 = distinct !{!54, !5}
!55 = distinct !{!55, !5}
!56 = !{ptr @term_TermListPrintPrefix}
!57 = distinct !{!57, !5}
!58 = !{ptr @term_FPrintPrefix}
!59 = distinct !{!59, !5}
!60 = !{ptr @term_FPrintOtterPrefix}
!61 = distinct !{!61, !5}
!62 = distinct !{!62, !5}
!63 = distinct !{!63, !5}
end_hunk_22
begin_hunk_23_@llvm.smax.i32
!79 = distinct !{!79, !5}
!80 = distinct !{!80, !5}
!81 = distinct !{!81, !5}
!82 = distinct !{!82, !5}
!83 = distinct !{!83, !5}
!84 = distinct !{!84, !5}
end_hunk_23
