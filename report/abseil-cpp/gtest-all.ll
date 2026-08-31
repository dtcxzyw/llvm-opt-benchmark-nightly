Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/gtest-all?download=true
inline.NumInlined: 9435
inline.NumDeleted: 2438
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK7testing8internal12UnitTestImpl30reportable_disabled_test_countEv:bb.a
.lr.ph.i.i:                                       ; preds = %.lr.ph.split.us.i, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i ], [ 0, %.lr.ph.split.us.i ]
  %.sroa.04.08.i.i = phi ptr [ %i.aa, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i ], [ %i.l, %.lr.ph.split.us.i ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !803 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 130
  %i.q = load i8, ptr %i.p, align 2, !tbaa !818, !range !20, !noundef !21
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 131
  %i.t = load i8, ptr %i.s, align 1, !range !20
  %i.u = trunc nuw i8 %i.t to i1
  %not..i.i = xor i1 %i.r, true
  %i.v = select i1 %not..i.i, i1 true, i1 %i.u
  br i1 %i.v, label %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 129
  %i.x = load i8, ptr %i.w, align 1, !tbaa !819, !range !20, !noundef !21
  %i.y = zext nneg i8 %i.x to i32
  br label %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i

_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.z = phi i32 [ 0, %.lr.ph.i.i ], [ %i.y, %bb.b ]
  %spec.select.i.i = add nuw nsw i32 %i.z, %.09.i.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.n
  br i1 %.not.i.i, label %_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit, label %.lr.ph.i.i, !llvm.loop !812

_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit: ; preds = %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i, %.lr.ph.split.us.i
  %.0.lcssa.i.i = phi i32 [ 0, %.lr.ph.split.us.i ], [ %spec.select.i.i, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i ]
  %i.ab = add nsw i32 %.0.lcssa.i.i, %.01213.us.i ; 2 uses
  %i.ac = add nuw i64 %.014.us.i, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.h
  br i1 %exitcond.not, label %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit, label %.lr.ph.split.us.i, !llvm.loop !813

_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit: ; preds = %_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit, %bb.a
  %.012.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.ab, %_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit ]
  ret i32 %.012.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK7testing9TestSuite30reportable_disabled_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !802  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !802  ; 2 uses
  %.not7.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit
  %.09.i = phi i32 [ %spec.select.i, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit ], [ 0, %bb.a ]
  %.sroa.04.08.i = phi ptr [ %i.q, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !803 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 130
  %i.g = load i8, ptr %i.f, align 2, !tbaa !818, !range !20, !noundef !21
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 131
  %i.j = load i8, ptr %i.i, align 1, !range !20
  %i.k = trunc nuw i8 %i.j to i1
  %not..i = xor i1 %i.h, true
  %i.l = select i1 %not..i, i1 true, i1 %i.k
  br i1 %i.l, label %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 129
  %i.n = load i8, ptr %i.m, align 1, !tbaa !819, !range !20, !noundef !21
  %i.o = zext nneg i8 %i.n to i32
  br label %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit

_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit: ; preds = %.lr.ph.i, %bb.b
  %i.p = phi i32 [ 0, %.lr.ph.i ], [ %i.o, %bb.b ]
  %spec.select.i = add nuw nsw i32 %i.p, %.09.i   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.d
  br i1 %.not.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i, !llvm.loop !812

_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit: ; preds = %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK7testing8internal12UnitTestImpl19disabled_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(713) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !800  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !801  ; 3 uses
  %.not15.i = icmp eq ptr %i.c, %i.d
  br i1 %.not15.i, label %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %_ZNK7testing9TestSuite19disabled_test_countEv.exit
  %.014.us.i = phi i64 [ %i.u, %_ZNK7testing9TestSuite19disabled_test_countEv.exit ], [ 0, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.01213.us.i = phi i32 [ %i.t, %_ZNK7testing9TestSuite19disabled_test_countEv.exit ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.014.us.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !785  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !802  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !802  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not7.i.i, label %_ZNK7testing9TestSuite19disabled_test_countEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.us.i, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.split.us.i ]
  %.sroa.04.08.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.l, %.lr.ph.split.us.i ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !803
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 129
  %i.q = load i8, ptr %i.p, align 1, !tbaa !819, !range !20, !noundef !21
  %i.r = zext nneg i8 %i.q to i32
  %spec.select.i.i = add nuw nsw i32 %.09.i.i, %i.r ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not.i.i, label %_ZNK7testing9TestSuite19disabled_test_countEv.exit, label %.lr.ph.i.i, !llvm.loop !812

_ZNK7testing9TestSuite19disabled_test_countEv.exit: ; preds = %.lr.ph.i.i, %.lr.ph.split.us.i
  %.0.lcssa.i.i = phi i32 [ 0, %.lr.ph.split.us.i ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.t = add nsw i32 %.0.lcssa.i.i, %.01213.us.i  ; 2 uses
  %i.u = add nuw i64 %.014.us.i, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.h
  br i1 %exitcond.not, label %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit, label %.lr.ph.split.us.i, !llvm.loop !813

_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit: ; preds = %_ZNK7testing9TestSuite19disabled_test_countEv.exit, %bb.a
  %.012.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.t, %_ZNK7testing9TestSuite19disabled_test_countEv.exit ]
  ret i32 %.012.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK7testing9TestSuite19disabled_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !802  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !802  ; 2 uses
  %.not7.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.09.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.04.08.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !803
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 129
  %i.g = load i8, ptr %i.f, align 1, !tbaa !819, !range !20, !noundef !21
  %i.h = zext nneg i8 %i.g to i32
  %spec.select.i = add nuw nsw i32 %.09.i, %i.h   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i, !llvm.loop !812

_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit: ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %.lr.ph.i ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK7testing8internal12UnitTestImpl21reportable_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(713) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !800  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !801  ; 3 uses
  %.not15.i = icmp eq ptr %i.c, %i.d
  br i1 %.not15.i, label %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %_ZNK7testing9TestSuite21reportable_test_countEv.exit
  %.014.us.i = phi i64 [ %i.x, %_ZNK7testing9TestSuite21reportable_test_countEv.exit ], [ 0, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.01213.us.i = phi i32 [ %i.w, %_ZNK7testing9TestSuite21reportable_test_countEv.exit ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.014.us.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !785  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !802  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !802  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not7.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.us.i, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.split.us.i ]
  %.sroa.04.08.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.l, %.lr.ph.split.us.i ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !803 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 130
  %i.q = load i8, ptr %i.p, align 2, !tbaa !818, !range !20, !noundef !21
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 131
  %i.t = load i8, ptr %i.s, align 1, !range !20
  %i.u = xor i8 %i.t, 1
  %1 = zext nneg i8 %i.u to i32
  %2 = select i1 %i.r, i32 %1, i32 0
  %spec.select.i.i = add nuw nsw i32 %2, %.09.i.i ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.n
  br i1 %.not.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit, label %.lr.ph.i.i, !llvm.loop !812

_ZNK7testing9TestSuite21reportable_test_countEv.exit: ; preds = %.lr.ph.i.i, %.lr.ph.split.us.i
  %.0.lcssa.i.i = phi i32 [ 0, %.lr.ph.split.us.i ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.w = add nsw i32 %.0.lcssa.i.i, %.01213.us.i  ; 2 uses
  %i.x = add nuw i64 %.014.us.i, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.h
  br i1 %exitcond.not, label %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit, label %.lr.ph.split.us.i, !llvm.loop !813

_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit: ; preds = %_ZNK7testing9TestSuite21reportable_test_countEv.exit, %bb.a
  %.012.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.w, %_ZNK7testing9TestSuite21reportable_test_countEv.exit ]
  ret i32 %.012.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK7testing9TestSuite21reportable_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !802  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !802  ; 2 uses
  %.not7.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.09.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.04.08.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !803 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 130
  %i.g = load i8, ptr %i.f, align 2, !tbaa !818, !range !20, !noundef !21
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 131
  %i.j = load i8, ptr %i.i, align 1, !range !20
  %i.k = xor i8 %i.j, 1
  %1 = zext nneg i8 %i.k to i32
  %2 = select i1 %i.h, i32 %1, i32 0
  %spec.select.i = add nuw nsw i32 %2, %.09.i     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.d
  br i1 %.not.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i, !llvm.loop !812

_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit: ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %.lr.ph.i ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK7testing8internal12UnitTestImpl16total_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(713) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !800  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !801  ; 5 uses
  %.not15.i = icmp eq ptr %i.c, %i.d
  br i1 %.not15.i, label %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = icmp eq i64 %i.g, 8
  br i1 %i.i, label %.lr.ph.split.us.i.epil.preheader, label %.lr.ph.split.us.i.preheader.new

.lr.ph.split.us.i.preheader.new:                  ; preds = %.lr.ph.split.us.i.preheader
  %unroll_iter = and i64 %i.h, -2
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.i.preheader.new
  %.014.us.i = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %i.ai, %.lr.ph.split.us.i ] ; 3 uses
  %.01213.us.i = phi i32 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %i.ah, %.lr.ph.split.us.i ]
  %niter = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %niter.next.1, %.lr.ph.split.us.i ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.014.us.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !785  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !820
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !821
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = lshr exact i64 %i.r, 3
  %i.t = trunc i64 %i.s to i32
  %i.u = add nsw i32 %.01213.us.i, %i.t
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.014.us.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !785  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !820
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !821
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = trunc i64 %i.af to i32
  %i.ah = add nsw i32 %i.u, %i.ag                 ; 3 uses
  %i.ai = add nuw i64 %.014.us.i, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit.loopexit.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !813

_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.split.us.i
  %i.aj = and i64 %i.g, 8
  %lcmp.mod.not = icmp eq i64 %i.aj, 0
  br i1 %lcmp.mod.not, label %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit.loopexit.unr-lcssa, %.lr.ph.split.us.i.preheader
  %.014.us.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %i.ai, %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit.loopexit.unr-lcssa ]
  %.01213.us.i.epil.init = phi i32 [ 0, %.lr.ph.split.us.i.preheader ], [ %i.ah, %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.014.us.i.epil.init
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !785 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !820
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !821
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = lshr exact i64 %i.as, 3
  %i.au = trunc i64 %i.at to i32
  %i.av = add nsw i32 %.01213.us.i.epil.init, %i.au
  br label %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit

_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit: ; preds = %.lr.ph.split.us.i.epil.preheader, %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit.loopexit.unr-lcssa, %bb.a
  %.012.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.ah, %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.split.us.i.epil.preheader ]
  ret i32 %.012.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK7testing9TestSuite16total_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !820
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !821
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK7testing8internal12UnitTestImpl17test_to_run_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(713) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !800  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !801  ; 3 uses
  %.not15.i = icmp eq ptr %i.c, %i.d
  br i1 %.not15.i, label %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %_ZNK7testing9TestSuite17test_to_run_countEv.exit
  %.014.us.i = phi i64 [ %i.u, %_ZNK7testing9TestSuite17test_to_run_countEv.exit ], [ 0, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.01213.us.i = phi i32 [ %i.t, %_ZNK7testing9TestSuite17test_to_run_countEv.exit ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.014.us.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !785  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !802  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !802  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not7.i.i, label %_ZNK7testing9TestSuite17test_to_run_countEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.us.i, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.split.us.i ]
  %.sroa.04.08.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.l, %.lr.ph.split.us.i ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !803
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.q = load i8, ptr %i.p, align 8, !tbaa !804, !range !20, !noundef !21
  %i.r = zext nneg i8 %i.q to i32
  %spec.select.i.i = add nuw nsw i32 %.09.i.i, %i.r ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not.i.i, label %_ZNK7testing9TestSuite17test_to_run_countEv.exit, label %.lr.ph.i.i, !llvm.loop !812

_ZNK7testing9TestSuite17test_to_run_countEv.exit: ; preds = %.lr.ph.i.i, %.lr.ph.split.us.i
  %.0.lcssa.i.i = phi i32 [ 0, %.lr.ph.split.us.i ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.t = add nsw i32 %.0.lcssa.i.i, %.01213.us.i  ; 2 uses
  %i.u = add nuw i64 %.014.us.i, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.h
  br i1 %exitcond.not, label %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit, label %.lr.ph.split.us.i, !llvm.loop !813

_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit: ; preds = %_ZNK7testing9TestSuite17test_to_run_countEv.exit, %bb.a
  %.012.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.t, %_ZNK7testing9TestSuite17test_to_run_countEv.exit ]
  ret i32 %.012.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK7testing9TestSuite17test_to_run_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !802  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !802  ; 2 uses
  %.not7.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.09.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.04.08.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !803
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.g = load i8, ptr %i.f, align 8, !tbaa !804, !range !20, !noundef !21
  %i.h = zext nneg i8 %i.g to i32
  %spec.select.i = add nuw nsw i32 %.09.i, %i.h   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i, !llvm.loop !812

_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit: ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %.lr.ph.i ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(713) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !658  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #54 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.d, align 8, !tbaa !36
end_hunk_0
begin_hunk_1_@_ZN7testing8internalL18OpenFileForWritingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.k:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %0, align 8, !tbaa !26
  %i.aw = call noalias noundef ptr @fopen(ptr noundef %i.av, ptr noundef nonnull @.str.390) ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.h, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  invoke void @_ZN7testing8internal8GTestLogC2ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 3, ptr noundef nonnull @.str.139, i32 noundef 229)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.thread
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.494, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.l
  %i.az = load ptr, ptr %0, align 8, !tbaa !26
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !29
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.az, i64 noundef %i.ba)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.n

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.187, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  br label %bb.p

bb.m:                                             ; preds = %.thread
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.l
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #55
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.be, %bb.n ], [ %i.bd, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  br label %bb.q

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19, %bb.k
  %.01030 = phi ptr [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19 ], [ %i.aw, %bb.k ]
  %i.bf = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZN7testing8internal8FilePathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.p
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !31
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #56
  br label %_ZN7testing8internal8FilePathD2Ev.exit

_ZN7testing8internal8FilePathD2Ev.exit:           ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.bk = load ptr, ptr %1, align 8, !tbaa !26    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.o
  br i1 %i.bl, label %_ZN7testing8internal8FilePathD2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %_ZN7testing8internal8FilePathD2Ev.exit
  %i.bm = load i64, ptr %i.o, align 8, !tbaa !31
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #56
  br label %_ZN7testing8internal8FilePathD2Ev.exit22

_ZN7testing8internal8FilePathD2Ev.exit22:         ; preds = %_ZN7testing8internal8FilePathD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  ret ptr %.01030

bb.q:                                             ; preds = %bb.o, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.o ], [ %i.au, %bb.j ] ; 2 uses
  %i.bo = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZN7testing8internal8FilePathD2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23: ; preds = %bb.q
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !31
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #56
  br label %_ZN7testing8internal8FilePathD2Ev.exit25

