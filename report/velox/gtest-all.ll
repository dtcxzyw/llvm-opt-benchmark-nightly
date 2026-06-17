inline.NumInlined: 8808
inline.NumDeleted: 2098
begin_hunk_0_@_ZNK7testing8internal12UnitTestImpl27successful_test_suite_countEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !353  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !353  ; 2 uses
  %.not7.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_9TestSuiteESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit
  %i.e = phi ptr [ %i.m, %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit ], [ %i.d, %bb.a ]
  %.09.i = phi i32 [ %spec.select.i, %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit ], [ 0, %bb.a ]
  %.sroa.04.08.i = phi ptr [ %i.o, %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !354 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load i8, ptr %i.g, align 8, !tbaa !355, !range !69, !noundef !70
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = tail call noundef zeroext i1 @_ZNK7testing9TestSuite6FailedEv(ptr noundef nonnull align 8 dereferenceable(264) %i.f)
  %i.k = xor i1 %i.j, true
  %i.l = zext i1 %i.k to i32
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !353
  br label %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit

_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit: ; preds = %.lr.ph.i, %bb.b
  %i.m = phi ptr [ %i.e, %.lr.ph.i ], [ %.pre, %bb.b ] ; 2 uses
  %i.n = phi i32 [ 0, %.lr.ph.i ], [ %i.l, %bb.b ]
  %spec.select.i = add nuw nsw i32 %i.n, %.09.i   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.m
  br i1 %.not.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_9TestSuiteESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i, !llvm.loop !368

_ZN7testing8internal7CountIfISt6vectorIPNS_9TestSuiteESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit: ; preds = %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(601) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !353  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !353  ; 2 uses
  %.not7.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_9TestSuiteESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit
  %i.e = phi ptr [ %i.l, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit ], [ %i.d, %bb.a ]
  %.09.i = phi i32 [ %spec.select.i, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit ], [ 0, %bb.a ]
  %.sroa.04.08.i = phi ptr [ %i.n, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !354 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load i8, ptr %i.g, align 8, !tbaa !355, !range !69, !noundef !70
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = tail call noundef zeroext i1 @_ZNK7testing9TestSuite6FailedEv(ptr noundef nonnull align 8 dereferenceable(264) %i.f)
  %i.k = zext i1 %i.j to i32
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !353
  br label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit

_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit: ; preds = %.lr.ph.i, %bb.b
  %i.l = phi ptr [ %i.e, %.lr.ph.i ], [ %.pre, %bb.b ] ; 2 uses
  %i.m = phi i32 [ 0, %.lr.ph.i ], [ %i.k, %bb.b ]
  %spec.select.i = add nuw nsw i32 %i.m, %.09.i   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.n, %i.l
  br i1 %.not.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_9TestSuiteESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i, !llvm.loop !368

_ZN7testing8internal7CountIfISt6vectorIPNS_9TestSuiteESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit: ; preds = %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK7testing8internal12UnitTestImpl22total_test_suite_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(601) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !369
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !370
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK7testing8internal12UnitTestImpl23test_suite_to_run_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(601) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !353  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !353  ; 2 uses
  %.not7.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_9TestSuiteESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.09.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.04.08.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !354
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.g = load i8, ptr %i.f, align 8, !tbaa !355, !range !69, !noundef !70
  %i.h = zext nneg i8 %i.g to i32
  %spec.select.i = add nuw nsw i32 %.09.i, %i.h   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_9TestSuiteESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i, !llvm.loop !368

_ZN7testing8internal7CountIfISt6vectorIPNS_9TestSuiteESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit: ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %.lr.ph.i ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK7testing8internal12UnitTestImpl21successful_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(601) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !369  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !370  ; 3 uses
  %.not15.i = icmp eq ptr %i.c, %i.d
  br i1 %.not15.i, label %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %_ZNK7testing9TestSuite21successful_test_countEv.exit
  %.014.us.i = phi i64 [ %i.cb, %_ZNK7testing9TestSuite21successful_test_countEv.exit ], [ 0, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.01213.us.i = phi i32 [ %i.ca, %_ZNK7testing9TestSuite21successful_test_countEv.exit ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.014.us.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !354  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !371  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !371  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not7.i.i, label %_ZNK7testing9TestSuite21successful_test_countEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.us.i, %_ZN7testing9TestSuite10TestPassedEPKNS_8TestInfoE.exit.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %_ZN7testing9TestSuite10TestPassedEPKNS_8TestInfoE.exit.i ], [ 0, %.lr.ph.split.us.i ]
  %.sroa.04.08.i.i = phi ptr [ %i.bz, %_ZN7testing9TestSuite10TestPassedEPKNS_8TestInfoE.exit.i ], [ %i.l, %.lr.ph.split.us.i ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !372 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.q = load i8, ptr %i.p, align 8, !tbaa !373, !range !69, !noundef !70
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.b, label %_ZN7testing9TestSuite10TestPassedEPKNS_8TestInfoE.exit.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !307  ; 3 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !315  ; 14 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 112                 ; 9 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = icmp slt i32 %i.aa, 1                   ; 3 uses
  br i1 %i.ab, label %.loopexit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.b
  %wide.trip.count.i.i.i = and i64 %i.z, 2147483647
  br label %.lr.ph.i.i.i

bb.c:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond16.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond16.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !376

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.c ] ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.i.i.i, %i.z
  br i1 %exitcond.not.i.i.i, label %bb.d, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.518, i64 noundef %i.z, i64 noundef %i.z) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw [112 x i8], ptr %i.v, i64 %indvars.iv.i.i.i
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !330
  %i.ae = add i32 %i.ad, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.ae, 2
  br i1 %spec.select.i.i.i.i, label %_ZNK7testing10TestResult7SkippedEv.exit.thread.i, label %bb.c

.loopexit.i.i:                                    ; preds = %bb.c, %bb.b
  %.not7.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not7.i.i.i, label %_ZNK7testing10TestResult7SkippedEv.exit.thread.i, label %.lr.ph.i1.i.i.preheader

.lr.ph.i1.i.i.preheader:                          ; preds = %.loopexit.i.i
  %1 = add i64 %i.w, -112
  %2 = sub i64 %1, %i.x                           ; 2 uses
  %i.af = udiv i64 %2, 112
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %2, 784
  br i1 %min.iters.check, label %.lr.ph.i1.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i1.i.i.preheader
  %n.vec = and i64 %i.ag, 576460752303423480      ; 3 uses
  %i.ah = mul i64 %n.vec, 112
  %i.ai = getelementptr i8, ptr %i.v, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bm, %vector.body ]
  %i.aj = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.aj
  %i.ak = getelementptr i8, ptr %i.v, i64 %i.aj
  %next.gep19 = getelementptr i8, ptr %i.ak, i64 112
  %i.al = getelementptr i8, ptr %i.v, i64 %i.aj
  %next.gep20 = getelementptr i8, ptr %i.al, i64 224
  %i.am = getelementptr i8, ptr %i.v, i64 %i.aj
  %next.gep21 = getelementptr i8, ptr %i.am, i64 336
  %i.an = getelementptr i8, ptr %i.v, i64 %i.aj
  %next.gep22 = getelementptr i8, ptr %i.an, i64 448
  %i.ao = getelementptr i8, ptr %i.v, i64 %i.aj
  %next.gep23 = getelementptr i8, ptr %i.ao, i64 560
  %i.ap = getelementptr i8, ptr %i.v, i64 %i.aj
  %next.gep24 = getelementptr i8, ptr %i.ap, i64 672
  %i.aq = getelementptr i8, ptr %i.v, i64 %i.aj
  %next.gep25 = getelementptr i8, ptr %i.aq, i64 784
  %i.ar = load i32, ptr %next.gep, align 8, !tbaa !330
  %i.as = load i32, ptr %next.gep19, align 8, !tbaa !330
  %i.at = load i32, ptr %next.gep20, align 8, !tbaa !330
  %i.au = load i32, ptr %next.gep21, align 8, !tbaa !330
  %i.av = insertelement <4 x i32> poison, i32 %i.ar, i64 0
  %i.aw = insertelement <4 x i32> %i.av, i32 %i.as, i64 1
  %i.ax = insertelement <4 x i32> %i.aw, i32 %i.at, i64 2
  %i.ay = insertelement <4 x i32> %i.ax, i32 %i.au, i64 3
  %i.az = load i32, ptr %next.gep22, align 8, !tbaa !330
  %i.ba = load i32, ptr %next.gep23, align 8, !tbaa !330
  %i.bb = load i32, ptr %next.gep24, align 8, !tbaa !330
  %i.bc = load i32, ptr %next.gep25, align 8, !tbaa !330
  %i.bd = insertelement <4 x i32> poison, i32 %i.az, i64 0
  %i.be = insertelement <4 x i32> %i.bd, i32 %i.ba, i64 1
  %i.bf = insertelement <4 x i32> %i.be, i32 %i.bb, i64 2
  %i.bg = insertelement <4 x i32> %i.bf, i32 %i.bc, i64 3
  %i.bh = icmp eq <4 x i32> %i.ay, splat (i32 3)
  %i.bi = icmp eq <4 x i32> %i.bg, splat (i32 3)
  %i.bj = zext <4 x i1> %i.bh to <4 x i32>
  %i.bk = zext <4 x i1> %i.bi to <4 x i32>
  %i.bl = add <4 x i32> %vec.phi, %i.bj           ; 2 uses
  %i.bm = add <4 x i32> %vec.phi18, %i.bk         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !377

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bm, %i.bl
  %i.bo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNK7testing10TestResult7SkippedEv.exit.i, label %.lr.ph.i1.i.i.preheader26

.lr.ph.i1.i.i.preheader26:                        ; preds = %.lr.ph.i1.i.i.preheader, %middle.block
  %.09.i.i.i.ph = phi i32 [ 0, %.lr.ph.i1.i.i.preheader ], [ %i.bo, %middle.block ]
  %.sroa.04.08.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i1.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i1.i.i

.lr.ph.i1.i.i:                                    ; preds = %.lr.ph.i1.i.i.preheader26, %.lr.ph.i1.i.i
  %.09.i.i.i = phi i32 [ %spec.select.i.i.i, %.lr.ph.i1.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i1.i.i.preheader26 ]
  %.sroa.04.08.i.i.i = phi ptr [ %i.bs, %.lr.ph.i1.i.i ], [ %.sroa.04.08.i.i.i.ph, %.lr.ph.i1.i.i.preheader26 ] ; 2 uses
  %i.bp = load i32, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !330
  %i.bq = icmp eq i32 %i.bp, 3
  %i.br = zext i1 %i.bq to i32
  %spec.select.i.i.i = add nuw nsw i32 %.09.i.i.i, %i.br ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bs, %i.u
  br i1 %.not.i.i.i, label %_ZNK7testing10TestResult7SkippedEv.exit.i, label %.lr.ph.i1.i.i, !llvm.loop !380

_ZNK7testing10TestResult7SkippedEv.exit.i:        ; preds = %.lr.ph.i1.i.i, %middle.block
  %spec.select.i.i.i.lcssa = phi i32 [ %i.bo, %middle.block ], [ %spec.select.i.i.i, %.lr.ph.i1.i.i ]
  %.not.i = icmp ne i32 %spec.select.i.i.i.lcssa, 0 ; 2 uses
  %brmerge.i = or i1 %i.ab, %.not.i
  %not..not.i = xor i1 %.not.i, true
  br i1 %brmerge.i, label %_ZNK7testing10TestResult6PassedEv.exit, label %.lr.ph.preheader.i.i

_ZNK7testing10TestResult7SkippedEv.exit.thread.i: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i, %.loopexit.i.i
  br i1 %i.ab, label %_ZNK7testing10TestResult6PassedEv.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNK7testing10TestResult7SkippedEv.exit.thread.i, %_ZNK7testing10TestResult7SkippedEv.exit.i
  %wide.trip.count.i.i = and i64 %i.z, 2147483647
  br label %.lr.ph.i.i1

.lr.ph.i.i1:                                      ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.z
  br i1 %exitcond.not.i.i, label %bb.e, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i1
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.518, i64 noundef %i.z, i64 noundef %i.z) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i: ; preds = %.lr.ph.i.i1
  %i.bt = getelementptr inbounds nuw [112 x i8], ptr %i.v, i64 %indvars.iv.i.i
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !330
  %i.bv = add i32 %i.bu, -3
  %spec.select.i.i1.i = icmp ult i32 %i.bv, -2    ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond16.not.i.i = icmp ne i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  %or.cond.not = select i1 %spec.select.i.i1.i, i1 %exitcond16.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i1, label %_ZNK7testing10TestResult6PassedEv.exit, !llvm.loop !376

_ZNK7testing10TestResult6PassedEv.exit:           ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i, %_ZNK7testing10TestResult7SkippedEv.exit.i, %_ZNK7testing10TestResult7SkippedEv.exit.thread.i
  %i.bw = phi i1 [ %not..not.i, %_ZNK7testing10TestResult7SkippedEv.exit.i ], [ true, %_ZNK7testing10TestResult7SkippedEv.exit.thread.i ], [ %spec.select.i.i1.i, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i ]
  %i.bx = zext i1 %i.bw to i32
  br label %_ZN7testing9TestSuite10TestPassedEPKNS_8TestInfoE.exit.i

_ZN7testing9TestSuite10TestPassedEPKNS_8TestInfoE.exit.i: ; preds = %_ZNK7testing10TestResult6PassedEv.exit, %.lr.ph.i.i
  %i.by = phi i32 [ 0, %.lr.ph.i.i ], [ %i.bx, %_ZNK7testing10TestResult6PassedEv.exit ]
  %spec.select.i.i = add nuw nsw i32 %i.by, %.09.i.i ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bz, %i.n
  br i1 %.not.i.i, label %_ZNK7testing9TestSuite21successful_test_countEv.exit, label %.lr.ph.i.i, !llvm.loop !381

_ZNK7testing9TestSuite21successful_test_countEv.exit: ; preds = %_ZN7testing9TestSuite10TestPassedEPKNS_8TestInfoE.exit.i, %.lr.ph.split.us.i
  %.0.lcssa.i.i = phi i32 [ 0, %.lr.ph.split.us.i ], [ %spec.select.i.i, %_ZN7testing9TestSuite10TestPassedEPKNS_8TestInfoE.exit.i ]
  %i.ca = add nsw i32 %.0.lcssa.i.i, %.01213.us.i ; 2 uses
  %i.cb = add nuw i64 %.014.us.i, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %i.h
  br i1 %exitcond.not, label %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit, label %.lr.ph.split.us.i, !llvm.loop !382

_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit: ; preds = %_ZNK7testing9TestSuite21successful_test_countEv.exit, %bb.a
  %.012.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.ca, %_ZNK7testing9TestSuite21successful_test_countEv.exit ]
  ret i32 %.012.lcssa.i
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK7testing9TestSuite21successful_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !371  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !371  ; 2 uses
  %.not7.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN7testing9TestSuite10TestPassedEPKNS_8TestInfoE.exit
  %i.e = phi ptr [ %i.m, %_ZN7testing9TestSuite10TestPassedEPKNS_8TestInfoE.exit ], [ %i.d, %bb.a ]
  %.09.i = phi i32 [ %spec.select.i, %_ZN7testing9TestSuite10TestPassedEPKNS_8TestInfoE.exit ], [ 0, %bb.a ]
  %.sroa.04.08.i = phi ptr [ %i.o, %_ZN7testing9TestSuite10TestPassedEPKNS_8TestInfoE.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !372 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load i8, ptr %i.g, align 8, !tbaa !373, !range !69, !noundef !70
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZN7testing9TestSuite10TestPassedEPKNS_8TestInfoE.exit

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.k = tail call noundef zeroext i1 @_ZNK7testing10TestResult6PassedEv(ptr noundef nonnull align 8 dereferenceable(128) %i.j)
  %i.l = zext i1 %i.k to i32
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !371
  br label %_ZN7testing9TestSuite10TestPassedEPKNS_8TestInfoE.exit

_ZN7testing9TestSuite10TestPassedEPKNS_8TestInfoE.exit: ; preds = %.lr.ph.i, %bb.b
  %i.m = phi ptr [ %i.e, %.lr.ph.i ], [ %.pre, %bb.b ] ; 2 uses
  %i.n = phi i32 [ 0, %.lr.ph.i ], [ %i.l, %bb.b ]
  %spec.select.i = add nuw nsw i32 %i.n, %.09.i   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.m
  br i1 %.not.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i, !llvm.loop !381

_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit: ; preds = %_ZN7testing9TestSuite10TestPassedEPKNS_8TestInfoE.exit, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %_ZN7testing9TestSuite10TestPassedEPKNS_8TestInfoE.exit ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK7testing8internal12UnitTestImpl18skipped_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(601) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !369  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !370  ; 3 uses
  %.not15.i = icmp eq ptr %i.c, %i.d
  br i1 %.not15.i, label %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %_ZNK7testing9TestSuite18skipped_test_countEv.exit
  %.014.us.i = phi i64 [ %i.by, %_ZNK7testing9TestSuite18skipped_test_countEv.exit ], [ 0, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.01213.us.i = phi i32 [ %i.bx, %_ZNK7testing9TestSuite18skipped_test_countEv.exit ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.014.us.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !354  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !371  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !371  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not7.i.i, label %_ZNK7testing9TestSuite18skipped_test_countEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.us.i, %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i ], [ 0, %.lr.ph.split.us.i ]
  %.sroa.04.08.i.i = phi ptr [ %i.bw, %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i ], [ %i.l, %.lr.ph.split.us.i ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !372 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.q = load i8, ptr %i.p, align 8, !tbaa !373, !range !69, !noundef !70
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.b, label %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !307  ; 3 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !315  ; 13 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 112                 ; 5 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.b
  %wide.trip.count.i.i.i.i = and i64 %i.z, 2147483647
  br label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond16.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond16.not.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !376

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.c ] ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i, %i.z
  br i1 %exitcond.not.i.i.i.i, label %bb.d, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.518, i64 noundef %i.z, i64 noundef %i.z) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ac = getelementptr inbounds nuw [112 x i8], ptr %i.v, i64 %indvars.iv.i.i.i.i
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !330
  %i.ae = add i32 %i.ad, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.ae, 2
  br i1 %spec.select.i.i.i.i.i, label %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i, label %bb.c

.loopexit.i.i.i:                                  ; preds = %bb.c, %bb.b
  %.not7.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not7.i.i.i.i, label %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i, label %.lr.ph.i1.i.i.i.preheader

.lr.ph.i1.i.i.i.preheader:                        ; preds = %.loopexit.i.i.i
  %1 = add i64 %i.w, -112
  %2 = sub i64 %1, %i.x                           ; 2 uses
  %i.af = udiv i64 %2, 112
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %2, 784
  br i1 %min.iters.check, label %.lr.ph.i1.i.i.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i1.i.i.i.preheader
  %n.vec = and i64 %i.ag, 576460752303423480      ; 3 uses
  %i.ah = mul i64 %n.vec, 112
  %i.ai = getelementptr i8, ptr %i.v, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %vec.phi13 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bm, %vector.body ]
  %i.aj = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.aj
  %i.ak = getelementptr i8, ptr %i.v, i64 %i.aj
  %next.gep14 = getelementptr i8, ptr %i.ak, i64 112
  %i.al = getelementptr i8, ptr %i.v, i64 %i.aj
  %next.gep15 = getelementptr i8, ptr %i.al, i64 224
  %i.am = getelementptr i8, ptr %i.v, i64 %i.aj
  %next.gep16 = getelementptr i8, ptr %i.am, i64 336
  %i.an = getelementptr i8, ptr %i.v, i64 %i.aj
  %next.gep17 = getelementptr i8, ptr %i.an, i64 448
  %i.ao = getelementptr i8, ptr %i.v, i64 %i.aj
  %next.gep18 = getelementptr i8, ptr %i.ao, i64 560
  %i.ap = getelementptr i8, ptr %i.v, i64 %i.aj
  %next.gep19 = getelementptr i8, ptr %i.ap, i64 672
  %i.aq = getelementptr i8, ptr %i.v, i64 %i.aj
  %next.gep20 = getelementptr i8, ptr %i.aq, i64 784
  %i.ar = load i32, ptr %next.gep, align 8, !tbaa !330
  %i.as = load i32, ptr %next.gep14, align 8, !tbaa !330
  %i.at = load i32, ptr %next.gep15, align 8, !tbaa !330
  %i.au = load i32, ptr %next.gep16, align 8, !tbaa !330
  %i.av = insertelement <4 x i32> poison, i32 %i.ar, i64 0
  %i.aw = insertelement <4 x i32> %i.av, i32 %i.as, i64 1
  %i.ax = insertelement <4 x i32> %i.aw, i32 %i.at, i64 2
  %i.ay = insertelement <4 x i32> %i.ax, i32 %i.au, i64 3
  %i.az = load i32, ptr %next.gep17, align 8, !tbaa !330
  %i.ba = load i32, ptr %next.gep18, align 8, !tbaa !330
  %i.bb = load i32, ptr %next.gep19, align 8, !tbaa !330
  %i.bc = load i32, ptr %next.gep20, align 8, !tbaa !330
  %i.bd = insertelement <4 x i32> poison, i32 %i.az, i64 0
  %i.be = insertelement <4 x i32> %i.bd, i32 %i.ba, i64 1
  %i.bf = insertelement <4 x i32> %i.be, i32 %i.bb, i64 2
  %i.bg = insertelement <4 x i32> %i.bf, i32 %i.bc, i64 3
  %i.bh = icmp eq <4 x i32> %i.ay, splat (i32 3)
  %i.bi = icmp eq <4 x i32> %i.bg, splat (i32 3)
  %i.bj = zext <4 x i1> %i.bh to <4 x i32>
  %i.bk = zext <4 x i1> %i.bi to <4 x i32>
  %i.bl = add <4 x i32> %vec.phi, %i.bj           ; 2 uses
  %i.bm = add <4 x i32> %vec.phi13, %i.bk         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !383

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bm, %i.bl
  %i.bo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i.i, label %.lr.ph.i1.i.i.i.preheader21

