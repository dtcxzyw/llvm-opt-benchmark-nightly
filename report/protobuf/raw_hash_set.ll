inline.NumInlined: 842
inline.NumDeleted: 267
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal34ResizeAllocatedTableWithSeedChangeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm:bb.a
.thread.i.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.sroa.5.0.lcssa.i.i.i.i.i = phi i64 [ %i.bi, %.preheader.i.i.i.i.i ], [ %i.bv, %.lr.ph.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i = phi i16 [ %i.bo, %.preheader.i.i.i.i.i ], [ %i.bz, %.lr.ph.i.i.i.i.i ]
  %i.bp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64
  %i.br = add i64 %.sroa.5.0.lcssa.i.i.i.i.i, %i.bq
  %i.bs = and i64 %i.br, %i.bh
  br label %"_ZZN4absl12lts_2025051218container_internal12_GLOBAL__N_132FindNewPositionsAndTransferSlotsERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPvmENK3$_0clESA_.exit.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.12.019.i.i.i.i.i = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i ]
  %.sroa.5.018.i.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i ], [ %i.bi, %.preheader.i.i.i.i.i ]
  %i.bt = add i64 %.sroa.12.019.i.i.i.i.i, 16     ; 2 uses
  %i.bu = add i64 %i.bt, %.sroa.5.018.i.i.i.i.i
  %i.bv = and i64 %i.bu, %i.bh                    ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bv
  %i.bx = load <16 x i8>, ptr %i.bw, align 1, !tbaa !8, !noalias !63
  %i.by = icmp slt <16 x i8> %i.bx, splat (i8 -1)
  %i.bz = bitcast <16 x i1> %i.by to i16          ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.thread.i.i.i.i.i, !llvm.loop !52

"_ZZN4absl12lts_2025051218container_internal12_GLOBAL__N_132FindNewPositionsAndTransferSlotsERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPvmENK3$_0clESA_.exit.i.i": ; preds = %.thread.i.i.i.i.i, %bb.g
  %.sroa.0.2.i.i.i.i.i = phi i64 [ %i.bs, %.thread.i.i.i.i.i ], [ %i.bi, %bb.g ] ; 3 uses
  %i.ca = trunc i64 %i.bb to i8
  %i.cb = and i8 %i.ca, 127                       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.0.2.i.i.i.i.i
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !44, !noalias !63
  %i.cd = add i64 %.sroa.0.2.i.i.i.i.i, -15
  %i.ce = and i64 %i.cd, %i.bh
  %i.cf = and i64 %i.bh, 15
  %i.cg = getelementptr i8, ptr %i.bc, i64 %i.ce
  %i.ch = getelementptr i8, ptr %i.cg, i64 %i.cf
  store i8 %i.cb, ptr %i.ch, align 1, !tbaa !44, !noalias !63
  %i.ci = mul i64 %.sroa.0.2.i.i.i.i.i, %i.g
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ci
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cj, ptr noundef %.01521.i.i, i64 noundef 1), !noalias !63, !inline_history !66
  br label %bb.h

bb.h:                                             ; preds = %"_ZZN4absl12lts_2025051218container_internal12_GLOBAL__N_132FindNewPositionsAndTransferSlotsERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPvmENK3$_0clESA_.exit.i.i", %bb.f
  %i.ck = ptrtoint ptr %.01521.i.i to i64
  %i.cl = add i64 %i.ck, %i.g
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = add nuw i64 %.023.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cn, %i.a
  br i1 %exitcond.not.i.i, label %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_116ResizeNonSooImplILNS2_16ResizeNonSooModeE1EEEvRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_20HashtablezInfoHandleE.exit, label %bb.f, !llvm.loop !67

_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_116ResizeNonSooImplILNS2_16ResizeNonSooModeE1EEEvRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_20HashtablezInfoHandleE.exit: ; preds = %bb.h, %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_19ResetCtrlERNS1_12CommonFieldsEm.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !55, !alias.scope !56
  tail call void %i.cp(ptr noundef %i.s, i64 noundef %i.a, ptr noundef %i.c, i64 noundef %i.g, i64 noundef %i.j, i1 noundef zeroext false), !noalias !56, !inline_history !59
  %i.cq = load i64, ptr %i.x, align 8, !tbaa !22, !noalias !56
  %i.cr = lshr i64 %i.cq, 17
  %i.cs = lshr i64 %2, 3
  %i.ct = add nuw nsw i64 %i.cs, %i.cr
  %i.cu = sub i64 %2, %i.ct
  store i64 %i.cu, ptr %i.v, align 8, !tbaa !23, !noalias !56
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051218container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %2, 0
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %i.b = lshr i64 -1, %i.a
  %i.c = select i1 %.not.i, i64 1, i64 %i.b       ; 5 uses
  %i.d = lshr i64 %i.c, 3
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !10   ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = icmp ult i32 %i.g, 131072
  br i1 %i.i, label %_ZN4absl12lts_2025051218container_internal16IsAboveValidSizeILm8EEEbmm.exit.i, label %_ZN4absl12lts_2025051218container_internal12MaxValidSizeILm8EEEmm.exit.i.i, !prof !7

