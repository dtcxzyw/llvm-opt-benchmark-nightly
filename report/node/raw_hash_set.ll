inline.NumInlined: 984
inline.NumDeleted: 283
begin_hunk_0_@_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb:bb.a
  br label %_ZN4absl18container_internal12CommonFields5infozEv.exit

_ZN4absl18container_internal12CommonFields5infozEv.exit: ; preds = %_ZN4absl18container_internal12_GLOBAL__N_135InitializeThreeElementsControlBytesEhhmPNS0_6ctrl_tE.exit, %bb.m, %bb.e
  %.0 = phi i64 [ %i.d, %bb.e ], [ %i.bn, %bb.m ], [ %i.bn, %_ZN4absl18container_internal12_GLOBAL__N_135InitializeThreeElementsControlBytesEhhmPNS0_6ctrl_tE.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef i64 @_ZN4absl18container_internal12_GLOBAL__N_160GrowEmptySooTableToNextCapacityForceSamplingAndPrepareInsertERNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr %2, ptr nofree readonly captures(none) %3) unnamed_addr #4 {
bb.a:
  tail call fastcc void @_ZN4absl18container_internal12_GLOBAL__N_132ResizeEmptyNonAllocatedTableImplERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef 3, i1 noundef zeroext true)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = lshr i64 %i.b, 17
  %i.d = load i64, ptr %0, align 8                ; 3 uses
  %i.e = icmp ult i64 %i.c, %i.d
  br i1 %i.e, label %_ZN4absl18container_internal12_GLOBAL__N_119PrepareInsertCommonERNS0_12CommonFieldsE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 988, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal12CommonFields14increment_sizeEv) #15
  unreachable

_ZN4absl18container_internal12_GLOBAL__N_119PrepareInsertCommonERNS0_12CommonFieldsE.exit: ; preds = %bb.a
  %i.f = add i64 %i.b, 131072
  store i64 %i.f, ptr %i.a, align 8
  %i.g = icmp ult i64 %i.d, 2
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4absl18container_internal12_GLOBAL__N_119PrepareInsertCommonERNS0_12CommonFieldsE.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.1, i32 noundef 1034, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal12CommonFields11growth_infoEv) #15
  unreachable

bb.d:                                             ; preds = %_ZN4absl18container_internal12_GLOBAL__N_119PrepareInsertCommonERNS0_12CommonFieldsE.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8 ; 3 uses
  %i.i = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.d
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %i.k = icmp ule ptr %i.j, %0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = icmp ule ptr %i.l, %.sroa.0.0.copyload.i.i.i
  %i.n = select i1 %i.k, i1 true, i1 %i.m
  br i1 %i.n, label %_ZNK4absl18container_internal12CommonFields7controlEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.1, i32 noundef 962, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl18container_internal12CommonFields7controlEv) #15
  unreachable

_ZNK4absl18container_internal12CommonFields7controlEv.exit.i: ; preds = %bb.d
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i, i64 -8 ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 7
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZN4absl18container_internal12CommonFields11growth_infoEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4absl18container_internal12CommonFields7controlEv.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 911, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal24GetGrowthInfoFromControlEPNS0_6ctrl_tE) #15
  unreachable

_ZN4absl18container_internal12CommonFields11growth_infoEv.exit: ; preds = %_ZNK4absl18container_internal12CommonFields7controlEv.exit.i
  %i.s = load i64, ptr %i.o, align 8              ; 2 uses
  %i.t = and i64 %i.s, 9223372036854775807
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.g, label %_ZN4absl18container_internal10GrowthInfo20OverwriteEmptyAsFullEv.exit

bb.g:                                             ; preds = %_ZN4absl18container_internal12CommonFields11growth_infoEv.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.1, i32 noundef 718, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal10GrowthInfo20OverwriteEmptyAsFullEv) #15
  unreachable

_ZN4absl18container_internal10GrowthInfo20OverwriteEmptyAsFullEv.exit: ; preds = %_ZN4absl18container_internal12CommonFields11growth_infoEv.exit
  %i.u = add i64 %i.s, -1
  store i64 %i.u, ptr %i.o, align 8
  %i.v = load i64, ptr %i.a, align 8              ; 2 uses
  %i.w = trunc i64 %i.v to i16
  %or.cond.i.i.i = icmp slt i16 %i.w, 1
  br i1 %or.cond.i.i.i, label %_ZNK4absl18container_internal12CommonFields4seedEv.exit, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZN4absl18container_internal10GrowthInfo20OverwriteEmptyAsFullEv.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 456, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal12PerTableSeedC2Et) #15
  unreachable

