Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-code-manager?download=true
inline.NumInlined: 5605
inline.NumDeleted: 3137
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 20
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_:bb.a
  %i.au = getelementptr i8, ptr %1, i64 %i.as
  %scevgep41 = getelementptr i8, ptr %i.au, i64 8
  %bound042 = icmp ult ptr %i.al, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader60, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %i.ap, 4611686018427387900   ; 3 uses
  %i.av = shl i64 %n.vec48, 3                     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.al, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %1, i64 %i.av
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.ay = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.al, i64 %i.ay ; 2 uses
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.ay ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.az = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !alias.scope !265, !noalias !263
  %wide.load54 = load <2 x i64>, ptr %i.az, align 8, !alias.scope !265, !noalias !263
  %i.ba = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !alias.scope !266, !noalias !265
  store <2 x i64> %wide.load54, ptr %i.ba, align 8, !alias.scope !266, !noalias !265
  %i.bb = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !alias.scope !265, !noalias !263
  store <2 x ptr> splat (ptr null), ptr %i.bb, align 8, !alias.scope !265, !noalias !263
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.bc, label %middle.block56, label %vector.body49, !llvm.loop !255

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.ap, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, label %.lr.ph.i.i.i17.preheader60

.lr.ph.i.i.i17.preheader60:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block56
  %.012.i.i.i18.ph = phi ptr [ %i.al, %vector.memcheck39 ], [ %i.al, %.lr.ph.i.i.i17.preheader ], [ %i.aw, %middle.block56 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.ax, %middle.block56 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader60, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bf, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader60 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.bd = load i64, ptr %.0911.i.i.i19, align 8, !alias.scope !264, !noalias !263
  store i64 %i.bd, ptr %.012.i.i.i18, align 8, !alias.scope !263, !noalias !264
  store ptr null, ptr %.0911.i.i.i19, align 8, !alias.scope !264, !noalias !263
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !256

_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block56, %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.al, %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.aw, %middle.block56 ], [ %i.bf, %.lr.ph.i.i.i17 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #32
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNKSt14default_deleteIN2v88internal4wasm19WasmModuleSourceMapEEclEPS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorImSaImEED2Ev.exit2.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i

_ZNSt6vectorImSaImEED2Ev.exit2.i:                 ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.q, %_ZNSt6vectorImSaImEED2Ev.exit2.i ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i3.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i3.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !267

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.p, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorImSaImEED2Ev.exit2.i
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i ], [ %i.q, %_ZNSt6vectorImSaImEED2Ev.exit2.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.e, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i
  %i.af = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i4.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i4.i, label %_ZN2v88internal4wasm19WasmModuleSourceMapD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #32
  br label %_ZN2v88internal4wasm19WasmModuleSourceMapD2Ev.exit

_ZN2v88internal4wasm19WasmModuleSourceMapD2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 104) #32
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal4wasm19WasmModuleSourceMapD2Ev.exit, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN2v88internal4wasm18JumpTableAssembler12EmitJumpSlotEm(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #6

declare void @_ZN2v88internal4wasm18JumpTableAssembler16PatchFarJumpSlotERNS0_21WritableJitAllocationEmm(ptr noundef nonnull align 8 dereferenceable(65), i64 noundef, i64 noundef) local_unnamed_addr #6

declare noundef ptr @_ZN2v88internal7Isolate23CurrentEmbeddedBlobCodeEv() local_unnamed_addr #6

declare noundef i32 @_ZN2v88internal7Isolate27CurrentEmbeddedBlobCodeSizeEv() local_unnamed_addr #6

declare noundef ptr @_ZN2v88internal7Isolate23CurrentEmbeddedBlobDataEv() local_unnamed_addr #6

declare noundef i32 @_ZN2v88internal7Isolate27CurrentEmbeddedBlobDataSizeEv() local_unnamed_addr #6

declare void @_ZN2v88internal4wasm18JumpTableAssembler15EmitFarJumpSlotEm(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.1127", align 8 ; 5 uses
  %4 = alloca %"class.std::unique_ptr.1127", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph58

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEET_SK_SK_T0_.exit"
  %i.h = icmp eq i64 %i.an, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph58, !llvm.loop !268

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa52 = phi i64 [ %i.d, %.lr.ph ], [ %i.bl, %bb.b ] ; 2 uses
  %storemerge26.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.016.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.i = add nsw i64 %.lcssa52, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EED2Ev.exit14.i.i.i, %._crit_edge
  %.08.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.s, %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EED2Ev.exit14.i.i.i ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.08.i.i.i ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  store ptr null, ptr %i.k, align 8
  store i64 %i.l, ptr %4, align 8
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_T0_SL_T1_T2_"(ptr %0, i64 noundef %.08.i.i.i, i64 noundef %.lcssa52, ptr noundef %4)
  %i.m = load ptr, ptr %4, align 8                ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EED2Ev.exit14.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i, label %bb.e

_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  tail call void @_ZN2v88internal12trap_handler18ReleaseHandlerDataEi(i32 noundef %i.o) #31
  br label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i, label %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #32
  br label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 112) #32
  br label %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EED2Ev.exit14.i.i.i

_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EED2Ev.exit14.i.i.i: ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i, %bb.c
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.s = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_RT0_.exit.i.i", label %bb.c, !llvm.loop !269

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_RT0_.exit.i.i": ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EED2Ev.exit14.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_RT0_.exit"
  %.sroa.0.03.i.i = phi ptr [ %i.t, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_RT0_.exit" ], [ %storemerge26.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_RT0_.exit.i.i" ]
  %i.t = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.u = load i64, ptr %i.t, align 8
  store ptr null, ptr %i.t, align 8
  %i.v = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  %i.w = load ptr, ptr %i.t, align 8              ; 4 uses
  store ptr %i.v, ptr %i.t, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i9.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i.i, label %bb.g

_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  tail call void @_ZN2v88internal12trap_handler18ReleaseHandlerDataEi(i32 noundef %i.y) #31
  br label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i.i, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #32
  br label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 112) #32
  br label %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit.i