.lr.ph.i1.i.i.i.preheader21:                      ; preds = %.lr.ph.i1.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi i32 [ 0, %.lr.ph.i1.i.i.i.preheader ], [ %i.bo, %middle.block ]
  %.sroa.04.08.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i1.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i1.i.i.i

.lr.ph.i1.i.i.i:                                  ; preds = %.lr.ph.i1.i.i.i.preheader21, %.lr.ph.i1.i.i.i
  %.09.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %.lr.ph.i1.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i1.i.i.i.preheader21 ]
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i1.i.i.i ], [ %.sroa.04.08.i.i.i.i.ph, %.lr.ph.i1.i.i.i.preheader21 ] ; 2 uses
  %i.bp = load i32, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !330
  %i.bq = icmp eq i32 %i.bp, 3
  %i.br = zext i1 %i.bq to i32
  %spec.select.i.i.i.i = add nuw nsw i32 %.09.i.i.i.i, %i.br ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bs, %i.u
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i.i, label %.lr.ph.i1.i.i.i, !llvm.loop !384

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i1.i.i.i, %middle.block
  %spec.select.i.i.i.i.lcssa = phi i32 [ %i.bo, %middle.block ], [ %spec.select.i.i.i.i, %.lr.ph.i1.i.i.i ]
  %i.bt = icmp ne i32 %spec.select.i.i.i.i.lcssa, 0
  %i.bu = zext i1 %i.bt to i32
  br label %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i

_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i.i, %.loopexit.i.i.i, %.lr.ph.i.i
  %i.bv = phi i32 [ 0, %.lr.ph.i.i ], [ %i.bu, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i.i ], [ 0, %.loopexit.i.i.i ], [ 0, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i ]
  %spec.select.i.i = add nuw nsw i32 %i.bv, %.09.i.i ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bw, %i.n
  br i1 %.not.i.i, label %_ZNK7testing9TestSuite18skipped_test_countEv.exit, label %.lr.ph.i.i, !llvm.loop !381

_ZNK7testing9TestSuite18skipped_test_countEv.exit: ; preds = %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i, %.lr.ph.split.us.i
  %.0.lcssa.i.i = phi i32 [ 0, %.lr.ph.split.us.i ], [ %spec.select.i.i, %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i ]
  %i.bx = add nsw i32 %.0.lcssa.i.i, %.01213.us.i ; 2 uses
  %i.by = add nuw i64 %.014.us.i, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %i.h
  br i1 %exitcond.not, label %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit, label %.lr.ph.split.us.i, !llvm.loop !382

_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit: ; preds = %_ZNK7testing9TestSuite18skipped_test_countEv.exit, %bb.a
  %.012.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.bx, %_ZNK7testing9TestSuite18skipped_test_countEv.exit ]
  ret i32 %.012.lcssa.i
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK7testing9TestSuite18skipped_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !371  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !371  ; 2 uses
  %.not7.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit
  %.09.i = phi i32 [ %spec.select.i, %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit ], [ 0, %bb.a ]
  %.sroa.04.08.i = phi ptr [ %i.bm, %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !372 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.g = load i8, ptr %i.f, align 8, !tbaa !373, !range !69, !noundef !70
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !307  ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !315  ; 13 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 112                 ; 5 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.preheader.i.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.b
  %wide.trip.count.i.i.i = and i64 %i.p, 2147483647
  br label %.lr.ph.i.i.i

bb.c:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond16.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond16.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !376

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.c ] ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.i.i.i, %i.p
  br i1 %exitcond.not.i.i.i, label %bb.d, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.518, i64 noundef %i.p, i64 noundef %i.p) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.s = getelementptr inbounds nuw [112 x i8], ptr %i.l, i64 %indvars.iv.i.i.i
  %i.t = load i32, ptr %i.s, align 8, !tbaa !330
  %i.u = add i32 %i.t, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.u, 2
  br i1 %spec.select.i.i.i.i, label %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit, label %bb.c

.loopexit.i.i:                                    ; preds = %bb.c, %bb.b
  %.not7.i.i.i = icmp eq ptr %i.l, %i.k
  br i1 %.not7.i.i.i, label %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit, label %.lr.ph.i1.i.i.preheader

.lr.ph.i1.i.i.preheader:                          ; preds = %.loopexit.i.i
  %1 = add i64 %i.m, -112
  %2 = sub i64 %1, %i.n                           ; 2 uses
  %i.v = udiv i64 %2, 112
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %2, 784
  br i1 %min.iters.check, label %.lr.ph.i1.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i1.i.i.preheader
  %n.vec = and i64 %i.w, 576460752303423480       ; 3 uses
  %i.x = mul i64 %n.vec, 112
  %i.y = getelementptr i8, ptr %i.l, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi6 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %i.z = mul i64 %index, 112                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.z
  %i.aa = getelementptr i8, ptr %i.l, i64 %i.z
  %next.gep7 = getelementptr i8, ptr %i.aa, i64 112
  %i.ab = getelementptr i8, ptr %i.l, i64 %i.z
  %next.gep8 = getelementptr i8, ptr %i.ab, i64 224
  %i.ac = getelementptr i8, ptr %i.l, i64 %i.z
  %next.gep9 = getelementptr i8, ptr %i.ac, i64 336
  %i.ad = getelementptr i8, ptr %i.l, i64 %i.z
  %next.gep10 = getelementptr i8, ptr %i.ad, i64 448
  %i.ae = getelementptr i8, ptr %i.l, i64 %i.z
  %next.gep11 = getelementptr i8, ptr %i.ae, i64 560
  %i.af = getelementptr i8, ptr %i.l, i64 %i.z
  %next.gep12 = getelementptr i8, ptr %i.af, i64 672
  %i.ag = getelementptr i8, ptr %i.l, i64 %i.z
  %next.gep13 = getelementptr i8, ptr %i.ag, i64 784
  %i.ah = load i32, ptr %next.gep, align 8, !tbaa !330
  %i.ai = load i32, ptr %next.gep7, align 8, !tbaa !330
  %i.aj = load i32, ptr %next.gep8, align 8, !tbaa !330
  %i.ak = load i32, ptr %next.gep9, align 8, !tbaa !330
  %i.al = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 1
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 2
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.ak, i64 3
  %i.ap = load i32, ptr %next.gep10, align 8, !tbaa !330
  %i.aq = load i32, ptr %next.gep11, align 8, !tbaa !330
  %i.ar = load i32, ptr %next.gep12, align 8, !tbaa !330
  %i.as = load i32, ptr %next.gep13, align 8, !tbaa !330
  %i.at = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 1
  %i.av = insertelement <4 x i32> %i.au, i32 %i.ar, i64 2
  %i.aw = insertelement <4 x i32> %i.av, i32 %i.as, i64 3
  %i.ax = icmp eq <4 x i32> %i.ao, splat (i32 3)
  %i.ay = icmp eq <4 x i32> %i.aw, splat (i32 3)
  %i.az = zext <4 x i1> %i.ax to <4 x i32>
  %i.ba = zext <4 x i1> %i.ay to <4 x i32>
  %i.bb = add <4 x i32> %vec.phi, %i.az           ; 2 uses
  %i.bc = add <4 x i32> %vec.phi6, %i.ba          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !385

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bc, %i.bb
  %i.be = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i, label %.lr.ph.i1.i.i.preheader14

.lr.ph.i1.i.i.preheader14:                        ; preds = %.lr.ph.i1.i.i.preheader, %middle.block
  %.09.i.i.i.ph = phi i32 [ 0, %.lr.ph.i1.i.i.preheader ], [ %i.be, %middle.block ]
  %.sroa.04.08.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i1.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i1.i.i

.lr.ph.i1.i.i:                                    ; preds = %.lr.ph.i1.i.i.preheader14, %.lr.ph.i1.i.i
  %.09.i.i.i = phi i32 [ %spec.select.i.i.i, %.lr.ph.i1.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i1.i.i.preheader14 ]
  %.sroa.04.08.i.i.i = phi ptr [ %i.bi, %.lr.ph.i1.i.i ], [ %.sroa.04.08.i.i.i.ph, %.lr.ph.i1.i.i.preheader14 ] ; 2 uses
  %i.bf = load i32, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !330
  %i.bg = icmp eq i32 %i.bf, 3
  %i.bh = zext i1 %i.bg to i32
  %spec.select.i.i.i = add nuw nsw i32 %.09.i.i.i, %i.bh ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bi, %i.k
  br i1 %.not.i.i.i, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i, label %.lr.ph.i1.i.i, !llvm.loop !386

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i1.i.i, %middle.block
  %spec.select.i.i.i.lcssa = phi i32 [ %i.be, %middle.block ], [ %spec.select.i.i.i, %.lr.ph.i1.i.i ]
  %i.bj = icmp ne i32 %spec.select.i.i.i.lcssa, 0
  %i.bk = zext i1 %i.bj to i32
  br label %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit

_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i, %.lr.ph.i, %.loopexit.i.i, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i
  %i.bl = phi i32 [ 0, %.lr.ph.i ], [ %i.bk, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i ], [ 0, %.loopexit.i.i ], [ 0, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i ]
  %spec.select.i = add nuw nsw i32 %i.bl, %.09.i  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bm, %i.d
  br i1 %.not.i, label %_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit, label %.lr.ph.i, !llvm.loop !381

_ZN7testing8internal7CountIfISt6vectorIPNS_8TestInfoESaIS4_EEPFbPKS3_EEEiRKT_T0_.exit: ; preds = %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK7testing8internal12UnitTestImpl17failed_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(601) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !369  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !370  ; 3 uses
  %.not15.i = icmp eq ptr %i.c, %i.d
  br i1 %.not15.i, label %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %_ZNK7testing9TestSuite17failed_test_countEv.exit
  %.014.us.i = phi i64 [ %i.ai, %_ZNK7testing9TestSuite17failed_test_countEv.exit ], [ 0, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.01213.us.i = phi i32 [ %i.ah, %_ZNK7testing9TestSuite17failed_test_countEv.exit ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.014.us.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !354  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !371  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !371  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not7.i.i, label %_ZNK7testing9TestSuite17failed_test_countEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.us.i, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i ], [ 0, %.lr.ph.split.us.i ]
  %.sroa.04.08.i.i = phi ptr [ %i.ag, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i ], [ %i.l, %.lr.ph.split.us.i ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !372 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.q = load i8, ptr %i.p, align 8, !tbaa !373, !range !69, !noundef !70
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.b, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !307
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !315  ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 112                 ; 5 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.b
  %wide.trip.count.i.i.i = and i64 %i.z, 2147483647
  br label %.lr.ph.i.i.i

bb.c:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond16.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond16.not.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i, label %.lr.ph.i.i.i, !llvm.loop !376

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.c ] ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.i.i.i, %i.z
  br i1 %exitcond.not.i.i.i, label %bb.d, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.518, i64 noundef %i.z, i64 noundef %i.z) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw [112 x i8], ptr %i.v, i64 %indvars.iv.i.i.i
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !330
  %i.ae = add i32 %i.ad, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.ae, 2
  br i1 %spec.select.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i, label %bb.c

_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i, %bb.c, %bb.b, %.lr.ph.i.i
  %i.af = phi i32 [ 0, %.lr.ph.i.i ], [ 0, %bb.b ], [ 1, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i ], [ 0, %bb.c ]
  %spec.select.i.i = add nuw nsw i32 %i.af, %.09.i.i ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, %i.n
  br i1 %.not.i.i, label %_ZNK7testing9TestSuite17failed_test_countEv.exit, label %.lr.ph.i.i, !llvm.loop !381

_ZNK7testing9TestSuite17failed_test_countEv.exit: ; preds = %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i, %.lr.ph.split.us.i
  %.0.lcssa.i.i = phi i32 [ 0, %.lr.ph.split.us.i ], [ %spec.select.i.i, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i ]
  %i.ah = add nsw i32 %.0.lcssa.i.i, %.01213.us.i ; 2 uses
  %i.ai = add nuw i64 %.014.us.i, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %i.h
  br i1 %exitcond.not, label %_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit, label %.lr.ph.split.us.i, !llvm.loop !382

_ZN7testing8internalL20SumOverTestSuiteListERKSt6vectorIPNS_9TestSuiteESaIS3_EEMS2_KFivE.exit: ; preds = %_ZNK7testing9TestSuite17failed_test_countEv.exit, %bb.a
  %.012.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.ah, %_ZNK7testing9TestSuite17failed_test_countEv.exit ]
  ret i32 %.012.lcssa.i
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK7testing9TestSuite17failed_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !371  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !371  ; 2 uses
  %.not7.i = icmp eq ptr %i.b, %i.d
end_hunk_0
begin_hunk_1_@_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN7testing12TestPropertyESt6vectorIS3_SaIS3_EEEENS2_8internal17TestPropertyKeyIsEET_SB_SB_T0_:bb.a
  %i.bc = icmp eq ptr %i.bb, %i.c
  br i1 %i.bc, label %_ZN7testing8internal17TestPropertyKeyIsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEED2Ev.exit
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !13
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #55
  br label %_ZN7testing8internal17TestPropertyKeyIsD2Ev.exit

_ZN7testing8internal17TestPropertyKeyIsD2Ev.exit: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret ptr %i.am

bb.i:                                             ; preds = %.noexc.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bf, %bb.i ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4.i ], [ %i.ar, %bb.h ]
  %i.bg = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7: ; preds = %.body
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !13
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #55
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEED2Ev.exit9

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEED2Ev.exit9: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7
  %i.bl = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.c
  br i1 %i.bm, label %_ZN7testing8internal17TestPropertyKeyIsD2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEED2Ev.exit9
  %i.bn = load i64, ptr %i.c, align 8, !tbaa !13
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #55
  br label %_ZN7testing8internal17TestPropertyKeyIsD2Ev.exit12

_ZN7testing8internal17TestPropertyKeyIsD2Ev.exit12: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing10TestResult5ClearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !315  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !307  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN7testing14TestPartResultEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyIN7testing14TestPartResultEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 96 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !13
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !7    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !13
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !7    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZSt8_DestroyIN7testing14TestPartResultEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !13
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #55
  br label %_ZSt8_DestroyIN7testing14TestPartResultEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7testing14TestPartResultEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7testing14TestPartResultES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !697

_ZSt8_DestroyIPN7testing14TestPartResultES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN7testing14TestPartResultEEvPT_.exit.i.i.i.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !307
  br label %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE5clearEv.exit

_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN7testing14TestPartResultES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !693  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !694 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.aa, %i.y
  br i1 %.not.i.i1, label %_ZNSt6vectorIN7testing12TestPropertyESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE5clearEv.exit, %_ZSt8_DestroyIN7testing12TestPropertyEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i3 = phi ptr [ %i.am, %_ZSt8_DestroyIN7testing12TestPropertyEEvPT_.exit.i.i.i.i ], [ %i.y, %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE5clearEv.exit ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !7  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3, i64 48 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i4: ; preds = %.lr.ph.i.i.i.i2
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !13
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i5: ; preds = %.lr.ph.i.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i4
  %i.ah = load ptr, ptr %.05.i.i.i.i3, align 8, !tbaa !7 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZSt8_DestroyIN7testing12TestPropertyEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i5
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !13
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #55
  br label %_ZSt8_DestroyIN7testing12TestPropertyEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7testing12TestPropertyEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i6
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3, i64 64 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.am, %i.aa
  br i1 %.not.i.i.i.i7, label %_ZSt8_DestroyIPN7testing12TestPropertyES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i2, !llvm.loop !695

_ZSt8_DestroyIPN7testing12TestPropertyES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN7testing12TestPropertyEEvPT_.exit.i.i.i.i
  store ptr %i.y, ptr %i.z, align 8, !tbaa !694
  br label %_ZNSt6vectorIN7testing12TestPropertyESaIS1_EE5clearEv.exit

_ZNSt6vectorIN7testing12TestPropertyESaIS1_EE5clearEv.exit: ; preds = %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE5clearEv.exit, %_ZSt8_DestroyIPN7testing12TestPropertyES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.an, align 8, !tbaa !726
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.ao, align 8, !tbaa !727
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK7testing10TestResult7SkippedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !307  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !315  ; 13 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 112                 ; 5 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.preheader.i, label %.loopexit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = and i64 %i.h, 2147483647
  br label %.lr.ph.i

bb.b:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond16.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !376

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.h
  br i1 %exitcond.not.i, label %bb.c, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.518, i64 noundef %i.h, i64 noundef %i.h) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i: ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw [112 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.l = load i32, ptr %i.k, align 8, !tbaa !330
  %i.m = add i32 %i.l, -1
  %spec.select.i.i = icmp ult i32 %i.m, 2
  br i1 %spec.select.i.i, label %_ZNK7testing10TestResult6FailedEv.exit, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a
  %.not7.i = icmp eq ptr %i.d, %i.c
  br i1 %.not7.i, label %_ZNK7testing10TestResult6FailedEv.exit, label %.lr.ph.i1.preheader

.lr.ph.i1.preheader:                              ; preds = %.loopexit
  %1 = add i64 %i.e, -112
  %2 = sub i64 %1, %i.f                           ; 2 uses
  %i.n = udiv i64 %2, 112
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %2, 784
  br i1 %min.iters.check, label %.lr.ph.i1.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i1.preheader
  %n.vec = and i64 %i.o, 576460752303423480       ; 3 uses
  %i.p = mul i64 %n.vec, 112
  %i.q = getelementptr i8, ptr %i.d, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %vec.phi5 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.au, %vector.body ]
  %i.r = mul i64 %index, 112                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.r
  %i.s = getelementptr i8, ptr %i.d, i64 %i.r
  %next.gep6 = getelementptr i8, ptr %i.s, i64 112
  %i.t = getelementptr i8, ptr %i.d, i64 %i.r
  %next.gep7 = getelementptr i8, ptr %i.t, i64 224
  %i.u = getelementptr i8, ptr %i.d, i64 %i.r
  %next.gep8 = getelementptr i8, ptr %i.u, i64 336
  %i.v = getelementptr i8, ptr %i.d, i64 %i.r
  %next.gep9 = getelementptr i8, ptr %i.v, i64 448
  %i.w = getelementptr i8, ptr %i.d, i64 %i.r
  %next.gep10 = getelementptr i8, ptr %i.w, i64 560
  %i.x = getelementptr i8, ptr %i.d, i64 %i.r
  %next.gep11 = getelementptr i8, ptr %i.x, i64 672
  %i.y = getelementptr i8, ptr %i.d, i64 %i.r
  %next.gep12 = getelementptr i8, ptr %i.y, i64 784
  %i.z = load i32, ptr %next.gep, align 8, !tbaa !330
  %i.aa = load i32, ptr %next.gep6, align 8, !tbaa !330
  %i.ab = load i32, ptr %next.gep7, align 8, !tbaa !330
  %i.ac = load i32, ptr %next.gep8, align 8, !tbaa !330
  %i.ad = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %i.ae = insertelement <4 x i32> %i.ad, i32 %i.aa, i64 1
  %i.af = insertelement <4 x i32> %i.ae, i32 %i.ab, i64 2
  %i.ag = insertelement <4 x i32> %i.af, i32 %i.ac, i64 3
  %i.ah = load i32, ptr %next.gep9, align 8, !tbaa !330
  %i.ai = load i32, ptr %next.gep10, align 8, !tbaa !330
  %i.aj = load i32, ptr %next.gep11, align 8, !tbaa !330
  %i.ak = load i32, ptr %next.gep12, align 8, !tbaa !330
  %i.al = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 1
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 2
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.ak, i64 3
  %i.ap = icmp eq <4 x i32> %i.ag, splat (i32 3)
  %i.aq = icmp eq <4 x i32> %i.ao, splat (i32 3)
  %i.ar = zext <4 x i1> %i.ap to <4 x i32>
  %i.as = zext <4 x i1> %i.aq to <4 x i32>
  %i.at = add <4 x i32> %vec.phi, %i.ar           ; 2 uses
  %i.au = add <4 x i32> %vec.phi5, %i.as          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !728

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.au, %i.at
  %i.aw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit, label %.lr.ph.i1.preheader13

