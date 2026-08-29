Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VTableBuilder?download=true
inline.NumInlined: 9111
inline.NumDeleted: 4216
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN5clang12VTableLayoutC2EN4llvm11SmallVectorImLj6EEENS1_8ArrayRefINS_15VTableComponentEEENS4_ISt4pairImNS_9ThunkInfoEEEERKNS1_8DenseMapINS_13BaseSubobjectENS0_20AddressPointLocationENS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_SD_EEEE:bb.a
  %.0912.i.i41.i.i.i.i.i = phi ptr [ %.013.i.i40.i.i.i.i.i, %.lr.ph.i.i38.i.i.i.i.i ], [ %.019.i28.i.i.i.i.i, %bb.r ] ; 3 uses
  store i64 %.0.val14.i.i39.i.i.i.i.i, ptr %.0912.i.i41.i.i.i.i.i, align 8, !tbaa !39
  %i.fn = getelementptr inbounds i8, ptr %.0912.i.i41.i.i.i.i.i, i64 -56
  %i.fo = getelementptr inbounds nuw i8, ptr %.0912.i.i41.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fo, ptr noundef nonnull align 8 dereferenceable(56) %i.fn, i64 56, i1 false), !tbaa.struct !48
  %.0.i.i42.i.i.i.i.i = getelementptr inbounds i8, ptr %.013.i.i40.i.i.i.i.i, i64 -64 ; 2 uses
  %.0.val.i.i43.i.i.i.i.i = load i64, ptr %.0.i.i42.i.i.i.i.i, align 8, !tbaa !39 ; 2 uses
  %i.fp = icmp ult i64 %.0.val.i30.i.i.i.i.i, %.0.val.i.i43.i.i.i.i.i
  br i1 %i.fp, label %.lr.ph.i.i38.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPSt4pairImN5clang9ThunkInfoEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_12VTableLayoutC1EN4llvm11SmallVectorImLj6EEENS9_8ArrayRefINS1_15VTableComponentEEENSC_IS3_EERKNS9_8DenseMapINS1_13BaseSubobjectENS8_20AddressPointLocationENS9_12DenseMapInfoISH_vEENS9_6detail12DenseMapPairISH_SI_EEEEE3$_0EEEvT_T0_.exit.i34.i.i.i.i.i", !llvm.loop !53

"_ZSt25__unguarded_linear_insertIPSt4pairImN5clang9ThunkInfoEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_12VTableLayoutC1EN4llvm11SmallVectorImLj6EEENS9_8ArrayRefINS1_15VTableComponentEEENSC_IS3_EERKNS9_8DenseMapINS1_13BaseSubobjectENS8_20AddressPointLocationENS9_12DenseMapInfoISH_vEENS9_6detail12DenseMapPairISH_SI_EEEEE3$_0EEEvT_T0_.exit.i34.i.i.i.i.i": ; preds = %.lr.ph.i.i38.i.i.i.i.i, %bb.r
  %.09.lcssa.i.i35.i.i.i.i.i = phi ptr [ %.019.i28.i.i.i.i.i, %bb.r ], [ %.013.i.i40.i.i.i.i.i, %.lr.ph.i.i38.i.i.i.i.i ] ; 2 uses
  store i64 %.0.val.i30.i.i.i.i.i, ptr %.09.lcssa.i.i35.i.i.i.i.i, align 8, !tbaa !39
  %i.fq = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i35.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fq, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.i.i24.i.i.i.i.i, i64 56, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i24.i.i.i.i.i)
  br label %bb.s

bb.s:                                             ; preds = %"_ZSt25__unguarded_linear_insertIPSt4pairImN5clang9ThunkInfoEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_12VTableLayoutC1EN4llvm11SmallVectorImLj6EEENS9_8ArrayRefINS1_15VTableComponentEEENSC_IS3_EERKNS9_8DenseMapINS1_13BaseSubobjectENS8_20AddressPointLocationENS9_12DenseMapInfoISH_vEENS9_6detail12DenseMapPairISH_SI_EEEEE3$_0EEEvT_T0_.exit.i34.i.i.i.i.i", %_ZSt13move_backwardIPSt4pairImN5clang9ThunkInfoEES4_ET0_T_S6_S5_.exit.i44.i.i.i.i.i
  %.0.i36.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.019.i28.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i37.i.i.i.i.i = icmp eq ptr %.0.i36.i.i.i.i.i, %i.cv
  br i1 %.not.i37.i.i.i.i.i, label %"_ZN4llvm4sortIRNS_11SmallVectorISt4pairImN5clang9ThunkInfoEELj0EEEZNS3_12VTableLayoutC1ENS1_ImLj6EEENS_8ArrayRefINS3_15VTableComponentEEENSA_IS5_EERKNS_8DenseMapINS3_13BaseSubobjectENS8_20AddressPointLocationENS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_SG_EEEEE3$_0EEvOT_T0_.exit", label %bb.p, !llvm.loop !54

"_ZN4llvm4sortIRNS_11SmallVectorISt4pairImN5clang9ThunkInfoEELj0EEEZNS3_12VTableLayoutC1ENS1_ImLj6EEENS_8ArrayRefINS3_15VTableComponentEEENSA_IS5_EERKNS_8DenseMapINS3_13BaseSubobjectENS8_20AddressPointLocationENS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_SG_EEEEE3$_0EEvOT_T0_.exit": ; preds = %bb.s, %"_ZSt25__unguarded_linear_insertIPSt4pairImN5clang9ThunkInfoEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_12VTableLayoutC1EN4llvm11SmallVectorImLj6EEENS9_8ArrayRefINS1_15VTableComponentEEENSC_IS3_EERKNS9_8DenseMapINS1_13BaseSubobjectENS8_20AddressPointLocationENS9_12DenseMapInfoISH_vEENS9_6detail12DenseMapPairISH_SI_EEEEE3$_0EEEvT_T0_.exit.i15.i.i.i.i.i", %_ZL23MakeAddressPointIndicesRKN4llvm8DenseMapIN5clang13BaseSubobjectENS1_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEEj.exit, %.preheader.i.i.i.i.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang12VTableLayoutD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(152) dereferenceable(152) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #27
  br label %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit

_ZN4llvm11SmallVectorIjLj4EED2Ev.exit:            ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.f = load i32, ptr %i.e, align 4, !tbaa !25   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN4llvm8DenseMapIN5clang13BaseSubobjectENS1_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = zext i32 %i.f to i64                     ; 2 uses
  %i.k = mul nuw nsw i64 %i.j, 24
  %i.l = add nuw nsw i64 %i.j, 31
  %i.m = lshr i64 %i.l, 3
  %i.n = and i64 %i.m, 1073741820
  %i.o = add nuw nsw i64 %i.n, %i.k
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.i, i64 noundef %i.o, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIN5clang13BaseSubobjectENS1_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang13BaseSubobjectENS1_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !8    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN4llvm11SmallVectorISt4pairImN5clang9ThunkInfoEELj0EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapIN5clang13BaseSubobjectENS1_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit
  tail call void @free(ptr noundef %i.q) #27
  br label %_ZN4llvm11SmallVectorISt4pairImN5clang9ThunkInfoEELj0EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairImN5clang9ThunkInfoEELj0EED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIN5clang13BaseSubobjectENS1_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.p
  br i1 %i.v, label %_ZN4llvm11SmallVectorIN5clang15VTableComponentELj0EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairImN5clang9ThunkInfoEELj0EED2Ev.exit
  tail call void @free(ptr noundef %i.u) #27
  br label %_ZN4llvm11SmallVectorIN5clang15VTableComponentELj0EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang15VTableComponentELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairImN5clang9ThunkInfoEELj0EED2Ev.exit, %bb.e
  %i.w = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZN4llvm11SmallVectorImLj6EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIN5clang15VTableComponentELj0EED2Ev.exit
  tail call void @free(ptr noundef %i.w) #27
  br label %_ZN4llvm11SmallVectorImLj6EED2Ev.exit

_ZN4llvm11SmallVectorImLj6EED2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIN5clang15VTableComponentELj0EED2Ev.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang17VTableContextBase13hasVtableSlotEPKNS_13CXXMethodDeclE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(168) %0) #27, !inline_history !58 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 786432
  %or.cond.not.i = icmp eq i32 %i.g, 0
  br i1 %or.cond.not.i, label %_ZNK5clang13CXXMethodDecl9isVirtualEv.exit, label %_ZNK5clang13CXXMethodDecl9isVirtualEv.exit.thread

_ZNK5clang13CXXMethodDecl9isVirtualEv.exit:       ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZNK5clang13CXXMethodDecl23size_overridden_methodsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.d) #27
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %_ZNK5clang13CXXMethodDecl9isVirtualEv.exit.thread

_ZNK5clang13CXXMethodDecl9isVirtualEv.exit.thread: ; preds = %bb.a, %_ZNK5clang13CXXMethodDecl9isVirtualEv.exit
  %i.i = tail call noundef zeroext i1 @_ZNK5clang12FunctionDecl19isImmediateFunctionEv(ptr noundef nonnull align 8 dereferenceable(168) %0) #27
  %i.j = xor i1 %i.i, true
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5clang13CXXMethodDecl9isVirtualEv.exit.thread, %_ZNK5clang13CXXMethodDecl9isVirtualEv.exit
  %i.k = phi i1 [ false, %_ZNK5clang13CXXMethodDecl9isVirtualEv.exit ], [ %i.j, %_ZNK5clang13CXXMethodDecl9isVirtualEv.exit.thread ]
  ret i1 %i.k
}

declare noundef zeroext i1 @_ZNK5clang12FunctionDecl19isImmediateFunctionEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN5clang20ItaniumVTableContextC2ERNS_10ASTContextE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(136) initializes((0, 33), (40, 136)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.a, i8 0, i64 25, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5clang20ItaniumVTableContextE, i64 16), ptr %0, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, i8 0, i64 96, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang20ItaniumVTableContextD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(136) dereferenceable(136) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5clang20ItaniumVTableContextE, i64 16), ptr %0, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !59   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.f = zext i32 %i.b to i64                     ; 2 uses
  %i.g = shl nuw nsw i64 %i.f, 4
  %i.h = add nuw nsw i64 %i.f, 31
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741820
  %i.k = add nuw nsw i64 %i.j, %i.g
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.e, i64 noundef %i.k, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.m = load i32, ptr %i.l, align 4, !tbaa !63   ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclES5_ENS2_9CharUnitsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.q = zext i32 %i.m to i64                     ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 24
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820
  %i.v = add nuw nsw i64 %i.u, %i.r
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.p, i64 noundef %i.v, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclES5_ENS2_9CharUnitsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEED2Ev.exit

_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclES5_ENS2_9CharUnitsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEED2Ev.exit, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !67   ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS1_12VTableLayoutESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclES5_ENS2_9CharUnitsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEED2Ev.exit
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !70
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !71
  %i.ad = zext i32 %i.y to i64
  %i.ae = add nuw nsw i64 %i.ad, 31
  %i.af = lshr i64 %i.ae, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !16 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ai = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.d

bb.d:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.ah, %.lr.ph.i.i ], [ %i.aq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.aj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.ak = or disjoint i32 %i.aj, %i.ai
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIKN5clang12VTableLayoutEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIKN5clang12VTableLayoutEEclEPS2_.exit.i.i.i.i: ; preds = %bb.d
  tail call void @_ZN5clang12VTableLayoutD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.ao) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 152) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIKN5clang12VTableLayoutEEclEPS2_.exit.i.i.i.i, %bb.d
  %i.ap = add i32 %.0.i3.i.i, -1
  %i.aq = and i32 %i.ap, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !74

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.af
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !75

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.x, align 4, !tbaa !67 ; 2 uses
  %i.ar = icmp eq i32 %.pr.i, 0
  br i1 %i.ar, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS1_12VTableLayoutESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E10destroyAllEv.exit.i
  %i.as = load ptr, ptr %i.w, align 8, !tbaa !70
  %i.at = zext i32 %.pr.i to i64                  ; 2 uses
  %i.au = shl nuw nsw i64 %i.at, 4
  %i.av = add nuw nsw i64 %i.at, 31
  %i.aw = lshr i64 %i.av, 3
  %i.ax = and i64 %i.aw, 1073741820
  %i.ay = add nuw nsw i64 %i.ax, %i.au
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.as, i64 noundef %i.ay, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS1_12VTableLayoutESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS1_12VTableLayoutESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclES5_ENS2_9CharUnitsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E10destroyAllEv.exit.i, %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !76 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_ZN4llvm8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS1_12VTableLayoutESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEED2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !79
  %i.be = zext i32 %i.ba to i64                   ; 2 uses
  %i.bf = mul nuw nsw i64 %i.be, 24
  %i.bg = add nuw nsw i64 %i.be, 31
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 1073741820
  %i.bj = add nuw nsw i64 %i.bi, %i.bf
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bd, i64 noundef %i.bj, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEED2Ev.exit

_ZN4llvm8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS1_12VTableLayoutESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEED2Ev.exit, %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5clang17VTableContextBaseE, i64 16), ptr %0, align 8, !tbaa !56
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !80 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZN5clang17VTableContextBaseD2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEED2Ev.exit
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !83
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !84
  %i.br = zext i32 %i.bm to i64
  %i.bs = add nuw nsw i64 %i.br, 31
  %i.bt = lshr i64 %i.bs, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i.i.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !16 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.bw = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.g

bb.g:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.bv, %.lr.ph.i.i.i ], [ %i.cg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.bx = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.by = or disjoint i32 %i.bx, %i.bw
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [80 x i8], ptr %i.bo, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !8  ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef %i.cc) #27, !inline_history !85
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.cf = add i32 %.0.i3.i.i.i, -1
  %i.cg = and i32 %i.cf, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.g, !llvm.loop !86

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i1 = icmp eq i64 %indvars.iv.next.i.i.i, %i.bt
  br i1 %.not.i.i.i.i1, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !87

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.bl, align 4, !tbaa !80 ; 2 uses
  %i.ch = icmp eq i32 %.pr.i.i, 0
  br i1 %i.ch, label %_ZN5clang17VTableContextBaseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i.i
  %i.ci = load ptr, ptr %i.bk, align 8, !tbaa !83
  %i.cj = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.ck = mul nuw nsw i64 %i.cj, 80
  %i.cl = add nuw nsw i64 %i.cj, 31
  %i.cm = lshr i64 %i.cl, 3
  %i.cn = and i64 %i.cm, 1073741820
  %i.co = add nuw nsw i64 %i.cn, %i.ck
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ci, i64 noundef %i.co, i64 noundef 8) #27, !inline_history !85
  br label %_ZN5clang17VTableContextBaseD2Ev.exit

_ZN5clang17VTableContextBaseD2Ev.exit:            ; preds = %_ZN4llvm8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang20ItaniumVTableContextD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5clang20ItaniumVTableContextD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #28
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN5clang20ItaniumVTableContext20getMethodVTableIndexENS_10GlobalDeclE(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i64 %1, -8
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(33) %i.b) #27, !inline_history !88
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %1, 7
  %i.i = and i64 %i.g, -8                         ; 2 uses
  %i.j = or disjoint i64 %i.i, %i.h               ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !79, !noalias !89 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !98, !noalias !89 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !76, !noalias !89 ; 4 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = add i32 %i.p, -1                         ; 2 uses
  %i.s = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.t = lshr i64 %i.s, 31
  %i.u = xor i64 %i.t, %i.s
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.r, %i.v                       ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = lshr i64 %i.x, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !16, !noalias !99
  %i.ab = and i32 %i.w, 31
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !100

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %i.ae = phi i64 [ %i.al, %bb.c ], [ %i.x, %bb.b ]
  %.01823.i.i.i.i = phi i32 [ %i.ak, %bb.c ], [ %i.w, %bb.b ]
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.ae ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.af, align 8, !tbaa !49, !noalias !99
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !16, !noalias !99
  %i.ag = icmp eq i64 %i.j, %.sroa.0.0.copyload.i.i.i.i
  %i.ah = icmp eq i32 %2, %.sroa.2.0.copyload.i.i.i.i
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %i.ai, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E4findERKS3_.exit.loopexit, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aj = add nuw i32 %.01823.i.i.i.i, 1
  %i.ak = and i32 %i.aj, %i.r                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !16, !noalias !99
  %i.ap = and i32 %i.ak, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !102

.loopexit.i.i:                                    ; preds = %bb.c, %bb.b, %bb.a
  %i.as = zext i32 %i.p to i64                    ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.as
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E4findERKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E4findERKS3_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = zext i32 %i.p to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E4findERKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E4findERKS3_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E4findERKS3_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E4findERKS3_.exit.loopexit ], [ %i.as, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.af, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E4findERKS3_.exit.loopexit ], [ %i.at, %.loopexit.i.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.pre-phi
  %.not = icmp eq ptr %.lcssa.sink.i.i, %i.au
  br i1 %.not, label %bb.d, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E4findERKS3_.exit15

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E4findERKS3_.exit
  %i.av = inttoptr i64 %i.i to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.ax = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.aw) #27
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ay, align 8 ; 3 uses
  %i.az = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bb = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit

bb.f:                                             ; preds = %bb.d
  %i.bc = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -5
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !103
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit

_ZNK5clang13CXXMethodDecl9getParentEv.exit:       ; preds = %bb.e, %bb.f
  %.0.i.i.i.i = phi ptr [ %i.bb, %bb.e ], [ %i.be, %bb.f ] ; 2 uses
  %i.bf = icmp eq ptr %.0.i.i.i.i, null
  %i.bg = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 -64
  %i.bh = select i1 %i.bf, ptr null, ptr %i.bg
  %i.bi = load ptr, ptr %0, align 8, !tbaa !56
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %i.bh) #27
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !79, !noalias !106 ; 2 uses
  %i.bm = load ptr, ptr %i.m, align 8, !tbaa !98, !noalias !106 ; 2 uses
  %i.bn = load i32, ptr %i.o, align 4, !tbaa !76, !noalias !106 ; 3 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.loopexit.i.i5, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang13CXXMethodDecl9getParentEv.exit
  %i.bp = add i32 %i.bn, -1                       ; 2 uses
  %i.bq = mul i64 %i.j, -4658895280553007687      ; 2 uses
  %i.br = lshr i64 %i.bq, 31
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = and i32 %i.bp, %i.bt                    ; 3 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = lshr i64 %i.bv, 5
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !16, !noalias !115
  %i.bz = and i32 %i.bu, 31
  %i.ca = lshr i32 %i.by, %i.bz
  %i.cb = trunc i32 %i.ca to i1
  br i1 %i.cb, label %.lr.ph.i.i.i.i8, label %.loopexit.i.i5, !prof !100

.lr.ph.i.i.i.i8:                                  ; preds = %bb.g, %bb.h
  %i.cc = phi i64 [ %i.cj, %bb.h ], [ %i.bv, %bb.g ]
  %.01823.i.i.i.i11 = phi i32 [ %i.ci, %bb.h ], [ %i.bu, %bb.g ]
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.cc ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i12 = load i64, ptr %i.cd, align 8, !tbaa !49, !noalias !115
  %.sroa.2.0..sroa_idx.i.i.i.i13 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.2.0.copyload.i.i.i.i14 = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i13, align 8, !tbaa !16, !noalias !115
  %i.ce = icmp eq i64 %i.j, %.sroa.0.0.copyload.i.i.i.i12
  %i.cf = icmp eq i32 %2, %.sroa.2.0.copyload.i.i.i.i14
  %i.cg = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %i.cg, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E4findERKS3_.exit15, label %bb.h, !prof !101
end_hunk_0
begin_hunk_1_@_ZL18CreateVTableLayoutRKN12_GLOBAL__N_120ItaniumVTableBuilderE:bb.a
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !11, !noalias !773
  br label %_ZN4llvm11SmallVectorImLj6EEC2ERKS1_.exit.i

_ZN4llvm11SmallVectorImLj6EEC2ERKS1_.exit.i:      ; preds = %.sink.split.i.i.i, %_ZNK12_GLOBAL__N_120ItaniumVTableBuilder19vtable_thunks_beginEv.exit
  %i.av = load ptr, ptr %5, align 8, !tbaa !8, !noalias !773
  %i.aw = load i32, ptr %i.ac, align 8, !tbaa !11, !noalias !773
  %i.ax = zext i32 %i.aw to i64
  call void @_ZN5clang12VTableLayoutC1EN4llvm11SmallVectorImLj6EEENS1_8ArrayRefINS_15VTableComponentEEENS4_ISt4pairImNS_9ThunkInfoEEEERKNS1_8DenseMapINS_13BaseSubobjectENS0_20AddressPointLocationENS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_SD_EEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.aj, ptr nofree noundef nonnull align 8 dereferenceable(64) %2, ptr %.val, i64 %i.ah, ptr %i.av, i64 %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #27, !noalias !773
  store ptr %i.aj, ptr %0, align 8, !tbaa !72, !alias.scope !773
  %i.ay = load ptr, ptr %2, align 8, !tbaa !8, !noalias !773 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ak
  br i1 %i.az, label %_ZSt11make_uniqueIN5clang12VTableLayoutEJRKN4llvm11SmallVectorImLj6EEENS2_8ArrayRefINS0_15VTableComponentEEERNS3_ISt4pairImNS0_9ThunkInfoEELj1EEERKNS2_8DenseMapINS0_13BaseSubobjectENS1_20AddressPointLocationENS2_12DenseMapInfoISG_vEENS2_6detail12DenseMapPairISG_SH_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorImLj6EEC2ERKS1_.exit.i
  call void @free(ptr noundef %i.ay) #27, !noalias !773
  br label %_ZSt11make_uniqueIN5clang12VTableLayoutEJRKN4llvm11SmallVectorImLj6EEENS2_8ArrayRefINS0_15VTableComponentEEERNS3_ISt4pairImNS0_9ThunkInfoEELj1EEERKNS2_8DenseMapINS0_13BaseSubobjectENS1_20AddressPointLocationENS2_12DenseMapInfoISG_vEENS2_6detail12DenseMapPairISG_SH_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN5clang12VTableLayoutEJRKN4llvm11SmallVectorImLj6EEENS2_8ArrayRefINS0_15VTableComponentEEERNS3_ISt4pairImNS0_9ThunkInfoEELj1EEERKNS2_8DenseMapINS0_13BaseSubobjectENS1_20AddressPointLocationENS2_12DenseMapInfoISG_vEENS2_6detail12DenseMapPairISG_SH_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZN4llvm11SmallVectorImLj6EEC2ERKS1_.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ba = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ab
  br i1 %i.bb, label %_ZN4llvm11SmallVectorISt4pairImN5clang9ThunkInfoEELj1EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt11make_uniqueIN5clang12VTableLayoutEJRKN4llvm11SmallVectorImLj6EEENS2_8ArrayRefINS0_15VTableComponentEEERNS3_ISt4pairImNS0_9ThunkInfoEELj1EEERKNS2_8DenseMapINS0_13BaseSubobjectENS1_20AddressPointLocationENS2_12DenseMapInfoISG_vEENS2_6detail12DenseMapPairISG_SH_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @free(ptr noundef %i.ba) #27
  br label %_ZN4llvm11SmallVectorISt4pairImN5clang9ThunkInfoEELj1EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairImN5clang9ThunkInfoEELj1EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5clang12VTableLayoutEJRKN4llvm11SmallVectorImLj6EEENS2_8ArrayRefINS0_15VTableComponentEEERNS3_ISt4pairImNS0_9ThunkInfoEELj1EEERKNS2_8DenseMapINS0_13BaseSubobjectENS1_20AddressPointLocationENS2_12DenseMapInfoISG_vEENS2_6detail12DenseMapPairISG_SH_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang13CXXRecordDecl12vbases_beginEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !254  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8 ; 3 uses
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 1
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.e, i64 %i.f, i64 0 ; 3 uses
  %i.g = icmp ugt i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 2
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  %i.i = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, -4
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 18624
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !263  ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2632 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !266  ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = add i64 %i.o, 24                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 2640
  %i.r = load i64, ptr %i.q, align 8, !tbaa !278
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %bb.f, !prof !101

bb.e:                                             ; preds = %bb.d
  %i.t = inttoptr i64 %i.p to ptr
  store ptr %i.t, ptr %i.m, align 8, !tbaa !266
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.u to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.o, %bb.e ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.n, %bb.e ] ; 3 uses
  store ptr %i.l, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !279
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !282
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.b, ptr %i.w, align 8, !tbaa !283
  %i.x = or i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i, 4
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.y = ptrtoint ptr %i.b to i64
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i

_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.y, %bb.h ], [ %i.x, %bb.g ]
  %i.z = or i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.z, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i, %bb.a
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i = phi i64 [ %i.z, %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %bb.a ] ; 2 uses
  %i.aa = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  %i.ab = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i, -6 ; 2 uses
  %.not.not14.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  %.not.not.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, %.not.not14.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !282
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !279 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !284 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, %i.ah
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ah, ptr %i.ad, align 8, !tbaa !282
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !56
  %i.aj = getelementptr i8, ptr %i.ai, i64 152, !nosanitize !185
  %i.ak = load ptr, ptr %i.aj, align 8, !nosanitize !185
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull %i.b) #27, !inline_history !776
  br label %_ZNK5clang13CXXRecordDecl4dataEv.exit

_ZNK5clang13CXXRecordDecl4dataEv.exit:            ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !288 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !49
  %i.ap = trunc i8 %i.ao to i1
  br i1 %i.ap, label %bb.l, label %_ZNK5clang13LazyOffsetPtrINS_16CXXBaseSpecifierEmXadL_ZNS_17ExternalASTSource28GetExternalCXXBaseSpecifiersEmEEE3getEPS2_.exit.i

_ZNK5clang13LazyOffsetPtrINS_16CXXBaseSpecifierEmXadL_ZNS_17ExternalASTSource28GetExternalCXXBaseSpecifiersEmEEE3getEPS2_.exit.i: ; preds = %_ZNK5clang13CXXRecordDecl4dataEv.exit
  %.pre.i.i = load ptr, ptr %i.an, align 8, !tbaa !777
  br label %_ZNK5clang13CXXRecordDecl14DefinitionData9getVBasesEv.exit

bb.l:                                             ; preds = %_ZNK5clang13CXXRecordDecl4dataEv.exit
  %i.aq = tail call noundef ptr @_ZNK5clang13CXXRecordDecl14DefinitionData17getVBasesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(104) %i.am) #27
  br label %_ZNK5clang13CXXRecordDecl14DefinitionData9getVBasesEv.exit

_ZNK5clang13CXXRecordDecl14DefinitionData9getVBasesEv.exit: ; preds = %_ZNK5clang13LazyOffsetPtrINS_16CXXBaseSpecifierEmXadL_ZNS_17ExternalASTSource28GetExternalCXXBaseSpecifiersEmEEE3getEPS2_.exit.i, %bb.l
  %.0.i = phi ptr [ %i.aq, %bb.l ], [ %.pre.i.i, %_ZNK5clang13LazyOffsetPtrINS_16CXXBaseSpecifierEmXadL_ZNS_17ExternalASTSource28GetExternalCXXBaseSpecifiersEmEEE3getEPS2_.exit.i ]
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_120ItaniumVTableBuilderD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(928) dereferenceable(928) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorImLj6EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #27
  br label %_ZN4llvm11SmallVectorImLj6EED2Ev.exit

_ZN4llvm11SmallVectorImLj6EED2Ev.exit:            ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.f = load i8, ptr %i.e, align 8, !tbaa !162, !range !184, !noundef !185
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorImLj6EED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !159
  tail call void @free(ptr noundef %i.i) #27
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZN4llvm11SmallVectorImLj6EED2Ev.exit, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 804 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !80   ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !84
  %i.q = zext i32 %i.l to i64
  %i.r = add nuw nsw i64 %i.q, 31
  %i.s = lshr i64 %i.r, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !16   ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.u, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.v = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.d

bb.d:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.u, %.lr.ph.i.i ], [ %i.af, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.w = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.x = or disjoint i32 %i.w, %i.v
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !8  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.ab) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ae = add i32 %.0.i3.i.i, -1
  %i.af = and i32 %i.ae, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !86

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.s
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !87

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.k, align 4, !tbaa !80 ; 2 uses
  %i.ag = icmp eq i32 %.pr.i, 0
  br i1 %i.ag, label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.ai = zext i32 %.pr.i to i64                  ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 80
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ah, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !767 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZN4llvm8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !760
  %i.at = zext i32 %i.ap to i64                   ; 2 uses
  %i.au = shl nuw nsw i64 %i.at, 6
  %i.av = add nuw nsw i64 %i.at, 31
  %i.aw = lshr i64 %i.av, 3
  %i.ax = and i64 %i.aw, 1073741820
  %i.ay = add nuw nsw i64 %i.ax, %i.au
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.as, i64 noundef %i.ay, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEED2Ev.exit

_ZN4llvm8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !76 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_ZN4llvm8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEED2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !79
  %i.be = zext i32 %i.ba to i64                   ; 2 uses
  %i.bf = mul nuw nsw i64 %i.be, 24
  %i.bg = add nuw nsw i64 %i.be, 31
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 1073741820
  %i.bj = add nuw nsw i64 %i.bi, %i.bf
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bd, i64 noundef %i.bj, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEED2Ev.exit

_ZN4llvm8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEED2Ev.exit, %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !779 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEED2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !780
  %i.bp = zext i32 %i.bl to i64                   ; 2 uses
  %i.bq = shl nuw nsw i64 %i.bp, 5
  %i.br = add nuw nsw i64 %i.bp, 31
  %i.bs = lshr i64 %i.br, 3
  %i.bt = and i64 %i.bs, 1073741820
  %i.bu = add nuw nsw i64 %i.bt, %i.bq
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bo, i64 noundef %i.bu, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEED2Ev.exit, %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !25 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %_ZN4llvm8DenseMapIN5clang13BaseSubobjectENS1_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !17
  %i.ca = zext i32 %i.bw to i64                   ; 2 uses
  %i.cb = mul nuw nsw i64 %i.ca, 24
  %i.cc = add nuw nsw i64 %i.ca, 31
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = and i64 %i.cd, 1073741820
  %i.cf = add nuw nsw i64 %i.ce, %i.cb
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bz, i64 noundef %i.cf, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIN5clang13BaseSubobjectENS1_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang13BaseSubobjectENS1_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, %bb.j
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !8  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZN4llvm11SmallVectorIN5clang15VTableComponentELj64EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm8DenseMapIN5clang13BaseSubobjectENS1_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit
  tail call void @free(ptr noundef %i.ch) #27
  br label %_ZN4llvm11SmallVectorIN5clang15VTableComponentELj64EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang15VTableComponentELj64EED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIN5clang13BaseSubobjectENS1_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !168 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorIN5clang15VTableComponentELj64EED2Ev.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !163
  %i.cp = zext i32 %i.cl to i64                   ; 2 uses
  %i.cq = shl nuw nsw i64 %i.cp, 4
  %i.cr = add nuw nsw i64 %i.cp, 31
  %i.cs = lshr i64 %i.cr, 3
  %i.ct = and i64 %i.cs, 1073741820
  %i.cu = add nuw nsw i64 %i.ct, %i.cq
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.co, i64 noundef %i.cu, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN5clang15VTableComponentELj64EED2Ev.exit, %bb.l
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %.val2.i.i = load i32, ptr %i.cw, align 4, !tbaa !781 ; 2 uses
  %i.cx = icmp eq i32 %.val2.i.i, 0
  br i1 %i.cx, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit, label %.lr.ph11.preheader.i.i

.lr.ph11.preheader.i.i:                           ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit
  %.val4.i.i = load ptr, ptr %i.cv, align 8, !tbaa !782
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val3.i.i = load ptr, ptr %i.cy, align 8, !tbaa !783
  %i.cz = zext i32 %.val2.i.i to i64
  %i.da = add nuw nsw i64 %i.cz, 31
  %i.db = lshr i64 %i.da, 5
  br label %.lr.ph11.i.i