_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit.i: ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i, %.lr.ph.i9.i
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ac, %i.a                     ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  store i64 %i.u, ptr %3, align 8
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_T0_SL_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.ae, ptr noundef %3)
  %i.af = load ptr, ptr %3, align 8               ; 4 uses
  %.not.i.i16 = icmp eq ptr %i.af, null
  br i1 %.not.i.i16, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_RT0_.exit", label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.ah = load i32, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, -1
  br i1 %i.ai, label %_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i, label %bb.i

_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i: ; preds = %bb.h
  tail call void @_ZN2v88internal12trap_handler18ReleaseHandlerDataEi(i32 noundef %i.ah) #31
  br label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i.i.i.i2.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i2.i, label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i, label %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.ak) #32
  br label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 112) #32
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_RT0_.exit"

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_RT0_.exit": ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit.i, %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.al = icmp sgt i64 %i.ad, 8
  br i1 %i.al, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_T0_.exit", !llvm.loop !270

.lr.ph58:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2657 = phi ptr [ %.sroa.016.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02756 = phi i64 [ %i.an, %bb.b ], [ %2, %.lr.ph ]
  %i.am = phi i64 [ %i.bl, %bb.b ], [ %i.d, %.lr.ph ]
  %i.an = add nsw i64 %.02756, -1                 ; 3 uses
  %i.ao = lshr i64 %i.am, 1
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ao ; 3 uses
  %i.aq = getelementptr inbounds i8, ptr %storemerge2657, i64 -8 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.f, align 8       ; 3 uses
  %.val1.i.i.i = load ptr, ptr %i.ap, align 8     ; 3 uses
  %i.ar = getelementptr i8, ptr %.val.i.i.i, i64 8
  %.val.val.i.i.i = load ptr, ptr %i.ar, align 8  ; 3 uses
  %i.as = getelementptr i8, ptr %.val1.i.i.i, i64 8
  %.val1.val.i.i.i = load ptr, ptr %i.as, align 8 ; 3 uses
  %i.at = icmp ugt ptr %.val.val.i.i.i, %.val1.val.i.i.i
  %.val1.i27.i.i = load ptr, ptr %i.aq, align 8   ; 3 uses
  %i.au = getelementptr i8, ptr %.val1.i27.i.i, i64 8
  %.val1.val.i29.i.i = load ptr, ptr %i.au, align 8 ; 4 uses
  br i1 %i.at, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph58
  %i.av = icmp ugt ptr %.val1.val.i.i.i, %.val1.val.i29.i.i
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %0, align 8
  store ptr %.val1.i.i.i, ptr %0, align 8
  store ptr %i.aw, ptr %i.ap, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.ax = icmp ugt ptr %.val.val.i.i.i, %.val1.val.i29.i.i
  %i.ay = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %.val1.i27.i.i, ptr %0, align 8
  store ptr %i.ay, ptr %i.aq, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  store ptr %.val.i.i.i, ptr %0, align 8
  store ptr %i.ay, ptr %i.f, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph58
  %i.az = icmp ugt ptr %.val.val.i.i.i, %.val1.val.i29.i.i
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = load ptr, ptr %0, align 8
  store ptr %.val.i.i.i, ptr %0, align 8
  store ptr %i.ba, ptr %i.f, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.bb = icmp ugt ptr %.val1.val.i.i.i, %.val1.val.i29.i.i
  %i.bc = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %.val1.i27.i.i, ptr %0, align 8
  store ptr %i.bc, ptr %i.aq, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  store ptr %.val1.i.i.i, ptr %0, align 8
  store ptr %i.bc, ptr %i.ap, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader", %bb.v
  %.sroa.016.0.i.i = phi ptr [ %i.bg, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2657, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load ptr, ptr %0, align 8
  %i.bd = getelementptr i8, ptr %.val1.i.i13.i, i64 8
  %.val1.val.i.i14.i = load ptr, ptr %i.bd, align 8 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i"
  %.sroa.016.1.i.i = phi ptr [ %.sroa.016.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i" ], [ %i.bg, %bb.t ] ; 8 uses
  %.val.i.i15.i = load ptr, ptr %.sroa.016.1.i.i, align 8 ; 2 uses
  %i.be = getelementptr i8, ptr %.val.i.i15.i, i64 8
  %.val.val.i.i16.i = load ptr, ptr %i.be, align 8
  %i.bf = icmp ugt ptr %.val.val.i.i16.i, %.val1.val.i.i14.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 8 ; 2 uses
  br i1 %i.bf, label %bb.t, label %.preheader.i.i, !llvm.loop !271

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %.val1.i11.i.i = load ptr, ptr %.sroa.0.1.i.i, align 8 ; 2 uses
  %i.bh = getelementptr i8, ptr %.val1.i11.i.i, i64 8
  %.val1.val.i13.i.i = load ptr, ptr %i.bh, align 8
  %i.bi = icmp ugt ptr %.val1.val.i.i14.i, %.val1.val.i13.i.i
  br i1 %i.bi, label %.preheader.i.i, label %bb.u, !llvm.loop !272

bb.u:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.016.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEET_SK_SK_T0_.exit"

bb.v:                                             ; preds = %bb.u
  store ptr %.val1.i11.i.i, ptr %.sroa.016.1.i.i, align 8
  store ptr %.val.i.i15.i, ptr %.sroa.0.1.i.i, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_SK_T0_.exit.i", !llvm.loop !273

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEET_SK_SK_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_T0_T1_"(ptr nonnull %.sroa.016.1.i.i, ptr %storemerge2657, i64 noundef %i.an)
  %i.bj = ptrtoint ptr %.sroa.016.1.i.i to i64
  %i.bk = sub i64 %i.bj, %i.a
  %i.bl = ashr exact i64 %i.bk, 3                 ; 3 uses
  %i.bm = icmp sgt i64 %i.bl, 16
  br i1 %i.bm, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_T0_.exit", !llvm.loop !268

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEET_SK_SK_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_SK_SK_RT0_.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZNKS5_12NativeModule26TransferNewOwnedCodeLockedEvE3$_0EEEvT_T0_SL_T1_T2_"(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit
  %.045 = phi i64 [ %spec.select, %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.045, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %.val.i = load ptr, ptr %i.f, align 8
  %.val1.i = load ptr, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load ptr, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %.val1.i, i64 8
  %.val1.val.i = load ptr, ptr %i.j, align 8
  %i.k = icmp ugt ptr %.val.val.i, %.val1.val.i
  %spec.select = select i1 %i.k, i64 %i.g, i64 %i.e ; 4 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %0, i64 %.045 ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8
  store ptr null, ptr %i.l, align 8
  %i.o = load ptr, ptr %i.m, align 8              ; 4 uses
  store ptr %i.n, ptr %i.m, align 8
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i, label %bb.c

_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  tail call void @_ZN2v88internal12trap_handler18ReleaseHandlerDataEi(i32 noundef %i.q) #31
  br label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i, label %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #32
  br label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 112) #32
  br label %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit

_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i
  %i.u = icmp slt i64 %spec.select, %i.b
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !274

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit ] ; 5 uses
  %i.v = and i64 %2, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.d, label %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit29

bb.d:                                             ; preds = %._crit_edge
  %i.x = add nsw i64 %2, -2
  %i.y = ashr exact i64 %i.x, 1
  %i.z = icmp eq i64 %.0.lcssa, %i.y
  br i1 %i.z, label %bb.e, label %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit29

bb.e:                                             ; preds = %bb.d
  %i.aa = shl nsw i64 %.0.lcssa, 1
  %i.ab = or disjoint i64 %i.aa, 1                ; 3 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa ; 2 uses
  %i.ae = load ptr, ptr %i.ac, align 8
  store ptr null, ptr %i.ac, align 8
  %i.af = load ptr, ptr %i.ad, align 8            ; 4 uses
  store ptr %i.ae, ptr %i.ad, align 8
  %.not.i.i.i.i24 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i24, label %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.ah = load i32, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, -1
  br i1 %i.ai, label %_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i28, label %bb.g

_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i28: ; preds = %bb.f
  tail call void @_ZN2v88internal12trap_handler18ReleaseHandlerDataEi(i32 noundef %i.ah) #31
  br label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i28, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i25 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i25, label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i27, label %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i26

_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i26: ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.ak) #32
  br label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i27

_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i27: ; preds = %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i26, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 112) #32
  br label %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit29

