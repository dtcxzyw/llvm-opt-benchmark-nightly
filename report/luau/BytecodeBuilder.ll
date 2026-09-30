Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/BytecodeBuilder?download=true
inline.NumInlined: 2648
inline.NumDeleted: 1082
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRiPKcEEERS7_DpOT_:bb.a
bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_M_realloc_insertIJRiPKcEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !270
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRiPKcTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit
  %i.w = phi ptr [ %.pre, %bb.f ], [ %i.v, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRiPKcTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit ]
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -40
  ret ptr %i.x
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau15BytecodeBuilder8finalizeEv(ptr noundef nonnull align 8 dereferenceable(1048) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !326  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !326  ; 2 uses
  %.not75 = icmp eq ptr %i.i, %i.k
  br i1 %.not75, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.n = load i64, ptr %i.m, align 8, !tbaa !254  ; 8 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapINS_15BytecodeBuilder9StringRefEjNS1_13StringRefHashESt8equal_toIS2_EE5beginEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !175  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 800
  %.pre.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !29
  %.pre.i.i.fr.i.i = freeze ptr %.pre.i.i.i.i     ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %.pre.i.i.fr.i.i, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  br i1 %.not7.i.i.i.i, label %.split.us.i.i, label %.lr.ph.split.i.i

.split.us.i.i:                                    ; preds = %.lr.ph.i.i, %bb.b
  %.04.us.i.i = phi i64 [ %i.v, %bb.b ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.04.us.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.b, label %_ZN4Luau12DenseHashMapINS_15BytecodeBuilder9StringRefEjNS1_13StringRefHashESt8equal_toIS2_EE5beginEv.exit

bb.b:                                             ; preds = %.split.us.i.i
  %i.v = add nuw i64 %.04.us.i.i, 1               ; 2 uses
  %exitcond12.not.i.i = icmp eq i64 %i.v, %i.n
  br i1 %exitcond12.not.i.i, label %._crit_edge81, label %.split.us.i.i, !llvm.loop !9

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.04.i.i = phi i64 [ %i.ac, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.04.i.i ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau12DenseHashMapINS_15BytecodeBuilder9StringRefEjNS1_13StringRefHashESt8equal_toIS2_EE5beginEv.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !30
  %i.aa = icmp eq i64 %i.z, %i.r
  br i1 %i.aa, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.i.i, label %_ZN4Luau12DenseHashMapINS_15BytecodeBuilder9StringRefEjNS1_13StringRefHashESt8equal_toIS2_EE5beginEv.exit

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.x, ptr nonnull %.pre.i.i.fr.i.i, i64 %i.r)
  %i.ab = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ab, label %bb.d, label %_ZN4Luau12DenseHashMapINS_15BytecodeBuilder9StringRefEjNS1_13StringRefHashESt8equal_toIS2_EE5beginEv.exit

bb.d:                                             ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.i.i
  %i.ac = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ac, %i.n
  br i1 %exitcond.not.i.i, label %._crit_edge81, label %.lr.ph.split.i.i, !llvm.loop !9

_ZN4Luau12DenseHashMapINS_15BytecodeBuilder9StringRefEjNS1_13StringRefHashESt8equal_toIS2_EE5beginEv.exit: ; preds = %.lr.ph.split.i.i, %bb.c, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.i.i, %.split.us.i.i, %._crit_edge
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge ], [ %.04.us.i.i, %.split.us.i.i ], [ %.04.i.i, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.i.i ], [ %.04.i.i, %bb.c ], [ %.04.i.i, %.lr.ph.split.i.i ] ; 2 uses
  %.not6877 = icmp eq i64 %.0.lcssa.i.i, %i.n
  br i1 %.not6877, label %._crit_edge81, label %.lr.ph80

.lr.ph80:                                         ; preds = %_ZN4Luau12DenseHashMapINS_15BytecodeBuilder9StringRefEjNS1_13StringRefHashESt8equal_toIS2_EE5beginEv.exit
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !175 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 808
  br label %bb.g

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.sroa.062.076 = phi ptr [ %i.ao, %bb.f ], [ %i.i, %bb.a ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.062.076, i64 36
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !264, !range !35, !noundef !36
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.aj = load ptr, ptr %.sroa.062.076, align 8, !tbaa !170
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.062.076, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !154
  %i.am = tail call noundef i32 @_ZN4Luau15BytecodeBuilder19addStringTableEntryENS0_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr %i.aj, i64 %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.062.076, i64 32
  store i32 %i.am, ptr %i.an, align 8, !tbaa !263
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.062.076, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge81:                                    ; preds = %bb.d, %bb.b, %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE8iteratorppEv.exit, %.backedge.i, %.backedge.us.i, %_ZN4Luau12DenseHashMapINS_15BytecodeBuilder9StringRefEjNS1_13StringRefHashESt8equal_toIS2_EE5beginEv.exit
  %.026.lcssa = phi i64 [ 16, %_ZN4Luau12DenseHashMapINS_15BytecodeBuilder9StringRefEjNS1_13StringRefHashESt8equal_toIS2_EE5beginEv.exit ], [ %i.ax, %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE8iteratorppEv.exit ], [ %i.ax, %.backedge.us.i ], [ %i.ax, %.backedge.i ], [ 16, %bb.b ], [ 16, %bb.d ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !271 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !271 ; 2 uses
  %.not6982 = icmp eq ptr %i.aq, %i.as
  br i1 %.not6982, label %._crit_edge87, label %.lr.ph86

bb.g:                                             ; preds = %.lr.ph80, %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE8iteratorppEv.exit
  %.02679 = phi i64 [ 16, %.lr.ph80 ], [ %i.ax, %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE8iteratorppEv.exit ]
  %.sroa.6.078 = phi i64 [ %.0.lcssa.i.i, %.lr.ph80 ], [ %.sroa.6.3, %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE8iteratorppEv.exit ] ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.sroa.6.078
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !273
  %i.aw = add i64 %.02679, 2
  %i.ax = add i64 %i.aw, %i.av                    ; 4 uses
  %i.ay = add i64 %.sroa.6.078, 1                 ; 4 uses
  %i.az = icmp ult i64 %i.ay, %i.n
  br i1 %i.az, label %.lr.ph.i, label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE8iteratorppEv.exit

.lr.ph.i:                                         ; preds = %bb.g
  %.pre.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !29
  %.pre.i.i.fr.i = freeze ptr %.pre.i.i.i         ; 2 uses
  %.not7.i.i.i = icmp eq ptr %.pre.i.i.fr.i, null
  br i1 %.not7.i.i.i, label %.split.us.i, label %.lr.ph.split.i

.split.us.i:                                      ; preds = %.lr.ph.i, %.backedge.us.i
  %.sroa.6.2 = phi i64 [ %i.bd, %.backedge.us.i ], [ %i.ay, %.lr.ph.i ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.sroa.6.2
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !29
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.backedge.us.i, label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE8iteratorppEv.exit

.backedge.us.i:                                   ; preds = %.split.us.i
  %i.bd = add nuw i64 %.sroa.6.2, 1               ; 2 uses
  %exitcond3.not.i = icmp eq i64 %i.bd, %i.n
  br i1 %exitcond3.not.i, label %._crit_edge81, label %.split.us.i, !llvm.loop !10

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.backedge.i
  %.sroa.6.1 = phi i64 [ %i.bl, %.backedge.i ], [ %i.ay, %.lr.ph.i ] ; 5 uses
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.sroa.6.1 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE8iteratorppEv.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !30 ; 2 uses
  %i.bi = load i64, ptr %i.af, align 8, !tbaa !30
  %i.bj = icmp eq i64 %i.bh, %i.bi
  br i1 %i.bj, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.i, label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE8iteratorppEv.exit

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.i: ; preds = %bb.h
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.bf, ptr nonnull %.pre.i.i.fr.i, i64 %i.bh)
  %i.bk = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bk, label %.backedge.i, label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE8iteratorppEv.exit

.backedge.i:                                      ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.i
  %i.bl = add nuw i64 %.sroa.6.1, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bl, %i.n
  br i1 %exitcond.not.i, label %._crit_edge81, label %.lr.ph.split.i, !llvm.loop !10

_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE8iteratorppEv.exit: ; preds = %.lr.ph.split.i, %bb.h, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.i, %.split.us.i, %bb.g
  %.sroa.6.3 = phi i64 [ %.sroa.6.2, %.split.us.i ], [ %i.ay, %bb.g ], [ %.sroa.6.1, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.i ], [ %.sroa.6.1, %bb.h ], [ %.sroa.6.1, %.lr.ph.split.i ] ; 2 uses
  %.not68 = icmp eq i64 %.sroa.6.3, %i.n
  br i1 %.not68, label %._crit_edge81, label %bb.g

._crit_edge87:                                    ; preds = %.lr.ph86, %._crit_edge81
  %.1.lcssa = phi i64 [ %.026.lcssa, %._crit_edge81 ], [ %i.cj, %.lr.ph86 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 11 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 noundef %.1.lcssa)
  %i.bn = load i8, ptr @_ZN5FFlag27DebugLuauUserDefinedClassesE, align 8, !tbaa !233, !range !35, !noundef !36
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %_ZN4Luau15BytecodeBuilder10getVersionEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge87
  %i.bp = load i8, ptr @_ZN5FFlag27LuauCompileEmitVectorDoubleE, align 8, !tbaa !233, !range !35, !noundef !36
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %_ZN4Luau15BytecodeBuilder10getVersionEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = load i8, ptr @_ZN5FFlag21LuauBytecodeCostModelE, align 8, !tbaa !233, !range !35, !noundef !36
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %_ZN4Luau15BytecodeBuilder10getVersionEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = load i8, ptr @_ZN5FFlag20LuauEmitCallFeedbackE, align 8, !tbaa !233, !range !35, !noundef !36
  %1 = shl nuw nsw i8 %i.bt, 1
  %..i = or disjoint i8 %1, 9
  br label %_ZN4Luau15BytecodeBuilder10getVersionEv.exit

_ZN4Luau15BytecodeBuilder10getVersionEv.exit:     ; preds = %._crit_edge87, %bb.i, %bb.j, %bb.k
  %.0.i = phi i8 [ 12, %bb.j ], [ 100, %._crit_edge87 ], [ 13, %bb.i ], [ %..i, %bb.k ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 9 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !154
  %i.bw = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 noundef 0, i64 noundef %i.bv, i64 noundef 1, i8 noundef signext %.0.i) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 3, ptr %i.g, align 1, !tbaa !155
  %i.bx = load i64, ptr %i.bu, align 8, !tbaa !154
  %i.by = icmp eq i64 %i.bx, 4611686018427387903
  br i1 %i.by, label %bb.l, label %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit

bb.l:                                             ; preds = %_ZN4Luau15BytecodeBuilder10getVersionEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.162) #37
  unreachable

_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit: ; preds = %_ZN4Luau15BytecodeBuilder10getVersionEv.exit
  %i.bz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull %i.g, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_ZNK4Luau15BytecodeBuilder16writeStringTableERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bm)
  %i.ca = load ptr, ptr %i.j, align 8, !tbaa !198 ; 2 uses
  %i.cb = load ptr, ptr %i.h, align 8, !tbaa !197 ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 40
  %i.cg = and i64 %i.cf, 4294967295
  %.not96 = icmp eq i64 %i.cg, 0
  br i1 %.not96, label %._crit_edge91, label %.lr.ph90

.lr.ph86:                                         ; preds = %._crit_edge81, %.lr.ph86
  %.184 = phi i64 [ %i.cj, %.lr.ph86 ], [ %.026.lcssa, %._crit_edge81 ]
  %.sroa.052.083 = phi ptr [ %i.ck, %.lr.ph86 ], [ %i.aq, %._crit_edge81 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.052.083, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !154
  %i.cj = add i64 %i.ci, %.184                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.052.083, i64 168 ; 2 uses
  %.not69 = icmp eq ptr %i.ck, %i.as
  br i1 %.not69, label %._crit_edge87, label %.lr.ph86

._crit_edge91:                                    ; preds = %_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit37, %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 0, ptr %i.f, align 1, !tbaa !155
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !154
  %i.cm = icmp eq i64 %i.cl, 4611686018427387903
  br i1 %i.cm, label %bb.m, label %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit29

bb.m:                                             ; preds = %._crit_edge91
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.162) #37
  unreachable

_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit29: ; preds = %._crit_edge91
  %i.cn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull %i.f, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.co = load ptr, ptr %i.ar, align 8, !tbaa !169
  %i.cp = load ptr, ptr %i.ap, align 8, !tbaa !168
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = sdiv exact i64 %i.cs, 168
  %i.cu = and i64 %i.ct, 4294967295
  br label %bb.n

bb.n:                                             ; preds = %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i, %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit29
  %.0.i30 = phi i64 [ %i.cu, %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit29 ], [ %i.dc, %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i ] ; 3 uses
  %i.cv = and i64 %.0.i30, 127
  %.inv.i = icmp samesign ult i64 %.0.i30, 128
  %i.cw = select i1 %.inv.i, i64 0, i64 128
  %i.cx = or disjoint i64 %i.cw, %i.cv
  %i.cy = trunc nuw i64 %i.cx to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %i.cy, ptr %i.e, align 1, !tbaa !155
  %i.cz = load i64, ptr %i.bu, align 8, !tbaa !154
  %i.da = icmp eq i64 %i.cz, 4611686018427387903
  br i1 %i.da, label %bb.o, label %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.162) #37
  unreachable

