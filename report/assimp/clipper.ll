inline.NumInlined: 2352
inline.NumDeleted: 743
begin_hunk_0_@_ZN10ClipperLib8PolyNode8AddChildERS0_:bb.a
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
define hidden noundef ptr @_ZNK10ClipperLib8PolyNode7GetNextEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #2 align 2 {
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
define hidden noundef ptr @_ZNK10ClipperLib8PolyNode16GetNextSiblingUpEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #2 align 2 {
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
define hidden noundef zeroext i1 @_ZNK10ClipperLib8PolyNode6IsHoleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #2 align 2 {
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
define hidden noundef zeroext i1 @_ZNK10ClipperLib8PolyNode6IsOpenEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i8, ptr %i.a, align 4, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN10ClipperLib9Int128MulExx(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.ClipperLib::Int128") align 8 captures(none) initializes((0, 16)) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
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
  %i.r = icmp ne i64 %i.n, 0
  %i.s = sub i64 0, %i.n
  %i.t = sext i1 %i.r to i64
  %.sink.i = sub nsw i64 %i.t, %i.q
  store i64 %i.s, ptr %0, align 8
  store i64 %.sink.i, ptr %i.j, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = lshr exact i64 %i.f, 4                   ; 4 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 3
  br i1 %i.i, label %_ZN10ClipperLib4AreaERKSt6vectorINS_8IntPointESaIS1_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw nsw i64 %i.g, 4294967295
  %.phi.trans.insert.i = and i64 %i.j, 4294967295
  %.phi.trans.insert25.i = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.phi.trans.insert.i ; 2 uses
  %.pre.i = load i64, ptr %.phi.trans.insert25.i, align 8 ; 2 uses
  %.phi.trans.insert26.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert25.i, i64 8
  %.pre27.i = load i64, ptr %.phi.trans.insert26.i, align 8 ; 2 uses
  %wide.trip.count.i = and i64 %i.f, 34359738352
  %1 = icmp eq i64 %wide.trip.count.i, 16
  br i1 %1, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.g, 2147483646
  br label %bb.d

.unr-lcssa:                                       ; preds = %bb.d
  %2 = and i64 %i.f, 16
  %lcmp.mod.not = icmp eq i64 %2, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.pre27.i, %bb.b ], [ %i.u, %.unr-lcssa ]
  %.epil.init2 = phi i64 [ %.pre.i, %bb.b ], [ %i.r, %.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.1, %.unr-lcssa ]
  %.01821.i.epil.init = phi double [ 0.000000e+00, %bb.b ], [ %i.x, %.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %3 = sitofp i64 %.epil.init2 to double
  %4 = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv.i.epil.init ; 2 uses
  %5 = load i64, ptr %4, align 8
  %6 = sitofp i64 %5 to double
  %7 = fadd nnan double %3, %6
  %8 = sitofp i64 %.epil.init to double
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %10 = load i64, ptr %9, align 8
  %11 = sitofp i64 %10 to double
  %12 = fsub nnan double %8, %11
  %13 = tail call double @llvm.fmuladd.f64(double %7, double %12, double %.01821.i.epil.init)
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi double [ %i.x, %.unr-lcssa ], [ %13, %.epil.preheader ]
  %i.k = fmul double %.lcssa, -5.000000e-01
  %i.l = fcmp oge double %i.k, 0.000000e+00
  br label %_ZN10ClipperLib4AreaERKSt6vectorINS_8IntPointESaIS1_EE.exit

bb.d:                                             ; preds = %bb.d, %.new
  %14 = phi i64 [ %.pre27.i, %.new ], [ %i.u, %bb.d ]
  %indvars.iv.i.a = phi i64 [ %.pre.i, %.new ], [ %i.r, %bb.d ]
  %.023.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %bb.d ] ; 3 uses
  %.01821.i = phi double [ 0.000000e+00, %.new ], [ %i.x, %bb.d ]
  %niter = phi i64 [ 0, %.new ], [ %indvars.iv.next.i, %bb.d ]
  %15 = sitofp i64 %indvars.iv.i.a to double
  %16 = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.023.i ; 2 uses
  %17 = load i64, ptr %16, align 8                ; 2 uses
  %18 = sitofp i64 %17 to double
  %19 = fadd double %15, %18
  %20 = sitofp i64 %14 to double
  %i.m = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = sitofp i64 %i.n to double
  %21 = fsub double %20, %i.o
  %22 = tail call double @llvm.fmuladd.f64(double %19, double %21, double %.01821.i)
  %i.p = sitofp i64 %17 to double
  %23 = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.023.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  %24 = sitofp i64 %i.r to double
  %25 = fadd double %i.p, %24
  %i.s = sitofp i64 %i.n to double
  %i.t = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.u = load i64, ptr %i.t, align 8              ; 3 uses
  %i.v = sitofp i64 %i.u to double
  %i.w = fsub double %i.s, %i.v
  %i.x = tail call double @llvm.fmuladd.f64(double %25, double %i.w, double %22) ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %.023.i, 2 ; 2 uses
  %indvars.iv.next.i = add i64 %niter, 2          ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %unroll_iter
  br i1 %exitcond.not.i, label %.unr-lcssa, label %bb.d, !llvm.loop !8

_ZN10ClipperLib4AreaERKSt6vectorINS_8IntPointESaIS1_EE.exit: ; preds = %bb.a, %bb.c
  %.019.i = phi i1 [ %i.l, %bb.c ], [ true, %bb.a ]
  ret i1 %.019.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef double @_ZN10ClipperLib4AreaERKSt6vectorINS_8IntPointESaIS1_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = lshr exact i64 %i.f, 4                   ; 4 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 3
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw nsw i64 %i.g, 4294967295
  %.phi.trans.insert = and i64 %i.j, 4294967295
  %.phi.trans.insert25 = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.phi.trans.insert ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert25, align 8 ; 2 uses
  %.phi.trans.insert26 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert25, i64 8
  %.pre27 = load i64, ptr %.phi.trans.insert26, align 8 ; 2 uses
  %wide.trip.count = and i64 %i.f, 34359738352
  %1 = icmp eq i64 %wide.trip.count, 16
  br i1 %1, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.g, 2147483646
  br label %bb.d

.unr-lcssa:                                       ; preds = %bb.d
  %2 = and i64 %i.f, 16
  %lcmp.mod.not = icmp eq i64 %2, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.pre27, %bb.b ], [ %i.t, %.unr-lcssa ]
  %.epil.init29 = phi i64 [ %.pre, %bb.b ], [ %i.q, %.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.1, %.unr-lcssa ]
  %.01821.epil.init = phi double [ 0.000000e+00, %bb.b ], [ %i.w, %.unr-lcssa ]
  %lcmp.mod31 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %3 = sitofp i64 %.epil.init29 to double
  %4 = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv.epil.init ; 2 uses
  %5 = load i64, ptr %4, align 8
  %6 = sitofp i64 %5 to double
  %7 = fadd nnan double %3, %6
  %8 = sitofp i64 %.epil.init to double
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %10 = load i64, ptr %9, align 8
  %11 = sitofp i64 %10 to double
  %12 = fsub nnan double %8, %11
  %13 = tail call double @llvm.fmuladd.f64(double %7, double %12, double %.01821.epil.init)
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi double [ %i.w, %.unr-lcssa ], [ %13, %.epil.preheader ]
  %i.k = fmul double %.lcssa, -5.000000e-01
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.new
  %14 = phi i64 [ %.pre27, %.new ], [ %i.t, %bb.d ]
  %indvars.iv.a = phi i64 [ %.pre, %.new ], [ %i.q, %bb.d ]
  %.023 = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %.01821 = phi double [ 0.000000e+00, %.new ], [ %i.w, %bb.d ]
  %niter = phi i64 [ 0, %.new ], [ %indvars.iv.next, %bb.d ]
  %15 = sitofp i64 %indvars.iv.a to double
  %16 = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.023 ; 2 uses
  %17 = load i64, ptr %16, align 8                ; 2 uses
  %18 = sitofp i64 %17 to double
  %19 = fadd double %15, %18
  %20 = sitofp i64 %14 to double
  %i.l = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = sitofp i64 %i.m to double
  %21 = fsub double %20, %i.n
  %22 = tail call double @llvm.fmuladd.f64(double %19, double %21, double %.01821)
  %i.o = sitofp i64 %17 to double
  %23 = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.023 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %24 = sitofp i64 %i.q to double
  %25 = fadd double %i.o, %24
  %i.r = sitofp i64 %i.m to double
  %i.s = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = sitofp i64 %i.t to double
  %i.v = fsub double %i.r, %i.u
  %i.w = tail call double @llvm.fmuladd.f64(double %25, double %i.v, double %22) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %.023, 2   ; 2 uses
  %indvars.iv.next = add i64 %niter, 2            ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %unroll_iter
  br i1 %exitcond.not, label %.unr-lcssa, label %bb.d, !llvm.loop !8