.lr.ph11.i.i:                                     ; preds = %._crit_edge.i.i6, %.lr.ph11.preheader.i.i
  %indvars.iv.i.i2 = phi i64 [ 0, %.lr.ph11.preheader.i.i ], [ %indvars.iv.next.i.i7, %._crit_edge.i.i6 ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.val3.i.i, i64 %indvars.iv.i.i2
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !16 ; 2 uses
  %.not11.i6.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not11.i6.i.i, label %._crit_edge.i.i6, label %.lr.ph.i.i3

.lr.ph.i.i3:                                      ; preds = %.lr.ph11.i.i
  %indvars.iv.tr.i.i4 = trunc nuw i64 %indvars.iv.i.i2 to i32
  %i.de = shl nuw i32 %indvars.iv.tr.i.i4, 5
  br label %bb.m

bb.m:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i3
  %.0.i7.i.i = phi i32 [ %i.dd, %.lr.ph.i.i3 ], [ %i.do, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.df = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i7.i.i, i1 true)
  %i.dg = or disjoint i32 %i.df, %i.de
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [280 x i8], ptr %.val4.i.i, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !8  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef %i.dk) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.n, %bb.m
  %i.dn = add i32 %.0.i7.i.i, -1
  %i.do = and i32 %i.dn, %.0.i7.i.i               ; 2 uses
  %.not11.i.i.i5 = icmp eq i32 %i.do, 0
  br i1 %.not11.i.i.i5, label %._crit_edge.i.i6, label %bb.m, !llvm.loop !784

._crit_edge.i.i6:                                 ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph11.i.i
  %indvars.iv.next.i.i7 = add nuw nsw i64 %indvars.iv.i.i2, 1 ; 2 uses
  %.not.i.i.i8 = icmp eq i64 %indvars.iv.next.i.i7, %i.db
  br i1 %.not.i.i.i8, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E10destroyAllEv.exit.i, label %.lr.ph11.i.i, !llvm.loop !785

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i6
  %.pr.i9 = load i32, ptr %i.cw, align 4, !tbaa !781 ; 2 uses
  %i.dp = icmp eq i32 %.pr.i9, 0
  br i1 %i.dp, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E10destroyAllEv.exit.i
  %i.dq = load ptr, ptr %i.cv, align 8, !tbaa !782
  %i.dr = zext i32 %.pr.i9 to i64                 ; 2 uses
  %i.ds = mul nuw nsw i64 %i.dr, 280
  %i.dt = add nuw nsw i64 %i.dr, 31
  %i.du = lshr i64 %i.dt, 3
  %i.dv = and i64 %i.du, 1073741820
  %i.dw = add nuw nsw i64 %i.dv, %i.ds
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dq, i64 noundef %i.dw, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E10destroyAllEv.exit.i, %bb.o
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 108
  %.val1 = load i32, ptr %i.dx, align 4, !tbaa !786 ; 2 uses
  %i.dy = icmp eq i32 %.val1, 0
  br i1 %i.dy, label %_ZN12_GLOBAL__N_115FinalOverridersD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val = load ptr, ptr %i.dz, align 8
  %i.ea = zext i32 %.val1 to i64                  ; 2 uses
  %i.eb = mul nuw nsw i64 %i.ea, 40
  %i.ec = add nuw nsw i64 %i.ea, 31
  %i.ed = lshr i64 %i.ec, 3
  %i.ee = and i64 %i.ed, 1073741820
  %i.ef = add nuw nsw i64 %i.ee, %i.eb
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %.val, i64 noundef %i.ef, i64 noundef 8) #27
  br label %_ZN12_GLOBAL__N_115FinalOverridersD2Ev.exit

_ZN12_GLOBAL__N_115FinalOverridersD2Ev.exit:      ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit, %bb.p
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang20ItaniumVTableContext30createConstructionVTableLayoutEPKNS_13CXXRecordDeclENS_9CharUnitsEbS3_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.84") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull %2, i64 %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.(anonymous namespace)::ItaniumVTableBuilder", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call fastcc void @_ZN12_GLOBAL__N_120ItaniumVTableBuilderC2ERN5clang20ItaniumVTableContextEPKNS1_13CXXRecordDeclENS1_9CharUnitsEbS6_(ptr noundef nonnull align 8 dereferenceable(928) %6, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef %2, i64 %3, i1 noundef zeroext %4, ptr noundef %5)
  call fastcc void @_ZL18CreateVTableLayoutRKN12_GLOBAL__N_120ItaniumVTableBuilderE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(928) %6)
  call fastcc void @_ZN12_GLOBAL__N_120ItaniumVTableBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang22MicrosoftVTableContext18computeVTablePathsEbPKNS_13CXXRecordDeclERN4llvm11SmallVectorISt10unique_ptrINS_8VPtrInfoESt14default_deleteIS7_EELj2EEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector.985", align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::unique_ptr.485", align 8 ; 9 uses
  %6 = alloca %"class.llvm::SmallPtrSet", align 8 ; 17 uses
  %7 = alloca %"class.std::unique_ptr.485", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !787, !nonnull !185, !align !381
  %i.e = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK5clang10ASTContext18getASTRecordLayoutEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.d, ptr noundef %2) #27 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !798  ; 3 uses
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !805
  %i.j = icmp sgt i64 %i.i, -1
  br i1 %i.j, label %_ZNK5clang15ASTRecordLayout11hasOwnVBPtrEv.exit, label %_ZNK5clang15ASTRecordLayout11hasOwnVBPtrEv.exit.thread

_ZNK5clang15ASTRecordLayout11hasOwnVBPtrEv.exit:  ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !806
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.d, label %_ZNK5clang15ASTRecordLayout11hasOwnVBPtrEv.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.n = load i8, ptr %i.m, align 8
  %i.o = trunc i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %_ZNK5clang15ASTRecordLayout11hasOwnVBPtrEv.exit.thread

bb.d:                                             ; preds = %bb.c, %_ZNK5clang15ASTRecordLayout11hasOwnVBPtrEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812)
  %i.p = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #30, !noalias !812 ; 18 uses
  store ptr %2, ptr %i.p, align 8, !tbaa !815, !noalias !812
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !822, !noalias !812
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %i.r, align 8, !tbaa !805, !noalias !812
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %i.t, ptr %i.s, align 8, !tbaa !8, !noalias !812
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i32 0, ptr %i.u, align 8, !tbaa !11, !noalias !812
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  store i32 1, ptr %i.v, align 4, !tbaa !12, !noalias !812
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %2, ptr %i.w, align 8, !tbaa !823, !noalias !812
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store ptr %i.y, ptr %i.x, align 8, !tbaa !8, !noalias !812
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store i32 0, ptr %i.z, align 8, !tbaa !11, !noalias !812
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 68
  store i32 1, ptr %i.aa, align 4, !tbaa !12, !noalias !812
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !8, !noalias !812
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store i32 0, ptr %i.ad, align 8, !tbaa !11, !noalias !812
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 92
  store i32 1, ptr %i.ae, align 4, !tbaa !12, !noalias !812
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !805, !noalias !812
  store ptr %i.p, ptr %5, align 8, !tbaa !824, !alias.scope !812
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !11 ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !12
  %.not.i.i.not.i = icmp ult i32 %i.ah, %i.al
  %.pre3.i = load ptr, ptr %3, align 8, !tbaa !8  ; 4 uses
  br i1 %.not.i.i.not.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE9push_backEOS6_.exit, label %bb.e, !prof !101

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.pre3.i, i64 %i.ai
  %i.an = icmp uge ptr %5, %.pre3.i
  %i.ao = icmp ult ptr %5, %i.am
  %spec.select.i.i.i.i.i = and i1 %i.an, %i.ao
  br i1 %spec.select.i.i.i.i.i, label %bb.f, label %.critedge.i.i.i, !prof !826

bb.f:                                             ; preds = %bb.e
  %i.ap = ptrtoint ptr %5 to i64
  %i.aq = ptrtoint ptr %.pre3.i to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.aj)
  %i.as = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.ar
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE9push_backEOS6_.exit

.critedge.i.i.i:                                  ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.aj)
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !8
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE9push_backEOS6_.exit

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE9push_backEOS6_.exit: ; preds = %bb.d, %bb.f, %.critedge.i.i.i
  %i.au = phi ptr [ %.pre3.i, %bb.d ], [ %i.as, %bb.f ], [ %.pre.i, %.critedge.i.i.i ]
  %.016.i.i.i = phi ptr [ %5, %bb.d ], [ %i.at, %bb.f ], [ %5, %.critedge.i.i.i ] ; 2 uses
  %i.av = load i32, ptr %i.ag, align 8, !tbaa !11 ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.aw
  %i.ay = load i64, ptr %.016.i.i.i, align 8, !tbaa !824
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !824
  store ptr null, ptr %.016.i.i.i, align 8, !tbaa !824
  %i.az = add i32 %i.av, 1
  store i32 %i.az, ptr %i.ag, align 8, !tbaa !11
  %i.ba = load ptr, ptr %5, align 8, !tbaa !824   ; 8 uses
  %.not.i66 = icmp eq ptr %i.ba, null
  br i1 %.not.i66, label %_ZNSt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE9push_backEOS6_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !8  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZN4llvm11SmallVectorIPKN5clang13CXXRecordDeclELj1EED2Ev.exit.i.i.i, label %bb.h
end_hunk_1
begin_hunk_2_@_ZNK5clang13CXXRecordDecl14isDynamicClassEv:bb.a
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !282
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !279 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !284 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, %i.ah
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ah, ptr %i.ad, align 8, !tbaa !282
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !56
  %i.aj = getelementptr i8, ptr %i.ai, i64 152, !nosanitize !185
  %i.ak = load ptr, ptr %i.aj, align 8, !nosanitize !185
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull %i.b) #27, !inline_history !776
  br label %_ZNK5clang13CXXRecordDecl4dataEv.exit

_ZNK5clang13CXXRecordDecl4dataEv.exit:            ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !288
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = and i64 %i.an, 1024
  %.not = icmp eq i64 %i.ao, 0
  br i1 %.not, label %bb.l, label %bb.w

bb.l:                                             ; preds = %_ZNK5clang13CXXRecordDecl4dataEv.exit
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !254 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i1 = load i64, ptr %i.aq, align 8 ; 3 uses
  %i.ar = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i1, 1
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i1, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i2 = select i1 %i.as, i64 %i.at, i64 0 ; 3 uses
  %i.au = icmp ugt i64 %spec.select.i.i.i.i.i.i.i.i.i.i2, 3
  br i1 %i.au, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.av = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i2, 2
  %.not.i.i.i.i.i.i.i.i8 = icmp eq i64 %i.av, 0
  %i.aw = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i2, -4
  %i.ax = inttoptr i64 %i.aw to ptr               ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i8, label %_ZNK5clang13CXXRecordDecl4dataEv.exit15, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 18624
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !263 ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i9 = icmp eq ptr %i.az, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i9, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 2632 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !266 ; 2 uses
  %i.bc = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bd = add i64 %i.bc, 24                       ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 2640
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !278
  %i.bg = icmp ult i64 %i.bd, %i.bf
  br i1 %i.bg, label %bb.p, label %bb.q, !prof !101

bb.p:                                             ; preds = %bb.o
  %i.bh = inttoptr i64 %i.bd to ptr
  store ptr %i.bh, ptr %i.ba, align 8, !tbaa !266
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bi = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ba, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i.i10 = ptrtoint ptr %i.bi to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pre-phi.i.i.i.i.i.i.i.i.i.i11 = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i10, %bb.q ], [ %i.bc, %bb.p ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i12 = phi ptr [ %i.bi, %bb.q ], [ %i.bb, %bb.p ] ; 3 uses
  store ptr %i.az, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i12, align 8, !tbaa !279
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i12, i64 8
  store i32 0, ptr %i.bj, align 8, !tbaa !282
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i12, i64 16
  store ptr %i.ap, ptr %i.bk, align 8, !tbaa !283
  %i.bl = or i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i11, 4
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i13

bb.s:                                             ; preds = %bb.n
  %i.bm = ptrtoint ptr %i.ap to i64
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i13

_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i13: ; preds = %bb.s, %bb.r
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i14 = phi i64 [ %i.bm, %bb.s ], [ %i.bl, %bb.r ]
  %i.bn = or i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i14, 1 ; 2 uses
  store i64 %i.bn, ptr %i.aq, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i13, %bb.l
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i3 = phi i64 [ %i.bn, %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i13 ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i1, %bb.l ] ; 2 uses
  %i.bo = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i3, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i4 = icmp eq i64 %i.bo, 0
  %i.bp = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i3, -6 ; 2 uses
  %.not.not14.i.i.i.i.i.i.i.i.i5 = icmp eq i64 %i.bp, 0
  %.not.not.i.i.i.i.i.i.i.i.i6 = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i4, %.not.not14.i.i.i.i.i.i.i.i.i5
  br i1 %.not.not.i.i.i.i.i.i.i.i.i6, label %_ZNK5clang13CXXRecordDecl4dataEv.exit15, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !282
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !279 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !284 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i7 = icmp eq i32 %i.bs, %i.bv
  br i1 %.not12.i.i.i.i.i.i.i.i.i7, label %_ZNK5clang13CXXRecordDecl4dataEv.exit15, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.bv, ptr %i.br, align 8, !tbaa !282
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !56
  %i.bx = getelementptr i8, ptr %i.bw, i64 152, !nosanitize !185
  %i.by = load ptr, ptr %i.bx, align 8, !nosanitize !185
  tail call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull %i.ap) #27, !inline_history !776
  br label %_ZNK5clang13CXXRecordDecl4dataEv.exit15

_ZNK5clang13CXXRecordDecl4dataEv.exit15:          ; preds = %bb.m, %bb.t, %bb.u, %bb.v
  %i.bz = load ptr, ptr %i.al, align 8, !tbaa !288
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 20
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !315
  %i.cc = icmp ne i32 %i.cb, 0
  br label %bb.w

bb.w:                                             ; preds = %_ZNK5clang13CXXRecordDecl4dataEv.exit15, %_ZNK5clang13CXXRecordDecl4dataEv.exit
  %i.cd = phi i1 [ true, %_ZNK5clang13CXXRecordDecl4dataEv.exit ], [ %i.cc, %_ZNK5clang13CXXRecordDecl4dataEv.exit15 ]
  ret i1 %i.cd
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN5clang22MicrosoftVTableContext17enumerateVBTablesEPKNS_13CXXRecordDeclE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang22MicrosoftVTableContext32computeVBTableRelatedInformationEPKNS_13CXXRecordDeclE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN5clang22MicrosoftVTableContext15getVFPtrOffsetsEPKNS_13CXXRecordDeclE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !186
  %i.b = load ptr, ptr %0, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) #27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSJ_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !830
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang22MicrosoftVTableContextD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5clang22MicrosoftVTableContextE, i64 16), ptr %0, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.c = load i32, ptr %i.b, align 4, !tbaa !874  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS1_15VirtualBaseInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !875
  %i.f = zext i32 %i.c to i64                     ; 2 uses
  %i.g = shl nuw nsw i64 %i.f, 4
  %i.h = add nuw nsw i64 %i.f, 31
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741820
  %i.k = add nuw nsw i64 %i.j, %i.g
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.e, i64 noundef %i.k, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS1_15VirtualBaseInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS1_15VirtualBaseInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !876  ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS2_9CharUnitsEESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS1_15VirtualBaseInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEED2Ev.exit
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !877
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !878
  %i.s = zext i32 %i.n to i64
  %i.t = add nuw nsw i64 %i.s, 31
  %i.u = lshr i64 %i.t, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !16   ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.w, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.x = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.w, %.lr.ph.i.i ], [ %i.af, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.y = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.z = or disjoint i32 %i.y, %i.x
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIKN5clang12VTableLayoutEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIKN5clang12VTableLayoutEEclEPS2_.exit.i.i.i.i: ; preds = %bb.c
  tail call void @_ZN5clang12VTableLayoutD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.ad) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 152) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIKN5clang12VTableLayoutEEclEPS2_.exit.i.i.i.i, %bb.c
  %i.ae = add i32 %.0.i3.i.i, -1
  %i.af = and i32 %i.ae, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.c, !llvm.loop !879

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.u
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !880

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.m, align 4, !tbaa !876 ; 2 uses
  %i.ag = icmp eq i32 %.pr.i, 0
  br i1 %i.ag, label %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS2_9CharUnitsEESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E10destroyAllEv.exit.i
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !877
  %i.ai = zext i32 %.pr.i to i64                  ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ah, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS2_9CharUnitsEESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEED2Ev.exit

_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS2_9CharUnitsEESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS1_15VirtualBaseInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E10destroyAllEv.exit.i, %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !881 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS5_INS1_8VPtrInfoESt14default_deleteIS7_EELj2EEES8_ISB_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS2_9CharUnitsEESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEED2Ev.exit
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !882
  %i.at = zext i32 %i.aq to i64                   ; 2 uses
  %i.au = shl nuw nsw i64 %i.at, 4
  %i.av = add nuw nsw i64 %i.at, 31
  %i.aw = lshr i64 %i.av, 3
  %i.ax = and i64 %i.aw, 1073741820
  %i.ay = add nuw nsw i64 %i.ax, %i.au
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.as, i64 noundef %i.ay, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS5_INS1_8VPtrInfoESt14default_deleteIS7_EELj2EEES8_ISB_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS5_INS1_8VPtrInfoESt14default_deleteIS7_EELj2EEES8_ISB_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS2_9CharUnitsEESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEED2Ev.exit, %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !883 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_ZN4llvm8DenseMapIN5clang10GlobalDeclENS1_21MethodVFTableLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS5_INS1_8VPtrInfoESt14default_deleteIS7_EELj2EEES8_ISB_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEED2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !884
  %i.be = zext i32 %i.ba to i64                   ; 2 uses
  %i.bf = mul nuw nsw i64 %i.be, 48
  %i.bg = add nuw nsw i64 %i.be, 31
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 1073741820
  %i.bj = add nuw nsw i64 %i.bi, %i.bf
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bd, i64 noundef %i.bj, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIN5clang10GlobalDeclENS1_21MethodVFTableLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang10GlobalDeclENS1_21MethodVFTableLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS5_INS1_8VPtrInfoESt14default_deleteIS7_EELj2EEES8_ISB_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEED2Ev.exit, %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5clang17VTableContextBaseE, i64 16), ptr %0, align 8, !tbaa !56
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !80 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZN5clang17VTableContextBaseD2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm8DenseMapIN5clang10GlobalDeclENS1_21MethodVFTableLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !83
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !84
  %i.br = zext i32 %i.bm to i64
  %i.bs = add nuw nsw i64 %i.br, 31
  %i.bt = lshr i64 %i.bs, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i.i.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !16 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.bw = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.g

bb.g:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.bv, %.lr.ph.i.i.i ], [ %i.cg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.bx = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.by = or disjoint i32 %i.bx, %i.bw
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [80 x i8], ptr %i.bo, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !8  ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef %i.cc) #27, !inline_history !85
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.cf = add i32 %.0.i3.i.i.i, -1
  %i.cg = and i32 %i.cf, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.g, !llvm.loop !86

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i1 = icmp eq i64 %indvars.iv.next.i.i.i, %i.bt
  br i1 %.not.i.i.i.i1, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !87

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.bl, align 4, !tbaa !80 ; 2 uses
  %i.ch = icmp eq i32 %.pr.i.i, 0
  br i1 %i.ch, label %_ZN5clang17VTableContextBaseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i.i
  %i.ci = load ptr, ptr %i.bk, align 8, !tbaa !83
  %i.cj = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.ck = mul nuw nsw i64 %i.cj, 80
  %i.cl = add nuw nsw i64 %i.cj, 31
  %i.cm = lshr i64 %i.cl, 3
  %i.cn = and i64 %i.cm, 1073741820
  %i.co = add nuw nsw i64 %i.cn, %i.ck
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ci, i64 noundef %i.co, i64 noundef 8) #27, !inline_history !85
  br label %_ZN5clang17VTableContextBaseD2Ev.exit

_ZN5clang17VTableContextBaseD2Ev.exit:            ; preds = %_ZN4llvm8DenseMapIN5clang10GlobalDeclENS1_21MethodVFTableLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang22MicrosoftVTableContextD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5clang22MicrosoftVTableContextD1Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang22MicrosoftVTableContext31computeVTableRelatedInformationEPKNS_13CXXRecordDeclE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector", align 8 ; 9 uses
  %3 = alloca %"class.llvm::DenseMapIterator.514", align 8 ; 7 uses
  %4 = alloca %"class.llvm::DenseMapIterator.514", align 8 ; 7 uses
  %5 = alloca %class.anon.930, align 8            ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"union.clang::ThisAdjustment::VirtualAdjustment", align 8 ; 4 uses
  %7 = alloca %"union.clang::ThisAdjustment::VirtualAdjustment", align 8 ; 4 uses
  %8 = alloca %class.anon.930, align 8            ; 4 uses
  %9 = alloca %"class.llvm::format_object.872", align 8 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"struct.clang::ThunkInfo", align 8 ; 10 uses
  %12 = alloca %"struct.clang::ThunkInfo", align 8 ; 10 uses
  %13 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %14 = alloca %"class.std::map.902", align 8     ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %16 = alloca %"struct.std::pair.912", align 8   ; 11 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %17 = alloca %"class.llvm::SmallVector.596", align 8 ; 12 uses
  %18 = alloca %"class.llvm::format_object.872", align 8 ; 5 uses
  %19 = alloca %"class.llvm::SmallSetVector", align 8 ; 10 uses
  %20 = alloca %"class.clang::GlobalDecl", align 8 ; 5 uses
  %21 = alloca %"class.clang::GlobalDecl", align 8 ; 7 uses
  %22 = alloca %"class.std::set.1035", align 8    ; 8 uses
  %23 = alloca %"class.std::set.1035", align 8    ; 7 uses
  %24 = alloca %"class.(anonymous namespace)::FinalOverriders", align 8 ; 6 uses
  %25 = alloca %"struct.(anonymous namespace)::BaseOffset", align 8 ; 5 uses
  %26 = alloca %"class.std::set.1035", align 8    ; 7 uses
  %27 = alloca %"class.std::set.1035", align 8    ; 7 uses
  %28 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 14 uses
  %29 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 14 uses
  %30 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 14 uses
  %31 = alloca %"class.std::__cxx11::list.1006", align 8 ; 11 uses
  %32 = alloca %"class.llvm::SetVector.996", align 8 ; 15 uses
  %33 = alloca %"class.std::__cxx11::list.1006", align 8 ; 25 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %34 = alloca %"class.llvm::DenseMap", align 8   ; 6 uses
  %35 = alloca %"class.llvm::DenseMap.104", align 8 ; 15 uses
  %36 = alloca %"class.(anonymous namespace)::VFTableBuilder", align 8 ; 32 uses
  %37 = alloca %"struct.std::pair.66", align 8    ; 5 uses
  %38 = alloca %"class.llvm::SmallVector.512", align 8 ; 9 uses
  %39 = alloca %"class.llvm::SmallVector", align 8 ; 8 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !186
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !882, !noalias !885
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !890, !noalias !885 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.i = load i32, ptr %i.h, align 4, !tbaa !881, !noalias !885 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %i.i, -1                         ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = mul i64 %i.l, -4658895280553007687       ; 2 uses
  %i.n = lshr i64 %i.m, 31
  %i.o = xor i64 %i.n, %i.m
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.k, %i.p                       ; 3 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = lshr i64 %i.r, 5
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !16
  %i.v = and i32 %i.q, 31
  %i.w = lshr i32 %i.u, %i.v
  %i.x = trunc i32 %i.w to i1
  br i1 %i.x, label %.lr.ph.i.i.i, label %.loopexit, !prof !100

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.y = phi i64 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %.017.i.i.i = phi i32 [ %i.ad, %bb.c ], [ %i.q, %bb.b ]
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !186
  %i.ab = icmp eq ptr %1, %i.aa
  br i1 %i.ab, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E5countES5_.exit, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = add nuw i32 %.017.i.i.i, 1
  %i.ad = and i32 %i.ac, %i.k                     ; 3 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = lshr i64 %i.ae, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !16
  %i.ai = and i32 %i.ad, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph.i.i.i, label %.loopexit, !prof !102

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false)
  %i.al = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30, !noalias !891 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.am, ptr %i.al, align 8, !tbaa !8, !noalias !891
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  store i32 0, ptr %i.an, align 8, !tbaa !11, !noalias !891
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 2, ptr %i.ao, align 4, !tbaa !12, !noalias !891
  tail call void @_ZN5clang22MicrosoftVTableContext18computeVTablePathsEbPKNS_13CXXRecordDeclERN4llvm11SmallVectorISt10unique_ptrINS_8VPtrInfoESt14default_deleteIS7_EELj2EEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext false, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %i.al)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !787, !nonnull !185, !align !381 ; 6 uses
  %i.ar = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK5clang10ASTContext18getASTRecordLayoutEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.aq, ptr noundef %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %32, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #27
  %i.as = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store ptr %33, ptr %i.as, align 8, !tbaa !894
  store ptr %33, ptr %33, align 8, !tbaa !897
  %i.at = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 5 uses
  store i64 0, ptr %i.at, align 8, !tbaa !898
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !8  ; 2 uses
  %i.av = load i32, ptr %i.an, align 8, !tbaa !11 ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %.idx.i = shl nuw nsw i64 %i.aw, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i
  %.not304.i = icmp eq i32 %i.av, 0
  br i1 %.not304.i, label %_ZNSt7__cxx1110_List_baseIN4llvm9SetVectorIN5clang13BaseSubobjectESt6vectorIS4_SaIS4_EENS1_8DenseSetIS4_NS1_12DenseMapInfoIS4_vEEEELj0EEESaISC_EED2Ev.exit.i.thread, label %.lr.ph307.i

_ZNSt7__cxx1110_List_baseIN4llvm9SetVectorIN5clang13BaseSubobjectESt6vectorIS4_SaIS4_EENS1_8DenseSetIS4_NS1_12DenseMapInfoIS4_vEEEELj0EEESaISC_EED2Ev.exit.i.thread: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  br label %_ZNSt6vectorIN5clang13BaseSubobjectESaIS1_EED2Ev.exit.i.i

.lr.ph307.i:                                      ; preds = %.loopexit
  %i.ay = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %32, i64 20 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %32, i64 32 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 12 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 13 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 8 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %23, i64 40 ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5clang22MicrosoftVTableContext31computeVTableRelatedInformationEPKNS_13CXXRecordDeclE:bb.a
  br i1 %i.cyr, label %.lr.ph.i176, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i, !prof !102, !llvm.loop !1191

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i: ; preds = %bb.nz, %.lr.ph.i176, %.loopexit.i._ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i_crit_edge, %bb.ny
  %i.cys = phi ptr [ %.pre, %.loopexit.i._ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i_crit_edge ], [ %i.cxq, %bb.ny ], [ %i.cxq, %.lr.ph.i176 ], [ %i.cxq, %bb.nz ]
  %i.cyt = phi ptr [ %i.cvz, %.loopexit.i._ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i_crit_edge ], [ %i.cxl, %bb.ny ], [ %i.cxl, %.lr.ph.i176 ], [ %i.cxl, %bb.nz ]
  %i.cyu = phi ptr [ %i.cwa, %.loopexit.i._ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i_crit_edge ], [ %i.cxm, %bb.ny ], [ %i.cxm, %.lr.ph.i176 ], [ %i.cxm, %bb.nz ]
  %i.cyv = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i._ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i_crit_edge ], [ %i.cxy, %bb.ny ], [ %i.cyl, %bb.nz ], [ %i.cyf, %.lr.ph.i176 ] ; 7 uses
  %i.cyw = ptrtoint ptr %i.cyv to i64
  %i.cyx = ptrtoint ptr %i.cyt to i64
  %i.cyy = sub i64 %i.cyw, %i.cyx
  %i.cyz = sdiv exact i64 %i.cyy, 80              ; 2 uses
  %i.cza = trunc i64 %i.cyz to i32
  %i.czb = and i32 %i.cza, 31
  %i.czc = shl nuw i32 1, %i.czb
  %i.czd = lshr i64 %i.cyz, 5
  %i.cze = getelementptr inbounds nuw [4 x i8], ptr %i.cyu, i64 %i.czd ; 2 uses
  %i.czf = load i32, ptr %i.cze, align 4, !tbaa !16, !noalias !1190
  %i.czg = or i32 %i.czc, %i.czf
  store i32 %i.czg, ptr %i.cze, align 4, !tbaa !16, !noalias !1190
  %i.czh = load i32, ptr %i.buj, align 8, !tbaa !243, !noalias !1190
  %i.czi = add i32 %i.czh, 1
  store i32 %i.czi, ptr %i.buj, align 8, !tbaa !243, !noalias !1190
  store ptr %i.cys, ptr %i.cyv, align 8, !tbaa !50, !noalias !1190
  %i.czj = getelementptr inbounds nuw i8, ptr %i.cyv, i64 8 ; 3 uses
  %i.czk = getelementptr inbounds nuw i8, ptr %i.cyv, i64 24 ; 3 uses
  store ptr %i.czk, ptr %i.czj, align 8, !tbaa !8, !noalias !1190
  %i.czl = getelementptr inbounds nuw i8, ptr %i.cyv, i64 16 ; 2 uses
  store i32 0, ptr %i.czl, align 8, !tbaa !11, !noalias !1190
  %i.czm = getelementptr inbounds nuw i8, ptr %i.cyv, i64 20
  store i32 1, ptr %i.czm, align 4, !tbaa !12, !noalias !1190
  %i.czn = getelementptr inbounds nuw i8, ptr %storemerge16.i.i35.i, i64 16 ; 2 uses
  %i.czo = load i32, ptr %i.czn, align 8, !tbaa !11, !noalias !1190 ; 4 uses
  %.not.i.i.i108 = icmp eq i32 %i.czo, 0
  %i.czp = icmp eq ptr %i.cyv, %storemerge16.i.i35.i
  %or.cond.i.i109 = or i1 %i.czp, %.not.i.i.i108
  br i1 %or.cond.i.i109, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS5_JRKS8_EEESt4pairIPSD_bEOT_DpOT0_.exit, label %bb.oa

bb.oa:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i
  %i.czq = icmp ugt i32 %i.czo, 1
  br i1 %i.czq, label %_ZSt4copyIPKN5clang9ThunkInfoEPS1_ET0_T_S6_S5_.exit30.i.i.i, label %_ZSt4copyIPKN5clang9ThunkInfoEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i

_ZSt4copyIPKN5clang9ThunkInfoEPS1_ET0_T_S6_S5_.exit30.i.i.i: ; preds = %bb.oa
  %i.czr = zext i32 %i.czo to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(72) %i.czj, ptr noundef nonnull %i.czk, i64 noundef %i.czr, i64 noundef 56) #27, !noalias !1190
  %.pre.i5.i = load i32, ptr %i.czn, align 8, !tbaa !11, !noalias !1190 ; 2 uses
  %.not.i.i.i.i113 = icmp eq i32 %.pre.i5.i, 0
  br i1 %.not.i.i.i.i113, label %.sink.split.i.i.i, label %_ZSt4copyIPKN5clang9ThunkInfoEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN5clang9ThunkInfoEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKN5clang9ThunkInfoEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN5clang9ThunkInfoEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKN5clang9ThunkInfoEPS1_ET0_T_S6_S5_.exit30.i.i.i
  %.pre18.i = load ptr, ptr %i.czj, align 8, !tbaa !8, !noalias !1190
  %i.czs = zext i32 %.pre.i5.i to i64
  %i.czt = mul nuw nsw i64 %i.czs, 56
  br label %_ZSt4copyIPKN5clang9ThunkInfoEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i