_ZN4absl12lts_2025051218container_internal12MaxValidSizeILm8EEEmm.exit.i.i: ; preds = %bb.a
  %i.j = udiv i64 4611686018427387904, %i.h
  br label %_ZN4absl12lts_2025051218container_internal16IsAboveValidSizeILm8EEEbmm.exit.i

_ZN4absl12lts_2025051218container_internal16IsAboveValidSizeILm8EEEbmm.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal12MaxValidSizeILm8EEEmm.exit.i.i, %bb.a
  %.pn.i.i = phi i64 [ %i.j, %_ZN4absl12lts_2025051218container_internal12MaxValidSizeILm8EEEmm.exit.i.i ], [ 123145302310912, %bb.a ]
  %.0.i.i = icmp ugt i64 %i.e, %.pn.i.i
  br i1 %.0.i.i, label %bb.b, label %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_115ValidateMaxSizeEmm.exit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051218container_internal16IsAboveValidSizeILm8EEEbmm.exit.i
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_121HashTableSizeOverflowEv() #21
  unreachable

_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_115ValidateMaxSizeEmm.exit: ; preds = %_ZN4absl12lts_2025051218container_internal16IsAboveValidSizeILm8EEEbmm.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i16, ptr %i.m, align 4, !tbaa !15, !alias.scope !74
  %i.o = zext i16 %i.n to i64                     ; 2 uses
  store i64 %i.c, ptr %0, align 8, !tbaa !16, !noalias !74
  %i.p = add i64 %i.c, 23
  %i.q = add i64 %i.p, %i.o
  %i.r = sub nsw i64 0, %i.o
  %i.s = and i64 %i.q, %i.r                       ; 2 uses
  %i.t = mul i64 %i.c, %i.h
  %i.u = add i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20, !alias.scope !74
  %i.x = tail call noundef ptr %i.w(ptr noundef nonnull align 8 dereferenceable(32) %0), !noalias !74, !inline_history !43
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21, !alias.scope !74
  %i.aa = tail call noundef ptr %i.z(ptr noundef %i.x, i64 noundef %i.u), !noalias !74, !inline_history !43 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 5 uses
  store ptr %i.ab, ptr %i.k, align 8, !tbaa !28, !noalias !74
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !22, !noalias !74
  %i.ae = load i8, ptr @_ZGVZN4absl12lts_2025051218container_internal8NextSeedEvE4seed, align 8, !noalias !74
  %i.af = icmp eq i8 %i.ae, 0
  %i.ag = tail call align 2 ptr @llvm.threadlocal.address.p0(ptr align 2 @_ZZN4absl12lts_2025051218container_internal8NextSeedEvE4seed) ; 3 uses
  br i1 %i.af, label %bb.c, label %._ZN4absl12lts_2025051218container_internal8NextSeedEv.exit_crit_edge.i.i.i.i.i, !prof !25

._ZN4absl12lts_2025051218container_internal8NextSeedEv.exit_crit_edge.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_115ValidateMaxSizeEmm.exit
  %.pre.i.i.i.i.i = load i16, ptr %i.ag, align 2, !tbaa !26, !noalias !74
  br label %_ZN4absl12lts_2025051218container_internal12CommonFields11set_controlILb1EEEvPNS1_6ctrl_tE.exit.i.i

bb.c:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_115ValidateMaxSizeEmm.exit
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = trunc i64 %i.ah to i16
  store i8 1, ptr @_ZGVZN4absl12lts_2025051218container_internal8NextSeedEvE4seed, align 8, !noalias !74
  br label %_ZN4absl12lts_2025051218container_internal12CommonFields11set_controlILb1EEEvPNS1_6ctrl_tE.exit.i.i

_ZN4absl12lts_2025051218container_internal12CommonFields11set_controlILb1EEEvPNS1_6ctrl_tE.exit.i.i: ; preds = %bb.c, %._ZN4absl12lts_2025051218container_internal8NextSeedEv.exit_crit_edge.i.i.i.i.i
  %i.aj = phi i16 [ %.pre.i.i.i.i.i, %._ZN4absl12lts_2025051218container_internal8NextSeedEv.exit_crit_edge.i.i.i.i.i ], [ %i.ai, %bb.c ]
  %i.ak = and i64 %i.ad, -65536
  %i.al = add i16 %i.aj, -21165                   ; 2 uses
  store i16 %i.al, ptr %i.ag, align 2, !tbaa !26, !noalias !74
  %i.am = zext i16 %i.al to i64
  %i.an = or disjoint i64 %i.ak, %i.am
  store i64 %i.an, ptr %i.ac, align 8, !tbaa !22, !noalias !74
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  store ptr %i.ao, ptr %i.l, align 8, !tbaa !8, !noalias !74
  %i.ap = load i64, ptr %0, align 8, !tbaa !16, !noalias !74 ; 5 uses
  %i.aq = icmp ult i64 %i.ap, 32
  br i1 %i.aq, label %bb.d, label %bb.f, !prof !7

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12CommonFields11set_controlILb1EEEvPNS1_6ctrl_tE.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ab, i8 -128, i64 16, i1 false), !noalias !74
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ap
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ar, i8 -128, i64 16, i1 false), !noalias !74
  %i.as = icmp eq i64 %i.ap, 31
  br i1 %i.as, label %bb.e, label %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_132ResizeEmptyNonAllocatedTableImplERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmb.exit

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.at, i8 -128, i64 16, i1 false), !noalias !74
  br label %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_132ResizeEmptyNonAllocatedTableImplERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmb.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12CommonFields11set_controlILb1EEEvPNS1_6ctrl_tE.exit.i.i
  %i.au = add i64 %i.ap, 16
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ab, i8 -128, i64 %i.au, i1 false), !noalias !74
  br label %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_132ResizeEmptyNonAllocatedTableImplERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmb.exit

