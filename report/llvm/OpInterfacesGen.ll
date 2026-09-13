Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OpInterfacesGen?download=true
inline.NumInlined: 1882
inline.NumDeleted: 807
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL26getAllInterfaceDefinitionsRKN4llvm12RecordKeeperENS_9StringRefE:bb.a
  br i1 %i.co, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL26getAllInterfaceDefinitionsRKN4llvm12RecordKeeperENS2_9StringRefEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISD_SaISD_EEEEEEbT_.exit.thread.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL26getAllInterfaceDefinitionsRKN4llvm12RecordKeeperENS2_9StringRefEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISD_SaISD_EEEEEEbT_.exit.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL26getAllInterfaceDefinitionsRKN4llvm12RecordKeeperENS2_9StringRefEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISD_SaISD_EEEEEEbT_.exit.i.i.i.i": ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !101
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.cq, align 8, !tbaa !32
  %i.cr = call noundef i32 @_ZNK4llvm9SourceMgr23FindBufferContainingLocENS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(72) @_ZN4llvm6SrcMgrE, ptr %.sroa.0.0.copyload.i.i.i.i.i.i) #21
  %.not20.i.i.i.i = icmp eq i32 %i.cr, 1
  br i1 %.not20.i.i.i.i, label %bb.o, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL26getAllInterfaceDefinitionsRKN4llvm12RecordKeeperENS2_9StringRefEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISD_SaISD_EEEEEEbT_.exit.thread.i.i.i.i"