_ZSt4copyIPKN5clang9ThunkInfoEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i: ; preds = %_ZSt4copyIPKN5clang9ThunkInfoEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN5clang9ThunkInfoEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i, %bb.oa
  %i.czu = phi ptr [ %.pre18.i, %_ZSt4copyIPKN5clang9ThunkInfoEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN5clang9ThunkInfoEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i ], [ %i.czk, %bb.oa ]
  %gepdiff.i.i.i110 = phi i64 [ %i.czt, %_ZSt4copyIPKN5clang9ThunkInfoEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN5clang9ThunkInfoEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i ], [ 56, %bb.oa ]
  %i.czv = load ptr, ptr %i.cvy, align 8, !tbaa !8, !noalias !1190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.czu, ptr noundef nonnull align 8 dereferenceable(1) %i.czv, i64 %gepdiff.i.i.i110, i1 false), !noalias !1190
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZSt4copyIPKN5clang9ThunkInfoEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i, %_ZSt4copyIPKN5clang9ThunkInfoEPS1_ET0_T_S6_S5_.exit30.i.i.i
  store i32 %i.czo, ptr %i.czl, align 8, !tbaa !11, !noalias !1190
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS5_JRKS8_EEESt4pairIPSD_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS5_JRKS8_EEESt4pairIPSD_bEOT_DpOT0_.exit: ; preds = %.lr.ph.i.i114, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit.i, %.sink.split.i.i.i
  %i.czw = add i64 %.pn, 80
  %i.czx = sdiv exact i64 %i.czw, 80              ; 3 uses
  %.not.i.i.i78 = icmp ult i64 %i.czx, %i.cvj
  br i1 %.not.i.i.i78, label %bb.ob, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6insertINS_16DenseMapIteratorIS5_S8_SA_SD_Lb1EEEEEvT_SJ_.exit

bb.ob:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS5_JRKS8_EEESt4pairIPSD_bEOT_DpOT0_.exit
  %i.czy = lshr i64 %i.czx, 5                     ; 3 uses
  %i.czz = getelementptr inbounds nuw [4 x i8], ptr %i.cvf, i64 %i.czy
  %i.daa = load i32, ptr %i.czz, align 4, !tbaa !16
  %i.dab = trunc nuw i64 %i.czx to i32
  %i.dac = and i32 %i.dab, 31
  %i.dad = shl nsw i32 -1, %i.dac
  %i.dae = and i32 %i.daa, %i.dad                 ; 2 uses
  %i.daf = icmp eq i32 %i.dae, 0
  br i1 %i.daf, label %.lr.ph.i.i.i82.preheader, label %_ZN4llvm16DenseMapIteratorIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EELb1EEppEv.exit.i

.lr.ph.i.i.i82.preheader:                         ; preds = %bb.ob
  %i.dag = add nuw nsw i64 %i.czy, 1              ; 2 uses
  %i.dah = icmp eq i64 %i.dag, %i.cvl
  br i1 %i.dah, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6insertINS_16DenseMapIteratorIS5_S8_SA_SD_Lb1EEEEEvT_SJ_.exit, label %.lr.ph1015

.lr.ph.i.i.i82:                                   ; preds = %.lr.ph1015
  %i.dai = add i64 %i.dak, 1                      ; 2 uses
  %i.daj = icmp eq i64 %i.dai, %i.cvl
  br i1 %i.daj, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6insertINS_16DenseMapIteratorIS5_S8_SA_SD_Lb1EEEEEvT_SJ_.exit, label %.lr.ph1015, !llvm.loop !247

.lr.ph1015:                                       ; preds = %.lr.ph.i.i.i82.preheader, %.lr.ph.i.i.i82
  %i.dak = phi i64 [ %i.dai, %.lr.ph.i.i.i82 ], [ %i.dag, %.lr.ph.i.i.i82.preheader ] ; 3 uses
  %i.dal = getelementptr inbounds nuw [4 x i8], ptr %i.cvf, i64 %i.dak
  %i.dam = load i32, ptr %i.dal, align 4, !tbaa !16 ; 2 uses
  %i.dan = icmp eq i32 %i.dam, 0
  br i1 %i.dan, label %.lr.ph.i.i.i82, label %_ZN4llvm16DenseMapIteratorIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EELb1EEppEv.exit.i, !llvm.loop !247

_ZN4llvm16DenseMapIteratorIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EELb1EEppEv.exit.i: ; preds = %.lr.ph1015, %bb.ob
  %.012.lcssa.i.i.i = phi i64 [ %i.czy, %bb.ob ], [ %i.dak, %.lr.ph1015 ]
  %.0.lcssa.i.i.i = phi i32 [ %i.dae, %bb.ob ], [ %i.dam, %.lr.ph1015 ]
  %i.dao = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %.idx.i.i.i81 = mul i64 %.012.lcssa.i.i.i, 2560
  %narrow254 = mul nuw nsw i32 %i.dao, 80
  %.idx253 = zext nneg i32 %narrow254 to i64
  %i.dap = add i64 %.idx.i.i.i81, %.idx253        ; 2 uses
  %.not.i79 = icmp eq i64 %i.dap, %.idx252
  br i1 %.not.i79, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6insertINS_16DenseMapIteratorIS5_S8_SA_SD_Lb1EEEEEvT_SJ_.exit, label %.lr.ph.i77, !llvm.loop !253

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6insertINS_16DenseMapIteratorIS5_S8_SA_SD_Lb1EEEEEvT_SJ_.exit: ; preds = %.lr.ph.i.i.i.i74, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS5_JRKS8_EEESt4pairIPSD_bEOT_DpOT0_.exit, %_ZN4llvm16DenseMapIteratorIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EELb1EEppEv.exit.i, %.lr.ph.i.i.i82.preheader, %.lr.ph.i.i.i82, %.lr.ph.i.i.i.i74.preheader, %_ZN4llvm11SmallVectorImLj6EED2Ev.exit, %_ZNK12_GLOBAL__N_114VFTableBuilder12thunks_beginEv.exit
  %i.daq = load ptr, ptr %i.ap, align 8, !tbaa !787, !nonnull !185, !align !381
  %i.dar = load ptr, ptr %i.c, align 8, !tbaa !186
  %i.das = call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK5clang10ASTContext18getASTRecordLayoutEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.daq, ptr noundef %i.dar) #27
  %i.dat = load ptr, ptr %i.bry, align 8, !tbaa !884, !noalias !1197
  %i.dau = load ptr, ptr %i.buk, align 8, !tbaa !1036, !noalias !1197 ; 4 uses
  %i.dav = load i32, ptr %i.bul, align 4, !tbaa !883, !noalias !1197 ; 2 uses
  %i.daw = load i32, ptr %i.bum, align 8, !tbaa !1037, !noalias !1197
  %i.dax = icmp eq i32 %i.daw, 0
  %i.day = zext i32 %i.dav to i64                 ; 4 uses
  %.idx898 = mul nuw nsw i64 %i.day, 48           ; 2 uses
  %.not.i.not.i.i.i83 = icmp eq i32 %i.dav, 0
  %or.cond.i84 = select i1 %i.dax, i1 true, i1 %.not.i.not.i.i.i83
  br i1 %or.cond.i84, label %._crit_edge, label %bb.oc

bb.oc:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6insertINS_16DenseMapIteratorIS5_S8_SA_SD_Lb1EEEEEvT_SJ_.exit
  %i.daz = add nuw nsw i64 %i.day, 31
  %i.dba = lshr i64 %i.daz, 5                     ; 2 uses
  %i.dbb = load i32, ptr %i.dau, align 4, !tbaa !16, !noalias !1202 ; 2 uses
  %i.dbc = icmp eq i32 %i.dbb, 0
  br i1 %i.dbc, label %.lr.ph.i.i.i.i88.preheader, label %_ZNK12_GLOBAL__N_114VFTableBuilder16vtable_locationsEv.exit

.lr.ph.i.i.i.i88.preheader:                       ; preds = %bb.oc
  %i.dbd = icmp eq i64 %i.dba, 1
  br i1 %i.dbd, label %._crit_edge, label %.lr.ph1016

.lr.ph.i.i.i.i88:                                 ; preds = %.lr.ph1016
  %i.dbe = add nuw nsw i64 %i.dbg, 1              ; 2 uses
  %i.dbf = icmp eq i64 %i.dbe, %i.dba
  br i1 %i.dbf, label %._crit_edge, label %.lr.ph1016, !llvm.loop !1205

.lr.ph1016:                                       ; preds = %.lr.ph.i.i.i.i88.preheader, %.lr.ph.i.i.i.i88
  %i.dbg = phi i64 [ %i.dbe, %.lr.ph.i.i.i.i88 ], [ 1, %.lr.ph.i.i.i.i88.preheader ] ; 3 uses
  %i.dbh = getelementptr inbounds nuw [4 x i8], ptr %i.dau, i64 %i.dbg
  %i.dbi = load i32, ptr %i.dbh, align 4, !tbaa !16, !noalias !1202 ; 2 uses
  %i.dbj = icmp eq i32 %i.dbi, 0
  br i1 %i.dbj, label %.lr.ph.i.i.i.i88, label %._crit_edge.i.loopexit.i.i.i90, !llvm.loop !1205

._crit_edge.i.loopexit.i.i.i90:                   ; preds = %.lr.ph1016
  %i.dbk = mul i64 %i.dbg, 1536
  br label %_ZNK12_GLOBAL__N_114VFTableBuilder16vtable_locationsEv.exit

_ZNK12_GLOBAL__N_114VFTableBuilder16vtable_locationsEv.exit: ; preds = %bb.oc, %._crit_edge.i.loopexit.i.i.i90
  %.012.lcssa.i.i.i.i86 = phi i64 [ 0, %bb.oc ], [ %i.dbk, %._crit_edge.i.loopexit.i.i.i90 ]
  %.0.lcssa.i.i.i.i87 = phi i32 [ %i.dbb, %bb.oc ], [ %i.dbi, %._crit_edge.i.loopexit.i.i.i90 ]
  %i.dbl = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i87, i1 true)
  %narrow899 = mul nuw nsw i32 %i.dbl, 48
  %.idx897 = zext nneg i32 %narrow899 to i64
  %i.dbm = add i64 %.012.lcssa.i.i.i.i86, %.idx897 ; 2 uses
  %.not384 = icmp eq i64 %i.dbm, %.idx898
  br i1 %.not384, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK12_GLOBAL__N_114VFTableBuilder16vtable_locationsEv.exit
  %i.dbn = getelementptr inbounds nuw i8, ptr %i.das, i64 72 ; 2 uses
  %i.dbo = add nuw nsw i64 %i.day, 31
  %i.dbp = lshr i64 %i.dbo, 5                     ; 2 uses
  br label %bb.om

._crit_edge:                                      ; preds = %.lr.ph.i.i.i.i88, %bb.qd, %_ZN4llvm16DenseMapIteratorIN5clang10GlobalDeclENS1_21MethodVFTableLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EELb1EEppEv.exit, %.lr.ph.i.i104.preheader, %.lr.ph.i.i104, %.lr.ph.i.i.i.i88.preheader, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6insertINS_16DenseMapIteratorIS5_S8_SA_SD_Lb1EEEEEvT_SJ_.exit, %_ZNK12_GLOBAL__N_114VFTableBuilder16vtable_locationsEv.exit
  %i.dbq = load ptr, ptr %38, align 8, !tbaa !8   ; 2 uses
  %i.dbr = icmp eq ptr %i.dbq, %i.btw
  br i1 %i.dbr, label %_ZN4llvm11SmallVectorISt4pairImN5clang9ThunkInfoEELj1EED2Ev.exit, label %bb.od

bb.od:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.dbq) #27
  br label %_ZN4llvm11SmallVectorISt4pairImN5clang9ThunkInfoEELj1EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairImN5clang9ThunkInfoEELj1EED2Ev.exit: ; preds = %._crit_edge, %bb.od
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  %i.dbs = load i32, ptr %i.btj, align 4, !tbaa !80 ; 2 uses
  %i.dbt = icmp eq i32 %i.dbs, 0
  br i1 %i.dbt, label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit.i, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm11SmallVectorISt4pairImN5clang9ThunkInfoEELj1EED2Ev.exit
  %i.dbu = load ptr, ptr %i.bsb, align 8, !tbaa !83
  %i.dbv = load ptr, ptr %i.bti, align 8, !tbaa !84
  %i.dbw = zext i32 %i.dbs to i64
  %i.dbx = add nuw nsw i64 %i.dbw, 31
  %i.dby = lshr i64 %i.dbx, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i92, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i92 ] ; 3 uses
  %i.dbz = getelementptr inbounds nuw [4 x i8], ptr %i.dbv, i64 %indvars.iv.i.i.i
  %i.dca = load i32, ptr %i.dbz, align 4, !tbaa !16 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.dca, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i92, label %.lr.ph.i.i.i91

.lr.ph.i.i.i91:                                   ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.dcb = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.oe

bb.oe:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i91
  %.0.i3.i.i.i = phi i32 [ %i.dca, %.lr.ph.i.i.i91 ], [ %i.dcl, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.dcc = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.dcd = or disjoint i32 %i.dcc, %i.dcb
  %i.dce = zext i32 %i.dcd to i64
  %i.dcf = getelementptr inbounds nuw [80 x i8], ptr %i.dbu, i64 %i.dce ; 2 uses
  %i.dcg = getelementptr inbounds nuw i8, ptr %i.dcf, i64 8
  %i.dch = load ptr, ptr %i.dcg, align 8, !tbaa !8 ; 2 uses
  %i.dci = getelementptr inbounds nuw i8, ptr %i.dcf, i64 24
  %i.dcj = icmp eq ptr %i.dch, %i.dci
  br i1 %i.dcj, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %bb.of

bb.of:                                            ; preds = %bb.oe
  call void @free(ptr noundef %i.dch) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.of, %bb.oe
  %i.dck = add i32 %.0.i3.i.i.i, -1
  %i.dcl = and i32 %i.dck, %.0.i3.i.i.i           ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.dcl, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i92, label %bb.oe, !llvm.loop !86

._crit_edge.i.i.i92:                              ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i93 = icmp eq i64 %indvars.iv.next.i.i.i, %i.dby
  br i1 %.not.i.i.i.i93, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !87

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i92
  %.pr.i.i94 = load i32, ptr %i.btj, align 4, !tbaa !80 ; 2 uses
  %i.dcm = icmp eq i32 %.pr.i.i94, 0
  br i1 %i.dcm, label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit.i, label %bb.og

bb.og:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i.i
  %i.dcn = load ptr, ptr %i.bsb, align 8, !tbaa !83
  %i.dco = zext i32 %.pr.i.i94 to i64             ; 2 uses
  %i.dcp = mul nuw nsw i64 %i.dco, 80
  %i.dcq = add nuw nsw i64 %i.dco, 31
  %i.dcr = lshr i64 %i.dcq, 3
  %i.dcs = and i64 %i.dcr, 1073741820
  %i.dct = add nuw nsw i64 %i.dcs, %i.dcp
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dcn, i64 noundef %i.dct, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit.i

_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit.i: ; preds = %bb.og, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i.i, %_ZN4llvm11SmallVectorISt4pairImN5clang9ThunkInfoEELj1EED2Ev.exit
  %i.dcu = load i32, ptr %i.bsq, align 4, !tbaa !767 ; 2 uses
  %i.dcv = icmp eq i32 %i.dcu, 0
  br i1 %i.dcv, label %_ZN4llvm8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEED2Ev.exit.i, label %bb.oh

bb.oh:                                            ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit.i
  %i.dcw = load ptr, ptr %i.bsa, align 8, !tbaa !760
  %i.dcx = zext i32 %i.dcu to i64                 ; 2 uses
  %i.dcy = shl nuw nsw i64 %i.dcx, 6
  %i.dcz = add nuw nsw i64 %i.dcx, 31
  %i.dda = lshr i64 %i.dcz, 3
  %i.ddb = and i64 %i.dda, 1073741820
  %i.ddc = add nuw nsw i64 %i.ddb, %i.dcy
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dcw, i64 noundef %i.ddc, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEED2Ev.exit.i

_ZN4llvm8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEED2Ev.exit.i: ; preds = %bb.oh, %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit.i
  %i.ddd = load i32, ptr %i.bsi, align 4, !tbaa !1062 ; 2 uses
  %i.dde = icmp eq i32 %i.ddd, 0
  br i1 %i.dde, label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit.i, label %bb.oi

bb.oi:                                            ; preds = %_ZN4llvm8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEED2Ev.exit.i
  %i.ddf = load ptr, ptr %i.brz, align 8, !tbaa !1057
  %i.ddg = zext i32 %i.ddd to i64                 ; 2 uses
  %i.ddh = shl nuw nsw i64 %i.ddg, 5
  %i.ddi = add nuw nsw i64 %i.ddg, 31
  %i.ddj = lshr i64 %i.ddi, 3
  %i.ddk = and i64 %i.ddj, 1073741820
  %i.ddl = add nuw nsw i64 %i.ddk, %i.ddh
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ddf, i64 noundef %i.ddl, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit.i

_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit.i: ; preds = %bb.oi, %_ZN4llvm8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEED2Ev.exit.i
  %i.ddm = load i32, ptr %i.bul, align 4, !tbaa !883 ; 2 uses
  %i.ddn = icmp eq i32 %i.ddm, 0
  br i1 %i.ddn, label %_ZN4llvm8DenseMapIN5clang10GlobalDeclENS1_21MethodVFTableLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit.i, label %bb.oj

bb.oj:                                            ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit.i
  %i.ddo = load ptr, ptr %i.bry, align 8, !tbaa !884
  %i.ddp = zext i32 %i.ddm to i64                 ; 2 uses
  %i.ddq = mul nuw nsw i64 %i.ddp, 48
  %i.ddr = add nuw nsw i64 %i.ddp, 31
  %i.dds = lshr i64 %i.ddr, 3
  %i.ddt = and i64 %i.dds, 1073741820
  %i.ddu = add nuw nsw i64 %i.ddt, %i.ddq
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ddo, i64 noundef %i.ddu, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIN5clang10GlobalDeclENS1_21MethodVFTableLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit.i

_ZN4llvm8DenseMapIN5clang10GlobalDeclENS1_21MethodVFTableLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit.i: ; preds = %bb.oj, %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit.i
  %i.ddv = load ptr, ptr %i.bru, align 8, !tbaa !8 ; 2 uses
  %i.ddw = icmp eq ptr %i.ddv, %i.brv
  br i1 %i.ddw, label %_ZN4llvm11SmallVectorIN5clang15VTableComponentELj64EED2Ev.exit.i, label %bb.ok

bb.ok:                                            ; preds = %_ZN4llvm8DenseMapIN5clang10GlobalDeclENS1_21MethodVFTableLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit.i
  call void @free(ptr noundef %i.ddv) #27
  br label %_ZN4llvm11SmallVectorIN5clang15VTableComponentELj64EED2Ev.exit.i

_ZN4llvm11SmallVectorIN5clang15VTableComponentELj64EED2Ev.exit.i: ; preds = %bb.ok, %_ZN4llvm8DenseMapIN5clang10GlobalDeclENS1_21MethodVFTableLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit.i
  %.val1.i = load i32, ptr %i.buq, align 4, !tbaa !786 ; 2 uses
  %i.ddx = icmp eq i32 %.val1.i, 0
  br i1 %i.ddx, label %_ZN12_GLOBAL__N_114VFTableBuilderD2Ev.exit, label %bb.ol

bb.ol:                                            ; preds = %_ZN4llvm11SmallVectorIN5clang15VTableComponentELj64EED2Ev.exit.i
  %.val.i = load ptr, ptr %i.bur, align 8
  %i.ddy = zext i32 %.val1.i to i64               ; 2 uses
  %i.ddz = mul nuw nsw i64 %i.ddy, 40
  %i.dea = add nuw nsw i64 %i.ddy, 31
  %i.deb = lshr i64 %i.dea, 3
  %i.dec = and i64 %i.deb, 1073741820
  %i.ded = add nuw nsw i64 %i.dec, %i.ddz
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %.val.i, i64 noundef %i.ded, i64 noundef 8) #27
  br label %_ZN12_GLOBAL__N_114VFTableBuilderD2Ev.exit

_ZN12_GLOBAL__N_114VFTableBuilderD2Ev.exit:       ; preds = %_ZN4llvm11SmallVectorIN5clang15VTableComponentELj64EED2Ev.exit.i, %bb.ol
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  %i.dee = getelementptr inbounds nuw i8, ptr %.0388, i64 8 ; 2 uses
  %.not18 = icmp eq ptr %i.dee, %i.bro
  br i1 %.not18, label %._crit_edge390, label %bb.ka

bb.om:                                            ; preds = %.lr.ph, %_ZN4llvm16DenseMapIteratorIN5clang10GlobalDeclENS1_21MethodVFTableLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EELb1EEppEv.exit
  %.pn903 = phi i64 [ %i.dbm, %.lr.ph ], [ %i.dsz, %_ZN4llvm16DenseMapIteratorIN5clang10GlobalDeclENS1_21MethodVFTableLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EELb1EEppEv.exit ] ; 2 uses
  %.sroa.0196.0385 = getelementptr i8, ptr %i.dat, i64 %.pn903 ; 8 uses
  %i.def = getelementptr inbounds nuw i8, ptr %.sroa.0196.0385, i64 16
  %i.deg = load ptr, ptr %35, align 8, !tbaa !884, !noalias !1206 ; 3 uses
  %i.deh = load ptr, ptr %i.bun, align 8, !tbaa !1036, !noalias !1206 ; 3 uses
  %i.dei = load i32, ptr %i.buo, align 4, !tbaa !883, !noalias !1206 ; 4 uses
  %i.dej = icmp eq i32 %i.dei, 0
  br i1 %i.dej, label %.loopexit.i116, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.dek = add i32 %i.dei, -1                     ; 2 uses
  %.sroa.06.0.copyload.i.i = load i64, ptr %.sroa.0196.0385, align 8, !tbaa !49, !noalias !1215 ; 2 uses
  %i.del = mul i64 %.sroa.06.0.copyload.i.i, -4658895280553007687 ; 2 uses
  %i.dem = lshr i64 %i.del, 31
  %i.den = xor i64 %i.dem, %i.del
  %i.deo = trunc i64 %i.den to i32
  %i.dep = and i32 %i.dek, %i.deo                 ; 3 uses
  %i.deq = zext i32 %i.dep to i64                 ; 2 uses
  %i.der = getelementptr inbounds nuw [48 x i8], ptr %i.deg, i64 %i.deq ; 2 uses
  %i.des = lshr i64 %i.deq, 5
  %i.det = getelementptr inbounds nuw [4 x i8], ptr %i.deh, i64 %i.des
  %i.deu = load i32, ptr %i.det, align 4, !tbaa !16, !noalias !1215
  %i.dev = and i32 %i.dep, 31
  %i.dew = lshr i32 %i.deu, %i.dev
  %i.dex = trunc i32 %i.dew to i1
  br i1 %i.dex, label %.lr.ph.i.i124, label %.loopexit.i116, !prof !100

.lr.ph.i.i124:                                    ; preds = %bb.on
  %.sroa.27.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0196.0385, i64 8
  %.sroa.22.0.copyload.i.i = load i32, ptr %.sroa.27.0..sroa_idx.i.i, align 8, !tbaa !16, !noalias !1215
  br label %bb.oo

bb.oo:                                            ; preds = %bb.op, %.lr.ph.i.i124
  %i.dey = phi ptr [ %i.der, %.lr.ph.i.i124 ], [ %i.dff, %bb.op ] ; 5 uses
  %.02330.i.i = phi i32 [ %i.dep, %.lr.ph.i.i124 ], [ %i.dfd, %bb.op ]
  %.sroa.0.0.copyload.i.i125 = load i64, ptr %i.dey, align 8, !tbaa !49, !noalias !1215
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dey, i64 8
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !16, !noalias !1215
  %i.dez = icmp eq i64 %.sroa.06.0.copyload.i.i, %.sroa.0.0.copyload.i.i125
  %i.dfa = icmp eq i32 %.sroa.22.0.copyload.i.i, %.sroa.2.0.copyload.i.i
  %i.dfb = select i1 %i.dez, i1 %i.dfa, i1 false
  br i1 %i.dfb, label %bb.ot, label %bb.op, !prof !101

bb.op:                                            ; preds = %bb.oo
  %i.dfc = add nuw i32 %.02330.i.i, 1
  %i.dfd = and i32 %i.dfc, %i.dek                 ; 3 uses
  %i.dfe = zext i32 %i.dfd to i64                 ; 2 uses
  %i.dff = getelementptr inbounds nuw [48 x i8], ptr %i.deg, i64 %i.dfe ; 2 uses
  %i.dfg = lshr i64 %i.dfe, 5
  %i.dfh = getelementptr inbounds nuw [4 x i8], ptr %i.deh, i64 %i.dfg
  %i.dfi = load i32, ptr %i.dfh, align 4, !tbaa !16, !noalias !1215
  %i.dfj = and i32 %i.dfd, 31
  %i.dfk = lshr i32 %i.dfi, %i.dfj
  %i.dfl = trunc i32 %i.dfk to i1
  br i1 %i.dfl, label %bb.oo, label %.loopexit.i116, !prof !102, !llvm.loop !1216

.loopexit.i116:                                   ; preds = %bb.op, %bb.on, %bb.om
  %.lcssa34.sink.i.ph.i = phi ptr [ %i.der, %bb.on ], [ null, %bb.om ], [ %i.dff, %bb.op ]
  %i.dfm = load i32, ptr %i.bup, align 8, !tbaa !1037, !noalias !1215
  %i.dfn = shl i32 %i.dfm, 2
  %i.dfo = add i32 %i.dfn, 4
  %i.dfp = mul i32 %i.dei, 3
  %.not.i.i117 = icmp ult i32 %i.dfo, %i.dfp
  br i1 %.not.i.i117, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JRKS4_EEESt4pairIPS9_bEOT_DpOT0_.exit.thread, label %bb.oq, !prof !101

bb.oq:                                            ; preds = %.loopexit.i116
  %i.dfq = shl i32 %i.dei, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %35, i32 noundef %i.dfq), !noalias !1215
  %i.dfr = load ptr, ptr %35, align 8, !tbaa !884, !noalias !1217 ; 5 uses
  %i.dfs = load ptr, ptr %i.bun, align 8, !tbaa !1036, !noalias !1217 ; 5 uses
  %i.dft = load i32, ptr %i.buo, align 4, !tbaa !883, !noalias !1217 ; 2 uses
  %i.dfu = icmp ne i32 %i.dft, 0
  call void @llvm.assume(i1 %i.dfu)
  %i.dfv = add i32 %i.dft, -1                     ; 2 uses
  %.sroa.06.0.copyload.i = load i64, ptr %.sroa.0196.0385, align 8, !tbaa !49, !noalias !1215 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5clang22MicrosoftVTableContext12getThunkInfoENS_10GlobalDeclE:bb.a
  br i1 %i.ah, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i
  %i.ai = add i32 %i.ag, -1                       ; 2 uses
  %i.aj = ptrtoint ptr %i.l to i64
  %i.ak = mul i64 %i.aj, -4658895280553007687     ; 2 uses
  %i.al = lshr i64 %i.ak, 31
  %i.am = xor i64 %i.al, %i.ak
  %i.an = trunc i64 %i.am to i32
  %i.ao = and i32 %i.ai, %i.an                    ; 3 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = lshr i64 %i.ap, 5
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !16, !noalias !1351
  %i.at = and i32 %i.ao, 31
  %i.au = lshr i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i1
  br i1 %i.av, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !100

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %i.aw = phi i64 [ %i.bc, %bb.e ], [ %i.ap, %bb.d ]
  %.017.i.i.i.i.i = phi i32 [ %i.bb, %bb.e ], [ %i.ao, %bb.d ]
  %i.ax = getelementptr inbounds nuw [80 x i8], ptr %i.ac, i64 %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !50, !noalias !1351
  %i.az = icmp eq ptr %i.l, %i.ay
  br i1 %i.az, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i, label %bb.e, !prof !101

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ba = add nuw i32 %.017.i.i.i.i.i, 1
  %i.bb = and i32 %i.ba, %i.ai                    ; 3 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = lshr i64 %i.bc, 5
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !16, !noalias !1351
  %i.bg = and i32 %i.bb, 31
  %i.bh = lshr i32 %i.bf, %i.bg
  %i.bi = trunc i32 %i.bh to i1
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !102

.loopexit.i.i.i:                                  ; preds = %bb.e, %bb.d, %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i
  %i.bj = zext i32 %i.ag to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw [80 x i8], ptr %i.ac, i64 %i.bj
  br label %_ZN5clang17VTableContextBase12getThunkInfoENS_10GlobalDeclE.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.ag to i64
  br label %_ZN5clang17VTableContextBase12getThunkInfoENS_10GlobalDeclE.exit

