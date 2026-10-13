Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64BaseInfo?download=true
inline.NumInlined: 868
inline.NumDeleted: 514
begin_hunk_0_@_ZN4llvm21AArch64SVEPredPattern16getSVEPREDPATStrENS_11StringTable6OffsetE:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN4llvm21AArch64SVEPredPattern26lookupSVEPREDPATByEncodingEh(i8 noundef zeroext %0) local_unnamed_addr #0 {
_ZSt9__advanceIPKN4llvm21AArch64SVEPredPattern10SVEPREDPATElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i:
  %i.a = zext i8 %0 to i16                        ; 2 uses
  br label %_ZSt9__advanceIPKN4llvm21AArch64SVEPredPattern10SVEPREDPATElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIPKN4llvm21AArch64SVEPredPattern10SVEPREDPATElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIPKN4llvm21AArch64SVEPredPattern10SVEPREDPATElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIPKN4llvm21AArch64SVEPredPattern10SVEPREDPATElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.05.i.i = phi i64 [ 17, %_ZSt9__advanceIPKN4llvm21AArch64SVEPredPattern10SVEPREDPATElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i, %_ZSt9__advanceIPKN4llvm21AArch64SVEPredPattern10SVEPREDPATElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.0114.i.i = phi ptr [ @_ZN4llvm21AArch64SVEPredPatternL15SVEPREDPATsListE, %_ZSt9__advanceIPKN4llvm21AArch64SVEPredPattern10SVEPREDPATElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.112.i.i, %_ZSt9__advanceIPKN4llvm21AArch64SVEPredPattern10SVEPREDPATElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %i.b = lshr i64 %.05.i.i, 1                     ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.0114.i.i, i64 %i.b ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val.i.i = load i16, ptr %i.d, align 4, !tbaa !73
  %i.e = icmp ult i16 %.val.i.i, %i.a             ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = xor i64 %i.b, -1
  %i.h = add nsw i64 %.05.i.i, %i.g
  %.112.i.i = select i1 %i.e, ptr %i.f, ptr %.0114.i.i ; 4 uses
  %.1.i.i = select i1 %i.e, i64 %i.h, i64 %i.b    ; 2 uses
  %i.i = icmp sgt i64 %.1.i.i, 0
  br i1 %i.i, label %_ZSt9__advanceIPKN4llvm21AArch64SVEPredPattern10SVEPREDPATElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKN4llvm21AArch64SVEPredPattern10SVEPREDPATEZNS1_26lookupSVEPREDPATByEncodingEhE7KeyTypeZNS1_26lookupSVEPREDPATByEncodingEhE4CompET_S7_S7_RKT0_T1_.exit, !llvm.loop !71

_ZSt11lower_boundIPKN4llvm21AArch64SVEPredPattern10SVEPREDPATEZNS1_26lookupSVEPREDPATByEncodingEhE7KeyTypeZNS1_26lookupSVEPREDPATByEncodingEhE4CompET_S7_S7_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIPKN4llvm21AArch64SVEPredPattern10SVEPREDPATElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.j = icmp eq ptr %.112.i.i, getelementptr inbounds nuw (i8, ptr @_ZN4llvm21AArch64SVEPredPatternL15SVEPREDPATsListE, i64 136)
  br i1 %i.j, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt11lower_boundIPKN4llvm21AArch64SVEPredPattern10SVEPREDPATEZNS1_26lookupSVEPREDPATByEncodingEhE7KeyTypeZNS1_26lookupSVEPREDPATByEncodingEhE4CompET_S7_S7_RKT0_T1_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.112.i.i, i64 4
  %i.l = load i16, ptr %i.k, align 4, !tbaa !73
  %.not = icmp eq i16 %i.l, %i.a
  %spec.select = select i1 %.not, ptr %.112.i.i, ptr null
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt11lower_boundIPKN4llvm21AArch64SVEPredPattern10SVEPREDPATEZNS1_26lookupSVEPREDPATByEncodingEhE7KeyTypeZNS1_26lookupSVEPREDPATByEncodingEhE4CompET_S7_S7_RKT0_T1_.exit
  %.0 = phi ptr [ null, %_ZSt11lower_boundIPKN4llvm21AArch64SVEPredPattern10SVEPREDPATEZNS1_26lookupSVEPREDPATByEncodingEhE7KeyTypeZNS1_26lookupSVEPREDPATByEncodingEhE4CompET_S7_S7_RKT0_T1_.exit ], [ %spec.select, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm21AArch64SVEPredPattern22lookupSVEPREDPATByNameENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %3 = alloca %struct.KeyType.64, align 8         ; 6 uses
  store ptr %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZNK4llvm9StringRef5upperB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  %.val9 = load ptr, ptr %3, align 8              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val10 = load i64, ptr %i.b, align 8           ; 7 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm21AArch64SVEPredPattern22lookupSVEPREDPATByNameENS2_9StringRefEE4CompEclIPKZNS3_22lookupSVEPREDPATByNameES4_E9IndexTypeKZNS3_22lookupSVEPREDPATByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i, %bb.a
  %.04.i.i = phi i64 [ %.1.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm21AArch64SVEPredPattern22lookupSVEPREDPATByNameENS2_9StringRefEE4CompEclIPKZNS3_22lookupSVEPREDPATByNameES4_E9IndexTypeKZNS3_22lookupSVEPREDPATByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i ], [ 17, %bb.a ] ; 2 uses
  %.0113.i.i = phi ptr [ %.112.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm21AArch64SVEPredPattern22lookupSVEPREDPATByNameENS2_9StringRefEE4CompEclIPKZNS3_22lookupSVEPREDPATByNameES4_E9IndexTypeKZNS3_22lookupSVEPREDPATByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i ], [ @_ZZN4llvm21AArch64SVEPredPattern22lookupSVEPREDPATByNameENS_9StringRefEE5Index, %bb.a ] ; 2 uses
  %i.c = lshr i64 %.04.i.i, 1                     ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.0113.i.i, i64 %i.c ; 2 uses
  %.val.i.i = load i32, ptr %i.d, align 4, !tbaa !76
  %i.e = zext i32 %.val.i.i to i64
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN4llvm21AArch64SVEPredPatternL29SVEPREDPATsListStringsStorageE, i64 %i.e ; 2 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #16 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val10, i64 %i.g) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.h, label %.thread.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = call i32 @memcmp(ptr noundef nonnull %i.f, ptr noundef readonly %.val9, i64 noundef %.sroa.speculated.i.i.i.i.i) #17
  %.fr.i.i.i.i.i = freeze i32 %i.i                ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  %.inv.i.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i = select i1 %.inv.i.i.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i, label %.thread.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm21AArch64SVEPredPattern22lookupSVEPREDPATByNameENS2_9StringRefEE4CompEclIPKZNS3_22lookupSVEPREDPATByNameES4_E9IndexTypeKZNS3_22lookupSVEPREDPATByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i, %.lr.ph.i.i
  %i.j = icmp eq i64 %i.g, %.val10
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm21AArch64SVEPredPattern22lookupSVEPREDPATByNameENS2_9StringRefEE4CompEclIPKZNS3_22lookupSVEPREDPATByNameES4_E9IndexTypeKZNS3_22lookupSVEPREDPATByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.thread.i.i.i.i.i
  %i.k = icmp ult i64 %i.g, %.val10
  %i.l = select i1 %i.k, i32 -1, i32 1
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm21AArch64SVEPredPattern22lookupSVEPREDPATByNameENS2_9StringRefEE4CompEclIPKZNS3_22lookupSVEPREDPATByNameES4_E9IndexTypeKZNS3_22lookupSVEPREDPATByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm21AArch64SVEPredPattern22lookupSVEPREDPATByNameENS2_9StringRefEE4CompEclIPKZNS3_22lookupSVEPREDPATByNameES4_E9IndexTypeKZNS3_22lookupSVEPREDPATByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i: ; preds = %bb.b, %.thread.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i
  %.1.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i ], [ %i.l, %bb.b ], [ 0, %.thread.i.i.i.i.i ]
  %i.m = icmp slt i32 %.1.i.i.i.i.i, 0            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = xor i64 %i.c, -1
  %i.p = add nsw i64 %.04.i.i, %i.o
  %.112.i.i = select i1 %i.m, ptr %i.n, ptr %.0113.i.i ; 4 uses
  %.1.i.i = select i1 %i.m, i64 %i.p, i64 %i.c    ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i, 0
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt11lower_boundIPKZN4llvm21AArch64SVEPredPattern22lookupSVEPREDPATByNameENS0_9StringRefEE9IndexTypeZNS1_22lookupSVEPREDPATByNameES2_E7KeyTypeZNS1_22lookupSVEPREDPATByNameES2_E4CompET_S8_S8_RKT0_T1_.exit, !llvm.loop !74

_ZSt11lower_boundIPKZN4llvm21AArch64SVEPredPattern22lookupSVEPREDPATByNameENS0_9StringRefEE9IndexTypeZNS1_22lookupSVEPREDPATByNameES2_E7KeyTypeZNS1_22lookupSVEPREDPATByNameES2_E4CompET_S8_S8_RKT0_T1_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm21AArch64SVEPredPattern22lookupSVEPREDPATByNameENS2_9StringRefEE4CompEclIPKZNS3_22lookupSVEPREDPATByNameES4_E9IndexTypeKZNS3_22lookupSVEPREDPATByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i
  %i.r = icmp eq ptr %.112.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN4llvm21AArch64SVEPredPattern22lookupSVEPREDPATByNameENS_9StringRefEE5Index, i64 136)
  br i1 %i.r, label %_ZN4llvmneENS_9StringRefES0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZSt11lower_boundIPKZN4llvm21AArch64SVEPredPattern22lookupSVEPREDPATByNameENS0_9StringRefEE9IndexTypeZNS1_22lookupSVEPREDPATByNameES2_E7KeyTypeZNS1_22lookupSVEPREDPATByNameES2_E4CompET_S8_S8_RKT0_T1_.exit
  %i.s = load i32, ptr %.112.i.i, align 4, !tbaa !76
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4llvm21AArch64SVEPredPatternL29SVEPREDPATsListStringsStorageE, i64 %i.t ; 2 uses
  %i.v = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #16
  %.not.i.i = icmp eq i64 %.val10, %i.v
  br i1 %.not.i.i, label %bb.d, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i64 %.val10, 0
  br i1 %i.w, label %_ZN4llvmneENS_9StringRefES0_.exit.thread14, label %_ZN4llvmneENS_9StringRefES0_.exit

_ZN4llvmneENS_9StringRefES0_.exit:                ; preds = %bb.d
  %bcmp.i.i = call i32 @bcmp(ptr %.val9, ptr nonnull %i.u, i64 %.val10)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %_ZN4llvmneENS_9StringRefES0_.exit.thread14, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread14:       ; preds = %bb.d, %_ZN4llvmneENS_9StringRefES0_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.112.i.i, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !77
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @_ZN4llvm21AArch64SVEPredPatternL15SVEPREDPATsListE, i64 %i.z
  br label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread:         ; preds = %bb.c, %_ZSt11lower_boundIPKZN4llvm21AArch64SVEPredPattern22lookupSVEPREDPATByNameENS0_9StringRefEE9IndexTypeZNS1_22lookupSVEPREDPATByNameES2_E7KeyTypeZNS1_22lookupSVEPREDPATByNameES2_E4CompET_S8_S8_RKT0_T1_.exit, %_ZN4llvmneENS_9StringRefES0_.exit, %_ZN4llvmneENS_9StringRefES0_.exit.thread14
  %.0 = phi ptr [ %i.aa, %_ZN4llvmneENS_9StringRefES0_.exit.thread14 ], [ null, %_ZN4llvmneENS_9StringRefES0_.exit ], [ null, %_ZSt11lower_boundIPKZN4llvm21AArch64SVEPredPattern22lookupSVEPREDPATByNameENS0_9StringRefEE9IndexTypeZNS1_22lookupSVEPREDPATByNameES2_E7KeyTypeZNS1_22lookupSVEPREDPATByNameES2_E4CompET_S8_S8_RKT0_T1_.exit ], [ null, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %.val9, %i.ab
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.ad = icmp ult i64 %.val10, 16
  call void @llvm.assume(i1 %i.ad)
  br label %_ZZN4llvm21AArch64SVEPredPattern22lookupSVEPREDPATByNameENS_9StringRefEEN7KeyTypeD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !15
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %.val9, i64 noundef %i.af) #18
  br label %_ZZN4llvm21AArch64SVEPredPattern22lookupSVEPREDPATByNameENS_9StringRefEEN7KeyTypeD2Ev.exit

_ZZN4llvm21AArch64SVEPredPattern22lookupSVEPREDPATByNameENS_9StringRefEEN7KeyTypeD2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4llvm25AArch64SVEVecLenSpecifier24getSVEVECLENSPECIFIERStrENS_11StringTable6OffsetE(i32 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @_ZN4llvm25AArch64SVEVecLenSpecifierL37SVEVECLENSPECIFIERsListStringsStorageE, i64 %i.a ; 2 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #16
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.c, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN4llvm25AArch64SVEVecLenSpecifier34lookupSVEVECLENSPECIFIERByEncodingEh(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp ult i8 %0, 2
  %i.a = zext nneg i8 %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZN4llvm25AArch64SVEVecLenSpecifierL23SVEVECLENSPECIFIERsListE, i64 %i.a
  %.0 = select i1 %.not, ptr %i.b, ptr null
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #2 {
.lr.ph.i.i.peel.begin:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %3 = alloca %struct.KeyType.69, align 8         ; 6 uses
  store ptr %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZNK4llvm9StringRef5upperB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  %.val9 = load ptr, ptr %3, align 8              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val10 = load i64, ptr %i.b, align 8           ; 11 uses
  %cond = icmp eq i64 %.val10, 0
  br i1 %cond, label %bb.a, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel: ; preds = %.lr.ph.i.i.peel.begin
  %.sroa.speculated.i.i.i.i.i.peel = call i64 @llvm.umin.i64(i64 %.val10, i64 4)
  %i.c = call i32 @memcmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25AArch64SVEVecLenSpecifierL37SVEVECLENSPECIFIERsListStringsStorageE, i64 16), ptr noundef readonly %.val9, i64 noundef %.sroa.speculated.i.i.i.i.i.peel) #17
  %.fr.i.i.i.i.i.peel = freeze i32 %i.c           ; 2 uses
  %.not.not.i.i.i.i.i.peel = icmp eq i32 %.fr.i.i.i.i.i.peel, 0
  %.inv.i.i.i.i.i.peel = icmp sgt i32 %.fr.i.i.i.i.i.peel, -1
  br i1 %.not.not.i.i.i.i.i.peel, label %.thread.i.i.i.i.i.peel, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS2_9StringRefEE4CompEclIPKZNS3_30lookupSVEVECLENSPECIFIERByNameES4_E9IndexTypeKZNS3_30lookupSVEVECLENSPECIFIERByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel

.thread.i.i.i.i.i.peel:                           ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel
  %i.d = icmp eq i64 %.val10, 4
  br i1 %i.d, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS2_9StringRefEE4CompEclIPKZNS3_30lookupSVEVECLENSPECIFIERByNameES4_E9IndexTypeKZNS3_30lookupSVEVECLENSPECIFIERByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i.i.peel.begin, %.thread.i.i.i.i.i.peel
  %i.e = icmp ult i64 %.val10, 5
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS2_9StringRefEE4CompEclIPKZNS3_30lookupSVEVECLENSPECIFIERByNameES4_E9IndexTypeKZNS3_30lookupSVEVECLENSPECIFIERByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS2_9StringRefEE4CompEclIPKZNS3_30lookupSVEVECLENSPECIFIERByNameES4_E9IndexTypeKZNS3_30lookupSVEVECLENSPECIFIERByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel: ; preds = %bb.a, %.thread.i.i.i.i.i.peel, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel
  %.1.i.i.i.i.i.peel = phi i1 [ %.inv.i.i.i.i.i.peel, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel ], [ %i.e, %bb.a ], [ true, %.thread.i.i.i.i.i.peel ] ; 2 uses
  %.112.i.i.peel = select i1 %.1.i.i.i.i.i.peel, ptr @_ZZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS_9StringRefEE5Index, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS_9StringRefEE5Index, i64 16) ; 3 uses
  br i1 %.1.i.i.i.i.i.peel, label %.peel.newph, label %_ZSt11lower_boundIPKZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS0_9StringRefEE9IndexTypeZNS1_30lookupSVEVECLENSPECIFIERByNameES2_E7KeyTypeZNS1_30lookupSVEVECLENSPECIFIERByNameES2_E4CompET_S8_S8_RKT0_T1_.exit