bb.o:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL26getAllInterfaceDefinitionsRKN4llvm12RecordKeeperENS2_9StringRefEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISD_SaISD_EEEEEEbT_.exit.i.i.i.i"
  %i.cs = load ptr, ptr %.sroa.08.043.i.i.i.i, align 8, !tbaa !52
  store ptr %i.cs, ptr %.sroa.014.042.i.i.i.i, align 8, !tbaa !52
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.014.042.i.i.i.i, i64 8
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL26getAllInterfaceDefinitionsRKN4llvm12RecordKeeperENS2_9StringRefEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISD_SaISD_EEEEEEbT_.exit.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL26getAllInterfaceDefinitionsRKN4llvm12RecordKeeperENS2_9StringRefEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISD_SaISD_EEEEEEbT_.exit.thread.i.i.i.i": ; preds = %bb.o, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL26getAllInterfaceDefinitionsRKN4llvm12RecordKeeperENS2_9StringRefEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISD_SaISD_EEEEEEbT_.exit.i.i.i.i", %bb.n
  %.sroa.014.1.i.i.i.i = phi ptr [ %.sroa.014.042.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL26getAllInterfaceDefinitionsRKN4llvm12RecordKeeperENS2_9StringRefEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISD_SaISD_EEEEEEbT_.exit.i.i.i.i" ], [ %i.ct, %bb.o ], [ %.sroa.014.042.i.i.i.i, %bb.n ] ; 2 uses
  %.sroa.08.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.043.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %.sroa.08.0.i.i.i.i, %i.q
  br i1 %.not.i.i.i.i7, label %"_ZN4llvm9remove_ifIRSt6vectorIPKNS_6RecordESaIS4_EEZL26getAllInterfaceDefinitionsRKNS_12RecordKeeperENS_9StringRefEE3$_0EEDaOT_T0_.exit.i", label %bb.n, !llvm.loop !243

"_ZN4llvm9remove_ifIRSt6vectorIPKNS_6RecordESaIS4_EEZL26getAllInterfaceDefinitionsRKNS_12RecordKeeperENS_9StringRefEE3$_0EEDaOT_T0_.exit.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL26getAllInterfaceDefinitionsRKN4llvm12RecordKeeperENS2_9StringRefEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISD_SaISD_EEEEEEbT_.exit.thread.i.i.i.i", %.preheader.i.i.i.i
  %.sroa.014.2.i.i.i.i = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i, %.preheader.i.i.i.i ], [ %.sroa.014.1.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL26getAllInterfaceDefinitionsRKN4llvm12RecordKeeperENS2_9StringRefEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISD_SaISD_EEEEEEbT_.exit.thread.i.i.i.i" ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.014.2.i.i.i.i, %i.q
  br i1 %.not.i.i.i, label %"_ZN4llvm8erase_ifISt6vectorIPKNS_6RecordESaIS4_EEZL26getAllInterfaceDefinitionsRKNS_12RecordKeeperENS_9StringRefEE3$_0EEvRT_T0_.exit", label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i: ; preds = %"_ZN4llvm9remove_ifIRSt6vectorIPKNS_6RecordESaIS4_EEZL26getAllInterfaceDefinitionsRKNS_12RecordKeeperENS_9StringRefEE3$_0EEDaOT_T0_.exit.i"
  %i.cu = ptrtoint ptr %.sroa.014.2.i.i.i.i to i64
  %i.cv = sub i64 %i.cu, %i.af
  %i.cw = getelementptr inbounds i8, ptr %.val.i, i64 %i.cv
  store ptr %i.cw, ptr %i.r, align 8, !tbaa !49
  br label %"_ZN4llvm8erase_ifISt6vectorIPKNS_6RecordESaIS4_EEZL26getAllInterfaceDefinitionsRKNS_12RecordKeeperENS_9StringRefEE3$_0EEvRT_T0_.exit"

"_ZN4llvm8erase_ifISt6vectorIPKNS_6RecordESaIS4_EEZL26getAllInterfaceDefinitionsRKNS_12RecordKeeperENS_9StringRefEE3$_0EEvRT_T0_.exit": ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predIZL26getAllInterfaceDefinitionsRKNS2_12RecordKeeperENS2_9StringRefEE3$_0EEET_SJ_SJ_T0_.exit.i.i.i.i", %._crit_edge.i.i.i.i.i.i, %"_ZN4llvm9remove_ifIRSt6vectorIPKNS_6RecordESaIS4_EEZL26getAllInterfaceDefinitionsRKNS_12RecordKeeperENS_9StringRefEE3$_0EEDaOT_T0_.exit.i", %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i
  %i.cx = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %"_ZN4llvm8erase_ifISt6vectorIPKNS_6RecordESaIS4_EEZL26getAllInterfaceDefinitionsRKNS_12RecordKeeperENS_9StringRefEE3$_0EEvRT_T0_.exit"
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !20
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %"_ZN4llvm8erase_ifISt6vectorIPKNS_6RecordESaIS4_EEZL26getAllInterfaceDefinitionsRKNS_12RecordKeeperENS_9StringRefEE3$_0EEvRT_T0_.exit", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void
}

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN4mlir6tblgen10FmtContext8addSubstEN4llvm9StringRefERKNS2_5TwineE(ptr noundef nonnull align 8 dereferenceable(200), ptr, i64, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN4mlir6tblgen10FmtContext8withSelfEN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef byval(%"class.llvm::Twine") align 8) local_unnamed_addr #5

declare { ptr, i64 } @_ZNK4llvm12RecordKeeper24getAllDerivedDefinitionsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(240), ptr, i64) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm6Record12isSubClassOfENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr %1, i64 %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101, !noalias !256 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load i32, ptr %i.c, align 8, !tbaa !102, !noalias !256 ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = mul nuw nsw i64 %i.e, 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not5759.not = icmp eq i32 %i.d, 0
  br i1 %.not5759.not, label %.critedge31, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq i64 %2, 0
  %i.j = icmp eq i64 %2, 0
  br label %bb.c