_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_132ResizeEmptyNonAllocatedTableImplERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmb.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ap
  store i8 -1, ptr %i.av, align 1, !tbaa !44, !noalias !74
  store i64 %i.e, ptr %i.aa, align 8, !tbaa !23, !noalias !74
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051218container_internal43GrowFullSooTableToNextCapacityForceSamplingERNS1_12CommonFieldsERKNS1_15PolicyFunctionsE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.b = load i8, ptr %i.a, align 1, !tbaa !32, !range !33, !alias.scope !75, !noundef !34
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_118ResizeFullSooTableERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS2_30ResizeFullSooTableSamplingModeE.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !10, !alias.scope !75
  %i.f = zext i32 %i.e to i64
  %i.g = load i32, ptr %1, align 8, !tbaa !36, !alias.scope !75
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !37, !alias.scope !75
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.m = load i8, ptr %i.l, align 2, !tbaa !38, !range !33, !alias.scope !75, !noundef !34
  %i.n = zext nneg i8 %i.m to i16
  tail call void @_ZN4absl12lts_2025051218container_internal15ForcedTrySampleEmmmt(i64 noundef %i.f, i64 noundef %i.h, i64 noundef %i.k, i16 noundef zeroext %i.n), !noalias !75
  br label %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_118ResizeFullSooTableERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS2_30ResizeFullSooTableSamplingModeE.exit

_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_118ResizeFullSooTableERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS2_30ResizeFullSooTableSamplingModeE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_118ResizeFullSooTableERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS2_30ResizeFullSooTableSamplingModeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %4 = trunc nuw i32 %3 to i1
  br i1 %4, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.e = load i8, ptr %i.d, align 1, !tbaa !32, !range !33, !noundef !34
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.j, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %1, align 8, !tbaa !36
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !37
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.m = load i8, ptr %i.l, align 2, !tbaa !38, !range !33, !noundef !34
  %i.n = zext nneg i8 %i.m to i16
  tail call void @_ZN4absl12lts_2025051218container_internal15ForcedTrySampleEmmmt(i64 noundef %i.c, i64 noundef %i.h, i64 noundef %i.k, i16 noundef zeroext %i.n)
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = load i16, ptr %i.o, align 4, !tbaa !15
  %i.q = zext i16 %i.p to i64                     ; 2 uses
  store i64 %2, ptr %0, align 8, !tbaa !16
  %i.r = add i64 %2, 23
  %i.s = add i64 %i.r, %i.q
  %i.t = sub nsw i64 0, %i.q
  %i.u = and i64 %i.s, %i.t                       ; 2 uses
  %i.v = mul i64 %2, %i.c
  %i.w = add i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.z = tail call noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = tail call noundef ptr %i.ab(ptr noundef %i.z, i64 noundef %i.w) ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !78
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !64
  %i.aj = tail call noundef ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.al = tail call noundef i64 %i.ag(ptr noundef %i.aj, ptr noundef nonnull %i.ak) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val41 = load ptr, ptr %i.am, align 8
  %i.an = load i64, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !22
  %i.aq = load i8, ptr @_ZGVZN4absl12lts_2025051218container_internal8NextSeedEvE4seed, align 8
  %i.ar = icmp eq i8 %i.aq, 0
  %i.as = tail call align 2 ptr @llvm.threadlocal.address.p0(ptr align 2 @_ZZN4absl12lts_2025051218container_internal8NextSeedEvE4seed) ; 3 uses
  br i1 %i.ar, label %bb.e, label %._ZN4absl12lts_2025051218container_internal8NextSeedEv.exit_crit_edge.i.i.i, !prof !25

._ZN4absl12lts_2025051218container_internal8NextSeedEv.exit_crit_edge.i.i.i: ; preds = %bb.d
  %.pre.i.i.i = load i16, ptr %i.as, align 2, !tbaa !26
  br label %_ZN4absl12lts_2025051218container_internal12CommonFields17generate_new_seedEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = trunc i64 %i.at to i16
  store i8 1, ptr @_ZGVZN4absl12lts_2025051218container_internal8NextSeedEvE4seed, align 8
  br label %_ZN4absl12lts_2025051218container_internal12CommonFields17generate_new_seedEv.exit.i