.peel.newph:                                      ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS2_9StringRefEE4CompEclIPKZNS3_30lookupSVEVECLENSPECIFIERByNameES4_E9IndexTypeKZNS3_30lookupSVEVECLENSPECIFIERByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel
  %.val.i.i = load i32, ptr %.112.i.i.peel, align 4, !tbaa !79
  %i.f = zext i32 %.val.i.i to i64
  %i.g = getelementptr inbounds nuw i8, ptr @_ZN4llvm25AArch64SVEVecLenSpecifierL37SVEVECLENSPECIFIERsListStringsStorageE, i64 %i.f ; 2 uses
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #16 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val10, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  %i.j = icmp eq i64 %i.h, %.val10
  %i.k = icmp ult i64 %i.h, %.val10
  %i.l = select i1 %i.k, i32 -1, i32 1
  br i1 %i.i, label %.thread.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i: ; preds = %.peel.newph
  %i.m = call i32 @memcmp(ptr noundef nonnull %i.g, ptr noundef readonly %.val9, i64 noundef %.sroa.speculated.i.i.i.i.i) #17
  %.fr.i.i.i.i.i = freeze i32 %i.m                ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  %.inv.i.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i = select i1 %.inv.i.i.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i, label %.thread.i.i.i.i.i, label %_ZSt11lower_boundIPKZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS0_9StringRefEE9IndexTypeZNS1_30lookupSVEVECLENSPECIFIERByNameES2_E7KeyTypeZNS1_30lookupSVEVECLENSPECIFIERByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit

.thread.i.i.i.i.i:                                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i, %.peel.newph
  %spec.select = select i1 %i.j, i32 0, i32 %i.l
  br label %_ZSt11lower_boundIPKZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS0_9StringRefEE9IndexTypeZNS1_30lookupSVEVECLENSPECIFIERByNameES2_E7KeyTypeZNS1_30lookupSVEVECLENSPECIFIERByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit

_ZSt11lower_boundIPKZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS0_9StringRefEE9IndexTypeZNS1_30lookupSVEVECLENSPECIFIERByNameES2_E7KeyTypeZNS1_30lookupSVEVECLENSPECIFIERByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit: ; preds = %.thread.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i
  %.1.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i ], [ %spec.select, %.thread.i.i.i.i.i ]
  %i.n = icmp slt i32 %.1.i.i.i.i.i, 0
  %.112.i.i.idx = select i1 %i.n, i64 8, i64 0
  %.112.i.i = getelementptr inbounds nuw i8, ptr %.112.i.i.peel, i64 %.112.i.i.idx
  br label %_ZSt11lower_boundIPKZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS0_9StringRefEE9IndexTypeZNS1_30lookupSVEVECLENSPECIFIERByNameES2_E7KeyTypeZNS1_30lookupSVEVECLENSPECIFIERByNameES2_E4CompET_S8_S8_RKT0_T1_.exit

_ZSt11lower_boundIPKZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS0_9StringRefEE9IndexTypeZNS1_30lookupSVEVECLENSPECIFIERByNameES2_E7KeyTypeZNS1_30lookupSVEVECLENSPECIFIERByNameES2_E4CompET_S8_S8_RKT0_T1_.exit: ; preds = %_ZSt11lower_boundIPKZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS0_9StringRefEE9IndexTypeZNS1_30lookupSVEVECLENSPECIFIERByNameES2_E7KeyTypeZNS1_30lookupSVEVECLENSPECIFIERByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS2_9StringRefEE4CompEclIPKZNS3_30lookupSVEVECLENSPECIFIERByNameES4_E9IndexTypeKZNS3_30lookupSVEVECLENSPECIFIERByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel
  %.112.i.i.lcssa = phi ptr [ %.112.i.i.peel, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS2_9StringRefEE4CompEclIPKZNS3_30lookupSVEVECLENSPECIFIERByNameES4_E9IndexTypeKZNS3_30lookupSVEVECLENSPECIFIERByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel ], [ %.112.i.i, %_ZSt11lower_boundIPKZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS0_9StringRefEE9IndexTypeZNS1_30lookupSVEVECLENSPECIFIERByNameES2_E7KeyTypeZNS1_30lookupSVEVECLENSPECIFIERByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit ] ; 3 uses
  %i.o = icmp eq ptr %.112.i.i.lcssa, getelementptr inbounds nuw (i8, ptr @_ZZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS_9StringRefEE5Index, i64 16)
  br i1 %i.o, label %_ZN4llvmneENS_9StringRefES0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZSt11lower_boundIPKZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS0_9StringRefEE9IndexTypeZNS1_30lookupSVEVECLENSPECIFIERByNameES2_E7KeyTypeZNS1_30lookupSVEVECLENSPECIFIERByNameES2_E4CompET_S8_S8_RKT0_T1_.exit
  %i.p = load i32, ptr %.112.i.i.lcssa, align 4, !tbaa !79
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @_ZN4llvm25AArch64SVEVecLenSpecifierL37SVEVECLENSPECIFIERsListStringsStorageE, i64 %i.q ; 2 uses
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #16
  %.not.i.i = icmp eq i64 %.val10, %i.s
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.t = icmp eq i64 %.val10, 0
  br i1 %i.t, label %_ZN4llvmneENS_9StringRefES0_.exit.thread14, label %_ZN4llvmneENS_9StringRefES0_.exit

_ZN4llvmneENS_9StringRefES0_.exit:                ; preds = %bb.c
  %bcmp.i.i = call i32 @bcmp(ptr %.val9, ptr nonnull %i.r, i64 %.val10)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %_ZN4llvmneENS_9StringRefES0_.exit.thread14, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread14:       ; preds = %bb.c, %_ZN4llvmneENS_9StringRefES0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.112.i.i.lcssa, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !80
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @_ZN4llvm25AArch64SVEVecLenSpecifierL23SVEVECLENSPECIFIERsListE, i64 %i.w
  br label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread:         ; preds = %bb.b, %_ZSt11lower_boundIPKZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS0_9StringRefEE9IndexTypeZNS1_30lookupSVEVECLENSPECIFIERByNameES2_E7KeyTypeZNS1_30lookupSVEVECLENSPECIFIERByNameES2_E4CompET_S8_S8_RKT0_T1_.exit, %_ZN4llvmneENS_9StringRefES0_.exit, %_ZN4llvmneENS_9StringRefES0_.exit.thread14
  %.0 = phi ptr [ %i.x, %_ZN4llvmneENS_9StringRefES0_.exit.thread14 ], [ null, %_ZN4llvmneENS_9StringRefES0_.exit ], [ null, %_ZSt11lower_boundIPKZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS0_9StringRefEE9IndexTypeZNS1_30lookupSVEVECLENSPECIFIERByNameES2_E7KeyTypeZNS1_30lookupSVEVECLENSPECIFIERByNameES2_E4CompET_S8_S8_RKT0_T1_.exit ], [ null, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = icmp eq ptr %.val9, %i.y
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.aa = icmp ult i64 %.val10, 16
  call void @llvm.assume(i1 %i.aa)
  br label %_ZZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS_9StringRefEEN7KeyTypeD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !15
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.val9, i64 noundef %i.ac) #18
  br label %_ZZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS_9StringRefEEN7KeyTypeD2Ev.exit