bb.b:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread54
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.047.060, i64 24 ; 2 uses
  %.not57.not = icmp eq ptr %i.k, %i.f
  br i1 %.not57.not, label %.critedge31, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.047.060 = phi ptr [ %i.b, %.lr.ph ], [ %i.k, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.047.060, align 8, !tbaa !52 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !143  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i8, ptr %i.n, align 8, !tbaa !259
  %i.p = icmp ne i8 %i.o, 20
  %.not58 = icmp eq ptr %i.m, null
  %.not = or i1 %.not58, %i.p
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i37 = load ptr, ptr %i.q, align 8, !tbaa !32
  %.sroa.2.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.2.0.copyload.i39 = load i64, ptr %.sroa.2.0..sroa_idx.i38, align 8, !tbaa !33
  %.not.i = icmp eq i64 %.sroa.2.0.copyload.i39, %2
  br i1 %.not.i, label %bb.e, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread54

bb.e:                                             ; preds = %bb.d
  br i1 %i.i, label %.critedge31, label %_ZN4llvmeqENS_9StringRefES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.e
  %bcmp.i = call i32 @bcmp(ptr %.sroa.0.0.copyload.i37, ptr %1, i64 %2)
  %i.r = icmp eq i32 %bcmp.i, 0
  br i1 %i.r, label %.critedge31, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread54

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !143, !noalias !260 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !137, !noalias !260
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !noalias !260
  call void %i.v(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(10) %i.s) #21, !inline_history !255
  %i.w = load ptr, ptr %3, align 8, !tbaa !19     ; 3 uses
  %i.x = load i64, ptr %i.g, align 8, !tbaa !100  ; 2 uses
  %.not.i42 = icmp ne i64 %i.x, %2                ; 2 uses
  %brmerge = or i1 %.not.i42, %i.j
  %not..not.i42 = xor i1 %.not.i42, true
  br i1 %brmerge, label %_ZN4llvmeqENS_9StringRefES0_.exit45, label %bb.g

bb.g:                                             ; preds = %bb.f
  %bcmp.i44 = call i32 @bcmp(ptr %i.w, ptr %1, i64 %2)
  %i.y = icmp eq i32 %bcmp.i44, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit45

_ZN4llvmeqENS_9StringRefES0_.exit45:              ; preds = %bb.f, %bb.g
  %.0.i43 = phi i1 [ %i.y, %bb.g ], [ %not..not.i42, %bb.f ]
  %i.z = icmp eq ptr %i.w, %i.h
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit45
  %i.aa = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.aa)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit45
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !20
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.ac) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.0.i43, label %.critedge31, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread54

_ZN4llvmeqENS_9StringRefES0_.exit.thread54:       ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.ad = call noundef zeroext i1 @_ZNK4llvm6Record12isSubClassOfENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.l, ptr %1, i64 %2)
  br i1 %i.ad, label %.critedge31, label %bb.b

.critedge31:                                      ; preds = %bb.b, %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread54, %bb.e, %bb.a
  %.not57.lcssa = phi i1 [ false, %bb.a ], [ true, %bb.e ], [ true, %_ZN4llvmeqENS_9StringRefES0_.exit.thread54 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ false, %bb.b ]
  ret i1 %.not57.lcssa
}

declare noundef i32 @_ZNK4llvm9SourceMgr23FindBufferContainingLocENS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(72), ptr) local_unnamed_addr #5

declare void @_ZN4llvm20emitSourceFileHeaderENS_9StringRefERNS_11raw_ostreamERKNS_12RecordKeeperE(ptr, i64, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #5

declare void @_ZN4llvm12RecordKeeperC1Ev(ptr noundef nonnull align 8 dereferenceable(240)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN4llvm12RecordKeeperD1Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240)) unnamed_addr #11