_ZN5clang17VTableContextBase12getThunkInfoENS_10GlobalDeclE.exit: ; preds = %.loopexit.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i ], [ %i.bj, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.ax, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit.i ], [ %i.bk, %.loopexit.i.i.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [80 x i8], ptr %i.ac, i64 %.pre-phi.i
  %i.bm = icmp eq ptr %.lcssa.sink.i.i.i, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %spec.select.i = select i1 %i.bm, ptr null, ptr %i.bn
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN5clang17VTableContextBase12getThunkInfoENS_10GlobalDeclE.exit
  %.0 = phi ptr [ %spec.select.i, %_ZN5clang17VTableContextBase12getThunkInfoENS_10GlobalDeclE.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5clang17VTableContextBase12getThunkInfoENS_10GlobalDeclE(ptr noundef nonnull align 8 dereferenceable(33) %0, i64 %1, i32 %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, -8
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(33) %i.b) #27, !inline_history !1352 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.g) #27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8 ; 3 uses
  %i.j = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -5
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !103
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit

_ZNK5clang13CXXMethodDecl9getParentEv.exit:       ; preds = %bb.b, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.l, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %i.p = icmp eq ptr %.0.i.i.i.i, null
  %i.q = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 -64
  %i.r = select i1 %i.p, ptr null, ptr %i.q
  %i.s = load ptr, ptr %0, align 8, !tbaa !56
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %i.r) #27
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !83, !noalias !1353 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !84, !noalias !1353 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !80, !noalias !1353 ; 4 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang13CXXMethodDecl9getParentEv.exit
  %i.ac = add i32 %i.aa, -1                       ; 2 uses
  %i.ad = ptrtoint ptr %i.f to i64
  %i.ae = mul i64 %i.ad, -4658895280553007687     ; 2 uses
  %i.af = lshr i64 %i.ae, 31
  %i.ag = xor i64 %i.af, %i.ae
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ac, %i.ah                    ; 3 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 5
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !16, !noalias !1362
  %i.an = and i32 %i.ai, 31
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  br i1 %i.ap, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !100

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.e
  %i.aq = phi i64 [ %i.aw, %bb.e ], [ %i.aj, %bb.d ]
  %.017.i.i.i.i = phi i32 [ %i.av, %bb.e ], [ %i.ai, %bb.d ]
  %i.ar = getelementptr inbounds nuw [80 x i8], ptr %i.w, i64 %i.aq ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !50, !noalias !1362
  %i.at = icmp eq ptr %i.f, %i.as
  br i1 %i.at, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit, label %bb.e, !prof !101

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.au = add nuw i32 %.017.i.i.i.i, 1
  %i.av = and i32 %i.au, %i.ac                    ; 3 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = lshr i64 %i.aw, 5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !16, !noalias !1362
  %i.ba = and i32 %i.av, 31
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = trunc i32 %i.bb to i1
  br i1 %i.bc, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !102

.loopexit.i.i:                                    ; preds = %bb.e, %bb.d, %_ZNK5clang13CXXMethodDecl9getParentEv.exit
  %i.bd = zext i32 %i.aa to i64                   ; 2 uses
  %i.be = getelementptr inbounds nuw [80 x i8], ptr %i.w, i64 %i.bd
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = zext i32 %i.aa to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit ], [ %i.bd, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.ar, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4findES5_.exit.loopexit ], [ %i.be, %.loopexit.i.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [80 x i8], ptr %i.w, i64 %.pre-phi
  %i.bg = icmp eq ptr %.lcssa.sink.i.i, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %spec.select = select i1 %i.bg, ptr null, ptr %i.bh
  ret ptr %spec.select
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare noundef i32 @_ZNK5clang13CXXMethodDecl23size_overridden_methodsEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang17VTableContextBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5clang17VTableContextBaseE, i64 16), ptr %0, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !80   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.h = zext i32 %i.c to i64
  %i.i = add nuw nsw i64 %i.h, 31
  %i.j = lshr i64 %i.i, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16   ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.l, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.m = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.l, %.lr.ph.i.i ], [ %i.w, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.n = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.o = or disjoint i32 %i.n, %i.m
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.s) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.v = add i32 %.0.i3.i.i, -1
  %i.w = and i32 %i.v, %.0.i3.i.i                 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !86

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.j
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !87

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.b, align 4, !tbaa !80 ; 2 uses
  %i.x = icmp eq i32 %.pr.i, 0
  br i1 %i.x, label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.z = zext i32 %.pr.i to i64                   ; 2 uses
  %i.aa = mul nuw nsw i64 %i.z, 80
  %i.ab = add nuw nsw i64 %i.z, 31
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = and i64 %i.ac, 1073741820
  %i.ae = add nuw nsw i64 %i.ad, %i.aa
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.y, i64 noundef %i.ae, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang17VTableContextBaseD0Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #32
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #10

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_126VCallAndVBaseOffsetBuilder23AddVCallAndVBaseOffsetsEN5clang13BaseSubobjectEbNS1_9CharUnitsE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr %1, i64 %2, i1 noundef zeroext %3, i64 %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1363, !nonnull !185, !align !381
  %i.d = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK5clang10ASTContext18getASTRecordLayoutEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.c, ptr noundef %1) #27
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !798
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.0.copyload.i.i.i.i = load i64, ptr %i.g, align 8 ; 2 uses
  %i.h = and i64 %.0.copyload.i.i.i.i, -8         ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = and i64 %.0.copyload.i.i.i.i, 4
  %i.k = icmp ne i64 %i.j, 0                      ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !1363, !nonnull !185, !align !381
  %i.m = load ptr, ptr %0, align 8, !tbaa !135
  %i.n = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK5clang10ASTContext18getASTRecordLayoutEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.l, ptr noundef %i.m) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = tail call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.i)
  store ptr %i.o, ptr %i.a, align 8, !tbaa !186
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !798
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.t, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %storemerge = phi i64 [ %.sroa.0.0.copyload.i, %bb.c ], [ %2, %bb.b ]
  call fastcc void @_ZN12_GLOBAL__N_126VCallAndVBaseOffsetBuilder23AddVCallAndVBaseOffsetsEN5clang13BaseSubobjectEbNS1_9CharUnitsE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr nonnull %i.i, i64 %storemerge, i1 noundef zeroext %i.k, i64 %4)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  call fastcc void @_ZN12_GLOBAL__N_126VCallAndVBaseOffsetBuilder15AddVBaseOffsetsEPKN5clang13CXXRecordDeclENS1_9CharUnitsE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef %1, i64 %4)
  br i1 %3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call fastcc void @_ZN12_GLOBAL__N_126VCallAndVBaseOffsetBuilder15AddVCallOffsetsEN5clang13BaseSubobjectENS1_9CharUnitsE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr %1, i64 %2, i64 %4)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_126VCallAndVBaseOffsetBuilder15AddVBaseOffsetsEPKN5clang13CXXRecordDeclENS1_9CharUnitsE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.std::pair.66", align 8     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1363, !nonnull !185, !align !381
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !157
  %i.f = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK5clang10ASTContext18getASTRecordLayoutEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.c, ptr noundef %i.e) #27
  %i.g = tail call noundef ptr @_ZNK5clang13CXXRecordDecl11bases_beginEv(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 2 uses
  %i.h = tail call noundef ptr @_ZNK5clang13CXXRecordDecl9bases_endEv(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 2 uses
  %.not36 = icmp eq ptr %i.g, %i.h
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 564 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang15VTableComponentELb1EE9push_backES2_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIN5clang15VTableComponentELb1EE9push_backES2_.exit
  %.037 = phi ptr [ %i.g, %.lr.ph ], [ %i.cr, %_ZN4llvm23SmallVectorTemplateBaseIN5clang15VTableComponentELb1EE9push_backES2_.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.037, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !326
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.t, align 8, !tbaa !49 ; 2 uses
  %i.u = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !329 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.x, align 8, !tbaa !49
  %i.y = and i64 %.sroa.0.0.copyload.i.i.i, 15
  %.not.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i, label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i.i) #27
  %i.aa = extractvalue { ptr, i64 } %i.z, 0
  br label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit

_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit:      ; preds = %bb.b, %bb.c
  %.sroa.03.0.in.in.i.i = phi ptr [ %i.aa, %bb.c ], [ %i.w, %bb.b ]
  %.sroa.03.0.in.i.i = ptrtoint ptr %.sroa.03.0.in.in.i.i to i64
  %i.ab = and i64 %.sroa.03.0.in.i.i, -16
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !329
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ae, align 8, !tbaa !49
  %i.af = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !329 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i8, ptr %i.ai, align 16            ; 3 uses
  %i.ak = add i8 %i.aj, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ak, 3
  %.not.i7.i = icmp ne ptr %i.ah, null
  %.not.i.not8.i = and i1 %.not.i7.i, %switch.i.i.i.i.i.i.i.i.i.i
  %i.al = and i8 %i.aj, 62
  %spec.select.i.i.i = icmp eq i8 %i.al, 48
  %or.cond.i = and i1 %spec.select.i.i.i, %.not.i.not8.i
  br i1 %or.cond.i, label %bb.d, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

end_hunk_4
begin_hunk_5_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E24lookupOrInsertIntoBucketIS5_JS6_EEESt4pairIPSB_bEOT_DpOT0_:bb.a
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit, label %bb.d, !prof !101

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1399
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !167
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !163
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !16
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !169
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !186
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !186
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = load i64, ptr %2, align 8, !tbaa !47
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !47
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !163, !noalias !1400 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !167, !noalias !1400 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !168, !noalias !1400 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !186    ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !100

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !186
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !102, !llvm.loop !971

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1399
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.62", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !168
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !163
  store ptr %i.y, ptr %i.q, align 8, !tbaa !167
  store i32 0, ptr %i.p, align 16, !tbaa !169
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !827
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1399
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !827
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !827
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !827
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !16
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !16
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !16
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !16
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !163    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !167
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !168  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !167  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !163
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !168
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !186  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !16 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !1405

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !186
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !47
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !47
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !16
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1406

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1407

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !168
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !169
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !169
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_9CharUnitsENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEEES8_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN5clang15VTableComponentELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = load i32, ptr %i.a, align 8, !tbaa !11
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store i64 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !11
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !11
  ret void
}

declare ptr @_ZNK5clang11DeclContext11decls_beginEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_114VCallOffsetMap26MethodsCanShareVCallOffsetEPKN5clang13CXXMethodDeclES4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 127
  %i.d = icmp eq i32 %i.c, 37
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 127
  %i.h = icmp eq i32 %i.g, 37
  br label %_ZN12_GLOBAL__N_123HasSameVirtualSignatureEPKN5clang13CXXMethodDeclES3_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i5 = load i64, ptr %i.j, align 8, !tbaa !47
  %.not = icmp eq i64 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i5
  br i1 %.not, label %bb.d, label %_ZN12_GLOBAL__N_123HasSameVirtualSignatureEPKN5clang13CXXMethodDeclES3_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 48
  %.val = load i64, ptr %i.k, align 8, !tbaa !49
  %i.l = getelementptr i8, ptr %1, i64 48
  %.val4 = load i64, ptr %i.l, align 8, !tbaa !49
  %i.m = and i64 %.val, -16
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !49
  %i.q = and i64 %i.p, -16
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !329 ; 6 uses
  %i.t = and i64 %.val4, -16
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !49
  %i.x = and i64 %i.w, -16
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !329 ; 6 uses
  %i.aa = icmp eq ptr %i.s, %i.z
  br i1 %i.aa, label %_ZN12_GLOBAL__N_123HasSameVirtualSignatureEPKN5clang13CXXMethodDeclES3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 16           ; 9 uses
  %i.ad = and i64 %i.ac, 16777216
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.af = lshr i64 %i.ac, 48                      ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = lshr i64 %i.ac, 31
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %i.ah, 1
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = add i64 %i.aj, 7
  %i.al = and i64 %i.ak, -8
  %i.am = inttoptr i64 %i.al to ptr               ; 4 uses
  %i.an = and i64 %i.ac, 1073741824
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load i24, ptr %i.am, align 8            ; 2 uses
  %i.ap = lshr i24 %i.ao, 10
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i24 %i.ap, 1
  %i.aq = zext nneg i24 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.aq
  %i.at = lshr i24 %i.ao, 11
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i24 %i.at, 1
  %i.au = zext nneg i24 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  br label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i.i

_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.av = phi ptr [ %i.as, %bb.g ], [ %i.am, %bb.f ]
  %i.aw = phi i64 [ %i.au, %bb.g ], [ 0, %bb.f ]
  %i.ax = and i64 %i.ac, 503316480
  %i.ay = icmp eq i64 %i.ax, 67108864
  br i1 %i.ay, label %bb.h, label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i.i

end_hunk_5
begin_hunk_6_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit, label %bb.d, !prof !101

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1599
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1297
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1283
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !16
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1284
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !186
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !186
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !16
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1283, !noalias !1600 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1297, !noalias !1600 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1282, !noalias !1600 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !186    ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !100

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !186
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !102, !llvm.loop !1598

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1599
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.315", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1282
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1283
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1297
  store i32 0, ptr %i.p, align 16, !tbaa !1284
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !827
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1599
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !827
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !827
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !827
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !16
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !16
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !16
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !16
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1283   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1297
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1282 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1297 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1283
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1282
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !186  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !16
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !1605

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !186
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !16
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !16
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !16
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !16
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1606

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !1607

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1282
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1284
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !1284
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !1282
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E24lookupOrInsertIntoBucketIS7_JEEES2_IPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1418, !noalias !1608 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1441, !noalias !1608 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1415, !noalias !1608 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !1442   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !16   ; 2 uses
  %i.p = mul i32 %i.o, 37
  %i.q = shl i64 %i.m, 32
  %i.r = zext i32 %i.p to i64
  %i.s = or disjoint i64 %i.q, %i.r
  %i.t = mul i64 %i.s, -4658895280553007687       ; 2 uses
  %i.u = lshr i64 %i.t, 31
  %i.v = xor i64 %i.u, %i.t
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.h, %i.w                       ; 3 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.y ; 2 uses
  %i.aa = lshr i64 %i.y, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !16
  %i.ad = and i32 %i.x, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph.i, label %.loopexit, !prof !100

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ag = phi ptr [ %i.aq, %bb.c ], [ %i.z, %bb.b ] ; 3 uses
  %.024.i = phi i32 [ %i.ao, %bb.c ], [ %i.x, %bb.b ]
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1442
  %i.ai = icmp eq ptr %i.i, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = icmp eq i32 %i.o, %i.ak
  %i.am = select i1 %i.ai, i1 %i.al, i1 false
  br i1 %i.am, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph.i
  %i.an = add nuw i32 %.024.i, 1
  %i.ao = and i32 %i.an, %i.h                     ; 3 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ap ; 2 uses
  %i.ar = lshr i64 %i.ap, 5
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !16
  %i.au = and i32 %i.ao, 31
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %.loopexit, !prof !102, !llvm.loop !1443

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.z, %bb.b ], [ null, %bb.a ], [ %i.aq, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1613
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !1444
  %i.az = shl i32 %i.ay, 2
  %i.ba = add i32 %i.az, 4
  %i.bb = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ba, %i.bb
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E22findBucketForInsertionIS7_EEPSD_RKT_SH_.exit, label %bb.d, !prof !101

bb.d:                                             ; preds = %.loopexit
  %i.bc = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.bc)
  %i.bd = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E15LookupBucketForIS7_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1613
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1441
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1418
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E22findBucketForInsertionIS7_EEPSD_RKT_SH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E22findBucketForInsertionIS7_EEPSD_RKT_SH_.exit: ; preds = %.loopexit, %bb.d
  %i.be = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.bf = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.bg = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24                ; 2 uses
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = and i32 %i.bl, 31
  %i.bn = shl nuw i32 1, %i.bm
  %i.bo = lshr i64 %i.bk, 5
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !16
  %i.br = or i32 %i.bn, %i.bq
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !16
  %i.bs = load i32, ptr %i.ax, align 8, !tbaa !1444
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.ax, align 8, !tbaa !1444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 0, ptr %i.bu, align 8, !tbaa !805
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E22findBucketForInsertionIS7_EEPSD_RKT_SH_.exit
  %.sroa.0.0 = phi ptr [ %i.bg, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E22findBucketForInsertionIS7_EEPSD_RKT_SH_.exit ], [ %i.ag, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E22findBucketForInsertionIS7_EEPSD_RKT_SH_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E15LookupBucketForIS7_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1418, !noalias !1614 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1441, !noalias !1614 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1415, !noalias !1614 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1442   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !16   ; 2 uses
  %i.o = mul i32 %i.n, 37
  %i.p = shl i64 %i.l, 32
  %i.q = zext i32 %i.o to i64
  %i.r = or disjoint i64 %i.p, %i.q
  %i.s = mul i64 %i.r, -4658895280553007687       ; 2 uses
  %i.t = lshr i64 %i.s, 31
  %i.u = xor i64 %i.t, %i.s
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.g, %i.v                       ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !16
  %i.ac = and i32 %i.w, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph, label %.thread, !prof !100

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.af = phi ptr [ %i.ap, %bb.c ], [ %i.y, %bb.b ] ; 3 uses
  %.024 = phi i32 [ %i.an, %bb.c ], [ %i.w, %bb.b ]
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1442
  %i.ah = icmp eq ptr %i.h, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = icmp eq i32 %i.n, %i.aj
  %i.al = select i1 %i.ah, i1 %i.ak, i1 false     ; 3 uses
  br i1 %i.al, label %.thread, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph
  %i.am = add nuw i32 %.024, 1
  %i.an = and i32 %i.am, %i.g                     ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ao ; 2 uses
  %i.aq = lshr i64 %i.ao, 5
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !16
  %i.at = and i32 %i.an, 31
  %i.au = lshr i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i1
  br i1 %i.av, label %.lr.ph, label %.thread, !prof !102, !llvm.loop !1443

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.y, %bb.b ], [ null, %bb.a ], [ %i.ap, %bb.c ], [ %i.af, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.al, %bb.c ], [ %i.al, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1613
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.673", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1415
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1418
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1441
  store i32 0, ptr %i.p, align 16, !tbaa !1444
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !827
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1613
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !827
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !827
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !827
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !16
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !16
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !16
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !16
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS2_9CharUnitsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS2_9CharUnitsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEED2Ev.exit

_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS2_9CharUnitsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1418
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1441
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1415 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1441 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1418
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1415
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS6_9CharUnitsENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bk, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1442
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !16
  %i.ac = mul i32 %i.ab, 37
  %i.ad = shl i64 %i.z, 32
  %i.ae = zext i32 %i.ac to i64
  %i.af = or disjoint i64 %i.ad, %i.ae
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.k, %i.aj                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !16
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.at, %.lr.ph.i ], [ %i.ak, %bb.b ]
  %i.as = add i32 %.014.i, 1
  %i.at = and i32 %i.as, %i.k                     ; 3 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = lshr i64 %i.au, 5                       ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !16
  %i.ay = and i32 %i.at, 31                       ; 2 uses
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, !llvm.loop !1619

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.am, %bb.b ], [ %i.av, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ap, %bb.b ], [ %i.ay, %.lr.ph.i ]
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !47
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !47
  %i.bf = shl nuw i32 1, %.lcssa.i
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !16
  %i.bi = or i32 %i.bh, %i.bf
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !16
  %i.bj = add i32 %.0.i17, -1
  %i.bk = and i32 %i.bj, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bk, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1620

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS6_9CharUnitsENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !1621

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS6_9CharUnitsENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1415
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS6_9CharUnitsENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS6_9CharUnitsENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS6_9CharUnitsENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bl = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS6_9CharUnitsENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !1444
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !1444
  %i.bp = icmp eq i32 %i.bl, 0
  br i1 %i.bp, label %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS2_9CharUnitsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS6_9CharUnitsENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.bq = load ptr, ptr %1, align 8, !tbaa !1418
  %i.br = zext i32 %i.bl to i64                   ; 2 uses
  %i.bs = mul nuw nsw i64 %i.br, 24
  %i.bt = add nuw nsw i64 %i.br, 31
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = and i64 %i.bu, 1073741820
  %i.bw = add nuw nsw i64 %i.bv, %i.bs
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bq, i64 noundef %i.bw, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !1415
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS2_9CharUnitsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEE4killEv.exit

_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS2_9CharUnitsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclEjENS6_9CharUnitsENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS3_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #12 align 2 {
_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS2_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEC2EjNS_12DenseMapBaseISG_S7_SA_SC_SF_E16ExactBucketCountE.exit:
  %2 = alloca %"class.llvm::DenseMap.76", align 16 ; 8 uses
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
  %.sroa.speculated.i = tail call noundef range(i32 64, 0) i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !786
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 40                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !985
  store ptr %i.y, ptr %i.q, align 8, !tbaa !995
  store i32 0, ptr %i.p, align 16, !tbaa !1468
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS3_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1622
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !827
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !827
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !16 ; 2 uses
  %i.ae = load <2 x i32>, ptr %i.p, align 16, !tbaa !16
  store <2 x i32> %i.ae, ptr %i.ab, align 8, !tbaa !16
  %i.af = icmp eq i32 %i.ad, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS2_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS2_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEC2EjNS_12DenseMapBaseISG_S7_SA_SC_SF_E16ExactBucketCountE.exit
  %i.ag = zext i32 %i.ad to i64                   ; 2 uses
  %i.ah = mul nuw nsw i64 %i.ag, 40
  %i.ai = add nuw nsw i64 %i.ag, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.al, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS2_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEED2Ev.exit

_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS2_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS2_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEC2EjNS_12DenseMapBaseISG_S7_SA_SC_SF_E16ExactBucketCountE.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS3_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #12 align 2 {
bb.a:
  %.val11 = load ptr, ptr %1, align 8, !tbaa !985
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !995
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !786 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !995 ; 3 uses
  %.val12 = load ptr, ptr %0, align 8, !tbaa !985
  %i.d = getelementptr i8, ptr %0, i64 20
  %.val7 = load i32, ptr %i.d, align 4, !tbaa !786
  %i.e = add i32 %.val7, -1                       ; 2 uses
  %i.f = zext i32 %.val to i64
  %i.g = add nuw nsw i64 %i.f, 31
  %i.h = lshr i64 %i.g, 5                         ; 2 uses
  %.not.i24 = icmp eq i64 %i.h, 0
  br i1 %.not.i24, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS6_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SE_EEEESB_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val8, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16   ; 2 uses
  %.not11.i22 = icmp eq i32 %i.j, 0
  br i1 %.not11.i22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph27
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.k = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS3_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit
  %.0.i23 = phi i32 [ %i.j, %.lr.ph ], [ %i.bd, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS3_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit ] ; 3 uses
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i23, i1 true)
  %i.m = or disjoint i32 %i.l, %i.k
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %.val11, i64 %i.n ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !997
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = mul i64 %i.q, -4658895280553007687       ; 2 uses
  %i.s = lshr i64 %i.r, 31
  %i.t = xor i64 %i.s, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !805
  %i.w = mul i64 %i.v, 37
  %i.x = shl i64 %i.t, 32
  %i.y = and i64 %i.w, 4294967295
  %i.z = or disjoint i64 %i.x, %i.y
  %i.aa = mul i64 %i.z, -4658895280553007687      ; 2 uses
  %i.ab = lshr i64 %i.aa, 31
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.e, %i.ad                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = lshr i64 %i.af, 5                       ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !16
  %i.aj = and i32 %i.ae, 31                       ; 2 uses
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS3_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.an, %.lr.ph.i ], [ %i.ae, %bb.b ]
  %i.am = add i32 %.014.i, 1
  %i.an = and i32 %i.am, %i.e                     ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 5                       ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !16
  %i.as = and i32 %i.an, 31                       ; 2 uses
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = trunc i32 %i.at to i1
  br i1 %i.au, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS3_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit, !llvm.loop !1623

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS3_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.aj, %bb.b ], [ %i.as, %.lr.ph.i ]
  %i.av = getelementptr inbounds nuw [40 x i8], ptr %.val12, i64 %.lcssa12.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !tbaa.struct !1624
  %i.ay = shl nuw i32 1, %.lcssa.i
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %.lcssa11.i ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !16
  %i.bb = or i32 %i.ba, %i.ay
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !16
  %i.bc = add i32 %.0.i23, -1
  %i.bd = and i32 %i.bc, %.0.i23                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bd, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1625

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS3_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit, %.lr.ph27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS6_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SE_EEEESB_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph27, !llvm.loop !1626

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS6_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SE_EEEESB_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !786
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS6_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SE_EEEESB_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS6_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SE_EEEESB_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS6_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SE_EEEESB_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.be = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS6_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SE_EEEESB_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit ], [ %.val, %bb.a ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i32, ptr %i.bf, align 8, !tbaa !1468
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val10, ptr %i.bg, align 8, !tbaa !1468
  %i.bh = icmp eq i32 %i.be, 0
  br i1 %i.bh, label %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS2_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS6_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SE_EEEESB_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit
  %i.bi = load ptr, ptr %1, align 8, !tbaa !985
  %i.bj = zext i32 %i.be to i64                   ; 2 uses
  %i.bk = mul nuw nsw i64 %i.bj, 40
  %i.bl = add nuw nsw i64 %i.bj, 31
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = and i64 %i.bm, 1073741820
  %i.bo = add nuw nsw i64 %i.bn, %i.bk
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bi, i64 noundef %i.bo, i64 noundef 8) #27
  store i32 0, ptr %i.b, align 4, !tbaa !786
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS2_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEE4killEv.exit

_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS2_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXMethodDeclENS6_9CharUnitsEEN12_GLOBAL__N_115FinalOverriders13OverriderInfoENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SE_EEEESB_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11SmallVectorISt4pairIPKN5clang13CXXMethodDeclENS2_17OverridingMethodsEELj0EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %.not4.i = icmp eq i32 %i.c, 0
  br i1 %.not4.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang13CXXMethodDeclENS2_17OverridingMethodsEELb0EE13destroy_rangeEPS7_S9_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.d = zext i32 %i.c to i64
  %.idx = mul nuw nsw i64 %i.d, 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNSt4pairIPKN5clang13CXXMethodDeclENS0_17OverridingMethodsEED2Ev.exit.i
  %.05.i = phi ptr [ %i.f, %_ZNSt4pairIPKN5clang13CXXMethodDeclENS0_17OverridingMethodsEED2Ev.exit.i ], [ %i.e, %.lr.ph.i.preheader ] ; 6 uses
  %i.f = getelementptr inbounds i8, ptr %.05.i, i64 -48 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.05.i, i64 -40
  %i.h = getelementptr inbounds i8, ptr %.05.i, i64 -16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.05.i, i64 -8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !11   ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_11SmallVectorIN5clang19UniqueVirtualMethodELj4EEEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %.lr.ph.i
  %i.l = zext i32 %i.k to i64
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.l, 120
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt4pairIjN4llvm11SmallVectorIN5clang19UniqueVirtualMethodELj4EEEED2Ev.exit.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.n, %_ZNSt4pairIjN4llvm11SmallVectorIN5clang19UniqueVirtualMethodELj4EEEED2Ev.exit.i.i.i.i.i.i ], [ %i.m, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i, i64 -120 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i, i64 -112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !8    ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i, i64 -96
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt4pairIjN4llvm11SmallVectorIN5clang19UniqueVirtualMethodELj4EEEED2Ev.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @free(ptr noundef %i.p) #27
  br label %_ZNSt4pairIjN4llvm11SmallVectorIN5clang19UniqueVirtualMethodELj4EEEED2Ev.exit.i.i.i.i.i.i

_ZNSt4pairIjN4llvm11SmallVectorIN5clang19UniqueVirtualMethodELj4EEEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, %i.n
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_11SmallVectorIN5clang19UniqueVirtualMethodELj4EEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1627

_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_11SmallVectorIN5clang19UniqueVirtualMethodELj4EEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt4pairIjN4llvm11SmallVectorIN5clang19UniqueVirtualMethodELj4EEEED2Ev.exit.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_11SmallVectorIN5clang19UniqueVirtualMethodELj4EEEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_11SmallVectorIN5clang19UniqueVirtualMethodELj4EEEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_11SmallVectorIN5clang19UniqueVirtualMethodELj4EEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.i.i, %.lr.ph.i
  %i.s = phi ptr [ %.pre.i.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_11SmallVectorIN5clang19UniqueVirtualMethodELj4EEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.i.i ], [ %i.i, %.lr.ph.i ] ; 2 uses
  %i.t = icmp eq ptr %i.s, %.05.i
  br i1 %i.t, label %_ZN4llvm11SmallVectorISt4pairIjNS0_IN5clang19UniqueVirtualMethodELj4EEEELj0EED2Ev.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_11SmallVectorIN5clang19UniqueVirtualMethodELj4EEEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i.i
  tail call void @free(ptr noundef %i.s) #27
  br label %_ZN4llvm11SmallVectorISt4pairIjNS0_IN5clang19UniqueVirtualMethodELj4EEEELj0EED2Ev.exit.i.i.i.i

_ZN4llvm11SmallVectorISt4pairIjNS0_IN5clang19UniqueVirtualMethodELj4EEEELj0EED2Ev.exit.i.i.i.i: ; preds = %bb.c, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjNS_11SmallVectorIN5clang19UniqueVirtualMethodELj4EEEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i.i
  %i.u = getelementptr inbounds i8, ptr %.05.i, i64 -20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !1628 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZNSt4pairIPKN5clang13CXXMethodDeclENS0_17OverridingMethodsEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIjNS0_IN5clang19UniqueVirtualMethodELj4EEEELj0EED2Ev.exit.i.i.i.i
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !1629
  %i.y = zext i32 %i.v to i64                     ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.y, 31
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = and i64 %i.ab, 1073741820
  %i.ad = add nuw nsw i64 %i.ac, %i.z
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.x, i64 noundef %i.ad, i64 noundef 4) #27
  br label %_ZNSt4pairIPKN5clang13CXXMethodDeclENS0_17OverridingMethodsEED2Ev.exit.i

_ZNSt4pairIPKN5clang13CXXMethodDeclENS0_17OverridingMethodsEED2Ev.exit.i: ; preds = %bb.d, %_ZN4llvm11SmallVectorISt4pairIjNS0_IN5clang19UniqueVirtualMethodELj4EEEELj0EED2Ev.exit.i.i.i.i
  %.not.i = icmp eq ptr %i.a, %i.f
  br i1 %.not.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang13CXXMethodDeclENS2_17OverridingMethodsEELb0EE13destroy_rangeEPS7_S9_.exit.loopexit, label %.lr.ph.i, !llvm.loop !1630

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang13CXXMethodDeclENS2_17OverridingMethodsEELb0EE13destroy_rangeEPS7_S9_.exit.loopexit: ; preds = %_ZNSt4pairIPKN5clang13CXXMethodDeclENS0_17OverridingMethodsEED2Ev.exit.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !8
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang13CXXMethodDeclENS2_17OverridingMethodsEELb0EE13destroy_rangeEPS7_S9_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang13CXXMethodDeclENS2_17OverridingMethodsEELb0EE13destroy_rangeEPS7_S9_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang13CXXMethodDeclENS2_17OverridingMethodsEELb0EE13destroy_rangeEPS7_S9_.exit.loopexit, %bb.a
  %i.ae = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang13CXXMethodDeclENS2_17OverridingMethodsEELb0EE13destroy_rangeEPS7_S9_.exit.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN4llvm15SmallVectorImplISt4pairIPKN5clang13CXXMethodDeclENS2_17OverridingMethodsEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang13CXXMethodDeclENS2_17OverridingMethodsEELb0EE13destroy_rangeEPS7_S9_.exit
  tail call void @free(ptr noundef %i.ae) #27
  br label %_ZN4llvm15SmallVectorImplISt4pairIPKN5clang13CXXMethodDeclENS2_17OverridingMethodsEEED2Ev.exit

_ZN4llvm15SmallVectorImplISt4pairIPKN5clang13CXXMethodDeclENS2_17OverridingMethodsEEED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang13CXXMethodDeclENS2_17OverridingMethodsEELb0EE13destroy_rangeEPS7_S9_.exit, %bb.e
  ret void
}
end_hunk_6
begin_hunk_7_@_ZN12_GLOBAL__N_120ItaniumVTableBuilder22LayoutSecondaryVTablesEN5clang13BaseSubobjectEbNS1_9CharUnitsE:bb.a
  %i.bp = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i.i, -6 ; 2 uses
  %.not.not14.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bp, 0
  %.not.not.i.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.not.not14.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl12getNumVBasesEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !282
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !279 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !284 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bs, %i.bv
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl12getNumVBasesEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.bv, ptr %i.br, align 8, !tbaa !282
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !56
  %i.bx = getelementptr i8, ptr %i.bw, i64 152, !nosanitize !185
  %i.by = load ptr, ptr %i.bx, align 8, !nosanitize !185
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull %i.ap) #27, !inline_history !287
  br label %_ZNK5clang13CXXRecordDecl12getNumVBasesEv.exit

