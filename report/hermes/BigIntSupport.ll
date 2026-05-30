inline.NumInlined: 1517
inline.NumDeleted: 727
begin_hunk_0_@_ZN6hermes6bigint12_GLOBAL__N_19shiftImplENS1_9ShiftOpIsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES4_:bb.a
  br label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %.lr.ph.i, %.critedge.i.loopexit.i, %bb.h
  %.sroa.5.028.i.i = phi i64 [ %i.au, %bb.h ], [ %.sroa.10.030.i4.i27, %.critedge.i.loopexit.i ], [ 1, %.lr.ph.i ]
  %.sroa.10.026.i.i = phi i64 [ %i.au, %bb.h ], [ %i.bb, %.critedge.i.loopexit.i ], [ 0, %.lr.ph.i ]
  %i.bi = phi i8 [ %i.ay, %bb.h ], [ %.pre.i14, %.critedge.i.loopexit.i ], [ 0, %.lr.ph.i ]
  %i.bj = icmp eq i8 %i.bi, %i.ay
  %.sroa.3.0.copyload4.i.i = select i1 %i.bj, i64 %.sroa.10.026.i.i, i64 %.sroa.5.028.i.i
  %i.bk = trunc nuw i64 %.sroa.3.0.copyload4.i.i to i32
  %i.bl = add nuw i32 %i.bk, 7
  %i.bm = lshr i32 %i.bl, 3
  br label %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit

_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit: ; preds = %bb.g, %.critedge.thread.i.i
  %.sroa.3.0.i.i = phi i32 [ %i.bm, %.critedge.thread.i.i ], [ 0, %bb.g ]
  store i32 %.sroa.3.0.i.i, ptr %2, align 4, !tbaa !3
  br label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit, %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit
  %.1 = phi i32 [ 1, %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit ], [ 0, %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN6hermes6bigint16signedRightShiftENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_(ptr %0, ptr captures(none) %1, ptr readonly captures(none) %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN6hermes6bigint12_GLOBAL__N_19shiftImplENS1_9ShiftOpIsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES4_(i32 noundef 1, ptr %0, ptr %1, ptr %2, i32 %3, ptr %4, i32 %5)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes6bigint19UniquingBigIntTable12getEntryListEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector.44") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) local_unnamed_addr #5 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 21
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !123  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !124
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 24
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !125  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !123  ; 3 uses
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
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not61 = icmp eq i64 %i.ac, 0
  br i1 %.not61, label %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = shl nuw nsw i64 %i.ac, 3
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #18 ; 4 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !126
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !129
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ac ; 2 uses
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !130
  br label %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i
  %.promoted27 = phi ptr [ null, %bb.c ], [ %i.ah, %_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.promoted = phi ptr [ null, %bb.c ], [ %i.ai, %_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.not30 = icmp eq ptr %i.x, %i.n
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit
  %.lcssa28 = phi ptr [ %.promoted27, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit ], [ %i.cc, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ]
  %.lcssa = phi ptr [ %.promoted, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit ], [ %i.cd, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ]
  store ptr %.lcssa, ptr %i.ae, align 8
  store ptr %.lcssa28, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit
  %i.ak = phi ptr [ %.promoted27, %.lr.ph ], [ %i.cb, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 4 uses
  %.034 = phi i32 [ 0, %.lr.ph ], [ %i.ce, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 3 uses
  %.sroa.13.033 = phi ptr [ %i.f, %.lr.ph ], [ %.sroa.13.1, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 2 uses
  %.sroa.10.032 = phi ptr [ %i.w, %.lr.ph ], [ %.sroa.10.1, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 2 uses
  %.sroa.020.031 = phi ptr [ %i.x, %.lr.ph ], [ %.sroa.020.1, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 3 uses
  %i.al = phi ptr [ %.promoted, %.lr.ph ], [ %i.cd, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 3 uses
  %i.am = phi ptr [ %.promoted27, %.lr.ph ], [ %i.cc, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 6 uses
  %i.an = load ptr, ptr %.sroa.020.031, align 8, !tbaa !69 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.020.031, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !71
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZNK6hermes6bigint12ParsedBigInt8getBytesEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr i8, ptr %i.an, i64 %i.as
  %i.av = getelementptr i8, ptr %i.au, i64 -1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !7   ; 3 uses
  %i.ax = ashr i8 %i.aw, 7                        ; 3 uses
  %i.ay = icmp eq i8 %i.aw, %i.ax
  br i1 %i.ay, label %.lr.ph.i.preheader, label %.critedge.thread.i.i

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.az = add i64 %i.as, -1                       ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.critedge.thread.i.i, label %.lr.ph83, !llvm.loop !8

.lr.ph83:                                         ; preds = %.lr.ph.i.preheader
  br label %bb.f, !llvm.loop !8

bb.f:                                             ; preds = %.lr.ph83, %.lr.ph.i
  %i.bb = phi i64 [ %i.az, %.lr.ph83 ], [ %i.bg, %.lr.ph.i ] ; 4 uses
  %.sroa.10.030.i4.i82 = phi i64 [ %i.as, %.lr.ph83 ], [ %i.bb, %.lr.ph.i ]
  %i.bc = getelementptr i8, ptr %i.an, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 -1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !7   ; 2 uses
  %i.bf = icmp eq i8 %i.be, %i.aw
  br i1 %i.bf, label %.lr.ph.i, label %.critedge.i.loopexit.i, !llvm.loop !8

.lr.ph.i:                                         ; preds = %bb.f
  %i.bg = add i64 %i.bb, -1                       ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i..critedge.thread.i.i.loopexit_crit_edge, label %bb.f, !llvm.loop !8

.critedge.i.loopexit.i:                           ; preds = %bb.f
  %.pre.i = ashr i8 %i.be, 7
  br label %.critedge.thread.i.i

.lr.ph.i..critedge.thread.i.i.loopexit_crit_edge: ; preds = %.lr.ph.i
  br label %.critedge.thread.i.i, !llvm.loop !8

.critedge.thread.i.i:                             ; preds = %.lr.ph.i.preheader, %.lr.ph.i..critedge.thread.i.i.loopexit_crit_edge, %.critedge.i.loopexit.i, %bb.e
  %.sroa.5.028.i.i = phi i64 [ %i.as, %bb.e ], [ %.sroa.10.030.i4.i82, %.critedge.i.loopexit.i ], [ 1, %.lr.ph.i..critedge.thread.i.i.loopexit_crit_edge ], [ 1, %.lr.ph.i.preheader ]
  %.sroa.10.026.i.i = phi i64 [ %i.as, %bb.e ], [ %i.bb, %.critedge.i.loopexit.i ], [ 0, %.lr.ph.i..critedge.thread.i.i.loopexit_crit_edge ], [ 0, %.lr.ph.i.preheader ]
  %i.bi = phi i8 [ %i.ax, %bb.e ], [ %.pre.i, %.critedge.i.loopexit.i ], [ 0, %.lr.ph.i..critedge.thread.i.i.loopexit_crit_edge ], [ 0, %.lr.ph.i.preheader ]
  %i.bj = icmp eq i8 %i.bi, %i.ax
  %.sroa.3.0.copyload4.i.i = select i1 %i.bj, i64 %.sroa.10.026.i.i, i64 %.sroa.5.028.i.i
  %i.bk = trunc i64 %.sroa.3.0.copyload4.i.i to i32
  br label %_ZNK6hermes6bigint12ParsedBigInt8getBytesEv.exit

_ZNK6hermes6bigint12ParsedBigInt8getBytesEv.exit: ; preds = %bb.d, %.critedge.thread.i.i
  %.sroa.3.0.i.i = phi i32 [ %i.bk, %.critedge.thread.i.i ], [ 0, %bb.d ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK6hermes6bigint12ParsedBigInt8getBytesEv.exit
  %.sroa.5.0.insert.ext = zext i32 %.sroa.3.0.i.i to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.034 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.ak, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.aj, align 8, !tbaa !129
  br label %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE9push_backEOS2_.exit

bb.h:                                             ; preds = %_ZNK6hermes6bigint12ParsedBigInt8getBytesEv.exit
  %i.bm = ptrtoint ptr %i.ak to i64
  %i.bn = ptrtoint ptr %i.am to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 6 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.i, label %_ZNKSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.al, ptr %i.ae, align 8
  store ptr %i.am, ptr %0, align 8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #19
  unreachable

_ZNKSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #18 ; 4 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 2 uses
  %.sroa.5.0.insert.ext13 = zext i32 %.sroa.3.0.i.i to i64
  %.sroa.5.0.insert.shift14 = shl nuw i64 %.sroa.5.0.insert.ext13, 32
  %.sroa.0.0.insert.ext9 = zext i32 %.034 to i64
  %.sroa.0.0.insert.insert11 = or disjoint i64 %.sroa.5.0.insert.shift14, %.sroa.0.0.insert.ext9
  store i64 %.sroa.0.0.insert.insert11, ptr %i.bx, align 4
  %i.by = icmp sgt i64 %i.bo, 0
  br i1 %i.by, label %bb.j, label %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bw, ptr align 4 %i.am, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.bo) #17
  br label %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.bz, ptr %i.aj, align 8, !tbaa !129
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  br label %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.g, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.cb = phi ptr [ %i.bl, %bb.g ], [ %i.bz, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.cc = phi ptr [ %i.am, %bb.g ], [ %i.bw, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %i.cd = phi ptr [ %i.al, %bb.g ], [ %i.ca, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ce = add i32 %.sroa.3.0.i.i, %.034
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.020.031, i64 24 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %.sroa.10.032
  br i1 %i.cg, label %bb.l, label %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit

bb.l:                                             ; preds = %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE9push_backEOS2_.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.13.033, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !131 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 504
  br label %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit

_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit: ; preds = %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE9push_backEOS2_.exit, %bb.l
  %.sroa.020.1 = phi ptr [ %i.ci, %bb.l ], [ %i.cf, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %i.cj, %bb.l ], [ %.sroa.10.032, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE9push_backEOS2_.exit ]
  %.sroa.13.1 = phi ptr [ %i.ch, %bb.l ], [ %.sroa.13.033, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE9push_backEOS2_.exit ]
  %.not = icmp eq ptr %.sroa.020.1, %i.n
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes6bigint19UniquingBigIntTable15getDigitsBufferEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) local_unnamed_addr #5 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123, !noalias !132 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !123, !noalias !135 ; 2 uses
  %.not16 = icmp eq ptr %i.b, %i.d
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !132
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !125, !noalias !132
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
  %.sroa.10.030.i4.i36 = phi i64 [ %i.o, %.lr.ph37 ], [ %i.x, %.lr.ph.i ]
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
  %.sroa.5.028.i.i = phi i64 [ %i.o, %bb.c ], [ %.sroa.10.030.i4.i36, %.critedge.i.loopexit.i ], [ 1, %.lr.ph.i..critedge.thread.i.i.loopexit_crit_edge ], [ 1, %.lr.ph.i.preheader ]
  %.sroa.10.026.i.i = phi i64 [ %i.o, %bb.c ], [ %i.x, %.critedge.i.loopexit.i ], [ 0, %.lr.ph.i..critedge.thread.i.i.loopexit_crit_edge ], [ 0, %.lr.ph.i.preheader ]
  %i.ae = phi i8 [ %i.t, %bb.c ], [ %.pre.i, %.critedge.i.loopexit.i ], [ 0, %.lr.ph.i..critedge.thread.i.i.loopexit_crit_edge ], [ 0, %.lr.ph.i.preheader ]
  %i.af = icmp eq i8 %i.ae, %i.t
  %.sroa.3.0.copyload4.i.i = select i1 %i.af, i64 %.sroa.10.026.i.i, i64 %.sroa.5.028.i.i
  br label %_ZNK6hermes6bigint12ParsedBigInt8getBytesEv.exit

_ZNK6hermes6bigint12ParsedBigInt8getBytesEv.exit: ; preds = %bb.b, %.critedge.thread.i.i
  %.sroa.3.0.i.i = phi i64 [ %.sroa.3.0.copyload4.i.i, %.critedge.thread.i.i ], [ 0, %bb.b ]
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !138
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.3.0.i.i
  %i.ai = load ptr, ptr %0, align 8, !tbaa !138   ; 2 uses
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
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !131 ; 2 uses
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

end_hunk_0
begin_hunk_1_@_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false)
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  store ptr %i.ad, ptr %0, align 8, !tbaa !45
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !7
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !7
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !39
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !39
  store ptr %i.ae, ptr %1, align 8, !tbaa !45
  store i64 0, ptr %i.al, align 8, !tbaa !39
  store i8 0, ptr %i.ae, align 8, !tbaa !7
  store i8 1, ptr %i.a, align 8, !tbaa !36
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN4llvh5APIntC1EjNS_9StringRefEh(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, ptr, i64, i8 noundef zeroext) unnamed_addr #6

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

declare void @_ZN4llvh5APInt5tcAndEPmPKmj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZN4llvh5APInt4tcOrEPmPKmj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZN4llvh5APInt5tcXorEPmPKmj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !71   ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not46 = icmp ult i64 %i.j, %i.c
  br i1 %.not46, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.i, %i.k                       ; 10 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1                     ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f, !prof !104

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !7
  store i8 %i.s, ptr %i.g, align 1, !tbaa !7
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !71
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !71
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !104

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !7
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !7
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.q, label %bb.k, label %bb.l, !prof !104

bb.k:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  %i.ac = icmp eq i64 %i.c, 1
  br i1 %i.ac, label %bb.m, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %2, align 1, !tbaa !7
  store i8 %i.ad, ptr %1, align 1, !tbaa !7
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ae = icmp eq i64 %i.l, 1
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !104

bb.n:                                             ; preds = %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.p, label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !7
  store i8 %i.ak, ptr %i.g, align 1, !tbaa !7
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = sub nuw i64 %i.c, %i.l
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !71
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 3 uses
  store ptr %i.an, ptr %i.f, align 8, !tbaa !71
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !104

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.ae, label %bb.s, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %1, align 1, !tbaa !7
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !7
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !71
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !71
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !104

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1, !tbaa !7
  store i8 %i.au, ptr %1, align 1, !tbaa !7
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8, !tbaa !69    ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #19
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %4

4:                                                ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %5 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #18
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %4
  %6 = phi ptr [ %5, %4 ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %7 = ptrtoint ptr %1 to i64                     ; 2 uses
  %8 = sub i64 %7, %i.aw                          ; 4 uses
  %9 = icmp sgt i64 %8, 1
  br i1 %9, label %bb.y, label %bb.z, !prof !104

bb.y:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %6, ptr align 1 %i.av, i64 %8, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.be = icmp eq i64 %8, 1
  br i1 %i.be, label %bb.aa, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.aa:                                            ; preds = %bb.z
  %i.bf = load i8, ptr %i.av, align 1, !tbaa !7
  store i8 %i.bf, ptr %6, align 1, !tbaa !7
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.y, %bb.z, %bb.aa
  %i.bg = getelementptr inbounds i8, ptr %6, i64 %8 ; 3 uses
  %i.bh = icmp sgt i64 %i.c, 1
  br i1 %i.bh, label %bb.ab, label %bb.ac, !prof !104

bb.ab:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49

bb.ac:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bi = icmp eq i64 %i.c, 1
  br i1 %i.bi, label %bb.ad, label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49

bb.ad:                                            ; preds = %bb.ac
  %i.bj = load i8, ptr %2, align 1, !tbaa !7
  store i8 %i.bj, ptr %i.bg, align 1, !tbaa !7
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49

_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49: ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 %i.c ; 3 uses
  %i.bl = sub i64 %i.i, %7                        ; 4 uses
  %i.bm = icmp sgt i64 %i.bl, 1
  br i1 %i.bm, label %bb.ae, label %bb.af, !prof !104

bb.ae:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr align 1 %1, i64 %i.bl, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.af:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49
  %i.bn = icmp eq i64 %i.bl, 1
  br i1 %i.bn, label %bb.ag, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.ag:                                            ; preds = %bb.af
  %i.bo = load i8, ptr %1, align 1, !tbaa !7
  store i8 %i.bo, ptr %i.bk, align 1, !tbaa !7
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50: ; preds = %bb.ae, %bb.af, %bb.ag
  %i.bp = getelementptr inbounds i8, ptr %i.bk, i64 %i.bl
  %.not.i51 = icmp eq ptr %i.av, null
  br i1 %.not.i51, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50
  %i.bq = sub i64 %i.h, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bq) #17
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50, %bb.ah
  store ptr %6, ptr %0, align 8, !tbaa !69
  store ptr %i.bp, ptr %i.f, align 8, !tbaa !71
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 %i.bd
  store ptr %i.br, ptr %i.d, align 8, !tbaa !72
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { builtin nounwind allocsize(0) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!13, !4, i64 8}
!13 = !{!"_ZTSN4llvh5APIntE", !5, i64 0, !4, i64 8}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !5, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSN4llvh15SmallVectorBaseE", !18, i64 0, !4, i64 8, !4, i64 12}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!17, !4, i64 12}
!20 = !{!17, !4, i64 8}
!21 = !{!22, !28, i64 48}
!22 = !{!"_ZTSN6hermes6bigint10TmpStorageE", !23, i64 0, !28, i64 48}
!23 = !{!"_ZTSN4llvh11SmallVectorImLj4EEE", !24, i64 0, !27, i64 16}
!24 = !{!"_ZTSN4llvh15SmallVectorImplImEE", !25, i64 0}
!25 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseImLb1EEE", !26, i64 0}
!26 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonImvEE", !17, i64 0}
!27 = !{!"_ZTSN4llvh18SmallVectorStorageImLj4EEE", !5, i64 0}
!28 = !{!"p1 long", !18, i64 0}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN6hermes6bigint12_GLOBAL__N_113copyAndNegateENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE: argument 0"}
!31 = distinct !{!31, !"_ZN6hermes6bigint12_GLOBAL__N_113copyAndNegateENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE"}
!32 = distinct !{!32, !9}
!33 = !{!34, !35, i64 0}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !35, i64 0}
!35 = !{!"p1 omnipotent char", !18, i64 0}
!36 = !{!37, !38, i64 32}
!37 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !5, i64 0, !38, i64 32}
!38 = !{!"bool", !5, i64 0}
!39 = !{!40, !11, i64 8}
!40 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !34, i64 0, !11, i64 8, !5, i64 16}
!41 = !{!42, !42, i64 0}
!42 = !{!"_ZTSN6hermes6bigint10ParsedSignE", !5, i64 0}
!43 = distinct !{!43, !9}
!44 = distinct !{!44, !9}
!45 = !{!40, !35, i64 0}
!46 = distinct !{!46, !9}
!47 = distinct !{!47, !9}
!48 = distinct !{!48, !9}
!49 = distinct !{!49, !9}
!50 = !{!51, !51, i64 0}
!51 = !{!"char16_t", !5, i64 0}
!52 = distinct !{!52, !9}
!53 = distinct !{!53, !9}
!54 = distinct !{!54, !9}
!55 = distinct !{!55, !9}
!56 = distinct !{!56, !9}
!57 = distinct !{!57, !9}
!58 = !{!59, !38, i64 24}
!59 = !{!"_ZTSSt22_Optional_payload_baseIN6hermes6bigint12ParsedBigIntEE", !5, i64 0, !38, i64 24}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZN6hermes6bigint12_GLOBAL__N_116parsedBigIntFromINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEES6_EESt8optionalISt6vectorIhSaIhEEET0_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!62 = distinct !{!62, !"_ZN6hermes6bigint12_GLOBAL__N_116parsedBigIntFromINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEES6_EESt8optionalISt6vectorIhSaIhEEET0_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!63 = !{i8 0, i8 2}
!64 = !{}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZNK4llvh8ArrayRefIhEcvSt6vectorIhSaIhEEEv: argument 0"}
!67 = distinct !{!67, !"_ZNK4llvh8ArrayRefIhEcvSt6vectorIhSaIhEEEv"}
!68 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!69 = !{!70, !35, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!71 = !{!70, !35, i64 8}
!72 = !{!70, !35, i64 16}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZN6hermes6bigint12_GLOBAL__N_116parsedBigIntFromINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEES6_EESt8optionalISt6vectorIhSaIhEEET0_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!75 = distinct !{!75, !"_ZN6hermes6bigint12_GLOBAL__N_116parsedBigIntFromINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIDsEEEES6_EESt8optionalISt6vectorIhSaIhEEET0_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZNK4llvh8ArrayRefIhEcvSt6vectorIhSaIhEEEv: argument 0"}
!78 = distinct !{!78, !"_ZNK4llvh8ArrayRefIhEcvSt6vectorIhSaIhEEEv"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN6hermes6bigint12_GLOBAL__N_116parsedBigIntFromINS1_18NumericValueParserEN4llvh9StringRefEEESt8optionalISt6vectorIhSaIhEEET0_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!81 = distinct !{!81, !"_ZN6hermes6bigint12_GLOBAL__N_116parsedBigIntFromINS1_18NumericValueParserEN4llvh9StringRefEEESt8optionalISt6vectorIhSaIhEEET0_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZNK4llvh8ArrayRefIhEcvSt6vectorIhSaIhEEEv: argument 0"}
!84 = distinct !{!84, !"_ZNK4llvh8ArrayRefIhEcvSt6vectorIhSaIhEEEv"}
!85 = distinct !{!85, !9}
!86 = distinct !{!86, !9}
!87 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!88 = distinct !{null}
!89 = distinct !{ptr @_ZN4llvh5APInt14tcSubtractPartEPmmj, ptr @_ZN4llvh5APInt9tcAddPartEPmmj, null}
!90 = !{!91, !28, i64 0}
!91 = !{!"_ZTSN6hermes6bigint16MutableBigIntRefE", !28, i64 0, !92, i64 8}
!92 = !{!"p1 int", !18, i64 0}
!93 = !{!91, !92, i64 8}
!94 = !{i64 4}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN6hermes6bigint12_GLOBAL__N_113copyAndNegateENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE: argument 0"}
!97 = distinct !{!97, !"_ZN6hermes6bigint12_GLOBAL__N_113copyAndNegateENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN6hermes6bigint12_GLOBAL__N_113copyAndNegateENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE: argument 0"}
!100 = distinct !{!100, !"_ZN6hermes6bigint12_GLOBAL__N_113copyAndNegateENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE"}
!101 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!102 = !{!92, !92, i64 0}
!103 = !{!28, !28, i64 0}
!104 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!105 = distinct !{!105, !9}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE: argument 0"}
!108 = distinct !{!108, !"_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE: argument 0"}
!111 = distinct !{!111, !"_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE"}
!112 = !{!113, !115}
!113 = distinct !{!113, !114, !"_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE: argument 0"}
!114 = distinct !{!114, !"_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE"}
!115 = distinct !{!115, !116, !"_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_: argument 0"}
!116 = distinct !{!116, !"_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_"}
!117 = !{ptr @_ZN4llvh5APInt11tcShiftLeftEPmjj, ptr @_ZN6hermes6bigint12_GLOBAL__N_123signedRightShiftAdapterEPmjj}
!118 = !{!119, !121, i64 24}
!119 = !{!"_ZTSSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERS2_PS2_E", !120, i64 0, !120, i64 8, !120, i64 16, !121, i64 24}
!120 = !{!"p1 _ZTSN6hermes6bigint12ParsedBigIntE", !18, i64 0}
!121 = !{!"p2 _ZTSN6hermes6bigint12ParsedBigIntE", !122, i64 0}
!122 = !{!"any p2 pointer", !18, i64 0}
!123 = !{!119, !120, i64 0}
!124 = !{!119, !120, i64 8}
!125 = !{!119, !120, i64 16}
!126 = !{!127, !128, i64 0}
!127 = !{!"_ZTSNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE17_Vector_impl_dataE", !128, i64 0, !128, i64 8, !128, i64 16}
!128 = !{!"p1 _ZTSN6hermes6bigint16BigIntTableEntryE", !18, i64 0}
!129 = !{!127, !128, i64 8}
!130 = !{!127, !128, i64 16}
!131 = !{!120, !120, i64 0}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZNKSt5dequeIN6hermes6bigint12ParsedBigIntESaIS2_EE5beginEv: argument 0"}
!134 = distinct !{!134, !"_ZNKSt5dequeIN6hermes6bigint12ParsedBigIntESaIS2_EE5beginEv"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZNKSt5dequeIN6hermes6bigint12ParsedBigIntESaIS2_EE3endEv: argument 0"}
!137 = distinct !{!137, !"_ZNKSt5dequeIN6hermes6bigint12ParsedBigIntESaIS2_EE3endEv"}
!138 = !{!35, !35, i64 0}
end_hunk_1