bb.e:                                             ; preds = %bb.a, %bb.c
  %.019 = phi double [ %i.k, %bb.c ], [ 0.000000e+00, %bb.a ]
  ret double %.019
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef double @_ZN10ClipperLib4AreaEPKNS_5OutPtE(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #2 {
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
define hidden noundef double @_ZN10ClipperLib4AreaERKNS_6OutRecE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #2 {
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
define hidden noundef zeroext i1 @_ZN10ClipperLib13PointIsVertexERKNS_8IntPointEPNS_5OutPtE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.l, %bb.c ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, %i.a
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, %i.c
  %i.j = select i1 %i.f, i1 %i.i, i1 false        ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not = icmp eq ptr %i.l, %1
  br i1 %.not, label %bb.d, label %bb.b, !llvm.loop !10

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 -1, 2) i32 @_ZN10ClipperLib14PointInPolygonERKNS_8IntPointERKSt6vectorIS0_SaIS0_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8                ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = icmp ult i64 %i.g, 3
  br i1 %i.h, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.023.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8              ; 8 uses
  %i.k = load i64, ptr %0, align 8                ; 9 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.n
  %.066105 = phi i32 [ 0, %bb.b ], [ %.672.ph, %bb.n ] ; 7 uses
  %.sroa.8.0104 = phi i64 [ %.sroa.8.0.copyload, %bb.b ], [ %.sroa.10.0.copyload, %bb.n ] ; 6 uses
  %.078103 = phi i64 [ 1, %bb.b ], [ %i.bc, %bb.n ] ; 3 uses
  %.sroa.023.0102 = phi i64 [ %.sroa.023.0.copyload, %bb.b ], [ %.sroa.0.0.copyload, %bb.n ] ; 4 uses
  %i.l = icmp eq i64 %.078103, %i.g
  %spec.select101.idx = select i1 %i.l, i64 0, i64 %.078103
  %spec.select101 = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %spec.select101.idx ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %spec.select101, align 8 ; 6 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %spec.select101, i64 8
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8 ; 7 uses
  %i.m = icmp eq i64 %.sroa.10.0.copyload, %i.j
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %.sroa.0.0.copyload, %i.k
  br i1 %i.n, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp eq i64 %.sroa.8.0104, %i.j
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = icmp sgt i64 %.sroa.0.0.copyload, %i.k
  %i.q = icmp sge i64 %.sroa.023.0102, %i.k
  %i.r = xor i1 %i.p, %i.q
  br i1 %i.r, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %i.s = icmp slt i64 %.sroa.8.0104, %i.j
  %i.t = icmp sge i64 %.sroa.10.0.copyload, %i.j
  %.not86 = xor i1 %i.s, %i.t
  br i1 %.not86, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not87 = icmp slt i64 %.sroa.023.0102, %i.k
  %i.u = icmp sgt i64 %.sroa.0.0.copyload, %i.k   ; 2 uses
  br i1 %.not87, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = sub nuw nsw i32 1, %.066105
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.w = sub nsw i64 %.sroa.023.0102, %i.k
  %i.x = sitofp i64 %i.w to double
  %i.y = sub nsw i64 %.sroa.10.0.copyload, %i.j
  %i.z = sitofp i64 %i.y to double
  %i.aa = sub nsw i64 %.sroa.0.0.copyload, %i.k
  %i.ab = sitofp i64 %i.aa to double
  %i.ac = sub nsw i64 %.sroa.8.0104, %i.j
  %i.ad = sitofp i64 %i.ac to double
  %i.ae = fneg double %i.ad
  %i.af = fmul nnan double %i.ae, %i.ab
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.x, double %i.z, double %i.af) ; 2 uses
  %i.ah = fcmp une double %i.ag, 0.000000e+00
  br i1 %i.ah, label %.thread, label %.loopexit

.thread:                                          ; preds = %bb.k
end_hunk_0
begin_hunk_1_@_ZN10ClipperLib13ClipperOffset7AddPathERKSt6vectorINS_8IntPointESaIS2_EENS_8JoinTypeENS_7EndTypeE:bb.a
  %exitcond.not = icmp eq i64 %indvars.iv.next109, %i.ad
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !168

bb.m:                                             ; preds = %._crit_edge
  %i.cm = load ptr, ptr %i.k, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.k) #30
  br label %bb.z

bb.n:                                             ; preds = %._crit_edge
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.cs = load ptr, ptr %i.cr, align 8            ; 3 uses
  %i.ct = load ptr, ptr %i.cq, align 8            ; 4 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 6 uses
  %i.cx = ashr exact i64 %i.cw, 3                 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8
  %.not.i.i.i89 = icmp eq ptr %i.cs, %i.cz
  br i1 %.not.i.i.i89, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.k, ptr %i.cs, align 8
  %i.da = load ptr, ptr %i.cr, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  store ptr %i.db, ptr %i.cr, align 8
  br label %_ZN10ClipperLib8PolyNode8AddChildERS0_.exit

bb.p:                                             ; preds = %bb.n
  %i.dc = icmp eq i64 %i.cw, 9223372036854775800
  br i1 %i.dc, label %bb.q, label %_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.p
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.dd = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cx ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.cx
  %i.df = tail call i64 @llvm.umin.i64(i64 %i.dd, i64 1152921504606846975)
  %i.dg = select i1 %i.de, i64 1152921504606846975, i64 %i.df ; 3 uses
  %.not.i.i.i.i.i90 = icmp ne i64 %i.dg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i90)
  %i.dh = shl nuw nsw i64 %i.dg, 3
  %i.di = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #32 ; 4 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 %i.cw ; 2 uses
  store ptr %i.k, ptr %i.dj, align 8
  %i.dk = icmp sgt i64 %i.cw, 0
  br i1 %i.dk, label %bb.r, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.di, ptr align 8 %i.ct, i64 %i.cw, i1 false)
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i: ; preds = %bb.r, %_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cw) #33
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.s, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  store ptr %i.di, ptr %i.cq, align 8
  store ptr %i.dl, ptr %i.cr, align 8
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dg
  store ptr %i.dm, ptr %i.cy, align 8
  br label %_ZN10ClipperLib8PolyNode8AddChildERS0_.exit

_ZN10ClipperLib8PolyNode8AddChildERS0_.exit:      ; preds = %bb.o, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i
  %i.dn = phi ptr [ %i.db, %bb.o ], [ %i.dl, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ] ; 2 uses
  %i.do = trunc i64 %i.cx to i32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %i.cp, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i32 %i.do, ptr %i.dq, align 8
  br i1 %i.o, label %bb.t, label %bb.z

bb.t:                                             ; preds = %_ZN10ClipperLib8PolyNode8AddChildERS0_.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ds = load i64, ptr %i.dr, align 8            ; 2 uses
  %i.dt = icmp slt i64 %i.ds, 0
  br i1 %i.dt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.du = load ptr, ptr %i.cq, align 8
  %i.dv = ptrtoint ptr %i.dn to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = shl i64 %i.dx, 29
  %sext97 = add i64 %i.dy, -4294967296
  %i.dz = ashr i64 %sext97, 32
  store i64 %i.dz, ptr %i.dr, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %.064.lcssa, ptr %.sroa.495.0..sroa_idx, align 8
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %sext = shl i64 %i.ds, 32
  %i.ea = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.eb = ashr exact i64 %sext, 29
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8
  %sext73 = shl i64 %i.eg, 32
  %i.eh = load ptr, ptr %i.ee, align 8
  %i.ei = ashr exact i64 %sext73, 28
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ei ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.ej, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.ek = load ptr, ptr %i.l, align 8
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %.064.lcssa ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i64, ptr %i.em, align 8            ; 2 uses
  %i.eo = icmp sgt i64 %i.en, %.sroa.4.0.copyload
  br i1 %i.eo, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ep = icmp eq i64 %i.en, %.sroa.4.0.copyload
  br i1 %i.ep, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.eq = load i64, ptr %i.el, align 8
  %i.er = icmp slt i64 %i.eq, %.sroa.0.0.copyload
  br i1 %i.er, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.es = ptrtoint ptr %i.dn to i64
  %i.et = ptrtoint ptr %i.ea to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = shl i64 %i.eu, 29
  %sext96 = add i64 %i.ev, -4294967296
  %i.ew = ashr i64 %sext96, 32
  store i64 %i.ew, ptr %i.dr, align 8
  store i64 %.064.lcssa, ptr %i.ef, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.m, %_ZN10ClipperLib8PolyNode8AddChildERS0_.exit, %bb.w, %bb.x, %bb.y, %bb.u, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib13ClipperOffset8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8JoinTypeENS_7EndTypeE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.d = phi ptr [ %i.h, %.lr.ph ], [ %i.c, %bb.a ]
  %.07 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.07
  tail call void @_ZN10ClipperLib13ClipperOffset7AddPathERKSt6vectorINS_8IntPointESaIS2_EENS_8JoinTypeENS_7EndTypeE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef %2, i32 noundef %3)
  %i.f = add nuw i64 %.07, 1                      ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 24
  %i.m = icmp ult i64 %i.f, %i.l
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !169
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN10ClipperLib13ClipperOffset15FixOrientationsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  br i1 %i.c, label %bb.b, label %._ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread_crit_edge

._ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread_crit_edge: ; preds = %bb.a
  %.pre62 = load ptr, ptr %i.d, align 8
  br label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread

bb.b:                                             ; preds = %bb.a
  %sext = shl i64 %i.b, 32
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.f = ashr exact i64 %sext, 29
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.i, align 8              ; 5 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = lshr exact i64 %i.o, 4                   ; 4 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = icmp slt i32 %i.q, 3
  br i1 %i.r, label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = add nuw nsw i64 %i.p, 4294967295
  %.phi.trans.insert.i.i = and i64 %i.s, 4294967295
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.phi.trans.insert.i.i ; 2 uses
  %.pre.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8 ; 2 uses
  %.phi.trans.insert26.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert25.i.i, i64 8
  %.pre27.i.i = load i64, ptr %.phi.trans.insert26.i.i, align 8 ; 2 uses
  %wide.trip.count.i.i = and i64 %i.o, 34359738352
  %1 = icmp eq i64 %wide.trip.count.i.i, 16
  br i1 %1, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %i.p, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new
  %2 = phi i64 [ %.pre27.i.i, %.new ], [ %i.ab, %bb.d ]
  %indvars.iv.i.i.a = phi i64 [ %.pre.i.i, %.new ], [ %i.y, %bb.d ]
  %.023.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.1, %bb.d ] ; 3 uses
  %.01821.i.i = phi double [ 0.000000e+00, %.new ], [ %i.ae, %bb.d ]
  %niter = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i, %bb.d ]
  %3 = sitofp i64 %indvars.iv.i.i.a to double
  %4 = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.023.i.i ; 2 uses
  %5 = load i64, ptr %4, align 8                  ; 2 uses
  %6 = sitofp i64 %5 to double
  %7 = fadd double %3, %6
  %8 = sitofp i64 %2 to double
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = sitofp i64 %i.u to double
  %9 = fsub double %8, %i.v
  %10 = tail call double @llvm.fmuladd.f64(double %7, double %9, double %.01821.i.i)
  %i.w = sitofp i64 %5 to double
  %11 = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.023.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %12 = sitofp i64 %i.y to double
  %13 = fadd double %i.w, %12
  %i.z = sitofp i64 %i.u to double
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ac = sitofp i64 %i.ab to double
  %i.ad = fsub double %i.z, %i.ac
  %i.ae = tail call double @llvm.fmuladd.f64(double %13, double %i.ad, double %10) ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %.023.i.i, 2 ; 2 uses
  %indvars.iv.next.i.i = add i64 %niter, 2        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %unroll_iter
  br i1 %exitcond.not.i.i, label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.unr-lcssa, label %bb.d, !llvm.loop !8

_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.unr-lcssa: ; preds = %bb.d
  %14 = and i64 %i.o, 16
  %lcmp.mod.not = icmp eq i64 %14, 0
  br i1 %lcmp.mod.not, label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.unr-lcssa, %bb.c
  %.epil.init = phi i64 [ %.pre27.i.i, %bb.c ], [ %i.ab, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.unr-lcssa ]
  %.epil.init85 = phi i64 [ %.pre.i.i, %bb.c ], [ %i.y, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.unr-lcssa ]
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i.i.1, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.unr-lcssa ]
  %.01821.i.i.epil.init = phi double [ 0.000000e+00, %bb.c ], [ %i.ae, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.unr-lcssa ]
  %lcmp.mod87 = trunc i64 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %15 = sitofp i64 %.epil.init85 to double
  %16 = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %17 = load i64, ptr %16, align 8
  %18 = sitofp i64 %17 to double
  %19 = fadd nnan double %15, %18
  %20 = sitofp i64 %.epil.init to double
  %21 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %22 = load i64, ptr %21, align 8
  %23 = sitofp i64 %22 to double
  %24 = fsub nnan double %20, %23
  %25 = tail call double @llvm.fmuladd.f64(double %19, double %24, double %.01821.i.i.epil.init)
  br label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit

_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit: ; preds = %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.unr-lcssa, %.epil.preheader
  %.lcssa83 = phi double [ %i.ae, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.unr-lcssa ], [ %25, %.epil.preheader ]
  %i.af = fmul double %.lcssa83, -5.000000e-01
  %i.ag = fcmp ult double %i.af, 0.000000e+00
  br i1 %i.ag, label %.preheader, label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread

.preheader:                                       ; preds = %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.e to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = lshr exact i64 %i.al, 3
  %i.an = trunc i64 %i.am to i32
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit
  %i.ap = phi ptr [ %i.ca, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit ], [ %i.e, %.preheader ] ; 4 uses
  %i.aq = phi ptr [ %i.cb, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit ], [ %i.ai, %.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit ], [ 0, %.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8            ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 76
  %i.au = load i32, ptr %i.at, align 4
  switch i32 %i.au, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit [
    i32 0, label %.lr.ph._ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread_crit_edge
    i32 1, label %bb.e
  ]

.lr.ph._ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread_crit_edge: ; preds = %.lr.ph
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.pre58 = load ptr, ptr %.phi.trans.insert57, align 8
  br label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread

bb.e:                                             ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  %i.ay = load ptr, ptr %i.av, align 8            ; 7 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = lshr exact i64 %i.bb, 4                 ; 4 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = icmp slt i32 %i.bd, 3
  br i1 %i.be, label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = add nuw nsw i64 %i.bc, 4294967295
  %.phi.trans.insert.i.i17 = and i64 %i.bf, 4294967295
  %.phi.trans.insert25.i.i18 = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.phi.trans.insert.i.i17 ; 2 uses
  %.pre.i.i19 = load i64, ptr %.phi.trans.insert25.i.i18, align 8 ; 2 uses
  %.phi.trans.insert26.i.i20 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert25.i.i18, i64 8
  %.pre27.i.i21 = load i64, ptr %.phi.trans.insert26.i.i20, align 8 ; 2 uses
  %wide.trip.count.i.i16 = and i64 %i.bb, 34359738352
  %26 = icmp eq i64 %wide.trip.count.i.i16, 16
  br i1 %26, label %.epil.preheader89, label %.new88

.new88:                                           ; preds = %bb.f
  %unroll_iter98 = and i64 %i.bc, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.new88
  %27 = phi i64 [ %.pre27.i.i21, %.new88 ], [ %i.bo, %bb.g ]
  %indvars.iv.i.i17 = phi i64 [ %.pre.i.i19, %.new88 ], [ %i.bl, %bb.g ]
  %.023.i.i18 = phi i64 [ 0, %.new88 ], [ %indvars.iv.next.i.i24.1, %bb.g ] ; 3 uses
  %.01821.i.i19 = phi double [ 0.000000e+00, %.new88 ], [ %i.br, %bb.g ]
  %niter99 = phi i64 [ 0, %.new88 ], [ %indvars.iv.next.i.i21, %bb.g ]
  %28 = sitofp i64 %indvars.iv.i.i17 to double
  %29 = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.023.i.i18 ; 2 uses
  %30 = load i64, ptr %29, align 8                ; 2 uses
  %31 = sitofp i64 %30 to double
  %32 = fadd double %28, %31
  %33 = sitofp i64 %27 to double
  %i.bg = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  %i.bi = sitofp i64 %i.bh to double
  %34 = fsub double %33, %i.bi
  %35 = tail call double @llvm.fmuladd.f64(double %32, double %34, double %.01821.i.i19)
  %i.bj = sitofp i64 %30 to double
  %36 = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.023.i.i18 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.bl = load i64, ptr %i.bk, align 8            ; 3 uses
  %37 = sitofp i64 %i.bl to double
  %38 = fadd double %i.bj, %37
  %i.bm = sitofp i64 %i.bh to double
  %i.bn = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.bo = load i64, ptr %i.bn, align 8            ; 3 uses
  %i.bp = sitofp i64 %i.bo to double
  %i.bq = fsub double %i.bm, %i.bp
  %i.br = tail call double @llvm.fmuladd.f64(double %38, double %i.bq, double %35) ; 3 uses
  %indvars.iv.next.i.i24.1 = add nuw nsw i64 %.023.i.i18, 2 ; 2 uses
  %indvars.iv.next.i.i21 = add i64 %niter99, 2    ; 2 uses
  %exitcond.not.i.i22 = icmp eq i64 %indvars.iv.next.i.i21, %unroll_iter98
  br i1 %exitcond.not.i.i22, label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit27.unr-lcssa, label %bb.g, !llvm.loop !8

_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit27.unr-lcssa: ; preds = %bb.g
  %39 = and i64 %i.bb, 16
  %lcmp.mod95.not = icmp eq i64 %39, 0
  br i1 %lcmp.mod95.not, label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24, label %.epil.preheader89

.epil.preheader89:                                ; preds = %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit27.unr-lcssa, %bb.f
  %.epil.init92 = phi i64 [ %.pre27.i.i21, %bb.f ], [ %i.bo, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit27.unr-lcssa ]
  %.epil.init94 = phi i64 [ %.pre.i.i19, %bb.f ], [ %i.bl, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit27.unr-lcssa ]
  %indvars.iv.i.i22.epil.init = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i.i24.1, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit27.unr-lcssa ]
  %.01821.i.i23.epil.init = phi double [ 0.000000e+00, %bb.f ], [ %i.br, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit27.unr-lcssa ]
  %lcmp.mod97 = trunc i64 %i.bc to i1
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %40 = sitofp i64 %.epil.init94 to double
  %41 = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %indvars.iv.i.i22.epil.init ; 2 uses
  %42 = load i64, ptr %41, align 8
  %43 = sitofp i64 %42 to double
  %44 = fadd nnan double %40, %43
  %45 = sitofp i64 %.epil.init92 to double
  %46 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %47 = load i64, ptr %46, align 8
  %48 = sitofp i64 %47 to double
  %49 = fsub nnan double %45, %48
  %50 = tail call double @llvm.fmuladd.f64(double %44, double %49, double %.01821.i.i23.epil.init)
  br label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24