_ZN4absl12lts_2025051218container_internal12CommonFields17generate_new_seedEv.exit.i: ; preds = %bb.e, %._ZN4absl12lts_2025051218container_internal8NextSeedEv.exit_crit_edge.i.i.i
  %i.av = phi i16 [ %.pre.i.i.i, %._ZN4absl12lts_2025051218container_internal8NextSeedEv.exit_crit_edge.i.i.i ], [ %i.au, %bb.e ]
  %i.aw = and i64 %i.ap, -65536
  %i.ax = add i16 %i.av, -21165                   ; 2 uses
  store i16 %i.ax, ptr %i.as, align 2, !tbaa !26
  %i.ay = zext i16 %i.ax to i64                   ; 2 uses
  %i.az = or disjoint i64 %i.aw, %i.ay
  store i64 %i.az, ptr %i.ao, align 8, !tbaa !22
  %i.ba = lshr i64 %i.al, 7
  %i.bb = xor i64 %i.ba, %i.ay
  %i.bc = and i64 %i.bb, %i.an                    ; 2 uses
  %i.bd = icmp eq i64 %i.bc, %i.an
  %i.be = select i1 %i.bd, i64 0, i64 %i.bc       ; 3 uses
  %i.bf = mul i64 %i.be, %i.c
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bf
  tail call void %.val41(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bg, ptr noundef nonnull %i.ak, i64 noundef 1), !inline_history !79
  store ptr %i.ad, ptr %i.ak, align 8, !tbaa !28
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ae, ptr %i.bh, align 8, !tbaa !8
  %i.bi = load i64, ptr %0, align 8, !tbaa !16    ; 5 uses
  %i.bj = icmp ult i64 %i.bi, 32
  br i1 %i.bj, label %bb.f, label %bb.h, !prof !7

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12CommonFields17generate_new_seedEv.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ad, i8 -128, i64 16, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bi
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bk, i8 -128, i64 16, i1 false)
  %i.bl = icmp eq i64 %i.bi, 31
  br i1 %i.bl, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bm, i8 -128, i64 16, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12CommonFields17generate_new_seedEv.exit.i
  %i.bn = add i64 %i.bi, 16
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ad, i8 -128, i64 %i.bn, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bi
  store i8 -1, ptr %i.bo, align 1, !tbaa !44
  %i.bp = trunc i64 %i.al to i8
  %i.bq = and i8 %i.bp, 127                       ; 2 uses
  %i.br = load ptr, ptr %i.ak, align 8, !tbaa !8  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.be
  store i8 %i.bq, ptr %i.bs, align 1, !tbaa !44
  %i.bt = add nsw i64 %i.be, -15
  %i.bu = load i64, ptr %0, align 8, !tbaa !16    ; 4 uses
  %i.bv = and i64 %i.bu, %i.bt
  %i.bw = and i64 %i.bu, 15
  %i.bx = getelementptr i8, ptr %i.br, i64 %i.bv
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bw
  store i8 %i.bq, ptr %i.by, align 1, !tbaa !44
  %i.bz = load ptr, ptr %i.ak, align 8, !tbaa !8
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -8
  %i.cb = load i64, ptr %i.ao, align 8, !tbaa !22
  %i.cc = lshr i64 %i.cb, 17
  %i.cd = lshr i64 %i.bu, 3
  %i.ce = add nuw nsw i64 %i.cd, %i.cc
  %i.cf = sub i64 %i.bu, %i.ce
  store i64 %i.cf, ptr %i.ca, align 8, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.c, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051218container_internal6RehashERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"union.absl::lts_20250512::container_internal::HeapOrSoo", align 8 ; 4 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %i.d = zext i32 %i.c to i64                     ; 5 uses
  %i.e = icmp eq i64 %2, 0                        ; 2 uses
  br i1 %i.e, label %bb.c, label %.split

.split:                                           ; preds = %bb.a
  %i.f = icmp ult i32 %i.c, 131072
  br i1 %i.f, label %_ZN4absl12lts_2025051218container_internal16IsAboveValidSizeILm8EEEbmm.exit.i, label %_ZN4absl12lts_2025051218container_internal12MaxValidSizeILm8EEEmm.exit.i.i, !prof !7

_ZN4absl12lts_2025051218container_internal12MaxValidSizeILm8EEEmm.exit.i.i: ; preds = %.split
  %i.g = udiv i64 4611686018427387904, %i.d
  br label %_ZN4absl12lts_2025051218container_internal16IsAboveValidSizeILm8EEEbmm.exit.i