_ZZN4llvm25AArch64SVEVecLenSpecifier30lookupSVEVECLENSPECIFIERByNameENS_9StringRefEEN7KeyTypeD2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4llvm17AArch64ExactFPImm16getExactFPImmStrENS_11StringTable6OffsetE(i32 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @_ZN4llvm17AArch64ExactFPImmL29ExactFPImmsListStringsStorageE, i64 %i.a ; 2 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #16
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.c, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN4llvm17AArch64ExactFPImm22lookupExactFPImmByEnumEh(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp ult i8 %0, 4
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i8 %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm17AArch64ExactFPImm22lookupExactFPImmByEnumEhE5Index, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !82
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZN4llvm17AArch64ExactFPImmL15ExactFPImmsListE, i64 %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4llvm13AArch64PState19getPStateImm0_15StrENS_11StringTable6OffsetE(i32 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @_ZN4llvm13AArch64PStateL32PStateImm0_15sListStringsStorageE, i64 %i.a ; 2 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #16
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.c, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN4llvm13AArch64PState29lookupPStateImm0_15ByEncodingEh(i8 noundef zeroext %0) local_unnamed_addr #0 {
_ZSt9__advanceIPKN4llvm13AArch64PState13PStateImm0_15ElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i:
  %i.a = zext i8 %0 to i16                        ; 2 uses
  br label %_ZSt9__advanceIPKN4llvm13AArch64PState13PStateImm0_15ElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIPKN4llvm13AArch64PState13PStateImm0_15ElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIPKN4llvm13AArch64PState13PStateImm0_15ElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIPKN4llvm13AArch64PState13PStateImm0_15ElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.05.i.i = phi i64 [ 8, %_ZSt9__advanceIPKN4llvm13AArch64PState13PStateImm0_15ElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i, %_ZSt9__advanceIPKN4llvm13AArch64PState13PStateImm0_15ElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.0114.i.i = phi ptr [ @_ZN4llvm13AArch64PStateL18PStateImm0_15sListE, %_ZSt9__advanceIPKN4llvm13AArch64PState13PStateImm0_15ElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.112.i.i, %_ZSt9__advanceIPKN4llvm13AArch64PState13PStateImm0_15ElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %i.b = lshr i64 %.05.i.i, 1                     ; 3 uses
  %i.c = getelementptr inbounds nuw [56 x i8], ptr %.0114.i.i, i64 %i.b ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val.i.i = load i16, ptr %i.d, align 4, !tbaa !13
  %i.e = icmp ult i16 %.val.i.i, %i.a             ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = xor i64 %i.b, -1
  %i.h = add nsw i64 %.05.i.i, %i.g
  %.112.i.i = select i1 %i.e, ptr %i.f, ptr %.0114.i.i ; 4 uses
  %.1.i.i = select i1 %i.e, i64 %i.h, i64 %i.b    ; 2 uses
  %i.i = icmp sgt i64 %.1.i.i, 0
  br i1 %i.i, label %_ZSt9__advanceIPKN4llvm13AArch64PState13PStateImm0_15ElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKN4llvm13AArch64PState13PStateImm0_15EZNS1_29lookupPStateImm0_15ByEncodingEhE7KeyTypeZNS1_29lookupPStateImm0_15ByEncodingEhE4CompET_S7_S7_RKT0_T1_.exit, !llvm.loop !83

_ZSt11lower_boundIPKN4llvm13AArch64PState13PStateImm0_15EZNS1_29lookupPStateImm0_15ByEncodingEhE7KeyTypeZNS1_29lookupPStateImm0_15ByEncodingEhE4CompET_S7_S7_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIPKN4llvm13AArch64PState13PStateImm0_15ElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.j = icmp eq ptr %.112.i.i, getelementptr inbounds nuw (i8, ptr @_ZN4llvm13AArch64PStateL18PStateImm0_15sListE, i64 448)
  br i1 %i.j, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt11lower_boundIPKN4llvm13AArch64PState13PStateImm0_15EZNS1_29lookupPStateImm0_15ByEncodingEhE7KeyTypeZNS1_29lookupPStateImm0_15ByEncodingEhE4CompET_S7_S7_RKT0_T1_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.112.i.i, i64 4
  %i.l = load i16, ptr %i.k, align 4, !tbaa !13
  %.not = icmp eq i16 %i.l, %i.a
  %spec.select = select i1 %.not, ptr %.112.i.i, ptr null
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt11lower_boundIPKN4llvm13AArch64PState13PStateImm0_15EZNS1_29lookupPStateImm0_15ByEncodingEhE7KeyTypeZNS1_29lookupPStateImm0_15ByEncodingEhE4CompET_S7_S7_RKT0_T1_.exit
  %.0 = phi ptr [ null, %_ZSt11lower_boundIPKN4llvm13AArch64PState13PStateImm0_15EZNS1_29lookupPStateImm0_15ByEncodingEhE7KeyTypeZNS1_29lookupPStateImm0_15ByEncodingEhE4CompET_S7_S7_RKT0_T1_.exit ], [ %spec.select, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm13AArch64PState25lookupPStateImm0_15ByNameENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %3 = alloca %struct.KeyType.78, align 8         ; 6 uses
  store ptr %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZNK4llvm9StringRef5upperB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  %.val9 = load ptr, ptr %3, align 8              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val10 = load i64, ptr %i.b, align 8           ; 7 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm13AArch64PState25lookupPStateImm0_15ByNameENS2_9StringRefEE4CompEclIPKZNS3_25lookupPStateImm0_15ByNameES4_E9IndexTypeKZNS3_25lookupPStateImm0_15ByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i, %bb.a
  %.04.i.i = phi i64 [ %.1.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm13AArch64PState25lookupPStateImm0_15ByNameENS2_9StringRefEE4CompEclIPKZNS3_25lookupPStateImm0_15ByNameES4_E9IndexTypeKZNS3_25lookupPStateImm0_15ByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i ], [ 8, %bb.a ] ; 2 uses
  %.0113.i.i = phi ptr [ %.112.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm13AArch64PState25lookupPStateImm0_15ByNameENS2_9StringRefEE4CompEclIPKZNS3_25lookupPStateImm0_15ByNameES4_E9IndexTypeKZNS3_25lookupPStateImm0_15ByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i ], [ @_ZZN4llvm13AArch64PState25lookupPStateImm0_15ByNameENS_9StringRefEE5Index, %bb.a ] ; 2 uses
  %i.c = lshr i64 %.04.i.i, 1                     ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.0113.i.i, i64 %i.c ; 2 uses
  %.val.i.i = load i32, ptr %i.d, align 4, !tbaa !86
  %i.e = zext i32 %.val.i.i to i64
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN4llvm13AArch64PStateL32PStateImm0_15sListStringsStorageE, i64 %i.e ; 2 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #16 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val10, i64 %i.g) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.h, label %.thread.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = call i32 @memcmp(ptr noundef nonnull %i.f, ptr noundef readonly %.val9, i64 noundef %.sroa.speculated.i.i.i.i.i) #17
  %.fr.i.i.i.i.i = freeze i32 %i.i                ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  %.inv.i.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i = select i1 %.inv.i.i.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i, label %.thread.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm13AArch64PState25lookupPStateImm0_15ByNameENS2_9StringRefEE4CompEclIPKZNS3_25lookupPStateImm0_15ByNameES4_E9IndexTypeKZNS3_25lookupPStateImm0_15ByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i, %.lr.ph.i.i
  %i.j = icmp eq i64 %i.g, %.val10
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm13AArch64PState25lookupPStateImm0_15ByNameENS2_9StringRefEE4CompEclIPKZNS3_25lookupPStateImm0_15ByNameES4_E9IndexTypeKZNS3_25lookupPStateImm0_15ByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.thread.i.i.i.i.i
  %i.k = icmp ult i64 %i.g, %.val10
  %i.l = select i1 %i.k, i32 -1, i32 1
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm13AArch64PState25lookupPStateImm0_15ByNameENS2_9StringRefEE4CompEclIPKZNS3_25lookupPStateImm0_15ByNameES4_E9IndexTypeKZNS3_25lookupPStateImm0_15ByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm13AArch64PState25lookupPStateImm0_15ByNameENS2_9StringRefEE4CompEclIPKZNS3_25lookupPStateImm0_15ByNameES4_E9IndexTypeKZNS3_25lookupPStateImm0_15ByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i: ; preds = %bb.b, %.thread.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i
  %.1.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i ], [ %i.l, %bb.b ], [ 0, %.thread.i.i.i.i.i ]
  %i.m = icmp slt i32 %.1.i.i.i.i.i, 0            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = xor i64 %i.c, -1
  %i.p = add nsw i64 %.04.i.i, %i.o
  %.112.i.i = select i1 %i.m, ptr %i.n, ptr %.0113.i.i ; 4 uses
  %.1.i.i = select i1 %i.m, i64 %i.p, i64 %i.c    ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i, 0
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt11lower_boundIPKZN4llvm13AArch64PState25lookupPStateImm0_15ByNameENS0_9StringRefEE9IndexTypeZNS1_25lookupPStateImm0_15ByNameES2_E7KeyTypeZNS1_25lookupPStateImm0_15ByNameES2_E4CompET_S8_S8_RKT0_T1_.exit, !llvm.loop !84

_ZSt11lower_boundIPKZN4llvm13AArch64PState25lookupPStateImm0_15ByNameENS0_9StringRefEE9IndexTypeZNS1_25lookupPStateImm0_15ByNameES2_E7KeyTypeZNS1_25lookupPStateImm0_15ByNameES2_E4CompET_S8_S8_RKT0_T1_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm13AArch64PState25lookupPStateImm0_15ByNameENS2_9StringRefEE4CompEclIPKZNS3_25lookupPStateImm0_15ByNameES4_E9IndexTypeKZNS3_25lookupPStateImm0_15ByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i
  %i.r = icmp eq ptr %.112.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN4llvm13AArch64PState25lookupPStateImm0_15ByNameENS_9StringRefEE5Index, i64 64)
  br i1 %i.r, label %_ZN4llvmneENS_9StringRefES0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZSt11lower_boundIPKZN4llvm13AArch64PState25lookupPStateImm0_15ByNameENS0_9StringRefEE9IndexTypeZNS1_25lookupPStateImm0_15ByNameES2_E7KeyTypeZNS1_25lookupPStateImm0_15ByNameES2_E4CompET_S8_S8_RKT0_T1_.exit
  %i.s = load i32, ptr %.112.i.i, align 4, !tbaa !86
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4llvm13AArch64PStateL32PStateImm0_15sListStringsStorageE, i64 %i.t ; 2 uses
  %i.v = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #16
  %.not.i.i = icmp eq i64 %.val10, %i.v
  br i1 %.not.i.i, label %bb.d, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i64 %.val10, 0
  br i1 %i.w, label %_ZN4llvmneENS_9StringRefES0_.exit.thread14, label %_ZN4llvmneENS_9StringRefES0_.exit

_ZN4llvmneENS_9StringRefES0_.exit:                ; preds = %bb.d
  %bcmp.i.i = call i32 @bcmp(ptr %.val9, ptr nonnull %i.u, i64 %.val10)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %_ZN4llvmneENS_9StringRefES0_.exit.thread14, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread14:       ; preds = %bb.d, %_ZN4llvmneENS_9StringRefES0_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.112.i.i, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !87
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [56 x i8], ptr @_ZN4llvm13AArch64PStateL18PStateImm0_15sListE, i64 %i.z
  br label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread:         ; preds = %bb.c, %_ZSt11lower_boundIPKZN4llvm13AArch64PState25lookupPStateImm0_15ByNameENS0_9StringRefEE9IndexTypeZNS1_25lookupPStateImm0_15ByNameES2_E7KeyTypeZNS1_25lookupPStateImm0_15ByNameES2_E4CompET_S8_S8_RKT0_T1_.exit, %_ZN4llvmneENS_9StringRefES0_.exit, %_ZN4llvmneENS_9StringRefES0_.exit.thread14
  %.0 = phi ptr [ %i.aa, %_ZN4llvmneENS_9StringRefES0_.exit.thread14 ], [ null, %_ZN4llvmneENS_9StringRefES0_.exit ], [ null, %_ZSt11lower_boundIPKZN4llvm13AArch64PState25lookupPStateImm0_15ByNameENS0_9StringRefEE9IndexTypeZNS1_25lookupPStateImm0_15ByNameES2_E7KeyTypeZNS1_25lookupPStateImm0_15ByNameES2_E4CompET_S8_S8_RKT0_T1_.exit ], [ null, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %.val9, %i.ab
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.ad = icmp ult i64 %.val10, 16
  call void @llvm.assume(i1 %i.ad)
  br label %_ZZN4llvm13AArch64PState25lookupPStateImm0_15ByNameENS_9StringRefEEN7KeyTypeD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !15
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %.val9, i64 noundef %i.af) #18
  br label %_ZZN4llvm13AArch64PState25lookupPStateImm0_15ByNameENS_9StringRefEEN7KeyTypeD2Ev.exit

_ZZN4llvm13AArch64PState25lookupPStateImm0_15ByNameENS_9StringRefEEN7KeyTypeD2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4llvm13AArch64PState18getPStateImm0_1StrENS_11StringTable6OffsetE(i32 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @_ZN4llvm13AArch64PStateL31PStateImm0_1sListStringsStorageE, i64 %i.a ; 2 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #16
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.c, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN4llvm13AArch64PState28lookupPStateImm0_1ByEncodingEt(i16 noundef zeroext %0) local_unnamed_addr #0 {
_ZSt9__advanceIPKN4llvm13AArch64PState12PStateImm0_1ElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i:
  br label %_ZSt9__advanceIPKN4llvm13AArch64PState12PStateImm0_1ElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIPKN4llvm13AArch64PState12PStateImm0_1ElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIPKN4llvm13AArch64PState12PStateImm0_1ElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIPKN4llvm13AArch64PState12PStateImm0_1ElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i
  %.05.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIPKN4llvm13AArch64PState12PStateImm0_1ElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ 2, %_ZSt9__advanceIPKN4llvm13AArch64PState12PStateImm0_1ElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i ] ; 2 uses
  %.0114.i.i = phi ptr [ %.112.i.i, %_ZSt9__advanceIPKN4llvm13AArch64PState12PStateImm0_1ElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ @_ZN4llvm13AArch64PStateL17PStateImm0_1sListE, %_ZSt9__advanceIPKN4llvm13AArch64PState12PStateImm0_1ElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i ] ; 2 uses
  %i.a = lshr i64 %.05.i.i, 1                     ; 3 uses
  %i.b = getelementptr inbounds nuw [56 x i8], ptr %.0114.i.i, i64 %i.a ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val.i.i = load i16, ptr %i.c, align 4, !tbaa !13
  %i.d = icmp ult i16 %.val.i.i, %0               ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = xor i64 %i.a, -1
  %i.g = add nsw i64 %.05.i.i, %i.f
  %.112.i.i = select i1 %i.d, ptr %i.e, ptr %.0114.i.i ; 4 uses
  %.1.i.i = select i1 %i.d, i64 %i.g, i64 %i.a    ; 2 uses
  %i.h = icmp sgt i64 %.1.i.i, 0
  br i1 %i.h, label %_ZSt9__advanceIPKN4llvm13AArch64PState12PStateImm0_1ElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKN4llvm13AArch64PState12PStateImm0_1EZNS1_28lookupPStateImm0_1ByEncodingEtE7KeyTypeZNS1_28lookupPStateImm0_1ByEncodingEtE4CompET_S7_S7_RKT0_T1_.exit, !llvm.loop !88

_ZSt11lower_boundIPKN4llvm13AArch64PState12PStateImm0_1EZNS1_28lookupPStateImm0_1ByEncodingEtE7KeyTypeZNS1_28lookupPStateImm0_1ByEncodingEtE4CompET_S7_S7_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIPKN4llvm13AArch64PState12PStateImm0_1ElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.i = icmp eq ptr %.112.i.i, getelementptr inbounds nuw (i8, ptr @_ZN4llvm13AArch64PStateL17PStateImm0_1sListE, i64 112)
  br i1 %i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt11lower_boundIPKN4llvm13AArch64PState12PStateImm0_1EZNS1_28lookupPStateImm0_1ByEncodingEtE7KeyTypeZNS1_28lookupPStateImm0_1ByEncodingEtE4CompET_S7_S7_RKT0_T1_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.112.i.i, i64 4
  %i.k = load i16, ptr %i.j, align 4, !tbaa !13
  %.not = icmp eq i16 %0, %i.k
  %spec.select = select i1 %.not, ptr %.112.i.i, ptr null
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt11lower_boundIPKN4llvm13AArch64PState12PStateImm0_1EZNS1_28lookupPStateImm0_1ByEncodingEtE7KeyTypeZNS1_28lookupPStateImm0_1ByEncodingEtE4CompET_S7_S7_RKT0_T1_.exit
  %.0 = phi ptr [ null, %_ZSt11lower_boundIPKN4llvm13AArch64PState12PStateImm0_1EZNS1_28lookupPStateImm0_1ByEncodingEtE7KeyTypeZNS1_28lookupPStateImm0_1ByEncodingEtE4CompET_S7_S7_RKT0_T1_.exit ], [ %spec.select, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #2 {
.lr.ph.i.i.peel.begin:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %3 = alloca %struct.KeyType.85, align 8         ; 6 uses
  store ptr %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZNK4llvm9StringRef5upperB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  %.val9 = load ptr, ptr %3, align 8              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val10 = load i64, ptr %i.b, align 8           ; 11 uses
  %cond = icmp eq i64 %.val10, 0
  br i1 %cond, label %bb.a, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel: ; preds = %.lr.ph.i.i.peel.begin
  %.sroa.speculated.i.i.i.i.i.peel = call i64 @llvm.umin.i64(i64 %.val10, i64 2)
  %i.c = call i32 @memcmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm13AArch64PStateL31PStateImm0_1sListStringsStorageE, i64 8), ptr noundef readonly %.val9, i64 noundef %.sroa.speculated.i.i.i.i.i.peel) #17
  %.fr.i.i.i.i.i.peel = freeze i32 %i.c           ; 2 uses
  %.not.not.i.i.i.i.i.peel = icmp eq i32 %.fr.i.i.i.i.i.peel, 0
  %.inv.i.i.i.i.i.peel = icmp sgt i32 %.fr.i.i.i.i.i.peel, -1
  br i1 %.not.not.i.i.i.i.i.peel, label %.thread.i.i.i.i.i.peel, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS2_9StringRefEE4CompEclIPKZNS3_24lookupPStateImm0_1ByNameES4_E9IndexTypeKZNS3_24lookupPStateImm0_1ByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel

.thread.i.i.i.i.i.peel:                           ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel
  %i.d = icmp eq i64 %.val10, 2
  br i1 %i.d, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS2_9StringRefEE4CompEclIPKZNS3_24lookupPStateImm0_1ByNameES4_E9IndexTypeKZNS3_24lookupPStateImm0_1ByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i.i.peel.begin, %.thread.i.i.i.i.i.peel
  %i.e = icmp ult i64 %.val10, 3
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS2_9StringRefEE4CompEclIPKZNS3_24lookupPStateImm0_1ByNameES4_E9IndexTypeKZNS3_24lookupPStateImm0_1ByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS2_9StringRefEE4CompEclIPKZNS3_24lookupPStateImm0_1ByNameES4_E9IndexTypeKZNS3_24lookupPStateImm0_1ByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel: ; preds = %bb.a, %.thread.i.i.i.i.i.peel, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel
  %.1.i.i.i.i.i.peel = phi i1 [ %.inv.i.i.i.i.i.peel, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel ], [ %i.e, %bb.a ], [ true, %.thread.i.i.i.i.i.peel ] ; 2 uses
  %.112.i.i.peel = select i1 %.1.i.i.i.i.i.peel, ptr @_ZZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS_9StringRefEE5Index, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS_9StringRefEE5Index, i64 16) ; 3 uses
  br i1 %.1.i.i.i.i.i.peel, label %.peel.newph, label %_ZSt11lower_boundIPKZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS0_9StringRefEE9IndexTypeZNS1_24lookupPStateImm0_1ByNameES2_E7KeyTypeZNS1_24lookupPStateImm0_1ByNameES2_E4CompET_S8_S8_RKT0_T1_.exit

.peel.newph:                                      ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS2_9StringRefEE4CompEclIPKZNS3_24lookupPStateImm0_1ByNameES4_E9IndexTypeKZNS3_24lookupPStateImm0_1ByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel
  %.val.i.i = load i32, ptr %.112.i.i.peel, align 4, !tbaa !90
  %i.f = zext i32 %.val.i.i to i64
  %i.g = getelementptr inbounds nuw i8, ptr @_ZN4llvm13AArch64PStateL31PStateImm0_1sListStringsStorageE, i64 %i.f ; 2 uses
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #16 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val10, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  %i.j = icmp eq i64 %i.h, %.val10
  %i.k = icmp ult i64 %i.h, %.val10
  %i.l = select i1 %i.k, i32 -1, i32 1
  br i1 %i.i, label %.thread.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i: ; preds = %.peel.newph
  %i.m = call i32 @memcmp(ptr noundef nonnull %i.g, ptr noundef readonly %.val9, i64 noundef %.sroa.speculated.i.i.i.i.i) #17
  %.fr.i.i.i.i.i = freeze i32 %i.m                ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  %.inv.i.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i = select i1 %.inv.i.i.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i, label %.thread.i.i.i.i.i, label %_ZSt11lower_boundIPKZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS0_9StringRefEE9IndexTypeZNS1_24lookupPStateImm0_1ByNameES2_E7KeyTypeZNS1_24lookupPStateImm0_1ByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit

.thread.i.i.i.i.i:                                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i, %.peel.newph
  %spec.select = select i1 %i.j, i32 0, i32 %i.l
  br label %_ZSt11lower_boundIPKZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS0_9StringRefEE9IndexTypeZNS1_24lookupPStateImm0_1ByNameES2_E7KeyTypeZNS1_24lookupPStateImm0_1ByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit

_ZSt11lower_boundIPKZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS0_9StringRefEE9IndexTypeZNS1_24lookupPStateImm0_1ByNameES2_E7KeyTypeZNS1_24lookupPStateImm0_1ByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit: ; preds = %.thread.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i
  %.1.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i ], [ %spec.select, %.thread.i.i.i.i.i ]
  %i.n = icmp slt i32 %.1.i.i.i.i.i, 0
  %.112.i.i.idx = select i1 %i.n, i64 8, i64 0
  %.112.i.i = getelementptr inbounds nuw i8, ptr %.112.i.i.peel, i64 %.112.i.i.idx
  br label %_ZSt11lower_boundIPKZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS0_9StringRefEE9IndexTypeZNS1_24lookupPStateImm0_1ByNameES2_E7KeyTypeZNS1_24lookupPStateImm0_1ByNameES2_E4CompET_S8_S8_RKT0_T1_.exit

_ZSt11lower_boundIPKZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS0_9StringRefEE9IndexTypeZNS1_24lookupPStateImm0_1ByNameES2_E7KeyTypeZNS1_24lookupPStateImm0_1ByNameES2_E4CompET_S8_S8_RKT0_T1_.exit: ; preds = %_ZSt11lower_boundIPKZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS0_9StringRefEE9IndexTypeZNS1_24lookupPStateImm0_1ByNameES2_E7KeyTypeZNS1_24lookupPStateImm0_1ByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS2_9StringRefEE4CompEclIPKZNS3_24lookupPStateImm0_1ByNameES4_E9IndexTypeKZNS3_24lookupPStateImm0_1ByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel
  %.112.i.i.lcssa = phi ptr [ %.112.i.i.peel, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS2_9StringRefEE4CompEclIPKZNS3_24lookupPStateImm0_1ByNameES4_E9IndexTypeKZNS3_24lookupPStateImm0_1ByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel ], [ %.112.i.i, %_ZSt11lower_boundIPKZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS0_9StringRefEE9IndexTypeZNS1_24lookupPStateImm0_1ByNameES2_E7KeyTypeZNS1_24lookupPStateImm0_1ByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit ] ; 3 uses
  %i.o = icmp eq ptr %.112.i.i.lcssa, getelementptr inbounds nuw (i8, ptr @_ZZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS_9StringRefEE5Index, i64 16)
  br i1 %i.o, label %_ZN4llvmneENS_9StringRefES0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZSt11lower_boundIPKZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS0_9StringRefEE9IndexTypeZNS1_24lookupPStateImm0_1ByNameES2_E7KeyTypeZNS1_24lookupPStateImm0_1ByNameES2_E4CompET_S8_S8_RKT0_T1_.exit
  %i.p = load i32, ptr %.112.i.i.lcssa, align 4, !tbaa !90
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @_ZN4llvm13AArch64PStateL31PStateImm0_1sListStringsStorageE, i64 %i.q ; 2 uses
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #16
  %.not.i.i = icmp eq i64 %.val10, %i.s
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.t = icmp eq i64 %.val10, 0
  br i1 %i.t, label %_ZN4llvmneENS_9StringRefES0_.exit.thread14, label %_ZN4llvmneENS_9StringRefES0_.exit

_ZN4llvmneENS_9StringRefES0_.exit:                ; preds = %bb.c
  %bcmp.i.i = call i32 @bcmp(ptr %.val9, ptr nonnull %i.r, i64 %.val10)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %_ZN4llvmneENS_9StringRefES0_.exit.thread14, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread14:       ; preds = %bb.c, %_ZN4llvmneENS_9StringRefES0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.112.i.i.lcssa, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !91
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [56 x i8], ptr @_ZN4llvm13AArch64PStateL17PStateImm0_1sListE, i64 %i.w
  br label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread:         ; preds = %bb.b, %_ZSt11lower_boundIPKZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS0_9StringRefEE9IndexTypeZNS1_24lookupPStateImm0_1ByNameES2_E7KeyTypeZNS1_24lookupPStateImm0_1ByNameES2_E4CompET_S8_S8_RKT0_T1_.exit, %_ZN4llvmneENS_9StringRefES0_.exit, %_ZN4llvmneENS_9StringRefES0_.exit.thread14
  %.0 = phi ptr [ %i.x, %_ZN4llvmneENS_9StringRefES0_.exit.thread14 ], [ null, %_ZN4llvmneENS_9StringRefES0_.exit ], [ null, %_ZSt11lower_boundIPKZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS0_9StringRefEE9IndexTypeZNS1_24lookupPStateImm0_1ByNameES2_E7KeyTypeZNS1_24lookupPStateImm0_1ByNameES2_E4CompET_S8_S8_RKT0_T1_.exit ], [ null, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = icmp eq ptr %.val9, %i.y
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.aa = icmp ult i64 %.val10, 16
  call void @llvm.assume(i1 %i.aa)
  br label %_ZZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS_9StringRefEEN7KeyTypeD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !15
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.val9, i64 noundef %i.ac) #18
  br label %_ZZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS_9StringRefEEN7KeyTypeD2Ev.exit

_ZZN4llvm13AArch64PState24lookupPStateImm0_1ByNameENS_9StringRefEEN7KeyTypeD2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4llvm17AArch64TIndexHint12getTIndexStrENS_11StringTable6OffsetE(i32 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @_ZN4llvm17AArch64TIndexHintL25TIndexsListStringsStorageE, i64 %i.a ; 2 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #16
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.c, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm17AArch64TIndexHint18lookupTIndexByNameENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #2 {
.lr.ph.i.i:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %3 = alloca %struct.KeyType.89, align 8         ; 6 uses
  store ptr %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZNK4llvm9StringRef5upperB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  %.val9 = load ptr, ptr %3, align 8              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val10 = load i64, ptr %i.b, align 8           ; 5 uses
  %cond = icmp eq i64 %.val10, 0
  br i1 %cond, label %_ZN4llvmneENS_9StringRefES0_.exit.thread, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val10, i64 2)
  %i.c = call i32 @memcmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm17AArch64TIndexHintL25TIndexsListStringsStorageE, i64 4), ptr noundef readonly %.val9, i64 noundef %.sroa.speculated.i.i.i.i.i) #17
  %.fr.i.i.i.i.i = freeze i32 %i.c                ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  %.not.i.i = icmp eq i64 %.val10, 2              ; 2 uses
  br i1 %.not.not.i.i.i.i.i, label %.thread.i.i.i.i.i, label %_ZSt11lower_boundIPKZN4llvm17AArch64TIndexHint18lookupTIndexByNameENS0_9StringRefEE9IndexTypeZNS1_18lookupTIndexByNameES2_E7KeyTypeZNS1_18lookupTIndexByNameES2_E4CompET_S8_S8_RKT0_T1_.exit