_ZNK4absl18container_internal12CommonFields4seedEv.exit: ; preds = %_ZN4absl18container_internal10GrowthInfo20OverwriteEmptyAsFullEv.exit
  %sext = shl i64 %i.v, 48
  %i.x = ashr exact i64 %sext, 48
  %i.y = tail call noundef i64 %3(ptr %2, i64 noundef %i.x) #16, !inline_history !14
  %i.z = lshr i64 %i.y, 57
  %i.aa = trunc nuw nsw i64 %i.z to i8            ; 2 uses
  %i.ab = load i64, ptr %0, align 8               ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 2
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4absl18container_internal12CommonFields4seedEv.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 1505, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal25SetCtrlInSingleGroupTableERKNS0_12CommonFieldsEmNS0_6ctrl_tEm) #15
  unreachable

bb.i:                                             ; preds = %_ZNK4absl18container_internal12CommonFields4seedEv.exit
  %i.ad = icmp ult i64 %i.ab, 17
  br i1 %i.ad, label %_ZN4absl18container_internal19DoSanitizeOnSetCtrlERKNS0_12CommonFieldsEmNS0_6ctrl_tEm.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.1, i32 noundef 1506, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal25SetCtrlInSingleGroupTableERKNS0_12CommonFieldsEmNS0_6ctrl_tEm) #15
  unreachable

_ZN4absl18container_internal19DoSanitizeOnSetCtrlERKNS0_12CommonFieldsEmNS0_6ctrl_tEm.exit.i.i: ; preds = %bb.i
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.h, align 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = icmp ule ptr %i.af, %0
  %i.ah = icmp ule ptr %i.l, %.sroa.0.0.copyload.i.i.i.i
  %i.ai = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %i.ai, label %_ZN4absl18container_internal25SetCtrlInSingleGroupTableERKNS0_12CommonFieldsEmhm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internal19DoSanitizeOnSetCtrlERKNS0_12CommonFieldsEmNS0_6ctrl_tEm.exit.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.1, i32 noundef 962, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl18container_internal12CommonFields7controlEv) #15
  unreachable

_ZN4absl18container_internal25SetCtrlInSingleGroupTableERKNS0_12CommonFieldsEmhm.exit: ; preds = %_ZN4absl18container_internal19DoSanitizeOnSetCtrlERKNS0_12CommonFieldsEmNS0_6ctrl_tEm.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 1 ; 2 uses
  store i8 %i.aa, ptr %i.aj, align 1
  %i.ak = load i64, ptr %0, align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 1
  store i8 %i.aa, ptr %i.am, align 1
  %i.an = load i64, ptr %i.a, align 8
  %i.ao = and i64 %i.an, 65536
  %.not.i9 = icmp eq i64 %i.ao, 0
  br i1 %.not.i9, label %_ZN4absl18container_internal12CommonFields5infozEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4absl18container_internal25SetCtrlInSingleGroupTableERKNS0_12CommonFieldsEmhm.exit
  %i.ap = tail call noundef ptr @_ZNK4absl18container_internal12CommonFields9infoz_ptrEv(ptr noundef nonnull align 8 dereferenceable(32) %0) ; 0 uses
  br label %_ZN4absl18container_internal12CommonFields5infozEv.exit

_ZN4absl18container_internal12CommonFields5infozEv.exit: ; preds = %_ZN4absl18container_internal25SetCtrlInSingleGroupTableERKNS0_12CommonFieldsEmhm.exit, %bb.l
  ret i64 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl18container_internal12_GLOBAL__N_119PrepareInsertCommonERNS0_12CommonFieldsE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = lshr i64 %i.b, 17
  %i.d = load i64, ptr %0, align 8
  %i.e = icmp ult i64 %i.c, %i.d
  br i1 %i.e, label %_ZN4absl18container_internal12CommonFields14increment_sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 988, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal12CommonFields14increment_sizeEv) #15
  unreachable