_ZN4absl12lts_2025051218container_internal16IsAboveValidSizeILm8EEEbmm.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal12MaxValidSizeILm8EEEmm.exit.i.i, %.split
  %.pn.i.i = phi i64 [ %i.g, %_ZN4absl12lts_2025051218container_internal12MaxValidSizeILm8EEEmm.exit.i.i ], [ 123145302310912, %.split ]
  %.0.i.i = icmp ugt i64 %2, %.pn.i.i
  br i1 %.0.i.i, label %bb.b, label %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_115ValidateMaxSizeEmm.exit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051218container_internal16IsAboveValidSizeILm8EEEbmm.exit.i
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_121HashTableSizeOverflowEv() #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.i = load i8, ptr %i.h, align 2, !tbaa !38, !range !33, !noundef !34
  %i.j = zext nneg i8 %i.i to i64                 ; 3 uses
  %.not = icmp ugt i64 %i.a, %i.j
  br i1 %.not, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  %i.m = icmp ult i64 %i.l, 131072
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(32) %0), !inline_history !80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !55, !alias.scope !81
  %i.s = load i64, ptr %0, align 8, !tbaa !16, !noalias !81
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8, !noalias !81
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = load i16, ptr %i.v, align 4, !tbaa !15, !alias.scope !81
  %i.x = zext i16 %i.w to i64
  %i.y = load i64, ptr %i.k, align 8, !tbaa !22, !noalias !81
  %i.z = and i64 %i.y, 65536
  %i.aa = icmp ne i64 %i.z, 0
  tail call void %i.r(ptr noundef %i.p, i64 noundef %i.s, ptr noundef %i.u, i64 noundef %i.d, i64 noundef %i.x, i1 noundef zeroext %i.aa), !noalias !81, !inline_history !84
  store i64 %i.j, ptr %0, align 8, !noalias !81
  store i64 0, ptr %i.k, align 8, !noalias !81
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %i.t, align 8, !noalias !81
  br label %bb.s

bb.f:                                             ; preds = %bb.d
  %i.ab = lshr i64 %i.l, 17                       ; 2 uses
  %.not47 = icmp samesign ugt i64 %i.ab, %i.j
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE:.critedge
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %3
  store i8 %i.l, ptr %i.n, align 1, !tbaa !44
  %i.o = add i64 %3, -15
  %i.p = load i64, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.q = and i64 %i.p, %i.o
  %i.r = and i64 %i.p, 15
  %i.s = getelementptr i8, ptr %i.m, i64 %i.q
  %i.t = getelementptr i8, ptr %i.s, i64 %i.r
  store i8 %i.l, ptr %i.t, align 1, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.f, %bb.a ], [ %3, %bb.b ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_123PrepareInsertNonSooSlowERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 0, label %bb.b
    i64 -9223372036854775808, label %bb.c
  ], !prof !112

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i64 @_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_134GrowToNextCapacityAndPrepareInsertERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef i64 @_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_142RehashOrGrowToNextCapacityAndPrepareInsertERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = tail call { i64, i64 } @_ZN4absl12lts_2025051218container_internal19find_first_non_fullERKNS1_12CommonFieldsEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2)
  %i.h = extractvalue { i64, i64 } %i.g, 0        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !22
  %i.k = add i64 %i.j, 131072
  store i64 %i.k, ptr %i.i, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h
  %i.m = load i8, ptr %i.l, align 1, !tbaa !44
  %i.n = icmp eq i8 %i.m, -128
  %.neg.i = sext i1 %i.n to i64
  %i.o = add nsw i64 %i.d, %.neg.i
  store i64 %i.o, ptr %i.c, align 8, !tbaa !23
  %i.p = trunc i64 %2 to i8
  %i.q = and i8 %i.p, 127                         ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.h
  store i8 %i.q, ptr %i.s, align 1, !tbaa !44
  %i.t = add i64 %i.h, -15
  %i.u = load i64, ptr %0, align 8, !tbaa !16
  %i.v = and i64 %i.u, %i.t
  %i.w = getelementptr i8, ptr %i.r, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 15
  store i8 %i.q, ptr %i.x, align 1, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %i.h, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #12

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: mustprogress noinline noreturn uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_121HashTableSizeOverflowEv() unnamed_addr #15 {
bb.a:
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 82, ptr noundef nonnull @.str.1)
  unreachable
}

declare void @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #16

declare void @_ZN4absl12lts_2025051218container_internal15ForcedTrySampleEmmmt(i64 noundef, i64 noundef, i64 noundef, i16 noundef zeroext) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_134GrowToNextCapacityAndPrepareInsertERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i64 noundef %2) unnamed_addr #3 {
.critedge:
  %i.a = load i64, ptr %0, align 8, !tbaa !16     ; 6 uses
  %i.b = shl i64 %i.a, 1                          ; 4 uses
  %i.c = or disjoint i64 %i.b, 1                  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.f, align 8, !tbaa !8 ; 2 uses
  store i64 %i.c, ptr %0, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !10
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load i16, ptr %i.j, align 4, !tbaa !15
  %i.l = zext i16 %i.k to i64                     ; 3 uses
  %.not = icmp eq i64 %i.a, 0
  %i.m = add i64 %i.b, 24
  %i.n = add i64 %i.m, %i.l
  %i.o = sub nsw i64 0, %i.l
  %i.p = and i64 %i.n, %i.o                       ; 2 uses
  %i.q = mul i64 %i.c, %i.i
  %i.r = add i64 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.u = tail call noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(32) %0) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.x = tail call noundef ptr %i.w(ptr noundef %i.u, i64 noundef %i.r) ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p ; 2 uses
  store ptr %i.y, ptr %i.d, align 8, !tbaa !28
  store ptr %i.z, ptr %i.f, align 8, !tbaa !8
  %i.aa = trunc i64 %2 to i8
  %i.ab = and i8 %i.aa, 127                       ; 4 uses
  br i1 %.not, label %bb.a, label %bb.c