.thread.i.i.i.i.i:                                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i
  br i1 %.not.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZSt11lower_boundIPKZN4llvm17AArch64TIndexHint18lookupTIndexByNameENS0_9StringRefEE9IndexTypeZNS1_18lookupTIndexByNameES2_E7KeyTypeZNS1_18lookupTIndexByNameES2_E4CompET_S8_S8_RKT0_T1_.exit: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i
  %i.d = icmp sgt i32 %.fr.i.i.i.i.i, -1
  %or.cond24 = and i1 %i.d, %.not.i.i
  br i1 %or.cond24, label %_ZN4llvmneENS_9StringRefES0_.exit, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit:                ; preds = %.thread.i.i.i.i.i, %_ZSt11lower_boundIPKZN4llvm17AArch64TIndexHint18lookupTIndexByNameENS0_9StringRefEE9IndexTypeZNS1_18lookupTIndexByNameES2_E7KeyTypeZNS1_18lookupTIndexByNameES2_E4CompET_S8_S8_RKT0_T1_.exit
  %bcmp.i.i = call i32 @bcmp(ptr %.val9, ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm17AArch64TIndexHintL25TIndexsListStringsStorageE, i64 4), i64 %.val10)
  %.not = icmp eq i32 %bcmp.i.i, 0
  %spec.select = select i1 %.not, ptr @_ZN4llvm17AArch64TIndexHintL11TIndexsListE, ptr null
  br label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit, %.lr.ph.i.i, %.thread.i.i.i.i.i, %_ZSt11lower_boundIPKZN4llvm17AArch64TIndexHint18lookupTIndexByNameENS0_9StringRefEE9IndexTypeZNS1_18lookupTIndexByNameES2_E7KeyTypeZNS1_18lookupTIndexByNameES2_E4CompET_S8_S8_RKT0_T1_.exit
  %.0 = phi ptr [ null, %.thread.i.i.i.i.i ], [ %spec.select, %_ZN4llvmneENS_9StringRefES0_.exit ], [ null, %_ZSt11lower_boundIPKZN4llvm17AArch64TIndexHint18lookupTIndexByNameENS0_9StringRefEE9IndexTypeZNS1_18lookupTIndexByNameES2_E7KeyTypeZNS1_18lookupTIndexByNameES2_E4CompET_S8_S8_RKT0_T1_.exit ], [ null, %.lr.ph.i.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %.val9, %i.e
  br i1 %i.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.g = icmp ult i64 %.val10, 16
  call void @llvm.assume(i1 %i.g)
  br label %_ZZN4llvm17AArch64TIndexHint18lookupTIndexByNameENS_9StringRefEEN7KeyTypeD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.h = load i64, ptr %i.e, align 8, !tbaa !15
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %.val9, i64 noundef %i.i) #18
  br label %_ZZN4llvm17AArch64TIndexHint18lookupTIndexByNameENS_9StringRefEEN7KeyTypeD2Ev.exit