_ZN4absl18container_internal12CommonFields14increment_sizeEv.exit: ; preds = %bb.a
  %i.f = add i64 %i.b, 131072
  store i64 %i.f, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm1ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr %2, ptr %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 14
  %.val61 = load i8, ptr %i.a, align 2, !range !7, !noundef !8
  %i.b = trunc nuw i8 %.val61 to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.6, i32 noundef 780, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal12_GLOBAL__N_19AssertSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsE) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8
  %i.c = icmp eq i64 %.val, 1
  br i1 %i.c, label %_ZN4absl18container_internal12_GLOBAL__N_19AssertSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.6, i32 noundef 781, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal12_GLOBAL__N_19AssertSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsE) #15
  unreachable

_ZN4absl18container_internal12_GLOBAL__N_19AssertSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsE.exit: ; preds = %bb.c
  br i1 %4, label %bb.e, label %bb.f, !prof !6

bb.e:                                             ; preds = %_ZN4absl18container_internal12_GLOBAL__N_19AssertSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsE.exit
  %i.d = tail call fastcc noundef i64 @_ZN4absl18container_internal12_GLOBAL__N_160GrowEmptySooTableToNextCapacityForceSamplingAndPrepareInsertERNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr %2, ptr %3)
  br label %_ZN4absl18container_internal12CommonFields5infozEv.exit

bb.f:                                             ; preds = %_ZN4absl18container_internal12_GLOBAL__N_19AssertSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsE.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.f = load i64, ptr %i.e, align 8
  %.mask72 = and i64 %i.f, -131072
  %i.g = icmp eq i64 %.mask72, 131072
  br i1 %i.g, label %_ZN4absl18container_internal12_GLOBAL__N_117AllocBackingArrayERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmbPv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1655, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm1ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb) #15
  unreachable

_ZN4absl18container_internal12_GLOBAL__N_117AllocBackingArrayERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmbPv.exit: ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  store i64 3, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load i16, ptr %i.n, align 4, !alias.scope !15
  %i.p = zext i16 %i.o to i64                     ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 26
  %i.r = sub nsw i64 0, %i.p
  %i.s = and i64 %i.q, %i.r                       ; 2 uses
  %i.t = mul nuw nsw i64 %i.j, 3
  %i.u = add nuw nsw i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !15
  %i.x = tail call noundef ptr %i.w(ptr noundef %i.m, i64 noundef %i.u) #16, !noalias !15, !inline_history !12 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  %i.aa = load i64, ptr %i.e, align 8             ; 2 uses
  %i.ab = lshr i64 %i.aa, 17
  %i.ac = load i64, ptr %0, align 8
  %i.ad = icmp ult i64 %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4absl18container_internal12_GLOBAL__N_119PrepareInsertCommonERNS0_12CommonFieldsE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12_GLOBAL__N_117AllocBackingArrayERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmbPv.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 988, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal12CommonFields14increment_sizeEv) #15
  unreachable

_ZN4absl18container_internal12_GLOBAL__N_119PrepareInsertCommonERNS0_12CommonFieldsE.exit: ; preds = %_ZN4absl18container_internal12_GLOBAL__N_117AllocBackingArrayERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmbPv.exit
  %i.ae = add i64 %i.aa, 131072                   ; 2 uses
  store i64 %i.ae, ptr %i.e, align 8
  %.mask = and i64 %i.ae, -131072
  %i.af = icmp eq i64 %.mask, 262144
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4absl18container_internal12_GLOBAL__N_119PrepareInsertCommonERNS0_12CommonFieldsE.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 1670, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm1ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb) #15
  unreachable

bb.j:                                             ; preds = %_ZN4absl18container_internal12_GLOBAL__N_119PrepareInsertCommonERNS0_12CommonFieldsE.exit
  %i.ag = ptrtoint ptr %i.x to i64
  %i.ah = and i64 %i.ag, 7
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZN4absl18container_internal24GetGrowthInfoFromControlEPNS0_6ctrl_tE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 911, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal24GetGrowthInfoFromControlEPNS0_6ctrl_tE) #15
  unreachable

_ZN4absl18container_internal24GetGrowthInfoFromControlEPNS0_6ctrl_tE.exit: ; preds = %bb.j
  store i64 1, ptr %i.x, align 8
  %i.aj = load i8, ptr @_ZGVZN4absl18container_internal8NextSeedEvE4seed, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  %i.al = tail call align 2 ptr @llvm.threadlocal.address.p0(ptr align 2 @_ZZN4absl18container_internal8NextSeedEvE4seed) ; 3 uses
  br i1 %i.ak, label %bb.l, label %._ZN4absl18container_internal8NextSeedEv.exit_crit_edge.i.i, !prof !13

