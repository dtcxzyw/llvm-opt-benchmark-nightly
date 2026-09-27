Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64BaseInfo?download=true
inline.NumInlined: 868
inline.NumDeleted: 514
begin_hunk_0_@_ZN4llvm12AArch64TLBIP17lookupTLBIPByNameENS_9StringRefE:bb.a
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %_ZN4llvmneENS_9StringRefES0_.exit.thread14, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread14:       ; preds = %bb.d, %_ZN4llvmneENS_9StringRefES0_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.112.i.i, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !162
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr @_ZN4llvm12AArch64TLBIPL10TLBIPTableE, i64 %i.z
  br label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread:         ; preds = %bb.c, %_ZSt11lower_boundIPKZN4llvm12AArch64TLBIP17lookupTLBIPByNameENS0_9StringRefEE9IndexTypeZNS1_17lookupTLBIPByNameES2_E7KeyTypeZNS1_17lookupTLBIPByNameES2_E4CompET_S8_S8_RKT0_T1_.exit, %_ZN4llvmneENS_9StringRefES0_.exit, %_ZN4llvmneENS_9StringRefES0_.exit.thread14
  %.0 = phi ptr [ %i.aa, %_ZN4llvmneENS_9StringRefES0_.exit.thread14 ], [ null, %_ZN4llvmneENS_9StringRefES0_.exit ], [ null, %_ZSt11lower_boundIPKZN4llvm12AArch64TLBIP17lookupTLBIPByNameENS0_9StringRefEE9IndexTypeZNS1_17lookupTLBIPByNameES2_E7KeyTypeZNS1_17lookupTLBIPByNameES2_E4CompET_S8_S8_RKT0_T1_.exit ], [ null, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %.val9, %i.ab
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.ad = icmp ult i64 %.val10, 16
  call void @llvm.assume(i1 %i.ad)
  br label %_ZZN4llvm12AArch64TLBIP17lookupTLBIPByNameENS_9StringRefEEN7KeyTypeD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !15
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %.val9, i64 noundef %i.af) #18
  br label %_ZZN4llvm12AArch64TLBIP17lookupTLBIPByNameENS_9StringRefEEN7KeyTypeD2Ev.exit

_ZZN4llvm12AArch64TLBIP17lookupTLBIPByNameENS_9StringRefEEN7KeyTypeD2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4llvm10AArch64GIC9getGICStrENS_11StringTable6OffsetE(i32 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @_ZN4llvm10AArch64GICL22GICTableStringsStorageE, i64 %i.a ; 2 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #16
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.c, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

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
  %1 = icmp ult i16 %0, 1561
  %.sroa.speculated = select i1 %1, i16 1560, i16 1561
  %.not = icmp eq i16 %0, %.sroa.speculated
  %i.a = zext i16 %0 to i64
  %i.b = getelementptr [64 x i8], ptr @_ZN4llvm11AArch64GICRL9GICRTableE, i64 %i.a
  %i.c = getelementptr i8, ptr %i.b, i64 -99840
  %.0 = select i1 %.not, ptr %i.c, ptr null
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
  %.1.i.i.i.i.i.peel = phi i1 [ %.inv.i.i.i.i.i.peel, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel ], [ %i.e, %bb.a ], [ true, %.thread.i.i.i.i.i.peel ] ; 3 uses
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
  %i.o = select i1 %.1.i.i.i.i.i.peel, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4llvm11AArch64GICR16lookupGICRByNameENS_9StringRefEE5Index, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN4llvm11AArch64GICR16lookupGICRByNameENS_9StringRefEE5Index, i64 24)
  %.112.i.i = select i1 %i.n, ptr %i.o, ptr %.112.i.i.peel
  br label %_ZSt11lower_boundIPKZN4llvm11AArch64GICR16lookupGICRByNameENS0_9StringRefEE9IndexTypeZNS1_16lookupGICRByNameES2_E7KeyTypeZNS1_16lookupGICRByNameES2_E4CompET_S8_S8_RKT0_T1_.exit