_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit29: ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i27, %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %.0.lcssa, %._crit_edge ], [ %.0.lcssa, %bb.d ], [ %i.ab, %bb.e ], [ %i.ab, %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i27 ] ; 3 uses
  %i.al = load i64, ptr %3, align 8
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  store ptr null, ptr %3, align 8
  %i.an = icmp sgt i64 %.1, %1
  br i1 %i.an, label %.lr.ph.i.preheader, label %.critedge.i

.lr.ph.i.preheader:                               ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit29
  %i.ao = getelementptr i8, ptr %i.am, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit.i
  %.010.i = phi i64 [ %.0911.i, %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit.i ], [ %.1, %.lr.ph.i.preheader ] ; 3 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0911.i ; 2 uses
  %.val.val.i31 = load ptr, ptr %i.ao, align 8
  %.val.i.i = load ptr, ptr %i.ap, align 8        ; 2 uses
  %i.aq = getelementptr i8, ptr %.val.i.i, i64 8
  %.val.val.i.i = load ptr, ptr %i.aq, align 8
  %i.ar = icmp ugt ptr %.val.val.i.i, %.val.val.i31
  br i1 %i.ar, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i ; 2 uses
  store ptr null, ptr %i.ap, align 8
  %i.at = load ptr, ptr %i.as, align 8            ; 4 uses
  store ptr %.val.i.i, ptr %i.as, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 96
  %i.av = load i32, ptr %i.au, align 8            ; 2 uses
  %i.aw = icmp sgt i32 %i.av, -1
  br i1 %i.aw, label %_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i.i, label %bb.j

