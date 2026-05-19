inline.NumInlined: 2352
inline.NumDeleted: 743
begin_hunk_0_@_ZN10ClipperLib8PolyNode8AddChildERS0_:bb.a
bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.h ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.h
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #32 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.g ; 2 uses
  store ptr %1, ptr %i.t, align 8
  %i.u = icmp sgt i64 %i.g, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.d, i64 %i.g, i1 false)
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #33
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.s, ptr %i.a, align 8
  store ptr %i.v, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.w, ptr %i.i, align 8
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.x = trunc i64 %i.h to i32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %i.x, ptr %i.z, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK10ClipperLib8PolyNode7GetNextEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %tailrecurse.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8
  br label %_ZNK10ClipperLib8PolyNode16GetNextSiblingUpEv.exit

tailrecurse.i:                                    ; preds = %bb.a, %bb.c
  %.tr.i = phi ptr [ %i.h, %bb.c ], [ %0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.tr.i, i64 56
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK10ClipperLib8PolyNode16GetNextSiblingUpEv.exit, label %bb.c

bb.c:                                             ; preds = %tailrecurse.i
  %i.i = getelementptr inbounds nuw i8, ptr %.tr.i, i64 64
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3
  %i.t = add nsw i64 %i.s, -1
  %i.u = icmp eq i64 %i.t, %i.k
  br i1 %i.u, label %tailrecurse.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = add i32 %i.j, 1
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8
  br label %_ZNK10ClipperLib8PolyNode16GetNextSiblingUpEv.exit

_ZNK10ClipperLib8PolyNode16GetNextSiblingUpEv.exit: ; preds = %tailrecurse.i, %bb.d, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.y, %bb.d ], [ null, %tailrecurse.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK10ClipperLib8PolyNode16GetNextSiblingUpEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #2 align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.b, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ]   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.c = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3
  %i.n = add nsw i64 %i.m, -1
  %i.o = icmp eq i64 %i.n, %i.e
  br i1 %i.o, label %tailrecurse, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = add i32 %i.d, 1
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %bb.c
  %.0 = phi ptr [ %i.s, %bb.c ], [ null, %tailrecurse ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK10ClipperLib8PolyNode6IsHoleEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #2 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.04 = phi i1 [ true, %bb.a ], [ %i.a, %bb.b ]  ; 2 uses
  %.pn = phi ptr [ %0, %bb.a ], [ %.0, %bb.b ]
  %.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 56
  %.0 = load ptr, ptr %.0.in, align 8             ; 2 uses
  %.not = icmp eq ptr %.0, null
  %i.a = xor i1 %.04, true
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !5

bb.c:                                             ; preds = %bb.b
  ret i1 %.04
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK10ClipperLib8PolyNode6IsOpenEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i8, ptr %i.a, align 4, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN10ClipperLib9Int128MulExx(ptr dead_on_unwind noalias writable writeonly sret(%"class.ClipperLib::Int128") align 8 captures(none) initializes((0, 16)) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %.not.unshifted = xor i64 %2, %1
  %.not = icmp sgt i64 %.not.unshifted, -1
  %spec.select = tail call i64 @llvm.abs.i64(i64 %1, i1 true) ; 2 uses
  %i.a = lshr i64 %spec.select, 32                ; 2 uses
  %i.b = and i64 %spec.select, 4294967295         ; 2 uses
  %.024 = tail call i64 @llvm.abs.i64(i64 %2, i1 true) ; 2 uses
  %i.c = lshr i64 %.024, 32                       ; 2 uses
  %i.d = and i64 %.024, 4294967295                ; 2 uses
  %i.e = mul nuw nsw i64 %i.c, %i.a
  %i.f = mul nuw i64 %i.d, %i.b                   ; 2 uses
  %i.g = mul nuw nsw i64 %i.d, %i.a
  %i.h = mul nuw nsw i64 %i.c, %i.b
  %i.i = add nuw i64 %i.g, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = lshr i64 %i.i, 32
  %i.l = add nuw nsw i64 %i.k, %i.e               ; 3 uses
  store i64 %i.l, ptr %i.j, align 8
  %i.m = shl i64 %i.i, 32
  %i.n = add i64 %i.m, %i.f                       ; 4 uses
  store i64 %i.n, ptr %0, align 8
  %i.o = icmp ult i64 %i.n, %i.f
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = add nuw nsw i64 %i.l, 1                  ; 2 uses
  store i64 %i.p, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = phi i64 [ %i.p, %bb.b ], [ %i.l, %bb.a ]
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %3 = icmp ne i64 %i.n, 0
  %i.r = sub i64 0, %i.n
  %4 = sext i1 %3 to i64
  %i.s = sub nsw i64 %4, %i.q
  store i64 %i.r, ptr %0, align 8
  store i64 %i.s, ptr %i.j, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 4                   ; 3 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 3
  br i1 %i.i, label %_ZN10ClipperLib4AreaERKSt6vectorINS_8IntPointESaIS1_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i64 %i.g, -1
  %wide.trip.count.i = and i64 %i.g, 2147483647
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.k = fmul double %i.ab, -5.000000e-01
  %i.l = fcmp oge double %i.k, 0.000000e+00
  br label %_ZN10ClipperLib4AreaERKSt6vectorINS_8IntPointESaIS1_EE.exit

bb.d:                                             ; preds = %bb.d, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.023.i = phi i64 [ %i.j, %bb.b ], [ %indvars.iv.i, %bb.d ]
  %.01821.i = phi double [ 0.000000e+00, %bb.b ], [ %i.ab, %bb.d ]
  %sext.i = shl i64 %.023.i, 32
  %i.m = ashr exact i64 %sext.i, 28
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.m ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = sitofp i64 %i.o to double
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv.i ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = sitofp i64 %i.r to double
  %i.t = fadd double %i.p, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = sitofp i64 %i.v to double
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = sitofp i64 %i.y to double
  %i.aa = fsub double %i.w, %i.z
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.t, double %i.aa, double %.01821.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.c, label %bb.d, !llvm.loop !8

_ZN10ClipperLib4AreaERKSt6vectorINS_8IntPointESaIS1_EE.exit: ; preds = %bb.a, %bb.c
  %.019.i = phi i1 [ %i.l, %bb.c ], [ true, %bb.a ]
  ret i1 %.019.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef double @_ZN10ClipperLib4AreaERKSt6vectorINS_8IntPointESaIS1_EE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 4                   ; 3 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 3
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i64 %i.g, -1
  %wide.trip.count = and i64 %i.g, 2147483647
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.k = fmul double %i.aa, -5.000000e-01
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.023 = phi i64 [ %i.j, %bb.b ], [ %indvars.iv, %bb.d ]
  %.01821 = phi double [ 0.000000e+00, %bb.b ], [ %i.aa, %bb.d ]
  %sext = shl i64 %.023, 32
  %i.l = ashr exact i64 %sext, 28
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = sitofp i64 %i.n to double
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = sitofp i64 %i.q to double
  %i.s = fadd double %i.o, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load i64, ptr %i.t, align 8
  %i.v = sitofp i64 %i.u to double
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = sitofp i64 %i.x to double
  %i.z = fsub double %i.v, %i.y
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.s, double %i.z, double %.01821) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !8

bb.e:                                             ; preds = %bb.a, %bb.c
  %.019 = phi double [ %i.k, %bb.c ], [ 0.000000e+00, %bb.a ]
  ret double %.019
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef double @_ZN10ClipperLib4AreaEPKNS_5OutPtE(ptr noundef readonly captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.013 = phi ptr [ %i.q, %.preheader ], [ %0, %bb.a ] ; 4 uses
  %.0 = phi double [ %i.o, %.preheader ], [ 0.000000e+00, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %.013, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.013, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add nsw i64 %i.f, %i.d
  %i.h = sitofp i64 %i.g to double
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.013, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %i.m = sub nsw i64 %i.j, %i.l
  %i.n = sitofp i64 %i.m to double
  %i.o = tail call double @llvm.fmuladd.f64(double %i.h, double %i.n, double %.0) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.013, i64 24
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not15 = icmp eq ptr %i.q, %0
  br i1 %.not15, label %bb.b, label %.preheader, !llvm.loop !9

bb.b:                                             ; preds = %.preheader
  %i.r = fmul double %i.o, 5.000000e-01
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.012 = phi double [ %i.r, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %.012
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef double @_ZN10ClipperLib4AreaERKNS_6OutRecE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN10ClipperLib4AreaEPKNS_5OutPtE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.013.i = phi ptr [ %i.s, %.preheader.i ], [ %i.b, %bb.a ] ; 4 uses
  %.0.i = phi double [ %i.q, %.preheader.i ], [ 0.000000e+00, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %.013.i, i64 32
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.013.i, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = add nsw i64 %i.h, %i.f
  %i.j = sitofp i64 %i.i to double
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.013.i, i64 16
  %i.n = load i64, ptr %i.m, align 8
  %i.o = sub nsw i64 %i.l, %i.n
  %i.p = sitofp i64 %i.o to double
  %i.q = tail call double @llvm.fmuladd.f64(double %i.j, double %i.p, double %.0.i) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not15.i = icmp eq ptr %i.s, %i.b
  br i1 %.not15.i, label %bb.b, label %.preheader.i, !llvm.loop !9

bb.b:                                             ; preds = %.preheader.i
  %i.t = fmul double %i.q, 5.000000e-01
  br label %_ZN10ClipperLib4AreaEPKNS_5OutPtE.exit

_ZN10ClipperLib4AreaEPKNS_5OutPtE.exit:           ; preds = %bb.a, %bb.b
  %.012.i = phi double [ %i.t, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %.012.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN10ClipperLib13PointIsVertexERKNS_8IntPointEPNS_5OutPtE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
end_hunk_0
begin_hunk_1_@_ZN10ClipperLib14PointInPolygonERKNS_8IntPointERKSt6vectorIS0_SaIS0_EE:bb.a
  %i.as = sub nsw i64 %.sroa.8.0104, %i.j
  %i.at = sitofp i64 %i.as to double
  %i.au = fneg double %i.at
  %i.av = fmul nnan double %i.au, %i.ar
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.an, double %i.ap, double %i.av) ; 2 uses
  %i.ax = fcmp une double %i.aw, 0.000000e+00
  br i1 %i.ax, label %.thread91, label %.loopexit

.thread91:                                        ; preds = %bb.m
  %i.ay = fcmp ogt double %i.aw, 0.000000e+00
  %i.az = icmp sle i64 %.sroa.10.0.copyload, %.sroa.8.0104
  %i.ba = xor i1 %i.az, %i.ay
  %i.bb = sub nuw nsw i32 1, %.066105
  %spec.select88 = select i1 %i.ba, i32 %i.bb, i32 %.066105
  br label %bb.n

bb.n:                                             ; preds = %.thread91, %.thread, %bb.j, %bb.l, %bb.g
  %.672.ph = phi i32 [ %.066105, %bb.g ], [ %.066105, %bb.l ], [ %spec.select88, %.thread91 ], [ %spec.select, %.thread ], [ %i.v, %bb.j ] ; 2 uses
  %i.bc = add i64 %.078103, 1                     ; 2 uses
  %.not = icmp ugt i64 %i.bc, %i.g
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !11

.loopexit:                                        ; preds = %bb.n, %bb.m, %bb.k, %bb.d, %bb.f, %bb.a
  %.7 = phi i32 [ 0, %bb.a ], [ %.672.ph, %bb.n ], [ -1, %bb.m ], [ -1, %bb.k ], [ -1, %bb.d ], [ -1, %bb.f ]
  ret i32 %.7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 -1, 2) i32 @_ZN10ClipperLib14PointInPolygonERKNS_8IntPointEPNS_5OutPtE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 10 uses
  %i.c = load i64, ptr %0, align 8                ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %bb.a
  %.058 = phi i32 [ 0, %bb.a ], [ %.5, %bb.m ]    ; 8 uses
  %.055 = phi ptr [ %1, %bb.a ], [ %i.e, %bb.m ]  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.055, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 7 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.055, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.c
  br i1 %i.k, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.055, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.b
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.p = icmp sgt i64 %i.j, %i.c
  %i.q = load i64, ptr %i.o, align 8
  %i.r = icmp sge i64 %i.q, %i.c
  %i.s = xor i1 %i.p, %i.r
  br i1 %i.s, label %bb.n, label %._crit_edge90

._crit_edge90:                                    ; preds = %bb.e
  %.not91 = icmp slt i64 %i.g, %i.b
  br i1 %.not91, label %bb.g, label %bb.m

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.t = phi i64 [ %.pre, %._crit_edge ], [ %i.m, %bb.d ] ; 2 uses
  %i.u = icmp slt i64 %i.t, %i.b
  %i.v = icmp sge i64 %i.g, %i.b
  %.not = xor i1 %i.v, %i.u
  br i1 %.not, label %bb.m, label %bb.g

bb.g:                                             ; preds = %._crit_edge90, %bb.f
  %i.w = phi i64 [ %i.b, %._crit_edge90 ], [ %i.t, %bb.f ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.z = load i64, ptr %i.y, align 8              ; 3 uses
  %.not75 = icmp slt i64 %i.z, %i.c
  %i.aa = load i64, ptr %i.x, align 8             ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, %i.c                ; 2 uses
  br i1 %.not75, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = sub nuw nsw i32 1, %.058
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ad = sub nsw i64 %i.z, %i.c
  %i.ae = sitofp i64 %i.ad to double
  %i.af = sub nsw i64 %i.g, %i.b
  %i.ag = sitofp i64 %i.af to double
  %i.ah = sub nsw i64 %i.aa, %i.c
  %i.ai = sitofp i64 %i.ah to double
  %i.aj = sub nsw i64 %i.w, %i.b
  %i.ak = sitofp i64 %i.aj to double
  %i.al = fneg double %i.ak
  %i.am = fmul nnan double %i.al, %i.ai
  %i.an = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ag, double %i.am) ; 2 uses
  %i.ao = fcmp une double %i.an, 0.000000e+00
  br i1 %i.ao, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.j
  %i.ap = fcmp ogt double %i.an, 0.000000e+00
  %i.aq = icmp sle i64 %i.g, %i.w
  %i.ar = xor i1 %i.aq, %i.ap
  %i.as = sub nuw nsw i32 1, %.058
  %spec.select = select i1 %i.ar, i32 %i.as, i32 %.058
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  br i1 %i.ab, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = sub nsw i64 %i.z, %i.c
  %i.au = sitofp i64 %i.at to double
  %i.av = sub nsw i64 %i.g, %i.b
  %i.aw = sitofp i64 %i.av to double
  %i.ax = sub nsw i64 %i.aa, %i.c
  %i.ay = sitofp i64 %i.ax to double
  %i.az = sub nsw i64 %i.w, %i.b
  %i.ba = sitofp i64 %i.az to double
  %i.bb = fneg double %i.ba
  %i.bc = fmul nnan double %i.bb, %i.ay
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.au, double %i.aw, double %i.bc) ; 2 uses
  %i.be = fcmp une double %i.bd, 0.000000e+00
  br i1 %i.be, label %.thread78, label %bb.n

.thread78:                                        ; preds = %bb.l
  %i.bf = fcmp ogt double %i.bd, 0.000000e+00
  %i.bg = icmp sle i64 %i.g, %i.w
  %i.bh = xor i1 %i.bg, %i.bf
  %i.bi = sub nuw nsw i32 1, %.058
  %spec.select76 = select i1 %i.bh, i32 %i.bi, i32 %.058
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge90, %.thread78, %.thread, %bb.i, %bb.k, %bb.f
  %.5 = phi i32 [ %i.ac, %bb.i ], [ %spec.select, %.thread ], [ %spec.select76, %.thread78 ], [ %.058, %bb.k ], [ %.058, %bb.f ], [ %.058, %._crit_edge90 ] ; 2 uses
  %i.bj = icmp eq ptr %1, %i.e
  br i1 %i.bj, label %bb.n, label %bb.b, !llvm.loop !12

bb.n:                                             ; preds = %bb.l, %bb.j, %bb.m, %bb.c, %bb.e
  %.4 = phi i32 [ -1, %bb.j ], [ -1, %bb.c ], [ %.5, %bb.m ], [ -1, %bb.e ], [ -1, %bb.l ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN10ClipperLib18Poly2ContainsPoly1EPNS_5OutPtES1_(ptr noundef readonly captures(address) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.010 = phi ptr [ %0, %bb.a ], [ %i.f, %bb.d ]  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.010, i64 8
  %i.b = tail call noundef i32 @_ZN10ClipperLib14PointInPolygonERKNS_8IntPointEPNS_5OutPtE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %1) ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ne i32 %i.b, 0
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.010, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, %0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !13

.loopexit:                                        ; preds = %bb.d, %bb.c
  %.2 = phi i1 [ %i.d, %bb.c ], [ true, %bb.d ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN10ClipperLib11SlopesEqualERKNS_5TEdgeES2_b(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, i1 noundef zeroext %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = sub nsw i64 %i.c, %i.e                   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8
  %i.i = load i64, ptr %1, align 8
  %i.j = sub nsw i64 %i.h, %i.i                   ; 3 uses
  br i1 %2, label %_ZN10ClipperLib9Int128MulExx.exit, label %bb.b

_ZN10ClipperLib9Int128MulExx.exit:                ; preds = %bb.a
  %.not.unshifted.i = xor i64 %i.j, %i.f
  %.not.i = icmp sgt i64 %.not.unshifted.i, -1    ; 2 uses
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %i.f, i1 true) ; 2 uses
  %3 = lshr i64 %spec.select.i, 32                ; 2 uses
  %4 = and i64 %spec.select.i, 4294967295         ; 2 uses
  %.024.i = tail call i64 @llvm.abs.i64(i64 %i.j, i1 true) ; 2 uses
  %5 = lshr i64 %.024.i, 32                       ; 2 uses
  %6 = and i64 %.024.i, 4294967295                ; 2 uses
  %7 = mul nuw nsw i64 %5, %3
  %8 = mul nuw i64 %6, %4                         ; 2 uses
  %9 = mul nuw nsw i64 %6, %3
  %10 = mul nuw nsw i64 %5, %4
  %11 = add nuw i64 %9, %10                       ; 2 uses
  %12 = lshr i64 %11, 32
  %13 = add nuw nsw i64 %12, %7
  %14 = shl i64 %11, 32
  %15 = add i64 %14, %8                           ; 4 uses
  %16 = icmp ult i64 %15, %8
  %17 = zext i1 %16 to i64
  %spec.select = add nuw nsw i64 %13, %17         ; 2 uses
  %18 = icmp ne i64 %15, 0
  %19 = sub i64 0, %15
  %20 = sext i1 %18 to i64
  %.sink.i.i = sub nsw i64 %20, %spec.select
  %.sroa.524.1 = select i1 %.not.i, i64 %spec.select, i64 %.sink.i.i
  %.sroa.023.0 = select i1 %.not.i, i64 %15, i64 %19
  %i.k = load i64, ptr %i.a, align 8
  %i.l = load i64, ptr %0, align 8
  %i.m = sub nsw i64 %i.k, %i.l                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = sub nsw i64 %i.o, %i.q                   ; 2 uses
  %.not.unshifted.i17 = xor i64 %i.r, %i.m
  %.not.i18 = icmp sgt i64 %.not.unshifted.i17, -1 ; 2 uses
  %spec.select.i19 = tail call i64 @llvm.abs.i64(i64 %i.m, i1 true) ; 2 uses
  %i.s = lshr i64 %spec.select.i19, 32            ; 2 uses
  %i.t = and i64 %spec.select.i19, 4294967295     ; 2 uses
  %.024.i20 = tail call i64 @llvm.abs.i64(i64 %i.r, i1 true) ; 2 uses
  %i.u = lshr i64 %.024.i20, 32                   ; 2 uses
  %i.v = and i64 %.024.i20, 4294967295            ; 2 uses
  %i.w = mul nuw nsw i64 %i.u, %i.s
  %i.x = mul nuw i64 %i.v, %i.t                   ; 2 uses
  %i.y = mul nuw nsw i64 %i.v, %i.s
  %i.z = mul nuw nsw i64 %i.u, %i.t
  %i.aa = add nuw i64 %i.y, %i.z                  ; 2 uses
  %i.ab = lshr i64 %i.aa, 32
  %i.ac = add nuw nsw i64 %i.ab, %i.w
  %i.ad = shl i64 %i.aa, 32
  %i.ae = add i64 %i.ad, %i.x                     ; 4 uses
  %i.af = icmp ult i64 %i.ae, %i.x
  %i.ag = zext i1 %i.af to i64
  %spec.select26 = add nuw nsw i64 %i.ac, %i.ag   ; 2 uses
  %21 = icmp ne i64 %i.ae, 0
  %22 = sub i64 0, %i.ae
  %23 = sext i1 %21 to i64
  %.sink.i.i21 = sub nsw i64 %23, %spec.select26
  %.sroa.5.1 = select i1 %.not.i18, i64 %spec.select26, i64 %.sink.i.i21
  %.sroa.0.0 = select i1 %.not.i18, i64 %i.ae, i64 %22
  %24 = icmp eq i64 %.sroa.524.1, %.sroa.5.1
  %25 = icmp eq i64 %.sroa.023.0, %.sroa.0.0
  %26 = select i1 %24, i1 %25, i1 false
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ah = mul nsw i64 %i.j, %i.f
  %i.ai = load i64, ptr %i.a, align 8
  %i.aj = load i64, ptr %0, align 8
  %i.ak = sub nsw i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = sub nsw i64 %i.am, %i.ao
  %i.aq = mul nsw i64 %i.ap, %i.ak
  %i.ar = icmp eq i64 %i.ah, %i.aq
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN10ClipperLib9Int128MulExx.exit
  %.0 = phi i1 [ %26, %_ZN10ClipperLib9Int128MulExx.exit ], [ %i.ar, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN10ClipperLib11SlopesEqualENS_8IntPointES0_S0_b(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i1 noundef zeroext %6) local_unnamed_addr #7 {
bb.a:
  %i.a = sub nsw i64 %1, %3                       ; 3 uses
  %i.b = sub nsw i64 %2, %4                       ; 3 uses
  br i1 %6, label %_ZN10ClipperLib9Int128MulExx.exit, label %bb.b

_ZN10ClipperLib9Int128MulExx.exit:                ; preds = %bb.a
  %.not.unshifted.i = xor i64 %i.b, %i.a
  %.not.i = icmp sgt i64 %.not.unshifted.i, -1    ; 2 uses
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %i.a, i1 true) ; 2 uses
  %7 = lshr i64 %spec.select.i, 32                ; 2 uses
  %8 = and i64 %spec.select.i, 4294967295         ; 2 uses
  %.024.i = tail call i64 @llvm.abs.i64(i64 %i.b, i1 true) ; 2 uses
  %9 = lshr i64 %.024.i, 32                       ; 2 uses
  %10 = and i64 %.024.i, 4294967295               ; 2 uses
  %11 = mul nuw nsw i64 %9, %7
  %12 = mul nuw i64 %10, %8                       ; 2 uses
  %13 = mul nuw nsw i64 %10, %7
  %14 = mul nuw nsw i64 %9, %8
  %15 = add nuw i64 %13, %14                      ; 2 uses
  %16 = lshr i64 %15, 32
  %17 = add nuw nsw i64 %16, %11
  %18 = shl i64 %15, 32
  %19 = add i64 %18, %12                          ; 4 uses
  %20 = icmp ult i64 %19, %12
  %21 = zext i1 %20 to i64
  %spec.select = add nuw nsw i64 %17, %21         ; 2 uses
  %22 = icmp ne i64 %19, 0
  %23 = sub i64 0, %19
  %24 = sext i1 %22 to i64
  %.sink.i.i = sub nsw i64 %24, %spec.select
  %.sroa.521.1 = select i1 %.not.i, i64 %spec.select, i64 %.sink.i.i
  %.sroa.020.0 = select i1 %.not.i, i64 %19, i64 %23
  %i.c = sub nsw i64 %0, %2                       ; 2 uses
  %i.d = sub nsw i64 %3, %5                       ; 2 uses
  %.not.unshifted.i14 = xor i64 %i.d, %i.c
  %.not.i15 = icmp sgt i64 %.not.unshifted.i14, -1 ; 2 uses
  %spec.select.i16 = tail call i64 @llvm.abs.i64(i64 %i.c, i1 true) ; 2 uses
  %i.e = lshr i64 %spec.select.i16, 32            ; 2 uses
  %i.f = and i64 %spec.select.i16, 4294967295     ; 2 uses
  %.024.i17 = tail call i64 @llvm.abs.i64(i64 %i.d, i1 true) ; 2 uses
  %i.g = lshr i64 %.024.i17, 32                   ; 2 uses
  %i.h = and i64 %.024.i17, 4294967295            ; 2 uses
  %i.i = mul nuw nsw i64 %i.g, %i.e
  %i.j = mul nuw i64 %i.h, %i.f                   ; 2 uses
  %i.k = mul nuw nsw i64 %i.h, %i.e
  %i.l = mul nuw nsw i64 %i.g, %i.f
  %i.m = add nuw i64 %i.k, %i.l                   ; 2 uses
  %i.n = lshr i64 %i.m, 32
  %i.o = add nuw nsw i64 %i.n, %i.i
  %i.p = shl i64 %i.m, 32
  %i.q = add i64 %i.p, %i.j                       ; 4 uses
  %i.r = icmp ult i64 %i.q, %i.j
  %i.s = zext i1 %i.r to i64
  %spec.select23 = add nuw nsw i64 %i.o, %i.s     ; 2 uses
  %25 = icmp ne i64 %i.q, 0
  %26 = sub i64 0, %i.q
  %27 = sext i1 %25 to i64
  %.sink.i.i18 = sub nsw i64 %27, %spec.select23
  %.sroa.5.1 = select i1 %.not.i15, i64 %spec.select23, i64 %.sink.i.i18
  %.sroa.0.0 = select i1 %.not.i15, i64 %i.q, i64 %26
  %28 = icmp eq i64 %.sroa.521.1, %.sroa.5.1
  %29 = icmp eq i64 %.sroa.020.0, %.sroa.0.0
  %30 = select i1 %28, i1 %29, i1 false
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = mul nsw i64 %i.b, %i.a
  %i.u = sub nsw i64 %0, %2
  %i.v = sub nsw i64 %3, %5
  %i.w = mul nsw i64 %i.v, %i.u
  %i.x = icmp eq i64 %i.t, %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN10ClipperLib9Int128MulExx.exit
  %.0 = phi i1 [ %30, %_ZN10ClipperLib9Int128MulExx.exit ], [ %i.x, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN10ClipperLib11SlopesEqualENS_8IntPointES0_S0_S0_b(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef readonly byval(%"struct.ClipperLib::IntPoint") align 8 captures(none) %6, i1 noundef zeroext %7) local_unnamed_addr #4 {
bb.a:
  %i.a = sub nsw i64 %1, %3                       ; 3 uses
  %i.b = load i64, ptr %6, align 8
  %i.c = sub nsw i64 %4, %i.b                     ; 3 uses
  br i1 %7, label %_ZN10ClipperLib9Int128MulExx.exit, label %bb.b

_ZN10ClipperLib9Int128MulExx.exit:                ; preds = %bb.a
  %.not.unshifted.i = xor i64 %i.c, %i.a
  %.not.i = icmp sgt i64 %.not.unshifted.i, -1    ; 2 uses
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %i.a, i1 true) ; 2 uses
  %8 = lshr i64 %spec.select.i, 32                ; 2 uses
  %9 = and i64 %spec.select.i, 4294967295         ; 2 uses
  %.024.i = tail call i64 @llvm.abs.i64(i64 %i.c, i1 true) ; 2 uses
  %10 = lshr i64 %.024.i, 32                      ; 2 uses
  %11 = and i64 %.024.i, 4294967295               ; 2 uses
  %12 = mul nuw nsw i64 %10, %8
  %13 = mul nuw i64 %11, %9                       ; 2 uses
  %14 = mul nuw nsw i64 %11, %8
  %15 = mul nuw nsw i64 %10, %9
  %16 = add nuw i64 %14, %15                      ; 2 uses
  %17 = lshr i64 %16, 32
  %18 = add nuw nsw i64 %17, %12
  %19 = shl i64 %16, 32
  %20 = add i64 %19, %13                          ; 4 uses
  %21 = icmp ult i64 %20, %13
  %22 = zext i1 %21 to i64
  %spec.select = add nuw nsw i64 %18, %22         ; 2 uses
  %23 = icmp ne i64 %20, 0
  %24 = sub i64 0, %20
  %25 = sext i1 %23 to i64
  %.sink.i.i = sub nsw i64 %25, %spec.select
  %.sroa.518.1 = select i1 %.not.i, i64 %spec.select, i64 %.sink.i.i
  %.sroa.017.0 = select i1 %.not.i, i64 %20, i64 %24
  %i.d = sub nsw i64 %0, %2                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = sub nsw i64 %5, %i.f                     ; 2 uses
  %.not.unshifted.i11 = xor i64 %i.g, %i.d
  %.not.i12 = icmp sgt i64 %.not.unshifted.i11, -1 ; 2 uses
  %spec.select.i13 = tail call i64 @llvm.abs.i64(i64 %i.d, i1 true) ; 2 uses
  %i.h = lshr i64 %spec.select.i13, 32            ; 2 uses
  %i.i = and i64 %spec.select.i13, 4294967295     ; 2 uses
  %.024.i14 = tail call i64 @llvm.abs.i64(i64 %i.g, i1 true) ; 2 uses
  %i.j = lshr i64 %.024.i14, 32                   ; 2 uses
  %i.k = and i64 %.024.i14, 4294967295            ; 2 uses
  %i.l = mul nuw nsw i64 %i.j, %i.h
  %i.m = mul nuw i64 %i.k, %i.i                   ; 2 uses
  %i.n = mul nuw nsw i64 %i.k, %i.h
  %i.o = mul nuw nsw i64 %i.j, %i.i
  %i.p = add nuw i64 %i.n, %i.o                   ; 2 uses
  %i.q = lshr i64 %i.p, 32
  %i.r = add nuw nsw i64 %i.q, %i.l
  %i.s = shl i64 %i.p, 32
  %i.t = add i64 %i.s, %i.m                       ; 4 uses
  %i.u = icmp ult i64 %i.t, %i.m
  %i.v = zext i1 %i.u to i64
  %spec.select20 = add nuw nsw i64 %i.r, %i.v     ; 2 uses
  %26 = icmp ne i64 %i.t, 0
  %27 = sub i64 0, %i.t
  %28 = sext i1 %26 to i64
  %.sink.i.i15 = sub nsw i64 %28, %spec.select20
  %.sroa.5.1 = select i1 %.not.i12, i64 %spec.select20, i64 %.sink.i.i15
  %.sroa.0.0 = select i1 %.not.i12, i64 %i.t, i64 %27
  %29 = icmp eq i64 %.sroa.518.1, %.sroa.5.1
  %30 = icmp eq i64 %.sroa.017.0, %.sroa.0.0
  %31 = select i1 %29, i1 %30, i1 false
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = mul nsw i64 %i.c, %i.a
  %i.x = sub nsw i64 %0, %2
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = sub nsw i64 %5, %i.z
  %i.ab = mul nsw i64 %i.aa, %i.x
  %i.ac = icmp eq i64 %i.w, %i.ab
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN10ClipperLib9Int128MulExx.exit
  %.0 = phi i1 [ %31, %_ZN10ClipperLib9Int128MulExx.exit ], [ %i.ac, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN10ClipperLib14IntersectPointERNS_5TEdgeES1_RNS_8IntPointE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.b = load double, ptr %i.a, align 8           ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.d = load double, ptr %i.c, align 8           ; 4 uses
  %i.e = fcmp oeq double %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.g, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8
  br label %.sink.split130

bb.d:                                             ; preds = %bb.b
  %i.n = load i64, ptr %0, align 8
  %i.o = load double, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = sub nsw i64 %i.g, %i.q
  %i.s = sitofp i64 %i.r to double
  %i.t = fmul double %i.o, %i.s                   ; 2 uses
  %i.u = fcmp olt double %i.t, 0.000000e+00
  %.0.in.v.i.i = select i1 %i.u, double -5.000000e-01, double 5.000000e-01
  %.0.in.i.i = fadd double %i.t, %.0.in.v.i.i
  %.0.i.i = fptosi double %.0.in.i.i to i64
  %i.v = add nsw i64 %i.n, %.0.i.i
  br label %.sink.split130

bb.e:                                             ; preds = %bb.a
  %i.w = fcmp oeq double %i.b, 0.000000e+00
  br i1 %i.w, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %0, align 8                ; 2 uses
  store i64 %i.x, ptr %2, align 8
  %i.y = load double, ptr %i.c, align 8           ; 3 uses
  %i.z = fcmp oeq double %i.y, -1.000000e+40
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ab, ptr %i.ac, align 8
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.ad = sitofp i64 %i.ab to double
  %i.ae = load i64, ptr %1, align 8
  %i.af = sitofp i64 %i.ae to double
  %i.ag = fdiv double %i.af, %i.y
  %i.ah = fsub double %i.ad, %i.ag
  %i.ai = sitofp i64 %i.x to double
  %i.aj = fdiv double %i.ai, %i.y
  %i.ak = fadd double %i.aj, %i.ah                ; 2 uses
  %i.al = fcmp olt double %i.ak, 0.000000e+00
  %.0.in.v.i = select i1 %i.al, double -5.000000e-01, double 5.000000e-01
  %.0.in.i = fadd double %i.ak, %.0.in.v.i
  %.0.i = fptosi double %.0.in.i to i64           ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.i, ptr %i.am, align 8
  br label %bb.n

bb.i:                                             ; preds = %bb.e
  %i.an = fcmp oeq double %i.d, 0.000000e+00
  br i1 %i.an, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ao = load i64, ptr %1, align 8               ; 2 uses
  store i64 %i.ao, ptr %2, align 8
  %i.ap = load double, ptr %i.a, align 8          ; 3 uses
  %i.aq = fcmp oeq double %i.ap, -1.000000e+40
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8            ; 3 uses
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.as, ptr %i.at, align 8
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.au = sitofp i64 %i.as to double
  %i.av = load i64, ptr %0, align 8
  %i.aw = sitofp i64 %i.av to double
  %i.ax = fdiv double %i.aw, %i.ap
  %i.ay = fsub double %i.au, %i.ax
  %i.az = sitofp i64 %i.ao to double
  %i.ba = fdiv double %i.az, %i.ap
  %i.bb = fadd double %i.ba, %i.ay                ; 2 uses
  %i.bc = fcmp olt double %i.bb, 0.000000e+00
  %.0.in.v.i93 = select i1 %i.bc, double -5.000000e-01, double 5.000000e-01
  %.0.in.i94 = fadd double %i.bb, %.0.in.v.i93
  %.0.i95 = fptosi double %.0.in.i94 to i64       ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.i95, ptr %i.bd, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.be = load i64, ptr %0, align 8
  %i.bf = sitofp i64 %i.be to double
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fneg double %i.bi
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.b, double %i.bf) ; 2 uses
  %i.bl = load i64, ptr %1, align 8
  %i.bm = sitofp i64 %i.bl to double
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = sitofp i64 %i.bo to double
  %i.bq = fneg double %i.bp
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.d, double %i.bm) ; 2 uses
  %i.bs = fsub double %i.br, %i.bk
  %i.bt = fsub double %i.b, %i.d
  %i.bu = fdiv double %i.bs, %i.bt                ; 4 uses
  %i.bv = fcmp olt double %i.bu, 0.000000e+00
  %.0.in.v.i96 = select i1 %i.bv, double -5.000000e-01, double 5.000000e-01
  %.0.in.i97 = fadd double %i.bu, %.0.in.v.i96
  %.0.i98 = fptosi double %.0.in.i97 to i64       ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.i98, ptr %i.bw, align 8
  %i.bx = load double, ptr %i.a, align 8          ; 2 uses
  %i.by = tail call double @llvm.fabs.f64(double %i.bx)
  %i.bz = load double, ptr %i.c, align 8          ; 2 uses
  %i.ca = tail call double @llvm.fabs.f64(double %i.bz)
  %i.cb = fcmp olt double %i.by, %i.ca
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.bu, double %i.br)
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.bu, double %i.bk)
  %.sink128 = select i1 %i.cb, double %i.cd, double %i.cc ; 2 uses
  %i.ce = fcmp olt double %.sink128, 0.000000e+00
  %.0.in.v.i102 = select i1 %i.ce, double -5.000000e-01, double 5.000000e-01
  %.0.in.i103 = fadd double %.sink128, %.0.in.v.i102
  %storemerge = fptosi double %.0.in.i103 to i64
  store i64 %storemerge, ptr %2, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.g, %bb.k, %bb.l, %bb.m
  %i.cf = phi i64 [ %.0.i, %bb.h ], [ %i.ab, %bb.g ], [ %i.as, %bb.k ], [ %.0.i95, %bb.l ], [ %.0.i98, %bb.m ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 8            ; 2 uses
  %i.cj = icmp slt i64 %i.cf, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8            ; 2 uses
  %i.cm = icmp slt i64 %i.cf, %i.cl
  %or.cond = select i1 %i.cj, i1 true, i1 %i.cm
  br i1 %or.cond, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %. = tail call i64 @llvm.smax.i64(i64 %i.ci, i64 %i.cl) ; 6 uses
  store i64 %., ptr %i.cg, align 8
  %i.cn = load double, ptr %i.a, align 8          ; 2 uses
  %i.co = tail call double @llvm.fabs.f64(double %i.cn)
  %i.cp = load double, ptr %i.c, align 8          ; 2 uses
  %i.cq = tail call double @llvm.fabs.f64(double %i.cp)
  %i.cr = fcmp olt double %i.co, %i.cq
  br i1 %i.cr, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cs = load i64, ptr %i.ch, align 8
  %i.ct = icmp eq i64 %., %i.cs
  br i1 %i.ct, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cv = load i64, ptr %i.cu, align 8
  br label %.sink.split

bb.r:                                             ; preds = %bb.p
  %i.cw = load i64, ptr %0, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = sub nsw i64 %., %i.cy
  %i.da = sitofp i64 %i.cz to double
  %i.db = fmul double %i.cn, %i.da                ; 2 uses
  %i.dc = fcmp olt double %i.db, 0.000000e+00
  %.0.in.v.i.i105 = select i1 %i.dc, double -5.000000e-01, double 5.000000e-01
  %.0.in.i.i106 = fadd double %i.db, %.0.in.v.i.i105
  %.0.i.i107 = fptosi double %.0.in.i.i106 to i64
  %i.dd = add nsw i64 %i.cw, %.0.i.i107
  br label %.sink.split

bb.s:                                             ; preds = %bb.o
  %i.de = load i64, ptr %i.ck, align 8
end_hunk_1
begin_hunk_2_@_ZN10ClipperLib7Clipper24InsertLocalMinimaIntoAELEx:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  call void @_ZNSt14priority_queueIxSt6vectorIxSaIxEESt4lessIxEE4pushERKx(ptr noundef nonnull align 8 dereferenceable(25) %i.bs, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.bt = load ptr, ptr %0, align 8
  %i.bu = getelementptr i8, ptr %i.bt, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %0, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.by = load i64, ptr %i.bx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.by, ptr %i.a, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 112
  call void @_ZNSt14priority_queueIxSt6vectorIxSaIxEESt4lessIxEE4pushERKx(ptr noundef nonnull align 8 dereferenceable(25) %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %_ZN10ClipperLib7Clipper12AddEdgeToSELEPNS_5TEdgeE.exit
  br i1 %.not186, label %.loopexit, label %bb.s, !llvm.loop !90

bb.s:                                             ; preds = %bb.r
  %.not115 = icmp eq ptr %.2.ph, null
  br i1 %.not115, label %.loopexit188, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = load double, ptr %i.bb, align 8
  %i.cb = fcmp oeq double %i.ca, -1.000000e+40
  br i1 %i.cb, label %bb.u, label %.loopexit188

bb.u:                                             ; preds = %bb.t
  %i.cc = load ptr, ptr %i.p, align 8
  %i.cd = load ptr, ptr %i.o, align 8             ; 2 uses
  %.not116 = icmp eq ptr %i.cc, %i.cd
  br i1 %.not116, label %.loopexit188, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.cf = load i32, ptr %i.ce, align 8
  %.not117 = icmp eq i32 %i.cf, 0
  br i1 %.not117, label %.loopexit188, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit
  %i.ch = phi ptr [ %i.cd, %.lr.ph ], [ %i.dt, %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit ]
  %.0105189 = phi i64 [ 0, %.lr.ph ], [ %i.dr, %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.0105189
  %i.cj = load ptr, ptr %i.ci, align 8            ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i64, ptr %i.cl, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.co = load i64, ptr %i.cn, align 8            ; 3 uses
  %i.cp = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.cq = load i64, ptr %i.cg, align 8            ; 2 uses
  %spec.select.i = call i64 @llvm.smin.i64(i64 %i.cm, i64 %i.co)
  %spec.select13.i = call i64 @llvm.smax.i64(i64 %i.cm, i64 %i.co)
  %.010.i = call i64 @llvm.smin.i64(i64 %i.cp, i64 %i.cq)
  %.0.i127 = call i64 @llvm.smax.i64(i64 %i.cp, i64 %i.cq)
  %i.cr = icmp slt i64 %spec.select.i, %.0.i127
  %i.cs = icmp slt i64 %.010.i, %spec.select13.i
  %i.ct = and i1 %i.cr, %i.cs
  br i1 %i.ct, label %bb.x, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit

bb.x:                                             ; preds = %bb.w
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %.sroa.222.0.copyload = load i64, ptr %.sroa.222.0..sroa_idx, align 8
  %i.cu = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store ptr %i.ck, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %.2.ph, ptr %i.cw, align 8
  store i64 %i.co, ptr %i.cv, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store i64 %.sroa.222.0.copyload, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.cx = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.cy = load ptr, ptr %i.s, align 8
  %.not.i.i = icmp eq ptr %i.cx, %i.cy
  br i1 %.not.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.cu, ptr %i.cx, align 8
  %i.cz = load ptr, ptr %i.r, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.da, ptr %i.r, align 8
  br label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit

bb.z:                                             ; preds = %bb.x
  %i.db = load ptr, ptr %i.q, align 8             ; 4 uses
  %i.dc = ptrtoint ptr %i.cx to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 6 uses
  %i.df = icmp eq i64 %i.de, 9223372036854775800
  br i1 %i.df, label %bb.aa, label %_ZNKSt6vectorIPN10ClipperLib4JoinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIPN10ClipperLib4JoinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.z
  %i.dg = ashr exact i64 %i.de, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dg, i64 1)
  %i.dh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dg ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.dg
  %i.dj = call i64 @llvm.umin.i64(i64 %i.dh, i64 1152921504606846975)
  %i.dk = select i1 %i.di, i64 1152921504606846975, i64 %i.dj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dl = shl nuw nsw i64 %i.dk, 3
  %i.dm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #32 ; 4 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %i.de ; 2 uses
  store ptr %i.cu, ptr %i.dn, align 8
  %i.do = icmp sgt i64 %i.de, 0
  br i1 %i.do, label %bb.ab, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.ab:                                            ; preds = %_ZNKSt6vectorIPN10ClipperLib4JoinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dm, ptr align 8 %i.db, i64 %i.de, i1 false)
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.ab, %_ZNKSt6vectorIPN10ClipperLib4JoinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.de) #33
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.ac, %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.dm, ptr %i.q, align 8
  store ptr %i.dp, ptr %i.r, align 8
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dk
  store ptr %i.dq, ptr %i.s, align 8
  br label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit

_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit: ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.y, %bb.w
  %i.dr = add nuw i64 %.0105189, 1                ; 2 uses
  %i.ds = load ptr, ptr %i.p, align 8
  %i.dt = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = ashr exact i64 %i.dw, 3
  %i.dy = icmp ult i64 %i.dr, %i.dx
  br i1 %i.dy, label %bb.w, label %.loopexit188, !llvm.loop !91

.loopexit188:                                     ; preds = %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit, %bb.v, %bb.u, %bb.t, %bb.s
  %i.dz = getelementptr inbounds nuw i8, ptr %i.y, i64 76
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = icmp sgt i32 %i.ea, -1
  br i1 %i.eb, label %bb.ad, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit139

bb.ad:                                            ; preds = %.loopexit188
  %i.ec = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  %i.ed = load ptr, ptr %i.ec, align 8            ; 9 uses
  %.not118 = icmp eq ptr %i.ed, null
  br i1 %.not118, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit139, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = load i64, ptr %i.y, align 8
  %i.eh = icmp eq i64 %i.ef, %i.eg
  br i1 %i.eh, label %bb.af, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit139

bb.af:                                            ; preds = %bb.ae
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 76
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = icmp sgt i32 %i.ej, -1
  br i1 %i.ek, label %bb.ag, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit139

bb.ag:                                            ; preds = %bb.af
  %.sroa.019.0.copyload = load i64, ptr %i.ed, align 8 ; 2 uses
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.220.0.copyload = load i64, ptr %.sroa.220.0..sroa_idx, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %.sroa.017.0.copyload = load i64, ptr %i.el, align 8 ; 2 uses
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %.sroa.218.0.copyload = load i64, ptr %.sroa.218.0..sroa_idx, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.015.0.copyload = load i64, ptr %i.em, align 8
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.216.0.copyload = load i64, ptr %.sroa.216.0..sroa_idx, align 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %.sroa.0173.0.copyload = load i64, ptr %i.en, align 8
  %.sroa.2174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %.sroa.2174.0.copyload = load i64, ptr %.sroa.2174.0..sroa_idx, align 8 ; 2 uses
  %i.eo = load ptr, ptr %0, align 8
  %i.ep = getelementptr i8, ptr %i.eo, i64 -24
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = getelementptr inbounds i8, ptr %0, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.et = load i8, ptr %i.es, align 8, !range !6, !noundef !7
  %i.eu = trunc nuw i8 %i.et to i1
  %i.ev = sub nsw i64 %.sroa.220.0.copyload, %.sroa.218.0.copyload ; 3 uses
  %i.ew = sub nsw i64 %.sroa.015.0.copyload, %.sroa.0173.0.copyload ; 3 uses
  br i1 %i.eu, label %_ZN10ClipperLib9Int128MulExx.exit.i, label %_ZN10ClipperLib11SlopesEqualENS_8IntPointES0_S0_S0_b.exit

_ZN10ClipperLib9Int128MulExx.exit.i:              ; preds = %bb.ag
  %.not.unshifted.i.i = xor i64 %i.ew, %i.ev
  %.not.i.i129 = icmp sgt i64 %.not.unshifted.i.i, -1 ; 2 uses
  %spec.select.i.i = call i64 @llvm.abs.i64(i64 %i.ev, i1 true) ; 2 uses
  %2 = lshr i64 %spec.select.i.i, 32              ; 2 uses
  %3 = and i64 %spec.select.i.i, 4294967295       ; 2 uses
  %.024.i.i = call i64 @llvm.abs.i64(i64 %i.ew, i1 true) ; 2 uses
  %4 = lshr i64 %.024.i.i, 32                     ; 2 uses
  %5 = and i64 %.024.i.i, 4294967295              ; 2 uses
  %6 = mul nuw nsw i64 %4, %2
  %7 = mul nuw i64 %5, %3                         ; 2 uses
  %8 = mul nuw nsw i64 %5, %2
  %9 = mul nuw nsw i64 %4, %3
  %10 = add nuw i64 %8, %9                        ; 2 uses
  %11 = lshr i64 %10, 32
  %12 = add nuw nsw i64 %11, %6
  %13 = shl i64 %10, 32
  %14 = add i64 %13, %7                           ; 4 uses
  %15 = icmp ult i64 %14, %7
  %16 = zext i1 %15 to i64
  %spec.select.i130 = add nuw nsw i64 %12, %16    ; 2 uses
  %17 = icmp ne i64 %14, 0
  %18 = sub i64 0, %14
  %19 = sext i1 %17 to i64
  %.sink.i.i.i = sub nsw i64 %19, %spec.select.i130
  %.sroa.518.1.i = select i1 %.not.i.i129, i64 %spec.select.i130, i64 %.sink.i.i.i
  %.sroa.017.0.i = select i1 %.not.i.i129, i64 %14, i64 %18
  %i.ex = sub nsw i64 %.sroa.019.0.copyload, %.sroa.017.0.copyload ; 2 uses
  %i.ey = sub nsw i64 %.sroa.216.0.copyload, %.sroa.2174.0.copyload ; 2 uses
  %.not.unshifted.i11.i = xor i64 %i.ey, %i.ex
  %.not.i12.i = icmp sgt i64 %.not.unshifted.i11.i, -1 ; 2 uses
  %spec.select.i13.i = call i64 @llvm.abs.i64(i64 %i.ex, i1 true) ; 2 uses
  %i.ez = lshr i64 %spec.select.i13.i, 32         ; 2 uses
  %i.fa = and i64 %spec.select.i13.i, 4294967295  ; 2 uses
  %.024.i14.i = call i64 @llvm.abs.i64(i64 %i.ey, i1 true) ; 2 uses
  %i.fb = lshr i64 %.024.i14.i, 32                ; 2 uses
  %i.fc = and i64 %.024.i14.i, 4294967295         ; 2 uses
  %i.fd = mul nuw nsw i64 %i.fb, %i.ez
  %i.fe = mul nuw i64 %i.fc, %i.fa                ; 2 uses
  %i.ff = mul nuw nsw i64 %i.fc, %i.ez
  %i.fg = mul nuw nsw i64 %i.fb, %i.fa
  %i.fh = add nuw i64 %i.ff, %i.fg                ; 2 uses
  %i.fi = lshr i64 %i.fh, 32
  %i.fj = add nuw nsw i64 %i.fi, %i.fd
  %i.fk = shl i64 %i.fh, 32
  %i.fl = add i64 %i.fk, %i.fe                    ; 4 uses
  %i.fm = icmp ult i64 %i.fl, %i.fe
  %i.fn = zext i1 %i.fm to i64
  %spec.select20.i = add nuw nsw i64 %i.fj, %i.fn ; 2 uses
  %20 = icmp ne i64 %i.fl, 0
  %21 = sub i64 0, %i.fl
  %22 = sext i1 %20 to i64
  %.sink.i.i15.i = sub nsw i64 %22, %spec.select20.i
  %.sroa.5.1.i = select i1 %.not.i12.i, i64 %spec.select20.i, i64 %.sink.i.i15.i
  %.sroa.0.0.i = select i1 %.not.i12.i, i64 %i.fl, i64 %21
  %23 = icmp eq i64 %.sroa.518.1.i, %.sroa.5.1.i
  %24 = icmp eq i64 %.sroa.017.0.i, %.sroa.0.0.i
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %bb.ah, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit139

_ZN10ClipperLib11SlopesEqualENS_8IntPointES0_S0_S0_b.exit: ; preds = %bb.ag
  %i.fo = mul nsw i64 %i.ew, %i.ev
  %i.fp = sub nsw i64 %.sroa.019.0.copyload, %.sroa.017.0.copyload
  %i.fq = sub nsw i64 %.sroa.216.0.copyload, %.sroa.2174.0.copyload
  %i.fr = mul nsw i64 %i.fq, %i.fp
  %i.fs = icmp eq i64 %i.fo, %i.fr
  br i1 %i.fs, label %bb.ah, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit139

bb.ah:                                            ; preds = %_ZN10ClipperLib9Int128MulExx.exit.i, %_ZN10ClipperLib11SlopesEqualENS_8IntPointES0_S0_S0_b.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.fu = load i32, ptr %i.ft, align 8
  %.not119 = icmp eq i32 %i.fu, 0
  br i1 %.not119, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit139, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ed, i64 64
  %i.fw = load i32, ptr %i.fv, align 8
  %.not120 = icmp eq i32 %i.fw, 0
  br i1 %.not120, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit139, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fx = call noundef ptr @_ZN10ClipperLib7Clipper8AddOutPtEPNS_5TEdgeERKNS_8IntPointE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %i.y)
  %i.fy = load <2 x i64>, ptr %i.en, align 8
  %i.fz = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store ptr %.2.ph, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %i.fx, ptr %i.gb, align 8
  store <2 x i64> %i.fy, ptr %i.ga, align 8
  %i.gc = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.gd = load ptr, ptr %i.s, align 8
  %.not.i.i132 = icmp eq ptr %i.gc, %i.gd
  br i1 %.not.i.i132, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.fz, ptr %i.gc, align 8
  %i.ge = load ptr, ptr %i.r, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store ptr %i.gf, ptr %i.r, align 8
  br label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit139

bb.al:                                            ; preds = %bb.aj
  %i.gg = load ptr, ptr %i.q, align 8             ; 4 uses
  %i.gh = ptrtoint ptr %i.gc to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi                    ; 6 uses
  %i.gk = icmp eq i64 %i.gj, 9223372036854775800
  br i1 %i.gk, label %bb.am, label %_ZNKSt6vectorIPN10ClipperLib4JoinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i133

bb.am:                                            ; preds = %bb.al
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIPN10ClipperLib4JoinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i133: ; preds = %bb.al
  %i.gl = ashr exact i64 %i.gj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i134 = call i64 @llvm.umax.i64(i64 %i.gl, i64 1)
  %i.gm = add nsw i64 %.sroa.speculated.i.i.i.i134, %i.gl ; 2 uses
  %i.gn = icmp ult i64 %i.gm, %i.gl
  %i.go = call i64 @llvm.umin.i64(i64 %i.gm, i64 1152921504606846975)
  %i.gp = select i1 %i.gn, i64 1152921504606846975, i64 %i.go ; 3 uses
  %.not.i.i.i.i135 = icmp ne i64 %i.gp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i135)
  %i.gq = shl nuw nsw i64 %i.gp, 3
  %i.gr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #32 ; 4 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 %i.gj ; 2 uses
  store ptr %i.fz, ptr %i.gs, align 8
  %i.gt = icmp sgt i64 %i.gj, 0
  br i1 %i.gt, label %bb.an, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i136

bb.an:                                            ; preds = %_ZNKSt6vectorIPN10ClipperLib4JoinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i133
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr align 8 %i.gg, i64 %i.gj, i1 false)
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i136

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i136: ; preds = %bb.an, %_ZNKSt6vectorIPN10ClipperLib4JoinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i133
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %.not.i17.i.i.i137 = icmp eq ptr %i.gg, null
  br i1 %.not.i17.i.i.i137, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i138, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i136
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gj) #33
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i138

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i138: ; preds = %bb.ao, %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i136
  store ptr %i.gr, ptr %i.q, align 8
  store ptr %i.gu, ptr %i.r, align 8
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gp
  store ptr %i.gv, ptr %i.s, align 8
  br label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit139