_ZNK5clang13CXXRecordDecl12getNumVBasesEv.exit:   ; preds = %bb.g, %bb.n, %bb.o, %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 128
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !288
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !315
  %.not35 = icmp eq i32 %i.cc, 0
  br i1 %.not35, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZNK5clang13CXXRecordDecl12getNumVBasesEv.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cd = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %spec.select.i.i)
  store ptr %i.cd, ptr %i.a, align 8, !tbaa !186
  %i.ce = load ptr, ptr %i.e, align 8, !tbaa !798
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.cg = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cf, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.cg, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.ch, align 8, !tbaa !47 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ci = add nsw i64 %.sroa.0.0.copyload.i, %2   ; 2 uses
  %i.cj = add nsw i64 %.sroa.0.0.copyload.i, %4   ; 2 uses
  %i.ck = icmp eq ptr %spec.select.i.i, %i.i
  br i1 %i.ck, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call fastcc void @_ZN12_GLOBAL__N_120ItaniumVTableBuilder22LayoutSecondaryVTablesEN5clang13BaseSubobjectEbNS1_9CharUnitsE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr nonnull %spec.select.i.i, i64 %i.ci, i1 noundef zeroext %3, i64 %i.cj)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  call fastcc void @_ZN12_GLOBAL__N_120ItaniumVTableBuilder32LayoutPrimaryAndSecondaryVTablesEN5clang13BaseSubobjectEbbNS1_9CharUnitsE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr nonnull %spec.select.i.i, i64 %i.ci, i1 noundef zeroext %3, i1 noundef zeroext false, i64 %i.cj)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit, %_ZNK5clang13CXXRecordDecl12getNumVBasesEv.exit, %bb.b
  %i.cl = getelementptr inbounds nuw i8, ptr %.03150, i64 24 ; 2 uses
  %.not34 = icmp eq ptr %i.cl, %i.k
  br i1 %.not34, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = load i32, ptr %i.a, align 8, !tbaa !11
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store i64 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !11
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0, ptr %.0.val, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #13 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !782, !noalias !1836 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !783, !noalias !1836 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !781, !noalias !1836 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = ptrtoint ptr %.0.val to i64
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [280 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !100

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.05 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !186
  %i.x = icmp eq ptr %.0.val, %i.w
  br i1 %i.x, label %.thread, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.05, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [280 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !102, !llvm.loop !1641

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa9.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  store ptr %.lcssa9.sink, ptr %1, align 8, !tbaa !1642
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #12 align 2 {
_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEC2EjNS_12DenseMapBaseISC_S4_S6_S8_SB_E16ExactBucketCountE.exit:
  %2 = alloca %"class.llvm::DenseMap.78", align 16 ; 8 uses
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
  %.sroa.speculated.i = tail call noundef range(i32 64, 0) i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !781
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 280                ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !782
  store ptr %i.y, ptr %i.q, align 8, !tbaa !783
  store i32 0, ptr %i.p, align 16, !tbaa !1643
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1642   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1841
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !827
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !827
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !16
  store <2 x i32> %i.ag, ptr %i.ad, align 8, !tbaa !16
  %i.ah = icmp eq i32 %i.af, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit, label %.lr.ph11.preheader.i.i

.lr.ph11.preheader.i.i:                           ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEC2EjNS_12DenseMapBaseISC_S4_S6_S8_SB_E16ExactBucketCountE.exit
  %i.ai = zext i32 %i.af to i64                   ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, 31               ; 2 uses
  %i.ak = lshr i64 %i.aj, 5
  br label %.lr.ph11.i.i

.lr.ph11.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph11.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph11.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !16 ; 2 uses
  %.not11.i6.i.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i6.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph11.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.an = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.a

bb.a:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i7.i.i = phi i32 [ %i.am, %.lr.ph.i.i ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ao = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i7.i.i, i1 true)
  %i.ap = or disjoint i32 %i.ao, %i.an
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [280 x i8], ptr %i.z, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !8  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.at) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.b, %bb.a
  %i.aw = add i32 %.0.i7.i.i, -1
  %i.ax = and i32 %i.aw, %.0.i7.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.a, !llvm.loop !784

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph11.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.ak
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E10destroyAllEv.exit.i, label %.lr.ph11.i.i, !llvm.loop !785

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %i.ay = mul nuw nsw i64 %i.ai, 280
  %i.az = lshr i64 %i.aj, 3
  %i.ba = and i64 %i.az, 1073741820
  %i.bb = add nuw nsw i64 %i.ba, %i.ay
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.bb, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEC2EjNS_12DenseMapBaseISC_S4_S6_S8_SB_E16ExactBucketCountE.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E10destroyAllEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #12 align 2 {
bb.a:
  %.val11 = load ptr, ptr %1, align 8, !tbaa !782
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !783
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !781 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !783 ; 3 uses
  %.val12 = load ptr, ptr %0, align 8, !tbaa !782
  %i.d = getelementptr i8, ptr %0, i64 20
  %.val7 = load i32, ptr %i.d, align 4, !tbaa !781
  %i.e = add i32 %.val7, -1                       ; 2 uses
  %i.f = zext i32 %.val to i64
  %i.g = add nuw nsw i64 %i.f, 31
  %i.h = lshr i64 %i.g, 5                         ; 2 uses
  %.not.i22 = icmp eq i64 %i.h, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val8, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16   ; 2 uses
  %.not11.i20 = icmp eq i32 %i.j, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.k = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.j, %.lr.ph ], [ %i.bn, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.m = or disjoint i32 %i.l, %i.k
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [280 x i8], ptr %.val11, i64 %i.n ; 8 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !186  ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = mul i64 %i.q, -4658895280553007687       ; 2 uses
  %i.s = lshr i64 %i.r, 31
  %i.t = xor i64 %i.s, %i.r
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.e, %i.u                       ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !16
  %i.aa = and i32 %i.v, 31                        ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.v, %bb.b ]
  %i.ad = add i32 %.014.i, 1
  %i.ae = and i32 %i.ad, %i.e                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = lshr i64 %i.af, 5                       ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !16
  %i.aj = and i32 %i.ae, 31                       ; 2 uses
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1842

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.w, %bb.b ], [ %i.af, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.x, %bb.b ], [ %i.ag, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.aa, %bb.b ], [ %i.aj, %.lr.ph.i ]
  %i.am = getelementptr inbounds nuw [280 x i8], ptr %.val12, i64 %.lcssa12.i ; 6 uses
  store ptr %i.p, ptr %i.am, align 8, !tbaa !186
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 3 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 20 ; 2 uses
  store i32 16, ptr %i.aq, align 4, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !11 ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_114VCallOffsetMapC2EOS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.au = icmp eq ptr %i.am, %i.o
  br i1 %i.au, label %_ZN12_GLOBAL__N_114VCallOffsetMapC2EOS0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !8  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.e, label %_ZN4llvm15SmallVectorImplISt4pairIPKN5clang13CXXMethodDeclENS2_9CharUnitsEEE12assignRemoteEOS8_.exit.i

_ZN4llvm15SmallVectorImplISt4pairIPKN5clang13CXXMethodDeclENS2_9CharUnitsEEE12assignRemoteEOS8_.exit.i: ; preds = %bb.d
  store ptr %i.av, ptr %i.an, align 8, !tbaa !8
  store i32 %i.as, ptr %i.ap, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !12
  store i32 %i.az, ptr %i.aq, align 4, !tbaa !12
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !8
  store i32 0, ptr %i.ay, align 4, !tbaa !12
  br label %_ZN12_GLOBAL__N_114VCallOffsetMapC2EOS0_.exit.i.sink.split

bb.e:                                             ; preds = %bb.d
  %i.ba = zext i32 %i.as to i64                   ; 2 uses
  %i.bb = icmp ugt i32 %i.as, 16
  br i1 %i.bb, label %_ZSt4moveIPSt4pairIPKN5clang13CXXMethodDeclENS1_9CharUnitsEES7_ET0_T_S9_S8_.exit39.i, label %_ZSt4moveIPSt4pairIPKN5clang13CXXMethodDeclENS1_9CharUnitsEES7_ET0_T_S9_S8_.exit39.i.thread

_ZSt4moveIPSt4pairIPKN5clang13CXXMethodDeclENS1_9CharUnitsEES7_ET0_T_S9_S8_.exit39.i: ; preds = %bb.e
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.an, ptr noundef nonnull %i.ao, i64 noundef %i.ba, i64 noundef 16) #27
  %.pre41.i = load i32, ptr %i.ar, align 8, !tbaa !11 ; 2 uses
  %.pre42.i = zext i32 %.pre41.i to i64
  %.not.i.i.i = icmp eq i32 %.pre41.i, 0
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang13CXXMethodDeclENS2_9CharUnitsEELb1EE18uninitialized_moveIPS7_SA_EEvT_SB_T0_.exit.i, label %_ZSt4moveIPSt4pairIPKN5clang13CXXMethodDeclENS1_9CharUnitsEES7_ET0_T_S9_S8_.exit39.i.thread

_ZSt4moveIPSt4pairIPKN5clang13CXXMethodDeclENS1_9CharUnitsEES7_ET0_T_S9_S8_.exit39.i.thread: ; preds = %bb.e, %_ZSt4moveIPSt4pairIPKN5clang13CXXMethodDeclENS1_9CharUnitsEES7_ET0_T_S9_S8_.exit39.i
  %.pre-phi.i39 = phi i64 [ %.pre42.i, %_ZSt4moveIPSt4pairIPKN5clang13CXXMethodDeclENS1_9CharUnitsEES7_ET0_T_S9_S8_.exit39.i ], [ %i.ba, %bb.e ]
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !8
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !8
  %gepdiff.i = shl nuw nsw i64 %.pre-phi.i39, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 8 %i.bc, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang13CXXMethodDeclENS2_9CharUnitsEELb1EE18uninitialized_moveIPS7_SA_EEvT_SB_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang13CXXMethodDeclENS2_9CharUnitsEELb1EE18uninitialized_moveIPS7_SA_EEvT_SB_T0_.exit.i: ; preds = %_ZSt4moveIPSt4pairIPKN5clang13CXXMethodDeclENS1_9CharUnitsEES7_ET0_T_S9_S8_.exit39.i.thread, %_ZSt4moveIPSt4pairIPKN5clang13CXXMethodDeclENS1_9CharUnitsEES7_ET0_T_S9_S8_.exit39.i
  store i32 %i.as, ptr %i.ap, align 8, !tbaa !11
  br label %_ZN12_GLOBAL__N_114VCallOffsetMapC2EOS0_.exit.i.sink.split

_ZN12_GLOBAL__N_114VCallOffsetMapC2EOS0_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplISt4pairIPKN5clang13CXXMethodDeclENS2_9CharUnitsEEE12assignRemoteEOS8_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang13CXXMethodDeclENS2_9CharUnitsEELb1EE18uninitialized_moveIPS7_SA_EEvT_SB_T0_.exit.i
  store i32 0, ptr %i.ar, align 8, !tbaa !11
  br label %_ZN12_GLOBAL__N_114VCallOffsetMapC2EOS0_.exit.i

_ZN12_GLOBAL__N_114VCallOffsetMapC2EOS0_.exit.i:  ; preds = %_ZN12_GLOBAL__N_114VCallOffsetMapC2EOS0_.exit.i.sink.split, %bb.c, %._crit_edge.i
  %i.be = shl nuw i32 1, %.lcssa.i
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %.lcssa11.i ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !16
  %i.bh = or i32 %i.bg, %i.be
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !8  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_114VCallOffsetMapC2EOS0_.exit.i
  tail call void @free(ptr noundef %i.bj) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %_ZN12_GLOBAL__N_114VCallOffsetMapC2EOS0_.exit.i, %bb.f
  %i.bm = add i32 %.0.i21, -1
  %i.bn = and i32 %i.bm, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bn, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1843

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !1844

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !781
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bo = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %.val, %bb.a ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i32, ptr %i.bp, align 8, !tbaa !1643
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val10, ptr %i.bq, align 8, !tbaa !1643
  %i.br = icmp eq i32 %i.bo, 0
  br i1 %i.br, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bs = load ptr, ptr %1, align 8, !tbaa !782
  %i.bt = zext i32 %i.bo to i64                   ; 2 uses
  %i.bu = mul nuw nsw i64 %i.bt, 280
  %i.bv = add nuw nsw i64 %i.bt, 31
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = and i64 %i.bw, 1073741820
  %i.by = add nuw nsw i64 %i.bx, %i.bu
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bs, i64 noundef %i.by, i64 noundef 8) #27
  store i32 0, ptr %i.b, align 4, !tbaa !781
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEN12_GLOBAL__N_114VCallOffsetMapENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E8copyFromERKSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !168  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE17deallocateBucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !163
  %i.e = zext i32 %i.b to i64                     ; 2 uses
  %i.f = shl nuw nsw i64 %i.e, 4
  %i.g = add nuw nsw i64 %i.e, 31
  %i.h = lshr i64 %i.g, 3
  %i.i = and i64 %i.h, 1073741820
  %i.j = add nuw nsw i64 %i.i, %i.f
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.d, i64 noundef %i.j, i64 noundef 8) #27
  store i32 0, ptr %i.a, align 4, !tbaa !168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !169
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !168  ; 3 uses
  store i32 %i.m, ptr %i.a, align 4, !tbaa !168
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE15allocateBucketsEj.exit, label %bb.c

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE15allocateBucketsEj.exit: ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_9CharUnitsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEE17deallocateBucketsEv.exit
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 4
  %i.p = add nuw nsw i64 %i.n, 31
  %i.q = lshr i64 %i.p, 3
end_hunk_7
begin_hunk_8_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1793
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit, label %bb.d, !prof !101

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1935
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1806
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1069
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !16
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1793
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !186
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !186
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E22findBucketForInsertionIS5_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1069, !noalias !1936 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1806, !noalias !1936 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1068, !noalias !1936 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !186    ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !100

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !186
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !102, !llvm.loop !1808

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1935
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.256", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1068
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1069
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1806
  store i32 0, ptr %i.p, align 16, !tbaa !1793
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !827
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1935
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !827
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !827
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !827
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !16
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !16
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !16
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !16
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1069   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1806
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1068 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1806 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1069
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1068
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !186  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !16 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !1941

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !186
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !16
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1942

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1943

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1068
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1793
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !1793
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !1068
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN12_GLOBAL__N_125visitAllOverriddenMethodsIZNS_27ComputeAllOverriddenMethodsEPKN5clang13CXXMethodDeclERN4llvm11SmallPtrSetIS4_Lj8EEEE3$_0EEvS4_RT_"(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZNK5clang13CXXMethodDecl18overridden_methodsEv(ptr noundef nonnull align 8 dereferenceable(168) %0) #27 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.a, 1        ; 2 uses
  %.not14 = icmp eq ptr %i.b, %i.c
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %"_ZZN12_GLOBAL__N_127ComputeAllOverriddenMethodsEPKN5clang13CXXMethodDeclERN4llvm11SmallPtrSetIS3_Lj8EEEENK3$_0clES3_.exit.thread12", %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %"_ZZN12_GLOBAL__N_127ComputeAllOverriddenMethodsEPKN5clang13CXXMethodDeclERN4llvm11SmallPtrSetIS3_Lj8EEEENK3$_0clES3_.exit.thread12"
  %.015 = phi ptr [ %i.v, %"_ZZN12_GLOBAL__N_127ComputeAllOverriddenMethodsEPKN5clang13CXXMethodDeclERN4llvm11SmallPtrSetIS3_Lj8EEEENK3$_0clES3_.exit.thread12" ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.015, align 8, !tbaa !50  ; 4 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !1944  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !162, !range !184, !noalias !1946, !noundef !185
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %"_ZZN12_GLOBAL__N_127ComputeAllOverriddenMethodsEPKN5clang13CXXMethodDeclERN4llvm11SmallPtrSetIS3_Lj8EEEENK3$_0clES3_.exit"

bb.b:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr %.val, align 8, !tbaa !159, !noalias !1946 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !161, !noalias !1946 ; 4 uses
  %i.k = zext i32 %i.j to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.k, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i.i ; 2 uses
  %.not22.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not22.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.critedge.i.i.i
  %.023.i.i.i = phi ptr [ %i.n, %.critedge.i.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = load ptr, ptr %.023.i.i.i, align 8, !tbaa !827, !noalias !1946
  %.not15.i.i.i = icmp eq ptr %i.m, %i.d
  br i1 %.not15.i.i.i, label %"_ZZN12_GLOBAL__N_127ComputeAllOverriddenMethodsEPKN5clang13CXXMethodDeclERN4llvm11SmallPtrSetIS3_Lj8EEEENK3$_0clES3_.exit.thread12", label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.023.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.l
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.critedge.i.i.i, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !160, !noalias !1946
  %i.q = icmp ult i32 %i.j, %i.p
  br i1 %i.q, label %"_ZZN12_GLOBAL__N_127ComputeAllOverriddenMethodsEPKN5clang13CXXMethodDeclERN4llvm11SmallPtrSetIS3_Lj8EEEENK3$_0clES3_.exit.thread", label %"_ZZN12_GLOBAL__N_127ComputeAllOverriddenMethodsEPKN5clang13CXXMethodDeclERN4llvm11SmallPtrSetIS3_Lj8EEEENK3$_0clES3_.exit"

"_ZZN12_GLOBAL__N_127ComputeAllOverriddenMethodsEPKN5clang13CXXMethodDeclERN4llvm11SmallPtrSetIS3_Lj8EEEENK3$_0clES3_.exit.thread": ; preds = %._crit_edge.i.i.i
  %i.r = add nuw i32 %i.j, 1
  store i32 %i.r, ptr %i.i, align 4, !tbaa !161, !noalias !1946
  store ptr %i.d, ptr %i.l, align 8, !tbaa !827, !noalias !1946
  br label %bb.c

"_ZZN12_GLOBAL__N_127ComputeAllOverriddenMethodsEPKN5clang13CXXMethodDeclERN4llvm11SmallPtrSetIS3_Lj8EEEENK3$_0clES3_.exit": ; preds = %.lr.ph, %._crit_edge.i.i.i
  %i.s = tail call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %.val, ptr noundef %i.d) #27, !noalias !1946
  %i.t = extractvalue { ptr, i8 } %i.s, 1
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %"_ZZN12_GLOBAL__N_127ComputeAllOverriddenMethodsEPKN5clang13CXXMethodDeclERN4llvm11SmallPtrSetIS3_Lj8EEEENK3$_0clES3_.exit.thread12"

bb.c:                                             ; preds = %"_ZZN12_GLOBAL__N_127ComputeAllOverriddenMethodsEPKN5clang13CXXMethodDeclERN4llvm11SmallPtrSetIS3_Lj8EEEENK3$_0clES3_.exit.thread", %"_ZZN12_GLOBAL__N_127ComputeAllOverriddenMethodsEPKN5clang13CXXMethodDeclERN4llvm11SmallPtrSetIS3_Lj8EEEENK3$_0clES3_.exit"
  tail call fastcc void @"_ZN12_GLOBAL__N_125visitAllOverriddenMethodsIZNS_27ComputeAllOverriddenMethodsEPKN5clang13CXXMethodDeclERN4llvm11SmallPtrSetIS4_Lj8EEEE3$_0EEvS4_RT_"(ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %"_ZZN12_GLOBAL__N_127ComputeAllOverriddenMethodsEPKN5clang13CXXMethodDeclERN4llvm11SmallPtrSetIS3_Lj8EEEENK3$_0clES3_.exit.thread12"

"_ZZN12_GLOBAL__N_127ComputeAllOverriddenMethodsEPKN5clang13CXXMethodDeclERN4llvm11SmallPtrSetIS3_Lj8EEEENK3$_0clES3_.exit.thread12": ; preds = %.lr.ph.i.i.i, %"_ZZN12_GLOBAL__N_127ComputeAllOverriddenMethodsEPKN5clang13CXXMethodDeclERN4llvm11SmallPtrSetIS3_Lj8EEEENK3$_0clES3_.exit", %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.015, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare { ptr, ptr } @_ZNK5clang13CXXMethodDecl18overridden_methodsEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !288  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !254  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8 ; 3 uses
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 1
  %i.g = icmp eq i64 %i.f, 0
  %i.h = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, -2
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.g, i64 %i.h, i64 0 ; 3 uses
  %i.i = icmp ugt i64 %spec.select.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.j = and i64 %spec.select.i.i.i.i.i.i.i.i.i, 2
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  %i.k = and i64 %spec.select.i.i.i.i.i.i.i.i.i, -4
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 18624
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !263  ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 2632 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !266  ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = add i64 %i.q, 24                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 2640
end_hunk_8
begin_hunk_9_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit, label %bb.d, !prof !101

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1962
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !204
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !62
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !16
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1482
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !50
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !50
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !50
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62, !noalias !1963 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !204, !noalias !1963 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !59, !noalias !1963 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !100

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !50
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !102, !llvm.loop !1961

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1962
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.45", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !59
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !62
  store ptr %i.y, ptr %i.q, align 8, !tbaa !204
  store i32 0, ptr %i.p, align 16, !tbaa !1482
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !827
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1962
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !827
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !827
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !827
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !16
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !16
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !16
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !16
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !62     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !204
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !59   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !204  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !59
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES8_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S8_EEEES8_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !16 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !1968

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !50
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !50
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !50
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !16
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1969

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES8_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S8_EEEES8_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1970

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES8_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S8_EEEES8_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !59
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES8_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S8_EEEES8_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES8_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S8_EEEES8_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES8_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S8_EEEES8_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES8_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S8_EEEES8_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1482
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1482
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES8_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S8_EEEES8_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclES8_NS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S8_EEEES8_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0, ptr %.0.val, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #13 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !780, !noalias !1971 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1647, !noalias !1971 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !779, !noalias !1971 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = ptrtoint ptr %.0.val to i64
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !100

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.05 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50
  %i.x = icmp eq ptr %.0.val, %i.w
  br i1 %i.x, label %.thread, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.05, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !102, !llvm.loop !1754

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa9.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  store ptr %.lcssa9.sink, ptr %1, align 8, !tbaa !1755
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #12 align 2 {
_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit:
  %2 = alloca %"class.llvm::DenseMap.80", align 16 ; 8 uses
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
  %.sroa.speculated.i = tail call noundef range(i32 64, 0) i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !779
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !780
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1647
  store i32 0, ptr %i.p, align 16, !tbaa !1648
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1755
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !827
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !827
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !16 ; 2 uses
  %i.ae = load <2 x i32>, ptr %i.p, align 16, !tbaa !16
  store <2 x i32> %i.ae, ptr %i.ab, align 8, !tbaa !16
  %i.af = icmp eq i32 %i.ad, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit
  %i.ag = zext i32 %i.ad to i64                   ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 5
  %i.ai = add nuw nsw i64 %i.ag, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.al, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #12 align 2 {
bb.a:
  %.val11 = load ptr, ptr %1, align 8, !tbaa !780
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !1647
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !779 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !1647 ; 3 uses
  %.val12 = load ptr, ptr %0, align 8, !tbaa !780
  %i.d = getelementptr i8, ptr %0, i64 20
  %.val7 = load i32, ptr %i.d, align 4, !tbaa !779
  %i.e = add i32 %.val7, -1                       ; 2 uses
  %i.f = zext i32 %.val to i64
  %i.g = add nuw nsw i64 %i.f, 31
  %i.h = lshr i64 %i.g, 5                         ; 2 uses
  %.not.i23 = icmp eq i64 %i.h, 0
  br i1 %.not.i23, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val8, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16   ; 2 uses
  %.not11.i21 = icmp eq i32 %i.j, 0
  br i1 %.not11.i21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph26
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.k = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i22 = phi i32 [ %i.j, %.lr.ph ], [ %i.au, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i22, i1 true)
  %i.m = or disjoint i32 %i.l, %i.k
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %.val11, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = mul i64 %i.q, -4658895280553007687       ; 2 uses
  %i.s = lshr i64 %i.r, 31
  %i.t = xor i64 %i.s, %i.r
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.e, %i.u                       ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !16
  %i.aa = and i32 %i.v, 31                        ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.v, %bb.b ]
  %i.ad = add i32 %.014.i, 1
  %i.ae = and i32 %i.ad, %i.e                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = lshr i64 %i.af, 5                       ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !16
  %i.aj = and i32 %i.ae, 31                       ; 2 uses
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, !llvm.loop !1976

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.w, %bb.b ], [ %i.af, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.x, %bb.b ], [ %i.ag, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.aa, %bb.b ], [ %i.aj, %.lr.ph.i ]
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %.val12, i64 %.lcssa12.i ; 2 uses
  store ptr %i.p, ptr %i.am, align 8, !tbaa !50
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !tbaa.struct !1910
  %i.ap = shl nuw i32 1, %.lcssa.i
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %.lcssa11.i ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !16
  %i.as = or i32 %i.ar, %i.ap
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !16
  %i.at = add i32 %.0.i22, -1
  %i.au = and i32 %i.at, %.0.i22                  ; 2 uses
  %.not11.i = icmp eq i32 %i.au, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1977

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph26, !llvm.loop !1978

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !779
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.av = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %.val, %bb.a ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i32, ptr %i.aw, align 8, !tbaa !1648
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val10, ptr %i.ax, align 8, !tbaa !1648
  %i.ay = icmp eq i32 %i.av, 0
  br i1 %i.ay, label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.az = load ptr, ptr %1, align 8, !tbaa !780
  %i.ba = zext i32 %i.av to i64                   ; 2 uses
  %i.bb = shl nuw nsw i64 %i.ba, 5
  %i.bc = add nuw nsw i64 %i.ba, 31
  %i.bd = lshr i64 %i.bc, 3
  %i.be = and i64 %i.bd, 1073741820
  %i.bf = add nuw nsw i64 %i.be, %i.bb
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.az, i64 noundef %i.bf, i64 noundef 8) #27
  store i32 0, ptr %i.b, align 4, !tbaa !779
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_120ItaniumVTableBuilder10MethodInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E21eraseFromFilledBucketIZNSF_21eraseFromFilledBucketEPSD_EUlRSD_E_EEvSH_OT_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr noundef nonnull %1) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val.i = load i32, ptr %i.a, align 8, !tbaa !1648
  %i.b = add i32 %.val.i, -1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !1648
  %.val35 = load ptr, ptr %0, align 8, !tbaa !780 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val34 = load ptr, ptr %i.c, align 8, !tbaa !1647 ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 20
  %.val = load i32, ptr %i.d, align 4, !tbaa !779
  %i.e = add i32 %.val, -1                        ; 4 uses
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %.val35 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 5
  %i.j = trunc i64 %i.i to i32                    ; 3 uses
  %i.k = add i32 %i.j, 1
  %i.l = and i32 %i.k, %i.e                       ; 3 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = lshr i64 %i.m, 5
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val34, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16
  %i.q = and i32 %i.l, 31
  %i.r = lshr i32 %i.p, %i.q
  %i.s = trunc i32 %i.r to i1
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.pn = phi i64 [ %i.am, %bb.c ], [ %i.m, %bb.a ]
  %i.t = phi i32 [ %i.al, %bb.c ], [ %i.l, %bb.a ] ; 3 uses
  %.0334 = phi i32 [ %.2, %bb.c ], [ %i.j, %bb.a ] ; 3 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %.val35, i64 %.pn ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = sub i32 %.0334, %i.aa
  %i.ac = and i32 %i.ab, %i.e
  %i.ad = sub i32 %i.t, %i.aa
  %i.ae = and i32 %i.ad, %i.e
  %i.af = icmp ult i32 %i.ac, %i.ae
  br i1 %i.af, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ag = zext i32 %.0334 to i64
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %.val35, i64 %i.ag ; 2 uses
  store ptr %i.v, ptr %i.ah, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !tbaa.struct !1910
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.2 = phi i32 [ %.0334, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %i.ak = add i32 %i.t, 1
  %i.al = and i32 %i.ak, %i.e                     ; 3 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = lshr i64 %i.am, 5
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val34, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !16
  %i.aq = and i32 %i.al, 31
  %i.ar = lshr i32 %i.ap, %i.aq
  %i.as = trunc i32 %i.ar to i1
  br i1 %i.as, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.033.lcssa = phi i32 [ %i.j, %bb.a ], [ %.2, %bb.c ] ; 2 uses
  %i.at = and i32 %.033.lcssa, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = xor i32 %i.au, -1
  %i.aw = lshr i32 %.033.lcssa, 5
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val34, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !16
  %i.ba = and i32 %i.az, %i.av
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !83, !noalias !1979 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84, !noalias !1979 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !80, !noalias !1979 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !16
end_hunk_9
begin_hunk_10_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSD_bEOT_DpOT0_:bb.a
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !16
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !102, !llvm.loop !1191

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1984
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !243
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit, label %bb.d, !prof !101

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1984
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !84
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !83
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 7 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 80                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !16
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !243
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !50
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !50
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 0, ptr %i.bk, align 8, !tbaa !11
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  store i32 1, ptr %i.bl, align 4, !tbaa !12
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E22findBucketForInsertionIS5_EEPSD_RKT_SH_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !83, !noalias !1985 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84, !noalias !1985 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !80, !noalias !1985 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !100

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !50
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [80 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !102, !llvm.loop !1191

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1984
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.37", align 16 ; 10 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 80                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !83
  store ptr %i.y, ptr %i.q, align 8, !tbaa !84
  store i32 0, ptr %i.p, align 16, !tbaa !243
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1984   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1841 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !827
  store ptr %i.z, ptr %2, align 16, !tbaa !1984
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !827
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !1841
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !16
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !16
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !16
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !16
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !16 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [80 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !8  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.au) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.0.i3.i.i, -1
  %i.ay = and i32 %i.ax, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !86

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !87

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !80 ; 2 uses
  %i.az = icmp eq i32 %.pr.i, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i
  %i.ba = load ptr, ptr %2, align 16, !tbaa !83
  %i.bb = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bc = mul nuw nsw i64 %i.bb, 80
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !83
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !80   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !84   ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !80
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS5_9ThunkInfoELj1EEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.bu, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [80 x i8], ptr %i.a, i64 %i.t ; 8 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16
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
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !16
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1990

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.lcssa12.i ; 6 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 20 ; 2 uses
  store i32 1, ptr %i.aw, align 4, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !11 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIN5clang9ThunkInfoELj1EEC2EOS3_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ba = icmp eq ptr %i.as, %i.u
  br i1 %i.ba, label %_ZN4llvm11SmallVectorIN5clang9ThunkInfoELj1EEC2EOS3_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !8  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.e, label %_ZN4llvm15SmallVectorImplIN5clang9ThunkInfoEE12assignRemoteEOS3_.exit.i

_ZN4llvm15SmallVectorImplIN5clang9ThunkInfoEE12assignRemoteEOS3_.exit.i: ; preds = %bb.d
  store ptr %i.bb, ptr %i.at, align 8, !tbaa !8
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !12
  store i32 %i.bf, ptr %i.aw, align 4, !tbaa !12
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !8
  store i32 0, ptr %i.be, align 4, !tbaa !12
  br label %_ZN4llvm11SmallVectorIN5clang9ThunkInfoELj1EEC2EOS3_.exit.i.sink.split

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i32 %i.ay, 1
  br i1 %.not, label %_ZSt4moveIPN5clang9ThunkInfoES2_ET0_T_S4_S3_.exit34.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = zext i32 %i.ay to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(72) %i.at, ptr noundef nonnull %i.au, i64 noundef %i.bg, i64 noundef 56) #27
  br label %_ZSt4moveIPN5clang9ThunkInfoES2_ET0_T_S4_S3_.exit34.i

_ZSt4moveIPN5clang9ThunkInfoES2_ET0_T_S4_S3_.exit34.i: ; preds = %bb.e, %bb.f
  %i.bh = load i32, ptr %i.ax, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i9 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i9, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang9ThunkInfoELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt4moveIPN5clang9ThunkInfoES2_ET0_T_S4_S3_.exit34.i
  %i.bi = zext i32 %i.bh to i64
  %i.bj = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bk = load ptr, ptr %i.at, align 8, !tbaa !8
  %gepdiff.i = mul nuw nsw i64 %i.bi, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr align 8 %i.bj, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang9ThunkInfoELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN5clang9ThunkInfoELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i: ; preds = %bb.g, %_ZSt4moveIPN5clang9ThunkInfoES2_ET0_T_S4_S3_.exit34.i
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !11
  br label %_ZN4llvm11SmallVectorIN5clang9ThunkInfoELj1EEC2EOS3_.exit.i.sink.split

_ZN4llvm11SmallVectorIN5clang9ThunkInfoELj1EEC2EOS3_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIN5clang9ThunkInfoEE12assignRemoteEOS3_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIN5clang9ThunkInfoELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i
  store i32 0, ptr %i.ax, align 8, !tbaa !11
  br label %_ZN4llvm11SmallVectorIN5clang9ThunkInfoELj1EEC2EOS3_.exit.i

_ZN4llvm11SmallVectorIN5clang9ThunkInfoELj1EEC2EOS3_.exit.i: ; preds = %_ZN4llvm11SmallVectorIN5clang9ThunkInfoELj1EEC2EOS3_.exit.i.sink.split, %bb.c, %._crit_edge.i
  %i.bl = shl nuw i32 1, %.lcssa.i
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !16
  %i.bo = or i32 %i.bn, %i.bl
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !8  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIN5clang9ThunkInfoELj1EEC2EOS3_.exit.i
  tail call void @free(ptr noundef %i.bq) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIN5clang9ThunkInfoELj1EEC2EOS3_.exit.i, %bb.h
  %i.bt = add i32 %.0.i16, -1
  %i.bu = and i32 %i.bt, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bu, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1991

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS2_9ThunkInfoELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS5_9ThunkInfoELj1EEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !1992

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS5_9ThunkInfoELj1EEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !80
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS5_9ThunkInfoELj1EEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS5_9ThunkInfoELj1EEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS5_9ThunkInfoELj1EEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bv = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS5_9ThunkInfoELj1EEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !243
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !243
  %i.bz = icmp eq i32 %i.bv, 0
  br i1 %i.bz, label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS5_9ThunkInfoELj1EEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.ca = load ptr, ptr %1, align 8, !tbaa !83
  %i.cb = zext i32 %i.bv to i64                   ; 2 uses
  %i.cc = mul nuw nsw i64 %i.cb, 80
  %i.cd = add nuw nsw i64 %i.cb, 31
  %i.ce = lshr i64 %i.cd, 3
  %i.cf = and i64 %i.ce, 1073741820
  %i.cg = add nuw nsw i64 %i.cf, %i.cc
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ca, i64 noundef %i.cg, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS1_9ThunkInfoELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclENS_11SmallVectorINS5_9ThunkInfoELj1EEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZSt9__find_ifIPN5clang9ThunkInfoEN9__gnu_cxx5__ops16_Iter_equals_valIKS1_EEET_S8_S8_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 56
  %i.e = ashr i64 %i.d, 2                         ; 3 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = load i64, ptr %2, align 8, !tbaa !1117   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.m = mul nuw nsw i64 %i.e, 224
  %scevgep = getelementptr i8, ptr %0, i64 %i.m   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN5clang9ThunkInfoEEclIPS3_EEbT_.exit47.thread
  %.083 = phi i64 [ %i.e, %.lr.ph ], [ %i.db, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN5clang9ThunkInfoEEclIPS3_EEbT_.exit47.thread ] ; 2 uses
  %.02982 = phi ptr [ %0, %.lr.ph ], [ %i.da, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN5clang9ThunkInfoEEclIPS3_EEbT_.exit47.thread ] ; 29 uses
  %i.n = load i64, ptr %.02982, align 8, !tbaa !1117
  %i.o = icmp eq i64 %i.n, %i.g
  br i1 %i.o, label %_ZN5clangeqERKNS_14ThisAdjustmentES2_.exit.i.i, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN5clang9ThunkInfoEEclIPS3_EEbT_.exit.thread

_ZN5clangeqERKNS_14ThisAdjustmentES2_.exit.i.i:   ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.02982, i64 8
  %i.q = load i128, ptr %i.p, align 8
  %i.r = load i128, ptr %i.h, align 8
  %i.s = icmp ne i128 %i.q, %i.r
end_hunk_10
begin_hunk_11_@_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E24lookupOrInsertIntoBucketImJEEESt4pairIPS8_bEOT_DpOT0_:bb.a
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit, label %bb.d, !prof !101

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E15LookupBucketForImEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2040
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !766
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !760
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 6                 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !16
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !16
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !768
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %1, align 8, !tbaa !47
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !47
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, i8 0, i64 56, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E15LookupBucketForImEEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E15LookupBucketForImEEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E15LookupBucketForImEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !760, !noalias !2041 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !766, !noalias !2041 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !767, !noalias !2041 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !47     ; 2 uses
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !100

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load i64, ptr %i.v, align 8, !tbaa !47
  %i.x = icmp eq i64 %i.h, %i.w                   ; 3 uses
  br i1 %i.x, label %.thread, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.024, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !102, !llvm.loop !2039

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.x, %bb.c ], [ %i.x, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2040
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.82", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !767
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 6                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !760
  store ptr %i.y, ptr %i.q, align 8, !tbaa !766
  store i32 0, ptr %i.p, align 16, !tbaa !768
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !827
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2040
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !827
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !827
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !827
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !16
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !16
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !16
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !16
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 6
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEED2Ev.exit

_ZN4llvm8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !760
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !766
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !767  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !766  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !760
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !767
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !47   ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.014.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !16
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !2046

_ZZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store i64 %i.v, ptr %i.ar, align 8, !tbaa !47
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.as, ptr noundef nonnull align 8 dereferenceable(56) %i.at, i64 56, i1 false), !tbaa.struct !48
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !16
  %i.ax = or i32 %i.aw, %i.au
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !16
  %i.ay = add i32 %.0.i16, -1
  %i.az = and i32 %i.ay, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2047

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !2048

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !767
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !768
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !768
  %i.be = icmp eq i32 %i.ba, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bf = load ptr, ptr %1, align 8, !tbaa !760
  %i.bg = zext i32 %i.ba to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 6
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bf, i64 noundef %i.bl, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !767
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEE4killEv.exit

