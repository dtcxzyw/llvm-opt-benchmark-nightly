Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonGlobalScheduler?download=true
inline.NumInlined: 4687
inline.NumDeleted: 1756
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4llvm16HexagonInstrInfo8isHVXVecERKNS_12MachineInstrE

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !334
  %i.c = load ptr, ptr %1, align 8, !tbaa !323    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !324
  %i.i = load ptr, ptr %0, align 8, !tbaa !323    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EE11_M_allocateEm.exit.i, !prof !319

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !320

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !289
  store ptr %i.r, ptr %i.o, align 8, !tbaa !289
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !323    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !324
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #25
  br label %_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !323
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !324
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4llvm12MachineInstrESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !334  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 8
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !320

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4llvm12MachineInstrESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 8
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4llvm12MachineInstrESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !289
  store ptr %i.ae, ptr %i.i, align 8, !tbaa !289
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4llvm12MachineInstrESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 8
  br i1 %i.af, label %bb.o, label %bb.p, !prof !320

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !323
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !334 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !323
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !334
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPPN4llvm12MachineInstrES3_ET0_T_S5_S4_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 8
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPPN4llvm12MachineInstrES3_ET0_T_S5_S4_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !289
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !289
  br label %_ZSt4copyIPPN4llvm12MachineInstrES3_ET0_T_S5_S4_.exit

_ZSt4copyIPPN4llvm12MachineInstrES3_ET0_T_S5_S4_.exit: ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 8, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 8
  br i1 %i.an, label %bb.r, label %bb.s, !prof !320

bb.r:                                             ; preds = %_ZSt4copyIPPN4llvm12MachineInstrES3_ET0_T_S5_S4_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ai, ptr align 8 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4llvm12MachineInstrESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.s:                                             ; preds = %_ZSt4copyIPPN4llvm12MachineInstrES3_ET0_T_S5_S4_.exit
  %i.ao = icmp eq i64 %i.am, 8
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4llvm12MachineInstrESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !289
  store ptr %i.ap, ptr %i.ai, align 8, !tbaa !289
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4llvm12MachineInstrESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4llvm12MachineInstrESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !323
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !334
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4llvm12MachineInstrESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm23SmallVectorTemplateBaseIPN12_GLOBAL__N_115PullUpCandidateELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !232
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #22
  %.val = load ptr, ptr %0, align 8, !tbaa !44
  %.val2 = load i32, ptr %i.a, align 8, !tbaa !232
  %i.f = zext i32 %.val2 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.f
  store ptr %1, ptr %i.g, align 1
  %i.h = load i32, ptr %i.a, align 8, !tbaa !232
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !232
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl14MoveMItoBundleEPN4llvm16BasicBlockRegionERNS1_14ilist_iteratorINS1_12ilist_detail12node_optionsINS1_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERNS1_26MachineInstrBundleIteratorIS7_Lb0EEESD_SD_RSt6vectorIPS7_SaISF_EEbb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %7, i1 noundef zeroext %8) unnamed_addr #3 align 2 {
bb.a:
  %9 = alloca %"class.std::__cxx11::list", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::list", align 8 ; 17 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 3 uses
  %i.i = alloca ptr, align 8                      ; 3 uses
  %11 = alloca %"class.llvm::SmallVector.473", align 8 ; 12 uses
  %12 = alloca %"class.llvm::SmallVector.475", align 8 ; 9 uses
  %13 = alloca %"class.llvm::SmallVector.473", align 8 ; 8 uses
  %14 = alloca %"class.llvm::SmallVector.475", align 8 ; 9 uses
  %i.j = alloca ptr, align 8                      ; 9 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %15 = alloca %"class.llvm::SmallVector.444", align 8 ; 12 uses
  %16 = alloca %"class.llvm::SmallVector.444", align 8 ; 9 uses
  %17 = alloca %"class.std::vector.297", align 8  ; 12 uses
  %i.l = alloca ptr, align 8                      ; 8 uses
  %i.m = alloca ptr, align 8                      ; 7 uses
  %18 = alloca %"struct.std::pair.503", align 8   ; 5 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %19 = alloca %"class.std::vector.297", align 8  ; 8 uses
  %20 = alloca %"struct.std::pair.503", align 8   ; 5 uses
  %21 = alloca %"struct.std::pair.503", align 8   ; 5 uses
  %22 = alloca %"struct.std::pair.503", align 8   ; 5 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !231    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !309  ; 15 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !231    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !309  ; 37 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  store ptr %i.r, ptr %i.j, align 8, !tbaa !289
  %i.u = icmp ne ptr %i.q, %i.t                   ; 2 uses
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL17EnableLocalPullUp, i64 120), align 8, !range !40
  %i.w = trunc nuw i8 %i.v to i1
  %or.cond469 = select i1 %i.u, i1 true, i1 %i.w
  br i1 %or.cond469, label %bb.b, label %bb.ic

bb.b:                                             ; preds = %bb.a
  %i.x = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL17OneFloatPerPacket, i64 120), align 8, !tbaa !179, !range !40, !noundef !41
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !287
  %i.ab = tail call noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo7isFloatERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(440) %i.aa, ptr noundef nonnull align 8 dereferenceable(80) %i.o) #22
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !287
  %i.ad = load ptr, ptr %2, align 8, !tbaa !231
  %i.ae = tail call noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo7isFloatERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(440) %i.ac, ptr noundef nonnull align 8 dereferenceable(80) %i.ad) #22
  br i1 %i.ae, label %bb.ic, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL19OneComplexPerPacket, i64 120), align 8, !tbaa !179, !range !40, !noundef !41
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !287
  %i.aj = load ptr, ptr %4, align 8, !tbaa !231
  %i.ak = tail call noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo9isComplexERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(440) %i.ai, ptr noundef nonnull align 8 dereferenceable(80) %i.aj) #22
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !287
  %i.am = load ptr, ptr %2, align 8, !tbaa !231
  %i.an = tail call noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo9isComplexERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(440) %i.al, ptr noundef nonnull align 8 dereferenceable(80) %i.am) #22
  br i1 %i.an, label %bb.ic, label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #22
  store i32 -1, ptr %i.k, align 4, !tbaa !286
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.ap, ptr %15, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !232
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 4, ptr %i.ar, align 4, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.as, ptr %16, align 8, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  store i32 0, ptr %i.at, align 8, !tbaa !232
  %i.au = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 4, ptr %i.au, align 4, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  br i1 %8, label %bb.i, label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i322