_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit139: ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i138, %bb.ak, %_ZN10ClipperLib9Int128MulExx.exit.i, %bb.ai, %bb.ah, %_ZN10ClipperLib11SlopesEqualENS_8IntPointES0_S0_S0_b.exit, %bb.af, %bb.ae, %bb.ad, %.loopexit188
  %i.gw = getelementptr inbounds nuw i8, ptr %i.y, i64 104 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8
  %.not121 = icmp eq ptr %i.gx, %i.aa
  br i1 %.not121, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit139
  %i.gy = getelementptr inbounds nuw i8, ptr %i.aa, i64 76
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = icmp sgt i32 %i.gz, -1
  br i1 %i.ha, label %bb.aq, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit168

bb.aq:                                            ; preds = %bb.ap
  %i.hb = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  %i.hc = load ptr, ptr %i.hb, align 8            ; 7 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 76
  %i.he = load i32, ptr %i.hd, align 4
  %i.hf = icmp sgt i32 %i.he, -1
  br i1 %i.hf, label %bb.ar, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit168

bb.ar:                                            ; preds = %bb.aq
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %.sroa.010.0.copyload = load i64, ptr %i.hg, align 8 ; 2 uses
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %.sroa.211.0.copyload = load i64, ptr %.sroa.211.0..sroa_idx, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %.sroa.08.0.copyload = load i64, ptr %i.hh, align 8 ; 2 uses
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  %.sroa.29.0.copyload = load i64, ptr %.sroa.29.0..sroa_idx, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.06.0.copyload = load i64, ptr %i.hi, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.27.0.copyload = load i64, ptr %.sroa.27.0..sroa_idx, align 8 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  %.sroa.0.0.copyload169 = load i64, ptr %i.hj, align 8
  %.sroa.2.0..sroa_idx170 = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %.sroa.2.0.copyload171 = load i64, ptr %.sroa.2.0..sroa_idx170, align 8 ; 2 uses
  %i.hk = load ptr, ptr %0, align 8
  %i.hl = getelementptr i8, ptr %i.hk, i64 -24
  %i.hm = load i64, ptr %i.hl, align 8
  %i.hn = getelementptr inbounds i8, ptr %0, i64 %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 40
  %i.hp = load i8, ptr %i.ho, align 8, !range !6, !noundef !7
  %i.hq = trunc nuw i8 %i.hp to i1
  %i.hr = sub nsw i64 %.sroa.211.0.copyload, %.sroa.29.0.copyload ; 3 uses
  %i.hs = sub nsw i64 %.sroa.06.0.copyload, %.sroa.0.0.copyload169 ; 3 uses
  br i1 %i.hq, label %_ZN10ClipperLib9Int128MulExx.exit.i147, label %_ZN10ClipperLib11SlopesEqualENS_8IntPointES0_S0_S0_b.exit159