_ZN7testing8internal8FilePathD2Ev.exit25:         ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.at, %bb.i ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23 ], [ %.pn.pn, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.bt = load ptr, ptr %1, align 8, !tbaa !26    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.o
  br i1 %i.bu, label %_ZN7testing8internal8FilePathD2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26: ; preds = %_ZN7testing8internal8FilePathD2Ev.exit25
  %i.bv = load i64, ptr %i.o, align 8, !tbaa !31
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #56
  br label %_ZN7testing8internal8FilePathD2Ev.exit28

_ZN7testing8internal8FilePathD2Ev.exit28:         ; preds = %_ZN7testing8internal8FilePathD2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing8internal24XmlUnitTestResultPrinter16PrintXmlUnitTestEPSoRKNS_8UnitTestE(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.329, i64 10, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 10, ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 0, ptr %i.c, align 2, !tbaa !31
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.330, i64 noundef 39)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %._crit_edge.i.i
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.331, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = load ptr, ptr %2, align 8, !tbaa !26
  %i.g = load i64, ptr %i.b, align 8, !tbaa !29
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.f, i64 noundef %i.g)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.v ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.i, ptr noundef nonnull align 1 dereferenceable(5) @.str.250, i64 5, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 5, ptr %i.j, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i8 0, ptr %i.k, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 9 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !800  ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !801  ; 3 uses
  %.not15.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not15.i.i.i, label %_ZNK7testing8UnitTest21reportable_test_countEv.exit, label %.lr.ph.split.us.i.preheader.i.i

.lr.ph.split.us.i.preheader.i.i:                  ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3
  br label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i, %.lr.ph.split.us.i.preheader.i.i
  %.014.us.i.i.i = phi i64 [ %i.ak, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i ], [ 0, %.lr.ph.split.us.i.preheader.i.i ] ; 2 uses
  %.01213.us.i.i.i = phi i32 [ %i.aj, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i ], [ 0, %.lr.ph.split.us.i.preheader.i.i ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.014.us.i.i.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !785  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !802  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !802 ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not7.i.i.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.split.us.i.i.i, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.split.us.i.i.i ]
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %i.y, %.lr.ph.split.us.i.i.i ] ; 2 uses
  %i.ab = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !803 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 130
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !818, !range !20, !noundef !21
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 131
  %i.ag = load i8, ptr %i.af, align 1, !range !20
  %i.ah = xor i8 %i.ag, 1
  %20 = zext nneg i8 %i.ah to i32
  %21 = select i1 %i.ae, i32 %20, i32 0
  %spec.select.i.i.i.i = add nuw nsw i32 %21, %.09.i.i.i.i ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, %i.aa
  br i1 %.not.i.i.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !812

_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split.us.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ 0, %.lr.ph.split.us.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.aj = add nsw i32 %.0.lcssa.i.i.i.i, %.01213.us.i.i.i ; 2 uses
  %i.ak = add nuw i64 %.014.us.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ak, %i.u
  br i1 %exitcond.not.i.i, label %_ZNK7testing8UnitTest21reportable_test_countEv.exit, label %.lr.ph.split.us.i.i.i, !llvm.loop !813

_ZNK7testing8UnitTest21reportable_test_countEv.exit: ; preds = %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %.012.lcssa.i.i.i = phi i32 [ 0, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ], [ %i.aj, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i ]
  %i.al = invoke noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #54
          to label %.noexc88 unwind label %bb.w   ; 8 uses

.noexc88:                                         ; preds = %_ZNK7testing8UnitTest21reportable_test_countEv.exit
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.al)
          to label %_ZN7testing7MessageC2Ev.exit.i unwind label %bb.a, !noalias !1231

bb.a:                                             ; preds = %.noexc88
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 392) #56, !noalias !1231
  br label %.body

_ZN7testing7MessageC2Ev.exit.i:                   ; preds = %.noexc88
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !36, !noalias !1231
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !1231
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 17, ptr %i.as, align 8, !tbaa !38, !noalias !1231
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i32 noundef %.012.lcssa.i.i.i)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i unwind label %_ZN7testing7MessageD2Ev.exit4.i, !noalias !1231 ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i:         ; preds = %_ZN7testing7MessageC2Ev.exit.i
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %i.al)
          to label %bb.b unwind label %_ZN7testing7MessageD2Ev.exit4.i

_ZN7testing7MessageD2Ev.exit4.i:                  ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i, %_ZN7testing7MessageC2Ev.exit.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !36
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(128) %i.al) #55, !inline_history !213
  br label %.body

bb.b:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i
  %i.ay = load ptr, ptr %i.al, align 8, !tbaa !36
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.al) #55, !inline_history !213
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter18OutputXmlAttributeEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.x

bb.c:                                             ; preds = %bb.b
  %i.bb = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !31
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  %i.bg = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.i
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = load i64, ptr %i.i, align 8, !tbaa !31
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.bk, ptr %5, align 8, !tbaa !23
  store i64 8315178135665074534, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 8, ptr %i.bl, align 8, !tbaa !29
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.bm, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !61  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 184
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 192
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !800 ; 2 uses
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !801 ; 3 uses
  %.not15.i.i.i96 = icmp eq ptr %i.bq, %i.br
  br i1 %.not15.i.i.i96, label %_ZNK7testing8UnitTest17failed_test_countEv.exit, label %.lr.ph.split.us.i.preheader.i.i97

.lr.ph.split.us.i.preheader.i.i97:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 3
  br label %.lr.ph.split.us.i.i.i98

.lr.ph.split.us.i.i.i98:                          ; preds = %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i, %.lr.ph.split.us.i.preheader.i.i97
  %.014.us.i.i.i99 = phi i64 [ %i.cw, %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i ], [ 0, %.lr.ph.split.us.i.preheader.i.i97 ] ; 2 uses
  %.01213.us.i.i.i100 = phi i32 [ %i.cv, %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i ], [ 0, %.lr.ph.split.us.i.preheader.i.i97 ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.014.us.i.i.i99
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !785 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !802 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !802 ; 2 uses
  %.not7.i.i.i.i101 = icmp eq ptr %i.bz, %i.cb
  br i1 %.not7.i.i.i.i101, label %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i, label %.lr.ph.i.i.i.i102

.lr.ph.i.i.i.i102:                                ; preds = %.lr.ph.split.us.i.i.i98, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i
  %.09.i.i.i.i103 = phi i32 [ %spec.select.i.i.i.i105, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i ], [ 0, %.lr.ph.split.us.i.i.i98 ]
  %.sroa.04.08.i.i.i.i104 = phi ptr [ %i.cu, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i ], [ %i.bz, %.lr.ph.split.us.i.i.i98 ] ; 2 uses
  %i.cc = load ptr, ptr %.sroa.04.08.i.i.i.i104, align 8, !tbaa !803 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 128
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !804, !range !20, !noundef !21
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.d, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i102
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 200
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 208
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !596
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !598 ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = sdiv exact i64 %i.cm, 112               ; 5 uses
  %i.co = trunc i64 %i.cn to i32
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph.preheader.i.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.d
  %wide.trip.count.i.i.i.i.i = and i64 %i.cn, 2147483647
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond16.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond16.not.i.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !807

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %bb.e ] ; 3 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i.i, %i.cn
  br i1 %exitcond.not.i.i.i.i.i, label %bb.f, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.563, i64 noundef %i.cn, i64 noundef %i.cn) #57
          to label %.noexc110 unwind label %bb.y

.noexc110:                                        ; preds = %bb.f
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.cq = getelementptr inbounds nuw [112 x i8], ptr %i.cj, i64 %indvars.iv.i.i.i.i.i
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !595
  %i.cs = add i32 %i.cr, -1
  %spec.select.i.i.i.i.i.i = icmp ult i32 %i.cs, 2
  br i1 %spec.select.i.i.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i, label %bb.e

_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i.i, %bb.e, %bb.d, %.lr.ph.i.i.i.i102
  %i.ct = phi i32 [ 0, %.lr.ph.i.i.i.i102 ], [ 0, %bb.d ], [ 1, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i.i ], [ 0, %bb.e ]
  %spec.select.i.i.i.i105 = add nuw nsw i32 %i.ct, %.09.i.i.i.i103 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i104, i64 8 ; 2 uses
  %.not.i.i.i.i106 = icmp eq ptr %i.cu, %i.cb
  br i1 %.not.i.i.i.i106, label %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i, label %.lr.ph.i.i.i.i102, !llvm.loop !812

_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i: ; preds = %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i, %.lr.ph.split.us.i.i.i98
  %.0.lcssa.i.i.i.i107 = phi i32 [ 0, %.lr.ph.split.us.i.i.i98 ], [ %spec.select.i.i.i.i105, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i ]
  %i.cv = add nsw i32 %.0.lcssa.i.i.i.i107, %.01213.us.i.i.i100 ; 2 uses
  %i.cw = add nuw i64 %.014.us.i.i.i99, 1         ; 2 uses
  %exitcond.not.i.i108 = icmp eq i64 %i.cw, %i.bv
  br i1 %exitcond.not.i.i108, label %_ZNK7testing8UnitTest17failed_test_countEv.exit, label %.lr.ph.split.us.i.i.i98, !llvm.loop !813

_ZNK7testing8UnitTest17failed_test_countEv.exit:  ; preds = %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %.012.lcssa.i.i.i109 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %i.cv, %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i ]
  %i.cx = invoke noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #54
          to label %.noexc116 unwind label %bb.y  ; 8 uses

.noexc116:                                        ; preds = %_ZNK7testing8UnitTest17failed_test_countEv.exit
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.cx)
          to label %_ZN7testing7MessageC2Ev.exit.i113 unwind label %bb.g, !noalias !1234

bb.g:                                             ; preds = %.noexc116
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef 392) #56, !noalias !1234
  br label %.body117

_ZN7testing7MessageC2Ev.exit.i113:                ; preds = %.noexc116
end_hunk_1
begin_hunk_2_@_ZN7testing8internal24XmlUnitTestResultPrinter16PrintXmlUnitTestEPSoRKNS_8UnitTestE:._crit_edge.i.i
  %i.lt = load i64, ptr %i.lr, align 8, !tbaa !31
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lu) #56
  br label %.body203

.body203:                                         ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248, %bb.ah, %_ZN7testing7MessageD2Ev.exit4.i200, %bb.s
  %.pn69 = phi { ptr, i32 } [ %i.il, %_ZN7testing7MessageD2Ev.exit4.i200 ], [ %i.lo, %bb.ah ], [ %i.id, %bb.s ], [ %i.lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248 ], [ %i.lp, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #55
  %i.lv = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.hw
  br i1 %i.lw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %.body203
  %i.lx = load i64, ptr %i.hw, align 8, !tbaa !31
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.ly) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %.body203, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #55
  br label %bb.aq

._crit_edge.i.i254:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #55
  %i.lz = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.lz, ptr %17, align 8, !tbaa !23
  store i32 1701667182, ptr %i.lz, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 4, ptr %i.ma, align 8, !tbaa !29
  %i.mb = getelementptr inbounds nuw i8, ptr %17, i64 20
  store i8 0, ptr %i.mb, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #55
  %i.mc = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.mc, ptr %18, align 8, !tbaa !23
  store i64 8319401290705431617, ptr %i.mc, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 8, ptr %i.md, align 8, !tbaa !29
  %i.me = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i8 0, ptr %i.me, align 8, !tbaa !31
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter18OutputXmlAttributeEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %._crit_edge.i.i254
  %i.mf = load ptr, ptr %18, align 8, !tbaa !26   ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.mc
  br i1 %i.mg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262: ; preds = %bb.aj
  %i.mh = load i64, ptr %i.mc, align 8, !tbaa !31
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mi) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #55
  %i.mj = load ptr, ptr %17, align 8, !tbaa !26   ; 2 uses
  %i.mk = icmp eq ptr %i.mj, %i.lz
  br i1 %i.mk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264
  %i.ml = load i64, ptr %i.lz, align 8, !tbaa !31
  %i.mm = add i64 %i.ml, 1
  call void @_ZdlPvm(ptr noundef %i.mj, i64 noundef %i.mm) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #55
  %i.mn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.317, i64 noundef 2)
          to label %._crit_edge.i.i270 unwind label %bb.v ; 0 uses

._crit_edge.i.i270:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267
  %i.mo = load ptr, ptr %i.l, align 8, !tbaa !61
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 488
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #55
  %i.mq = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.mq, ptr %19, align 8, !tbaa !23
  store i16 8224, ptr %i.mq, align 8
  %i.mr = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 2, ptr %i.mr, align 8, !tbaa !29
  %i.ms = getelementptr inbounds nuw i8, ptr %19, i64 18
  store i8 0, ptr %i.ms, align 2, !tbaa !31
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter23OutputXmlTestPropertiesEPSoRKNS_10TestResultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(128) %i.mp, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %._crit_edge.i.i270
  %i.mt = load ptr, ptr %19, align 8, !tbaa !26   ; 2 uses
  %i.mu = icmp eq ptr %i.mt, %i.mq
  br i1 %i.mu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274: ; preds = %bb.ak
  %i.mv = load i64, ptr %i.mq, align 8, !tbaa !31
  %i.mw = add i64 %i.mv, 1
  call void @_ZdlPvm(ptr noundef %i.mt, i64 noundef %i.mw) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #55
  %i.mx = load ptr, ptr %i.l, align 8, !tbaa !61  ; 4 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 184
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 192
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !800
  %i.nb = load ptr, ptr %i.my, align 8, !tbaa !801 ; 2 uses
  %i.nc = ptrtoint ptr %i.na to i64
  %i.nd = ptrtoint ptr %i.nb to i64
  %i.ne = sub i64 %i.nc, %i.nd
  %i.nf = lshr exact i64 %i.ne, 3
  %i.ng = trunc i64 %i.nf to i32
  %i.nh = icmp sgt i32 %i.ng, 0
  br i1 %i.nh, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i, label %._crit_edge

bb.al:                                            ; preds = %._crit_edge.i.i254
  %i.ni = landingpad { ptr, i32 }
          cleanup
  %i.nj = load ptr, ptr %18, align 8, !tbaa !26   ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.mc
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277: ; preds = %bb.al
  %i.nl = load i64, ptr %i.mc, align 8, !tbaa !31
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nm) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #55
  %i.nn = load ptr, ptr %17, align 8, !tbaa !26   ; 2 uses
  %i.no = icmp eq ptr %i.nn, %i.lz
  br i1 %i.no, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279
  %i.np = load i64, ptr %i.lz, align 8, !tbaa !31
  %i.nq = add i64 %i.np, 1
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.nq) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #55
  br label %bb.aq

bb.am:                                            ; preds = %._crit_edge.i.i270
  %i.nr = landingpad { ptr, i32 }
          cleanup
  %i.ns = load ptr, ptr %19, align 8, !tbaa !26   ; 2 uses
  %i.nt = icmp eq ptr %i.ns, %i.mq
  br i1 %i.nt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %bb.am
  %i.nu = load i64, ptr %i.mq, align 8, !tbaa !31
  %i.nv = add i64 %i.nu, 1
  call void @_ZdlPvm(ptr noundef %i.ns, i64 noundef %i.nv) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #55
  br label %bb.aq

