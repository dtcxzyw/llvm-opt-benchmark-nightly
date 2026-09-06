Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/bin?download=true
inline.NumInlined: 9528
inline.NumDeleted: 2666
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 525
loop-unroll.NumUnrolled: 528
begin_hunk_0_@_ZNK8LightGBM9SparseBinIhE23ConstructHistogramInt32EiiPKfPd:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.p = icmp slt i32 %storemerge.i.i, %1
  br i1 %i.p, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK8LightGBM9SparseBinIhE9InitIndexEiPiS2_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i32, ptr %i.q, align 8, !tbaa !164  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %smax.i = tail call i32 @llvm.smax.i32(i32 %storemerge7.i.i, i32 %i.r) ; 3 uses
  %wide.trip.count.i = sext i32 %smax.i to i64
  %exitcond.not.i12.not = icmp slt i32 %storemerge7.i.i, %i.r
  br i1 %exitcond.not.i12.not, label %.lr.ph, label %.critedge.i

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.t = sext i32 %storemerge7.i.i to i64
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.d, !llvm.loop !646

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.024.i14 = phi i32 [ %storemerge.i.i, %.lr.ph ], [ %i.y, %bb.c ]
  %indvars.iv.i13 = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next.i, %bb.c ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i13, 1 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.next.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !57
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %.024.i14, %i.x              ; 4 uses
  %i.z = icmp slt i32 %i.y, %1
  br i1 %i.z, label %bb.c, label %.critedge.loopexit.split.loop.exit.i, !llvm.loop !646

.critedge.loopexit.split.loop.exit.i:             ; preds = %bb.d
  %indvars.le.i = trunc i64 %indvars.iv.next.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %.critedge.loopexit.split.loop.exit.i, %_ZNK8LightGBM9SparseBinIhE9InitIndexEiPiS2_.exit.i
  %.021.lcssa.i = phi i32 [ %storemerge7.i.i, %_ZNK8LightGBM9SparseBinIhE9InitIndexEiPiS2_.exit.i ], [ %indvars.le.i, %.critedge.loopexit.split.loop.exit.i ], [ %smax.i, %.lr.ph.i ], [ %smax.i, %bb.c ]
  %.0.lcssa.i = phi i32 [ %storemerge.i.i, %_ZNK8LightGBM9SparseBinIhE9InitIndexEiPiS2_.exit.i ], [ %i.y, %.critedge.loopexit.split.loop.exit.i ], [ %storemerge.i.i, %.lr.ph.i ], [ %i.y, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = icmp slt i32 %.0.lcssa.i, %2
  br i1 %i.ab, label %.lr.ph31.i, label %_ZNK8LightGBM9SparseBinIhE26ConstructIntHistogramInnerILb0ElijLi32EEEviiPKfPd.exit

.lr.ph31.i:                                       ; preds = %.critedge.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = sext i32 %.021.lcssa.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph31.i
  %indvars.iv34.i = phi i64 [ %i.ae, %.lr.ph31.i ], [ %indvars.iv.next35.i, %bb.f ] ; 3 uses
  %.130.i = phi i32 [ %.0.lcssa.i, %.lr.ph31.i ], [ %i.bb, %bb.f ] ; 2 uses
  %i.af = load i32, ptr %i.aa, align 8, !tbaa !164
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv34.i, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNK8LightGBM9SparseBinIhE26ConstructIntHistogramInnerILb0ElijLi32EEEviiPKfPd.exit

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !60
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv34.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !57
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 1                ; 2 uses
  %i.an = sext i32 %.130.i to i64
  %i.ao = getelementptr inbounds i8, ptr %3, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !57
  %i.aq = sext i8 %i.ap to i32
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.am ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !58
  %i.at = add nsw i32 %i.as, %i.aq
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !58
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.am ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !58
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !58
  %indvars.iv.next35.i = add nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !60
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv.next35.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !57
  %i.ba = zext i8 %i.az to i32
  %i.bb = add nsw i32 %.130.i, %i.ba              ; 2 uses
  %i.bc = icmp slt i32 %i.bb, %2
  br i1 %i.bc, label %bb.e, label %_ZNK8LightGBM9SparseBinIhE26ConstructIntHistogramInnerILb0ElijLi32EEEviiPKfPd.exit, !llvm.loop !647

_ZNK8LightGBM9SparseBinIhE26ConstructIntHistogramInnerILb0ElijLi32EEEviiPKfPd.exit: ; preds = %bb.e, %bb.f, %.critedge.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i32 @_ZNK8LightGBM9SparseBinIhE5SplitEjjjjNS_11MissingTypeEbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11) unnamed_addr #1 comdat align 2 {
bb.a:
  switch i32 %5, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @_ZNK8LightGBM9SparseBinIhE10SplitInnerILb0ELb0ELb0ELb0ELb1EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %3, %4
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call noundef i32 @_ZNK8LightGBM9SparseBinIhE10SplitInnerILb1ELb0ELb1ELb0ELb1EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %3, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.d = tail call noundef i32 @_ZNK8LightGBM9SparseBinIhE10SplitInnerILb1ELb0ELb0ELb0ELb1EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.e = add i32 %4, %1
  %i.f = icmp eq i32 %2, %i.e
  %i.g = icmp ne i32 %4, 0
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = tail call noundef i32 @_ZNK8LightGBM9SparseBinIhE10SplitInnerILb0ELb1ELb0ELb1ELb1EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.i = tail call noundef i32 @_ZNK8LightGBM9SparseBinIhE10SplitInnerILb0ELb1ELb0ELb0ELb1EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.a, %bb.b ], [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ %i.h, %bb.g ], [ %i.i, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i32 @_ZNK8LightGBM9SparseBinIhE16SplitCategoricalEjjjPKjiPKiiPiS6_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK8LightGBM9SparseBinIhE21SplitCategoricalInnerILb1EEEijjjPKjiPKiiPiS7_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i32 @_ZNK8LightGBM9SparseBinIhE5SplitEjjjNS_11MissingTypeEbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10) unnamed_addr #1 comdat align 2 {
bb.a:
  switch i32 %4, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @_ZNK8LightGBM9SparseBinIhE10SplitInnerILb0ELb0ELb0ELb0ELb0EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, %3
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call noundef i32 @_ZNK8LightGBM9SparseBinIhE10SplitInnerILb1ELb0ELb1ELb0ELb0EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %2, i1 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.d = tail call noundef i32 @_ZNK8LightGBM9SparseBinIhE10SplitInnerILb1ELb0ELb0ELb0ELb0EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.e = add i32 %3, 1
  %i.f = icmp eq i32 %1, %i.e
  %i.g = icmp ne i32 %3, 0
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = tail call noundef i32 @_ZNK8LightGBM9SparseBinIhE10SplitInnerILb0ELb1ELb0ELb1ELb0EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.i = tail call noundef i32 @_ZNK8LightGBM9SparseBinIhE10SplitInnerILb0ELb1ELb0ELb0ELb0EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.a, %bb.b ], [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ %i.h, %bb.g ], [ %i.i, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i32 @_ZNK8LightGBM9SparseBinIhE16SplitCategoricalEjjPKjiPKiiPiS6_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK8LightGBM9SparseBinIhE21SplitCategoricalInnerILb0EEEijjjPKjiPKiiPiS7_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8LightGBM9SparseBinIhE10FinishLoadEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !140  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !141  ; 17 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %1 = sdiv exact i64 %i.g, 24                    ; 4 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge32.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %1, 1
  %i.h = icmp eq i64 %i.g, 24
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, -2
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.028.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bn, %._crit_edge.unr-lcssa ]
  %.02127.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bo, %._crit_edge.unr-lcssa ]
  %lcmp.mod54 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.02127.epil.init ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !146
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !144
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = add i64 %i.p, %.028.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa = phi i64 [ %i.bn, %._crit_edge.unr-lcssa ], [ %i.q, %.lr.ph.epil.preheader ] ; 4 uses
  %i.r = icmp ugt i64 %.lcssa, 1152921504606846975
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #39
  unreachable

bb.c:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !145
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !144  ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %i.z = icmp ult i64 %i.y, %.lcssa
  br i1 %i.z, label %_ZNSt12_Vector_baseISt4pairIihESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt4pairIihESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseISt4pairIihESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !146
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.w
  %i.ae = shl nuw nsw i64 %.lcssa, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #38 ; 5 uses
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !144 ; 5 uses
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !146 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairIihESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseISt4pairIihESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.af, %_ZNSt12_Vector_baseISt4pairIihESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %i.ag, %_ZNSt12_Vector_baseISt4pairIihESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %i.ai = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !654, !noalias !653
  store i64 %i.ai, ptr %.012.i.i.i.i, align 4, !alias.scope !653, !noalias !654
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIihESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt6vectorISt4pairIihESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIihESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ag, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt4pairIihESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIihESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !145
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ag to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ao) #37
  br label %_ZNSt12_Vector_baseISt4pairIihESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseISt4pairIihESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt4pairIihESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.af, ptr %i.d, align 8, !tbaa !144
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store ptr %i.ap, ptr %i.aa, align 8, !tbaa !146
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.lcssa
  store ptr %i.aq, ptr %i.s, align 8, !tbaa !145
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !140
  %.pre33 = load ptr, ptr %i.a, align 8, !tbaa !141 ; 2 uses
  %.pre36 = ptrtoint ptr %.pre to i64
  %.pre37 = ptrtoint ptr %.pre33 to i64
  %.pre39 = sub i64 %.pre36, %.pre37
  %.pre41 = sdiv exact i64 %.pre39, 24
  br label %_ZNSt6vectorISt4pairIihESaIS1_EE7reserveEm.exit