_ZN10ClipperLib9Int128MulExx.exit.i147:           ; preds = %bb.ar
  %.not.unshifted.i.i142 = xor i64 %i.hs, %i.hr
  %.not.i.i143 = icmp sgt i64 %.not.unshifted.i.i142, -1 ; 2 uses
  %spec.select.i.i144 = call i64 @llvm.abs.i64(i64 %i.hr, i1 true) ; 2 uses
  %26 = lshr i64 %spec.select.i.i144, 32          ; 2 uses
  %27 = and i64 %spec.select.i.i144, 4294967295   ; 2 uses
  %.024.i.i145 = call i64 @llvm.abs.i64(i64 %i.hs, i1 true) ; 2 uses
  %28 = lshr i64 %.024.i.i145, 32                 ; 2 uses
  %29 = and i64 %.024.i.i145, 4294967295          ; 2 uses
  %30 = mul nuw nsw i64 %28, %26
  %31 = mul nuw i64 %29, %27                      ; 2 uses
  %32 = mul nuw nsw i64 %29, %26
  %33 = mul nuw nsw i64 %28, %27
  %34 = add nuw i64 %32, %33                      ; 2 uses
  %35 = lshr i64 %34, 32
  %36 = add nuw nsw i64 %35, %30
  %37 = shl i64 %34, 32
  %38 = add i64 %37, %31                          ; 4 uses
  %39 = icmp ult i64 %38, %31
  %40 = zext i1 %39 to i64
  %spec.select.i146 = add nuw nsw i64 %36, %40    ; 2 uses
  %41 = icmp ne i64 %38, 0
  %42 = sub i64 0, %38
  %43 = sext i1 %41 to i64
  %.sink.i.i.i147 = sub nsw i64 %43, %spec.select.i146
  %.sroa.518.1.i148 = select i1 %.not.i.i143, i64 %spec.select.i146, i64 %.sink.i.i.i147
  %.sroa.017.0.i149 = select i1 %.not.i.i143, i64 %38, i64 %42
  %i.ht = sub nsw i64 %.sroa.010.0.copyload, %.sroa.08.0.copyload ; 2 uses
  %i.hu = sub nsw i64 %.sroa.27.0.copyload, %.sroa.2.0.copyload171 ; 2 uses
  %.not.unshifted.i11.i150 = xor i64 %i.hu, %i.ht
  %.not.i12.i151 = icmp sgt i64 %.not.unshifted.i11.i150, -1 ; 2 uses
  %spec.select.i13.i152 = call i64 @llvm.abs.i64(i64 %i.ht, i1 true) ; 2 uses
  %i.hv = lshr i64 %spec.select.i13.i152, 32      ; 2 uses
  %i.hw = and i64 %spec.select.i13.i152, 4294967295 ; 2 uses
  %.024.i14.i153 = call i64 @llvm.abs.i64(i64 %i.hu, i1 true) ; 2 uses
  %i.hx = lshr i64 %.024.i14.i153, 32             ; 2 uses
  %i.hy = and i64 %.024.i14.i153, 4294967295      ; 2 uses
  %i.hz = mul nuw nsw i64 %i.hx, %i.hv
  %i.ia = mul nuw i64 %i.hy, %i.hw                ; 2 uses
  %i.ib = mul nuw nsw i64 %i.hy, %i.hv
  %i.ic = mul nuw nsw i64 %i.hx, %i.hw
  %i.id = add nuw i64 %i.ib, %i.ic                ; 2 uses
  %i.ie = lshr i64 %i.id, 32
  %i.if = add nuw nsw i64 %i.ie, %i.hz
  %i.ig = shl i64 %i.id, 32
  %i.ih = add i64 %i.ig, %i.ia                    ; 4 uses
  %i.ii = icmp ult i64 %i.ih, %i.ia
  %i.ij = zext i1 %i.ii to i64
  %spec.select20.i154 = add nuw nsw i64 %i.if, %i.ij ; 2 uses
  %44 = icmp ne i64 %i.ih, 0
  %45 = sub i64 0, %i.ih
  %46 = sext i1 %44 to i64
  %.sink.i.i15.i155 = sub nsw i64 %46, %spec.select20.i154
  %.sroa.5.1.i156 = select i1 %.not.i12.i151, i64 %spec.select20.i154, i64 %.sink.i.i15.i155
  %.sroa.0.0.i157 = select i1 %.not.i12.i151, i64 %i.ih, i64 %45
  %47 = icmp eq i64 %.sroa.518.1.i148, %.sroa.5.1.i156
  %48 = icmp eq i64 %.sroa.017.0.i149, %.sroa.0.0.i157
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %bb.as, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit168