declare void @_ZN4mlir6tblgen9InterfaceC1EPKN4llvm6RecordE(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #12 {
bb.a:
  %.fr30 = freeze ptr %1                          ; 3 uses
  %.fr29 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr29 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr30 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr29, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph54

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEET_SH_SH_T0_.exit"
  %i.h = icmp eq i64 %i.dl, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph54, !llvm.loop !261

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i28.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ep, %bb.b ] ; 3 uses
  %storemerge26.lcssa = phi ptr [ %.fr30, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i28.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i28.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i"
  %.09.us.i.i.i = phi i64 [ %i.ar, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.us.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52   ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.034.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.034.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !52
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !52
  %i.ac = getelementptr i8, ptr %i.aa, i64 184
  %.val.i.i.us.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !89
  %i.ad = getelementptr i8, ptr %i.ab, i64 184
  %.val1.i.i.us.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !89
  %i.ae = icmp ult i32 %.val.i.i.us.i.i.i, %.val1.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.us.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !52
  %i.ah = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.us.i.i.i
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !52
  %i.ai = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ai, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !262

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.aj = getelementptr i8, ptr %i.t, i64 184
  %.val.val.i.i.us.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !89
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.us.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !52 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 184
  %.val.i.i.i.us.i.i.i = load i32, ptr %i.am, align 8, !tbaa !89
  %i.an = icmp ult i32 %.val.i.i.i.us.i.i.i, %.val.val.i.i.us.i.i.i
  br i1 %i.an, label %bb.d, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.us.i.i.i
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !52
  %i.ap = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.ap, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i", !llvm.loop !263

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i": ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ], [ %.010.i.i.us.i.i.i, %bb.c ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.us.i.i.i
  store ptr %i.t, ptr %i.aq, align 8, !tbaa !52
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.ar = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !264

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.bu, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.i.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !52 ; 2 uses
  %i.au = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.av = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.ay
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !52
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !52
  %i.bc = getelementptr i8, ptr %i.ba, i64 184
  %.val.i.i.i.i.i = load i32, ptr %i.bc, align 8, !tbaa !89
  %i.bd = getelementptr i8, ptr %i.bb, i64 184
  %.val1.i.i.i.i.i = load i32, ptr %i.bd, align 8, !tbaa !89
  %i.be = icmp ult i32 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.be, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !52
  %i.bh = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i.i
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !52
  %i.bi = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !262

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = load ptr, ptr %i.q, align 8, !tbaa !52
  store ptr %i.bk, ptr %i.r, align 8, !tbaa !52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bl = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.bm = getelementptr i8, ptr %i.at, i64 184
  %.val.val.i.i.i.i.i = load i32, ptr %i.bm, align 8, !tbaa !89
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.i.i.i
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !52 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 184
  %.val.i.i.i.i.i.i = load i32, ptr %i.bp, align 8, !tbaa !89
  %i.bq = icmp ult i32 %.val.i.i.i.i.i.i, %.val.val.i.i.i.i.i
  br i1 %i.bq, label %bb.h, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i.i
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !52
  %i.bs = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bs, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i", !llvm.loop !263

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i": ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %bb.g ], [ %.0911.i.i.i.i.i, %bb.h ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.at, ptr %i.bt, align 8, !tbaa !52
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bu = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !264

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i.i28.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bv, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_RT0_.exit.i.i" ], [ %storemerge26.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_RT0_.exit.i.i" ]
  %i.bv = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !52 ; 2 uses
  %i.bx = load ptr, ptr %.fr29, align 8, !tbaa !52
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !52
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.by, %i.a                     ; 3 uses
  %i.ca = ashr exact i64 %i.bz, 3                 ; 3 uses
  %i.cb = add nsw i64 %i.ca, -1
  %i.cc = lshr i64 %i.cb, 1
  %i.cd = icmp sgt i64 %i.ca, 2
  br i1 %i.cd, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.034.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ce = shl i64 %.034.i.i.i20.i, 1              ; 2 uses
  %i.cf = add i64 %i.ce, 2                        ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.cf
  %i.ch = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.ch
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !52
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !52
  %i.cl = getelementptr i8, ptr %i.cj, i64 184
  %.val.i.i.i.i21.i = load i32, ptr %i.cl, align 8, !tbaa !89
  %i.cm = getelementptr i8, ptr %i.ck, i64 184
  %.val1.i.i.i.i22.i = load i32, ptr %i.cm, align 8, !tbaa !89
  %i.cn = icmp ult i32 %.val.i.i.i.i21.i, %.val1.i.i.i.i22.i
  %spec.select.i.i.i23.i = select i1 %i.cn, i64 %i.ch, i64 %i.cf ; 4 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i23.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !52
  %i.cq = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i20.i
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !52
  %i.cr = icmp slt i64 %spec.select.i.i.i23.i, %i.cc
  br i1 %i.cr, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i, !llvm.loop !262

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.cs = and i64 %i.bz, 8
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.cu = add nsw i64 %i.ca, -2
  %i.cv = ashr exact i64 %i.cu, 1
  %i.cw = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cv
  br i1 %i.cw, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.cx = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.cy = or disjoint i64 %i.cx, 1                ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !52
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.da, ptr %i.db, align 8, !tbaa !52
  br label %.lr.ph.i.i.i.i13.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.cy, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.j ]
  %i.dc = getelementptr i8, ptr %i.bw, i64 184
  %.val.val.i.i.i.i14.i = load i32, ptr %i.dc, align 8, !tbaa !89
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i15.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.l ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i78.i.i.i
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !52 ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 184
  %.val.i.i.i.i.i17.i = load i32, ptr %i.df, align 8, !tbaa !89
  %i.dg = icmp ult i32 %.val.i.i.i.i.i17.i, %.val.val.i.i.i.i14.i
  br i1 %i.dg, label %bb.l, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_RT0_.exit.i.i"