_ZNSt6vectorISt4pairIihESaIS1_EE7reserveEm.exit:  ; preds = %bb.c, %_ZNSt12_Vector_baseISt4pairIihESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %.pre-phi42 = phi i64 [ %1, %bb.c ], [ %.pre41, %_ZNSt12_Vector_baseISt4pairIihESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.ar = phi ptr [ %i.u, %bb.c ], [ %i.af, %_ZNSt12_Vector_baseISt4pairIihESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.as = phi ptr [ %i.d, %bb.c ], [ %.pre33, %_ZNSt12_Vector_baseISt4pairIihESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.at = icmp ugt i64 %.pre-phi42, 1
  br i1 %i.at, label %.lr.ph31, label %._crit_edge32

.lr.ph31:                                         ; preds = %_ZNSt6vectorISt4pairIihESaIS1_EE7reserveEm.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.028 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bn, %.lr.ph ]
  %.02127 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bo, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.02127 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !146
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !144
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %i.bd = add i64 %i.bc, %.028
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.02127 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !146
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !144
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3
  %i.bn = add i64 %i.bm, %i.bd                    ; 3 uses
  %i.bo = add nuw i64 %.02127, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !651

._crit_edge32.sink.split:                         ; preds = %_ZNSt6vectorISt4pairIihESaIS1_EE13shrink_to_fitEv.exit, %bb.a
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !174
  br label %._crit_edge32

._crit_edge32:                                    ; preds = %._crit_edge32.sink.split, %_ZNSt6vectorISt4pairIihESaIS1_EE7reserveEm.exit
  %i.bq = phi ptr [ %i.ar, %_ZNSt6vectorISt4pairIihESaIS1_EE7reserveEm.exit ], [ %i.bp, %._crit_edge32.sink.split ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !174 ; 4 uses
  %.not.i.i = icmp eq ptr %i.bq, %i.bs
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIihESt6vectorIS3_SaIS3_EEEEZN8LightGBM9SparseBinIhE10FinishLoadEvEUlRKS3_SD_E_EvT_SF_T0_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge32
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 3
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = shl nuw nsw i64 %i.bx, 1
  %i.bz = xor i64 %i.by, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIihESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN8LightGBM9SparseBinIhE10FinishLoadEvEUlRKS3_SF_E_EEEvT_SI_T0_T1_(ptr %i.bq, ptr %i.bs, i64 noundef %i.bz)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIihESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8LightGBM9SparseBinIhE10FinishLoadEvEUlRKS3_SF_E_EEEvT_SI_T0_(ptr %i.bq, ptr %i.bs)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIihESt6vectorIS3_SaIS3_EEEEZN8LightGBM9SparseBinIhE10FinishLoadEvEUlRKS3_SD_E_EvT_SF_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIihESt6vectorIS3_SaIS3_EEEEZN8LightGBM9SparseBinIhE10FinishLoadEvEUlRKS3_SD_E_EvT_SF_T0_.exit: ; preds = %._crit_edge32, %bb.e
  tail call void @_ZN8LightGBM9SparseBinIhE12LoadFromPairERKSt6vectorISt4pairIihESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  ret void

bb.f:                                             ; preds = %.lr.ph31, %_ZNSt6vectorISt4pairIihESaIS1_EE13shrink_to_fitEv.exit
  %i.ca = phi ptr [ %i.as, %.lr.ph31 ], [ %i.cu, %_ZNSt6vectorISt4pairIihESaIS1_EE13shrink_to_fitEv.exit ]
  %.02230 = phi i64 [ 1, %.lr.ph31 ], [ %i.cv, %_ZNSt6vectorISt4pairIihESaIS1_EE13shrink_to_fitEv.exit ] ; 3 uses
  %i.cb = load ptr, ptr %i.au, align 8, !tbaa !174
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %.02230 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !174
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !174
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !174 ; 2 uses
  %i.ch = ptrtoint ptr %i.cb to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = getelementptr inbounds i8, ptr %i.cg, i64 %i.cj
  tail call void @_ZNSt6vectorISt4pairIihESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEvS8_T_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.ck, ptr %i.cd, ptr %i.cf)
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !141 ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %.02230 ; 4 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !144 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !146
  %.not.i.i23 = icmp eq ptr %i.cp, %i.cn
  br i1 %.not.i.i23, label %_ZNSt6vectorISt4pairIihESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPSt4pairIihES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairIihES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.f
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !146
  br label %_ZNSt6vectorISt4pairIihESaIS1_EE5clearEv.exit

_ZNSt6vectorISt4pairIihESaIS1_EE5clearEv.exit:    ; preds = %bb.f, %_ZSt8_DestroyIPSt4pairIihES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !145
  %i.cs = icmp eq ptr %i.cr, %i.cn
  br i1 %i.cs, label %_ZNSt6vectorISt4pairIihESaIS1_EE13shrink_to_fitEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIihESaIS1_EE5clearEv.exit
  %i.ct = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt4pairIihESaIS2_EELb1EE8_S_do_itERS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.cm) #19 ; 0 uses
  %.pre34 = load ptr, ptr %i.a, align 8, !tbaa !141
  br label %_ZNSt6vectorISt4pairIihESaIS1_EE13shrink_to_fitEv.exit

_ZNSt6vectorISt4pairIihESaIS1_EE13shrink_to_fitEv.exit: ; preds = %_ZNSt6vectorISt4pairIihESaIS1_EE5clearEv.exit, %bb.g
  %i.cu = phi ptr [ %i.cl, %_ZNSt6vectorISt4pairIihESaIS1_EE5clearEv.exit ], [ %.pre34, %bb.g ] ; 2 uses
  %i.cv = add nuw i64 %.02230, 1                  ; 2 uses
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !140
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = sdiv exact i64 %i.cz, 24
  %i.db = icmp ult i64 %i.cv, %i.da
  br i1 %i.db, label %bb.f, label %._crit_edge32.sink.split, !llvm.loop !652
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZN8LightGBM9SparseBinIhE5CloneEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #38 ; 3 uses
  invoke void @_ZN8LightGBM9SparseBinIhEC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(124) %i.a, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #37
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define noalias noundef ptr @_ZNK8LightGBM9SparseBinIhE14GetColWiseDataEPhPbPSt6vectorIPNS_11BinIteratorESaIS6_EEi(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 1, ptr %2, align 1, !tbaa !95
  store i8 8, ptr %1, align 1, !tbaa !57
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN8LightGBM11BinIteratorESaIS2_EE12emplace_backIJPNS0_17SparseBinIteratorIhEEEEERS2_DpOT_.exit, %bb.a
  ret ptr null

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN8LightGBM11BinIteratorESaIS2_EE12emplace_backIJPNS0_17SparseBinIteratorIhEEEEERS2_DpOT_.exit
  %.09 = phi i32 [ 0, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIPN8LightGBM11BinIteratorESaIS2_EE12emplace_backIJPNS0_17SparseBinIteratorIhEEEEERS2_DpOT_.exit ]
  %i.f = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #38 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN8LightGBM17SparseBinIteratorIhEE, i64 16), ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %0, ptr %i.g, align 8, !tbaa !168
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !160
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !161  ; 2 uses
  %.not = icmp eq ptr %i.h, %i.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load <2 x i32>, ptr %i.i, align 4
  %i.k = shufflevector <2 x i32> %i.j, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi <2 x i32> [ %i.k, %bb.c ], [ <i32 0, i32 -1>, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <2 x i32> %i.l, ptr %i.m, align 8, !tbaa !58
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !100  ; 4 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.f, ptr %i.n, align 8, !tbaa !102
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.p, ptr %i.d, align 8, !tbaa !100
  br label %_ZNSt6vectorIPN8LightGBM11BinIteratorESaIS2_EE12emplace_backIJPNS0_17SparseBinIteratorIhEEEEERS2_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %3, align 8, !tbaa !99     ; 4 uses
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 5 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.g, label %_ZNKSt6vectorIPN8LightGBM11BinIteratorESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #39
  unreachable

_ZNKSt6vectorIPN8LightGBM11BinIteratorESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #38 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK8LightGBM9SparseBinItE23ConstructHistogramInt32EiiPKfPd:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.p = icmp slt i32 %storemerge.i.i, %1
  br i1 %i.p, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK8LightGBM9SparseBinItE9InitIndexEiPiS2_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i32, ptr %i.q, align 8, !tbaa !193  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %smax.i = tail call i32 @llvm.smax.i32(i32 %storemerge7.i.i, i32 %i.r) ; 3 uses
  %wide.trip.count.i = sext i32 %smax.i to i64
  %exitcond.not.i12.not = icmp slt i32 %storemerge7.i.i, %i.r
  br i1 %exitcond.not.i12.not, label %.lr.ph, label %.critedge.i

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.t = sext i32 %storemerge7.i.i to i64
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.d, !llvm.loop !719

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.024.i14 = phi i32 [ %storemerge.i.i, %.lr.ph ], [ %i.y, %bb.c ]
  %indvars.iv.i13 = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next.i, %bb.c ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i13, 1 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.next.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !57
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %.024.i14, %i.x              ; 4 uses
  %i.z = icmp slt i32 %i.y, %1
  br i1 %i.z, label %bb.c, label %.critedge.loopexit.split.loop.exit.i, !llvm.loop !719

.critedge.loopexit.split.loop.exit.i:             ; preds = %bb.d
  %indvars.le.i = trunc i64 %indvars.iv.next.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %.critedge.loopexit.split.loop.exit.i, %_ZNK8LightGBM9SparseBinItE9InitIndexEiPiS2_.exit.i
  %.021.lcssa.i = phi i32 [ %storemerge7.i.i, %_ZNK8LightGBM9SparseBinItE9InitIndexEiPiS2_.exit.i ], [ %indvars.le.i, %.critedge.loopexit.split.loop.exit.i ], [ %smax.i, %.lr.ph.i ], [ %smax.i, %bb.c ]
  %.0.lcssa.i = phi i32 [ %storemerge.i.i, %_ZNK8LightGBM9SparseBinItE9InitIndexEiPiS2_.exit.i ], [ %i.y, %.critedge.loopexit.split.loop.exit.i ], [ %storemerge.i.i, %.lr.ph.i ], [ %i.y, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = icmp slt i32 %.0.lcssa.i, %2
  br i1 %i.ab, label %.lr.ph31.i, label %_ZNK8LightGBM9SparseBinItE26ConstructIntHistogramInnerILb0ElijLi32EEEviiPKfPd.exit

.lr.ph31.i:                                       ; preds = %.critedge.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = sext i32 %.021.lcssa.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph31.i
  %indvars.iv34.i = phi i64 [ %i.ae, %.lr.ph31.i ], [ %indvars.iv.next35.i, %bb.f ] ; 3 uses
  %.130.i = phi i32 [ %.0.lcssa.i, %.lr.ph31.i ], [ %i.bb, %bb.f ] ; 2 uses
  %i.af = load i32, ptr %i.aa, align 8, !tbaa !193
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv34.i, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNK8LightGBM9SparseBinItE26ConstructIntHistogramInnerILb0ElijLi32EEEviiPKfPd.exit

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !111
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv34.i
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !89
  %i.al = zext i16 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 1                ; 2 uses
  %i.an = sext i32 %.130.i to i64
  %i.ao = getelementptr inbounds i8, ptr %3, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !57
  %i.aq = sext i8 %i.ap to i32
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.am ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !58
  %i.at = add nsw i32 %i.as, %i.aq
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !58
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.am ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !58
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !58
  %indvars.iv.next35.i = add nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !60
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv.next35.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !57
  %i.ba = zext i8 %i.az to i32
  %i.bb = add nsw i32 %.130.i, %i.ba              ; 2 uses
  %i.bc = icmp slt i32 %i.bb, %2
  br i1 %i.bc, label %bb.e, label %_ZNK8LightGBM9SparseBinItE26ConstructIntHistogramInnerILb0ElijLi32EEEviiPKfPd.exit, !llvm.loop !720

_ZNK8LightGBM9SparseBinItE26ConstructIntHistogramInnerILb0ElijLi32EEEviiPKfPd.exit: ; preds = %bb.e, %bb.f, %.critedge.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i32 @_ZNK8LightGBM9SparseBinItE5SplitEjjjjNS_11MissingTypeEbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11) unnamed_addr #1 comdat align 2 {
bb.a:
  switch i32 %5, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @_ZNK8LightGBM9SparseBinItE10SplitInnerILb0ELb0ELb0ELb0ELb1EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %3, %4
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call noundef i32 @_ZNK8LightGBM9SparseBinItE10SplitInnerILb1ELb0ELb1ELb0ELb1EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %3, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.d = tail call noundef i32 @_ZNK8LightGBM9SparseBinItE10SplitInnerILb1ELb0ELb0ELb0ELb1EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.e = add i32 %4, %1
  %i.f = icmp eq i32 %2, %i.e
  %i.g = icmp ne i32 %4, 0
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = tail call noundef i32 @_ZNK8LightGBM9SparseBinItE10SplitInnerILb0ELb1ELb0ELb1ELb1EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.i = tail call noundef i32 @_ZNK8LightGBM9SparseBinItE10SplitInnerILb0ELb1ELb0ELb0ELb1EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.a, %bb.b ], [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ %i.h, %bb.g ], [ %i.i, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i32 @_ZNK8LightGBM9SparseBinItE16SplitCategoricalEjjjPKjiPKiiPiS6_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK8LightGBM9SparseBinItE21SplitCategoricalInnerILb1EEEijjjPKjiPKiiPiS7_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i32 @_ZNK8LightGBM9SparseBinItE5SplitEjjjNS_11MissingTypeEbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10) unnamed_addr #1 comdat align 2 {
bb.a:
  switch i32 %4, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @_ZNK8LightGBM9SparseBinItE10SplitInnerILb0ELb0ELb0ELb0ELb0EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, %3
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call noundef i32 @_ZNK8LightGBM9SparseBinItE10SplitInnerILb1ELb0ELb1ELb0ELb0EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %2, i1 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.d = tail call noundef i32 @_ZNK8LightGBM9SparseBinItE10SplitInnerILb1ELb0ELb0ELb0ELb0EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.e = add i32 %3, 1
  %i.f = icmp eq i32 %1, %i.e
  %i.g = icmp ne i32 %3, 0
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = tail call noundef i32 @_ZNK8LightGBM9SparseBinItE10SplitInnerILb0ELb1ELb0ELb1ELb0EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.i = tail call noundef i32 @_ZNK8LightGBM9SparseBinItE10SplitInnerILb0ELb1ELb0ELb0ELb0EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.a, %bb.b ], [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ %i.h, %bb.g ], [ %i.i, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i32 @_ZNK8LightGBM9SparseBinItE16SplitCategoricalEjjPKjiPKiiPiS6_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK8LightGBM9SparseBinItE21SplitCategoricalInnerILb0EEEijjjPKjiPKiiPiS7_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8LightGBM9SparseBinItE10FinishLoadEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !178  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !179  ; 17 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %1 = sdiv exact i64 %i.g, 24                    ; 4 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge32.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %1, 1
  %i.h = icmp eq i64 %i.g, 24
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, -2
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.028.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bn, %._crit_edge.unr-lcssa ]
  %.02127.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bo, %._crit_edge.unr-lcssa ]
  %lcmp.mod54 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.02127.epil.init ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !184
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !182
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = add i64 %i.p, %.028.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa = phi i64 [ %i.bn, %._crit_edge.unr-lcssa ], [ %i.q, %.lr.ph.epil.preheader ] ; 4 uses
  %i.r = icmp ugt i64 %.lcssa, 1152921504606846975
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #39
  unreachable

bb.c:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !183
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !182  ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %i.z = icmp ult i64 %i.y, %.lcssa
  br i1 %i.z, label %_ZNSt12_Vector_baseISt4pairIitESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt4pairIitESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseISt4pairIitESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !184
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.w
  %i.ae = shl nuw nsw i64 %.lcssa, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #38 ; 5 uses
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !182 ; 5 uses
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !184 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairIitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseISt4pairIitESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.af, %_ZNSt12_Vector_baseISt4pairIitESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %i.ag, %_ZNSt12_Vector_baseISt4pairIitESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !727)
  %i.ai = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !727, !noalias !726
  store i64 %i.ai, ptr %.012.i.i.i.i, align 4, !alias.scope !726, !noalias !727
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZNSt6vectorISt4pairIitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIitESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ag, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt4pairIitESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !183
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ag to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ao) #37
  br label %_ZNSt12_Vector_baseISt4pairIitESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseISt4pairIitESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt4pairIitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.af, ptr %i.d, align 8, !tbaa !182
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store ptr %i.ap, ptr %i.aa, align 8, !tbaa !184
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.lcssa
  store ptr %i.aq, ptr %i.s, align 8, !tbaa !183
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !178
  %.pre33 = load ptr, ptr %i.a, align 8, !tbaa !179 ; 2 uses
  %.pre36 = ptrtoint ptr %.pre to i64
  %.pre37 = ptrtoint ptr %.pre33 to i64
  %.pre39 = sub i64 %.pre36, %.pre37
  %.pre41 = sdiv exact i64 %.pre39, 24
  br label %_ZNSt6vectorISt4pairIitESaIS1_EE7reserveEm.exit