_ZN10ClipperLib11SlopesEqualENS_8IntPointES0_S0_S0_b.exit159: ; preds = %bb.ar
  %i.ik = mul nsw i64 %i.hs, %i.hr
  %i.il = sub nsw i64 %.sroa.010.0.copyload, %.sroa.08.0.copyload
  %i.im = sub nsw i64 %.sroa.27.0.copyload, %.sroa.2.0.copyload171
  %i.in = mul nsw i64 %i.im, %i.il
  %i.io = icmp eq i64 %i.ik, %i.in
  br i1 %i.io, label %bb.as, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit168

bb.as:                                            ; preds = %_ZN10ClipperLib9Int128MulExx.exit.i147, %_ZN10ClipperLib11SlopesEqualENS_8IntPointES0_S0_S0_b.exit159
  %i.ip = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.iq = load i32, ptr %i.ip, align 8
  %.not122 = icmp eq i32 %i.iq, 0
  br i1 %.not122, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit168, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hc, i64 64
  %i.is = load i32, ptr %i.ir, align 8
  %.not123 = icmp eq i32 %i.is, 0
  br i1 %.not123, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit168, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.it = call noundef ptr @_ZN10ClipperLib7Clipper8AddOutPtEPNS_5TEdgeERKNS_8IntPointE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %i.hc, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
  %i.iu = load <2 x i64>, ptr %i.hj, align 8
  %i.iv = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store ptr %.2.ph, ptr %i.iv, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store ptr %i.it, ptr %i.ix, align 8
  store <2 x i64> %i.iu, ptr %i.iw, align 8
  %i.iy = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.iz = load ptr, ptr %i.s, align 8
  %.not.i.i161 = icmp eq ptr %i.iy, %i.iz
  br i1 %.not.i.i161, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store ptr %i.iv, ptr %i.iy, align 8
  %i.ja = load ptr, ptr %i.r, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store ptr %i.jb, ptr %i.r, align 8
  br label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit168