_ZN4llvm8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !79, !noalias !2049 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98, !noalias !2049 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !76, !noalias !2049 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.sroa.06.0.copyload.i = load i64, ptr %1, align 8, !tbaa !49 ; 2 uses
  %i.i = mul i64 %.sroa.06.0.copyload.i, -4658895280553007687 ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.h, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph.i, label %.loopexit, !prof !100

.lr.ph.i:                                         ; preds = %bb.b
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.27.0..sroa_idx.i, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.v = phi ptr [ %i.o, %.lr.ph.i ], [ %i.ac, %bb.d ] ; 3 uses
  %.02330.i = phi i32 [ %i.m, %.lr.ph.i ], [ %i.aa, %bb.d ]
  %.sroa.0.0.copyload.i = load i64, ptr %i.v, align 8, !tbaa !49
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !16
  %i.w = icmp eq i64 %.sroa.06.0.copyload.i, %.sroa.0.0.copyload.i
  %i.x = icmp eq i32 %.sroa.22.0.copyload.i, %.sroa.2.0.copyload.i
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit, label %bb.d, !prof !101

bb.d:                                             ; preds = %bb.c
  %i.z = add nuw i32 %.02330.i, 1
  %i.aa = and i32 %i.z, %i.h                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %bb.c, label %.loopexit, !prof !102, !llvm.loop !2054

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.b
  %.lcssa34.sink.i.ph = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa34.sink.i.ph, ptr %i.a, align 8, !tbaa !2055
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !227
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.e, !prof !101

bb.e:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2055
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !98
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !79
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.e
  %i.aq = phi ptr [ %.pre15, %bb.e ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.e ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.e ], [ %.lcssa34.sink.i.ph, %.loopexit ] ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 24                ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !16
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !16
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !227
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1222
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 0, ptr %i.bg, align 8, !tbaa !47
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %bb.c, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.v, %bb.c ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !79, !noalias !2056 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !98, !noalias !2056 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !76, !noalias !2056 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.06.0.copyload = load i64, ptr %1, align 8, !tbaa !49 ; 2 uses
  %i.h = mul i64 %.sroa.06.0.copyload, -4658895280553007687 ; 2 uses
  %i.i = lshr i64 %i.h, 31
  %i.j = xor i64 %i.i, %i.h
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.g, %i.k                       ; 3 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = lshr i64 %i.m, 5
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %i.r = and i32 %i.l, 31
  %i.s = lshr i32 %i.q, %i.r
  %i.t = trunc i32 %i.s to i1
  br i1 %i.t, label %.lr.ph, label %.thread, !prof !100

.lr.ph:                                           ; preds = %bb.b
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load i32, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %i.u = phi ptr [ %i.n, %.lr.ph ], [ %i.ab, %bb.d ] ; 3 uses
  %.02330 = phi i32 [ %i.l, %.lr.ph ], [ %i.z, %bb.d ]
  %.sroa.0.0.copyload = load i64, ptr %i.u, align 8, !tbaa !49
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !16
  %i.v = icmp eq i64 %.sroa.06.0.copyload, %.sroa.0.0.copyload
  %i.w = icmp eq i32 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.x = select i1 %i.v, i1 %i.w, i1 false        ; 3 uses
  br i1 %i.x, label %.thread, label %bb.d, !prof !101

bb.d:                                             ; preds = %bb.c
  %i.y = add nuw i32 %.02330, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %bb.c, label %.thread, !prof !102, !llvm.loop !2054

.thread:                                          ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.lcssa34.sink = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.d ], [ %i.u, %bb.c ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.x, %bb.d ], [ %i.x, %bb.c ]
  store ptr %.lcssa34.sink, ptr %2, align 8, !tbaa !2055
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.39", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !76
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !79
  store ptr %i.y, ptr %i.q, align 8, !tbaa !98
  store i32 0, ptr %i.p, align 16, !tbaa !227
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !827
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2055
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !827
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !827
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !827
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !16
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !16
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !16
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !16
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEED2Ev.exit

_ZN4llvm8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !76   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !98   ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !76
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_lEEEES6_lS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.u, align 8, !tbaa !49
  %i.v = mul i64 %.sroa.0.0.copyload.i, -4658895280553007687 ; 2 uses
  %i.w = lshr i64 %i.v, 31
  %i.x = xor i64 %i.w, %i.v
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.k, %i.y                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !16
  %i.ae = and i32 %i.z, 31                        ; 2 uses
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ai, %.lr.ph.i ], [ %i.z, %bb.b ]
  %i.ah = add i32 %.014.i, 1
  %i.ai = and i32 %i.ah, %i.k                     ; 3 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 5                       ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !16
  %i.an = and i32 %i.ai, 31                       ; 2 uses
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  br i1 %i.ap, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !2061

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.aa, %bb.b ], [ %i.aj, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ae, %bb.b ], [ %i.an, %.lr.ph.i ]
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !1222
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !47
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !47
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !16
  %i.ax = or i32 %i.aw, %i.au
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !16
  %i.ay = add i32 %.0.i17, -1
  %i.az = and i32 %i.ay, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2062

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_lEEEES3_lS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_lEEEES6_lS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !2063

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_lEEEES6_lS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !76
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_lEEEES6_lS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_lEEEES6_lS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_lEEEES6_lS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_lEEEES6_lS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !227
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !227
  %i.be = icmp eq i32 %i.ba, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_lEEEES6_lS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bf = load ptr, ptr %1, align 8, !tbaa !79
  %i.bg = zext i32 %i.ba to i64                   ; 2 uses
  %i.bh = mul nuw nsw i64 %i.bg, 24
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bf, i64 noundef %i.bl, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE4killEv.exit

_ZN4llvm8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_lEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclElNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_lEEEES6_lS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !760, !noalias !2064 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !766, !noalias !2064 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !767, !noalias !2064 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i64, ptr %1, align 8, !tbaa !47     ; 2 uses
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !100

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load i64, ptr %i.w, align 8, !tbaa !47
  %i.y = icmp eq i64 %i.i, %i.x
  br i1 %i.y, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E15LookupBucketForImEEbRKT_RPS8_.exit, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = add nuw i32 %.024.i, 1
  %i.aa = and i32 %i.z, %i.h                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %.loopexit, !prof !102, !llvm.loop !2039

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2040
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !768
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit, label %bb.d, !prof !101

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E15LookupBucketForImEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2040
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !766
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !760
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 6                 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !16
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !16
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !768
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %1, align 8, !tbaa !47
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !47
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, i8 0, i64 56, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E15LookupBucketForImEEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E15LookupBucketForImEEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E22findBucketForInsertionImEEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
end_hunk_11
begin_hunk_12_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS2_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_:bb.a

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS2_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.bd = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.be = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.bf = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = sdiv exact i64 %i.bi, 24                ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = and i32 %i.bk, 31
  %i.bm = shl nuw i32 1, %i.bl
  %i.bn = lshr i64 %i.bj, 5
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !16
  %i.bq = or i32 %i.bm, %i.bp
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !16
  %i.br = load i32, ptr %i.aw, align 8, !tbaa !26
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.aw, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1498
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bu = load i64, ptr %2, align 4
  store i64 %i.bu, ptr %i.bt, align 8
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS2_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS2_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS2_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.bf, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS2_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ %i.af, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS2_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS2_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17, !noalias !2076 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24, !noalias !2076 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !25, !noalias !2076 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !916    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.i, align 8, !tbaa !47 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = mul i64 %.sroa.0.0.copyload.i.i, 37
  %i.o = shl i64 %i.m, 32
  %i.p = and i64 %i.n, 4294967295
  %i.q = or disjoint i64 %i.o, %i.p
  %i.r = mul i64 %i.q, -4658895280553007687       ; 2 uses
  %i.s = lshr i64 %i.r, 31
  %i.t = xor i64 %i.s, %i.r
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.g, %i.u                       ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.w ; 2 uses
  %i.y = lshr i64 %i.w, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !16
  %i.ab = and i32 %i.v, 31
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %.lr.ph, label %.thread, !prof !100

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ae = phi ptr [ %i.ao, %bb.c ], [ %i.x, %bb.b ] ; 3 uses
  %.024 = phi i32 [ %i.am, %bb.c ], [ %i.v, %bb.b ]
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !916
  %i.ag = icmp eq ptr %i.h, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = icmp eq i64 %.sroa.0.0.copyload.i.i, %i.ai
  %i.ak = select i1 %i.ag, i1 %i.aj, i1 false     ; 3 uses
  br i1 %i.ak, label %.thread, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph
  %i.al = add nuw i32 %.024, 1
  %i.am = and i32 %i.al, %i.g                     ; 3 uses
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.ap = lshr i64 %i.an, 5
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !16
  %i.as = and i32 %i.am, 31
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = trunc i32 %i.at to i1
  br i1 %i.au, label %.lr.ph, label %.thread, !prof !102, !llvm.loop !2074

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.x, %bb.b ], [ null, %bb.a ], [ %i.ao, %bb.c ], [ %i.ae, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ak, %bb.c ], [ %i.ak, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2075
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS2_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap", align 16   ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !17
  store ptr %i.y, ptr %i.q, align 8, !tbaa !24
  store i32 0, ptr %i.p, align 16, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS2_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !827
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2075
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !827
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !827
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !827
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !16
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !16
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !16
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !16
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIN5clang13BaseSubobjectENS1_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIN5clang13BaseSubobjectENS1_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang13BaseSubobjectENS1_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS2_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !25   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS5_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS2_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bj, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS2_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !916
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.w, align 8, !tbaa !47
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = mul i64 %i.x, -4658895280553007687       ; 2 uses
  %i.z = lshr i64 %i.y, 31
  %i.aa = xor i64 %i.z, %i.y
  %i.ab = mul i64 %.sroa.0.0.copyload.i.i.i, 37
  %i.ac = shl i64 %i.aa, 32
  %i.ad = and i64 %i.ab, 4294967295
  %i.ae = or disjoint i64 %i.ac, %i.ad
  %i.af = mul i64 %i.ae, -4658895280553007687     ; 2 uses
  %i.ag = lshr i64 %i.af, 31
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = and i32 %i.k, %i.ai                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !16
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS2_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.as, %.lr.ph.i ], [ %i.aj, %bb.b ]
  %i.ar = add i32 %.014.i, 1
  %i.as = and i32 %i.ar, %i.k                     ; 3 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = lshr i64 %i.at, 5                       ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !16
  %i.ax = and i32 %i.as, 31                       ; 2 uses
  %i.ay = lshr i32 %i.aw, %i.ax
  %i.az = trunc i32 %i.ay to i1
  br i1 %i.az, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS2_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !2081

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS2_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ak, %bb.b ], [ %i.at, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ao, %bb.b ], [ %i.ax, %.lr.ph.i ]
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !1498
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bd = load i64, ptr %i.bc, align 8
  store i64 %i.bd, ptr %i.bb, align 8
  %i.be = shl nuw i32 1, %.lcssa.i
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !16
  %i.bh = or i32 %i.bg, %i.be
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !16
  %i.bi = add i32 %.0.i17, -1
  %i.bj = and i32 %i.bi, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bj, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2082

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS2_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS5_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !2083

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS5_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !25
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS5_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS5_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS5_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bk = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS5_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !26
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !26
  %i.bo = icmp eq i32 %i.bk, 0
  br i1 %i.bo, label %_ZN4llvm8DenseMapIN5clang13BaseSubobjectENS1_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS5_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bp = load ptr, ptr %1, align 8, !tbaa !17
  %i.bq = zext i32 %i.bk to i64                   ; 2 uses
  %i.br = mul nuw nsw i64 %i.bq, 24
  %i.bs = add nuw nsw i64 %i.bq, 31
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = and i64 %i.bt, 1073741820
  %i.bv = add nuw nsw i64 %i.bu, %i.br
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bp, i64 noundef %i.bv, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN5clang13BaseSubobjectENS1_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIN5clang13BaseSubobjectENS1_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS5_12VTableLayout20AddressPointLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare void @_ZN4llvm19SmallPtrSetImplBase16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #2

declare void @_ZNK5clang9NamedDecl24getQualifiedNameAsStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5clang9CharUnitsESt4lessIS5_ESaISt4pairIKS5_S7_EEE6insertISA_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISC_T_EE5valueESA_ISt17_Rb_tree_iteratorISC_EbEE4typeEOSI_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !944  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1107 ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1107 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1026
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !948 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5clang9CharUnitsESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, label %bb.b, !llvm.loop !2084

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5clang9CharUnitsESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5clang9CharUnitsESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1107 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1026
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #27 ; 2 uses
  %.not.i.i.i5 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5clang9CharUnitsESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i15 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5clang9CharUnitsESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit ], [ %i.c, %bb.a ]
  %i.x = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5clang9CharUnitsEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJS6_IS5_S9_EEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i15, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %.critedge
  %.sroa.013.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.sroa.3.0 = phi i8 [ 1, %.critedge ], [ 0, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.013.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN5clang13CXXMethodDeclESt4lessIS5_ESaISt4pairIKS5_S9_EEE6insertISC_IS5_S9_EEENSt9enable_ifIXsr16is_constructibleISE_T_EE5valueESC_ISt17_Rb_tree_iteratorISE_EbEE4typeEOSK_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_12
begin_hunk_13_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSC_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit, label %bb.d, !prof !101

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2120
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !845
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !839
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 24                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !16
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !848
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !186
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !186
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !839, !noalias !2121 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !845, !noalias !2121 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !846, !noalias !2121 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !186    ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !100

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !186
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !102, !llvm.loop !847

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2120
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.607", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !846
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !839
  store ptr %i.y, ptr %i.q, align 8, !tbaa !845
  store i32 0, ptr %i.p, align 16, !tbaa !848
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !827
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2120
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !827
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !827
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !827
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !16
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !16
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !16
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !16
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !839
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !845
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !846  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !845  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !839
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !846
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !186  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !16
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, !llvm.loop !2126

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !186
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !2127
  %i.av = shl nuw i32 1, %.lcssa.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !16
  %i.ay = or i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !16
  %i.az = add i32 %.0.i16, -1
  %i.ba = and i32 %i.az, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2129

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !2130

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !846
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !848
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !848
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bg = load ptr, ptr %1, align 8, !tbaa !839
  %i.bh = zext i32 %i.bb to i64                   ; 2 uses
  %i.bi = mul nuw nsw i64 %i.bh, 24
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bg, i64 noundef %i.bm, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !846
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS5_15ASTRecordLayout9VBaseInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang13CXXRecordDecl10vbases_endEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK5clang13CXXRecordDecl12vbases_beginEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !254  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8 ; 3 uses
  %i.e = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 1
  %i.f = icmp eq i64 %i.e, 0
  %i.g = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.f, i64 %i.g, i64 0 ; 3 uses
  %i.h = icmp ugt i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.h, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.i = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 2
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  %i.j = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i, -4
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 18624
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !263  ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 2632 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !266  ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = add i64 %i.p, 24                         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 2640
  %i.s = load i64, ptr %i.r, align 8, !tbaa !278
  %i.t = icmp ult i64 %i.q, %i.s
  br i1 %i.t, label %bb.e, label %bb.f, !prof !101

bb.e:                                             ; preds = %bb.d
  %i.u = inttoptr i64 %i.q to ptr
  store ptr %i.u, ptr %i.n, align 8, !tbaa !266
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.v = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.n, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.v to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.p, %bb.e ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %bb.f ], [ %i.o, %bb.e ] ; 3 uses
  store ptr %i.m, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !279
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.w, align 8, !tbaa !282
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.c, ptr %i.x, align 8, !tbaa !283
  %i.y = or i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i, 4
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.z = ptrtoint ptr %i.c to i64
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i

_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.z, %bb.h ], [ %i.y, %bb.g ]
  %i.aa = or i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.aa, ptr %i.d, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i, %bb.a
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i = phi i64 [ %i.aa, %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %bb.a ] ; 2 uses
  %i.ab = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  %i.ac = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i, -6 ; 2 uses
  %.not.not14.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  %.not.not.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, %.not.not14.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !282
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !279 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !284 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.af, %i.ai
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl4dataEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ai, ptr %i.ae, align 8, !tbaa !282
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !56
  %i.ak = getelementptr i8, ptr %i.aj, i64 152, !nosanitize !185
  %i.al = load ptr, ptr %i.ak, align 8, !nosanitize !185
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull %i.c) #27, !inline_history !776
  br label %_ZNK5clang13CXXRecordDecl4dataEv.exit

_ZNK5clang13CXXRecordDecl4dataEv.exit:            ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !288
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !315
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.aq
  ret ptr %i.ar
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIPSt17reference_wrapperIN5clang8VPtrInfoEElN9__gnu_cxx5__ops15_Iter_comp_iterIZL13rebucketPathsRN4llvm11SmallVectorISt10unique_ptrIS2_St14default_deleteIS2_EELj2EEEE3$_0EEEvT_SI_T0_T1_"(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #21 {
bb.a:
end_hunk_13
begin_hunk_14_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !909
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !907
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.bd = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.be = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.bf = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 4                 ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = and i32 %i.bk, 31
  %i.bm = shl nuw i32 1, %i.bl
  %i.bn = lshr i64 %i.bj, 5
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !16
  %i.bq = or i32 %i.bm, %i.bp
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !16
  %i.br = load i32, ptr %i.aw, align 8, !tbaa !908
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.aw, align 8, !tbaa !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1498
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.bf, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.af, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !907, !noalias !2164 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !909, !noalias !2164 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !904, !noalias !2164 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !916    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.i, align 8, !tbaa !47 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = mul i64 %.sroa.0.0.copyload.i.i, 37
  %i.o = shl i64 %i.m, 32
  %i.p = and i64 %i.n, 4294967295
  %i.q = or disjoint i64 %i.o, %i.p
  %i.r = mul i64 %i.q, -4658895280553007687       ; 2 uses
  %i.s = lshr i64 %i.r, 31
  %i.t = xor i64 %i.s, %i.r
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.g, %i.u                       ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.w ; 2 uses
  %i.y = lshr i64 %i.w, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !16
  %i.ab = and i32 %i.v, 31
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %.lr.ph, label %.thread, !prof !100

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ae = phi ptr [ %i.ao, %bb.c ], [ %i.x, %bb.b ] ; 3 uses
  %.024 = phi i32 [ %i.am, %bb.c ], [ %i.v, %bb.b ]
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !916
  %i.ag = icmp eq ptr %i.h, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = icmp eq i64 %.sroa.0.0.copyload.i.i, %i.ai
  %i.ak = select i1 %i.ag, i1 %i.aj, i1 false     ; 3 uses
  br i1 %i.ak, label %.thread, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph
  %i.al = add nuw i32 %.024, 1
  %i.am = and i32 %i.al, %i.g                     ; 3 uses
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.ap = lshr i64 %i.an, 5
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !16
  %i.as = and i32 %i.am, 31
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = trunc i32 %i.at to i1
  br i1 %i.au, label %.lr.ph, label %.thread, !prof !102, !llvm.loop !2162

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.x, %bb.b ], [ null, %bb.a ], [ %i.ao, %bb.c ], [ %i.ae, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ak, %bb.c ], [ %i.ak, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2163
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.999", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !904
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !907
  store ptr %i.y, ptr %i.q, align 8, !tbaa !909
  store i32 0, ptr %i.p, align 16, !tbaa !908
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !827
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2163
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !827
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !827
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !827
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !16
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !16
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !16
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !16
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !907
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !909
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !904  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !909  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !907
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !904
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.bg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !916
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.w, align 8, !tbaa !47
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = mul i64 %i.x, -4658895280553007687       ; 2 uses
  %i.z = lshr i64 %i.y, 31
  %i.aa = xor i64 %i.z, %i.y
  %i.ab = mul i64 %.sroa.0.0.copyload.i.i.i, 37
  %i.ac = shl i64 %i.aa, 32
  %i.ad = and i64 %i.ab, 4294967295
  %i.ae = or disjoint i64 %i.ac, %i.ad
  %i.af = mul i64 %i.ae, -4658895280553007687     ; 2 uses
  %i.ag = lshr i64 %i.af, 31
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = and i32 %i.k, %i.ai                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !16
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.as, %.lr.ph.i ], [ %i.aj, %bb.b ]
  %i.ar = add i32 %.014.i, 1
  %i.as = and i32 %i.ar, %i.k                     ; 3 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = lshr i64 %i.at, 5                       ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !16
  %i.ax = and i32 %i.as, 31                       ; 2 uses
  %i.ay = lshr i32 %i.aw, %i.ax
  %i.az = trunc i32 %i.ay to i1
  br i1 %i.az, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2169

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ak, %bb.b ], [ %i.at, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ao, %bb.b ], [ %i.ax, %.lr.ph.i ]
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !1498
  %i.bb = shl nuw i32 1, %.lcssa.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.be = or i32 %i.bd, %i.bb
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !16
  %i.bf = add i32 %.0.i16, -1
  %i.bg = and i32 %i.bf, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2170

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !2171

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !904
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bh = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !908
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !908
  %i.bl = icmp eq i32 %i.bh, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !907
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 4
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !904
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang13BaseSubobjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E21eraseFromFilledBucketIZNSB_21eraseFromFilledBucketEPS9_EUlRS9_E_EEvSD_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !908
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !908
  %i.d = load ptr, ptr %0, align 8, !tbaa !907    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !909  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !904
  %i.i = add i32 %i.h, -1                         ; 4 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add i32 %i.n, 1
  %i.p = and i32 %i.o, %i.i                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !16
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.pn = phi i64 [ %i.aw, %bb.c ], [ %i.q, %bb.a ]
  %i.x = phi i32 [ %i.av, %bb.c ], [ %i.p, %bb.a ] ; 3 uses
  %.03337 = phi i32 [ %.2, %bb.c ], [ %i.n, %bb.a ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pn ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !916
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.aa, align 8, !tbaa !47
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = mul i64 %i.ab, -4658895280553007687     ; 2 uses
  %i.ad = lshr i64 %i.ac, 31
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %.sroa.0.0.copyload.i.i, 37
  %i.ag = shl i64 %i.ae, 32
  %i.ah = and i64 %i.af, 4294967295
  %i.ai = or disjoint i64 %i.ag, %i.ah
  %i.aj = mul i64 %i.ai, -4658895280553007687     ; 2 uses
  %i.ak = lshr i64 %i.aj, 31
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  %i.an = sub i32 %.03337, %i.am
  %i.ao = and i32 %i.an, %i.i
  %i.ap = sub i32 %i.x, %i.am
  %i.aq = and i32 %i.ap, %i.i
  %i.ar = icmp ult i32 %i.ao, %i.aq
  br i1 %i.ar, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.as = zext i32 %.03337 to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !1498
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.2 = phi i32 [ %.03337, %.lr.ph ], [ %i.x, %bb.b ] ; 2 uses
  %i.au = add i32 %i.x, 1
  %i.av = and i32 %i.au, %i.i                     ; 3 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = lshr i64 %i.aw, 5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !16
  %i.ba = and i32 %i.av, 31
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = trunc i32 %i.bb to i1
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.033.lcssa = phi i32 [ %i.n, %bb.a ], [ %.2, %bb.c ] ; 2 uses
  %i.bd = and i32 %.033.lcssa, 31
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = xor i32 %i.be, -1
  %i.bg = lshr i32 %.033.lcssa, 5
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !16
  %i.bk = and i32 %i.bj, %i.bf
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #19

declare noundef nonnull align 8 dereferenceable(15256) ptr @_ZNK5clang10ASTContext14getDiagnosticsEv(ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1021, !range !184, !noundef !185
  %i.c = trunc nuw i8 %i.b to i1
end_hunk_14
begin_hunk_15_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIS3_JjEEESt4pairIPS8_bEOT_DpOT0_:bb.a
  %i.ak = add i32 %i.aj, 4
  %i.al = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ak, %i.al
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !101

bb.d:                                             ; preds = %.loopexit
  %i.am = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.am)
  %i.an = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2312
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2310
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !2188
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.ao = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.ap = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.aq = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 4                 ; 2 uses
  %i.av = trunc i64 %i.au to i32
  %i.aw = and i32 %i.av, 31
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = lshr i64 %i.au, 5
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !16
  %i.bb = or i32 %i.ax, %i.ba
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !16
  %i.bc = load i32, ptr %i.ah, align 8, !tbaa !2313
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.ah, align 8, !tbaa !2313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.be = load i64, ptr %1, align 8, !tbaa !47
  store i64 %i.be, ptr %i.aq, align 8, !tbaa !47
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bg = load i32, ptr %2, align 4, !tbaa !16
  store i32 %i.bg, ptr %i.bf, align 8, !tbaa !16
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.aq, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.v, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2188, !noalias !2314 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2310, !noalias !2314 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2185, !noalias !2314 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load i64, ptr %1, align 8, !tbaa !47 ; 2 uses
  %i.h = mul i64 %.sroa.04.0.copyload, -4658895280553007687 ; 2 uses
  %i.i = lshr i64 %i.h, 31
  %i.j = xor i64 %i.i, %i.h
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.g, %i.k                       ; 3 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = lshr i64 %i.m, 5
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %i.r = and i32 %i.l, 31
  %i.s = lshr i32 %i.q, %i.r
  %i.t = trunc i32 %i.s to i1
  br i1 %i.t, label %.lr.ph, label %.thread, !prof !100

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.u = phi ptr [ %i.z, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.x, %bb.c ], [ %i.l, %bb.b ]
  %.sroa.0.0.copyload = load i64, ptr %i.u, align 8, !tbaa !47
  %i.v = icmp eq i64 %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.v, label %.thread, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph
  %i.w = add nuw i32 %.01926, 1
  %i.x = and i32 %i.w, %i.g                       ; 3 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = lshr i64 %i.y, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !16
  %i.ad = and i32 %i.x, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph, label %.thread, !prof !102, !llvm.loop !2311

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ], [ %i.z, %bb.c ], [ %i.u, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.v, %bb.c ], [ %i.v, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2312
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1101", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2185
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2188
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2310
  store i32 0, ptr %i.p, align 16, !tbaa !2313
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !827
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2312
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !827
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !827
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !827
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !16
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !16
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !16
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !16
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

_ZN4llvm8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2188   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2310
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2185 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2310 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2188
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2185
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.u, align 8, !tbaa !47 ; 2 uses
  %i.v = mul i64 %.sroa.0.0.copyload.i, -4658895280553007687 ; 2 uses
  %i.w = lshr i64 %i.v, 31
  %i.x = xor i64 %i.w, %i.v
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.k, %i.y                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !16
  %i.ae = and i32 %i.z, 31                        ; 2 uses
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ai, %.lr.ph.i ], [ %i.z, %bb.b ]
  %i.ah = add i32 %.015.i, 1
  %i.ai = and i32 %i.ah, %i.k                     ; 3 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 5                       ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !16
  %i.an = and i32 %i.ai, 31                       ; 2 uses
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  br i1 %i.ap, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !2319

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.aa, %bb.b ], [ %i.aj, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ae, %bb.b ], [ %i.an, %.lr.ph.i ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %i.ar, align 8, !tbaa !47
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !16
  store i32 %i.au, ptr %i.as, align 8, !tbaa !16
  %i.av = shl nuw i32 1, %.lcssa.i
  %i.aw = load i32, ptr %i.aq, align 4, !tbaa !16
  %i.ax = or i32 %i.aw, %i.av
  store i32 %i.ax, ptr %i.aq, align 4, !tbaa !16
  %i.ay = add i32 %.0.i14, -1
  %i.az = and i32 %i.ay, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2320

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !2321

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2185
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !2313
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !2313
  %i.be = icmp eq i32 %i.ba, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bf = zext i32 %i.ba to i64                   ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bf, 4
  %i.bh = add nuw nsw i64 %i.bf, 31
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = and i64 %i.bi, 1073741820
  %i.bk = add nuw nsw i64 %i.bj, %i.bg
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bk, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !2185
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit

_ZN4llvm8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPKN5clang13CXXMethodDeclELj1EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 24, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = mul nuw nsw i64 %i.g, 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPKN5clang13CXXMethodDeclELj1EEELb0EE19moveElementsForGrowEPS6_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt10_ConstructIN4llvm11SmallVectorIPKN5clang13CXXMethodDeclELj1EEEJS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN4llvm11SmallVectorIPKN5clang13CXXMethodDeclELj1EEEJS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 6 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN4llvm11SmallVectorIPKN5clang13CXXMethodDeclELj1EEEJS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  store ptr %i.i, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 12
  store i32 1, ptr %i.k, align 4, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !11
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm11SmallVectorIPKN5clang13CXXMethodDeclELj1EEEJS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.n = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPKN5clang13CXXMethodDeclEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i) ; 0 uses
  br label %_ZSt10_ConstructIN4llvm11SmallVectorIPKN5clang13CXXMethodDeclELj1EEEJS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN4llvm11SmallVectorIPKN5clang13CXXMethodDeclELj1EEEJS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPKN5clang13CXXMethodDeclELj1EEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2322

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPKN5clang13CXXMethodDeclELj1EEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i: ; preds = %_ZSt10_ConstructIN4llvm11SmallVectorIPKN5clang13CXXMethodDeclELj1EEEJS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !8   ; 3 uses
  %.pre3.i = load i32, ptr %i.e, align 8, !tbaa !11 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre3.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPKN5clang13CXXMethodDeclELj1EEELb0EE19moveElementsForGrowEPS6_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPKN5clang13CXXMethodDeclELj1EEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i
  %i.q = zext i32 %.pre3.i to i64
  %.idx2.i = mul nuw nsw i64 %i.q, 24
  %i.r = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm11SmallVectorIPKN5clang13CXXMethodDeclELj1EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.s, %_ZN4llvm11SmallVectorIPKN5clang13CXXMethodDeclELj1EED2Ev.exit.i.i ], [ %i.r, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.05.i.i, i64 -24 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8    ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.05.i.i, i64 -8
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4llvm11SmallVectorIPKN5clang13CXXMethodDeclELj1EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  call void @free(ptr noundef %i.t) #27
  br label %_ZN4llvm11SmallVectorIPKN5clang13CXXMethodDeclELj1EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPKN5clang13CXXMethodDeclELj1EED2Ev.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.pre.i, %i.s
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPKN5clang13CXXMethodDeclELj1EEELb0EE19moveElementsForGrowEPS6_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !2189

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPKN5clang13CXXMethodDeclELj1EEELb0EE19moveElementsForGrowEPS6_.exit.loopexit: ; preds = %_ZN4llvm11SmallVectorIPKN5clang13CXXMethodDeclELj1EED2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !8
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPKN5clang13CXXMethodDeclELj1EEELb0EE19moveElementsForGrowEPS6_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPKN5clang13CXXMethodDeclELj1EEELb0EE19moveElementsForGrowEPS6_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPKN5clang13CXXMethodDeclELj1EEELb0EE19moveElementsForGrowEPS6_.exit.loopexit, %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPKN5clang13CXXMethodDeclELj1EEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i
  %i.w = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPKN5clang13CXXMethodDeclELj1EEELb0EE19moveElementsForGrowEPS6_.exit.loopexit ], [ %i.d, %bb.a ], [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPKN5clang13CXXMethodDeclELj1EEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i ] ; 2 uses
  %i.x = load i64, ptr %i.a, align 8, !tbaa !47
  %i.y = icmp eq ptr %i.w, %i.b
  br i1 %i.y, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPKN5clang13CXXMethodDeclELj1EEELb0EE21takeAllocationForGrowEPS6_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPKN5clang13CXXMethodDeclELj1EEELb0EE19moveElementsForGrowEPS6_.exit
  call void @free(ptr noundef %i.w) #27
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPKN5clang13CXXMethodDeclELj1EEELb0EE21takeAllocationForGrowEPS6_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPKN5clang13CXXMethodDeclELj1EEELb0EE21takeAllocationForGrowEPS6_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPKN5clang13CXXMethodDeclELj1EEELb0EE19moveElementsForGrowEPS6_.exit, %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !8
  %i.z = trunc i64 %i.x to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