.lr.ph.i1.preheader13:                            ; preds = %.lr.ph.i1.preheader, %middle.block
  %.09.i.ph = phi i32 [ 0, %.lr.ph.i1.preheader ], [ %i.aw, %middle.block ]
  %.sroa.04.08.i.ph = phi ptr [ %i.d, %.lr.ph.i1.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph.i1

.lr.ph.i1:                                        ; preds = %.lr.ph.i1.preheader13, %.lr.ph.i1
  %.09.i = phi i32 [ %spec.select.i, %.lr.ph.i1 ], [ %.09.i.ph, %.lr.ph.i1.preheader13 ]
  %.sroa.04.08.i = phi ptr [ %i.ba, %.lr.ph.i1 ], [ %.sroa.04.08.i.ph, %.lr.ph.i1.preheader13 ] ; 2 uses
  %i.ax = load i32, ptr %.sroa.04.08.i, align 8, !tbaa !330
  %i.ay = icmp eq i32 %i.ax, 3
  %i.az = zext i1 %i.ay to i32
  %spec.select.i = add nuw nsw i32 %.09.i, %i.az  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 112 ; 2 uses
  %.not.i = icmp eq ptr %i.ba, %i.c
  br i1 %.not.i, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit, label %.lr.ph.i1, !llvm.loop !729

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit: ; preds = %.lr.ph.i1, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.aw, %middle.block ], [ %spec.select.i, %.lr.ph.i1 ]
  %i.bb = icmp ne i32 %spec.select.i.lcssa, 0
  br label %_ZNK7testing10TestResult6FailedEv.exit

_ZNK7testing10TestResult6FailedEv.exit:           ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i, %.loopexit, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit
  %i.bc = phi i1 [ %i.bb, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit ], [ false, %.loopexit ], [ false, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i ]
  ret i1 %i.bc
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK7testing10TestResult6FailedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !307
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !315  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 112                 ; 5 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.h, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %i.h
  br i1 %exitcond.not, label %bb.b, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit

bb.b:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.518, i64 noundef %i.h, i64 noundef %i.h) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw [112 x i8], ptr %i.d, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 8, !tbaa !330
  %i.m = add i32 %i.l, -1
  %spec.select.i = icmp ult i32 %i.m, 2           ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond16.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %spec.select.i, i1 true, i1 %exitcond16.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph, !llvm.loop !376

._crit_edge:                                      ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit, %bb.a
  %.lcssa8 = phi i1 [ false, %bb.a ], [ %spec.select.i, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ]
  ret i1 %.lcssa8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK7testing10TestResult15HasFatalFailureEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !730  ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !730  ; 3 uses
  %.not7.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = add i64 %i.e, -112
  %i.h = sub i64 %i.g, %i.f                       ; 2 uses
  %i.i = udiv i64 %i.h, 112
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 784
  br i1 %min.iters.check, label %.lr.ph.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.j, 576460752303423480       ; 3 uses
  %i.k = mul i64 %n.vec, 112
  %i.l = getelementptr i8, ptr %i.b, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi2 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %i.m = mul i64 %index, 112                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.m
  %i.n = getelementptr i8, ptr %i.b, i64 %i.m
  %next.gep3 = getelementptr i8, ptr %i.n, i64 112
  %i.o = getelementptr i8, ptr %i.b, i64 %i.m
  %next.gep4 = getelementptr i8, ptr %i.o, i64 224
  %i.p = getelementptr i8, ptr %i.b, i64 %i.m
  %next.gep5 = getelementptr i8, ptr %i.p, i64 336
  %i.q = getelementptr i8, ptr %i.b, i64 %i.m
  %next.gep6 = getelementptr i8, ptr %i.q, i64 448
  %i.r = getelementptr i8, ptr %i.b, i64 %i.m
  %next.gep7 = getelementptr i8, ptr %i.r, i64 560
  %i.s = getelementptr i8, ptr %i.b, i64 %i.m
  %next.gep8 = getelementptr i8, ptr %i.s, i64 672
  %i.t = getelementptr i8, ptr %i.b, i64 %i.m
  %next.gep9 = getelementptr i8, ptr %i.t, i64 784
  %i.u = load i32, ptr %next.gep, align 8, !tbaa !330
  %i.v = load i32, ptr %next.gep3, align 8, !tbaa !330
  %i.w = load i32, ptr %next.gep4, align 8, !tbaa !330
  %i.x = load i32, ptr %next.gep5, align 8, !tbaa !330
  %i.y = insertelement <4 x i32> poison, i32 %i.u, i64 0
  %i.z = insertelement <4 x i32> %i.y, i32 %i.v, i64 1
  %i.aa = insertelement <4 x i32> %i.z, i32 %i.w, i64 2
  %i.ab = insertelement <4 x i32> %i.aa, i32 %i.x, i64 3
  %i.ac = load i32, ptr %next.gep6, align 8, !tbaa !330
  %i.ad = load i32, ptr %next.gep7, align 8, !tbaa !330
  %i.ae = load i32, ptr %next.gep8, align 8, !tbaa !330
  %i.af = load i32, ptr %next.gep9, align 8, !tbaa !330
  %i.ag = insertelement <4 x i32> poison, i32 %i.ac, i64 0
  %i.ah = insertelement <4 x i32> %i.ag, i32 %i.ad, i64 1
  %i.ai = insertelement <4 x i32> %i.ah, i32 %i.ae, i64 2
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.af, i64 3
  %i.ak = icmp eq <4 x i32> %i.ab, splat (i32 2)
  %i.al = icmp eq <4 x i32> %i.aj, splat (i32 2)
  %i.am = zext <4 x i1> %i.ak to <4 x i32>
  %i.an = zext <4 x i1> %i.al to <4 x i32>
  %i.ao = add <4 x i32> %vec.phi, %i.am           ; 2 uses
  %i.ap = add <4 x i32> %vec.phi2, %i.an          ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN7testing4Test15HasFatalFailureEv:bb.a

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.0.i = phi ptr [ %i.i, %bb.f ], [ %i.l, %bb.h ], [ %i.m, %bb.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !730  ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !730  ; 3 uses
  %.not7.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not7.i.i, label %_ZNK7testing10TestResult15HasFatalFailureEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = add i64 %i.r, -112
  %i.u = sub i64 %i.t, %i.s                       ; 2 uses
  %i.v = udiv i64 %i.u, 112
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 784
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.w, 576460752303423480       ; 3 uses
  %i.x = mul i64 %n.vec, 112
  %i.y = getelementptr i8, ptr %i.o, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi5 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %i.z = mul i64 %index, 112                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.z
  %i.aa = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep6 = getelementptr i8, ptr %i.aa, i64 112
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep7 = getelementptr i8, ptr %i.ab, i64 224
  %i.ac = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep8 = getelementptr i8, ptr %i.ac, i64 336
  %i.ad = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep9 = getelementptr i8, ptr %i.ad, i64 448
  %i.ae = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep10 = getelementptr i8, ptr %i.ae, i64 560
  %i.af = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep11 = getelementptr i8, ptr %i.af, i64 672
  %i.ag = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep12 = getelementptr i8, ptr %i.ag, i64 784
  %i.ah = load i32, ptr %next.gep, align 8, !tbaa !330
  %i.ai = load i32, ptr %next.gep6, align 8, !tbaa !330
  %i.aj = load i32, ptr %next.gep7, align 8, !tbaa !330
  %i.ak = load i32, ptr %next.gep8, align 8, !tbaa !330
  %i.al = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 1
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 2
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.ak, i64 3
  %i.ap = load i32, ptr %next.gep9, align 8, !tbaa !330
  %i.aq = load i32, ptr %next.gep10, align 8, !tbaa !330
  %i.ar = load i32, ptr %next.gep11, align 8, !tbaa !330
  %i.as = load i32, ptr %next.gep12, align 8, !tbaa !330
  %i.at = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 1
  %i.av = insertelement <4 x i32> %i.au, i32 %i.ar, i64 2
  %i.aw = insertelement <4 x i32> %i.av, i32 %i.as, i64 3
  %i.ax = icmp eq <4 x i32> %i.ao, splat (i32 2)
  %i.ay = icmp eq <4 x i32> %i.aw, splat (i32 2)
  %i.az = zext <4 x i1> %i.ax to <4 x i32>
  %i.ba = zext <4 x i1> %i.ay to <4 x i32>
  %i.bb = add <4 x i32> %vec.phi, %i.az           ; 2 uses
  %i.bc = add <4 x i32> %vec.phi5, %i.ba          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !762

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bc, %i.bb
  %i.be = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i.preheader13

.lr.ph.i.i.preheader13:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.09.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.be, %middle.block ]
  %.sroa.04.08.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader13, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader13 ]
  %.sroa.04.08.i.i = phi ptr [ %i.bi, %.lr.ph.i.i ], [ %.sroa.04.08.i.i.ph, %.lr.ph.i.i.preheader13 ] ; 2 uses
  %i.bf = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !330
  %i.bg = icmp eq i32 %i.bf, 2
  %i.bh = zext i1 %i.bg to i32
  %spec.select.i.i = add nuw nsw i32 %.09.i.i, %i.bh ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.bi, %i.q
  br i1 %.not.i.i1, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !763

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.be, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.bj = icmp ne i32 %spec.select.i.i.lcssa, 0
  br label %_ZNK7testing10TestResult15HasFatalFailureEv.exit

_ZNK7testing10TestResult15HasFatalFailureEv.exit: ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i
  %.0.lcssa.i.i = phi i1 [ false, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ], [ %i.bj, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ]
  ret i1 %.0.lcssa.i.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing4Test9IsSkippedEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !205
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !205

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !205 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !205
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !205
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !43 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !349  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !350  ; 2 uses
  %.not4.i = icmp eq ptr %i.k, null
  br i1 %.not4.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.i:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.0.i = phi ptr [ %i.i, %bb.f ], [ %i.l, %bb.h ], [ %i.m, %bb.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !307  ; 3 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !315  ; 13 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 112                 ; 5 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader.i.i, label %.loopexit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %wide.trip.count.i.i = and i64 %i.u, 2147483647
  br label %.lr.ph.i.i

bb.j:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond16.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !376

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.j ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.u
  br i1 %exitcond.not.i.i, label %bb.k, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.518, i64 noundef %i.u, i64 noundef %i.u) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i: ; preds = %.lr.ph.i.i
  %i.x = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %indvars.iv.i.i
  %i.y = load i32, ptr %i.x, align 8, !tbaa !330
  %i.z = add i32 %i.y, -1
  %spec.select.i.i.i = icmp ult i32 %i.z, 2
  br i1 %spec.select.i.i.i, label %_ZNK7testing10TestResult7SkippedEv.exit, label %bb.j

.loopexit.i:                                      ; preds = %bb.j, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %.not7.i.i = icmp eq ptr %i.q, %i.p
  br i1 %.not7.i.i, label %_ZNK7testing10TestResult7SkippedEv.exit, label %.lr.ph.i1.i.preheader

.lr.ph.i1.i.preheader:                            ; preds = %.loopexit.i
  %0 = add i64 %i.r, -112
  %1 = sub i64 %0, %i.s                           ; 2 uses
  %i.aa = udiv i64 %1, 112
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %1, 784
  br i1 %min.iters.check, label %.lr.ph.i1.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i1.i.preheader
  %n.vec = and i64 %i.ab, 576460752303423480      ; 3 uses
  %i.ac = mul i64 %n.vec, 112
  %i.ad = getelementptr i8, ptr %i.q, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi6 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %i.ae = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ae
  %i.af = getelementptr i8, ptr %i.q, i64 %i.ae
  %next.gep7 = getelementptr i8, ptr %i.af, i64 112
  %i.ag = getelementptr i8, ptr %i.q, i64 %i.ae
  %next.gep8 = getelementptr i8, ptr %i.ag, i64 224
  %i.ah = getelementptr i8, ptr %i.q, i64 %i.ae
  %next.gep9 = getelementptr i8, ptr %i.ah, i64 336
  %i.ai = getelementptr i8, ptr %i.q, i64 %i.ae
  %next.gep10 = getelementptr i8, ptr %i.ai, i64 448
  %i.aj = getelementptr i8, ptr %i.q, i64 %i.ae
  %next.gep11 = getelementptr i8, ptr %i.aj, i64 560
  %i.ak = getelementptr i8, ptr %i.q, i64 %i.ae
  %next.gep12 = getelementptr i8, ptr %i.ak, i64 672
  %i.al = getelementptr i8, ptr %i.q, i64 %i.ae
  %next.gep13 = getelementptr i8, ptr %i.al, i64 784
  %i.am = load i32, ptr %next.gep, align 8, !tbaa !330
  %i.an = load i32, ptr %next.gep7, align 8, !tbaa !330
  %i.ao = load i32, ptr %next.gep8, align 8, !tbaa !330
  %i.ap = load i32, ptr %next.gep9, align 8, !tbaa !330
  %i.aq = insertelement <4 x i32> poison, i32 %i.am, i64 0
  %i.ar = insertelement <4 x i32> %i.aq, i32 %i.an, i64 1
  %i.as = insertelement <4 x i32> %i.ar, i32 %i.ao, i64 2
  %i.at = insertelement <4 x i32> %i.as, i32 %i.ap, i64 3
  %i.au = load i32, ptr %next.gep10, align 8, !tbaa !330
  %i.av = load i32, ptr %next.gep11, align 8, !tbaa !330
  %i.aw = load i32, ptr %next.gep12, align 8, !tbaa !330
  %i.ax = load i32, ptr %next.gep13, align 8, !tbaa !330
  %i.ay = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %i.az = insertelement <4 x i32> %i.ay, i32 %i.av, i64 1
  %i.ba = insertelement <4 x i32> %i.az, i32 %i.aw, i64 2
  %i.bb = insertelement <4 x i32> %i.ba, i32 %i.ax, i64 3
  %i.bc = icmp eq <4 x i32> %i.at, splat (i32 3)
  %i.bd = icmp eq <4 x i32> %i.bb, splat (i32 3)
  %i.be = zext <4 x i1> %i.bc to <4 x i32>
  %i.bf = zext <4 x i1> %i.bd to <4 x i32>
  %i.bg = add <4 x i32> %vec.phi, %i.be           ; 2 uses
  %i.bh = add <4 x i32> %vec.phi6, %i.bf          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !764

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bh, %i.bg
  %i.bj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i.preheader14

.lr.ph.i1.i.preheader14:                          ; preds = %.lr.ph.i1.i.preheader, %middle.block
  %.09.i.i.ph = phi i32 [ 0, %.lr.ph.i1.i.preheader ], [ %i.bj, %middle.block ]
  %.sroa.04.08.i.i.ph = phi ptr [ %i.q, %.lr.ph.i1.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %.lr.ph.i1.i.preheader14, %.lr.ph.i1.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i1.i ], [ %.09.i.i.ph, %.lr.ph.i1.i.preheader14 ]
  %.sroa.04.08.i.i = phi ptr [ %i.bn, %.lr.ph.i1.i ], [ %.sroa.04.08.i.i.ph, %.lr.ph.i1.i.preheader14 ] ; 2 uses
  %i.bk = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !330
  %i.bl = icmp eq i32 %i.bk, 3
  %i.bm = zext i1 %i.bl to i32
  %spec.select.i.i = add nuw nsw i32 %.09.i.i, %i.bm ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.bn, %i.p
  br i1 %.not.i.i1, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i, !llvm.loop !765

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i1.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.bj, %middle.block ], [ %spec.select.i.i, %.lr.ph.i1.i ]
  %i.bo = icmp ne i32 %spec.select.i.i.lcssa, 0
  br label %_ZNK7testing10TestResult7SkippedEv.exit

_ZNK7testing10TestResult7SkippedEv.exit:          ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i, %.loopexit.i, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i
  %i.bp = phi i1 [ %i.bo, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ], [ false, %.loopexit.i ], [ false, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i ]
  ret i1 %i.bp
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing4Test18HasNonfatalFailureEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !205
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !205

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !205 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !205
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !205
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !43 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !349  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !350  ; 2 uses
  %.not4.i = icmp eq ptr %i.k, null
  br i1 %.not4.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.i:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.0.i = phi ptr [ %i.i, %bb.f ], [ %i.l, %bb.h ], [ %i.m, %bb.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !730  ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !730  ; 3 uses
  %.not7.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not7.i.i, label %_ZNK7testing10TestResult18HasNonfatalFailureEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = add i64 %i.r, -112
  %i.u = sub i64 %i.t, %i.s                       ; 2 uses
  %i.v = udiv i64 %i.u, 112
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 784
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.w, 576460752303423480       ; 3 uses
  %i.x = mul i64 %n.vec, 112
  %i.y = getelementptr i8, ptr %i.o, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi5 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %i.z = mul i64 %index, 112                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.z
  %i.aa = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep6 = getelementptr i8, ptr %i.aa, i64 112
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep7 = getelementptr i8, ptr %i.ab, i64 224
  %i.ac = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep8 = getelementptr i8, ptr %i.ac, i64 336
  %i.ad = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep9 = getelementptr i8, ptr %i.ad, i64 448
  %i.ae = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep10 = getelementptr i8, ptr %i.ae, i64 560
  %i.af = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep11 = getelementptr i8, ptr %i.af, i64 672
  %i.ag = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep12 = getelementptr i8, ptr %i.ag, i64 784
  %i.ah = load i32, ptr %next.gep, align 8, !tbaa !330
  %i.ai = load i32, ptr %next.gep6, align 8, !tbaa !330
  %i.aj = load i32, ptr %next.gep7, align 8, !tbaa !330
  %i.ak = load i32, ptr %next.gep8, align 8, !tbaa !330
  %i.al = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 1
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 2
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.ak, i64 3
  %i.ap = load i32, ptr %next.gep9, align 8, !tbaa !330
  %i.aq = load i32, ptr %next.gep10, align 8, !tbaa !330
  %i.ar = load i32, ptr %next.gep11, align 8, !tbaa !330
  %i.as = load i32, ptr %next.gep12, align 8, !tbaa !330
  %i.at = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 1
end_hunk_2
begin_hunk_3_@_ZN7testingL19FormatCountableNounB5cxx11EiPKcS1_:bb.a
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !7  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

bb.g:                                             ; preds = %.noexc11
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !15 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %.noexc11
  store ptr %i.ak, ptr %0, align 8, !tbaa !7, !alias.scope !845
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !13
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !13, !alias.scope !845
  %.phi.trans.insert.i8 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.pre.i9 = load i64, ptr %.phi.trans.insert.i8, align 8, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.g
  %i.as = phi i64 [ %i.ao, %bb.g ], [ %.pre.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.as, ptr %i.au, align 8, !tbaa !15, !alias.scope !845
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !7
  store i64 0, ptr %i.at, align 8, !tbaa !15
  store i8 0, ptr %i.al, align 8, !tbaa !13
  %i.av = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.r
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.h
  %i.ax = load i64, ptr %i.r, align 8, !tbaa !13
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.az = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !13
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
  ret void

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.c
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i6, %bb.f
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.r
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.j
  %i.bi = load i64, ptr %i.r, align 8, !tbaa !13
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.i
  %.pn = phi { ptr, i32 } [ %i.be, %bb.i ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.bf, %bb.j ]
  %i.bk = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !13
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing8internal27PrettyUnitTestResultPrinter11OnTestStartERKNS_8TestInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %1) unnamed_addr #2 align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN7testing8internalL13ColoredPrintfENS0_12_GLOBAL__N_110GTestColorEPKcz(i32 noundef 2, ptr noundef nonnull @.str.156)
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.164, ptr noundef %i.a, ptr noundef %i.c) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !28
  %i.f = tail call i32 @fflush(ptr noundef %i.e)  ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal27PrettyUnitTestResultPrinter16OnTestPartResultERKNS_14TestPartResultE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !330
  %cond = icmp eq i32 %i.a, 0
  br i1 %cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54
  call fastcc void @_ZN7testing8internalL27PrintTestPartResultToStringB5cxx11ERKNS_14TestPartResultE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull readonly align 8 dereferenceable(112) %1)
  %i.b = load ptr, ptr %2, align 8, !tbaa !7
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) %i.b) ; 0 uses
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !28
  %i.d = call i32 @fflush(ptr noundef %i.c)       ; 0 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN7testing8internalL19PrintTestPartResultERKNS_14TestPartResultE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !13
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #55
  br label %_ZN7testing8internalL19PrintTestPartResultERKNS_14TestPartResultE.exit