bb.aw:                                            ; preds = %bb.au
  %i.jc = load ptr, ptr %i.q, align 8             ; 4 uses
  %i.jd = ptrtoint ptr %i.iy to i64
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = sub i64 %i.jd, %i.je                    ; 6 uses
  %i.jg = icmp eq i64 %i.jf, 9223372036854775800
  br i1 %i.jg, label %bb.ax, label %_ZNKSt6vectorIPN10ClipperLib4JoinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i162

bb.ax:                                            ; preds = %bb.aw
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIPN10ClipperLib4JoinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i162: ; preds = %bb.aw
  %i.jh = ashr exact i64 %i.jf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i163 = call i64 @llvm.umax.i64(i64 %i.jh, i64 1)
  %i.ji = add nsw i64 %.sroa.speculated.i.i.i.i163, %i.jh ; 2 uses
  %i.jj = icmp ult i64 %i.ji, %i.jh
  %i.jk = call i64 @llvm.umin.i64(i64 %i.ji, i64 1152921504606846975)
  %i.jl = select i1 %i.jj, i64 1152921504606846975, i64 %i.jk ; 3 uses
  %.not.i.i.i.i164 = icmp ne i64 %i.jl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i164)
  %i.jm = shl nuw nsw i64 %i.jl, 3
  %i.jn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jm) #32 ; 4 uses
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 %i.jf ; 2 uses
  store ptr %i.iv, ptr %i.jo, align 8
  %i.jp = icmp sgt i64 %i.jf, 0
  br i1 %i.jp, label %bb.ay, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i165

bb.ay:                                            ; preds = %_ZNKSt6vectorIPN10ClipperLib4JoinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i162
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jn, ptr align 8 %i.jc, i64 %i.jf, i1 false)
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i165

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i165: ; preds = %bb.ay, %_ZNKSt6vectorIPN10ClipperLib4JoinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i162
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %.not.i17.i.i.i166 = icmp eq ptr %i.jc, null
  br i1 %.not.i17.i.i.i166, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i167, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i165
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef %i.jf) #33
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i167

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i167: ; preds = %bb.az, %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i165
  store ptr %i.jn, ptr %i.q, align 8
  store ptr %i.jq, ptr %i.r, align 8
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jl
  store ptr %i.jr, ptr %i.s, align 8
  br label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit168

_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit168: ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i167, %bb.av, %_ZN10ClipperLib9Int128MulExx.exit.i147, %bb.at, %bb.as, %_ZN10ClipperLib11SlopesEqualENS_8IntPointES0_S0_S0_b.exit159, %bb.aq, %bb.ap
  %i.js = load ptr, ptr %i.gw, align 8            ; 3 uses
  %.not124 = icmp eq ptr %i.js, null
  %.not125190 = icmp eq ptr %i.js, %i.aa
  %or.cond = select i1 %.not124, i1 true, i1 %.not125190
  br i1 %or.cond, label %.loopexit, label %.lr.ph192

.lr.ph192:                                        ; preds = %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit168
  %i.jt = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph192, %bb.ba
  %.0191 = phi ptr [ %i.js, %.lr.ph192 ], [ %i.jv, %bb.ba ] ; 2 uses
  call void @_ZN10ClipperLib7Clipper14IntersectEdgesEPNS_5TEdgeES2_RNS_8IntPointE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %i.aa, ptr noundef %.0191, ptr noundef nonnull align 8 dereferenceable(16) %i.jt)
  %i.ju = getelementptr inbounds nuw i8, ptr %.0191, i64 104
  %i.jv = load ptr, ptr %i.ju, align 8            ; 2 uses
  %.not125 = icmp eq ptr %i.jv, %i.aa
  br i1 %.not125, label %.loopexit, label %bb.ba, !llvm.loop !92

.loopexit:                                        ; preds = %bb.ba, %.thread183, %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit139, %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit168, %bb.r
  %i.jw = load ptr, ptr %0, align 8
  %i.jx = getelementptr i8, ptr %i.jw, i64 -24
  %i.jy = load i64, ptr %i.jx, align 8
  %i.jz = getelementptr inbounds i8, ptr %0, i64 %i.jy ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = load ptr, ptr %i.ka, align 8            ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.kc
  br i1 %i.ke, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib7Clipper18ProcessHorizontalsEv(ptr noundef nonnull align 8 dereferenceable(135) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.not3 = icmp eq ptr %i.b, null
  br i1 %.not.i.not3, label %_ZN10ClipperLib7Clipper14PopEdgeFromSELERPNS_5TEdgeE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %i.c = phi ptr [ %i.j, %bb.f ], [ %i.b, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %.not4.i = icmp eq ptr %i.e, null
  %.not5.i = icmp eq ptr %i.g, null
  br i1 %.not4.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store ptr %i.g, ptr %i.h, align 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  store ptr %i.g, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %.not5.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store ptr %i.e, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  tail call void @_ZN10ClipperLib7Clipper17ProcessHorizontalEPNS_5TEdgeE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %i.c)
  %i.j = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.not = icmp eq ptr %i.j, null
  br i1 %.not.i.not, label %_ZN10ClipperLib7Clipper14PopEdgeFromSELERPNS_5TEdgeE.exit, label %.lr.ph, !llvm.loop !83

_ZN10ClipperLib7Clipper14PopEdgeFromSELERPNS_5TEdgeE.exit: ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10ClipperLib7Clipper15ClearGhostJoinsEv(ptr noundef nonnull align 8 captures(none) dereferenceable(135) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE6resizeEm.exit, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  %i.e = icmp eq ptr %i.l, %i.k
  br i1 %i.e, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPPN10ClipperLib4JoinES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN10ClipperLib4JoinES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %i.k, ptr %i.b, align 8
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE6resizeEm.exit

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE6resizeEm.exit: ; preds = %bb.a, %._crit_edge, %_ZSt8_DestroyIPPN10ClipperLib4JoinES2_EvT_S4_RSaIT0_E.exit.i.i
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.f = phi ptr [ %i.k, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = phi ptr [ %i.l, %bb.c ], [ %i.c, %bb.a ]
  %.06 = phi i64 [ %i.m, %bb.c ], [ 0, %bb.a ]    ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.06
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 32) #33
  %.pre = load ptr, ptr %i.b, align 8
  %.pre10 = load ptr, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %i.f, %.lr.ph ], [ %.pre10, %bb.b ] ; 4 uses
  %i.l = phi ptr [ %i.g, %.lr.ph ], [ %.pre, %bb.b ] ; 3 uses
  %i.m = add nuw i64 %.06, 1                      ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = icmp ult i64 %i.m, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !84
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10ClipperLib7Clipper20ProcessIntersectionsEx(ptr noundef nonnull align 8 captures(none) dereferenceable(135) %0, i64 noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load ptr, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN10ClipperLib7Clipper18BuildIntersectListEx(ptr noundef nonnull align 8 dereferenceable(135) %0, i64 noundef %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  switch i64 %i.n, label %bb.e [
    i64 0, label %.thread
    i64 1, label %bb.g
  ]

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.p = invoke noundef zeroext i1 @_ZN10ClipperLib7Clipper22FixupIntersectionOrderEv(ptr noundef nonnull align 8 dereferenceable(135) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %i.p, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.c, %bb.f
  invoke void @_ZN10ClipperLib7Clipper20ProcessIntersectListEv(ptr noundef nonnull align 8 dereferenceable(135) %0)
          to label %bb.n unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.o, %bb.d ]
  %.010 = extractvalue { ptr, i32 } %.pn, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %.010) #30 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.s, align 8
  tail call void @_ZN10ClipperLib7Clipper21DisposeIntersectNodesEv(ptr noundef nonnull align 8 dereferenceable(135) %0)
  %i.t = tail call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  invoke void @_ZN10ClipperLib16clipperExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull @.str.4)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTIN10ClipperLib16clipperExceptionE, ptr nonnull @_ZN10ClipperLib16clipperExceptionD2Ev) #31
          to label %bb.q unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.i
