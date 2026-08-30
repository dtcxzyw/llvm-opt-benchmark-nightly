Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/gmock-gtest-all?download=true
inline.NumInlined: 10506
inline.NumDeleted: 2792
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK7testing8internal12UnitTestImpl30reportable_disabled_test_countEv:bb.a
.lr.ph.i.i:                                       ; preds = %.lr.ph.split.us.i, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i ], [ 0, %.lr.ph.split.us.i ]
  %.sroa.04.08.i.i = phi ptr [ %i.aa, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i ], [ %i.l, %.lr.ph.split.us.i ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !361 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 130
  %i.q = load i8, ptr %i.p, align 2, !tbaa !376, !range !70, !noundef !71
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 131
  %i.t = load i8, ptr %i.s, align 1, !range !70
  %i.u = trunc nuw i8 %i.t to i1
  %not..i.i = xor i1 %i.r, true
  %i.v = select i1 %not..i.i, i1 true, i1 %i.u
  br i1 %i.v, label %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 129
  %i.x = load i8, ptr %i.w, align 1, !tbaa !377, !range !70, !noundef !71
  %i.y = zext nneg i8 %i.x to i32
  br label %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i

_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.z = phi i32 [ 0, %.lr.ph.i.i ], [ %i.y, %bb.b ]
  %spec.select.i.i = add nuw nsw i32 %i.z, %.09.i.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.n
  br i1 %.not.i.i, label %_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit, label %.lr.ph.i.i, !llvm.loop !370

_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit: ; preds = %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i, %.lr.ph.split.us.i
  %.0.lcssa.i.i = phi i32 [ 0, %.lr.ph.split.us.i ], [ %spec.select.i.i, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i ]
  %i.ab = add nsw i32 %.0.lcssa.i.i, %.01213.us.i ; 2 uses
  %i.ac = add nuw i64 %.014.us.i, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.h
  br i1 %exitcond.not, label %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit, label %.lr.ph.split.us.i, !llvm.loop !371

_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit: ; preds = %_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit, %bb.a
  %.012.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.ab, %_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit ]
  ret i32 %.012.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK7testing9TestSuite30reportable_disabled_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !360  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !360  ; 2 uses
  %.not7.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit
  %.09.i = phi i32 [ %spec.select.i, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit ], [ 0, %bb.a ]
  %.sroa.04.08.i = phi ptr [ %i.q, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !361 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 130
  %i.g = load i8, ptr %i.f, align 2, !tbaa !376, !range !70, !noundef !71
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 131
  %i.j = load i8, ptr %i.i, align 1, !range !70
  %i.k = trunc nuw i8 %i.j to i1
  %not..i = xor i1 %i.h, true
  %i.l = select i1 %not..i, i1 true, i1 %i.k
  br i1 %i.l, label %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 129
  %i.n = load i8, ptr %i.m, align 1, !tbaa !377, !range !70, !noundef !71
  %i.o = zext nneg i8 %i.n to i32
  br label %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit

_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit: ; preds = %.lr.ph.i, %bb.b
  %i.p = phi i32 [ 0, %.lr.ph.i ], [ %i.o, %bb.b ]
  %spec.select.i = add nuw nsw i32 %i.p, %.09.i   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.d
  br i1 %.not.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i, !llvm.loop !370

_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit: ; preds = %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK7testing8internal12UnitTestImpl19disabled_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(601) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !358  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !359  ; 3 uses
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
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !343  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !360  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !360  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not7.i.i, label %_ZNK7testing9TestSuite19disabled_test_countEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.us.i, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.split.us.i ]
  %.sroa.04.08.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.l, %.lr.ph.split.us.i ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !361
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 129
  %i.q = load i8, ptr %i.p, align 1, !tbaa !377, !range !70, !noundef !71
  %i.r = zext nneg i8 %i.q to i32
  %spec.select.i.i = add nuw nsw i32 %.09.i.i, %i.r ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not.i.i, label %_ZNK7testing9TestSuite19disabled_test_countEv.exit, label %.lr.ph.i.i, !llvm.loop !370

_ZNK7testing9TestSuite19disabled_test_countEv.exit: ; preds = %.lr.ph.i.i, %.lr.ph.split.us.i
  %.0.lcssa.i.i = phi i32 [ 0, %.lr.ph.split.us.i ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.t = add nsw i32 %.0.lcssa.i.i, %.01213.us.i  ; 2 uses
  %i.u = add nuw i64 %.014.us.i, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.h
  br i1 %exitcond.not, label %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit, label %.lr.ph.split.us.i, !llvm.loop !371

_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit: ; preds = %_ZNK7testing9TestSuite19disabled_test_countEv.exit, %bb.a
  %.012.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.t, %_ZNK7testing9TestSuite19disabled_test_countEv.exit ]
  ret i32 %.012.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK7testing9TestSuite19disabled_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !360  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !360  ; 2 uses
  %.not7.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.09.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.04.08.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !361
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 129
  %i.g = load i8, ptr %i.f, align 1, !tbaa !377, !range !70, !noundef !71
  %i.h = zext nneg i8 %i.g to i32
  %spec.select.i = add nuw nsw i32 %.09.i, %i.h   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i, !llvm.loop !370

_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit: ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %.lr.ph.i ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK7testing8internal12UnitTestImpl21reportable_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(601) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !358  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !359  ; 3 uses
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
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !343  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !360  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !360  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not7.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.us.i, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.split.us.i ]
  %.sroa.04.08.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.l, %.lr.ph.split.us.i ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !361 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 130
  %i.q = load i8, ptr %i.p, align 2, !tbaa !376, !range !70, !noundef !71
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 131
  %i.t = load i8, ptr %i.s, align 1, !range !70
  %i.u = xor i8 %i.t, 1
  %1 = zext nneg i8 %i.u to i32
  %2 = select i1 %i.r, i32 %1, i32 0
  %spec.select.i.i = add nuw nsw i32 %2, %.09.i.i ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.n
  br i1 %.not.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit, label %.lr.ph.i.i, !llvm.loop !370

_ZNK7testing9TestSuite21reportable_test_countEv.exit: ; preds = %.lr.ph.i.i, %.lr.ph.split.us.i
  %.0.lcssa.i.i = phi i32 [ 0, %.lr.ph.split.us.i ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.w = add nsw i32 %.0.lcssa.i.i, %.01213.us.i  ; 2 uses
  %i.x = add nuw i64 %.014.us.i, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.h
  br i1 %exitcond.not, label %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit, label %.lr.ph.split.us.i, !llvm.loop !371

_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit: ; preds = %_ZNK7testing9TestSuite21reportable_test_countEv.exit, %bb.a
  %.012.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.w, %_ZNK7testing9TestSuite21reportable_test_countEv.exit ]
  ret i32 %.012.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK7testing9TestSuite21reportable_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !360  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !360  ; 2 uses
  %.not7.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.09.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.04.08.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !361 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 130
  %i.g = load i8, ptr %i.f, align 2, !tbaa !376, !range !70, !noundef !71
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 131
  %i.j = load i8, ptr %i.i, align 1, !range !70
  %i.k = xor i8 %i.j, 1
  %1 = zext nneg i8 %i.k to i32
  %2 = select i1 %i.h, i32 %1, i32 0
  %spec.select.i = add nuw nsw i32 %2, %.09.i     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.d
  br i1 %.not.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i, !llvm.loop !370

_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit: ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %.lr.ph.i ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK7testing8internal12UnitTestImpl16total_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(601) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !358  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !359  ; 5 uses
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
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !343  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !378
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !379
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = lshr exact i64 %i.r, 3
  %i.t = trunc i64 %i.s to i32
  %i.u = add nsw i32 %.01213.us.i, %i.t
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.014.us.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !343  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !378
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !379
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = trunc i64 %i.af to i32
  %i.ah = add nsw i32 %i.u, %i.ag                 ; 3 uses
  %i.ai = add nuw i64 %.014.us.i, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit.loopexit.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !371

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
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !343 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !378
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !379
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
define dso_local noundef i32 @_ZNK7testing9TestSuite16total_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !378
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !379
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK7testing8internal12UnitTestImpl17test_to_run_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(601) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !358  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !359  ; 3 uses
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
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !343  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !360  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !360  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not7.i.i, label %_ZNK7testing9TestSuite17test_to_run_countEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.us.i, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.split.us.i ]
  %.sroa.04.08.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.l, %.lr.ph.split.us.i ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !361
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.q = load i8, ptr %i.p, align 8, !tbaa !362, !range !70, !noundef !71
  %i.r = zext nneg i8 %i.q to i32
  %spec.select.i.i = add nuw nsw i32 %.09.i.i, %i.r ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not.i.i, label %_ZNK7testing9TestSuite17test_to_run_countEv.exit, label %.lr.ph.i.i, !llvm.loop !370

_ZNK7testing9TestSuite17test_to_run_countEv.exit: ; preds = %.lr.ph.i.i, %.lr.ph.split.us.i
  %.0.lcssa.i.i = phi i32 [ 0, %.lr.ph.split.us.i ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.t = add nsw i32 %.0.lcssa.i.i, %.01213.us.i  ; 2 uses
  %i.u = add nuw i64 %.014.us.i, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.h
  br i1 %exitcond.not, label %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit, label %.lr.ph.split.us.i, !llvm.loop !371

_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit: ; preds = %_ZNK7testing9TestSuite17test_to_run_countEv.exit, %bb.a
  %.012.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.t, %_ZNK7testing9TestSuite17test_to_run_countEv.exit ]
  ret i32 %.012.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK7testing9TestSuite17test_to_run_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !360  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !360  ; 2 uses
  %.not7.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.09.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.04.08.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !361
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.g = load i8, ptr %i.f, align 8, !tbaa !362, !range !70, !noundef !71
  %i.h = zext nneg i8 %i.g to i32
  %spec.select.i = add nuw nsw i32 %.09.i, %i.h   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i, !llvm.loop !370

_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit: ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %.lr.ph.i ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(601) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #59 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.d, align 8, !tbaa !25
end_hunk_0
begin_hunk_1_@_ZN7testing8internalL18OpenFileForWritingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.k:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %0, align 8, !tbaa !9
  %i.at = call noalias noundef ptr @fopen(ptr noundef %i.as, ptr noundef nonnull @.str.289) ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.h, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  invoke void @_ZN7testing8internal8GTestLogC2ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.37, i32 noundef 1681)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.thread
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.491, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.l
  %i.aw = load ptr, ptr %0, align 8, !tbaa !9
  %i.ax = load i64, ptr %i.d, align 8, !tbaa !17
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.aw, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.n

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.87, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  br label %bb.p