_ZNSt6vectorISt4pairIitESaIS1_EE7reserveEm.exit:  ; preds = %bb.c, %_ZNSt12_Vector_baseISt4pairIitESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %.pre-phi42 = phi i64 [ %1, %bb.c ], [ %.pre41, %_ZNSt12_Vector_baseISt4pairIitESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.ar = phi ptr [ %i.u, %bb.c ], [ %i.af, %_ZNSt12_Vector_baseISt4pairIitESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.as = phi ptr [ %i.d, %bb.c ], [ %.pre33, %_ZNSt12_Vector_baseISt4pairIitESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.at = icmp ugt i64 %.pre-phi42, 1
  br i1 %i.at, label %.lr.ph31, label %._crit_edge32

.lr.ph31:                                         ; preds = %_ZNSt6vectorISt4pairIitESaIS1_EE7reserveEm.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.028 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bn, %.lr.ph ]
  %.02127 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bo, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.02127 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !184
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !182
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %i.bd = add i64 %i.bc, %.028
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.02127 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !184
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !182
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3
  %i.bn = add i64 %i.bm, %i.bd                    ; 3 uses
  %i.bo = add nuw i64 %.02127, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !724

._crit_edge32.sink.split:                         ; preds = %_ZNSt6vectorISt4pairIitESaIS1_EE13shrink_to_fitEv.exit, %bb.a
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !203
  br label %._crit_edge32

._crit_edge32:                                    ; preds = %._crit_edge32.sink.split, %_ZNSt6vectorISt4pairIitESaIS1_EE7reserveEm.exit
  %i.bq = phi ptr [ %i.ar, %_ZNSt6vectorISt4pairIitESaIS1_EE7reserveEm.exit ], [ %i.bp, %._crit_edge32.sink.split ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !203 ; 4 uses
  %.not.i.i = icmp eq ptr %i.bq, %i.bs
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIitESt6vectorIS3_SaIS3_EEEEZN8LightGBM9SparseBinItE10FinishLoadEvEUlRKS3_SD_E_EvT_SF_T0_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge32
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 3
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = shl nuw nsw i64 %i.bx, 1
  %i.bz = xor i64 %i.by, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIitESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN8LightGBM9SparseBinItE10FinishLoadEvEUlRKS3_SF_E_EEEvT_SI_T0_T1_(ptr %i.bq, ptr %i.bs, i64 noundef %i.bz)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIitESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8LightGBM9SparseBinItE10FinishLoadEvEUlRKS3_SF_E_EEEvT_SI_T0_(ptr %i.bq, ptr %i.bs)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIitESt6vectorIS3_SaIS3_EEEEZN8LightGBM9SparseBinItE10FinishLoadEvEUlRKS3_SD_E_EvT_SF_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIitESt6vectorIS3_SaIS3_EEEEZN8LightGBM9SparseBinItE10FinishLoadEvEUlRKS3_SD_E_EvT_SF_T0_.exit: ; preds = %._crit_edge32, %bb.e
  tail call void @_ZN8LightGBM9SparseBinItE12LoadFromPairERKSt6vectorISt4pairIitESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  ret void

bb.f:                                             ; preds = %.lr.ph31, %_ZNSt6vectorISt4pairIitESaIS1_EE13shrink_to_fitEv.exit
  %i.ca = phi ptr [ %i.as, %.lr.ph31 ], [ %i.cu, %_ZNSt6vectorISt4pairIitESaIS1_EE13shrink_to_fitEv.exit ]
  %.02230 = phi i64 [ 1, %.lr.ph31 ], [ %i.cv, %_ZNSt6vectorISt4pairIitESaIS1_EE13shrink_to_fitEv.exit ] ; 3 uses
  %i.cb = load ptr, ptr %i.au, align 8, !tbaa !203
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %.02230 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !203
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !203
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !203 ; 2 uses
  %i.ch = ptrtoint ptr %i.cb to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = getelementptr inbounds i8, ptr %i.cg, i64 %i.cj
  tail call void @_ZNSt6vectorISt4pairIitESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEvS8_T_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.ck, ptr %i.cd, ptr %i.cf)
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !179 ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %.02230 ; 4 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !182 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !184
  %.not.i.i23 = icmp eq ptr %i.cp, %i.cn
  br i1 %.not.i.i23, label %_ZNSt6vectorISt4pairIitESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPSt4pairIitES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairIitES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.f
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !184
  br label %_ZNSt6vectorISt4pairIitESaIS1_EE5clearEv.exit

_ZNSt6vectorISt4pairIitESaIS1_EE5clearEv.exit:    ; preds = %bb.f, %_ZSt8_DestroyIPSt4pairIitES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !183
  %i.cs = icmp eq ptr %i.cr, %i.cn
  br i1 %i.cs, label %_ZNSt6vectorISt4pairIitESaIS1_EE13shrink_to_fitEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIitESaIS1_EE5clearEv.exit
  %i.ct = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt4pairIitESaIS2_EELb1EE8_S_do_itERS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.cm) #19 ; 0 uses
  %.pre34 = load ptr, ptr %i.a, align 8, !tbaa !179
  br label %_ZNSt6vectorISt4pairIitESaIS1_EE13shrink_to_fitEv.exit

_ZNSt6vectorISt4pairIitESaIS1_EE13shrink_to_fitEv.exit: ; preds = %_ZNSt6vectorISt4pairIitESaIS1_EE5clearEv.exit, %bb.g
  %i.cu = phi ptr [ %i.cl, %_ZNSt6vectorISt4pairIitESaIS1_EE5clearEv.exit ], [ %.pre34, %bb.g ] ; 2 uses
  %i.cv = add nuw i64 %.02230, 1                  ; 2 uses
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !178
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = sdiv exact i64 %i.cz, 24
  %i.db = icmp ult i64 %i.cv, %i.da
  br i1 %i.db, label %bb.f, label %._crit_edge32.sink.split, !llvm.loop !725
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZN8LightGBM9SparseBinItE5CloneEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #38 ; 3 uses
  invoke void @_ZN8LightGBM9SparseBinItEC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(124) %i.a, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #37
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define noalias noundef ptr @_ZNK8LightGBM9SparseBinItE14GetColWiseDataEPhPbPSt6vectorIPNS_11BinIteratorESaIS6_EEi(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 1, ptr %2, align 1, !tbaa !95
  store i8 16, ptr %1, align 1, !tbaa !57
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN8LightGBM11BinIteratorESaIS2_EE12emplace_backIJPNS0_17SparseBinIteratorItEEEEERS2_DpOT_.exit, %bb.a
  ret ptr null

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN8LightGBM11BinIteratorESaIS2_EE12emplace_backIJPNS0_17SparseBinIteratorItEEEEERS2_DpOT_.exit
  %.09 = phi i32 [ 0, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIPN8LightGBM11BinIteratorESaIS2_EE12emplace_backIJPNS0_17SparseBinIteratorItEEEEERS2_DpOT_.exit ]
  %i.f = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #38 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN8LightGBM17SparseBinIteratorItEE, i64 16), ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %0, ptr %i.g, align 8, !tbaa !198
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !160
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !161  ; 2 uses
  %.not = icmp eq ptr %i.h, %i.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load <2 x i32>, ptr %i.i, align 4
  %i.k = shufflevector <2 x i32> %i.j, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi <2 x i32> [ %i.k, %bb.c ], [ <i32 0, i32 -1>, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <2 x i32> %i.l, ptr %i.m, align 8, !tbaa !58
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !100  ; 4 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.f, ptr %i.n, align 8, !tbaa !102
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.p, ptr %i.d, align 8, !tbaa !100
  br label %_ZNSt6vectorIPN8LightGBM11BinIteratorESaIS2_EE12emplace_backIJPNS0_17SparseBinIteratorItEEEEERS2_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %3, align 8, !tbaa !99     ; 4 uses
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 5 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.g, label %_ZNKSt6vectorIPN8LightGBM11BinIteratorESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #39
  unreachable

_ZNKSt6vectorIPN8LightGBM11BinIteratorESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #38 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK8LightGBM9SparseBinIjE23ConstructHistogramInt32EiiPKfPd:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.p = icmp slt i32 %storemerge.i.i, %1
  br i1 %i.p, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK8LightGBM9SparseBinIjE9InitIndexEiPiS2_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i32, ptr %i.q, align 8, !tbaa !221  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %smax.i = tail call i32 @llvm.smax.i32(i32 %storemerge7.i.i, i32 %i.r) ; 3 uses
  %wide.trip.count.i = sext i32 %smax.i to i64
  %exitcond.not.i12.not = icmp slt i32 %storemerge7.i.i, %i.r
  br i1 %exitcond.not.i12.not, label %.lr.ph, label %.critedge.i

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.t = sext i32 %storemerge7.i.i to i64
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.d, !llvm.loop !790

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.024.i14 = phi i32 [ %storemerge.i.i, %.lr.ph ], [ %i.y, %bb.c ]
  %indvars.iv.i13 = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next.i, %bb.c ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i13, 1 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.next.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !57
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %.024.i14, %i.x              ; 4 uses
  %i.z = icmp slt i32 %i.y, %1
  br i1 %i.z, label %bb.c, label %.critedge.loopexit.split.loop.exit.i, !llvm.loop !790

.critedge.loopexit.split.loop.exit.i:             ; preds = %bb.d
  %indvars.le.i = trunc i64 %indvars.iv.next.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %.critedge.loopexit.split.loop.exit.i, %_ZNK8LightGBM9SparseBinIjE9InitIndexEiPiS2_.exit.i
  %.021.lcssa.i = phi i32 [ %storemerge7.i.i, %_ZNK8LightGBM9SparseBinIjE9InitIndexEiPiS2_.exit.i ], [ %indvars.le.i, %.critedge.loopexit.split.loop.exit.i ], [ %smax.i, %.lr.ph.i ], [ %smax.i, %bb.c ]
  %.0.lcssa.i = phi i32 [ %storemerge.i.i, %_ZNK8LightGBM9SparseBinIjE9InitIndexEiPiS2_.exit.i ], [ %i.y, %.critedge.loopexit.split.loop.exit.i ], [ %storemerge.i.i, %.lr.ph.i ], [ %i.y, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = icmp slt i32 %.0.lcssa.i, %2
  br i1 %i.ab, label %.lr.ph31.i, label %_ZNK8LightGBM9SparseBinIjE26ConstructIntHistogramInnerILb0ElijLi32EEEviiPKfPd.exit

.lr.ph31.i:                                       ; preds = %.critedge.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = sext i32 %.021.lcssa.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph31.i
  %indvars.iv34.i = phi i64 [ %i.ae, %.lr.ph31.i ], [ %indvars.iv.next35.i, %bb.f ] ; 3 uses
  %.130.i = phi i32 [ %.0.lcssa.i, %.lr.ph31.i ], [ %i.bb, %bb.f ] ; 2 uses
  %i.af = load i32, ptr %i.aa, align 8, !tbaa !221
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv34.i, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNK8LightGBM9SparseBinIjE26ConstructIntHistogramInnerILb0ElijLi32EEEviiPKfPd.exit

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !127
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv34.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !58
  %i.al = shl i32 %i.ak, 1
  %i.am = sext i32 %.130.i to i64
  %i.an = getelementptr inbounds i8, ptr %3, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !57
  %i.ap = sext i8 %i.ao to i32
  %i.aq = zext i32 %i.al to i64                   ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !58
  %i.at = add nsw i32 %i.as, %i.ap
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !58
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aq ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !58
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !58
  %indvars.iv.next35.i = add nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !60
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv.next35.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !57
  %i.ba = zext i8 %i.az to i32
  %i.bb = add nsw i32 %.130.i, %i.ba              ; 2 uses
  %i.bc = icmp slt i32 %i.bb, %2
  br i1 %i.bc, label %bb.e, label %_ZNK8LightGBM9SparseBinIjE26ConstructIntHistogramInnerILb0ElijLi32EEEviiPKfPd.exit, !llvm.loop !791

_ZNK8LightGBM9SparseBinIjE26ConstructIntHistogramInnerILb0ElijLi32EEEviiPKfPd.exit: ; preds = %bb.e, %bb.f, %.critedge.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i32 @_ZNK8LightGBM9SparseBinIjE5SplitEjjjjNS_11MissingTypeEbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11) unnamed_addr #1 comdat align 2 {
bb.a:
  switch i32 %5, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @_ZNK8LightGBM9SparseBinIjE10SplitInnerILb0ELb0ELb0ELb0ELb1EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %3, %4
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call noundef i32 @_ZNK8LightGBM9SparseBinIjE10SplitInnerILb1ELb0ELb1ELb0ELb1EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %3, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.d = tail call noundef i32 @_ZNK8LightGBM9SparseBinIjE10SplitInnerILb1ELb0ELb0ELb0ELb1EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.e = add i32 %4, %1
  %i.f = icmp eq i32 %2, %i.e
  %i.g = icmp ne i32 %4, 0
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = tail call noundef i32 @_ZNK8LightGBM9SparseBinIjE10SplitInnerILb0ELb1ELb0ELb1ELb1EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.i = tail call noundef i32 @_ZNK8LightGBM9SparseBinIjE10SplitInnerILb0ELb1ELb0ELb0ELb1EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.a, %bb.b ], [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ %i.h, %bb.g ], [ %i.i, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i32 @_ZNK8LightGBM9SparseBinIjE16SplitCategoricalEjjjPKjiPKiiPiS6_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK8LightGBM9SparseBinIjE21SplitCategoricalInnerILb1EEEijjjPKjiPKiiPiS7_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i32 @_ZNK8LightGBM9SparseBinIjE5SplitEjjjNS_11MissingTypeEbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10) unnamed_addr #1 comdat align 2 {
bb.a:
  switch i32 %4, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @_ZNK8LightGBM9SparseBinIjE10SplitInnerILb0ELb0ELb0ELb0ELb0EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, %3
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call noundef i32 @_ZNK8LightGBM9SparseBinIjE10SplitInnerILb1ELb0ELb1ELb0ELb0EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %2, i1 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.d = tail call noundef i32 @_ZNK8LightGBM9SparseBinIjE10SplitInnerILb1ELb0ELb0ELb0ELb0EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.e = add i32 %3, 1
  %i.f = icmp eq i32 %1, %i.e
  %i.g = icmp ne i32 %3, 0
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = tail call noundef i32 @_ZNK8LightGBM9SparseBinIjE10SplitInnerILb0ELb1ELb0ELb1ELb0EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.i = tail call noundef i32 @_ZNK8LightGBM9SparseBinIjE10SplitInnerILb0ELb1ELb0ELb0ELb0EEEijjjjbjPKiiPiS5_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.a, %bb.b ], [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ %i.h, %bb.g ], [ %i.i, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i32 @_ZNK8LightGBM9SparseBinIjE16SplitCategoricalEjjPKjiPKiiPiS6_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK8LightGBM9SparseBinIjE21SplitCategoricalInnerILb0EEEijjjPKjiPKiiPiS7_(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8LightGBM9SparseBinIjE10FinishLoadEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !206  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !207  ; 17 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %1 = sdiv exact i64 %i.g, 24                    ; 4 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge32.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %1, 1
  %i.h = icmp eq i64 %i.g, 24
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, -2
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.028.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bn, %._crit_edge.unr-lcssa ]
  %.02127.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bo, %._crit_edge.unr-lcssa ]
  %lcmp.mod54 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.02127.epil.init ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !212
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !210
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = add i64 %i.p, %.028.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa = phi i64 [ %i.bn, %._crit_edge.unr-lcssa ], [ %i.q, %.lr.ph.epil.preheader ] ; 4 uses
  %i.r = icmp ugt i64 %.lcssa, 1152921504606846975
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #39
  unreachable

bb.c:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !211
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !210  ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %i.z = icmp ult i64 %i.y, %.lcssa
  br i1 %i.z, label %_ZNSt12_Vector_baseISt4pairIijESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt4pairIijESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseISt4pairIijESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !212
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.w
  %i.ae = shl nuw nsw i64 %.lcssa, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #38 ; 5 uses
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !210 ; 5 uses
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !212 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairIijESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseISt4pairIijESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.af, %_ZNSt12_Vector_baseISt4pairIijESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %i.ag, %_ZNSt12_Vector_baseISt4pairIijESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798)
  %i.ai = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !798, !noalias !797
  store i64 %i.ai, ptr %.012.i.i.i.i, align 4, !alias.scope !797, !noalias !798
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIijESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZNSt6vectorISt4pairIijESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIijESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ag, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt4pairIijESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIijESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !211
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ag to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ao) #37
  br label %_ZNSt12_Vector_baseISt4pairIijESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseISt4pairIijESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt4pairIijESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.af, ptr %i.d, align 8, !tbaa !210
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store ptr %i.ap, ptr %i.aa, align 8, !tbaa !212
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.lcssa
  store ptr %i.aq, ptr %i.s, align 8, !tbaa !211
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !206
  %.pre33 = load ptr, ptr %i.a, align 8, !tbaa !207 ; 2 uses
  %.pre36 = ptrtoint ptr %.pre to i64
  %.pre37 = ptrtoint ptr %.pre33 to i64
  %.pre39 = sub i64 %.pre36, %.pre37
  %.pre41 = sdiv exact i64 %.pre39, 24
  br label %_ZNSt6vectorISt4pairIijESaIS1_EE7reserveEm.exit