bb.l:                                             ; preds = %bb.k
  %i.dh = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i15.i
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !52
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_RT0_.exit.i.i", label %bb.k, !llvm.loop !263

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_RT0_.exit.i.i": ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.j ], [ %.010.i.i.i.i15.i, %bb.k ], [ 0, %bb.l ]
  %i.di = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i18.i
  store ptr %i.bw, ptr %i.di, align 8, !tbaa !52
  %i.dj = icmp sgt i64 %i.bz, 8
  br i1 %i.dj, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_T0_.exit", !llvm.loop !265

.lr.ph54:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2653 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr30, %.lr.ph ] ; 3 uses
  %.02752 = phi i64 [ %i.dl, %bb.b ], [ %2, %.lr.ph ]
  %i.dk = phi i64 [ %i.eq, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dl = add nsw i64 %.02752, -1                 ; 3 uses
  %i.dm = lshr i64 %i.dk, 1
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.dm ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %storemerge2653, i64 -8 ; 3 uses
  %i.dp = load ptr, ptr %i.f, align 8, !tbaa !52  ; 3 uses
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !52 ; 3 uses
  %i.dr = getelementptr i8, ptr %i.dp, i64 184
  %.val.i.i.i = load i32, ptr %i.dr, align 8, !tbaa !89 ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dq, i64 184
  %.val1.i.i.i = load i32, ptr %i.ds, align 8, !tbaa !89 ; 3 uses
  %i.dt = icmp ult i32 %.val.i.i.i, %.val1.i.i.i
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !52 ; 3 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 184
  %.val1.i27.i.i = load i32, ptr %i.dv, align 8, !tbaa !89 ; 4 uses
  br i1 %i.dt, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph54
  %i.dw = icmp ult i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.dw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dx = load ptr, ptr %.fr29, align 8, !tbaa !52
  store ptr %i.dq, ptr %.fr29, align 8, !tbaa !52
  store ptr %i.dx, ptr %i.dn, align 8, !tbaa !52
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.m
  %i.dy = icmp ult i32 %.val.i.i.i, %.val1.i27.i.i
  %i.dz = load ptr, ptr %.fr29, align 8, !tbaa !52 ; 2 uses
  br i1 %i.dy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.du, ptr %.fr29, align 8, !tbaa !52
  store ptr %i.dz, ptr %i.do, align 8, !tbaa !52
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  store ptr %i.dp, ptr %.fr29, align 8, !tbaa !52
  store ptr %i.dz, ptr %i.f, align 8, !tbaa !52
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.r:                                             ; preds = %.lr.ph54
  %i.ea = icmp ult i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.ea, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eb = load ptr, ptr %.fr29, align 8, !tbaa !52
  store ptr %i.dp, ptr %.fr29, align 8, !tbaa !52
  store ptr %i.eb, ptr %i.f, align 8, !tbaa !52
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  %i.ec = icmp ult i32 %.val1.i.i.i, %.val1.i27.i.i
  %i.ed = load ptr, ptr %.fr29, align 8, !tbaa !52 ; 2 uses
  br i1 %i.ec, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.du, ptr %.fr29, align 8, !tbaa !52
  store ptr %i.ed, ptr %i.do, align 8, !tbaa !52
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.t
  store ptr %i.dq, ptr %.fr29, align 8, !tbaa !52
  store ptr %i.ed, ptr %i.dn, align 8, !tbaa !52
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader": ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader", %bb.y
  %.sroa.012.0.i.i = phi ptr [ %i.ej, %bb.y ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2653, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  %i.ee = load ptr, ptr %.fr29, align 8, !tbaa !52
  %i.ef = getelementptr i8, ptr %i.ee, i64 184
  %.val1.i.i13.i = load i32, ptr %i.ef, align 8, !tbaa !89 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i" ], [ %i.ej, %bb.w ] ; 8 uses
  %i.eg = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !52 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 184
  %.val.i.i14.i = load i32, ptr %i.eh, align 8, !tbaa !89
  %i.ei = icmp ult i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ei, label %bb.w, label %.preheader.i.i, !llvm.loop !266

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.w ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.ek = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !52 ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 184
  %.val1.i9.i.i = load i32, ptr %i.el, align 8, !tbaa !89
  %i.em = icmp ult i32 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.em, label %.preheader.i.i, label %bb.x, !llvm.loop !267

bb.x:                                             ; preds = %.preheader.i.i
  %i.en = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.en, label %bb.y, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEET_SH_SH_T0_.exit"

bb.y:                                             ; preds = %bb.x
  store ptr %i.ek, ptr %.sroa.012.1.i.i, align 8, !tbaa !52
  store ptr %i.eg, ptr %.sroa.0.1.i.i, align 8, !tbaa !52
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i", !llvm.loop !268

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEET_SH_SH_T0_.exit": ; preds = %bb.x
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2653, i64 noundef %i.dl)
  %i.eo = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ep = sub i64 %i.eo, %i.a                     ; 2 uses
  %i.eq = ashr exact i64 %i.ep, 3                 ; 2 uses
  %i.er = icmp sgt i64 %i.eq, 16
  br i1 %i.er, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_T0_.exit", !llvm.loop !261

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEET_SH_SH_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_SH_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_118InterfaceGenerator18emitInterfaceDeclsEvE3$_0EEEvT_SH_RT0_.exit.i.i"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

declare { ptr, i64 } @_ZNK4mlir6tblgen9Interface15getCppNamespaceEv(ptr noundef nonnull align 8 dereferenceable(1048)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16NamespaceEmitterC2ERNS_11raw_ostreamERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(34) %2) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(34) %2) #21
  %i.b = load ptr, ptr %3, align 8, !tbaa !19     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !100  ; 5 uses
  %.not.i.i.i = icmp ult i64 %i.d, 2
  br i1 %.not.i.i.i, label %_ZN4llvm16NamespaceEmitter4trimENS_9StringRefE.exit, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i.i:    ; preds = %bb.a
  %i.e = load i16, ptr %i.b, align 1
  %i.f = icmp ne i16 %i.e, 14906
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0                      ; 2 uses
  %i.i = add i64 %i.d, -2
  %.sroa.01.0.i.ph.idx = select i1 %i.h, i64 2, i64 0
  %.sroa.01.0.i.ph = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.01.0.i.ph.idx ; 2 uses
  %.sroa.4.0.i.ph = select i1 %i.h, i64 %i.i, i64 %i.d ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !132, !alias.scope !271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !271
  store i64 %.sroa.4.0.i.ph, ptr %i.a, align 8, !tbaa !33, !noalias !271
  %i.k = icmp ugt i64 %.sroa.4.0.i.ph, 15
  br i1 %i.k, label %bb.b, label %._crit_edge.i.i.i

