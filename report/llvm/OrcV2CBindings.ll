Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OrcV2CBindings?download=true
inline.NumInlined: 3692
inline.NumDeleted: 2028
begin_hunk_0_@LLVMOrcCreateCustomMaterializationUnit:bb.a
  %i.j = load i8, ptr %0, align 1, !tbaa !26
  store i8 %i.j, ptr %i.i, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %0, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.k = load i64, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !118
  %i.m = load ptr, ptr %10, align 8, !tbaa !116
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load <2 x ptr>, ptr %8, align 16, !tbaa !8
  store <2 x ptr> %i.q, ptr %i.p, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = load <2 x i32>, ptr %i.o, align 16, !tbaa !27
  store <2 x i32> %i.s, ptr %i.r, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %4, ptr %i.t, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_126OrcCAPIMaterializationUnitE, i64 16), ptr %i.b, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !112
  %i.w = load ptr, ptr %10, align 8, !tbaa !116   ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.c
  br i1 %i.x, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.y = load i64, ptr %i.l, align 8, !tbaa !118  ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.aa, i1 false)
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  store ptr %i.w, ptr %i.u, align 8, !tbaa !116
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !26
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !26
  %.pre = load i64, ptr %i.l, align 8, !tbaa !118
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit32

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %i.ac = phi i64 [ %i.y, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !118
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %1, ptr %i.ae, align 8, !tbaa !119
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %5, ptr %i.af, align 8, !tbaa !125
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %6, ptr %i.ag, align 8, !tbaa !126
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %7, ptr %i.ah, align 8, !tbaa !127
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  ret ptr %i.b

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit34
  %.049 = phi i64 [ %i.aw, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit34 ], [ 0, %bb.a ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.049 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.0.0.copyload = load i16, ptr %i.aj, align 8 ; 4 uses
  %i.ak = shl i16 %.sroa.0.0.copyload, 4
  %spec.select.i = and i16 %i.ak, 16
  %i.al = and i16 %.sroa.0.0.copyload, 2
  %.sroa.3.1.i = or disjoint i16 %spec.select.i, %i.al
  %i.am = shl i16 %.sroa.0.0.copyload, 3
  %i.an = and i16 %i.am, 96
  %.sroa.3.3.i = or disjoint i16 %.sroa.3.1.i, %i.an
  %.sroa.0.0.insert.insert.i = call range(i16 0, -32768) i16 @llvm.fshl.i16(i16 %.sroa.3.3.i, i16 %.sroa.0.0.copyload, i16 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !128
  store ptr %i.ao, ptr %9, align 8, !tbaa !53, !alias.scope !131
  %i.ap = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ap, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store i16 %.sroa.0.0.insert.insert.i, ptr %i.aq, align 1
  %i.ar = load ptr, ptr %9, align 8, !tbaa !85    ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %notsub.i.i.i33 = add i64 %i.as, -1
  %i.at = icmp ult i64 %notsub.i.i.i33, -32
  br i1 %i.at, label %bb.h, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit34

bb.h:                                             ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = atomicrmw sub ptr %i.au, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit34

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit34:         ; preds = %.lr.ph, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.aw = add nuw i64 %.049, 1                    ; 2 uses
  %.not = icmp eq i64 %i.aw, %3
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !134
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @LLVMOrcAbsoluteSymbols(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.95", align 16 ; 9 uses
  %3 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 5 uses
  %4 = alloca %"class.llvm::DenseMap.95", align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false), !alias.scope !135
  %.not13.i = icmp eq i64 %1, 0
  br i1 %.not13.i, label %_ZN12_GLOBAL__N_111toSymbolMapEP21LLVMOrcCSymbolMapPairm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i
  %.014.i = phi i64 [ %i.q, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.014.i ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.01.0.copyload.i = load i16, ptr %i.c, align 8, !noalias !135 ; 4 uses
  %i.d = shl i16 %.sroa.01.0.copyload.i, 4
  %spec.select.i.i = and i16 %i.d, 16
  %i.e = and i16 %.sroa.01.0.copyload.i, 2
  %.sroa.3.1.i.i = or disjoint i16 %spec.select.i.i, %i.e
  %i.f = shl i16 %.sroa.01.0.copyload.i, 3
  %i.g = and i16 %i.f, 96
  %.sroa.3.3.i.i = or disjoint i16 %.sroa.3.1.i.i, %i.g
  %.sroa.0.0.insert.insert.i.i = call range(i16 0, -32768) i16 @llvm.fshl.i16(i16 %.sroa.3.3.i.i, i16 %.sroa.01.0.copyload.i, i16 8)
  %i.h = load i64, ptr %i.b, align 8, !tbaa !138, !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !135
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !141, !noalias !135
  store ptr %i.i, ptr %3, align 8, !tbaa !53, !alias.scope !142, !noalias !135
  %i.j = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.j, 0 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  store i64 %i.h, ptr %i.k, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 16
  store i16 %.sroa.0.0.insert.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.l = load ptr, ptr %3, align 8, !tbaa !85, !noalias !135 ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %notsub.i.i.i.i = add i64 %i.m, -1
  %i.n = icmp ult i64 %notsub.i.i.i.i, -32
  br i1 %i.n, label %bb.b, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = atomicrmw sub ptr %i.o, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i:         ; preds = %bb.b, %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !135
  %i.q = add nuw i64 %.014.i, 1                   ; 2 uses
  %.not.i = icmp eq i64 %i.q, %1
  br i1 %.not.i, label %_ZN12_GLOBAL__N_111toSymbolMapEP21LLVMOrcCSymbolMapPairm.exit.loopexit, label %.lr.ph.i, !llvm.loop !145

_ZN12_GLOBAL__N_111toSymbolMapEP21LLVMOrcCSymbolMapPairm.exit.loopexit: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i
  %i.r = load <2 x ptr>, ptr %4, align 16, !tbaa !8
  %.phi.trans.insert27 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = load <2 x i32>, ptr %.phi.trans.insert27, align 16, !tbaa !27
  br label %_ZN12_GLOBAL__N_111toSymbolMapEP21LLVMOrcCSymbolMapPairm.exit

_ZN12_GLOBAL__N_111toSymbolMapEP21LLVMOrcCSymbolMapPairm.exit: ; preds = %_ZN12_GLOBAL__N_111toSymbolMapEP21LLVMOrcCSymbolMapPairm.exit.loopexit, %bb.a
  %i.t = phi <2 x i32> [ %i.s, %_ZN12_GLOBAL__N_111toSymbolMapEP21LLVMOrcCSymbolMapPairm.exit.loopexit ], [ zeroinitializer, %bb.a ]
  %i.u = phi <2 x ptr> [ %i.r, %_ZN12_GLOBAL__N_111toSymbolMapEP21LLVMOrcCSymbolMapPairm.exit.loopexit ], [ splat (ptr null), %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.x = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27, !noalias !146 ; 2 uses
  store <2 x ptr> %i.u, ptr %2, align 16, !tbaa !8, !noalias !146
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store <2 x i32> %i.t, ptr %i.y, align 16, !tbaa !27, !noalias !146
  call void @_ZN4llvm3orc34AbsoluteSymbolsMaterializationUnitC1ENS_8DenseMapINS0_15SymbolStringPtrENS0_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr nofree noundef nonnull align 8 dereferenceable(24) %2) #25, !noalias !146
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !149, !noalias !146 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN12_GLOBAL__N_111toSymbolMapEP21LLVMOrcCSymbolMapPairm.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %2, align 16, !tbaa !152, !noalias !146
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !153, !noalias !146
  %i.af = zext i32 %i.aa to i64
  %i.ag = add nuw nsw i64 %i.af, 31
  %i.ah = lshr i64 %i.ag, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i.i.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !27, !noalias !146 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.ak = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.aj, %.lr.ph.i.i.i ], [ %i.av, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.al = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.am = or disjoint i32 %i.al, %i.ak
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !85, !noalias !146 ; 2 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %notsub.i.i.i.i.i.i.i = add i64 %i.aq, -1
  %i.ar = icmp ult i64 %notsub.i.i.i.i.i.i.i, -32
  br i1 %i.ar, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = atomicrmw sub ptr %i.as, i64 1 seq_cst, align 8, !noalias !146 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.au = add i32 %.0.i3.i.i.i, -1
  %i.av = and i32 %i.au, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.c, !llvm.loop !154

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.ah
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !155

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.z, align 4, !tbaa !149, !noalias !146 ; 2 uses
  %i.aw = icmp eq i32 %.pr.i.i, 0
  br i1 %i.aw, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i
  %i.ax = load ptr, ptr %2, align 16, !tbaa !152, !noalias !146
  %i.ay = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.az = mul nuw nsw i64 %i.ay, 24
  %i.ba = add nuw nsw i64 %i.ay, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  %i.bd = add nuw nsw i64 %i.bc, %i.az
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ax, i64 noundef %i.bd, i64 noundef 8) #25, !noalias !146
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_111toSymbolMapEP21LLVMOrcCSymbolMapPairm.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.be = load i32, ptr %i.w, align 4, !tbaa !149 ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit17, label %.lr.ph7.preheader.i.i2

.lr.ph7.preheader.i.i2:                           ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit
  %i.bg = load ptr, ptr %4, align 16, !tbaa !152
  %i.bh = load ptr, ptr %i.v, align 8, !tbaa !153
  %i.bi = zext i32 %i.be to i64
  %i.bj = add nuw nsw i64 %i.bi, 31
  %i.bk = lshr i64 %i.bj, 5
  br label %.lr.ph7.i.i3

.lr.ph7.i.i3:                                     ; preds = %._crit_edge.i.i12, %.lr.ph7.preheader.i.i2
  %indvars.iv.i.i4 = phi i64 [ 0, %.lr.ph7.preheader.i.i2 ], [ %indvars.iv.next.i.i13, %._crit_edge.i.i12 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i.i4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !27 ; 2 uses
  %.not11.i2.i.i5 = icmp eq i32 %i.bm, 0
  br i1 %.not11.i2.i.i5, label %._crit_edge.i.i12, label %.lr.ph.i.i6

.lr.ph.i.i6:                                      ; preds = %.lr.ph7.i.i3
  %indvars.iv.tr.i.i7 = trunc nuw i64 %indvars.iv.i.i4 to i32
  %i.bn = shl nuw i32 %indvars.iv.tr.i.i7, 5
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i10, %.lr.ph.i.i6
  %.0.i3.i.i8 = phi i32 [ %i.bm, %.lr.ph.i.i6 ], [ %i.by, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i10 ] ; 3 uses
  %i.bo = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i8, i1 true)
  %i.bp = or disjoint i32 %i.bo, %i.bn
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !85 ; 2 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %notsub.i.i.i.i.i.i9 = add i64 %i.bt, -1
  %i.bu = icmp ult i64 %notsub.i.i.i.i.i.i9, -32
  br i1 %i.bu, label %bb.g, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i10

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = atomicrmw sub ptr %i.bv, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i10

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i10: ; preds = %bb.g, %bb.f
  %i.bx = add i32 %.0.i3.i.i8, -1
  %i.by = and i32 %i.bx, %.0.i3.i.i8              ; 2 uses
  %.not11.i.i.i11 = icmp eq i32 %i.by, 0
  br i1 %.not11.i.i.i11, label %._crit_edge.i.i12, label %bb.f, !llvm.loop !154

._crit_edge.i.i12:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i10, %.lr.ph7.i.i3
  %indvars.iv.next.i.i13 = add nuw nsw i64 %indvars.iv.i.i4, 1 ; 2 uses
  %.not.i.i.i14 = icmp eq i64 %indvars.iv.next.i.i13, %i.bk
  br i1 %.not.i.i.i14, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i15, label %.lr.ph7.i.i3, !llvm.loop !155

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i15: ; preds = %._crit_edge.i.i12
  %.pr.i16 = load i32, ptr %i.w, align 4, !tbaa !149 ; 2 uses
  %i.bz = icmp eq i32 %.pr.i16, 0
  br i1 %i.bz, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit17, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i15
  %i.ca = load ptr, ptr %4, align 16, !tbaa !152
  %i.cb = zext i32 %.pr.i16 to i64                ; 2 uses
  %i.cc = mul nuw nsw i64 %i.cb, 24
  %i.cd = add nuw nsw i64 %i.cb, 31
  %i.ce = lshr i64 %i.cd, 3
  %i.cf = and i64 %i.ce, 1073741820
  %i.cg = add nuw nsw i64 %i.cf, %i.cc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ca, i64 noundef %i.cg, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit17

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit17: ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i15, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret ptr %i.x
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @LLVMOrcLazyReexports(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.llvm::DenseMap.105", align 16 ; 9 uses
  %6 = alloca %"class.llvm::DenseMap.105", align 16 ; 11 uses
  %7 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not51 = icmp eq i64 %4, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit33
  %i.a = load <2 x ptr>, ptr %6, align 16, !tbaa !8
  %.phi.trans.insert54 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.b = load <2 x i32>, ptr %.phi.trans.insert54, align 16, !tbaa !27
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.c = phi <2 x i32> [ %i.b, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  %i.d = phi <2 x ptr> [ %i.a, %._crit_edge.loopexit ], [ splat (ptr null), %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.g = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27, !noalias !156 ; 2 uses
  store <2 x ptr> %i.d, ptr %5, align 16, !tbaa !8, !noalias !156
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  store <2 x i32> %i.c, ptr %i.h, align 16, !tbaa !27, !noalias !156
  call void @_ZN4llvm3orc32LazyReexportsMaterializationUnitC1ERNS0_22LazyCallThroughManagerERNS0_25RedirectableSymbolManagerERNS0_8JITDylibENS_8DenseMapINS0_15SymbolStringPtrENS0_19SymbolAliasMapEntryENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEEPNS0_13ImplSymbolMapE(ptr noundef nonnull align 8 dereferenceable(96) %i.g, ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr nofree noundef nonnull align 8 dereferenceable(24) %5, ptr noundef null) #25, !noalias !156
  %i.j = load i32, ptr %i.i, align 4, !tbaa !159, !noalias !156 ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load ptr, ptr %5, align 16, !tbaa !162, !noalias !156
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !163, !noalias !156
  %i.o = zext i32 %i.j to i64
  %i.p = add nuw nsw i64 %i.o, 31
  %i.q = lshr i64 %i.p, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i.i.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !27, !noalias !156 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.t = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.s, %.lr.ph.i.i.i ], [ %i.ak, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.u = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !85, !noalias !156 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %notsub.i.i.i.i.i.i.i.i = add i64 %i.aa, -1
  %i.ab = icmp ult i64 %notsub.i.i.i.i.i.i.i.i, -32
  br i1 %i.ab, label %bb.c, label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = atomicrmw sub ptr %i.ac, i64 1 seq_cst, align 8, !noalias !156 ; 0 uses
  br label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i.i

_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !85, !noalias !156 ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %notsub.i.i.i.i.i.i.i34 = add i64 %i.af, -1
  %i.ag = icmp ult i64 %notsub.i.i.i.i.i.i.i34, -32
  br i1 %i.ag, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

bb.d:                                             ; preds = %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 seq_cst, align 8, !noalias !156 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.d, %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i.i
  %i.aj = add i32 %.0.i3.i.i.i, -1
  %i.ak = and i32 %i.aj, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.b, !llvm.loop !164

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.q
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !165

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.i, align 4, !tbaa !159, !noalias !156 ; 2 uses
  %i.al = icmp eq i32 %.pr.i.i, 0
  br i1 %i.al, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i
  %i.am = load ptr, ptr %5, align 16, !tbaa !162, !noalias !156
  %i.an = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.ao = mul nuw nsw i64 %i.an, 24
  %i.ap = add nuw nsw i64 %i.an, 31
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = and i64 %i.aq, 1073741820
  %i.as = add nuw nsw i64 %i.ar, %i.ao
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.am, i64 noundef %i.as, i64 noundef 8) #25, !noalias !156
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %._crit_edge, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.at = load i32, ptr %i.f, align 4, !tbaa !159 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit27, label %.lr.ph7.preheader.i.i10

.lr.ph7.preheader.i.i10:                          ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit
  %i.av = load ptr, ptr %6, align 16, !tbaa !162
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.ax = zext i32 %i.at to i64
  %i.ay = add nuw nsw i64 %i.ax, 31
  %i.az = lshr i64 %i.ay, 5
  br label %.lr.ph7.i.i11

.lr.ph7.i.i11:                                    ; preds = %._crit_edge.i.i22, %.lr.ph7.preheader.i.i10
  %indvars.iv.i.i12 = phi i64 [ 0, %.lr.ph7.preheader.i.i10 ], [ %indvars.iv.next.i.i23, %._crit_edge.i.i22 ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i.i12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !27 ; 2 uses
  %.not11.i2.i.i13 = icmp eq i32 %i.bb, 0
  br i1 %.not11.i2.i.i13, label %._crit_edge.i.i22, label %.lr.ph.i.i14

.lr.ph.i.i14:                                     ; preds = %.lr.ph7.i.i11
  %indvars.iv.tr.i.i15 = trunc nuw i64 %indvars.iv.i.i12 to i32
  %i.bc = shl nuw i32 %indvars.iv.tr.i.i15, 5
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i20, %.lr.ph.i.i14
  %.0.i3.i.i16 = phi i32 [ %i.bb, %.lr.ph.i.i14 ], [ %i.bt, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i20 ] ; 3 uses
  %i.bd = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i16, i1 true)
  %i.be = or disjoint i32 %i.bd, %i.bc
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !85 ; 2 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %notsub.i.i.i.i.i.i.i17 = add i64 %i.bj, -1
  %i.bk = icmp ult i64 %notsub.i.i.i.i.i.i.i17, -32
  br i1 %i.bk, label %bb.g, label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i18

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = atomicrmw sub ptr %i.bl, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i18

_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i18: ; preds = %bb.g, %bb.f
  %i.bn = load ptr, ptr %i.bg, align 8, !tbaa !85 ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %notsub.i.i.i.i.i.i19 = add i64 %i.bo, -1
  %i.bp = icmp ult i64 %notsub.i.i.i.i.i.i19, -32
  br i1 %i.bp, label %bb.h, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i20

bb.h:                                             ; preds = %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i18
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.br = atomicrmw sub ptr %i.bq, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i20

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i20: ; preds = %bb.h, %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i18
  %i.bs = add i32 %.0.i3.i.i16, -1
  %i.bt = and i32 %i.bs, %.0.i3.i.i16             ; 2 uses
  %.not11.i.i.i21 = icmp eq i32 %i.bt, 0
  br i1 %.not11.i.i.i21, label %._crit_edge.i.i22, label %bb.f, !llvm.loop !164

._crit_edge.i.i22:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i20, %.lr.ph7.i.i11
  %indvars.iv.next.i.i23 = add nuw nsw i64 %indvars.iv.i.i12, 1 ; 2 uses
  %.not.i.i.i24 = icmp eq i64 %indvars.iv.next.i.i23, %i.az
  br i1 %.not.i.i.i24, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i25, label %.lr.ph7.i.i11, !llvm.loop !165

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i25: ; preds = %._crit_edge.i.i22
  %.pr.i26 = load i32, ptr %i.f, align 4, !tbaa !159 ; 2 uses
  %i.bu = icmp eq i32 %.pr.i26, 0
  br i1 %i.bu, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit27, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i25
  %i.bv = load ptr, ptr %6, align 16, !tbaa !162
  %i.bw = zext i32 %.pr.i26 to i64                ; 2 uses
  %i.bx = mul nuw nsw i64 %i.bw, 24
  %i.by = add nuw nsw i64 %i.bw, 31
  %i.bz = lshr i64 %i.by, 3
  %i.ca = and i64 %i.bz, 1073741820
  %i.cb = add nuw nsw i64 %i.ca, %i.bx
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bv, i64 noundef %i.cb, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit27

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit27: ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i25, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret ptr %i.g

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit33
  %.052 = phi i64 [ %i.da, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit33 ], [ 0, %bb.a ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %.052 ; 3 uses
  %.sroa.03.0.copyload = load ptr, ptr %i.cc, align 8, !tbaa !166
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !166 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.sroa.5.0.copyload = load i16, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %i.cd = shl i16 %.sroa.5.0.copyload, 4
  %spec.select.i = and i16 %i.cd, 16
  %i.ce = and i16 %.sroa.5.0.copyload, 2
  %.sroa.3.1.i = or disjoint i16 %spec.select.i, %i.ce
  %i.cf = shl i16 %.sroa.5.0.copyload, 3
  %i.cg = and i16 %i.cf, 96
  %.sroa.3.3.i = or disjoint i16 %.sroa.3.1.i, %i.cg
  %.sroa.0.0.insert.insert.i = call range(i16 0, -32768) i16 @llvm.fshl.i16(i16 %.sroa.3.3.i, i16 %.sroa.5.0.copyload, i16 8)
  %i.ch = ptrtoint ptr %.sroa.4.0.copyload to i64
  %notsub.i.i.i = add i64 %i.ch, -1
  %i.ci = icmp ult i64 %notsub.i.i.i, -32         ; 2 uses
  br i1 %i.ci, label %bb.j, label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit

bb.j:                                             ; preds = %.lr.ph
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.ck = atomicrmw add ptr %i.cj, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit

_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit:       ; preds = %.lr.ph, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %.sroa.03.0.copyload, ptr %7, align 8, !tbaa !53, !alias.scope !167
  %i.cl = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.cl, 0 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !85 ; 2 uses
  %i.co = ptrtoint ptr %i.cn to i64
  %notsub.i.i.i.i = add i64 %i.co, -1
  %i.cp = icmp ult i64 %notsub.i.i.i.i, -32
  br i1 %i.cp, label %bb.k, label %_ZN4llvm3orc19SymbolAliasMapEntryaSEOS1_.exit

bb.k:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cr = atomicrmw sub ptr %i.cq, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc19SymbolAliasMapEntryaSEOS1_.exit

_ZN4llvm3orc19SymbolAliasMapEntryaSEOS1_.exit:    ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit, %bb.k
  store ptr %.sroa.4.0.copyload, ptr %i.cm, align 8, !tbaa !53
  %i.cs = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16
  store i16 %.sroa.0.0.insert.insert.i, ptr %i.cs, align 8
  %i.ct = load ptr, ptr %7, align 8, !tbaa !85    ; 2 uses
  %i.cu = ptrtoint ptr %i.ct to i64
  %notsub.i.i.i28 = add i64 %i.cu, -1
  %i.cv = icmp ult i64 %notsub.i.i.i28, -32
  br i1 %i.cv, label %bb.l, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit31

bb.l:                                             ; preds = %_ZN4llvm3orc19SymbolAliasMapEntryaSEOS1_.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cx = atomicrmw sub ptr %i.cw, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit31

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit31:         ; preds = %_ZN4llvm3orc19SymbolAliasMapEntryaSEOS1_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %i.ci, label %bb.m, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit33

bb.m:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit31
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.cz = atomicrmw sub ptr %i.cy, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit33

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit33:         ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit31, %bb.m
  %i.da = add nuw i64 %.052, 1                    ; 2 uses
  %.not = icmp eq i64 %i.da, %4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !170
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @LLVMOrcDisposeMaterializationResponsibility(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm3orc29MaterializationResponsibilityESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm3orc29MaterializationResponsibilityEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm3orc29MaterializationResponsibilityEEclEPS2_.exit.i: ; preds = %bb.a
  tail call void @_ZN4llvm3orc29MaterializationResponsibilityD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #28
  br label %_ZNSt10unique_ptrIN4llvm3orc29MaterializationResponsibilityESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3orc29MaterializationResponsibilityESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm3orc29MaterializationResponsibilityEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @LLVMOrcMaterializationResponsibilityGetTargetDylib(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !171, !nonnull !174, !align !175
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local nonnull ptr @LLVMOrcMaterializationResponsibilityGetExecutionSession(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !171, !nonnull !174, !align !175
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !176, !nonnull !174, !align !175
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @LLVMOrcMaterializationResponsibilityGetSymbols(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.93", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8copyFromERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !204  ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = shl nuw nsw i64 %i.d, 4
  %i.f = call noalias ptr @malloc(i64 noundef %i.e) #29, !inline_history !205 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_ZN4llvm11safe_mallocEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %i.c, 0
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = call noalias dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #29, !inline_history !206 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_ZN4llvm11safe_mallocEm.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.2, i1 noundef zeroext true) #26, !inline_history !206
  unreachable

bb.e:                                             ; preds = %bb.b
  call void @_ZN4llvm22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.2, i1 noundef zeroext true) #26, !inline_history !205
  unreachable

_ZN4llvm11safe_mallocEm.exit:                     ; preds = %bb.a, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.a ], [ %i.i, %bb.c ] ; 2 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !207, !noalias !208 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !211, !noalias !208 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !212, !noalias !208 ; 2 uses
  %i.p = icmp eq i32 %i.c, 0
  %i.q = zext i32 %i.o to i64                     ; 5 uses
  %.idx50 = shl nuw nsw i64 %i.q, 4               ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.o, 0           ; 2 uses
  %or.cond = select i1 %i.p, i1 true, i1 %.not.i.not.i.i
  br i1 %or.cond, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11safe_mallocEm.exit
  %i.r = add nuw nsw i64 %i.q, 31
  %i.s = lshr i64 %i.r, 5                         ; 2 uses
  %i.t = load i32, ptr %i.m, align 4, !tbaa !27, !noalias !213 ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i.i.i.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.f
  %i.v = icmp eq i64 %i.s, 1
  br i1 %i.v, label %._crit_edge, label %.lr.ph58

.lr.ph.i.i.i:                                     ; preds = %.lr.ph58
  %i.w = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.s
  br i1 %i.x, label %._crit_edge, label %.lr.ph58, !llvm.loop !216

.lr.ph58:                                         ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !27, !noalias !213 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i.i, label %._crit_edge.i.loopexit.i.i, !llvm.loop !216

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph58
  %i.ac = shl i64 %i.y, 9
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit: ; preds = %bb.f, %._crit_edge.i.loopexit.i.i
  %.012.lcssa.i.i.i = phi i64 [ 0, %bb.f ], [ %i.ac, %._crit_edge.i.loopexit.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ %i.t, %bb.f ], [ %i.aa, %._crit_edge.i.loopexit.i.i ]
  %i.ad = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %i.ae = shl nuw nsw i32 %i.ad, 4
  %.idx = zext nneg i32 %i.ae to i64
  %i.af = or disjoint i64 %.012.lcssa.i.i.i, %.idx ; 2 uses
  %.not22 = icmp eq i64 %i.af, %.idx50
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit
  %i.ag = add nuw nsw i64 %i.q, 31
  %i.ah = lshr i64 %i.ag, 5                       ; 2 uses
  br label %bb.j

._crit_edge:                                      ; preds = %.lr.ph.i.i.i, %bb.j, %_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EELb0EEppEv.exit, %.lr.ph.i.i14.preheader, %.lr.ph.i.i14, %.lr.ph.i.i.i.preheader, %_ZN4llvm11safe_mallocEm.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit
  store i64 %i.d, ptr %1, align 8, !tbaa !115
  br i1 %.not.i.not.i.i, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %._crit_edge
  %i.ai = add nuw nsw i64 %i.q, 31
  %i.aj = lshr i64 %i.ai, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !27 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.al, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.am = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.g

bb.g:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.al, %.lr.ph.i.i ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.an = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.ao = or disjoint i32 %i.an, %i.am
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !85 ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %notsub.i.i.i.i.i.i = add i64 %i.as, -1
  %i.at = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.at, label %bb.h, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = atomicrmw sub ptr %i.au, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.h, %bb.g
  %i.aw = add i32 %.0.i3.i.i, -1
  %i.ax = and i32 %i.aw, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.g, !llvm.loop !217

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.aj
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !218

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.n, align 4, !tbaa !212 ; 2 uses
  %i.ay = icmp eq i32 %.pr.i, 0
  br i1 %i.ay, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i
  %i.az = load ptr, ptr %2, align 8, !tbaa !207
  %i.ba = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bb = shl nuw nsw i64 %i.ba, 4
  %i.bc = add nuw nsw i64 %i.ba, 31
  %i.bd = lshr i64 %i.bc, 3
  %i.be = and i64 %i.bd, 1073741820
  %i.bf = add nuw nsw i64 %i.be, %i.bb
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.az, i64 noundef %i.bf, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %._crit_edge, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret ptr %.0.i

bb.j:                                             ; preds = %.lr.ph, %_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EELb0EEppEv.exit
  %.024 = phi i64 [ 0, %.lr.ph ], [ %i.bq, %_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EELb0EEppEv.exit ] ; 2 uses
  %.pn = phi i64 [ %i.af, %.lr.ph ], [ %i.cl, %_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EELb0EEppEv.exit ] ; 2 uses
  %.sroa.015.023 = getelementptr i8, ptr %i.k, i64 %.pn ; 2 uses
  %i.bg = load ptr, ptr %.sroa.015.023, align 8, !tbaa !85
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.015.023, i64 8
  %.sroa.02.0.copyload = load i16, ptr %i.bh, align 8 ; 5 uses
  %i.bi = and i16 %.sroa.02.0.copyload, 4351
  %.not.i = icmp ne i16 %i.bi, 0
  %spec.select.i = zext i1 %.not.i to i8          ; 2 uses
  %i.bj = and i16 %.sroa.02.0.copyload, 767
  %.not61.i = icmp eq i16 %i.bj, 0
  %i.bk = or disjoint i8 %spec.select.i, 2
  %.sroa.0.1.i = select i1 %.not61.i, i8 %spec.select.i, i8 %i.bk ; 2 uses
  %i.bl = and i16 %.sroa.02.0.copyload, 8447
  %.not63.i = icmp eq i16 %i.bl, 0
  %i.bm = or disjoint i8 %.sroa.0.1.i, 4
  %.sroa.0.2.i = select i1 %.not63.i, i8 %.sroa.0.1.i, i8 %i.bm ; 2 uses
  %i.bn = and i16 %.sroa.02.0.copyload, 16639
  %.not65.i = icmp eq i16 %i.bn, 0
  %i.bo = or disjoint i8 %.sroa.0.2.i, 8
  %.sroa.0.3.i = select i1 %.not65.i, i8 %.sroa.0.2.i, i8 %i.bo
  %.sroa.030.0.insert.ext.i = shl i16 %.sroa.02.0.copyload, 8
  %.sroa.0.0.insert.ext.i = zext nneg i8 %.sroa.0.3.i to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.030.0.insert.ext.i, %.sroa.0.0.insert.ext.i
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %.0.i, i64 %.024 ; 2 uses
  store ptr %i.bg, ptr %i.bp, align 8, !tbaa !166
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i16 %.sroa.0.0.insert.insert.i, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bq = add i64 %.024, 1
  %i.br = add i64 %.pn, 16
  %i.bs = ashr exact i64 %i.br, 4                 ; 3 uses
  %.not.i.i = icmp ult i64 %i.bs, %i.q
  br i1 %.not.i.i, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.bt = lshr i64 %i.bs, 5                       ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !27
  %i.bw = trunc nuw i64 %i.bs to i32
  %i.bx = and i32 %i.bw, 31
  %i.by = shl nsw i32 -1, %i.bx
  %i.bz = and i32 %i.bv, %i.by                    ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.i.i14.preheader, label %_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EELb0EEppEv.exit

.lr.ph.i.i14.preheader:                           ; preds = %bb.k
  %i.cb = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %i.cc = icmp eq i64 %i.cb, %i.ah
  br i1 %i.cc, label %._crit_edge, label %.lr.ph59

.lr.ph.i.i14:                                     ; preds = %.lr.ph59
  %i.cd = add i64 %i.cf, 1                        ; 2 uses
  %i.ce = icmp eq i64 %i.cd, %i.ah
  br i1 %i.ce, label %._crit_edge, label %.lr.ph59, !llvm.loop !216

.lr.ph59:                                         ; preds = %.lr.ph.i.i14.preheader, %.lr.ph.i.i14
  %i.cf = phi i64 [ %i.cd, %.lr.ph.i.i14 ], [ %i.cb, %.lr.ph.i.i14.preheader ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !27 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph.i.i14, label %_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EELb0EEppEv.exit, !llvm.loop !216

_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EELb0EEppEv.exit: ; preds = %.lr.ph59, %bb.k
  %.012.lcssa.i.i = phi i64 [ %i.bt, %bb.k ], [ %i.cf, %.lr.ph59 ]
  %.0.lcssa.i.i = phi i32 [ %i.bz, %bb.k ], [ %i.ch, %.lr.ph59 ]
  %i.cj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i = shl i64 %.012.lcssa.i.i, 9
  %i.ck = shl nuw nsw i32 %i.cj, 4
  %.idx51 = zext nneg i32 %i.ck to i64
  %i.cl = or disjoint i64 %.idx.i.i, %.idx51      ; 2 uses
  %.not = icmp eq i64 %i.cl, %.idx50
  br i1 %.not, label %._crit_edge, label %bb.j
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @LLVMOrcDisposeCSymbolFlagsMap(ptr noundef captures(none) %0) local_unnamed_addr #8 {
bb.a:
  tail call void @free(ptr noundef %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local ptr @LLVMOrcMaterializationResponsibilityGetInitializerSymbol(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %i.c = ptrtoint ptr %i.b to i64
  %notsub.i.i.i = add i64 %i.c, -1
  %i.d = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.d, label %bb.b, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 seq_cst, align 8 ; 0 uses
  %i.g = atomicrmw sub ptr %i.e, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit:           ; preds = %bb.a, %bb.b
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local nonnull ptr @LLVMOrcMaterializationResponsibilityGetRequestedSymbols(ptr noundef nonnull %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::DenseSet", align 8    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = load ptr, ptr %0, align 8, !tbaa !171, !noalias !219, !nonnull !174, !align !175
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !176, !noalias !219, !nonnull !174, !align !175
  call void @_ZN4llvm3orc16ExecutionSession22OL_getRequestedSymbolsERKNS0_29MaterializationResponsibilityE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::DenseSet") align 8 %2, ptr noundef nonnull align 8 dereferenceable(392) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %0) #25
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !222  ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 5 uses
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = call noalias ptr @malloc(i64 noundef %i.g) #29, !inline_history !205 ; 8 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %_ZN4llvm11safe_mallocEm.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i32 %i.e, 0
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = call noalias dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #29, !inline_history !206 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %_ZN4llvm11safe_mallocEm.exit.thread

_ZN4llvm11safe_mallocEm.exit.thread:              ; preds = %bb.c
  %i.m = load ptr, ptr %2, align 8, !tbaa !225, !noalias !226
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !231, !noalias !226
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !232, !noalias !226 ; 2 uses
  %i.r = zext i32 %i.q to i64
  %.not.i.not.i.i.i37 = icmp eq i32 %i.q, 0
  store i64 %i.f, ptr %1, align 8, !tbaa !115
  br i1 %.not.i.not.i.i.i37, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, label %.lr.ph7.preheader.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.2, i1 noundef zeroext true) #26, !inline_history !206
  unreachable

bb.e:                                             ; preds = %bb.b
  call void @_ZN4llvm22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.2, i1 noundef zeroext true) #26, !inline_history !205
  unreachable

_ZN4llvm11safe_mallocEm.exit:                     ; preds = %bb.a
  %i.s = load ptr, ptr %2, align 8, !tbaa !225, !noalias !226 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !231, !noalias !226 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !232, !noalias !226 ; 2 uses
  %i.x = icmp eq i32 %i.e, 0
  %i.y = zext i32 %i.w to i64                     ; 7 uses
  %.idx66 = shl nuw nsw i64 %i.y, 3               ; 2 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.w, 0         ; 4 uses
  %or.cond.i = select i1 %i.x, i1 true, i1 %.not.i.not.i.i.i
  br i1 %or.cond.i, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11safe_mallocEm.exit
  %i.z = add nuw nsw i64 %i.y, 31
  %i.aa = lshr i64 %i.z, 5                        ; 2 uses
  %i.ab = load i32, ptr %i.u, align 4, !tbaa !27, !noalias !233 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i.i.i.i.preheader, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %i.ad = icmp eq i64 %i.aa, 1
  br i1 %i.ad, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit.thread, label %.lr.ph73

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph73
  %i.ae = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.aa
  br i1 %i.af, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit.thread, label %.lr.ph73, !llvm.loop !236

.lr.ph73:                                         ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.ag = phi i64 [ %i.ae, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !27, !noalias !233 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !236

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph73
  %i.ak = shl i64 %i.ag, 8
  br label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit

_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit.thread: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %_ZN4llvm11safe_mallocEm.exit
  store i64 %i.f, ptr %1, align 8, !tbaa !115
  br i1 %.not.i.not.i.i.i, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, label %.lr.ph7.preheader.i.i.i

_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit: ; preds = %bb.f, %._crit_edge.i.loopexit.i.i.i
  %.012.lcssa.i.i.i.i = phi i64 [ 0, %bb.f ], [ %i.ak, %._crit_edge.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.ab, %bb.f ], [ %i.ai, %._crit_edge.i.loopexit.i.i.i ]
  %i.al = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %i.am = shl nuw nsw i32 %i.al, 3
  %.idx = zext nneg i32 %i.am to i64
  %i.an = or disjoint i64 %.012.lcssa.i.i.i.i, %.idx ; 2 uses
  %.not18 = icmp eq i64 %i.an, %.idx66
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit
  %i.ao = add nuw nsw i64 %i.y, 31
  %i.ap = lshr i64 %i.ao, 5                       ; 2 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit
  store i64 %i.f, ptr %1, align 8, !tbaa !115
  br i1 %.not.i.not.i.i.i, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.thread, %_ZN4llvm11safe_mallocEm.exit.thread, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit.thread, %._crit_edge
  %i.aq = phi i64 [ %i.y, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit.thread ], [ %i.y, %._crit_edge ], [ %i.r, %_ZN4llvm11safe_mallocEm.exit.thread ], [ %i.y, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.thread ]
  %i.ar = phi ptr [ %i.v, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit.thread ], [ %i.v, %._crit_edge ], [ %i.p, %_ZN4llvm11safe_mallocEm.exit.thread ], [ %i.v, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.thread ]
  %i.as = phi ptr [ %i.u, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit.thread ], [ %i.u, %._crit_edge ], [ %i.o, %_ZN4llvm11safe_mallocEm.exit.thread ], [ %i.u, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.thread ]
  %i.at = phi ptr [ %i.s, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit.thread ], [ %i.s, %._crit_edge ], [ %i.m, %_ZN4llvm11safe_mallocEm.exit.thread ], [ %i.s, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.thread ]
  %.0.i395054 = phi ptr [ %i.h, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit.thread ], [ %i.h, %._crit_edge ], [ %i.k, %_ZN4llvm11safe_mallocEm.exit.thread ], [ %i.h, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.thread ] ; 2 uses
  %i.au = add nuw nsw i64 %i.aq, 31
  %i.av = lshr i64 %i.au, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.i.i.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !27 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.ay = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.g

bb.g:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.ax, %.lr.ph.i.i.i ], [ %i.bj, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.az = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.ba = or disjoint i32 %i.az, %i.ay
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !85 ; 2 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %notsub.i.i.i.i.i.i.i = add i64 %i.be, -1
  %i.bf = icmp ult i64 %notsub.i.i.i.i.i.i.i, -32
  br i1 %i.bf, label %bb.h, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bh = atomicrmw sub ptr %i.bg, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.bi = add i32 %.0.i3.i.i.i, -1
  %i.bj = and i32 %i.bi, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.g, !llvm.loop !237

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.av
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !238

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.ar, align 4, !tbaa !232 ; 2 uses
  %i.bk = icmp eq i32 %.pr.i.i, 0
  br i1 %i.bk, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i
  %i.bl = load ptr, ptr %2, align 8, !tbaa !225
  %i.bm = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #25
  br label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit: ; preds = %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.thread, %_ZN4llvm11safe_mallocEm.exit.thread, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit.thread, %._crit_edge, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i, %bb.i
  %.0.i395055 = phi ptr [ %i.h, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit.thread ], [ %i.h, %._crit_edge ], [ %.0.i395054, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i ], [ %.0.i395054, %bb.i ], [ %i.k, %_ZN4llvm11safe_mallocEm.exit.thread ], [ %i.h, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret ptr %.0.i395055

bb.j:                                             ; preds = %.lr.ph, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit
  %.020 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit ] ; 2 uses
  %.pn = phi i64 [ %i.an, %.lr.ph ], [ %i.cp, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit ] ; 2 uses
  %.sroa.011.019 = getelementptr i8, ptr %i.s, i64 %.pn
  %i.bs = load ptr, ptr %.sroa.011.019, align 8, !tbaa !85
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.020
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !166
  %i.bu = add i64 %.020, 1
  %i.bv = add i64 %.pn, 8
  %i.bw = ashr exact i64 %i.bv, 3                 ; 3 uses
  %.not.i.i.i = icmp ult i64 %i.bw, %i.y
  br i1 %.not.i.i.i, label %bb.k, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bx = lshr i64 %i.bw, 5                       ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !27
  %i.ca = trunc nuw i64 %i.bw to i32
  %i.cb = and i32 %i.ca, 31
  %i.cc = shl nsw i32 -1, %i.cb
  %i.cd = and i32 %i.bz, %i.cc                    ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.i.i.i10.preheader, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit

.lr.ph.i.i.i10.preheader:                         ; preds = %bb.k
  %i.cf = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.ap
  br i1 %i.cg, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.thread, label %.lr.ph74

.lr.ph.i.i.i10:                                   ; preds = %.lr.ph74
  %i.ch = add i64 %i.cj, 1                        ; 2 uses
  %i.ci = icmp eq i64 %i.ch, %i.ap
  br i1 %i.ci, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.thread, label %.lr.ph74, !llvm.loop !236

.lr.ph74:                                         ; preds = %.lr.ph.i.i.i10.preheader, %.lr.ph.i.i.i10
  %i.cj = phi i64 [ %i.ch, %.lr.ph.i.i.i10 ], [ %i.cf, %.lr.ph.i.i.i10.preheader ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !27 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.i.i.i10, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit, !llvm.loop !236

_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit.thread: ; preds = %bb.j, %.lr.ph.i.i.i10.preheader, %.lr.ph.i.i.i10
  store i64 %i.f, ptr %1, align 8, !tbaa !115
  br i1 %.not.i.not.i.i.i, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, label %.lr.ph7.preheader.i.i.i

_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit: ; preds = %.lr.ph74, %bb.k
  %.012.lcssa.i.i.i = phi i64 [ %i.bx, %bb.k ], [ %i.cj, %.lr.ph74 ]
  %.0.lcssa.i.i.i = phi i32 [ %i.cd, %bb.k ], [ %i.cl, %.lr.ph74 ]
  %i.cn = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %.idx.i.i.i = shl i64 %.012.lcssa.i.i.i, 8
  %i.co = shl nuw nsw i32 %i.cn, 3
  %.idx67 = zext nneg i32 %i.co to i64
  %i.cp = or disjoint i64 %.idx.i.i.i, %.idx67    ; 2 uses
  %.not = icmp eq i64 %i.cp, %.idx66
  br i1 %.not, label %._crit_edge, label %bb.j
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @LLVMOrcDisposeSymbols(ptr noundef captures(none) %0) local_unnamed_addr #8 {
bb.a:
  tail call void @free(ptr noundef %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @LLVMOrcMaterializationResponsibilityNotifyResolved(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 5 uses
  %4 = alloca %"class.llvm::DenseMap.95", align 8 ; 9 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !alias.scope !239
  %.not13.i = icmp eq i64 %2, 0
  br i1 %.not13.i, label %_ZN4llvm5ErrorD2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i
  %.014.i = phi i64 [ %i.q, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.014.i ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.01.0.copyload.i = load i16, ptr %i.c, align 8, !noalias !239 ; 4 uses
  %i.d = shl i16 %.sroa.01.0.copyload.i, 4
  %spec.select.i.i = and i16 %i.d, 16
  %i.e = and i16 %.sroa.01.0.copyload.i, 2
  %.sroa.3.1.i.i = or disjoint i16 %spec.select.i.i, %i.e
  %i.f = shl i16 %.sroa.01.0.copyload.i, 3
  %i.g = and i16 %i.f, 96
  %.sroa.3.3.i.i = or disjoint i16 %.sroa.3.1.i.i, %i.g
  %.sroa.0.0.insert.insert.i.i = call range(i16 0, -32768) i16 @llvm.fshl.i16(i16 %.sroa.3.3.i.i, i16 %.sroa.01.0.copyload.i, i16 8)
  %i.h = load i64, ptr %i.b, align 8, !tbaa !138, !noalias !239
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !239
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !141, !noalias !239
  store ptr %i.i, ptr %3, align 8, !tbaa !53, !alias.scope !242, !noalias !239
  %i.j = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.j, 0 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  store i64 %i.h, ptr %i.k, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 16
  store i16 %.sroa.0.0.insert.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.l = load ptr, ptr %3, align 8, !tbaa !85, !noalias !239 ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %notsub.i.i.i.i = add i64 %i.m, -1
  %i.n = icmp ult i64 %notsub.i.i.i.i, -32
  br i1 %i.n, label %bb.b, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = atomicrmw sub ptr %i.o, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i:         ; preds = %bb.b, %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !239
  %i.q = add nuw i64 %.014.i, 1                   ; 2 uses
  %.not.i = icmp eq i64 %i.q, %2
  br i1 %.not.i, label %_ZN4llvm5ErrorD2Ev.exit, label %.lr.ph.i, !llvm.loop !145

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i, %bb.a
  %i.r = load ptr, ptr %0, align 8, !tbaa !171, !noalias !245, !nonnull !174, !align !175
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !176, !noalias !245, !nonnull !174, !align !175
  call void @_ZN4llvm3orc16ExecutionSession17OL_notifyResolvedERNS0_29MaterializationResponsibilityERKNS_8DenseMapINS0_15SymbolStringPtrENS0_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %5, ptr noundef nonnull align 8 dereferenceable(392) %i.t, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %4) #25
  %i.u = load ptr, ptr %5, align 8, !tbaa !104, !noalias !248
  store ptr null, ptr %5, align 8, !tbaa !104, !noalias !248
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !149  ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.y = load ptr, ptr %4, align 8, !tbaa !152
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !153
  %i.ab = zext i32 %i.w to i64
  %i.ac = add nuw nsw i64 %i.ab, 31
  %i.ad = lshr i64 %i.ac, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !27 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.af, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ag = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.af, %.lr.ph.i.i ], [ %i.ar, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ah = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.ai = or disjoint i32 %i.ah, %i.ag
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !85 ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64
  %notsub.i.i.i.i.i.i = add i64 %i.am, -1
  %i.an = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.an, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.d, %bb.c
  %i.aq = add i32 %.0.i3.i.i, -1
  %i.ar = and i32 %i.aq, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.c, !llvm.loop !154

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.ad
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !155

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.v, align 4, !tbaa !149 ; 2 uses
  %i.as = icmp eq i32 %.pr.i, 0
  br i1 %i.as, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i
  %i.at = load ptr, ptr %4, align 8, !tbaa !152
  %i.au = zext i32 %.pr.i to i64                  ; 2 uses
  %i.av = mul nuw nsw i64 %i.au, 24
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.at, i64 noundef %i.az, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret ptr %i.u
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @LLVMOrcMaterializationResponsibilityNotifyEmitted(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::DenseSet", align 8    ; 13 uses
  %4 = alloca %"class.std::vector.137", align 8   ; 12 uses
  %5 = alloca %"struct.llvm::orc::SymbolDependenceGroup", align 16 ; 15 uses
  %6 = alloca %"class.llvm::DenseSet", align 16   ; 13 uses
  %7 = alloca %"class.llvm::DenseMap.142", align 16 ; 13 uses
  %8 = alloca %"class.llvm::Error", align 8       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %2)
  %.not82 = icmp eq i64 %2, 0
  br i1 %.not82, label %_ZN4llvm5ErrorD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  br label %bb.c

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev.exit, %bb.a
  %i.s = load ptr, ptr %4, align 8, !tbaa !251    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !254
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 48
  %i.z = load ptr, ptr %0, align 8, !tbaa !171, !noalias !255, !nonnull !174, !align !175
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !176, !noalias !255, !nonnull !174, !align !175
  call void @_ZN4llvm3orc16ExecutionSession16OL_notifyEmittedERNS0_29MaterializationResponsibilityENS_8ArrayRefINS0_21SymbolDependenceGroupEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %8, ptr noundef nonnull align 8 dereferenceable(392) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %i.s, i64 %i.y) #25
  %i.ac = load ptr, ptr %8, align 8, !tbaa !104, !noalias !258
  store ptr null, ptr %8, align 8, !tbaa !104, !noalias !258
  %i.ad = load ptr, ptr %4, align 8, !tbaa !251
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !254
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN4llvm3orc21SymbolDependenceGroupEEEvT_S6_(ptr noundef %i.ad, ptr noundef %i.ae)
  %i.af = load ptr, ptr %4, align 8, !tbaa !251   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !261
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #28
  br label %_ZNSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret ptr %i.ac

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev.exit
  %.083 = phi i64 [ 0, %.lr.ph ], [ %i.rt, %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !254 ; 9 uses
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !261
  %.not.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.al, i8 0, i64 24, i1 false)
  %i.an = load <2 x ptr>, ptr %5, align 16, !tbaa !8
  store <2 x ptr> %i.an, ptr %i.al, align 8, !tbaa !8
  store ptr null, ptr %5, align 16, !tbaa !262
  store ptr null, ptr %i.c, align 8, !tbaa !263
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ap = load i32, ptr %i.d, align 16, !tbaa !27
  store i32 %i.ap, ptr %i.ao, align 8, !tbaa !27
  store i32 0, ptr %i.d, align 16, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %i.ar = load i32, ptr %i.e, align 4, !tbaa !27
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !27
  store i32 0, ptr %i.e, align 4, !tbaa !27
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %i.at = load <2 x ptr>, ptr %i.f, align 8, !tbaa !8
  store <2 x ptr> %i.at, ptr %i.as, align 8, !tbaa !8
  store ptr null, ptr %i.f, align 8, !tbaa !264
  store ptr null, ptr %i.g, align 16, !tbaa !263
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.av = load i32, ptr %i.h, align 8, !tbaa !27
  store i32 %i.av, ptr %i.au, align 8, !tbaa !27
  store i32 0, ptr %i.h, align 8, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  %i.ax = load i32, ptr %i.i, align 4, !tbaa !27
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !27
  store i32 0, ptr %i.i, align 4, !tbaa !27
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !254
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  store ptr %i.az, ptr %i.a, align 8, !tbaa !254
  br label %_ZNSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EE9push_backEOS2_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZNSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.al, ptr noundef nonnull align 8 dereferenceable(48) %5)
  br label %_ZNSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.d, %bb.e
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  %i.ba = load i32, ptr %i.i, align 4, !tbaa !266 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EE9push_backEOS2_.exit
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !268
  %i.bd = zext i32 %i.ba to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 5
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bc, i64 noundef %i.bi, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev.exit.i

_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EE9push_backEOS2_.exit
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !232 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_ZN4llvm3orc21SymbolDependenceGroupD2Ev.exit, label %.lr.ph7.preheader.i.i.i.i

.lr.ph7.preheader.i.i.i.i:                        ; preds = %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev.exit.i
  %i.bl = load ptr, ptr %5, align 16, !tbaa !225
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !231
  %i.bn = zext i32 %i.bj to i64
  %i.bo = add nuw nsw i64 %i.bn, 31
  %i.bp = lshr i64 %i.bo, 5
  br label %.lr.ph7.i.i.i.i

.lr.ph7.i.i.i.i:                                  ; preds = %._crit_edge.i.i.i.i, %.lr.ph7.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.i.i.i.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !27 ; 2 uses
  %.not11.i2.i.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not11.i2.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph7.i.i.i.i
  %indvars.iv.tr.i.i.i.i = trunc nuw i64 %indvars.iv.i.i.i.i to i32
  %i.bs = shl nuw i32 %indvars.iv.tr.i.i.i.i, 5
  br label %bb.g

bb.g:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.0.i3.i.i.i.i = phi i32 [ %i.br, %.lr.ph.i.i.i.i ], [ %i.cd, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i ] ; 3 uses
  %i.bt = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i, i1 true)
  %i.bu = or disjoint i32 %i.bt, %i.bs
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !85 ; 2 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %notsub.i.i.i.i.i.i.i.i = add i64 %i.by, -1
  %i.bz = icmp ult i64 %notsub.i.i.i.i.i.i.i.i, -32
  br i1 %i.bz, label %bb.h, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.cc = add i32 %.0.i3.i.i.i.i, -1
  %i.cd = and i32 %i.cc, %.0.i3.i.i.i.i           ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not11.i.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.g, !llvm.loop !237

._crit_edge.i.i.i.i:                              ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph7.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.bp
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i, label %.lr.ph7.i.i.i.i, !llvm.loop !238

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %.pr.i.i.i = load i32, ptr %i.e, align 4, !tbaa !232 ; 2 uses
  %i.ce = icmp eq i32 %.pr.i.i.i, 0
  br i1 %i.ce, label %_ZN4llvm3orc21SymbolDependenceGroupD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i
  %i.cf = load ptr, ptr %5, align 16, !tbaa !225
  %i.cg = zext i32 %.pr.i.i.i to i64              ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.cg, 31
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = and i64 %i.cj, 1073741820
  %i.cl = add nuw nsw i64 %i.ck, %i.ch
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cf, i64 noundef %i.cl, i64 noundef 8) #25
  br label %_ZN4llvm3orc21SymbolDependenceGroupD2Ev.exit

_ZN4llvm3orc21SymbolDependenceGroupD2Ev.exit:     ; preds = %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !269 ; 7 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.083 ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.co, align 8, !tbaa !270
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !115 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !272)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false), !alias.scope !272
  %i.cp = trunc i64 %.sroa.2.0.copyload to i32    ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE7reserveEm.exit.i, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE7reserveEm.exit.thread.i

_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE7reserveEm.exit.thread.i: ; preds = %_ZN4llvm3orc21SymbolDependenceGroupD2Ev.exit
  %i.cr = shl i32 %i.cp, 2
  %i.cs = udiv i32 %i.cr, 3
  %i.ct = add nuw nsw i32 %i.cs, 1
  %i.cu = zext nneg i32 %i.ct to i64              ; 2 uses
  %i.cv = lshr i64 %i.cu, 1
  %i.cw = or i64 %i.cv, %i.cu                     ; 2 uses
  %i.cx = lshr i64 %i.cw, 2
  %i.cy = or i64 %i.cx, %i.cw                     ; 2 uses
  %i.cz = lshr i64 %i.cy, 4
  %i.da = or i64 %i.cz, %i.cy                     ; 2 uses
  %i.db = lshr i64 %i.da, 8
  %i.dc = or i64 %i.db, %i.da                     ; 2 uses
  %i.dd = lshr i64 %i.dc, 16
  %i.de = or i64 %i.dd, %i.dc
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = add nuw i32 %i.df, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %i.dg)
  %.pre90.pre = load ptr, ptr %6, align 16, !tbaa !225, !noalias !275
  br label %.lr.ph.i.preheader

_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE7reserveEm.exit.i: ; preds = %_ZN4llvm3orc21SymbolDependenceGroupD2Ev.exit
  %.not5.i = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not5.i, label %_ZN12_GLOBAL__N_115toSymbolNameSetE19LLVMOrcCSymbolsList.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE7reserveEm.exit.i, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE7reserveEm.exit.thread.i
  %.ph133 = phi ptr [ %.pre90.pre, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE7reserveEm.exit.thread.i ], [ null, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE7reserveEm.exit.i ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i
  %i.dh = phi ptr [ %i.gv, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i ], [ %.ph133, %.lr.ph.i.preheader ] ; 4 uses
  %.06.i = phi i64 [ %i.gw, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %.06.i
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !166, !noalias !272 ; 6 uses
  %i.dk = load ptr, ptr %i.j, align 8, !tbaa !231, !noalias !275 ; 3 uses
  %i.dl = load i32, ptr %i.k, align 4, !tbaa !232, !noalias !275 ; 4 uses
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %.loopexit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.dn = add i32 %i.dl, -1                       ; 2 uses
  %i.do = ptrtoint ptr %i.dj to i64
  %i.dp = mul i64 %i.do, -4658895280553007687     ; 2 uses
  %i.dq = lshr i64 %i.dp, 31
  %i.dr = xor i64 %i.dq, %i.dp
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = and i32 %i.dn, %i.ds                    ; 3 uses
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.du ; 2 uses
  %i.dw = lshr i64 %i.du, 5
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !27, !noalias !286
  %i.dz = and i32 %i.dt, 31
  %i.ea = lshr i32 %i.dy, %i.dz
  %i.eb = trunc i32 %i.ea to i1
  br i1 %i.eb, label %.lr.ph.i.i51, label %.loopexit.i, !prof !287

.lr.ph.i.i51:                                     ; preds = %bb.j, %bb.k
  %i.ec = phi ptr [ %i.ei, %bb.k ], [ %i.dv, %bb.j ]
  %.024.i.i52 = phi i32 [ %i.eg, %bb.k ], [ %i.dt, %bb.j ]
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !85, !noalias !286
  %i.ee = icmp eq ptr %i.dj, %i.ed
  br i1 %i.ee, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit, label %bb.k, !prof !288

bb.k:                                             ; preds = %.lr.ph.i.i51
  %i.ef = add nuw i32 %.024.i.i52, 1
  %i.eg = and i32 %i.ef, %i.dn                    ; 3 uses
  %i.eh = zext i32 %i.eg to i64                   ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.eh ; 2 uses
  %i.ej = lshr i64 %i.eh, 5
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !27, !noalias !286
  %i.em = and i32 %i.eg, 31
  %i.en = lshr i32 %i.el, %i.em
  %i.eo = trunc i32 %i.en to i1
  br i1 %i.eo, label %.lr.ph.i.i51, label %.loopexit.i, !prof !289, !llvm.loop !290

.loopexit.i:                                      ; preds = %bb.k, %bb.j, %.lr.ph.i
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.dv, %bb.j ], [ null, %.lr.ph.i ], [ %i.ei, %bb.k ]
  %i.ep = load i32, ptr %i.l, align 16, !tbaa !222, !noalias !286
  %i.eq = shl i32 %i.ep, 2
  %i.er = add i32 %i.eq, 4
  %i.es = mul i32 %i.dl, 3
  %.not.i.i49 = icmp ult i32 %i.er, %i.es
  br i1 %.not.i.i49, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i, label %bb.l, !prof !288

bb.l:                                             ; preds = %.loopexit.i
  %i.et = shl i32 %i.dl, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %i.et), !noalias !286
  %i.eu = load ptr, ptr %6, align 16, !tbaa !225, !noalias !291 ; 5 uses
  %i.ev = load ptr, ptr %i.j, align 8, !tbaa !231, !noalias !291 ; 5 uses
  %i.ew = load i32, ptr %i.k, align 4, !tbaa !232, !noalias !291 ; 2 uses
  %i.ex = icmp ne i32 %i.ew, 0
  call void @llvm.assume(i1 %i.ex)
  %i.ey = add i32 %i.ew, -1                       ; 2 uses
  %i.ez = ptrtoint ptr %i.dj to i64
  %i.fa = mul i64 %i.ez, -4658895280553007687     ; 2 uses
  %i.fb = lshr i64 %i.fa, 31
  %i.fc = xor i64 %i.fb, %i.fa
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = and i32 %i.ey, %i.fd                    ; 3 uses
  %i.ff = zext i32 %i.fe to i64                   ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ff ; 2 uses
  %i.fh = lshr i64 %i.ff, 5
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !27, !noalias !286
  %i.fk = and i32 %i.fe, 31
  %i.fl = lshr i32 %i.fj, %i.fk
  %i.fm = trunc i32 %i.fl to i1
  br i1 %i.fm, label %.lr.ph.i65, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i, !prof !287

.lr.ph.i65:                                       ; preds = %bb.l, %bb.m
  %i.fn = phi ptr [ %i.ft, %bb.m ], [ %i.fg, %bb.l ] ; 2 uses
  %.024.i = phi i32 [ %i.fr, %bb.m ], [ %i.fe, %bb.l ]
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !85, !noalias !286
  %i.fp = icmp eq ptr %i.dj, %i.fo
  br i1 %i.fp, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i, label %bb.m, !prof !288

bb.m:                                             ; preds = %.lr.ph.i65
  %i.fq = add nuw i32 %.024.i, 1
  %i.fr = and i32 %i.fq, %i.ey                    ; 3 uses
  %i.fs = zext i32 %i.fr to i64                   ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.fs ; 2 uses
  %i.fu = lshr i64 %i.fs, 5
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !27, !noalias !286
  %i.fx = and i32 %i.fr, 31
  %i.fy = lshr i32 %i.fw, %i.fx
  %i.fz = trunc i32 %i.fy to i1
  br i1 %i.fz, label %.lr.ph.i65, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i, !prof !289, !llvm.loop !290

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i: ; preds = %bb.m, %.lr.ph.i65, %bb.l, %.loopexit.i
  %i.ga = phi ptr [ %i.dh, %.loopexit.i ], [ %i.eu, %bb.l ], [ %i.eu, %.lr.ph.i65 ], [ %i.eu, %bb.m ] ; 2 uses
  %i.gb = phi ptr [ %i.dk, %.loopexit.i ], [ %i.ev, %bb.l ], [ %i.ev, %.lr.ph.i65 ], [ %i.ev, %bb.m ]
  %i.gc = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i ], [ %i.fg, %bb.l ], [ %i.ft, %bb.m ], [ %i.fn, %.lr.ph.i65 ] ; 2 uses
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.ga to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = ashr exact i64 %i.gf, 3                 ; 2 uses
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = and i32 %i.gh, 31
  %i.gj = shl nuw i32 1, %i.gi
  %i.gk = lshr i64 %i.gg, 5
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.gk ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !27, !noalias !286
  %i.gn = or i32 %i.gj, %i.gm
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !27, !noalias !286
  %i.go = load i32, ptr %i.l, align 16, !tbaa !222, !noalias !286
  %i.gp = add i32 %i.go, 1
  store i32 %i.gp, ptr %i.l, align 16, !tbaa !222, !noalias !286
  store ptr %i.dj, ptr %i.gc, align 8, !tbaa !53, !noalias !286
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit: ; preds = %.lr.ph.i.i51, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i
  %i.gq = phi ptr [ %i.ga, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i ], [ %i.dh, %.lr.ph.i.i51 ]
  %.sroa.070.0 = phi ptr [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i ], [ %i.dj, %.lr.ph.i.i51 ] ; 2 uses
  %i.gr = ptrtoint ptr %.sroa.070.0 to i64
  %notsub.i.i.i.i = add i64 %i.gr, -1
  %i.gs = icmp ult i64 %notsub.i.i.i.i, -32
  br i1 %i.gs, label %bb.n, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i

bb.n:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.070.0, i64 8
  %i.gu = atomicrmw sub ptr %i.gt, i64 1 seq_cst, align 8 ; 0 uses
  %.pre = load ptr, ptr %6, align 16, !tbaa !225, !noalias !275
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i:         ; preds = %bb.n, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit
  %i.gv = phi ptr [ %.pre, %bb.n ], [ %i.gq, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit ]
  %i.gw = add nuw i64 %.06.i, 1                   ; 2 uses
  %.not.i = icmp eq i64 %i.gw, %.sroa.2.0.copyload
  br i1 %.not.i, label %_ZN12_GLOBAL__N_115toSymbolNameSetE19LLVMOrcCSymbolsList.exit, label %.lr.ph.i, !llvm.loop !296

_ZN12_GLOBAL__N_115toSymbolNameSetE19LLVMOrcCSymbolsList.exit: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE7reserveEm.exit.i
  %i.gx = getelementptr inbounds i8, ptr %i.cm, i64 -28 ; 3 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !232 ; 2 uses
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %_ZN4llvm8DenseSetINS_3orc15SymbolStringPtrENS_12DenseMapInfoIS2_vEEEaSEOS5_.exit, label %.lr.ph7.preheader.i.i.i.i12

.lr.ph7.preheader.i.i.i.i12:                      ; preds = %_ZN12_GLOBAL__N_115toSymbolNameSetE19LLVMOrcCSymbolsList.exit
  %i.ha = load ptr, ptr %i.cn, align 8, !tbaa !225
  %i.hb = getelementptr inbounds i8, ptr %i.cm, i64 -40
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !231
  %i.hd = zext i32 %i.gy to i64
  %i.he = add nuw nsw i64 %i.hd, 31
  %i.hf = lshr i64 %i.he, 5
  br label %.lr.ph7.i.i.i.i13

.lr.ph7.i.i.i.i13:                                ; preds = %._crit_edge.i.i.i.i22, %.lr.ph7.preheader.i.i.i.i12
  %indvars.iv.i.i.i.i14 = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i12 ], [ %indvars.iv.next.i.i.i.i23, %._crit_edge.i.i.i.i22 ] ; 3 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.i.i.i.i14
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !27 ; 2 uses
  %.not11.i2.i.i.i.i15 = icmp eq i32 %i.hh, 0
  br i1 %.not11.i2.i.i.i.i15, label %._crit_edge.i.i.i.i22, label %.lr.ph.i.i.i.i16

.lr.ph.i.i.i.i16:                                 ; preds = %.lr.ph7.i.i.i.i13
  %indvars.iv.tr.i.i.i.i17 = trunc nuw i64 %indvars.iv.i.i.i.i14 to i32
  %i.hi = shl nuw i32 %indvars.iv.tr.i.i.i.i17, 5
  br label %bb.o

bb.o:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i20, %.lr.ph.i.i.i.i16
  %.0.i3.i.i.i.i18 = phi i32 [ %i.hh, %.lr.ph.i.i.i.i16 ], [ %i.ht, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i20 ] ; 3 uses
  %i.hj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i18, i1 true)
  %i.hk = or disjoint i32 %i.hj, %i.hi
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.hl
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !85 ; 2 uses
  %i.ho = ptrtoint ptr %i.hn to i64
  %notsub.i.i.i.i.i.i.i.i19 = add i64 %i.ho, -1
  %i.hp = icmp ult i64 %notsub.i.i.i.i.i.i.i.i19, -32
  br i1 %i.hp, label %bb.p, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i20

bb.p:                                             ; preds = %bb.o
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hr = atomicrmw sub ptr %i.hq, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i20

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i20: ; preds = %bb.p, %bb.o
  %i.hs = add i32 %.0.i3.i.i.i.i18, -1
  %i.ht = and i32 %i.hs, %.0.i3.i.i.i.i18         ; 2 uses
  %.not11.i.i.i.i.i21 = icmp eq i32 %i.ht, 0
  br i1 %.not11.i.i.i.i.i21, label %._crit_edge.i.i.i.i22, label %bb.o, !llvm.loop !237

._crit_edge.i.i.i.i22:                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i20, %.lr.ph7.i.i.i.i13
  %indvars.iv.next.i.i.i.i23 = add nuw nsw i64 %indvars.iv.i.i.i.i14, 1 ; 2 uses
  %.not.i.i.i.i.i24 = icmp eq i64 %indvars.iv.next.i.i.i.i23, %i.hf
  br i1 %.not.i.i.i.i.i24, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i25, label %.lr.ph7.i.i.i.i13, !llvm.loop !238

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i25: ; preds = %._crit_edge.i.i.i.i22
  %.pr.i.i.i26 = load i32, ptr %i.gx, align 4, !tbaa !232 ; 2 uses
  %i.hu = icmp eq i32 %.pr.i.i.i26, 0
  br i1 %i.hu, label %_ZN4llvm8DenseSetINS_3orc15SymbolStringPtrENS_12DenseMapInfoIS2_vEEEaSEOS5_.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i25
  %i.hv = load ptr, ptr %i.cn, align 8, !tbaa !225
  %i.hw = zext i32 %.pr.i.i.i26 to i64            ; 2 uses
  %i.hx = shl nuw nsw i64 %i.hw, 3
  %i.hy = add nuw nsw i64 %i.hw, 31
  %i.hz = lshr i64 %i.hy, 3
  %i.ia = and i64 %i.hz, 1073741820
  %i.ib = add nuw nsw i64 %i.ia, %i.hx
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.hv, i64 noundef %i.ib, i64 noundef 8) #25
  br label %_ZN4llvm8DenseSetINS_3orc15SymbolStringPtrENS_12DenseMapInfoIS2_vEEEaSEOS5_.exit

_ZN4llvm8DenseSetINS_3orc15SymbolStringPtrENS_12DenseMapInfoIS2_vEEEaSEOS5_.exit: ; preds = %_ZN12_GLOBAL__N_115toSymbolNameSetE19LLVMOrcCSymbolsList.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i25, %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i8 0, i64 24, i1 false)
  %i.ic = load <2 x ptr>, ptr %6, align 16, !tbaa !8
  store <2 x ptr> %i.ic, ptr %i.cn, align 8, !tbaa !8
  store ptr null, ptr %6, align 16, !tbaa !262
  store ptr null, ptr %i.j, align 8, !tbaa !263
  %i.id = getelementptr inbounds i8, ptr %i.cm, i64 -32
  %i.ie = load i32, ptr %i.l, align 16, !tbaa !27
  store i32 %i.ie, ptr %i.id, align 8, !tbaa !27
  store i32 0, ptr %i.l, align 16, !tbaa !27
  %i.if = load i32, ptr %i.k, align 4, !tbaa !27
  store i32 %i.if, ptr %i.gx, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ig = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !297
  %i.ii = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !300 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false), !alias.scope !301
  %.not22.i = icmp eq i64 %i.ij, 0
  br i1 %.not22.i, label %_ZN12_GLOBAL__N_121toSymbolDependenceMapEP25LLVMOrcCDependenceMapPairm.exit, label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %_ZN4llvm8DenseSetINS_3orc15SymbolStringPtrENS_12DenseMapInfoIS2_vEEEaSEOS5_.exit, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i
  %.01323.i = phi i64 [ %i.nb, %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i ], [ 0, %_ZN4llvm8DenseSetINS_3orc15SymbolStringPtrENS_12DenseMapInfoIS2_vEEEaSEOS5_.exit ] ; 2 uses
  %i.ik = getelementptr inbounds nuw [24 x i8], ptr %i.ih, i64 %.01323.i ; 3 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !304, !noalias !301 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !301
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !301
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 16 ; 2 uses
  %i.in = load i64, ptr %i.im, align 8, !tbaa !306, !noalias !301
  %.not1420.i = icmp eq i64 %i.in, 0
  br i1 %.not1420.i, label %._crit_edge.i, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph25.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  br label %bb.z

._crit_edge.i:                                    ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i30, %.lr.ph25.i
  %i.ip = load ptr, ptr %7, align 16, !tbaa !268, !noalias !307 ; 3 uses
  %i.iq = load ptr, ptr %i.p, align 8, !tbaa !312, !noalias !307 ; 3 uses
  %i.ir = load i32, ptr %i.q, align 4, !tbaa !266, !noalias !307 ; 4 uses
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %.loopexit.i53, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i
  %i.it = add i32 %i.ir, -1                       ; 2 uses
  %i.iu = ptrtoint ptr %i.il to i64
  %i.iv = mul i64 %i.iu, -4658895280553007687     ; 2 uses
  %i.iw = lshr i64 %i.iv, 31
  %i.ix = xor i64 %i.iw, %i.iv
  %i.iy = trunc i64 %i.ix to i32
  %i.iz = and i32 %i.it, %i.iy                    ; 3 uses
  %i.ja = zext i32 %i.iz to i64                   ; 2 uses
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.ip, i64 %i.ja ; 2 uses
  %i.jc = lshr i64 %i.ja, 5
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !27
  %i.jf = and i32 %i.iz, 31
  %i.jg = lshr i32 %i.je, %i.jf
  %i.jh = trunc i32 %i.jg to i1
  br i1 %i.jh, label %.lr.ph.i.i63, label %.loopexit.i53, !prof !287

.lr.ph.i.i63:                                     ; preds = %bb.r, %bb.s
  %i.ji = phi ptr [ %i.jo, %bb.s ], [ %i.jb, %bb.r ] ; 2 uses
  %.024.i.i64 = phi i32 [ %i.jm, %bb.s ], [ %i.iz, %bb.r ]
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !313
  %i.jk = icmp eq ptr %i.il, %i.jj
  br i1 %i.jk, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSD_bEOT_DpOT0_.exit, label %bb.s, !prof !288

bb.s:                                             ; preds = %.lr.ph.i.i63
  %i.jl = add nuw i32 %.024.i.i64, 1
  %i.jm = and i32 %i.jl, %i.it                    ; 3 uses
  %i.jn = zext i32 %i.jm to i64                   ; 2 uses
  %i.jo = getelementptr inbounds nuw [32 x i8], ptr %i.ip, i64 %i.jn ; 2 uses
  %i.jp = lshr i64 %i.jn, 5
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !27
  %i.js = and i32 %i.jm, 31
  %i.jt = lshr i32 %i.jr, %i.js
  %i.ju = trunc i32 %i.jt to i1
  br i1 %i.ju, label %.lr.ph.i.i63, label %.loopexit.i53, !prof !289, !llvm.loop !314

.loopexit.i53:                                    ; preds = %bb.s, %bb.r, %._crit_edge.i
  %.lcssa28.sink.i.ph.i54 = phi ptr [ %i.jb, %bb.r ], [ null, %._crit_edge.i ], [ %i.jo, %bb.s ]
  %i.jv = load i32, ptr %i.r, align 16, !tbaa !315
  %i.jw = shl i32 %i.jv, 2
  %i.jx = add i32 %i.jw, 4
  %i.jy = mul i32 %i.ir, 3
  %.not.i.i55 = icmp ult i32 %i.jx, %i.jy
  br i1 %.not.i.i55, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit.i, label %bb.t, !prof !288

bb.t:                                             ; preds = %.loopexit.i53
  %i.jz = shl i32 %i.ir, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E4growEj(ptr noundef nonnull align 8 dereferenceable(1) %7, i32 noundef %i.jz)
  %i.ka = load ptr, ptr %7, align 16, !tbaa !268, !noalias !316 ; 5 uses
  %i.kb = load ptr, ptr %i.p, align 8, !tbaa !312, !noalias !316 ; 5 uses
  %i.kc = load i32, ptr %i.q, align 4, !tbaa !266, !noalias !316 ; 2 uses
  %i.kd = icmp ne i32 %i.kc, 0
  call void @llvm.assume(i1 %i.kd)
  %i.ke = add i32 %i.kc, -1                       ; 2 uses
  %i.kf = ptrtoint ptr %i.il to i64
  %i.kg = mul i64 %i.kf, -4658895280553007687     ; 2 uses
  %i.kh = lshr i64 %i.kg, 31
  %i.ki = xor i64 %i.kh, %i.kg
  %i.kj = trunc i64 %i.ki to i32
  %i.kk = and i32 %i.ke, %i.kj                    ; 3 uses
  %i.kl = zext i32 %i.kk to i64                   ; 2 uses
  %i.km = getelementptr inbounds nuw [32 x i8], ptr %i.ka, i64 %i.kl ; 2 uses
  %i.kn = lshr i64 %i.kl, 5
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !27
  %i.kq = and i32 %i.kk, 31
  %i.kr = lshr i32 %i.kp, %i.kq
  %i.ks = trunc i32 %i.kr to i1
  br i1 %i.ks, label %.lr.ph.i68, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit.i, !prof !287

.lr.ph.i68:                                       ; preds = %bb.t, %bb.u
  %i.kt = phi ptr [ %i.kz, %bb.u ], [ %i.km, %bb.t ] ; 2 uses
  %.024.i69 = phi i32 [ %i.kx, %bb.u ], [ %i.kk, %bb.t ]
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !313
  %i.kv = icmp eq ptr %i.il, %i.ku
  br i1 %i.kv, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit.i, label %bb.u, !prof !288

bb.u:                                             ; preds = %.lr.ph.i68
  %i.kw = add nuw i32 %.024.i69, 1
  %i.kx = and i32 %i.kw, %i.ke                    ; 3 uses
  %i.ky = zext i32 %i.kx to i64                   ; 2 uses
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr %i.ka, i64 %i.ky ; 2 uses
  %i.la = lshr i64 %i.ky, 5
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !27
  %i.ld = and i32 %i.kx, 31
  %i.le = lshr i32 %i.lc, %i.ld
  %i.lf = trunc i32 %i.le to i1
  br i1 %i.lf, label %.lr.ph.i68, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit.i, !prof !289, !llvm.loop !314

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit.i: ; preds = %bb.u, %.lr.ph.i68, %bb.t, %.loopexit.i53
  %i.lg = phi ptr [ %i.ip, %.loopexit.i53 ], [ %i.ka, %bb.t ], [ %i.ka, %.lr.ph.i68 ], [ %i.ka, %bb.u ]
  %i.lh = phi ptr [ %i.iq, %.loopexit.i53 ], [ %i.kb, %bb.t ], [ %i.kb, %.lr.ph.i68 ], [ %i.kb, %bb.u ]
  %i.li = phi ptr [ %.lcssa28.sink.i.ph.i54, %.loopexit.i53 ], [ %i.km, %bb.t ], [ %i.kz, %bb.u ], [ %i.kt, %.lr.ph.i68 ] ; 4 uses
  %i.lj = ptrtoint ptr %i.li to i64
  %i.lk = ptrtoint ptr %i.lg to i64
  %i.ll = sub i64 %i.lj, %i.lk
  %i.lm = ashr exact i64 %i.ll, 5                 ; 2 uses
  %i.ln = trunc i64 %i.lm to i32
  %i.lo = and i32 %i.ln, 31
  %i.lp = shl nuw i32 1, %i.lo
  %i.lq = lshr i64 %i.lm, 5
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.lq ; 2 uses
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !27
  %i.lt = or i32 %i.lp, %i.ls
  store i32 %i.lt, ptr %i.lr, align 4, !tbaa !27
  %i.lu = load i32, ptr %i.r, align 16, !tbaa !315
  %i.lv = add i32 %i.lu, 1
  store i32 %i.lv, ptr %i.r, align 16, !tbaa !315
  store ptr %i.il, ptr %i.li, align 8, !tbaa !313
  %i.lw = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lw, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSD_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSD_bEOT_DpOT0_.exit: ; preds = %.lr.ph.i.i63, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit.i
  %.sroa.0.0.i59 = phi ptr [ %i.li, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit.i ], [ %i.ji, %.lr.ph.i.i63 ]
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i59, i64 8 ; 2 uses
  %.not.i.i.i.i31 = icmp eq ptr %3, %i.lx
  br i1 %.not.i.i.i.i31, label %_ZN4llvm8DenseSetINS_3orc15SymbolStringPtrENS_12DenseMapInfoIS2_vEEEaSERKS5_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSD_bEOT_DpOT0_.exit
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8copyFromERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %i.lx, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZN4llvm8DenseSetINS_3orc15SymbolStringPtrENS_12DenseMapInfoIS2_vEEEaSERKS5_.exit.i

_ZN4llvm8DenseSetINS_3orc15SymbolStringPtrENS_12DenseMapInfoIS2_vEEEaSERKS5_.exit.i: ; preds = %bb.v, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSD_bEOT_DpOT0_.exit
  %i.ly = load i32, ptr %i.n, align 4, !tbaa !232, !noalias !301 ; 2 uses
  %i.lz = icmp eq i32 %i.ly, 0
  br i1 %i.lz, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i, label %.lr.ph7.preheader.i.i.i.i32

.lr.ph7.preheader.i.i.i.i32:                      ; preds = %_ZN4llvm8DenseSetINS_3orc15SymbolStringPtrENS_12DenseMapInfoIS2_vEEEaSERKS5_.exit.i
  %i.ma = load ptr, ptr %3, align 8, !tbaa !225, !noalias !301
  %i.mb = load ptr, ptr %i.m, align 8, !tbaa !231, !noalias !301
  %i.mc = zext i32 %i.ly to i64
  %i.md = add nuw nsw i64 %i.mc, 31
  %i.me = lshr i64 %i.md, 5
  br label %.lr.ph7.i.i.i.i33

.lr.ph7.i.i.i.i33:                                ; preds = %._crit_edge.i.i.i.i42, %.lr.ph7.preheader.i.i.i.i32
  %indvars.iv.i.i.i.i34 = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i32 ], [ %indvars.iv.next.i.i.i.i43, %._crit_edge.i.i.i.i42 ] ; 3 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv.i.i.i.i34
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !27 ; 2 uses
  %.not11.i2.i.i.i.i35 = icmp eq i32 %i.mg, 0
  br i1 %.not11.i2.i.i.i.i35, label %._crit_edge.i.i.i.i42, label %.lr.ph.i.i.i.i36