bb.i:                                             ; preds = %bb.h
  %i.av = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %6) ; 0 uses
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backEOS2_.exit323

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i322: ; preds = %bb.h
  %i.aw = load ptr, ptr %4, align 8, !tbaa !231
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.az = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #24 ; 6 uses
  store ptr %i.aw, ptr %i.az, align 8, !tbaa !289
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  store ptr %i.az, ptr %17, align 8, !tbaa !323
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !334
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !324
  %i.bb = load ptr, ptr %2, align 8, !tbaa !231
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !289
  %i.bf = load i64, ptr %i.az, align 8
  store i64 %i.bf, ptr %i.bd, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !324
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bj) #25
  store ptr %i.bd, ptr %17, align 8, !tbaa !323
  store ptr %i.bg, ptr %i.ax, align 8, !tbaa !334
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.bk, ptr %i.ay, align 8, !tbaa !324
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backEOS2_.exit323

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backEOS2_.exit323: ; preds = %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i322, %bb.i
  %i.bl = load ptr, ptr %i.ao, align 8, !tbaa !452, !noalias !850 ; 2 uses
  %i.bm = load ptr, ptr %6, align 8, !tbaa !452, !noalias !851 ; 2 uses
  %i.bn = icmp ult ptr %i.bm, %i.bl
  br i1 %i.bn, label %.lr.ph543, label %.thread449

.lr.ph543:                                        ; preds = %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backEOS2_.exit323
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 9 uses
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.cp = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %18, i64 8
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph543, %_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl13canReorderMIsEPN4llvm12MachineInstrES3_.exit.thread
  %.0242542 = phi ptr [ %i.t, %.lr.ph543 ], [ %.1243, %_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl13canReorderMIsEPN4llvm12MachineInstrES3_.exit.thread ] ; 11 uses
  %.0246541 = phi ptr [ %i.t, %.lr.ph543 ], [ %.5251, %_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl13canReorderMIsEPN4llvm12MachineInstrES3_.exit.thread ] ; 9 uses
  %.0261540 = phi i8 [ 0, %.lr.ph543 ], [ %.5266, %_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl13canReorderMIsEPN4llvm12MachineInstrES3_.exit.thread ] ; 13 uses
  %.0270539 = phi i1 [ false, %.lr.ph543 ], [ %.6276, %_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl13canReorderMIsEPN4llvm12MachineInstrES3_.exit.thread ] ; 4 uses
  %.0279538 = phi i1 [ false, %.lr.ph543 ], [ %.6285, %_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl13canReorderMIsEPN4llvm12MachineInstrES3_.exit.thread ] ; 7 uses
  %.sroa.0395.0537 = phi ptr [ %i.bl, %.lr.ph543 ], [ %i.cr, %_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl13canReorderMIsEPN4llvm12MachineInstrES3_.exit.thread ]
  %i.cr = getelementptr inbounds i8, ptr %.sroa.0395.0537, i64 -8 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !289 ; 17 uses
  %i.ct = load ptr, ptr %i.bo, align 8, !tbaa !287
  %i.cu = load ptr, ptr %2, align 8, !tbaa !231
  %i.cv = call noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo12isDotNewInstERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(440) %i.ct, ptr noundef nonnull align 8 dereferenceable(80) %i.cu) #22
  br i1 %i.cv, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cw = trunc nuw i8 %.0261540 to i1
  br i1 %i.cw, label %bb.l, label %.thread461

bb.l:                                             ; preds = %bb.k
  %.sroa.064.0.copyload = load ptr, ptr %2, align 8
  %i.cx = call ptr @_ZN4llvm17MachineBasicBlock5eraseENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(360) %.0246541, ptr %.sroa.064.0.copyload) #22 ; 0 uses
  br label %.thread461

bb.m:                                             ; preds = %bb.j
  %i.cy = load ptr, ptr %2, align 8, !tbaa !231   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %i.bp, ptr %11, align 8, !tbaa !44
  store i32 0, ptr %i.bq, align 8, !tbaa !232
  store i32 4, ptr %i.br, align 4, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %i.bs, ptr %12, align 8, !tbaa !44
  store i32 0, ptr %i.bt, align 8, !tbaa !232
  store i32 8, ptr %i.bu, align 4, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr %i.bv, ptr %13, align 8, !tbaa !44
  store i32 0, ptr %i.bw, align 8, !tbaa !232
  store i32 4, ptr %i.bx, align 4, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  store ptr %i.by, ptr %14, align 8, !tbaa !44
  store i32 0, ptr %i.bz, align 8, !tbaa !232
  store i32 8, ptr %i.ca, align 4, !tbaa !233
  call fastcc void @_ZL13parseOperandsPN4llvm12MachineInstrERNS_11SmallVectorIjLj4EEERNS2_IjLj8EEE(ptr noundef nonnull %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(48) %14)
  %i.cz = load ptr, ptr %14, align 8, !tbaa !44   ; 3 uses
  %i.da = load i32, ptr %i.bz, align 8, !tbaa !232 ; 2 uses
  %i.db = zext i32 %i.da to i64
  %.idx.i = shl nuw nsw i64 %i.db, 2
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx.i
  %.not119.not.i = icmp eq i32 %i.da, 0
  br i1 %.not119.not.i, label %_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl12AliasingRegsEjj.exit._crit_edge.i, label %.lr.ph122.i

.lr.ph122.i:                                      ; preds = %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  br label %bb.n

bb.n:                                             ; preds = %.thread106.i, %.lr.ph122.i
  %.056120.i = phi ptr [ %i.cz, %.lr.ph122.i ], [ %i.hd, %.thread106.i ] ; 2 uses
  %i.de = load i32, ptr %.056120.i, align 4, !tbaa !286 ; 5 uses
  %i.df = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %i.cy, i32 %i.de, ptr noundef null, i1 noundef zeroext false) #22 ; 2 uses
  %i.dg = icmp eq i32 %i.df, -1
  br i1 %i.dg, label %.thread106.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dh = load ptr, ptr %i.dd, align 8, !tbaa !309
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 56
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !295 ; 2 uses
  %.not108115.i = icmp eq ptr %i.cs, %i.dj
  br i1 %.not108115.i, label %.thread106.i, label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %bb.o
  %i.dk = zext i32 %i.de to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.ag, %.lr.ph118.i
  %.046117.i = phi i32 [ 0, %.lr.ph118.i ], [ %.1.i, %bb.ag ] ; 4 uses
  %.sroa.075.0116.i = phi ptr [ %i.cs, %.lr.ph118.i ], [ %i.hc, %bb.ag ] ; 7 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.075.0116.i, i64 52 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !308
  %i.dn = icmp eq i32 %i.dm, 22
  br i1 %i.dn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.do = add nsw i32 %.046117.i, 1
  br label %bb.ag

