Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64InstrInfo?download=true
inline.NumInlined: 8369
inline.NumDeleted: 2912
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4llvm16AArch64InstrInfo11isZeroIdiomERKNS_12MachineInstrE:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm16AArch64InstrInfo20isNeoversePdSameAsPgERKNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !233
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !237  ; 2 uses
  switch i32 %i.b, label %bb.b [
    i32 2152, label %bb.c
    i32 2155, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.b
  %.sink = phi i64 [ 4, %bb.b ], [ 36, %bb.a ], [ 36, %bb.a ]
  %.sink11 = phi i64 [ 36, %bb.b ], [ 68, %bb.a ], [ 68, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink
  %i.f = load i32, ptr %i.e, align 4, !tbaa !238
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink11
  %i.h = load i32, ptr %i.g, align 4, !tbaa !238
  %i.i = icmp eq i32 %i.f, %i.h
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm16AArch64InstrInfo14hasExtendedRegERKNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !233
  switch i32 %i.b, label %bb.c [
    i32 1794, label %bb.b
    i32 1797, label %bb.b
    i32 1779, label %bb.b
    i32 1782, label %bb.b
    i32 7772, label %bb.b
    i32 7775, label %bb.b
    i32 7765, label %bb.b
    i32 7768, label %bb.b
    i32 1798, label %bb.b
    i32 1783, label %bb.b
    i32 7776, label %bb.b
    i32 7769, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !237
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !238
  %i.g = icmp ne i64 %i.f, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm16AArch64InstrInfo13hasShiftedRegERKNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !233
  switch i32 %i.b, label %bb.c [
    i32 1793, label %bb.b
    i32 1796, label %bb.b
    i32 1778, label %bb.b
    i32 1781, label %bb.b
    i32 7771, label %bb.b
    i32 7774, label %bb.b
    i32 7764, label %bb.b
    i32 7767, label %bb.b
    i32 1889, label %bb.b
    i32 1891, label %bb.b
    i32 1880, label %bb.b
    i32 1882, label %bb.b
    i32 2119, label %bb.b
    i32 2120, label %bb.b
    i32 2116, label %bb.b
    i32 2117, label %bb.b
    i32 2731, label %bb.b
    i32 2732, label %bb.b
    i32 2753, label %bb.b
    i32 2755, label %bb.b
    i32 5632, label %bb.b
    i32 5633, label %bb.b
    i32 5643, label %bb.b
    i32 5645, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !237
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !238
  %i.g = icmp ne i64 %i.f, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm16AArch64InstrInfo12isScaledAddrERKNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !233
  switch i32 %i.b, label %bb.d [
    i32 5750, label %bb.b
    i32 5751, label %bb.b
    i32 5096, label %bb.b
    i32 5097, label %bb.b
    i32 5128, label %bb.b
    i32 5129, label %bb.b
    i32 5133, label %bb.b
    i32 5134, label %bb.b
    i32 5112, label %bb.b
    i32 5113, label %bb.b
    i32 5138, label %bb.b
    i32 5139, label %bb.b
    i32 5143, label %bb.b
    i32 5144, label %bb.b
    i32 5161, label %bb.b
    i32 5162, label %bb.b
    i32 5149, label %bb.b
    i32 5150, label %bb.b
    i32 5167, label %bb.b
    i32 5168, label %bb.b
    i32 5101, label %bb.b
    i32 5102, label %bb.b
    i32 5117, label %bb.b
    i32 5118, label %bb.b
    i32 5155, label %bb.b
    i32 5156, label %bb.b
    i32 5107, label %bb.b
    i32 5108, label %bb.b
    i32 5123, label %bb.b
    i32 5124, label %bb.b
    i32 7652, label %bb.b
    i32 7653, label %bb.b
    i32 7667, label %bb.b
    i32 7668, label %bb.b
    i32 7687, label %bb.b
    i32 7688, label %bb.b
    i32 7692, label %bb.b
    i32 7693, label %bb.b
    i32 7657, label %bb.b
    i32 7658, label %bb.b
    i32 7672, label %bb.b
    i32 7673, label %bb.b
    i32 7682, label %bb.b
    i32 7683, label %bb.b
    i32 7662, label %bb.b
    i32 7663, label %bb.b
    i32 7677, label %bb.b
    i32 7678, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !237  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !238
  %i.g = and i64 %i.f, 14
  %.not = icmp eq i64 %i.g, 6
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.i = load i64, ptr %i.h, align 8, !tbaa !238
  %i.j = trunc i64 %i.i to i1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ %i.j, %bb.c ], [ true, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7AArch6415getSMEPseudoMapEj(i32 noundef %0) local_unnamed_addr #12 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 581, %bb.a ], [ %.1, %bb.c ]  ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7AArch6415getSMEPseudoMapEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !2227

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7AArch6415getSMEPseudoMapEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7AArch6417getSVENonRevInstrEj(i32 noundef %0) local_unnamed_addr #12 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 78, %bb.a ], [ %.1, %bb.c ]   ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7AArch6417getSVENonRevInstrEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !2228

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7AArch6417getSVENonRevInstrEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7AArch6415getSVEPseudoMapEj(i32 noundef %0) local_unnamed_addr #12 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 508, %bb.a ], [ %.1, %bb.c ]  ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7AArch6415getSVEPseudoMapEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !2229

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7AArch6415getSVEPseudoMapEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7AArch6414getSVERevInstrEj(i32 noundef %0) local_unnamed_addr #12 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 78, %bb.a ], [ %.1, %bb.c ]   ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7AArch6414getSVERevInstrEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !2230

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7AArch6414getSVERevInstrEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16AArch64InstrInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(448) dereferenceable(448) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvm18TargetRegisterInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %i.a) #32
  tail call void @_ZN4llvm15TargetInstrInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) #32
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16AArch64InstrInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvm18TargetRegisterInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %i.a) #32
  tail call void @_ZN4llvm15TargetInstrInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(448) %0) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 448) #34
  ret void
}