_ZN7testing8internalL19PrintTestPartResultERKNS_14TestPartResultE.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !28
  %i.k = call i32 @fflush(ptr noundef %i.j)       ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN7testing8internalL19PrintTestPartResultERKNS_14TestPartResultE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal27PrettyUnitTestResultPrinter9OnTestEndERKNS_8TestInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = tail call noundef zeroext i1 @_ZNK7testing10TestResult6PassedEv(ptr noundef nonnull align 8 dereferenceable(128) %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_ZN7testing8internalL13ColoredPrintfENS0_12_GLOBAL__N_110GTestColorEPKcz(i32 noundef 2, ptr noundef nonnull @.str.157)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !307  ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !315  ; 13 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 112                 ; 5 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.preheader.i.i, label %.loopexit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %wide.trip.count.i.i = and i64 %i.j, 2147483647
  br label %.lr.ph.i.i

bb.d:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond16.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !376

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.j
  br i1 %exitcond.not.i.i, label %bb.e, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.518, i64 noundef %i.j, i64 noundef %i.j) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i: ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw [112 x i8], ptr %i.f, i64 %indvars.iv.i.i
  %i.n = load i32, ptr %i.m, align 8, !tbaa !330
  %i.o = add i32 %i.n, -1
  %spec.select.i.i.i = icmp ult i32 %i.o, 2
  br i1 %spec.select.i.i.i, label %_ZNK7testing10TestResult7SkippedEv.exit.thread, label %bb.d

.loopexit.i:                                      ; preds = %bb.d, %bb.c
  %.not7.i.i = icmp eq ptr %i.f, %i.e
  br i1 %.not7.i.i, label %_ZNK7testing10TestResult7SkippedEv.exit.thread, label %.lr.ph.i1.i.preheader

.lr.ph.i1.i.preheader:                            ; preds = %.loopexit.i
  %4 = add i64 %i.g, -112
  %5 = sub i64 %4, %i.h                           ; 2 uses
  %i.p = udiv i64 %5, 112
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %5, 784
  br i1 %min.iters.check, label %.lr.ph.i1.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i1.i.preheader
  %n.vec = and i64 %i.q, 576460752303423480       ; 3 uses
  %i.r = mul i64 %n.vec, 112
  %i.s = getelementptr i8, ptr %i.f, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %i.t = mul i64 %index, 112                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.t
  %i.u = getelementptr i8, ptr %i.f, i64 %i.t
  %next.gep19 = getelementptr i8, ptr %i.u, i64 112
  %i.v = getelementptr i8, ptr %i.f, i64 %i.t
  %next.gep20 = getelementptr i8, ptr %i.v, i64 224
  %i.w = getelementptr i8, ptr %i.f, i64 %i.t
  %next.gep21 = getelementptr i8, ptr %i.w, i64 336
  %i.x = getelementptr i8, ptr %i.f, i64 %i.t
  %next.gep22 = getelementptr i8, ptr %i.x, i64 448
  %i.y = getelementptr i8, ptr %i.f, i64 %i.t
  %next.gep23 = getelementptr i8, ptr %i.y, i64 560
  %i.z = getelementptr i8, ptr %i.f, i64 %i.t
  %next.gep24 = getelementptr i8, ptr %i.z, i64 672
  %i.aa = getelementptr i8, ptr %i.f, i64 %i.t
  %next.gep25 = getelementptr i8, ptr %i.aa, i64 784
  %i.ab = load i32, ptr %next.gep, align 8, !tbaa !330
  %i.ac = load i32, ptr %next.gep19, align 8, !tbaa !330
  %i.ad = load i32, ptr %next.gep20, align 8, !tbaa !330
  %i.ae = load i32, ptr %next.gep21, align 8, !tbaa !330
  %i.af = insertelement <4 x i32> poison, i32 %i.ab, i64 0
  %i.ag = insertelement <4 x i32> %i.af, i32 %i.ac, i64 1
  %i.ah = insertelement <4 x i32> %i.ag, i32 %i.ad, i64 2
  %i.ai = insertelement <4 x i32> %i.ah, i32 %i.ae, i64 3
  %i.aj = load i32, ptr %next.gep22, align 8, !tbaa !330
  %i.ak = load i32, ptr %next.gep23, align 8, !tbaa !330
  %i.al = load i32, ptr %next.gep24, align 8, !tbaa !330
  %i.am = load i32, ptr %next.gep25, align 8, !tbaa !330
  %i.an = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.ak, i64 1
  %i.ap = insertelement <4 x i32> %i.ao, i32 %i.al, i64 2
  %i.aq = insertelement <4 x i32> %i.ap, i32 %i.am, i64 3
  %i.ar = icmp eq <4 x i32> %i.ai, splat (i32 3)
  %i.as = icmp eq <4 x i32> %i.aq, splat (i32 3)
  %i.at = zext <4 x i1> %i.ar to <4 x i32>
  %i.au = zext <4 x i1> %i.as to <4 x i32>
  %i.av = add <4 x i32> %vec.phi, %i.at           ; 2 uses
  %i.aw = add <4 x i32> %vec.phi18, %i.au         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !848

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aw, %i.av
  %i.ay = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZNK7testing10TestResult7SkippedEv.exit, label %.lr.ph.i1.i.preheader26

.lr.ph.i1.i.preheader26:                          ; preds = %.lr.ph.i1.i.preheader, %middle.block
  %.09.i.i.ph = phi i32 [ 0, %.lr.ph.i1.i.preheader ], [ %i.ay, %middle.block ]
  %.sroa.04.08.i.i.ph = phi ptr [ %i.f, %.lr.ph.i1.i.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %.lr.ph.i1.i.preheader26, %.lr.ph.i1.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i1.i ], [ %.09.i.i.ph, %.lr.ph.i1.i.preheader26 ]
  %.sroa.04.08.i.i = phi ptr [ %i.bc, %.lr.ph.i1.i ], [ %.sroa.04.08.i.i.ph, %.lr.ph.i1.i.preheader26 ] ; 2 uses
  %i.az = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !330
  %i.ba = icmp eq i32 %i.az, 3
  %i.bb = zext i1 %i.ba to i32
  %spec.select.i.i = add nuw nsw i32 %.09.i.i, %i.bb ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, %i.e
  br i1 %.not.i.i, label %_ZNK7testing10TestResult7SkippedEv.exit, label %.lr.ph.i1.i, !llvm.loop !849

_ZNK7testing10TestResult7SkippedEv.exit:          ; preds = %.lr.ph.i1.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.ay, %middle.block ], [ %spec.select.i.i, %.lr.ph.i1.i ]
  %.not = icmp eq i32 %spec.select.i.i.lcssa, 0
  br i1 %.not, label %_ZNK7testing10TestResult7SkippedEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK7testing10TestResult7SkippedEv.exit
  tail call void (i32, ptr, ...) @_ZN7testing8internalL13ColoredPrintfENS0_12_GLOBAL__N_110GTestColorEPKcz(i32 noundef 2, ptr noundef nonnull @.str.158)
  br label %bb.g

_ZNK7testing10TestResult7SkippedEv.exit.thread:   ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i, %.loopexit.i, %_ZNK7testing10TestResult7SkippedEv.exit
  tail call void (i32, ptr, ...) @_ZN7testing8internalL13ColoredPrintfENS0_12_GLOBAL__N_110GTestColorEPKcz(i32 noundef 1, ptr noundef nonnull @.str.159)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK7testing10TestResult7SkippedEv.exit.thread, %bb.b
  %i.bd = load ptr, ptr %1, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !7
  %i.bg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.164, ptr noundef %i.bd, ptr noundef %i.bf) ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !307
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !315 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = sdiv exact i64 %i.bn, 112               ; 5 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.preheader.i, label %_ZN7testing8internalL29PrintFullTestCommentIfPresentERKNS_8TestInfoE.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %wide.trip.count.i = and i64 %i.bo, 2147483647
  br label %.lr.ph.i

bb.h:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond16.not.i, label %_ZN7testing8internalL29PrintFullTestCommentIfPresentERKNS_8TestInfoE.exit, label %.lr.ph.i, !llvm.loop !376

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.bo
  br i1 %exitcond.not.i, label %bb.i, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i

bb.i:                                             ; preds = %.lr.ph.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.518, i64 noundef %i.bo, i64 noundef %i.bo) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i: ; preds = %.lr.ph.i
  %i.br = getelementptr inbounds nuw [112 x i8], ptr %i.bk, i64 %indvars.iv.i
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !330
  %i.bt = add i32 %i.bs, -1
  %spec.select.i.i8 = icmp ult i32 %i.bt, 2
  br i1 %spec.select.i.i8, label %_ZNK7testing10TestResult6FailedEv.exit, label %bb.h

_ZNK7testing10TestResult6FailedEv.exit:           ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val = load ptr, ptr %i.bu, align 8, !tbaa !329 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val7 = load ptr, ptr %i.bv, align 8           ; 2 uses
  %.not.i.i9 = icmp eq ptr %.val, null
  br i1 %.not.i.i9, label %_ZNK7testing8TestInfo10type_paramEv.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNK7testing10TestResult6FailedEv.exit
  %i.bw = load ptr, ptr %.val, align 8, !tbaa !7
  br label %_ZNK7testing8TestInfo10type_paramEv.exit.i

_ZNK7testing8TestInfo10type_paramEv.exit.i:       ; preds = %bb.j, %_ZNK7testing10TestResult6FailedEv.exit
  %.0.i.i = phi ptr [ %i.bw, %bb.j ], [ null, %_ZNK7testing10TestResult6FailedEv.exit ] ; 2 uses
  %.not.i11.i = icmp eq ptr %.val7, null
  br i1 %.not.i11.i, label %_ZNK7testing8TestInfo11value_paramEv.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNK7testing8TestInfo10type_paramEv.exit.i
  %i.bx = load ptr, ptr %.val7, align 8, !tbaa !7
  br label %_ZNK7testing8TestInfo11value_paramEv.exit.i

_ZNK7testing8TestInfo11value_paramEv.exit.i:      ; preds = %bb.k, %_ZNK7testing8TestInfo10type_paramEv.exit.i
  %.0.i12.i = phi ptr [ %i.bx, %bb.k ], [ null, %_ZNK7testing8TestInfo10type_paramEv.exit.i ] ; 2 uses
  %i.by = icmp ne ptr %.0.i.i, null               ; 2 uses
  %i.bz = icmp ne ptr %.0.i12.i, null             ; 3 uses
  %or.cond.i = or i1 %i.by, %i.bz
  br i1 %or.cond.i, label %bb.l, label %_ZN7testing8internalL29PrintFullTestCommentIfPresentERKNS_8TestInfoE.exit

bb.l:                                             ; preds = %_ZNK7testing8TestInfo11value_paramEv.exit.i
  %i.ca = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.429) ; 0 uses
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.430, ptr noundef nonnull @_ZN7testing8internalL15kTypeParamLabelE, ptr noundef nonnull %.0.i.i) ; 0 uses
  br i1 %i.bz, label %.thread.i, label %_ZN7testing8internalL29PrintFullTestCommentIfPresentERKNS_8TestInfoE.exit

.thread.i:                                        ; preds = %bb.m
  %i.cc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73) ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  br i1 %i.bz, label %bb.o, label %_ZN7testing8internalL29PrintFullTestCommentIfPresentERKNS_8TestInfoE.exit

bb.o:                                             ; preds = %bb.n, %.thread.i
  %i.cd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.430, ptr noundef nonnull @_ZN7testing8internalL16kValueParamLabelE, ptr noundef nonnull %.0.i12.i) ; 0 uses
  br label %_ZN7testing8internalL29PrintFullTestCommentIfPresentERKNS_8TestInfoE.exit

_ZN7testing8internalL29PrintFullTestCommentIfPresentERKNS_8TestInfoE.exit: ; preds = %bb.h, %bb.g, %bb.o, %bb.n, %bb.m, %_ZNK7testing8TestInfo11value_paramEv.exit.i
  %i.ce = load i8, ptr @_ZN7testing22FLAGS_gtest_print_timeE, align 1, !tbaa !68, !range !69, !noundef !70
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZN7testing8internalL29PrintFullTestCommentIfPresentERKNS_8TestInfoE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #54
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !727
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54, !noalias !850
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !850
  %i.ci = load ptr, ptr %2, align 8, !tbaa !20, !noalias !850
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, i64 noundef %i.ch)
          to label %_ZN7testing7MessagelsIlEERS0_RKT_.exit.i unwind label %bb.q, !noalias !850 ; 0 uses

_ZN7testing7MessagelsIlEERS0_RKT_.exit.i:         ; preds = %bb.p
  %i.cl = load ptr, ptr %2, align 8, !tbaa !20, !noalias !853
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %i.cl)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i unwind label %bb.q

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i:   ; preds = %_ZN7testing7MessagelsIlEERS0_RKT_.exit.i
  %i.cm = load ptr, ptr %2, align 8, !tbaa !20, !noalias !850 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal18StreamableToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !22
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(128) %i.cm) #54, !inline_history !856
  br label %_ZN7testing8internal18StreamableToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.q:                                             ; preds = %_ZN7testing7MessagelsIlEERS0_RKT_.exit.i, %bb.p
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %2, align 8, !tbaa !20, !noalias !850 ; 3 uses
  %.not.i.i2.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i2.i, label %_ZN7testing7MessageD2Ev.exit4.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i: ; preds = %bb.q
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !22
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(128) %i.cr) #54, !inline_history !856
  br label %_ZN7testing7MessageD2Ev.exit4.i

_ZN7testing7MessageD2Ev.exit4.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54, !noalias !850
  resume { ptr, i32 } %i.cq

_ZN7testing8internal18StreamableToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54, !noalias !850
  %i.cv = load ptr, ptr %3, align 8, !tbaa !7
  %i.cw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.160, ptr noundef %i.cv) ; 0 uses
  %i.cx = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal18StreamableToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !13
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal18StreamableToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  br label %bb.s

bb.r:                                             ; preds = %_ZN7testing8internalL29PrintFullTestCommentIfPresentERKNS_8TestInfoE.exit
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dc = load ptr, ptr @stdout, align 8, !tbaa !28
  %i.dd = call i32 @fflush(ptr noundef %i.dc)     ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7testing10TestResult6PassedEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !307  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !315  ; 14 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 112                 ; 9 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp slt i32 %i.i, 1                     ; 3 uses
  br i1 %i.j, label %.loopexit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = and i64 %i.h, 2147483647
  br label %.lr.ph.i.i

bb.b:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond16.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !376

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.b ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.h
  br i1 %exitcond.not.i.i, label %bb.c, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.518, i64 noundef %i.h, i64 noundef %i.h) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i: ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw [112 x i8], ptr %i.d, i64 %indvars.iv.i.i
  %i.l = load i32, ptr %i.k, align 8, !tbaa !330
  %i.m = add i32 %i.l, -1
  %spec.select.i.i.i = icmp ult i32 %i.m, 2
  br i1 %spec.select.i.i.i, label %_ZNK7testing10TestResult7SkippedEv.exit.thread, label %bb.b

.loopexit.i:                                      ; preds = %bb.b, %bb.a
  %.not7.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not7.i.i, label %_ZNK7testing10TestResult7SkippedEv.exit.thread, label %.lr.ph.i1.i.preheader

.lr.ph.i1.i.preheader:                            ; preds = %.loopexit.i
  %1 = add i64 %i.e, -112
  %2 = sub i64 %1, %i.f                           ; 2 uses
  %i.n = udiv i64 %2, 112
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %2, 784
  br i1 %min.iters.check, label %.lr.ph.i1.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i1.i.preheader
  %n.vec = and i64 %i.o, 576460752303423480       ; 3 uses
  %i.p = mul i64 %n.vec, 112
  %i.q = getelementptr i8, ptr %i.d, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %vec.phi5 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.au, %vector.body ]
  %i.r = mul i64 %index, 112                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.r
  %i.s = getelementptr i8, ptr %i.d, i64 %i.r
  %next.gep6 = getelementptr i8, ptr %i.s, i64 112
  %i.t = getelementptr i8, ptr %i.d, i64 %i.r
  %next.gep7 = getelementptr i8, ptr %i.t, i64 224
  %i.u = getelementptr i8, ptr %i.d, i64 %i.r
  %next.gep8 = getelementptr i8, ptr %i.u, i64 336
  %i.v = getelementptr i8, ptr %i.d, i64 %i.r
  %next.gep9 = getelementptr i8, ptr %i.v, i64 448
  %i.w = getelementptr i8, ptr %i.d, i64 %i.r
  %next.gep10 = getelementptr i8, ptr %i.w, i64 560
  %i.x = getelementptr i8, ptr %i.d, i64 %i.r
  %next.gep11 = getelementptr i8, ptr %i.x, i64 672
  %i.y = getelementptr i8, ptr %i.d, i64 %i.r
  %next.gep12 = getelementptr i8, ptr %i.y, i64 784
  %i.z = load i32, ptr %next.gep, align 8, !tbaa !330
  %i.aa = load i32, ptr %next.gep6, align 8, !tbaa !330
  %i.ab = load i32, ptr %next.gep7, align 8, !tbaa !330
  %i.ac = load i32, ptr %next.gep8, align 8, !tbaa !330
  %i.ad = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %i.ae = insertelement <4 x i32> %i.ad, i32 %i.aa, i64 1
  %i.af = insertelement <4 x i32> %i.ae, i32 %i.ab, i64 2
  %i.ag = insertelement <4 x i32> %i.af, i32 %i.ac, i64 3
  %i.ah = load i32, ptr %next.gep9, align 8, !tbaa !330
  %i.ai = load i32, ptr %next.gep10, align 8, !tbaa !330
  %i.aj = load i32, ptr %next.gep11, align 8, !tbaa !330
  %i.ak = load i32, ptr %next.gep12, align 8, !tbaa !330
  %i.al = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 1
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 2
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.ak, i64 3
  %i.ap = icmp eq <4 x i32> %i.ag, splat (i32 3)
  %i.aq = icmp eq <4 x i32> %i.ao, splat (i32 3)
  %i.ar = zext <4 x i1> %i.ap to <4 x i32>
  %i.as = zext <4 x i1> %i.aq to <4 x i32>
  %i.at = add <4 x i32> %vec.phi, %i.ar           ; 2 uses
  %i.au = add <4 x i32> %vec.phi5, %i.as          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !857

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.au, %i.at
  %i.aw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZNK7testing10TestResult7SkippedEv.exit, label %.lr.ph.i1.i.preheader13

.lr.ph.i1.i.preheader13:                          ; preds = %.lr.ph.i1.i.preheader, %middle.block
  %.09.i.i.ph = phi i32 [ 0, %.lr.ph.i1.i.preheader ], [ %i.aw, %middle.block ]
  %.sroa.04.08.i.i.ph = phi ptr [ %i.d, %.lr.ph.i1.i.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %.lr.ph.i1.i.preheader13, %.lr.ph.i1.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i1.i ], [ %.09.i.i.ph, %.lr.ph.i1.i.preheader13 ]
  %.sroa.04.08.i.i = phi ptr [ %i.ba, %.lr.ph.i1.i ], [ %.sroa.04.08.i.i.ph, %.lr.ph.i1.i.preheader13 ] ; 2 uses
  %i.ax = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !330
  %i.ay = icmp eq i32 %i.ax, 3
  %i.az = zext i1 %i.ay to i32
  %spec.select.i.i = add nuw nsw i32 %.09.i.i, %i.az ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, %i.c
  br i1 %.not.i.i, label %_ZNK7testing10TestResult7SkippedEv.exit, label %.lr.ph.i1.i, !llvm.loop !858