._ZN4absl18container_internal8NextSeedEv.exit_crit_edge.i.i: ; preds = %_ZN4absl18container_internal24GetGrowthInfoFromControlEPNS0_6ctrl_tE.exit
  %.pre.i.i = load i16, ptr %i.al, align 2
  br label %_ZN4absl18container_internal12CommonFields17generate_new_seedEb.exit

bb.l:                                             ; preds = %_ZN4absl18container_internal24GetGrowthInfoFromControlEPNS0_6ctrl_tE.exit
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = trunc i64 %i.am to i16
  store i8 1, ptr @_ZGVZN4absl18container_internal8NextSeedEvE4seed, align 8
  br label %_ZN4absl18container_internal12CommonFields17generate_new_seedEb.exit

_ZN4absl18container_internal12CommonFields17generate_new_seedEb.exit: ; preds = %._ZN4absl18container_internal8NextSeedEv.exit_crit_edge.i.i, %bb.l
  %i.ao = phi i16 [ %.pre.i.i, %._ZN4absl18container_internal8NextSeedEv.exit_crit_edge.i.i ], [ %i.an, %bb.l ]
  %i.ap = add i16 %i.ao, -21165                   ; 2 uses
  store i16 %i.ap, ptr %i.al, align 2
  %i.aq = load i64, ptr %i.e, align 8
  %i.ar = and i64 %i.aq, -65536
  %i.as = or i16 %i.ap, -32768
  %i.at = zext i16 %i.as to i64
  %i.au = or disjoint i64 %i.ar, %i.at
  store i64 %i.au, ptr %i.e, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call noundef ptr %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bb = load i64, ptr %i.e, align 8             ; 2 uses
  %i.bc = trunc i64 %i.bb to i16
  %or.cond.i.i.i = icmp slt i16 %i.bc, 1
  br i1 %or.cond.i.i.i, label %_ZNK4absl18container_internal12CommonFields4seedEv.exit, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZN4absl18container_internal12CommonFields17generate_new_seedEb.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 456, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal12PerTableSeedC2Et) #15
  unreachable

_ZNK4absl18container_internal12CommonFields4seedEv.exit: ; preds = %_ZN4absl18container_internal12CommonFields17generate_new_seedEb.exit
  %sext = shl i64 %i.bb, 48
  %i.bd = ashr exact i64 %sext, 48
  %i.be = tail call noundef i64 %i.aw(ptr noundef %i.az, ptr noundef nonnull %i.ba, i64 noundef %i.bd) #16
  %i.bf = lshr i64 %i.be, 57
  %i.bg = load i64, ptr %i.e, align 8             ; 2 uses
  %i.bh = trunc i64 %i.bg to i16
  %or.cond.i.i.i62 = icmp slt i16 %i.bh, 1
  br i1 %or.cond.i.i.i62, label %_ZNK4absl18container_internal12CommonFields4seedEv.exit64, label %.critedge.i.i.i63

.critedge.i.i.i63:                                ; preds = %_ZNK4absl18container_internal12CommonFields4seedEv.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 456, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal12PerTableSeedC2Et) #15
  unreachable

_ZNK4absl18container_internal12CommonFields4seedEv.exit64: ; preds = %_ZNK4absl18container_internal12CommonFields4seedEv.exit
  %sext71 = shl i64 %i.bg, 48
  %i.bi = ashr exact i64 %sext71, 48
  %i.bj = tail call noundef i64 %3(ptr %2, i64 noundef %i.bi) #16, !inline_history !14 ; 2 uses
  %i.bk = load i64, ptr %i.e, align 8             ; 2 uses
  %i.bl = trunc i64 %i.bk to i16
  %or.cond.i.i.i65 = icmp slt i16 %i.bl, 1
  br i1 %or.cond.i.i.i65, label %_ZN4absl18container_internal12_GLOBAL__N_135InitializeThreeElementsControlBytesEhhmPNS0_6ctrl_tE.exit, label %.critedge.i.i.i66

.critedge.i.i.i66:                                ; preds = %_ZNK4absl18container_internal12CommonFields4seedEv.exit64
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 456, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal12PerTableSeedC2Et) #15
  unreachable