bb.an:                                            ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i287
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread
  %i.nx = phi ptr [ %i.oz, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread ], [ %i.mx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276 ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276 ] ; 3 uses
  %i.ny = phi ptr [ %i.pd, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread ], [ %i.nb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276 ]
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 264
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 272
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !1136
  %i.oc = load ptr, ptr %i.nz, align 8, !tbaa !1132 ; 2 uses
  %i.od = ptrtoint ptr %i.ob to i64
  %i.oe = ptrtoint ptr %i.oc to i64
  %i.of = sub i64 %i.od, %i.oe
  %sext = shl i64 %i.of, 30
  %i.og = ashr i64 %sext, 32
  %.not.i.i.i = icmp slt i64 %indvars.iv, %i.og
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %indvars.iv
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !58 ; 2 uses
  %i.oj = icmp sgt i32 %i.oi, -1
  call void @llvm.assume(i1 %i.oj)
  %i.ok = zext nneg i32 %i.oi to i64
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.ok
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !785 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 48
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !802 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 56
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !802 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.oo, %i.oq
  br i1 %.not7.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i ]
  %.sroa.04.08.i.i = phi ptr [ %i.oy, %.lr.ph.i.i ], [ %i.oo, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i ] ; 2 uses
  %i.or = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !803 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 130
  %i.ot = load i8, ptr %i.os, align 2, !tbaa !818, !range !20, !noundef !21
  %i.ou = trunc nuw i8 %i.ot to i1
  %i.ov = getelementptr inbounds nuw i8, ptr %i.or, i64 131
  %i.ow = load i8, ptr %i.ov, align 1, !range !20
  %i.ox = xor i8 %i.ow, 1
  %22 = zext nneg i8 %i.ox to i32
  %23 = select i1 %i.ou, i32 %22, i32 0
  %spec.select.i.i = add nuw nsw i32 %23, %.09.i.i ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.oy, %i.oq
  br i1 %.not.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit, label %.lr.ph.i.i, !llvm.loop !812

_ZNK7testing9TestSuite21reportable_test_countEv.exit: ; preds = %.lr.ph.i.i
  %.not = icmp eq i32 %spec.select.i.i, 0
  br i1 %.not, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i287

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i287: ; preds = %_ZNK7testing9TestSuite21reportable_test_countEv.exit
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter17PrintXmlTestSuiteEPSoRKNS_9TestSuiteE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(264) %i.om)
          to label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i287._ZNK7testing9TestSuite21reportable_test_countEv.exit.thread_crit_edge unwind label %bb.an

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i287._ZNK7testing9TestSuite21reportable_test_countEv.exit.thread_crit_edge: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i287
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !61
  br label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread

_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i287._ZNK7testing9TestSuite21reportable_test_countEv.exit.thread_crit_edge, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i, %_ZNK7testing9TestSuite21reportable_test_countEv.exit
  %i.oz = phi ptr [ %.pre, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i287._ZNK7testing9TestSuite21reportable_test_countEv.exit.thread_crit_edge ], [ %i.nx, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i ], [ %i.nx, %_ZNK7testing9TestSuite21reportable_test_countEv.exit ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 184
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 192
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !800
  %i.pd = load ptr, ptr %i.pa, align 8, !tbaa !801 ; 2 uses
  %i.pe = ptrtoint ptr %i.pc to i64
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = sub i64 %i.pe, %i.pf
  %sext422 = shl i64 %i.pg, 29
  %i.ph = ashr i64 %sext422, 32
  %i.pi = icmp slt i64 %indvars.iv.next, %i.ph
  br i1 %i.pi, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i, label %._crit_edge, !llvm.loop !1244

._crit_edge:                                      ; preds = %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276
  %.lcssa = phi ptr [ %i.mx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276 ], [ %i.oz, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread ] ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.lcssa, i64 488
  %i.pk = getelementptr inbounds nuw i8, ptr %.lcssa, i64 544
  %i.pl = getelementptr inbounds nuw i8, ptr %.lcssa, i64 552
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !596
  %i.pn = load ptr, ptr %i.pk, align 8, !tbaa !598 ; 2 uses
  %i.po = ptrtoint ptr %i.pm to i64
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = sub i64 %i.po, %i.pp
  %i.pr = sdiv exact i64 %i.pq, 112               ; 5 uses
  %i.ps = trunc i64 %i.pr to i32
  %i.pt = icmp sgt i32 %i.ps, 0
  br i1 %i.pt, label %.lr.ph.preheader.i, label %_ZNK7testing10TestResult6FailedEv.exit.thread

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %wide.trip.count.i = and i64 %i.pr, 2147483647
  br label %.lr.ph.i

bb.ao:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond16.not.i, label %_ZNK7testing10TestResult6FailedEv.exit.thread, label %.lr.ph.i, !llvm.loop !807

.lr.ph.i:                                         ; preds = %bb.ao, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ao ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.pr
  br i1 %exitcond.not.i, label %bb.ap, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i

bb.ap:                                            ; preds = %.lr.ph.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.563, i64 noundef %i.pr, i64 noundef %i.pr) #57
          to label %.noexc290 unwind label %bb.v

.noexc290:                                        ; preds = %bb.ap
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i: ; preds = %.lr.ph.i
  %i.pu = getelementptr inbounds nuw [112 x i8], ptr %i.pn, i64 %indvars.iv.i
  %i.pv = load i32, ptr %i.pu, align 8, !tbaa !595
  %i.pw = add i32 %i.pv, -1
  %spec.select.i.i289 = icmp ult i32 %i.pw, 2
  br i1 %spec.select.i.i289, label %_ZNK7testing10TestResult6FailedEv.exit, label %bb.ao

_ZNK7testing10TestResult6FailedEv.exit:           ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter31OutputXmlTestSuiteForTestResultEPSoRKNS_10TestResultE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(128) %i.pj)
          to label %_ZNK7testing10TestResult6FailedEv.exit.thread unwind label %bb.v

_ZNK7testing10TestResult6FailedEv.exit.thread:    ; preds = %bb.ao, %._crit_edge, %_ZNK7testing10TestResult6FailedEv.exit
  %i.px = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.334, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292: ; preds = %_ZNK7testing10TestResult6FailedEv.exit.thread
  %i.py = load ptr, ptr %2, align 8, !tbaa !26
  %i.pz = load i64, ptr %i.b, align 8, !tbaa !29
  %i.qa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.py, i64 noundef %i.pz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit294 unwind label %bb.v

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit294: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292
  %i.qb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qa, ptr noundef nonnull @.str.317, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit296 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit296: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit294
  %i.qc = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.qd = icmp eq ptr %i.qc, %i.a
  br i1 %i.qd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit296
  %i.qe = load i64, ptr %i.a, align 8, !tbaa !31
  %i.qf = add i64 %i.qe, 1
  call void @_ZdlPvm(ptr noundef %i.qc, i64 noundef %i.qf) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit296, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.aq:                                            ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, %bb.v
  %.pn77 = phi { ptr, i32 } [ %i.nw, %bb.an ], [ %i.jb, %bb.v ], [ %i.nr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285 ], [ %i.ni, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282 ], [ %.pn69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ], [ %.pn66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ], [ %.pn63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ], [ %i.kj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ], [ %.pn57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229 ], [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217 ]
  %i.qg = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.qh = icmp eq ptr %i.qg, %i.a
  br i1 %i.qh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300: ; preds = %bb.aq
  %i.qi = load i64, ptr %i.a, align 8, !tbaa !31
  %i.qj = add i64 %i.qi, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qj) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %.pn77
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing8internal24XmlUnitTestResultPrinter23ListTestsMatchingFilterERKSt6vectorIPNS_9TestSuiteESaIS4_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call fastcc noundef ptr @_ZN7testing8internalL18OpenFileForWritingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.a) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter17PrintXmlTestsListEPSoRKSt6vectorIPNS_9TestSuiteESaIS5_EE(ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %3, align 8, !tbaa !26
  %fputs = call i32 @fputs(ptr %i.d, ptr %i.b)    ; 0 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !26     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !31
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.j = call i32 @fclose(ptr noundef %i.b)       ; 0 uses
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !36
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8, !tbaa !36
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.p, ptr %i.c, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.q, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !31
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #56
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.q, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #55
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.y, ptr %2, align 8, !tbaa !36
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aa = getelementptr i8, ptr %i.y, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.ab
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !917
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ae) #55
end_hunk_2
begin_hunk_3_@_ZN7testing8internal24XmlUnitTestResultPrinter23OutputXmlTestPropertiesEPSoRKNS_10TestResultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
  %i.eo = icmp eq ptr %i.en, %i.c
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %i.ep = load i64, ptr %i.c, align 8, !tbaa !31
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  ret void

bb.t:                                             ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %bb.b
  %.pn32.pn = phi { ptr, i32 } [ %i.au, %bb.b ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.er = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.f
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.t
  %i.et = load i64, ptr %i.f, align 8, !tbaa !31
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  %i.ev = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.c
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.ex = load i64, ptr %i.c, align 8, !tbaa !31
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  resume { ptr, i32 } %.pn32.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing8internal24XmlUnitTestResultPrinter17PrintXmlTestSuiteEPSoRKNS_9TestSuiteE(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.b, ptr noundef nonnull align 1 dereferenceable(9) @.str.293, i64 9, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 9, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 25
  store i8 0, ptr %i.d, align 1, !tbaa !31
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.326, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %._crit_edge.i.i
  %i.f = load ptr, ptr %2, align 8, !tbaa !26
  %i.g = load i64, ptr %i.c, align 8, !tbaa !29
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.f, i64 noundef %i.g)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ae ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !23
  store i32 1701667182, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 4, ptr %i.j, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 0, ptr %i.k, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !23
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.529) #57
          to label %.noexc89 unwind label %bb.af

.noexc89:                                         ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.p, ptr %i.a, align 8, !tbaa !30
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i88, label %._crit_edge.i.i87

.noexc.i88:                                       ; preds = %bb.b
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc90 unwind label %bb.af  ; 2 uses

.noexc90:                                         ; preds = %.noexc.i88
  store ptr %i.r, ptr %4, align 8, !tbaa !26
  %i.s = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.s, ptr %i.n, align 8, !tbaa !31
  br label %._crit_edge.i.i87

._crit_edge.i.i87:                                ; preds = %.noexc90, %bb.b
  %i.t = phi ptr [ %i.r, %.noexc90 ], [ %i.n, %bb.b ] ; 2 uses
  switch i64 %i.p, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i87
  %i.u = load i8, ptr %i.m, align 1, !tbaa !31
  store i8 %i.u, ptr %i.t, align 1, !tbaa !31
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i87
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.m, i64 %i.p, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i87
  %i.v = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !29
  %i.x = load ptr, ptr %4, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter18OutputXmlAttributeEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.ag

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.n
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !31
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  %i.ad = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.i
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = load i64, ptr %i.i, align 8, !tbaa !31
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ah, ptr %5, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ah, ptr noundef nonnull align 1 dereferenceable(5) @.str.250, i64 5, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 5, ptr %i.ai, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 21
  store i8 0, ptr %i.aj, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !802 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !802 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.al, %i.an
  br i1 %.not7.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ]
  %.sroa.04.08.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ] ; 2 uses
  %i.ao = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !803 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 130
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !818, !range !20, !noundef !21
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 131
  %i.at = load i8, ptr %i.as, align 1, !range !20
  %i.au = xor i8 %i.at, 1
  %20 = zext nneg i8 %i.au to i32
  %21 = select i1 %i.ar, i32 %20, i32 0
  %spec.select.i.i = add nuw nsw i32 %21, %.09.i.i ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, %i.an
  br i1 %.not.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit, label %.lr.ph.i.i, !llvm.loop !812

_ZNK7testing9TestSuite21reportable_test_countEv.exit: ; preds = %.lr.ph.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %.0.lcssa.i.i = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.aw = invoke noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #54
          to label %.noexc99 unwind label %bb.ah  ; 8 uses

.noexc99:                                         ; preds = %_ZNK7testing9TestSuite21reportable_test_countEv.exit
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.aw)
          to label %_ZN7testing7MessageC2Ev.exit.i unwind label %bb.g, !noalias !1353

bb.g:                                             ; preds = %.noexc99
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 392) #56, !noalias !1353
  br label %.body

_ZN7testing7MessageC2Ev.exit.i:                   ; preds = %.noexc99
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !36, !noalias !1353
  %i.ba = getelementptr i8, ptr %i.az, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !1353
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 17, ptr %i.bd, align 8, !tbaa !38, !noalias !1353
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i32 noundef %.0.lcssa.i.i)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i unwind label %_ZN7testing7MessageD2Ev.exit4.i, !noalias !1353 ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i:         ; preds = %_ZN7testing7MessageC2Ev.exit.i
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull %i.aw)
          to label %bb.h unwind label %_ZN7testing7MessageD2Ev.exit4.i

_ZN7testing7MessageD2Ev.exit4.i:                  ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i, %_ZN7testing7MessageC2Ev.exit.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %i.aw, align 8, !tbaa !36
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #55, !inline_history !213
  br label %.body

bb.h:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !36
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #55, !inline_history !213
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter18OutputXmlAttributeEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.ai

bb.i:                                             ; preds = %bb.h
  %i.bm = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.i
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !31
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  %i.br = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ah
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %i.bt = load i64, ptr %i.ah, align 8, !tbaa !31
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  %i.bv = load i8, ptr @_ZN7testing22FLAGS_gtest_list_testsE, align 1, !tbaa !32, !range !20, !noundef !21
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.au, label %._crit_edge.i.i106

._crit_edge.i.i106:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #55
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.bx, ptr %7, align 8, !tbaa !23
  store i64 8315178135665074534, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 8, ptr %i.by, align 8, !tbaa !29
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 0, ptr %i.bz, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #55
  %i.ca = load ptr, ptr %i.ak, align 8, !tbaa !802 ; 2 uses
  %i.cb = load ptr, ptr %i.am, align 8, !tbaa !802 ; 2 uses
  %.not7.i.i110 = icmp eq ptr %i.ca, %i.cb
  br i1 %.not7.i.i110, label %_ZNK7testing9TestSuite17failed_test_countEv.exit, label %.lr.ph.i.i111

.lr.ph.i.i111:                                    ; preds = %._crit_edge.i.i106, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i
  %.09.i.i112 = phi i32 [ %spec.select.i.i114, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i ], [ 0, %._crit_edge.i.i106 ]
  %.sroa.04.08.i.i113 = phi ptr [ %i.cu, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i ], [ %i.ca, %._crit_edge.i.i106 ] ; 2 uses
  %i.cc = load ptr, ptr %.sroa.04.08.i.i113, align 8, !tbaa !803 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 128
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !804, !range !20, !noundef !21
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.j, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i

bb.j:                                             ; preds = %.lr.ph.i.i111
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 200
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 208
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !596
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !598 ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = sdiv exact i64 %i.cm, 112               ; 5 uses
  %i.co = trunc i64 %i.cn to i32
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph.preheader.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.j
  %wide.trip.count.i.i.i = and i64 %i.cn, 2147483647
  br label %.lr.ph.i.i.i

bb.k:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond16.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond16.not.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i, label %.lr.ph.i.i.i, !llvm.loop !807

.lr.ph.i.i.i:                                     ; preds = %bb.k, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.k ] ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.i.i.i, %i.cn
  br i1 %exitcond.not.i.i.i, label %bb.l, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.563, i64 noundef %i.cn, i64 noundef %i.cn) #57
          to label %.noexc117 unwind label %bb.aj