_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24: ; preds = %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit27.unr-lcssa, %.epil.preheader89
  %.lcssa82 = phi double [ %i.br, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit27.unr-lcssa ], [ %50, %.epil.preheader89 ]
  %i.bs = fmul double %.lcssa82, -5.000000e-01
  %i.bt = fcmp ult double %i.bs, 0.000000e+00
  br i1 %i.bt, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit, label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread

_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread: ; preds = %.lr.ph._ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread_crit_edge, %bb.e, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24
  %i.bu = phi ptr [ %.pre58, %.lr.ph._ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread_crit_edge ], [ %i.ax, %bb.e ], [ %i.ax, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24 ] ; 2 uses
  %i.bv = phi ptr [ %.pre, %.lr.ph._ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread_crit_edge ], [ %i.ay, %bb.e ], [ %i.ay, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24 ] ; 3 uses
  %i.bw = icmp ne ptr %i.bv, %i.bu
  %.sroa.0.08.i.i.i = getelementptr inbounds i8, ptr %i.bu, i64 -16 ; 2 uses
  %i.bx = icmp ult ptr %i.bv, %.sroa.0.08.i.i.i
  %or.cond.i.i.i = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit

.lr.ph.i.i.i:                                     ; preds = %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.08.i.i.i, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread ] ; 3 uses
  %.sroa.05.09.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i ], [ %i.bv, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread ] ; 3 uses
  %.sroa.0.0.copyload = load <2 x i64>, ptr %.sroa.05.09.i.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.09.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i.i, i64 16, i1 false)
  store <2 x i64> %.sroa.0.0.copyload, ptr %.sroa.0.010.i.i.i, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i, i64 -16 ; 2 uses
  %i.bz = icmp ult ptr %i.by, %.sroa.0.0.i.i.i
  br i1 %i.bz, label %.lr.ph.i.i.i, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.loopexit, !llvm.loop !170

_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre59 = load ptr, ptr %i.ah, align 8
  %.pre60 = load ptr, ptr %i.d, align 8
  br label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit

_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit: ; preds = %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.loopexit, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread, %.lr.ph, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24
  %i.ca = phi ptr [ %.pre60, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.loopexit ], [ %i.ap, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread ], [ %i.ap, %.lr.ph ], [ %i.ap, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24 ] ; 2 uses
  %i.cb = phi ptr [ %.pre59, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.loopexit ], [ %i.aq, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread ], [ %i.aq, %.lr.ph ], [ %i.aq, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %sext67 = shl i64 %i.ce, 29
  %i.cf = ashr i64 %sext67, 32
  %i.cg = icmp slt i64 %indvars.iv.next, %i.cf
  br i1 %i.cg, label %.lr.ph, label %.loopexit, !llvm.loop !171

_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread: ; preds = %._ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread_crit_edge, %bb.b, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit
  %i.ch = phi ptr [ %.pre62, %._ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread_crit_edge ], [ %i.e, %bb.b ], [ %i.e, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ch to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = lshr exact i64 %i.cn, 3
  %i.cp = trunc i64 %i.co to i32
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph49, label %.loopexit

.lr.ph49:                                         ; preds = %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40
  %i.cr = phi ptr [ %i.eb, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40 ], [ %i.ch, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread ] ; 5 uses
  %i.cs = phi ptr [ %i.ec, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40 ], [ %i.ck, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread ] ; 4 uses
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40 ], [ 0, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv54
  %i.cu = load ptr, ptr %i.ct, align 8            ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 76
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = icmp eq i32 %i.cw, 1
  br i1 %i.cx, label %bb.h, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40

bb.h:                                             ; preds = %.lr.ph49
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.da = load ptr, ptr %i.cz, align 8            ; 3 uses
  %i.db = load ptr, ptr %i.cy, align 8            ; 8 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 3 uses
  %i.df = lshr exact i64 %i.de, 4                 ; 4 uses
  %i.dg = trunc i64 %i.df to i32
  %i.dh = icmp slt i32 %i.dg, 3
  br i1 %i.dh, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.di = add nuw nsw i64 %i.df, 4294967295
  %.phi.trans.insert.i.i29 = and i64 %i.di, 4294967295
  %.phi.trans.insert25.i.i30 = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.phi.trans.insert.i.i29 ; 2 uses
  %.pre.i.i31 = load i64, ptr %.phi.trans.insert25.i.i30, align 8 ; 2 uses
  %.phi.trans.insert26.i.i32 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert25.i.i30, i64 8
  %.pre27.i.i33 = load i64, ptr %.phi.trans.insert26.i.i32, align 8 ; 2 uses
  %wide.trip.count.i.i25 = and i64 %i.de, 34359738352
  %51 = icmp eq i64 %wide.trip.count.i.i25, 16
  br i1 %51, label %.epil.preheader101, label %.new100

.new100:                                          ; preds = %bb.i
  %unroll_iter110 = and i64 %i.df, 2147483646
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.new100
  %52 = phi i64 [ %.pre27.i.i33, %.new100 ], [ %i.dr, %bb.j ]
  %indvars.iv.i.i26 = phi i64 [ %.pre.i.i31, %.new100 ], [ %i.do, %bb.j ]
  %.023.i.i27 = phi i64 [ 0, %.new100 ], [ %indvars.iv.next.i.i36.1, %bb.j ] ; 3 uses
  %.01821.i.i28 = phi double [ 0.000000e+00, %.new100 ], [ %i.du, %bb.j ]
  %niter111 = phi i64 [ 0, %.new100 ], [ %indvars.iv.next.i.i30, %bb.j ]
  %53 = sitofp i64 %indvars.iv.i.i26 to double
  %54 = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.023.i.i27 ; 2 uses
  %55 = load i64, ptr %54, align 8                ; 2 uses
  %56 = sitofp i64 %55 to double
  %57 = fadd double %53, %56
  %58 = sitofp i64 %52 to double
  %i.dj = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.dk = load i64, ptr %i.dj, align 8            ; 2 uses
  %i.dl = sitofp i64 %i.dk to double
  %59 = fsub double %58, %i.dl
  %60 = tail call double @llvm.fmuladd.f64(double %57, double %59, double %.01821.i.i28)
  %i.dm = sitofp i64 %55 to double
  %61 = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.023.i.i27 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.do = load i64, ptr %i.dn, align 8            ; 3 uses
  %62 = sitofp i64 %i.do to double
  %63 = fadd double %i.dm, %62
  %i.dp = sitofp i64 %i.dk to double
  %i.dq = getelementptr inbounds nuw i8, ptr %61, i64 24
  %i.dr = load i64, ptr %i.dq, align 8            ; 3 uses
  %i.ds = sitofp i64 %i.dr to double
  %i.dt = fsub double %i.dp, %i.ds
  %i.du = tail call double @llvm.fmuladd.f64(double %63, double %i.dt, double %60) ; 3 uses
  %indvars.iv.next.i.i36.1 = add nuw nsw i64 %.023.i.i27, 2 ; 2 uses
  %indvars.iv.next.i.i30 = add i64 %niter111, 2   ; 2 uses
  %exitcond.not.i.i31 = icmp eq i64 %indvars.iv.next.i.i30, %unroll_iter110
  br i1 %exitcond.not.i.i31, label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit39.unr-lcssa, label %bb.j, !llvm.loop !8

_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit39.unr-lcssa: ; preds = %bb.j
  %64 = and i64 %i.de, 16
  %lcmp.mod107.not = icmp eq i64 %64, 0
  br i1 %lcmp.mod107.not, label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit33, label %.epil.preheader101

.epil.preheader101:                               ; preds = %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit39.unr-lcssa, %bb.i
  %.epil.init104 = phi i64 [ %.pre27.i.i33, %bb.i ], [ %i.dr, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit39.unr-lcssa ]
  %.epil.init106 = phi i64 [ %.pre.i.i31, %bb.i ], [ %i.do, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit39.unr-lcssa ]
  %indvars.iv.i.i34.epil.init = phi i64 [ 0, %bb.i ], [ %indvars.iv.next.i.i36.1, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit39.unr-lcssa ]
  %.01821.i.i35.epil.init = phi double [ 0.000000e+00, %bb.i ], [ %i.du, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit39.unr-lcssa ]
  %lcmp.mod109 = trunc i64 %i.df to i1
  tail call void @llvm.assume(i1 %lcmp.mod109)
  %65 = sitofp i64 %.epil.init106 to double
  %66 = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %indvars.iv.i.i34.epil.init ; 2 uses
  %67 = load i64, ptr %66, align 8
  %68 = sitofp i64 %67 to double
  %69 = fadd nnan double %65, %68
  %70 = sitofp i64 %.epil.init104 to double
  %71 = getelementptr inbounds nuw i8, ptr %66, i64 8
  %72 = load i64, ptr %71, align 8
  %73 = sitofp i64 %72 to double
  %74 = fsub nnan double %70, %73
  %75 = tail call double @llvm.fmuladd.f64(double %69, double %74, double %.01821.i.i35.epil.init)
  br label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit33

_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit33: ; preds = %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit39.unr-lcssa, %.epil.preheader101
  %.lcssa = phi double [ %i.du, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit39.unr-lcssa ], [ %75, %.epil.preheader101 ]
  %i.dv = fmul double %.lcssa, -5.000000e-01
  %i.dw = fcmp ult double %i.dv, 0.000000e+00
  br i1 %i.dw, label %bb.k, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40

bb.k:                                             ; preds = %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit33
  %i.dx = icmp ne ptr %i.db, %i.da
  %.sroa.0.08.i.i.i34 = getelementptr inbounds i8, ptr %i.da, i64 -16 ; 2 uses
  %i.dy = icmp ult ptr %i.db, %.sroa.0.08.i.i.i34
  %or.cond.i.i.i35 = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %or.cond.i.i.i35, label %.lr.ph.i.i.i36, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40

.lr.ph.i.i.i36:                                   ; preds = %bb.k, %.lr.ph.i.i.i36
  %.sroa.0.010.i.i.i37 = phi ptr [ %.sroa.0.0.i.i.i39, %.lr.ph.i.i.i36 ], [ %.sroa.0.08.i.i.i34, %bb.k ] ; 3 uses
  %.sroa.05.09.i.i.i38 = phi ptr [ %i.dz, %.lr.ph.i.i.i36 ], [ %i.db, %bb.k ] ; 3 uses
  %.sroa.079.0.copyload = load <2 x i64>, ptr %.sroa.05.09.i.i.i38, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.09.i.i.i38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i.i37, i64 16, i1 false)
  store <2 x i64> %.sroa.079.0.copyload, ptr %.sroa.0.010.i.i.i37, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i38, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i39 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i37, i64 -16 ; 2 uses
  %i.ea = icmp ult ptr %i.dz, %.sroa.0.0.i.i.i39
  br i1 %i.ea, label %.lr.ph.i.i.i36, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40.loopexit, !llvm.loop !170

_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40.loopexit: ; preds = %.lr.ph.i.i.i36
  %.pre63 = load ptr, ptr %i.cj, align 8
  %.pre64 = load ptr, ptr %i.ci, align 8
  br label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40

_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40: ; preds = %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40.loopexit, %bb.h, %bb.k, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit33, %.lr.ph49
  %i.eb = phi ptr [ %.pre64, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40.loopexit ], [ %i.cr, %bb.h ], [ %i.cr, %bb.k ], [ %i.cr, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit33 ], [ %i.cr, %.lr.ph49 ] ; 2 uses
  %i.ec = phi ptr [ %.pre63, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40.loopexit ], [ %i.cs, %bb.h ], [ %i.cs, %bb.k ], [ %i.cs, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit33 ], [ %i.cs, %.lr.ph49 ] ; 2 uses
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.eb to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %sext68 = shl i64 %i.ef, 29
  %i.eg = ashr i64 %sext68, 32
  %i.eh = icmp slt i64 %indvars.iv.next55, %i.eg
  br i1 %i.eh, label %.lr.ph49, label %.loopexit, !llvm.loop !172

.loopexit:                                        ; preds = %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit, %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit40, %.preheader, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ne ptr %i.a, %i.c
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 2 uses
  %i.e = icmp ult ptr %i.a, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %bb.a ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.f, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.sroa.0.0.copyload = load <2 x i64>, ptr %.sroa.05.09.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.09.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i, i64 16, i1 false)
  store <2 x i64> %.sroa.0.0.copyload, ptr %.sroa.0.010.i.i, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -16 ; 2 uses
  %i.g = icmp ult ptr %i.f, %.sroa.0.0.i.i
  br i1 %i.g, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, !llvm.loop !170

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN10ClipperLib8IntPointESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib13ClipperOffset7ExecuteERSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EEd(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.ClipperLib::Clipper", align 8 ; 30 uses
  %4 = alloca %"class.std::vector", align 8       ; 7 uses
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i.i, align 8      ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #33
  br label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !52

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.a, ptr %i.b, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i
  tail call void @_ZN10ClipperLib13ClipperOffset15FixOrientationsEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  tail call void @_ZN10ClipperLib13ClipperOffset8DoOffsetEd(ptr noundef nonnull align 8 dereferenceable(256) %0, double noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.o, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.l, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 24) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 24), ptr %3, align 8
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 96), ptr %i.k, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i8 0, i64 72, i1 false)
  store ptr %i.q, ptr %i.r, align 8
  store ptr %i.q, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i8 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i8 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 132 ; 2 uses
  store i8 0, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 134
  store i8 0, ptr %i.w, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i8 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 209
  store i8 0, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i, label %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit, %.noexc
  %i.ad = phi ptr [ %i.al, %.noexc ], [ %i.ac, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit ]
  %.010.i = phi i64 [ %i.aj, %.noexc ], [ 0, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.010.i
  %i.af = load ptr, ptr %i.k, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(144) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i32 noundef 0, i1 noundef zeroext true)
          to label %.noexc unwind label %.loopexit, !inline_history !173 ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.aj = add nuw i64 %.010.i, 1                  ; 2 uses
  %i.ak = load ptr, ptr %i.aa, align 8
  %i.al = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 24
  %i.aq = icmp ult i64 %i.aj, %i.ap
  br i1 %i.aq, label %.lr.ph.i, label %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit, !llvm.loop !44