_ZNSt6vectorISt4pairIijESaIS1_EE7reserveEm.exit:  ; preds = %bb.c, %_ZNSt12_Vector_baseISt4pairIijESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %.pre-phi42 = phi i64 [ %1, %bb.c ], [ %.pre41, %_ZNSt12_Vector_baseISt4pairIijESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.ar = phi ptr [ %i.u, %bb.c ], [ %i.af, %_ZNSt12_Vector_baseISt4pairIijESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.as = phi ptr [ %i.d, %bb.c ], [ %.pre33, %_ZNSt12_Vector_baseISt4pairIijESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.at = icmp ugt i64 %.pre-phi42, 1
  br i1 %i.at, label %.lr.ph31, label %._crit_edge32

.lr.ph31:                                         ; preds = %_ZNSt6vectorISt4pairIijESaIS1_EE7reserveEm.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.028 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bn, %.lr.ph ]
  %.02127 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bo, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.02127 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !212
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !210
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %i.bd = add i64 %i.bc, %.028
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.02127 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !212
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !210
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3
  %i.bn = add i64 %i.bm, %i.bd                    ; 3 uses
  %i.bo = add nuw i64 %.02127, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !795

._crit_edge32.sink.split:                         ; preds = %_ZNSt6vectorISt4pairIijESaIS1_EE13shrink_to_fitEv.exit, %bb.a
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !231
  br label %._crit_edge32

._crit_edge32:                                    ; preds = %._crit_edge32.sink.split, %_ZNSt6vectorISt4pairIijESaIS1_EE7reserveEm.exit
  %i.bq = phi ptr [ %i.ar, %_ZNSt6vectorISt4pairIijESaIS1_EE7reserveEm.exit ], [ %i.bp, %._crit_edge32.sink.split ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !231 ; 4 uses
  %.not.i.i = icmp eq ptr %i.bq, %i.bs
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEEZN8LightGBM9SparseBinIjE10FinishLoadEvEUlRKS3_SD_E_EvT_SF_T0_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge32
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 3
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = shl nuw nsw i64 %i.bx, 1
  %i.bz = xor i64 %i.by, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN8LightGBM9SparseBinIjE10FinishLoadEvEUlRKS3_SF_E_EEEvT_SI_T0_T1_(ptr %i.bq, ptr %i.bs, i64 noundef %i.bz)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8LightGBM9SparseBinIjE10FinishLoadEvEUlRKS3_SF_E_EEEvT_SI_T0_(ptr %i.bq, ptr %i.bs)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEEZN8LightGBM9SparseBinIjE10FinishLoadEvEUlRKS3_SD_E_EvT_SF_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIijESt6vectorIS3_SaIS3_EEEEZN8LightGBM9SparseBinIjE10FinishLoadEvEUlRKS3_SD_E_EvT_SF_T0_.exit: ; preds = %._crit_edge32, %bb.e
  tail call void @_ZN8LightGBM9SparseBinIjE12LoadFromPairERKSt6vectorISt4pairIijESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  ret void

bb.f:                                             ; preds = %.lr.ph31, %_ZNSt6vectorISt4pairIijESaIS1_EE13shrink_to_fitEv.exit
  %i.ca = phi ptr [ %i.as, %.lr.ph31 ], [ %i.cu, %_ZNSt6vectorISt4pairIijESaIS1_EE13shrink_to_fitEv.exit ]
  %.02230 = phi i64 [ 1, %.lr.ph31 ], [ %i.cv, %_ZNSt6vectorISt4pairIijESaIS1_EE13shrink_to_fitEv.exit ] ; 3 uses
  %i.cb = load ptr, ptr %i.au, align 8, !tbaa !231
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %.02230 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !231
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !231
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !231 ; 2 uses
  %i.ch = ptrtoint ptr %i.cb to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = getelementptr inbounds i8, ptr %i.cg, i64 %i.cj
  tail call void @_ZNSt6vectorISt4pairIijESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEvS8_T_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.ck, ptr %i.cd, ptr %i.cf)
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !207 ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %.02230 ; 4 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !210 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !212
  %.not.i.i23 = icmp eq ptr %i.cp, %i.cn
  br i1 %.not.i.i23, label %_ZNSt6vectorISt4pairIijESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPSt4pairIijES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairIijES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.f
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !212
  br label %_ZNSt6vectorISt4pairIijESaIS1_EE5clearEv.exit

_ZNSt6vectorISt4pairIijESaIS1_EE5clearEv.exit:    ; preds = %bb.f, %_ZSt8_DestroyIPSt4pairIijES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !211
  %i.cs = icmp eq ptr %i.cr, %i.cn
  br i1 %i.cs, label %_ZNSt6vectorISt4pairIijESaIS1_EE13shrink_to_fitEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIijESaIS1_EE5clearEv.exit
  %i.ct = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt4pairIijESaIS2_EELb1EE8_S_do_itERS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.cm) #19 ; 0 uses
  %.pre34 = load ptr, ptr %i.a, align 8, !tbaa !207
  br label %_ZNSt6vectorISt4pairIijESaIS1_EE13shrink_to_fitEv.exit

_ZNSt6vectorISt4pairIijESaIS1_EE13shrink_to_fitEv.exit: ; preds = %_ZNSt6vectorISt4pairIijESaIS1_EE5clearEv.exit, %bb.g
  %i.cu = phi ptr [ %i.cl, %_ZNSt6vectorISt4pairIijESaIS1_EE5clearEv.exit ], [ %.pre34, %bb.g ] ; 2 uses
  %i.cv = add nuw i64 %.02230, 1                  ; 2 uses
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = sdiv exact i64 %i.cz, 24
  %i.db = icmp ult i64 %i.cv, %i.da
  br i1 %i.db, label %bb.f, label %._crit_edge32.sink.split, !llvm.loop !796
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZN8LightGBM9SparseBinIjE5CloneEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #38 ; 3 uses
  invoke void @_ZN8LightGBM9SparseBinIjEC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(124) %i.a, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #37
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define noalias noundef ptr @_ZNK8LightGBM9SparseBinIjE14GetColWiseDataEPhPbPSt6vectorIPNS_11BinIteratorESaIS6_EEi(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 1, ptr %2, align 1, !tbaa !95
  store i8 32, ptr %1, align 1, !tbaa !57
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN8LightGBM11BinIteratorESaIS2_EE12emplace_backIJPNS0_17SparseBinIteratorIjEEEEERS2_DpOT_.exit, %bb.a
  ret ptr null

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN8LightGBM11BinIteratorESaIS2_EE12emplace_backIJPNS0_17SparseBinIteratorIjEEEEERS2_DpOT_.exit
  %.09 = phi i32 [ 0, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIPN8LightGBM11BinIteratorESaIS2_EE12emplace_backIJPNS0_17SparseBinIteratorIjEEEEERS2_DpOT_.exit ]
  %i.f = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN8LightGBM17SparseBinIteratorIjEE, i64 16), ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %0, ptr %i.g, align 8, !tbaa !226
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !160
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !161  ; 2 uses
  %.not = icmp eq ptr %i.h, %i.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load <2 x i32>, ptr %i.i, align 4
  %i.k = shufflevector <2 x i32> %i.j, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi <2 x i32> [ %i.k, %bb.c ], [ <i32 0, i32 -1>, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <2 x i32> %i.l, ptr %i.m, align 8, !tbaa !58
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !100  ; 4 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !175
  %.not.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.f, ptr %i.n, align 8, !tbaa !102
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.p, ptr %i.d, align 8, !tbaa !100
  br label %_ZNSt6vectorIPN8LightGBM11BinIteratorESaIS2_EE12emplace_backIJPNS0_17SparseBinIteratorIjEEEEERS2_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %3, align 8, !tbaa !99     ; 4 uses
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 5 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.g, label %_ZNKSt6vectorIPN8LightGBM11BinIteratorESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #39
  unreachable

_ZNKSt6vectorIPN8LightGBM11BinIteratorESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #38 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN8LightGBM9SparseBinIhEC2ERKS1_:bb.a
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !57
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !57
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 7
  %i.bj = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 7
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !57
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !57
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bl, %i.u
  br i1 %.not.i.i.7, label %.loopexit35, label %.lr.ph.i.i, !llvm.loop !1108

.loopexit35:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %.0.lcssa.i.i = phi ptr [ %i.p, %bb.c ], [ %i.ag, %vec.epilog.middle.block ], [ %i.ab, %middle.block ], [ %.lcssa102.unr.a, %.lr.ph.i.i.prol.loopexit ], [ %i.bm, %.lr.ph.i.i ]
  store ptr %.0.lcssa.i.i, ptr %i.q, align 8, !tbaa !69
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !69 ; 2 uses
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !60 ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  %.not.i.i.i.i15 = icmp eq ptr %i.bq, %i.br
  br i1 %.not.i.i.i.i15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bv = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.bu) #19
  %.not.i.i.i.i.i.i.i16 = icmp eq i32 %i.bv, 0
  %i.bw = load ptr, ptr %i.a, align 8
  %.0.i.i.i.i.i.i.i17 = select i1 %.not.i.i.i.i.i.i.i16, ptr %i.bw, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit35
  %i.bx = phi ptr [ %.0.i.i.i.i.i.i.i17, %bb.d ], [ null, %.loopexit35 ] ; 10 uses
  store ptr %i.bx, ptr %i.bn, align 8, !tbaa !60
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !69
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bu
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !162
  %i.cb = load ptr, ptr %i.bo, align 8, !tbaa !56 ; 7 uses
  %i.cc = load ptr, ptr %i.bp, align 8, !tbaa !56 ; 3 uses
  %.not13.i.i18 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not13.i.i18, label %.loopexit34, label %iter.check84

iter.check84:                                     ; preds = %bb.e
  %i.cd = ptrtoaddr ptr %i.cb to i64              ; 2 uses
  %i.ce = ptrtoaddr ptr %i.bx to i64
  %i.cf = ptrtoaddr ptr %i.cc to i64              ; 3 uses
  %i.cg = sub i64 %i.cf, %i.cd                    ; 7 uses
  %min.iters.check68 = icmp ult i64 %i.cg, 8
  %i.ch = sub i64 %i.cd, %i.ce
  %diff.check67 = icmp ugt i64 %i.ch, -32
  %or.cond100 = select i1 %min.iters.check68, i1 true, i1 %diff.check67
  br i1 %or.cond100, label %.lr.ph.i.i19.preheader, label %vector.main.loop.iter.check69

vector.main.loop.iter.check69:                    ; preds = %iter.check84
  %min.iters.check70 = icmp ult i64 %i.cg, 32
  br i1 %min.iters.check70, label %vec.epilog.ph88, label %vector.ph71

vector.ph71:                                      ; preds = %vector.main.loop.iter.check69
  %i.ci = and i64 %i.cg, 24
  %n.vec72 = and i64 %i.cg, -32                   ; 5 uses
  %i.cj = getelementptr i8, ptr %i.bx, i64 %n.vec72 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cb, i64 %n.vec72
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph71
  %index74 = phi i64 [ 0, %vector.ph71 ], [ %index.next79, %vector.body73 ] ; 3 uses
  %next.gep75 = getelementptr i8, ptr %i.bx, i64 %index74 ; 2 uses
  %next.gep76 = getelementptr i8, ptr %i.cb, i64 %index74 ; 2 uses
  %i.cl = getelementptr i8, ptr %next.gep76, i64 16
  %wide.load77 = load <16 x i8>, ptr %next.gep76, align 1, !tbaa !57
  %wide.load78 = load <16 x i8>, ptr %i.cl, align 1, !tbaa !57
  %i.cm = getelementptr i8, ptr %next.gep75, i64 16
  store <16 x i8> %wide.load77, ptr %next.gep75, align 1, !tbaa !57
  store <16 x i8> %wide.load78, ptr %i.cm, align 1, !tbaa !57
  %index.next79 = add nuw i64 %index74, 32        ; 2 uses
  %i.cn = icmp eq i64 %index.next79, %n.vec72
  br i1 %i.cn, label %middle.block80, label %vector.body73, !llvm.loop !1109

middle.block80:                                   ; preds = %vector.body73
  %cmp.n81 = icmp eq i64 %i.cg, %n.vec72
  br i1 %cmp.n81, label %.loopexit34, label %vec.epilog.iter.check86

vec.epilog.iter.check86:                          ; preds = %middle.block80
  %min.epilog.iters.check87 = icmp eq i64 %i.ci, 0
  br i1 %min.epilog.iters.check87, label %.lr.ph.i.i19.preheader, label %vec.epilog.ph88, !prof !163

vec.epilog.ph88:                                  ; preds = %vector.main.loop.iter.check69, %vec.epilog.iter.check86
  %vec.epilog.resume.val82 = phi i64 [ %n.vec72, %vec.epilog.iter.check86 ], [ 0, %vector.main.loop.iter.check69 ]
  %n.vec89 = and i64 %i.cg, -8                    ; 4 uses
  %i.co = getelementptr i8, ptr %i.bx, i64 %n.vec89 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cb, i64 %n.vec89
  br label %vec.epilog.vector.body90

vec.epilog.vector.body90:                         ; preds = %vec.epilog.vector.body90, %vec.epilog.ph88
  %index91 = phi i64 [ %vec.epilog.resume.val82, %vec.epilog.ph88 ], [ %index.next95, %vec.epilog.vector.body90 ] ; 3 uses
  %next.gep92 = getelementptr i8, ptr %i.bx, i64 %index91
  %next.gep93 = getelementptr i8, ptr %i.cb, i64 %index91
  %wide.load94 = load <8 x i8>, ptr %next.gep93, align 1, !tbaa !57
  store <8 x i8> %wide.load94, ptr %next.gep92, align 1, !tbaa !57
  %index.next95 = add nuw i64 %index91, 8         ; 2 uses
  %i.cq = icmp eq i64 %index.next95, %n.vec89
  br i1 %i.cq, label %vec.epilog.middle.block96, label %vec.epilog.vector.body90, !llvm.loop !1110

vec.epilog.middle.block96:                        ; preds = %vec.epilog.vector.body90
  %cmp.n97 = icmp eq i64 %i.cg, %n.vec89
  br i1 %cmp.n97, label %.loopexit34, label %.lr.ph.i.i19.preheader

.lr.ph.i.i19.preheader:                           ; preds = %iter.check84, %vec.epilog.iter.check86, %vec.epilog.middle.block96
  %.015.i.i20.ph = phi ptr [ %i.bx, %iter.check84 ], [ %i.cj, %vec.epilog.iter.check86 ], [ %i.co, %vec.epilog.middle.block96 ] ; 2 uses
  %.sroa.010.014.i.i21.ph = phi ptr [ %i.cb, %iter.check84 ], [ %i.ck, %vec.epilog.iter.check86 ], [ %i.cp, %vec.epilog.middle.block96 ] ; 3 uses
  %.sroa.010.014.i.i21.ph104 = ptrtoaddr ptr %.sroa.010.014.i.i21.ph to i64 ; 2 uses
  %i.cr = sub i64 %i.cf, %.sroa.010.014.i.i21.ph104
  %xtraiter105 = and i64 %i.cr, 7                 ; 2 uses
  %lcmp.mod106.not = icmp eq i64 %xtraiter105, 0
  br i1 %lcmp.mod106.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol

.lr.ph.i.i19.prol:                                ; preds = %.lr.ph.i.i19.preheader, %.lr.ph.i.i19.prol
  %.015.i.i20.prol = phi ptr [ %i.cu, %.lr.ph.i.i19.prol ], [ %.015.i.i20.ph, %.lr.ph.i.i19.preheader ] ; 2 uses
  %.sroa.010.014.i.i21.prol = phi ptr [ %i.ct, %.lr.ph.i.i19.prol ], [ %.sroa.010.014.i.i21.ph, %.lr.ph.i.i19.preheader ] ; 2 uses
  %prol.iter107 = phi i64 [ %prol.iter107.next, %.lr.ph.i.i19.prol ], [ 0, %.lr.ph.i.i19.preheader ]
  %i.cs = load i8, ptr %.sroa.010.014.i.i21.prol, align 1, !tbaa !57
  store i8 %i.cs, ptr %.015.i.i20.prol, align 1, !tbaa !57
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i21.prol, i64 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.015.i.i20.prol, i64 1 ; 3 uses
  %prol.iter107.next = add i64 %prol.iter107, 1   ; 2 uses
  %prol.iter107.cmp.not = icmp eq i64 %prol.iter107.next, %xtraiter105
  br i1 %prol.iter107.cmp.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol, !llvm.loop !1111

.lr.ph.i.i19.prol.loopexit:                       ; preds = %.lr.ph.i.i19.prol, %.lr.ph.i.i19.preheader
  %.lcssa101.unr = phi ptr [ poison, %.lr.ph.i.i19.preheader ], [ %i.cu, %.lr.ph.i.i19.prol ]
  %.015.i.i20.unr = phi ptr [ %.015.i.i20.ph, %.lr.ph.i.i19.preheader ], [ %i.cu, %.lr.ph.i.i19.prol ]
  %.sroa.010.014.i.i21.unr = phi ptr [ %.sroa.010.014.i.i21.ph, %.lr.ph.i.i19.preheader ], [ %i.ct, %.lr.ph.i.i19.prol ]
  %i.cv = sub i64 %.sroa.010.014.i.i21.ph104, %i.cf
  %i.cw = icmp ugt i64 %i.cv, -8
  br i1 %i.cw, label %.loopexit34, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i.i19.prol.loopexit, %.lr.ph.i.i19
  %.015.i.i20 = phi ptr [ %i.du, %.lr.ph.i.i19 ], [ %.015.i.i20.unr, %.lr.ph.i.i19.prol.loopexit ] ; 9 uses
  %.sroa.010.014.i.i21 = phi ptr [ %i.dt, %.lr.ph.i.i19 ], [ %.sroa.010.014.i.i21.unr, %.lr.ph.i.i19.prol.loopexit ] ; 9 uses
  %i.cx = load i8, ptr %.sroa.010.014.i.i21, align 1, !tbaa !57
  store i8 %i.cx, ptr %.015.i.i20, align 1, !tbaa !57
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i21, i64 1
  %i.cz = getelementptr inbounds nuw i8, ptr %.015.i.i20, i64 1
  %i.da = load i8, ptr %i.cy, align 1, !tbaa !57
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !57
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i21, i64 2
  %i.dc = getelementptr inbounds nuw i8, ptr %.015.i.i20, i64 2
  %i.dd = load i8, ptr %i.db, align 1, !tbaa !57
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !57
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i21, i64 3
  %i.df = getelementptr inbounds nuw i8, ptr %.015.i.i20, i64 3
  %i.dg = load i8, ptr %i.de, align 1, !tbaa !57
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !57
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i21, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %.015.i.i20, i64 4
  %i.dj = load i8, ptr %i.dh, align 1, !tbaa !57
  store i8 %i.dj, ptr %i.di, align 1, !tbaa !57
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i21, i64 5
  %i.dl = getelementptr inbounds nuw i8, ptr %.015.i.i20, i64 5
  %i.dm = load i8, ptr %i.dk, align 1, !tbaa !57
  store i8 %i.dm, ptr %i.dl, align 1, !tbaa !57
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i21, i64 6
  %i.do = getelementptr inbounds nuw i8, ptr %.015.i.i20, i64 6
  %i.dp = load i8, ptr %i.dn, align 1, !tbaa !57
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !57
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i21, i64 7
  %i.dr = getelementptr inbounds nuw i8, ptr %.015.i.i20, i64 7
  %i.ds = load i8, ptr %i.dq, align 1, !tbaa !57
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !57
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i21, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.015.i.i20, i64 8 ; 2 uses
  %.not.i.i22.7 = icmp eq ptr %i.dt, %i.cc
  br i1 %.not.i.i22.7, label %.loopexit34, label %.lr.ph.i.i19, !llvm.loop !1112

.loopexit34:                                      ; preds = %.lr.ph.i.i19.prol.loopexit, %.lr.ph.i.i19, %middle.block80, %vec.epilog.middle.block96, %bb.e
  %.0.lcssa.i.i23 = phi ptr [ %i.bx, %bb.e ], [ %i.co, %vec.epilog.middle.block96 ], [ %i.cj, %middle.block80 ], [ %.lcssa101.unr, %.lr.ph.i.i19.prol.loopexit ], [ %i.du, %.lr.ph.i.i19 ]
  store ptr %.0.lcssa.i.i23, ptr %i.by, align 8, !tbaa !69
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !164
  store i32 %i.dx, ptr %i.dv, align 8, !tbaa !164
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !140 ; 2 uses
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !141 ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i8 0, i64 24, i1 false)
  %.not.i.i.i.i25 = icmp eq ptr %i.eb, %i.ec
  br i1 %.not.i.i.i.i25, label %.noexc26, label %bb.f

bb.f:                                             ; preds = %.loopexit34
  %2 = sdiv exact i64 %i.ef, 24
  %i.eg = icmp ugt i64 %2, 384307168202282325
  br i1 %i.eg, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt4pairIihESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !262

.noexc.i.i:                                       ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #39
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorISt4pairIihESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.f
  %i.eh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #38
          to label %.noexc26 unwind label %bb.k

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt4pairIihESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, %.loopexit34
  %i.ei = phi ptr [ null, %.loopexit34 ], [ %i.eh, %_ZNSt15__new_allocatorISt6vectorISt4pairIihESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.ei, ptr %i.dy, align 8, !tbaa !141
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !140
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ef
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !256
  %i.em = load ptr, ptr %i.dz, align 8, !tbaa !1113
  %i.en = load ptr, ptr %i.ea, align 8, !tbaa !1113
  %i.eo = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt4pairIihESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.em, ptr %i.en, ptr noundef %i.ei)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc26
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = load ptr, ptr %i.dy, align 8, !tbaa !141 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.er = load ptr, ptr %i.el, align 8, !tbaa !256
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.eq to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.eu) #37
  br label %.body

bb.i:                                             ; preds = %.noexc26
  store ptr %i.eo, ptr %i.ej, align 8, !tbaa !140
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !160 ; 2 uses
  %i.ez = load ptr, ptr %i.ew, align 8, !tbaa !161 ; 2 uses
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i8 0, i64 24, i1 false)
  %.not.i.i.i.i27 = icmp eq ptr %i.ey, %i.ez
  br i1 %.not.i.i.i.i27, label %.noexc30, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fd = icmp ugt i64 %i.fc, 9223372036854775800
  br i1 %i.fd, label %.noexc.i.i28, label %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i, !prof !262