_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i: ; preds = %bb.n
  %i.db = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dc = lshr i64 %.0.i30, 7                     ; 2 uses
  %.not.i31 = icmp eq i64 %i.dc, 0
  br i1 %.not.i31, label %_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit, label %bb.n, !llvm.loop !8

_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit: ; preds = %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i
  %i.dd = load ptr, ptr %i.ap, align 8, !tbaa !271 ; 2 uses
  %i.de = load ptr, ptr %i.ar, align 8, !tbaa !271 ; 2 uses
  %.not7092 = icmp eq ptr %i.dd, %i.de
  br i1 %.not7092, label %._crit_edge95, label %.lr.ph94

.lr.ph90:                                         ; preds = %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit, %_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit37
  %i.df = phi ptr [ %i.ed, %_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit37 ], [ %i.cb, %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit ] ; 2 uses
  %i.dg = phi ptr [ %i.ee, %_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit37 ], [ %i.ca, %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit37 ], [ 0, %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [40 x i8], ptr %i.df, i64 %indvars.iv
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 36
  %i.dj = load i8, ptr %i.di, align 4, !tbaa !264, !range !35, !noundef !36
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.p, label %_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit37

bb.p:                                             ; preds = %.lr.ph90
  %i.dl = trunc i64 %indvars.iv to i8
  %i.dm = add i8 %i.dl, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.dm, ptr %i.d, align 1, !tbaa !155
  %i.dn = load i64, ptr %i.bu, align 8, !tbaa !154
  %i.do = icmp eq i64 %i.dn, 4611686018427387903
  br i1 %i.do, label %bb.q, label %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit32

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.162) #37
  unreachable