_ZSt11lower_boundIPKZN4llvm11AArch64GICR16lookupGICRByNameENS0_9StringRefEE9IndexTypeZNS1_16lookupGICRByNameES2_E7KeyTypeZNS1_16lookupGICRByNameES2_E4CompET_S8_S8_RKT0_T1_.exit: ; preds = %_ZSt11lower_boundIPKZN4llvm11AArch64GICR16lookupGICRByNameENS0_9StringRefEE9IndexTypeZNS1_16lookupGICRByNameES2_E7KeyTypeZNS1_16lookupGICRByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm11AArch64GICR16lookupGICRByNameENS2_9StringRefEE4CompEclIPKZNS3_16lookupGICRByNameES4_E9IndexTypeKZNS3_16lookupGICRByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel
  %.112.i.i.lcssa = phi ptr [ %.112.i.i.peel, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm11AArch64GICR16lookupGICRByNameENS2_9StringRefEE4CompEclIPKZNS3_16lookupGICRByNameES4_E9IndexTypeKZNS3_16lookupGICRByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel ], [ %.112.i.i, %_ZSt11lower_boundIPKZN4llvm11AArch64GICR16lookupGICRByNameENS0_9StringRefEE9IndexTypeZNS1_16lookupGICRByNameES2_E7KeyTypeZNS1_16lookupGICRByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit ] ; 3 uses
  %i.p = icmp eq ptr %.112.i.i.lcssa, getelementptr inbounds nuw (i8, ptr @_ZZN4llvm11AArch64GICR16lookupGICRByNameENS_9StringRefEE5Index, i64 16)
  br i1 %i.p, label %_ZN4llvmneENS_9StringRefES0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZSt11lower_boundIPKZN4llvm11AArch64GICR16lookupGICRByNameENS0_9StringRefEE9IndexTypeZNS1_16lookupGICRByNameES2_E7KeyTypeZNS1_16lookupGICRByNameES2_E4CompET_S8_S8_RKT0_T1_.exit
  %i.q = load i32, ptr %.112.i.i.lcssa, align 4, !tbaa !169
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @_ZN4llvm11AArch64GICRL23GICRTableStringsStorageE, i64 %i.r ; 2 uses
  %i.t = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #16
  %.not.i.i = icmp eq i64 %.val10, %i.t
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.u = icmp eq i64 %.val10, 0
  br i1 %i.u, label %_ZN4llvmneENS_9StringRefES0_.exit.thread14, label %_ZN4llvmneENS_9StringRefES0_.exit

_ZN4llvmneENS_9StringRefES0_.exit:                ; preds = %bb.c
  %bcmp.i.i = call i32 @bcmp(ptr %.val9, ptr nonnull %i.s, i64 %.val10)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %_ZN4llvmneENS_9StringRefES0_.exit.thread14, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread14:       ; preds = %bb.c, %_ZN4llvmneENS_9StringRefES0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.112.i.i.lcssa, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !170
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [64 x i8], ptr @_ZN4llvm11AArch64GICRL9GICRTableE, i64 %i.x
  br label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread:         ; preds = %bb.b, %_ZSt11lower_boundIPKZN4llvm11AArch64GICR16lookupGICRByNameENS0_9StringRefEE9IndexTypeZNS1_16lookupGICRByNameES2_E7KeyTypeZNS1_16lookupGICRByNameES2_E4CompET_S8_S8_RKT0_T1_.exit, %_ZN4llvmneENS_9StringRefES0_.exit, %_ZN4llvmneENS_9StringRefES0_.exit.thread14
  %.0 = phi ptr [ %i.y, %_ZN4llvmneENS_9StringRefES0_.exit.thread14 ], [ null, %_ZN4llvmneENS_9StringRefES0_.exit ], [ null, %_ZSt11lower_boundIPKZN4llvm11AArch64GICR16lookupGICRByNameENS0_9StringRefEE9IndexTypeZNS1_16lookupGICRByNameES2_E7KeyTypeZNS1_16lookupGICRByNameES2_E4CompET_S8_S8_RKT0_T1_.exit ], [ null, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %.val9, %i.z
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.ab = icmp ult i64 %.val10, 16
  call void @llvm.assume(i1 %i.ab)
  br label %_ZZN4llvm11AArch64GICR16lookupGICRByNameENS_9StringRefEEN7KeyTypeD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !15
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %.val9, i64 noundef %i.ad) #18
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
  %1 = icmp ult i16 %0, 1537
  %.sroa.speculated = select i1 %1, i16 1536, i16 1537
  %.not = icmp eq i16 %0, %.sroa.speculated
  %i.a = zext i16 %0 to i64
  %i.b = getelementptr [56 x i8], ptr @_ZN4llvm10AArch64GSBL8GSBTableE, i64 %i.a
  %i.c = getelementptr i8, ptr %i.b, i64 -86016
  %.0 = select i1 %.not, ptr %i.c, ptr null
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
  %.1.i.i.i.i.i.peel = phi i1 [ %.inv.i.i.i.i.i.peel, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.peel ], [ %i.e, %bb.a ], [ true, %.thread.i.i.i.i.i.peel ] ; 3 uses
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
  %i.o = select i1 %.1.i.i.i.i.i.peel, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4llvm10AArch64GSB15lookupGSBByNameENS_9StringRefEE5Index, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN4llvm10AArch64GSB15lookupGSBByNameENS_9StringRefEE5Index, i64 24)
  %.112.i.i = select i1 %i.n, ptr %i.o, ptr %.112.i.i.peel
  br label %_ZSt11lower_boundIPKZN4llvm10AArch64GSB15lookupGSBByNameENS0_9StringRefEE9IndexTypeZNS1_15lookupGSBByNameES2_E7KeyTypeZNS1_15lookupGSBByNameES2_E4CompET_S8_S8_RKT0_T1_.exit

