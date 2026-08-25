Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/BigIntSupport?download=true
inline.NumInlined: 1517
inline.NumDeleted: 727
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6hermes6bigint12_GLOBAL__N_19shiftImplENS1_9ShiftOpIsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES4_:bb.a

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i.i: ; preds = %bb.b
  %i.k = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef nonnull %.0.val, ptr noundef nonnull %i.b, i32 noundef 1) #16, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !111
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i.i: ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !111
  store i64 65536, ptr %i.a, align 8, !tbaa !10, !noalias !111
  %i.m = load i64, ptr %.0.val, align 8, !tbaa !10, !noalias !111
  %.fr.i.i1738.i.i = freeze i64 %i.m              ; 2 uses
  %i.n = icmp slt i64 %.fr.i.i1738.i.i, 0
  br i1 %i.n, label %.thread52.i.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i.i

bb.c:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !111
  store i64 65536, ptr %i.a, align 8, !tbaa !10, !noalias !111
  %i.o = icmp eq i32 %.8.val, 1
  br i1 %i.o, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i.i

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !111
  br label %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i.i: ; preds = %bb.c, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i.i
  %i.p = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef nonnull %.0.val, ptr noundef nonnull %i.a, i32 noundef %.8.val) #16, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !111
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit, label %bb.d

.thread52.i.i:                                    ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !111
  br label %bb.e

bb.d:                                             ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i.i
  %i.r = load i64, ptr %.0.val, align 8, !tbaa !10, !noalias !111 ; 2 uses
  br i1 %i.g, label %bb.e, label %.thread56.i.i

bb.e:                                             ; preds = %bb.d, %.thread52.i.i
  %.pn.i.i = phi i64 [ %.fr.i.i1738.i.i, %.thread52.i.i ], [ %i.r, %bb.d ]
  %i.s = sub nsw i64 0, %.pn.i.i
  br label %.thread56.i.i

.thread56.i.i:                                    ; preds = %bb.e, %bb.d, %bb.a
  %i.t = phi i8 [ %i.h, %bb.e ], [ %i.h, %bb.d ], [ 0, %bb.a ]
  %i.u = phi i64 [ %i.s, %bb.e ], [ %i.r, %bb.d ], [ 0, %bb.a ]
  %i.v = trunc i64 %i.u to i32
  br label %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit

_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit: ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i.i, %.thread56.i.i
  %.sink63.i.i = phi i8 [ %i.t, %.thread56.i.i ], [ %i.h, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i.i ], [ %i.h, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i.i ], [ %i.h, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i.i ], [ %i.h, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i.i ]
  %.sink.i.i = phi i32 [ %i.v, %.thread56.i.i ], [ 8193, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i.i ], [ 8193, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i.i ], [ 8193, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i.i ], [ 8193, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i.i ] ; 2 uses
  %i.w = zext nneg i8 %.sink63.i.i to i32
  %.not.i.not = icmp eq i32 %0, %i.w              ; 2 uses
  %i.x = add i32 %.sink.i.i, 63
  %i.y = lshr i32 %i.x, 6
  %.0.i.i = select i1 %.not.i.not, i32 %i.y, i32 0
  %i.z = add i32 %.0.i.i, %4
  %_ZN6hermes6bigint12_GLOBAL__N_123signedRightShiftAdapterEPmjj._ZN4llvh5APInt11tcShiftLeftEPmjj = select i1 %.not.i.not, ptr @_ZN4llvh5APInt11tcShiftLeftEPmjj, ptr @_ZN6hermes6bigint12_GLOBAL__N_123signedRightShiftAdapterEPmjj
  %i.aa = load i32, ptr %2, align 4, !tbaa !3     ; 2 uses
  %i.ab = icmp ult i32 %i.aa, %i.z
  %i.ac = icmp ult i32 %i.aa, %4
  %or.cond = or i1 %i.ac, %i.ab
  br i1 %or.cond, label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit
  %i.ad = shl i32 %4, 3
  %i.ae = zext i32 %i.ad to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr readonly align 8 %3, i64 %i.ae, i1 false)
  %i.af = load i32, ptr %2, align 4, !tbaa !3
  %i.ag = sub i32 %i.af, %4
  %i.ah = shl i32 %i.ag, 3
  %i.ai = icmp eq i32 %4, 0
  br i1 %i.ai, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = add i32 %4, -1
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !10
  %.neg.i.i.i = ashr i64 %i.am, 63
  %i.an = trunc nsw i64 %.neg.i.i.i to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ao = phi i8 [ %i.an, %bb.g ], [ 0, %bb.f ]
  %i.ap = zext i32 %4 to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ap
  %i.ar = zext i32 %i.ah to i64
  call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 %i.ao, i64 %i.ar, i1 false)
  %i.as = load i32, ptr %2, align 4, !tbaa !3
  call void %_ZN6hermes6bigint12_GLOBAL__N_123signedRightShiftAdapterEPmjj._ZN4llvh5APInt11tcShiftLeftEPmjj(ptr noundef %1, i32 noundef %i.as, i32 noundef %.sink.i.i) #16, !callees !116
  %i.at = load i32, ptr %2, align 4, !tbaa !3
  %i.au = shl i32 %i.at, 3                        ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = zext i32 %i.au to i64                   ; 5 uses
  %i.ax = getelementptr i8, ptr %1, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 -1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !7   ; 3 uses
  %i.ba = ashr i8 %i.az, 7                        ; 3 uses
  %i.bb = icmp eq i8 %i.az, %i.ba
  br i1 %i.bb, label %.lr.ph.i.preheader, label %.critedge.thread.i.i