_ZNK7testing10TestResult7SkippedEv.exit:          ; preds = %.lr.ph.i1.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.aw, %middle.block ], [ %spec.select.i.i, %.lr.ph.i1.i ]
  %.not = icmp ne i32 %spec.select.i.i.lcssa, 0   ; 2 uses
  %brmerge = or i1 %i.j, %.not
  %not..not = xor i1 %.not, true
  br i1 %brmerge, label %_ZNK7testing10TestResult6FailedEv.exit, label %.lr.ph.preheader.i

_ZNK7testing10TestResult7SkippedEv.exit.thread:   ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i, %.loopexit.i
  br i1 %i.j, label %_ZNK7testing10TestResult6FailedEv.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK7testing10TestResult7SkippedEv.exit, %_ZNK7testing10TestResult7SkippedEv.exit.thread
  %wide.trip.count.i = and i64 %i.h, 2147483647
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.h
  br i1 %exitcond.not.i, label %bb.d, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.518, i64 noundef %i.h, i64 noundef %i.h) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i: ; preds = %.lr.ph.i
  %i.bb = getelementptr inbounds nuw [112 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !330
  %i.bd = add i32 %i.bc, -3
  %spec.select.i.i1 = icmp ult i32 %i.bd, -2      ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond16.not.i = icmp ne i64 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond.not = select i1 %spec.select.i.i1, i1 %exitcond16.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZNK7testing10TestResult6FailedEv.exit, !llvm.loop !376

_ZNK7testing10TestResult6FailedEv.exit:           ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i, %_ZNK7testing10TestResult7SkippedEv.exit, %_ZNK7testing10TestResult7SkippedEv.exit.thread
  %i.be = phi i1 [ %not..not, %_ZNK7testing10TestResult7SkippedEv.exit ], [ true, %_ZNK7testing10TestResult7SkippedEv.exit.thread ], [ %spec.select.i.i1, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i ]
  ret i1 %i.be
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal27PrettyUnitTestResultPrinter13OnTestCaseEndERKNS_9TestSuiteE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load i8, ptr @_ZN7testing22FLAGS_gtest_print_timeE, align 1, !tbaa !68, !range !69, !noundef !70
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #54
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !371  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !371  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not7.i.i, label %_ZNK7testing9TestSuite17test_to_run_countEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.sroa.04.08.i.i = phi ptr [ %i.k, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !372
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.i = load i8, ptr %i.h, align 8, !tbaa !373, !range !69, !noundef !70
  %i.j = zext nneg i8 %i.i to i32
  %spec.select.i.i = add nuw nsw i32 %.09.i.i, %i.j ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not.i.i, label %_ZNK7testing9TestSuite17test_to_run_countEv.exit, label %.lr.ph.i.i, !llvm.loop !381

_ZNK7testing9TestSuite17test_to_run_countEv.exit: ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i32 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ]
  call fastcc void @_ZN7testingL19FormatCountableNounB5cxx11EiPKcS1_(ptr dead_on_unwind noalias writable align 8 %3, i32 noundef %.0.lcssa.i.i, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.153)
  call void (i32, ptr, ...) @_ZN7testing8internalL13ColoredPrintfENS0_12_GLOBAL__N_110GTestColorEPKcz(i32 noundef 2, ptr noundef nonnull @.str.150)
  %i.l = load ptr, ptr %3, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #54
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.p = load i64, ptr %i.o, align 8, !tbaa !814
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54, !noalias !859
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_ZNK7testing9TestSuite17test_to_run_countEv.exit
  %i.q = load ptr, ptr %2, align 8, !tbaa !20, !noalias !859
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef %i.p)
          to label %_ZN7testing7MessagelsIlEERS0_RKT_.exit.i unwind label %bb.c, !noalias !859 ; 0 uses

_ZN7testing7MessagelsIlEERS0_RKT_.exit.i:         ; preds = %.noexc
  %i.t = load ptr, ptr %2, align 8, !tbaa !20, !noalias !862
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %i.t)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i unwind label %bb.c

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i:   ; preds = %_ZN7testing7MessagelsIlEERS0_RKT_.exit.i
  %i.u = load ptr, ptr %2, align 8, !tbaa !20, !noalias !859 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(128) %i.u) #54, !inline_history !856
  br label %bb.d

bb.c:                                             ; preds = %_ZN7testing7MessagelsIlEERS0_RKT_.exit.i, %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %2, align 8, !tbaa !20, !noalias !859 ; 3 uses
  %.not.i.i2.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i2.i, label %_ZN7testing7MessageD2Ev.exit4.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i: ; preds = %bb.c
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(128) %i.z) #54, !inline_history !856
  br label %_ZN7testing7MessageD2Ev.exit4.i

_ZN7testing7MessageD2Ev.exit4.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i, %bb.c
end_hunk_3
begin_hunk_4_@_ZN7testing8internal27PrettyUnitTestResultPrinter21PrintFailedTestSuitesERKNS_8UnitTestE:bb.a
  %i.n = phi ptr [ %i.at, %_ZNK7testing10TestResult6FailedEv.exit.thread ], [ %i.b, %bb.a ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK7testing10TestResult6FailedEv.exit.thread ], [ 0, %bb.a ] ; 3 uses
  %i.o = phi ptr [ %i.ax, %_ZNK7testing10TestResult6FailedEv.exit.thread ], [ %i.f, %bb.a ]
  %.015 = phi i32 [ %.2, %_ZNK7testing10TestResult6FailedEv.exit.thread ], [ 0, %bb.a ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !810
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !806
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %sext = shl i64 %i.v, 30
  %i.w = ashr i64 %sext, 32
  %.not.i.i.i = icmp slt i64 %indvars.iv, %i.w
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !354  ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !355, !range !69, !noundef !70
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.b, label %_ZNK7testing10TestResult6FailedEv.exit.thread

bb.b:                                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 192
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 200
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !307
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !315 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 112               ; 5 uses
  %i.ak = trunc i64 %i.aj to i32
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader.i, label %_ZNK7testing10TestResult6FailedEv.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = and i64 %i.aj, 2147483647
  br label %.lr.ph.i

bb.c:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond16.not.i, label %_ZNK7testing10TestResult6FailedEv.exit.thread, label %.lr.ph.i, !llvm.loop !376

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.aj
  br i1 %exitcond.not.i, label %bb.d, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.518, i64 noundef %i.aj, i64 noundef %i.aj) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i: ; preds = %.lr.ph.i
  %i.am = getelementptr inbounds nuw [112 x i8], ptr %i.af, i64 %indvars.iv.i
  %i.an = load i32, ptr %i.am, align 8, !tbaa !330
  %i.ao = add i32 %i.an, -1
  %spec.select.i.i = icmp ult i32 %i.ao, 2
  br i1 %spec.select.i.i, label %_ZNK7testing10TestResult6FailedEv.exit, label %bb.c

_ZNK7testing10TestResult6FailedEv.exit:           ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  tail call void (i32, ptr, ...) @_ZN7testing8internalL13ColoredPrintfENS0_12_GLOBAL__N_110GTestColorEPKcz(i32 noundef 1, ptr noundef nonnull @.str.159)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !7
  %i.ar = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.168, ptr noundef %i.aq) ; 0 uses
  %i.as = add nsw i32 %.015, 1
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !43
  br label %_ZNK7testing10TestResult6FailedEv.exit.thread

_ZNK7testing10TestResult6FailedEv.exit.thread:    ; preds = %bb.c, %bb.b, %_ZNK7testing10TestResult6FailedEv.exit, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i
  %i.at = phi ptr [ %i.n, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i ], [ %.pre, %_ZNK7testing10TestResult6FailedEv.exit ], [ %i.n, %bb.b ], [ %i.n, %bb.c ] ; 3 uses
  %.2 = phi i32 [ %.015, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i ], [ %i.as, %_ZNK7testing10TestResult6FailedEv.exit ], [ %.015, %bb.b ], [ %.015, %bb.c ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 184
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 192
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !369
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !370 ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %sext17 = shl i64 %i.ba, 29
  %i.bb = ashr i64 %sext17, 32
  %i.bc = icmp slt i64 %indvars.iv.next, %i.bb
  br i1 %i.bc, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i, label %._crit_edge, !llvm.loop !867

bb.e:                                             ; preds = %._crit_edge
  %i.bd = icmp eq i32 %.2, 1
  %i.be = select i1 %i.bd, ptr @.str.170, ptr @.str.171
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.169, i32 noundef %.2, ptr noundef nonnull %i.be) ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal27PrettyUnitTestResultPrinter17PrintSkippedTestsERKNS_8UnitTestE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = tail call noundef i32 @_ZNK7testing8internal12UnitTestImpl18skipped_test_countEv(ptr noundef nonnull align 8 dereferenceable(601) %i.b)
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %.preheader26

.preheader26:                                     ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !369
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !370  ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 3
  %i.n = trunc i64 %i.m to i32
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i: ; preds = %.preheader26, %_ZNK7testing9TestSuite18skipped_test_countEv.exit.thread
  %i.p = phi ptr [ %i.ge, %_ZNK7testing9TestSuite18skipped_test_countEv.exit.thread ], [ %i.e, %.preheader26 ] ; 6 uses
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %_ZNK7testing9TestSuite18skipped_test_countEv.exit.thread ], [ 0, %.preheader26 ] ; 3 uses
  %i.q = phi ptr [ %i.gi, %_ZNK7testing9TestSuite18skipped_test_countEv.exit.thread ], [ %i.i, %.preheader26 ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 216
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !810
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !806
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %sext = shl i64 %i.x, 30
  %i.y = ashr i64 %sext, 32
  %.not.i.i.i = icmp slt i64 %indvars.iv32, %i.y
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !354 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !355, !range !69, !noundef !70
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.b, label %_ZNK7testing9TestSuite18skipped_test_countEv.exit.thread

bb.b:                                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !371 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 56 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !371 ; 4 uses
  %.not7.i.i = icmp eq ptr %i.af, %i.ah
  br i1 %.not7.i.i, label %_ZNK7testing9TestSuite18skipped_test_countEv.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i ], [ 0, %bb.b ]
  %.sroa.04.08.i.i = phi ptr [ %i.cq, %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i ], [ %i.af, %bb.b ] ; 2 uses
  %i.ai = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !372 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !373, !range !69, !noundef !70
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.c, label %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 200
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 208
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !307 ; 3 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !315 ; 13 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 112               ; 5 uses
  %i.au = trunc i64 %i.at to i32
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.c
  %wide.trip.count.i.i.i.i = and i64 %i.at, 2147483647
  br label %.lr.ph.i.i.i.i

bb.d:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond16.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond16.not.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !376

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.d ] ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i, %i.at
  br i1 %exitcond.not.i.i.i.i, label %bb.e, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.518, i64 noundef %i.at, i64 noundef %i.at) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.aw = getelementptr inbounds nuw [112 x i8], ptr %i.ap, i64 %indvars.iv.i.i.i.i
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !330
  %i.ay = add i32 %i.ax, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.ay, 2
  br i1 %spec.select.i.i.i.i.i, label %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i, label %bb.d

.loopexit.i.i.i:                                  ; preds = %bb.d, %bb.c
  %.not7.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not7.i.i.i.i, label %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i, label %.lr.ph.i1.i.i.i.preheader

.lr.ph.i1.i.i.i.preheader:                        ; preds = %.loopexit.i.i.i
  %1 = add i64 %i.aq, -112
  %2 = sub i64 %1, %i.ar                          ; 2 uses
  %i.az = udiv i64 %2, 112
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check59 = icmp ult i64 %2, 784
  br i1 %min.iters.check59, label %.lr.ph.i1.i.i.i.preheader82, label %vector.ph60

vector.ph60:                                      ; preds = %.lr.ph.i1.i.i.i.preheader
  %n.vec62 = and i64 %i.ba, 576460752303423480    ; 3 uses
  %i.bb = mul i64 %n.vec62, 112
  %i.bc = getelementptr i8, ptr %i.ap, i64 %i.bb
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph60
  %index64 = phi i64 [ 0, %vector.ph60 ], [ %index.next75, %vector.body63 ] ; 2 uses
  %vec.phi65 = phi <4 x i32> [ zeroinitializer, %vector.ph60 ], [ %i.cf, %vector.body63 ]
  %vec.phi66 = phi <4 x i32> [ zeroinitializer, %vector.ph60 ], [ %i.cg, %vector.body63 ]
  %i.bd = mul i64 %index64, 112                   ; 8 uses
  %next.gep67 = getelementptr i8, ptr %i.ap, i64 %i.bd
  %i.be = getelementptr i8, ptr %i.ap, i64 %i.bd
  %next.gep68 = getelementptr i8, ptr %i.be, i64 112
  %i.bf = getelementptr i8, ptr %i.ap, i64 %i.bd
  %next.gep69 = getelementptr i8, ptr %i.bf, i64 224
  %i.bg = getelementptr i8, ptr %i.ap, i64 %i.bd
  %next.gep70 = getelementptr i8, ptr %i.bg, i64 336
  %i.bh = getelementptr i8, ptr %i.ap, i64 %i.bd
  %next.gep71 = getelementptr i8, ptr %i.bh, i64 448
  %i.bi = getelementptr i8, ptr %i.ap, i64 %i.bd
  %next.gep72 = getelementptr i8, ptr %i.bi, i64 560
  %i.bj = getelementptr i8, ptr %i.ap, i64 %i.bd
  %next.gep73 = getelementptr i8, ptr %i.bj, i64 672
  %i.bk = getelementptr i8, ptr %i.ap, i64 %i.bd
  %next.gep74 = getelementptr i8, ptr %i.bk, i64 784
  %i.bl = load i32, ptr %next.gep67, align 8, !tbaa !330
  %i.bm = load i32, ptr %next.gep68, align 8, !tbaa !330
  %i.bn = load i32, ptr %next.gep69, align 8, !tbaa !330
  %i.bo = load i32, ptr %next.gep70, align 8, !tbaa !330
  %i.bp = insertelement <4 x i32> poison, i32 %i.bl, i64 0
  %i.bq = insertelement <4 x i32> %i.bp, i32 %i.bm, i64 1
  %i.br = insertelement <4 x i32> %i.bq, i32 %i.bn, i64 2
  %i.bs = insertelement <4 x i32> %i.br, i32 %i.bo, i64 3
  %i.bt = load i32, ptr %next.gep71, align 8, !tbaa !330
  %i.bu = load i32, ptr %next.gep72, align 8, !tbaa !330
  %i.bv = load i32, ptr %next.gep73, align 8, !tbaa !330
  %i.bw = load i32, ptr %next.gep74, align 8, !tbaa !330
  %i.bx = insertelement <4 x i32> poison, i32 %i.bt, i64 0
  %i.by = insertelement <4 x i32> %i.bx, i32 %i.bu, i64 1
  %i.bz = insertelement <4 x i32> %i.by, i32 %i.bv, i64 2
  %i.ca = insertelement <4 x i32> %i.bz, i32 %i.bw, i64 3
  %i.cb = icmp eq <4 x i32> %i.bs, splat (i32 3)
  %i.cc = icmp eq <4 x i32> %i.ca, splat (i32 3)
  %i.cd = zext <4 x i1> %i.cb to <4 x i32>
  %i.ce = zext <4 x i1> %i.cc to <4 x i32>
  %i.cf = add <4 x i32> %vec.phi65, %i.cd         ; 2 uses
  %i.cg = add <4 x i32> %vec.phi66, %i.ce         ; 2 uses
  %index.next75 = add nuw i64 %index64, 8         ; 2 uses
  %i.ch = icmp eq i64 %index.next75, %n.vec62
  br i1 %i.ch, label %middle.block76, label %vector.body63, !llvm.loop !868

middle.block76:                                   ; preds = %vector.body63
  %bin.rdx77 = add <4 x i32> %i.cg, %i.cf
  %i.ci = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx77) ; 2 uses
  %cmp.n78 = icmp eq i64 %i.ba, %n.vec62
  br i1 %cmp.n78, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i.i, label %.lr.ph.i1.i.i.i.preheader82

.lr.ph.i1.i.i.i.preheader82:                      ; preds = %.lr.ph.i1.i.i.i.preheader, %middle.block76
  %.09.i.i.i.i.ph = phi i32 [ 0, %.lr.ph.i1.i.i.i.preheader ], [ %i.ci, %middle.block76 ]
  %.sroa.04.08.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i1.i.i.i.preheader ], [ %i.bc, %middle.block76 ]
  br label %.lr.ph.i1.i.i.i

.lr.ph.i1.i.i.i:                                  ; preds = %.lr.ph.i1.i.i.i.preheader82, %.lr.ph.i1.i.i.i
  %.09.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %.lr.ph.i1.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i1.i.i.i.preheader82 ]
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i1.i.i.i ], [ %.sroa.04.08.i.i.i.i.ph, %.lr.ph.i1.i.i.i.preheader82 ] ; 2 uses
  %i.cj = load i32, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !330
  %i.ck = icmp eq i32 %i.cj, 3
  %i.cl = zext i1 %i.ck to i32
  %spec.select.i.i.i.i = add nuw nsw i32 %.09.i.i.i.i, %i.cl ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cm, %i.ao
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i.i, label %.lr.ph.i1.i.i.i, !llvm.loop !869

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i1.i.i.i, %middle.block76
  %spec.select.i.i.i.i.lcssa = phi i32 [ %i.ci, %middle.block76 ], [ %spec.select.i.i.i.i, %.lr.ph.i1.i.i.i ]
  %i.cn = icmp ne i32 %spec.select.i.i.i.i.lcssa, 0
  %i.co = zext i1 %i.cn to i32
  br label %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i

_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i.i, %.loopexit.i.i.i, %.lr.ph.i.i
  %i.cp = phi i32 [ 0, %.lr.ph.i.i ], [ %i.co, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i.i ], [ 0, %.loopexit.i.i.i ], [ 0, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i ]
  %spec.select.i.i = add nuw nsw i32 %i.cp, %.09.i.i ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cq, %i.ah
  br i1 %.not.i.i, label %_ZNK7testing9TestSuite18skipped_test_countEv.exit, label %.lr.ph.i.i, !llvm.loop !381

_ZNK7testing9TestSuite18skipped_test_countEv.exit: ; preds = %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i
  %i.cr = icmp eq i32 %spec.select.i.i, 0
  br i1 %i.cr, label %_ZNK7testing9TestSuite18skipped_test_countEv.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK7testing9TestSuite18skipped_test_countEv.exit
  %i.cs = ptrtoint ptr %i.ah to i64
  %i.ct = ptrtoint ptr %i.af to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = lshr exact i64 %i.cu, 3
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph, label %_ZNK7testing9TestSuite18skipped_test_countEv.exit.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph: ; preds = %.preheader
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.da = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  br label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph, %_ZNK7testing10TestResult7SkippedEv.exit.thread
  %i.db = phi ptr [ %i.af, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %i.fx, %_ZNK7testing10TestResult7SkippedEv.exit.thread ] ; 5 uses
  %i.dc = phi ptr [ %i.ah, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %i.fy, %_ZNK7testing10TestResult7SkippedEv.exit.thread ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %indvars.iv.next, %_ZNK7testing10TestResult7SkippedEv.exit.thread ] ; 3 uses
  %i.dd = load ptr, ptr %i.cz, align 8, !tbaa !810
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !806 ; 2 uses
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %sext45 = shl i64 %i.dh, 30
  %i.di = ashr i64 %sext45, 32
  %.not.i.i18 = icmp slt i64 %indvars.iv, %i.di
  tail call void @llvm.assume(i1 %.not.i.i18)
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3  ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, -1
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = zext nneg i32 %i.dk to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !372 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 128
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !373, !range !69, !noundef !70
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.f, label %_ZNK7testing10TestResult7SkippedEv.exit.thread

bb.f:                                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 200
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 208
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !307 ; 3 uses
  %i.dv = load ptr, ptr %i.ds, align 8, !tbaa !315 ; 13 uses
  %i.dw = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dx = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = sdiv exact i64 %i.dy, 112               ; 5 uses
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph.preheader.i.i, label %.loopexit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %wide.trip.count.i.i = and i64 %i.dz, 2147483647
  br label %.lr.ph.i.i24

bb.g:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond16.not.i.i, label %.loopexit.i, label %.lr.ph.i.i24, !llvm.loop !376

.lr.ph.i.i24:                                     ; preds = %bb.g, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.dz
  br i1 %exitcond.not.i.i, label %bb.h, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i