bb.r:                                             ; preds = %bb.p
  store i32 0, ptr %i.bq, align 8, !tbaa !232
  store i32 0, ptr %i.bt, align 8, !tbaa !232
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.075.0116.i, i64 40
  %i.dq = load i24, ptr %i.dp, align 8            ; 2 uses
  %.not39.i.i = icmp eq i24 %i.dq, 0
  br i1 %.not39.i.i, label %.critedge.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.075.0116.i, i64 32
  %i.ds = zext i24 %i.dq to i64
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.critedge.i.i ] ; 2 uses
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !311
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %indvars.iv.i.i ; 4 uses
  %i.dv = load i32, ptr %i.du, align 8            ; 2 uses
  %trunc.i.i = trunc i32 %i.dv to i8
  switch i8 %trunc.i.i, label %.critedge.i.i [
    i8 0, label %bb.t
    i8 12, label %.preheader.i.i
  ]

.preheader.i.i:                                   ; preds = %bb.s
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  br label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !312 ; 3 uses
  %.not28.not.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not28.not.i.i, label %.critedge.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dz = and i32 %i.dv, 16777216
  %.not.i.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i.i, label %bb.v, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.ea = load i32, ptr %i.bt, align 8, !tbaa !232 ; 2 uses
  %i.eb = load i32, ptr %i.bu, align 4, !tbaa !233
  %.not.i29.i.i = icmp ult i32 %i.ea, %i.eb
  br i1 %.not.i29.i.i, label %bb.x, label %bb.w, !prof !320

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(48) %12, i32 noundef %i.dy)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.ec = zext i32 %i.ea to i64
  %i.ed = load ptr, ptr %12, align 8, !tbaa !44
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ec
  store i32 %i.dy, ptr %i.ee, align 1
  %i.ef = load i32, ptr %i.bt, align 8, !tbaa !232
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr %i.bt, align 8, !tbaa !232
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i: ; preds = %bb.x, %bb.w, %bb.u
  %i.eh = load i32, ptr %i.du, align 8
  %i.ei = and i32 %i.eh, 16777216
  %.not37.i.i = icmp eq i32 %i.ei, 0
  br i1 %.not37.i.i, label %.critedge.i.i, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i
  %i.ej = load i32, ptr %i.dx, align 4, !tbaa !312 ; 2 uses
  %i.ek = load i32, ptr %i.bq, align 8, !tbaa !232 ; 2 uses
  %i.el = load i32, ptr %i.br, align 4, !tbaa !233
  %.not.i30.i.i = icmp ult i32 %i.ek, %i.el
  br i1 %.not.i30.i.i, label %bb.aa, label %bb.z, !prof !320

bb.z:                                             ; preds = %bb.y
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef %i.ej)
  br label %.critedge.i.i

bb.aa:                                            ; preds = %bb.y
  %i.em = zext i32 %i.ek to i64
  %i.en = load ptr, ptr %11, align 8, !tbaa !44
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.em
  store i32 %i.ej, ptr %i.eo, align 1
  %i.ep = load i32, ptr %i.bq, align 8, !tbaa !232
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr %i.bq, align 8, !tbaa !232
  br label %.critedge.i.i

bb.ab:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit33.i.i, %.preheader.i.i
  %.038.i.i = phi i32 [ 1, %.preheader.i.i ], [ %i.fg, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit33.i.i ] ; 5 uses
  %i.er = load ptr, ptr %i.dw, align 8, !tbaa !312
  %i.es = lshr i32 %.038.i.i, 5
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !286
  %i.ew = and i32 %.038.i.i, 31
  %i.ex = shl nuw i32 1, %i.ew
  %i.ey = and i32 %i.ev, %i.ex
  %.not.i.i.i.i324 = icmp eq i32 %i.ey, 0
  br i1 %.not.i.i.i.i324, label %bb.ac, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit33.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.ez = load i32, ptr %i.bq, align 8, !tbaa !232 ; 2 uses
  %i.fa = load i32, ptr %i.br, align 4, !tbaa !233
  %.not.i32.i.i = icmp ult i32 %i.ez, %i.fa
  br i1 %.not.i32.i.i, label %bb.ae, label %bb.ad, !prof !320

end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl14MoveMItoBundleEPN4llvm16BasicBlockRegionERNS1_14ilist_iteratorINS1_12ilist_detail12node_optionsINS1_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERNS1_26MachineInstrBundleIteratorIS7_Lb0EEESD_SD_RSt6vectorIPS7_SaISF_EEbb:bb.a
  %i.iv = phi ptr [ %i.iu, %_ZL8isBranchPN4llvm12MachineInstrE.exit.thread ], [ %.pre620, %_ZL8isBranchPN4llvm12MachineInstrE.exit ] ; 26 uses
  %.1.i327409 = phi i1 [ %.1.i327408, %_ZL8isBranchPN4llvm12MachineInstrE.exit.thread ], [ true, %_ZL8isBranchPN4llvm12MachineInstrE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #22
  store ptr null, ptr %i.l, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #22
  store ptr null, ptr %i.m, align 8, !tbaa !330
  %i.iw = load ptr, ptr %i.bo, align 8, !tbaa !287 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !32
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 296
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = call noundef zeroext i1 %i.iz(ptr noundef nonnull align 8 dereferenceable(440) %i.iw, ptr noundef nonnull align 8 dereferenceable(360) %i.iv, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %15, i1 noundef zeroext false) #22
  br i1 %i.ja, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %_ZL8isBranchPN4llvm12MachineInstrE.exit._crit_edge
  %i.jb = load ptr, ptr %2, align 8, !tbaa !231
  %i.jc = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl17canMIBeSpeculatedEPN4llvm12MachineInstrEPNS1_17MachineBasicBlockES5_RSt6vectorIS3_SaIS3_EE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %i.jb, ptr noundef nonnull %i.iv, ptr noundef %.0242542, ptr noundef nonnull align 8 dereferenceable(24) %17)
  br i1 %i.jc, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jd = trunc nuw i8 %.0261540 to i1
  br i1 %i.jd, label %.thread.sink.split, label %.thread

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.je = load ptr, ptr %i.j, align 8, !tbaa !289
  store ptr %i.je, ptr %18, align 8
  store ptr %i.t, ptr %i.cq, align 8
  %i.jf = call { ptr, i8 } @_ZNSt3mapIPN4llvm12MachineInstrEPNS0_17MachineBasicBlockESt4lessIS2_ESaISt4pairIKS2_S4_EEE6insertIS7_IS2_S4_EEENSt9enable_ifIXsr16is_constructibleIS9_T_EE5valueES7_ISt17_Rb_tree_iteratorIS9_EbEE4typeEOSF_(ptr noundef nonnull align 8 dereferenceable(48) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %18) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br i1 %.0270539, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jg = trunc nuw i8 %.0261540 to i1
  br i1 %i.jg, label %.thread.sink.split, label %.thread