bb.m:                                             ; preds = %.thread
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.l
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #56
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.n ], [ %i.ba, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  br label %bb.q

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %bb.k
  %.0924 = phi ptr [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 ], [ %i.at, %bb.k ]
  %i.bc = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZN7testing8internal8FilePathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.p
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !15
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #57
  br label %_ZN7testing8internal8FilePathD2Ev.exit

_ZN7testing8internal8FilePathD2Ev.exit:           ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  %i.bh = load ptr, ptr %1, align 8, !tbaa !9     ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.b
  br i1 %i.bi, label %_ZN7testing8internal8FilePathD2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14: ; preds = %_ZN7testing8internal8FilePathD2Ev.exit
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !15
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #57
  br label %_ZN7testing8internal8FilePathD2Ev.exit16

_ZN7testing8internal8FilePathD2Ev.exit16:         ; preds = %_ZN7testing8internal8FilePathD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  ret ptr %.0924

bb.q:                                             ; preds = %bb.o, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.o ], [ %i.ar, %bb.j ] ; 2 uses
  %i.bl = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZN7testing8internal8FilePathD2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17: ; preds = %bb.q
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !15
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #57
  br label %_ZN7testing8internal8FilePathD2Ev.exit19

_ZN7testing8internal8FilePathD2Ev.exit19:         ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.i ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17 ], [ %.pn.pn, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  %i.bq = load ptr, ptr %1, align 8, !tbaa !9     ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.b
  br i1 %i.br, label %_ZN7testing8internal8FilePathD2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %_ZN7testing8internal8FilePathD2Ev.exit19
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !15
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #57
  br label %_ZN7testing8internal8FilePathD2Ev.exit22

_ZN7testing8internal8FilePathD2Ev.exit22:         ; preds = %_ZN7testing8internal8FilePathD2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7testing8internal24XmlUnitTestResultPrinter16PrintXmlUnitTestEPSoRKNS_8UnitTestE(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.233, i64 10, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 10, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 0, ptr %i.c, align 2, !tbaa !15
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.234, i64 noundef 39)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %._crit_edge.i.i
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.235, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = load ptr, ptr %2, align 8, !tbaa !9
  %i.g = load i64, ptr %i.b, align 8, !tbaa !17
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.f, i64 noundef %i.g)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.v ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.i, ptr noundef nonnull align 1 dereferenceable(5) @.str.153, i64 5, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 5, ptr %i.j, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i8 0, ptr %i.k, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #56
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 9 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !358  ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !359  ; 3 uses
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
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !343  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !360  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !360 ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not7.i.i.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.split.us.i.i.i, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.split.us.i.i.i ]
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %i.y, %.lr.ph.split.us.i.i.i ] ; 2 uses
  %i.ab = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !361 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 130
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !376, !range !70, !noundef !71
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 131
  %i.ag = load i8, ptr %i.af, align 1, !range !70
  %i.ah = xor i8 %i.ag, 1
  %20 = zext nneg i8 %i.ah to i32
  %21 = select i1 %i.ae, i32 %20, i32 0
  %spec.select.i.i.i.i = add nuw nsw i32 %21, %.09.i.i.i.i ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, %i.aa
  br i1 %.not.i.i.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !370

_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split.us.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ 0, %.lr.ph.split.us.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.aj = add nsw i32 %.0.lcssa.i.i.i.i, %.01213.us.i.i.i ; 2 uses
  %i.ak = add nuw i64 %.014.us.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ak, %i.u
  br i1 %exitcond.not.i.i, label %_ZNK7testing8UnitTest21reportable_test_countEv.exit, label %.lr.ph.split.us.i.i.i, !llvm.loop !371

_ZNK7testing8UnitTest21reportable_test_countEv.exit: ; preds = %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %.012.lcssa.i.i.i = phi i32 [ 0, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ], [ %i.aj, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i ]
  %i.al = invoke noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #59
          to label %.noexc88 unwind label %bb.w   ; 8 uses

.noexc88:                                         ; preds = %_ZNK7testing8UnitTest21reportable_test_countEv.exit
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.al)
          to label %_ZN7testing7MessageC2Ev.exit.i unwind label %bb.a, !noalias !851

bb.a:                                             ; preds = %.noexc88
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 392) #57, !noalias !851
  br label %.body

_ZN7testing7MessageC2Ev.exit.i:                   ; preds = %.noexc88
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !25, !noalias !851
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !851
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 17, ptr %i.as, align 8, !tbaa !27, !noalias !851
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i32 noundef %.012.lcssa.i.i.i)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i unwind label %_ZN7testing7MessageD2Ev.exit4.i, !noalias !851 ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i:         ; preds = %_ZN7testing7MessageC2Ev.exit.i
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %i.al)
          to label %bb.b unwind label %_ZN7testing7MessageD2Ev.exit4.i

_ZN7testing7MessageD2Ev.exit4.i:                  ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i, %_ZN7testing7MessageC2Ev.exit.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(128) %i.al) #56, !inline_history !266
  br label %.body

bb.b:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i
  %i.ay = load ptr, ptr %i.al, align 8, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.al) #56, !inline_history !266
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter18OutputXmlAttributeEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.x

bb.c:                                             ; preds = %bb.b
  %i.bb = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !15
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  %i.bg = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.i
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = load i64, ptr %i.i, align 8, !tbaa !15
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #56
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.bk, ptr %5, align 8, !tbaa !16
  store i64 8315178135665074534, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 8, ptr %i.bl, align 8, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.bm, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #56
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !52  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 184
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 192
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !358 ; 2 uses
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !359 ; 3 uses
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
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !343 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !360 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !360 ; 2 uses
  %.not7.i.i.i.i101 = icmp eq ptr %i.bz, %i.cb
  br i1 %.not7.i.i.i.i101, label %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i, label %.lr.ph.i.i.i.i102

.lr.ph.i.i.i.i102:                                ; preds = %.lr.ph.split.us.i.i.i98, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i
  %.09.i.i.i.i103 = phi i32 [ %spec.select.i.i.i.i105, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i ], [ 0, %.lr.ph.split.us.i.i.i98 ]
  %.sroa.04.08.i.i.i.i104 = phi ptr [ %i.cu, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i ], [ %i.bz, %.lr.ph.split.us.i.i.i98 ] ; 2 uses
  %i.cc = load ptr, ptr %.sroa.04.08.i.i.i.i104, align 8, !tbaa !361 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 128
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !362, !range !70, !noundef !71
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.d, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i102
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 200
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 208
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !306
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !314 ; 2 uses
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
  br i1 %exitcond16.not.i.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !365

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %bb.e ] ; 3 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i.i, %i.cn
  br i1 %exitcond.not.i.i.i.i.i, label %bb.f, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.605, i64 noundef %i.cn, i64 noundef %i.cn) #58
          to label %.noexc110 unwind label %bb.y

.noexc110:                                        ; preds = %bb.f
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.cq = getelementptr inbounds nuw [112 x i8], ptr %i.cj, i64 %indvars.iv.i.i.i.i.i
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !328
  %i.cs = add i32 %i.cr, -1
  %spec.select.i.i.i.i.i.i = icmp ult i32 %i.cs, 2
  br i1 %spec.select.i.i.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i, label %bb.e

_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i.i, %bb.e, %bb.d, %.lr.ph.i.i.i.i102
  %i.ct = phi i32 [ 0, %.lr.ph.i.i.i.i102 ], [ 0, %bb.d ], [ 1, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i.i ], [ 0, %bb.e ]
  %spec.select.i.i.i.i105 = add nuw nsw i32 %i.ct, %.09.i.i.i.i103 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i104, i64 8 ; 2 uses
  %.not.i.i.i.i106 = icmp eq ptr %i.cu, %i.cb
  br i1 %.not.i.i.i.i106, label %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i, label %.lr.ph.i.i.i.i102, !llvm.loop !370

_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i: ; preds = %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i, %.lr.ph.split.us.i.i.i98
  %.0.lcssa.i.i.i.i107 = phi i32 [ 0, %.lr.ph.split.us.i.i.i98 ], [ %spec.select.i.i.i.i105, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i ]
  %i.cv = add nsw i32 %.0.lcssa.i.i.i.i107, %.01213.us.i.i.i100 ; 2 uses
  %i.cw = add nuw i64 %.014.us.i.i.i99, 1         ; 2 uses
  %exitcond.not.i.i108 = icmp eq i64 %i.cw, %i.bv
  br i1 %exitcond.not.i.i108, label %_ZNK7testing8UnitTest17failed_test_countEv.exit, label %.lr.ph.split.us.i.i.i98, !llvm.loop !371

_ZNK7testing8UnitTest17failed_test_countEv.exit:  ; preds = %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %.012.lcssa.i.i.i109 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %i.cv, %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i ]
  %i.cx = invoke noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #59
          to label %.noexc116 unwind label %bb.y  ; 8 uses

.noexc116:                                        ; preds = %_ZNK7testing8UnitTest17failed_test_countEv.exit
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.cx)
          to label %_ZN7testing7MessageC2Ev.exit.i113 unwind label %bb.g, !noalias !854

bb.g:                                             ; preds = %.noexc116
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef 392) #57, !noalias !854
  br label %.body117

_ZN7testing7MessageC2Ev.exit.i113:                ; preds = %.noexc116
end_hunk_1
begin_hunk_2_@_ZN7testing8internal24XmlUnitTestResultPrinter16PrintXmlUnitTestEPSoRKNS_8UnitTestE:._crit_edge.i.i
  br label %.body203