_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit32: ; preds = %bb.p
  %i.dp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dq = load ptr, ptr %i.h, align 8, !tbaa !197
  %i.dr = getelementptr inbounds nuw [40 x i8], ptr %i.dq, i64 %indvars.iv
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !263
  %i.du = zext i32 %i.dt to i64
  br label %bb.r

bb.r:                                             ; preds = %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i35, %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit32
  %.0.i33 = phi i64 [ %i.du, %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit32 ], [ %i.ec, %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i35 ] ; 3 uses
  %i.dv = and i64 %.0.i33, 127
  %.inv.i34 = icmp samesign ult i64 %.0.i33, 128
  %i.dw = select i1 %.inv.i34, i64 0, i64 128
  %i.dx = or disjoint i64 %i.dw, %i.dv
  %i.dy = trunc nuw i64 %i.dx to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.dy, ptr %i.c, align 1, !tbaa !155
  %i.dz = load i64, ptr %i.bu, align 8, !tbaa !154
  %i.ea = icmp eq i64 %i.dz, 4611686018427387903
  br i1 %i.ea, label %bb.s, label %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i35

bb.s:                                             ; preds = %bb.r
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.162) #37
  unreachable

_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i35: ; preds = %bb.r
  %i.eb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ec = lshr i64 %.0.i33, 7                     ; 2 uses
  %.not.i36 = icmp eq i64 %i.ec, 0
  br i1 %.not.i36, label %_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit37.loopexit, label %bb.r, !llvm.loop !8