declare noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPKN5clang13CXXMethodDeclEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !8      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIPKN5clang13CXXMethodDeclEE12assignRemoteEOS5_.exit, label %bb.d
end_hunk_15
begin_hunk_16_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E21eraseFromFilledBucketIZNSF_21eraseFromFilledBucketEPSD_EUlRSD_E_EEvSH_OT_:bb.a
.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.pn = phi i64 [ %i.am, %bb.c ], [ %i.m, %bb.a ]
  %i.t = phi i32 [ %i.al, %bb.c ], [ %i.l, %bb.a ] ; 3 uses
  %.0334 = phi i32 [ %.2, %bb.c ], [ %i.j, %bb.a ] ; 3 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %.val35, i64 %.pn ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = sub i32 %.0334, %i.aa
  %i.ac = and i32 %i.ab, %i.e
  %i.ad = sub i32 %i.t, %i.aa
  %i.ae = and i32 %i.ad, %i.e
  %i.af = icmp ult i32 %i.ac, %i.ae
  br i1 %i.af, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ag = zext i32 %.0334 to i64
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %.val35, i64 %i.ag ; 2 uses
  store ptr %i.v, ptr %i.ah, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !tbaa.struct !2298
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.2 = phi i32 [ %.0334, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %i.ak = add i32 %i.t, 1
  %i.al = and i32 %i.ak, %i.e                     ; 3 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = lshr i64 %i.am, 5
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val34, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !16
  %i.aq = and i32 %i.al, 31
  %i.ar = lshr i32 %i.ap, %i.aq
  %i.as = trunc i32 %i.ar to i1
  br i1 %i.as, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.033.lcssa = phi i32 [ %i.j, %bb.a ], [ %.2, %bb.c ] ; 2 uses
  %i.at = and i32 %.033.lcssa, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = xor i32 %i.au, -1
  %i.aw = lshr i32 %.033.lcssa, 5
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val34, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !16
  %i.ba = and i32 %i.az, %i.av
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0, ptr %.0.val, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #13 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1057, !noalias !2332 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1061, !noalias !2332 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1062, !noalias !2332 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = ptrtoint ptr %.0.val to i64
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !100

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.05 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50
  %i.x = icmp eq ptr %.0.val, %i.w
  br i1 %i.x, label %.thread, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.05, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !102, !llvm.loop !2296

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa9.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  store ptr %.lcssa9.sink, ptr %1, align 8, !tbaa !2297
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #12 align 2 {
_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit:
  %2 = alloca %"class.llvm::DenseMap.510", align 16 ; 8 uses
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
  %.sroa.speculated.i = tail call noundef range(i32 64, 0) i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1062
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1057
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1061
  store i32 0, ptr %i.p, align 16, !tbaa !1063
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !2297
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !827
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !827
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !16 ; 2 uses
  %i.ae = load <2 x i32>, ptr %i.p, align 16, !tbaa !16
  store <2 x i32> %i.ae, ptr %i.ab, align 8, !tbaa !16
  %i.af = icmp eq i32 %i.ad, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit
  %i.ag = zext i32 %i.ad to i64                   ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 5
  %i.ai = add nuw nsw i64 %i.ag, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.al, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEC2EjNS_12DenseMapBaseISD_S4_S7_S9_SC_E16ExactBucketCountE.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #12 align 2 {
bb.a:
  %.val10 = load ptr, ptr %1, align 8, !tbaa !1057
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !1061
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !1062 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !1061 ; 3 uses
  %.val11 = load ptr, ptr %0, align 8, !tbaa !1057
  %i.d = getelementptr i8, ptr %0, i64 20
  %.val7 = load i32, ptr %i.d, align 4, !tbaa !1062
  %i.e = add i32 %.val7, -1                       ; 2 uses
  %i.f = zext i32 %.val to i64
  %i.g = add nuw nsw i64 %i.f, 31
  %i.h = lshr i64 %i.g, 5                         ; 2 uses
  %.not.i23 = icmp eq i64 %i.h, 0
  br i1 %.not.i23, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val8, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16   ; 2 uses
  %.not11.i21 = icmp eq i32 %i.j, 0
  br i1 %.not11.i21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph26
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.k = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i22 = phi i32 [ %i.j, %.lr.ph ], [ %i.au, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i22, i1 true)
  %i.m = or disjoint i32 %i.l, %i.k
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %.val10, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = mul i64 %i.q, -4658895280553007687       ; 2 uses
  %i.s = lshr i64 %i.r, 31
  %i.t = xor i64 %i.s, %i.r
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.e, %i.u                       ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !16
  %i.aa = and i32 %i.v, 31                        ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.v, %bb.b ]
  %i.ad = add i32 %.014.i, 1
  %i.ae = and i32 %i.ad, %i.e                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = lshr i64 %i.af, 5                       ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !16
  %i.aj = and i32 %i.ae, 31                       ; 2 uses
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, !llvm.loop !2337

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.w, %bb.b ], [ %i.af, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.x, %bb.b ], [ %i.ag, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.aa, %bb.b ], [ %i.aj, %.lr.ph.i ]
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %.val11, i64 %.lcssa12.i ; 2 uses
  store ptr %i.p, ptr %i.am, align 8, !tbaa !50
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !tbaa.struct !2298
  %i.ap = shl nuw i32 1, %.lcssa.i
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %.lcssa11.i ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !16
  %i.as = or i32 %i.ar, %i.ap
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !16
  %i.at = add i32 %.0.i22, -1
  %i.au = and i32 %i.at, %.0.i22                  ; 2 uses
  %.not11.i = icmp eq i32 %i.au, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2338

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph26, !llvm.loop !2339

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !1062
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.av = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %.val, %bb.a ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val12 = load i32, ptr %i.aw, align 8, !tbaa !1063
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val12, ptr %i.ax, align 8, !tbaa !1063
  %i.ay = icmp eq i32 %i.av, 0
  br i1 %i.ay, label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.az = load ptr, ptr %1, align 8, !tbaa !1057
  %i.ba = zext i32 %i.av to i64                   ; 2 uses
  %i.bb = shl nuw nsw i64 %i.ba, 5
  %i.bc = add nuw nsw i64 %i.ba, 31
  %i.bd = lshr i64 %i.bc, 3
  %i.be = and i64 %i.bd, 1073741820
  %i.bf = add nuw nsw i64 %i.be, %i.bb
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.az, i64 noundef %i.bf, i64 noundef 8) #27
  store i32 0, ptr %i.b, align 4, !tbaa !1062
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXMethodDeclEN12_GLOBAL__N_114VFTableBuilder10MethodInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !884, !noalias !2340 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1036, !noalias !2340 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !883, !noalias !2340 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.sroa.06.0.copyload.i = load i64, ptr %1, align 8, !tbaa !49 ; 2 uses
  %i.i = mul i64 %.sroa.06.0.copyload.i, -4658895280553007687 ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.h, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph.i, label %.loopexit, !prof !100

.lr.ph.i:                                         ; preds = %bb.b
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.27.0..sroa_idx.i, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.v = phi ptr [ %i.o, %.lr.ph.i ], [ %i.ac, %bb.d ] ; 3 uses
  %.02330.i = phi i32 [ %i.m, %.lr.ph.i ], [ %i.aa, %bb.d ]
  %.sroa.0.0.copyload.i = load i64, ptr %i.v, align 8, !tbaa !49
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !16
  %i.w = icmp eq i64 %.sroa.06.0.copyload.i, %.sroa.0.0.copyload.i
  %i.x = icmp eq i32 %.sroa.22.0.copyload.i, %.sroa.2.0.copyload.i
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.d, !prof !101

bb.d:                                             ; preds = %bb.c
  %i.z = add nuw i32 %.02330.i, 1
  %i.aa = and i32 %i.z, %i.h                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %bb.c, label %.loopexit, !prof !102, !llvm.loop !1216

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.b
  %.lcssa34.sink.i.ph = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa34.sink.i.ph, ptr %i.a, align 8, !tbaa !2345
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1037
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.e, !prof !101

bb.e:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2345
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1036
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !884
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.e
  %i.aq = phi ptr [ %.pre15, %bb.e ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.e ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.e ], [ %.lcssa34.sink.i.ph, %.loopexit ] ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 48                ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !16
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !16
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !1037
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !1037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1222
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i8 0, i64 32, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %bb.c, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.v, %bb.c ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !884, !noalias !2346 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1036, !noalias !2346 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !883, !noalias !2346 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.06.0.copyload = load i64, ptr %1, align 8, !tbaa !49 ; 2 uses
  %i.h = mul i64 %.sroa.06.0.copyload, -4658895280553007687 ; 2 uses
  %i.i = lshr i64 %i.h, 31
  %i.j = xor i64 %i.i, %i.h
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.g, %i.k                       ; 3 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = lshr i64 %i.m, 5
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %i.r = and i32 %i.l, 31
  %i.s = lshr i32 %i.q, %i.r
  %i.t = trunc i32 %i.s to i1
  br i1 %i.t, label %.lr.ph, label %.thread, !prof !100

.lr.ph:                                           ; preds = %bb.b
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load i32, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %i.u = phi ptr [ %i.n, %.lr.ph ], [ %i.ab, %bb.d ] ; 3 uses
  %.02330 = phi i32 [ %i.l, %.lr.ph ], [ %i.z, %bb.d ]
  %.sroa.0.0.copyload = load i64, ptr %i.u, align 8, !tbaa !49
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !16
  %i.v = icmp eq i64 %.sroa.06.0.copyload, %.sroa.0.0.copyload
  %i.w = icmp eq i32 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.x = select i1 %i.v, i1 %i.w, i1 false        ; 3 uses
  br i1 %i.x, label %.thread, label %bb.d, !prof !101

bb.d:                                             ; preds = %bb.c
  %i.y = add nuw i32 %.02330, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %bb.c, label %.thread, !prof !102, !llvm.loop !1216

.thread:                                          ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.lcssa34.sink = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.d ], [ %i.u, %bb.c ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.x, %bb.d ], [ %i.x, %bb.c ]
  store ptr %.lcssa34.sink, ptr %2, align 8, !tbaa !2345
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.104", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !883
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 48                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !884
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1036
  store i32 0, ptr %i.p, align 16, !tbaa !1037
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !827
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2345
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !827
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !827
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !827
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !16
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !16
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !16
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !16
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIN5clang10GlobalDeclENS1_21MethodVFTableLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 48
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIN5clang10GlobalDeclENS1_21MethodVFTableLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang10GlobalDeclENS1_21MethodVFTableLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !884
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1036
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !883  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1036 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !884
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !883
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS5_21MethodVFTableLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.u, align 8, !tbaa !49
  %i.v = mul i64 %.sroa.0.0.copyload.i, -4658895280553007687 ; 2 uses
  %i.w = lshr i64 %i.v, 31
  %i.x = xor i64 %i.w, %i.v
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.k, %i.y                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !16
  %i.ae = and i32 %i.z, 31                        ; 2 uses
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ai, %.lr.ph.i ], [ %i.z, %bb.b ]
  %i.ah = add i32 %.014.i, 1
  %i.ai = and i32 %i.ah, %i.k                     ; 3 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 5                       ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !16
  %i.an = and i32 %i.ai, 31                       ; 2 uses
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  br i1 %i.ap, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2351

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.aa, %bb.b ], [ %i.aj, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ae, %bb.b ], [ %i.an, %.lr.ph.i ]
  %i.aq = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !1222
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false), !tbaa.struct !2352
  %i.at = shl nuw i32 1, %.lcssa.i
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !16
  %i.aw = or i32 %i.av, %i.at
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !16
  %i.ax = add i32 %.0.i17, -1
  %i.ay = and i32 %i.ax, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2353

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS5_21MethodVFTableLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !2354

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS5_21MethodVFTableLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !883
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS5_21MethodVFTableLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS5_21MethodVFTableLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS5_21MethodVFTableLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.az = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS5_21MethodVFTableLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !1037
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !1037
  %i.bd = icmp eq i32 %i.az, 0
  br i1 %i.bd, label %_ZN4llvm8DenseMapIN5clang10GlobalDeclENS1_21MethodVFTableLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS5_21MethodVFTableLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.be = load ptr, ptr %1, align 8, !tbaa !884
  %i.bf = zext i32 %i.az to i64                   ; 2 uses
  %i.bg = mul nuw nsw i64 %i.bf, 48
  %i.bh = add nuw nsw i64 %i.bf, 31
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = and i64 %i.bi, 1073741820
  %i.bk = add nuw nsw i64 %i.bj, %i.bg
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.be, i64 noundef %i.bk, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !883
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN5clang10GlobalDeclENS1_21MethodVFTableLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit

_ZN4llvm8DenseMapIN5clang10GlobalDeclENS1_21MethodVFTableLocationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS5_21MethodVFTableLocationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL28dumpMicrosoftThunkAdjustmentRKN5clang9ThunkInfoERN4llvm11raw_ostreamEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"union.clang::ThisAdjustment::VirtualAdjustment", align 8 ; 4 uses
  %4 = alloca %"union.clang::ThisAdjustment::VirtualAdjustment", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1118
  %.not.i = icmp eq i64 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %lhsv.i.i.i = load i64, ptr %i.c, align 8
  %.not.i.i.i = icmp eq i64 %lhsv.i.i.i, 0
  %i.d = select i1 %.not.i, i1 %.not.i.i.i, i1 false
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not34 = icmp eq ptr %i.f, null
  %or.cond = select i1 %i.d, i1 %.not34, i1 false
  br i1 %or.cond, label %_ZN4llvm11raw_ostreamlsEPKc.exit58, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1080
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1084 ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ult i64 %i.m, 8
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.45, i64 noundef 8) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.c
  store i64 2314885530818453514, ptr %i.j, align 1
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !1084
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.q, ptr %i.i, align 8, !tbaa !1084
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.e, %bb.d, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1080
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 9 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1084 ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.x, 29
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.56, i64 noundef 29) #27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit40

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.u, ptr noundef nonnull align 1 dereferenceable(29) @.str.56, i64 29, i1 false)
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !1084
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 29
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !1084
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit40

_ZN4llvm11raw_ostreamlsEPKc.exit40:               ; preds = %bb.f, %bb.g
  %.0.i.i39 = phi ptr [ %i.z, %bb.f ], [ %1, %bb.g ]
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !1514
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ad, align 8, !tbaa !49
  %i.ae = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !329 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i8, ptr %i.ah, align 16
  %i.aj = add i8 %i.ai, -25
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.aj, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit40
  %i.ak = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ag) #27
  br label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit

_ZNK5clang12FunctionDecl13getReturnTypeEv.exit:   ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit40, %bb.h
  %.1.i.i = phi ptr [ %i.ak, %bb.h ], [ %i.ag, %_ZN4llvm11raw_ostreamlsEPKc.exit40 ]
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  %.sroa.0.0.copyload.i1.i = load i64, ptr %i.al, align 8, !tbaa !49 ; 2 uses
  %i.am = and i64 %.sroa.0.0.copyload.i1.i, -16
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !49
  %i.aq = and i64 %.sroa.0.0.copyload.i1.i, 7
  %i.ar = or i64 %i.aq, %i.ap
  %i.as = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clanglsERN4llvm11raw_ostreamENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i39, i64 %i.ar) #27 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1080
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1084 ; 2 uses
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.az, 4
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit
  %i.bb = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull @.str.57, i64 noundef 4) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit43

bb.j:                                             ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit
  store i32 540682535, ptr %i.aw, align 1
end_hunk_16
begin_hunk_17_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSG_bEOT_DpOT0_:bb.a
.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !186
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E15LookupBucketForIS5_EEbRKT_RPSG_.exit, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !16
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !102, !llvm.loop !2375

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2376
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !2377
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E22findBucketForInsertionIS5_EEPSG_RKT_SK_.exit, label %bb.d, !prof !101

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E15LookupBucketForIS5_EEbRKT_RPSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2376
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !71
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !70
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E22findBucketForInsertionIS5_EEPSG_RKT_SK_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E22findBucketForInsertionIS5_EEPSG_RKT_SK_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !16
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2377
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !186
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !186
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !2378
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E15LookupBucketForIS5_EEbRKT_RPSG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E15LookupBucketForIS5_EEbRKT_RPSG_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E22findBucketForInsertionIS5_EEPSG_RKT_SK_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E22findBucketForInsertionIS5_EEPSG_RKT_SK_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E22findBucketForInsertionIS5_EEPSG_RKT_SK_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E15LookupBucketForIS5_EEbRKT_RPSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !70, !noalias !2380 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71, !noalias !2380 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !67, !noalias !2380 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !186    ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !100

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !186
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !102, !llvm.loop !2375

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2376
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.41", align 16 ; 10 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !70
  store ptr %i.y, ptr %i.q, align 8, !tbaa !71
  store i32 0, ptr %i.p, align 16, !tbaa !2377
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !2376   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1841 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !827
  store ptr %i.z, ptr %2, align 16, !tbaa !2376
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !827
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !1841
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !16
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !16
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !16
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !16
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS1_12VTableLayoutESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !16 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIKN5clang12VTableLayoutEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIKN5clang12VTableLayoutEEclEPS2_.exit.i.i.i.i: ; preds = %bb.b
  call void @_ZN5clang12VTableLayoutD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.au) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 152) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIKN5clang12VTableLayoutEEclEPS2_.exit.i.i.i.i, %bb.b
  %i.av = add i32 %.0.i3.i.i, -1
  %i.aw = and i32 %i.av, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !74

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !75

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !67 ; 2 uses
  %i.ax = icmp eq i32 %.pr.i, 0
  br i1 %i.ax, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS1_12VTableLayoutESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E10destroyAllEv.exit.i
  %i.ay = load ptr, ptr %2, align 16, !tbaa !70
  %i.az = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ay, i64 noundef %i.be, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS1_12VTableLayoutESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS1_12VTableLayoutESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E10destroyAllEv.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !67   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !71   ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !67
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS5_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !186  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !16 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit, !llvm.loop !2385

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !186
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !72
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !72
  store ptr null, ptr %i.av, align 8, !tbaa !72
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !16
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2386

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEEES5_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS5_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !2387

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS5_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !67
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS5_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS5_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS5_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS5_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !2377
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !2377
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS1_12VTableLayoutESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS5_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !67
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS1_12VTableLayoutESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS1_12VTableLayoutESt14default_deleteIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrIKNS5_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !881  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS9_INS5_8VPtrInfoESt14default_deleteISB_EELj2EEESC_ISF_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SH_EEEES8_SH_SJ_SM_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph8.preheader

.lr.ph8.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !882
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !890
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph8

.lr.ph8:                                          ; preds = %.lr.ph8.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph8.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16   ; 2 uses
  %.not11.i3 = icmp eq i32 %i.k, 0
  br i1 %.not11.i3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph8
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.l = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEvENKUljE_clEj.exit
  %.0.i4 = phi i32 [ %i.k, %.lr.ph ], [ %i.ap, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i4, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !830  ; 6 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEvENKUljE_clEj.exit, label %_ZNKSt14default_deleteIN4llvm11SmallVectorISt10unique_ptrIN5clang8VPtrInfoES_IS4_EELj2EEEEclEPS7_.exit.i.i

_ZNKSt14default_deleteIN4llvm11SmallVectorISt10unique_ptrIN5clang8VPtrInfoES_IS4_EELj2EEEEclEPS7_.exit.i.i: ; preds = %bb.b
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !11   ; 2 uses
  %.not4.i.i = icmp eq i32 %i.u, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZNKSt14default_deleteIN4llvm11SmallVectorISt10unique_ptrIN5clang8VPtrInfoES_IS4_EELj2EEEEclEPS7_.exit.i.i
  %i.v = zext i32 %i.u to i64
  %.idx.i = shl nuw nsw i64 %i.v, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS1_EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.x, %_ZNSt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS1_EED2Ev.exit.i.i ], [ %i.w, %.lr.ph.i.preheader.i ]
  %i.x = getelementptr inbounds i8, ptr %.05.i.i, i64 -8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !824  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS1_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !8   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN4llvm11SmallVectorIPKN5clang13CXXRecordDeclELj1EED2Ev.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.aa) #27
  br label %_ZN4llvm11SmallVectorIPKN5clang13CXXRecordDeclELj1EED2Ev.exit.i.i.i.i.i

_ZN4llvm11SmallVectorIPKN5clang13CXXRecordDeclELj1EED2Ev.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !8  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPKN5clang13CXXRecordDeclELj1EED2Ev.exit1.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIPKN5clang13CXXRecordDeclELj1EED2Ev.exit.i.i.i.i.i
  tail call void @free(ptr noundef %i.ae) #27
  br label %_ZN4llvm11SmallVectorIPKN5clang13CXXRecordDeclELj1EED2Ev.exit1.i.i.i.i.i

_ZN4llvm11SmallVectorIPKN5clang13CXXRecordDeclELj1EED2Ev.exit1.i.i.i.i.i: ; preds = %bb.e, %_ZN4llvm11SmallVectorIPKN5clang13CXXRecordDeclELj1EED2Ev.exit.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !8  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNKSt14default_deleteIN5clang8VPtrInfoEEclEPS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIPKN5clang13CXXRecordDeclELj1EED2Ev.exit1.i.i.i.i.i
  tail call void @free(ptr noundef %i.ai) #27
  br label %_ZNKSt14default_deleteIN5clang8VPtrInfoEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN5clang8VPtrInfoEEclEPS1_.exit.i.i.i: ; preds = %bb.f, %_ZN4llvm11SmallVectorIPKN5clang13CXXRecordDeclELj1EED2Ev.exit1.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 112) #28
  br label %_ZNSt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5clang8VPtrInfoEEclEPS1_.exit.i.i.i, %.lr.ph.i.i
  %.not.i.i2 = icmp eq ptr %i.s, %i.x
  br i1 %.not.i.i2, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !2174

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i: ; preds = %_ZNSt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS1_EED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.r, align 8, !tbaa !8
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, %_ZNKSt14default_deleteIN4llvm11SmallVectorISt10unique_ptrIN5clang8VPtrInfoES_IS4_EELj2EEEEclEPS7_.exit.i.i
  %i.al = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i ], [ %i.s, %_ZNKSt14default_deleteIN4llvm11SmallVectorISt10unique_ptrIN5clang8VPtrInfoES_IS4_EELj2EEEEclEPS7_.exit.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZN4llvm11SmallVectorISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELj2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i
  tail call void @free(ptr noundef %i.al) #27
  br label %_ZN4llvm11SmallVectorISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELj2EED2Ev.exit

_ZN4llvm11SmallVectorISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELj2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 32) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEvENKUljE_clEj.exit: ; preds = %bb.b, %_ZN4llvm11SmallVectorISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELj2EED2Ev.exit
  %i.ao = add i32 %.0.i4, -1
  %i.ap = and i32 %i.ao, %.0.i4                   ; 2 uses
  %.not11.i = icmp eq i32 %i.ap, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2388

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS9_INS5_8VPtrInfoESt14default_deleteISB_EELj2EEESC_ISF_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SH_EEEES8_SH_SJ_SM_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph8, !llvm.loop !2389

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS9_INS5_8VPtrInfoESt14default_deleteISB_EELj2EEESC_ISF_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SH_EEEES8_SH_SJ_SM_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !874  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS5_15VirtualBaseInfoESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph8.preheader

.lr.ph8.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !875
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2390
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph8

.lr.ph8:                                          ; preds = %.lr.ph8.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph8.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16   ; 2 uses
  %.not11.i3 = icmp eq i32 %i.k, 0
  br i1 %.not11.i3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph8
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.l = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit
  %.0.i4 = phi i32 [ %i.k, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i4, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1277 ; 7 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !11   ; 2 uses
  %.not4.i.i = icmp eq i32 %i.v, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.c
  %i.w = zext i32 %i.v to i64
  %.idx.i = shl nuw nsw i64 %i.w, 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS1_EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.y, %_ZNSt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS1_EED2Ev.exit.i.i ], [ %i.x, %.lr.ph.i.preheader.i ]
  %i.y = getelementptr inbounds i8, ptr %.05.i.i, i64 -8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !824  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS1_EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !8  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4llvm11SmallVectorIPKN5clang13CXXRecordDeclELj1EED2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.ab) #27
  br label %_ZN4llvm11SmallVectorIPKN5clang13CXXRecordDeclELj1EED2Ev.exit.i.i.i.i.i

_ZN4llvm11SmallVectorIPKN5clang13CXXRecordDeclELj1EED2Ev.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !8  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN4llvm11SmallVectorIPKN5clang13CXXRecordDeclELj1EED2Ev.exit1.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIPKN5clang13CXXRecordDeclELj1EED2Ev.exit.i.i.i.i.i
  tail call void @free(ptr noundef %i.af) #27
  br label %_ZN4llvm11SmallVectorIPKN5clang13CXXRecordDeclELj1EED2Ev.exit1.i.i.i.i.i

_ZN4llvm11SmallVectorIPKN5clang13CXXRecordDeclELj1EED2Ev.exit1.i.i.i.i.i: ; preds = %bb.f, %_ZN4llvm11SmallVectorIPKN5clang13CXXRecordDeclELj1EED2Ev.exit.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !8  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNKSt14default_deleteIN5clang8VPtrInfoEEclEPS1_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIPKN5clang13CXXRecordDeclELj1EED2Ev.exit1.i.i.i.i.i
  tail call void @free(ptr noundef %i.aj) #27
  br label %_ZNKSt14default_deleteIN5clang8VPtrInfoEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN5clang8VPtrInfoEEclEPS1_.exit.i.i.i: ; preds = %bb.g, %_ZN4llvm11SmallVectorIPKN5clang13CXXRecordDeclELj1EED2Ev.exit1.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 112) #28
  br label %_ZNSt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5clang8VPtrInfoEEclEPS1_.exit.i.i.i, %.lr.ph.i.i
  %.not.i.i2 = icmp eq ptr %i.t, %i.y
  br i1 %.not.i.i2, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !2174

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i: ; preds = %_ZNSt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS1_EED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !8
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, %bb.c
  %i.am = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i ], [ %i.t, %bb.c ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN4llvm11SmallVectorISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELj2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i
  tail call void @free(ptr noundef %i.am) #27
  br label %_ZN4llvm11SmallVectorISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELj2EED2Ev.exit

_ZN4llvm11SmallVectorISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELj2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i, %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !1282 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZNKSt14default_deleteIN5clang15VirtualBaseInfoEEclEPS1_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELj2EED2Ev.exit
  %i.as = load ptr, ptr %i.r, align 8, !tbaa !1283
  %i.at = zext i32 %i.aq to i64                   ; 2 uses
  %i.au = shl nuw nsw i64 %i.at, 4
  %i.av = add nuw nsw i64 %i.at, 31
  %i.aw = lshr i64 %i.av, 3
  %i.ax = and i64 %i.aw, 1073741820
  %i.ay = add nuw nsw i64 %i.ax, %i.au
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.as, i64 noundef %i.ay, i64 noundef 8) #27
  br label %_ZNKSt14default_deleteIN5clang15VirtualBaseInfoEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5clang15VirtualBaseInfoEEclEPS1_.exit.i.i: ; preds = %bb.i, %_ZN4llvm11SmallVectorISt10unique_ptrIN5clang8VPtrInfoESt14default_deleteIS3_EELj2EED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 56) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN5clang15VirtualBaseInfoEEclEPS1_.exit.i.i
  %i.az = add i32 %.0.i4, -1
  %i.ba = and i32 %i.az, %.0.i4                   ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2391

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS5_15VirtualBaseInfoESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph8, !llvm.loop !2392

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS5_15VirtualBaseInfoESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