end_hunk_2
begin_hunk_3_@_ZN10ClipperLib7Clipper27ProcessEdgesAtTopOfScanbeamEx:bb.a
  %i.eq = icmp sgt i64 %i.eg, 0
  br i1 %i.eq, label %bb.ac, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.ac:                                            ; preds = %_ZNKSt6vectorIPN10ClipperLib4JoinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eo, ptr align 8 %i.ed, i64 %i.eg, i1 false)
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.ac, %_ZNKSt6vectorIPN10ClipperLib4JoinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.eg) #33
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.ad, %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.eo, ptr %i.h, align 8
  store ptr %i.er, ptr %i.i, align 8
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.em
  store ptr %i.es, ptr %i.j, align 8
  br label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit

_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit: ; preds = %bb.z, %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.pre159 = load ptr, ptr %i.a, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN10ClipperLib7Clipper12AddEdgeToSELEPNS_5TEdgeE.exit, %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.l, %bb.k
  %.pn88.pn = phi ptr [ %i.bj, %bb.k ], [ %i.bn, %bb.l ], [ %i.cx, %bb.t ], [ %i.cx, %bb.u ], [ %i.cx, %bb.v ], [ %i.cx, %bb.w ], [ %i.cx, %bb.x ], [ %.pre159, %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit ], [ %i.cx, %_ZN10ClipperLib7Clipper12AddEdgeToSELEPNS_5TEdgeE.exit ]
  %storemerge90.in = getelementptr inbounds nuw i8, ptr %.pn88.pn, i64 104
  %storemerge90 = load ptr, ptr %storemerge90.in, align 8 ; 3 uses
  store ptr %storemerge90, ptr %i.a, align 8
  %.not = icmp eq ptr %storemerge90, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !93

._crit_edge:                                      ; preds = %bb.ae, %bb.a
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 7 uses
  tail call void @_ZNSt7__cxx114listIxSaIxEE4sortEv(ptr noundef nonnull align 8 dereferenceable(24) %i.et)
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8            ; 2 uses
  %.not.i.not3.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.not3.i, label %_ZN10ClipperLib7Clipper18ProcessHorizontalsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.aj
  %i.ew = phi ptr [ %i.fd, %bb.aj ], [ %i.ev, %._crit_edge ] ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 128
  %i.ey = load ptr, ptr %i.ex, align 8            ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 120 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8            ; 4 uses
  %.not4.i.i = icmp eq ptr %i.ey, null
  %.not5.i.i = icmp eq ptr %i.fa, null
  br i1 %.not4.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 120
  store ptr %i.fa, ptr %i.fb, align 8
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i
  store ptr %i.fa, ptr %i.eu, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br i1 %.not5.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 128
  store ptr %i.ey, ptr %i.fc, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i8 0, i64 16, i1 false)
  tail call void @_ZN10ClipperLib7Clipper17ProcessHorizontalEPNS_5TEdgeE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %i.ew)
  %i.fd = load ptr, ptr %i.eu, align 8            ; 2 uses
  %.not.i.not.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.not.i, label %_ZN10ClipperLib7Clipper18ProcessHorizontalsEv.exit, label %.lr.ph.i, !llvm.loop !83

_ZN10ClipperLib7Clipper18ProcessHorizontalsEv.exit: ; preds = %bb.aj, %._crit_edge
  %i.fe = load ptr, ptr %i.et, align 8            ; 2 uses
  %.not8.i.i = icmp eq ptr %i.fe, %i.et
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listIxSaIxEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN10ClipperLib7Clipper18ProcessHorizontalsEv.exit, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.ff, %.lr.ph.i.i ], [ %i.fe, %_ZN10ClipperLib7Clipper18ProcessHorizontalsEv.exit ] ; 2 uses
  %i.ff = load ptr, ptr %.09.i.i, align 8         ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #33
  %.not.i.i93 = icmp eq ptr %i.ff, %i.et
  br i1 %.not.i.i93, label %_ZNSt7__cxx114listIxSaIxEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !82

_ZNSt7__cxx114listIxSaIxEE5clearEv.exit:          ; preds = %.lr.ph.i.i, %_ZN10ClipperLib7Clipper18ProcessHorizontalsEv.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.et, ptr %i.fg, align 8
  store ptr %i.et, ptr %i.et, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.fh, align 8
  %i.fi = load ptr, ptr %0, align 8
  %i.fj = getelementptr i8, ptr %i.fi, i64 -24
  %i.fk = load i64, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds i8, ptr %0, i64 %i.fk
  %storemerge.in153 = getelementptr inbounds nuw i8, ptr %i.fl, i64 104
  %storemerge154 = load ptr, ptr %storemerge.in153, align 8 ; 3 uses
  store ptr %storemerge154, ptr %i.a, align 8
  %.not77155 = icmp eq ptr %storemerge154, null
  br i1 %.not77155, label %._crit_edge158, label %.lr.ph157

.lr.ph157:                                        ; preds = %_ZNSt7__cxx114listIxSaIxEE5clearEv.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph157, %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit105
  %storemerge156 = phi ptr [ %storemerge154, %.lr.ph157 ], [ %storemerge, %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit105 ] ; 7 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %storemerge156, i64 40
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = icmp eq i64 %i.fq, %1
  br i1 %i.fr, label %_ZN10ClipperLib14IsIntermediateEPNS_5TEdgeEx.exit94, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit105

_ZN10ClipperLib14IsIntermediateEPNS_5TEdgeEx.exit94: ; preds = %bb.ak
  %i.fs = getelementptr inbounds nuw i8, ptr %storemerge156, i64 96
  %i.ft = load ptr, ptr %i.fs, align 8
  %.not148 = icmp eq ptr %i.ft, null
  br i1 %.not148, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit105, label %bb.al

bb.al:                                            ; preds = %_ZN10ClipperLib14IsIntermediateEPNS_5TEdgeEx.exit94
  %i.fu = getelementptr inbounds nuw i8, ptr %storemerge156, i64 76
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = icmp sgt i32 %i.fv, -1
  br i1 %i.fw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fx = getelementptr inbounds nuw i8, ptr %storemerge156, i64 32
  %i.fy = tail call noundef ptr @_ZN10ClipperLib7Clipper8AddOutPtEPNS_5TEdgeERKNS_8IntPointE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %storemerge156, ptr noundef nonnull align 8 dereferenceable(16) %i.fx)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.065 = phi ptr [ %i.fy, %bb.am ], [ null, %bb.al ] ; 4 uses
  %i.fz = load ptr, ptr %0, align 8
  %i.ga = getelementptr i8, ptr %i.fz, i64 -24
  %i.gb = load i64, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds i8, ptr %0, i64 %i.gb
  call void @_ZN10ClipperLib11ClipperBase17UpdateEdgeIntoAELERPNS_5TEdgeE(ptr noundef nonnull align 8 dereferenceable(144) %i.gc, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.gd = load ptr, ptr %i.a, align 8             ; 31 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 112
  %i.gf = load ptr, ptr %i.ge, align 8            ; 8 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 104
  %i.gh = load ptr, ptr %i.gg, align 8            ; 8 uses
  %.not78 = icmp eq ptr %i.gf, null
  br i1 %.not78, label %bb.bb, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gj = load i64, ptr %i.gi, align 8            ; 2 uses
  %i.gk = load i64, ptr %i.gd, align 8
  %i.gl = icmp eq i64 %i.gj, %i.gk
  br i1 %i.gl, label %bb.ap, label %bb.bb

bb.ap:                                            ; preds = %bb.ao
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gn = load i64, ptr %i.gm, align 8            ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gp = load i64, ptr %i.go, align 8
  %i.gq = icmp eq i64 %i.gn, %i.gp
  %i.gr = icmp ne ptr %.065, null
  %or.cond3 = and i1 %i.gr, %i.gq
  br i1 %or.cond3, label %bb.aq, label %bb.bb

bb.aq:                                            ; preds = %bb.ap
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gf, i64 76
  %i.gt = load i32, ptr %i.gs, align 4
  %i.gu = icmp sgt i32 %i.gt, -1
  br i1 %i.gu, label %bb.ar, label %bb.bb

bb.ar:                                            ; preds = %bb.aq
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  %i.gw = load i64, ptr %i.gv, align 8            ; 3 uses
  %i.gx = icmp sgt i64 %i.gn, %i.gw
  br i1 %i.gx, label %bb.as, label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %.sroa.019.0.copyload = load i64, ptr %i.gz, align 8 ; 2 uses
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %.sroa.220.0.copyload = load i64, ptr %.sroa.220.0..sroa_idx, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gd, i64 32 ; 2 uses
  %.sroa.017.0.copyload = load i64, ptr %i.ha, align 8 ; 2 uses
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %.sroa.218.0.copyload = load i64, ptr %.sroa.218.0..sroa_idx, align 8
  %.sroa.0139.0.copyload = load i64, ptr %i.gy, align 8
  %i.hb = load ptr, ptr %0, align 8
  %i.hc = getelementptr i8, ptr %i.hb, i64 -24
  %i.hd = load i64, ptr %i.hc, align 8
  %i.he = getelementptr inbounds i8, ptr %0, i64 %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 40
  %i.hg = load i8, ptr %i.hf, align 8, !range !6, !noundef !7
  %i.hh = trunc nuw i8 %i.hg to i1
  %i.hi = sub nsw i64 %.sroa.220.0.copyload, %.sroa.218.0.copyload ; 3 uses
  %i.hj = sub nsw i64 %i.gj, %.sroa.0139.0.copyload ; 3 uses
  br i1 %i.hh, label %_ZN10ClipperLib9Int128MulExx.exit.i, label %_ZN10ClipperLib11SlopesEqualENS_8IntPointES0_S0_S0_b.exit

_ZN10ClipperLib9Int128MulExx.exit.i:              ; preds = %bb.as
  %.not.unshifted.i.i = xor i64 %i.hj, %i.hi
  %.not.i.i96 = icmp sgt i64 %.not.unshifted.i.i, -1 ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.abs.i64(i64 %i.hi, i1 true) ; 2 uses
  %3 = lshr i64 %spec.select.i.i, 32              ; 2 uses
  %4 = and i64 %spec.select.i.i, 4294967295       ; 2 uses
  %.024.i.i = tail call i64 @llvm.abs.i64(i64 %i.hj, i1 true) ; 2 uses
  %5 = lshr i64 %.024.i.i, 32                     ; 2 uses
  %6 = and i64 %.024.i.i, 4294967295              ; 2 uses
  %7 = mul nuw nsw i64 %5, %3
  %8 = mul nuw i64 %6, %4                         ; 2 uses
  %9 = mul nuw nsw i64 %6, %3
  %10 = mul nuw nsw i64 %5, %4
  %11 = add nuw i64 %9, %10                       ; 2 uses
  %12 = lshr i64 %11, 32
  %13 = add nuw nsw i64 %12, %7
  %14 = shl i64 %11, 32
  %15 = add i64 %14, %8                           ; 4 uses
  %16 = icmp ult i64 %15, %8
  %17 = zext i1 %16 to i64
  %spec.select.i = add nuw nsw i64 %13, %17       ; 2 uses
  %18 = icmp ne i64 %15, 0
  %19 = sub i64 0, %15
  %20 = sext i1 %18 to i64
  %.sink.i.i.i = sub nsw i64 %20, %spec.select.i
  %.sroa.518.1.i = select i1 %.not.i.i96, i64 %spec.select.i, i64 %.sink.i.i.i
  %.sroa.017.0.i = select i1 %.not.i.i96, i64 %15, i64 %19
  %i.hk = sub nsw i64 %.sroa.019.0.copyload, %.sroa.017.0.copyload ; 2 uses
  %i.hl = sub nsw i64 %i.gn, %i.gw                ; 2 uses
  %.not.unshifted.i11.i = xor i64 %i.hl, %i.hk
  %.not.i12.i = icmp sgt i64 %.not.unshifted.i11.i, -1 ; 2 uses
  %spec.select.i13.i = tail call i64 @llvm.abs.i64(i64 %i.hk, i1 true) ; 2 uses
  %i.hm = lshr i64 %spec.select.i13.i, 32         ; 2 uses
  %i.hn = and i64 %spec.select.i13.i, 4294967295  ; 2 uses
  %.024.i14.i = tail call i64 @llvm.abs.i64(i64 %i.hl, i1 true) ; 2 uses
  %i.ho = lshr i64 %.024.i14.i, 32                ; 2 uses
  %i.hp = and i64 %.024.i14.i, 4294967295         ; 2 uses
  %i.hq = mul nuw nsw i64 %i.ho, %i.hm
  %i.hr = mul nuw i64 %i.hp, %i.hn                ; 2 uses
  %i.hs = mul nuw nsw i64 %i.hp, %i.hm
  %i.ht = mul nuw nsw i64 %i.ho, %i.hn
  %i.hu = add nuw i64 %i.hs, %i.ht                ; 2 uses
  %i.hv = lshr i64 %i.hu, 32
  %i.hw = add nuw nsw i64 %i.hv, %i.hq
  %i.hx = shl i64 %i.hu, 32
  %i.hy = add i64 %i.hx, %i.hr                    ; 4 uses
  %i.hz = icmp ult i64 %i.hy, %i.hr
  %i.ia = zext i1 %i.hz to i64
  %spec.select20.i = add nuw nsw i64 %i.hw, %i.ia ; 2 uses
  %21 = icmp ne i64 %i.hy, 0
  %22 = sub i64 0, %i.hy
  %23 = sext i1 %21 to i64
  %.sink.i.i15.i = sub nsw i64 %23, %spec.select20.i
  %.sroa.5.1.i = select i1 %.not.i12.i, i64 %spec.select20.i, i64 %.sink.i.i15.i
  %.sroa.0.0.i = select i1 %.not.i12.i, i64 %i.hy, i64 %22
  %24 = icmp eq i64 %.sroa.518.1.i, %.sroa.5.1.i
  %25 = icmp eq i64 %.sroa.017.0.i, %.sroa.0.0.i
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %bb.at, label %bb.bb

_ZN10ClipperLib11SlopesEqualENS_8IntPointES0_S0_S0_b.exit: ; preds = %bb.as
  %i.ib = mul nsw i64 %i.hj, %i.hi
  %i.ic = sub nsw i64 %.sroa.019.0.copyload, %.sroa.017.0.copyload
  %i.id = sub nsw i64 %i.gn, %i.gw
  %i.ie = mul nsw i64 %i.id, %i.ic
  %i.if = icmp eq i64 %i.ib, %i.ie
  br i1 %i.if, label %bb.at, label %bb.bb

bb.at:                                            ; preds = %_ZN10ClipperLib9Int128MulExx.exit.i, %_ZN10ClipperLib11SlopesEqualENS_8IntPointES0_S0_S0_b.exit
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gd, i64 64
  %i.ih = load i32, ptr %i.ig, align 8
  %.not79 = icmp eq i32 %i.ih, 0
  br i1 %.not79, label %bb.bb, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gf, i64 64
  %i.ij = load i32, ptr %i.ii, align 8
  %.not80 = icmp eq i32 %i.ij, 0
  br i1 %.not80, label %bb.bb, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ik = tail call noundef ptr @_ZN10ClipperLib7Clipper8AddOutPtEPNS_5TEdgeERKNS_8IntPointE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %i.gf, ptr noundef nonnull align 8 dereferenceable(16) %i.gd)
  %i.il = load <2 x i64>, ptr %i.ha, align 8
  %i.im = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 5 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store ptr %.065, ptr %i.im, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store ptr %i.ik, ptr %i.io, align 8
  store <2 x i64> %i.il, ptr %i.in, align 8
  %i.ip = load ptr, ptr %i.fn, align 8            ; 3 uses
  %i.iq = load ptr, ptr %i.fo, align 8
  %.not.i.i98 = icmp eq ptr %i.ip, %i.iq
  br i1 %.not.i.i98, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store ptr %i.im, ptr %i.ip, align 8
  %i.ir = load ptr, ptr %i.fn, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store ptr %i.is, ptr %i.fn, align 8
  br label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit105