bb.h:                                             ; preds = %.lr.ph.i.i24
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.518, i64 noundef %i.dz, i64 noundef %i.dz) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i: ; preds = %.lr.ph.i.i24
  %i.ec = getelementptr inbounds nuw [112 x i8], ptr %i.dv, i64 %indvars.iv.i.i
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !330
  %i.ee = add i32 %i.ed, -1
  %spec.select.i.i.i = icmp ult i32 %i.ee, 2
  br i1 %spec.select.i.i.i, label %_ZNK7testing10TestResult7SkippedEv.exit.thread, label %bb.g

.loopexit.i:                                      ; preds = %bb.g, %bb.f
  %.not7.i.i19 = icmp eq ptr %i.dv, %i.du
  br i1 %.not7.i.i19, label %_ZNK7testing10TestResult7SkippedEv.exit.thread, label %.lr.ph.i1.i.preheader

.lr.ph.i1.i.preheader:                            ; preds = %.loopexit.i
  %3 = add i64 %i.dw, -112
  %4 = sub i64 %3, %i.dx                          ; 2 uses
  %i.ef = udiv i64 %4, 112
  %i.eg = add nuw nsw i64 %i.ef, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 784
  br i1 %min.iters.check, label %.lr.ph.i1.i.preheader81, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i1.i.preheader
  %n.vec = and i64 %i.eg, 576460752303423480      ; 3 uses
  %i.eh = mul i64 %n.vec, 112
  %i.ei = getelementptr i8, ptr %i.dv, i64 %i.eh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fl, %vector.body ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fm, %vector.body ]
  %i.ej = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.dv, i64 %i.ej
  %i.ek = getelementptr i8, ptr %i.dv, i64 %i.ej
  %next.gep51 = getelementptr i8, ptr %i.ek, i64 112
  %i.el = getelementptr i8, ptr %i.dv, i64 %i.ej
  %next.gep52 = getelementptr i8, ptr %i.el, i64 224
  %i.em = getelementptr i8, ptr %i.dv, i64 %i.ej
  %next.gep53 = getelementptr i8, ptr %i.em, i64 336
  %i.en = getelementptr i8, ptr %i.dv, i64 %i.ej
  %next.gep54 = getelementptr i8, ptr %i.en, i64 448
  %i.eo = getelementptr i8, ptr %i.dv, i64 %i.ej
  %next.gep55 = getelementptr i8, ptr %i.eo, i64 560
  %i.ep = getelementptr i8, ptr %i.dv, i64 %i.ej
  %next.gep56 = getelementptr i8, ptr %i.ep, i64 672
  %i.eq = getelementptr i8, ptr %i.dv, i64 %i.ej
  %next.gep57 = getelementptr i8, ptr %i.eq, i64 784
  %i.er = load i32, ptr %next.gep, align 8, !tbaa !330
  %i.es = load i32, ptr %next.gep51, align 8, !tbaa !330
  %i.et = load i32, ptr %next.gep52, align 8, !tbaa !330
  %i.eu = load i32, ptr %next.gep53, align 8, !tbaa !330
  %i.ev = insertelement <4 x i32> poison, i32 %i.er, i64 0
  %i.ew = insertelement <4 x i32> %i.ev, i32 %i.es, i64 1
  %i.ex = insertelement <4 x i32> %i.ew, i32 %i.et, i64 2
  %i.ey = insertelement <4 x i32> %i.ex, i32 %i.eu, i64 3
  %i.ez = load i32, ptr %next.gep54, align 8, !tbaa !330
  %i.fa = load i32, ptr %next.gep55, align 8, !tbaa !330
  %i.fb = load i32, ptr %next.gep56, align 8, !tbaa !330
  %i.fc = load i32, ptr %next.gep57, align 8, !tbaa !330
  %i.fd = insertelement <4 x i32> poison, i32 %i.ez, i64 0
  %i.fe = insertelement <4 x i32> %i.fd, i32 %i.fa, i64 1
  %i.ff = insertelement <4 x i32> %i.fe, i32 %i.fb, i64 2
  %i.fg = insertelement <4 x i32> %i.ff, i32 %i.fc, i64 3
  %i.fh = icmp eq <4 x i32> %i.ey, splat (i32 3)
  %i.fi = icmp eq <4 x i32> %i.fg, splat (i32 3)
  %i.fj = zext <4 x i1> %i.fh to <4 x i32>
  %i.fk = zext <4 x i1> %i.fi to <4 x i32>
  %i.fl = add <4 x i32> %vec.phi, %i.fj           ; 2 uses
  %i.fm = add <4 x i32> %vec.phi50, %i.fk         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !870

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fm, %i.fl
  %i.fo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.eg, %n.vec
  br i1 %cmp.n, label %_ZNK7testing10TestResult7SkippedEv.exit, label %.lr.ph.i1.i.preheader81

.lr.ph.i1.i.preheader81:                          ; preds = %.lr.ph.i1.i.preheader, %middle.block
  %.09.i.i20.ph = phi i32 [ 0, %.lr.ph.i1.i.preheader ], [ %i.fo, %middle.block ]
  %.sroa.04.08.i.i21.ph = phi ptr [ %i.dv, %.lr.ph.i1.i.preheader ], [ %i.ei, %middle.block ]
  br label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %.lr.ph.i1.i.preheader81, %.lr.ph.i1.i
  %.09.i.i20 = phi i32 [ %spec.select.i.i22, %.lr.ph.i1.i ], [ %.09.i.i20.ph, %.lr.ph.i1.i.preheader81 ]
  %.sroa.04.08.i.i21 = phi ptr [ %i.fs, %.lr.ph.i1.i ], [ %.sroa.04.08.i.i21.ph, %.lr.ph.i1.i.preheader81 ] ; 2 uses
  %i.fp = load i32, ptr %.sroa.04.08.i.i21, align 8, !tbaa !330
  %i.fq = icmp eq i32 %i.fp, 3
  %i.fr = zext i1 %i.fq to i32
  %spec.select.i.i22 = add nuw nsw i32 %.09.i.i20, %i.fr ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i21, i64 112 ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.fs, %i.du
  br i1 %.not.i.i23, label %_ZNK7testing10TestResult7SkippedEv.exit, label %.lr.ph.i1.i, !llvm.loop !871

_ZNK7testing10TestResult7SkippedEv.exit:          ; preds = %.lr.ph.i1.i, %middle.block
  %spec.select.i.i22.lcssa = phi i32 [ %i.fo, %middle.block ], [ %spec.select.i.i22, %.lr.ph.i1.i ]
  %.not = icmp eq i32 %spec.select.i.i22.lcssa, 0
  br i1 %.not, label %_ZNK7testing10TestResult7SkippedEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing10TestResult7SkippedEv.exit
  tail call void (i32, ptr, ...) @_ZN7testing8internalL13ColoredPrintfENS0_12_GLOBAL__N_110GTestColorEPKcz(i32 noundef 2, ptr noundef nonnull @.str.158)
  %i.ft = load ptr, ptr %i.da, align 8, !tbaa !7
  %i.fu = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !7
  %i.fw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.164, ptr noundef %i.ft, ptr noundef %i.fv) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !389
  %.pre35 = load ptr, ptr %i.ae, align 8, !tbaa !390
  br label %_ZNK7testing10TestResult7SkippedEv.exit.thread

_ZNK7testing10TestResult7SkippedEv.exit.thread:   ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i, %.loopexit.i, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, %_ZNK7testing10TestResult7SkippedEv.exit, %bb.i
  %i.fx = phi ptr [ %.pre35, %bb.i ], [ %i.db, %.loopexit.i ], [ %i.db, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ], [ %i.db, %_ZNK7testing10TestResult7SkippedEv.exit ], [ %i.db, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i ] ; 2 uses
  %i.fy = phi ptr [ %.pre, %bb.i ], [ %i.dc, %.loopexit.i ], [ %i.dc, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ], [ %i.dc, %_ZNK7testing10TestResult7SkippedEv.exit ], [ %i.dc, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fx to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %sext46 = shl i64 %i.gb, 29
  %i.gc = ashr i64 %sext46, 32
  %i.gd = icmp slt i64 %indvars.iv.next, %i.gc
  br i1 %i.gd, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %_ZNK7testing9TestSuite18skipped_test_countEv.exit.thread.loopexit, !llvm.loop !872

_ZNK7testing9TestSuite18skipped_test_countEv.exit.thread.loopexit: ; preds = %_ZNK7testing10TestResult7SkippedEv.exit.thread
  %.pre36 = load ptr, ptr %i.a, align 8, !tbaa !43
  br label %_ZNK7testing9TestSuite18skipped_test_countEv.exit.thread

_ZNK7testing9TestSuite18skipped_test_countEv.exit.thread: ; preds = %_ZNK7testing9TestSuite18skipped_test_countEv.exit.thread.loopexit, %.preheader, %bb.b, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i, %_ZNK7testing9TestSuite18skipped_test_countEv.exit
  %i.ge = phi ptr [ %.pre36, %_ZNK7testing9TestSuite18skipped_test_countEv.exit.thread.loopexit ], [ %i.p, %.preheader ], [ %i.p, %bb.b ], [ %i.p, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i ], [ %i.p, %_ZNK7testing9TestSuite18skipped_test_countEv.exit ] ; 3 uses
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 184
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 192
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !369
  %i.gi = load ptr, ptr %i.gf, align 8, !tbaa !370 ; 2 uses
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %sext47 = shl i64 %i.gl, 29
  %i.gm = ashr i64 %sext47, 32
  %i.gn = icmp slt i64 %indvars.iv.next33, %i.gm
  br i1 %i.gn, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i, label %.loopexit, !llvm.loop !873

.loopexit:                                        ; preds = %_ZNK7testing9TestSuite18skipped_test_countEv.exit.thread, %.preheader26, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK7testing8UnitTest18skipped_test_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = tail call noundef i32 @_ZNK7testing8internal12UnitTestImpl18skipped_test_countEv(ptr noundef nonnull align 8 dereferenceable(601) %i.b)
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal27PrettyUnitTestResultPrinter18OnTestIterationEndERKNS_8UnitTestEi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  tail call void (i32, ptr, ...) @_ZN7testing8internalL13ColoredPrintfENS0_12_GLOBAL__N_110GTestColorEPKcz(i32 noundef 2, ptr noundef nonnull @.str.148)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #54
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !369  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !370  ; 3 uses
  %.not15.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not15.i.i.i, label %_ZNK7testing8UnitTest17test_to_run_countEv.exit, label %.lr.ph.split.us.i.preheader.i.i

.lr.ph.split.us.i.preheader.i.i:                  ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  br label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %_ZNK7testing9TestSuite17test_to_run_countEv.exit.i.i, %.lr.ph.split.us.i.preheader.i.i
  %.014.us.i.i.i = phi i64 [ %i.w, %_ZNK7testing9TestSuite17test_to_run_countEv.exit.i.i ], [ 0, %.lr.ph.split.us.i.preheader.i.i ] ; 2 uses
  %.01213.us.i.i.i = phi i32 [ %i.v, %_ZNK7testing9TestSuite17test_to_run_countEv.exit.i.i ], [ 0, %.lr.ph.split.us.i.preheader.i.i ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.014.us.i.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !354  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !371  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !371  ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not7.i.i.i.i, label %_ZNK7testing9TestSuite17test_to_run_countEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.split.us.i.i.i, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.split.us.i.i.i ]
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.n, %.lr.ph.split.us.i.i.i ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !372
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = load i8, ptr %i.r, align 8, !tbaa !373, !range !69, !noundef !70
  %i.t = zext nneg i8 %i.s to i32
  %spec.select.i.i.i.i = add nuw nsw i32 %.09.i.i.i.i, %i.t ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.p
  br i1 %.not.i.i.i.i, label %_ZNK7testing9TestSuite17test_to_run_countEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !381

_ZNK7testing9TestSuite17test_to_run_countEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split.us.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ 0, %.lr.ph.split.us.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.v = add nsw i32 %.0.lcssa.i.i.i.i, %.01213.us.i.i.i ; 2 uses
  %i.w = add nuw i64 %.014.us.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %i.j
  br i1 %exitcond.not.i.i, label %_ZNK7testing8UnitTest17test_to_run_countEv.exit, label %.lr.ph.split.us.i.i.i, !llvm.loop !382

_ZNK7testing8UnitTest17test_to_run_countEv.exit:  ; preds = %_ZNK7testing9TestSuite17test_to_run_countEv.exit.i.i, %bb.a
  %.012.lcssa.i.i.i = phi i32 [ 0, %bb.a ], [ %i.v, %_ZNK7testing9TestSuite17test_to_run_countEv.exit.i.i ]
  call fastcc void @_ZN7testingL19FormatCountableNounB5cxx11EiPKcS1_(ptr dead_on_unwind noalias nonnull writable align 8 %4, i32 noundef %.012.lcssa.i.i.i, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.153)
end_hunk_4
begin_hunk_5_@_ZN7testing8internal24XmlUnitTestResultPrinter17OutputXmlTestInfoEPSoPKcRKNS_8TestInfoE:._crit_edge.i.i
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #54
  %i.fs = load ptr, ptr %13, align 8, !tbaa !7    ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.ev
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178
  %i.fu = load i64, ptr %i.ev, align 8, !tbaa !13
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #54
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.220, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183 unwind label %bb.a ; 0 uses

bb.aj:                                            ; preds = %.noexc.i161, %bb.aa
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

bb.ak:                                            ; preds = %bb.ae
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fz = load ptr, ptr %12, align 8, !tbaa !7    ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.eb
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %bb.ak
  %i.gb = load i64, ptr %i.eb, align 8, !tbaa !13
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184, %bb.aj
  %.pn78 = phi { ptr, i32 } [ %i.fx, %bb.aj ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184 ], [ %i.fy, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #54
  %i.gd = load ptr, ptr %11, align 8, !tbaa !7    ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.dw
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
  %i.gf = load i64, ptr %i.dw, align 8, !tbaa !13
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #54
  br label %bb.bp

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %bb.ah
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gj = load ptr, ptr %14, align 8, !tbaa !7    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.am
  %i.gm = load i64, ptr %i.gk, align 8, !tbaa !13
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gn) #55
  br label %.body

.body:                                            ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190, %bb.al, %_ZN7testing7MessageD2Ev.exit4.i
  %.pn81 = phi { ptr, i32 } [ %i.fi, %_ZN7testing7MessageD2Ev.exit4.i ], [ %i.gh, %bb.al ], [ %i.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190 ], [ %i.gi, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #54
  %i.go = load ptr, ptr %13, align 8, !tbaa !7    ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.ev
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193: ; preds = %.body
  %i.gq = load i64, ptr %i.ev, align 8, !tbaa !13
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #54
  br label %bb.bp

._crit_edge.i.i196:                               ; preds = %_ZNK7testing8TestInfo10type_paramEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #54
  %i.gs = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.gs, ptr %15, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.gs, ptr noundef nonnull align 1 dereferenceable(6) @.str.210, i64 6, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 6, ptr %i.gt, align 8, !tbaa !15
  %i.gu = getelementptr inbounds nuw i8, ptr %15, i64 22
  store i8 0, ptr %i.gu, align 2, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #54
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.gw = load i8, ptr %i.gv, align 8, !tbaa !373, !range !69, !noundef !70
  %i.gx = trunc nuw i8 %i.gw to i1                ; 3 uses
  %i.gy = select i1 %i.gx, ptr @.str.211, ptr @.str.221
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.gz, ptr %16, align 8, !tbaa !14
  %i.ha = select i1 %i.gx, i64 3, i64 6           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.gz, ptr noundef nonnull align 1 dereferenceable(3) %i.gy, i64 %i.ha, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.ha, ptr %i.hb, align 8, !tbaa !15
  %.sroa.sel.v.sroa.sel.v = select i1 %i.gx, i64 19, i64 22
  %.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %16, i64 %.sroa.sel.v.sroa.sel.v
  store i8 0, ptr %.sroa.sel.v.sroa.sel, align 1, !tbaa !13
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter18OutputXmlAttributeEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.an unwind label %bb.bf

bb.an:                                            ; preds = %._crit_edge.i.i196
  %i.hc = load ptr, ptr %16, align 8, !tbaa !7    ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.gz
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %bb.an
  %i.he = load i64, ptr %i.gz, align 8, !tbaa !13
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #54
  %i.hg = load ptr, ptr %15, align 8, !tbaa !7    ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.gs
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206
  %i.hi = load i64, ptr %i.gs, align 8, !tbaa !13
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #54
  %i.hk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.hk, ptr %17, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.hk, ptr noundef nonnull align 1 dereferenceable(6) @.str.212, i64 6, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 6, ptr %i.hl, align 8, !tbaa !15
  %i.hm = getelementptr inbounds nuw i8, ptr %17, i64 22
  store i8 0, ptr %i.hm, align 2, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #54
  %i.hn = load i8, ptr %i.gv, align 8, !tbaa !373, !range !69, !noundef !70
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %bb.ao, label %_ZNK7testing10TestResult7SkippedEv.exit.thread

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !307 ; 3 uses
  %i.hs = load ptr, ptr %i.hp, align 8, !tbaa !315 ; 13 uses
  %i.ht = ptrtoint ptr %i.hr to i64               ; 2 uses
  %i.hu = ptrtoint ptr %i.hs to i64               ; 2 uses
  %i.hv = sub i64 %i.ht, %i.hu
  %i.hw = sdiv exact i64 %i.hv, 112               ; 5 uses
  %i.hx = trunc i64 %i.hw to i32
  %i.hy = icmp sgt i32 %i.hx, 0
  br i1 %i.hy, label %.lr.ph.preheader.i.i, label %.loopexit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ao
  %wide.trip.count.i.i = and i64 %i.hw, 2147483647
  br label %.lr.ph.i.i

bb.ap:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond16.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !376

.lr.ph.i.i:                                       ; preds = %bb.ap, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ap ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.hw
  br i1 %exitcond.not.i.i, label %bb.aq, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i

bb.aq:                                            ; preds = %.lr.ph.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.518, i64 noundef %i.hw, i64 noundef %i.hw) #56
          to label %.noexc214 unwind label %bb.bg

.noexc214:                                        ; preds = %bb.aq
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i: ; preds = %.lr.ph.i.i
  %i.hz = getelementptr inbounds nuw [112 x i8], ptr %i.hs, i64 %indvars.iv.i.i
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !330
  %i.ib = add i32 %i.ia, -1
  %spec.select.i.i.i = icmp ult i32 %i.ib, 2
  br i1 %spec.select.i.i.i, label %_ZNK7testing10TestResult7SkippedEv.exit.thread, label %bb.ap

.loopexit.i:                                      ; preds = %bb.ap, %bb.ao
  %.not7.i.i = icmp eq ptr %i.hs, %i.hr
  br i1 %.not7.i.i, label %_ZNK7testing10TestResult7SkippedEv.exit.thread, label %.lr.ph.i1.i.preheader

.lr.ph.i1.i.preheader:                            ; preds = %.loopexit.i
  %25 = add i64 %i.ht, -112
  %26 = sub i64 %25, %i.hu                        ; 2 uses
  %i.ic = udiv i64 %26, 112
  %i.id = add nuw nsw i64 %i.ic, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %26, 784
  br i1 %min.iters.check, label %.lr.ph.i1.i.preheader425, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i1.i.preheader
  %n.vec = and i64 %i.id, 576460752303423480      ; 3 uses
  %i.ie = mul i64 %n.vec, 112
  %i.if = getelementptr i8, ptr %i.hs, i64 %i.ie
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.jk, %vector.body ]
  %vec.phi417 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.jl, %vector.body ]
  %i.ig = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.hs, i64 %i.ig
  %i.ih = getelementptr i8, ptr %i.hs, i64 %i.ig
  %next.gep418 = getelementptr i8, ptr %i.ih, i64 112
  %i.ii = getelementptr i8, ptr %i.hs, i64 %i.ig
  %next.gep419 = getelementptr i8, ptr %i.ii, i64 224
  %i.ij = getelementptr i8, ptr %i.hs, i64 %i.ig
  %next.gep420 = getelementptr i8, ptr %i.ij, i64 336
  %i.ik = getelementptr i8, ptr %i.hs, i64 %i.ig
  %next.gep421 = getelementptr i8, ptr %i.ik, i64 448
  %i.il = getelementptr i8, ptr %i.hs, i64 %i.ig
  %next.gep422 = getelementptr i8, ptr %i.il, i64 560
  %i.im = getelementptr i8, ptr %i.hs, i64 %i.ig
  %next.gep423 = getelementptr i8, ptr %i.im, i64 672
  %i.in = getelementptr i8, ptr %i.hs, i64 %i.ig
  %next.gep424 = getelementptr i8, ptr %i.in, i64 784
  %i.io = load i32, ptr %next.gep, align 8, !tbaa !330
  %i.ip = load i32, ptr %next.gep418, align 8, !tbaa !330
  %i.iq = load i32, ptr %next.gep419, align 8, !tbaa !330
  %i.ir = load i32, ptr %next.gep420, align 8, !tbaa !330
  %i.is = insertelement <4 x i32> poison, i32 %i.io, i64 0
  %i.it = insertelement <4 x i32> %i.is, i32 %i.ip, i64 1
  %i.iu = insertelement <4 x i32> %i.it, i32 %i.iq, i64 2
  %i.iv = insertelement <4 x i32> %i.iu, i32 %i.ir, i64 3
  %i.iw = load i32, ptr %next.gep421, align 8, !tbaa !330
  %i.ix = load i32, ptr %next.gep422, align 8, !tbaa !330
  %i.iy = load i32, ptr %next.gep423, align 8, !tbaa !330
  %i.iz = load i32, ptr %next.gep424, align 8, !tbaa !330
  %i.ja = insertelement <4 x i32> poison, i32 %i.iw, i64 0
  %i.jb = insertelement <4 x i32> %i.ja, i32 %i.ix, i64 1
  %i.jc = insertelement <4 x i32> %i.jb, i32 %i.iy, i64 2
  %i.jd = insertelement <4 x i32> %i.jc, i32 %i.iz, i64 3
  %i.je = freeze <4 x i32> %i.iv
  %i.jf = freeze <4 x i32> %i.jd
  %i.jg = icmp eq <4 x i32> %i.je, splat (i32 3)
  %i.jh = icmp eq <4 x i32> %i.jf, splat (i32 3)
  %i.ji = zext <4 x i1> %i.jg to <4 x i32>
  %i.jj = zext <4 x i1> %i.jh to <4 x i32>
  %i.jk = add <4 x i32> %vec.phi, %i.ji           ; 2 uses
  %i.jl = add <4 x i32> %vec.phi417, %i.jj        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jm = icmp eq i64 %index.next, %n.vec
  br i1 %i.jm, label %middle.block, label %vector.body, !llvm.loop !1068

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.jl, %i.jk
  %i.jn = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.id, %n.vec
  br i1 %cmp.n, label %_ZNK7testing10TestResult7SkippedEv.exit, label %.lr.ph.i1.i.preheader425