.lr.ph.i.i.i.i36:                                 ; preds = %.lr.ph7.i.i.i.i33
  %indvars.iv.tr.i.i.i.i37 = trunc nuw i64 %indvars.iv.i.i.i.i34 to i32
  %i.mh = shl nuw i32 %indvars.iv.tr.i.i.i.i37, 5
  br label %bb.w

bb.w:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i40, %.lr.ph.i.i.i.i36
  %.0.i3.i.i.i.i38 = phi i32 [ %i.mg, %.lr.ph.i.i.i.i36 ], [ %i.ms, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i40 ] ; 3 uses
  %i.mi = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i38, i1 true)
  %i.mj = or disjoint i32 %i.mi, %i.mh
  %i.mk = zext i32 %i.mj to i64
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.mk
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !85 ; 2 uses
  %i.mn = ptrtoint ptr %i.mm to i64
  %notsub.i.i.i.i.i.i.i.i39 = add i64 %i.mn, -1
  %i.mo = icmp ult i64 %notsub.i.i.i.i.i.i.i.i39, -32
  br i1 %i.mo, label %bb.x, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i40

bb.x:                                             ; preds = %bb.w
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mq = atomicrmw sub ptr %i.mp, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i40

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i40: ; preds = %bb.x, %bb.w
  %i.mr = add i32 %.0.i3.i.i.i.i38, -1
  %i.ms = and i32 %i.mr, %.0.i3.i.i.i.i38         ; 2 uses
  %.not11.i.i.i.i.i41 = icmp eq i32 %i.ms, 0
  br i1 %.not11.i.i.i.i.i41, label %._crit_edge.i.i.i.i42, label %bb.w, !llvm.loop !237