_ZZN4llvm17AArch64TIndexHint18lookupTIndexByNameENS_9StringRefEEN7KeyTypeD2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN4llvm17AArch64TIndexHint22lookupTIndexByEncodingEh(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i8 %0, 1
  %spec.select = select i1 %.not, ptr @_ZN4llvm17AArch64TIndexHintL11TIndexsListE, ptr null
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4llvm13AArch64SysReg12getSysRegStrENS_11StringTable6OffsetE(i32 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @_ZN4llvm13AArch64SysRegL25SysRegsListStringsStorageE, i64 %i.a ; 2 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #16
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.c, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, ptr } @_ZN4llvm13AArch64SysReg22lookupSysRegByEncodingEt(i16 noundef zeroext %0) local_unnamed_addr #4 {
_ZSt9__advanceIPKN4llvm13AArch64SysReg6SysRegElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i:
  %i.a = zext i16 %0 to i32                       ; 4 uses
  br label %_ZSt9__advanceIPKN4llvm13AArch64SysReg6SysRegElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIPKN4llvm13AArch64SysReg6SysRegElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.c, %_ZSt9__advanceIPKN4llvm13AArch64SysReg6SysRegElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.01320.i.i = phi i64 [ 1657, %_ZSt9__advanceIPKN4llvm13AArch64SysReg6SysRegElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.2.i.i, %bb.c ] ; 3 uses
  %.019.i.i = phi ptr [ @_ZN4llvm13AArch64SysRegL11SysRegsListE, %_ZSt9__advanceIPKN4llvm13AArch64SysReg6SysRegElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i, %bb.c ] ; 4 uses
  %i.b = lshr i64 %.01320.i.i, 1                  ; 5 uses
  %.idx24 = shl nuw nsw i64 %i.b, 6               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 %.idx24 ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val.i.i = load i32, ptr %i.d, align 4, !tbaa !97 ; 2 uses
  %i.e = icmp ult i32 %.val.i.i, %i.a
  br i1 %i.e, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZSt9__advanceIPKN4llvm13AArch64SysReg6SysRegElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.g = xor i64 %i.b, -1
  %i.h = add nsw i64 %.01320.i.i, %i.g
  br label %bb.c

bb.b:                                             ; preds = %_ZSt9__advanceIPKN4llvm13AArch64SysReg6SysRegElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.i = icmp ugt i32 %.val.i.i, %i.a
  br i1 %i.i, label %bb.c, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.b
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_ZSt13__lower_boundIPKN4llvm13AArch64SysReg6SysRegEZNS1_22lookupSysRegByEncodingEtE7KeyTypeN9__gnu_cxx5__ops14_Iter_comp_valIZNS1_22lookupSysRegByEncodingEtE4CompEEET_SB_SB_RKT0_T1_.exit.i.i, label %_ZSt9__advanceIPKN4llvm13AArch64SysReg6SysRegElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPKN4llvm13AArch64SysReg6SysRegElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %.critedge.i.i, %_ZSt9__advanceIPKN4llvm13AArch64SysReg6SysRegElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.05.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIPKN4llvm13AArch64SysReg6SysRegElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.b, %.critedge.i.i ] ; 2 uses
  %.0114.i.i.i = phi ptr [ %.112.i.i.i, %_ZSt9__advanceIPKN4llvm13AArch64SysReg6SysRegElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %.019.i.i, %.critedge.i.i ] ; 2 uses
  %i.j = lshr i64 %.05.i.i.i, 1                   ; 3 uses
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %.0114.i.i.i, i64 %i.j ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val.i.i.i = load i32, ptr %i.l, align 4, !tbaa !97
  %i.m = icmp ult i32 %.val.i.i.i, %i.a           ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.o = xor i64 %i.j, -1
  %i.p = add nsw i64 %.05.i.i.i, %i.o
  %.112.i.i.i = select i1 %i.m, ptr %i.n, ptr %.0114.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.j  ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIPKN4llvm13AArch64SysReg6SysRegElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt13__lower_boundIPKN4llvm13AArch64SysReg6SysRegEZNS1_22lookupSysRegByEncodingEtE7KeyTypeN9__gnu_cxx5__ops14_Iter_comp_valIZNS1_22lookupSysRegByEncodingEtE4CompEEET_SB_SB_RKT0_T1_.exit.i.i, !llvm.loop !92