.body203:                                         ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248, %bb.ah, %_ZN7testing7MessageD2Ev.exit4.i200, %bb.s
  %.pn69 = phi { ptr, i32 } [ %i.il, %_ZN7testing7MessageD2Ev.exit4.i200 ], [ %i.lo, %bb.ah ], [ %i.id, %bb.s ], [ %i.lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248 ], [ %i.lp, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #56
  %i.lv = load ptr, ptr %15, align 8, !tbaa !9    ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.hw
  br i1 %i.lw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %.body203
  %i.lx = load i64, ptr %i.hw, align 8, !tbaa !15
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.ly) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %.body203, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #56
  br label %bb.as

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #56
  %i.lz = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 376
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter29TestPropertiesAsXmlAttributesB5cxx11ERKNS_10TestResultE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(128) %i.ma)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.mb = load ptr, ptr %17, align 8, !tbaa !9
  %i.mc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !17
  %i.me = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.mb, i64 noundef %i.md)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit255 unwind label %bb.an ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit255: ; preds = %bb.ak
  %i.mf = load ptr, ptr %17, align 8, !tbaa !9    ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.mh = icmp eq ptr %i.mf, %i.mg
  br i1 %i.mh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit255
  %i.mi = load i64, ptr %i.mg, align 8, !tbaa !15
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mj) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit255, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #56
  %i.mk = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.mk, ptr %18, align 8, !tbaa !16
  store i32 1701667182, ptr %i.mk, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 4, ptr %i.ml, align 8, !tbaa !17
  %i.mm = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i8 0, ptr %i.mm, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #56
  %i.mn = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.mn, ptr %19, align 8, !tbaa !16
  store i64 8319401290705431617, ptr %i.mn, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 8, ptr %i.mo, align 8, !tbaa !17
  %i.mp = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i8 0, ptr %i.mp, align 8, !tbaa !15
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter18OutputXmlAttributeEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258
  %i.mq = load ptr, ptr %19, align 8, !tbaa !9    ; 2 uses
  %i.mr = icmp eq ptr %i.mq, %i.mn
  br i1 %i.mr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %bb.al
  %i.ms = load i64, ptr %i.mn, align 8, !tbaa !15
  %i.mt = add i64 %i.ms, 1
  call void @_ZdlPvm(ptr noundef %i.mq, i64 noundef %i.mt) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #56
  %i.mu = load ptr, ptr %18, align 8, !tbaa !9    ; 2 uses
  %i.mv = icmp eq ptr %i.mu, %i.mk
  br i1 %i.mv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269
  %i.mw = load i64, ptr %i.mk, align 8, !tbaa !15
  %i.mx = add i64 %i.mw, 1
  call void @_ZdlPvm(ptr noundef %i.mu, i64 noundef %i.mx) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #56
  %i.my = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.223, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit274.preheader unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit274.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272
  %i.mz = load ptr, ptr %i.l, align 8, !tbaa !52  ; 4 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 184
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 192
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !358
  %i.nd = load ptr, ptr %i.na, align 8, !tbaa !359 ; 2 uses
  %i.ne = ptrtoint ptr %i.nc to i64
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = sub i64 %i.ne, %i.nf
  %i.nh = lshr exact i64 %i.ng, 3
  %i.ni = trunc i64 %i.nh to i32
  %i.nj = icmp sgt i32 %i.ni, 0
  br i1 %i.nj, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit274._crit_edge

bb.am:                                            ; preds = %bb.aj
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277

bb.an:                                            ; preds = %bb.ak
  %i.nl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nm = load ptr, ptr %17, align 8, !tbaa !9    ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.no = icmp eq ptr %i.nm, %i.nn
  br i1 %i.no, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275: ; preds = %bb.an
  %i.np = load i64, ptr %i.nn, align 8, !tbaa !15
  %i.nq = add i64 %i.np, 1
  call void @_ZdlPvm(ptr noundef %i.nm, i64 noundef %i.nq) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275, %bb.am
  %.pn72 = phi { ptr, i32 } [ %i.nk, %bb.am ], [ %i.nl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275 ], [ %i.nl, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #56
  br label %bb.as

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258
  %i.nr = landingpad { ptr, i32 }
          cleanup
  %i.ns = load ptr, ptr %19, align 8, !tbaa !9    ; 2 uses
  %i.nt = icmp eq ptr %i.ns, %i.mn
  br i1 %i.nt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278: ; preds = %bb.ao
  %i.nu = load i64, ptr %i.mn, align 8, !tbaa !15
  %i.nv = add i64 %i.nu, 1
  call void @_ZdlPvm(ptr noundef %i.ns, i64 noundef %i.nv) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #56
  %i.nw = load ptr, ptr %18, align 8, !tbaa !9    ; 2 uses
  %i.nx = icmp eq ptr %i.nw, %i.mk
  br i1 %i.nx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280
  %i.ny = load i64, ptr %i.mk, align 8, !tbaa !15
  %i.nz = add i64 %i.ny, 1
  call void @_ZdlPvm(ptr noundef %i.nw, i64 noundef %i.nz) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #56
  br label %bb.as

bb.ap:                                            ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i285
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit274.preheader, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread
  %i.ob = phi ptr [ %i.oz, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread ], [ %i.mz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit274.preheader ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit274.preheader ] ; 3 uses
  %i.oc = phi ptr [ %i.pd, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread ], [ %i.nd, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit274.preheader ]
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 208
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ob, i64 216
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !752
  %i.og = load ptr, ptr %i.od, align 8, !tbaa !748
  %i.oh = ptrtoint ptr %i.of to i64
  %i.oi = ptrtoint ptr %i.og to i64
  %i.oj = sub i64 %i.oh, %i.oi
  %sext = shl i64 %i.oj, 30
  %i.ok = ashr i64 %sext, 32
  %.not.i.i.i = icmp slt i64 %indvars.iv, %i.ok
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !343 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 48
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !360 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 56
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !360 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.oo, %i.oq
  br i1 %.not7.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i ]
  %.sroa.04.08.i.i = phi ptr [ %i.oy, %.lr.ph.i.i ], [ %i.oo, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i ] ; 2 uses
  %i.or = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !361 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 130
  %i.ot = load i8, ptr %i.os, align 2, !tbaa !376, !range !70, !noundef !71
  %i.ou = trunc nuw i8 %i.ot to i1
  %i.ov = getelementptr inbounds nuw i8, ptr %i.or, i64 131
  %i.ow = load i8, ptr %i.ov, align 1, !range !70
  %i.ox = xor i8 %i.ow, 1
  %22 = zext nneg i8 %i.ox to i32
  %23 = select i1 %i.ou, i32 %22, i32 0
  %spec.select.i.i = add nuw nsw i32 %23, %.09.i.i ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.oy, %i.oq
  br i1 %.not.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit, label %.lr.ph.i.i, !llvm.loop !370

_ZNK7testing9TestSuite21reportable_test_countEv.exit: ; preds = %.lr.ph.i.i
  %.not = icmp eq i32 %spec.select.i.i, 0
  br i1 %.not, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i285

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i285: ; preds = %_ZNK7testing9TestSuite21reportable_test_countEv.exit
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter17PrintXmlTestSuiteEPSoRKNS_9TestSuiteE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(264) %i.om)
          to label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i285._ZNK7testing9TestSuite21reportable_test_countEv.exit.thread_crit_edge unwind label %bb.ap

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i285._ZNK7testing9TestSuite21reportable_test_countEv.exit.thread_crit_edge: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i285
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !52
  br label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread

_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i285._ZNK7testing9TestSuite21reportable_test_countEv.exit.thread_crit_edge, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i, %_ZNK7testing9TestSuite21reportable_test_countEv.exit
  %i.oz = phi ptr [ %.pre, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i285._ZNK7testing9TestSuite21reportable_test_countEv.exit.thread_crit_edge ], [ %i.ob, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i ], [ %i.ob, %_ZNK7testing9TestSuite21reportable_test_countEv.exit ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 184
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 192
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !358
  %i.pd = load ptr, ptr %i.pa, align 8, !tbaa !359 ; 2 uses
  %i.pe = ptrtoint ptr %i.pc to i64
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = sub i64 %i.pe, %i.pf
  %sext419 = shl i64 %i.pg, 29
  %i.ph = ashr i64 %sext419, 32
  %i.pi = icmp slt i64 %indvars.iv.next, %i.ph
  br i1 %i.pi, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit274._crit_edge, !llvm.loop !864

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit274._crit_edge: ; preds = %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit274.preheader
  %.lcssa = phi ptr [ %i.mz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit274.preheader ], [ %i.oz, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread ] ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.lcssa, i64 376
  %i.pk = getelementptr inbounds nuw i8, ptr %.lcssa, i64 432
  %i.pl = getelementptr inbounds nuw i8, ptr %.lcssa, i64 440
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !306
  %i.pn = load ptr, ptr %i.pk, align 8, !tbaa !314 ; 2 uses
  %i.po = ptrtoint ptr %i.pm to i64
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = sub i64 %i.po, %i.pp
  %i.pr = sdiv exact i64 %i.pq, 112               ; 5 uses
  %i.ps = trunc i64 %i.pr to i32
  %i.pt = icmp sgt i32 %i.ps, 0
  br i1 %i.pt, label %.lr.ph.preheader.i, label %_ZNK7testing10TestResult6FailedEv.exit.thread

.lr.ph.preheader.i:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit274._crit_edge
  %wide.trip.count.i = and i64 %i.pr, 2147483647
  br label %.lr.ph.i

bb.aq:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond16.not.i, label %_ZNK7testing10TestResult6FailedEv.exit.thread, label %.lr.ph.i, !llvm.loop !365

.lr.ph.i:                                         ; preds = %bb.aq, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.aq ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.pr
  br i1 %exitcond.not.i, label %bb.ar, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i

bb.ar:                                            ; preds = %.lr.ph.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.605, i64 noundef %i.pr, i64 noundef %i.pr) #58
          to label %.noexc288 unwind label %bb.v

.noexc288:                                        ; preds = %bb.ar
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i: ; preds = %.lr.ph.i
  %i.pu = getelementptr inbounds nuw [112 x i8], ptr %i.pn, i64 %indvars.iv.i
  %i.pv = load i32, ptr %i.pu, align 8, !tbaa !328
  %i.pw = add i32 %i.pv, -1
  %spec.select.i.i287 = icmp ult i32 %i.pw, 2
  br i1 %spec.select.i.i287, label %_ZNK7testing10TestResult6FailedEv.exit, label %bb.aq

_ZNK7testing10TestResult6FailedEv.exit:           ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter31OutputXmlTestSuiteForTestResultEPSoRKNS_10TestResultE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(128) %i.pj)
          to label %_ZNK7testing10TestResult6FailedEv.exit.thread unwind label %bb.v

_ZNK7testing10TestResult6FailedEv.exit.thread:    ; preds = %bb.aq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit274._crit_edge, %_ZNK7testing10TestResult6FailedEv.exit
  %i.px = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.237, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290: ; preds = %_ZNK7testing10TestResult6FailedEv.exit.thread
  %i.py = load ptr, ptr %2, align 8, !tbaa !9
  %i.pz = load i64, ptr %i.b, align 8, !tbaa !17
  %i.qa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.py, i64 noundef %i.pz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit292 unwind label %bb.v

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit292: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290
  %i.qb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qa, ptr noundef nonnull @.str.223, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit292
  %i.qc = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.qd = icmp eq ptr %i.qc, %i.a
  br i1 %i.qd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294
  %i.qe = load i64, ptr %i.a, align 8, !tbaa !15
  %i.qf = add i64 %i.qe, 1
  call void @_ZdlPvm(ptr noundef %i.qc, i64 noundef %i.qf) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  ret void