bb.az:                                            ; preds = %bb.ax
  %i.jh = load ptr, ptr %2, align 8, !tbaa !231
  %i.ji = trunc nuw i8 %.0261540 to i1
  %i.jj = call fastcc ptr @_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl14insertTempCopyEPN4llvm17MachineBasicBlockERNS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEPS5_b(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull %i.iv, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.jh, i1 noundef zeroext %i.ji)
  store ptr %i.jj, ptr %2, align 8
  br label %.thread428

bb.ba:                                            ; preds = %_ZL8isBranchPN4llvm12MachineInstrE.exit._crit_edge
  %i.jk = load ptr, ptr %i.l, align 8
  %i.jl = icmp eq ptr %i.jk, null
  %not..1.i327409 = xor i1 %.1.i327409, true
  %or.cond7 = select i1 %not..1.i327409, i1 %i.jl, i1 false
  %i.jm = load ptr, ptr %2, align 8, !tbaa !231
  %i.jn = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl25IsDualJumpSecondCandidateEPN4llvm12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull %i.jm)
  br i1 %i.jn, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %.val = load ptr, ptr %4, align 8
  %i.jo = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl24IsDualJumpFirstCandidateERN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr %.val)
  br i1 %i.jo, label %.thread428, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.jp = load ptr, ptr %i.m, align 8
  %.not306 = icmp eq ptr %i.jp, %.0242542
  %or.cond311 = select i1 %or.cond7, i1 true, i1 %.not306
  br i1 %or.cond311, label %bb.cv, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jq = load ptr, ptr %i.cd, align 8, !tbaa !228 ; 2 uses
  %i.jr = load ptr, ptr %2, align 8, !tbaa !231
  %i.js = load ptr, ptr %i.jq, align 8, !tbaa !32
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 960
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = call noundef zeroext i1 %i.ju(ptr noundef nonnull align 8 dereferenceable(112) %i.jq, ptr noundef nonnull align 8 dereferenceable(80) %i.jr) #22
  br i1 %i.jv, label %bb.be, label %bb.cl

bb.be:                                            ; preds = %bb.bd
  %i.jw = load ptr, ptr %i.l, align 8, !tbaa !330 ; 2 uses
  %.not307 = icmp eq ptr %i.jw, null
  %.not308 = icmp eq ptr %.0242542, %i.jw
  %or.cond312 = select i1 %.not307, i1 true, i1 %.not308
  br i1 %or.cond312, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jx = load ptr, ptr %i.cd, align 8, !tbaa !228 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !32
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 848
  %i.ka = load ptr, ptr %i.jz, align 8
  %i.kb = call noundef zeroext i1 %i.ka(ptr noundef nonnull align 8 dereferenceable(112) %i.jx, ptr noundef nonnull align 8 dereferenceable(16) %15) #22
  br i1 %i.kb, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.kc = trunc nuw i8 %.0261540 to i1
  br i1 %i.kc, label %.thread.sink.split, label %.thread

bb.bh:                                            ; preds = %bb.bf, %bb.be
  %i.kd = load ptr, ptr %2, align 8, !tbaa !231
  %i.ke = trunc nuw i8 %.0261540 to i1
  %i.kf = call fastcc ptr @_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl14insertTempCopyEPN4llvm17MachineBasicBlockERNS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEPS5_b(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull %i.iv, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.kd, i1 noundef zeroext %i.ke) ; 2 uses
  store ptr %i.kf, ptr %2, align 8
  %i.kg = load i32, ptr %i.at, align 8, !tbaa !232
  %.not.i328 = icmp eq i32 %i.kg, 0
  br i1 %.not.i328, label %bb.bi, label %bb.bt

bb.bi:                                            ; preds = %bb.bh
  %i.kh = load ptr, ptr %i.cd, align 8, !tbaa !228 ; 2 uses
  %i.ki = load ptr, ptr %15, align 8, !tbaa !44
  %i.kj = load i32, ptr %i.aq, align 8, !tbaa !232
  %i.kk = zext i32 %i.kj to i64
  %i.kl = load ptr, ptr %i.kh, align 8, !tbaa !32
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 936
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = call noundef zeroext i1 %i.kn(ptr noundef nonnull align 8 dereferenceable(112) %i.kh, ptr noundef nonnull align 8 dereferenceable(80) %i.kf, ptr %i.ki, i64 %i.kk) #22
  br i1 %i.ko, label %bb.bj, label %bb.bt

bb.bj:                                            ; preds = %bb.bi
  %i.kp = load ptr, ptr %i.bo, align 8, !tbaa !287
  %i.kq = load ptr, ptr %2, align 8, !tbaa !231
  %i.kr = call noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo10isExtendedERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(440) %i.kp, ptr noundef nonnull align 8 dereferenceable(80) %i.kq) #22
  br i1 %i.kr, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ks = load ptr, ptr %i.bo, align 8, !tbaa !287
  %i.kt = load ptr, ptr %2, align 8, !tbaa !231
  %i.ku = call noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo15isConstExtendedERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(440) %i.ks, ptr noundef nonnull align 8 dereferenceable(80) %i.kt) #22
  br i1 %i.ku, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kv = load ptr, ptr %2, align 8, !tbaa !231
  %i.kw = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl16isJumpOutOfRangeEPN4llvm12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %i.kv)
  br i1 %i.kw, label %bb.bm, label %_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl31tryAllocateResourcesForConstExtEPN4llvm12MachineInstrEb.exit

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.kx = load ptr, ptr %i.cj, align 8, !tbaa !425
  %i.ky = load ptr, ptr %i.ck, align 8, !tbaa !398
  %i.kz = call noundef zeroext i1 @_ZN4llvm13DFAPacketizer19canReserveResourcesERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(72) %i.kx, ptr noundef nonnull align 8 dereferenceable(80) %i.ky) #22
  br i1 %i.kz, label %bb.bn, label %.thread.sink.split

bb.bn:                                            ; preds = %bb.bm
  %i.la = load ptr, ptr %i.cm, align 8, !tbaa !334
  %i.lb = load ptr, ptr %i.cl, align 8, !tbaa !323
  %i.lc = ptrtoint ptr %i.la to i64
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = sub i64 %i.lc, %i.ld
  %i.lf = ashr exact i64 %i.le, 3
  %i.lg = load i32, ptr %i.cn, align 8, !tbaa !285
  %i.lh = add i32 %i.lg, -1
  %i.li = zext i32 %i.lh to i64
  %.not.i329 = icmp ult i64 %i.lf, %i.li
  br i1 %.not.i329, label %_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl31tryAllocateResourcesForConstExtEPN4llvm12MachineInstrEb.exit, label %.thread.sink.split

_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl31tryAllocateResourcesForConstExtEPN4llvm12MachineInstrEb.exit: ; preds = %bb.bn, %bb.bl
  %i.lj = load ptr, ptr %i.cj, align 8, !tbaa !425
  %i.lk = load ptr, ptr %2, align 8, !tbaa !231
  %i.ll = call noundef zeroext i1 @_ZN4llvm13DFAPacketizer19canReserveResourcesERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(72) %i.lj, ptr noundef nonnull align 8 dereferenceable(80) %i.lk) #22
  br i1 %i.ll, label %bb.bo, label %.thread.sink.split