_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit37.loopexit: ; preds = %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i35
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !198
  %.pre103 = load ptr, ptr %i.h, align 8, !tbaa !197
  br label %_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit37

_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit37: ; preds = %_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit37.loopexit, %.lr.ph90
  %i.ed = phi ptr [ %.pre103, %_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit37.loopexit ], [ %i.df, %.lr.ph90 ] ; 2 uses
  %i.ee = phi ptr [ %.pre, %_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit37.loopexit ], [ %i.dg, %.lr.ph90 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.ed to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = sdiv exact i64 %i.eh, 40
  %i.ej = and i64 %i.ei, 4294967295
  %i.ek = icmp samesign ult i64 %indvars.iv.next, %i.ej
  br i1 %i.ek, label %.lr.ph90, label %._crit_edge91, !llvm.loop !325

._crit_edge95:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.em = load i32, ptr %i.el, align 4, !tbaa !150
  %i.en = zext i32 %i.em to i64
  br label %bb.t

bb.t:                                             ; preds = %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i40, %._crit_edge95
  %.0.i38 = phi i64 [ %i.en, %._crit_edge95 ], [ %i.ev, %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i40 ] ; 3 uses
  %i.eo = and i64 %.0.i38, 127
  %.inv.i39 = icmp samesign ult i64 %.0.i38, 128
  %i.ep = select i1 %.inv.i39, i64 0, i64 128
  %i.eq = or disjoint i64 %i.ep, %i.eo
  %i.er = trunc nuw i64 %i.eq to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.er, ptr %i.b, align 1, !tbaa !155
  %i.es = load i64, ptr %i.bu, align 8, !tbaa !154
  %i.et = icmp eq i64 %i.es, 4611686018427387903
  br i1 %i.et, label %bb.u, label %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i40

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.162) #37
  unreachable