_ZSt11lower_boundIPKZN4llvm10AArch64GSB15lookupGSBByNameENS0_9StringRefEE9IndexTypeZNS1_15lookupGSBByNameES2_E7KeyTypeZNS1_15lookupGSBByNameES2_E4CompET_S8_S8_RKT0_T1_.exit: ; preds = %_ZSt11lower_boundIPKZN4llvm10AArch64GSB15lookupGSBByNameENS0_9StringRefEE9IndexTypeZNS1_15lookupGSBByNameES2_E7KeyTypeZNS1_15lookupGSBByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm10AArch64GSB15lookupGSBByNameENS2_9StringRefEE4CompEclIPKZNS3_15lookupGSBByNameES4_E9IndexTypeKZNS3_15lookupGSBByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel
  %.112.i.i.lcssa = phi ptr [ %.112.i.i.peel, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm10AArch64GSB15lookupGSBByNameENS2_9StringRefEE4CompEclIPKZNS3_15lookupGSBByNameES4_E9IndexTypeKZNS3_15lookupGSBByNameES4_E7KeyTypeEEbT_RT0_.exit.i.i.peel ], [ %.112.i.i, %_ZSt11lower_boundIPKZN4llvm10AArch64GSB15lookupGSBByNameENS0_9StringRefEE9IndexTypeZNS1_15lookupGSBByNameES2_E7KeyTypeZNS1_15lookupGSBByNameES2_E4CompET_S8_S8_RKT0_T1_.exit.loopexit ] ; 3 uses
  %i.p = icmp eq ptr %.112.i.i.lcssa, getelementptr inbounds nuw (i8, ptr @_ZZN4llvm10AArch64GSB15lookupGSBByNameENS_9StringRefEE5Index, i64 16)
  br i1 %i.p, label %_ZN4llvmneENS_9StringRefES0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZSt11lower_boundIPKZN4llvm10AArch64GSB15lookupGSBByNameENS0_9StringRefEE9IndexTypeZNS1_15lookupGSBByNameES2_E7KeyTypeZNS1_15lookupGSBByNameES2_E4CompET_S8_S8_RKT0_T1_.exit
  %i.q = load i32, ptr %.112.i.i.lcssa, align 4, !tbaa !172
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @_ZN4llvm10AArch64GSBL22GSBTableStringsStorageE, i64 %i.r ; 2 uses
  %i.t = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #16
  %.not.i.i = icmp eq i64 %.val10, %i.t
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.u = icmp eq i64 %.val10, 0
  br i1 %i.u, label %_ZN4llvmneENS_9StringRefES0_.exit.thread14, label %_ZN4llvmneENS_9StringRefES0_.exit

_ZN4llvmneENS_9StringRefES0_.exit:                ; preds = %bb.c
  %bcmp.i.i = call i32 @bcmp(ptr %.val9, ptr nonnull %i.s, i64 %.val10)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %_ZN4llvmneENS_9StringRefES0_.exit.thread14, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread14:       ; preds = %bb.c, %_ZN4llvmneENS_9StringRefES0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.112.i.i.lcssa, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !173
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [56 x i8], ptr @_ZN4llvm10AArch64GSBL8GSBTableE, i64 %i.x
  br label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread:         ; preds = %bb.b, %_ZSt11lower_boundIPKZN4llvm10AArch64GSB15lookupGSBByNameENS0_9StringRefEE9IndexTypeZNS1_15lookupGSBByNameES2_E7KeyTypeZNS1_15lookupGSBByNameES2_E4CompET_S8_S8_RKT0_T1_.exit, %_ZN4llvmneENS_9StringRefES0_.exit, %_ZN4llvmneENS_9StringRefES0_.exit.thread14
  %.0 = phi ptr [ %i.y, %_ZN4llvmneENS_9StringRefES0_.exit.thread14 ], [ null, %_ZN4llvmneENS_9StringRefES0_.exit ], [ null, %_ZSt11lower_boundIPKZN4llvm10AArch64GSB15lookupGSBByNameENS0_9StringRefEE9IndexTypeZNS1_15lookupGSBByNameES2_E7KeyTypeZNS1_15lookupGSBByNameES2_E4CompET_S8_S8_RKT0_T1_.exit ], [ null, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %.val9, %i.z
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.ab = icmp ult i64 %.val10, 16
  call void @llvm.assume(i1 %i.ab)
  br label %_ZZN4llvm10AArch64GSB15lookupGSBByNameENS_9StringRefEEN7KeyTypeD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !15
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %.val9, i64 noundef %i.ad) #18
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
end_hunk_0