_ZN4llvm16NamespaceEmitter4trimENS_9StringRefE.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %.not.i = icmp eq ptr %i.b, null
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !132, !alias.scope !271
  br i1 %.not.i, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread, label %.thread

.thread:                                          ; preds = %_ZN4llvm16NamespaceEmitter4trimENS_9StringRefE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !271
  store i64 %i.d, ptr %i.a, align 8, !tbaa !33, !noalias !271
  br label %._crit_edge.i.i.i

_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread:     ; preds = %_ZN4llvm16NamespaceEmitter4trimENS_9StringRefE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !100, !alias.scope !271
  store i8 0, ptr %i.l, align 8, !tbaa !20, !alias.scope !271
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #21 ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !19, !alias.scope !271
  %i.p = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !271
  store i64 %i.p, ptr %i.j, align 8, !tbaa !20, !alias.scope !271
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.thread, %bb.b, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i
  %.sroa.01.0.i1318 = phi ptr [ %.sroa.01.0.i.ph, %bb.b ], [ %.sroa.01.0.i.ph, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i ], [ %i.b, %.thread ] ; 2 uses
  %.sroa.4.0.i1417 = phi i64 [ %.sroa.4.0.i.ph, %bb.b ], [ %.sroa.4.0.i.ph, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i ], [ %i.d, %.thread ] ; 2 uses
  %i.q = phi ptr [ %i.o, %bb.b ], [ %i.j, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i ], [ %i.l, %.thread ] ; 2 uses
  switch i64 %.sroa.4.0.i1417, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %.sroa.01.0.i1318, align 1, !tbaa !20
  store i8 %i.r, ptr %i.q, align 1, !tbaa !20
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 1 %.sroa.01.0.i1318, i64 %.sroa.4.0.i1417, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.s = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !271 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !100, !alias.scope !271
  %i.u = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !271
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !271
  %.pre = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %.pre, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.y = phi ptr [ %i.n, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread ], [ %i.w, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit ]
  %i.z = phi ptr [ null, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread ], [ %.pre, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit ]
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !20
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.ac, align 8, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !100
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm11raw_ostreamlsEPKc.exit6, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !98
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !99 ; 2 uses
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp ult i64 %i.am, 10
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.30, i64 noundef 10) #21
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.aj, ptr noundef nonnull align 1 dereferenceable(10) @.str.30, i64 10, i1 false)
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !99
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 10
  store ptr %i.aq, ptr %i.ai, align 8, !tbaa !99
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.f, %bb.g
  %.0.i.i = phi ptr [ %i.ao, %bb.f ], [ %1, %bb.g ]
  %i.ar = load ptr, ptr %0, align 8, !tbaa !19
  %i.as = load i64, ptr %i.ad, align 8, !tbaa !100
  %i.at = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.ar, i64 noundef %i.as) #21 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !98
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !99 ; 2 uses
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = icmp ult i64 %i.ba, 4
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.bc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull @.str.31, i64 noundef 4) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit6

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i32 168459040, ptr %i.ax, align 1
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !99
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store ptr %i.be, ptr %i.aw, align 8, !tbaa !99
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit6