bb.bo:                                            ; preds = %_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl31tryAllocateResourcesForConstExtEPN4llvm12MachineInstrEb.exit
  %i.lm = load ptr, ptr %2, align 8, !tbaa !231
  %i.ln = load ptr, ptr %0, align 8, !tbaa !32
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 56
  %i.lp = load ptr, ptr %i.lo, align 8
  %i.lq = call noundef zeroext i1 %i.lp(ptr noundef nonnull align 8 dereferenceable(241) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.lm) #22
  br i1 %i.lq, label %bb.bp, label %.thread.sink.split

bb.bp:                                            ; preds = %bb.bo
  %.sroa.043.0.copyload = load ptr, ptr %2, align 8
  %i.lr = load ptr, ptr %4, align 8, !tbaa !231
  %i.ls = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl12NeedToNewifyEN4llvm14ilist_iteratorINS1_12ilist_detail12node_optionsINS1_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPjPS5_(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr %.sroa.043.0.copyload, ptr noundef %i.k, ptr noundef %i.lr)
  br i1 %i.ls, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %.sroa.042.0.copyload = load ptr, ptr %2, align 8
  %i.lt = load i32, ptr %i.k, align 4, !tbaa !286
  %i.lu = load ptr, ptr %4, align 8, !tbaa !231
  %i.lv = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl12isNewifiableEN4llvm14ilist_iteratorINS1_12ilist_detail12node_optionsINS1_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEjPS5_(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr %.sroa.042.0.copyload, i32 noundef %i.lt, ptr noundef %i.lu)
  br i1 %i.lv, label %bb.br, label %.thread.sink.split

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.1280 = phi i1 [ %.0279538, %bb.bp ], [ true, %bb.bq ] ; 2 uses
  %i.lw = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN4llvm11SmallVectorINS_14MachineOperandELj4EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(144) %16, ptr noundef nonnull align 8 dereferenceable(144) %15) ; 0 uses
  %i.lx = load i32, ptr %i.aq, align 8, !tbaa !232
  %i.ly = icmp eq i32 %i.lx, 2
  br i1 %i.ly, label %bb.bs, label %.thread428

bb.bs:                                            ; preds = %bb.br
  %i.lz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapIPN4llvm12MachineInstrESt6vectorIjSaIjEESt4lessIS2_ESaISt4pairIKS2_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.co, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #22
  %i.ma = load ptr, ptr %15, align 8, !tbaa !44
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 36
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !312
  store i32 %i.mc, ptr %i.n, align 4, !tbaa !286
  call void @_ZNSt6vectorIjSaIjEE9push_backEOj(ptr noundef nonnull align 8 dereferenceable(24) %i.lz, ptr noundef nonnull align 4 dereferenceable(4) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #22
  br label %.thread428

bb.bt:                                            ; preds = %bb.bi, %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.md = load ptr, ptr %i.ao, align 8, !tbaa !334
  %i.me = load ptr, ptr %6, align 8, !tbaa !323   ; 2 uses
  %.not552 = icmp eq ptr %i.md, %i.me
  br i1 %.not552, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bt, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit
  %i.mf = phi ptr [ %i.ne, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit ], [ null, %bb.bt ] ; 4 uses
  %23 = phi ptr [ %i.nf, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit ], [ null, %bb.bt ] ; 4 uses
  %24 = phi ptr [ %i.nk, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit ], [ %i.me, %bb.bt ]
  %25 = phi i64 [ %i.ni, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit ], [ 0, %bb.bt ]
  %.0299536 = phi i32 [ %i.nh, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit ], [ 0, %bb.bt ]
  %i.mg = phi ptr [ %i.ng, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit ], [ null, %bb.bt ] ; 6 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %24, i64 %25 ; 2 uses
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !289 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !309 ; 2 uses
  %i.ml = icmp eq ptr %i.mk, %.0242542
  %i.mm = icmp eq ptr %i.mk, %i.iv
  %or.cond313 = or i1 %i.ml, %i.mm
  br i1 %or.cond313, label %bb.bu, label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit

bb.bu:                                            ; preds = %.lr.ph
  %.not.i331 = icmp eq ptr %23, %i.mf
  br i1 %.not.i331, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store ptr %i.mi, ptr %23, align 8, !tbaa !289
  %i.mn = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  store ptr %i.mn, ptr %i.cg, align 8, !tbaa !334
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit

bb.bw:                                            ; preds = %bb.bu
  %i.mo = ptrtoint ptr %i.mf to i64
  %i.mp = ptrtoint ptr %i.mg to i64
  %i.mq = sub i64 %i.mo, %i.mp                    ; 6 uses
  %i.mr = icmp eq i64 %i.mq, 9223372036854775800
  br i1 %i.mr, label %bb.bx, label %_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.bx:                                            ; preds = %bb.bw
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #23
  unreachable

_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bw
  %i.ms = ashr exact i64 %i.mq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ms, i64 1)
  %i.mt = add nsw i64 %.sroa.speculated.i.i.i, %i.ms ; 2 uses
  %i.mu = icmp ult i64 %i.mt, %i.ms
  %i.mv = call i64 @llvm.umin.i64(i64 %i.mt, i64 1152921504606846975)
  %i.mw = select i1 %i.mu, i64 1152921504606846975, i64 %i.mv ; 3 uses
  %.not.i.i.i332 = icmp ne i64 %i.mw, 0
  call void @llvm.assume(i1 %.not.i.i.i332)
  %i.mx = shl nuw nsw i64 %i.mw, 3
  %i.my = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mx) #24 ; 4 uses
  %i.mz = getelementptr inbounds i8, ptr %i.my, i64 %i.mq ; 2 uses
  %i.na = load ptr, ptr %i.mh, align 8, !tbaa !289
  store ptr %i.na, ptr %i.mz, align 8, !tbaa !289
  %i.nb = icmp sgt i64 %i.mq, 0
  br i1 %i.nb, label %bb.by, label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.by:                                            ; preds = %_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.my, ptr align 8 %i.mg, i64 %i.mq, i1 false)
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.by, %_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.mg, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.mg, i64 noundef %i.mq) #25
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.bz, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.nc, ptr %i.cg, align 8, !tbaa !334
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %i.mw ; 2 uses
  store ptr %i.nd, ptr %i.ch, align 8, !tbaa !324
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.bv, %.lr.ph
  %i.ne = phi ptr [ %i.nd, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.mf, %bb.bv ], [ %i.mf, %.lr.ph ]
  %i.nf = phi ptr [ %i.nc, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.mn, %bb.bv ], [ %23, %.lr.ph ]
  %i.ng = phi ptr [ %i.my, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.mg, %bb.bv ], [ %i.mg, %.lr.ph ] ; 2 uses
  %i.nh = add i32 %.0299536, 1                    ; 2 uses
  %i.ni = zext i32 %i.nh to i64                   ; 2 uses
  %i.nj = load ptr, ptr %i.ao, align 8, !tbaa !334
  %i.nk = load ptr, ptr %6, align 8, !tbaa !323   ; 2 uses
  %i.nl = ptrtoint ptr %i.nj to i64
  %i.nm = ptrtoint ptr %i.nk to i64
  %i.nn = sub i64 %i.nl, %i.nm
  %i.no = ashr exact i64 %i.nn, 3
  %i.np = icmp ugt i64 %i.no, %i.ni
  br i1 %i.np, label %.lr.ph, label %._crit_edge, !llvm.loop !831

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit, %bb.bt
  %.lcssa534 = phi ptr [ null, %bb.bt ], [ %i.ng, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit ]
  store ptr %.lcssa534, ptr %19, align 8
  %.not309 = icmp eq ptr %.0242542, %i.iv
  br i1 %.not309, label %.critedge, label %bb.ca