bb.as:                                            ; preds = %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, %bb.v
  %.pn77 = phi { ptr, i32 } [ %i.oa, %bb.ap ], [ %i.jb, %bb.v ], [ %i.nr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283 ], [ %.pn72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277 ], [ %.pn69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ], [ %.pn66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ], [ %.pn63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ], [ %i.kj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ], [ %.pn57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229 ], [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217 ]
  %i.qg = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.qh = icmp eq ptr %i.qg, %i.a
  br i1 %i.qh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298: ; preds = %bb.as
  %i.qi = load i64, ptr %i.a, align 8, !tbaa !15
  %i.qj = add i64 %i.qi, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qj) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  resume { ptr, i32 } %.pn77
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #28

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #28

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7testing8internal24XmlUnitTestResultPrinter23ListTestsMatchingFilterERKSt6vectorIPNS_9TestSuiteESaIS4_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call fastcc noundef ptr @_ZN7testing8internalL18OpenFileForWritingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.a) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter17PrintXmlTestsListEPSoRKSt6vectorIPNS_9TestSuiteESaIS5_EE(ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %3, align 8, !tbaa !9
  %fputs = call i32 @fputs(ptr %i.d, ptr %i.b)    ; 0 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !9      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !15
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  %i.j = call i32 @fclose(ptr noundef %i.b)       ; 0 uses
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !25
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8, !tbaa !25
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.p, ptr %i.c, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.q, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !9    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !15
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #57
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.q, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #56
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.y, ptr %2, align 8, !tbaa !25
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aa = getelementptr i8, ptr %i.y, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.ab
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_2
begin_hunk_3_@_ZN7testing8internal24XmlUnitTestResultPrinter23OutputXmlTestPropertiesEPSoRKNS_10TestResultE:._crit_edge.i.i
  %i.ee = icmp eq ptr %i.ed, %i.c
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.ef = load i64, ptr %i.c, align 8, !tbaa !15
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  ret void

bb.t:                                             ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %bb.b
  %.pn29.pn = phi { ptr, i32 } [ %i.ao, %bb.b ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %.pn26.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.eh = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.f
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.t
  %i.ej = load i64, ptr %i.f, align 8, !tbaa !15
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  %i.el = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.c
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %i.en = load i64, ptr %i.c, align 8, !tbaa !15
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  resume { ptr, i32 } %.pn29.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7testing8internal24XmlUnitTestResultPrinter17PrintXmlTestSuiteEPSoRKNS_9TestSuiteE(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.b, ptr noundef nonnull align 1 dereferenceable(9) @.str.198, i64 9, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 9, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 25
  store i8 0, ptr %i.d, align 1, !tbaa !15
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.231, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %._crit_edge.i.i
  %i.f = load ptr, ptr %2, align 8, !tbaa !9
  %i.g = load i64, ptr %i.c, align 8, !tbaa !17
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.f, i64 noundef %i.g)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.af ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !16
  store i32 1701667182, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 4, ptr %i.j, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 0, ptr %i.k, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #56
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !9    ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !16
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.590) #58
          to label %.noexc86 unwind label %bb.ag

.noexc86:                                         ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #56 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i64 %i.p, ptr %i.a, align 8, !tbaa !46
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i85, label %._crit_edge.i.i84

.noexc.i85:                                       ; preds = %bb.b
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc87 unwind label %bb.ag  ; 2 uses

.noexc87:                                         ; preds = %.noexc.i85
  store ptr %i.r, ptr %4, align 8, !tbaa !9
  %i.s = load i64, ptr %i.a, align 8, !tbaa !46
  store i64 %i.s, ptr %i.n, align 8, !tbaa !15
  br label %._crit_edge.i.i84

._crit_edge.i.i84:                                ; preds = %.noexc87, %bb.b
  %i.t = phi ptr [ %i.r, %.noexc87 ], [ %i.n, %bb.b ] ; 2 uses
  switch i64 %i.p, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i84
  %i.u = load i8, ptr %i.m, align 1, !tbaa !15
  store i8 %i.u, ptr %i.t, align 1, !tbaa !15
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i84
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.m, i64 %i.p, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i84
  %i.v = load i64, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !17
  %i.x = load ptr, ptr %4, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter18OutputXmlAttributeEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.ah

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %4, align 8, !tbaa !9      ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.n
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !15
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  %i.ad = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.i
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = load i64, ptr %i.i, align 8, !tbaa !15
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #56
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ah, ptr %5, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ah, ptr noundef nonnull align 1 dereferenceable(5) @.str.153, i64 5, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 5, ptr %i.ai, align 8, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 21
  store i8 0, ptr %i.aj, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #56
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !360 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !360 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.al, %i.an
  br i1 %.not7.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ]
  %.sroa.04.08.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ] ; 2 uses
  %i.ao = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !361 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 130
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !376, !range !70, !noundef !71
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 131
  %i.at = load i8, ptr %i.as, align 1, !range !70
  %i.au = xor i8 %i.at, 1
  %20 = zext nneg i8 %i.au to i32
  %21 = select i1 %i.ar, i32 %20, i32 0
  %spec.select.i.i = add nuw nsw i32 %21, %.09.i.i ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, %i.an
  br i1 %.not.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit, label %.lr.ph.i.i, !llvm.loop !370

_ZNK7testing9TestSuite21reportable_test_countEv.exit: ; preds = %.lr.ph.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %.0.lcssa.i.i = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.aw = invoke noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #59
          to label %.noexc96 unwind label %bb.ai  ; 8 uses

.noexc96:                                         ; preds = %_ZNK7testing9TestSuite21reportable_test_countEv.exit
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.aw)
          to label %_ZN7testing7MessageC2Ev.exit.i unwind label %bb.g, !noalias !982

bb.g:                                             ; preds = %.noexc96
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 392) #57, !noalias !982
  br label %.body

_ZN7testing7MessageC2Ev.exit.i:                   ; preds = %.noexc96
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !25, !noalias !982
  %i.ba = getelementptr i8, ptr %i.az, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !982
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 17, ptr %i.bd, align 8, !tbaa !27, !noalias !982
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i32 noundef %.0.lcssa.i.i)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i unwind label %_ZN7testing7MessageD2Ev.exit4.i, !noalias !982 ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i:         ; preds = %_ZN7testing7MessageC2Ev.exit.i
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull %i.aw)
          to label %bb.h unwind label %_ZN7testing7MessageD2Ev.exit4.i

_ZN7testing7MessageD2Ev.exit4.i:                  ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i, %_ZN7testing7MessageC2Ev.exit.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %i.aw, align 8, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #56, !inline_history !266
  br label %.body

bb.h:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !25
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #56, !inline_history !266
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter18OutputXmlAttributeEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.aj

bb.i:                                             ; preds = %bb.h
  %i.bm = load ptr, ptr %6, align 8, !tbaa !9     ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.i
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !15
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #56
  %i.br = load ptr, ptr %5, align 8, !tbaa !9     ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ah
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.bt = load i64, ptr %i.ah, align 8, !tbaa !15
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #56
  %i.bv = load i8, ptr @_ZN7testing22FLAGS_gtest_list_testsE, align 1, !tbaa !69, !range !70, !noundef !71
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.ax, label %._crit_edge.i.i103

._crit_edge.i.i103:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #56
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.bx, ptr %7, align 8, !tbaa !16
  store i64 8315178135665074534, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 8, ptr %i.by, align 8, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 0, ptr %i.bz, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #56
  %i.ca = load ptr, ptr %i.ak, align 8, !tbaa !360 ; 2 uses
  %i.cb = load ptr, ptr %i.am, align 8, !tbaa !360 ; 2 uses
  %.not7.i.i107 = icmp eq ptr %i.ca, %i.cb
  br i1 %.not7.i.i107, label %_ZNK7testing9TestSuite17failed_test_countEv.exit, label %.lr.ph.i.i108

.lr.ph.i.i108:                                    ; preds = %._crit_edge.i.i103, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i
  %.09.i.i109 = phi i32 [ %spec.select.i.i111, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i ], [ 0, %._crit_edge.i.i103 ]
  %.sroa.04.08.i.i110 = phi ptr [ %i.cu, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i ], [ %i.ca, %._crit_edge.i.i103 ] ; 2 uses
  %i.cc = load ptr, ptr %.sroa.04.08.i.i110, align 8, !tbaa !361 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 128
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !362, !range !70, !noundef !71
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.j, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i

bb.j:                                             ; preds = %.lr.ph.i.i108
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 200
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 208
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !306
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !314 ; 2 uses
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
  br i1 %exitcond16.not.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i, label %.lr.ph.i.i.i, !llvm.loop !365

.lr.ph.i.i.i:                                     ; preds = %bb.k, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.k ] ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.i.i.i, %i.cn
  br i1 %exitcond.not.i.i.i, label %bb.l, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.605, i64 noundef %i.cn, i64 noundef %i.cn) #58
          to label %.noexc114 unwind label %bb.ak

.noexc114:                                        ; preds = %bb.l
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cq = getelementptr inbounds nuw [112 x i8], ptr %i.cj, i64 %indvars.iv.i.i.i
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !328
  %i.cs = add i32 %i.cr, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.cs, 2
  br i1 %spec.select.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i, label %bb.k

_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i, %bb.k, %bb.j, %.lr.ph.i.i108
  %i.ct = phi i32 [ 0, %.lr.ph.i.i108 ], [ 0, %bb.j ], [ 1, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i ], [ 0, %bb.k ]
  %spec.select.i.i111 = add nuw nsw i32 %i.ct, %.09.i.i109 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i110, i64 8 ; 2 uses
  %.not.i.i112 = icmp eq ptr %i.cu, %i.cb
  br i1 %.not.i.i112, label %_ZNK7testing9TestSuite17failed_test_countEv.exit, label %.lr.ph.i.i108, !llvm.loop !370

_ZNK7testing9TestSuite17failed_test_countEv.exit: ; preds = %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i, %._crit_edge.i.i103
  %.0.lcssa.i.i113 = phi i32 [ 0, %._crit_edge.i.i103 ], [ %spec.select.i.i111, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i ]
  %i.cv = invoke noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #59
          to label %.noexc120 unwind label %bb.ak ; 8 uses

.noexc120:                                        ; preds = %_ZNK7testing9TestSuite17failed_test_countEv.exit
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.cv)
          to label %_ZN7testing7MessageC2Ev.exit.i117 unwind label %bb.m, !noalias !985

bb.m:                                             ; preds = %.noexc120
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef 392) #57, !noalias !985
  br label %.body121