.noexc.i.i28:                                     ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #39
          to label %.noexc29 unwind label %bb.l

.noexc29:                                         ; preds = %.noexc.i.i28
  unreachable

_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.j
  %i.fe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #38
          to label %.noexc30 unwind label %bb.l

.noexc30:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i, %bb.i
  %i.ff = phi ptr [ null, %bb.i ], [ %i.fe, %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.ff, ptr %i.ev, align 8, !tbaa !161
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !160
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fc
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !255
  %i.fj = load ptr, ptr %i.ew, align 8, !tbaa !261 ; 2 uses
  %i.fk = load ptr, ptr %i.ex, align 8, !tbaa !261 ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.fj, %i.fk
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc30, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i ], [ %i.ff, %.noexc30 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i ], [ %i.fj, %.noexc30 ] ; 2 uses
  %i.fl = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4
  store i64 %i.fl, ptr %.09.i.i.i.i.i, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fm, %i.fk
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !14

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc30
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ff, %.noexc30 ], [ %i.fn, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.fg, align 8, !tbaa !160
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !159
  store i32 %i.fq, ptr %i.fo, align 8, !tbaa !159
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt4pairIihESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i28
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt4pairIihESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dy) #19
  br label %.body

.body:                                            ; preds = %bb.k, %bb.h, %bb.g, %bb.l
  %.pn = phi { ptr, i32 } [ %i.fs, %bb.l ], [ %i.fr, %bb.k ], [ %i.ep, %bb.h ], [ %i.ep, %bb.g ]
  %i.ft = load ptr, ptr %i.bn, align 8, !tbaa !60 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.body
  call void @free(ptr noundef nonnull %i.ft) #19
  br label %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEED2Ev.exit

_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEED2Ev.exit: ; preds = %bb.m, %.body
  %i.fu = load ptr, ptr %i.f, align 8, !tbaa !60  ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEED2Ev.exit33, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEED2Ev.exit
  call void @free(ptr noundef nonnull %i.fu) #19
  br label %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEED2Ev.exit33

_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEED2Ev.exit33: ; preds = %bb.n, %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEED2Ev.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt4pairIihESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not16 = icmp eq ptr %0, %1
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.018 = phi ptr [ %i.s, %.loopexit ], [ %2, %bb.a ] ; 6 uses
  %.sroa.09.017 = phi ptr [ %i.r, %.loopexit ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 2 uses
  %i.c = load ptr, ptr %.sroa.09.017, align 8, !tbaa !144 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt4pairIihEE8allocateEmPKv.exit.i.i.i.i.i, !prof !262

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #39
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairIihEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38
          to label %.noexc8 unwind label %.loopexit12

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorISt4pairIihEE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorISt4pairIihEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %.018, align 8, !tbaa !144
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !146
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !145
  %i.m = load ptr, ptr %.sroa.09.017, align 8, !tbaa !174 ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !174  ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc8, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %.noexc8 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %.noexc8 ] ; 2 uses
  %i.o = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 4
  store i64 %i.o, ptr %.09.i.i.i.i.i.i, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, %i.n
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1114

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc8
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %.noexc8 ], [ %i.q, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !146
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.018, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.r, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1115
end_hunk_3
begin_hunk_4_@_ZN8LightGBM9SparseBinItEC2ERKS1_:bb.a
  %.sroa.010.014.i.i.prol = phi ptr [ %i.al, %.lr.ph.i.i.prol ], [ %.sroa.010.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ak = load i8, ptr %.sroa.010.014.i.i.prol, align 1, !tbaa !57
  store i8 %i.ak, ptr %.015.i.i.prol, align 1, !tbaa !57
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.prol, i64 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.015.i.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1209

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa100.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %.015.i.i.unr = phi ptr [ %.015.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %.sroa.010.014.i.i.unr = phi ptr [ %.sroa.010.014.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.al, %.lr.ph.i.i.prol ]
  %i.an = sub i64 %.sroa.010.014.i.i.ph101, %i.x
  %i.ao = icmp ugt i64 %i.an, -8
  br i1 %i.ao, label %.loopexit33, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.sroa.010.014.i.i = phi ptr [ %i.bl, %.lr.ph.i.i ], [ %.sroa.010.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.ap = load i8, ptr %.sroa.010.014.i.i, align 1, !tbaa !57
  store i8 %i.ap, ptr %.015.i.i, align 1, !tbaa !57
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 1
  %i.as = load i8, ptr %i.aq, align 1, !tbaa !57
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !57
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 2
  %i.au = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 2
  %i.av = load i8, ptr %i.at, align 1, !tbaa !57
  store i8 %i.av, ptr %i.au, align 1, !tbaa !57
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 3
  %i.ax = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 3
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !57
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !57
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 4
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !57
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !57
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 5
  %i.bd = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 5
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !57
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !57
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 6
  %i.bg = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 6
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !57
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !57
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 7
  %i.bj = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 7
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !57
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !57
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bl, %i.u
  br i1 %.not.i.i.7, label %.loopexit33, label %.lr.ph.i.i, !llvm.loop !1210

.loopexit33:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %.0.lcssa.i.i = phi ptr [ %i.p, %bb.c ], [ %i.ag, %vec.epilog.middle.block ], [ %i.ab, %middle.block ], [ %.lcssa100.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.bm, %.lr.ph.i.i ]
  store ptr %.0.lcssa.i.i, ptr %i.q, align 8, !tbaa !69
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !117 ; 2 uses
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !111 ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  %.not.i.i.i.i15 = icmp eq ptr %i.bq, %i.br
  br i1 %.not.i.i.i.i15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bv = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.bu) #19
  %.not.i.i.i.i.i.i.i16 = icmp eq i32 %i.bv, 0
  %i.bw = load ptr, ptr %i.a, align 8
  %.0.i.i.i.i.i.i.i17 = select i1 %.not.i.i.i.i.i.i.i16, ptr %i.bw, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit33
  %i.bx = phi ptr [ %.0.i.i.i.i.i.i.i17, %bb.d ], [ null, %.loopexit33 ] ; 10 uses
  store ptr %i.bx, ptr %i.bn, align 8, !tbaa !111
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !117
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bu
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !195
  %i.cb = load ptr, ptr %i.bo, align 8, !tbaa !254 ; 7 uses
  %i.cc = load ptr, ptr %i.bp, align 8, !tbaa !254 ; 3 uses
  %.not13.i.i18 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not13.i.i18, label %.loopexit32, label %iter.check82

iter.check82:                                     ; preds = %bb.e
  %i.cd = ptrtoaddr ptr %i.cb to i64              ; 2 uses
  %i.ce = ptrtoaddr ptr %i.bx to i64
  %i.cf = ptrtoaddr ptr %i.cc to i64
  %i.cg = add i64 %i.cf, -2
  %i.ch = sub i64 %i.cg, %i.cd                    ; 3 uses
  %i.ci = lshr i64 %i.ch, 1
  %i.cj = add nuw i64 %i.ci, 1                    ; 5 uses
  %min.iters.check66 = icmp ult i64 %i.ch, 6
  %i.ck = sub i64 %i.cd, %i.ce
  %diff.check65 = icmp ugt i64 %i.ck, -32
  %or.cond98 = select i1 %min.iters.check66, i1 true, i1 %diff.check65
  br i1 %or.cond98, label %.lr.ph.i.i19.preheader, label %vector.main.loop.iter.check67

vector.main.loop.iter.check67:                    ; preds = %iter.check82
  %min.iters.check68 = icmp ult i64 %i.ch, 30
  br i1 %min.iters.check68, label %vec.epilog.ph86, label %vector.ph69

vector.ph69:                                      ; preds = %vector.main.loop.iter.check67
  %i.cl = and i64 %i.cj, 12
  %n.vec70 = and i64 %i.cj, -16                   ; 4 uses
  %i.cm = shl i64 %n.vec70, 1                     ; 2 uses
  %i.cn = getelementptr i8, ptr %i.bx, i64 %i.cm  ; 2 uses
  %i.co = getelementptr i8, ptr %i.cb, i64 %i.cm
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next77, %vector.body71 ] ; 2 uses
  %i.cp = shl i64 %index72, 1                     ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.bx, i64 %i.cp ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.cb, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep74, i64 16
  %wide.load75 = load <8 x i16>, ptr %next.gep74, align 2, !tbaa !89
  %wide.load76 = load <8 x i16>, ptr %i.cq, align 2, !tbaa !89
  %i.cr = getelementptr i8, ptr %next.gep73, i64 16
  store <8 x i16> %wide.load75, ptr %next.gep73, align 2, !tbaa !89
  store <8 x i16> %wide.load76, ptr %i.cr, align 2, !tbaa !89
  %index.next77 = add nuw i64 %index72, 16        ; 2 uses
  %i.cs = icmp eq i64 %index.next77, %n.vec70
  br i1 %i.cs, label %middle.block78, label %vector.body71, !llvm.loop !1211

middle.block78:                                   ; preds = %vector.body71
  %cmp.n79 = icmp eq i64 %i.cj, %n.vec70
  br i1 %cmp.n79, label %.loopexit32, label %vec.epilog.iter.check84

vec.epilog.iter.check84:                          ; preds = %middle.block78
  %min.epilog.iters.check85 = icmp eq i64 %i.cl, 0
  br i1 %min.epilog.iters.check85, label %.lr.ph.i.i19.preheader, label %vec.epilog.ph86, !prof !125

vec.epilog.ph86:                                  ; preds = %vector.main.loop.iter.check67, %vec.epilog.iter.check84
  %vec.epilog.resume.val80 = phi i64 [ %n.vec70, %vec.epilog.iter.check84 ], [ 0, %vector.main.loop.iter.check67 ]
  %n.vec87 = and i64 %i.cj, -4                    ; 3 uses
  %i.ct = shl i64 %n.vec87, 1                     ; 2 uses
  %i.cu = getelementptr i8, ptr %i.bx, i64 %i.ct  ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cb, i64 %i.ct
  br label %vec.epilog.vector.body88

vec.epilog.vector.body88:                         ; preds = %vec.epilog.vector.body88, %vec.epilog.ph86
  %index89 = phi i64 [ %vec.epilog.resume.val80, %vec.epilog.ph86 ], [ %index.next93, %vec.epilog.vector.body88 ] ; 2 uses
  %i.cw = shl i64 %index89, 1                     ; 2 uses
  %next.gep90 = getelementptr i8, ptr %i.bx, i64 %i.cw
  %next.gep91 = getelementptr i8, ptr %i.cb, i64 %i.cw
  %wide.load92 = load <4 x i16>, ptr %next.gep91, align 2, !tbaa !89
  store <4 x i16> %wide.load92, ptr %next.gep90, align 2, !tbaa !89
  %index.next93 = add nuw i64 %index89, 4         ; 2 uses
  %i.cx = icmp eq i64 %index.next93, %n.vec87
  br i1 %i.cx, label %vec.epilog.middle.block94, label %vec.epilog.vector.body88, !llvm.loop !1212

vec.epilog.middle.block94:                        ; preds = %vec.epilog.vector.body88
  %cmp.n95 = icmp eq i64 %i.cj, %n.vec87
  br i1 %cmp.n95, label %.loopexit32, label %.lr.ph.i.i19.preheader

.lr.ph.i.i19.preheader:                           ; preds = %iter.check82, %vec.epilog.iter.check84, %vec.epilog.middle.block94
  %.015.i.i20.ph = phi ptr [ %i.bx, %iter.check82 ], [ %i.cn, %vec.epilog.iter.check84 ], [ %i.cu, %vec.epilog.middle.block94 ]
  %.sroa.010.014.i.i21.ph = phi ptr [ %i.cb, %iter.check82 ], [ %i.co, %vec.epilog.iter.check84 ], [ %i.cv, %vec.epilog.middle.block94 ]
  br label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i.i19.preheader, %.lr.ph.i.i19
  %.015.i.i20 = phi ptr [ %i.da, %.lr.ph.i.i19 ], [ %.015.i.i20.ph, %.lr.ph.i.i19.preheader ] ; 2 uses
  %.sroa.010.014.i.i21 = phi ptr [ %i.cz, %.lr.ph.i.i19 ], [ %.sroa.010.014.i.i21.ph, %.lr.ph.i.i19.preheader ] ; 2 uses
  %i.cy = load i16, ptr %.sroa.010.014.i.i21, align 2, !tbaa !89
  store i16 %i.cy, ptr %.015.i.i20, align 2, !tbaa !89
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i21, i64 2 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.015.i.i20, i64 2 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.cz, %i.cc
  br i1 %.not.i.i22, label %.loopexit32, label %.lr.ph.i.i19, !llvm.loop !1213

.loopexit32:                                      ; preds = %.lr.ph.i.i19, %middle.block78, %vec.epilog.middle.block94, %bb.e
  %.0.lcssa.i.i23 = phi ptr [ %i.bx, %bb.e ], [ %i.cu, %vec.epilog.middle.block94 ], [ %i.cn, %middle.block78 ], [ %i.da, %.lr.ph.i.i19 ]
  store ptr %.0.lcssa.i.i23, ptr %i.by, align 8, !tbaa !117
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !193
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !193
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !178 ; 2 uses
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !179 ; 2 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, i8 0, i64 24, i1 false)
  %.not.i.i.i.i24 = icmp eq ptr %i.dh, %i.di
  br i1 %.not.i.i.i.i24, label %.noexc25, label %bb.f

bb.f:                                             ; preds = %.loopexit32
  %2 = sdiv exact i64 %i.dl, 24
  %i.dm = icmp ugt i64 %2, 384307168202282325
  br i1 %i.dm, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt4pairIitESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !262

.noexc.i.i:                                       ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #39
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorISt4pairIitESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.f
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #38
          to label %.noexc25 unwind label %bb.k

.noexc25:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt4pairIitESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, %.loopexit32
  %i.do = phi ptr [ null, %.loopexit32 ], [ %i.dn, %_ZNSt15__new_allocatorISt6vectorISt4pairIitESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.do, ptr %i.de, align 8, !tbaa !179
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !178
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dl
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !263
  %i.ds = load ptr, ptr %i.df, align 8, !tbaa !1214
  %i.dt = load ptr, ptr %i.dg, align 8, !tbaa !1214
  %i.du = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt4pairIitESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.ds, ptr %i.dt, ptr noundef %i.do)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc25
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = load ptr, ptr %i.de, align 8, !tbaa !179 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !263
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.ea) #37
  br label %.body

bb.i:                                             ; preds = %.noexc25
  store ptr %i.du, ptr %i.dp, align 8, !tbaa !178
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !160 ; 2 uses
  %i.ef = load ptr, ptr %i.ec, align 8, !tbaa !161 ; 2 uses
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i8 0, i64 24, i1 false)
  %.not.i.i.i.i26 = icmp eq ptr %i.ee, %i.ef
  br i1 %.not.i.i.i.i26, label %.noexc29, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ej = icmp ugt i64 %i.ei, 9223372036854775800
  br i1 %i.ej, label %.noexc.i.i27, label %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i, !prof !262

.noexc.i.i27:                                     ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #39
          to label %.noexc28 unwind label %bb.l

.noexc28:                                         ; preds = %.noexc.i.i27
  unreachable

_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.j
  %i.ek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #38
          to label %.noexc29 unwind label %bb.l

.noexc29:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i, %bb.i
  %i.el = phi ptr [ null, %bb.i ], [ %i.ek, %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.el, ptr %i.eb, align 8, !tbaa !161
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.el, ptr %i.em, align 8, !tbaa !160
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ei
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !255
  %i.ep = load ptr, ptr %i.ec, align 8, !tbaa !261 ; 2 uses
  %i.eq = load ptr, ptr %i.ed, align 8, !tbaa !261 ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.ep, %i.eq
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc29, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i ], [ %i.el, %.noexc29 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i ], [ %i.ep, %.noexc29 ] ; 2 uses
  %i.er = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4
  store i64 %i.er, ptr %.09.i.i.i.i.i, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.es, %i.eq
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !14

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc29
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.el, %.noexc29 ], [ %i.et, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.em, align 8, !tbaa !160
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !192
  store i32 %i.ew, ptr %i.eu, align 8, !tbaa !192
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt4pairIitESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i27
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt4pairIitESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.de) #19
  br label %.body

.body:                                            ; preds = %bb.k, %bb.h, %bb.g, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ey, %bb.l ], [ %i.ex, %bb.k ], [ %i.dv, %bb.h ], [ %i.dv, %bb.g ]
  %i.ez = load ptr, ptr %i.bn, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.body
  call void @free(ptr noundef nonnull %i.ez) #19
  br label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEED2Ev.exit