._crit_edge.i.i.i.i42:                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i40, %.lr.ph7.i.i.i.i33
  %indvars.iv.next.i.i.i.i43 = add nuw nsw i64 %indvars.iv.i.i.i.i34, 1 ; 2 uses
  %.not.i.i.i.i.i44 = icmp eq i64 %indvars.iv.next.i.i.i.i43, %i.me
  br i1 %.not.i.i.i.i.i44, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i45, label %.lr.ph7.i.i.i.i33, !llvm.loop !238

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i45: ; preds = %._crit_edge.i.i.i.i42
  %.pr.i.i.i46 = load i32, ptr %i.n, align 4, !tbaa !232, !noalias !301 ; 2 uses
  %i.mt = icmp eq i32 %.pr.i.i.i46, 0
  br i1 %i.mt, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i45
  %i.mu = load ptr, ptr %3, align 8, !tbaa !225, !noalias !301
  %i.mv = zext i32 %.pr.i.i.i46 to i64            ; 2 uses
  %i.mw = shl nuw nsw i64 %i.mv, 3
  %i.mx = add nuw nsw i64 %i.mv, 31
  %i.my = lshr i64 %i.mx, 3
  %i.mz = and i64 %i.my, 1073741820
  %i.na = add nuw nsw i64 %i.mz, %i.mw
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.mu, i64 noundef %i.na, i64 noundef 8) #25
  br label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i