_ZN7testing7MessageC2Ev.exit.i117:                ; preds = %.noexc120
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !25, !noalias !985
  %i.cz = getelementptr i8, ptr %i.cy, i64 -24
  %i.da = load i64, ptr %i.cz, align 8, !noalias !985
  %i.db = getelementptr inbounds i8, ptr %i.cx, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i64 17, ptr %i.dc, align 8, !tbaa !27, !noalias !985
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, i32 noundef %.0.lcssa.i.i113)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i119 unwind label %_ZN7testing7MessageD2Ev.exit4.i118, !noalias !985 ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i119:      ; preds = %_ZN7testing7MessageC2Ev.exit.i117
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull %i.cv)
          to label %bb.n unwind label %_ZN7testing7MessageD2Ev.exit4.i118

_ZN7testing7MessageD2Ev.exit4.i118:               ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i119, %_ZN7testing7MessageC2Ev.exit.i117
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = load ptr, ptr %i.cv, align 8, !tbaa !25
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(128) %i.cv) #56, !inline_history !266
  br label %.body121

bb.n:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i119
  %i.di = load ptr, ptr %i.cv, align 8, !tbaa !25
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(128) %i.cv) #56, !inline_history !266
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter18OutputXmlAttributeEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.o unwind label %bb.al

end_hunk_3
begin_hunk_4_@_ZN7testing8internal24XmlUnitTestResultPrinter29TestPropertiesAsXmlAttributesB5cxx11ERKNS_10TestResultE:bb.a
  store ptr %i.ap, ptr %3, align 8, !tbaa !9
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !46
  store i64 %i.aq, ptr %i.t, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc27, %bb.g
  %i.ar = phi ptr [ %i.ap, %.noexc27 ], [ %i.t, %bb.g ] ; 2 uses
  switch i64 %i.an, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.as = load i8, ptr %i.al, align 1, !tbaa !15
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !15
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr nonnull align 1 %i.al, i64 %i.an, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.at = load i64, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  store i64 %i.at, ptr %i.u, align 8, !tbaa !17
  %i.au = load ptr, ptr %3, align 8, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store i8 0, ptr %i.av, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter9EscapeXmlERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true)
          to label %_ZN7testing8internal24XmlUnitTestResultPrinter18EscapeXmlAttributeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.l

_ZN7testing8internal24XmlUnitTestResultPrinter18EscapeXmlAttributeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.j
  %i.aw = load ptr, ptr %2, align 8, !tbaa !9
  %i.ax = load i64, ptr %i.v, align 8, !tbaa !17
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.aw, i64 noundef %i.ax)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.m ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %_ZN7testing8internal24XmlUnitTestResultPrinter18EscapeXmlAttributeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.87, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit31 unwind label %bb.m ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit31:      ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.ba = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.w
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit31
  %i.bc = load i64, ptr %i.w, align 8, !tbaa !15
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.be = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.t
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load i64, ptr %i.t, align 8, !tbaa !15
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !651
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !650 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %sext = shl i64 %i.bm, 26
  %i.bn = ashr i64 %sext, 32
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %bb.c, label %._crit_edge, !llvm.loop !997

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit43

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit43

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit23, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit43

.loopexit53:                                      ; preds = %.noexc.i
  %lpad.loopexit55 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

.loopexit.split-lp54:                             ; preds = %bb.f
  %lpad.loopexit.split-lp56 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.l:                                             ; preds = %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.m:                                             ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZN7testing8internal24XmlUnitTestResultPrinter18EscapeXmlAttributeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.w
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.m
  %i.bu = load i64, ptr %i.w, align 8, !tbaa !15
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.l ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %i.br, %bb.m ] ; 2 uses
  %i.bw = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.t
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.by = load i64, ptr %i.t, align 8, !tbaa !15
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %.loopexit53, %.loopexit.split-lp54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %lpad.loopexit.split-lp56, %.loopexit.split-lp54 ], [ %lpad.loopexit55, %.loopexit53 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  br label %_ZN7testing7MessageD2Ev.exit43

_ZN7testing7MessageD2Ev.exit:                     ; preds = %._crit_edge
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(128) %i.b) #56, !inline_history !36
  ret void

bb.n:                                             ; preds = %._crit_edge
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit43

_ZN7testing7MessageD2Ev.exit43:                   ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.n
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.n ], [ %i.bp, %bb.k ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(128) %i.b) #56, !inline_history !36
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK7testing8UnitTest21reportable_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !358  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !359  ; 3 uses
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !343  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !360  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !360  ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not7.i.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split.us.i.i, %.lr.ph.i.i.i
  %.09.i.i.i = phi i32 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ 0, %.lr.ph.split.us.i.i ]
  %.sroa.04.08.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.n, %.lr.ph.split.us.i.i ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !361 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 130
  %i.s = load i8, ptr %i.r, align 2, !tbaa !376, !range !70, !noundef !71
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 131
  %i.v = load i8, ptr %i.u, align 1, !range !70
  %i.w = xor i8 %i.v, 1
  %1 = zext nneg i8 %i.w to i32
  %2 = select i1 %i.t, i32 %1, i32 0
  %spec.select.i.i.i = add nuw nsw i32 %2, %.09.i.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %i.p
  br i1 %.not.i.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !370

_ZNK7testing9TestSuite21reportable_test_countEv.exit.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.split.us.i.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %.lr.ph.split.us.i.i ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %i.y = add nsw i32 %.0.lcssa.i.i.i, %.01213.us.i.i ; 2 uses
  %i.z = add nuw i64 %.014.us.i.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %i.j
  br i1 %exitcond.not.i, label %_ZNK7testing8internal12UnitTestImpl21reportable_test_countEv.exit, label %.lr.ph.split.us.i.i, !llvm.loop !371

_ZNK7testing8internal12UnitTestImpl21reportable_test_countEv.exit: ; preds = %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i, %bb.a
  %.012.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %i.y, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i ]
  ret i32 %.012.lcssa.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i64 @_ZNK7testing8UnitTest15start_timestampEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 552
  %i.d = load i64, ptr %i.c, align 8, !tbaa !860
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(128) ptr @_ZNK7testing8UnitTest18ad_hoc_test_resultEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7testing8internal25JsonUnitTestResultPrinterC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN7testing8internal25JsonUnitTestResultPrinterE, i64 16), ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !16
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.590) #58
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #56 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i64 %i.e, ptr %i.a, align 8, !tbaa !46
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !9
  %i.h = load i64, ptr %i.a, align 8, !tbaa !46
  store i64 %i.h, ptr %i.c, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1, !tbaa !15
  store i8 %i.j, ptr %i.i, align 1, !tbaa !15
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !17
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %i.o = load i64, ptr %i.l, align 8, !tbaa !17
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  invoke void @_ZN7testing8internal8GTestLogC2ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.37, i32 noundef 5985)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.244, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #56
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.r, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.c
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.v = load i64, ptr %i.c, align 8, !tbaa !15
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7testing8internal25JsonUnitTestResultPrinter18OnTestIterationEndERKNS_8UnitTestEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call fastcc noundef ptr @_ZN7testing8internalL18OpenFileForWritingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.a) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  invoke void @_ZN7testing8internal25JsonUnitTestResultPrinter17PrintJsonUnitTestEPSoRKNS_8UnitTestE(ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #56
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %4, align 8, !tbaa !9
  %fputs = call i32 @fputs(ptr %i.d, ptr %i.b)    ; 0 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !9      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !15
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  %i.j = call i32 @fclose(ptr noundef %i.b)       ; 0 uses
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !25
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8, !tbaa !25
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.p, ptr %i.c, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.q, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !9    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !15
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #57
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.q, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #56
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !25
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aa = getelementptr i8, ptr %i.y, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %3, i64 %i.ab
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !498
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ae) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  ret void

bb.d:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.e ], [ %i.af, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7testing8internal25JsonUnitTestResultPrinter17PrintJsonUnitTestEPSoRKNS_8UnitTestE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.233, i64 10, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 10, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 0, ptr %i.c, align 2, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !16, !alias.scope !998
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 2, i8 noundef signext 32)
          to label %_ZN7testing8internalL6IndentB5cxx11Em.exit unwind label %bb.j

_ZN7testing8internalL6IndentB5cxx11Em.exit:       ; preds = %._crit_edge.i.i
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.256, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN7testing8internalL6IndentB5cxx11Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #56
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.f, ptr noundef nonnull align 1 dereferenceable(5) @.str.153, i64 5, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 5, ptr %i.g, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 21
  store i8 0, ptr %i.h, align 1, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 10 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !358  ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !359  ; 3 uses
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
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !343  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !360  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !360  ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not7.i.i.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.split.us.i.i.i, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.split.us.i.i.i ]
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %i.v, %.lr.ph.split.us.i.i.i ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !361 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 130
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !376, !range !70, !noundef !71
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 131
  %i.ad = load i8, ptr %i.ac, align 1, !range !70
  %i.ae = xor i8 %i.ad, 1
  %16 = zext nneg i8 %i.ae to i32
  %17 = select i1 %i.ab, i32 %16, i32 0
  %spec.select.i.i.i.i = add nuw nsw i32 %17, %.09.i.i.i.i ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.x
  br i1 %.not.i.i.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !370

_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split.us.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ 0, %.lr.ph.split.us.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.ag = add nsw i32 %.0.lcssa.i.i.i.i, %.01213.us.i.i.i ; 2 uses
  %i.ah = add nuw i64 %.014.us.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ah, %i.r
  br i1 %exitcond.not.i.i, label %_ZNK7testing8UnitTest21reportable_test_countEv.exit, label %.lr.ph.split.us.i.i.i, !llvm.loop !371

_ZNK7testing8UnitTest21reportable_test_countEv.exit: ; preds = %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.012.lcssa.i.i.i = phi i32 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ %i.ag, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.i.i ]
  invoke void @_ZN7testing8internal25JsonUnitTestResultPrinter13OutputJsonKeyEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iSA_b(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %.012.lcssa.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true)
          to label %bb.a unwind label %bb.l

bb.a:                                             ; preds = %_ZNK7testing8UnitTest21reportable_test_countEv.exit
  %i.ai = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.f
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.ak = load i64, ptr %i.f, align 8, !tbaa !15
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #56
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.am, ptr %5, align 8, !tbaa !16
  store i64 8315178135665074534, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 8, ptr %i.an, align 8, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.ao, align 8, !tbaa !15
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !52  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 184
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 192
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !358 ; 2 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !359 ; 3 uses
  %.not15.i.i.i88 = icmp eq ptr %i.as, %i.at
  br i1 %.not15.i.i.i88, label %_ZNK7testing8UnitTest17failed_test_countEv.exit, label %.lr.ph.split.us.i.preheader.i.i89