bb.a:                                             ; preds = %.critedge
  %i.ac = and i64 %2, 127
  %i.ad = mul nuw nsw i64 %i.ac, 65537
  %i.ae = add nuw nsw i64 %i.ad, -9187201950444093696
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.af, i8 -128, i64 9, i1 false)
  store i64 %i.ae, ptr %i.y, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !22
  %i.ai = load i8, ptr @_ZGVZN4absl12lts_2025051218container_internal8NextSeedEvE4seed, align 8
  %i.aj = icmp eq i8 %i.ai, 0
  %i.ak = tail call align 2 ptr @llvm.threadlocal.address.p0(ptr align 2 @_ZZN4absl12lts_2025051218container_internal8NextSeedEvE4seed) ; 3 uses
  br i1 %i.aj, label %bb.b, label %._ZN4absl12lts_2025051218container_internal8NextSeedEv.exit_crit_edge.i.i, !prof !25

._ZN4absl12lts_2025051218container_internal8NextSeedEv.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i16, ptr %i.ak, align 2, !tbaa !26
  br label %_ZN4absl12lts_2025051218container_internal12CommonFields17generate_new_seedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = trunc i64 %i.al to i16
  store i8 1, ptr @_ZGVZN4absl12lts_2025051218container_internal8NextSeedEvE4seed, align 8
  br label %_ZN4absl12lts_2025051218container_internal12CommonFields17generate_new_seedEv.exit

_ZN4absl12lts_2025051218container_internal12CommonFields17generate_new_seedEv.exit: ; preds = %._ZN4absl12lts_2025051218container_internal8NextSeedEv.exit_crit_edge.i.i, %bb.b
  %i.an = phi i16 [ %.pre.i.i, %._ZN4absl12lts_2025051218container_internal8NextSeedEv.exit_crit_edge.i.i ], [ %i.am, %bb.b ]
  %i.ao = and i64 %i.ah, -65536
  %i.ap = add i16 %i.an, -21165                   ; 2 uses
  store i16 %i.ap, ptr %i.ak, align 2, !tbaa !26
  %i.aq = zext i16 %i.ap to i64
  %i.ar = or disjoint i64 %i.ao, %i.aq
  br label %bb.g