_ZN4absl18container_internal12_GLOBAL__N_135InitializeThreeElementsControlBytesEhhmPNS0_6ctrl_tE.exit: ; preds = %_ZNK4absl18container_internal12CommonFields4seedEv.exit64
  %i.bm = xor i64 %i.bk, %i.bj
  %i.bn = and i64 %i.bm, 2                        ; 3 uses
  %i.bo = lshr i64 %i.bj, 57
  %i.bp = or disjoint i64 %i.bo, 128              ; 2 uses
  %i.bq = mul nuw nsw i64 %i.bf, 1099511628032
  %i.br = add nuw nsw i64 %i.bq, -9187342685793419136
  %i.bs = shl nuw nsw i64 %i.bn, 3                ; 2 uses
  %i.bt = shl nuw nsw i64 %i.bp, %i.bs
  %i.bu = xor i64 %i.bt, %i.br
  %i.bv = or disjoint i64 %i.bs, 32
  %i.bw = shl nuw nsw i64 %i.bp, %i.bv
  %i.bx = xor i64 %i.bu, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.by, i8 -128, i64 11, i1 false)
  store i64 %i.bx, ptr %i.y, align 8
  switch i32 %i.i, label %bb.n [
    i32 0, label %bb.m
    i32 1, label %bb.o
  ]

bb.m:                                             ; preds = %_ZN4absl18container_internal12_GLOBAL__N_135InitializeThreeElementsControlBytesEhhmPNS0_6ctrl_tE.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, i32 noundef 1691, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm1ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb) #15
  unreachable

bb.n:                                             ; preds = %_ZN4absl18container_internal12_GLOBAL__N_135InitializeThreeElementsControlBytesEhhmPNS0_6ctrl_tE.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6, i32 noundef 1692, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm1ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb) #15
  unreachable

bb.o:                                             ; preds = %_ZN4absl18container_internal12_GLOBAL__N_135InitializeThreeElementsControlBytesEhhmPNS0_6ctrl_tE.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ca = load i8, ptr %i.ba, align 8
  store i8 %i.ca, ptr %i.bz, align 1
  store ptr %i.y, ptr %i.ba, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.z, ptr %i.cb, align 8
  %i.cc = load i64, ptr %i.e, align 8
  %i.cd = and i64 %i.cc, 65536
  %.not.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i, label %_ZN4absl18container_internal12CommonFields5infozEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = tail call noundef ptr @_ZNK4absl18container_internal12CommonFields9infoz_ptrEv(ptr noundef nonnull align 8 dereferenceable(32) %0) ; 0 uses
  br label %_ZN4absl18container_internal12CommonFields5infozEv.exit

_ZN4absl18container_internal12CommonFields5infozEv.exit: ; preds = %bb.o, %bb.p, %bb.e
  %.0 = phi i64 [ %i.d, %bb.e ], [ %i.bn, %bb.p ], [ %i.bn, %bb.o ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm4ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr %2, ptr %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 14
  %.val61 = load i8, ptr %i.a, align 2, !range !7, !noundef !8
  %i.b = trunc nuw i8 %.val61 to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.6, i32 noundef 780, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal12_GLOBAL__N_19AssertSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsE) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8
  %i.c = icmp eq i64 %.val, 1
  br i1 %i.c, label %_ZN4absl18container_internal12_GLOBAL__N_19AssertSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.6, i32 noundef 781, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal12_GLOBAL__N_19AssertSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsE) #15
  unreachable

_ZN4absl18container_internal12_GLOBAL__N_19AssertSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsE.exit: ; preds = %bb.c
  br i1 %4, label %bb.e, label %bb.f, !prof !6

bb.e:                                             ; preds = %_ZN4absl18container_internal12_GLOBAL__N_19AssertSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsE.exit
  %i.d = tail call fastcc noundef i64 @_ZN4absl18container_internal12_GLOBAL__N_160GrowEmptySooTableToNextCapacityForceSamplingAndPrepareInsertERNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr %2, ptr %3)
  br label %_ZN4absl18container_internal12CommonFields5infozEv.exit