_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEED2Ev.exit: ; preds = %bb.m, %.body
  %i.fa = load ptr, ptr %i.f, align 8, !tbaa !60  ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEED2Ev.exit
  call void @free(ptr noundef nonnull %i.fa) #19
  br label %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEED2Ev.exit

_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEED2Ev.exit: ; preds = %bb.n, %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEED2Ev.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt4pairIitESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not16 = icmp eq ptr %0, %1
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.018 = phi ptr [ %i.s, %.loopexit ], [ %2, %bb.a ] ; 6 uses
  %.sroa.09.017 = phi ptr [ %i.r, %.loopexit ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184  ; 2 uses
  %i.c = load ptr, ptr %.sroa.09.017, align 8, !tbaa !182 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt4pairIitEE8allocateEmPKv.exit.i.i.i.i.i, !prof !262

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #39
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairIitEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38
          to label %.noexc8 unwind label %.loopexit12

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorISt4pairIitEE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorISt4pairIitEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %.018, align 8, !tbaa !182
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !184
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !183
  %i.m = load ptr, ptr %.sroa.09.017, align 8, !tbaa !203 ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !203  ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc8, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %.noexc8 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %.noexc8 ] ; 2 uses
  %i.o = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 4
  store i64 %i.o, ptr %.09.i.i.i.i.i.i, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, %i.n
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1215

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc8
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %.noexc8 ], [ %i.q, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !184
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.018, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.r, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1216
end_hunk_4
begin_hunk_5_@_ZN8LightGBM9SparseBinIjEC2ERKS1_:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec55 = and i64 %i.y, -8                     ; 4 uses
  %i.ag = getelementptr i8, ptr %i.p, i64 %n.vec55 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.t, i64 %n.vec55
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next60, %vec.epilog.vector.body ] ; 3 uses
  %next.gep57 = getelementptr i8, ptr %i.p, i64 %index56
  %next.gep58 = getelementptr i8, ptr %i.t, i64 %index56
  %wide.load59 = load <8 x i8>, ptr %next.gep58, align 1, !tbaa !57
  store <8 x i8> %wide.load59, ptr %next.gep57, align 1, !tbaa !57
  %index.next60 = add nuw i64 %index56, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next60, %n.vec55
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1304

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n61 = icmp eq i64 %i.y, %n.vec55
  br i1 %cmp.n61, label %.loopexit33, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.i.ph = phi ptr [ %i.p, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.010.014.i.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.010.014.i.i.ph83 = ptrtoaddr ptr %.sroa.010.014.i.i.ph to i64 ; 2 uses
  %i.aj = sub i64 %i.x, %.sroa.010.014.i.i.ph83
  %xtraiter = and i64 %i.aj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.015.i.i.prol = phi ptr [ %i.am, %.lr.ph.i.i.prol ], [ %.015.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.010.014.i.i.prol = phi ptr [ %i.al, %.lr.ph.i.i.prol ], [ %.sroa.010.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ak = load i8, ptr %.sroa.010.014.i.i.prol, align 1, !tbaa !57
  store i8 %i.ak, ptr %.015.i.i.prol, align 1, !tbaa !57
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.prol, i64 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.015.i.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1305

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa82.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %.015.i.i.unr = phi ptr [ %.015.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %.sroa.010.014.i.i.unr = phi ptr [ %.sroa.010.014.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.al, %.lr.ph.i.i.prol ]
  %i.an = sub i64 %.sroa.010.014.i.i.ph83, %i.x
  %i.ao = icmp ugt i64 %i.an, -8
  br i1 %i.ao, label %.loopexit33, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.sroa.010.014.i.i = phi ptr [ %i.bl, %.lr.ph.i.i ], [ %.sroa.010.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.ap = load i8, ptr %.sroa.010.014.i.i, align 1, !tbaa !57
  store i8 %i.ap, ptr %.015.i.i, align 1, !tbaa !57
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 1
  %i.as = load i8, ptr %i.aq, align 1, !tbaa !57
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !57
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 2
  %i.au = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 2
  %i.av = load i8, ptr %i.at, align 1, !tbaa !57
  store i8 %i.av, ptr %i.au, align 1, !tbaa !57
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 3
  %i.ax = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 3
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !57
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !57
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 4
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !57
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !57
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 5
  %i.bd = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 5
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !57
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !57
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 6
  %i.bg = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 6
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !57
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !57
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 7
  %i.bj = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 7
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !57
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !57
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bl, %i.u
  br i1 %.not.i.i.7, label %.loopexit33, label %.lr.ph.i.i, !llvm.loop !1306

.loopexit33:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %.0.lcssa.i.i = phi ptr [ %i.p, %bb.c ], [ %i.ag, %vec.epilog.middle.block ], [ %i.ab, %middle.block ], [ %.lcssa82.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.bm, %.lr.ph.i.i ]
  store ptr %.0.lcssa.i.i, ptr %i.q, align 8, !tbaa !69
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !132 ; 2 uses
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !127 ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  %.not.i.i.i.i15 = icmp eq ptr %i.bq, %i.br
  br i1 %.not.i.i.i.i15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bv = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.bu) #19
  %.not.i.i.i.i.i.i.i16 = icmp eq i32 %i.bv, 0
  %i.bw = load ptr, ptr %i.a, align 8
  %.0.i.i.i.i.i.i.i17 = select i1 %.not.i.i.i.i.i.i.i16, ptr %i.bw, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit33
  %i.bx = phi ptr [ %.0.i.i.i.i.i.i.i17, %bb.d ], [ null, %.loopexit33 ] ; 8 uses
  store ptr %i.bx, ptr %i.bn, align 8, !tbaa !127
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !132
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bu
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !223
  %i.cb = load ptr, ptr %i.bo, align 8, !tbaa !71 ; 5 uses
  %i.cc = load ptr, ptr %i.bp, align 8, !tbaa !71 ; 3 uses
  %.not13.i.i18 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not13.i.i18, label %.loopexit32, label %.lr.ph.i.i19.preheader

.lr.ph.i.i19.preheader:                           ; preds = %bb.e
  %i.cd = ptrtoaddr ptr %i.cb to i64              ; 2 uses
  %i.ce = ptrtoaddr ptr %i.bx to i64
  %i.cf = ptrtoaddr ptr %i.cc to i64
  %i.cg = add i64 %i.cf, -4
  %i.ch = sub i64 %i.cg, %i.cd                    ; 2 uses
  %i.ci = lshr i64 %i.ch, 2
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check66 = icmp ult i64 %i.ch, 44
  %i.ck = sub i64 %i.cd, %i.ce
  %diff.check65 = icmp ugt i64 %i.ck, -32
  %or.cond79 = select i1 %min.iters.check66, i1 true, i1 %diff.check65
  br i1 %or.cond79, label %.lr.ph.i.i19.preheader80, label %vector.ph67

vector.ph67:                                      ; preds = %.lr.ph.i.i19.preheader
  %n.vec68 = and i64 %i.cj, 9223372036854775800   ; 3 uses
  %i.cl = shl i64 %n.vec68, 2                     ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bx, i64 %i.cl  ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cb, i64 %i.cl
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next75, %vector.body69 ] ; 2 uses
  %i.co = shl i64 %index70, 2                     ; 2 uses
  %next.gep71 = getelementptr i8, ptr %i.bx, i64 %i.co ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.cb, i64 %i.co ; 2 uses
  %i.cp = getelementptr i8, ptr %next.gep72, i64 16
  %wide.load73 = load <4 x i32>, ptr %next.gep72, align 4, !tbaa !58
  %wide.load74 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !58
  %i.cq = getelementptr i8, ptr %next.gep71, i64 16
  store <4 x i32> %wide.load73, ptr %next.gep71, align 4, !tbaa !58
  store <4 x i32> %wide.load74, ptr %i.cq, align 4, !tbaa !58
  %index.next75 = add nuw i64 %index70, 8         ; 2 uses
  %i.cr = icmp eq i64 %index.next75, %n.vec68
  br i1 %i.cr, label %middle.block76, label %vector.body69, !llvm.loop !1307

middle.block76:                                   ; preds = %vector.body69
  %cmp.n77 = icmp eq i64 %i.cj, %n.vec68
  br i1 %cmp.n77, label %.loopexit32, label %.lr.ph.i.i19.preheader80

.lr.ph.i.i19.preheader80:                         ; preds = %.lr.ph.i.i19.preheader, %middle.block76
  %.015.i.i20.ph = phi ptr [ %i.bx, %.lr.ph.i.i19.preheader ], [ %i.cm, %middle.block76 ]
  %.sroa.010.014.i.i21.ph = phi ptr [ %i.cb, %.lr.ph.i.i19.preheader ], [ %i.cn, %middle.block76 ]
  br label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i.i19.preheader80, %.lr.ph.i.i19
  %.015.i.i20 = phi ptr [ %i.cu, %.lr.ph.i.i19 ], [ %.015.i.i20.ph, %.lr.ph.i.i19.preheader80 ] ; 2 uses
  %.sroa.010.014.i.i21 = phi ptr [ %i.ct, %.lr.ph.i.i19 ], [ %.sroa.010.014.i.i21.ph, %.lr.ph.i.i19.preheader80 ] ; 2 uses
  %i.cs = load i32, ptr %.sroa.010.014.i.i21, align 4, !tbaa !58
  store i32 %i.cs, ptr %.015.i.i20, align 4, !tbaa !58
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i21, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.015.i.i20, i64 4 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.ct, %i.cc
  br i1 %.not.i.i22, label %.loopexit32, label %.lr.ph.i.i19, !llvm.loop !1308

.loopexit32:                                      ; preds = %.lr.ph.i.i19, %middle.block76, %bb.e
  %.0.lcssa.i.i23 = phi ptr [ %i.bx, %bb.e ], [ %i.cm, %middle.block76 ], [ %i.cu, %.lr.ph.i.i19 ]
  store ptr %.0.lcssa.i.i23, ptr %i.by, align 8, !tbaa !132
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !221
  store i32 %i.cx, ptr %i.cv, align 8, !tbaa !221
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !206 ; 2 uses
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !207 ; 2 uses
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i8 0, i64 24, i1 false)
  %.not.i.i.i.i24 = icmp eq ptr %i.db, %i.dc
  br i1 %.not.i.i.i.i24, label %.noexc25, label %bb.f

bb.f:                                             ; preds = %.loopexit32
  %2 = sdiv exact i64 %i.df, 24
  %i.dg = icmp ugt i64 %2, 384307168202282325
  br i1 %i.dg, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt4pairIijESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !262

.noexc.i.i:                                       ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #39
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorISt4pairIijESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.f
  %i.dh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #38
          to label %.noexc25 unwind label %bb.k

.noexc25:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt4pairIijESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, %.loopexit32
  %i.di = phi ptr [ null, %.loopexit32 ], [ %i.dh, %_ZNSt15__new_allocatorISt6vectorISt4pairIijESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.di, ptr %i.cy, align 8, !tbaa !207
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !206
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.df
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !265
  %i.dm = load ptr, ptr %i.cz, align 8, !tbaa !1309
  %i.dn = load ptr, ptr %i.da, align 8, !tbaa !1309
  %i.do = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt4pairIijESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.dm, ptr %i.dn, ptr noundef %i.di)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc25
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dq = load ptr, ptr %i.cy, align 8, !tbaa !207 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !265
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dq to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.du) #37
  br label %.body

bb.i:                                             ; preds = %.noexc25
  store ptr %i.do, ptr %i.dj, align 8, !tbaa !206
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !160 ; 2 uses
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !161 ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i8 0, i64 24, i1 false)
  %.not.i.i.i.i26 = icmp eq ptr %i.dy, %i.dz
  br i1 %.not.i.i.i.i26, label %.noexc29, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ed = icmp ugt i64 %i.ec, 9223372036854775800
  br i1 %i.ed, label %.noexc.i.i27, label %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i, !prof !262

.noexc.i.i27:                                     ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #39
          to label %.noexc28 unwind label %bb.l

.noexc28:                                         ; preds = %.noexc.i.i27
  unreachable

_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.j
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #38
          to label %.noexc29 unwind label %bb.l

.noexc29:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i, %bb.i
  %i.ef = phi ptr [ null, %bb.i ], [ %i.ee, %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.ef, ptr %i.dv, align 8, !tbaa !161
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !160
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ec
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !255
  %i.ej = load ptr, ptr %i.dw, align 8, !tbaa !261 ; 2 uses
  %i.ek = load ptr, ptr %i.dx, align 8, !tbaa !261 ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.ej, %i.ek
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc29, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i ], [ %i.ef, %.noexc29 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i ], [ %i.ej, %.noexc29 ] ; 2 uses
  %i.el = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4
  store i64 %i.el, ptr %.09.i.i.i.i.i, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.em, %i.ek
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !14

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc29
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ef, %.noexc29 ], [ %i.en, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.eg, align 8, !tbaa !160
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !220
  store i32 %i.eq, ptr %i.eo, align 8, !tbaa !220
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt4pairIijESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i27
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt4pairIijESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cy) #19
  br label %.body

.body:                                            ; preds = %bb.k, %bb.h, %bb.g, %bb.l
  %.pn = phi { ptr, i32 } [ %i.es, %bb.l ], [ %i.er, %bb.k ], [ %i.dp, %bb.h ], [ %i.dp, %bb.g ]
  %i.et = load ptr, ptr %i.bn, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.body
  call void @free(ptr noundef nonnull %i.et) #19
  br label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEED2Ev.exit

_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEED2Ev.exit: ; preds = %bb.m, %.body
  %i.eu = load ptr, ptr %i.f, align 8, !tbaa !60  ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEED2Ev.exit
  call void @free(ptr noundef nonnull %i.eu) #19
  br label %_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEED2Ev.exit

_ZNSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEED2Ev.exit: ; preds = %bb.n, %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEED2Ev.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt4pairIijESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not16 = icmp eq ptr %0, %1
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.018 = phi ptr [ %i.s, %.loopexit ], [ %2, %bb.a ] ; 6 uses
  %.sroa.09.017 = phi ptr [ %i.r, %.loopexit ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212  ; 2 uses
  %i.c = load ptr, ptr %.sroa.09.017, align 8, !tbaa !210 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt4pairIijEE8allocateEmPKv.exit.i.i.i.i.i, !prof !262

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #39
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairIijEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38
          to label %.noexc8 unwind label %.loopexit12

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorISt4pairIijEE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorISt4pairIijEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %.018, align 8, !tbaa !210
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !212
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !211
  %i.m = load ptr, ptr %.sroa.09.017, align 8, !tbaa !231 ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !231  ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc8, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %.noexc8 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %.noexc8 ] ; 2 uses
  %i.o = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 4
  store i64 %i.o, ptr %.09.i.i.i.i.i.i, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, %i.n
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1310

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc8
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %.noexc8 ], [ %i.q, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !212
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.018, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.r, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1311
end_hunk_5
begin_hunk_6_@_ZNK8LightGBM17MultiValSparseBinIthE26ConstructHistogramIntInnerILb1ELb1ELb0EiLi16EEEvPKiiiPKfPd:bb.a
  tail call void @llvm.prefetch.p0(ptr %i.o, i32 0, i32 3, i32 1)
  %i.p = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.n ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.p, i32 0, i32 3, i32 1)
  %i.q = load i16, ptr %i.p, align 2, !tbaa !89
  %i.r = zext i16 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.r
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 3, i32 1)
  %i.t = sext i32 %i.k to i64                     ; 2 uses
  %i.u = getelementptr [2 x i8], ptr %i.d, i64 %i.t ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !89   ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 2
  %i.x = load i16, ptr %i.w, align 2, !tbaa !89   ; 2 uses
  %i.y = getelementptr inbounds [2 x i8], ptr %4, i64 %i.t
  %i.z = load i16, ptr %i.y, align 2, !tbaa !89   ; 2 uses
  %i.aa = lshr i16 %i.z, 8
  %i.ab = zext nneg i16 %i.aa to i32
  %sext54 = shl nuw i32 %i.ab, 24
  %i.ac = ashr exact i32 %sext54, 8
  %i.ad = and i16 %i.z, 255
  %i.ae = zext nneg i16 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae            ; 5 uses
  %i.ag = icmp ult i16 %i.v, %i.x
  br i1 %i.ag, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph58
  %i.ah = zext i16 %i.v to i64                    ; 4 uses
  %wide.trip.count = zext i16 %i.x to i64         ; 3 uses
  %i.ai = sub nsw i64 %wide.trip.count, %i.ah
  %xtraiter = and i64 %i.ai, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.ah, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.prol
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !57
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !58
  %i.ao = add nsw i32 %i.af, %i.an
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !58
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1830

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.ah, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ap = sub nsw i64 %i.ah, %wide.trip.count
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph58
  %indvars.iv.next68 = add nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %.lr.ph64.preheader, label %.lr.ph58, !llvm.loop !1831

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !57
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !58
  %i.aw = add nsw i32 %i.af, %i.av
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !58
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !57
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !58
  %i.bd = add nsw i32 %i.af, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !58
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !57
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !58
  %i.bk = add nsw i32 %i.af, %i.bj
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !58
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !57
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !58
  %i.br = add nsw i32 %i.af, %i.bq
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !58
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1832

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %._crit_edge62
  %indvars.iv77 = phi i64 [ %i.i, %.lr.ph64.preheader ], [ %indvars.iv.next78, %._crit_edge62 ] ; 2 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv77
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !58
  %i.bu = sext i32 %i.bt to i64                   ; 2 uses
  %i.bv = getelementptr [2 x i8], ptr %i.d, i64 %i.bu ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !89 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bv, i64 2
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !89 ; 2 uses
  %i.bz = getelementptr inbounds [2 x i8], ptr %4, i64 %i.bu
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !89 ; 2 uses
  %i.cb = lshr i16 %i.ca, 8
  %i.cc = zext nneg i16 %i.cb to i32
  %sext = shl nuw i32 %i.cc, 24
  %i.cd = ashr exact i32 %sext, 8
  %i.ce = and i16 %i.ca, 255
  %i.cf = zext nneg i16 %i.ce to i32
  %i.cg = or disjoint i32 %i.cd, %i.cf            ; 5 uses
  %i.ch = icmp ult i16 %i.bw, %i.by
  br i1 %i.ch, label %.lr.ph61.preheader, label %._crit_edge62