_ZSt13__lower_boundIPKN4llvm13AArch64SysReg6SysRegEZNS1_22lookupSysRegByEncodingEtE7KeyTypeN9__gnu_cxx5__ops14_Iter_comp_valIZNS1_22lookupSysRegByEncodingEtE4CompEEET_SB_SB_RKT0_T1_.exit.i.i: ; preds = %_ZSt9__advanceIPKN4llvm13AArch64SysReg6SysRegElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %.critedge.i.i
  %.011.lcssa.i.i.i = phi ptr [ %.019.i.i, %.critedge.i.i ], [ %.112.i.i.i, %_ZSt9__advanceIPKN4llvm13AArch64SysReg6SysRegElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %.idx = shl nuw nsw i64 %.01320.i.i, 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.s = add nuw nsw i64 %.idx24, 64
  %gepdiff = sub nsw i64 %.idx, %i.s
  %i.t = ashr exact i64 %gepdiff, 6               ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %_ZSt9__advanceIPKN4llvm13AArch64SysReg6SysRegElEvRT_T0_St26random_access_iterator_tag.exit.i24.i.i, label %_ZSt11equal_rangeIPKN4llvm13AArch64SysReg6SysRegEZNS1_22lookupSysRegByEncodingEtE7KeyTypeZNS1_22lookupSysRegByEncodingEtE4CompESt4pairIT_S8_ES8_S8_RKT0_T1_.exit

end_hunk_0
begin_hunk_1_@_ZN4llvm10AArch64GIC9getGICStrENS_11StringTable6OffsetE:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN4llvm10AArch64GIC19lookupGICByEncodingEt(i16 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  br label %_ZSt9__advanceIPKN4llvm10AArch64GIC3GICElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIPKN4llvm10AArch64GIC3GICElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.a, %_ZSt9__advanceIPKN4llvm10AArch64GIC3GICElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.05.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIPKN4llvm10AArch64GIC3GICElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ 25, %bb.a ] ; 2 uses
  %.0114.i.i = phi ptr [ %.112.i.i, %_ZSt9__advanceIPKN4llvm10AArch64GIC3GICElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ @_ZN4llvm10AArch64GICL8GICTableE, %bb.a ] ; 2 uses
  %i.a = lshr i64 %.05.i.i, 1                     ; 3 uses
  %i.b = getelementptr inbounds nuw [64 x i8], ptr %.0114.i.i, i64 %i.a ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val.i.i = load i16, ptr %i.c, align 4, !tbaa !13
  %i.d = icmp ult i16 %.val.i.i, %0               ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.f = xor i64 %i.a, -1
  %i.g = add nsw i64 %.05.i.i, %i.f
  %.112.i.i = select i1 %i.d, ptr %i.e, ptr %.0114.i.i ; 4 uses
  %.1.i.i = select i1 %i.d, i64 %i.g, i64 %i.a    ; 2 uses
  %i.h = icmp sgt i64 %.1.i.i, 0
  br i1 %i.h, label %_ZSt9__advanceIPKN4llvm10AArch64GIC3GICElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKN4llvm10AArch64GIC3GICEZNS1_19lookupGICByEncodingEtE7KeyTypeZNS1_19lookupGICByEncodingEtE4CompET_S7_S7_RKT0_T1_.exit, !llvm.loop !163

_ZSt11lower_boundIPKN4llvm10AArch64GIC3GICEZNS1_19lookupGICByEncodingEtE7KeyTypeZNS1_19lookupGICByEncodingEtE4CompET_S7_S7_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIPKN4llvm10AArch64GIC3GICElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.i = icmp eq ptr %.112.i.i, getelementptr inbounds nuw (i8, ptr @_ZN4llvm10AArch64GICL8GICTableE, i64 1600)
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZSt11lower_boundIPKN4llvm10AArch64GIC3GICEZNS1_19lookupGICByEncodingEtE7KeyTypeZNS1_19lookupGICByEncodingEtE4CompET_S7_S7_RKT0_T1_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.112.i.i, i64 4
  %i.k = load i16, ptr %i.j, align 4, !tbaa !13
  %.not = icmp eq i16 %0, %i.k
  %spec.select = select i1 %.not, ptr %.112.i.i, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZSt11lower_boundIPKN4llvm10AArch64GIC3GICEZNS1_19lookupGICByEncodingEtE7KeyTypeZNS1_19lookupGICByEncodingEtE4CompET_S7_S7_RKT0_T1_.exit
  %.0 = phi ptr [ null, %_ZSt11lower_boundIPKN4llvm10AArch64GIC3GICEZNS1_19lookupGICByEncodingEtE7KeyTypeZNS1_19lookupGICByEncodingEtE4CompET_S7_S7_RKT0_T1_.exit ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm10AArch64GIC15lookupGICByNameENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %3 = alloca %struct.KeyType.126, align 8        ; 6 uses
  store ptr %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZNK4llvm9StringRef5upperB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  %.val9 = load ptr, ptr %3, align 8              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val10 = load i64, ptr %i.b, align 8           ; 7 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm10AArch64GIC15lookupGICByNameENS2_9StringRefEE4CompEclIPKZNS3_15lookupGICByNameES4_E9IndexTypeKZNS3_15lookupGICByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i, %bb.a
  %.04.i.i = phi i64 [ %.1.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm10AArch64GIC15lookupGICByNameENS2_9StringRefEE4CompEclIPKZNS3_15lookupGICByNameES4_E9IndexTypeKZNS3_15lookupGICByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i ], [ 25, %bb.a ] ; 2 uses
  %.0113.i.i = phi ptr [ %.112.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm10AArch64GIC15lookupGICByNameENS2_9StringRefEE4CompEclIPKZNS3_15lookupGICByNameES4_E9IndexTypeKZNS3_15lookupGICByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i ], [ @_ZZN4llvm10AArch64GIC15lookupGICByNameENS_9StringRefEE5Index, %bb.a ] ; 2 uses
  %i.c = lshr i64 %.04.i.i, 1                     ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.0113.i.i, i64 %i.c ; 2 uses
  %.val.i.i = load i32, ptr %i.d, align 4, !tbaa !166
  %i.e = zext i32 %.val.i.i to i64
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN4llvm10AArch64GICL22GICTableStringsStorageE, i64 %i.e ; 2 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #16 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val10, i64 %i.g) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.h, label %.thread.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = call i32 @memcmp(ptr noundef nonnull %i.f, ptr noundef readonly %.val9, i64 noundef %.sroa.speculated.i.i.i.i.i) #17
  %.fr.i.i.i.i.i = freeze i32 %i.i                ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  %.inv.i.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i = select i1 %.inv.i.i.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i, label %.thread.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm10AArch64GIC15lookupGICByNameENS2_9StringRefEE4CompEclIPKZNS3_15lookupGICByNameES4_E9IndexTypeKZNS3_15lookupGICByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i, %.lr.ph.i.i
  %i.j = icmp eq i64 %i.g, %.val10
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm10AArch64GIC15lookupGICByNameENS2_9StringRefEE4CompEclIPKZNS3_15lookupGICByNameES4_E9IndexTypeKZNS3_15lookupGICByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.thread.i.i.i.i.i
  %i.k = icmp ult i64 %i.g, %.val10
  %i.l = select i1 %i.k, i32 -1, i32 1
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm10AArch64GIC15lookupGICByNameENS2_9StringRefEE4CompEclIPKZNS3_15lookupGICByNameES4_E9IndexTypeKZNS3_15lookupGICByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm10AArch64GIC15lookupGICByNameENS2_9StringRefEE4CompEclIPKZNS3_15lookupGICByNameES4_E9IndexTypeKZNS3_15lookupGICByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i: ; preds = %bb.b, %.thread.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i
  %.1.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i ], [ %i.l, %bb.b ], [ 0, %.thread.i.i.i.i.i ]
  %i.m = icmp slt i32 %.1.i.i.i.i.i, 0            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = xor i64 %i.c, -1
  %i.p = add nsw i64 %.04.i.i, %i.o
  %.112.i.i = select i1 %i.m, ptr %i.n, ptr %.0113.i.i ; 4 uses
  %.1.i.i = select i1 %i.m, i64 %i.p, i64 %i.c    ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i, 0
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt11lower_boundIPKZN4llvm10AArch64GIC15lookupGICByNameENS0_9StringRefEE9IndexTypeZNS1_15lookupGICByNameES2_E7KeyTypeZNS1_15lookupGICByNameES2_E4CompET_S8_S8_RKT0_T1_.exit, !llvm.loop !164

_ZSt11lower_boundIPKZN4llvm10AArch64GIC15lookupGICByNameENS0_9StringRefEE9IndexTypeZNS1_15lookupGICByNameES2_E7KeyTypeZNS1_15lookupGICByNameES2_E4CompET_S8_S8_RKT0_T1_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm10AArch64GIC15lookupGICByNameENS2_9StringRefEE4CompEclIPKZNS3_15lookupGICByNameES4_E9IndexTypeKZNS3_15lookupGICByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i
  %i.r = icmp eq ptr %.112.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN4llvm10AArch64GIC15lookupGICByNameENS_9StringRefEE5Index, i64 200)
  br i1 %i.r, label %_ZN4llvmneENS_9StringRefES0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZSt11lower_boundIPKZN4llvm10AArch64GIC15lookupGICByNameENS0_9StringRefEE9IndexTypeZNS1_15lookupGICByNameES2_E7KeyTypeZNS1_15lookupGICByNameES2_E4CompET_S8_S8_RKT0_T1_.exit
  %i.s = load i32, ptr %.112.i.i, align 4, !tbaa !166
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4llvm10AArch64GICL22GICTableStringsStorageE, i64 %i.t ; 2 uses
  %i.v = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #16
  %.not.i.i = icmp eq i64 %.val10, %i.v
  br i1 %.not.i.i, label %bb.d, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i64 %.val10, 0
  br i1 %i.w, label %_ZN4llvmneENS_9StringRefES0_.exit.thread14, label %_ZN4llvmneENS_9StringRefES0_.exit

_ZN4llvmneENS_9StringRefES0_.exit:                ; preds = %bb.d
  %bcmp.i.i = call i32 @bcmp(ptr %.val9, ptr nonnull %i.u, i64 %.val10)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %_ZN4llvmneENS_9StringRefES0_.exit.thread14, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread14:       ; preds = %bb.d, %_ZN4llvmneENS_9StringRefES0_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.112.i.i, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !167
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr @_ZN4llvm10AArch64GICL8GICTableE, i64 %i.z
  br label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread:         ; preds = %bb.c, %_ZSt11lower_boundIPKZN4llvm10AArch64GIC15lookupGICByNameENS0_9StringRefEE9IndexTypeZNS1_15lookupGICByNameES2_E7KeyTypeZNS1_15lookupGICByNameES2_E4CompET_S8_S8_RKT0_T1_.exit, %_ZN4llvmneENS_9StringRefES0_.exit, %_ZN4llvmneENS_9StringRefES0_.exit.thread14
  %.0 = phi ptr [ %i.aa, %_ZN4llvmneENS_9StringRefES0_.exit.thread14 ], [ null, %_ZN4llvmneENS_9StringRefES0_.exit ], [ null, %_ZSt11lower_boundIPKZN4llvm10AArch64GIC15lookupGICByNameENS0_9StringRefEE9IndexTypeZNS1_15lookupGICByNameES2_E7KeyTypeZNS1_15lookupGICByNameES2_E4CompET_S8_S8_RKT0_T1_.exit ], [ null, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %.val9, %i.ab
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.ad = icmp ult i64 %.val10, 16
  call void @llvm.assume(i1 %i.ad)
  br label %_ZZN4llvm10AArch64GIC15lookupGICByNameENS_9StringRefEEN7KeyTypeD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !15
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %.val9, i64 noundef %i.af) #18
  br label %_ZZN4llvm10AArch64GIC15lookupGICByNameENS_9StringRefEEN7KeyTypeD2Ev.exit

_ZZN4llvm10AArch64GIC15lookupGICByNameENS_9StringRefEEN7KeyTypeD2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4llvm11AArch64GICR10getGICRStrENS_11StringTable6OffsetE(i32 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @_ZN4llvm11AArch64GICRL23GICRTableStringsStorageE, i64 %i.a ; 2 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #16
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.c, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN4llvm11AArch64GICR20lookupGICRByEncodingEt(i16 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i16 %0, -2
  %.not = icmp eq i16 %i.a, 1560
  %i.b = zext i16 %0 to i64
  %i.c = getelementptr [64 x i8], ptr @_ZN4llvm11AArch64GICRL9GICRTableE, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -99840
  %.0 = select i1 %.not, ptr %i.d, ptr null
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm11AArch64GICR16lookupGICRByNameENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #2 {
.lr.ph.i.i.peel.begin:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %3 = alloca %struct.KeyType.131, align 8        ; 6 uses
  store ptr %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZNK4llvm9StringRef5upperB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  %.val9 = load ptr, ptr %3, align 8              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val10 = load i64, ptr %i.b, align 8           ; 11 uses
  %cond = icmp eq i64 %.val10, 0
  br i1 %cond, label %bb.a, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel: ; preds = %.lr.ph.i.i.peel.begin
  %.sroa.speculated.i.i.i.i.i.peel = call i64 @llvm.umin.i64(i64 %.val10, i64 6)
  %i.c = call i32 @memcmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm11AArch64GICRL23GICRTableStringsStorageE, i64 18), ptr noundef readonly %.val9, i64 noundef %.sroa.speculated.i.i.i.i.i.peel) #17
  %.fr.i.i.i.i.i.peel = freeze i32 %i.c           ; 2 uses
  %.not.not.i.i.i.i.i.peel = icmp eq i32 %.fr.i.i.i.i.i.peel, 0
  %.inv.i.i.i.i.i.peel = icmp sgt i32 %.fr.i.i.i.i.i.peel, -1
  br i1 %.not.not.i.i.i.i.i.peel, label %.thread.i.i.i.i.i.peel, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm11AArch64GICR16lookupGICRByNameENS2_9StringRefEE4CompEclIPKZNS3_16lookupGICRByNameES4_E9IndexTypeKZNS3_16lookupGICRByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel

.thread.i.i.i.i.i.peel:                           ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel
  %i.d = icmp eq i64 %.val10, 6
  br i1 %i.d, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm11AArch64GICR16lookupGICRByNameENS2_9StringRefEE4CompEclIPKZNS3_16lookupGICRByNameES4_E9IndexTypeKZNS3_16lookupGICRByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i.i.peel.begin, %.thread.i.i.i.i.i.peel
  %i.e = icmp ult i64 %.val10, 7
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm11AArch64GICR16lookupGICRByNameENS2_9StringRefEE4CompEclIPKZNS3_16lookupGICRByNameES4_E9IndexTypeKZNS3_16lookupGICRByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm11AArch64GICR16lookupGICRByNameENS2_9StringRefEE4CompEclIPKZNS3_16lookupGICRByNameES4_E9IndexTypeKZNS3_16lookupGICRByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel: ; preds = %bb.a, %.thread.i.i.i.i.i.peel, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel
  %.1.i.i.i.i.i.peel = phi i1 [ %.inv.i.i.i.i.i.peel, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel ], [ %i.e, %bb.a ], [ true, %.thread.i.i.i.i.i.peel ] ; 2 uses
  %.112.i.i.peel = select i1 %.1.i.i.i.i.i.peel, ptr @_ZZN4llvm11AArch64GICR16lookupGICRByNameENS_9StringRefEE5Index, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4llvm11AArch64GICR16lookupGICRByNameENS_9StringRefEE5Index, i64 16) ; 3 uses
  br i1 %.1.i.i.i.i.i.peel, label %.peel.newph, label %_ZSt11lower_boundIPKZN4llvm11AArch64GICR16lookupGICRByNameENS0_9StringRefEE9IndexTypeZNS1_16lookupGICRByNameES2_E7KeyTypeZNS1_16lookupGICRByNameES2_E4CompET_S8_S8_RKT0_T1_.exit

.peel.newph:                                      ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm11AArch64GICR16lookupGICRByNameENS2_9StringRefEE4CompEclIPKZNS3_16lookupGICRByNameES4_E9IndexTypeKZNS3_16lookupGICRByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel
  %.val.i.i = load i32, ptr %.112.i.i.peel, align 4, !tbaa !169
  %i.f = zext i32 %.val.i.i to i64
  %i.g = getelementptr inbounds nuw i8, ptr @_ZN4llvm11AArch64GICRL23GICRTableStringsStorageE, i64 %i.f ; 2 uses
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #16 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val10, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  %i.j = icmp eq i64 %i.h, %.val10
  %i.k = icmp ult i64 %i.h, %.val10
  %i.l = select i1 %i.k, i32 -1, i32 1
  br i1 %i.i, label %.thread.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i: ; preds = %.peel.newph
  %i.m = call i32 @memcmp(ptr noundef nonnull %i.g, ptr noundef readonly %.val9, i64 noundef %.sroa.speculated.i.i.i.i.i) #17
  %.fr.i.i.i.i.i = freeze i32 %i.m                ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  %.inv.i.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i = select i1 %.inv.i.i.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i, label %.thread.i.i.i.i.i, label %_ZSt11lower_boundIPKZN4llvm11AArch64GICR16lookupGICRByNameENS0_9StringRefEE9IndexTypeZNS1_16lookupGICRByNameES2_E7KeyTypeZNS1_16lookupGICRByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit

.thread.i.i.i.i.i:                                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i, %.peel.newph
  %spec.select = select i1 %i.j, i32 0, i32 %i.l
  br label %_ZSt11lower_boundIPKZN4llvm11AArch64GICR16lookupGICRByNameENS0_9StringRefEE9IndexTypeZNS1_16lookupGICRByNameES2_E7KeyTypeZNS1_16lookupGICRByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit

_ZSt11lower_boundIPKZN4llvm11AArch64GICR16lookupGICRByNameENS0_9StringRefEE9IndexTypeZNS1_16lookupGICRByNameES2_E7KeyTypeZNS1_16lookupGICRByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit: ; preds = %.thread.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i
  %.1.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i ], [ %spec.select, %.thread.i.i.i.i.i ]
  %i.n = icmp slt i32 %.1.i.i.i.i.i, 0
  %.112.i.i.idx = select i1 %i.n, i64 8, i64 0
  %.112.i.i = getelementptr inbounds nuw i8, ptr %.112.i.i.peel, i64 %.112.i.i.idx
  br label %_ZSt11lower_boundIPKZN4llvm11AArch64GICR16lookupGICRByNameENS0_9StringRefEE9IndexTypeZNS1_16lookupGICRByNameES2_E7KeyTypeZNS1_16lookupGICRByNameES2_E4CompET_S8_S8_RKT0_T1_.exit

_ZSt11lower_boundIPKZN4llvm11AArch64GICR16lookupGICRByNameENS0_9StringRefEE9IndexTypeZNS1_16lookupGICRByNameES2_E7KeyTypeZNS1_16lookupGICRByNameES2_E4CompET_S8_S8_RKT0_T1_.exit: ; preds = %_ZSt11lower_boundIPKZN4llvm11AArch64GICR16lookupGICRByNameENS0_9StringRefEE9IndexTypeZNS1_16lookupGICRByNameES2_E7KeyTypeZNS1_16lookupGICRByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm11AArch64GICR16lookupGICRByNameENS2_9StringRefEE4CompEclIPKZNS3_16lookupGICRByNameES4_E9IndexTypeKZNS3_16lookupGICRByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel
  %.112.i.i.lcssa = phi ptr [ %.112.i.i.peel, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm11AArch64GICR16lookupGICRByNameENS2_9StringRefEE4CompEclIPKZNS3_16lookupGICRByNameES4_E9IndexTypeKZNS3_16lookupGICRByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel ], [ %.112.i.i, %_ZSt11lower_boundIPKZN4llvm11AArch64GICR16lookupGICRByNameENS0_9StringRefEE9IndexTypeZNS1_16lookupGICRByNameES2_E7KeyTypeZNS1_16lookupGICRByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit ] ; 3 uses
  %i.o = icmp eq ptr %.112.i.i.lcssa, getelementptr inbounds nuw (i8, ptr @_ZZN4llvm11AArch64GICR16lookupGICRByNameENS_9StringRefEE5Index, i64 16)
  br i1 %i.o, label %_ZN4llvmneENS_9StringRefES0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZSt11lower_boundIPKZN4llvm11AArch64GICR16lookupGICRByNameENS0_9StringRefEE9IndexTypeZNS1_16lookupGICRByNameES2_E7KeyTypeZNS1_16lookupGICRByNameES2_E4CompET_S8_S8_RKT0_T1_.exit
  %i.p = load i32, ptr %.112.i.i.lcssa, align 4, !tbaa !169
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @_ZN4llvm11AArch64GICRL23GICRTableStringsStorageE, i64 %i.q ; 2 uses
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #16
  %.not.i.i = icmp eq i64 %.val10, %i.s
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.t = icmp eq i64 %.val10, 0
  br i1 %i.t, label %_ZN4llvmneENS_9StringRefES0_.exit.thread14, label %_ZN4llvmneENS_9StringRefES0_.exit

_ZN4llvmneENS_9StringRefES0_.exit:                ; preds = %bb.c
  %bcmp.i.i = call i32 @bcmp(ptr %.val9, ptr nonnull %i.r, i64 %.val10)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %_ZN4llvmneENS_9StringRefES0_.exit.thread14, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread14:       ; preds = %bb.c, %_ZN4llvmneENS_9StringRefES0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.112.i.i.lcssa, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !170
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [64 x i8], ptr @_ZN4llvm11AArch64GICRL9GICRTableE, i64 %i.w
  br label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread:         ; preds = %bb.b, %_ZSt11lower_boundIPKZN4llvm11AArch64GICR16lookupGICRByNameENS0_9StringRefEE9IndexTypeZNS1_16lookupGICRByNameES2_E7KeyTypeZNS1_16lookupGICRByNameES2_E4CompET_S8_S8_RKT0_T1_.exit, %_ZN4llvmneENS_9StringRefES0_.exit, %_ZN4llvmneENS_9StringRefES0_.exit.thread14
  %.0 = phi ptr [ %i.x, %_ZN4llvmneENS_9StringRefES0_.exit.thread14 ], [ null, %_ZN4llvmneENS_9StringRefES0_.exit ], [ null, %_ZSt11lower_boundIPKZN4llvm11AArch64GICR16lookupGICRByNameENS0_9StringRefEE9IndexTypeZNS1_16lookupGICRByNameES2_E7KeyTypeZNS1_16lookupGICRByNameES2_E4CompET_S8_S8_RKT0_T1_.exit ], [ null, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = icmp eq ptr %.val9, %i.y
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.aa = icmp ult i64 %.val10, 16
  call void @llvm.assume(i1 %i.aa)
  br label %_ZZN4llvm11AArch64GICR16lookupGICRByNameENS_9StringRefEEN7KeyTypeD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !15
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.val9, i64 noundef %i.ac) #18
  br label %_ZZN4llvm11AArch64GICR16lookupGICRByNameENS_9StringRefEEN7KeyTypeD2Ev.exit

_ZZN4llvm11AArch64GICR16lookupGICRByNameENS_9StringRefEEN7KeyTypeD2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4llvm10AArch64GSB9getGSBStrENS_11StringTable6OffsetE(i32 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @_ZN4llvm10AArch64GSBL22GSBTableStringsStorageE, i64 %i.a ; 2 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #16
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.c, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN4llvm10AArch64GSB19lookupGSBByEncodingEt(i16 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i16 %0, -2
  %.not = icmp eq i16 %i.a, 1536
  %i.b = zext i16 %0 to i64
  %i.c = getelementptr [56 x i8], ptr @_ZN4llvm10AArch64GSBL8GSBTableE, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -86016
  %.0 = select i1 %.not, ptr %i.d, ptr null
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm10AArch64GSB15lookupGSBByNameENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #2 {
.lr.ph.i.i.peel.begin:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %3 = alloca %struct.KeyType.136, align 8        ; 6 uses
  store ptr %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZNK4llvm9StringRef5upperB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  %.val9 = load ptr, ptr %3, align 8              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val10 = load i64, ptr %i.b, align 8           ; 11 uses
  %cond = icmp eq i64 %.val10, 0
  br i1 %cond, label %bb.a, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel: ; preds = %.lr.ph.i.i.peel.begin
  %.sroa.speculated.i.i.i.i.i.peel = call i64 @llvm.umin.i64(i64 %.val10, i64 3)
  %i.c = call i32 @memcmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm10AArch64GSBL22GSBTableStringsStorageE, i64 13), ptr noundef readonly %.val9, i64 noundef %.sroa.speculated.i.i.i.i.i.peel) #17
  %.fr.i.i.i.i.i.peel = freeze i32 %i.c           ; 2 uses
  %.not.not.i.i.i.i.i.peel = icmp eq i32 %.fr.i.i.i.i.i.peel, 0
  %.inv.i.i.i.i.i.peel = icmp sgt i32 %.fr.i.i.i.i.i.peel, -1
  br i1 %.not.not.i.i.i.i.i.peel, label %.thread.i.i.i.i.i.peel, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm10AArch64GSB15lookupGSBByNameENS2_9StringRefEE4CompEclIPKZNS3_15lookupGSBByNameES4_E9IndexTypeKZNS3_15lookupGSBByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel

.thread.i.i.i.i.i.peel:                           ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel
  %i.d = icmp eq i64 %.val10, 3
  br i1 %i.d, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm10AArch64GSB15lookupGSBByNameENS2_9StringRefEE4CompEclIPKZNS3_15lookupGSBByNameES4_E9IndexTypeKZNS3_15lookupGSBByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i.i.peel.begin, %.thread.i.i.i.i.i.peel
  %i.e = icmp ult i64 %.val10, 4
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm10AArch64GSB15lookupGSBByNameENS2_9StringRefEE4CompEclIPKZNS3_15lookupGSBByNameES4_E9IndexTypeKZNS3_15lookupGSBByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm10AArch64GSB15lookupGSBByNameENS2_9StringRefEE4CompEclIPKZNS3_15lookupGSBByNameES4_E9IndexTypeKZNS3_15lookupGSBByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel: ; preds = %bb.a, %.thread.i.i.i.i.i.peel, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel
  %.1.i.i.i.i.i.peel = phi i1 [ %.inv.i.i.i.i.i.peel, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel ], [ %i.e, %bb.a ], [ true, %.thread.i.i.i.i.i.peel ] ; 2 uses
  %.112.i.i.peel = select i1 %.1.i.i.i.i.i.peel, ptr @_ZZN4llvm10AArch64GSB15lookupGSBByNameENS_9StringRefEE5Index, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4llvm10AArch64GSB15lookupGSBByNameENS_9StringRefEE5Index, i64 16) ; 3 uses
  br i1 %.1.i.i.i.i.i.peel, label %.peel.newph, label %_ZSt11lower_boundIPKZN4llvm10AArch64GSB15lookupGSBByNameENS0_9StringRefEE9IndexTypeZNS1_15lookupGSBByNameES2_E7KeyTypeZNS1_15lookupGSBByNameES2_E4CompET_S8_S8_RKT0_T1_.exit

.peel.newph:                                      ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm10AArch64GSB15lookupGSBByNameENS2_9StringRefEE4CompEclIPKZNS3_15lookupGSBByNameES4_E9IndexTypeKZNS3_15lookupGSBByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel
  %.val.i.i = load i32, ptr %.112.i.i.peel, align 4, !tbaa !172
  %i.f = zext i32 %.val.i.i to i64
  %i.g = getelementptr inbounds nuw i8, ptr @_ZN4llvm10AArch64GSBL22GSBTableStringsStorageE, i64 %i.f ; 2 uses
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #16 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val10, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  %i.j = icmp eq i64 %i.h, %.val10
  %i.k = icmp ult i64 %i.h, %.val10
  %i.l = select i1 %i.k, i32 -1, i32 1
  br i1 %i.i, label %.thread.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i: ; preds = %.peel.newph
  %i.m = call i32 @memcmp(ptr noundef nonnull %i.g, ptr noundef readonly %.val9, i64 noundef %.sroa.speculated.i.i.i.i.i) #17
  %.fr.i.i.i.i.i = freeze i32 %i.m                ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  %.inv.i.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i = select i1 %.inv.i.i.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i, label %.thread.i.i.i.i.i, label %_ZSt11lower_boundIPKZN4llvm10AArch64GSB15lookupGSBByNameENS0_9StringRefEE9IndexTypeZNS1_15lookupGSBByNameES2_E7KeyTypeZNS1_15lookupGSBByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit

.thread.i.i.i.i.i:                                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i, %.peel.newph
  %spec.select = select i1 %i.j, i32 0, i32 %i.l
  br label %_ZSt11lower_boundIPKZN4llvm10AArch64GSB15lookupGSBByNameENS0_9StringRefEE9IndexTypeZNS1_15lookupGSBByNameES2_E7KeyTypeZNS1_15lookupGSBByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit

_ZSt11lower_boundIPKZN4llvm10AArch64GSB15lookupGSBByNameENS0_9StringRefEE9IndexTypeZNS1_15lookupGSBByNameES2_E7KeyTypeZNS1_15lookupGSBByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit: ; preds = %.thread.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i
  %.1.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i ], [ %spec.select, %.thread.i.i.i.i.i ]
  %i.n = icmp slt i32 %.1.i.i.i.i.i, 0
  %.112.i.i.idx = select i1 %i.n, i64 8, i64 0
  %.112.i.i = getelementptr inbounds nuw i8, ptr %.112.i.i.peel, i64 %.112.i.i.idx
  br label %_ZSt11lower_boundIPKZN4llvm10AArch64GSB15lookupGSBByNameENS0_9StringRefEE9IndexTypeZNS1_15lookupGSBByNameES2_E7KeyTypeZNS1_15lookupGSBByNameES2_E4CompET_S8_S8_RKT0_T1_.exit

