Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/input-files.cc.X86_64?download=true
inline.NumInlined: 5152
inline.NumDeleted: 2381
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZNSt6vectorIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRNS0_7ContextIS2_EERNS0_10ObjectFileIS2_EERNS0_12InputSectionIS2_EERlRSt4spanINS0_6ElfRelIS2_EELm18446744073709551615EESG_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit27, label %.lr.ph.i.i.i22, !llvm.loop !1132

_ZNSt6vectorIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit27: ; preds = %.lr.ph.i.i.i22, %_ZNSt6vectorIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i26 = phi ptr [ %i.x, %_ZNSt6vectorIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.z, %.lr.ph.i.i.i22 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i28 = icmp eq ptr %i.c, null
  br i1 %.not.i28, label %_ZNSt12_Vector_baseIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit27
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !547
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #28
  br label %_ZNSt12_Vector_baseIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit27, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !544
  store ptr %.0.lcssa.i.i.i26, ptr %i.a, align 8, !tbaa !543
  %i.ae = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !547
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN4mold9CieRecordINS_6X86_64EEC2ERNS_7ContextIS1_EERNS_10ObjectFileIS1_EERNS_12InputSectionIS1_EEjSt4spanINS_6ElfRelIS1_EELm18446744073709551615EEj(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef nonnull align 8 dereferenceable(992) %2, ptr noundef nonnull align 8 dereferenceable(77) %3, i32 noundef %4, ptr noundef byval(%"class.std::span.346") align 8 %5, i32 noundef %6) unnamed_addr #2 comdat align 2 {
bb.a:
  %7 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  store ptr %2, ptr %0, align 8, !tbaa !669
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %4, ptr %i.b, align 8, !tbaa !550
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 -1, ptr %i.c, align 4, !tbaa !551
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %6, ptr %i.d, align 8, !tbaa !552
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 -1, ptr %i.e, align 4, !tbaa !553
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.f, align 8, !tbaa !554
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1139
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !514
  %i.j = sext i32 %i.i to i64                     ; 3 uses
  %i.k = load ptr, ptr %3, align 8, !tbaa !515, !nonnull !108, !align !516 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !86   ; 2 uses
  %i.n = icmp ugt i64 %i.m, %i.j
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !87
  %i.q = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.j
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 480
  %i.s = sub nuw i64 %i.j, %i.m
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !517
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.t, i64 %i.s
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit

_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.q, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !71   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.x, align 1  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %.0.copyload.i10.i = load i64, ptr %i.y, align 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !81
  %i.ab = add nuw nsw i64 %.0.copyload.i10.i, %.0.copyload.i.i
  %i.ac = icmp slt i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit

bb.d:                                             ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %7, ptr noundef nonnull align 8 dereferenceable(14448) %1) #14
  %i.ad = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_9InputFileIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %7, ptr noundef nonnull align 8 dereferenceable(312) %2)
  %i.ae = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA35_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.ad, ptr noundef nonnull align 1 dereferenceable(35) @.str.6)
  %i.af = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRKNS_7IntegerImLb1ELi8EEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.ae, ptr noundef nonnull align 1 dereferenceable(8) %i.x) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %7) #29
  unreachable

_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit: ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !82
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.0.copyload.i.i
  store i64 %.0.copyload.i10.i, ptr %i.ag, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.aj, ptr %i.ak, align 8
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRlS7_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !541  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !542    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #29
  unreachable

_ZNKSt6vectorIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !83
  %i.s = trunc i64 %i.r to i32
  %i.t = load i64, ptr %3, align 8, !tbaa !83
  %i.u = trunc i64 %i.t to i32
  store i32 %i.s, ptr %i.q, align 4, !tbaa !557
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 -1, ptr %i.v, align 4, !tbaa !558
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.u, ptr %i.w, align 4, !tbaa !559
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i16 -1, ptr %i.x, align 4, !tbaa !560
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 14
  store i8 1, ptr %i.y, align 2, !tbaa !79
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.011.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(15) %.0810.i.i.i.i.i, i64 14, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 14
  %i.aa = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 14
  %i.ab = load atomic i8, ptr %i.aa monotonic, align 2, !range !107, !noundef !108
  store i8 %i.ab, ptr %i.z, align 2, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1140