_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i40: ; preds = %bb.t
  %i.eu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ev = lshr i64 %.0.i38, 7                     ; 2 uses
  %.not.i41 = icmp eq i64 %i.ev, 0
  br i1 %.not.i41, label %_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit42, label %bb.t, !llvm.loop !8

_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit42: ; preds = %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i40
  ret void

.lr.ph94:                                         ; preds = %_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %.sroa.048.093 = phi ptr [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ], [ %i.dd, %_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit ] ; 4 uses
  %i.ew = load i8, ptr @_ZN5FFlag21LuauBytecodeCostModelE, align 8, !tbaa !233, !range !35, !noundef !36
  %i.ex = trunc nuw i8 %i.ew to i1
  %i.ey = load i8, ptr @_ZN5FFlag27LuauCompileEmitVectorDoubleE, align 8, !range !35
  %i.ez = trunc nuw i8 %i.ey to i1
  %or.cond = select i1 %i.ex, i1 true, i1 %i.ez
  %i.fa = load i8, ptr @_ZN5FFlag27DebugLuauUserDefinedClassesE, align 8, !range !35
  %i.fb = trunc nuw i8 %i.fa to i1
  %or.cond67 = select i1 %or.cond, i1 true, i1 %i.fb
  br i1 %or.cond67, label %bb.v, label %_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit47