.noexc117:                                        ; preds = %bb.l
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cq = getelementptr inbounds nuw [112 x i8], ptr %i.cj, i64 %indvars.iv.i.i.i
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !595
  %i.cs = add i32 %i.cr, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.cs, 2
  br i1 %spec.select.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i, label %bb.k

_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i, %bb.k, %bb.j, %.lr.ph.i.i111
  %i.ct = phi i32 [ 0, %.lr.ph.i.i111 ], [ 0, %bb.j ], [ 1, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i ], [ 0, %bb.k ]
  %spec.select.i.i114 = add nuw nsw i32 %i.ct, %.09.i.i112 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i113, i64 8 ; 2 uses
  %.not.i.i115 = icmp eq ptr %i.cu, %i.cb
  br i1 %.not.i.i115, label %_ZNK7testing9TestSuite17failed_test_countEv.exit, label %.lr.ph.i.i111, !llvm.loop !812

_ZNK7testing9TestSuite17failed_test_countEv.exit: ; preds = %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i, %._crit_edge.i.i106
  %.0.lcssa.i.i116 = phi i32 [ 0, %._crit_edge.i.i106 ], [ %spec.select.i.i114, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i ]
  %i.cv = invoke noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #54
          to label %.noexc123 unwind label %bb.aj ; 8 uses

.noexc123:                                        ; preds = %_ZNK7testing9TestSuite17failed_test_countEv.exit
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.cv)
          to label %_ZN7testing7MessageC2Ev.exit.i120 unwind label %bb.m, !noalias !1356

bb.m:                                             ; preds = %.noexc123
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef 392) #56, !noalias !1356
  br label %.body124

_ZN7testing7MessageC2Ev.exit.i120:                ; preds = %.noexc123
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !36, !noalias !1356
  %i.cz = getelementptr i8, ptr %i.cy, i64 -24
  %i.da = load i64, ptr %i.cz, align 8, !noalias !1356
  %i.db = getelementptr inbounds i8, ptr %i.cx, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i64 17, ptr %i.dc, align 8, !tbaa !38, !noalias !1356
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, i32 noundef %.0.lcssa.i.i116)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i122 unwind label %_ZN7testing7MessageD2Ev.exit4.i121, !noalias !1356 ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i122:      ; preds = %_ZN7testing7MessageC2Ev.exit.i120
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull %i.cv)
          to label %bb.n unwind label %_ZN7testing7MessageD2Ev.exit4.i121

_ZN7testing7MessageD2Ev.exit4.i121:               ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i122, %_ZN7testing7MessageC2Ev.exit.i120
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = load ptr, ptr %i.cv, align 8, !tbaa !36
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(128) %i.cv) #55, !inline_history !213
  br label %.body124

bb.n:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i122
  %i.di = load ptr, ptr %i.cv, align 8, !tbaa !36
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(128) %i.cv) #55, !inline_history !213
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter18OutputXmlAttributeEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.o unwind label %bb.ak

end_hunk_3
begin_hunk_4_@_ZN7testing8internal24XmlUnitTestResultPrinter17PrintXmlTestSuiteEPSoRKNS_9TestSuiteE:._crit_edge.i.i
  %i.oy = sdiv exact i64 %i.ox, 112               ; 5 uses
  %i.oz = trunc i64 %i.oy to i32
  %i.pa = icmp sgt i32 %i.oz, 0
  br i1 %i.pa, label %.lr.ph.preheader.i, label %_ZNK7testing10TestResult6FailedEv.exit.thread

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %wide.trip.count.i = and i64 %i.oy, 2147483647
  br label %.lr.ph.i

bb.aw:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond16.not.i, label %_ZNK7testing10TestResult6FailedEv.exit.thread, label %.lr.ph.i, !llvm.loop !807

.lr.ph.i:                                         ; preds = %bb.aw, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.aw ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.oy
  br i1 %exitcond.not.i, label %bb.ax, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i

bb.ax:                                            ; preds = %.lr.ph.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.563, i64 noundef %i.oy, i64 noundef %i.oy) #57
          to label %.noexc279 unwind label %bb.ae

.noexc279:                                        ; preds = %bb.ax
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i: ; preds = %.lr.ph.i
  %i.pb = getelementptr inbounds nuw [112 x i8], ptr %i.ou, i64 %indvars.iv.i
  %i.pc = load i32, ptr %i.pb, align 8, !tbaa !595
  %i.pd = add i32 %i.pc, -1
  %spec.select.i.i278 = icmp ult i32 %i.pd, 2
  br i1 %spec.select.i.i278, label %_ZNK7testing10TestResult6FailedEv.exit, label %bb.aw

bb.ay:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270
  %i.pe = landingpad { ptr, i32 }
          cleanup
  %i.pf = load ptr, ptr %19, align 8, !tbaa !26   ; 2 uses
  %i.pg = icmp eq ptr %i.pf, %i.oa
  br i1 %i.pg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %bb.ay
  %i.ph = load i64, ptr %i.oa, align 8, !tbaa !31
  %i.pi = add i64 %i.ph, 1
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pi) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #55
  br label %bb.bb

bb.az:                                            ; preds = %.lr.ph, %_ZNK7testing9TestSuite11GetTestInfoEi.exit.thread
  %i.pj = phi ptr [ %i.oi, %.lr.ph ], [ %i.qg, %_ZNK7testing9TestSuite11GetTestInfoEi.exit.thread ] ; 3 uses
  %i.pk = phi ptr [ %i.oh, %.lr.ph ], [ %i.qh, %_ZNK7testing9TestSuite11GetTestInfoEi.exit.thread ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK7testing9TestSuite11GetTestInfoEi.exit.thread ] ; 3 uses
  %i.pl = load ptr, ptr %i.oq, align 8, !tbaa !1136
  %i.pm = load ptr, ptr %i.op, align 8, !tbaa !1132 ; 2 uses
  %i.pn = ptrtoint ptr %i.pl to i64
  %i.po = ptrtoint ptr %i.pm to i64
  %i.pp = sub i64 %i.pn, %i.po
  %sext = shl i64 %i.pp, 30
  %i.pq = ashr i64 %sext, 32
  %.not.i.i283 = icmp slt i64 %indvars.iv, %i.pq
  br i1 %.not.i.i283, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %_ZNK7testing9TestSuite11GetTestInfoEi.exit.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %bb.az
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %indvars.iv
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !58 ; 2 uses
  %i.pt = icmp sgt i32 %i.ps, -1
  call void @llvm.assume(i1 %i.pt)
  %i.pu = zext nneg i32 %i.ps to i64
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %i.pu
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !803 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 130
  %i.py = load i8, ptr %i.px, align 2, !tbaa !818, !range !20, !noundef !21
  %i.pz = trunc nuw i8 %i.py to i1
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pw, i64 131
  %i.qb = load i8, ptr %i.qa, align 1, !range !20
  %i.qc = trunc nuw i8 %i.qb to i1
  %not.314 = xor i1 %i.pz, true
  %i.qd = select i1 %not.314, i1 true, i1 %i.qc
  br i1 %i.qd, label %_ZNK7testing9TestSuite11GetTestInfoEi.exit.thread, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i285

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i285: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.qe = load ptr, ptr %i.l, align 8, !tbaa !26
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter17OutputXmlTestInfoEPSoPKcRKNS_8TestInfoE(ptr noundef nonnull %0, ptr noundef %i.qe, ptr noundef nonnull align 8 dereferenceable(272) %i.pw)
          to label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i285._crit_edge unwind label %bb.ba

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i285._crit_edge: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i285
  %.pre = load ptr, ptr %i.am, align 8, !tbaa !820
  %.pre319 = load ptr, ptr %i.ak, align 8, !tbaa !821
  br label %_ZNK7testing9TestSuite11GetTestInfoEi.exit.thread

bb.ba:                                            ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i285
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

_ZNK7testing9TestSuite11GetTestInfoEi.exit.thread: ; preds = %bb.az, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i285._crit_edge, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.qg = phi ptr [ %.pre319, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i285._crit_edge ], [ %i.pj, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ], [ %i.pj, %bb.az ] ; 2 uses
  %i.qh = phi ptr [ %.pre, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i285._crit_edge ], [ %i.pk, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ], [ %i.pk, %bb.az ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.qi = ptrtoint ptr %i.qh to i64
  %i.qj = ptrtoint ptr %i.qg to i64
  %i.qk = sub i64 %i.qi, %i.qj
  %sext407 = shl i64 %i.qk, 29
  %i.ql = ashr i64 %sext407, 32
  %i.qm = icmp slt i64 %indvars.iv.next, %i.ql
  br i1 %i.qm, label %bb.az, label %._crit_edge, !llvm.loop !1367

_ZNK7testing10TestResult6FailedEv.exit:           ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter30OutputXmlTestCaseForTestResultEPSoRKNS_10TestResultE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(128) %i.nz)
          to label %_ZNK7testing10TestResult6FailedEv.exit.thread unwind label %bb.ae

_ZNK7testing10TestResult6FailedEv.exit.thread:    ; preds = %bb.aw, %._crit_edge, %_ZNK7testing10TestResult6FailedEv.exit
  %i.qn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.328, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit288 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit288: ; preds = %_ZNK7testing10TestResult6FailedEv.exit.thread
  %i.qo = load ptr, ptr %2, align 8, !tbaa !26
  %i.qp = load i64, ptr %i.c, align 8, !tbaa !29
  %i.qq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.qo, i64 noundef %i.qp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit290 unwind label %bb.ae

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit290: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit288
  %i.qr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qq, ptr noundef nonnull @.str.317, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit290
  %i.qs = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.qt = icmp eq ptr %i.qs, %i.b
  br i1 %i.qt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292
  %i.qu = load i64, ptr %i.b, align 8, !tbaa !31
  %i.qv = add i64 %i.qu, 1
  call void @_ZdlPvm(ptr noundef %i.qs, i64 noundef %i.qv) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.bb:                                            ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, %bb.ae
  %.pn78 = phi { ptr, i32 } [ %i.qf, %bb.ba ], [ %i.kq, %bb.ae ], [ %i.pe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282 ], [ %.pn73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268 ], [ %.pn70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262 ], [ %i.mt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %.pn64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250 ], [ %.pn61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ], [ %.pn58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238 ], [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226 ]
  %i.qw = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.qx = icmp eq ptr %i.qw, %i.b
  br i1 %i.qx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296: ; preds = %bb.bb
  %i.qy = load i64, ptr %i.b, align 8, !tbaa !31
  %i.qz = add i64 %i.qy, 1
  call void @_ZdlPvm(ptr noundef %i.qw, i64 noundef %i.qz) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %.pn78
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK7testing8UnitTest21reportable_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !800  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !801  ; 3 uses
  %.not15.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not15.i.i, label %_ZNK7testing8internal12UnitTestImpl21reportable_test_countEv.exit, label %.lr.ph.split.us.i.preheader.i

.lr.ph.split.us.i.preheader.i:                    ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i, %.lr.ph.split.us.i.preheader.i
  %.014.us.i.i = phi i64 [ %i.z, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i ], [ 0, %.lr.ph.split.us.i.preheader.i ] ; 2 uses
  %.01213.us.i.i = phi i32 [ %i.y, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i ], [ 0, %.lr.ph.split.us.i.preheader.i ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.014.us.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !785  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !802  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !802  ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not7.i.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split.us.i.i, %.lr.ph.i.i.i
  %.09.i.i.i = phi i32 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ 0, %.lr.ph.split.us.i.i ]
  %.sroa.04.08.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.n, %.lr.ph.split.us.i.i ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !803 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 130
  %i.s = load i8, ptr %i.r, align 2, !tbaa !818, !range !20, !noundef !21
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 131
  %i.v = load i8, ptr %i.u, align 1, !range !20
  %i.w = xor i8 %i.v, 1
  %1 = zext nneg i8 %i.w to i32
  %2 = select i1 %i.t, i32 %1, i32 0
  %spec.select.i.i.i = add nuw nsw i32 %2, %.09.i.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %i.p
  br i1 %.not.i.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !812

_ZNK7testing9TestSuite21reportable_test_countEv.exit.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.split.us.i.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %.lr.ph.split.us.i.i ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %i.y = add nsw i32 %.0.lcssa.i.i.i, %.01213.us.i.i ; 2 uses
  %i.z = add nuw i64 %.014.us.i.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %i.j
  br i1 %exitcond.not.i, label %_ZNK7testing8internal12UnitTestImpl21reportable_test_countEv.exit, label %.lr.ph.split.us.i.i, !llvm.loop !813

_ZNK7testing8internal12UnitTestImpl21reportable_test_countEv.exit: ; preds = %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i, %bb.a
  %.012.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %i.y, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i ]
  ret i32 %.012.lcssa.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i64 @_ZNK7testing8UnitTest15start_timestampEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 664
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1240
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(128) ptr @_ZNK7testing8UnitTest18ad_hoc_test_resultEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing8internal25JsonUnitTestResultPrinterC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN7testing8internal25JsonUnitTestResultPrinterE, i64 16), ptr %0, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !23
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.529) #57
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.e, ptr %i.a, align 8, !tbaa !30
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !26
  %i.h = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.h, ptr %i.c, align 8, !tbaa !31
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1, !tbaa !31
  store i8 %i.j, ptr %i.i, align 1, !tbaa !31
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !29
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.o = load i64, ptr %i.l, align 8, !tbaa !29
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  invoke void @_ZN7testing8internal8GTestLogC2ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.139, i32 noundef 4606)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.340, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.r, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.c
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.v = load i64, ptr %i.c, align 8, !tbaa !31
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing8internal25JsonUnitTestResultPrinter18OnTestIterationEndERKNS_8UnitTestEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call fastcc noundef ptr @_ZN7testing8internalL18OpenFileForWritingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.a) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  invoke void @_ZN7testing8internal25JsonUnitTestResultPrinter17PrintJsonUnitTestEPSoRKNS_8UnitTestE(ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %4, align 8, !tbaa !26
  %fputs = call i32 @fputs(ptr %i.d, ptr %i.b)    ; 0 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !31
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  %i.j = call i32 @fclose(ptr noundef %i.b)       ; 0 uses
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !36
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8, !tbaa !36
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.p, ptr %i.c, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.q, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !31
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #56
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.q, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #55
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !36
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aa = getelementptr i8, ptr %i.y, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %3, i64 %i.ab
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !917
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ae) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  ret void

bb.d:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.e ], [ %i.af, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing8internal25JsonUnitTestResultPrinter17PrintJsonUnitTestEPSoRKNS_8UnitTestE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.329, i64 10, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 10, ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 0, ptr %i.c, align 2, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !23, !alias.scope !1368
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 2, i8 noundef signext 32)
          to label %_ZN7testing8internalL6IndentB5cxx11Em.exit unwind label %bb.j

_ZN7testing8internalL6IndentB5cxx11Em.exit:       ; preds = %._crit_edge.i.i
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.352, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN7testing8internalL6IndentB5cxx11Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.f, ptr noundef nonnull align 1 dereferenceable(5) @.str.250, i64 5, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 5, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 21
  store i8 0, ptr %i.h, align 1, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 11 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !800  ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !801  ; 3 uses
  %.not15.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not15.i.i.i, label %_ZNK7testing8UnitTest21reportable_test_countEv.exit, label %.lr.ph.split.us.i.preheader.i.i