_ZN4llvm11raw_ostreamlsEPKc.exit6:                ; preds = %bb.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

declare void @_ZN4mlir6tblgen26emitSummaryAndDescCommentsERN4llvm11raw_ostreamENS1_9StringRefES4_b(ptr noundef nonnull align 8 dereferenceable(48), ptr, i64, ptr, i64, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZNK4mlir6tblgen9Interface14getDescriptionEv(ptr dead_on_unwind writable sret(%"class.std::optional.95") align 8, ptr noundef nonnull align 8 dereferenceable(1048)) local_unnamed_addr #5

declare { ptr, i64 } @_ZNK4mlir6tblgen9Interface7getNameEv(ptr noundef nonnull align 8 dereferenceable(1048)) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNKSt14default_deleteIN4mlir6tblgen9InterfaceEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 984 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 992
  %i.e = load i32, ptr %i.d, align 8, !tbaa !102  ; 2 uses
  %.not.i1 = icmp eq i32 %i.e, 0
  br i1 %.not.i1, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir6tblgen9InterfaceESt14default_deleteIS4_EELb0EE13destroy_rangeEPS7_S9_.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.f = zext i32 %i.e to i64
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt10unique_ptrIN4mlir6tblgen9InterfaceESt14default_deleteIS2_EED2Ev.exit.i
  %.0.i2 = phi ptr [ %i.h, %_ZNSt10unique_ptrIN4mlir6tblgen9InterfaceESt14default_deleteIS2_EED2Ev.exit.i ], [ %i.g, %.lr.ph.preheader ]
  %i.h = getelementptr inbounds i8, ptr %.0.i2, i64 -8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !104  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4mlir6tblgen9InterfaceESt14default_deleteIS2_EED2Ev.exit.i, label %bb.c

end_hunk_0