.lr.ph61.preheader:                               ; preds = %.lr.ph64
  %i.ci = zext i16 %i.bw to i64                   ; 4 uses
  %wide.trip.count75 = zext i16 %i.by to i64      ; 3 uses
  %i.cj = sub nsw i64 %wide.trip.count75, %i.ci
  %xtraiter90 = and i64 %i.cj, 3                  ; 2 uses
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %.lr.ph61.prol.loopexit, label %.lr.ph61.prol

.lr.ph61.prol:                                    ; preds = %.lr.ph61.preheader, %.lr.ph61.prol
  %indvars.iv72.prol = phi i64 [ %indvars.iv.next73.prol, %.lr.ph61.prol ], [ %i.ci, %.lr.ph61.preheader ] ; 2 uses
  %prol.iter92 = phi i64 [ %prol.iter92.next, %.lr.ph61.prol ], [ 0, %.lr.ph61.preheader ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv72.prol
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !57
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cm ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !58
  %i.cp = add nsw i32 %i.cg, %i.co
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !58
  %indvars.iv.next73.prol = add nuw nsw i64 %indvars.iv72.prol, 1 ; 2 uses
  %prol.iter92.next = add i64 %prol.iter92, 1     ; 2 uses
  %prol.iter92.cmp.not = icmp eq i64 %prol.iter92.next, %xtraiter90
  br i1 %prol.iter92.cmp.not, label %.lr.ph61.prol.loopexit, label %.lr.ph61.prol, !llvm.loop !1833

.lr.ph61.prol.loopexit:                           ; preds = %.lr.ph61.prol, %.lr.ph61.preheader
  %indvars.iv72.unr = phi i64 [ %i.ci, %.lr.ph61.preheader ], [ %indvars.iv.next73.prol, %.lr.ph61.prol ]
  %i.cq = sub nsw i64 %i.ci, %wide.trip.count75
  %i.cr = icmp ugt i64 %i.cq, -4
  br i1 %i.cr, label %._crit_edge62, label %.lr.ph61

._crit_edge62:                                    ; preds = %.lr.ph61.prol.loopexit, %.lr.ph61, %.lr.ph64
  %indvars.iv.next78 = add nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %._crit_edge65, label %.lr.ph64, !llvm.loop !1834

.lr.ph61:                                         ; preds = %.lr.ph61.prol.loopexit, %.lr.ph61
  %indvars.iv72 = phi i64 [ %indvars.iv.next73.3, %.lr.ph61 ], [ %indvars.iv72.unr, %.lr.ph61.prol.loopexit ] ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv72
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !57
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !58
  %i.cx = add nsw i32 %i.cg, %i.cw
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !58
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv72
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !57
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.db ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !58
  %i.de = add nsw i32 %i.cg, %i.dd
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !58
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv72
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !57
  %i.di = zext i8 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !58
  %i.dl = add nsw i32 %i.cg, %i.dk
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !58
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv72
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 3
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !57
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.dp ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !58
  %i.ds = add nsw i32 %i.cg, %i.dr
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !58
  %indvars.iv.next73.3 = add nuw nsw i64 %indvars.iv72, 4 ; 2 uses
  %exitcond76.not.3 = icmp eq i64 %indvars.iv.next73.3, %wide.trip.count75
  br i1 %exitcond76.not.3, label %._crit_edge62, label %.lr.ph61, !llvm.loop !1835

._crit_edge65:                                    ; preds = %._crit_edge62, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIS0_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS5_EELb1EE8_S_do_itERS7_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1837   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1837 ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %1 = sdiv exact i64 %i.f, 24
  %i.g = icmp ugt i64 %1, 384307168202282325
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #39
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseISt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS5_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit.thread, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit.thread: ; preds = %_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !416
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !416
  br label %_ZSt8_DestroyIPSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEES5_EvT_S7_RSaIT0_E.exit.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38
          to label %.lr.ph.i.i.i.i.i.i unwind label %_ZNSt12_Vector_baseISt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS5_EED2Ev.exit.i ; 3 uses

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.preheader.i.i ] ; 3 uses
  %.sroa.08.011.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.preheader.i.i ] ; 4 uses
  %i.l = load <2 x ptr>, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !56
  store <2 x ptr> %i.l, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !162
  store ptr %i.o, ptr %i.m, align 8, !tbaa !162
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i.i.i.i.i.i, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1836

_ZNSt12_Vector_baseISt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS5_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.r, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %.09) #19 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EED2Ev.exit unwind label %bb.e

_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !358   ; 4 uses
  %.pre18 = load ptr, ptr %i.b, align 8, !tbaa !357 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !416  ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !358
  store ptr %i.q, ptr %i.b, align 8, !tbaa !357
  store ptr %i.t, ptr %i.u, align 8, !tbaa !416
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre18
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit, %_ZSt8_DestroyISt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyISt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEEEvPT_.exit.i.i.i ], [ %.pre, %_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit ] ; 2 uses
  %i.w = load ptr, ptr %.05.i.i.i, align 8, !tbaa !60 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  tail call void @free(ptr noundef nonnull %i.w) #19
  br label %_ZSt8_DestroyISt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEEEvPT_.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.x, %.pre18
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !39

_ZSt8_DestroyIPSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEEEvPT_.exit.i.i.i, %_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit.thread, %_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit
  %i.y = phi ptr [ %i.j, %_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit.thread ], [ %i.v, %_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit ], [ %i.v, %_ZSt8_DestroyISt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEEEvPT_.exit.i.i.i ]
  %i.z = phi ptr [ %i.a, %_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit.thread ], [ %.pre, %_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit ], [ %.pre, %_ZSt8_DestroyISt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEEEvPT_.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #37
  br label %_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EED2Ev.exit

_ZNSt6vectorIS_IhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS4_EED2Ev.exit: ; preds = %bb.d, %_ZSt8_DestroyIPSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEES5_EvT_S7_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseISt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS5_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseISt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS5_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIPSt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEES5_EvT_S7_RSaIT0_E.exit.i ], [ true, %bb.d ]
  ret i1 %.0

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIhN8LightGBM6Common18AlignmentAllocatorIhLm32EEEESaIS5_EED2Ev.exit.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM17MultiValSparseBinIthEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN8LightGBM17MultiValSparseBinIthEE, i64 16), ptr %0, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x i32>, ptr %i.d, align 8, !tbaa !58
  store <2 x i32> %i.e, ptr %i.c, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !356
  store double %i.h, ptr %i.f, align 8, !tbaa !356
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !69   ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !60   ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.q = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 32, i64 noundef %i.p) #19
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.q, 0
  %i.r = load ptr, ptr %i.b, align 8
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.r, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = phi ptr [ %.0.i.i.i.i.i.i.i, %bb.b ], [ null, %bb.a ] ; 10 uses
  store ptr %i.s, ptr %i.i, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !69
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.u, ptr %i.v, align 8, !tbaa !162
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !56   ; 7 uses
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !56   ; 3 uses
  %.not13.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not13.i.i, label %.loopexit18, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.y = ptrtoaddr ptr %i.w to i64                ; 2 uses
  %i.z = ptrtoaddr ptr %i.s to i64
  %i.aa = ptrtoaddr ptr %i.x to i64               ; 3 uses
  %i.ab = sub i64 %i.aa, %i.y                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.ab, 8
  %i.ac = sub i64 %i.y, %i.z
  %diff.check = icmp ugt i64 %i.ac, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check26 = icmp ult i64 %i.ab, 32
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.ab, 24
  %n.vec = and i64 %i.ab, -32                     ; 5 uses
  %i.ae = getelementptr i8, ptr %i.s, i64 %n.vec  ; 2 uses
  %i.af = getelementptr i8, ptr %i.w, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %index ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.w, i64 %index ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep27, align 1, !tbaa !57
  %wide.load28 = load <16 x i8>, ptr %i.ag, align 1, !tbaa !57
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !57
  store <16 x i8> %wide.load28, ptr %i.ah, align 1, !tbaa !57
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !1838

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit18, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !163

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %i.ab, -8                    ; 4 uses
  %i.aj = getelementptr i8, ptr %i.s, i64 %n.vec30 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.w, i64 %n.vec30
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
end_hunk_6
begin_hunk_7_@_ZNK8LightGBM17MultiValSparseBinIttE26ConstructHistogramIntInnerILb1ELb1ELb0EiLi16EEEvPKiiiPKfPd:bb.a
  tail call void @llvm.prefetch.p0(ptr %i.o, i32 0, i32 3, i32 1)
  %i.p = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.n ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.p, i32 0, i32 3, i32 1)
  %i.q = load i16, ptr %i.p, align 2, !tbaa !89
  %i.r = zext i16 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.r
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 3, i32 1)
  %i.t = sext i32 %i.k to i64                     ; 2 uses
  %i.u = getelementptr [2 x i8], ptr %i.d, i64 %i.t ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !89   ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 2
  %i.x = load i16, ptr %i.w, align 2, !tbaa !89   ; 2 uses
  %i.y = getelementptr inbounds [2 x i8], ptr %4, i64 %i.t
  %i.z = load i16, ptr %i.y, align 2, !tbaa !89   ; 2 uses
  %i.aa = lshr i16 %i.z, 8
  %i.ab = zext nneg i16 %i.aa to i32
  %sext54 = shl nuw i32 %i.ab, 24
  %i.ac = ashr exact i32 %sext54, 8
  %i.ad = and i16 %i.z, 255
  %i.ae = zext nneg i16 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae            ; 5 uses
  %i.ag = icmp ult i16 %i.v, %i.x
  br i1 %i.ag, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph58
  %i.ah = zext i16 %i.v to i64                    ; 4 uses
  %wide.trip.count = zext i16 %i.x to i64         ; 3 uses
  %i.ai = sub nsw i64 %wide.trip.count, %i.ah
  %xtraiter = and i64 %i.ai, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.ah, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.prol
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !89
  %i.al = zext i16 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !58
  %i.ao = add nsw i32 %i.af, %i.an
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !58
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1925

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.ah, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ap = sub nsw i64 %i.ah, %wide.trip.count
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph58
  %indvars.iv.next68 = add nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %.lr.ph64.preheader, label %.lr.ph58, !llvm.loop !1926

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !89
  %i.at = zext i16 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !58
  %i.aw = add nsw i32 %i.af, %i.av
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !58
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !89
  %i.ba = zext i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !58
  %i.bd = add nsw i32 %i.af, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !58
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !89
  %i.bh = zext i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !58
  %i.bk = add nsw i32 %i.af, %i.bj
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !58
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 6
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !89
  %i.bo = zext i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !58
  %i.br = add nsw i32 %i.af, %i.bq
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !58
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1927

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %._crit_edge62
  %indvars.iv77 = phi i64 [ %i.i, %.lr.ph64.preheader ], [ %indvars.iv.next78, %._crit_edge62 ] ; 2 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv77
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !58
  %i.bu = sext i32 %i.bt to i64                   ; 2 uses
  %i.bv = getelementptr [2 x i8], ptr %i.d, i64 %i.bu ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !89 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bv, i64 2
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !89 ; 2 uses
  %i.bz = getelementptr inbounds [2 x i8], ptr %4, i64 %i.bu
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !89 ; 2 uses
  %i.cb = lshr i16 %i.ca, 8
  %i.cc = zext nneg i16 %i.cb to i32
  %sext = shl nuw i32 %i.cc, 24
  %i.cd = ashr exact i32 %sext, 8
  %i.ce = and i16 %i.ca, 255
  %i.cf = zext nneg i16 %i.ce to i32
  %i.cg = or disjoint i32 %i.cd, %i.cf            ; 5 uses
  %i.ch = icmp ult i16 %i.bw, %i.by
  br i1 %i.ch, label %.lr.ph61.preheader, label %._crit_edge62

.lr.ph61.preheader:                               ; preds = %.lr.ph64
  %i.ci = zext i16 %i.bw to i64                   ; 4 uses
  %wide.trip.count75 = zext i16 %i.by to i64      ; 3 uses
  %i.cj = sub nsw i64 %wide.trip.count75, %i.ci
  %xtraiter90 = and i64 %i.cj, 3                  ; 2 uses
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %.lr.ph61.prol.loopexit, label %.lr.ph61.prol

.lr.ph61.prol:                                    ; preds = %.lr.ph61.preheader, %.lr.ph61.prol
  %indvars.iv72.prol = phi i64 [ %indvars.iv.next73.prol, %.lr.ph61.prol ], [ %i.ci, %.lr.ph61.preheader ] ; 2 uses
  %prol.iter92 = phi i64 [ %prol.iter92.next, %.lr.ph61.prol ], [ 0, %.lr.ph61.preheader ]
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv72.prol
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !89
  %i.cm = zext i16 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cm ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !58
  %i.cp = add nsw i32 %i.cg, %i.co
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !58
  %indvars.iv.next73.prol = add nuw nsw i64 %indvars.iv72.prol, 1 ; 2 uses
  %prol.iter92.next = add i64 %prol.iter92, 1     ; 2 uses
  %prol.iter92.cmp.not = icmp eq i64 %prol.iter92.next, %xtraiter90
  br i1 %prol.iter92.cmp.not, label %.lr.ph61.prol.loopexit, label %.lr.ph61.prol, !llvm.loop !1928

.lr.ph61.prol.loopexit:                           ; preds = %.lr.ph61.prol, %.lr.ph61.preheader
  %indvars.iv72.unr = phi i64 [ %i.ci, %.lr.ph61.preheader ], [ %indvars.iv.next73.prol, %.lr.ph61.prol ]
  %i.cq = sub nsw i64 %i.ci, %wide.trip.count75
  %i.cr = icmp ugt i64 %i.cq, -4
  br i1 %i.cr, label %._crit_edge62, label %.lr.ph61

._crit_edge62:                                    ; preds = %.lr.ph61.prol.loopexit, %.lr.ph61, %.lr.ph64
  %indvars.iv.next78 = add nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %._crit_edge65, label %.lr.ph64, !llvm.loop !1929

.lr.ph61:                                         ; preds = %.lr.ph61.prol.loopexit, %.lr.ph61
  %indvars.iv72 = phi i64 [ %indvars.iv.next73.3, %.lr.ph61 ], [ %indvars.iv72.unr, %.lr.ph61.prol.loopexit ] ; 5 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv72
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !89
  %i.cu = zext i16 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !58
  %i.cx = add nsw i32 %i.cg, %i.cw
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !58
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv72
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !89
  %i.db = zext i16 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.db ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !58
  %i.de = add nsw i32 %i.cg, %i.dd
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !58
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv72
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !89
  %i.di = zext i16 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !58
  %i.dl = add nsw i32 %i.cg, %i.dk
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !58
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv72
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 6
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !89
  %i.dp = zext i16 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.dp ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !58
  %i.ds = add nsw i32 %i.cg, %i.dr
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !58
  %indvars.iv.next73.3 = add nuw nsw i64 %indvars.iv72, 4 ; 2 uses
  %exitcond76.not.3 = icmp eq i64 %indvars.iv.next73.3, %wide.trip.count75
  br i1 %exitcond76.not.3, label %._crit_edge62, label %.lr.ph61, !llvm.loop !1930