.lr.ph.split.us.i.preheader.i.i:                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3
  br label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i, %.lr.ph.split.us.i.preheader.i.i
  %.014.us.i.i.i = phi i64 [ %i.ah, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i ], [ 0, %.lr.ph.split.us.i.preheader.i.i ] ; 2 uses
  %.01213.us.i.i.i = phi i32 [ %i.ag, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i ], [ 0, %.lr.ph.split.us.i.preheader.i.i ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.014.us.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !785  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !802  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !802  ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not7.i.i.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.split.us.i.i.i, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.split.us.i.i.i ]
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %i.v, %.lr.ph.split.us.i.i.i ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !803 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 130
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !818, !range !20, !noundef !21
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 131
  %i.ad = load i8, ptr %i.ac, align 1, !range !20
  %i.ae = xor i8 %i.ad, 1
  %16 = zext nneg i8 %i.ae to i32
  %17 = select i1 %i.ab, i32 %16, i32 0
  %spec.select.i.i.i.i = add nuw nsw i32 %17, %.09.i.i.i.i ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.x
  br i1 %.not.i.i.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !812

_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split.us.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ 0, %.lr.ph.split.us.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.ag = add nsw i32 %.0.lcssa.i.i.i.i, %.01213.us.i.i.i ; 2 uses
  %i.ah = add nuw i64 %.014.us.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ah, %i.r
  br i1 %exitcond.not.i.i, label %_ZNK7testing8UnitTest21reportable_test_countEv.exit, label %.lr.ph.split.us.i.i.i, !llvm.loop !813

_ZNK7testing8UnitTest21reportable_test_countEv.exit: ; preds = %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.012.lcssa.i.i.i = phi i32 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ %i.ag, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i ]
  invoke void @_ZN7testing8internal25JsonUnitTestResultPrinter13OutputJsonKeyEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iSA_b(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %.012.lcssa.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true)
          to label %bb.a unwind label %bb.l

bb.a:                                             ; preds = %_ZNK7testing8UnitTest21reportable_test_countEv.exit
  %i.ai = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.f
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.ak = load i64, ptr %i.f, align 8, !tbaa !31
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.am, ptr %5, align 8, !tbaa !23
  store i64 8315178135665074534, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 8, ptr %i.an, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.ao, align 8, !tbaa !31
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !61  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 184
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 192
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !800 ; 2 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !801 ; 3 uses
  %.not15.i.i.i90 = icmp eq ptr %i.as, %i.at
  br i1 %.not15.i.i.i90, label %_ZNK7testing8UnitTest17failed_test_countEv.exit, label %.lr.ph.split.us.i.preheader.i.i91

.lr.ph.split.us.i.preheader.i.i91:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3
  br label %.lr.ph.split.us.i.i.i92

.lr.ph.split.us.i.i.i92:                          ; preds = %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i, %.lr.ph.split.us.i.preheader.i.i91
  %.014.us.i.i.i93 = phi i64 [ %i.by, %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i ], [ 0, %.lr.ph.split.us.i.preheader.i.i91 ] ; 2 uses
  %.01213.us.i.i.i94 = phi i32 [ %i.bx, %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i ], [ 0, %.lr.ph.split.us.i.preheader.i.i91 ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.014.us.i.i.i93
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !785 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !802 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !802 ; 2 uses
  %.not7.i.i.i.i95 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not7.i.i.i.i95, label %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i, label %.lr.ph.i.i.i.i96

.lr.ph.i.i.i.i96:                                 ; preds = %.lr.ph.split.us.i.i.i92, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i
  %.09.i.i.i.i97 = phi i32 [ %spec.select.i.i.i.i99, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i ], [ 0, %.lr.ph.split.us.i.i.i92 ]
  %.sroa.04.08.i.i.i.i98 = phi ptr [ %i.bw, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i ], [ %i.bb, %.lr.ph.split.us.i.i.i92 ] ; 2 uses
  %i.be = load ptr, ptr %.sroa.04.08.i.i.i.i98, align 8, !tbaa !803 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 128
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !804, !range !20, !noundef !21
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.b, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i96
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 200
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 208
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !596
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !598 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 112               ; 5 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.preheader.i.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %wide.trip.count.i.i.i.i.i = and i64 %i.bp, 2147483647
  br label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond16.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond16.not.i.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !807

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.preheader.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %bb.c ] ; 3 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i.i, %i.bp
  br i1 %exitcond.not.i.i.i.i.i, label %bb.d, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.563, i64 noundef %i.bp, i64 noundef %i.bp) #57
          to label %.noexc104 unwind label %bb.m

.noexc104:                                        ; preds = %bb.d
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw [112 x i8], ptr %i.bl, i64 %indvars.iv.i.i.i.i.i
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !595
  %i.bu = add i32 %i.bt, -1
  %spec.select.i.i.i.i.i.i = icmp ult i32 %i.bu, 2
  br i1 %spec.select.i.i.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i, label %bb.c

_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i.i, %bb.c, %bb.b, %.lr.ph.i.i.i.i96
  %i.bv = phi i32 [ 0, %.lr.ph.i.i.i.i96 ], [ 0, %bb.b ], [ 1, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i.i ], [ 0, %bb.c ]
  %spec.select.i.i.i.i99 = add nuw nsw i32 %i.bv, %.09.i.i.i.i97 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i98, i64 8 ; 2 uses
  %.not.i.i.i.i100 = icmp eq ptr %i.bw, %i.bd
  br i1 %.not.i.i.i.i100, label %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i, label %.lr.ph.i.i.i.i96, !llvm.loop !812

_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i: ; preds = %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i, %.lr.ph.split.us.i.i.i92
  %.0.lcssa.i.i.i.i101 = phi i32 [ 0, %.lr.ph.split.us.i.i.i92 ], [ %spec.select.i.i.i.i99, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i ]
  %i.bx = add nsw i32 %.0.lcssa.i.i.i.i101, %.01213.us.i.i.i94 ; 2 uses
  %i.by = add nuw i64 %.014.us.i.i.i93, 1         ; 2 uses
  %exitcond.not.i.i102 = icmp eq i64 %i.by, %i.ax
  br i1 %exitcond.not.i.i102, label %_ZNK7testing8UnitTest17failed_test_countEv.exit, label %.lr.ph.split.us.i.i.i92, !llvm.loop !813

_ZNK7testing8UnitTest17failed_test_countEv.exit:  ; preds = %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.012.lcssa.i.i.i103 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bx, %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i ]
  invoke void @_ZN7testing8internal25JsonUnitTestResultPrinter13OutputJsonKeyEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iSA_b(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %.012.lcssa.i.i.i103, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %_ZNK7testing8UnitTest17failed_test_countEv.exit
  %i.bz = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.am
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.e
  %i.cb = load i64, ptr %i.am, align 8, !tbaa !31
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.cd, ptr %6, align 8, !tbaa !23
  store i64 7234307546238118244, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 8, ptr %i.ce, align 8, !tbaa !29
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 0, ptr %i.cf, align 8, !tbaa !31
  %i.cg = load ptr, ptr %i.i, align 8, !tbaa !61  ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 184
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 192
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !800 ; 2 uses
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !801 ; 3 uses
  %.not15.i.i.i112 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not15.i.i.i112, label %_ZNK7testing8UnitTest30reportable_disabled_test_countEv.exit, label %.lr.ph.split.us.i.preheader.i.i113

.lr.ph.split.us.i.preheader.i.i113:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ashr exact i64 %i.cn, 3
  br label %.lr.ph.split.us.i.i.i114

.lr.ph.split.us.i.i.i114:                         ; preds = %_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit.i.i, %.lr.ph.split.us.i.preheader.i.i113
  %.014.us.i.i.i115 = phi i64 [ %i.dj, %_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit.i.i ], [ 0, %.lr.ph.split.us.i.preheader.i.i113 ] ; 2 uses
  %.01213.us.i.i.i116 = phi i32 [ %i.di, %_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit.i.i ], [ 0, %.lr.ph.split.us.i.preheader.i.i113 ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.014.us.i.i.i115
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !785 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !802 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !802 ; 2 uses
  %.not7.i.i.i.i117 = icmp eq ptr %i.cs, %i.cu
  br i1 %.not7.i.i.i.i117, label %_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit.i.i, label %.lr.ph.i.i.i.i118

.lr.ph.i.i.i.i118:                                ; preds = %.lr.ph.split.us.i.i.i114, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i.i.i
  %.09.i.i.i.i119 = phi i32 [ %spec.select.i.i.i.i121, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i.i.i ], [ 0, %.lr.ph.split.us.i.i.i114 ]
  %.sroa.04.08.i.i.i.i120 = phi ptr [ %i.dh, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i.i.i ], [ %i.cs, %.lr.ph.split.us.i.i.i114 ] ; 2 uses
  %i.cv = load ptr, ptr %.sroa.04.08.i.i.i.i120, align 8, !tbaa !803 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 130
  %i.cx = load i8, ptr %i.cw, align 2, !tbaa !818, !range !20, !noundef !21
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 131
  %i.da = load i8, ptr %i.cz, align 1, !range !20
  %i.db = trunc nuw i8 %i.da to i1
  %not..i.i.i.i = xor i1 %i.cy, true
  %i.dc = select i1 %not..i.i.i.i, i1 true, i1 %i.db
  br i1 %i.dc, label %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i118
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 129
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !819, !range !20, !noundef !21
  %i.df = zext nneg i8 %i.de to i32
  br label %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i.i.i
end_hunk_4
begin_hunk_5_@_ZN7testing8internal25JsonUnitTestResultPrinter17PrintJsonUnitTestEPSoRKNS_8UnitTestE:._crit_edge.i.i
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit199 unwind label %bb.k ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit199: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197
  %i.hq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hp, ptr noundef nonnull @.str.187, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit199
  %i.hr = load ptr, ptr %2, align 8, !tbaa !26
  %i.hs = load i64, ptr %i.b, align 8, !tbaa !29
  %i.ht = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hp, ptr noundef %i.hr, i64 noundef %i.hs)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit203 unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit203: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201
  %i.hu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ht, ptr noundef nonnull @.str.361, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205.preheader unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205.preheader: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit203
  %i.hv = load ptr, ptr %i.i, align 8, !tbaa !61  ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 184
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 192
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !800
  %i.hz = load ptr, ptr %i.hw, align 8, !tbaa !801 ; 2 uses
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = sub i64 %i.ia, %i.ib
  %i.id = lshr exact i64 %i.ic, 3
  %i.ie = trunc i64 %i.id to i32
  %i.if = icmp sgt i32 %i.ie, 0
  br i1 %i.if, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205._crit_edge

bb.w:                                             ; preds = %._crit_edge.i.i158
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

bb.x:                                             ; preds = %bb.q
  %i.ih = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ii = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %bb.x
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !31
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206, %bb.w
  %.pn64 = phi { ptr, i32 } [ %i.ig, %bb.w ], [ %i.ih, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206 ], [ %i.ih, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #55
  %i.in = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.fi
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  %i.ip = load i64, ptr %i.fi, align 8, !tbaa !31
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #55
  br label %bb.al

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

bb.z:                                             ; preds = %bb.s
  %i.is = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.it = load ptr, ptr %12, align 8, !tbaa !26   ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212: ; preds = %bb.z
  %i.iw = load i64, ptr %i.iu, align 8, !tbaa !31
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.ix) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212, %bb.y
  %.pn67 = phi { ptr, i32 } [ %i.ir, %bb.y ], [ %i.is, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212 ], [ %i.is, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #55
  %i.iy = load ptr, ptr %11, align 8, !tbaa !26   ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.fx
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214
  %i.ja = load i64, ptr %i.fx, align 8, !tbaa !31
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #55
  br label %bb.al

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i176
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220

bb.ab:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.u
  %i.jd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.je = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.jg = icmp eq ptr %i.je, %i.jf
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218: ; preds = %bb.ab
  %i.jh = load i64, ptr %i.jf, align 8, !tbaa !31
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.ji) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218, %bb.aa
  %.pn70 = phi { ptr, i32 } [ %i.jc, %bb.aa ], [ %i.jd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218 ], [ %i.jd, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #55
  br label %bb.al

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  %i.jj = landingpad { ptr, i32 }
          cleanup
  %i.jk = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.hb
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221: ; preds = %bb.ac
  %i.jm = load i64, ptr %i.hb, align 8, !tbaa !31
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jn) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #55
  %i.jo = load ptr, ptr %14, align 8, !tbaa !26   ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.gy
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223
  %i.jq = load i64, ptr %i.gy, align 8, !tbaa !31
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.jr) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #55
  br label %bb.al

bb.ad:                                            ; preds = %bb.af, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205.preheader, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread
  %i.jt = phi ptr [ %i.lc, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread ], [ %i.hv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205.preheader ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205.preheader ] ; 4 uses
  %i.ju = phi ptr [ %i.lg, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread ], [ %i.hz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205.preheader ]
  %.035273 = phi i8 [ %.2, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205.preheader ] ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 264
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 272
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !1136
  %i.jy = load ptr, ptr %i.jv, align 8, !tbaa !1132 ; 2 uses
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = sub i64 %i.jz, %i.ka
  %sext = shl i64 %i.kb, 30
  %i.kc = ashr i64 %sext, 32
  %.not.i.i.i = icmp slt i64 %indvars.iv, %i.kc
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !58 ; 2 uses
  %i.kf = icmp sgt i32 %i.ke, -1
  call void @llvm.assume(i1 %i.kf)
  %i.kg = zext nneg i32 %i.ke to i64              ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.kg
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !785 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 48
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !802 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 56
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !802 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.kk, %i.km
  br i1 %.not7.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i ]
  %.sroa.04.08.i.i = phi ptr [ %i.ku, %.lr.ph.i.i ], [ %i.kk, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i ] ; 2 uses
  %i.kn = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !803 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 130
  %i.kp = load i8, ptr %i.ko, align 2, !tbaa !818, !range !20, !noundef !21
  %i.kq = trunc nuw i8 %i.kp to i1
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 131
  %i.ks = load i8, ptr %i.kr, align 1, !range !20
  %i.kt = xor i8 %i.ks, 1
  %18 = zext nneg i8 %i.kt to i32
  %19 = select i1 %i.kq, i32 %18, i32 0
  %spec.select.i.i = add nuw nsw i32 %19, %.09.i.i ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ku, %i.km
  br i1 %.not.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit, label %.lr.ph.i.i, !llvm.loop !812

_ZNK7testing9TestSuite21reportable_test_countEv.exit: ; preds = %.lr.ph.i.i
  %.not = icmp eq i32 %spec.select.i.i, 0
  br i1 %.not, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %_ZNK7testing9TestSuite21reportable_test_countEv.exit
  %i.kv = trunc nuw i8 %.035273 to i1
  br i1 %i.kv, label %bb.af, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228

bb.af:                                            ; preds = %bb.ae
  %i.kw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.177, i64 noundef 2)
          to label %._ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228_crit_edge unwind label %bb.ad ; 0 uses

._ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228_crit_edge: ; preds = %bb.af
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !61  ; 2 uses
  %.phi.trans.insert282 = getelementptr inbounds nuw i8, ptr %.pre, i64 264
  %.pre283 = load ptr, ptr %.phi.trans.insert282, align 8, !tbaa !1132
  %.phi.trans.insert284 = getelementptr inbounds nuw [4 x i8], ptr %.pre283, i64 %indvars.iv
  %.pre285 = load i32, ptr %.phi.trans.insert284, align 4, !tbaa !58
  %.pre288 = zext nneg i32 %.pre285 to i64
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228: ; preds = %._ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228_crit_edge, %bb.ae
  %.pre-phi = phi i64 [ %.pre288, %._ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228_crit_edge ], [ %i.kg, %bb.ae ]
  %i.kx = phi ptr [ %.pre, %._ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228_crit_edge ], [ %i.jt, %bb.ae ]
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 184
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !801
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %.pre-phi
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !785
  invoke void @_ZN7testing8internal25JsonUnitTestResultPrinter18PrintJsonTestSuiteEPSoRKNS_9TestSuiteE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(264) %i.lb)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228._ZNK7testing9TestSuite21reportable_test_countEv.exit.thread_crit_edge unwind label %bb.ad

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228._ZNK7testing9TestSuite21reportable_test_countEv.exit.thread_crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228
  %.pre286 = load ptr, ptr %i.i, align 8, !tbaa !61
  br label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread

_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228._ZNK7testing9TestSuite21reportable_test_countEv.exit.thread_crit_edge, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i, %_ZNK7testing9TestSuite21reportable_test_countEv.exit
  %i.lc = phi ptr [ %.pre286, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228._ZNK7testing9TestSuite21reportable_test_countEv.exit.thread_crit_edge ], [ %i.jt, %_ZNK7testing9TestSuite21reportable_test_countEv.exit ], [ %i.jt, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i ] ; 4 uses
  %.2 = phi i8 [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228._ZNK7testing9TestSuite21reportable_test_countEv.exit.thread_crit_edge ], [ %.035273, %_ZNK7testing9TestSuite21reportable_test_countEv.exit ], [ %.035273, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 184
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 192
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !800
  %i.lg = load ptr, ptr %i.ld, align 8, !tbaa !801 ; 2 uses
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = sub i64 %i.lh, %i.li
  %sext377 = shl i64 %i.lj, 29
  %i.lk = ashr i64 %sext377, 32
  %i.ll = icmp slt i64 %indvars.iv.next, %i.lk
  br i1 %i.ll, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205._crit_edge.loopexit, !llvm.loop !1371

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205._crit_edge.loopexit: ; preds = %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread
  %i.lm = trunc nuw i8 %.2 to i1
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205._crit_edge

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205._crit_edge.loopexit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205.preheader
  %.035.lcssa = phi i1 [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205.preheader ], [ %i.lm, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.hv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205.preheader ], [ %i.lc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205._crit_edge.loopexit ] ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.lcssa, i64 544
  %i.lo = getelementptr inbounds nuw i8, ptr %.lcssa, i64 552
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !596
  %i.lq = load ptr, ptr %i.ln, align 8, !tbaa !598 ; 2 uses
  %i.lr = ptrtoint ptr %i.lp to i64
  %i.ls = ptrtoint ptr %i.lq to i64
  %i.lt = sub i64 %i.lr, %i.ls
  %i.lu = sdiv exact i64 %i.lt, 112               ; 5 uses
  %i.lv = trunc i64 %i.lu to i32
  %i.lw = icmp sgt i32 %i.lv, 0
  br i1 %i.lw, label %.lr.ph.preheader.i, label %_ZNK7testing10TestResult6FailedEv.exit.thread

.lr.ph.preheader.i:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205._crit_edge
  %wide.trip.count.i = and i64 %i.lu, 2147483647
  br label %.lr.ph.i

bb.ag:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond16.not.i, label %_ZNK7testing10TestResult6FailedEv.exit.thread, label %.lr.ph.i, !llvm.loop !807

.lr.ph.i:                                         ; preds = %bb.ag, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ag ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.lu
  br i1 %exitcond.not.i, label %bb.ah, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i

bb.ah:                                            ; preds = %.lr.ph.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.563, i64 noundef %i.lu, i64 noundef %i.lu) #57
          to label %.noexc233 unwind label %bb.aj

.noexc233:                                        ; preds = %bb.ah
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i: ; preds = %.lr.ph.i
  %i.lx = getelementptr inbounds nuw [112 x i8], ptr %i.lq, i64 %indvars.iv.i
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !595
  %i.lz = add i32 %i.ly, -1
  %spec.select.i.i232 = icmp ult i32 %i.lz, 2
  br i1 %spec.select.i.i232, label %_ZNK7testing10TestResult6FailedEv.exit, label %bb.ag

_ZNK7testing10TestResult6FailedEv.exit:           ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  br i1 %.035.lcssa, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %_ZNK7testing10TestResult6FailedEv.exit
  %i.ma = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.177, i64 noundef 2)
          to label %._crit_edge unwind label %bb.aj ; 0 uses

._crit_edge:                                      ; preds = %bb.ai
  %.pre287 = load ptr, ptr %i.i, align 8, !tbaa !61
  br label %bb.ak

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit241, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit239, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit237, %_ZNK7testing10TestResult6FailedEv.exit.thread, %bb.ai, %bb.ah, %bb.ak
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge, %_ZNK7testing10TestResult6FailedEv.exit
  %i.mc = phi ptr [ %.pre287, %._crit_edge ], [ %.lcssa, %_ZNK7testing10TestResult6FailedEv.exit ]
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 488
  invoke void @_ZN7testing8internal25JsonUnitTestResultPrinter32OutputJsonTestSuiteForTestResultEPSoRKNS_10TestResultE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(128) %i.md)
          to label %_ZNK7testing10TestResult6FailedEv.exit.thread unwind label %bb.aj

_ZNK7testing10TestResult6FailedEv.exit.thread:    ; preds = %bb.ag, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205._crit_edge, %bb.ak
  %i.me = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit237 unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit237: ; preds = %_ZNK7testing10TestResult6FailedEv.exit.thread
  %i.mf = load ptr, ptr %3, align 8, !tbaa !26
  %i.mg = load i64, ptr %i.hn, align 8, !tbaa !29
  %i.mh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.mf, i64 noundef %i.mg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit239 unwind label %bb.aj ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit239: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit237
  %i.mi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mh, ptr noundef nonnull @.str.354, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit241 unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit241: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit239
  %i.mj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mh, ptr noundef nonnull @.str.370, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243 unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit241
  %i.mk = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.ml = icmp eq ptr %i.mk, %i.d
  br i1 %i.ml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243
  %i.mm = load i64, ptr %i.d, align 8, !tbaa !31
  %i.mn = add i64 %i.mm, 1
  call void @_ZdlPvm(ptr noundef %i.mk, i64 noundef %i.mn) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.mo = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.a
  br i1 %i.mp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246
  %i.mq = load i64, ptr %i.a, align 8, !tbaa !31
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.mr) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.al:                                            ; preds = %bb.ad, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %bb.k
  %.pn75.pn = phi { ptr, i32 } [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ], [ %i.ei, %bb.k ], [ %i.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226 ], [ %.pn70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220 ], [ %.pn67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217 ], [ %.pn64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211 ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ], [ %i.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ], [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ %i.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ], [ %i.js, %bb.ad ], [ %i.mb, %bb.aj ] ; 2 uses
  %i.ms = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.mt = icmp eq ptr %i.ms, %i.d
  br i1 %i.mt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250: ; preds = %bb.al
  %i.mu = load i64, ptr %i.d, align 8, !tbaa !31
  %i.mv = add i64 %i.mu, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mv) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250, %bb.j
  %.pn75.pn.pn = phi { ptr, i32 } [ %i.eh, %bb.j ], [ %.pn75.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250 ], [ %.pn75.pn, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.mw = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.a
  br i1 %i.mx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252
  %i.my = load i64, ptr %i.a, align 8, !tbaa !31
  %i.mz = add i64 %i.my, 1
  call void @_ZdlPvm(ptr noundef %i.mw, i64 noundef %i.mz) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %.pn75.pn.pn
}

; Function Attrs: mustprogress uwtable
end_hunk_5
begin_hunk_6_@_ZN7testing8internal25JsonUnitTestResultPrinter18OutputJsonTestInfoEPSoPKcRKNS_8TestInfoE:._crit_edge.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331, %bb.m
  %.pn92.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.m ], [ %.pn92.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331 ], [ %.pn92.pn, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  %i.pw = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.px = icmp eq ptr %i.pw, %i.h
  br i1 %i.px, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333
  %i.py = load i64, ptr %i.h, align 8, !tbaa !31
  %i.pz = add i64 %i.py, 1
  call void @_ZdlPvm(ptr noundef %i.pw, i64 noundef %i.pz) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  resume { ptr, i32 } %.pn92.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing8internal25JsonUnitTestResultPrinter18PrintJsonTestSuiteEPSoRKNS_9TestSuiteE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.b, ptr noundef nonnull align 1 dereferenceable(9) @.str.293, i64 9, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 9, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 25
  store i8 0, ptr %i.d, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !23, !alias.scope !1517
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 6, i8 noundef signext 32)
          to label %_ZN7testing8internalL6IndentB5cxx11Em.exit unwind label %bb.t

_ZN7testing8internalL6IndentB5cxx11Em.exit:       ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !23, !alias.scope !1520
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 4, i8 noundef signext 32)
          to label %_ZN7testing8internalL6IndentB5cxx11Em.exit85 unwind label %bb.u

_ZN7testing8internalL6IndentB5cxx11Em.exit85:     ; preds = %_ZN7testing8internalL6IndentB5cxx11Em.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !29
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.g, i64 noundef %i.i)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.v

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZN7testing8internalL6IndentB5cxx11Em.exit85
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.352, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.l = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.f
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = load i64, ptr %i.f, align 8, !tbaa !31
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !23
  store i32 1701667182, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 4, ptr %i.q, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i8 0, ptr %i.r, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.u, ptr %6, align 8, !tbaa !23
  %i.v = icmp eq ptr %i.t, null
  br i1 %i.v, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.529) #57
          to label %.noexc94 unwind label %bb.w

.noexc94:                                         ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.w, ptr %i.a, align 8, !tbaa !30
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i93, label %._crit_edge.i.i92

.noexc.i93:                                       ; preds = %bb.b
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc95 unwind label %bb.w   ; 2 uses

.noexc95:                                         ; preds = %.noexc.i93
  store ptr %i.y, ptr %6, align 8, !tbaa !26
  %i.z = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.z, ptr %i.u, align 8, !tbaa !31
  br label %._crit_edge.i.i92

._crit_edge.i.i92:                                ; preds = %.noexc95, %bb.b
  %i.aa = phi ptr [ %i.y, %.noexc95 ], [ %i.u, %bb.b ] ; 2 uses
  switch i64 %i.w, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i92
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !31
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !31
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i92
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr nonnull align 1 %i.t, i64 %i.w, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i92
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !29
  %i.ae = load ptr, ptr %6, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  invoke void @_ZN7testing8internal25JsonUnitTestResultPrinter13OutputJsonKeyEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_SA_b(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.x

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.u
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.f
  %i.ai = load i64, ptr %i.u, align 8, !tbaa !31
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  %i.ak = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.p
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.am = load i64, ptr %i.p, align 8, !tbaa !31
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #55
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ao, ptr %7, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ao, ptr noundef nonnull align 1 dereferenceable(5) @.str.250, i64 5, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 5, ptr %i.ap, align 8, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 21
  store i8 0, ptr %i.aq, align 1, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !802 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !802 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.as, %i.au
  br i1 %.not7.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ]
  %.sroa.04.08.i.i = phi ptr [ %i.bc, %.lr.ph.i.i ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ] ; 2 uses
  %i.av = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !803 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 130
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !818, !range !20, !noundef !21
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 131
  %i.ba = load i8, ptr %i.az, align 1, !range !20
  %i.bb = xor i8 %i.ba, 1
  %17 = zext nneg i8 %i.bb to i32
  %18 = select i1 %i.ay, i32 %17, i32 0
  %spec.select.i.i = add nuw nsw i32 %18, %.09.i.i ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, %i.au
  br i1 %.not.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit, label %.lr.ph.i.i, !llvm.loop !812

_ZNK7testing9TestSuite21reportable_test_countEv.exit: ; preds = %.lr.ph.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %.0.lcssa.i.i = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %spec.select.i.i, %.lr.ph.i.i ]
  invoke void @_ZN7testing8internal25JsonUnitTestResultPrinter13OutputJsonKeyEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iSA_b(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.y

bb.g:                                             ; preds = %_ZNK7testing9TestSuite21reportable_test_countEv.exit
  %i.bd = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ao
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.g
  %i.bf = load i64, ptr %i.ao, align 8, !tbaa !31
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #55
  %i.bh = load i8, ptr @_ZN7testing22FLAGS_gtest_list_testsE, align 1, !tbaa !32, !range !20, !noundef !21
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.ai, label %._crit_edge.i.i110

._crit_edge.i.i110:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #55
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.bj, ptr %8, align 8, !tbaa !23
  store i64 8315178135665074534, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 8, ptr %i.bk, align 8, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.bl, align 8, !tbaa !31
  %i.bm = load ptr, ptr %i.ar, align 8, !tbaa !802 ; 2 uses
  %i.bn = load ptr, ptr %i.at, align 8, !tbaa !802 ; 2 uses
  %.not7.i.i114 = icmp eq ptr %i.bm, %i.bn
  br i1 %.not7.i.i114, label %_ZNK7testing9TestSuite17failed_test_countEv.exit, label %.lr.ph.i.i115

.lr.ph.i.i115:                                    ; preds = %._crit_edge.i.i110, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i
  %.09.i.i116 = phi i32 [ %spec.select.i.i118, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i ], [ 0, %._crit_edge.i.i110 ]
  %.sroa.04.08.i.i117 = phi ptr [ %i.cg, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i ], [ %i.bm, %._crit_edge.i.i110 ] ; 2 uses
  %i.bo = load ptr, ptr %.sroa.04.08.i.i117, align 8, !tbaa !803 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 128
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !804, !range !20, !noundef !21
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.h, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i

bb.h:                                             ; preds = %.lr.ph.i.i115
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 200
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 208
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !596
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !598 ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = sdiv exact i64 %i.by, 112               ; 5 uses
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph.preheader.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.h
  %wide.trip.count.i.i.i = and i64 %i.bz, 2147483647
  br label %.lr.ph.i.i.i

bb.i:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond16.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond16.not.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i, label %.lr.ph.i.i.i, !llvm.loop !807

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.i ] ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.i.i.i, %i.bz
  br i1 %exitcond.not.i.i.i, label %bb.j, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.563, i64 noundef %i.bz, i64 noundef %i.bz) #57
          to label %.noexc121 unwind label %bb.z