_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.ad, %.lr.ph.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not9.i.i.i.i.i19 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i19, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit25, label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %.lr.ph.i.i.i.i.i20
  %.011.i.i.i.i.i21 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i20 ], [ %i.ae, %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 3 uses
  %.0810.i.i.i.i.i22 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i20 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.011.i.i.i.i.i21, ptr noundef nonnull align 4 dereferenceable(15) %.0810.i.i.i.i.i22, i64 14, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i21, i64 14
  %i.ag = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i22, i64 14
  %i.ah = load atomic i8, ptr %i.ag monotonic, align 2, !range !107, !noundef !108
  store i8 %i.ah, ptr %i.af, align 2, !tbaa !79
  %i.ai = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i22, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i21, i64 16 ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i.i.i.i23, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit25, label %.lr.ph.i.i.i.i.i20, !llvm.loop !1140

_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit25: ; preds = %.lr.ph.i.i.i.i.i20, %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.0.lcssa.i.i.i.i.i24 = phi ptr [ %i.ae, %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.aj, %.lr.ph.i.i.i.i.i20 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit25
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !555
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.an) #28
  br label %_ZNSt12_Vector_baseIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit25, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !542
  store ptr %.0.lcssa.i.i.i.i.i24, ptr %i.a, align 8, !tbaa !541
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !555
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE20_M_allocate_and_copyIPKS5_EEPS5_mT_SD_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = ptrtoaddr ptr %3 to i64
  %5 = ptrtoaddr ptr %2 to i64
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 2147483648
  br i1 %i.a, label %bb.c, label %_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE8allocateERS7_m.exit.i

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.71)
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 8589934592)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.72) ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE8allocateERS7_m.exit.i: ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !668, !nonnull !108, !align !516
  %i.f = shl nuw nsw i64 %1, 2
  %i.g = tail call noundef ptr @_ZN4mold13ArenaResource8allocateEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 noundef %i.f, i64 noundef 4) #14
  br label %_ZNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE8allocateERS7_m.exit.i
  %i.h = phi ptr [ %i.g, %_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE8allocateERS7_m.exit.i ], [ null, %bb.a ] ; 7 uses
  %.not10.i = icmp eq ptr %2, %3
  br i1 %.not10.i, label %_ZSt22__uninitialized_copy_aIPKN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEPS5_NS0_14ArenaAllocatorIS5_EEET0_T_SC_SB_RT1_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE11_M_allocateEm.exit
  %i.i = add i64 %4, -4
  %i.j = sub i64 %i.i, %5                         ; 3 uses
  %i.k = lshr i64 %i.j, 2
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.m = and i64 %i.j, -4
  %i.n = add i64 %i.m, 4                          ; 2 uses
  %i.o = getelementptr i8, ptr %i.h, i64 %i.n
  %i.p = getelementptr i8, ptr %2, i64 %i.n
  %bound0 = icmp ult ptr %i.h, %i.p
  %bound1 = icmp ult ptr %2, %i.o
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, 9223372036854775804      ; 3 uses
  %i.q = shl i64 %n.vec, 2                        ; 2 uses
  %i.r = getelementptr i8, ptr %i.h, i64 %i.q
  %i.s = getelementptr i8, ptr %2, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.h, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %pointer.phi9 = phi ptr [ %2, %vector.ph ], [ %ptr.ind11, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi9, <4 x i64> <i64 0, i64 4, i64 8, i64 12> ; 2 uses
  %vector.gep10 = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 4, i64 8, i64 12> ; 2 uses
  %i.t = extractelement <4 x ptr> %vector.gep, i64 0
  %i.u = extractelement <4 x ptr> %vector.gep10, i64 0 ; 2 uses
  store <4 x i32> zeroinitializer, ptr %i.u, align 4, !tbaa !93, !alias.scope !1146, !noalias !1147
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !tbaa !93, !alias.scope !1147 ; 2 uses
  %i.v = icmp eq <4 x i32> %wide.load, zeroinitializer
  %i.w = ptrtoint <4 x ptr> %vector.gep to <4 x i64>
  %i.x = sext <4 x i32> %wide.load to <4 x i64>
  %i.y = shl nsw <4 x i64> %i.x, splat (i64 2)
  %i.z = add nsw <4 x i64> %i.y, %i.w             ; 2 uses
  %i.aa = icmp eq <4 x i64> %i.z, zeroinitializer
  %i.ab = select <4 x i1> %i.v, <4 x i1> splat (i1 true), <4 x i1> %i.aa
  %i.ac = ptrtoint <4 x ptr> %vector.gep10 to <4 x i64>
  %i.ad = sub nsw <4 x i64> %i.z, %i.ac
  %i.ae = lshr exact <4 x i64> %i.ad, splat (i64 2)
  %i.af = trunc <4 x i64> %i.ae to <4 x i32>
  %i.ag = select <4 x i1> %i.ab, <4 x i32> zeroinitializer, <4 x i32> %i.af
  store <4 x i32> %i.ag, ptr %i.u, align 4, !tbaa !93, !alias.scope !1146, !noalias !1147
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 16
  %ptr.ind11 = getelementptr i8, ptr %pointer.phi9, i64 16
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPKN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEPS5_NS0_14ArenaAllocatorIS5_EEET0_T_SC_SB_RT1_.exit, label %.lr.ph.i.preheader13

.lr.ph.i.preheader13:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.preheader ], [ %i.r, %middle.block ]
  %.0911.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader13, %.lr.ph.i
  %.012.i = phi ptr [ %i.as, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader13 ] ; 4 uses
  %.0911.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %.0911.i.ph, %.lr.ph.i.preheader13 ] ; 3 uses
  store i32 0, ptr %.012.i, align 4, !tbaa !93
  %i.ai = load i32, ptr %.0911.i, align 4, !tbaa !93 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ai, 0
  %i.aj = ptrtoint ptr %.0911.i to i64
  %i.ak = sext i32 %i.ai to i64
  %i.al = shl nsw i64 %i.ak, 2
  %i.am = add nsw i64 %i.al, %i.aj                ; 2 uses
  %.not.i23.i.i.i.i.i = icmp eq i64 %i.am, 0
  %.not.i2.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 true, i1 %.not.i23.i.i.i.i.i
  %i.an = ptrtoint ptr %.012.i to i64
  %i.ao = sub nsw i64 %i.am, %i.an
  %i.ap = lshr exact i64 %i.ao, 2
  %i.aq = trunc i64 %i.ap to i32
  %storemerge.i.i.i.i.i.i = select i1 %.not.i2.i.i.i.i.i, i32 0, i32 %i.aq
  store i32 %storemerge.i.i.i.i.i.i, ptr %.012.i, align 4, !tbaa !93
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  %.not.i5 = icmp eq ptr %i.ar, %3
  br i1 %.not.i5, label %_ZSt22__uninitialized_copy_aIPKN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEPS5_NS0_14ArenaAllocatorIS5_EEET0_T_SC_SB_RT1_.exit, label %.lr.ph.i, !llvm.loop !1145