bb.ca:                                            ; preds = %._crit_edge
  %i.nq = getelementptr inbounds nuw i8, ptr %.0242542, i64 64
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !44
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !330
  %.not310.not = icmp eq ptr %i.ns, %i.iv
  br i1 %.not310.not, label %.critedge, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread

.critedge:                                        ; preds = %._crit_edge, %bb.ca
  %i.nt = load ptr, ptr %2, align 8, !tbaa !231   ; 6 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 52
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !308
  %i.nw = add i32 %i.nv, -1                       ; 2 uses
  %spec.select.i.i = icmp ult i32 %i.nw, 2
  br i1 %spec.select.i.i, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.critedge
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nt, i64 32
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !311
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 48
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !312
  %i.ob = and i64 %i.oa, 8
  %.not.not.i334 = icmp eq i64 %i.ob, 0
  br i1 %.not.not.i334, label %bb.cc, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread

bb.cc:                                            ; preds = %bb.cb, %.critedge
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nt, i64 44
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !310 ; 2 uses
  %i.oe = and i32 %i.od, 12
  %i.of = icmp eq i32 %i.oe, 0
  %i.og = and i32 %i.od, 4
  %i.oh = icmp ne i32 %i.og, 0
  %or.cond.i.i = or i1 %i.of, %i.oh
  br i1 %or.cond.i.i, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit, label %.split

.split:                                           ; preds = %bb.cc
  %i.oi = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %i.nt, i64 noundef 524288, i32 noundef 1) #22
  br i1 %i.oi, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread, label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split
  %.pre625.a = load ptr, ptr %2, align 8, !tbaa !231 ; 2 uses
  %.phi.trans.insert626 = getelementptr inbounds nuw i8, ptr %.pre625.a, i64 52
  %.pre627 = load i32, ptr %.phi.trans.insert626, align 4, !tbaa !308
  %.pre632.a = add i32 %.pre627, -1
  br label %bb.cd

_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit: ; preds = %bb.cc
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !331
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !333
  %i.on = and i64 %i.om, 524288
  %.not474 = icmp eq i64 %i.on, 0
  br i1 %.not474, label %bb.cd, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread

bb.cd:                                            ; preds = %.split._crit_edge, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit
  %.pre-phi = phi i32 [ %.pre632.a, %.split._crit_edge ], [ %i.nw, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit ]
  %i.oo = phi ptr [ %.pre625.a, %.split._crit_edge ], [ %i.nt, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit ] ; 5 uses
  %spec.select.i.i335 = icmp ult i32 %.pre-phi, 2
  br i1 %spec.select.i.i335, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 32
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !311
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 48
  %i.os = load i64, ptr %i.or, align 8, !tbaa !312
  %i.ot = and i64 %i.os, 16
  %.not.not.i338 = icmp eq i64 %i.ot, 0
  br i1 %.not.not.i338, label %bb.cf, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oo, i64 44
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !310 ; 2 uses
  %i.ow = and i32 %i.ov, 12
  %i.ox = icmp eq i32 %i.ow, 0
  %i.oy = and i32 %i.ov, 4
  %i.oz = icmp ne i32 %i.oy, 0
  %or.cond.i.i336 = or i1 %i.ox, %i.oz
  br i1 %or.cond.i.i336, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit, label %.split413

.split413:                                        ; preds = %bb.cf
  %i.pa = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %i.oo, i64 noundef 1048576, i32 noundef 1) #22
  br i1 %i.pa, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread, label %.split413._crit_edge

.split413._crit_edge:                             ; preds = %.split413
  %.pre628 = load ptr, ptr %2, align 8, !tbaa !231
  br label %bb.cg

_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit: ; preds = %bb.cf
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !331
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !333
  %i.pf = and i64 %i.pe, 1048576
  %.not475 = icmp eq i64 %i.pf, 0
  br i1 %.not475, label %bb.cg, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread

bb.cg:                                            ; preds = %.split413._crit_edge, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit
  %i.pg = phi ptr [ %.pre628, %.split413._crit_edge ], [ %i.oo, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit ]
  %i.ph = call noundef zeroext i1 @_ZNK4llvm12MachineInstr23hasUnmodeledSideEffectsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.pg) #22
  br i1 %i.ph, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.pi = load ptr, ptr %2, align 8, !tbaa !231
  %i.pj = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl17canMIBeSpeculatedEPN4llvm12MachineInstrEPNS1_17MachineBasicBlockES5_RSt6vectorIS3_SaIS3_EE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %i.pi, ptr noundef nonnull %i.iv, ptr noundef %.0242542, ptr noundef nonnull align 8 dereferenceable(24) %19)
  br i1 %i.pj, label %bb.ci, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread

_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread: ; preds = %bb.ce, %bb.cb, %.split413, %.split, %bb.ch, %bb.cg, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit, %bb.ca
  %.sroa.033.0.copyload = load ptr, ptr %2, align 8
  %i.pk = call ptr @_ZN4llvm17MachineBasicBlock5eraseENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(360) %i.iv, ptr %.sroa.033.0.copyload) #22 ; 0 uses
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.pl = load ptr, ptr %i.j, align 8, !tbaa !289
  store ptr %i.pl, ptr %20, align 8
  store ptr %i.t, ptr %i.ci, align 8
  %i.pm = call { ptr, i8 } @_ZNSt3mapIPN4llvm12MachineInstrEPNS0_17MachineBasicBlockESt4lessIS2_ESaISt4pairIKS2_S4_EEE6insertIS7_IS2_S4_EEENSt9enable_ifIXsr16is_constructibleIS9_T_EE5valueES7_ISt17_Rb_tree_iteratorIS9_EbEE4typeEOSF_(ptr noundef nonnull align 8 dereferenceable(48) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %20) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread
  %.1271 = phi i1 [ true, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread ], [ false, %bb.ci ]
  %cond4 = phi i1 [ false, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread ], [ true, %bb.ci ]
  %26 = load ptr, ptr %19, align 8, !tbaa !323    ; 3 uses
  %.not.i.i.i341 = icmp eq ptr %26, null
  br i1 %.not.i.i.i341, label %bb.cy, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %27 = load ptr, ptr %i.ch, align 8, !tbaa !324
  %28 = ptrtoint ptr %27 to i64
  %i.pn = ptrtoint ptr %26 to i64
  %i.po = sub i64 %28, %i.pn
  call void @_ZdlPvm(ptr noundef nonnull %26, i64 noundef %i.po) #25
  br label %bb.cy

bb.cl:                                            ; preds = %bb.bd
  %i.pp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL20SpeculateNonPredInsn, i64 120), align 8, !tbaa !179, !range !40, !noundef !41
  %i.pq = trunc nuw i8 %i.pp to i1
  %or.cond9 = and i1 %8, %i.pq
  br i1 %or.cond9, label %bb.cm, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit346.thread

bb.cm:                                            ; preds = %bb.cl
  %i.pr = load ptr, ptr %2, align 8, !tbaa !231   ; 6 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 52
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !308
  %i.pu = add i32 %i.pt, -1                       ; 2 uses
  %spec.select.i.i342 = icmp ult i32 %i.pu, 2
  br i1 %spec.select.i.i342, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pr, i64 32
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !311
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 48
  %i.py = load i64, ptr %i.px, align 8, !tbaa !312
  %i.pz = and i64 %i.py, 8
  %.not.not.i345 = icmp eq i64 %i.pz, 0
  br i1 %.not.not.i345, label %bb.co, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit346.thread

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pr, i64 44
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !310 ; 2 uses
  %i.qc = and i32 %i.qb, 12
  %i.qd = icmp eq i32 %i.qc, 0
  %i.qe = and i32 %i.qb, 4
  %i.qf = icmp ne i32 %i.qe, 0
  %or.cond.i.i343 = or i1 %i.qd, %i.qf
  br i1 %or.cond.i.i343, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit346, label %.split415

.split415:                                        ; preds = %bb.co
  %i.qg = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %i.pr, i64 noundef 524288, i32 noundef 1) #22
  br i1 %i.qg, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit346.thread, label %.split415._crit_edge

.split415._crit_edge:                             ; preds = %.split415
  %.pre621 = load ptr, ptr %2, align 8, !tbaa !231 ; 2 uses
  %.phi.trans.insert622 = getelementptr inbounds nuw i8, ptr %.pre621, i64 52
  %.pre623 = load i32, ptr %.phi.trans.insert622, align 4, !tbaa !308
  %.pre633 = add i32 %.pre623, -1
  br label %bb.cp

_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit346: ; preds = %bb.co
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !331
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !333
  %i.ql = and i64 %i.qk, 524288
  %.not472 = icmp eq i64 %i.ql, 0
  br i1 %.not472, label %bb.cp, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit346.thread

bb.cp:                                            ; preds = %.split415._crit_edge, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit346
  %.pre-phi634 = phi i32 [ %.pre633, %.split415._crit_edge ], [ %i.pu, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit346 ]
  %i.qm = phi ptr [ %.pre621, %.split415._crit_edge ], [ %i.pr, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit346 ] ; 5 uses
  %spec.select.i.i347 = icmp ult i32 %.pre-phi634, 2
  br i1 %spec.select.i.i347, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 32
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !311
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 48
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !312
  %i.qr = and i64 %i.qq, 16
  %.not.not.i350 = icmp eq i64 %i.qr, 0
  br i1 %.not.not.i350, label %bb.cr, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit346.thread

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qm, i64 44
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !310 ; 2 uses
  %i.qu = and i32 %i.qt, 12
  %i.qv = icmp eq i32 %i.qu, 0
  %i.qw = and i32 %i.qt, 4
  %i.qx = icmp ne i32 %i.qw, 0
  %or.cond.i.i348 = or i1 %i.qv, %i.qx
  br i1 %or.cond.i.i348, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit351, label %.split417

.split417:                                        ; preds = %bb.cr
  %i.qy = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %i.qm, i64 noundef 1048576, i32 noundef 1) #22
  br i1 %i.qy, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit346.thread, label %.split417._crit_edge

.split417._crit_edge:                             ; preds = %.split417
  %.pre624 = load ptr, ptr %2, align 8, !tbaa !231
  br label %bb.cs

_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit351: ; preds = %bb.cr
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !331
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !333
  %i.rd = and i64 %i.rc, 1048576
  %.not473 = icmp eq i64 %i.rd, 0
  br i1 %.not473, label %bb.cs, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit346.thread

bb.cs:                                            ; preds = %.split417._crit_edge, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit351
  %i.re = phi ptr [ %.pre624, %.split417._crit_edge ], [ %i.qm, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit351 ]
  %i.rf = call noundef zeroext i1 @_ZNK4llvm12MachineInstr23hasUnmodeledSideEffectsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.re) #22
  br i1 %i.rf, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit346.thread, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.rg = load ptr, ptr %2, align 8, !tbaa !231
  %i.rh = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl17canMIBeSpeculatedEPN4llvm12MachineInstrEPNS1_17MachineBasicBlockES5_RSt6vectorIS3_SaIS3_EE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %i.rg, ptr noundef nonnull %i.iv, ptr noundef %.0242542, ptr noundef nonnull align 8 dereferenceable(24) %17)
  br i1 %i.rh, label %bb.cu, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit346.thread

_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit346.thread: ; preds = %bb.cq, %bb.cn, %.split417, %.split415, %bb.ct, %bb.cs, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit351, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit346, %bb.cl
  %i.ri = trunc nuw i8 %.0261540 to i1
  br i1 %i.ri, label %.thread.sink.split, label %.thread

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.rj = load ptr, ptr %i.j, align 8, !tbaa !289
  store ptr %i.rj, ptr %21, align 8
  store ptr %i.t, ptr %i.cf, align 8
  %i.rk = call { ptr, i8 } @_ZNSt3mapIPN4llvm12MachineInstrEPNS0_17MachineBasicBlockESt4lessIS2_ESaISt4pairIKS2_S4_EEE6insertIS7_IS2_S4_EEENSt9enable_ifIXsr16is_constructibleIS9_T_EE5valueES7_ISt17_Rb_tree_iteratorIS9_EbEE4typeEOSF_(ptr noundef nonnull align 8 dereferenceable(48) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %21) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.rl = load ptr, ptr %2, align 8, !tbaa !231
  %i.rm = trunc nuw i8 %.0261540 to i1
  %i.rn = call fastcc ptr @_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl14insertTempCopyEPN4llvm17MachineBasicBlockERNS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEPS5_b(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull %i.iv, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.rl, i1 noundef zeroext %i.rm)
  store ptr %i.rn, ptr %2, align 8
  br label %.thread428