_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit: ; preds = %.noexc, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit
  %i.ar = fcmp ogt double %2, 0.000000e+00
  br i1 %i.ar, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit
  %i.as = invoke noundef zeroext i1 @_ZN10ClipperLib7Clipper7ExecuteENS_8ClipTypeERSt6vectorIS2_INS_8IntPointESaIS3_EESaIS5_EENS_12PolyFillTypeES9_(ptr noundef nonnull align 8 dereferenceable(135) %3, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 2, i32 noundef 2)
          to label %bb.r unwind label %.loopexit.split-lp ; 0 uses

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.d:                                             ; preds = %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit
  %i.at = load ptr, ptr %3, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %3, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !174 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !174 ; 2 uses
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %_ZN10ClipperLib11ClipperBase9GetBoundsEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !174 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN10ClipperLib9MinkowskiERKSt6vectorINS_8IntPointESaIS1_EES5_RS0_IS3_SaIS3_EEbb:bb.a

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %._crit_edge308.split
  %i.hu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.hk, %._crit_edge308.split ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.hv = load ptr, ptr %i.p, align 8
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = ptrtoint ptr %i.hu to i64
  %i.hy = sub i64 %i.hw, %i.hx
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.hy) #33
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void

._crit_edge306:                                   ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit247
  %exitcond330.not = icmp eq i64 %i.hj, %i.hg
  br i1 %exitcond330.not, label %._crit_edge308.split, label %.preheader, !llvm.loop !307

_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i164: ; preds = %.preheader, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit247
  %.0305 = phi i64 [ 0, %.preheader ], [ %i.ip, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit247 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.hz = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #32
          to label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit195 unwind label %.loopexit ; 7 uses

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit195: ; preds = %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i164
  store ptr %i.hz, ptr %8, align 8
  store ptr %i.hz, ptr %i.hi, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 64
  store ptr %i.ia, ptr %i.hh, align 8
  %i.ib = urem i64 %.065307, %i.n                 ; 2 uses
  %i.ic = load ptr, ptr %5, align 8               ; 2 uses
  %i.id = urem i64 %.0305, %i.g                   ; 2 uses
  %i.ie = getelementptr inbounds nuw [24 x i8], ptr %i.ic, i64 %i.ib
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %i.if, i64 %i.id
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef nonnull align 8 dereferenceable(16) %i.ig, i64 16, i1 false)
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hz, i64 16 ; 2 uses
  store ptr %i.ih, ptr %i.hi, align 8
  %i.ii = urem i64 %i.hj, %i.n                    ; 2 uses
  %i.ij = getelementptr inbounds nuw [24 x i8], ptr %i.ic, i64 %i.ii
  %i.ik = load ptr, ptr %i.ij, align 8
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.ik, i64 %i.id
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ih, ptr noundef nonnull align 8 dereferenceable(16) %i.il, i64 16, i1 false)
  %i.im = getelementptr inbounds nuw i8, ptr %i.hz, i64 32 ; 3 uses
  store ptr %i.im, ptr %i.hi, align 8
  %.pre332 = load ptr, ptr %i.hh, align 8         ; 4 uses
  %i.in = load ptr, ptr %5, align 8               ; 3 uses
  %i.io = getelementptr inbounds nuw [24 x i8], ptr %i.in, i64 %i.ii
  %i.ip = add nuw i64 %.0305, 1                   ; 3 uses
  %i.iq = urem i64 %i.ip, %i.g                    ; 2 uses
  %i.ir = load ptr, ptr %i.io, align 8
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.iq ; 2 uses
  %.not.i196 = icmp eq ptr %i.im, %.pre332
  br i1 %.not.i196, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.im, ptr noundef nonnull align 8 dereferenceable(16) %i.is, i64 16, i1 false)
  %i.it = getelementptr inbounds nuw i8, ptr %i.hz, i64 48 ; 2 uses
  store ptr %i.it, ptr %i.hi, align 8
  %.pre334 = load ptr, ptr %i.hh, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit211

bb.ad:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit195
  %i.iu = load ptr, ptr %8, align 8               ; 5 uses
  %i.iv = ptrtoint ptr %.pre332 to i64
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = sub i64 %i.iv, %i.iw                    ; 4 uses
  %i.iy = icmp eq i64 %i.ix, 9223372036854775792
  br i1 %i.iy, label %.invoke419, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i197

.invoke419:                                       ; preds = %bb.ag, %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
          to label %.cont420 unwind label %.loopexit.split-lp

.cont420:                                         ; preds = %.invoke419
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i197: ; preds = %bb.ad
  %i.iz = ashr exact i64 %i.ix, 4                 ; 3 uses
  %.sroa.speculated.i.i.i198 = call i64 @llvm.umax.i64(i64 %i.iz, i64 1)
  %i.ja = add nsw i64 %.sroa.speculated.i.i.i198, %i.iz ; 2 uses
  %i.jb = icmp ult i64 %i.ja, %i.iz
  %i.jc = call i64 @llvm.umin.i64(i64 %i.ja, i64 576460752303423487)
  %i.jd = select i1 %i.jb, i64 576460752303423487, i64 %i.jc ; 3 uses
  %.not.i.i.i199 = icmp ne i64 %i.jd, 0
  call void @llvm.assume(i1 %.not.i.i.i199)
  %i.je = shl nuw nsw i64 %i.jd, 4
  %i.jf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.je) #32
          to label %.noexc210 unwind label %.loopexit ; 5 uses

.noexc210:                                        ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i197
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.ix
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jg, ptr noundef nonnull align 8 dereferenceable(16) %i.is, i64 16, i1 false)
  %.not10.i.i.i.i.i200 = icmp eq ptr %i.iu, %.pre332
  br i1 %.not10.i.i.i.i.i200, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205, label %.lr.ph.i.i.i.i.i201

.lr.ph.i.i.i.i.i201:                              ; preds = %.noexc210, %.lr.ph.i.i.i.i.i201
  %.012.i.i.i.i.i202 = phi ptr [ %i.ji, %.lr.ph.i.i.i.i.i201 ], [ %i.jf, %.noexc210 ] ; 2 uses
  %.0911.i.i.i.i.i203 = phi ptr [ %i.jh, %.lr.ph.i.i.i.i.i201 ], [ %i.iu, %.noexc210 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i202, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i203, i64 16, i1 false), !alias.scope !308
  %i.jh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i203, i64 16 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i202, i64 16 ; 2 uses
  %.not.i.i.i.i.i204 = icmp eq ptr %i.jh, %.pre332
  br i1 %.not.i.i.i.i.i204, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205, label %.lr.ph.i.i.i.i.i201, !llvm.loop !66

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205: ; preds = %.lr.ph.i.i.i.i.i201, %.noexc210
  %.0.lcssa.i.i.i.i.i206 = phi ptr [ %i.jf, %.noexc210 ], [ %i.ji, %.lr.ph.i.i.i.i.i201 ]
  %i.jj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i206, i64 16 ; 2 uses
  %.not.i23.i.i207 = icmp eq ptr %i.iu, null
  br i1 %.not.i23.i.i207, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef %i.ix) #33
  %.pre333.pre = load ptr, ptr %5, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208: ; preds = %bb.ae, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205
  %.pre333 = phi ptr [ %.pre333.pre, %bb.ae ], [ %i.in, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205 ]
  store ptr %i.jf, ptr %8, align 8
  store ptr %i.jj, ptr %i.hi, align 8
  %i.jk = getelementptr inbounds nuw [16 x i8], ptr %i.jf, i64 %i.jd ; 2 uses
  store ptr %i.jk, ptr %i.hh, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit211

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit211: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208, %bb.ac
  %i.jl = phi ptr [ %i.jk, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208 ], [ %.pre334, %bb.ac ] ; 4 uses
  %i.jm = phi ptr [ %i.jj, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208 ], [ %i.it, %bb.ac ] ; 3 uses
  %i.jn = phi ptr [ %.pre333, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208 ], [ %i.in, %bb.ac ]
  %i.jo = getelementptr inbounds nuw [24 x i8], ptr %i.jn, i64 %i.ib
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = getelementptr inbounds nuw [16 x i8], ptr %i.jp, i64 %i.iq ; 2 uses
  %.not.i212 = icmp eq ptr %i.jm, %i.jl
  br i1 %.not.i212, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jm, ptr noundef nonnull align 8 dereferenceable(16) %i.jq, i64 16, i1 false)
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 16 ; 2 uses
  store ptr %i.jr, ptr %i.hi, align 8
  %.pre335 = load ptr, ptr %8, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit227