_ZSt11lower_boundIPKZN4llvm10AArch64GSB15lookupGSBByNameENS0_9StringRefEE9IndexTypeZNS1_15lookupGSBByNameES2_E7KeyTypeZNS1_15lookupGSBByNameES2_E4CompET_S8_S8_RKT0_T1_.exit: ; preds = %_ZSt11lower_boundIPKZN4llvm10AArch64GSB15lookupGSBByNameENS0_9StringRefEE9IndexTypeZNS1_15lookupGSBByNameES2_E7KeyTypeZNS1_15lookupGSBByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm10AArch64GSB15lookupGSBByNameENS2_9StringRefEE4CompEclIPKZNS3_15lookupGSBByNameES4_E9IndexTypeKZNS3_15lookupGSBByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel
  %.112.i.i.lcssa = phi ptr [ %.112.i.i.peel, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm10AArch64GSB15lookupGSBByNameENS2_9StringRefEE4CompEclIPKZNS3_15lookupGSBByNameES4_E9IndexTypeKZNS3_15lookupGSBByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel ], [ %.112.i.i, %_ZSt11lower_boundIPKZN4llvm10AArch64GSB15lookupGSBByNameENS0_9StringRefEE9IndexTypeZNS1_15lookupGSBByNameES2_E7KeyTypeZNS1_15lookupGSBByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit ] ; 3 uses
  %i.o = icmp eq ptr %.112.i.i.lcssa, getelementptr inbounds nuw (i8, ptr @_ZZN4llvm10AArch64GSB15lookupGSBByNameENS_9StringRefEE5Index, i64 16)
  br i1 %i.o, label %_ZN4llvmneENS_9StringRefES0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZSt11lower_boundIPKZN4llvm10AArch64GSB15lookupGSBByNameENS0_9StringRefEE9IndexTypeZNS1_15lookupGSBByNameES2_E7KeyTypeZNS1_15lookupGSBByNameES2_E4CompET_S8_S8_RKT0_T1_.exit
  %i.p = load i32, ptr %.112.i.i.lcssa, align 4, !tbaa !172
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @_ZN4llvm10AArch64GSBL22GSBTableStringsStorageE, i64 %i.q ; 2 uses
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #16
  %.not.i.i = icmp eq i64 %.val10, %i.s
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.t = icmp eq i64 %.val10, 0
  br i1 %i.t, label %_ZN4llvmneENS_9StringRefES0_.exit.thread14, label %_ZN4llvmneENS_9StringRefES0_.exit

_ZN4llvmneENS_9StringRefES0_.exit:                ; preds = %bb.c
  %bcmp.i.i = call i32 @bcmp(ptr %.val9, ptr nonnull %i.r, i64 %.val10)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %_ZN4llvmneENS_9StringRefES0_.exit.thread14, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread14:       ; preds = %bb.c, %_ZN4llvmneENS_9StringRefES0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.112.i.i.lcssa, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !173
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [56 x i8], ptr @_ZN4llvm10AArch64GSBL8GSBTableE, i64 %i.w
  br label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread:         ; preds = %bb.b, %_ZSt11lower_boundIPKZN4llvm10AArch64GSB15lookupGSBByNameENS0_9StringRefEE9IndexTypeZNS1_15lookupGSBByNameES2_E7KeyTypeZNS1_15lookupGSBByNameES2_E4CompET_S8_S8_RKT0_T1_.exit, %_ZN4llvmneENS_9StringRefES0_.exit, %_ZN4llvmneENS_9StringRefES0_.exit.thread14
  %.0 = phi ptr [ %i.x, %_ZN4llvmneENS_9StringRefES0_.exit.thread14 ], [ null, %_ZN4llvmneENS_9StringRefES0_.exit ], [ null, %_ZSt11lower_boundIPKZN4llvm10AArch64GSB15lookupGSBByNameENS0_9StringRefEE9IndexTypeZNS1_15lookupGSBByNameES2_E7KeyTypeZNS1_15lookupGSBByNameES2_E4CompET_S8_S8_RKT0_T1_.exit ], [ null, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = icmp eq ptr %.val9, %i.y
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.aa = icmp ult i64 %.val10, 16
  call void @llvm.assume(i1 %i.aa)
  br label %_ZZN4llvm10AArch64GSB15lookupGSBByNameENS_9StringRefEEN7KeyTypeD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !15
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.val9, i64 noundef %i.ac) #18
  br label %_ZZN4llvm10AArch64GSB15lookupGSBByNameENS_9StringRefEEN7KeyTypeD2Ev.exit

_ZZN4llvm10AArch64GSB15lookupGSBByNameENS_9StringRefEEN7KeyTypeD2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4llvm11AArch64SVCR10getSVCRStrENS_11StringTable6OffsetE(i32 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @_ZN4llvm11AArch64SVCRL23SVCRsListStringsStorageE, i64 %i.a ; 2 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #16
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.c, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN4llvm11AArch64SVCR20lookupSVCRByEncodingEh(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i8 %0, -1
  %.not = icmp ult i8 %i.a, 3
  %i.b = zext i8 %0 to i64
  %i.c = getelementptr [56 x i8], ptr @_ZN4llvm11AArch64SVCRL9SVCRsListE, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -56
  %.0 = select i1 %.not, ptr %i.d, ptr null
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm11AArch64SVCR16lookupSVCRByNameENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %3 = alloca %struct.KeyType.141, align 8        ; 6 uses
  store ptr %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZNK4llvm9StringRef5upperB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  %.val9 = load ptr, ptr %3, align 8              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val10 = load i64, ptr %i.b, align 8           ; 7 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm11AArch64SVCR16lookupSVCRByNameENS2_9StringRefEE4CompEclIPKZNS3_16lookupSVCRByNameES4_E9IndexTypeKZNS3_16lookupSVCRByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i, %bb.a
  %.04.i.i = phi i64 [ %.1.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm11AArch64SVCR16lookupSVCRByNameENS2_9StringRefEE4CompEclIPKZNS3_16lookupSVCRByNameES4_E9IndexTypeKZNS3_16lookupSVCRByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i ], [ 3, %bb.a ] ; 2 uses
  %.0113.i.i = phi ptr [ %.112.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm11AArch64SVCR16lookupSVCRByNameENS2_9StringRefEE4CompEclIPKZNS3_16lookupSVCRByNameES4_E9IndexTypeKZNS3_16lookupSVCRByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i ], [ @_ZZN4llvm11AArch64SVCR16lookupSVCRByNameENS_9StringRefEE5Index, %bb.a ] ; 2 uses
  %i.c = lshr i64 %.04.i.i, 1                     ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.0113.i.i, i64 %i.c ; 2 uses
  %.val.i.i = load i32, ptr %i.d, align 4, !tbaa !176
  %i.e = zext i32 %.val.i.i to i64
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN4llvm11AArch64SVCRL23SVCRsListStringsStorageE, i64 %i.e ; 2 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #16 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val10, i64 %i.g) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.h, label %.thread.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = call i32 @memcmp(ptr noundef nonnull %i.f, ptr noundef readonly %.val9, i64 noundef %.sroa.speculated.i.i.i.i.i) #17
  %.fr.i.i.i.i.i = freeze i32 %i.i                ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  %.inv.i.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i = select i1 %.inv.i.i.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i, label %.thread.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm11AArch64SVCR16lookupSVCRByNameENS2_9StringRefEE4CompEclIPKZNS3_16lookupSVCRByNameES4_E9IndexTypeKZNS3_16lookupSVCRByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i, %.lr.ph.i.i
  %i.j = icmp eq i64 %i.g, %.val10
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm11AArch64SVCR16lookupSVCRByNameENS2_9StringRefEE4CompEclIPKZNS3_16lookupSVCRByNameES4_E9IndexTypeKZNS3_16lookupSVCRByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.thread.i.i.i.i.i
  %i.k = icmp ult i64 %i.g, %.val10
  %i.l = select i1 %i.k, i32 -1, i32 1
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm11AArch64SVCR16lookupSVCRByNameENS2_9StringRefEE4CompEclIPKZNS3_16lookupSVCRByNameES4_E9IndexTypeKZNS3_16lookupSVCRByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm11AArch64SVCR16lookupSVCRByNameENS2_9StringRefEE4CompEclIPKZNS3_16lookupSVCRByNameES4_E9IndexTypeKZNS3_16lookupSVCRByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i: ; preds = %bb.b, %.thread.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i
  %.1.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i ], [ %i.l, %bb.b ], [ 0, %.thread.i.i.i.i.i ]
  %i.m = icmp slt i32 %.1.i.i.i.i.i, 0            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = xor i64 %i.c, -1
  %i.p = add nsw i64 %.04.i.i, %i.o
  %.112.i.i = select i1 %i.m, ptr %i.n, ptr %.0113.i.i ; 4 uses
  %.1.i.i = select i1 %i.m, i64 %i.p, i64 %i.c    ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i, 0
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt11lower_boundIPKZN4llvm11AArch64SVCR16lookupSVCRByNameENS0_9StringRefEE9IndexTypeZNS1_16lookupSVCRByNameES2_E7KeyTypeZNS1_16lookupSVCRByNameES2_E4CompET_S8_S8_RKT0_T1_.exit, !llvm.loop !174

_ZSt11lower_boundIPKZN4llvm11AArch64SVCR16lookupSVCRByNameENS0_9StringRefEE9IndexTypeZNS1_16lookupSVCRByNameES2_E7KeyTypeZNS1_16lookupSVCRByNameES2_E4CompET_S8_S8_RKT0_T1_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm11AArch64SVCR16lookupSVCRByNameENS2_9StringRefEE4CompEclIPKZNS3_16lookupSVCRByNameES4_E9IndexTypeKZNS3_16lookupSVCRByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i
  %i.r = icmp eq ptr %.112.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN4llvm11AArch64SVCR16lookupSVCRByNameENS_9StringRefEE5Index, i64 24)
  br i1 %i.r, label %_ZN4llvmneENS_9StringRefES0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZSt11lower_boundIPKZN4llvm11AArch64SVCR16lookupSVCRByNameENS0_9StringRefEE9IndexTypeZNS1_16lookupSVCRByNameES2_E7KeyTypeZNS1_16lookupSVCRByNameES2_E4CompET_S8_S8_RKT0_T1_.exit
  %i.s = load i32, ptr %.112.i.i, align 4, !tbaa !176
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4llvm11AArch64SVCRL23SVCRsListStringsStorageE, i64 %i.t ; 2 uses
  %i.v = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #16
  %.not.i.i = icmp eq i64 %.val10, %i.v
  br i1 %.not.i.i, label %bb.d, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i64 %.val10, 0
  br i1 %i.w, label %_ZN4llvmneENS_9StringRefES0_.exit.thread14, label %_ZN4llvmneENS_9StringRefES0_.exit

_ZN4llvmneENS_9StringRefES0_.exit:                ; preds = %bb.d
  %bcmp.i.i = call i32 @bcmp(ptr %.val9, ptr nonnull %i.u, i64 %.val10)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %_ZN4llvmneENS_9StringRefES0_.exit.thread14, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread14:       ; preds = %bb.d, %_ZN4llvmneENS_9StringRefES0_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.112.i.i, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !177
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [56 x i8], ptr @_ZN4llvm11AArch64SVCRL9SVCRsListE, i64 %i.z
  br label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread:         ; preds = %bb.c, %_ZSt11lower_boundIPKZN4llvm11AArch64SVCR16lookupSVCRByNameENS0_9StringRefEE9IndexTypeZNS1_16lookupSVCRByNameES2_E7KeyTypeZNS1_16lookupSVCRByNameES2_E4CompET_S8_S8_RKT0_T1_.exit, %_ZN4llvmneENS_9StringRefES0_.exit, %_ZN4llvmneENS_9StringRefES0_.exit.thread14
  %.0 = phi ptr [ %i.aa, %_ZN4llvmneENS_9StringRefES0_.exit.thread14 ], [ null, %_ZN4llvmneENS_9StringRefES0_.exit ], [ null, %_ZSt11lower_boundIPKZN4llvm11AArch64SVCR16lookupSVCRByNameENS0_9StringRefEE9IndexTypeZNS1_16lookupSVCRByNameES2_E7KeyTypeZNS1_16lookupSVCRByNameES2_E4CompET_S8_S8_RKT0_T1_.exit ], [ null, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %.val9, %i.ab
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.ad = icmp ult i64 %.val10, 16
  call void @llvm.assume(i1 %i.ad)
  br label %_ZZN4llvm11AArch64SVCR16lookupSVCRByNameENS_9StringRefEEN7KeyTypeD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !15
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %.val9, i64 noundef %i.af) #18
  br label %_ZZN4llvm11AArch64SVCR16lookupSVCRByNameENS_9StringRefEEN7KeyTypeD2Ev.exit

_ZZN4llvm11AArch64SVCR16lookupSVCRByNameENS_9StringRefEEN7KeyTypeD2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

declare noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr, i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

end_hunk_1