_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i: ; preds = %bb.y, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i45, %_ZN4llvm8DenseSetINS_3orc15SymbolStringPtrENS_12DenseMapInfoIS2_vEEEaSERKS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !301
  %i.nb = add nuw i64 %.01323.i, 1                ; 2 uses
  %.not.i47 = icmp eq i64 %i.nb, %i.ij
  br i1 %.not.i47, label %_ZN12_GLOBAL__N_121toSymbolDependenceMapEP25LLVMOrcCDependenceMapPairm.exit, label %.lr.ph25.i, !llvm.loop !321

bb.z:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i30, %.lr.ph.i27
  %i.nc = phi ptr [ null, %.lr.ph.i27 ], [ %i.qr, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i30 ] ; 4 uses
  %.021.i = phi i64 [ 0, %.lr.ph.i27 ], [ %i.qs, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i30 ] ; 2 uses
  %i.nd = load ptr, ptr %i.io, align 8, !tbaa !322, !noalias !301
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %.021.i
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !166 ; 6 uses
  %i.ng = load ptr, ptr %i.m, align 8, !tbaa !231, !noalias !323 ; 3 uses
  %i.nh = load i32, ptr %i.n, align 4, !tbaa !232, !noalias !323 ; 4 uses
  %i.ni = icmp eq i32 %i.nh, 0
  br i1 %i.ni, label %.loopexit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.nj = add i32 %i.nh, -1                       ; 2 uses
  %i.nk = ptrtoint ptr %i.nf to i64
  %i.nl = mul i64 %i.nk, -4658895280553007687     ; 2 uses
  %i.nm = lshr i64 %i.nl, 31
  %i.nn = xor i64 %i.nm, %i.nl
  %i.no = trunc i64 %i.nn to i32
  %i.np = and i32 %i.nj, %i.no                    ; 3 uses
  %i.nq = zext i32 %i.np to i64                   ; 2 uses
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %i.nq ; 2 uses
  %i.ns = lshr i64 %i.nq, 5
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.ns
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !27, !noalias !334
  %i.nv = and i32 %i.np, 31
  %i.nw = lshr i32 %i.nu, %i.nv
  %i.nx = trunc i32 %i.nw to i1
  br i1 %i.nx, label %.lr.ph.i.i.i48, label %.loopexit.i.i, !prof !287

.lr.ph.i.i.i48:                                   ; preds = %bb.aa, %bb.ab
  %i.ny = phi ptr [ %i.oe, %bb.ab ], [ %i.nr, %bb.aa ]
  %.024.i.i.i = phi i32 [ %i.oc, %bb.ab ], [ %i.np, %bb.aa ]
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !85, !noalias !334
  %i.oa = icmp eq ptr %i.nf, %i.nz
  br i1 %i.oa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit.i, label %bb.ab, !prof !288

bb.ab:                                            ; preds = %.lr.ph.i.i.i48
  %i.ob = add nuw i32 %.024.i.i.i, 1
  %i.oc = and i32 %i.ob, %i.nj                    ; 3 uses
  %i.od = zext i32 %i.oc to i64                   ; 2 uses
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %i.od ; 2 uses
  %i.of = lshr i64 %i.od, 5
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.of
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !27, !noalias !334
  %i.oi = and i32 %i.oc, 31
  %i.oj = lshr i32 %i.oh, %i.oi
  %i.ok = trunc i32 %i.oj to i1
  br i1 %i.ok, label %.lr.ph.i.i.i48, label %.loopexit.i.i, !prof !289, !llvm.loop !290

.loopexit.i.i:                                    ; preds = %bb.ab, %bb.aa, %bb.z
  %.lcssa28.sink.i.ph.i.i = phi ptr [ %i.nr, %bb.aa ], [ null, %bb.z ], [ %i.oe, %bb.ab ]
  %i.ol = load i32, ptr %i.o, align 8, !tbaa !222, !noalias !335
  %i.om = shl i32 %i.ol, 2
  %i.on = add i32 %i.om, 4
  %i.oo = mul i32 %i.nh, 3
  %.not.i.i.i28 = icmp ult i32 %i.on, %i.oo
  br i1 %.not.i.i.i28, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i.i, label %bb.ac, !prof !288

bb.ac:                                            ; preds = %.loopexit.i.i
  %i.op = shl i32 %i.nh, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.op), !noalias !334
  %i.oq = load ptr, ptr %3, align 8, !tbaa !225, !noalias !336 ; 5 uses
  %i.or = load ptr, ptr %i.m, align 8, !tbaa !231, !noalias !336 ; 5 uses
  %i.os = load i32, ptr %i.n, align 4, !tbaa !232, !noalias !336 ; 2 uses
  %i.ot = icmp ne i32 %i.os, 0
  call void @llvm.assume(i1 %i.ot)
  %i.ou = add i32 %i.os, -1                       ; 2 uses
  %i.ov = ptrtoint ptr %i.nf to i64
  %i.ow = mul i64 %i.ov, -4658895280553007687     ; 2 uses
  %i.ox = lshr i64 %i.ow, 31
  %i.oy = xor i64 %i.ox, %i.ow
  %i.oz = trunc i64 %i.oy to i32
  %i.pa = and i32 %i.ou, %i.oz                    ; 3 uses
  %i.pb = zext i32 %i.pa to i64                   ; 2 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.oq, i64 %i.pb ; 2 uses
  %i.pd = lshr i64 %i.pb, 5
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.pd
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !27, !noalias !334
  %i.pg = and i32 %i.pa, 31
  %i.ph = lshr i32 %i.pf, %i.pg
  %i.pi = trunc i32 %i.ph to i1
  br i1 %i.pi, label %.lr.ph.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i.i, !prof !287