bb.ag:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit211
  %i.js = load ptr, ptr %8, align 8               ; 5 uses
  %i.jt = ptrtoint ptr %i.jl to i64
  %i.ju = ptrtoint ptr %i.js to i64
  %i.jv = sub i64 %i.jt, %i.ju                    ; 4 uses
  %i.jw = icmp eq i64 %i.jv, 9223372036854775792
  br i1 %i.jw, label %.invoke419, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i213

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i213: ; preds = %bb.ag
  %i.jx = ashr exact i64 %i.jv, 4                 ; 3 uses
  %.sroa.speculated.i.i.i214 = call i64 @llvm.umax.i64(i64 %i.jx, i64 1)
  %i.jy = add nsw i64 %.sroa.speculated.i.i.i214, %i.jx ; 2 uses
  %i.jz = icmp ult i64 %i.jy, %i.jx
  %i.ka = call i64 @llvm.umin.i64(i64 %i.jy, i64 576460752303423487)
  %i.kb = select i1 %i.jz, i64 576460752303423487, i64 %i.ka ; 3 uses
  %.not.i.i.i215 = icmp ne i64 %i.kb, 0
  call void @llvm.assume(i1 %.not.i.i.i215)
  %i.kc = shl nuw nsw i64 %i.kb, 4
  %i.kd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kc) #32
          to label %.noexc226 unwind label %.loopexit ; 6 uses

.noexc226:                                        ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i213
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.jv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ke, ptr noundef nonnull align 8 dereferenceable(16) %i.jq, i64 16, i1 false)
  %.not10.i.i.i.i.i216 = icmp eq ptr %i.js, %i.jl
  br i1 %.not10.i.i.i.i.i216, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i221, label %.lr.ph.i.i.i.i.i217

.lr.ph.i.i.i.i.i217:                              ; preds = %.noexc226, %.lr.ph.i.i.i.i.i217
  %.012.i.i.i.i.i218 = phi ptr [ %i.kg, %.lr.ph.i.i.i.i.i217 ], [ %i.kd, %.noexc226 ] ; 2 uses
  %.0911.i.i.i.i.i219 = phi ptr [ %i.kf, %.lr.ph.i.i.i.i.i217 ], [ %i.js, %.noexc226 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i218, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i219, i64 16, i1 false), !alias.scope !312
  %i.kf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i219, i64 16 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i218, i64 16 ; 2 uses
  %.not.i.i.i.i.i220 = icmp eq ptr %i.kf, %i.jl
  br i1 %.not.i.i.i.i.i220, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i221, label %.lr.ph.i.i.i.i.i217, !llvm.loop !66

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i221: ; preds = %.lr.ph.i.i.i.i.i217, %.noexc226
  %.0.lcssa.i.i.i.i.i222 = phi ptr [ %i.kd, %.noexc226 ], [ %i.kg, %.lr.ph.i.i.i.i.i217 ]
  %i.kh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i222, i64 16 ; 2 uses
  %.not.i23.i.i223 = icmp eq ptr %i.js, null
  br i1 %.not.i23.i.i223, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i221
  call void @_ZdlPvm(ptr noundef nonnull %i.js, i64 noundef %i.jv) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224: ; preds = %bb.ah, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i221
  store ptr %i.kd, ptr %8, align 8
  store ptr %i.kh, ptr %i.hi, align 8
  %i.ki = getelementptr inbounds nuw [16 x i8], ptr %i.kd, i64 %i.kb
  store ptr %i.ki, ptr %i.hh, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit227

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit227: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224, %bb.af
  %i.kj = phi ptr [ %i.kd, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224 ], [ %.pre335, %bb.af ] ; 8 uses
  %i.kk = phi ptr [ %i.kh, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224 ], [ %i.jr, %bb.af ] ; 3 uses
  %i.kl = ptrtoint ptr %i.kk to i64
  %i.km = ptrtoint ptr %i.kj to i64
  %i.kn = sub i64 %i.kl, %i.km                    ; 3 uses
  %i.ko = lshr exact i64 %i.kn, 4                 ; 4 uses
  %i.kp = trunc i64 %i.ko to i32
  %i.kq = icmp slt i32 %i.kp, 3
  br i1 %i.kq, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit227
  %i.kr = add nuw nsw i64 %i.ko, 4294967295
  %.phi.trans.insert.i.i = and i64 %i.kr, 4294967295
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw [16 x i8], ptr %i.kj, i64 %.phi.trans.insert.i.i ; 2 uses
  %.pre.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8 ; 2 uses
  %.phi.trans.insert26.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert25.i.i, i64 8
  %.pre27.i.i = load i64, ptr %.phi.trans.insert26.i.i, align 8 ; 2 uses
  %wide.trip.count.i.i = and i64 %i.kn, 34359738352
  %9 = icmp eq i64 %wide.trip.count.i.i, 16
  br i1 %9, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ai
  %unroll_iter = and i64 %i.ko, 2147483646
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.new
  %10 = phi i64 [ %.pre27.i.i, %.new ], [ %i.la, %bb.aj ]
  %indvars.iv.i.i.a = phi i64 [ %.pre.i.i, %.new ], [ %i.kx, %bb.aj ]
  %.023.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.1, %bb.aj ] ; 3 uses
  %.01821.i.i = phi double [ 0.000000e+00, %.new ], [ %i.ld, %bb.aj ]
  %niter = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i, %bb.aj ]
  %11 = sitofp i64 %indvars.iv.i.i.a to double
  %12 = getelementptr inbounds nuw [16 x i8], ptr %i.kj, i64 %.023.i.i ; 2 uses
  %13 = load i64, ptr %12, align 8                ; 2 uses
  %14 = sitofp i64 %13 to double
  %15 = fadd double %11, %14
  %16 = sitofp i64 %10 to double
  %i.ks = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.kt = load i64, ptr %i.ks, align 8            ; 2 uses
  %i.ku = sitofp i64 %i.kt to double
  %17 = fsub double %16, %i.ku
  %18 = call double @llvm.fmuladd.f64(double %15, double %17, double %.01821.i.i)
  %i.kv = sitofp i64 %13 to double
  %19 = getelementptr inbounds nuw [16 x i8], ptr %i.kj, i64 %.023.i.i ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.kx = load i64, ptr %i.kw, align 8            ; 3 uses
  %20 = sitofp i64 %i.kx to double
  %21 = fadd double %i.kv, %20
  %i.ky = sitofp i64 %i.kt to double
  %i.kz = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.la = load i64, ptr %i.kz, align 8            ; 3 uses
  %i.lb = sitofp i64 %i.la to double
  %i.lc = fsub double %i.ky, %i.lb
  %i.ld = call double @llvm.fmuladd.f64(double %21, double %i.lc, double %18) ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %.023.i.i, 2 ; 2 uses
  %indvars.iv.next.i.i = add i64 %niter, 2        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %unroll_iter
  br i1 %exitcond.not.i.i, label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.unr-lcssa, label %bb.aj, !llvm.loop !8

_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.unr-lcssa: ; preds = %bb.aj
  %22 = and i64 %i.kn, 16
  %lcmp.mod.not = icmp eq i64 %22, 0
  br i1 %lcmp.mod.not, label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.unr-lcssa, %bb.ai
  %.epil.init = phi i64 [ %.pre27.i.i, %bb.ai ], [ %i.la, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.unr-lcssa ]
  %.epil.init442 = phi i64 [ %.pre.i.i, %bb.ai ], [ %i.kx, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.unr-lcssa ]
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %bb.ai ], [ %indvars.iv.next.i.i.1, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.unr-lcssa ]
  %.01821.i.i.epil.init = phi double [ 0.000000e+00, %bb.ai ], [ %i.ld, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.unr-lcssa ]
  %lcmp.mod444 = trunc i64 %i.ko to i1
  call void @llvm.assume(i1 %lcmp.mod444)
  %23 = sitofp i64 %.epil.init442 to double
  %24 = getelementptr inbounds nuw [16 x i8], ptr %i.kj, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %25 = load i64, ptr %24, align 8
  %26 = sitofp i64 %25 to double
  %27 = fadd nnan double %23, %26
  %28 = sitofp i64 %.epil.init to double
  %29 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %30 = load i64, ptr %29, align 8
  %31 = sitofp i64 %30 to double
  %32 = fsub nnan double %28, %31
  %33 = call double @llvm.fmuladd.f64(double %27, double %32, double %.01821.i.i.epil.init)
  br label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit

_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit: ; preds = %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.unr-lcssa, %.epil.preheader
  %.lcssa432 = phi double [ %i.ld, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.unr-lcssa ], [ %33, %.epil.preheader ]
  %i.le = fmul double %.lcssa432, -5.000000e-01
  %i.lf = fcmp ult double %i.le, 0.000000e+00
  br i1 %i.lf, label %bb.ak, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit

bb.ak:                                            ; preds = %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit
  %i.lg = icmp ne ptr %i.kj, %i.kk
  %.sroa.0.08.i.i.i = getelementptr inbounds i8, ptr %i.kk, i64 -16 ; 2 uses
  %i.lh = icmp ult ptr %i.kj, %.sroa.0.08.i.i.i
  %or.cond.i.i.i = select i1 %i.lg, i1 %i.lh, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i228, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit

.lr.ph.i.i.i228:                                  ; preds = %bb.ak, %.lr.ph.i.i.i228
  %.sroa.0.010.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i228 ], [ %.sroa.0.08.i.i.i, %bb.ak ] ; 3 uses
  %.sroa.05.09.i.i.i = phi ptr [ %i.li, %.lr.ph.i.i.i228 ], [ %i.kj, %bb.ak ] ; 3 uses
  %.sroa.0.0.copyload = load <2 x i64>, ptr %.sroa.05.09.i.i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.09.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i.i, i64 16, i1 false)
  store <2 x i64> %.sroa.0.0.copyload, ptr %.sroa.0.010.i.i.i, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i, i64 -16 ; 2 uses
  %i.lj = icmp ult ptr %i.li, %.sroa.0.0.i.i.i
  br i1 %i.lj, label %.lr.ph.i.i.i228, label %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit, !llvm.loop !170

.loopexit:                                        ; preds = %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i164, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i197, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i213, %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i233, %bb.ap
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp:                               ; preds = %.invoke419, %.noexc.i.i.i241
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.lk = load ptr, ptr %8, align 8               ; 3 uses
  %.not.i.i.i229 = icmp eq ptr %i.lk, null
  br i1 %.not.i.i.i229, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit230, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ll = load ptr, ptr %i.hh, align 8
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = ptrtoint ptr %i.lk to i64
  %i.lo = sub i64 %i.lm, %i.ln
  call void @_ZdlPvm(ptr noundef nonnull %i.lk, i64 noundef %i.lo) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit230

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit230: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.ar

_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit: ; preds = %.lr.ph.i.i.i228, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit227, %bb.ak, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit
  %i.lp = load ptr, ptr %i.fs, align 8            ; 6 uses
  %i.lq = load ptr, ptr %i.gg, align 8
  %.not.i231 = icmp eq ptr %i.lp, %i.lq
  br i1 %.not.i231, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit
  %i.lr = load ptr, ptr %i.hi, align 8            ; 2 uses
  %i.ls = load ptr, ptr %8, align 8               ; 2 uses
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = sub i64 %i.lt, %i.lu                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lp, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i232 = icmp eq ptr %i.lr, %i.ls
  br i1 %.not.i.i.i.i.i232, label %.noexc243, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lw = icmp ugt i64 %i.lv, 9223372036854775792
  br i1 %i.lw, label %.noexc.i.i.i241, label %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i233, !prof !60

.noexc.i.i.i241:                                  ; preds = %bb.ao
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc242 unwind label %.loopexit.split-lp

.noexc242:                                        ; preds = %.noexc.i.i.i241
  unreachable

_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i233: ; preds = %bb.ao
  %i.lx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lv) #32
          to label %.noexc243 unwind label %.loopexit

.noexc243:                                        ; preds = %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i233, %bb.an
  %i.ly = phi ptr [ null, %bb.an ], [ %i.lx, %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i233 ] ; 5 uses
  store ptr %i.ly, ptr %i.lp, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lp, i64 8 ; 2 uses
  store ptr %i.ly, ptr %i.lz, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.lv
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store ptr %i.ma, ptr %i.mb, align 8
  %i.mc = load ptr, ptr %8, align 8               ; 3 uses
  %i.md = load ptr, ptr %i.hi, align 8            ; 2 uses
  %.not7.i.i.i.i.i.i234 = icmp eq ptr %i.mc, %i.md
  br i1 %.not7.i.i.i.i.i.i234, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i239, label %.lr.ph.i.i.i.i.i.i235

.lr.ph.i.i.i.i.i.i235:                            ; preds = %.noexc243, %.lr.ph.i.i.i.i.i.i235
  %.09.i.i.i.i.i.i236 = phi ptr [ %i.mf, %.lr.ph.i.i.i.i.i.i235 ], [ %i.ly, %.noexc243 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i237 = phi ptr [ %i.me, %.lr.ph.i.i.i.i.i.i235 ], [ %i.mc, %.noexc243 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i236, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i237, i64 16, i1 false)
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i237, i64 16 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i236, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i238 = icmp eq ptr %i.me, %i.md
  br i1 %.not.i.i.i.i.i.i238, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i239, label %.lr.ph.i.i.i.i.i.i235, !llvm.loop !61

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i239: ; preds = %.lr.ph.i.i.i.i.i.i235, %.noexc243
  %.0.lcssa.i.i.i.i.i.i240 = phi ptr [ %i.ly, %.noexc243 ], [ %i.mf, %.lr.ph.i.i.i.i.i.i235 ]
  store ptr %.0.lcssa.i.i.i.i.i.i240, ptr %i.lz, align 8
  %i.mg = load ptr, ptr %i.fs, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 24
  store ptr %i.mh, ptr %i.fs, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245

bb.ap:                                            ; preds = %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit
  invoke void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.lp, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245_crit_edge unwind label %.loopexit

._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245_crit_edge: ; preds = %bb.ap
  %.pre336 = load ptr, ptr %8, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245: ; preds = %._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245_crit_edge, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i239
  %i.mi = phi ptr [ %.pre336, %._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245_crit_edge ], [ %i.mc, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i239 ] ; 3 uses
  %.not.i.i.i246 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i246, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit247, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245
  %i.mj = load ptr, ptr %i.hh, align 8
  %i.mk = ptrtoint ptr %i.mj to i64
  %i.ml = ptrtoint ptr %i.mi to i64
  %i.mm = sub i64 %i.mk, %i.ml
  call void @_ZdlPvm(ptr noundef nonnull %i.mi, i64 noundef %i.mm) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit247

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit247: ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %exitcond329.not = icmp eq i64 %i.ip, %i.g
  br i1 %exitcond329.not, label %._crit_edge306, label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i164, !llvm.loop !316

bb.ar:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit230, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit145, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit98, %bb.c
  %.pn76.pn = phi { ptr, i32 } [ %.pn76, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit98 ], [ %lpad.phi, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit230 ], [ %i.ac, %bb.c ], [ %.pn, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit145 ]
  call void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn76.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib12MinkowskiSumERKSt6vectorINS_8IntPointESaIS1_EES5_RS0_IS3_SaIS3_EEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ClipperLib::Clipper", align 8 ; 27 uses
  tail call void @_ZN10ClipperLib9MinkowskiERKSt6vectorINS_8IntPointESaIS1_EES5_RS0_IS3_SaIS3_EEbb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true, i1 noundef zeroext %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.e, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.b, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 24) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 24), ptr %4, align 8
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN10ClipperLib7ClipperE, i64 96), ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i8 0, i64 72, i1 false)
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.g, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i8 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 176
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 132
  store i8 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 134
  store i8 0, ptr %i.m, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 209
  store i8 0, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i, label %_ZN10ClipperLib11ClipperBase8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8PolyTypeEb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.noexc
  %i.s = phi ptr [ %i.aa, %.noexc ], [ %i.r, %bb.a ]
  %.010.i = phi i64 [ %i.y, %.noexc ], [ 0, %bb.a ] ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.010.i
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i32 noundef 0, i1 noundef zeroext true)
          to label %.noexc unwind label %.loopexit, !inline_history !173 ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.y = add nuw i64 %.010.i, 1                   ; 2 uses
  %i.z = load ptr, ptr %i.p, align 8
  %i.aa = load ptr, ptr %2, align 8               ; 2 uses
end_hunk_2
