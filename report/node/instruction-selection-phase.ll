inline.NumInlined: 849
inline.NumDeleted: 571
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft28TurboshaftSpecialRPONumberer20SpecialRPOStackFrameEE4GrowEm:bb.a
  %i.az = load ptr, ptr %i.al, align 8
  store ptr %i.az, ptr %i.ag, align 8
  br label %_ZSt4moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit.i.i.i.i

_ZSt4moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aw
  br label %bb.l

bb.l:                                             ; preds = %_ZSt4moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.g
  %.sink16.i.i.i.i = phi i64 [ 8, %_ZSt4moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 16, %bb.g ]
  %.sink.i.i.i.i = phi ptr [ %i.ba, %_ZSt4moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ %i.ar, %bb.g ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sink16.i.i.i.i
  store ptr %.sink.i.i.i.i, ptr %i.bb, align 8
  store ptr %i.am, ptr %i.af, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i9, i64 24
  store ptr %i.am, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i9, i64 72
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i9, i64 32
  store ptr %i.bd, ptr %i.be, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft28TurboshaftSpecialRPONumberer20SpecialRPOStackFrameEE10emplace_atIJS5_EEEvPS5_DpOT_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft28TurboshaftSpecialRPONumberer20SpecialRPOStackFrameEE10emplace_atIJS5_EEEvPS5_DpOT_.exit: ; preds = %.lr.ph, %bb.l
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.af)
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i9, i64 72 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.d
  br i1 %i.bg, label %.lr.ph, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft28TurboshaftSpecialRPONumberer20SpecialRPOStackFrameEE16MoveToNewStorageEPS5_S7_PKS5_.exit.loopexit, !llvm.loop !34

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft28TurboshaftSpecialRPONumberer20SpecialRPOStackFrameEE16MoveToNewStorageEPS5_S7_PKS5_.exit.loopexit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft28TurboshaftSpecialRPONumberer20SpecialRPOStackFrameEE10emplace_atIJS5_EEEvPS5_DpOT_.exit
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft28TurboshaftSpecialRPONumberer20SpecialRPOStackFrameEE16MoveToNewStorageEPS5_S7_PKS5_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft28TurboshaftSpecialRPONumberer20SpecialRPOStackFrameEE16MoveToNewStorageEPS5_S7_PKS5_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft28TurboshaftSpecialRPONumberer20SpecialRPOStackFrameEE16MoveToNewStorageEPS5_S7_PKS5_.exit.loopexit, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft28TurboshaftSpecialRPONumberer20SpecialRPOStackFrameEA_S6_EEPT_m.exit
  %i.bh = phi ptr [ %.pre, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft28TurboshaftSpecialRPONumberer20SpecialRPOStackFrameEE16MoveToNewStorageEPS5_S7_PKS5_.exit.loopexit ], [ %i.aa, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft28TurboshaftSpecialRPONumberer20SpecialRPOStackFrameEA_S6_EEPT_m.exit ]
  %i.bi = getelementptr inbounds nuw [72 x i8], ptr %i.bh, i64 %i.p
  store ptr %i.bi, ptr %i.h, align 8
  ret void
}

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 {
_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #24
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft5BlockELm4ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft5BlockELm4ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft5BlockELm4ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.k, label %bb.b, label %bb.e, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !5

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.b, i64 %i.q, i1 false)
  br label %_ZSt18uninitialized_moveIPPKN2v88internal8compiler10turboshaft5BlockES7_ET0_T_S9_S8_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.h, label %_ZSt18uninitialized_moveIPPKN2v88internal8compiler10turboshaft5BlockES7_ET0_T_S9_S8_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.b, align 8
  store ptr %i.t, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPKN2v88internal8compiler10turboshaft5BlockES7_ET0_T_S9_S8_.exit

_ZSt18uninitialized_moveIPPKN2v88internal8compiler10turboshaft5BlockES7_ET0_T_S9_S8_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.u = shl nuw i64 1, %i.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft5BlockELm4ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  store ptr %i.o, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.u
  store ptr %i.w, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft5BlockELm4ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #6 comdat align 2 {