.lr.ph.split.us.i.preheader.i.i89:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3
  br label %.lr.ph.split.us.i.i.i90

.lr.ph.split.us.i.i.i90:                          ; preds = %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i, %.lr.ph.split.us.i.preheader.i.i89
  %.014.us.i.i.i91 = phi i64 [ %i.by, %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i ], [ 0, %.lr.ph.split.us.i.preheader.i.i89 ] ; 2 uses
  %.01213.us.i.i.i92 = phi i32 [ %i.bx, %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i ], [ 0, %.lr.ph.split.us.i.preheader.i.i89 ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.014.us.i.i.i91
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !343 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !360 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !360 ; 2 uses
  %.not7.i.i.i.i93 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not7.i.i.i.i93, label %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i, label %.lr.ph.i.i.i.i94

.lr.ph.i.i.i.i94:                                 ; preds = %.lr.ph.split.us.i.i.i90, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i
  %.09.i.i.i.i95 = phi i32 [ %spec.select.i.i.i.i97, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i ], [ 0, %.lr.ph.split.us.i.i.i90 ]
  %.sroa.04.08.i.i.i.i96 = phi ptr [ %i.bw, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i ], [ %i.bb, %.lr.ph.split.us.i.i.i90 ] ; 2 uses
  %i.be = load ptr, ptr %.sroa.04.08.i.i.i.i96, align 8, !tbaa !361 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 128
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !362, !range !70, !noundef !71
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.b, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i94
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 200
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 208
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !306
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !314 ; 2 uses
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
  br i1 %exitcond16.not.i.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !365

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.preheader.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %bb.c ] ; 3 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i.i, %i.bp
  br i1 %exitcond.not.i.i.i.i.i, label %bb.d, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.605, i64 noundef %i.bp, i64 noundef %i.bp) #58
          to label %.noexc102 unwind label %bb.m

.noexc102:                                        ; preds = %bb.d
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw [112 x i8], ptr %i.bl, i64 %indvars.iv.i.i.i.i.i
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !328
  %i.bu = add i32 %i.bt, -1
  %spec.select.i.i.i.i.i.i = icmp ult i32 %i.bu, 2
  br i1 %spec.select.i.i.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i, label %bb.c

_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i.i, %bb.c, %bb.b, %.lr.ph.i.i.i.i94
  %i.bv = phi i32 [ 0, %.lr.ph.i.i.i.i94 ], [ 0, %bb.b ], [ 1, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i.i ], [ 0, %bb.c ]
  %spec.select.i.i.i.i97 = add nuw nsw i32 %i.bv, %.09.i.i.i.i95 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i96, i64 8 ; 2 uses
  %.not.i.i.i.i98 = icmp eq ptr %i.bw, %i.bd
  br i1 %.not.i.i.i.i98, label %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i, label %.lr.ph.i.i.i.i94, !llvm.loop !370

_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i: ; preds = %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i, %.lr.ph.split.us.i.i.i90
  %.0.lcssa.i.i.i.i99 = phi i32 [ 0, %.lr.ph.split.us.i.i.i90 ], [ %spec.select.i.i.i.i97, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i.i ]
  %i.bx = add nsw i32 %.0.lcssa.i.i.i.i99, %.01213.us.i.i.i92 ; 2 uses
  %i.by = add nuw i64 %.014.us.i.i.i91, 1         ; 2 uses
  %exitcond.not.i.i100 = icmp eq i64 %i.by, %i.ax
  br i1 %exitcond.not.i.i100, label %_ZNK7testing8UnitTest17failed_test_countEv.exit, label %.lr.ph.split.us.i.i.i90, !llvm.loop !371

_ZNK7testing8UnitTest17failed_test_countEv.exit:  ; preds = %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.012.lcssa.i.i.i101 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bx, %_ZNK7testing9TestSuite17failed_test_countEv.exit.i.i ]
  invoke void @_ZN7testing8internal25JsonUnitTestResultPrinter13OutputJsonKeyEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iSA_b(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %.012.lcssa.i.i.i101, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %_ZNK7testing8UnitTest17failed_test_countEv.exit
  %i.bz = load ptr, ptr %5, align 8, !tbaa !9     ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.am
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.e
  %i.cb = load i64, ptr %i.am, align 8, !tbaa !15
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #56
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.cd, ptr %6, align 8, !tbaa !16
  store i64 7234307546238118244, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 8, ptr %i.ce, align 8, !tbaa !17
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 0, ptr %i.cf, align 8, !tbaa !15
  %i.cg = load ptr, ptr %i.i, align 8, !tbaa !52  ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 184
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 192
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !358 ; 2 uses
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !359 ; 3 uses
  %.not15.i.i.i110 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not15.i.i.i110, label %_ZNK7testing8UnitTest30reportable_disabled_test_countEv.exit, label %.lr.ph.split.us.i.preheader.i.i111

.lr.ph.split.us.i.preheader.i.i111:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ashr exact i64 %i.cn, 3
  br label %.lr.ph.split.us.i.i.i112

.lr.ph.split.us.i.i.i112:                         ; preds = %_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit.i.i, %.lr.ph.split.us.i.preheader.i.i111
  %.014.us.i.i.i113 = phi i64 [ %i.dj, %_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit.i.i ], [ 0, %.lr.ph.split.us.i.preheader.i.i111 ] ; 2 uses
  %.01213.us.i.i.i114 = phi i32 [ %i.di, %_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit.i.i ], [ 0, %.lr.ph.split.us.i.preheader.i.i111 ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.014.us.i.i.i113
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !343 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !360 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !360 ; 2 uses
  %.not7.i.i.i.i115 = icmp eq ptr %i.cs, %i.cu
  br i1 %.not7.i.i.i.i115, label %_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit.i.i, label %.lr.ph.i.i.i.i116

.lr.ph.i.i.i.i116:                                ; preds = %.lr.ph.split.us.i.i.i112, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i.i.i
  %.09.i.i.i.i117 = phi i32 [ %spec.select.i.i.i.i119, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i.i.i ], [ 0, %.lr.ph.split.us.i.i.i112 ]
  %.sroa.04.08.i.i.i.i118 = phi ptr [ %i.dh, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i.i.i ], [ %i.cs, %.lr.ph.split.us.i.i.i112 ] ; 2 uses
  %i.cv = load ptr, ptr %.sroa.04.08.i.i.i.i118, align 8, !tbaa !361 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 130
  %i.cx = load i8, ptr %i.cw, align 2, !tbaa !376, !range !70, !noundef !71
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 131
  %i.da = load i8, ptr %i.cz, align 1, !range !70
  %i.db = trunc nuw i8 %i.da to i1
  %not..i.i.i.i = xor i1 %i.cy, true
  %i.dc = select i1 %not..i.i.i.i, i1 true, i1 %i.db
  br i1 %i.dc, label %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i116
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 129
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !377, !range !70, !noundef !71
  %i.df = zext nneg i8 %i.de to i32
  br label %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i.i.i
end_hunk_4
begin_hunk_5_@_ZN7testing8internal25JsonUnitTestResultPrinter17PrintJsonUnitTestEPSoRKNS_8UnitTestE:._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #56
  %i.hm = load ptr, ptr %3, align 8, !tbaa !9
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !17
  %i.hp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.hm, i64 noundef %i.ho)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit197 unwind label %bb.k ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
  %i.hq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hp, ptr noundef nonnull @.str.87, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit197
  %i.hr = load ptr, ptr %2, align 8, !tbaa !9
  %i.hs = load i64, ptr %i.b, align 8, !tbaa !17
  %i.ht = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hp, ptr noundef %i.hr, i64 noundef %i.hs)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit201 unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit201: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199
  %i.hu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ht, ptr noundef nonnull @.str.265, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203.preheader unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203.preheader: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit201
  %i.hv = load ptr, ptr %i.i, align 8, !tbaa !52  ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 184
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 192
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !358
  %i.hz = load ptr, ptr %i.hw, align 8, !tbaa !359 ; 2 uses
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = sub i64 %i.ia, %i.ib
  %i.id = lshr exact i64 %i.ic, 3
  %i.ie = trunc i64 %i.id to i32
  %i.if = icmp sgt i32 %i.ie, 0
  br i1 %i.if, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203._crit_edge

bb.w:                                             ; preds = %._crit_edge.i.i156
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

bb.x:                                             ; preds = %bb.q
  %i.ih = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ii = load ptr, ptr %10, align 8, !tbaa !9    ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %bb.x
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !15
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204, %bb.w
  %.pn62 = phi { ptr, i32 } [ %i.ig, %bb.w ], [ %i.ih, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204 ], [ %i.ih, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #56
  %i.in = load ptr, ptr %9, align 8, !tbaa !9     ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.fi
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206
  %i.ip = load i64, ptr %i.fi, align 8, !tbaa !15
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #56
  br label %bb.aj

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

bb.z:                                             ; preds = %bb.s
  %i.is = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.it = load ptr, ptr %12, align 8, !tbaa !9    ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %bb.z
  %i.iw = load i64, ptr %i.iu, align 8, !tbaa !15
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.ix) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210, %bb.y
  %.pn65 = phi { ptr, i32 } [ %i.ir, %bb.y ], [ %i.is, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210 ], [ %i.is, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #56
  %i.iy = load ptr, ptr %11, align 8, !tbaa !9    ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.fx
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
  %i.ja = load i64, ptr %i.fx, align 8, !tbaa !15
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #56
  br label %bb.aj

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i174
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

bb.ab:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.u
  %i.jd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.je = load ptr, ptr %13, align 8, !tbaa !9    ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.jg = icmp eq ptr %i.je, %i.jf
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %bb.ab
  %i.jh = load i64, ptr %i.jf, align 8, !tbaa !15
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.ji) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216, %bb.aa
  %.pn68 = phi { ptr, i32 } [ %i.jc, %bb.aa ], [ %i.jd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216 ], [ %i.jd, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #56
  br label %bb.aj

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  %i.jj = landingpad { ptr, i32 }
          cleanup
  %i.jk = load ptr, ptr %15, align 8, !tbaa !9    ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.hb
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %bb.ac
  %i.jm = load i64, ptr %i.hb, align 8, !tbaa !15
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jn) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #56
  %i.jo = load ptr, ptr %14, align 8, !tbaa !9    ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.gy
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %i.jq = load i64, ptr %i.gy, align 8, !tbaa !15
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.jr) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #56
  br label %bb.aj