bb.f:                                             ; preds = %_ZN4absl18container_internal12_GLOBAL__N_19AssertSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsE.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.f = load i64, ptr %i.e, align 8
  %.mask73 = and i64 %i.f, -131072
  %i.g = icmp eq i64 %.mask73, 131072
  br i1 %i.g, label %_ZN4absl18container_internal12_GLOBAL__N_117AllocBackingArrayERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmbPv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1655, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm4ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb) #15
  unreachable

_ZN4absl18container_internal12_GLOBAL__N_117AllocBackingArrayERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmbPv.exit: ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  store i64 3, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load i16, ptr %i.n, align 4, !alias.scope !18
  %i.p = zext i16 %i.o to i64                     ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 26
  %i.r = sub nsw i64 0, %i.p
  %i.s = and i64 %i.q, %i.r                       ; 2 uses
  %i.t = mul nuw nsw i64 %i.j, 3
  %i.u = add nuw nsw i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !18
  %i.x = tail call noundef ptr %i.w(ptr noundef %i.m, i64 noundef %i.u) #16, !noalias !18, !inline_history !12 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  %i.aa = load i64, ptr %i.e, align 8             ; 2 uses
  %i.ab = lshr i64 %i.aa, 17
  %i.ac = load i64, ptr %0, align 8
  %i.ad = icmp ult i64 %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4absl18container_internal12_GLOBAL__N_119PrepareInsertCommonERNS0_12CommonFieldsE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12_GLOBAL__N_117AllocBackingArrayERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmbPv.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 988, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal12CommonFields14increment_sizeEv) #15
  unreachable

_ZN4absl18container_internal12_GLOBAL__N_119PrepareInsertCommonERNS0_12CommonFieldsE.exit: ; preds = %_ZN4absl18container_internal12_GLOBAL__N_117AllocBackingArrayERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmbPv.exit
  %i.ae = add i64 %i.aa, 131072                   ; 2 uses
  store i64 %i.ae, ptr %i.e, align 8
  %.mask = and i64 %i.ae, -131072
  %i.af = icmp eq i64 %.mask, 262144
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4absl18container_internal12_GLOBAL__N_119PrepareInsertCommonERNS0_12CommonFieldsE.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 1670, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm4ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb) #15
  unreachable

bb.j:                                             ; preds = %_ZN4absl18container_internal12_GLOBAL__N_119PrepareInsertCommonERNS0_12CommonFieldsE.exit
  %i.ag = ptrtoint ptr %i.x to i64
  %i.ah = and i64 %i.ag, 7
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZN4absl18container_internal24GetGrowthInfoFromControlEPNS0_6ctrl_tE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 911, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal24GetGrowthInfoFromControlEPNS0_6ctrl_tE) #15
  unreachable

_ZN4absl18container_internal24GetGrowthInfoFromControlEPNS0_6ctrl_tE.exit: ; preds = %bb.j
  store i64 1, ptr %i.x, align 8
  %i.aj = load i8, ptr @_ZGVZN4absl18container_internal8NextSeedEvE4seed, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  %i.al = tail call align 2 ptr @llvm.threadlocal.address.p0(ptr align 2 @_ZZN4absl18container_internal8NextSeedEvE4seed) ; 3 uses
  br i1 %i.ak, label %bb.l, label %._ZN4absl18container_internal8NextSeedEv.exit_crit_edge.i.i, !prof !13

._ZN4absl18container_internal8NextSeedEv.exit_crit_edge.i.i: ; preds = %_ZN4absl18container_internal24GetGrowthInfoFromControlEPNS0_6ctrl_tE.exit
  %.pre.i.i = load i16, ptr %i.al, align 2
  br label %_ZN4absl18container_internal12CommonFields17generate_new_seedEb.exit

bb.l:                                             ; preds = %_ZN4absl18container_internal24GetGrowthInfoFromControlEPNS0_6ctrl_tE.exit
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = trunc i64 %i.am to i16
  store i8 1, ptr @_ZGVZN4absl18container_internal8NextSeedEvE4seed, align 8
  br label %_ZN4absl18container_internal12CommonFields17generate_new_seedEb.exit