_ZSt22__uninitialized_copy_aIPKN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEPS5_NS0_14ArenaAllocatorIS5_EEET0_T_SC_SB_RT1_.exit: ; preds = %.lr.ph.i, %middle.block, %_ZNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE11_M_allocateEm.exit
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89   ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !88   ; 8 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775804
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #29
  unreachable

_ZNKSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 2                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 2305843009213693951)
  %i.m = select i1 %i.k, i64 2305843009213693951, i64 %i.l ; 4 uses
  %i.n = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE12_M_check_lenEmPKc.exit
  %i.p = icmp samesign ugt i64 %i.m, 2147483648
  br i1 %i.p, label %bb.d, label %_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE8allocateERS7_m.exit.i

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.71)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 8589934592)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.72) ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE8allocateERS7_m.exit.i: ; preds = %bb.c
  %i.t = load ptr, ptr %0, align 8, !tbaa !668, !nonnull !108, !align !516
  %i.u = shl nuw nsw i64 %i.m, 2
  %i.v = tail call noundef ptr @_ZN4mold13ArenaResource8allocateEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef %i.u, i64 noundef 4) #14
  br label %_ZNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE12_M_check_lenEmPKc.exit, %_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE8allocateERS7_m.exit.i
  %i.w = phi ptr [ %i.v, %_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE8allocateERS7_m.exit.i ], [ null, %_ZNKSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE12_M_check_lenEmPKc.exit ] ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o ; 2 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !91     ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE9constructIS6_JPS5_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS7_PT_DpOSB_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE11_M_allocateEm.exit
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub nsw i64 %i.z, %i.aa
  %i.ac = sdiv i64 %i.ab, 4
  %i.ad = trunc i64 %i.ac to i32
  br label %_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE9constructIS6_JPS5_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS7_PT_DpOSB_.exit