bb.ad:                                            ; preds = %bb.af, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203.preheader, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread
  %i.jt = phi ptr [ %i.kx, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread ], [ %i.hv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203.preheader ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203.preheader ] ; 4 uses
  %i.ju = phi ptr [ %i.lb, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread ], [ %i.hz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203.preheader ]
  %.033268 = phi i1 [ %.2, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203.preheader ] ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 208
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 216
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !752
  %i.jy = load ptr, ptr %i.jv, align 8, !tbaa !748
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = sub i64 %i.jz, %i.ka
  %sext = shl i64 %i.kb, 30
  %i.kc = ashr i64 %sext, 32
  %.not.i.i.i = icmp slt i64 %indvars.iv, %i.kc
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !343 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 48
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !360 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 56
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !360 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.kg, %i.ki
  br i1 %.not7.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i ]
  %.sroa.04.08.i.i = phi ptr [ %i.kq, %.lr.ph.i.i ], [ %i.kg, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i ] ; 2 uses
  %i.kj = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !361 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 130
  %i.kl = load i8, ptr %i.kk, align 2, !tbaa !376, !range !70, !noundef !71
  %i.km = trunc nuw i8 %i.kl to i1
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 131
  %i.ko = load i8, ptr %i.kn, align 1, !range !70
  %i.kp = xor i8 %i.ko, 1
  %18 = zext nneg i8 %i.kp to i32
  %19 = select i1 %i.km, i32 %18, i32 0
  %spec.select.i.i = add nuw nsw i32 %19, %.09.i.i ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.kq, %i.ki
  br i1 %.not.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit, label %.lr.ph.i.i, !llvm.loop !370

_ZNK7testing9TestSuite21reportable_test_countEv.exit: ; preds = %.lr.ph.i.i
  %.not = icmp eq i32 %spec.select.i.i, 0
  br i1 %.not, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %_ZNK7testing9TestSuite21reportable_test_countEv.exit
  br i1 %.033268, label %bb.af, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226

bb.af:                                            ; preds = %bb.ae
  %i.kr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.77, i64 noundef 2)
          to label %._ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226_crit_edge unwind label %bb.ad ; 0 uses

._ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226_crit_edge: ; preds = %bb.af
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !52
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226: ; preds = %._ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226_crit_edge, %bb.ae
  %i.ks = phi ptr [ %.pre, %._ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226_crit_edge ], [ %i.jt, %bb.ae ]
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 184
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !359
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !343
  invoke void @_ZN7testing8internal25JsonUnitTestResultPrinter18PrintJsonTestSuiteEPSoRKNS_9TestSuiteE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(264) %i.kw)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226._ZNK7testing9TestSuite21reportable_test_countEv.exit.thread_crit_edge unwind label %bb.ad

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226._ZNK7testing9TestSuite21reportable_test_countEv.exit.thread_crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226
  %.pre280 = load ptr, ptr %i.i, align 8, !tbaa !52
  br label %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread

_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226._ZNK7testing9TestSuite21reportable_test_countEv.exit.thread_crit_edge, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i, %_ZNK7testing9TestSuite21reportable_test_countEv.exit
  %i.kx = phi ptr [ %.pre280, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226._ZNK7testing9TestSuite21reportable_test_countEv.exit.thread_crit_edge ], [ %i.jt, %_ZNK7testing9TestSuite21reportable_test_countEv.exit ], [ %i.jt, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i ] ; 4 uses
  %.2 = phi i1 [ true, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226._ZNK7testing9TestSuite21reportable_test_countEv.exit.thread_crit_edge ], [ %.033268, %_ZNK7testing9TestSuite21reportable_test_countEv.exit ], [ %.033268, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 184
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 192
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !358
  %i.lb = load ptr, ptr %i.ky, align 8, !tbaa !359 ; 2 uses
  %i.lc = ptrtoint ptr %i.la to i64
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = sub i64 %i.lc, %i.ld
  %sext368 = shl i64 %i.le, 29
  %i.lf = ashr i64 %sext368, 32
  %i.lg = icmp slt i64 %indvars.iv.next, %i.lf
  br i1 %i.lg, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203._crit_edge, !llvm.loop !1001

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203._crit_edge: ; preds = %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203.preheader
  %.lcssa = phi ptr [ %i.hv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203.preheader ], [ %i.kx, %_ZNK7testing9TestSuite21reportable_test_countEv.exit.thread ] ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.lcssa, i64 376
  %i.li = getelementptr inbounds nuw i8, ptr %.lcssa, i64 432
  %i.lj = getelementptr inbounds nuw i8, ptr %.lcssa, i64 440
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !306
  %i.ll = load ptr, ptr %i.li, align 8, !tbaa !314 ; 2 uses
  %i.lm = ptrtoint ptr %i.lk to i64
  %i.ln = ptrtoint ptr %i.ll to i64
  %i.lo = sub i64 %i.lm, %i.ln
  %i.lp = sdiv exact i64 %i.lo, 112               ; 5 uses
  %i.lq = trunc i64 %i.lp to i32
  %i.lr = icmp sgt i32 %i.lq, 0
  br i1 %i.lr, label %.lr.ph.preheader.i, label %_ZNK7testing10TestResult6FailedEv.exit.thread

.lr.ph.preheader.i:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203._crit_edge
  %wide.trip.count.i = and i64 %i.lp, 2147483647
  br label %.lr.ph.i

bb.ag:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond16.not.i, label %_ZNK7testing10TestResult6FailedEv.exit.thread, label %.lr.ph.i, !llvm.loop !365

.lr.ph.i:                                         ; preds = %bb.ag, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ag ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.lp
  br i1 %exitcond.not.i, label %bb.ah, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i

bb.ah:                                            ; preds = %.lr.ph.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.605, i64 noundef %i.lp, i64 noundef %i.lp) #58
          to label %.noexc231 unwind label %bb.ai

.noexc231:                                        ; preds = %bb.ah
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i: ; preds = %.lr.ph.i
  %i.ls = getelementptr inbounds nuw [112 x i8], ptr %i.ll, i64 %indvars.iv.i
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !328
  %i.lu = add i32 %i.lt, -1
  %spec.select.i.i230 = icmp ult i32 %i.lu, 2
  br i1 %spec.select.i.i230, label %_ZNK7testing10TestResult6FailedEv.exit, label %bb.ag

_ZNK7testing10TestResult6FailedEv.exit:           ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  invoke void @_ZN7testing8internal25JsonUnitTestResultPrinter32OutputJsonTestSuiteForTestResultEPSoRKNS_10TestResultE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(128) %i.lh)
          to label %_ZNK7testing10TestResult6FailedEv.exit.thread unwind label %bb.ai

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit237, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit235, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit233, %_ZNK7testing10TestResult6FailedEv.exit.thread, %bb.ah, %_ZNK7testing10TestResult6FailedEv.exit
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNK7testing10TestResult6FailedEv.exit.thread:    ; preds = %bb.ag, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203._crit_edge, %_ZNK7testing10TestResult6FailedEv.exit
  %i.lw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.94, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit233 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit233: ; preds = %_ZNK7testing10TestResult6FailedEv.exit.thread
  %i.lx = load ptr, ptr %3, align 8, !tbaa !9
  %i.ly = load i64, ptr %i.hn, align 8, !tbaa !17
  %i.lz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.lx, i64 noundef %i.ly)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit235 unwind label %bb.ai ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit235: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit233
  %i.ma = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lz, ptr noundef nonnull @.str.260, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit237 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit237: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit235
  %i.mb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lz, ptr noundef nonnull @.str.272, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit239 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit239: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit237
  %i.mc = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.d
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit239
  %i.me = load i64, ptr %i.d, align 8, !tbaa !15
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mf) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit239, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  %i.mg = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.mh = icmp eq ptr %i.mg, %i.a
  br i1 %i.mh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242
  %i.mi = load i64, ptr %i.a, align 8, !tbaa !15
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mj) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  ret void

bb.aj:                                            ; preds = %bb.ad, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %bb.k
  %.pn73.pn = phi { ptr, i32 } [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %i.ei, %bb.k ], [ %i.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224 ], [ %.pn68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218 ], [ %.pn65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ], [ %.pn62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ], [ %i.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %i.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ], [ %i.js, %bb.ad ], [ %i.lv, %bb.ai ] ; 2 uses
  %i.mk = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.ml = icmp eq ptr %i.mk, %i.d
  br i1 %i.ml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %bb.aj
  %i.mm = load i64, ptr %i.d, align 8, !tbaa !15
  %i.mn = add i64 %i.mm, 1
  call void @_ZdlPvm(ptr noundef %i.mk, i64 noundef %i.mn) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246, %bb.j
  %.pn73.pn.pn = phi { ptr, i32 } [ %i.eh, %bb.j ], [ %.pn73.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246 ], [ %.pn73.pn, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  %i.mo = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.a
  br i1 %i.mp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  %i.mq = load i64, ptr %i.a, align 8, !tbaa !15
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.mr) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  resume { ptr, i32 } %.pn73.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7testing8internal25JsonUnitTestResultPrinter10EscapeJsonERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #59 ; 8 uses
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %_ZN7testing7MessageC2Ev.exit unwind label %bb.b

common.resume:                                    ; preds = %_ZN7testing7MessageD2Ev.exit39, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit39 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 392) #57
  br label %common.resume

_ZN7testing7MessageC2Ev.exit:                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 17 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.h = getelementptr i8, ptr %i.g, i64 -24
end_hunk_5
begin_hunk_6_@_ZN7testing8internal25JsonUnitTestResultPrinter18OutputJsonTestInfoEPSoPKcRKNS_8TestInfoE:._crit_edge.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328, %bb.m
  %.pn91.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.m ], [ %.pn91.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328 ], [ %.pn91.pn, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  %i.pv = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.pw = icmp eq ptr %i.pv, %i.h
  br i1 %i.pw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330
  %i.px = load i64, ptr %i.h, align 8, !tbaa !15
  %i.py = add i64 %i.px, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.py) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  resume { ptr, i32 } %.pn91.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7testing8internal25JsonUnitTestResultPrinter18PrintJsonTestSuiteEPSoRKNS_9TestSuiteE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.b, ptr noundef nonnull align 1 dereferenceable(9) @.str.198, i64 9, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 9, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 25
  store i8 0, ptr %i.d, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !16, !alias.scope !1137
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 6, i8 noundef signext 32)
          to label %_ZN7testing8internalL6IndentB5cxx11Em.exit unwind label %bb.t

_ZN7testing8internalL6IndentB5cxx11Em.exit:       ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #56
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !16, !alias.scope !1140
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 4, i8 noundef signext 32)
          to label %_ZN7testing8internalL6IndentB5cxx11Em.exit80 unwind label %bb.u