bb.ax:                                            ; preds = %bb.av
  %i.it = load ptr, ptr %i.fm, align 8            ; 4 uses
  %i.iu = ptrtoint ptr %i.ip to i64
  %i.iv = ptrtoint ptr %i.it to i64
  %i.iw = sub i64 %i.iu, %i.iv                    ; 6 uses
  %i.ix = icmp eq i64 %i.iw, 9223372036854775800
  br i1 %i.ix, label %bb.ay, label %_ZNKSt6vectorIPN10ClipperLib4JoinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i99

bb.ay:                                            ; preds = %bb.ax
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIPN10ClipperLib4JoinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i99: ; preds = %bb.ax
  %i.iy = ashr exact i64 %i.iw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i100 = tail call i64 @llvm.umax.i64(i64 %i.iy, i64 1)
  %i.iz = add nsw i64 %.sroa.speculated.i.i.i.i100, %i.iy ; 2 uses
  %i.ja = icmp ult i64 %i.iz, %i.iy
  %i.jb = tail call i64 @llvm.umin.i64(i64 %i.iz, i64 1152921504606846975)
  %i.jc = select i1 %i.ja, i64 1152921504606846975, i64 %i.jb ; 3 uses
  %.not.i.i.i.i101 = icmp ne i64 %i.jc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i101)
  %i.jd = shl nuw nsw i64 %i.jc, 3
  %i.je = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jd) #32 ; 4 uses
  %i.jf = getelementptr inbounds i8, ptr %i.je, i64 %i.iw ; 2 uses
  store ptr %i.im, ptr %i.jf, align 8
  %i.jg = icmp sgt i64 %i.iw, 0
  br i1 %i.jg, label %bb.az, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i102

bb.az:                                            ; preds = %_ZNKSt6vectorIPN10ClipperLib4JoinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i99
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.je, ptr align 8 %i.it, i64 %i.iw, i1 false)
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i102

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i102: ; preds = %bb.az, %_ZNKSt6vectorIPN10ClipperLib4JoinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i99
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %.not.i17.i.i.i103 = icmp eq ptr %i.it, null
  br i1 %.not.i17.i.i.i103, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i104, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i102
  tail call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef %i.iw) #33
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i104

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i104: ; preds = %bb.ba, %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i102
  store ptr %i.je, ptr %i.fm, align 8
  store ptr %i.jh, ptr %i.fn, align 8
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.jc
  store ptr %i.ji, ptr %i.fo, align 8
  br label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit105

bb.bb:                                            ; preds = %_ZN10ClipperLib9Int128MulExx.exit.i, %bb.au, %bb.at, %_ZN10ClipperLib11SlopesEqualENS_8IntPointES0_S0_S0_b.exit, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an
  %.not81 = icmp eq ptr %i.gh, null
  br i1 %.not81, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit105, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.jk = load i64, ptr %i.jj, align 8            ; 2 uses
  %i.jl = load i64, ptr %i.gd, align 8
  %i.jm = icmp eq i64 %i.jk, %i.jl
  br i1 %i.jm, label %bb.bd, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit105

bb.bd:                                            ; preds = %bb.bc
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.jo = load i64, ptr %i.jn, align 8            ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.jq = load i64, ptr %i.jp, align 8
  %i.jr = icmp eq i64 %i.jo, %i.jq
  %i.js = icmp ne ptr %.065, null
  %or.cond5 = and i1 %i.js, %i.jr
  br i1 %or.cond5, label %bb.be, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit105

bb.be:                                            ; preds = %bb.bd
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gh, i64 76
  %i.ju = load i32, ptr %i.jt, align 4
  %i.jv = icmp sgt i32 %i.ju, -1
  br i1 %i.jv, label %bb.bf, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit105

bb.bf:                                            ; preds = %bb.be
  %i.jw = getelementptr inbounds nuw i8, ptr %i.gh, i64 40
  %i.jx = load i64, ptr %i.jw, align 8            ; 3 uses
  %i.jy = icmp sgt i64 %i.jo, %i.jx
  br i1 %i.jy, label %bb.bg, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit105

bb.bg:                                            ; preds = %bb.bf
  %i.jz = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.ka = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %.sroa.010.0.copyload = load i64, ptr %i.ka, align 8 ; 2 uses
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %.sroa.211.0.copyload = load i64, ptr %.sroa.211.0..sroa_idx, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.gd, i64 32 ; 2 uses
  %.sroa.08.0.copyload = load i64, ptr %i.kb, align 8 ; 2 uses
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %.sroa.29.0.copyload = load i64, ptr %.sroa.29.0..sroa_idx, align 8
  %.sroa.0.0.copyload135 = load i64, ptr %i.jz, align 8
  %i.kc = load ptr, ptr %0, align 8
  %i.kd = getelementptr i8, ptr %i.kc, i64 -24
  %i.ke = load i64, ptr %i.kd, align 8
  %i.kf = getelementptr inbounds i8, ptr %0, i64 %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 40
  %i.kh = load i8, ptr %i.kg, align 8, !range !6, !noundef !7
  %i.ki = trunc nuw i8 %i.kh to i1
  %i.kj = sub nsw i64 %.sroa.211.0.copyload, %.sroa.29.0.copyload ; 3 uses
  %i.kk = sub nsw i64 %i.jk, %.sroa.0.0.copyload135 ; 3 uses
  br i1 %i.ki, label %_ZN10ClipperLib9Int128MulExx.exit.i113, label %_ZN10ClipperLib11SlopesEqualENS_8IntPointES0_S0_S0_b.exit125

_ZN10ClipperLib9Int128MulExx.exit.i113:           ; preds = %bb.bg
  %.not.unshifted.i.i108 = xor i64 %i.kk, %i.kj
  %.not.i.i109 = icmp sgt i64 %.not.unshifted.i.i108, -1 ; 2 uses
  %spec.select.i.i110 = tail call i64 @llvm.abs.i64(i64 %i.kj, i1 true) ; 2 uses
  %27 = lshr i64 %spec.select.i.i110, 32          ; 2 uses
  %28 = and i64 %spec.select.i.i110, 4294967295   ; 2 uses
  %.024.i.i111 = tail call i64 @llvm.abs.i64(i64 %i.kk, i1 true) ; 2 uses
  %29 = lshr i64 %.024.i.i111, 32                 ; 2 uses
  %30 = and i64 %.024.i.i111, 4294967295          ; 2 uses
  %31 = mul nuw nsw i64 %29, %27
  %32 = mul nuw i64 %30, %28                      ; 2 uses
  %33 = mul nuw nsw i64 %30, %27
  %34 = mul nuw nsw i64 %29, %28
  %35 = add nuw i64 %33, %34                      ; 2 uses
  %36 = lshr i64 %35, 32
  %37 = add nuw nsw i64 %36, %31
  %38 = shl i64 %35, 32
  %39 = add i64 %38, %32                          ; 4 uses
  %40 = icmp ult i64 %39, %32
  %41 = zext i1 %40 to i64
  %spec.select.i112 = add nuw nsw i64 %37, %41    ; 2 uses
  %42 = icmp ne i64 %39, 0
  %43 = sub i64 0, %39
  %44 = sext i1 %42 to i64
  %.sink.i.i.i113 = sub nsw i64 %44, %spec.select.i112
  %.sroa.518.1.i114 = select i1 %.not.i.i109, i64 %spec.select.i112, i64 %.sink.i.i.i113
  %.sroa.017.0.i115 = select i1 %.not.i.i109, i64 %39, i64 %43
  %i.kl = sub nsw i64 %.sroa.010.0.copyload, %.sroa.08.0.copyload ; 2 uses
  %i.km = sub nsw i64 %i.jo, %i.jx                ; 2 uses
  %.not.unshifted.i11.i116 = xor i64 %i.km, %i.kl
  %.not.i12.i117 = icmp sgt i64 %.not.unshifted.i11.i116, -1 ; 2 uses
  %spec.select.i13.i118 = tail call i64 @llvm.abs.i64(i64 %i.kl, i1 true) ; 2 uses
  %i.kn = lshr i64 %spec.select.i13.i118, 32      ; 2 uses
  %i.ko = and i64 %spec.select.i13.i118, 4294967295 ; 2 uses
  %.024.i14.i119 = tail call i64 @llvm.abs.i64(i64 %i.km, i1 true) ; 2 uses
  %i.kp = lshr i64 %.024.i14.i119, 32             ; 2 uses
  %i.kq = and i64 %.024.i14.i119, 4294967295      ; 2 uses
  %i.kr = mul nuw nsw i64 %i.kp, %i.kn
  %i.ks = mul nuw i64 %i.kq, %i.ko                ; 2 uses
  %i.kt = mul nuw nsw i64 %i.kq, %i.kn
  %i.ku = mul nuw nsw i64 %i.kp, %i.ko
  %i.kv = add nuw i64 %i.kt, %i.ku                ; 2 uses
  %i.kw = lshr i64 %i.kv, 32
  %i.kx = add nuw nsw i64 %i.kw, %i.kr
  %i.ky = shl i64 %i.kv, 32
  %i.kz = add i64 %i.ky, %i.ks                    ; 4 uses
  %i.la = icmp ult i64 %i.kz, %i.ks
  %i.lb = zext i1 %i.la to i64
  %spec.select20.i120 = add nuw nsw i64 %i.kx, %i.lb ; 2 uses
  %45 = icmp ne i64 %i.kz, 0
  %46 = sub i64 0, %i.kz
  %47 = sext i1 %45 to i64
  %.sink.i.i15.i121 = sub nsw i64 %47, %spec.select20.i120
  %.sroa.5.1.i122 = select i1 %.not.i12.i117, i64 %spec.select20.i120, i64 %.sink.i.i15.i121
  %.sroa.0.0.i123 = select i1 %.not.i12.i117, i64 %i.kz, i64 %46
  %48 = icmp eq i64 %.sroa.518.1.i114, %.sroa.5.1.i122
  %49 = icmp eq i64 %.sroa.017.0.i115, %.sroa.0.0.i123
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %bb.bh, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit105

_ZN10ClipperLib11SlopesEqualENS_8IntPointES0_S0_S0_b.exit125: ; preds = %bb.bg
  %i.lc = mul nsw i64 %i.kk, %i.kj
  %i.ld = sub nsw i64 %.sroa.010.0.copyload, %.sroa.08.0.copyload
  %i.le = sub nsw i64 %i.jo, %i.jx
  %i.lf = mul nsw i64 %i.le, %i.ld
  %i.lg = icmp eq i64 %i.lc, %i.lf
  br i1 %i.lg, label %bb.bh, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit105

bb.bh:                                            ; preds = %_ZN10ClipperLib9Int128MulExx.exit.i113, %_ZN10ClipperLib11SlopesEqualENS_8IntPointES0_S0_S0_b.exit125
  %i.lh = getelementptr inbounds nuw i8, ptr %i.gd, i64 64
  %i.li = load i32, ptr %i.lh, align 8
  %.not82 = icmp eq i32 %i.li, 0
  br i1 %.not82, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit105, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lj = getelementptr inbounds nuw i8, ptr %i.gh, i64 64
  %i.lk = load i32, ptr %i.lj, align 8
  %.not83 = icmp eq i32 %i.lk, 0
  br i1 %.not83, label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit105, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ll = tail call noundef ptr @_ZN10ClipperLib7Clipper8AddOutPtEPNS_5TEdgeERKNS_8IntPointE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %i.gh, ptr noundef nonnull align 8 dereferenceable(16) %i.gd)
  %i.lm = load <2 x i64>, ptr %i.kb, align 8
  %i.ln = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 5 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  store ptr %.065, ptr %i.ln, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  store ptr %i.ll, ptr %i.lp, align 8
  store <2 x i64> %i.lm, ptr %i.lo, align 8
  %i.lq = load ptr, ptr %i.fn, align 8            ; 3 uses
  %i.lr = load ptr, ptr %i.fo, align 8
  %.not.i.i127 = icmp eq ptr %i.lq, %i.lr
  br i1 %.not.i.i127, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store ptr %i.ln, ptr %i.lq, align 8
  %i.ls = load ptr, ptr %i.fn, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store ptr %i.lt, ptr %i.fn, align 8
  br label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit105