.lr.ph.i.i:                                       ; preds = %bb.ac, %bb.ad
  %i.pj = phi ptr [ %i.pp, %bb.ad ], [ %i.pc, %bb.ac ] ; 2 uses
  %.024.i.i = phi i32 [ %i.pn, %bb.ad ], [ %i.pa, %bb.ac ]
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !85, !noalias !334
  %i.pl = icmp eq ptr %i.nf, %i.pk
  br i1 %i.pl, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i.i, label %bb.ad, !prof !288

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.pm = add nuw i32 %.024.i.i, 1
  %i.pn = and i32 %i.pm, %i.ou                    ; 3 uses
  %i.po = zext i32 %i.pn to i64                   ; 2 uses
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.oq, i64 %i.po ; 2 uses
  %i.pq = lshr i64 %i.po, 5
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.pq
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !27, !noalias !334
  %i.pt = and i32 %i.pn, 31
  %i.pu = lshr i32 %i.ps, %i.pt
  %i.pv = trunc i32 %i.pu to i1
  br i1 %i.pv, label %.lr.ph.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i.i, !prof !289, !llvm.loop !290

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i.i: ; preds = %bb.ad, %.lr.ph.i.i, %bb.ac, %.loopexit.i.i
  %i.pw = phi ptr [ %i.nc, %.loopexit.i.i ], [ %i.oq, %bb.ac ], [ %i.oq, %.lr.ph.i.i ], [ %i.oq, %bb.ad ] ; 2 uses
  %i.px = phi ptr [ %i.ng, %.loopexit.i.i ], [ %i.or, %bb.ac ], [ %i.or, %.lr.ph.i.i ], [ %i.or, %bb.ad ]
  %i.py = phi ptr [ %.lcssa28.sink.i.ph.i.i, %.loopexit.i.i ], [ %i.pc, %bb.ac ], [ %i.pp, %bb.ad ], [ %i.pj, %.lr.ph.i.i ] ; 2 uses
  %i.pz = ptrtoint ptr %i.py to i64
  %i.qa = ptrtoint ptr %i.pw to i64
  %i.qb = sub i64 %i.pz, %i.qa
  %i.qc = ashr exact i64 %i.qb, 3                 ; 2 uses
  %i.qd = trunc i64 %i.qc to i32
  %i.qe = and i32 %i.qd, 31
  %i.qf = shl nuw i32 1, %i.qe
  %i.qg = lshr i64 %i.qc, 5
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %i.qg ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !27, !noalias !334
  %i.qj = or i32 %i.qf, %i.qi
  store i32 %i.qj, ptr %i.qh, align 4, !tbaa !27, !noalias !334
  %i.qk = load i32, ptr %i.o, align 8, !tbaa !222, !noalias !335
  %i.ql = add i32 %i.qk, 1
  store i32 %i.ql, ptr %i.o, align 8, !tbaa !222, !noalias !335
  store ptr %i.nf, ptr %i.py, align 8, !tbaa !53, !noalias !334
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit.i: ; preds = %.lr.ph.i.i.i48, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i.i
  %i.qm = phi ptr [ %i.pw, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i.i ], [ %i.nc, %.lr.ph.i.i.i48 ]
  %.sroa.016.0.i = phi ptr [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i.i ], [ %i.nf, %.lr.ph.i.i.i48 ] ; 2 uses
  %i.qn = ptrtoint ptr %.sroa.016.0.i to i64
  %notsub.i.i.i.i29 = add i64 %i.qn, -1
  %i.qo = icmp ult i64 %notsub.i.i.i.i29, -32
  br i1 %i.qo, label %bb.ae, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i30

bb.ae:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit.i
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i, i64 8
  %i.qq = atomicrmw sub ptr %i.qp, i64 1 seq_cst, align 8 ; 0 uses
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !225, !noalias !323
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i30

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i30:       ; preds = %bb.ae, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit.i
  %i.qr = phi ptr [ %i.qm, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit.i ], [ %.pre.i, %bb.ae ]
  %i.qs = add i64 %.021.i, 1                      ; 2 uses
  %i.qt = load i64, ptr %i.im, align 8, !tbaa !306, !noalias !301
  %.not14.i = icmp eq i64 %i.qs, %i.qt
  br i1 %.not14.i, label %._crit_edge.i, label %bb.z, !llvm.loop !341

_ZN12_GLOBAL__N_121toSymbolDependenceMapEP25LLVMOrcCDependenceMapPairm.exit: ; preds = %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i, %_ZN4llvm8DenseSetINS_3orc15SymbolStringPtrENS_12DenseMapInfoIS2_vEEEaSEOS5_.exit
  %i.qu = getelementptr inbounds i8, ptr %i.cm, i64 -24 ; 4 uses
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qu)
  %i.qv = getelementptr inbounds i8, ptr %i.cm, i64 -4 ; 3 uses
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !266 ; 2 uses
  %i.qx = icmp eq i32 %i.qw, 0
  br i1 %i.qx, label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEaSEOSD_.exit, label %bb.af

bb.af:                                            ; preds = %_ZN12_GLOBAL__N_121toSymbolDependenceMapEP25LLVMOrcCDependenceMapPairm.exit
  %i.qy = load ptr, ptr %i.qu, align 8, !tbaa !268
  %i.qz = zext i32 %i.qw to i64                   ; 2 uses
  %i.ra = shl nuw nsw i64 %i.qz, 5
  %i.rb = add nuw nsw i64 %i.qz, 31
  %i.rc = lshr i64 %i.rb, 3
  %i.rd = and i64 %i.rc, 1073741820
  %i.re = add nuw nsw i64 %i.rd, %i.ra
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.qy, i64 noundef %i.re, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEaSEOSD_.exit

_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEaSEOSD_.exit: ; preds = %_ZN12_GLOBAL__N_121toSymbolDependenceMapEP25LLVMOrcCDependenceMapPairm.exit, %bb.af
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qu, i8 0, i64 24, i1 false)
  %i.rf = load <2 x ptr>, ptr %7, align 16, !tbaa !8
  store <2 x ptr> %i.rf, ptr %i.qu, align 8, !tbaa !8
  store ptr null, ptr %7, align 16, !tbaa !264
  store ptr null, ptr %i.p, align 8, !tbaa !263
  %i.rg = getelementptr inbounds i8, ptr %i.cm, i64 -8
  %i.rh = load i32, ptr %i.r, align 16, !tbaa !27
  store i32 %i.rh, ptr %i.rg, align 8, !tbaa !27
  store i32 0, ptr %i.r, align 16, !tbaa !27
  %i.ri = load i32, ptr %i.qv, align 4, !tbaa !27
  %i.rj = load i32, ptr %i.q, align 4, !tbaa !27
  store i32 %i.rj, ptr %i.qv, align 4, !tbaa !27
  store i32 %i.ri, ptr %i.q, align 4, !tbaa !27
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
  %i.rk = load i32, ptr %i.q, align 4, !tbaa !266 ; 2 uses
  %i.rl = icmp eq i32 %i.rk, 0
  br i1 %i.rl, label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEaSEOSD_.exit
  %i.rm = load ptr, ptr %7, align 16, !tbaa !268
  %i.rn = zext i32 %i.rk to i64                   ; 2 uses
  %i.ro = shl nuw nsw i64 %i.rn, 5
  %i.rp = add nuw nsw i64 %i.rn, 31
  %i.rq = lshr i64 %i.rp, 3
  %i.rr = and i64 %i.rq, 1073741820
  %i.rs = add nuw nsw i64 %i.rr, %i.ro
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.rm, i64 noundef %i.rs, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEaSEOSD_.exit, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.rt = add nuw i64 %.083, 1                    ; 2 uses
  %.not = icmp eq i64 %i.rt, %2
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.c, !llvm.loop !342
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 192153584101141162
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !261
  %i.d = load ptr, ptr %0, align 8, !tbaa !251    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 48
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN4llvm3orc21SymbolDependenceGroupESaIS2_EE11_M_allocateEm.exit.i, label %bb.e

_ZNSt12_Vector_baseIN4llvm3orc21SymbolDependenceGroupESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !254  ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 48
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 4 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4llvm3orc21SymbolDependenceGroupESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN4llvm3orc21SymbolDependenceGroupESaIS2_EE11_M_allocateEm.exit.i ] ; 4 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN4llvm3orc21SymbolDependenceGroupESaIS2_EE11_M_allocateEm.exit.i ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.011.i.i.i.i.i, i8 0, i64 24, i1 false)
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8copyFromERKSA_(ptr noundef nonnull align 8 dereferenceable(48) %.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0810.i.i.i.i.i)
  %i.p = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E8copyFromERKSE_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !343

_ZNSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN4llvm3orc21SymbolDependenceGroupESaIS2_EE11_M_allocateEm.exit.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !251
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !254
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN4llvm3orc21SymbolDependenceGroupEEEvT_S6_(ptr noundef %i.t, ptr noundef %i.u)
  %i.v = load ptr, ptr %0, align 8, !tbaa !251    ; 3 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4llvm3orc21SymbolDependenceGroupESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !261
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #28
  br label %_ZNSt12_Vector_baseIN4llvm3orc21SymbolDependenceGroupESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvm3orc21SymbolDependenceGroupESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !251
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.aa, ptr %i.j, align 8, !tbaa !254
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %1
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !261
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN4llvm3orc21SymbolDependenceGroupESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @LLVMOrcMaterializationResponsibilityDefineMaterializing(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::DenseMap.93", align 16 ; 9 uses
  %4 = alloca %"class.llvm::DenseMap.93", align 16 ; 11 uses
  %5 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 5 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not31 = icmp eq i64 %2, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit
  %i.a = load <2 x ptr>, ptr %4, align 16, !tbaa !8
  %.phi.trans.insert34 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load <2 x i32>, ptr %.phi.trans.insert34, align 16, !tbaa !27
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.c = phi <2 x i32> [ %i.b, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  %i.d = phi <2 x ptr> [ %i.a, %._crit_edge.loopexit ], [ splat (ptr null), %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.g = load ptr, ptr %0, align 8, !tbaa !171, !noalias !344, !nonnull !174, !align !175
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !176, !noalias !344, !nonnull !174, !align !175
  store <2 x ptr> %i.d, ptr %3, align 16, !tbaa !8, !noalias !344
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  store <2 x i32> %i.c, ptr %i.j, align 16, !tbaa !27, !noalias !344
  call void @_ZN4llvm3orc16ExecutionSession22OL_defineMaterializingERNS0_29MaterializationResponsibilityENS_8DenseMapINS0_15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %6, ptr noundef nonnull align 8 dereferenceable(392) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %3) #25
  %i.l = load i32, ptr %i.k, align 4, !tbaa !212, !noalias !344 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %3, align 16, !tbaa !207, !noalias !344
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !211, !noalias !344
  %i.q = zext i32 %i.l to i64
  %i.r = add nuw nsw i64 %i.q, 31
  %i.s = lshr i64 %i.r, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.i.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !27   ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.v = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.u, %.lr.ph.i.i.i ], [ %i.ag, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.w = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.x = or disjoint i32 %i.w, %i.v
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !85  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %notsub.i.i.i.i.i.i.i = add i64 %i.ab, -1
  %i.ac = icmp ult i64 %notsub.i.i.i.i.i.i.i, -32
  br i1 %i.ac, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.af = add i32 %.0.i3.i.i.i, -1
  %i.ag = and i32 %i.af, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.b, !llvm.loop !217

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.s
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !218

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.k, align 4, !tbaa !212, !noalias !344 ; 2 uses
  %i.ah = icmp eq i32 %.pr.i.i, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i
  %i.ai = load ptr, ptr %3, align 16, !tbaa !207, !noalias !344
  %i.aj = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 4
  %i.al = add nuw nsw i64 %i.aj, 31
  %i.am = lshr i64 %i.al, 3
  %i.an = and i64 %i.am, 1073741820
  %i.ao = add nuw nsw i64 %i.an, %i.ak
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ai, i64 noundef %i.ao, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %._crit_edge, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ap = load ptr, ptr %6, align 8, !tbaa !104, !noalias !347
  store ptr null, ptr %6, align 8, !tbaa !104, !noalias !347
  %i.aq = load i32, ptr %i.f, align 4, !tbaa !212 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit23, label %.lr.ph7.preheader.i.i8

.lr.ph7.preheader.i.i8:                           ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit
  %i.as = load ptr, ptr %4, align 16, !tbaa !207
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !211
  %i.au = zext i32 %i.aq to i64
  %i.av = add nuw nsw i64 %i.au, 31
  %i.aw = lshr i64 %i.av, 5
  br label %.lr.ph7.i.i9

.lr.ph7.i.i9:                                     ; preds = %._crit_edge.i.i18, %.lr.ph7.preheader.i.i8
  %indvars.iv.i.i10 = phi i64 [ 0, %.lr.ph7.preheader.i.i8 ], [ %indvars.iv.next.i.i19, %._crit_edge.i.i18 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.i10
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !27 ; 2 uses
  %.not11.i2.i.i11 = icmp eq i32 %i.ay, 0
  br i1 %.not11.i2.i.i11, label %._crit_edge.i.i18, label %.lr.ph.i.i12

.lr.ph.i.i12:                                     ; preds = %.lr.ph7.i.i9
  %indvars.iv.tr.i.i13 = trunc nuw i64 %indvars.iv.i.i10 to i32
  %i.az = shl nuw i32 %indvars.iv.tr.i.i13, 5
  br label %bb.e

bb.e:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i16, %.lr.ph.i.i12
  %.0.i3.i.i14 = phi i32 [ %i.ay, %.lr.ph.i.i12 ], [ %i.bk, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i16 ] ; 3 uses
  %i.ba = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i14, i1 true)
  %i.bb = or disjoint i32 %i.ba, %i.az
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !85 ; 2 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %notsub.i.i.i.i.i.i15 = add i64 %i.bf, -1
  %i.bg = icmp ult i64 %notsub.i.i.i.i.i.i15, -32
  br i1 %i.bg, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i16

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = atomicrmw sub ptr %i.bh, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i16

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i16: ; preds = %bb.f, %bb.e
  %i.bj = add i32 %.0.i3.i.i14, -1
  %i.bk = and i32 %i.bj, %.0.i3.i.i14             ; 2 uses
  %.not11.i.i.i17 = icmp eq i32 %i.bk, 0
  br i1 %.not11.i.i.i17, label %._crit_edge.i.i18, label %bb.e, !llvm.loop !217

._crit_edge.i.i18:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i16, %.lr.ph7.i.i9
  %indvars.iv.next.i.i19 = add nuw nsw i64 %indvars.iv.i.i10, 1 ; 2 uses
  %.not.i.i.i20 = icmp eq i64 %indvars.iv.next.i.i19, %i.aw
  br i1 %.not.i.i.i20, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i21, label %.lr.ph7.i.i9, !llvm.loop !218

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i21: ; preds = %._crit_edge.i.i18
  %.pr.i22 = load i32, ptr %i.f, align 4, !tbaa !212 ; 2 uses
  %i.bl = icmp eq i32 %.pr.i22, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit23, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i21
  %i.bm = load ptr, ptr %4, align 16, !tbaa !207
  %i.bn = zext i32 %.pr.i22 to i64                ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 4
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit23

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit23: ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i21, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret ptr %i.ap

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit
  %.032 = phi i64 [ %i.ch, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit ], [ 0, %bb.a ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.032 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.0.0.copyload = load i16, ptr %i.bu, align 8 ; 4 uses
  %i.bv = shl i16 %.sroa.0.0.copyload, 4
  %spec.select.i = and i16 %i.bv, 16
  %i.bw = and i16 %.sroa.0.0.copyload, 2
  %.sroa.3.1.i = or disjoint i16 %spec.select.i, %i.bw
  %i.bx = shl i16 %.sroa.0.0.copyload, 3
  %i.by = and i16 %i.bx, 96
  %.sroa.3.3.i = or disjoint i16 %.sroa.3.1.i, %i.by
  %.sroa.0.0.insert.insert.i = call range(i16 0, -32768) i16 @llvm.fshl.i16(i16 %.sroa.3.3.i, i16 %.sroa.0.0.copyload, i16 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !128
  store ptr %i.bz, ptr %5, align 8, !tbaa !53, !alias.scope !350
  %i.ca = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ca, 0
  %i.cb = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store i16 %.sroa.0.0.insert.insert.i, ptr %i.cb, align 1
  %i.cc = load ptr, ptr %5, align 8, !tbaa !85    ; 2 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %notsub.i.i.i = add i64 %i.cd, -1
  %i.ce = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.ce, label %bb.h, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

bb.h:                                             ; preds = %.lr.ph
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cg = atomicrmw sub ptr %i.cf, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit:           ; preds = %.lr.ph, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ch = add nuw i64 %.032, 1                    ; 2 uses
  %.not = icmp eq i64 %i.ch, %2
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !353
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @LLVMOrcMaterializationResponsibilityReplace(ptr noundef nonnull %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.85", align 8 ; 5 uses
  %3 = alloca %"class.llvm::Error", align 8       ; 2 uses
  %i.a = ptrtoint ptr %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = load ptr, ptr %0, align 8, !tbaa !171, !noalias !354, !nonnull !174, !align !175
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !176, !noalias !354, !nonnull !174, !align !175
  store i64 %i.a, ptr %2, align 8, !tbaa !357, !noalias !354
  call void @_ZN4llvm3orc16ExecutionSession10OL_replaceERNS0_29MaterializationResponsibilityESt10unique_ptrINS0_19MaterializationUnitESt14default_deleteIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %3, ptr noundef nonnull align 8 dereferenceable(392) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %2) #25
  %i.e = load ptr, ptr %2, align 8, !tbaa !357, !noalias !354 ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm3orc19MaterializationUnitESt14default_deleteIS2_EED2Ev.exit4, label %_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i.i: ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #25, !inline_history !359
  br label %_ZNSt10unique_ptrIN4llvm3orc19MaterializationUnitESt14default_deleteIS2_EED2Ev.exit4

_ZNSt10unique_ptrIN4llvm3orc19MaterializationUnitESt14default_deleteIS2_EED2Ev.exit4: ; preds = %_ZNKSt14default_deleteIN4llvm3orc19MaterializationUnitEEclEPS2_.exit.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.i = load ptr, ptr %3, align 8, !tbaa !104, !noalias !360
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @LLVMOrcMaterializationResponsibilityDelegate(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::DenseSet", align 8    ; 9 uses
  %5 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 5 uses
  %6 = alloca %"class.llvm::Expected", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not12 = icmp eq i64 %2, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.a = load ptr, ptr %0, align 8, !tbaa !171, !noalias !363, !nonnull !174, !align !175
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !176, !noalias !363, !nonnull !174, !align !175
  call void @_ZN4llvm3orc16ExecutionSession11OL_delegateERNS0_29MaterializationResponsibilityERKNS_8DenseSetINS0_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %6, ptr noundef nonnull align 8 dereferenceable(392) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %4) #25
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load i8, ptr %i.d, align 8
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.c

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit
  %.013 = phi i64 [ %i.o, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.013
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !166
  store ptr %i.h, ptr %5, align 8, !tbaa !53, !alias.scope !366
  %i.i = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5), !noalias !369 ; 0 uses
  %i.j = load ptr, ptr %5, align 8, !tbaa !85     ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  %notsub.i.i.i = add i64 %i.k, -1
  %i.l = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.l, label %bb.b, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = atomicrmw sub ptr %i.m, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit:           ; preds = %.lr.ph, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.o = add nuw i64 %.013, 1                     ; 2 uses
  %.not = icmp eq i64 %i.o, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !376

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %._crit_edge
  %i.p = load i64, ptr %6, align 8, !tbaa !377, !noalias !378
  %i.q = inttoptr i64 %i.p to ptr
  br label %_ZN4llvm5ErrorD2Ev.exit

bb.c:                                             ; preds = %._crit_edge
  %i.r = load ptr, ptr %6, align 8, !tbaa !381
  store ptr %i.r, ptr %3, align 8, !tbaa !383
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, %bb.c
  %.07 = phi ptr [ null, %bb.c ], [ %i.q, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !232  ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.v = load ptr, ptr %4, align 8, !tbaa !225
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !231
  %i.y = zext i32 %i.t to i64
  %i.z = add nuw nsw i64 %i.y, 31
  %i.aa = lshr i64 %i.z, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i.i.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !27 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.ad = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.d

bb.d:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.ac, %.lr.ph.i.i.i ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.ae = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.af = or disjoint i32 %i.ae, %i.ad
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !85 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %notsub.i.i.i.i.i.i.i = add i64 %i.aj, -1
  %i.ak = icmp ult i64 %notsub.i.i.i.i.i.i.i, -32
  br i1 %i.ak, label %bb.e, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = atomicrmw sub ptr %i.al, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.an = add i32 %.0.i3.i.i.i, -1
  %i.ao = and i32 %i.an, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.d, !llvm.loop !237

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.aa
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !238

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.s, align 4, !tbaa !232 ; 2 uses
  %i.ap = icmp eq i32 %.pr.i.i, 0
  br i1 %i.ap, label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i
  %i.aq = load ptr, ptr %4, align 8, !tbaa !225
  %i.ar = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.ar, 31
  %i.au = lshr i64 %i.at, 3
  %i.av = and i64 %i.au, 1073741820
  %i.aw = add nuw nsw i64 %i.av, %i.as
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aq, i64 noundef %i.aw, i64 noundef 8) #25
  br label %_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret ptr %.07
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @LLVMOrcMaterializationResponsibilityFailMaterialization(ptr noundef nonnull %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !171, !nonnull !174, !align !175
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !176, !nonnull !174, !align !175
  tail call void @_ZN4llvm3orc16ExecutionSession15OL_notifyFailedERNS0_29MaterializationResponsibilityE(ptr noundef nonnull align 8 dereferenceable(392) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @LLVMOrcIRTransformLayerEmit(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.123", align 8 ; 3 uses
  %4 = alloca %"class.llvm::orc::ThreadSafeModule", align 8 ; 4 uses
  store ptr %1, ptr %3, align 8, !tbaa !381
  %i.a = load i64, ptr %2, align 8, !tbaa !385
  store i64 %i.a, ptr %4, align 8, !tbaa !385
  store ptr null, ptr %2, align 8, !tbaa !385
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load <2 x ptr>, ptr %i.c, align 8, !tbaa !8
  store ptr null, ptr %i.d, align 8, !tbaa !25
  store <2 x ptr> %i.e, ptr %i.b, align 8, !tbaa !8
  store ptr null, ptr %i.c, align 8, !tbaa !387
  %i.f = load ptr, ptr %0, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %3, ptr nofree noundef nonnull align 8 dereferenceable(24) %4) #25
  call void @_ZN4llvm3orc16ThreadSafeModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #25
  %i.i = load ptr, ptr %3, align 8, !tbaa !381    ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm3orc16ThreadSafeModuleESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm3orc29MaterializationResponsibilityEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm3orc29MaterializationResponsibilityEEclEPS2_.exit.i: ; preds = %bb.a
  call void @_ZN4llvm3orc29MaterializationResponsibilityD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.i) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 48) #28
  br label %_ZNSt10unique_ptrIN4llvm3orc16ThreadSafeModuleESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3orc16ThreadSafeModuleESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm3orc29MaterializationResponsibilityEEclEPS2_.exit.i
  call void @_ZN4llvm3orc16ThreadSafeModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #25
  call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef 24) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3orc16ThreadSafeModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %class.anon.585, align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store ptr %0, ptr %1, align 8, !tbaa !390
  call void @_ZN4llvm3orc17ThreadSafeContext13withContextDoIZNS0_16ThreadSafeModuleD1EvEUlPNS_11LLVMContextEE_EEDcOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN4llvm3orc17ThreadSafeContextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !30
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !393
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !393
  br label %_ZN4llvm3orc17ThreadSafeContextD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN4llvm3orc17ThreadSafeContextD2Ev.exit, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25
  br label %_ZN4llvm3orc17ThreadSafeContextD2Ev.exit

_ZN4llvm3orc17ThreadSafeContextD2Ev.exit:         ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !385    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i: ; preds = %_ZN4llvm3orc17ThreadSafeContextD2Ev.exit
  call void @_ZN4llvm6ModuleD1Ev(ptr noundef nonnull align 8 dead_on_return(1288) dereferenceable(1288) %i.s) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 1288) #28
  br label %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN4llvm3orc17ThreadSafeContextD2Ev.exit, %_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @LLVMOrcExecutionSessionCreateBareJITDylib(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !112
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.d, ptr %i.a, align 8, !tbaa !115
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #25 ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !116
  %i.g = load i64, ptr %i.a, align 8, !tbaa !115
  store i64 %i.g, ptr %i.b, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.h = phi ptr [ %i.f, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.f [
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !53
  store ptr %i.r, ptr %i.q, align 8, !tbaa !53
  store ptr null, ptr %2, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !96
  store i32 %i.u, ptr %i.s, align 8, !tbaa !96
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ae, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %i.v = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !85 ; 3 uses
  store ptr %i.v, ptr %.011.i.i.i.i.i, align 8, !tbaa !85
  %i.w = ptrtoint ptr %i.v to i64
  %notsub.i.i.i.i.i.i.i.i.i.i = add i64 %i.w, -1
  %i.x = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i, -32
  br i1 %i.x, label %bb.c, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = atomicrmw add ptr %i.y, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !96
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !96
  %i.ad = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !857

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.ae, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not9.i.i.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit26, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23
  %.011.i.i.i.i.i20 = phi ptr [ %i.ap, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23 ], [ %i.af, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 3 uses
  %.0810.i.i.i.i.i21 = phi ptr [ %i.ao, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 3 uses
  %i.ag = load ptr, ptr %.0810.i.i.i.i.i21, align 8, !tbaa !85 ; 3 uses
  store ptr %i.ag, ptr %.011.i.i.i.i.i20, align 8, !tbaa !85
  %i.ah = ptrtoint ptr %i.ag to i64
  %notsub.i.i.i.i.i.i.i.i.i.i22 = add i64 %i.ah, -1
  %i.ai = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i22, -32
  br i1 %i.ai, label %bb.d, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i19
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = atomicrmw add ptr %i.aj, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23: ; preds = %bb.d, %.lr.ph.i.i.i.i.i19
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !96
  store i32 %i.an, ptr %i.al, align 8, !tbaa !96
  %i.ao = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 16 ; 2 uses
  %.not.i.i.i.i.i24 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i24, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit26, label %.lr.ph.i.i.i.i.i19, !llvm.loop !857

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit26: ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %.0.lcssa.i.i.i.i.i25 = phi ptr [ %i.af, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ], [ %i.ap, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i23 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit26, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.av, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit26 ] ; 2 uses
  %i.aq = load ptr, ptr %.05.i.i, align 8, !tbaa !85 ; 2 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %notsub.i.i.i.i.i.i.i = add i64 %i.ar, -1
  %i.as = icmp ult i64 %notsub.i.i.i.i.i.i.i, -32
  br i1 %i.as, label %bb.e, label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = atomicrmw sub ptr %i.at, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit, label %.lr.ph.i.i, !llvm.loop !87

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEES6_SaIS5_EET0_T_S9_S8_RT1_.exit26
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !73
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.az) #28
  br label %_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEEEvT_S7_.exit, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !83
  store ptr %.0.lcssa.i.i.i.i.i25, ptr %i.a, align 8, !tbaa !84
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !73
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #17

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_126OrcCAPIMaterializationUnitD2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(104) dereferenceable(104) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_126OrcCAPIMaterializationUnitE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127
  tail call void %i.d(ptr noundef nonnull %i.b) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !116  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !26
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm3orc19MaterializationUnitE, i64 16), ptr %0, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !85   ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %notsub.i.i.i.i = add i64 %i.m, -1
  %i.n = icmp ult i64 %notsub.i.i.i.i, -32
  br i1 %i.n, label %bb.d, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = atomicrmw sub ptr %i.o, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i:         ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !212  ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN4llvm3orc19MaterializationUnitD2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !207
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !211
  %i.x = zext i32 %i.s to i64
  %i.y = add nuw nsw i64 %i.x, 31
  %i.z = lshr i64 %i.y, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.i.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !27 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.ac = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.e

bb.e:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.ab, %.lr.ph.i.i.i ], [ %i.an, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.ad = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.ae = or disjoint i32 %i.ad, %i.ac
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !85 ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %notsub.i.i.i.i.i.i.i = add i64 %i.ai, -1
  %i.aj = icmp ult i64 %notsub.i.i.i.i.i.i.i, -32
  br i1 %i.aj, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = atomicrmw sub ptr %i.ak, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.am = add i32 %.0.i3.i.i.i, -1
  %i.an = and i32 %i.am, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.e, !llvm.loop !217

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.z
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !218

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.r, align 4, !tbaa !212 ; 2 uses
  %i.ao = icmp eq i32 %.pr.i.i, 0
  br i1 %i.ao, label %_ZN4llvm3orc19MaterializationUnitD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i
  %i.ap = load ptr, ptr %i.q, align 8, !tbaa !207
  %i.aq = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.ar = shl nuw nsw i64 %i.aq, 4
  %i.as = add nuw nsw i64 %i.aq, 31
  %i.at = lshr i64 %i.as, 3
  %i.au = and i64 %i.at, 1073741820
  %i.av = add nuw nsw i64 %i.au, %i.ar
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ap, i64 noundef %i.av, i64 noundef 8) #25
  br label %_ZN4llvm3orc19MaterializationUnitD2Ev.exit

_ZN4llvm3orc19MaterializationUnitD2Ev.exit:       ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_126OrcCAPIMaterializationUnitD0Ev(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN12_GLOBAL__N_126OrcCAPIMaterializationUnitD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_ZNK12_GLOBAL__N_126OrcCAPIMaterializationUnit7getNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !118
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.d, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_126OrcCAPIMaterializationUnit11materializeESt10unique_ptrIN4llvm3orc29MaterializationResponsibilityESt14default_deleteIS4_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119
  store ptr null, ptr %i.a, align 8, !tbaa !119
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125
  %i.e = load ptr, ptr %1, align 8, !tbaa !381
  store ptr null, ptr %1, align 8, !tbaa !381
  tail call void %i.d(ptr noundef %i.b, ptr noundef %i.e) #25
  ret void
}

declare void @_ZN4llvm3orc19MaterializationUnit6anchorEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_126OrcCAPIMaterializationUnit7discardERKN4llvm3orc8JITDylibERKNS2_15SymbolStringPtrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(272) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119
  %i.e = load ptr, ptr %2, align 8, !tbaa !85
  tail call void %i.b(ptr noundef %i.d, ptr noundef nonnull %1, ptr noundef %i.e) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !152, !noalias !858 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !153, !noalias !858 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !149, !noalias !858 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !85     ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !27
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !287

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !85
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.c, !prof !288

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !27
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !289, !llvm.loop !863

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !864
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !865
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !288

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !864
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !153
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !152
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 5 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 24                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !27
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !27
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !865
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.at, align 8, !tbaa !85
  %i.bh = load ptr, ptr %1, align 8, !tbaa !53
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !53
  store ptr null, ptr %1, align 8, !tbaa !53
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !152, !noalias !866 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !153, !noalias !866 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !149, !noalias !866 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !85     ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !27
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !287

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !85
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !288

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !27
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !289, !llvm.loop !863

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !864
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.95", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !149
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !152
  store ptr %i.y, ptr %i.q, align 8, !tbaa !153
  store i32 0, ptr %i.p, align 16, !tbaa !865
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !864    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !263 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !8
  store ptr %i.z, ptr %2, align 16, !tbaa !864
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !8
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !263
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !27 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !27
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !27
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !27
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !27
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !27 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !85 ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %notsub.i.i.i.i.i.i = add i64 %i.au, -1
  %i.av = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.av, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ay = add i32 %.0.i3.i.i, -1
  %i.az = and i32 %i.ay, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !154

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !155

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !149 ; 2 uses
  %i.ba = icmp eq i32 %.pr.i, 0
  br i1 %i.ba, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i
  %i.bb = load ptr, ptr %2, align 16, !tbaa !152
  %i.bc = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bd = mul nuw nsw i64 %i.bc, 24
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !152
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !153
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !149  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !153  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !152
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !149
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !85
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !27
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !27
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !871

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 3 uses
  store ptr null, ptr %i.as, align 8, !tbaa !85
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !53
  store ptr %i.at, ptr %i.as, align 8, !tbaa !53
  store ptr null, ptr %i.u, align 8, !tbaa !53
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !872
  %i.aw = shl nuw i32 1, %.lcssa.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !27
  %i.az = or i32 %i.ay, %i.aw
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !27
  %i.ba = load ptr, ptr %i.u, align 8, !tbaa !85  ; 2 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %notsub.i.i.i.i = add i64 %i.bb, -1
  %i.bc = icmp ult i64 %notsub.i.i.i.i, -32
  br i1 %i.bc, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = atomicrmw sub ptr %i.bd, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %._crit_edge.i, %bb.c
  %i.bf = add i32 %.0.i17, -1
  %i.bg = and i32 %i.bf, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !875

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !876

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !149
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bh = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !865
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !865
  %i.bl = icmp eq i32 %i.bh, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !152
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = mul nuw nsw i64 %i.bn, 24
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !149
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_17ExecutorSymbolDefENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #19

declare void @_ZN4llvm3orc34AbsoluteSymbolsMaterializationUnitC1ENS_8DenseMapINS0_15SymbolStringPtrENS0_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN4llvm3orc32LazyReexportsMaterializationUnitC1ERNS0_22LazyCallThroughManagerERNS0_25RedirectableSymbolManagerERNS0_8JITDylibENS_8DenseMapINS0_15SymbolStringPtrENS0_19SymbolAliasMapEntryENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEEPNS0_13ImplSymbolMapE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(272), ptr nofree noundef align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN4llvm22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #17

declare void @_ZN4llvm3orc16ExecutionSession22OL_getRequestedSymbolsERKNS0_29MaterializationResponsibilityE(ptr dead_on_unwind writable sret(%"class.llvm::DenseSet") align 8, ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZN4llvm3orc16ExecutionSession17OL_notifyResolvedERNS0_29MaterializationResponsibilityERKNS_8DenseMapINS0_15SymbolStringPtrENS0_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.134", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !232
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !225
  store ptr %i.y, ptr %i.q, align 8, !tbaa !231
  store i32 0, ptr %i.p, align 16, !tbaa !222
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !262    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !263 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !8
  store ptr %i.z, ptr %2, align 16, !tbaa !262
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !8
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !263
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !27 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !27
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !27
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !27
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !27
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !27 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !85 ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %notsub.i.i.i.i.i.i = add i64 %i.au, -1
  %i.av = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.av, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ay = add i32 %.0.i3.i.i, -1
  %i.az = and i32 %i.ay, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !237

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !238

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !232 ; 2 uses
  %i.ba = icmp eq i32 %.pr.i, 0
  br i1 %i.ba, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i
  %i.bb = load ptr, ptr %2, align 16, !tbaa !225
  %i.bc = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !225    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !231
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !232  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !231  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !225
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !232
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !85
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !27 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !27 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !877

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr null, ptr %i.at, align 8, !tbaa !85
  %i.au = load ptr, ptr %i.u, align 8, !tbaa !53
  store ptr %i.au, ptr %i.at, align 8, !tbaa !53
  store ptr null, ptr %i.u, align 8, !tbaa !53
  %i.av = shl nuw i32 1, %.lcssa.i
  %i.aw = or i32 %i.av, %.lcssa11.i
  store i32 %i.aw, ptr %i.as, align 4, !tbaa !27
  %i.ax = add i32 %.0.i15, -1
  %i.ay = and i32 %i.ax, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !878

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !879

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !232
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.az = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !222
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !222
  %i.bd = icmp eq i32 %i.az, 0
  br i1 %i.bd, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.be = zext i32 %i.az to i64                   ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.be, 31
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 1073741820
  %i.bj = add nuw nsw i64 %i.bi, %i.bf
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bj, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.142", align 16 ; 11 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !266
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !268
  store ptr %i.y, ptr %i.q, align 8, !tbaa !312
  store i32 0, ptr %i.p, align 16, !tbaa !315
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !8
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !8
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !8
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !27
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !27
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !27
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !27
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !266 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 16, !tbaa !268
  %i.ah = zext i32 %i.ae to i64                   ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 5
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !268
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !312
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !266  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !312  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !268
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !266
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS5_15SymbolStringPtrENS_12DenseMapInfoIS9_vEEEENSA_IS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge.i
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bj, %._crit_edge.i ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !313  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !27
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !27
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !880

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 4 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !313
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aw = load <2 x ptr>, ptr %i.au, align 8, !tbaa !8
  store <2 x ptr> %i.aw, ptr %i.at, align 8, !tbaa !8
  store ptr null, ptr %i.au, align 8, !tbaa !262
  store ptr null, ptr %i.av, align 8, !tbaa !263
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !27
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !27
  store i32 0, ptr %i.ay, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 28 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 28 ; 2 uses
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !27
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !27
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !27
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !27
  %i.be = shl nuw i32 1, %.lcssa.i
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !27
  %i.bh = or i32 %i.bg, %i.be
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !27
  %i.bi = add i32 %.0.i17, -1
  %i.bj = and i32 %i.bi, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bj, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !881

._crit_edge:                                      ; preds = %._crit_edge.i, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS5_15SymbolStringPtrENS_12DenseMapInfoIS9_vEEEENSA_IS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !882

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS5_15SymbolStringPtrENS_12DenseMapInfoIS9_vEEEENSA_IS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !266
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS5_15SymbolStringPtrENS_12DenseMapInfoIS9_vEEEENSA_IS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS5_15SymbolStringPtrENS_12DenseMapInfoIS9_vEEEENSA_IS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS5_15SymbolStringPtrENS_12DenseMapInfoIS9_vEEEENSA_IS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bk = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS5_15SymbolStringPtrENS_12DenseMapInfoIS9_vEEEENSA_IS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !315
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !315
  %i.bo = icmp eq i32 %i.bk, 0
  br i1 %i.bo, label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS5_15SymbolStringPtrENS_12DenseMapInfoIS9_vEEEENSA_IS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.bp = load ptr, ptr %1, align 8, !tbaa !268
  %i.bq = zext i32 %i.bk to i64                   ; 2 uses
  %i.br = shl nuw nsw i64 %i.bq, 5
  %i.bs = add nuw nsw i64 %i.bq, 31
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = and i64 %i.bt, 1073741820
  %i.bv = add nuw nsw i64 %i.bu, %i.br
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bp, i64 noundef %i.bv, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !266
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS5_15SymbolStringPtrENS_12DenseMapInfoIS9_vEEEENSA_IS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8copyFromERKSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !232  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !225
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !231
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !27   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.w, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !85   ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %notsub.i.i.i.i.i = add i64 %i.r, -1
  %i.s = icmp ult i64 %notsub.i.i.i.i.i, -32
  br i1 %i.s, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = atomicrmw sub ptr %i.t, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.v = add i32 %.0.i3.i, -1
  %i.w = and i32 %i.v, %.0.i3.i                   ; 2 uses
  %.not11.i.i = icmp eq i32 %i.w, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !237

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !238

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !232  ; 2 uses
  %i.x = icmp eq i32 %.pr, 0
  br i1 %i.x, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit
  %i.y = load ptr, ptr %0, align 8, !tbaa !225
  %i.z = zext i32 %.pr to i64                     ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.z, 31
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = and i64 %i.ac, 1073741820
  %i.ae = add nuw nsw i64 %i.ad, %i.aa
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.y, i64 noundef %i.ae, i64 noundef 8) #25
  store i32 0, ptr %i.a, align 4, !tbaa !232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.af, align 8, !tbaa !222
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !232 ; 3 uses
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !232
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE15allocateBucketsEj.exit, label %bb.e

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE15allocateBucketsEj.exit: ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8copyFromERKSD_EUljE_EEvPKjjT_.exit

bb.e:                                             ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE17deallocateBucketsEv.exit
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  %i.ao = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.an, i64 noundef 8) #25 ; 3 uses
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !232
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar ; 3 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !225
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !231
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !222
  store i32 %i.av, ptr %i.af, align 8, !tbaa !222
  %i.aw = load ptr, ptr %1, align 8, !tbaa !225
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !231
  %i.az = add nuw nsw i64 %i.aq, 31
  %i.ba = lshr i64 %i.az, 5                       ; 3 uses
  %i.bb = shl nuw nsw i64 %i.ba, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.as, ptr align 4 %i.ay, i64 %i.bb, i1 false)
  %.not.i16 = icmp eq i64 %i.ba, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8copyFromERKSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.e, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.e ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !27 ; 2 uses
  %.not11.i14 = icmp eq i32 %i.bd, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.be = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8copyFromERKSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.bd, %.lr.ph ], [ %i.bq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8copyFromERKSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.bf = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.bg = or disjoint i32 %i.bf, %i.be
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bh
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !85 ; 3 uses
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !85
  %i.bl = ptrtoint ptr %i.bk to i64
  %notsub.i.i.i.i = add i64 %i.bl, -1
  %i.bm = icmp ult i64 %notsub.i.i.i.i, -32
  br i1 %i.bm, label %bb.g, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8copyFromERKSA_ENKUljE_clEj.exit

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bo = atomicrmw add ptr %i.bn, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8copyFromERKSA_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8copyFromERKSA_ENKUljE_clEj.exit: ; preds = %bb.f, %bb.g
  %i.bp = add i32 %.0.i15, -1
  %i.bq = and i32 %i.bp, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bq, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.f, !llvm.loop !883

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8copyFromERKSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ba
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8copyFromERKSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19, !llvm.loop !884

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8copyFromERKSD_EUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.e, %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE15allocateBucketsEj.exit
  ret void
}

declare void @_ZN4llvm3orc16ExecutionSession16OL_notifyEmittedERNS0_29MaterializationResponsibilityENS_8ArrayRefINS0_21SymbolDependenceGroupEEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #2

declare void @_ZN4llvm3orc16ExecutionSession22OL_defineMaterializingERNS0_29MaterializationResponsibilityENS_8DenseMapINS0_15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(48), ptr nofree noundef align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN4llvm3orc16ExecutionSession10OL_replaceERNS0_29MaterializationResponsibilityESt10unique_ptrINS0_19MaterializationUnitESt14default_deleteIS5_EE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(48), ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4llvm3orc16ExecutionSession11OL_delegateERNS0_29MaterializationResponsibilityERKNS_8DenseSetINS0_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEE(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8, ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN4llvm3orc16ExecutionSession15OL_notifyFailedERNS0_29MaterializationResponsibilityE(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3orc17ThreadSafeContext13withContextDoIZNS0_16ThreadSafeModuleD1EvEUlPNS_11LLVMContextEE_EEDcOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !387    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 9 uses
  %.not.i.i.i = icmp eq ptr %i.c, null            ; 2 uses
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN4llvm3orc17ThreadSafeContext5StateEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 4, !tbaa !27
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !27
  br label %_ZNSt10shared_ptrIN4llvm3orc17ThreadSafeContext5StateEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4llvm3orc17ThreadSafeContext5StateEEC2ERKS4_.exit

_ZNSt10shared_ptrIN4llvm3orc17ThreadSafeContext5StateEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN4llvm3orc17ThreadSafeContext5StateEEC2ERKS4_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.j = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #25 ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.j) #26
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.e
  %i.k = load ptr, ptr %1, align 8, !tbaa !390    ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !385  ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !385
  %.not.i.i.i.i3 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i3, label %_ZZN4llvm3orc16ThreadSafeModuleD1EvENKUlPNS_11LLVMContextEE_clES3_.exit, label %_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  tail call void @_ZN4llvm6ModuleD1Ev(ptr noundef nonnull align 8 dead_on_return(1288) dereferenceable(1288) %i.l) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 1288) #28
  br label %_ZZN4llvm3orc16ThreadSafeModuleD1EvENKUlPNS_11LLVMContextEE_clES3_.exit

_ZZN4llvm3orc16ThreadSafeModuleD1EvENKUlPNS_11LLVMContextEE_clES3_.exit: ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i.i.i.i
  %i.m = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #25 ; 0 uses
  br label %_ZZN4llvm3orc16ThreadSafeModuleD1EvENKUlPNS_11LLVMContextEE_clES3_.exit6

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN4llvm3orc17ThreadSafeContext5StateEEC2ERKS4_.exit
  %i.n = load ptr, ptr %1, align 8, !tbaa !390    ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !385  ; 3 uses
  store ptr null, ptr %i.n, align 8, !tbaa !385
  %.not.i.i.i.i4 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i4, label %_ZZN4llvm3orc16ThreadSafeModuleD1EvENKUlPNS_11LLVMContextEE_clES3_.exit6, label %_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i.i.i.i5

_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i.i.i.i5: ; preds = %bb.g
  tail call void @_ZN4llvm6ModuleD1Ev(ptr noundef nonnull align 8 dead_on_return(1288) dereferenceable(1288) %i.o) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 1288) #28
  br label %_ZZN4llvm3orc16ThreadSafeModuleD1EvENKUlPNS_11LLVMContextEE_clES3_.exit6

_ZZN4llvm3orc16ThreadSafeModuleD1EvENKUlPNS_11LLVMContextEE_clES3_.exit6: ; preds = %_ZNKSt14default_deleteIN4llvm6ModuleEEclEPS1_.exit.i.i.i.i5, %bb.g, %_ZZN4llvm3orc16ThreadSafeModuleD1EvENKUlPNS_11LLVMContextEE_clES3_.exit
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN4llvm3orc17ThreadSafeContext5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZZN4llvm3orc16ThreadSafeModuleD1EvENKUlPNS_11LLVMContextEE_clES3_.exit6
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.p, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !30
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !885
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !885
  br label %_ZNSt12__shared_ptrIN4llvm3orc17ThreadSafeContext5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i8 = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i8, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.k ], [ %i.ac, %bb.l ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.m, label %_ZNSt12__shared_ptrIN4llvm3orc17ThreadSafeContext5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !34

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25
  br label %_ZNSt12__shared_ptrIN4llvm3orc17ThreadSafeContext5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4llvm3orc17ThreadSafeContext5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZZN4llvm3orc16ThreadSafeModuleD1EvENKUlPNS_11LLVMContextEE_clES3_.exit6, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm6ModuleD1Ev(ptr noundef nonnull align 8 dead_on_return(1288) dereferenceable(1288)) unnamed_addr #11

declare void @_ZN4llvm3orc11LookupState5resetEPNS0_21InProgressLookupStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN4llvm3orc17ThreadSafeContext5StateESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN4llvm3orc17ThreadSafeContext5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !477  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIN4llvm3orc17ThreadSafeContext5StateEEvPT_.exit, label %_ZNKSt14default_deleteIN4llvm11LLVMContextEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm11LLVMContextEEclEPS1_.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZN4llvm11LLVMContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #28
  br label %_ZSt8_DestroyIN4llvm3orc17ThreadSafeContext5StateEEvPT_.exit

_ZSt8_DestroyIN4llvm3orc17ThreadSafeContext5StateEEvPT_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm11LLVMContextEEclEPS1_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN4llvm3orc17ThreadSafeContext5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4llvm3orc17ThreadSafeContext5StateESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #28
  ret void
}