declare noundef ptr @_ZNK4llvm15TargetInstrInfo11getRegClassERKNS_11MCInstrDescEj(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo20isGlobalMemoryObjectEPKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo14isIgnorableUseERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo12isSafeToSinkERNS_12MachineInstrEPNS_17MachineBasicBlockEPNS_16MachineCycleInfoE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo29shouldBreakCriticalEdgeToSinkERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo22isReMaterializableImplERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #5

declare noundef ptr @_ZNK4llvm15TargetInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext, i32 noundef, i32 noundef) unnamed_addr #5

declare noundef i32 @_ZNK4llvm15TargetInstrInfo11getSPAdjustERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK4llvm15TargetInstrInfo19isLoadFromStackSlotERKNS_12MachineInstrERiRNS_8TypeSizeE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(9) %3) unnamed_addr #4 comdat align 2 {
bb.a:
  store i64 0, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.a = load ptr, ptr %0, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 %i.c(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #32
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK4llvm15TargetInstrInfo18isStoreToStackSlotERKNS_12MachineInstrERiRNS_8TypeSizeE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(9) %3) unnamed_addr #4 comdat align 2 {
bb.a:
  store i64 0, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.a = load ptr, ptr %0, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 %i.c(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #32
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo15isStackSlotCopyERKNS_12MachineInstrERiS4_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo17getStackSlotRangeEPKNS_15MCRegisterClassEjRjS4_RKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm15TargetInstrInfo21getInstSizeVerifyModeERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo10shouldSinkERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo16shouldPostRASinkERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo11shouldHoistERKNS_12MachineInstrEPKNS_11MachineLoopE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 true
}

declare void @_ZNK4llvm15TargetInstrInfo13reMaterializeERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterEjRKS4_NS_11LaneBitmaskE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(360), ptr, i32, i32 noundef, ptr noundef nonnull align 8 dereferenceable(80), i64) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZNK4llvm15TargetInstrInfo9duplicateERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKS4_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(360), ptr, ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm15TargetInstrInfo21convertToThreeAddressERNS_12MachineInstrEPNS_13LiveVariablesEPNS_13LiveIntervalsE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr null
}

declare noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo21findCommutedOpIndicesERKNS_12MachineInstrERjS4_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo20hasCommutePreferenceERNS_12MachineInstrERb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo19simplifyInstructionERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo16produceSameValueERKNS_12MachineInstrES3_PKNS_19MachineRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo11analyzeLoopERNS_11MachineLoopERPNS_12MachineInstrES5_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm15TargetInstrInfo15reduceLoopCountERNS_17MachineBasicBlockES2_PNS_12MachineInstrERS3_RNS_15SmallVectorImplINS_14MachineOperandEEERNS6_IS4_EEjj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %7, i32 noundef %8) unnamed_addr #4 comdat align 2 {
bb.a:
  unreachable
}

declare void @_ZNK4llvm15TargetInstrInfo23ReplaceTailWithBranchToENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(112), ptr, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo19isLegalToSplitMBBAtERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo19isProfitableToIfCvtERNS_17MachineBasicBlockEjjNS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, i32 noundef %2, i32 noundef %3, i32 %4) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo19isProfitableToIfCvtERNS_17MachineBasicBlockEjjS2_jjNS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(360) %4, i32 noundef %5, i32 noundef %6, i32 %7) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo25isProfitableToDupForIfCvtERNS_17MachineBasicBlockEjNS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, i32 noundef %2, i32 %3) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm15TargetInstrInfo32extraSizeToPredicateInstructionsERKNS_15MachineFunctionEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, i32 noundef %2) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm15TargetInstrInfo25predictBranchSizeForIfCvtERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #4 comdat align 2 {
bb.a:
end_hunk_0