_ZN4absl18container_internal12CommonFields17generate_new_seedEb.exit: ; preds = %._ZN4absl18container_internal8NextSeedEv.exit_crit_edge.i.i, %bb.l
  %i.ao = phi i16 [ %.pre.i.i, %._ZN4absl18container_internal8NextSeedEv.exit_crit_edge.i.i ], [ %i.an, %bb.l ]
  %i.ap = add i16 %i.ao, -21165                   ; 2 uses
  store i16 %i.ap, ptr %i.al, align 2
  %i.aq = load i64, ptr %i.e, align 8
  %i.ar = and i64 %i.aq, -65536
  %i.as = or i16 %i.ap, -32768
  %i.at = zext i16 %i.as to i64
  %i.au = or disjoint i64 %i.ar, %i.at
  store i64 %i.au, ptr %i.e, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call noundef ptr %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bb = load i64, ptr %i.e, align 8             ; 2 uses
  %i.bc = trunc i64 %i.bb to i16
  %or.cond.i.i.i = icmp slt i16 %i.bc, 1
  br i1 %or.cond.i.i.i, label %_ZNK4absl18container_internal12CommonFields4seedEv.exit, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZN4absl18container_internal12CommonFields17generate_new_seedEb.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 456, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal12PerTableSeedC2Et) #15
  unreachable

_ZNK4absl18container_internal12CommonFields4seedEv.exit: ; preds = %_ZN4absl18container_internal12CommonFields17generate_new_seedEb.exit
  %sext = shl i64 %i.bb, 48
  %i.bd = ashr exact i64 %sext, 48
  %i.be = tail call noundef i64 %i.aw(ptr noundef %i.az, ptr noundef nonnull %i.ba, i64 noundef %i.bd) #16
  %i.bf = lshr i64 %i.be, 57
  %i.bg = load i64, ptr %i.e, align 8             ; 2 uses
  %i.bh = trunc i64 %i.bg to i16
  %or.cond.i.i.i62 = icmp slt i16 %i.bh, 1
  br i1 %or.cond.i.i.i62, label %_ZNK4absl18container_internal12CommonFields4seedEv.exit64, label %.critedge.i.i.i63

.critedge.i.i.i63:                                ; preds = %_ZNK4absl18container_internal12CommonFields4seedEv.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 456, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal12PerTableSeedC2Et) #15
  unreachable

_ZNK4absl18container_internal12CommonFields4seedEv.exit64: ; preds = %_ZNK4absl18container_internal12CommonFields4seedEv.exit
  %sext71 = shl i64 %i.bg, 48
  %i.bi = ashr exact i64 %sext71, 48
  %i.bj = tail call noundef i64 %3(ptr %2, i64 noundef %i.bi) #16, !inline_history !14 ; 2 uses
  %i.bk = load i64, ptr %i.e, align 8             ; 2 uses
  %i.bl = trunc i64 %i.bk to i16
  %or.cond.i.i.i65 = icmp slt i16 %i.bl, 1
  br i1 %or.cond.i.i.i65, label %_ZN4absl18container_internal12_GLOBAL__N_135InitializeThreeElementsControlBytesEhhmPNS0_6ctrl_tE.exit, label %.critedge.i.i.i66

.critedge.i.i.i66:                                ; preds = %_ZNK4absl18container_internal12CommonFields4seedEv.exit64
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 456, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18container_internal12PerTableSeedC2Et) #15
  unreachable

_ZN4absl18container_internal12_GLOBAL__N_135InitializeThreeElementsControlBytesEhhmPNS0_6ctrl_tE.exit: ; preds = %_ZNK4absl18container_internal12CommonFields4seedEv.exit64
  %i.bm = xor i64 %i.bk, %i.bj
  %i.bn = and i64 %i.bm, 2                        ; 3 uses
  %i.bo = lshr i64 %i.bj, 57
  %i.bp = or disjoint i64 %i.bo, 128              ; 2 uses
  %i.bq = mul nuw nsw i64 %i.bf, 1099511628032
  %i.br = add nuw nsw i64 %i.bq, -9187342685793419136
  %i.bs = shl nuw nsw i64 %i.bn, 3                ; 2 uses
  %i.bt = shl nuw nsw i64 %i.bp, %i.bs
  %i.bu = xor i64 %i.bt, %i.br
  %i.bv = or disjoint i64 %i.bs, 32
  %i.bw = shl nuw nsw i64 %i.bp, %i.bv
  %i.bx = xor i64 %i.bu, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.by, i8 -128, i64 11, i1 false)
  store i64 %i.bx, ptr %i.y, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.j
  %i.ca = icmp ugt i32 %i.i, 1
  br i1 %i.ca, label %bb.n, label %bb.m

end_hunk_0