bb.c:                                             ; preds = %.critedge
  %i.as = icmp ult i64 %i.c, 17
  br i1 %i.as, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.at = icmp ult i64 %i.a, 8
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.a
  %.0.copyload.i.i.i = load i64, ptr %i.au, align 1, !alias.scope !113, !noalias !116
  %i.av = xor i64 %.0.copyload.i.i.i, 127         ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 -9187201950435737472, ptr %i.aw, align 1, !alias.scope !116, !noalias !113
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.c ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 -9187201950435737472, ptr %i.ay, align 1, !alias.scope !116, !noalias !113
  store i64 %i.av, ptr %i.y, align 1, !alias.scope !116, !noalias !113
  store i8 -1, ptr %i.ax, align 1, !tbaa !44, !alias.scope !116, !noalias !113
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i64 %i.av, ptr %i.az, align 1, !alias.scope !116, !noalias !113
  %i.ba = ptrtoint ptr %i.z to i64
  %i.bb = add i64 %i.ba, %i.i
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !27
  tail call void %i.be(ptr noundef nonnull %0, ptr noundef %i.bc, ptr noundef %.sroa.0.0.copyload.i.i, i64 noundef %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !22
  %i.bh = xor i64 %i.bg, %2
  %.not102 = trunc i64 %i.bh to i1
  %i.bi = select i1 %.not102, i64 0, i64 %i.b     ; 2 uses
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi ; 2 uses
  store i8 %i.ab, ptr %i.bk, align 1, !tbaa !44
  %i.bl = load i64, ptr %0, align 8, !tbaa !16
  %i.bm = getelementptr i8, ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 1
  store i8 %i.ab, ptr %i.bn, align 1, !tbaa !44
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_126GrowToNextCapacityDispatchERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPNS1_6ctrl_tEPv(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.e, ptr noundef %.sroa.0.0.copyload.i.i)
  %i.bo = tail call { i64, i64 } @_ZN4absl12lts_2025051218container_internal19find_first_non_fullERKNS1_12CommonFieldsEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2)
  %i.bp = extractvalue { i64, i64 } %i.bo, 0      ; 3 uses
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !8   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp
  store i8 %i.ab, ptr %i.br, align 1, !tbaa !44
  %i.bs = add i64 %i.bp, -15
  %i.bt = load i64, ptr %0, align 8, !tbaa !16
  %i.bu = and i64 %i.bt, %i.bs
  %i.bv = getelementptr i8, ptr %i.bq, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 15
  store i8 %i.ab, ptr %i.bw, align 1, !tbaa !44
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.08.0 = phi i64 [ %i.bi, %bb.d ], [ %i.bp, %bb.e ]
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !55
  tail call void %i.by(ptr noundef %i.u, i64 noundef %i.a, ptr noundef %i.e, i64 noundef %i.i, i64 noundef %i.l, i1 noundef zeroext false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12CommonFields17generate_new_seedEv.exit, %bb.f
  %i.bz = phi i64 [ %i.ar, %_ZN4absl12lts_2025051218container_internal12CommonFields17generate_new_seedEv.exit ], [ %.pre, %bb.f ]
  %.sroa.08.1 = phi i64 [ 0, %_ZN4absl12lts_2025051218container_internal12CommonFields17generate_new_seedEv.exit ], [ %.sroa.08.0, %bb.f ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = add i64 %i.bz, 131072                   ; 2 uses
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !22
  %i.cc = lshr i64 %i.cb, 17
  %i.cd = lshr i64 %i.b, 3
  %i.ce = add nuw nsw i64 %i.cd, %i.cc
  %i.cf = sub i64 %i.c, %i.ce
  store i64 %i.cf, ptr %i.x, align 8, !tbaa !23
  ret i64 %.sroa.08.1
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef i64 @_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_142RehashOrGrowToNextCapacityAndPrepareInsertERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i64 noundef %2) unnamed_addr #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !16     ; 9 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ugt i64 %i.a, 16
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22
  %i.f = lshr i64 %i.e, 12
  %i.g = and i64 %i.f, 4503599627370464
  %i.h = mul i64 %i.a, 25
  %.not = icmp ugt i64 %i.g, %i.h
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !8, !noalias !118 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8, !noalias !118 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.a ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.k, %bb.c ] ; 3 uses
  %i.m = load <16 x i8>, ptr %.012.i.i, align 1, !tbaa !8, !noalias !118
  %isneg = icmp slt <16 x i8> %i.m, zeroinitializer
  %.inner35 = select <16 x i1> %isneg, <16 x i8> splat (i8 -128), <16 x i8> splat (i8 -2)
  store <16 x i8> %.inner35, ptr %.012.i.i, align 1, !tbaa !8, !noalias !118
  %i.n = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 16 ; 2 uses
  %i.o = icmp ult ptr %i.n, %i.l
  br i1 %i.o, label %.lr.ph.i.i, label %.lr.ph.i, !llvm.loop !50

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.p, ptr noundef nonnull align 1 dereferenceable(15) %i.k, i64 15, i1 false), !noalias !118
  store i8 -1, ptr %i.l, align 1, !tbaa !44, !noalias !118
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64, !alias.scope !118
  %i.s = tail call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(32) %0), !noalias !118, !inline_history !121
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78, !alias.scope !118
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27, !alias.scope !118 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !10, !alias.scope !118
  %i.z = zext i32 %i.y to i64                     ; 4 uses
  br label %bb.d

._crit_edge.i:                                    ; preds = %bb.l
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !22, !noalias !118 ; 2 uses
  %i.ab = add i64 %i.aa, 131072                   ; 2 uses
  store i64 %i.ab, ptr %i.d, align 8, !tbaa !22, !noalias !118
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !8, !noalias !118
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ae = load i64, ptr %0, align 8, !tbaa !16, !noalias !118 ; 6 uses
  %i.af = lshr i64 %i.ab, 17
  %i.ag = lshr i64 %i.ae, 3
  %i.ah = add nuw nsw i64 %i.af, %i.ag
  %i.ai = sub i64 %i.ae, %i.ah
  store i64 %i.ai, ptr %i.ad, align 8, !tbaa !23, !noalias !118
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !8, !noalias !118 ; 4 uses
  %i.ak = and i64 %i.aa, 65535
  %i.al = lshr i64 %2, 7
  %i.am = xor i64 %i.ak, %i.al
  %i.an = and i64 %i.ae, %i.am                    ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !44, !noalias !118
  %i.aq = icmp slt i8 %i.ap, -1
  br i1 %i.aq, label %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_140DropDeletesWithoutResizeAndPrepareInsertERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i
  %i.ar = load <16 x i8>, ptr %i.ao, align 1, !tbaa !8, !noalias !118
  %i.as = icmp slt <16 x i8> %i.ar, splat (i8 -1)
  %i.at = bitcast <16 x i1> %i.as to i16          ; 2 uses
  %.not17.i.i.i = icmp eq i16 %i.at, 0
  br i1 %.not17.i.i.i, label %.lr.ph.i.i.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.5.0.lcssa.i.i.i = phi i64 [ %i.an, %.preheader.i.i.i ], [ %i.ba, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.at, %.preheader.i.i.i ], [ %i.be, %.lr.ph.i.i.i ]
  %i.au = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = add i64 %.sroa.5.0.lcssa.i.i.i, %i.av
  %i.ax = and i64 %i.aw, %i.ae
  br label %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_140DropDeletesWithoutResizeAndPrepareInsertERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm.exit

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.sroa.12.019.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i ], [ 0, %.preheader.i.i.i ]
  %.sroa.5.018.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i ], [ %i.an, %.preheader.i.i.i ]
  %i.ay = add i64 %.sroa.12.019.i.i.i, 16         ; 2 uses
  %i.az = add i64 %i.ay, %.sroa.5.018.i.i.i
  %i.ba = and i64 %i.az, %i.ae                    ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ba
  %i.bc = load <16 x i8>, ptr %i.bb, align 1, !tbaa !8, !noalias !118
  %i.bd = icmp slt <16 x i8> %i.bc, splat (i8 -1)
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.thread.i.i.i, !llvm.loop !52