_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  tail call void @_ZN2v88internal12trap_handler18ReleaseHandlerDataEi(i32 noundef %i.av) #31
  br label %bb.j

bb.j:                                             ; preds = %_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i.i, %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.j
  tail call void @_ZdaPv(ptr noundef nonnull %i.ay) #32
  br label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i.i, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 112) #32
  br label %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit.i

_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit.i: ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i, %bb.h
  %i.az = icmp sgt i64 %.0911.i, %1
  br i1 %i.az, label %.lr.ph.i, label %.critedge.i, !llvm.loop !275

.critedge.i:                                      ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit.i, %.lr.ph.i, %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit29
  %.0.lcssa.i = phi i64 [ %.1, %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit29 ], [ %.010.i, %.lr.ph.i ], [ %.0911.i, %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EEaSEOS6_.exit.i ]
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 4 uses
  store ptr %i.am, ptr %i.ba, align 8
  %.not.i.i.i.i10.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i10.i, label %_ZNSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS3_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.critedge.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  %i.bd = load i32, ptr %i.bc, align 8            ; 2 uses
  %i.be = icmp sgt i32 %i.bd, -1
  br i1 %i.be, label %_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i14.i, label %bb.l

_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i14.i: ; preds = %bb.k
  tail call void @_ZN2v88internal12trap_handler18ReleaseHandlerDataEi(i32 noundef %i.bd) #31
  br label %bb.l

bb.l:                                             ; preds = %_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i14.i, %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i11.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.i11.i, label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i13.i, label %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i12.i

_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i12.i: ; preds = %bb.l
  tail call void @_ZdaPv(ptr noundef nonnull %i.bg) #32
  br label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i13.i

_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i13.i: ; preds = %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i12.i, %bb.l
end_hunk_0