._crit_edge65:                                    ; preds = %._crit_edge62, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIS0_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS5_EELb1EE8_S_do_itERS7_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1932   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1932 ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %1 = sdiv exact i64 %i.f, 24
  %i.g = icmp ugt i64 %1, 384307168202282325
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #39
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseISt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS5_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit.thread, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit.thread: ; preds = %_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !420
  br label %_ZSt8_DestroyIPSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEES5_EvT_S7_RSaIT0_E.exit.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38
          to label %.lr.ph.i.i.i.i.i.i unwind label %_ZNSt12_Vector_baseISt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS5_EED2Ev.exit.i ; 3 uses

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.preheader.i.i ] ; 3 uses
  %.sroa.08.011.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.preheader.i.i ] ; 4 uses
  %i.l = load <2 x ptr>, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !254
  store <2 x ptr> %i.l, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !254
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !195
  store ptr %i.o, ptr %i.m, align 8, !tbaa !195
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i.i.i.i.i.i, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1931

_ZNSt12_Vector_baseISt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS5_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.r, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %.09) #19 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EED2Ev.exit unwind label %bb.e

_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !372   ; 4 uses
  %.pre18 = load ptr, ptr %i.b, align 8, !tbaa !371 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !420  ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !372
  store ptr %i.q, ptr %i.b, align 8, !tbaa !371
  store ptr %i.t, ptr %i.u, align 8, !tbaa !420
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre18
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit, %_ZSt8_DestroyISt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyISt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEEEvPT_.exit.i.i.i ], [ %.pre, %_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit ] ; 2 uses
  %i.w = load ptr, ptr %.05.i.i.i, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  tail call void @free(ptr noundef nonnull %i.w) #19
  br label %_ZSt8_DestroyISt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEEEvPT_.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.x, %.pre18
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !40

_ZSt8_DestroyIPSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEEEvPT_.exit.i.i.i, %_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit.thread, %_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit
  %i.y = phi ptr [ %i.j, %_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit.thread ], [ %i.v, %_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit ], [ %i.v, %_ZSt8_DestroyISt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEEEvPT_.exit.i.i.i ]
  %i.z = phi ptr [ %i.a, %_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit.thread ], [ %.pre, %_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit ], [ %.pre, %_ZSt8_DestroyISt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEEEvPT_.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #37
  br label %_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EED2Ev.exit

_ZNSt6vectorIS_ItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS4_EED2Ev.exit: ; preds = %bb.d, %_ZSt8_DestroyIPSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEES5_EvT_S7_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseISt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS5_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseISt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS5_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIPSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEES5_EvT_S7_RSaIT0_E.exit.i ], [ true, %bb.d ]
  ret i1 %.0

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEESaIS5_EED2Ev.exit.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM17MultiValSparseBinIttEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN8LightGBM17MultiValSparseBinIttEE, i64 16), ptr %0, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x i32>, ptr %i.d, align 8, !tbaa !58
  store <2 x i32> %i.e, ptr %i.c, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !370
  store double %i.h, ptr %i.f, align 8, !tbaa !370
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !117  ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !111  ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.q = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 32, i64 noundef %i.p) #19
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.q, 0
  %i.r = load ptr, ptr %i.b, align 8
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.r, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = phi ptr [ %.0.i.i.i.i.i.i.i, %bb.b ], [ null, %bb.a ] ; 10 uses
  store ptr %i.s, ptr %i.i, align 8, !tbaa !111
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !117
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.u, ptr %i.v, align 8, !tbaa !195
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !254  ; 7 uses
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !254  ; 3 uses
  %.not13.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not13.i.i, label %.loopexit19, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.y = ptrtoaddr ptr %i.w to i64                ; 2 uses
  %i.z = ptrtoaddr ptr %i.s to i64
  %i.aa = ptrtoaddr ptr %i.x to i64
  %i.ab = add i64 %i.aa, -2
  %i.ac = sub i64 %i.ab, %i.y                     ; 3 uses
  %i.ad = lshr i64 %i.ac, 1
  %i.ae = add nuw i64 %i.ad, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ac, 6
  %i.af = sub i64 %i.y, %i.z
  %diff.check = icmp ugt i64 %i.af, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check27 = icmp ult i64 %i.ac, 30
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %i.ae, 12
  %n.vec = and i64 %i.ae, -16                     ; 4 uses
  %i.ah = shl i64 %n.vec, 1                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.s, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.w, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ak ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.w, i64 %i.ak ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep28, align 2, !tbaa !89
  %wide.load29 = load <8 x i16>, ptr %i.al, align 2, !tbaa !89
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !89
  store <8 x i16> %wide.load29, ptr %i.am, align 2, !tbaa !89
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1933

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %.loopexit19, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !125

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %i.ae, -4                    ; 3 uses
end_hunk_7
begin_hunk_8_@_ZNK8LightGBM17MultiValSparseBinItjE26ConstructHistogramIntInnerILb1ELb1ELb0EiLi16EEEvPKiiiPKfPd:bb.a
  tail call void @llvm.prefetch.p0(ptr %i.o, i32 0, i32 3, i32 1)
  %i.p = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.n ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.p, i32 0, i32 3, i32 1)
  %i.q = load i16, ptr %i.p, align 2, !tbaa !89
  %i.r = zext i16 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.r
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 3, i32 1)
  %i.t = sext i32 %i.k to i64                     ; 2 uses
  %i.u = getelementptr [2 x i8], ptr %i.d, i64 %i.t ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !89   ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 2
  %i.x = load i16, ptr %i.w, align 2, !tbaa !89   ; 2 uses
  %i.y = getelementptr inbounds [2 x i8], ptr %4, i64 %i.t
  %i.z = load i16, ptr %i.y, align 2, !tbaa !89   ; 2 uses
  %i.aa = lshr i16 %i.z, 8
  %i.ab = zext nneg i16 %i.aa to i32
  %sext54 = shl nuw i32 %i.ab, 24
  %i.ac = ashr exact i32 %sext54, 8
  %i.ad = and i16 %i.z, 255
  %i.ae = zext nneg i16 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae            ; 5 uses
  %i.ag = icmp ult i16 %i.v, %i.x
  br i1 %i.ag, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph58
  %i.ah = zext i16 %i.v to i64                    ; 4 uses
  %wide.trip.count = zext i16 %i.x to i64         ; 3 uses
  %i.ai = sub nsw i64 %wide.trip.count, %i.ah
  %xtraiter = and i64 %i.ai, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.ah, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.prol
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !58
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !58
  %i.ao = add nsw i32 %i.af, %i.an
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !58
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !2019

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.ah, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ap = sub nsw i64 %i.ah, %wide.trip.count
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph58
  %indvars.iv.next68 = add nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %.lr.ph64.preheader, label %.lr.ph58, !llvm.loop !2020

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !58
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !58
  %i.aw = add nsw i32 %i.af, %i.av
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !58
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !58
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !58
  %i.bd = add nsw i32 %i.af, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !58
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !58
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !58
  %i.bk = add nsw i32 %i.af, %i.bj
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !58
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !58
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !58
  %i.br = add nsw i32 %i.af, %i.bq
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !58
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !2021

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %._crit_edge62
  %indvars.iv77 = phi i64 [ %i.i, %.lr.ph64.preheader ], [ %indvars.iv.next78, %._crit_edge62 ] ; 2 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv77
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !58
  %i.bu = sext i32 %i.bt to i64                   ; 2 uses
  %i.bv = getelementptr [2 x i8], ptr %i.d, i64 %i.bu ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !89 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bv, i64 2
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !89 ; 2 uses
  %i.bz = getelementptr inbounds [2 x i8], ptr %4, i64 %i.bu
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !89 ; 2 uses
  %i.cb = lshr i16 %i.ca, 8
  %i.cc = zext nneg i16 %i.cb to i32
  %sext = shl nuw i32 %i.cc, 24
  %i.cd = ashr exact i32 %sext, 8
  %i.ce = and i16 %i.ca, 255
  %i.cf = zext nneg i16 %i.ce to i32
  %i.cg = or disjoint i32 %i.cd, %i.cf            ; 5 uses
  %i.ch = icmp ult i16 %i.bw, %i.by
  br i1 %i.ch, label %.lr.ph61.preheader, label %._crit_edge62

.lr.ph61.preheader:                               ; preds = %.lr.ph64
  %i.ci = zext i16 %i.bw to i64                   ; 4 uses
  %wide.trip.count75 = zext i16 %i.by to i64      ; 3 uses
  %i.cj = sub nsw i64 %wide.trip.count75, %i.ci
  %xtraiter90 = and i64 %i.cj, 3                  ; 2 uses
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %.lr.ph61.prol.loopexit, label %.lr.ph61.prol

.lr.ph61.prol:                                    ; preds = %.lr.ph61.preheader, %.lr.ph61.prol
  %indvars.iv72.prol = phi i64 [ %indvars.iv.next73.prol, %.lr.ph61.prol ], [ %i.ci, %.lr.ph61.preheader ] ; 2 uses
  %prol.iter92 = phi i64 [ %prol.iter92.next, %.lr.ph61.prol ], [ 0, %.lr.ph61.preheader ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv72.prol
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !58
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cm ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !58
  %i.cp = add nsw i32 %i.cg, %i.co
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !58
  %indvars.iv.next73.prol = add nuw nsw i64 %indvars.iv72.prol, 1 ; 2 uses
  %prol.iter92.next = add i64 %prol.iter92, 1     ; 2 uses
  %prol.iter92.cmp.not = icmp eq i64 %prol.iter92.next, %xtraiter90
  br i1 %prol.iter92.cmp.not, label %.lr.ph61.prol.loopexit, label %.lr.ph61.prol, !llvm.loop !2022

.lr.ph61.prol.loopexit:                           ; preds = %.lr.ph61.prol, %.lr.ph61.preheader
  %indvars.iv72.unr = phi i64 [ %i.ci, %.lr.ph61.preheader ], [ %indvars.iv.next73.prol, %.lr.ph61.prol ]
  %i.cq = sub nsw i64 %i.ci, %wide.trip.count75
  %i.cr = icmp ugt i64 %i.cq, -4
  br i1 %i.cr, label %._crit_edge62, label %.lr.ph61

._crit_edge62:                                    ; preds = %.lr.ph61.prol.loopexit, %.lr.ph61, %.lr.ph64
  %indvars.iv.next78 = add nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %._crit_edge65, label %.lr.ph64, !llvm.loop !2023

.lr.ph61:                                         ; preds = %.lr.ph61.prol.loopexit, %.lr.ph61
  %indvars.iv72 = phi i64 [ %indvars.iv.next73.3, %.lr.ph61 ], [ %indvars.iv72.unr, %.lr.ph61.prol.loopexit ] ; 5 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv72
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !58
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !58
  %i.cx = add nsw i32 %i.cg, %i.cw
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !58
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv72
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !58
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.db ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !58
  %i.de = add nsw i32 %i.cg, %i.dd
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !58
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv72
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !58
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !58
  %i.dl = add nsw i32 %i.cg, %i.dk
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !58
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv72
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !58
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.dp ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !58
  %i.ds = add nsw i32 %i.cg, %i.dr
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !58
  %indvars.iv.next73.3 = add nuw nsw i64 %indvars.iv72, 4 ; 2 uses
  %exitcond76.not.3 = icmp eq i64 %indvars.iv.next73.3, %wide.trip.count75
  br i1 %exitcond76.not.3, label %._crit_edge62, label %.lr.ph61, !llvm.loop !2024

._crit_edge65:                                    ; preds = %._crit_edge62, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIS0_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS5_EELb1EE8_S_do_itERS7_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2026   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2026 ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %1 = sdiv exact i64 %i.f, 24
  %i.g = icmp ugt i64 %1, 384307168202282325
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #39
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseISt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS5_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit.thread, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit.thread: ; preds = %_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !423
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !423
  br label %_ZSt8_DestroyIPSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEES5_EvT_S7_RSaIT0_E.exit.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38
          to label %.lr.ph.i.i.i.i.i.i unwind label %_ZNSt12_Vector_baseISt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS5_EED2Ev.exit.i ; 3 uses

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.preheader.i.i ] ; 3 uses
  %.sroa.08.011.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.preheader.i.i ] ; 4 uses
  %i.l = load <2 x ptr>, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !71
  store <2 x ptr> %i.l, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !71
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !223
  store ptr %i.o, ptr %i.m, align 8, !tbaa !223
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i.i.i.i.i.i, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2025

_ZNSt12_Vector_baseISt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS5_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.r, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %.09) #19 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EED2Ev.exit unwind label %bb.e

_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !383   ; 4 uses
  %.pre18 = load ptr, ptr %i.b, align 8, !tbaa !382 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !423  ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !383
  store ptr %i.q, ptr %i.b, align 8, !tbaa !382
  store ptr %i.t, ptr %i.u, align 8, !tbaa !423
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre18
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit, %_ZSt8_DestroyISt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyISt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEEEvPT_.exit.i.i.i ], [ %.pre, %_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit ] ; 2 uses
  %i.w = load ptr, ptr %.05.i.i.i, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  tail call void @free(ptr noundef nonnull %i.w) #19
  br label %_ZSt8_DestroyISt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEEEvPT_.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.x, %.pre18
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !41

_ZSt8_DestroyIPSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEEEvPT_.exit.i.i.i, %_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit.thread, %_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit
  %i.y = phi ptr [ %i.j, %_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit.thread ], [ %i.v, %_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit ], [ %i.v, %_ZSt8_DestroyISt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEEEvPT_.exit.i.i.i ]
  %i.z = phi ptr [ %i.a, %_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit.thread ], [ %.pre, %_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit ], [ %.pre, %_ZSt8_DestroyISt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEEEvPT_.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #37
  br label %_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EED2Ev.exit

_ZNSt6vectorIS_IjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS4_EED2Ev.exit: ; preds = %bb.d, %_ZSt8_DestroyIPSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEES5_EvT_S7_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseISt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS5_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseISt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS5_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIPSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEES5_EvT_S7_RSaIT0_E.exit.i ], [ true, %bb.d ]
  ret i1 %.0

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEESaIS5_EED2Ev.exit.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM17MultiValSparseBinItjEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN8LightGBM17MultiValSparseBinItjEE, i64 16), ptr %0, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x i32>, ptr %i.d, align 8, !tbaa !58
  store <2 x i32> %i.e, ptr %i.c, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !381
  store double %i.h, ptr %i.f, align 8, !tbaa !381
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !132  ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !127  ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.q = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 32, i64 noundef %i.p) #19
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.q, 0
  %i.r = load ptr, ptr %i.b, align 8
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.r, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = phi ptr [ %.0.i.i.i.i.i.i.i, %bb.b ], [ null, %bb.a ] ; 8 uses
  store ptr %i.s, ptr %i.i, align 8, !tbaa !127
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !132
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.u, ptr %i.v, align 8, !tbaa !223
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !71   ; 5 uses
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !71   ; 3 uses
  %.not13.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not13.i.i, label %.loopexit18, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.y = ptrtoaddr ptr %i.w to i64                ; 2 uses
  %i.z = ptrtoaddr ptr %i.s to i64
  %i.aa = ptrtoaddr ptr %i.x to i64
  %i.ab = add i64 %i.aa, -4
  %i.ac = sub i64 %i.ab, %i.y                     ; 2 uses
  %i.ad = lshr i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 44
  %i.af = sub i64 %i.y, %i.z
  %diff.check = icmp ugt i64 %i.af, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader57, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.ae, 9223372036854775800     ; 3 uses
  %i.ag = shl i64 %n.vec, 2                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.s, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.aj ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.w, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep26, align 4, !tbaa !58
  %wide.load27 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !58
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !58
  store <4 x i32> %wide.load27, ptr %i.al, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !2027

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %.loopexit18, label %.lr.ph.i.i.preheader57

.lr.ph.i.i.preheader57:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.015.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.ah, %middle.block ]
  %.sroa.010.014.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader57, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %.015.i.i.ph, %.lr.ph.i.i.preheader57 ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %.sroa.010.014.i.i.ph, %.lr.ph.i.i.preheader57 ] ; 2 uses
  %i.an = load i32, ptr %.sroa.010.014.i.i, align 4, !tbaa !58
  store i32 %i.an, ptr %.015.i.i, align 4, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 4 ; 2 uses
end_hunk_8