declare noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJmEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m(i64 noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2393, !nonnull !185, !align !381 ; 2 uses
  %i.c = and i64 %2, 4294967295
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1266
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !47
  %i.g = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.c, ptr noundef %i.d, i64 noundef %i.f) #27
  ret i32 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !8      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #27
  %.pre = load ptr, ptr %1, align 8, !tbaa !8
  br label %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit

_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !16
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !16
  store ptr %i.c, ptr %1, align 8, !tbaa !8
  store i32 0, ptr %i.k, align 4, !tbaa !12
  store i32 0, ptr %i.j, align 8, !tbaa !11
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !11   ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !11   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit
    i32 1, label %bb.h
  ], !prof !2323

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load i64, ptr %i.b, align 8, !tbaa !47
end_hunk_17
begin_hunk_18_@_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES6_ENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E24lookupOrInsertIntoBucketIS7_JS8_EEES2_IPSD_bEOT_DpOT0_:bb.a
  %i.bi = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.bj = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 24                ; 2 uses
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = and i32 %i.bo, 31
  %i.bq = shl nuw i32 1, %i.bp
  %i.br = lshr i64 %i.bn, 5
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !16
  %i.bu = or i32 %i.bq, %i.bt
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !16
  %i.bv = load i32, ptr %i.ba, align 8, !tbaa !2411
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.ba, align 8, !tbaa !2411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.by = load i64, ptr %2, align 8, !tbaa !47
  store i64 %i.by, ptr %i.bx, align 8, !tbaa !47
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES6_ENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES6_ENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES6_ENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E22findBucketForInsertionIS7_EEPSD_RKT_SH_.exit
  %.sroa.0.0 = phi ptr [ %i.bj, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES6_ENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E22findBucketForInsertionIS7_EEPSD_RKT_SH_.exit ], [ %i.aj, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES6_ENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E22findBucketForInsertionIS7_EEPSD_RKT_SH_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES6_ENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E15LookupBucketForIS7_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !66, !noalias !2412 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130, !noalias !2412 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !63, !noalias !2412 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !132    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2408 ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = mul i64 %i.o, -4658895280553007687       ; 2 uses
  %i.q = lshr i64 %i.p, 31
  %i.r = xor i64 %i.q, %i.p
  %i.s = shl i64 %i.l, 32
  %i.t = and i64 %i.r, 4294967295
  %i.u = or disjoint i64 %i.t, %i.s
  %i.v = mul i64 %i.u, -4658895280553007687       ; 2 uses
  %i.w = lshr i64 %i.v, 31
  %i.x = xor i64 %i.w, %i.v
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.g, %i.y                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !100

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ai = phi ptr [ %i.as, %bb.c ], [ %i.ab, %bb.b ] ; 3 uses
  %.024 = phi i32 [ %i.aq, %bb.c ], [ %i.z, %bb.b ]
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !132
  %i.ak = icmp eq ptr %i.h, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = icmp eq ptr %i.n, %i.am
  %i.ao = select i1 %i.ak, i1 %i.an, i1 false     ; 3 uses
  br i1 %i.ao, label %.thread, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph
  %i.ap = add nuw i32 %.024, 1
  %i.aq = and i32 %i.ap, %i.g                     ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ar ; 2 uses
  %i.at = lshr i64 %i.ar, 5
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !16
  %i.aw = and i32 %i.aq, 31
  %i.ax = lshr i32 %i.av, %i.aw
  %i.ay = trunc i32 %i.ax to i1
  br i1 %i.ay, label %.lr.ph, label %.thread, !prof !102, !llvm.loop !2409

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.ab, %bb.b ], [ null, %bb.a ], [ %i.as, %bb.c ], [ %i.ai, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ao, %bb.c ], [ %i.ao, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2410
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES6_ENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.43", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !66
  store ptr %i.y, ptr %i.q, align 8, !tbaa !130
  store i32 0, ptr %i.p, align 16, !tbaa !2411
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES6_ENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !827
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2410
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !827
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !827
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !827
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !16
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !16
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !16
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !16
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclES5_ENS2_9CharUnitsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclES5_ENS2_9CharUnitsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEED2Ev.exit

_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclES5_ENS2_9CharUnitsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES6_ENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !63   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !130  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !63
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES9_ENS6_9CharUnitsENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES6_ENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bn, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES6_ENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !132
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2408
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = mul i64 %i.ac, -4658895280553007687     ; 2 uses
  %i.ae = lshr i64 %i.ad, 31
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = shl i64 %i.z, 32
  %i.ah = and i64 %i.af, 4294967295
  %i.ai = or disjoint i64 %i.ah, %i.ag
  %i.aj = mul i64 %i.ai, -4658895280553007687     ; 2 uses
  %i.ak = lshr i64 %i.aj, 31
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.k, %i.am                     ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 5                       ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !16
  %i.as = and i32 %i.an, 31                       ; 2 uses
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = trunc i32 %i.at to i1
  br i1 %i.au, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES6_ENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.aw, %.lr.ph.i ], [ %i.an, %bb.b ]
  %i.av = add i32 %.014.i, 1
  %i.aw = and i32 %i.av, %i.k                     ; 3 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 5                       ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !16
  %i.bb = and i32 %i.aw, 31                       ; 2 uses
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i1
  br i1 %i.bd, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES6_ENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, !llvm.loop !2417

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES6_ENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ao, %bb.b ], [ %i.ax, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ap, %bb.b ], [ %i.ay, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.as, %bb.b ], [ %i.bb, %.lr.ph.i ]
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !47
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !47
  %i.bi = shl nuw i32 1, %.lcssa.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !16
  %i.bl = or i32 %i.bk, %i.bi
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !16
  %i.bm = add i32 %.0.i17, -1
  %i.bn = and i32 %i.bm, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bn, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2418

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES6_ENS3_9CharUnitsENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES9_ENS6_9CharUnitsENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !2419

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES9_ENS6_9CharUnitsENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !63
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES9_ENS6_9CharUnitsENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES9_ENS6_9CharUnitsENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES9_ENS6_9CharUnitsENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bo = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES9_ENS6_9CharUnitsENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !2411
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !2411
  %i.bs = icmp eq i32 %i.bo, 0
  br i1 %i.bs, label %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclES5_ENS2_9CharUnitsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES9_ENS6_9CharUnitsENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.bt = load ptr, ptr %1, align 8, !tbaa !66
  %i.bu = zext i32 %i.bo to i64                   ; 2 uses
  %i.bv = mul nuw nsw i64 %i.bu, 24
  %i.bw = add nuw nsw i64 %i.bu, 31
  %i.bx = lshr i64 %i.bw, 3
  %i.by = and i64 %i.bx, 1073741820
  %i.bz = add nuw nsw i64 %i.by, %i.bv
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bt, i64 noundef %i.bz, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclES5_ENS2_9CharUnitsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEE4killEv.exit

_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclES5_ENS2_9CharUnitsENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclES9_ENS6_9CharUnitsENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SB_EEEESA_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15SmallVectorImplISt4pairImN5clang9ThunkInfoEEE6appendINS_16DenseMapIteratorImS3_NS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EELb1EEEvEEvT_SE_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef byval(%"class.llvm::DenseMapIterator.514") align 8 %1, ptr noundef byval(%"class.llvm::DenseMapIterator.514") align 8 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.010.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 8 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.411.0.copyload = load ptr, ptr %.sroa.411.0..sroa_idx, align 8 ; 4 uses
  %.sroa.018.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  %.not5.i = icmp eq ptr %.sroa.010.0.copyload, %.sroa.018.0.copyload ; 2 uses
  br i1 %.not5.i, label %_ZSt10__distanceIN4llvm16DenseMapIteratorImN5clang9ThunkInfoENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS3_EELb1EEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = ptrtoint ptr %.sroa.2.0.copyload to i64
  %i.b = ptrtoint ptr %.sroa.3.0.copyload to i64  ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 6                   ; 2 uses
  %i.e = add nsw i64 %i.d, 31
  %i.f = lshr i64 %i.e, 5                         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm16DenseMapIteratorImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EELb1EEppEv.exit.i, %.lr.ph.i
  %.07.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ae, %_ZN4llvm16DenseMapIteratorImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EELb1EEppEv.exit.i ]
  %storemerge16.i.i46.i = phi ptr [ %.sroa.010.0.copyload, %.lr.ph.i ], [ %storemerge16.i.i.i, %_ZN4llvm16DenseMapIteratorImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EELb1EEppEv.exit.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %storemerge16.i.i46.i, i64 64
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.h, %i.b
  %i.j = ashr exact i64 %i.i, 6                   ; 3 uses
  %.not.i.i.i = icmp ult i64 %i.j, %i.d
  br i1 %.not.i.i.i, label %bb.c, label %_ZN4llvm16DenseMapIteratorImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EELb1EEppEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = lshr i64 %i.j, 5                         ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.sroa.411.0.copyload, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = trunc i64 %i.j to i32
  %i.o = and i32 %i.n, 31
  %i.p = shl nsw i32 -1, %i.o
  %i.q = and i32 %i.m, %i.p                       ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c
  %i.s = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.f
  br i1 %i.t, label %_ZN4llvm16DenseMapIteratorImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EELb1EEppEv.exit.i, label %.lr.ph

.lr.ph.i.i.i:                                     ; preds = %.lr.ph
  %i.u = add i64 %i.w, 1                          ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.f
  br i1 %i.v, label %_ZN4llvm16DenseMapIteratorImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EELb1EEppEv.exit.i, label %.lr.ph, !llvm.loop !772

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.w = phi i64 [ %i.u, %.lr.ph.i.i.i ], [ %i.s, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.411.0.copyload, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !16   ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !772

._crit_edge.i.i.i:                                ; preds = %.lr.ph, %bb.c
  %.012.lcssa.i.i.i = phi i64 [ %i.k, %bb.c ], [ %i.w, %.lr.ph ]
  %.0.lcssa.i.i.i = phi i32 [ %i.q, %bb.c ], [ %i.y, %.lr.ph ]
  %i.aa = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %i.ab = zext nneg i32 %i.aa to i64
  %.idx.i.i.i = shl i64 %.012.lcssa.i.i.i, 11
  %i.ac = getelementptr i8, ptr %.sroa.3.0.copyload, i64 %.idx.i.i.i
  %i.ad = getelementptr [64 x i8], ptr %i.ac, i64 %i.ab
  br label %_ZN4llvm16DenseMapIteratorImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EELb1EEppEv.exit.i

_ZN4llvm16DenseMapIteratorImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EELb1EEppEv.exit.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader, %._crit_edge.i.i.i, %bb.b
  %storemerge16.i.i.i = phi ptr [ %.sroa.2.0.copyload, %bb.b ], [ %i.ad, %._crit_edge.i.i.i ], [ %.sroa.2.0.copyload, %.lr.ph.i.i.i.preheader ], [ %.sroa.2.0.copyload, %.lr.ph.i.i.i ] ; 2 uses
  %i.ae = add nuw nsw i64 %.07.i, 1               ; 2 uses
  %.not.i = icmp eq ptr %storemerge16.i.i.i, %.sroa.018.0.copyload
  br i1 %.not.i, label %_ZSt10__distanceIN4llvm16DenseMapIteratorImN5clang9ThunkInfoENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS3_EELb1EEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit, label %bb.b, !llvm.loop !2420

_ZSt10__distanceIN4llvm16DenseMapIteratorImN5clang9ThunkInfoENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS3_EELb1EEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit: ; preds = %_ZN4llvm16DenseMapIteratorImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EELb1EEppEv.exit.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.ae, %_ZN4llvm16DenseMapIteratorImN5clang9ThunkInfoENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EELb1EEppEv.exit.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !11 ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = add i64 %.0.lcssa.i, %i.ah              ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !12
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp ugt i64 %i.ai, %i.al
  br i1 %i.am, label %bb.d, label %_ZN4llvm15SmallVectorImplISt4pairImN5clang9ThunkInfoEEE7reserveEm.exit

bb.d:                                             ; preds = %_ZSt10__distanceIN4llvm16DenseMapIteratorImN5clang9ThunkInfoENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS3_EELb1EEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.an, i64 noundef %i.ai, i64 noundef 64) #27
  %.pre40.pre = load i32, ptr %i.af, align 8, !tbaa !11
  br label %_ZN4llvm15SmallVectorImplISt4pairImN5clang9ThunkInfoEEE7reserveEm.exit

_ZN4llvm15SmallVectorImplISt4pairImN5clang9ThunkInfoEEE7reserveEm.exit: ; preds = %_ZSt10__distanceIN4llvm16DenseMapIteratorImN5clang9ThunkInfoENS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImS3_EELb1EEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit, %bb.d
end_hunk_18
begin_hunk_19_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSJ_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E22findBucketForInsertionIS5_EEPSJ_RKT_SN_.exit, label %bb.d, !prof !101

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E15LookupBucketForIS5_EEbRKT_RPSJ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2445
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !890
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !882
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E22findBucketForInsertionIS5_EEPSJ_RKT_SN_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E22findBucketForInsertionIS5_EEPSJ_RKT_SN_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !16
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2446
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !186
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !186
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !2447
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E15LookupBucketForIS5_EEbRKT_RPSJ_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E15LookupBucketForIS5_EEbRKT_RPSJ_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E22findBucketForInsertionIS5_EEPSJ_RKT_SN_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E22findBucketForInsertionIS5_EEPSJ_RKT_SN_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E22findBucketForInsertionIS5_EEPSJ_RKT_SN_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E15LookupBucketForIS5_EEbRKT_RPSJ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !882, !noalias !2449 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !890, !noalias !2449 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !881, !noalias !2449 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !186    ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !100

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !186
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !102, !llvm.loop !2444

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2445
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.106", align 16 ; 11 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !881
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !882
  store ptr %i.y, ptr %i.q, align 8, !tbaa !890
  store i32 0, ptr %i.p, align 16, !tbaa !2446
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E8moveFromERSK_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !827
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !827
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !827
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !827
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !16
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !16
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !16
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !16
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !881 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS5_INS1_8VPtrInfoESt14default_deleteIS7_EELj2EEES8_ISB_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 16, !tbaa !882
  %i.ah = zext i32 %i.ae to i64                   ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 4
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS5_INS1_8VPtrInfoESt14default_deleteIS7_EELj2EEES8_ISB_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS5_INS1_8VPtrInfoESt14default_deleteIS7_EELj2EEES8_ISB_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E8moveFromERSK_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !882    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !890
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !881  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !890  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !882
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !881
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS9_INS5_8VPtrInfoESt14default_deleteISB_EELj2EEESC_ISF_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SH_EEEES8_SH_SJ_SM_E8moveFromERSN_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E8moveFromERSK_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E8moveFromERSK_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !186  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E8moveFromERSK_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !16 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E8moveFromERSK_ENKUljE_clEj.exit, !llvm.loop !2454

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E8moveFromERSK_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !186
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !830
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !830
  store ptr null, ptr %i.av, align 8, !tbaa !830
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !16
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2455

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS6_INS2_8VPtrInfoESt14default_deleteIS8_EELj2EEES9_ISC_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E8moveFromERSK_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS9_INS5_8VPtrInfoESt14default_deleteISB_EELj2EEESC_ISF_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SH_EEEES8_SH_SJ_SM_E8moveFromERSN_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !2456

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS9_INS5_8VPtrInfoESt14default_deleteISB_EELj2EEESC_ISF_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SH_EEEES8_SH_SJ_SM_E8moveFromERSN_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !881
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS9_INS5_8VPtrInfoESt14default_deleteISB_EELj2EEESC_ISF_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SH_EEEES8_SH_SJ_SM_E8moveFromERSN_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS9_INS5_8VPtrInfoESt14default_deleteISB_EELj2EEESC_ISF_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SH_EEEES8_SH_SJ_SM_E8moveFromERSN_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS9_INS5_8VPtrInfoESt14default_deleteISB_EELj2EEESC_ISF_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SH_EEEES8_SH_SJ_SM_E8moveFromERSN_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS9_INS5_8VPtrInfoESt14default_deleteISB_EELj2EEESC_ISF_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SH_EEEES8_SH_SJ_SM_E8moveFromERSN_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !2446
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !2446
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS5_INS1_8VPtrInfoESt14default_deleteIS7_EELj2EEES8_ISB_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS9_INS5_8VPtrInfoESt14default_deleteISB_EELj2EEESC_ISF_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SH_EEEES8_SH_SJ_SM_E8moveFromERSN_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !881
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS5_INS1_8VPtrInfoESt14default_deleteIS7_EELj2EEES8_ISB_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS5_INS1_8VPtrInfoESt14default_deleteIS7_EELj2EEES8_ISB_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS_11SmallVectorIS9_INS5_8VPtrInfoESt14default_deleteISB_EELj2EEESC_ISF_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SH_EEEES8_SH_SJ_SM_E8moveFromERSN_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E24lookupOrInsertIntoBucketIRKS8_JEEES2_IPSJ_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !877, !noalias !2457 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !878, !noalias !2457 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !876, !noalias !2457 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !1160   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !805  ; 2 uses
  %i.p = mul i64 %i.o, 37
  %i.q = shl i64 %i.m, 32
  %i.r = and i64 %i.p, 4294967295
  %i.s = or disjoint i64 %i.q, %i.r
  %i.t = mul i64 %i.s, -4658895280553007687       ; 2 uses
  %i.u = lshr i64 %i.t, 31
  %i.v = xor i64 %i.u, %i.t
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.h, %i.w                       ; 3 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.y ; 2 uses
  %i.aa = lshr i64 %i.y, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !16
  %i.ad = and i32 %i.x, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph.i, label %.loopexit, !prof !100

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ag = phi ptr [ %i.aq, %bb.c ], [ %i.z, %bb.b ] ; 3 uses
  %.024.i = phi i32 [ %i.ao, %bb.c ], [ %i.x, %bb.b ]
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1160
  %i.ai = icmp eq ptr %i.i, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = icmp eq i64 %i.o, %i.ak
  %i.am = select i1 %i.ai, i1 %i.al, i1 false
  br i1 %i.am, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E15LookupBucketForIS8_EEbRKT_RPSJ_.exit, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph.i
  %i.an = add nuw i32 %.024.i, 1
  %i.ao = and i32 %i.an, %i.h                     ; 3 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ap ; 2 uses
  %i.ar = lshr i64 %i.ap, 5
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !16
  %i.au = and i32 %i.ao, 31
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %.loopexit, !prof !102, !llvm.loop !2462

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.z, %bb.b ], [ null, %bb.a ], [ %i.aq, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2463
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !2464
  %i.az = shl i32 %i.ay, 2
  %i.ba = add i32 %i.az, 4
  %i.bb = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ba, %i.bb
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E22findBucketForInsertionIS8_EEPSJ_RKT_SN_.exit, label %bb.d, !prof !101

bb.d:                                             ; preds = %.loopexit
  %i.bc = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.bc)
  %i.bd = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E15LookupBucketForIS8_EEbRKT_RPSJ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2463
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !878
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !877
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E22findBucketForInsertionIS8_EEPSJ_RKT_SN_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E22findBucketForInsertionIS8_EEPSJ_RKT_SN_.exit: ; preds = %.loopexit, %bb.d
  %i.be = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.bf = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.bg = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24                ; 2 uses
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = and i32 %i.bl, 31
  %i.bn = shl nuw i32 1, %i.bm
  %i.bo = lshr i64 %i.bk, 5
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !16
  %i.br = or i32 %i.bn, %i.bq
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !16
  %i.bs = load i32, ptr %i.ax, align 8, !tbaa !2464
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.ax, align 8, !tbaa !2464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr null, ptr %i.bu, align 8, !tbaa !2378
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E15LookupBucketForIS8_EEbRKT_RPSJ_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E15LookupBucketForIS8_EEbRKT_RPSJ_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E22findBucketForInsertionIS8_EEPSJ_RKT_SN_.exit
  %.sroa.0.0 = phi ptr [ %i.bg, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E22findBucketForInsertionIS8_EEPSJ_RKT_SN_.exit ], [ %i.ag, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E22findBucketForInsertionIS8_EEPSJ_RKT_SN_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E15LookupBucketForIS8_EEbRKT_RPSJ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !877, !noalias !2465 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !878, !noalias !2465 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !876, !noalias !2465 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1160   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !805  ; 2 uses
  %i.o = mul i64 %i.n, 37
  %i.p = shl i64 %i.l, 32
  %i.q = and i64 %i.o, 4294967295
  %i.r = or disjoint i64 %i.p, %i.q
  %i.s = mul i64 %i.r, -4658895280553007687       ; 2 uses
  %i.t = lshr i64 %i.s, 31
  %i.u = xor i64 %i.t, %i.s
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.g, %i.v                       ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !16
  %i.ac = and i32 %i.w, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph, label %.thread, !prof !100

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.af = phi ptr [ %i.ap, %bb.c ], [ %i.y, %bb.b ] ; 3 uses
  %.024 = phi i32 [ %i.an, %bb.c ], [ %i.w, %bb.b ]
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1160
  %i.ah = icmp eq ptr %i.h, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = icmp eq i64 %i.n, %i.aj
  %i.al = select i1 %i.ah, i1 %i.ak, i1 false     ; 3 uses
  br i1 %i.al, label %.thread, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph
  %i.am = add nuw i32 %.024, 1
  %i.an = and i32 %i.am, %i.g                     ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ao ; 2 uses
  %i.aq = lshr i64 %i.ao, 5
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !16
  %i.at = and i32 %i.an, 31
  %i.au = lshr i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i1
  br i1 %i.av, label %.lr.ph, label %.thread, !prof !102, !llvm.loop !2462

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.y, %bb.b ], [ null, %bb.a ], [ %i.ap, %bb.c ], [ %i.af, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.al, %bb.c ], [ %i.al, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2463
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.108", align 16 ; 10 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !876
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !877
  store ptr %i.y, ptr %i.q, align 8, !tbaa !878
  store i32 0, ptr %i.p, align 16, !tbaa !2464
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E8moveFromERSK_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !2463   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1841 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !827
  store ptr %i.z, ptr %2, align 16, !tbaa !2463
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !827
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !1841
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !16
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !16
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !16
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !16
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS2_9CharUnitsEESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !16 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIKN5clang12VTableLayoutEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIKN5clang12VTableLayoutEEclEPS2_.exit.i.i.i.i: ; preds = %bb.b
  call void @_ZN5clang12VTableLayoutD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.au) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 152) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIKN5clang12VTableLayoutEEclEPS2_.exit.i.i.i.i, %bb.b
  %i.av = add i32 %.0.i3.i.i, -1
  %i.aw = and i32 %i.av, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !879

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !880

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !876 ; 2 uses
  %i.ax = icmp eq i32 %.pr.i, 0
  br i1 %i.ax, label %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS2_9CharUnitsEESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E10destroyAllEv.exit.i
  %i.ay = load ptr, ptr %2, align 16, !tbaa !877
  %i.az = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ba = mul nuw nsw i64 %i.az, 24
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ay, i64 noundef %i.be, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS2_9CharUnitsEESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEED2Ev.exit

_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS2_9CharUnitsEESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E10destroyAllEv.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E8moveFromERSK_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !877
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !878
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !876  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !878  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !877
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !876
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS6_9CharUnitsEESt10unique_ptrIKNS6_12VTableLayoutESt14default_deleteISE_EENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SH_EEEESB_SH_SJ_SM_E8moveFromERSN_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E8moveFromERSK_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bk, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E8moveFromERSK_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1160
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !805
  %i.ac = mul i64 %i.ab, 37
  %i.ad = shl i64 %i.z, 32
  %i.ae = and i64 %i.ac, 4294967295
  %i.af = or disjoint i64 %i.ad, %i.ae
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.k, %i.aj                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !16
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E8moveFromERSK_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.at, %.lr.ph.i ], [ %i.ak, %bb.b ]
  %i.as = add i32 %.014.i, 1
  %i.at = and i32 %i.as, %i.k                     ; 3 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = lshr i64 %i.au, 5                       ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !16
  %i.ay = and i32 %i.at, 31                       ; 2 uses
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E8moveFromERSK_ENKUljE_clEj.exit, !llvm.loop !2470

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E8moveFromERSK_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.am, %bb.b ], [ %i.av, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ap, %bb.b ], [ %i.ay, %.lr.ph.i ]
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !72
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !72
  store ptr null, ptr %i.bd, align 8, !tbaa !72
  %i.bf = shl nuw i32 1, %.lcssa.i
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !16
  %i.bi = or i32 %i.bh, %i.bf
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !16
  %i.bj = add i32 %.0.i17, -1
  %i.bk = and i32 %i.bj, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bk, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2471

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS3_9CharUnitsEESt10unique_ptrIKNS3_12VTableLayoutESt14default_deleteISB_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E8moveFromERSK_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS6_9CharUnitsEESt10unique_ptrIKNS6_12VTableLayoutESt14default_deleteISE_EENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SH_EEEESB_SH_SJ_SM_E8moveFromERSN_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !2472

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS6_9CharUnitsEESt10unique_ptrIKNS6_12VTableLayoutESt14default_deleteISE_EENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SH_EEEESB_SH_SJ_SM_E8moveFromERSN_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !876
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS6_9CharUnitsEESt10unique_ptrIKNS6_12VTableLayoutESt14default_deleteISE_EENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SH_EEEESB_SH_SJ_SM_E8moveFromERSN_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS6_9CharUnitsEESt10unique_ptrIKNS6_12VTableLayoutESt14default_deleteISE_EENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SH_EEEESB_SH_SJ_SM_E8moveFromERSN_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS6_9CharUnitsEESt10unique_ptrIKNS6_12VTableLayoutESt14default_deleteISE_EENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SH_EEEESB_SH_SJ_SM_E8moveFromERSN_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bl = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS6_9CharUnitsEESt10unique_ptrIKNS6_12VTableLayoutESt14default_deleteISE_EENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SH_EEEESB_SH_SJ_SM_E8moveFromERSN_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !2464
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !2464
  %i.bp = icmp eq i32 %i.bl, 0
  br i1 %i.bp, label %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS2_9CharUnitsEESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS6_9CharUnitsEESt10unique_ptrIKNS6_12VTableLayoutESt14default_deleteISE_EENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SH_EEEESB_SH_SJ_SM_E8moveFromERSN_EUljE_EEvPKjjT_.exit
  %i.bq = load ptr, ptr %1, align 8, !tbaa !877
  %i.br = zext i32 %i.bl to i64                   ; 2 uses
  %i.bs = mul nuw nsw i64 %i.br, 24
  %i.bt = add nuw nsw i64 %i.br, 31
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = and i64 %i.bu, 1073741820
  %i.bw = add nuw nsw i64 %i.bv, %i.bs
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bq, i64 noundef %i.bw, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !876
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS2_9CharUnitsEESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEE4killEv.exit

_ZN4llvm8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS2_9CharUnitsEESt10unique_ptrIKNS2_12VTableLayoutESt14default_deleteISA_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang13CXXRecordDeclENS6_9CharUnitsEESt10unique_ptrIKNS6_12VTableLayoutESt14default_deleteISE_EENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SH_EEEESB_SH_SJ_SM_E8moveFromERSN_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JRKS4_EEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !884, !noalias !2473 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1036, !noalias !2473 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !883, !noalias !2473 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.sroa.06.0.copyload.i = load i64, ptr %1, align 8, !tbaa !49 ; 2 uses
  %i.i = mul i64 %.sroa.06.0.copyload.i, -4658895280553007687 ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.h, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph.i, label %.loopexit, !prof !100

.lr.ph.i:                                         ; preds = %bb.b
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.27.0..sroa_idx.i, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.v = phi ptr [ %i.o, %.lr.ph.i ], [ %i.ac, %bb.d ] ; 3 uses
  %.02330.i = phi i32 [ %i.m, %.lr.ph.i ], [ %i.aa, %bb.d ]
  %.sroa.0.0.copyload.i = load i64, ptr %i.v, align 8, !tbaa !49
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !16
  %i.w = icmp eq i64 %.sroa.06.0.copyload.i, %.sroa.0.0.copyload.i
  %i.x = icmp eq i32 %.sroa.22.0.copyload.i, %.sroa.2.0.copyload.i
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.d, !prof !101

bb.d:                                             ; preds = %bb.c
  %i.z = add nuw i32 %.02330.i, 1
  %i.aa = and i32 %i.z, %i.h                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %bb.c, label %.loopexit, !prof !102, !llvm.loop !1216

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.b
  %.lcssa34.sink.i.ph = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa34.sink.i.ph, ptr %i.a, align 8, !tbaa !2345
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1037
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.e, !prof !101

bb.e:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2345
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1036
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !884
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang10GlobalDeclENS2_21MethodVFTableLocationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.e
  %i.aq = phi ptr [ %.pre16, %bb.e ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.e ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.e ], [ %.lcssa34.sink.i.ph, %.loopexit ] ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 48                ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !16
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !16
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !1037
  %i.bf = add i32 %i.be, 1
end_hunk_19
begin_hunk_20_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSF_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit, label %bb.d, !prof !101

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E15LookupBucketForIS5_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2485
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2390
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !875
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !16
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2486
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !186
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !186
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !2487
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E15LookupBucketForIS5_EEbRKT_RPSF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E15LookupBucketForIS5_EEbRKT_RPSF_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E22findBucketForInsertionIS5_EEPSF_RKT_SJ_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E15LookupBucketForIS5_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !875, !noalias !2489 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2390, !noalias !2489 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !874, !noalias !2489 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !186    ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !100

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !186
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !102, !llvm.loop !2484

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2485
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.110", align 16 ; 11 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !874
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !875
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2390
  store i32 0, ptr %i.p, align 16, !tbaa !2486
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !827
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !827
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !827
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !827
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !16
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !16
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !16
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !16
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !874 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS1_15VirtualBaseInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 16, !tbaa !875
  %i.ah = zext i32 %i.ae to i64                   ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 4
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS1_15VirtualBaseInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS1_15VirtualBaseInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !875    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2390
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !874  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2390 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !875
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !874
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS5_15VirtualBaseInfoESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !186  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !16 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, !llvm.loop !2494

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !186
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !1277
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !1277
  store ptr null, ptr %i.av, align 8, !tbaa !1277
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !16
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2495

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS2_15VirtualBaseInfoESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS5_15VirtualBaseInfoESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !2496

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS5_15VirtualBaseInfoESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !874
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS5_15VirtualBaseInfoESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS5_15VirtualBaseInfoESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS5_15VirtualBaseInfoESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS5_15VirtualBaseInfoESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !2486
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !2486
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS1_15VirtualBaseInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS5_15VirtualBaseInfoESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !874
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS1_15VirtualBaseInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS1_15VirtualBaseInfoESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclESt10unique_ptrINS5_15VirtualBaseInfoESt14default_deleteISA_EENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SD_EEEES8_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E24lookupOrInsertIntoBucketIRKS5_JRKjEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1283, !noalias !2497 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1297, !noalias !2497 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1282, !noalias !2497 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !186    ; 2 uses
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
  %i.t = load i32, ptr %i.s, align 4, !tbaa !16
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !100

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !186
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit, label %bb.c, !prof !101

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !16
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !102, !llvm.loop !1598

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1599
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1284
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit, label %bb.d, !prof !101

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1599
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1297
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !1283
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !16
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1284
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !186
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !186
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = load i32, ptr %2, align 4, !tbaa !16
  store i32 %i.bj, ptr %i.bi, align 8, !tbaa !16
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_20