end_hunk_1
begin_hunk_2_@_ZN4llvm15MCTargetOptionsD2Ev:bb.a

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !517
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !643  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !644  ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i9, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5
  %.05.i.i.i3 = phi ptr [ %i.z, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5 ], [ %i.r, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.u = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !116 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4: ; preds = %.lr.ph.i.i.i2
  %i.x = load i64, ptr %i.v, align 8, !tbaa !26
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.z, %i.t
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i7, label %.lr.ph.i.i.i2, !llvm.loop !645

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i7: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i5
  %.pr.i8 = load ptr, ptr %i.q, align 8, !tbaa !643
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i9

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i9: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i7, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.aa = phi ptr [ %.pr.i8, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i7 ], [ %i.r, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i10 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i10, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !517
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i9, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !116 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !26
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !116 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !26
  %i.ar = add i64 %i.aq, 1
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !116 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !26
  %i.ax = add i64 %i.aw, 1
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !116 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !26
  %i.bd = add i64 %i.bc, 1
  tail call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !116 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !26
  %i.bj = add i64 %i.bi, 1
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !116 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !26
  %i.bp = add i64 %i.bo, 1
  tail call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  ret void
}

declare void @_ZN4llvm6TripleC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvm10DataLayoutD1Ev(ptr noundef nonnull align 8 dead_on_return(912) dereferenceable(912)) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZN4llvm3orc16ExecutionSessionD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392)) unnamed_addr #11

declare void @_ZNK4llvm3orc5LLJIT6mangleB5cxx11ENS_9StringRefE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(1096), ptr, i64) local_unnamed_addr #2

declare void @_ZN4llvm3orc5LLJIT19lookupLinkerMangledERNS0_8JITDylibENS0_15SymbolStringPtrE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.487") align 8, ptr noundef nonnull align 8 dereferenceable(1096), ptr noundef nonnull align 8 dereferenceable(272), ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4llvm3orc21LinkGraphLinkingLayerC2ERNS0_16ExecutionSessionESt10unique_ptrINS_7jitlink20JITLinkMemoryManagerESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef nonnull align 8 dereferenceable(392), ptr nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN4llvm3orc11ObjectLayerC2ERNS0_16ExecutionSessionE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(392)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3orc29MaterializationResponsibilityD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !171, !nonnull !174, !align !175
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !176, !nonnull !174, !align !175
  tail call void @_ZN4llvm3orc16ExecutionSession39OL_destroyMaterializationResponsibilityERNS0_29MaterializationResponsibilityE(ptr noundef nonnull align 8 dereferenceable(392) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %0) #25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85   ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %notsub.i.i.i = add i64 %i.f, -1
  %i.g = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.g, label %bb.b, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = atomicrmw sub ptr %i.h, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit:           ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !212  ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !207
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !211
  %i.q = zext i32 %i.l to i64
  %i.r = add nuw nsw i64 %i.q, 31
  %i.s = lshr i64 %i.r, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !27   ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.u, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.v = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.u, %.lr.ph.i.i ], [ %i.ag, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.w = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.x = or disjoint i32 %i.w, %i.v
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !85  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %notsub.i.i.i.i.i.i = add i64 %i.ab, -1
  %i.ac = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.ac, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.d, %bb.c
  %i.af = add i32 %.0.i3.i.i, -1
  %i.ag = and i32 %i.af, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.c, !llvm.loop !217

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.s
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !218

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.k, align 4, !tbaa !212 ; 2 uses
  %i.ah = icmp eq i32 %.pr.i, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !207
  %i.aj = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 4
  %i.al = add nuw nsw i64 %i.aj, 31
  %i.am = lshr i64 %i.al, 3
  %i.an = and i64 %i.am, 1073741820
  %i.ao = add nuw nsw i64 %i.an, %i.ak
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ai, i64 noundef %i.ao, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !101 ; 4 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit
  %i.ar = atomicrmw sub ptr %i.aq, i32 1 acq_rel, align 4
  %.not.i.i.i.i = icmp eq i32 %i.ar, 1
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aq) #25
  tail call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.aq, i64 noundef 16) #28
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, %bb.f, %bb.g
  ret void
}

declare void @_ZN4llvm3orc16ExecutionSession39OL_destroyMaterializationResponsibilityERNS0_29MaterializationResponsibilityE(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8copyFromERKSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !212  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !207
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !211
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !27   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.w, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !85   ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %notsub.i.i.i.i.i = add i64 %i.r, -1
  %i.s = icmp ult i64 %notsub.i.i.i.i.i, -32
  br i1 %i.s, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = atomicrmw sub ptr %i.t, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.v = add i32 %.0.i3.i, -1
  %i.w = and i32 %i.v, %.0.i3.i                   ; 2 uses
  %.not11.i.i = icmp eq i32 %i.w, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !217

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !218

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !212  ; 2 uses
  %i.x = icmp eq i32 %.pr, 0
  br i1 %i.x, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit
  %i.y = load ptr, ptr %0, align 8, !tbaa !207
  %i.z = zext i32 %.pr to i64                     ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 4
  %i.ab = add nuw nsw i64 %i.z, 31
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = and i64 %i.ac, 1073741820
  %i.ae = add nuw nsw i64 %i.ad, %i.aa
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.y, i64 noundef %i.ae, i64 noundef 8) #25
  store i32 0, ptr %i.a, align 4, !tbaa !212
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.af, align 8, !tbaa !204
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !212 ; 3 uses
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !212
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE15allocateBucketsEj.exit, label %bb.e

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE15allocateBucketsEj.exit: ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8copyFromERKSD_EUljE_EEvPKjjT_.exit

bb.e:                                             ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  %i.ao = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.an, i64 noundef 8) #25 ; 3 uses
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !212
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = shl nuw nsw i64 %i.aq, 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar ; 3 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !207
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !211
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !204
  store i32 %i.av, ptr %i.af, align 8, !tbaa !204
  %i.aw = load ptr, ptr %1, align 8, !tbaa !207
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !211
  %i.az = add nuw nsw i64 %i.aq, 31
  %i.ba = lshr i64 %i.az, 5                       ; 3 uses
  %i.bb = shl nuw nsw i64 %i.ba, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.as, ptr align 4 %i.ay, i64 %i.bb, i1 false)
  %.not.i16 = icmp eq i64 %i.ba, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8copyFromERKSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.e, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.e ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !27 ; 2 uses
  %.not11.i14 = icmp eq i32 %i.bd, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.be = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8copyFromERKSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.bd, %.lr.ph ], [ %i.bt, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8copyFromERKSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.bf = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.bg = or disjoint i32 %i.bf, %i.be
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.bh ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !85 ; 3 uses
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !85
  %i.bl = ptrtoint ptr %i.bk to i64
  %notsub.i.i.i.i = add i64 %i.bl, -1
  %i.bm = icmp ult i64 %notsub.i.i.i.i, -32
  br i1 %i.bm, label %bb.g, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8copyFromERKSA_ENKUljE_clEj.exit

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bo = atomicrmw add ptr %i.bn, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8copyFromERKSA_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8copyFromERKSA_ENKUljE_clEj.exit: ; preds = %bb.f, %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.br = load i16, ptr %i.bq, align 8
  store i16 %i.br, ptr %i.bp, align 8
  %i.bs = add i32 %.0.i15, -1
  %i.bt = and i32 %i.bs, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bt, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.f, !llvm.loop !890

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8copyFromERKSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ba
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8copyFromERKSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19, !llvm.loop !891

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8copyFromERKSD_EUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.e, %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE15allocateBucketsEj.exit
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm11LLVMContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !266  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS5_15SymbolStringPtrENS_12DenseMapInfoIS9_vEEEENSA_IS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SD_SG_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !268
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !312
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !27   ; 2 uses
  %.not11.i2 = icmp eq i32 %i.k, 0
  br i1 %.not11.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph7
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.l = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit
  %.0.i3 = phi i32 [ %i.k, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 28 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !232  ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit, label %.lr.ph7.preheader.i.i.i.i

.lr.ph7.preheader.i.i.i.i:                        ; preds = %bb.b
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !225
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !231
  %i.x = zext i32 %i.s to i64
  %i.y = add nuw nsw i64 %i.x, 31
  %i.z = lshr i64 %i.y, 5
  br label %.lr.ph7.i.i.i.i

.lr.ph7.i.i.i.i:                                  ; preds = %._crit_edge.i.i.i.i, %.lr.ph7.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.i.i.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !27 ; 2 uses
  %.not11.i2.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not11.i2.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph7.i.i.i.i
  %indvars.iv.tr.i.i.i.i = trunc nuw i64 %indvars.iv.i.i.i.i to i32
  %i.ac = shl nuw i32 %indvars.iv.tr.i.i.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.0.i3.i.i.i.i = phi i32 [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.an, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i ] ; 3 uses
  %i.ad = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i, i1 true)
  %i.ae = or disjoint i32 %i.ad, %i.ac
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !85 ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %notsub.i.i.i.i.i.i.i.i = add i64 %i.ai, -1
  %i.aj = icmp ult i64 %notsub.i.i.i.i.i.i.i.i, -32
  br i1 %i.aj, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = atomicrmw sub ptr %i.ak, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.am = add i32 %.0.i3.i.i.i.i, -1
  %i.an = and i32 %i.am, %.0.i3.i.i.i.i           ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.c, !llvm.loop !237

._crit_edge.i.i.i.i:                              ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph7.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.z
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i, label %.lr.ph7.i.i.i.i, !llvm.loop !238

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %.pr.i.i.i = load i32, ptr %i.r, align 4, !tbaa !232 ; 2 uses
  %i.ao = icmp eq i32 %.pr.i.i.i, 0
  br i1 %i.ao, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i
  %i.ap = load ptr, ptr %i.q, align 8, !tbaa !225
  %i.aq = zext i32 %.pr.i.i.i to i64              ; 2 uses
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.aq, 31
  %i.at = lshr i64 %i.as, 3
  %i.au = and i64 %i.at, 1073741820
  %i.av = add nuw nsw i64 %i.au, %i.ar
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ap, i64 noundef %i.av, i64 noundef 8) #25
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit: ; preds = %bb.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i, %bb.e
  %i.aw = add i32 %.0.i3, -1
  %i.ax = and i32 %i.aw, %.0.i3                   ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !892

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS5_15SymbolStringPtrENS_12DenseMapInfoIS9_vEEEENSA_IS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SD_SG_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7, !llvm.loop !893

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS5_15SymbolStringPtrENS_12DenseMapInfoIS9_vEEEENSA_IS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SD_SG_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !225, !noalias !894 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !231, !noalias !894 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !232, !noalias !894 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !85     ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !27
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !287

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !85
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.c, !prof !288

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !27
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !289, !llvm.loop !290

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !262
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !222
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !288

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !262
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !231
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !225
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !27
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !27
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !222
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.at, align 8, !tbaa !85
  %i.bh = load ptr, ptr %1, align 8, !tbaa !53
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !53
  store ptr null, ptr %1, align 8, !tbaa !53
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !225, !noalias !899 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !231, !noalias !899 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !232, !noalias !899 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !85     ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !27
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !287

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
end_hunk_2
begin_hunk_3_@"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS4_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS0_12DenseMapPairIS5_S6_EEEEEEEEC1IZ29LLVMOrcExecutionSessionLookupE3$_0SF_EET_NSD_8CalledAsIT0_EEENUlPKSD_RSC_E_8__invokeESL_SM_":bb.a
  store ptr null, ptr %1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !908
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.m, align 8, !tbaa !909
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 2, ptr %i.n, align 4, !tbaa !910
  %i.o = zext i32 %i.j to i64                     ; 4 uses
  %.idx43.i.i = mul nuw nsw i64 %i.o, 24          ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq i32 %i.j, 0       ; 2 uses
  %or.cond.i.i = select i1 %i.k, i1 true, i1 %.not.i.not.i.i.i.i
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = add nuw nsw i64 %i.o, 31
  %i.q = lshr i64 %i.p, 5                         ; 4 uses
  %i.r = load i32, ptr %i.f, align 4, !tbaa !27, !noalias !911 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %i.t = icmp eq i64 %i.q, 1
  br i1 %i.t, label %._crit_edge.i.i, label %.lr.ph

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph
  %i.u = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.q
  br i1 %i.v, label %._crit_edge.i.i, label %.lr.ph, !llvm.loop !916

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.w = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !27, !noalias !911 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i, !llvm.loop !916

._crit_edge.i.loopexit.i.i.i.i:                   ; preds = %.lr.ph
  %i.aa = mul i64 %i.w, 768
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit.i.i: ; preds = %._crit_edge.i.loopexit.i.i.i.i, %bb.c
  %.012.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.aa, %._crit_edge.i.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ %i.y, %._crit_edge.i.loopexit.i.i.i.i ]
  %i.ab = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i, i1 true)
  %narrow.i.i = mul nuw nsw i32 %i.ab, 24
  %.idx.i.i = zext nneg i32 %narrow.i.i to i64
  %i.ac = add i64 %.012.lcssa.i.i.i.i.i, %.idx.i.i ; 2 uses
  %.not17.i.i = icmp eq i64 %i.ac, %.idx43.i.i
  br i1 %.not17.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.e

._crit_edge.loopexit.i.i:                         ; preds = %_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EELb0EEppEv.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseI21LLVMOrcCSymbolMapPairLb1EE9push_backERKS1_.exit.i.i, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !908
  %.pre23.i.i = load i32, ptr %i.m, align 8, !tbaa !909
  %i.af = zext i32 %.pre23.i.i to i64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader, %._crit_edge.loopexit.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit.i.i, %bb.b
  %i.ag = phi i64 [ %i.af, %._crit_edge.loopexit.i.i ], [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit.i.i ], [ 0, %bb.b ], [ 0, %.lr.ph.i.i.i.i.i.preheader ], [ 0, %.lr.ph.i.i.i.i.i ]
  %i.ah = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.l, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit.i.i ], [ %i.l, %bb.b ], [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.i.i ]
  %i.ai = load ptr, ptr %0, align 8, !tbaa !917
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !919
  call void %i.ai(ptr noundef null, ptr noundef %i.ah, i64 noundef %i.ag, ptr noundef %i.ak) #25, !inline_history !920
  %i.al = load ptr, ptr %2, align 8, !tbaa !908   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.l
  br i1 %i.am, label %"_ZZ29LLVMOrcExecutionSessionLookupENK3$_0clEN4llvm8ExpectedINS0_8DenseMapINS0_3orc15SymbolStringPtrENS3_17ExecutorSymbolDefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEEE.exit.i", label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @free(ptr noundef %i.al) #25
  br label %"_ZZ29LLVMOrcExecutionSessionLookupENK3$_0clEN4llvm8ExpectedINS0_8DenseMapINS0_3orc15SymbolStringPtrENS3_17ExecutorSymbolDefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEEE.exit.i"

bb.e:                                             ; preds = %_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EELb0EEppEv.exit.i.i, %.lr.ph.i.i
  %.pn.i.i = phi i64 [ %i.ac, %.lr.ph.i.i ], [ %i.bx, %_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EELb0EEppEv.exit.i.i ] ; 2 uses
  %.sroa.010.018.i.i = getelementptr i8, ptr %i.d, i64 %.pn.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.an = load ptr, ptr %.sroa.010.018.i.i, align 8, !tbaa !85
  store ptr %i.an, ptr %3, align 8, !tbaa !141
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i, i64 8
  %.val.i.i = load i64, ptr %i.ao, align 8, !tbaa !921
  %i.ap = getelementptr i8, ptr %.sroa.010.018.i.i, i64 16
  %.val5.i.i = load i16, ptr %i.ap, align 8       ; 5 uses
  %i.aq = and i16 %.val5.i.i, 4351
  %.not.i.i.i.i = icmp ne i16 %i.aq, 0
  %spec.select.i.i.i.i = zext i1 %.not.i.i.i.i to i8 ; 2 uses
  %i.ar = and i16 %.val5.i.i, 767
  %.not61.i.i.i.i = icmp eq i16 %i.ar, 0
  %i.as = or disjoint i8 %spec.select.i.i.i.i, 2
  %.sroa.0.1.i.i.i.i = select i1 %.not61.i.i.i.i, i8 %spec.select.i.i.i.i, i8 %i.as ; 2 uses
  %i.at = and i16 %.val5.i.i, 8447
  %.not63.i.i.i.i = icmp eq i16 %i.at, 0
  %i.au = or disjoint i8 %.sroa.0.1.i.i.i.i, 4
  %.sroa.0.2.i.i.i.i = select i1 %.not63.i.i.i.i, i8 %.sroa.0.1.i.i.i.i, i8 %i.au ; 2 uses
  %i.av = and i16 %.val5.i.i, 16639
  %.not65.i.i.i.i = icmp eq i16 %i.av, 0
  %i.aw = or disjoint i8 %.sroa.0.2.i.i.i.i, 8
  %.sroa.0.3.i.i.i.i = select i1 %.not65.i.i.i.i, i8 %.sroa.0.2.i.i.i.i, i8 %i.aw
  %.sroa.030.0.insert.ext.i.i.i.i = shl i16 %.val5.i.i, 8
  %.sroa.0.0.insert.ext.i.i.i.i = zext nneg i8 %.sroa.0.3.i.i.i.i to i16
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i16 %.sroa.030.0.insert.ext.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %.sroa.2.8.insert.ext.i.i.i = zext i16 %.sroa.0.0.insert.insert.i.i.i.i to i64
  store i64 %.val.i.i, ptr %i.ad, align 8
  store i64 %.sroa.2.8.insert.ext.i.i.i, ptr %i.ae, align 8
  %i.ax = load i32, ptr %i.m, align 8, !tbaa !909 ; 2 uses
  %i.ay = load i32, ptr %i.n, align 4, !tbaa !910
  %.not.i.i.i = icmp ult i32 %i.ax, %i.ay
  br i1 %.not.i.i.i, label %bb.g, label %bb.f, !prof !288

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseI21LLVMOrcCSymbolMapPairLb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZN4llvm23SmallVectorTemplateBaseI21LLVMOrcCSymbolMapPairLb1EE9push_backERKS1_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.az = zext i32 %i.ax to i64
  %i.ba = load ptr, ptr %2, align 8, !tbaa !908
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.bc = load i32, ptr %i.m, align 8, !tbaa !909
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.m, align 8, !tbaa !909
  br label %_ZN4llvm23SmallVectorTemplateBaseI21LLVMOrcCSymbolMapPairLb1EE9push_backERKS1_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseI21LLVMOrcCSymbolMapPairLb1EE9push_backERKS1_.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.be = add i64 %.pn.i.i, 24
  %i.bf = sdiv exact i64 %i.be, 24                ; 3 uses
  %.not.i.i6.i.i = icmp ult i64 %i.bf, %i.o
  br i1 %.not.i.i6.i.i, label %bb.h, label %._crit_edge.loopexit.i.i

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseI21LLVMOrcCSymbolMapPairLb1EE9push_backERKS1_.exit.i.i
  %i.bg = lshr i64 %i.bf, 5                       ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !27
  %i.bj = trunc nuw i64 %i.bf to i32
  %i.bk = and i32 %i.bj, 31
  %i.bl = shl nsw i32 -1, %i.bk
  %i.bm = and i32 %i.bi, %i.bl                    ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i.i.i.preheader, label %_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EELb0EEppEv.exit.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.h
  %i.bo = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %i.bp = icmp eq i64 %i.bo, %i.q
  br i1 %i.bp, label %._crit_edge.loopexit.i.i, label %.lr.ph34

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph34
  %i.bq = add i64 %i.bs, 1                        ; 2 uses
  %i.br = icmp eq i64 %i.bq, %i.q
  br i1 %i.br, label %._crit_edge.loopexit.i.i, label %.lr.ph34, !llvm.loop !916

.lr.ph34:                                         ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.bs = phi i64 [ %i.bq, %.lr.ph.i.i.i.i ], [ %i.bo, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !27 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i, label %_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EELb0EEppEv.exit.i.i, !llvm.loop !916

_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS1_17ExecutorSymbolDefENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EELb0EEppEv.exit.i.i: ; preds = %.lr.ph34, %bb.h
  %.012.lcssa.i.i.i.i = phi i64 [ %i.bg, %bb.h ], [ %i.bs, %.lr.ph34 ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.bm, %bb.h ], [ %i.bu, %.lr.ph34 ]
  %i.bw = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %.idx.i.i.i.i = mul i64 %.012.lcssa.i.i.i.i, 768
  %narrow45.i.i = mul nuw nsw i32 %i.bw, 24
  %.idx44.i.i = zext nneg i32 %narrow45.i.i to i64
  %i.bx = add i64 %.idx.i.i.i.i, %.idx44.i.i      ; 2 uses
  %.not.i.i = icmp eq i64 %i.bx, %.idx43.i.i
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %bb.e

.thread.i:                                        ; preds = %bb.a
  %i.by = load i64, ptr %1, align 8, !tbaa !377
  %i.bz = inttoptr i64 %i.by to ptr
  store ptr null, ptr %1, align 8, !tbaa !8
  %i.ca = load ptr, ptr %0, align 8, !tbaa !917
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !919
  tail call void %i.ca(ptr noundef %i.bz, ptr noundef null, i64 noundef 0, ptr noundef %i.cc) #25, !inline_history !920
  br label %"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS4_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS0_12DenseMapPairIS5_S6_EEEEEEEEC1IZ29LLVMOrcExecutionSessionLookupE3$_0SF_EET_NSD_8CalledAsIT0_EEENKUlPKSD_RSC_E_clESL_SM_.exit"

"_ZZ29LLVMOrcExecutionSessionLookupENK3$_0clEN4llvm8ExpectedINS0_8DenseMapINS0_3orc15SymbolStringPtrENS3_17ExecutorSymbolDefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEEE.exit.i": ; preds = %bb.d, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.not.i.not.i.i.i.i, label %"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS4_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS0_12DenseMapPairIS5_S6_EEEEEEEEC1IZ29LLVMOrcExecutionSessionLookupE3$_0SF_EET_NSD_8CalledAsIT0_EEENKUlPKSD_RSC_E_clESL_SM_.exit", label %.lr.ph7.preheader.i.i.i.i

.lr.ph7.preheader.i.i.i.i:                        ; preds = %"_ZZ29LLVMOrcExecutionSessionLookupENK3$_0clEN4llvm8ExpectedINS0_8DenseMapINS0_3orc15SymbolStringPtrENS3_17ExecutorSymbolDefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEEE.exit.i"
  %i.cd = add nuw nsw i64 %i.o, 31                ; 2 uses
  %i.ce = lshr i64 %i.cd, 5
  br label %.lr.ph7.i.i.i.i

.lr.ph7.i.i.i.i:                                  ; preds = %._crit_edge.i.i.i.i, %.lr.ph7.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i.i.i.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !27 ; 2 uses
  %.not11.i2.i.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not11.i2.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i4.i

.lr.ph.i.i.i4.i:                                  ; preds = %.lr.ph7.i.i.i.i
  %indvars.iv.tr.i.i.i.i = trunc nuw i64 %indvars.iv.i.i.i.i to i32
  %i.ch = shl nuw i32 %indvars.iv.tr.i.i.i.i, 5
  br label %bb.i

bb.i:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph.i.i.i4.i
  %.0.i3.i.i.i.i = phi i32 [ %i.cg, %.lr.ph.i.i.i4.i ], [ %i.cs, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i ] ; 3 uses
  %i.ci = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i, i1 true)
  %i.cj = or disjoint i32 %i.ci, %i.ch
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !85 ; 2 uses
  %i.cn = ptrtoint ptr %i.cm to i64
  %notsub.i.i.i.i.i.i.i.i = add i64 %i.cn, -1
  %i.co = icmp ult i64 %notsub.i.i.i.i.i.i.i.i, -32
  br i1 %i.co, label %bb.j, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cq = atomicrmw sub ptr %i.cp, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.cr = add i32 %.0.i3.i.i.i.i, -1
  %i.cs = and i32 %i.cr, %.0.i3.i.i.i.i           ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not11.i.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.i, !llvm.loop !154