.noexc121:                                        ; preds = %bb.j
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cc = getelementptr inbounds nuw [112 x i8], ptr %i.bv, i64 %indvars.iv.i.i.i
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !595
  %i.ce = add i32 %i.cd, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.ce, 2
  br i1 %spec.select.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i, label %bb.i

_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i, %bb.i, %bb.h, %.lr.ph.i.i115
  %i.cf = phi i32 [ 0, %.lr.ph.i.i115 ], [ 0, %bb.h ], [ 1, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i ], [ 0, %bb.i ]
  %spec.select.i.i118 = add nuw nsw i32 %i.cf, %.09.i.i116 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i117, i64 8 ; 2 uses
  %.not.i.i119 = icmp eq ptr %i.cg, %i.bn
  br i1 %.not.i.i119, label %_ZNK7testing9TestSuite17failed_test_countEv.exit, label %.lr.ph.i.i115, !llvm.loop !812

_ZNK7testing9TestSuite17failed_test_countEv.exit: ; preds = %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i, %._crit_edge.i.i110
  %.0.lcssa.i.i120 = phi i32 [ 0, %._crit_edge.i.i110 ], [ %spec.select.i.i118, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i ]
  invoke void @_ZN7testing8internal25JsonUnitTestResultPrinter13OutputJsonKeyEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iSA_b(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef %.0.lcssa.i.i120, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.z

bb.k:                                             ; preds = %_ZNK7testing9TestSuite17failed_test_countEv.exit
  %i.ch = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.bj
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %bb.k
  %i.cj = load i64, ptr %i.bj, align 8, !tbaa !31
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #55
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.cl, ptr %9, align 8, !tbaa !23
  store i64 7234307546238118244, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 8, ptr %i.cm, align 8, !tbaa !29
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 0, ptr %i.cn, align 8, !tbaa !31
  %i.co = load ptr, ptr %i.ar, align 8, !tbaa !802 ; 2 uses
  %i.cp = load ptr, ptr %i.at, align 8, !tbaa !802 ; 2 uses
  %.not7.i.i129 = icmp eq ptr %i.co, %i.cp
  br i1 %.not7.i.i129, label %_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit, label %.lr.ph.i.i130

.lr.ph.i.i130:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i
  %.09.i.i131 = phi i32 [ %spec.select.i.i133, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ]
  %.sroa.04.08.i.i132 = phi ptr [ %i.dc, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ] ; 2 uses
  %i.cq = load ptr, ptr %.sroa.04.08.i.i132, align 8, !tbaa !803 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 130
  %i.cs = load i8, ptr %i.cr, align 2, !tbaa !818, !range !20, !noundef !21
  %i.ct = trunc nuw i8 %i.cs to i1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 131
  %i.cv = load i8, ptr %i.cu, align 1, !range !20
  %i.cw = trunc nuw i8 %i.cv to i1
  %not..i.i = xor i1 %i.ct, true
  %i.cx = select i1 %not..i.i, i1 true, i1 %i.cw
  br i1 %i.cx, label %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i130
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 129
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !819, !range !20, !noundef !21
  %i.da = zext nneg i8 %i.cz to i32
  br label %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i

_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i: ; preds = %bb.l, %.lr.ph.i.i130
  %i.db = phi i32 [ 0, %.lr.ph.i.i130 ], [ %i.da, %bb.l ]
  %spec.select.i.i133 = add nuw nsw i32 %i.db, %.09.i.i131 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i132, i64 8 ; 2 uses
  %.not.i.i134 = icmp eq ptr %i.dc, %i.cp
  br i1 %.not.i.i134, label %_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit, label %.lr.ph.i.i130, !llvm.loop !812

_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit: ; preds = %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  %.0.lcssa.i.i135 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ], [ %spec.select.i.i133, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i ]
  invoke void @_ZN7testing8internal25JsonUnitTestResultPrinter13OutputJsonKeyEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iSA_b(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef %.0.lcssa.i.i135, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.aa

bb.m:                                             ; preds = %_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit
  %i.dd = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.cl
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.m
  %i.df = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #55
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.dh, ptr %10, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dh, ptr noundef nonnull align 1 dereferenceable(6) @.str.299, i64 6, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 6, ptr %i.di, align 8, !tbaa !29
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i8 0, ptr %i.dj, align 2, !tbaa !31
  invoke void @_ZN7testing8internal25JsonUnitTestResultPrinter13OutputJsonKeyEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iSA_b(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true)
          to label %bb.n unwind label %bb.ab

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.dk = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.dh
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %bb.n
  %i.dm = load i64, ptr %i.dh, align 8, !tbaa !31
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #55
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.do, ptr %11, align 8, !tbaa !23
end_hunk_6
begin_hunk_7_@"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEEvT_SF_SF_T0_SG_T1_":bb.a
"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit": ; preds = %bb.g
  %.pre = ptrtoint ptr %.sroa.02.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit" ], [ %i.t, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.02.0.lcssa.i = phi ptr [ %.sroa.02.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit" ], [ %.tr7987, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ar = sub i64 %.pre-phi, %i.t
  %i.as = ashr exact i64 %i.ar, 3
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit54: ; preds = %bb.e
  %i.at = sdiv i64 %.tr8290, 2                    ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %.tr7987, i64 %i.at ; 2 uses
  %i.av = ptrtoint ptr %.tr86 to i64              ; 3 uses
  %i.aw = sub i64 %i.t, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i56, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i56: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit54
  %.val50 = load ptr, ptr %i.au, align 8          ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val50, i64 80
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %.val50, i64 112
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57: ; preds = %bb.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i56
  %.07.i58 = phi i64 [ %i.ax, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i56 ], [ %.1.i64, %bb.i ] ; 2 uses
  %.sroa.02.06.i59 = phi ptr [ %.tr86, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i56 ], [ %.sroa.02.1.i63, %bb.i ] ; 3 uses
  %i.bc = lshr i64 %.07.i58, 1                    ; 4 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.02.06.i59, i64 %i.bc ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !803 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !26
  %i.bh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ba, ptr noundef nonnull dereferenceable(1) %i.bg) #62 ; 2 uses
  %.not.not.i.i.i62 = icmp eq i32 %i.bh, 0
  br i1 %.not.not.i.i.i62, label %.split.i65, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7testing9TestSuite3RunEvE3$_0EclIKPNS2_8TestInfoENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i"

.split.i65:                                       ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %i.bi = load i32, ptr %i.bb, align 8, !tbaa !1129
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !1129
  %i.bl = icmp slt i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.i, label %bb.h

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7testing9TestSuite3RunEvE3$_0EclIKPNS2_8TestInfoENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %i.bm = icmp slt i32 %i.bh, 0
  br i1 %i.bm, label %bb.i, label %bb.h