.lr.ph.i.preheader:                               ; preds = %bb.i
  %i.bc = add nsw i64 %i.aw, -1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.bd = phi i64 [ %i.bc, %.lr.ph.i.preheader ], [ %i.bi, %.lr.ph.i ] ; 4 uses
  %.sroa.10.029.i4.i27 = phi i64 [ %i.aw, %.lr.ph.i.preheader ], [ %i.bd, %.lr.ph.i ]
  %i.be = getelementptr i8, ptr %1, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 -1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !7   ; 2 uses
  %i.bh = icmp eq i8 %i.bg, %i.az
  br i1 %i.bh, label %.lr.ph.i, label %.critedge.i.loopexit.i, !llvm.loop !8

.lr.ph.i:                                         ; preds = %bb.j
  %i.bi = add nsw i64 %i.bd, -1                   ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %.critedge.thread.i.i, label %bb.j, !llvm.loop !8

.critedge.i.loopexit.i:                           ; preds = %bb.j
  %.pre.i = ashr i8 %i.bg, 7
  br label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %.lr.ph.i, %.critedge.i.loopexit.i, %bb.i
  %.sroa.10.028.i.i = phi i64 [ %i.aw, %bb.i ], [ %i.bd, %.critedge.i.loopexit.i ], [ 0, %.lr.ph.i ]
  %.sroa.5.026.i.i = phi i64 [ %i.aw, %bb.i ], [ %.sroa.10.029.i4.i27, %.critedge.i.loopexit.i ], [ 1, %.lr.ph.i ]
  %i.bk = phi i8 [ %i.ba, %bb.i ], [ %.pre.i, %.critedge.i.loopexit.i ], [ 0, %.lr.ph.i ]
  %i.bl = icmp eq i8 %i.bk, %i.ba
  %.sroa.3.0.copyload4.i.i = select i1 %i.bl, i64 %.sroa.10.028.i.i, i64 %.sroa.5.026.i.i
  %i.bm = trunc nuw i64 %.sroa.3.0.copyload4.i.i to i32
  %i.bn = add nuw i32 %i.bm, 7
  %i.bo = lshr i32 %i.bn, 3
  br label %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit

_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit: ; preds = %bb.h, %.critedge.thread.i.i
  %.sroa.3.0.i.i = phi i32 [ %i.bo, %.critedge.thread.i.i ], [ 0, %bb.h ]
  store i32 %.sroa.3.0.i.i, ptr %2, align 4, !tbaa !3
  br label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit, %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit
  %.1 = phi i32 [ 1, %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit ], [ 0, %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN6hermes6bigint16signedRightShiftENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_(ptr %0, ptr nofree captures(none) %1, ptr nofree readonly captures(none) %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN6hermes6bigint12_GLOBAL__N_19shiftImplENS1_9ShiftOpIsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES4_(i32 noundef 1, ptr %0, ptr %1, ptr %2, i32 %3, ptr %4, i32 %5)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes6bigint19UniquingBigIntTable12getEntryListEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.44") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) local_unnamed_addr #5 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 21
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !122  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !123
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 24
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !124
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !122  ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 24
  %i.ac = add nsw i64 %i.u, %i.ab                 ; 4 uses
  %i.ad = icmp ugt i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not62 = icmp eq i64 %i.ac, 0
  br i1 %.not62, label %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = shl nuw nsw i64 %i.ac, 3
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #18 ; 4 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !125
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !128
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ac ; 2 uses
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !129
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !122, !noalias !130
  %.pre46 = load ptr, ptr %i.a, align 8, !tbaa !122, !noalias !133
  br label %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i
  %.promoted27 = phi ptr [ null, %bb.c ], [ %i.ai, %_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i ]
  %.promoted = phi ptr [ null, %bb.c ], [ %i.ah, %_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %i.aj = phi ptr [ %i.n, %bb.c ], [ %.pre46, %_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %i.ak = phi ptr [ %i.x, %bb.c ], [ %.pre, %_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.not30 = icmp eq ptr %i.ak, %i.aj
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !117, !noalias !130
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !124, !noalias !130
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit
  %i.ao = phi ptr [ %.promoted, %.lr.ph ], [ %i.cf, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 4 uses
  %.034 = phi i32 [ 0, %.lr.ph ], [ %i.ci, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 3 uses
  %.sroa.020.033 = phi ptr [ %i.ak, %.lr.ph ], [ %.sroa.020.1, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 3 uses
  %.sroa.10.032 = phi ptr [ %i.am, %.lr.ph ], [ %.sroa.10.1, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 2 uses
  %.sroa.13.031 = phi ptr [ %i.al, %.lr.ph ], [ %.sroa.13.1, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 2 uses
  %i.ap = phi ptr [ %.promoted27, %.lr.ph ], [ %i.ch, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 2 uses
  %i.aq = phi ptr [ %.promoted, %.lr.ph ], [ %i.cg, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 5 uses
  %i.ar = load ptr, ptr %.sroa.020.033, align 8, !tbaa !69 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.020.033, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !71
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 6 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZNK6hermes6bigint12ParsedBigInt8getBytesEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr i8, ptr %i.ar, i64 %i.aw
  %i.az = getelementptr i8, ptr %i.ay, i64 -1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !7   ; 3 uses
  %i.bb = ashr i8 %i.ba, 7                        ; 3 uses
  %i.bc = icmp eq i8 %i.ba, %i.bb
  br i1 %i.bc, label %.lr.ph.i.preheader, label %.critedge.thread.i.i

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.bd = add i64 %i.aw, -1                       ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.critedge.thread.i.i, label %.lr.ph84, !llvm.loop !8

.lr.ph84:                                         ; preds = %.lr.ph.i.preheader
  br label %bb.f, !llvm.loop !8

bb.f:                                             ; preds = %.lr.ph84, %.lr.ph.i
  %i.bf = phi i64 [ %i.bd, %.lr.ph84 ], [ %i.bk, %.lr.ph.i ] ; 4 uses
  %.sroa.10.029.i4.i83 = phi i64 [ %i.aw, %.lr.ph84 ], [ %i.bf, %.lr.ph.i ]
  %i.bg = getelementptr i8, ptr %i.ar, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 -1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !7   ; 2 uses
  %i.bj = icmp eq i8 %i.bi, %i.ba
  br i1 %i.bj, label %.lr.ph.i, label %.critedge.i.loopexit.i, !llvm.loop !8

.lr.ph.i:                                         ; preds = %bb.f
  %i.bk = add i64 %i.bf, -1                       ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.i..critedge.thread.i.i.loopexit_crit_edge, label %bb.f, !llvm.loop !8

.critedge.i.loopexit.i:                           ; preds = %bb.f
  %.pre.i = ashr i8 %i.bi, 7
  br label %.critedge.thread.i.i

.lr.ph.i..critedge.thread.i.i.loopexit_crit_edge: ; preds = %.lr.ph.i
  br label %.critedge.thread.i.i, !llvm.loop !8

.critedge.thread.i.i:                             ; preds = %.lr.ph.i.preheader, %.lr.ph.i..critedge.thread.i.i.loopexit_crit_edge, %.critedge.i.loopexit.i, %bb.e
  %.sroa.10.028.i.i = phi i64 [ %i.aw, %bb.e ], [ %i.bf, %.critedge.i.loopexit.i ], [ 0, %.lr.ph.i..critedge.thread.i.i.loopexit_crit_edge ], [ 0, %.lr.ph.i.preheader ]
  %.sroa.5.026.i.i = phi i64 [ %i.aw, %bb.e ], [ %.sroa.10.029.i4.i83, %.critedge.i.loopexit.i ], [ 1, %.lr.ph.i..critedge.thread.i.i.loopexit_crit_edge ], [ 1, %.lr.ph.i.preheader ]
  %i.bm = phi i8 [ %i.bb, %bb.e ], [ %.pre.i, %.critedge.i.loopexit.i ], [ 0, %.lr.ph.i..critedge.thread.i.i.loopexit_crit_edge ], [ 0, %.lr.ph.i.preheader ]
  %i.bn = icmp eq i8 %i.bm, %i.bb
  %.sroa.3.0.copyload4.i.i = select i1 %i.bn, i64 %.sroa.10.028.i.i, i64 %.sroa.5.026.i.i
  %i.bo = trunc i64 %.sroa.3.0.copyload4.i.i to i32
  br label %_ZNK6hermes6bigint12ParsedBigInt8getBytesEv.exit

_ZNK6hermes6bigint12ParsedBigInt8getBytesEv.exit: ; preds = %bb.d, %.critedge.thread.i.i
  %.sroa.3.0.i.i = phi i32 [ %i.bo, %.critedge.thread.i.i ], [ 0, %bb.d ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK6hermes6bigint12ParsedBigInt8getBytesEv.exit
  %.sroa.5.0.insert.ext = zext i32 %.sroa.3.0.i.i to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.034 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.ao, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  store ptr %i.bp, ptr %i.an, align 8, !tbaa !128
  br label %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE9push_backEOS2_.exit

bb.h:                                             ; preds = %_ZNK6hermes6bigint12ParsedBigInt8getBytesEv.exit
  %i.bq = ptrtoint ptr %i.ao to i64
  %i.br = ptrtoint ptr %i.aq to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 6 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775800
  br i1 %i.bt, label %bb.i, label %_ZNKSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #19
  unreachable

_ZNKSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.bu = ashr exact i64 %i.bs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  %i.bv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bu ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bu
  %i.bx = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 1152921504606846975)
  %i.by = select i1 %i.bw, i64 1152921504606846975, i64 %i.bx ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.by, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bz = shl nuw nsw i64 %i.by, 3
  %i.ca = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #18 ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bs ; 2 uses
  %.sroa.5.0.insert.ext13 = zext i32 %.sroa.3.0.i.i to i64
  %.sroa.5.0.insert.shift14 = shl nuw i64 %.sroa.5.0.insert.ext13, 32
  %.sroa.0.0.insert.ext9 = zext i32 %.034 to i64
  %.sroa.0.0.insert.insert11 = or disjoint i64 %.sroa.5.0.insert.shift14, %.sroa.0.0.insert.ext9
  store i64 %.sroa.0.0.insert.insert11, ptr %i.cb, align 4
  %i.cc = icmp sgt i64 %i.bs, 0
  br i1 %i.cc, label %bb.j, label %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ca, ptr align 4 %i.aq, i64 %i.bs, i1 false)
  br label %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.bs) #17
  br label %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.ca, ptr %0, align 8, !tbaa !125
  store ptr %i.cd, ptr %i.an, align 8, !tbaa !128
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.by ; 2 uses
  store ptr %i.ce, ptr %i.ae, align 8, !tbaa !129
  br label %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.g, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.cf = phi ptr [ %i.bp, %bb.g ], [ %i.cd, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.cg = phi ptr [ %i.aq, %bb.g ], [ %i.ca, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ch = phi ptr [ %i.ap, %bb.g ], [ %i.ce, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ci = add i32 %.sroa.3.0.i.i, %.034
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.020.033, i64 24 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %.sroa.10.032
  br i1 %i.ck, label %bb.l, label %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit

bb.l:                                             ; preds = %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE9push_backEOS2_.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.13.031, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !136 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 504
  br label %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit

_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit: ; preds = %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE9push_backEOS2_.exit, %bb.l
  %.sroa.13.1 = phi ptr [ %i.cl, %bb.l ], [ %.sroa.13.031, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE9push_backEOS2_.exit ]
  %.sroa.10.1 = phi ptr [ %i.cn, %bb.l ], [ %.sroa.10.032, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE9push_backEOS2_.exit ]
  %.sroa.020.1 = phi ptr [ %i.cm, %bb.l ], [ %i.cj, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %.not = icmp eq ptr %.sroa.020.1, %i.aj
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes6bigint19UniquingBigIntTable15getDigitsBufferEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) local_unnamed_addr #5 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122, !noalias !137 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122, !noalias !140 ; 2 uses
  %.not16 = icmp eq ptr %i.b, %i.d
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !117, !noalias !137
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124, !noalias !137
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit
  %.sroa.13.019 = phi ptr [ %i.f, %.lr.ph ], [ %.sroa.13.1, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 2 uses
  %.sroa.10.018 = phi ptr [ %i.h, %.lr.ph ], [ %.sroa.10.1, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 2 uses
  %.sroa.010.017 = phi ptr [ %i.b, %.lr.ph ], [ %.sroa.010.1, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 3 uses
  %i.j = load ptr, ptr %.sroa.010.017, align 8, !tbaa !69 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.010.017, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !71
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n                       ; 6 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZNK6hermes6bigint12ParsedBigInt8getBytesEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.j, i64 %i.o
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !7     ; 3 uses
  %i.t = ashr i8 %i.s, 7                          ; 3 uses
  %i.u = icmp eq i8 %i.s, %i.t
  br i1 %i.u, label %.lr.ph.i.preheader, label %.critedge.thread.i.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.v = add i64 %i.o, -1                         ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.critedge.thread.i.i, label %.lr.ph37, !llvm.loop !8

.lr.ph37:                                         ; preds = %.lr.ph.i.preheader
  br label %bb.d, !llvm.loop !8

bb.d:                                             ; preds = %.lr.ph37, %.lr.ph.i
  %i.x = phi i64 [ %i.v, %.lr.ph37 ], [ %i.ac, %.lr.ph.i ] ; 4 uses
  %.sroa.10.029.i4.i36 = phi i64 [ %i.o, %.lr.ph37 ], [ %i.x, %.lr.ph.i ]
  %i.y = getelementptr i8, ptr %i.j, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !7    ; 2 uses
  %i.ab = icmp eq i8 %i.aa, %i.s
  br i1 %i.ab, label %.lr.ph.i, label %.critedge.i.loopexit.i, !llvm.loop !8

.lr.ph.i:                                         ; preds = %bb.d
  %i.ac = add i64 %i.x, -1                        ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i..critedge.thread.i.i.loopexit_crit_edge, label %bb.d, !llvm.loop !8

.critedge.i.loopexit.i:                           ; preds = %bb.d
  %.pre.i = ashr i8 %i.aa, 7
  br label %.critedge.thread.i.i

.lr.ph.i..critedge.thread.i.i.loopexit_crit_edge: ; preds = %.lr.ph.i
  br label %.critedge.thread.i.i, !llvm.loop !8

.critedge.thread.i.i:                             ; preds = %.lr.ph.i.preheader, %.lr.ph.i..critedge.thread.i.i.loopexit_crit_edge, %.critedge.i.loopexit.i, %bb.c
  %.sroa.10.028.i.i = phi i64 [ %i.o, %bb.c ], [ %i.x, %.critedge.i.loopexit.i ], [ 0, %.lr.ph.i..critedge.thread.i.i.loopexit_crit_edge ], [ 0, %.lr.ph.i.preheader ]
  %.sroa.5.026.i.i = phi i64 [ %i.o, %bb.c ], [ %.sroa.10.029.i4.i36, %.critedge.i.loopexit.i ], [ 1, %.lr.ph.i..critedge.thread.i.i.loopexit_crit_edge ], [ 1, %.lr.ph.i.preheader ]
  %i.ae = phi i8 [ %i.t, %bb.c ], [ %.pre.i, %.critedge.i.loopexit.i ], [ 0, %.lr.ph.i..critedge.thread.i.i.loopexit_crit_edge ], [ 0, %.lr.ph.i.preheader ]
  %i.af = icmp eq i8 %i.ae, %i.t
  %.sroa.3.0.copyload4.i.i = select i1 %i.af, i64 %.sroa.10.028.i.i, i64 %.sroa.5.026.i.i
  br label %_ZNK6hermes6bigint12ParsedBigInt8getBytesEv.exit

_ZNK6hermes6bigint12ParsedBigInt8getBytesEv.exit: ; preds = %bb.b, %.critedge.thread.i.i
  %.sroa.3.0.i.i = phi i64 [ %.sroa.3.0.copyload4.i.i, %.critedge.thread.i.i ], [ 0, %bb.b ]
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !143
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.3.0.i.i
  %i.ai = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %i.al
  tail call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.am, ptr noundef %i.j, ptr noundef %i.ah)
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.010.017, i64 24 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %.sroa.10.018
  br i1 %i.ao, label %bb.e, label %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit

bb.e:                                             ; preds = %_ZNK6hermes6bigint12ParsedBigInt8getBytesEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.13.019, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !136 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 504
  br label %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit

_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit: ; preds = %_ZNK6hermes6bigint12ParsedBigInt8getBytesEv.exit, %bb.e
  %.sroa.010.1 = phi ptr [ %i.aq, %bb.e ], [ %i.an, %_ZNK6hermes6bigint12ParsedBigInt8getBytesEv.exit ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %i.ar, %bb.e ], [ %.sroa.10.018, %_ZNK6hermes6bigint12ParsedBigInt8getBytesEv.exit ]
  %.sroa.13.1 = phi ptr [ %i.ap, %bb.e ], [ %.sroa.13.019, %_ZNK6hermes6bigint12ParsedBigInt8getBytesEv.exit ]
  %.not = icmp eq ptr %.sroa.010.1, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #6

declare void @_ZN4llvh5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #12

declare noundef i32 @_ZN4llvh5APInt8tcDivideEPmPKmS1_S1_j(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6hermes6bigint12_GLOBAL__N_123signedRightShiftAdapterEPmjj(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %.critedge, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit: ; preds = %bb.a
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !10
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit
  tail call void @_ZN4llvh5APInt12tcComplementEPmj(ptr noundef nonnull %0, i32 noundef %1) #16
  tail call void @_ZN4llvh5APInt12tcShiftRightEPmjj(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #16
  tail call void @_ZN4llvh5APInt12tcComplementEPmj(ptr noundef nonnull %0, i32 noundef %1) #16
  br label %bb.c

.critedge:                                        ; preds = %bb.a, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit
  tail call void @_ZN4llvh5APInt12tcShiftRightEPmjj(ptr noundef %0, i32 noundef %1, i32 noundef %2) #16
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  ret void
}

declare void @_ZN4llvh5APInt11tcShiftLeftEPmjj(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZN4llvh5APInt12tcShiftRightEPmjj(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !36, !range !63, !noundef !64
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.i
end_hunk_0