.lr.ph.i1.i.preheader425:                         ; preds = %.lr.ph.i1.i.preheader, %middle.block
  %.09.i.i.ph = phi i32 [ 0, %.lr.ph.i1.i.preheader ], [ %i.jn, %middle.block ]
  %.sroa.04.08.i.i.ph = phi ptr [ %i.hs, %.lr.ph.i1.i.preheader ], [ %i.if, %middle.block ]
  br label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %.lr.ph.i1.i.preheader425, %.lr.ph.i1.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i1.i ], [ %.09.i.i.ph, %.lr.ph.i1.i.preheader425 ]
  %.sroa.04.08.i.i = phi ptr [ %i.jr, %.lr.ph.i1.i ], [ %.sroa.04.08.i.i.ph, %.lr.ph.i1.i.preheader425 ] ; 2 uses
  %i.jo = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !330
  %.fr = freeze i32 %i.jo
  %i.jp = icmp eq i32 %.fr, 3
  %i.jq = zext i1 %i.jp to i32
  %spec.select.i.i = add i32 %.09.i.i, %i.jq      ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i = icmp eq ptr %i.jr, %i.hr
  br i1 %.not.i.i, label %_ZNK7testing10TestResult7SkippedEv.exit, label %.lr.ph.i1.i, !llvm.loop !1069

_ZNK7testing10TestResult7SkippedEv.exit:          ; preds = %.lr.ph.i1.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.jn, %middle.block ], [ %spec.select.i.i, %.lr.ph.i1.i ]
  %.not321 = icmp eq i32 %spec.select.i.i.lcssa, 0
  %spec.select = select i1 %.not321, ptr @.str.213, ptr @.str.204
  br label %_ZNK7testing10TestResult7SkippedEv.exit.thread

_ZNK7testing10TestResult7SkippedEv.exit.thread:   ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i, %_ZNK7testing10TestResult7SkippedEv.exit, %.loopexit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
  %i.js = phi ptr [ @.str.222, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ], [ @.str.213, %.loopexit.i ], [ %spec.select, %_ZNK7testing10TestResult7SkippedEv.exit ], [ @.str.213, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i ] ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  store ptr %i.jt, ptr %18, align 8, !tbaa !14
  %i.ju = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.js) #54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  store i64 %i.ju, ptr %i.b, align 8, !tbaa !37
  %i.jv = icmp ugt i64 %i.ju, 15
  br i1 %i.jv, label %.noexc.i216, label %._crit_edge.i.i215

.noexc.i216:                                      ; preds = %_ZNK7testing10TestResult7SkippedEv.exit.thread
  %i.jw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc217 unwind label %bb.bh ; 2 uses

.noexc217:                                        ; preds = %.noexc.i216
  store ptr %i.jw, ptr %18, align 8, !tbaa !7
  %i.jx = load i64, ptr %i.b, align 8, !tbaa !37
  store i64 %i.jx, ptr %i.jt, align 8, !tbaa !13
  br label %._crit_edge.i.i215

._crit_edge.i.i215:                               ; preds = %.noexc217, %_ZNK7testing10TestResult7SkippedEv.exit.thread
  %i.jy = phi ptr [ %i.jw, %.noexc217 ], [ %i.jt, %_ZNK7testing10TestResult7SkippedEv.exit.thread ] ; 2 uses
  switch i64 %i.ju, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %bb.at
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i215
  %i.jz = load i8, ptr %i.js, align 1, !tbaa !13
  store i8 %i.jz, ptr %i.jy, align 1, !tbaa !13
  br label %bb.at

bb.as:                                            ; preds = %._crit_edge.i.i215
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jy, ptr nonnull align 1 %i.js, i64 %i.ju, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %._crit_edge.i.i215
  %i.ka = load i64, ptr %i.b, align 8, !tbaa !37  ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.ka, ptr %i.kb, align 8, !tbaa !15
  %i.kc = load ptr, ptr %18, align 8, !tbaa !7
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.ka
  store i8 0, ptr %i.kd, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter18OutputXmlAttributeEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.au unwind label %bb.bi

bb.au:                                            ; preds = %bb.at
  %i.ke = load ptr, ptr %18, align 8, !tbaa !7    ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.jt
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %bb.au
  %i.kg = load i64, ptr %i.jt, align 8, !tbaa !13
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.kh) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #54
  %i.ki = load ptr, ptr %17, align 8, !tbaa !7    ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.hk
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %i.kk = load i64, ptr %i.hk, align 8, !tbaa !13
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.kl) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #54
  %i.km = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.km, ptr %19, align 8, !tbaa !14
  store i32 1701669236, ptr %i.km, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 4, ptr %i.kn, align 8, !tbaa !15
  %i.ko = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i8 0, ptr %i.ko, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #54
  %i.kp = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !727
  invoke void @_ZN7testing8internal27FormatTimeInMillisAsSecondsB5cxx11El(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, i64 noundef %i.kq)
          to label %bb.av unwind label %bb.bj

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter18OutputXmlAttributeEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.aw unwind label %bb.bk

bb.aw:                                            ; preds = %bb.av
  %i.kr = load ptr, ptr %20, align 8, !tbaa !7    ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.kt = icmp eq ptr %i.kr, %i.ks
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229: ; preds = %bb.aw
  %i.ku = load i64, ptr %i.ks, align 8, !tbaa !13
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.kv) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #54
  %i.kw = load ptr, ptr %19, align 8, !tbaa !7    ; 2 uses
  %i.kx = icmp eq ptr %i.kw, %i.km
  br i1 %i.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231
  %i.ky = load i64, ptr %i.km, align 8, !tbaa !13
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.kz) #55
end_hunk_5
begin_hunk_6_@_ZN7testing8internal24XmlUnitTestResultPrinter17PrintXmlTestSuiteEPSoRKNS_9TestSuiteE:._crit_edge.i.i
  %i.dm = load ptr, ptr %11, align 8, !tbaa !7    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.bw
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %i.do = load i64, ptr %i.bw, align 8, !tbaa !13
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #54
  %i.dq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.dq, ptr %13, align 8, !tbaa !14
  store i64 7234307546238118244, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 8, ptr %i.dr, align 8, !tbaa !15
  %i.ds = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i8 0, ptr %i.ds, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #54
  %i.dt = load ptr, ptr %i.ak, align 8, !tbaa !371 ; 2 uses
  %i.du = load ptr, ptr %i.am, align 8, !tbaa !371 ; 2 uses
  %.not7.i.i136 = icmp eq ptr %i.dt, %i.du
  br i1 %.not7.i.i136, label %_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit, label %.lr.ph.i.i137

.lr.ph.i.i137:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i
  %.09.i.i138 = phi i32 [ %spec.select.i.i140, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ]
  %.sroa.04.08.i.i139 = phi ptr [ %i.eh, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ] ; 2 uses
  %i.dv = load ptr, ptr %.sroa.04.08.i.i139, align 8, !tbaa !372 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 130
  %i.dx = load i8, ptr %i.dw, align 2, !tbaa !387, !range !69, !noundef !70
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 131
  %i.ea = load i8, ptr %i.dz, align 1, !range !69
  %i.eb = trunc nuw i8 %i.ea to i1
  %not..i.i = xor i1 %i.dy, true
  %i.ec = select i1 %not..i.i, i1 true, i1 %i.eb
  br i1 %i.ec, label %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i137
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 129
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !388, !range !69, !noundef !70
  %i.ef = zext nneg i8 %i.ee to i32
  br label %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i

_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i: ; preds = %bb.p, %.lr.ph.i.i137
  %i.eg = phi i32 [ 0, %.lr.ph.i.i137 ], [ %i.ef, %bb.p ]
  %spec.select.i.i140 = add nuw nsw i32 %i.eg, %.09.i.i138 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i139, i64 8 ; 2 uses
  %.not.i.i141 = icmp eq ptr %i.eh, %i.du
  br i1 %.not.i.i141, label %_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit, label %.lr.ph.i.i137, !llvm.loop !381

_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit: ; preds = %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %.0.lcssa.i.i142 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ], [ %spec.select.i.i140, %_ZN7testing9TestSuite22TestReportableDisabledEPKNS_8TestInfoE.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #54, !noalias !1095
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc150 unwind label %bb.am

.noexc150:                                        ; preds = %_ZNK7testing9TestSuite30reportable_disabled_test_countEv.exit
  %i.ei = load ptr, ptr %3, align 8, !tbaa !20, !noalias !1095
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, i32 noundef %.0.lcssa.i.i142)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i146 unwind label %bb.q, !noalias !1095 ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i146:      ; preds = %.noexc150
  %i.el = load ptr, ptr %3, align 8, !tbaa !20, !noalias !1098
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef %i.el)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i147 unwind label %bb.q

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i147: ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i146
  %i.em = load ptr, ptr %3, align 8, !tbaa !20, !noalias !1095 ; 3 uses
  %.not.i.i.i148 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i148, label %bb.r, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i149

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i149: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i147
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !22
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(128) %i.em) #54, !inline_history !266
  br label %bb.r

bb.q:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i146, %.noexc150
  %i.eq = landingpad { ptr, i32 }
          cleanup
  %i.er = load ptr, ptr %3, align 8, !tbaa !20, !noalias !1095 ; 3 uses
  %.not.i.i2.i143 = icmp eq ptr %i.er, null
  br i1 %.not.i.i2.i143, label %_ZN7testing7MessageD2Ev.exit4.i145, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i144

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i144: ; preds = %bb.q
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !22
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(128) %i.er) #54, !inline_history !266
  br label %_ZN7testing7MessageD2Ev.exit4.i145

_ZN7testing7MessageD2Ev.exit4.i145:               ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i144, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54, !noalias !1095
  br label %.body151

bb.r:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i149, %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54, !noalias !1095
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter18OutputXmlAttributeEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.s unwind label %bb.an

bb.s:                                             ; preds = %bb.r
  %i.ev = load ptr, ptr %14, align 8, !tbaa !7    ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %bb.s
  %i.ey = load i64, ptr %i.ew, align 8, !tbaa !13
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ez) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #54
  %i.fa = load ptr, ptr %13, align 8, !tbaa !7    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.dq
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  %i.fc = load i64, ptr %i.dq, align 8, !tbaa !13
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #54
  %i.fe = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.fe, ptr %15, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.fe, ptr noundef nonnull align 1 dereferenceable(7) @.str.204, i64 7, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 7, ptr %i.ff, align 8, !tbaa !15
  %i.fg = getelementptr inbounds nuw i8, ptr %15, i64 23
  store i8 0, ptr %i.fg, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #54
  %i.fh = load ptr, ptr %i.ak, align 8, !tbaa !371 ; 2 uses
  %i.fi = load ptr, ptr %i.am, align 8, !tbaa !371 ; 2 uses
  %.not7.i.i164 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not7.i.i164, label %_ZNK7testing9TestSuite18skipped_test_countEv.exit, label %.lr.ph.i.i165

.lr.ph.i.i165:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i
  %.09.i.i166 = phi i32 [ %spec.select.i.i168, %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ]
  %.sroa.04.08.i.i167 = phi ptr [ %i.hr, %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i ], [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ] ; 2 uses
  %i.fj = load ptr, ptr %.sroa.04.08.i.i167, align 8, !tbaa !372 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 128
  %i.fl = load i8, ptr %i.fk, align 8, !tbaa !373, !range !69, !noundef !70
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.t, label %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i

bb.t:                                             ; preds = %.lr.ph.i.i165
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 200
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 208
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !307 ; 3 uses
  %i.fq = load ptr, ptr %i.fn, align 8, !tbaa !315 ; 13 uses
  %i.fr = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.fs = ptrtoint ptr %i.fq to i64               ; 2 uses
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = sdiv exact i64 %i.ft, 112               ; 5 uses
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.t
  %wide.trip.count.i.i.i.i = and i64 %i.fu, 2147483647
  br label %.lr.ph.i.i.i.i

bb.u:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond16.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond16.not.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !376

.lr.ph.i.i.i.i:                                   ; preds = %bb.u, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.u ] ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i, %i.fu
  br i1 %exitcond.not.i.i.i.i, label %bb.v, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.518, i64 noundef %i.fu, i64 noundef %i.fu) #56
          to label %.noexc172 unwind label %bb.ao

.noexc172:                                        ; preds = %bb.v
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.fx = getelementptr inbounds nuw [112 x i8], ptr %i.fq, i64 %indvars.iv.i.i.i.i
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !330
  %i.fz = add i32 %i.fy, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.fz, 2
  br i1 %spec.select.i.i.i.i.i, label %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i, label %bb.u

.loopexit.i.i.i:                                  ; preds = %bb.u, %bb.t
  %.not7.i.i.i.i = icmp eq ptr %i.fq, %i.fp
  br i1 %.not7.i.i.i.i, label %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i, label %.lr.ph.i1.i.i.i.preheader

.lr.ph.i1.i.i.i.preheader:                        ; preds = %.loopexit.i.i.i
  %24 = add i64 %i.fr, -112
  %25 = sub i64 %24, %i.fs                        ; 2 uses
  %i.ga = udiv i64 %25, 112
  %i.gb = add nuw nsw i64 %i.ga, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %25, 784
  br i1 %min.iters.check, label %.lr.ph.i1.i.i.i.preheader422, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i1.i.i.i.preheader
  %n.vec = and i64 %i.gb, 576460752303423480      ; 3 uses
  %i.gc = mul i64 %n.vec, 112
  %i.gd = getelementptr i8, ptr %i.fq, i64 %i.gc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.hg, %vector.body ]
  %vec.phi414 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.hh, %vector.body ]
  %i.ge = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.fq, i64 %i.ge
  %i.gf = getelementptr i8, ptr %i.fq, i64 %i.ge
  %next.gep415 = getelementptr i8, ptr %i.gf, i64 112
  %i.gg = getelementptr i8, ptr %i.fq, i64 %i.ge
  %next.gep416 = getelementptr i8, ptr %i.gg, i64 224
  %i.gh = getelementptr i8, ptr %i.fq, i64 %i.ge
  %next.gep417 = getelementptr i8, ptr %i.gh, i64 336
  %i.gi = getelementptr i8, ptr %i.fq, i64 %i.ge
  %next.gep418 = getelementptr i8, ptr %i.gi, i64 448
  %i.gj = getelementptr i8, ptr %i.fq, i64 %i.ge
  %next.gep419 = getelementptr i8, ptr %i.gj, i64 560
  %i.gk = getelementptr i8, ptr %i.fq, i64 %i.ge
  %next.gep420 = getelementptr i8, ptr %i.gk, i64 672
  %i.gl = getelementptr i8, ptr %i.fq, i64 %i.ge
  %next.gep421 = getelementptr i8, ptr %i.gl, i64 784
  %i.gm = load i32, ptr %next.gep, align 8, !tbaa !330
  %i.gn = load i32, ptr %next.gep415, align 8, !tbaa !330
  %i.go = load i32, ptr %next.gep416, align 8, !tbaa !330
  %i.gp = load i32, ptr %next.gep417, align 8, !tbaa !330
  %i.gq = insertelement <4 x i32> poison, i32 %i.gm, i64 0
  %i.gr = insertelement <4 x i32> %i.gq, i32 %i.gn, i64 1
  %i.gs = insertelement <4 x i32> %i.gr, i32 %i.go, i64 2
  %i.gt = insertelement <4 x i32> %i.gs, i32 %i.gp, i64 3
  %i.gu = load i32, ptr %next.gep418, align 8, !tbaa !330
  %i.gv = load i32, ptr %next.gep419, align 8, !tbaa !330
  %i.gw = load i32, ptr %next.gep420, align 8, !tbaa !330
  %i.gx = load i32, ptr %next.gep421, align 8, !tbaa !330
  %i.gy = insertelement <4 x i32> poison, i32 %i.gu, i64 0
  %i.gz = insertelement <4 x i32> %i.gy, i32 %i.gv, i64 1
  %i.ha = insertelement <4 x i32> %i.gz, i32 %i.gw, i64 2
  %i.hb = insertelement <4 x i32> %i.ha, i32 %i.gx, i64 3
  %i.hc = icmp eq <4 x i32> %i.gt, splat (i32 3)
  %i.hd = icmp eq <4 x i32> %i.hb, splat (i32 3)
  %i.he = zext <4 x i1> %i.hc to <4 x i32>
  %i.hf = zext <4 x i1> %i.hd to <4 x i32>
  %i.hg = add <4 x i32> %vec.phi, %i.he           ; 2 uses
  %i.hh = add <4 x i32> %vec.phi414, %i.hf        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hi = icmp eq i64 %index.next, %n.vec
  br i1 %i.hi, label %middle.block, label %vector.body, !llvm.loop !1101

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.hh, %i.hg
  %i.hj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.gb, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i.i, label %.lr.ph.i1.i.i.i.preheader422

.lr.ph.i1.i.i.i.preheader422:                     ; preds = %.lr.ph.i1.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi i32 [ 0, %.lr.ph.i1.i.i.i.preheader ], [ %i.hj, %middle.block ]
  %.sroa.04.08.i.i.i.i.ph = phi ptr [ %i.fq, %.lr.ph.i1.i.i.i.preheader ], [ %i.gd, %middle.block ]
  br label %.lr.ph.i1.i.i.i

.lr.ph.i1.i.i.i:                                  ; preds = %.lr.ph.i1.i.i.i.preheader422, %.lr.ph.i1.i.i.i
  %.09.i.i.i.i = phi i32 [ %spec.select.i.i.i.i171, %.lr.ph.i1.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i1.i.i.i.preheader422 ]
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.hn, %.lr.ph.i1.i.i.i ], [ %.sroa.04.08.i.i.i.i.ph, %.lr.ph.i1.i.i.i.preheader422 ] ; 2 uses
  %i.hk = load i32, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !330
  %i.hl = icmp eq i32 %i.hk, 3
  %i.hm = zext i1 %i.hl to i32
  %spec.select.i.i.i.i171 = add nuw nsw i32 %.09.i.i.i.i, %i.hm ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.hn, %i.fp
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i.i, label %.lr.ph.i1.i.i.i, !llvm.loop !1102

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i1.i.i.i, %middle.block
  %spec.select.i.i.i.i171.lcssa = phi i32 [ %i.hj, %middle.block ], [ %spec.select.i.i.i.i171, %.lr.ph.i1.i.i.i ]
  %i.ho = icmp ne i32 %spec.select.i.i.i.i171.lcssa, 0
  %i.hp = zext i1 %i.ho to i32
  br label %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i