bb.h:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7testing9TestSuite3RunEvE3$_0EclIKPNS2_8TestInfoENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i", %.split.i65
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bo = xor i64 %i.bc, -1
  %i.bp = add nsw i64 %.07.i58, %i.bo
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7testing9TestSuite3RunEvE3$_0EclIKPNS2_8TestInfoENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i", %.split.i65
  %.sroa.02.1.i63 = phi ptr [ %.sroa.02.06.i59, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7testing9TestSuite3RunEvE3$_0EclIKPNS2_8TestInfoENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i" ], [ %i.bn, %bb.h ], [ %.sroa.02.06.i59, %.split.i65 ] ; 3 uses
  %.1.i64 = phi i64 [ %i.bc, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7testing9TestSuite3RunEvE3$_0EclIKPNS2_8TestInfoENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i" ], [ %i.bp, %bb.h ], [ %i.bc, %.split.i65 ] ; 2 uses
  %i.bq = icmp sgt i64 %.1.i64, 0
  br i1 %i.bq, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit", !llvm.loop !1962

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit": ; preds = %bb.i
  %.pre93 = ptrtoint ptr %.sroa.02.1.i63 to i64
  br label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit"

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit54
  %.pre-phi94 = phi i64 [ %.pre93, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit" ], [ %i.av, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit54 ]
  %.sroa.02.0.lcssa.i55 = phi ptr [ %.sroa.02.1.i63, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit" ], [ %.tr86, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit54 ]
  %i.br = sub i64 %.pre-phi94, %i.av
  %i.bs = ashr exact i64 %i.br, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit", %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit"
  %.sroa.068.0 = phi ptr [ %i.v, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ], [ %.sroa.02.0.lcssa.i55, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.02.0.lcssa.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ], [ %i.au, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ] ; 2 uses
  %.047 = phi i64 [ %i.as, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ], [ %i.at, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ] ; 2 uses
  %.0 = phi i64 [ %i.u, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ], [ %i.bs, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ] ; 2 uses
  %i.bt = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_St26random_access_iterator_tag(ptr %.sroa.068.0, ptr %.tr7987, ptr %.sroa.0.0) ; 2 uses
  tail call fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEEvT_SF_SF_T0_SG_T1_"(ptr %.tr86, ptr %.sroa.068.0, ptr %i.bt, i64 noundef %.0, i64 noundef %.047)
  %i.bu = sub nsw i64 %.tr8189, %.0               ; 2 uses
  %i.bv = sub nsw i64 %.tr8290, %.047             ; 2 uses
  %i.bw = icmp eq i64 %i.bu, 0
  %i.bx = icmp eq i64 %i.bv, 0
  %or.cond = or i1 %i.bw, %i.bx
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %.split, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7testing9TestSuite3RunEvE3$_0EclINS_17__normal_iteratorIPPNS2_8TestInfoESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit", %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check164 = icmp ult i64 %i.m, 104
  br i1 %min.iters.check164, label %.lr.ph.i.preheader180, label %vector.memcheck157

vector.memcheck157:                               ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -8
  %i.q = sub i64 %i.p, %i.d
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8                          ; 2 uses
  %scevgep158 = getelementptr i8, ptr %0, i64 %i.s
  %scevgep159 = getelementptr i8, ptr %1, i64 %i.s
  %bound0160 = icmp ult ptr %0, %scevgep159
  %bound1161 = icmp ult ptr %1, %scevgep158
  %found.conflict162 = and i1 %bound0160, %bound1161
  br i1 %found.conflict162, label %.lr.ph.i.preheader180, label %vector.ph165

vector.ph165:                                     ; preds = %vector.memcheck157
  %n.vec166 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.t = shl i64 %n.vec166, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph165
  %index168 = phi i64 [ 0, %vector.ph165 ], [ %index.next175, %vector.body167 ] ; 2 uses
  %i.w = shl i64 %index168, 3                     ; 2 uses
  %next.gep169 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %next.gep170 = getelementptr i8, ptr %0, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep170, i64 16 ; 2 uses
  %wide.load171 = load <2 x ptr>, ptr %next.gep170, align 8, !tbaa !803, !alias.scope !1963, !noalias !1966
  %wide.load172 = load <2 x ptr>, ptr %i.x, align 8, !tbaa !803, !alias.scope !1963, !noalias !1966
  %i.y = getelementptr i8, ptr %next.gep169, i64 16 ; 2 uses
  %wide.load173 = load <2 x ptr>, ptr %next.gep169, align 8, !tbaa !803, !alias.scope !1966
  %wide.load174 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !803, !alias.scope !1966
  store <2 x ptr> %wide.load173, ptr %next.gep170, align 8, !tbaa !803, !alias.scope !1963, !noalias !1966
  store <2 x ptr> %wide.load174, ptr %i.x, align 8, !tbaa !803, !alias.scope !1963, !noalias !1966
  store <2 x ptr> %wide.load171, ptr %next.gep169, align 8, !tbaa !803, !alias.scope !1966
  store <2 x ptr> %wide.load172, ptr %i.y, align 8, !tbaa !803, !alias.scope !1966
  %index.next175 = add nuw i64 %index168, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next175, %n.vec166
  br i1 %i.z, label %middle.block176, label %vector.body167, !llvm.loop !1968

middle.block176:                                  ; preds = %vector.body167
  %cmp.n177 = icmp eq i64 %i.o, %n.vec166
  br i1 %cmp.n177, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.preheader180

.lr.ph.i.preheader180:                            ; preds = %vector.memcheck157, %.lr.ph.i.preheader, %middle.block176
  %.sroa.0.08.i.ph = phi ptr [ %1, %vector.memcheck157 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block176 ]
  %.sroa.04.07.i.ph = phi ptr [ %0, %vector.memcheck157 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block176 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader180, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader180 ] ; 3 uses
  %.sroa.04.07.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.sroa.04.07.i.ph, %.lr.ph.i.preheader180 ] ; 3 uses
  %i.aa = load ptr, ptr %.sroa.04.07.i, align 8, !tbaa !803
  %i.ab = load ptr, ptr %.sroa.0.08.i, align 8, !tbaa !803
  store ptr %i.ab, ptr %.sroa.04.07.i, align 8, !tbaa !803
  store ptr %i.aa, ptr %.sroa.0.08.i, align 8, !tbaa !803
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i, !llvm.loop !1969

bb.d:                                             ; preds = %bb.c
  %i.ae = sub i64 %i.c, %i.g
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.041.0 = phi ptr [ %0, %bb.d ], [ %.sroa.041.0.be, %.backedge ] ; 22 uses
  %.084 = phi i64 [ %i.i, %bb.d ], [ %.084.be, %.backedge ] ; 18 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 11 uses
  %i.ag = sub nsw i64 %.0, %.084                  ; 10 uses
  %i.ah = icmp slt i64 %.084, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.084, 1
  br i1 %i.ai, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.f
  %i.aj = load ptr, ptr %.sroa.041.0, align 8, !tbaa !803
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 8
  %.idx86 = shl nsw i64 %.0, 3                    ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.041.0, i64 %.idx86
  %gepdiff = add nsw i64 %.idx86, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.041.0, ptr nonnull align 8 %i.ak, i64 %gepdiff, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !803
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = icmp sgt i64 %i.ag, 0
  br i1 %i.an, label %.lr.ph99.preheader, label %._crit_edge100

.lr.ph99.preheader:                               ; preds = %bb.g
  %i.ao = getelementptr [8 x i8], ptr %.sroa.041.0, i64 %.084 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ag, 6
  br i1 %min.iters.check, label %.lr.ph99.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph99.preheader
  %i.ap = shl i64 %.0, 3
  %i.aq = sub i64 %.0, %.084
  %i.ar = shl i64 %i.aq, 3
  %scevgep = getelementptr i8, ptr %.sroa.041.0, i64 %i.ar
  %scevgep127 = getelementptr i8, ptr %.sroa.041.0, i64 %i.ap
  %bound0 = icmp ult ptr %.sroa.041.0, %scevgep127
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph99.preheader181, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775804     ; 4 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ao, i64 %i.as
  %i.au = getelementptr i8, ptr %.sroa.041.0, i64 %i.as ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.av ; 3 uses
  %next.gep128 = getelementptr i8, ptr %.sroa.041.0, i64 %i.av ; 3 uses
  %i.aw = getelementptr i8, ptr %next.gep128, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep128, align 8, !tbaa !803, !alias.scope !1970, !noalias !1973
  %wide.load129 = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !803, !alias.scope !1970, !noalias !1973
  %i.ax = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load130 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !803, !alias.scope !1973
  %wide.load131 = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !803, !alias.scope !1973
  store <2 x ptr> %wide.load130, ptr %next.gep128, align 8, !tbaa !803, !alias.scope !1970, !noalias !1973
  store <2 x ptr> %wide.load131, ptr %i.aw, align 8, !tbaa !803, !alias.scope !1970, !noalias !1973
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !803, !alias.scope !1973
  store <2 x ptr> %wide.load129, ptr %i.ax, align 8, !tbaa !803, !alias.scope !1973
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1975

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge100, label %.lr.ph99.preheader181

.lr.ph99.preheader181:                            ; preds = %vector.memcheck, %.lr.ph99.preheader, %middle.block
  %.02897.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph99.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.038.096.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph99.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %.sroa.041.195.ph = phi ptr [ %.sroa.041.0, %vector.memcheck ], [ %.sroa.041.0, %.lr.ph99.preheader ], [ %i.au, %middle.block ] ; 2 uses
  %i.az = sub i64 %.0, %.084
  %xtraiter189 = and i64 %i.az, 3                 ; 2 uses
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol

.lr.ph99.prol:                                    ; preds = %.lr.ph99.preheader181, %.lr.ph99.prol
  %.02897.prol = phi i64 [ %i.be, %.lr.ph99.prol ], [ %.02897.ph, %.lr.ph99.preheader181 ]
  %.sroa.038.096.prol = phi ptr [ %i.bd, %.lr.ph99.prol ], [ %.sroa.038.096.ph, %.lr.ph99.preheader181 ] ; 3 uses
  %.sroa.041.195.prol = phi ptr [ %i.bc, %.lr.ph99.prol ], [ %.sroa.041.195.ph, %.lr.ph99.preheader181 ] ; 3 uses
  %prol.iter191 = phi i64 [ %prol.iter191.next, %.lr.ph99.prol ], [ 0, %.lr.ph99.preheader181 ]
  %i.ba = load ptr, ptr %.sroa.041.195.prol, align 8, !tbaa !803
  %i.bb = load ptr, ptr %.sroa.038.096.prol, align 8, !tbaa !803
  store ptr %i.bb, ptr %.sroa.041.195.prol, align 8, !tbaa !803
  store ptr %i.ba, ptr %.sroa.038.096.prol, align 8, !tbaa !803
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.041.195.prol, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.038.096.prol, i64 8 ; 2 uses
  %i.be = add nuw nsw i64 %.02897.prol, 1         ; 2 uses
  %prol.iter191.next = add i64 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i64 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol, !llvm.loop !1976

.lr.ph99.prol.loopexit:                           ; preds = %.lr.ph99.prol, %.lr.ph99.preheader181
  %.lcssa.unr = phi ptr [ poison, %.lr.ph99.preheader181 ], [ %i.bc, %.lr.ph99.prol ]
  %.02897.unr = phi i64 [ %.02897.ph, %.lr.ph99.preheader181 ], [ %i.be, %.lr.ph99.prol ]
  %.sroa.038.096.unr = phi ptr [ %.sroa.038.096.ph, %.lr.ph99.preheader181 ], [ %i.bd, %.lr.ph99.prol ]
  %.sroa.041.195.unr = phi ptr [ %.sroa.041.195.ph, %.lr.ph99.preheader181 ], [ %i.bc, %.lr.ph99.prol ]
  %i.bf = sub i64 %.02897.ph, %.0
  %i.bg = add i64 %i.bf, %.084
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge100, label %.lr.ph99

._crit_edge100:                                   ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99, %middle.block, %bb.g
  %.sroa.041.1.lcssa = phi ptr [ %.sroa.041.0, %bb.g ], [ %i.au, %middle.block ], [ %.lcssa.unr, %.lr.ph99.prol.loopexit ], [ %i.bx, %.lr.ph99 ]
  %i.bi = srem i64 %.0, %.084                     ; 2 uses
  %.not31 = icmp eq i64 %i.bi, 0
  br i1 %.not31, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %bb.h

.lr.ph99:                                         ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99
  %.02897 = phi i64 [ %i.bz, %.lr.ph99 ], [ %.02897.unr, %.lr.ph99.prol.loopexit ]
  %.sroa.038.096 = phi ptr [ %i.by, %.lr.ph99 ], [ %.sroa.038.096.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %.sroa.041.195 = phi ptr [ %i.bx, %.lr.ph99 ], [ %.sroa.041.195.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %i.bj = load ptr, ptr %.sroa.041.195, align 8, !tbaa !803
  %i.bk = load ptr, ptr %.sroa.038.096, align 8, !tbaa !803
  store ptr %i.bk, ptr %.sroa.041.195, align 8, !tbaa !803
  store ptr %i.bj, ptr %.sroa.038.096, align 8, !tbaa !803
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !803
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !803
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !803
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !803
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !803
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !803
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !803
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !803
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 24 ; 2 uses
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !803
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !803
  store ptr %i.bw, ptr %i.bt, align 8, !tbaa !803
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !803
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 32
  %i.bz = add nuw nsw i64 %.02897, 4              ; 2 uses
  %exitcond108.not.3 = icmp eq i64 %i.bz, %i.ag
  br i1 %exitcond108.not.3, label %._crit_edge100, label %.lr.ph99, !llvm.loop !1977

bb.h:                                             ; preds = %._crit_edge100
  %i.ca = sub nsw i64 %.084, %i.bi
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cb = icmp eq i64 %i.ag, 1
  %i.cc = getelementptr [8 x i8], ptr %.sroa.041.0, i64 %.0 ; 8 uses
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !803
  %.idx = shl nsw i64 %.0, 3
  %i.cf = add nsw i64 %.idx, -8                   ; 3 uses
  %i.cg = ashr exact i64 %i.cf, 3                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 1
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !1138

bb.k:                                             ; preds = %bb.j
  %i.ci = sub nsw i64 0, %i.cg
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %.sroa.041.0, i64 %i.cf, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.cf, 8
  br i1 %i.ck, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = load ptr, ptr %.sroa.041.0, align 8, !tbaa !803
  store ptr %i.cl, ptr %i.cd, align 8, !tbaa !803
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store ptr %i.ce, ptr %.sroa.041.0, align 8, !tbaa !803
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.cm = sub i64 0, %i.ag
  %i.cn = getelementptr [8 x i8], ptr %i.cc, i64 %i.cm ; 6 uses
  %i.co = icmp sgt i64 %.084, 0
  br i1 %i.co, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %min.iters.check140 = icmp ult i64 %.084, 6
  br i1 %min.iters.check140, label %.lr.ph.preheader182, label %vector.memcheck134

vector.memcheck134:                               ; preds = %.lr.ph.preheader
  %i.cp = sub i64 %.0, %.084
  %i.cq = shl i64 %i.cp, 3
  %scevgep135 = getelementptr i8, ptr %.sroa.041.0, i64 %i.cq
  %bound0136 = icmp ult ptr %.sroa.041.0, %i.cc
  %bound1137 = icmp ult ptr %scevgep135, %i.cn
  %found.conflict138 = and i1 %bound0136, %bound1137
  br i1 %found.conflict138, label %.lr.ph.preheader182, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck134
  %n.vec142 = and i64 %.084, 9223372036854775804  ; 4 uses
  %i.cr = mul i64 %n.vec142, -8                   ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cc, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cn, i64 %i.cr
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next151, %vector.body143 ] ; 2 uses
  %i.cu = mul i64 %index144, -8                   ; 2 uses
  %next.gep145 = getelementptr i8, ptr %i.cc, i64 %i.cu ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.cn, i64 %i.cu ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %next.gep146, i64 -16 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep146, i64 -32 ; 2 uses
  %wide.load147 = load <2 x ptr>, ptr %i.cv, align 8, !tbaa !803, !alias.scope !1978, !noalias !1981
  %wide.load148 = load <2 x ptr>, ptr %i.cw, align 8, !tbaa !803, !alias.scope !1978, !noalias !1981
  %i.cx = getelementptr inbounds i8, ptr %next.gep145, i64 -16 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep145, i64 -32 ; 2 uses
  %wide.load149 = load <2 x ptr>, ptr %i.cx, align 8, !tbaa !803, !alias.scope !1981
  %wide.load150 = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !803, !alias.scope !1981
  store <2 x ptr> %wide.load149, ptr %i.cv, align 8, !tbaa !803, !alias.scope !1978, !noalias !1981
  store <2 x ptr> %wide.load150, ptr %i.cw, align 8, !tbaa !803, !alias.scope !1978, !noalias !1981
  store <2 x ptr> %wide.load147, ptr %i.cx, align 8, !tbaa !803, !alias.scope !1981
  store <2 x ptr> %wide.load148, ptr %i.cy, align 8, !tbaa !803, !alias.scope !1981
  %index.next151 = add nuw i64 %index144, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next151, %n.vec142
  br i1 %i.cz, label %middle.block152, label %vector.body143, !llvm.loop !1983

middle.block152:                                  ; preds = %vector.body143
  %cmp.n153 = icmp eq i64 %.084, %n.vec142
  br i1 %cmp.n153, label %._crit_edge, label %.lr.ph.preheader182

.lr.ph.preheader182:                              ; preds = %vector.memcheck134, %.lr.ph.preheader, %middle.block152
  %.02794.ph = phi i64 [ 0, %vector.memcheck134 ], [ 0, %.lr.ph.preheader ], [ %n.vec142, %middle.block152 ] ; 3 uses
  %.sroa.0.093.ph = phi ptr [ %i.cc, %vector.memcheck134 ], [ %i.cc, %.lr.ph.preheader ], [ %i.cs, %middle.block152 ] ; 2 uses
  %.sroa.041.292.ph = phi ptr [ %i.cn, %vector.memcheck134 ], [ %i.cn, %.lr.ph.preheader ], [ %i.ct, %middle.block152 ] ; 2 uses
  %xtraiter = and i64 %.084, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader182, %.lr.ph.prol
  %.02794.prol = phi i64 [ %i.de, %.lr.ph.prol ], [ %.02794.ph, %.lr.ph.preheader182 ]
  %.sroa.0.093.prol = phi ptr [ %i.db, %.lr.ph.prol ], [ %.sroa.0.093.ph, %.lr.ph.preheader182 ]
  %.sroa.041.292.prol = phi ptr [ %i.da, %.lr.ph.prol ], [ %.sroa.041.292.ph, %.lr.ph.preheader182 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader182 ]
  %i.da = getelementptr inbounds i8, ptr %.sroa.041.292.prol, i64 -8 ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.0.093.prol, i64 -8 ; 4 uses
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !803
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !803
  store ptr %i.dd, ptr %i.da, align 8, !tbaa !803
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !803
  %i.de = add nuw nsw i64 %.02794.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1984

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader182
  %.02794.unr = phi i64 [ %.02794.ph, %.lr.ph.preheader182 ], [ %i.de, %.lr.ph.prol ]
  %.sroa.0.093.unr = phi ptr [ %.sroa.0.093.ph, %.lr.ph.preheader182 ], [ %i.db, %.lr.ph.prol ]
  %.sroa.041.292.unr = phi ptr [ %.sroa.041.292.ph, %.lr.ph.preheader182 ], [ %i.da, %.lr.ph.prol ]
  %i.df = sub nsw i64 %.02794.ph, %.084
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block152, %bb.n
  %.sroa.041.2.lcssa = phi ptr [ %i.cn, %bb.n ], [ %.sroa.041.0, %middle.block152 ], [ %.sroa.041.0, %.lr.ph ], [ %.sroa.041.0, %.lr.ph.prol.loopexit ]
  %i.dh = srem i64 %.0, %i.ag                     ; 2 uses
  %.not = icmp eq i64 %i.dh, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.041.0.be = phi ptr [ %.sroa.041.1.lcssa, %bb.h ], [ %.sroa.041.2.lcssa, %._crit_edge ]
  %.084.be = phi i64 [ %i.ca, %bb.h ], [ %i.dh, %._crit_edge ]
  %.0.be = phi i64 [ %.084, %bb.h ], [ %i.ag, %._crit_edge ]
  br label %bb.e, !llvm.loop !1985

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02794 = phi i64 [ %i.dy, %.lr.ph ], [ %.02794.unr, %.lr.ph.prol.loopexit ]
  %.sroa.0.093 = phi ptr [ %i.dv, %.lr.ph ], [ %.sroa.0.093.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.sroa.041.292 = phi ptr [ %i.du, %.lr.ph ], [ %.sroa.041.292.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -8 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -8 ; 2 uses
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !803
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !803
  store ptr %i.dl, ptr %i.di, align 8, !tbaa !803
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !803
  %i.dm = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -16 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -16 ; 2 uses
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !803
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !803
  store ptr %i.dp, ptr %i.dm, align 8, !tbaa !803
  store ptr %i.do, ptr %i.dn, align 8, !tbaa !803
  %i.dq = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -24 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -24 ; 2 uses
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !803
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !803
  store ptr %i.dt, ptr %i.dq, align 8, !tbaa !803
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !803
  %i.du = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -32 ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -32 ; 3 uses
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !803
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !803
  store ptr %i.dx, ptr %i.du, align 8, !tbaa !803
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !803
  %i.dy = add nuw nsw i64 %.02794, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dy, %.084
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1986

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %._crit_edge, %._crit_edge100, %.lr.ph.i, %middle.block176, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, %bb.b, %bb.a
  %.sroa.024.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.af, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit ], [ %i.af, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit ], [ %1, %middle.block176 ], [ %1, %.lr.ph.i ], [ %i.af, %._crit_edge100 ], [ %i.af, %._crit_edge ]
  ret ptr %.sroa.024.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEEvT_SF_SF_T0_SG_T1_SG_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef range(i64 -9223372036854775808, 4611686018427387903) %6) unnamed_addr #0 {
bb.a:
  %.not102 = icmp sgt i64 %3, %6
  %.not66103 = icmp sgt i64 %4, %6
  %or.cond104 = and i1 %.not102, %.not66103
  br i1 %or.cond104, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.bd, %tailrecurse ]
  %.tr96.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ]
  %.tr98.lcssa = phi i64 [ %3, %bb.a ], [ %i.bc, %tailrecurse ]
  %.tr99.lcssa = phi i64 [ %4, %bb.a ], [ %i.be, %tailrecurse ]
  tail call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEEvT_SF_SF_T0_SG_T1_T2_"(ptr %.tr.lcssa, ptr %.tr96.lcssa, ptr %2, i64 noundef %.tr98.lcssa, i64 noundef %.tr99.lcssa, ptr noundef %5)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr99108 = phi i64 [ %4, %.lr.ph ], [ %i.be, %tailrecurse ] ; 3 uses
  %.tr98107 = phi i64 [ %3, %.lr.ph ], [ %i.bc, %tailrecurse ] ; 3 uses
  %.tr96106 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 5 uses
  %.tr105 = phi ptr [ %0, %.lr.ph ], [ %i.bd, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr98107, %.tr99108
  %i.c = ptrtoint ptr %.tr96106 to i64            ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit71

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr98107, 2                    ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %.tr105, i64 %i.d ; 2 uses
  %i.f = sub i64 %i.a, %i.c
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_9TestSuite3RunEvE3$_0EEET_SF_SF_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.val = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 112
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

end_hunk_7