bb.v:                                             ; preds = %.lr.ph94
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.048.093, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !154
  br label %bb.w

bb.w:                                             ; preds = %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i45, %bb.v
  %.0.i43 = phi i64 [ %i.fd, %bb.v ], [ %i.fl, %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i45 ] ; 3 uses
  %i.fe = and i64 %.0.i43, 127
  %.inv.i44 = icmp ult i64 %.0.i43, 128
  %i.ff = select i1 %.inv.i44, i64 0, i64 128
  %i.fg = or disjoint i64 %i.ff, %i.fe
  %i.fh = trunc nuw i64 %i.fg to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.fh, ptr %i.a, align 1, !tbaa !155
  %i.fi = load i64, ptr %i.bu, align 8, !tbaa !154
  %i.fj = icmp eq i64 %i.fi, 4611686018427387903
  br i1 %i.fj, label %bb.x, label %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i45

bb.x:                                             ; preds = %bb.w
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.162) #37
  unreachable

_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i45: ; preds = %bb.w
  %i.fk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fl = lshr i64 %.0.i43, 7                     ; 2 uses
  %.not.i46 = icmp eq i64 %i.fl, 0
  br i1 %.not.i46, label %_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit47, label %bb.w, !llvm.loop !8

_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit47: ; preds = %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i45, %.lr.ph94
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.048.093, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !154 ; 2 uses
  %i.fo = load i64, ptr %i.bu, align 8, !tbaa !154
  %i.fp = sub i64 4611686018427387903, %i.fo
  %i.fq = icmp ult i64 %i.fp, %i.fn
  br i1 %i.fq, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.y:                                             ; preds = %_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit47
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.162) #37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit47
  %i.fr = load ptr, ptr %.sroa.048.093, align 8, !tbaa !170
  %i.fs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef %i.fr, i64 noundef %i.fn) ; 0 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.048.093, i64 168 ; 2 uses
  %.not70 = icmp eq ptr %i.ft, %i.de
  br i1 %.not70, label %._crit_edge95, label %.lr.ph94
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 9, 101) i8 @_ZN4Luau15BytecodeBuilder10getVersionEv() local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = load i8, ptr @_ZN5FFlag27DebugLuauUserDefinedClassesE, align 8, !tbaa !233, !range !35, !noundef !36
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @_ZN5FFlag27LuauCompileEmitVectorDoubleE, align 8, !tbaa !233, !range !35, !noundef !36
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr @_ZN5FFlag21LuauBytecodeCostModelE, align 8, !tbaa !233, !range !35, !noundef !36
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr @_ZN5FFlag20LuauEmitCallFeedbackE, align 8, !tbaa !233, !range !35, !noundef !36
  %0 = shl nuw nsw i8 %i.g, 1
  %. = or disjoint i8 %0, 9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i8 [ 12, %bb.c ], [ 100, %bb.a ], [ 13, %bb.b ], [ %., %bb.d ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @_ZN4Luau15BytecodeBuilder22getTypeEncodingVersionEv() local_unnamed_addr #16 align 2 {
bb.a:
  ret i8 3
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4Luau15BytecodeBuilder16writeStringTableERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.e = load i64, ptr %i.d, align 8, !tbaa !253  ; 4 uses
  %i.f = icmp ugt i64 %i.e, 576460752303423487
  br i1 %i.f, label %.noexc, label %_ZNSt6vectorIN4Luau15BytecodeBuilder9StringRefESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.166) #37
  unreachable