_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE9constructIS6_JPS5_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS7_PT_DpOSB_.exit: ; preds = %_ZNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE11_M_allocateEm.exit, %bb.e
  %storemerge.i.i.i.i.i = phi i32 [ %i.ad, %bb.e ], [ 0, %_ZNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE11_M_allocateEm.exit ]
  store i32 %storemerge.i.i.i.i.i, ptr %i.x, align 4, !tbaa !93
  %.not10.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEES6_NS0_14ArenaAllocatorIS5_EEET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE9constructIS6_JPS5_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS7_PT_DpOSB_.exit
  %i.ae = add i64 %i.n, -4
  %i.af = sub i64 %i.ae, %i.f                     ; 3 uses
  %i.ag = lshr i64 %i.af, 2
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader74, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ai = and i64 %i.af, -4
  %i.aj = add i64 %i.ai, 4                        ; 2 uses
  %i.ak = getelementptr i8, ptr %i.w, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.d, i64 %i.aj
  %bound0 = icmp ult ptr %i.w, %i.al
  %bound1 = icmp ult ptr %i.d, %i.ak
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 9223372036854775804     ; 3 uses
  %i.am = shl i64 %n.vec, 2                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.w, i64 %i.am   ; 2 uses
  %i.ao = getelementptr i8, ptr %i.d, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.w, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %pointer.phi42 = phi ptr [ %i.d, %vector.ph ], [ %ptr.ind44, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi42, <4 x i64> <i64 0, i64 4, i64 8, i64 12> ; 2 uses
  %vector.gep43 = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 4, i64 8, i64 12> ; 2 uses
  %i.ap = extractelement <4 x ptr> %vector.gep, i64 0
  %i.aq = extractelement <4 x ptr> %vector.gep43, i64 0 ; 2 uses
  store <4 x i32> zeroinitializer, ptr %i.aq, align 4, !tbaa !93, !alias.scope !1158, !noalias !1159
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !93, !alias.scope !1159 ; 2 uses
  %i.ar = icmp eq <4 x i32> %wide.load, zeroinitializer
  %i.as = ptrtoint <4 x ptr> %vector.gep to <4 x i64>
  %i.at = sext <4 x i32> %wide.load to <4 x i64>
  %i.au = shl nsw <4 x i64> %i.at, splat (i64 2)
  %i.av = add nsw <4 x i64> %i.au, %i.as          ; 2 uses
  %i.aw = icmp eq <4 x i64> %i.av, zeroinitializer
  %i.ax = select <4 x i1> %i.ar, <4 x i1> splat (i1 true), <4 x i1> %i.aw
  %i.ay = ptrtoint <4 x ptr> %vector.gep43 to <4 x i64>
  %i.az = sub nsw <4 x i64> %i.av, %i.ay
end_hunk_0