_ZN7testing8internalL6IndentB5cxx11Em.exit80:     ; preds = %_ZN7testing8internalL6IndentB5cxx11Em.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !17
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.g, i64 noundef %i.i)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.v

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZN7testing8internalL6IndentB5cxx11Em.exit80
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.256, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.l = load ptr, ptr %4, align 8, !tbaa !9      ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.f
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = load i64, ptr %i.f, align 8, !tbaa !15
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #56
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !16
  store i32 1701667182, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 4, ptr %i.q, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i8 0, ptr %i.r, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #56
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9    ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.u, ptr %6, align 8, !tbaa !16
  %i.v = icmp eq ptr %i.t, null
  br i1 %i.v, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.590) #58
          to label %.noexc89 unwind label %bb.w

.noexc89:                                         ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #56 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i64 %i.w, ptr %i.a, align 8, !tbaa !46
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i88, label %._crit_edge.i.i87

.noexc.i88:                                       ; preds = %bb.b
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc90 unwind label %bb.w   ; 2 uses

.noexc90:                                         ; preds = %.noexc.i88
  store ptr %i.y, ptr %6, align 8, !tbaa !9
  %i.z = load i64, ptr %i.a, align 8, !tbaa !46
  store i64 %i.z, ptr %i.u, align 8, !tbaa !15
  br label %._crit_edge.i.i87

._crit_edge.i.i87:                                ; preds = %.noexc90, %bb.b
  %i.aa = phi ptr [ %i.y, %.noexc90 ], [ %i.u, %bb.b ] ; 2 uses
  switch i64 %i.w, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i87
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !15
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !15
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i87
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr nonnull align 1 %i.t, i64 %i.w, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i87
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !17
  %i.ae = load ptr, ptr %6, align 8, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  invoke void @_ZN7testing8internal25JsonUnitTestResultPrinter13OutputJsonKeyEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_SA_b(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.x

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %6, align 8, !tbaa !9     ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.u
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.f
  %i.ai = load i64, ptr %i.u, align 8, !tbaa !15
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #56
  %i.ak = load ptr, ptr %5, align 8, !tbaa !9     ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.p
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.am = load i64, ptr %i.p, align 8, !tbaa !15
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #56
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ao, ptr %7, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ao, ptr noundef nonnull align 1 dereferenceable(5) @.str.153, i64 5, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 5, ptr %i.ap, align 8, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 21
  store i8 0, ptr %i.aq, align 1, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !360 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !360 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.as, %i.au
  br i1 %.not7.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ]
  %.sroa.04.08.i.i = phi ptr [ %i.bc, %.lr.ph.i.i ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ] ; 2 uses
  %i.av = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !361 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 130
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !376, !range !70, !noundef !71
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 131
  %i.ba = load i8, ptr %i.az, align 1, !range !70
  %i.bb = xor i8 %i.ba, 1
  %17 = zext nneg i8 %i.bb to i32
  %18 = select i1 %i.ay, i32 %17, i32 0
  %spec.select.i.i = add nuw nsw i32 %18, %.09.i.i ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, %i.au
  br i1 %.not.i.i, label %_ZNK7testing9TestSuite21reportable_test_countEv.exit, label %.lr.ph.i.i, !llvm.loop !370

_ZNK7testing9TestSuite21reportable_test_countEv.exit: ; preds = %.lr.ph.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %.0.lcssa.i.i = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %spec.select.i.i, %.lr.ph.i.i ]
  invoke void @_ZN7testing8internal25JsonUnitTestResultPrinter13OutputJsonKeyEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iSA_b(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.y

bb.g:                                             ; preds = %_ZNK7testing9TestSuite21reportable_test_countEv.exit
  %i.bd = load ptr, ptr %7, align 8, !tbaa !9     ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ao
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.g
  %i.bf = load i64, ptr %i.ao, align 8, !tbaa !15
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #56
  %i.bh = load i8, ptr @_ZN7testing22FLAGS_gtest_list_testsE, align 1, !tbaa !69, !range !70, !noundef !71
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.ai, label %._crit_edge.i.i105

._crit_edge.i.i105:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #56
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.bj, ptr %8, align 8, !tbaa !16
  store i64 8315178135665074534, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 8, ptr %i.bk, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.bl, align 8, !tbaa !15
  %i.bm = load ptr, ptr %i.ar, align 8, !tbaa !360 ; 2 uses
  %i.bn = load ptr, ptr %i.at, align 8, !tbaa !360 ; 2 uses
  %.not7.i.i109 = icmp eq ptr %i.bm, %i.bn
  br i1 %.not7.i.i109, label %_ZNK7testing9TestSuite17failed_test_countEv.exit, label %.lr.ph.i.i110

.lr.ph.i.i110:                                    ; preds = %._crit_edge.i.i105, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i
  %.09.i.i111 = phi i32 [ %spec.select.i.i113, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i ], [ 0, %._crit_edge.i.i105 ]
  %.sroa.04.08.i.i112 = phi ptr [ %i.cg, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i ], [ %i.bm, %._crit_edge.i.i105 ] ; 2 uses
  %i.bo = load ptr, ptr %.sroa.04.08.i.i112, align 8, !tbaa !361 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 128
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !362, !range !70, !noundef !71
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.h, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i

bb.h:                                             ; preds = %.lr.ph.i.i110
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 200
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 208
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !306
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !314 ; 2 uses
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
  br i1 %exitcond16.not.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i, label %.lr.ph.i.i.i, !llvm.loop !365

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.i ] ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.i.i.i, %i.bz
  br i1 %exitcond.not.i.i.i, label %bb.j, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.605, i64 noundef %i.bz, i64 noundef %i.bz) #58
          to label %.noexc116 unwind label %bb.z

.noexc116:                                        ; preds = %bb.j
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cc = getelementptr inbounds nuw [112 x i8], ptr %i.bv, i64 %indvars.iv.i.i.i
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !328
  %i.ce = add i32 %i.cd, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.ce, 2
  br i1 %spec.select.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i, label %bb.i

_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i, %bb.i, %bb.h, %.lr.ph.i.i110
  %i.cf = phi i32 [ 0, %.lr.ph.i.i110 ], [ 0, %bb.h ], [ 1, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i ], [ 0, %bb.i ]
  %spec.select.i.i113 = add nuw nsw i32 %i.cf, %.09.i.i111 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i112, i64 8 ; 2 uses
  %.not.i.i114 = icmp eq ptr %i.cg, %i.bn
  br i1 %.not.i.i114, label %_ZNK7testing9TestSuite17failed_test_countEv.exit, label %.lr.ph.i.i110, !llvm.loop !370

_ZNK7testing9TestSuite17failed_test_countEv.exit: ; preds = %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i, %._crit_edge.i.i105
  %.0.lcssa.i.i115 = phi i32 [ 0, %._crit_edge.i.i105 ], [ %spec.select.i.i113, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i ]
  invoke void @_ZN7testing8internal25JsonUnitTestResultPrinter13OutputJsonKeyEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iSA_b(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef %.0.lcssa.i.i115, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.z

bb.k:                                             ; preds = %_ZNK7testing9TestSuite17failed_test_countEv.exit
  %i.ch = load ptr, ptr %8, align 8, !tbaa !9     ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.bj
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.k
  %i.cj = load i64, ptr %i.bj, align 8, !tbaa !15
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #56
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.cl, ptr %9, align 8, !tbaa !16
  store i64 7234307546238118244, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 8, ptr %i.cm, align 8, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 0, ptr %i.cn, align 8, !tbaa !15
  %i.co = load ptr, ptr %i.ar, align 8, !tbaa !360 ; 2 uses
  %i.cp = load ptr, ptr %i.at, align 8, !tbaa !360 ; 2 uses
  %.not7.i.i124 = icmp eq ptr %i.co, %i.cp
  br i1 %.not7.i.i124, label %_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit, label %.lr.ph.i.i125

.lr.ph.i.i125:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i
  %.09.i.i126 = phi i32 [ %spec.select.i.i128, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ]
  %.sroa.04.08.i.i127 = phi ptr [ %i.dc, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ] ; 2 uses
  %i.cq = load ptr, ptr %.sroa.04.08.i.i127, align 8, !tbaa !361 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 130
  %i.cs = load i8, ptr %i.cr, align 2, !tbaa !376, !range !70, !noundef !71
  %i.ct = trunc nuw i8 %i.cs to i1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 131
  %i.cv = load i8, ptr %i.cu, align 1, !range !70
  %i.cw = trunc nuw i8 %i.cv to i1
  %not..i.i = xor i1 %i.ct, true
  %i.cx = select i1 %not..i.i, i1 true, i1 %i.cw
  br i1 %i.cx, label %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i125
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 129
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !377, !range !70, !noundef !71
  %i.da = zext nneg i8 %i.cz to i32
  br label %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i

_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i: ; preds = %bb.l, %.lr.ph.i.i125
  %i.db = phi i32 [ 0, %.lr.ph.i.i125 ], [ %i.da, %bb.l ]
  %spec.select.i.i128 = add nuw nsw i32 %i.db, %.09.i.i126 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i127, i64 8 ; 2 uses
  %.not.i.i129 = icmp eq ptr %i.dc, %i.cp
  br i1 %.not.i.i129, label %_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit, label %.lr.ph.i.i125, !llvm.loop !370

_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit: ; preds = %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %.0.lcssa.i.i130 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %spec.select.i.i128, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i ]
  invoke void @_ZN7testing8internal25JsonUnitTestResultPrinter13OutputJsonKeyEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iSA_b(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef %.0.lcssa.i.i130, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.aa

bb.m:                                             ; preds = %_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit
  %i.dd = load ptr, ptr %9, align 8, !tbaa !9     ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.cl
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %bb.m
  %i.df = load i64, ptr %i.cl, align 8, !tbaa !15
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #56
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.dh, ptr %10, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dh, ptr noundef nonnull align 1 dereferenceable(6) @.str.205, i64 6, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 6, ptr %i.di, align 8, !tbaa !17
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i8 0, ptr %i.dj, align 2, !tbaa !15
  invoke void @_ZN7testing8internal25JsonUnitTestResultPrinter13OutputJsonKeyEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iSA_b(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true)
          to label %bb.n unwind label %bb.ab

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %i.dk = load ptr, ptr %10, align 8, !tbaa !9    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.dh
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %bb.n
  %i.dm = load i64, ptr %i.dh, align 8, !tbaa !15
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #56
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.do, ptr %11, align 8, !tbaa !16
end_hunk_6