_ZNSt6vectorIN4Luau15BytecodeBuilder9StringRefESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4Luau15BytecodeBuilder9StringRefESaIS2_EEC2EmRKS3_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN4Luau15BytecodeBuilder9StringRefESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.g = shl nuw nsw i64 %i.e, 4                  ; 3 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #33 ; 4 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.g, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.h, i64 %i.g
  %i.j = ptrtoint ptr %i.i to i64
  br label %_ZNSt6vectorIN4Luau15BytecodeBuilder9StringRefESaIS2_EEC2EmRKS3_.exit

_ZNSt6vectorIN4Luau15BytecodeBuilder9StringRefESaIS2_EEC2EmRKS3_.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZNSt6vectorIN4Luau15BytecodeBuilder9StringRefESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.sroa.050.0 = phi ptr [ %i.h, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIN4Luau15BytecodeBuilder9StringRefESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 8 uses
  %.sink.i = phi i64 [ %i.j, %.lr.ph.preheader.i.i.i.i.i ], [ 0, %_ZNSt6vectorIN4Luau15BytecodeBuilder9StringRefESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIN4Luau15BytecodeBuilder9StringRefESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.l = load i64, ptr %i.k, align 8, !tbaa !254  ; 8 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %.loopexit67, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN4Luau15BytecodeBuilder9StringRefESaIS2_EEC2EmRKS3_.exit
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !175  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 800
  %.pre.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !29
  %.pre.i.i.fr.i.i = freeze ptr %.pre.i.i.i.i     ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %.pre.i.i.fr.i.i, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  br i1 %.not7.i.i.i.i, label %.split.us.i.i, label %.lr.ph.split.i.i

.split.us.i.i:                                    ; preds = %.lr.ph.i.i, %bb.b
  %.04.us.i.i = phi i64 [ %i.t, %bb.b ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.04.us.i.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.b, label %.loopexit67

bb.b:                                             ; preds = %.split.us.i.i
  %i.t = add nuw i64 %.04.us.i.i, 1               ; 2 uses
  %exitcond12.not.i.i = icmp eq i64 %i.t, %i.l
  br i1 %exitcond12.not.i.i, label %._crit_edge, label %.split.us.i.i, !llvm.loop !327

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.04.i.i = phi i64 [ %i.aa, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.04.i.i ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29   ; 2 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i22, label %.loopexit67, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !30
  %i.y = icmp eq i64 %i.x, %i.p
  br i1 %i.y, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.i.i, label %.loopexit67

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.v, ptr nonnull %.pre.i.i.fr.i.i, i64 %i.p)
  %i.z = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.z, label %bb.d, label %.loopexit67

bb.d:                                             ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.i.i
  %i.aa = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aa, %i.l
  br i1 %exitcond.not.i.i, label %._crit_edge, label %.lr.ph.split.i.i, !llvm.loop !327

.loopexit67:                                      ; preds = %.lr.ph.split.i.i, %bb.c, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.i.i, %.split.us.i.i, %_ZNSt6vectorIN4Luau15BytecodeBuilder9StringRefESaIS2_EEC2EmRKS3_.exit
  %.0.lcssa.i.i = phi i64 [ 0, %_ZNSt6vectorIN4Luau15BytecodeBuilder9StringRefESaIS2_EEC2EmRKS3_.exit ], [ %.04.us.i.i, %.split.us.i.i ], [ %.04.i.i, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.i.i ], [ %.04.i.i, %bb.c ], [ %.04.i.i, %.lr.ph.split.i.i ] ; 2 uses
  %.not70 = icmp eq i64 %.0.lcssa.i.i, %i.l
  br i1 %.not70, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit67
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !175 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 808
  br label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.b, %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE14const_iteratorppEv.exit, %.backedge.i, %.backedge.us.i, %.loopexit67
  %i.ae = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.af = ptrtoint ptr %.sroa.050.0 to i64        ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = lshr exact i64 %i.ag, 4
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.noexc27, %._crit_edge
  %.0.i = phi i64 [ %i.ai, %._crit_edge ], [ %i.ar, %.noexc27 ] ; 3 uses
  %i.ak = and i64 %.0.i, 127
  %.inv.i = icmp samesign ult i64 %.0.i, 128
  %i.al = select i1 %.inv.i, i64 0, i64 128
  %i.am = or disjoint i64 %i.al, %i.ak
  %i.an = trunc nuw i64 %i.am to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.an, ptr %i.b, align 1, !tbaa !155
  %i.ao = load i64, ptr %i.aj, align 8, !tbaa !154
  %i.ap = icmp eq i64 %i.ao, 4611686018427387903
  br i1 %i.ap, label %bb.f, label %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.162) #37
          to label %.noexc26 unwind label %.loopexit.split-lp62

.noexc26:                                         ; preds = %bb.f
  unreachable

_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i: ; preds = %bb.e
  %i.aq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %.noexc27 unwind label %.loopexit61 ; 0 uses

.noexc27:                                         ; preds = %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ar = lshr i64 %.0.i, 7                       ; 2 uses
  %.not.i25 = icmp eq i64 %i.ar, 0
  br i1 %.not.i25, label %_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit.preheader, label %bb.e, !llvm.loop !8

_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit.preheader: ; preds = %.noexc27
  %.not5772 = icmp eq ptr %.sroa.050.0, %.0.lcssa.i.i.i.i.i
  br i1 %.not5772, label %_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit._crit_edge, label %.lr.ph74

bb.g:                                             ; preds = %.lr.ph, %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE14const_iteratorppEv.exit
  %.sroa.7.071 = phi i64 [ %.0.lcssa.i.i, %.lr.ph ], [ %.sroa.7.3, %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE14const_iteratorppEv.exit ] ; 2 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.7.071 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !275
  %i.av = add i32 %i.au, -1
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.sroa.050.0, i64 %i.aw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !tbaa.struct !256
  %i.ay = add i64 %.sroa.7.071, 1                 ; 4 uses
  %i.az = icmp ult i64 %i.ay, %i.l
  br i1 %i.az, label %.lr.ph.i, label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE14const_iteratorppEv.exit

.lr.ph.i:                                         ; preds = %bb.g
  %.pre.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !29
  %.pre.i.i.fr.i = freeze ptr %.pre.i.i.i         ; 2 uses
  %.not7.i.i.i = icmp eq ptr %.pre.i.i.fr.i, null
  br i1 %.not7.i.i.i, label %.split.us.i, label %.lr.ph.split.i

.split.us.i:                                      ; preds = %.lr.ph.i, %.backedge.us.i
  %.sroa.7.2 = phi i64 [ %i.bd, %.backedge.us.i ], [ %i.ay, %.lr.ph.i ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.7.2
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !29
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.backedge.us.i, label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE14const_iteratorppEv.exit

.backedge.us.i:                                   ; preds = %.split.us.i
  %i.bd = add nuw i64 %.sroa.7.2, 1               ; 2 uses
  %exitcond3.not.i = icmp eq i64 %i.bd, %i.l
  br i1 %exitcond3.not.i, label %._crit_edge, label %.split.us.i, !llvm.loop !328

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.backedge.i
  %.sroa.7.1 = phi i64 [ %i.bl, %.backedge.i ], [ %i.ay, %.lr.ph.i ] ; 5 uses
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.7.1 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE14const_iteratorppEv.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !30 ; 2 uses
  %i.bi = load i64, ptr %i.ad, align 8, !tbaa !30
  %i.bj = icmp eq i64 %i.bh, %i.bi
  br i1 %i.bj, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.i, label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE14const_iteratorppEv.exit

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.i: ; preds = %bb.h
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.bf, ptr nonnull %.pre.i.i.fr.i, i64 %i.bh)
  %i.bk = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bk, label %.backedge.i, label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE14const_iteratorppEv.exit

.backedge.i:                                      ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.i
end_hunk_0