bb.cv:                                            ; preds = %bb.bc
  %i.ro = load ptr, ptr %2, align 8, !tbaa !231
  %i.rp = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl25IsDualJumpSecondCandidateEPN4llvm12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull %i.ro) ; 0 uses
  %i.rq = call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock11isSuccessorEPKS0_(ptr noundef nonnull align 8 dereferenceable(360) %i.iv, ptr noundef %.0242542) #22
  br i1 %i.rq, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.rr = trunc nuw i8 %.0261540 to i1
  br i1 %i.rr, label %.thread.sink.split, label %.thread

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.rs = load ptr, ptr %i.j, align 8, !tbaa !289
  store ptr %i.rs, ptr %22, align 8
  store ptr %i.t, ptr %i.cp, align 8
  %i.rt = call { ptr, i8 } @_ZNSt3mapIPN4llvm12MachineInstrEPNS0_17MachineBasicBlockESt4lessIS2_ESaISt4pairIKS2_S4_EEE6insertIS7_IS2_S4_EEENSt9enable_ifIXsr16is_constructibleIS9_T_EE5valueES7_ISt17_Rb_tree_iteratorIS9_EbEE4typeEOSF_(ptr noundef nonnull align 8 dereferenceable(48) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %22) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.ru = load ptr, ptr %2, align 8, !tbaa !231
  %i.rv = trunc nuw i8 %.0261540 to i1
  %i.rw = call fastcc ptr @_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl14insertTempCopyEPN4llvm17MachineBasicBlockERNS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEPS5_b(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull %i.iv, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.ru, i1 noundef zeroext %i.rv)
  store ptr %i.rw, ptr %2, align 8
  br label %.thread428

.thread.sink.split:                               ; preds = %bb.bq, %bb.bo, %_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl31tryAllocateResourcesForConstExtEPN4llvm12MachineInstrEb.exit, %bb.bm, %bb.bn, %bb.cw, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit346.thread, %bb.bg, %bb.ay, %bb.aw
  %.0246541.lcssa764.sink = phi ptr [ %.0246541, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit346.thread ], [ %.0246541, %bb.aw ], [ %.0246541, %bb.ay ], [ %.0246541, %bb.cw ], [ %.0246541, %bb.bg ], [ %i.iv, %bb.bn ], [ %i.iv, %bb.bm ], [ %i.iv, %_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl31tryAllocateResourcesForConstExtEPN4llvm12MachineInstrEb.exit ], [ %i.iv, %bb.bo ], [ %i.iv, %bb.bq ]
  %.sroa.058.0.copyload = load ptr, ptr %2, align 8
  %i.rx = call ptr @_ZN4llvm17MachineBasicBlock5eraseENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(360) %.0246541.lcssa764.sink, ptr %.sroa.058.0.copyload) #22 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.aw, %bb.ay, %bb.cw, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit346.thread, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  br label %.thread461

.thread428:                                       ; preds = %bb.bb, %bb.cx, %bb.az, %bb.bs, %bb.br, %bb.cu
  %.5284.ph = phi i1 [ %.0279538, %bb.bb ], [ %.0279538, %bb.cu ], [ %.0279538, %bb.cx ], [ %.1280, %bb.bs ], [ %.0279538, %bb.az ], [ %.1280, %bb.br ]
  %.5275.ph425 = phi i1 [ %.0270539, %bb.bb ], [ %.0270539, %bb.cu ], [ false, %bb.cx ], [ true, %bb.bs ], [ false, %bb.az ], [ true, %bb.br ]
  %.4265.ph426 = phi i8 [ %.0261540, %bb.bb ], [ 1, %bb.cu ], [ 1, %bb.cx ], [ 1, %bb.bs ], [ 1, %bb.az ], [ 1, %bb.br ]
  %.4250.ph427 = phi ptr [ %.0246541, %bb.bb ], [ %i.iv, %bb.cu ], [ %i.iv, %bb.cx ], [ %i.iv, %bb.bs ], [ %i.iv, %bb.az ], [ %i.iv, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  br label %bb.cz

bb.cy:                                            ; preds = %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  br i1 %cond4, label %bb.cz, label %.thread461

bb.cz:                                            ; preds = %.thread428, %bb.cy, %_ZL8isBranchPN4llvm12MachineInstrE.exit.thread
  %.6285 = phi i1 [ %.0279538, %bb.cy ], [ %.0279538, %_ZL8isBranchPN4llvm12MachineInstrE.exit.thread ], [ %.5284.ph, %.thread428 ] ; 2 uses
  %.6276 = phi i1 [ %.1271, %bb.cy ], [ %.0270539, %_ZL8isBranchPN4llvm12MachineInstrE.exit.thread ], [ %.5275.ph425, %.thread428 ]
  %.5266 = phi i8 [ 1, %bb.cy ], [ %.0261540, %_ZL8isBranchPN4llvm12MachineInstrE.exit.thread ], [ %.4265.ph426, %.thread428 ] ; 3 uses
  %.5251 = phi ptr [ %i.iv, %bb.cy ], [ %.0246541, %_ZL8isBranchPN4llvm12MachineInstrE.exit.thread ], [ %.4250.ph427, %.thread428 ] ; 2 uses
  %.1243 = phi ptr [ %i.iv, %bb.cy ], [ %.0242542, %_ZL8isBranchPN4llvm12MachineInstrE.exit.thread ], [ %i.iv, %.thread428 ]
  %i.ry = load ptr, ptr %6, align 8, !tbaa !452
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !289
  %i.sa = icmp eq ptr %i.cs, %i.rz
  br i1 %i.sa, label %.thread449.loopexit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  br i1 %7, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.sb = load ptr, ptr %5, align 8, !tbaa !231
  %i.sc = icmp eq ptr %i.cs, %i.sb
  br i1 %i.sc, label %_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl13canReorderMIsEPN4llvm12MachineInstrES3_.exit.thread, label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.sd = load ptr, ptr %2, align 8, !tbaa !231   ; 2 uses
  %.not.i356 = icmp eq ptr %i.cs, null
  br i1 %.not.i356, label %_ZN12_GLOBAL__N_126HexagonGlobalSchedulerImpl13canReorderMIsEPN4llvm12MachineInstrES3_.exit.thread437, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.se = load i32, ptr %i.ho, align 4, !tbaa !308
  %i.sf = icmp eq i32 %i.se, 22
end_hunk_1