bb.d:                                             ; preds = %bb.l, %.lr.ph.i
  %.099144.i = phi ptr [ %.sroa.0.0.copyload.i.i.i, %.lr.ph.i ], [ %i.dy, %bb.l ] ; 9 uses
  %.0101143.i = phi i64 [ -1, %.lr.ph.i ], [ %.4.i, %bb.l ] ; 4 uses
  %.0105142.i = phi i64 [ 0, %.lr.ph.i ], [ %i.dv, %bb.l ] ; 14 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0105142.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !44, !noalias !118
  switch i8 %i.bg, label %.fold.split.i [
    i8 -128, label %bb.l
    i8 -2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.bh = tail call noundef i64 %i.u(ptr noundef %i.s, ptr noundef %.099144.i), !noalias !118, !inline_history !121 ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !8, !noalias !118 ; 6 uses
  %i.bj = load i64, ptr %i.d, align 8, !tbaa !22, !noalias !118
  %i.bk = and i64 %i.bj, 65535
  %i.bl = lshr i64 %i.bh, 7
  %i.bm = xor i64 %i.bk, %i.bl
  %i.bn = load i64, ptr %0, align 8, !tbaa !16, !noalias !118 ; 5 uses
  %i.bo = and i64 %i.bm, %i.bn                    ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bo ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !44, !noalias !118
  %i.br = icmp slt i8 %i.bq, -1
  br i1 %i.br, label %_ZN4absl12lts_2025051218container_internal19find_first_non_fullERKNS1_12CommonFieldsEm.exit127.i, label %.preheader.i.i113.i

.preheader.i.i113.i:                              ; preds = %bb.e
  %i.bs = load <16 x i8>, ptr %i.bp, align 1, !tbaa !8, !noalias !118
  %i.bt = icmp slt <16 x i8> %i.bs, splat (i8 -1)
  %i.bu = bitcast <16 x i1> %i.bt to i16          ; 2 uses
  %.not17.i.i114.i = icmp eq i16 %i.bu, 0
  br i1 %.not17.i.i114.i, label %.lr.ph.i.i123.i, label %.thread.i.i115.i

.thread.i.i115.i:                                 ; preds = %.lr.ph.i.i123.i, %.preheader.i.i113.i
  %.sroa.5.0.lcssa.i.i116.i = phi i64 [ %i.bo, %.preheader.i.i113.i ], [ %i.cb, %.lr.ph.i.i123.i ]
  %.lcssa.i.i118.i = phi i16 [ %i.bu, %.preheader.i.i113.i ], [ %i.cf, %.lr.ph.i.i123.i ]
  %i.bv = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i118.i, i1 true)
  %i.bw = zext nneg i16 %i.bv to i64
  %i.bx = add i64 %.sroa.5.0.lcssa.i.i116.i, %i.bw
  %i.by = and i64 %i.bx, %i.bn
  br label %_ZN4absl12lts_2025051218container_internal19find_first_non_fullERKNS1_12CommonFieldsEm.exit127.i

.lr.ph.i.i123.i:                                  ; preds = %.preheader.i.i113.i, %.lr.ph.i.i123.i
  %.sroa.12.019.i.i124.i = phi i64 [ %i.bz, %.lr.ph.i.i123.i ], [ 0, %.preheader.i.i113.i ]
  %.sroa.5.018.i.i125.i = phi i64 [ %i.cb, %.lr.ph.i.i123.i ], [ %i.bo, %.preheader.i.i113.i ]
  %i.bz = add i64 %.sroa.12.019.i.i124.i, 16      ; 2 uses
  %i.ca = add i64 %i.bz, %.sroa.5.018.i.i125.i
  %i.cb = and i64 %i.ca, %i.bn                    ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cb
  %i.cd = load <16 x i8>, ptr %i.cc, align 1, !tbaa !8, !noalias !118
end_hunk_1