_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i.i, %.loopexit.i.i.i, %.lr.ph.i.i165
  %i.hq = phi i32 [ 0, %.lr.ph.i.i165 ], [ %i.hp, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i.i ], [ 0, %.loopexit.i.i.i ], [ 0, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i ]
  %spec.select.i.i168 = add nuw nsw i32 %i.hq, %.09.i.i166 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i167, i64 8 ; 2 uses
  %.not.i.i169 = icmp eq ptr %i.hr, %i.fi
  br i1 %.not.i.i169, label %_ZNK7testing9TestSuite18skipped_test_countEv.exit, label %.lr.ph.i.i165, !llvm.loop !381

_ZNK7testing9TestSuite18skipped_test_countEv.exit: ; preds = %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159
  %.0.lcssa.i.i170 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ], [ %spec.select.i.i168, %_ZN7testing9TestSuite11TestSkippedEPKNS_8TestInfoE.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54, !noalias !1103
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc180 unwind label %bb.ao

.noexc180:                                        ; preds = %_ZNK7testing9TestSuite18skipped_test_countEv.exit
  %i.hs = load ptr, ptr %2, align 8, !tbaa !20, !noalias !1103
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ht, i32 noundef %.0.lcssa.i.i170)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i176 unwind label %bb.w, !noalias !1103 ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i176:      ; preds = %.noexc180
  %i.hv = load ptr, ptr %2, align 8, !tbaa !20, !noalias !1106
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef %i.hv)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i177 unwind label %bb.w

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i177: ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i176
  %i.hw = load ptr, ptr %2, align 8, !tbaa !20, !noalias !1103 ; 3 uses
  %.not.i.i.i178 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i178, label %bb.x, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i179

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i179: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i177
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !22
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(128) %i.hw) #54, !inline_history !266
  br label %bb.x

bb.w:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i176, %.noexc180
  %i.ia = landingpad { ptr, i32 }
          cleanup
  %i.ib = load ptr, ptr %2, align 8, !tbaa !20, !noalias !1103 ; 3 uses
  %.not.i.i2.i173 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i2.i173, label %_ZN7testing7MessageD2Ev.exit4.i175, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i174

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i174: ; preds = %bb.w
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !22
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(128) %i.ib) #54, !inline_history !266
  br label %_ZN7testing7MessageD2Ev.exit4.i175

_ZN7testing7MessageD2Ev.exit4.i175:               ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i174, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54, !noalias !1103
  br label %.body181

bb.x:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i179, %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54, !noalias !1103
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter18OutputXmlAttributeEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.y unwind label %bb.ap

bb.y:                                             ; preds = %bb.x
  %i.if = load ptr, ptr %16, align 8, !tbaa !7    ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %bb.y
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !13
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #54
  %i.ik = load ptr, ptr %15, align 8, !tbaa !7    ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.fe
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
  %i.im = load i64, ptr %i.fe, align 8, !tbaa !13
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #54
  %i.io = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.io, ptr %17, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.io, ptr noundef nonnull align 1 dereferenceable(6) @.str.205, i64 6, i1 false)
  %i.ip = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 6, ptr %i.ip, align 8, !tbaa !15
  %i.iq = getelementptr inbounds nuw i8, ptr %17, i64 22
  store i8 0, ptr %i.iq, align 2, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #54
  %i.ir = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.ir, ptr %18, align 8, !tbaa !14
  store i8 48, ptr %i.ir, align 8, !tbaa !13
  %i.is = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 1, ptr %i.is, align 8, !tbaa !15
  %i.it = getelementptr inbounds nuw i8, ptr %18, i64 17
  store i8 0, ptr %i.it, align 1, !tbaa !13
  invoke void @_ZN7testing8internal24XmlUnitTestResultPrinter18OutputXmlAttributeEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.z unwind label %bb.aq

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  %i.iu = load ptr, ptr %18, align 8, !tbaa !7    ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.ir
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %bb.z
  %i.iw = load i64, ptr %i.ir, align 8, !tbaa !13
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

end_hunk_6
begin_hunk_7_@_ZN7testing8internal25JsonUnitTestResultPrinter18OutputJsonTestInfoEPSoPKcRKNS_8TestInfoE:._crit_edge.i.i
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit202
  %i.fz = load ptr, ptr %15, align 8, !tbaa !7    ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.ft
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204
  %i.gb = load i64, ptr %i.ft, align 8, !tbaa !13
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #54
  br label %bb.bh

bb.aj:                                            ; preds = %.noexc.i180, %bb.ac
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

bb.ak:                                            ; preds = %bb.ag
  %i.ge = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gf = load ptr, ptr %13, align 8, !tbaa !7    ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.ep
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %bb.ak
  %i.gh = load i64, ptr %i.ep, align 8, !tbaa !13
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208, %bb.aj
  %.pn86 = phi { ptr, i32 } [ %i.gd, %bb.aj ], [ %i.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208 ], [ %i.ge, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #54
  %i.gj = load ptr, ptr %12, align 8, !tbaa !7    ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.ek
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  %i.gl = load i64, ptr %i.ek, align 8, !tbaa !13
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #54
  br label %bb.bu

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  %i.gn = landingpad { ptr, i32 }
          cleanup
  %i.go = load ptr, ptr %14, align 8, !tbaa !7    ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.fj
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214: ; preds = %bb.al
  %i.gq = load i64, ptr %i.fj, align 8, !tbaa !13
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #54
  br label %bb.bu

bb.am:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit198
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

bb.an:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit202, %_ZN7testing8internalL6IndentB5cxx11Em.exit200
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gu = load ptr, ptr %15, align 8, !tbaa !7    ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.ft
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %bb.an
  %i.gw = load i64, ptr %i.ft, align 8, !tbaa !13
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217, %bb.am
  %.pn91 = phi { ptr, i32 } [ %i.gs, %bb.am ], [ %i.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217 ], [ %i.gt, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #54
  br label %bb.bu

._crit_edge.i.i220:                               ; preds = %_ZNK7testing8TestInfo10type_paramEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #54
  %i.gy = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.gy, ptr %16, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.gy, ptr noundef nonnull align 1 dereferenceable(6) @.str.210, i64 6, i1 false)
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 6, ptr %i.gz, align 8, !tbaa !15
  %i.ha = getelementptr inbounds nuw i8, ptr %16, i64 22
  store i8 0, ptr %i.ha, align 2, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #54
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 8, !tbaa !373, !range !69, !noundef !70
  %i.hd = trunc nuw i8 %i.hc to i1                ; 3 uses
  %i.he = select i1 %i.hd, ptr @.str.258, ptr @.str.262
  %i.hf = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.hf, ptr %17, align 8, !tbaa !14
  %i.hg = select i1 %i.hd, i64 3, i64 6           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.hf, ptr noundef nonnull align 1 dereferenceable(3) %i.he, i64 %i.hg, i1 false)
  %i.hh = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.hg, ptr %i.hh, align 8, !tbaa !15
  %.sroa.sel.v.sroa.sel.v = select i1 %i.hd, i64 19, i64 22
  %.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %17, i64 %.sroa.sel.v.sroa.sel.v
  store i8 0, ptr %.sroa.sel.v.sroa.sel, align 1, !tbaa !13
  invoke void @_ZN7testing8internal25JsonUnitTestResultPrinter13OutputJsonKeyEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_SA_b(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext true)
          to label %bb.ao unwind label %bb.bi

bb.ao:                                            ; preds = %._crit_edge.i.i220
  %i.hi = load ptr, ptr %17, align 8, !tbaa !7    ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.hf
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %bb.ao
  %i.hk = load i64, ptr %i.hf, align 8, !tbaa !13
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #54
  %i.hm = load ptr, ptr %16, align 8, !tbaa !7    ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.gy
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230
  %i.ho = load i64, ptr %i.gy, align 8, !tbaa !13
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #54
  %i.hq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.hq, ptr %18, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.hq, ptr noundef nonnull align 1 dereferenceable(6) @.str.212, i64 6, i1 false)
  %i.hr = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 6, ptr %i.hr, align 8, !tbaa !15
  %i.hs = getelementptr inbounds nuw i8, ptr %18, i64 22
  store i8 0, ptr %i.hs, align 2, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #54
  %i.ht = load i8, ptr %i.hb, align 8, !tbaa !373, !range !69, !noundef !70
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %bb.ap, label %_ZNK7testing10TestResult7SkippedEv.exit.thread

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !307 ; 3 uses
  %i.hy = load ptr, ptr %i.hv, align 8, !tbaa !315 ; 13 uses
  %i.hz = ptrtoint ptr %i.hx to i64               ; 2 uses
  %i.ia = ptrtoint ptr %i.hy to i64               ; 2 uses
  %i.ib = sub i64 %i.hz, %i.ia
  %i.ic = sdiv exact i64 %i.ib, 112               ; 5 uses
  %i.id = trunc i64 %i.ic to i32
  %i.ie = icmp sgt i32 %i.id, 0
  br i1 %i.ie, label %.lr.ph.preheader.i.i, label %.loopexit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ap
  %wide.trip.count.i.i = and i64 %i.ic, 2147483647
  br label %.lr.ph.i.i

bb.aq:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond16.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !376

.lr.ph.i.i:                                       ; preds = %bb.aq, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.aq ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.ic
  br i1 %exitcond.not.i.i, label %bb.ar, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i

bb.ar:                                            ; preds = %.lr.ph.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.518, i64 noundef %i.ic, i64 noundef %i.ic) #56
          to label %.noexc238 unwind label %bb.bj

.noexc238:                                        ; preds = %bb.ar
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i: ; preds = %.lr.ph.i.i
  %i.if = getelementptr inbounds nuw [112 x i8], ptr %i.hy, i64 %indvars.iv.i.i
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !330
  %i.ih = add i32 %i.ig, -1
  %spec.select.i.i.i = icmp ult i32 %i.ih, 2
  br i1 %spec.select.i.i.i, label %_ZNK7testing10TestResult7SkippedEv.exit.thread, label %bb.aq

.loopexit.i:                                      ; preds = %bb.aq, %bb.ap
  %.not7.i.i = icmp eq ptr %i.hy, %i.hx
  br i1 %.not7.i.i, label %_ZNK7testing10TestResult7SkippedEv.exit.thread, label %.lr.ph.i1.i.preheader

.lr.ph.i1.i.preheader:                            ; preds = %.loopexit.i
  %27 = add i64 %i.hz, -112
  %28 = sub i64 %27, %i.ia                        ; 2 uses
  %i.ii = udiv i64 %28, 112
  %i.ij = add nuw nsw i64 %i.ii, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %28, 784
  br i1 %min.iters.check, label %.lr.ph.i1.i.preheader473, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i1.i.preheader
  %n.vec = and i64 %i.ij, 576460752303423480      ; 3 uses
  %i.ik = mul i64 %n.vec, 112
  %i.il = getelementptr i8, ptr %i.hy, i64 %i.ik
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.jq, %vector.body ]
  %vec.phi465 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.jr, %vector.body ]
  %i.im = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.hy, i64 %i.im
  %i.in = getelementptr i8, ptr %i.hy, i64 %i.im
  %next.gep466 = getelementptr i8, ptr %i.in, i64 112
  %i.io = getelementptr i8, ptr %i.hy, i64 %i.im
  %next.gep467 = getelementptr i8, ptr %i.io, i64 224
  %i.ip = getelementptr i8, ptr %i.hy, i64 %i.im
  %next.gep468 = getelementptr i8, ptr %i.ip, i64 336
  %i.iq = getelementptr i8, ptr %i.hy, i64 %i.im
  %next.gep469 = getelementptr i8, ptr %i.iq, i64 448
  %i.ir = getelementptr i8, ptr %i.hy, i64 %i.im
  %next.gep470 = getelementptr i8, ptr %i.ir, i64 560
  %i.is = getelementptr i8, ptr %i.hy, i64 %i.im
  %next.gep471 = getelementptr i8, ptr %i.is, i64 672
  %i.it = getelementptr i8, ptr %i.hy, i64 %i.im
  %next.gep472 = getelementptr i8, ptr %i.it, i64 784
  %i.iu = load i32, ptr %next.gep, align 8, !tbaa !330
  %i.iv = load i32, ptr %next.gep466, align 8, !tbaa !330
  %i.iw = load i32, ptr %next.gep467, align 8, !tbaa !330
  %i.ix = load i32, ptr %next.gep468, align 8, !tbaa !330
  %i.iy = insertelement <4 x i32> poison, i32 %i.iu, i64 0
  %i.iz = insertelement <4 x i32> %i.iy, i32 %i.iv, i64 1
  %i.ja = insertelement <4 x i32> %i.iz, i32 %i.iw, i64 2
  %i.jb = insertelement <4 x i32> %i.ja, i32 %i.ix, i64 3
  %i.jc = load i32, ptr %next.gep469, align 8, !tbaa !330
  %i.jd = load i32, ptr %next.gep470, align 8, !tbaa !330
  %i.je = load i32, ptr %next.gep471, align 8, !tbaa !330
  %i.jf = load i32, ptr %next.gep472, align 8, !tbaa !330
  %i.jg = insertelement <4 x i32> poison, i32 %i.jc, i64 0
  %i.jh = insertelement <4 x i32> %i.jg, i32 %i.jd, i64 1
  %i.ji = insertelement <4 x i32> %i.jh, i32 %i.je, i64 2
  %i.jj = insertelement <4 x i32> %i.ji, i32 %i.jf, i64 3
  %i.jk = freeze <4 x i32> %i.jb
  %i.jl = freeze <4 x i32> %i.jj
  %i.jm = icmp eq <4 x i32> %i.jk, splat (i32 3)
  %i.jn = icmp eq <4 x i32> %i.jl, splat (i32 3)
  %i.jo = zext <4 x i1> %i.jm to <4 x i32>
  %i.jp = zext <4 x i1> %i.jn to <4 x i32>
  %i.jq = add <4 x i32> %vec.phi, %i.jo           ; 2 uses
  %i.jr = add <4 x i32> %vec.phi465, %i.jp        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.js = icmp eq i64 %index.next, %n.vec
  br i1 %i.js, label %middle.block, label %vector.body, !llvm.loop !1263

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.jr, %i.jq
  %i.jt = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ij, %n.vec
  br i1 %cmp.n, label %_ZNK7testing10TestResult7SkippedEv.exit, label %.lr.ph.i1.i.preheader473

.lr.ph.i1.i.preheader473:                         ; preds = %.lr.ph.i1.i.preheader, %middle.block
  %.09.i.i.ph = phi i32 [ 0, %.lr.ph.i1.i.preheader ], [ %i.jt, %middle.block ]
  %.sroa.04.08.i.i.ph = phi ptr [ %i.hy, %.lr.ph.i1.i.preheader ], [ %i.il, %middle.block ]
  br label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %.lr.ph.i1.i.preheader473, %.lr.ph.i1.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i1.i ], [ %.09.i.i.ph, %.lr.ph.i1.i.preheader473 ]
  %.sroa.04.08.i.i = phi ptr [ %i.jx, %.lr.ph.i1.i ], [ %.sroa.04.08.i.i.ph, %.lr.ph.i1.i.preheader473 ] ; 2 uses
  %i.ju = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !330
  %.fr = freeze i32 %i.ju
  %i.jv = icmp eq i32 %.fr, 3
  %i.jw = zext i1 %i.jv to i32
  %spec.select.i.i = add i32 %.09.i.i, %i.jw      ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i = icmp eq ptr %i.jx, %i.hx
  br i1 %.not.i.i, label %_ZNK7testing10TestResult7SkippedEv.exit, label %.lr.ph.i1.i, !llvm.loop !1264

_ZNK7testing10TestResult7SkippedEv.exit:          ; preds = %.lr.ph.i1.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.jt, %middle.block ], [ %spec.select.i.i, %.lr.ph.i1.i ]
  %.not359 = icmp eq i32 %spec.select.i.i.lcssa, 0
  %spec.select = select i1 %.not359, ptr @.str.259, ptr @.str.263
  br label %_ZNK7testing10TestResult7SkippedEv.exit.thread

_ZNK7testing10TestResult7SkippedEv.exit.thread:   ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i, %_ZNK7testing10TestResult7SkippedEv.exit, %.loopexit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233
  %i.jy = phi ptr [ @.str.264, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233 ], [ @.str.259, %.loopexit.i ], [ %spec.select, %_ZNK7testing10TestResult7SkippedEv.exit ], [ @.str.259, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i ] ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  store ptr %i.jz, ptr %19, align 8, !tbaa !14
  %i.ka = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jy) #54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  store i64 %i.ka, ptr %i.b, align 8, !tbaa !37
  %i.kb = icmp ugt i64 %i.ka, 15
  br i1 %i.kb, label %.noexc.i240, label %._crit_edge.i.i239

.noexc.i240:                                      ; preds = %_ZNK7testing10TestResult7SkippedEv.exit.thread
  %i.kc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc241 unwind label %bb.bk ; 2 uses

.noexc241:                                        ; preds = %.noexc.i240
  store ptr %i.kc, ptr %19, align 8, !tbaa !7
  %i.kd = load i64, ptr %i.b, align 8, !tbaa !37
  store i64 %i.kd, ptr %i.jz, align 8, !tbaa !13
  br label %._crit_edge.i.i239

._crit_edge.i.i239:                               ; preds = %.noexc241, %_ZNK7testing10TestResult7SkippedEv.exit.thread
  %i.ke = phi ptr [ %i.kc, %.noexc241 ], [ %i.jz, %_ZNK7testing10TestResult7SkippedEv.exit.thread ] ; 2 uses
  switch i64 %i.ka, label %bb.at [
    i64 1, label %bb.as
    i64 0, label %bb.au
  ]

bb.as:                                            ; preds = %._crit_edge.i.i239
  %i.kf = load i8, ptr %i.jy, align 1, !tbaa !13
  store i8 %i.kf, ptr %i.ke, align 1, !tbaa !13
  br label %bb.au

bb.at:                                            ; preds = %._crit_edge.i.i239
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ke, ptr nonnull align 1 %i.jy, i64 %i.ka, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %._crit_edge.i.i239
  %i.kg = load i64, ptr %i.b, align 8, !tbaa !37  ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.kg, ptr %i.kh, align 8, !tbaa !15
  %i.ki = load ptr, ptr %19, align 8, !tbaa !7
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kg
  store i8 0, ptr %i.kj, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  invoke void @_ZN7testing8internal25JsonUnitTestResultPrinter13OutputJsonKeyEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_SA_b(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext true)
          to label %bb.av unwind label %bb.bl

bb.av:                                            ; preds = %bb.au
  %i.kk = load ptr, ptr %19, align 8, !tbaa !7    ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.jz
  br i1 %i.kl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %bb.av
  %i.km = load i64, ptr %i.jz, align 8, !tbaa !13
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.kn) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #54
  %i.ko = load ptr, ptr %18, align 8, !tbaa !7    ; 2 uses
  %i.kp = icmp eq ptr %i.ko, %i.hq
  br i1 %i.kp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245
  %i.kq = load i64, ptr %i.hq, align 8, !tbaa !13
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.ko, i64 noundef %i.kr) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #54
  %i.ks = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.ks, ptr %20, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ks, ptr noundef nonnull align 1 dereferenceable(9) @.str.207, i64 9, i1 false)
  %i.kt = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 9, ptr %i.kt, align 8, !tbaa !15
  %i.ku = getelementptr inbounds nuw i8, ptr %20, i64 25
  store i8 0, ptr %i.ku, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #54
  %i.kv = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !801
  invoke fastcc void @_ZN7testing8internalL32FormatEpochTimeInMillisAsRFC3339B5cxx11El(ptr dead_on_unwind noalias writable align 8 %21, i64 noundef %i.kw)
          to label %bb.aw unwind label %bb.bm

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  invoke void @_ZN7testing8internal25JsonUnitTestResultPrinter13OutputJsonKeyEPSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_SA_b(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext true)
          to label %bb.ax unwind label %bb.bn

bb.ax:                                            ; preds = %bb.aw
  %i.kx = load ptr, ptr %21, align 8, !tbaa !7    ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.kz = icmp eq ptr %i.kx, %i.ky
  br i1 %i.kz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253: ; preds = %bb.ax
  %i.la = load i64, ptr %i.ky, align 8, !tbaa !13
  %i.lb = add i64 %i.la, 1
  call void @_ZdlPvm(ptr noundef %i.kx, i64 noundef %i.lb) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #54
  %i.lc = load ptr, ptr %20, align 8, !tbaa !7    ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.ks
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255
  %i.le = load i64, ptr %i.ks, align 8, !tbaa !13
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lf) #55
end_hunk_7