bb.bl:                                            ; preds = %bb.bj
  %i.lu = load ptr, ptr %i.fm, align 8            ; 4 uses
  %i.lv = ptrtoint ptr %i.lq to i64
  %i.lw = ptrtoint ptr %i.lu to i64
  %i.lx = sub i64 %i.lv, %i.lw                    ; 6 uses
  %i.ly = icmp eq i64 %i.lx, 9223372036854775800
  br i1 %i.ly, label %bb.bm, label %_ZNKSt6vectorIPN10ClipperLib4JoinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i128

bb.bm:                                            ; preds = %bb.bl
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIPN10ClipperLib4JoinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i128: ; preds = %bb.bl
  %i.lz = ashr exact i64 %i.lx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i129 = tail call i64 @llvm.umax.i64(i64 %i.lz, i64 1)
  %i.ma = add nsw i64 %.sroa.speculated.i.i.i.i129, %i.lz ; 2 uses
  %i.mb = icmp ult i64 %i.ma, %i.lz
  %i.mc = tail call i64 @llvm.umin.i64(i64 %i.ma, i64 1152921504606846975)
  %i.md = select i1 %i.mb, i64 1152921504606846975, i64 %i.mc ; 3 uses
  %.not.i.i.i.i130 = icmp ne i64 %i.md, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i130)
  %i.me = shl nuw nsw i64 %i.md, 3
  %i.mf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.me) #32 ; 4 uses
  %i.mg = getelementptr inbounds i8, ptr %i.mf, i64 %i.lx ; 2 uses
  store ptr %i.ln, ptr %i.mg, align 8
  %i.mh = icmp sgt i64 %i.lx, 0
  br i1 %i.mh, label %bb.bn, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i131

bb.bn:                                            ; preds = %_ZNKSt6vectorIPN10ClipperLib4JoinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i128
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mf, ptr align 8 %i.lu, i64 %i.lx, i1 false)
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i131

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i131: ; preds = %bb.bn, %_ZNKSt6vectorIPN10ClipperLib4JoinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i128
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %.not.i17.i.i.i132 = icmp eq ptr %i.lu, null
  br i1 %.not.i17.i.i.i132, label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i133, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i131
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef %i.lx) #33
  br label %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i133

_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i133: ; preds = %bb.bo, %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i131
  store ptr %i.mf, ptr %i.fm, align 8
  store ptr %i.mi, ptr %i.fn, align 8
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %i.md
  store ptr %i.mj, ptr %i.fo, align 8
  br label %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit105

_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit105: ; preds = %bb.ak, %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i133, %bb.bk, %_ZN10ClipperLib9Int128MulExx.exit.i113, %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i104, %bb.aw, %bb.bi, %bb.bh, %_ZN10ClipperLib11SlopesEqualENS_8IntPointES0_S0_S0_b.exit125, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %_ZN10ClipperLib14IsIntermediateEPNS_5TEdgeEx.exit94
  %i.mk = phi ptr [ %storemerge156, %bb.ak ], [ %i.gd, %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i133 ], [ %i.gd, %bb.bk ], [ %i.gd, %_ZN10ClipperLib9Int128MulExx.exit.i113 ], [ %i.gd, %_ZNSt6vectorIPN10ClipperLib4JoinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i104 ], [ %i.gd, %bb.aw ], [ %i.gd, %bb.bi ], [ %i.gd, %bb.bh ], [ %i.gd, %_ZN10ClipperLib11SlopesEqualENS_8IntPointES0_S0_S0_b.exit125 ], [ %i.gd, %bb.bf ], [ %i.gd, %bb.be ], [ %i.gd, %bb.bd ], [ %i.gd, %bb.bc ], [ %i.gd, %bb.bb ], [ %storemerge156, %_ZN10ClipperLib14IsIntermediateEPNS_5TEdgeEx.exit94 ]
  %storemerge.in = getelementptr inbounds nuw i8, ptr %i.mk, i64 104
  %storemerge = load ptr, ptr %storemerge.in, align 8 ; 3 uses
  store ptr %storemerge, ptr %i.a, align 8
  %.not77 = icmp eq ptr %storemerge, null
  br i1 %.not77, label %._crit_edge158, label %bb.ak, !llvm.loop !94

._crit_edge158:                                   ; preds = %_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE.exit105, %_ZNSt7__cxx114listIxSaIxEE5clearEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib7Clipper15JoinCommonEdgesEv(ptr noundef nonnull align 8 captures(none) dereferenceable(135) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not140 = icmp eq ptr %i.c, %i.d
  br i1 %.not140, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 133 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN10ClipperLib18ReversePolyPtLinksEPNS_5OutPtE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN10ClipperLib18ReversePolyPtLinksEPNS_5OutPtE.exit
  %i.g = phi ptr [ %i.d, %.lr.ph ], [ %i.gv, %_ZN10ClipperLib18ReversePolyPtLinksEPNS_5OutPtE.exit ]
  %.077139 = phi i64 [ 0, %.lr.ph ], [ %i.gt, %_ZN10ClipperLib18ReversePolyPtLinksEPNS_5OutPtE.exit ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.077139
  %i.i = load ptr, ptr %i.h, align 8              ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.q = sext i32 %i.k to i64
  %i.r = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %.0.pre.i = load ptr, ptr %i.s, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi ptr [ %.0.pre.i, %bb.b ], [ %i.w, %bb.c ] ; 26 uses
  %i.t = load i32, ptr %.0.i, align 8
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %i.w
  br i1 %.not.i, label %_ZN10ClipperLib7Clipper9GetOutRecEi.exit, label %bb.c, !llvm.loop !95

_ZN10ClipperLib7Clipper9GetOutRecEi.exit:         ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.aa
  %.0.pre.i82 = load ptr, ptr %i.ab, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN10ClipperLib7Clipper9GetOutRecEi.exit
  %.0.i83 = phi ptr [ %.0.pre.i82, %_ZN10ClipperLib7Clipper9GetOutRecEi.exit ], [ %i.af, %bb.d ] ; 16 uses
  %i.ac = load i32, ptr %.0.i83, align 8
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i84 = icmp eq ptr %.0.i83, %i.af
  br i1 %.not.i84, label %_ZN10ClipperLib7Clipper9GetOutRecEi.exit85, label %bb.d, !llvm.loop !95

_ZN10ClipperLib7Clipper9GetOutRecEi.exit85:       ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %_ZN10ClipperLib18ReversePolyPtLinksEPNS_5OutPtE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN10ClipperLib7Clipper9GetOutRecEi.exit85
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i83, i64 24 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %.not81 = icmp eq ptr %i.aj, null
  br i1 %.not81, label %_ZN10ClipperLib18ReversePolyPtLinksEPNS_5OutPtE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i, i64 5
  %i.al = load i8, ptr %i.ak, align 1, !range !6, !noundef !7
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZN10ClipperLib18ReversePolyPtLinksEPNS_5OutPtE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i83, i64 5
  %i.ao = load i8, ptr %i.an, align 1, !range !6, !noundef !7
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %_ZN10ClipperLib18ReversePolyPtLinksEPNS_5OutPtE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = icmp eq ptr %.0.i, %.0.i83
  br i1 %i.aq, label %.thread, label %.preheader130

.preheader130:                                    ; preds = %bb.h, %.preheader130
  %.05.i = phi ptr [ %i.as, %.preheader130 ], [ %.0.i, %bb.h ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  %i.at = icmp eq ptr %i.as, %.0.i83              ; 2 uses
  %.not.i86 = icmp eq ptr %i.as, null
  %or.cond.i = or i1 %i.at, %.not.i86
  br i1 %or.cond.i, label %_ZN10ClipperLib21OutRec1RightOfOutRec2EPNS_6OutRecES1_.exit, label %.preheader130, !llvm.loop !96

_ZN10ClipperLib21OutRec1RightOfOutRec2EPNS_6OutRecES1_.exit: ; preds = %.preheader130
  br i1 %i.at, label %bb.j, label %.preheader129

.preheader129:                                    ; preds = %_ZN10ClipperLib21OutRec1RightOfOutRec2EPNS_6OutRecES1_.exit, %.preheader129
  %.05.i87 = phi ptr [ %i.av, %.preheader129 ], [ %.0.i83, %_ZN10ClipperLib21OutRec1RightOfOutRec2EPNS_6OutRecES1_.exit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i87, i64 8
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.aw = icmp eq ptr %i.av, %.0.i                ; 2 uses
  %.not.i88 = icmp eq ptr %i.av, null
  %or.cond.i89 = or i1 %i.aw, %.not.i88
  br i1 %or.cond.i89, label %_ZN10ClipperLib21OutRec1RightOfOutRec2EPNS_6OutRecES1_.exit90, label %.preheader129, !llvm.loop !96

_ZN10ClipperLib21OutRec1RightOfOutRec2EPNS_6OutRecES1_.exit90: ; preds = %.preheader129
  br i1 %i.aw, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN10ClipperLib21OutRec1RightOfOutRec2EPNS_6OutRecES1_.exit90
  %i.ax = tail call noundef ptr @_ZN10ClipperLib15GetLowermostRecEPNS_6OutRecES1_(ptr noundef nonnull %.0.i, ptr noundef nonnull %.0.i83)
  br label %bb.j

bb.j:                                             ; preds = %_ZN10ClipperLib21OutRec1RightOfOutRec2EPNS_6OutRecES1_.exit90, %_ZN10ClipperLib21OutRec1RightOfOutRec2EPNS_6OutRecES1_.exit, %bb.i
  %.0 = phi ptr [ %i.ax, %bb.i ], [ %.0.i, %_ZN10ClipperLib21OutRec1RightOfOutRec2EPNS_6OutRecES1_.exit90 ], [ %.0.i83, %_ZN10ClipperLib21OutRec1RightOfOutRec2EPNS_6OutRecES1_.exit ] ; 2 uses
  %i.ay = tail call noundef zeroext i1 @_ZN10ClipperLib7Clipper10JoinPointsEPNS_4JoinEPNS_6OutRecES4_(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %i.i, ptr noundef nonnull %.0.i, ptr noundef nonnull %.0.i83)
  br i1 %i.ay, label %bb.u, label %_ZN10ClipperLib18ReversePolyPtLinksEPNS_5OutPtE.exit

.thread:                                          ; preds = %bb.h
  %i.az = tail call noundef zeroext i1 @_ZN10ClipperLib7Clipper10JoinPointsEPNS_4JoinEPNS_6OutRecES4_(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %i.i, ptr noundef nonnull %.0.i, ptr noundef nonnull %.0.i83)
  br i1 %i.az, label %.thread118, label %_ZN10ClipperLib18ReversePolyPtLinksEPNS_5OutPtE.exit

.thread118:                                       ; preds = %.thread
  %i.ba = load ptr, ptr %i.i, align 8
  store ptr %i.ba, ptr %i.ag, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store ptr null, ptr %i.bb, align 8
  %i.bc = load ptr, ptr %0, align 8
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %0, i64 %i.be
  %i.bg = tail call noundef ptr @_ZN10ClipperLib11ClipperBase12CreateOutRecEv(ptr noundef nonnull align 8 dereferenceable(144) %i.bf) ; 12 uses
  %i.bh = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 3 uses
  store ptr %i.bh, ptr %i.bi, align 8
  %.pre.i = load i32, ptr %i.bg, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.thread118
  %.0.i91 = phi ptr [ %i.bh, %.thread118 ], [ %i.bk, %bb.k ] ; 2 uses
  store i32 %.pre.i, ptr %.0.i91, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i91, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8            ; 3 uses
  %i.bl = load ptr, ptr %i.bi, align 8            ; 4 uses
  %.not.i92 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not.i92, label %_ZN10ClipperLib15UpdateOutPtIdxsERNS_6OutRecE.exit, label %bb.k, !llvm.loop !97

_ZN10ClipperLib15UpdateOutPtIdxsERNS_6OutRecE.exit: ; preds = %bb.k
  %i.bm = load ptr, ptr %i.ag, align 8            ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %_ZN10ClipperLib15UpdateOutPtIdxsERNS_6OutRecE.exit
  %.010.i = phi ptr [ %i.bl, %_ZN10ClipperLib15UpdateOutPtIdxsERNS_6OutRecE.exit ], [ %i.br, %bb.m ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %i.bo = tail call noundef i32 @_ZN10ClipperLib14PointInPolygonERKNS_8IntPointEPNS_5OutPtE(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef readonly %i.bm) ; 2 uses
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %bb.m, label %_ZN10ClipperLib18Poly2ContainsPoly1EPNS_5OutPtES1_.exit

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i, i64 24
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not.i93 = icmp eq ptr %i.br, %i.bk
  br i1 %.not.i93, label %_ZN10ClipperLib18Poly2ContainsPoly1EPNS_5OutPtES1_.exit.thread, label %bb.l, !llvm.loop !13

_ZN10ClipperLib18Poly2ContainsPoly1EPNS_5OutPtES1_.exit: ; preds = %bb.l
  %.not125 = icmp eq i32 %i.bo, 0
  br i1 %.not125, label %.preheader, label %_ZN10ClipperLib18Poly2ContainsPoly1EPNS_5OutPtES1_.exit.thread

_ZN10ClipperLib18Poly2ContainsPoly1EPNS_5OutPtES1_.exit.thread: ; preds = %bb.m, %_ZN10ClipperLib18Poly2ContainsPoly1EPNS_5OutPtES1_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.bt = load i8, ptr %i.bs, align 4, !range !6, !noundef !7
  %i.bu = xor i8 %i.bt, 1                         ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  store i8 %i.bu, ptr %i.bv, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %.0.i, ptr %i.bw, align 8
  %i.bx = load i8, ptr %i.e, align 1, !range !6, !noundef !7
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN10ClipperLib18Poly2ContainsPoly1EPNS_5OutPtES1_.exit.thread
  tail call void @_ZN10ClipperLib7Clipper16FixupFirstLefts2EPNS_6OutRecES2_(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %i.bg, ptr noundef nonnull %.0.i)
  %.pre = load i8, ptr %i.bv, align 4, !range !6
end_hunk_3