._crit_edge.i.i.i.i:                              ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph7.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ce
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i.i, label %.lr.ph7.i.i.i.i, !llvm.loop !155

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.ct = lshr i64 %i.cd, 3
  %i.cu = and i64 %i.ct, 1073741820
  %i.cv = add nuw nsw i64 %i.cu, %.idx43.i.i
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.d, i64 noundef %i.cv, i64 noundef 8) #25
  br label %"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS4_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS0_12DenseMapPairIS5_S6_EEEEEEEEC1IZ29LLVMOrcExecutionSessionLookupE3$_0SF_EET_NSD_8CalledAsIT0_EEENKUlPKSD_RSC_E_clESL_SM_.exit"

"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_8ExpectedINS_8DenseMapINS_3orc15SymbolStringPtrENS4_17ExecutorSymbolDefENS_12DenseMapInfoIS5_vEENS0_12DenseMapPairIS5_S6_EEEEEEEEC1IZ29LLVMOrcExecutionSessionLookupE3$_0SF_EET_NSD_8CalledAsIT0_EEENKUlPKSD_RSC_E_clESL_SM_.exit": ; preds = %.thread.i, %"_ZZ29LLVMOrcExecutionSessionLookupENK3$_0clEN4llvm8ExpectedINS0_8DenseMapINS0_3orc15SymbolStringPtrENS3_17ExecutorSymbolDefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEEEE.exit.i", %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseI21LLVMOrcCSymbolMapPairLb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %struct.LLVMOrcCSymbolMapPair, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !923
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !909
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 24) #25
  %i.f = load ptr, ptr %0, align 8, !tbaa !908
  %i.g = load i32, ptr %i.a, align 8, !tbaa !909
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !909
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !909
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !207, !noalias !924 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !211, !noalias !924 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !212, !noalias !924 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !85     ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !27
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !287

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !85
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.c, !prof !288

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !27
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !289, !llvm.loop !929

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !930
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !204
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !288

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !930
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !211
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !207
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 5 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !27
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !27
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !204
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.at, align 8, !tbaa !85
  %i.bh = load ptr, ptr %1, align 8, !tbaa !53
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !53
  store ptr null, ptr %1, align 8, !tbaa !53
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i16 0, ptr %i.bi, align 8
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !207, !noalias !931 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !211, !noalias !931 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !212, !noalias !931 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !85     ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !27
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !287

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !85
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !288

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !27
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !289, !llvm.loop !929

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !930
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.93", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !212
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !207
  store ptr %i.y, ptr %i.q, align 8, !tbaa !211
  store i32 0, ptr %i.p, align 16, !tbaa !204
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !930    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !263 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !8
  store ptr %i.z, ptr %2, align 16, !tbaa !930
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !8
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !263
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !27 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !27
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !27
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !27
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !27
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !27 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !85 ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %notsub.i.i.i.i.i.i = add i64 %i.au, -1
  %i.av = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.av, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ay = add i32 %.0.i3.i.i, -1
  %i.az = and i32 %i.ay, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !217

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !218

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !212 ; 2 uses
  %i.ba = icmp eq i32 %.pr.i, 0
  br i1 %i.ba, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i
  %i.bb = load ptr, ptr %2, align 16, !tbaa !207
  %i.bc = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 4
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !207
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !211
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !212  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !211  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !207
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !212
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bh, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !85
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !27
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !27
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !936

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 3 uses
  store ptr null, ptr %i.as, align 8, !tbaa !85
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !53
  store ptr %i.at, ptr %i.as, align 8, !tbaa !53
  store ptr null, ptr %i.u, align 8, !tbaa !53
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i16, ptr %i.av, align 8
  store i16 %i.aw, ptr %i.au, align 8
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !27
  %i.ba = or i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !27
  %i.bb = load ptr, ptr %i.u, align 8, !tbaa !85  ; 2 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %notsub.i.i.i.i = add i64 %i.bc, -1
  %i.bd = icmp ult i64 %notsub.i.i.i.i, -32
  br i1 %i.bd, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = atomicrmw sub ptr %i.be, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %._crit_edge.i, %bb.c
  %i.bg = add i32 %.0.i17, -1
  %i.bh = and i32 %i.bg, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bh, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !937

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !938

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !212
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bi = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !204
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !204
  %i.bm = icmp eq i32 %i.bi, 0
  br i1 %i.bm, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bn = load ptr, ptr %1, align 8, !tbaa !207
  %i.bo = zext i32 %i.bi to i64                   ; 2 uses
  %i.bp = shl nuw nsw i64 %i.bo, 4
  %i.bq = add nuw nsw i64 %i.bo, 31
  %i.br = lshr i64 %i.bq, 3
  %i.bs = and i64 %i.br, 1073741820
  %i.bt = add nuw nsw i64 %i.bs, %i.bp
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bn, i64 noundef %i.bt, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !212
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !162, !noalias !939 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163, !noalias !939 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !159, !noalias !939 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !85     ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !27
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !287

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !85
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.c, !prof !288

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !27
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !289, !llvm.loop !944

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !945
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !946
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !288

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !945
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !163
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !162
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 5 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 24                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !27
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !27
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !946
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.at, align 8, !tbaa !85
  %i.bh = load ptr, ptr %1, align 8, !tbaa !53
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !53
  store ptr null, ptr %1, align 8, !tbaa !53
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !162, !noalias !947 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !163, !noalias !947 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !159, !noalias !947 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !85     ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !27
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !287

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !85
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !288

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !27
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !289, !llvm.loop !944

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !945
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.105", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !159
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !162
  store ptr %i.y, ptr %i.q, align 8, !tbaa !163
  store i32 0, ptr %i.p, align 16, !tbaa !946
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !945    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !263 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !8
  store ptr %i.z, ptr %2, align 16, !tbaa !945
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !8
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !263
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !27 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !27
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !27
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !27
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !27
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !27 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bf, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !85 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  %notsub.i.i.i.i.i.i.i = add i64 %i.av, -1
  %i.aw = icmp ult i64 %notsub.i.i.i.i.i.i.i, -32
  br i1 %i.aw, label %bb.c, label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i

_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !85 ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %notsub.i.i.i.i.i.i = add i64 %i.ba, -1
  %i.bb = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.bb, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.d:                                             ; preds = %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.d, %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i.i.i
  %i.be = add i32 %.0.i3.i.i, -1
  %i.bf = and i32 %i.be, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !164

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !165

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !159 ; 2 uses
  %i.bg = icmp eq i32 %.pr.i, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i
  %i.bh = load ptr, ptr %2, align 16, !tbaa !162
  %i.bi = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bj = mul nuw nsw i64 %i.bi, 24
  %i.bk = add nuw nsw i64 %i.bi, 31
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 1073741820
  %i.bn = add nuw nsw i64 %i.bm, %i.bj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bh, i64 noundef %i.bn, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E10destroyAllEv.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !162
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !163
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !159  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !163  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !162
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !159
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_19SymbolAliasMapEntryENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bp, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 6 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !85
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !27
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !27
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !952

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 4 uses
  store ptr null, ptr %i.as, align 8, !tbaa !85
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !53
  store ptr %i.at, ptr %i.as, align 8, !tbaa !53
  store ptr null, ptr %i.u, align 8, !tbaa !53
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  store ptr null, ptr %i.au, align 8, !tbaa !85
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !53
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !53
  store ptr null, ptr %i.av, align 8, !tbaa !53
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.az = load i16, ptr %i.ay, align 8
  store i16 %i.az, ptr %i.ax, align 8
  %i.ba = shl nuw i32 1, %.lcssa.i
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !27
  %i.bd = or i32 %i.bc, %i.ba
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !27
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !85 ; 2 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %notsub.i.i.i.i.i = add i64 %i.bf, -1
  %i.bg = icmp ult i64 %notsub.i.i.i.i.i, -32
  br i1 %i.bg, label %bb.c, label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i

bb.c:                                             ; preds = %._crit_edge.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = atomicrmw sub ptr %i.bh, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i

_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i:     ; preds = %bb.c, %._crit_edge.i
  %i.bj = load ptr, ptr %i.u, align 8, !tbaa !85  ; 2 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %notsub.i.i.i.i = add i64 %i.bk, -1
  %i.bl = icmp ult i64 %notsub.i.i.i.i, -32
  br i1 %i.bl, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

bb.d:                                             ; preds = %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = atomicrmw sub ptr %i.bm, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i, %bb.d
  %i.bo = add i32 %.0.i17, -1
  %i.bp = and i32 %i.bo, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bp, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !953

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_19SymbolAliasMapEntryENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !954

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_19SymbolAliasMapEntryENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !159
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_19SymbolAliasMapEntryENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_19SymbolAliasMapEntryENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_19SymbolAliasMapEntryENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bq = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_19SymbolAliasMapEntryENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !946
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !946
  %i.bu = icmp eq i32 %i.bq, 0
  br i1 %i.bu, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_19SymbolAliasMapEntryENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bv = load ptr, ptr %1, align 8, !tbaa !162
  %i.bw = zext i32 %i.bq to i64                   ; 2 uses
  %i.bx = mul nuw nsw i64 %i.bw, 24
  %i.by = add nuw nsw i64 %i.bw, 31
  %i.bz = lshr i64 %i.by, 3
  %i.ca = and i64 %i.bz, 1073741820
  %i.cb = add nuw nsw i64 %i.ca, %i.bx
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bv, i64 noundef %i.cb, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !159
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS5_19SymbolAliasMapEntryENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN4llvm3orc21SymbolDependenceGroupEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN4llvm3orc21SymbolDependenceGroupEEvPT_.exit
  %.05 = phi ptr [ %i.aq, %_ZSt8_DestroyIN4llvm3orc21SymbolDependenceGroupEEvPT_.exit ], [ %0, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 24 ; 2 uses
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %.05, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !266  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !268
  %i.f = zext i32 %i.c to i64                     ; 2 uses
  %i.g = shl nuw nsw i64 %i.f, 5
  %i.h = add nuw nsw i64 %i.f, 31
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741820
  %i.k = add nuw nsw i64 %i.j, %i.g
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.e, i64 noundef %i.k, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev.exit.i.i: ; preds = %bb.b, %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.05, i64 20 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !232  ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZSt8_DestroyIN4llvm3orc21SymbolDependenceGroupEEvPT_.exit, label %.lr.ph7.preheader.i.i.i.i.i

.lr.ph7.preheader.i.i.i.i.i:                      ; preds = %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev.exit.i.i
  %i.o = load ptr, ptr %.05, align 8, !tbaa !225
  %i.p = getelementptr inbounds nuw i8, ptr %.05, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !231
  %i.r = zext i32 %i.m to i64
  %i.s = add nuw nsw i64 %i.r, 31
  %i.t = lshr i64 %i.s, 5
  br label %.lr.ph7.i.i.i.i.i

.lr.ph7.i.i.i.i.i:                                ; preds = %._crit_edge.i.i.i.i.i, %.lr.ph7.preheader.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.i.i
  %i.v = load i32, ptr %i.u, align 4, !tbaa !27   ; 2 uses
  %.not11.i2.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not11.i2.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph7.i.i.i.i.i
  %indvars.iv.tr.i.i.i.i.i = trunc nuw i64 %indvars.iv.i.i.i.i.i to i32
  %i.w = shl nuw i32 %indvars.iv.tr.i.i.i.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.0.i3.i.i.i.i.i = phi i32 [ %i.v, %.lr.ph.i.i.i.i.i ], [ %i.ah, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i ] ; 3 uses
  %i.x = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i.i, i1 true)
  %i.y = or disjoint i32 %i.x, %i.w
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !85 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %notsub.i.i.i.i.i.i.i.i.i = add i64 %i.ac, -1
  %i.ad = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i, -32
  br i1 %i.ad, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = atomicrmw sub ptr %i.ae, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.ag = add i32 %.0.i3.i.i.i.i.i, -1
  %i.ah = and i32 %i.ag, %.0.i3.i.i.i.i.i         ; 2 uses
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not11.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.c, !llvm.loop !237

._crit_edge.i.i.i.i.i:                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i, %.lr.ph7.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.t
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i.i, label %.lr.ph7.i.i.i.i.i, !llvm.loop !238

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i
  %.pr.i.i.i.i = load i32, ptr %i.l, align 4, !tbaa !232 ; 2 uses
  %i.ai = icmp eq i32 %.pr.i.i.i.i, 0
  br i1 %i.ai, label %_ZSt8_DestroyIN4llvm3orc21SymbolDependenceGroupEEvPT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i.i
  %i.aj = load ptr, ptr %.05, align 8, !tbaa !225
  %i.ak = zext i32 %.pr.i.i.i.i to i64            ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.ak, 31
  %i.an = lshr i64 %i.am, 3
  %i.ao = and i64 %i.an, 1073741820
  %i.ap = add nuw nsw i64 %i.ao, %i.al
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aj, i64 noundef %i.ap, i64 noundef 8) #25
  br label %_ZSt8_DestroyIN4llvm3orc21SymbolDependenceGroupEEvPT_.exit

_ZSt8_DestroyIN4llvm3orc21SymbolDependenceGroupEEvPT_.exit: ; preds = %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev.exit.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E10destroyAllEv.exit.i.i.i.i, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.05, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.aq, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !955

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN4llvm3orc21SymbolDependenceGroupEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E8copyFromERKSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !266  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEE17deallocateBucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !268
  %i.e = zext i32 %i.b to i64                     ; 2 uses
  %i.f = shl nuw nsw i64 %i.e, 5
  %i.g = add nuw nsw i64 %i.e, 31
  %i.h = lshr i64 %i.g, 3
  %i.i = and i64 %i.h, 1073741820
  %i.j = add nuw nsw i64 %i.i, %i.f
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.d, i64 noundef %i.j, i64 noundef 8) #25
  store i32 0, ptr %i.a, align 4, !tbaa !266
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !315
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !266  ; 3 uses
  store i32 %i.m, ptr %i.a, align 4, !tbaa !266
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEE15allocateBucketsEj.exit, label %bb.c

_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEE15allocateBucketsEj.exit: ; preds = %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS5_15SymbolStringPtrENS_12DenseMapInfoIS9_vEEEENSA_IS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SD_SG_E8copyFromERKSH_EUljE_EEvPKjjT_.exit

bb.c:                                             ; preds = %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEE17deallocateBucketsEv.exit
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 5
  %i.p = add nuw nsw i64 %i.n, 31
  %i.q = lshr i64 %i.p, 3
  %i.r = and i64 %i.q, 1073741820
  %i.s = add nuw nsw i64 %i.r, %i.o
  %i.t = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.s, i64 noundef 8) #25 ; 3 uses
  %i.u = load i32, ptr %i.a, align 4, !tbaa !266
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 5
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !268
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !312
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !315
  store i32 %i.aa, ptr %i.k, align 8, !tbaa !315
  %i.ab = load ptr, ptr %1, align 8, !tbaa !268
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !312
  %i.ae = add nuw nsw i64 %i.v, 31
  %i.af = lshr i64 %i.ae, 5                       ; 3 uses
  %i.ag = shl nuw nsw i64 %i.af, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.ad, i64 %i.ag, i1 false)
  %.not.i16 = icmp eq i64 %i.af, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS5_15SymbolStringPtrENS_12DenseMapInfoIS9_vEEEENSA_IS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SD_SG_E8copyFromERKSH_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.c, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.c ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !27 ; 2 uses
  %.not11.i14 = icmp eq i32 %i.ai, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.aj = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.0.i15 = phi i32 [ %i.ai, %.lr.ph ], [ %i.at, %bb.d ] ; 3 uses
  %i.ak = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.al = or disjoint i32 %i.ak, %i.aj
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %i.am ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !313
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !313
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8copyFromERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ar)
  %i.as = add i32 %.0.i15, -1
  %i.at = and i32 %i.as, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.at, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.d, !llvm.loop !956

._crit_edge:                                      ; preds = %bb.d, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.af
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS5_15SymbolStringPtrENS_12DenseMapInfoIS9_vEEEENSA_IS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SD_SG_E8copyFromERKSH_EUljE_EEvPKjjT_.exit, label %.lr.ph19, !llvm.loop !957

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS5_15SymbolStringPtrENS_12DenseMapInfoIS9_vEEEENSA_IS7_vEENS_6detail12DenseMapPairIS7_SC_EEEES7_SC_SD_SG_E8copyFromERKSH_EUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.c, %_ZN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEE15allocateBucketsEj.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !254  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !251    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #26
  unreachable

_ZNKSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !8
  store ptr null, ptr %2, align 8, !tbaa !262
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !8
  store ptr null, ptr %i.r, align 8, !tbaa !263
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.w = load <2 x i32>, ptr %i.u, align 8, !tbaa !27
  store i32 0, ptr %i.u, align 8, !tbaa !27
  store <2 x i32> %i.w, ptr %i.t, align 8, !tbaa !27
  store i32 0, ptr %i.v, align 4, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = load <2 x ptr>, ptr %i.y, align 8, !tbaa !8
  store ptr null, ptr %i.y, align 8, !tbaa !264
  store <2 x ptr> %i.aa, ptr %i.x, align 8, !tbaa !8
  store ptr null, ptr %i.z, align 8, !tbaa !263
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ae = load <2 x i32>, ptr %i.ac, align 8, !tbaa !27
  store i32 0, ptr %i.ac, align 8, !tbaa !27
  store <2 x i32> %i.ae, ptr %i.ab, align 8, !tbaa !27
  store i32 0, ptr %i.ad, align 4, !tbaa !27
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc21SymbolDependenceGroupES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.011.i.i.i.i.i, i8 0, i64 24, i1 false)
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8copyFromERKSA_(ptr noundef nonnull align 8 dereferenceable(48) %.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0810.i.i.i.i.i)
  %i.af = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E8copyFromERKSE_(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc21SymbolDependenceGroupES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !343

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc21SymbolDependenceGroupES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN4llvm3orc21SymbolDependenceGroupESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ai, %.lr.ph.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 48 ; 2 uses
  %.not9.i.i.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc21SymbolDependenceGroupES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc21SymbolDependenceGroupES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i19
  %.011.i.i.i.i.i20 = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i19 ], [ %i.aj, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc21SymbolDependenceGroupES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 4 uses
  %.0810.i.i.i.i.i21 = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i19 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc21SymbolDependenceGroupES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.011.i.i.i.i.i20, i8 0, i64 24, i1 false)
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8copyFromERKSA_(ptr noundef nonnull align 8 dereferenceable(48) %.011.i.i.i.i.i20, ptr noundef nonnull align 8 dereferenceable(48) %.0810.i.i.i.i.i21)
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E8copyFromERKSE_(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 48 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 48 ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.am, %i.b
  br i1 %.not.i.i.i.i.i22, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc21SymbolDependenceGroupES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, label %.lr.ph.i.i.i.i.i19, !llvm.loop !343

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc21SymbolDependenceGroupES3_SaIS2_EET0_T_S6_S5_RT1_.exit24: ; preds = %.lr.ph.i.i.i.i.i19, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc21SymbolDependenceGroupES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i23 = phi ptr [ %i.aj, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc21SymbolDependenceGroupES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.an, %.lr.ph.i.i.i.i.i19 ]
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN4llvm3orc21SymbolDependenceGroupEEEvT_S6_(ptr noundef %i.c, ptr noundef %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.c, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseIN4llvm3orc21SymbolDependenceGroupESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc21SymbolDependenceGroupES3_SaIS2_EET0_T_S6_S5_RT1_.exit24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !261
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ar) #28
  br label %_ZNSt12_Vector_baseIN4llvm3orc21SymbolDependenceGroupESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvm3orc21SymbolDependenceGroupESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm3orc21SymbolDependenceGroupES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !251
  store ptr %.0.lcssa.i.i.i.i.i23, ptr %i.a, align 8, !tbaa !254
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !261
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4llvm3orc8JITDylib6defineINS0_19MaterializationUnitEEENS_5ErrorERSt10unique_ptrIT_St14default_deleteIS6_EENS_18IntrusiveRefCntPtrINS0_15ResourceTrackerEEEENKUlvE_clEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  %2 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 4 uses
  %3 = alloca %"class.std::unique_ptr.85", align 8 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !403    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !958, !nonnull !174, !align !175
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !357
  tail call void @_ZN4llvm3orc8JITDylib10defineImplERNS0_19MaterializationUnitE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.d) #25
  %i.e = load ptr, ptr %0, align 8, !tbaa !104
  %.not14 = icmp eq ptr %i.e, null
  br i1 %.not14, label %bb.a, label %.critedge

bb.a:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !959, !nonnull !174, !align !175
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !101
  %.not15 = icmp eq ptr %i.h, null
  br i1 %.not15, label %bb.b, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm3orc8JITDylib25getDefaultResourceTrackerEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(272) %i.a) #25
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !959, !nonnull !174, !align !175 ; 2 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !101
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !101
  store ptr %i.k, ptr %2, align 8, !tbaa !101
  store ptr %i.j, ptr %i.i, align 8, !tbaa !101
  %i.l = load ptr, ptr %2, align 8, !tbaa !101    ; 4 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = atomicrmw sub ptr %i.l, i32 1 acq_rel, align 4
  %.not.i.i.i.i = icmp eq i32 %i.m, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm3orc15ResourceTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.l) #25
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.l, i64 noundef 16) #28
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !176, !nonnull !174, !align !175
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !960  ; 3 uses
  %.not = icmp eq ptr %i.q, null
  %.pre17 = load ptr, ptr %i.f, align 8, !tbaa !959 ; 2 uses
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit10, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3orc15ResourceTrackerEED2Ev.exit
  %i.r = load ptr, ptr %.pre17, align 8, !tbaa !101
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !958, !nonnull !174, !align !175
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !357
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !31
end_hunk_3