_ZSt9destroy_nIPPKN2v88internal8compiler10turboshaft5BlockElET_S8_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPKN2v88internal8compiler10turboshaft5BlockElET_S8_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #24
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPKN2v88internal8compiler10turboshaft5BlockElET_S8_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal15SparseBitVector14InsertBitAfterEPNS1_7SegmentEi(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %i.h = icmp ult i64 %i.g, 64
  br i1 %i.h, label %bb.b, label %_ZN2v88internal4Zone3NewINS0_15SparseBitVector7SegmentEJEEEPT_DpOT0_.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 64) #20
  %.pre.i.i = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal4Zone3NewINS0_15SparseBitVector7SegmentEJEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_15SparseBitVector7SegmentEJEEEPT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %.pre.i.i, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 4 uses
  %i.k = add i64 %i.i, 64
  store i64 %i.k, ptr %i.e, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i8 0, i64 64, i1 false)
  %i.l = srem i32 %2, 384                         ; 2 uses
  %i.m = sub nsw i32 %2, %i.l
  store i32 %i.m, ptr %i.j, align 8
  %.lhs.trunc = trunc nsw i32 %i.l to i16         ; 2 uses
  %i.n = sdiv i16 %.lhs.trunc, 64
  %i.o = srem i16 %.lhs.trunc, 64
  %.sext78 = zext nneg i16 %i.o to i64
  %i.p = shl nuw i64 1, %.sext78
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.r = sext i16 %i.n to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = or i64 %i.t, %i.p
  store i64 %i.u, ptr %i.s, align 8
  tail call void @_ZN2v88internal15SparseBitVector18InsertSegmentAfterEPNS1_7SegmentES3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull %i.j)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal15SparseBitVector18InsertSegmentAfterEPNS1_7SegmentES3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.b, ptr %i.c, align 8
  store ptr %2, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft5BlockEA_S6_EEPT_m.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #20
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft5BlockEA_S6_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft5BlockEA_S6_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft5BlockEA_S6_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft5BlockEA_S6_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft5BlockEA_S6_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

declare noundef ptr @_ZN2v88internal8compiler19InstructionSequence20InstructionBlocksForEPNS0_4ZoneERKNS1_10turboshaft5GraphE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(328)) local_unnamed_addr #4

declare void @_ZN2v88internal8compiler9ZoneStats10ReturnZoneEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN2v88internal8compiler9ZoneStats12NewEmptyZoneEPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #4

declare void @_ZN2v88internal8compiler19InstructionSequenceC1EPNS0_7IsolateEPNS0_4ZoneEPNS0_10ZoneVectorIPNS1_16InstructionBlockEEE(ptr noundef nonnull align 8 dereferenceable(352), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN2v88internal11CpuFeatures9ProbeImplEb(i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal8compiler13TurboJsonFileC1EPNS0_24OptimizedCompilationInfoESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef, i32 noundef) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_25InstructionSequenceAsJSONE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2v88internal8compiler13TurboJsonFileD1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_19InstructionSequenceE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(352)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK2v88internal9LocalHeap8IsParkedEv(ptr noundef nonnull align 8 dereferenceable(1944)) local_unnamed_addr #4

declare void @_ZN2v88internal9LocalHeap12ParkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944)) local_unnamed_addr #4

declare void @_ZN2v88internal9LocalHeap14UnparkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt8optionalIN2v88internal12StdoutStreamEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_(ptr noundef nonnull align 8 dereferenceable(360) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8
  br i1 %i.c, label %bb.b, label %_ZNSt19_Optional_base_implIN2v88internal12StdoutStreamESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN2v88internal12StdoutStreamEE10_M_destroyEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #20, !inline_history !33
  br label %_ZNSt22_Optional_payload_baseIN2v88internal12StdoutStreamEE10_M_destroyEv.exit.i.i

_ZNSt22_Optional_payload_baseIN2v88internal12StdoutStreamEE10_M_destroyEv.exit.i.i: ; preds = %bb.c, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #20, !inline_history !33
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.d) #20, !inline_history !33
  br label %_ZNSt19_Optional_base_implIN2v88internal12StdoutStreamESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit

_ZNSt19_Optional_base_implIN2v88internal12StdoutStreamESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit: ; preds = %bb.a, %_ZNSt22_Optional_payload_baseIN2v88internal12StdoutStreamEE10_M_destroyEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.i) #20
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr null, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 313
  store i8 0, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.n = load ptr, ptr @stdout, align 8
  tail call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(353) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.n) #20
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = tail call noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() #20 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #20
  store i8 1, ptr %i.a, align 8
  ret ptr %0
}

declare noundef ptr @_ZN2v84base2OS5FOpenEPKcS3_(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12StdoutStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN2v88internal12StdoutStreamD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #20
  br label %_ZN2v88internal12StdoutStreamD2Ev.exit

_ZN2v88internal12StdoutStreamD2Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #20
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #10

; Function Attrs: inlinehint nounwind uwtable
end_hunk_0
