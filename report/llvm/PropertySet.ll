Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PropertySet?download=true
inline.NumInlined: 1328
inline.NumDeleted: 796
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvlS2_S3_:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !47
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.h, i64 %.0.i.i) ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !278
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !282  ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ugt i64 %.sroa.speculated.i.i.i, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i) #16 ; 0 uses
  br label %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERNS_11raw_ostreamENS_9StringRefE.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERNS_11raw_ostreamENS_9StringRefE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %.sroa.speculated.i.i.i, i1 false)
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !282
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.speculated.i.i.i
  store ptr %i.s, ptr %i.k, align 8, !tbaa !282
  br label %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERNS_11raw_ostreamENS_9StringRefE.exit

_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERNS_11raw_ostreamENS_9StringRefE.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

declare noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr, i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm15SmallVectorImplIhEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !64     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIhE12assignRemoteEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #16
  %.pre = load ptr, ptr %1, align 8, !tbaa !64
  br label %_ZN4llvm15SmallVectorImplIhE12assignRemoteEOS1_.exit

_ZN4llvm15SmallVectorImplIhE12assignRemoteEOS1_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load <2 x i64>, ptr %i.j, align 8, !tbaa !35
  store <2 x i64> %i.k, ptr %i.i, align 8, !tbaa !35
  store ptr %i.c, ptr %1, align 8, !tbaa !64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br label %bb.s

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !66   ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !66   ; 7 uses
  %.not = icmp ult i64 %i.o, %i.m
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %.not33 = icmp eq i64 %i.m, 0
  br i1 %.not33, label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = icmp sgt i64 %i.m, 1
  br i1 %i.q, label %bb.h, label %bb.i, !prof !283

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.b, i64 %i.m, i1 false)
  br label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %bb.g
  %i.r = icmp eq i64 %i.m, 1
  br i1 %i.r, label %bb.j, label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.s = load i8, ptr %i.b, align 1, !tbaa !60
  store i8 %i.s, ptr %i.p, align 1, !tbaa !60
  br label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit

_ZSt4moveIPhS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  store i64 %i.m, ptr %i.n, align 8, !tbaa !66
  store i64 0, ptr %i.l, align 8, !tbaa !66
  br label %bb.s

bb.k:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !284
  %i.v = icmp ult i64 %i.u, %i.m
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 0, ptr %i.n, align 8, !tbaa !66
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.w, i64 noundef %i.m, i64 noundef 1) #16
  br label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit34

bb.m:                                             ; preds = %bb.k
  %.not32 = icmp eq i64 %i.o, 0
  br i1 %.not32, label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit34, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.y = icmp sgt i64 %i.o, 1
  br i1 %i.y, label %bb.o, label %bb.p, !prof !283

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.b, i64 %i.o, i1 false)
  br label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit34

bb.p:                                             ; preds = %bb.n
  %i.z = icmp eq i64 %i.o, 1
  br i1 %i.z, label %bb.q, label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit34

bb.q:                                             ; preds = %bb.p
  %i.aa = load i8, ptr %i.b, align 1, !tbaa !60
  store i8 %i.aa, ptr %i.x, align 1, !tbaa !60
  br label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit34

_ZSt4moveIPhS0_ET0_T_S2_S1_.exit34:               ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %bb.l
  %.026 = phi i64 [ 0, %bb.l ], [ 0, %bb.m ], [ %i.o, %bb.o ], [ %i.o, %bb.p ], [ 1, %bb.q ] ; 4 uses
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !66  ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE18uninitialized_moveIPhS3_EEvT_S4_T0_.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit34
  %i.ac = load ptr, ptr %1, align 8, !tbaa !64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.026
  %i.ae = load ptr, ptr %0, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.026
  %gepdiff = sub nsw i64 %i.ab, %.026
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE18uninitialized_moveIPhS3_EEvT_S4_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseIhLb1EE18uninitialized_moveIPhS3_EEvT_S4_T0_.exit: ; preds = %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit34, %bb.r
  store i64 %i.m, ptr %i.n, align 8, !tbaa !66
  store i64 0, ptr %i.l, align 8, !tbaa !66
  br label %bb.s

bb.s:                                             ; preds = %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit, %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE18uninitialized_moveIPhS3_EEvT_S4_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplIhE12assignRemoteEOS1_.exit
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRKNS_4json5ValueEEEEEvlS2_S3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !285, !nonnull !275, !align !276
  tail call void @_ZN4llvm15format_providerINS_4json5ValueEvE6formatERKS2_RNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #16
  ret void
}

declare void @_ZN4llvm15format_providerINS_4json5ValueEvE6formatERKS2_RNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRNS_4json5ValueEEEEEvlS2_S3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !287, !nonnull !275, !align !276
  tail call void @_ZN4llvm15format_providerINS_4json5ValueEvE6formatERKS2_RNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7formatvIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_EEEDabPKcDpOT_(ptr dead_on_unwind noalias writable sret(%"class.llvm::formatv_object.74") align 8 %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #8 comdat {
bb.a:
  %6 = alloca %"class.std::tuple.75", align 8     ; 14 uses
  %7 = alloca %"class.llvm::support::detail::FormatFunctor", align 8 ; 5 uses
  %8 = alloca %"class.llvm::support::detail::FormatFunctor", align 8 ; 5 uses
  %9 = alloca %"class.llvm::support::detail::FormatFunctor", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !44     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !47   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %7, align 8, !tbaa !44
  %i.i = load i64, ptr %i.c, align 8, !tbaa !60
  store i64 %i.i, ptr %i.a, align 8, !tbaa !60
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !47
  br label %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit

_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = phi ptr [ %i.a, %bb.b ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 3 uses
  %i.k = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.k, ptr %i.m, align 8, !tbaa !47
  store ptr %i.c, ptr %3, align 8, !tbaa !44
  store i64 0, ptr %i.l, align 8, !tbaa !47
  store i8 0, ptr %i.c, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !44     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

bb.c:                                             ; preds = %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !47   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  tail call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.u, i1 false)
  br label %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit
  store ptr %i.o, ptr %8, align 8, !tbaa !44
  %i.v = load i64, ptr %i.p, align 8, !tbaa !60
  store i64 %i.v, ptr %i.n, align 8, !tbaa !60
  %.phi.trans.insert18 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre19 = load i64, ptr %.phi.trans.insert18, align 8, !tbaa !47
  br label %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit5

_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.w = phi ptr [ %i.n, %bb.c ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4 ] ; 3 uses
  %i.x = phi i64 [ %i.s, %bb.c ], [ %.pre19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4 ] ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.x, ptr %i.z, align 8, !tbaa !47
  store ptr %i.p, ptr %4, align 8, !tbaa !44
  store i64 0, ptr %i.y, align 8, !tbaa !47
  store i8 0, ptr %i.p, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.aa, ptr %9, align 8, !tbaa !113
  %i.ab = load ptr, ptr %5, align 8, !tbaa !44    ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit7.thread, label %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit7

_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit7.thread: ; preds = %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit5
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !47 ; 4 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ah, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.af, ptr %i.aj, align 8, !tbaa !47
  store ptr %i.ac, ptr %5, align 8, !tbaa !44
  store i64 0, ptr %i.ai, align 8, !tbaa !47
  store i8 0, ptr %i.ac, align 8, !tbaa !60
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.ak, ptr %6, align 8, !tbaa !113, !alias.scope !289
  br label %bb.d

_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit7: ; preds = %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit5
  %.phi.trans.insert20 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.an = load <2 x i64>, ptr %.phi.trans.insert20, align 8, !tbaa !60
  %.pre21 = load i64, ptr %.phi.trans.insert20, align 8, !tbaa !47 ; 2 uses
  store <2 x i64> %i.an, ptr %i.am, align 8, !tbaa !60
  store ptr %i.ac, ptr %5, align 8, !tbaa !44
  store i64 0, ptr %i.al, align 8, !tbaa !47
  store i8 0, ptr %i.ac, align 8, !tbaa !60
  call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ao, ptr %6, align 8, !tbaa !113, !alias.scope !292
  %i.ap = icmp eq ptr %i.ab, %i.aa
  br i1 %i.ap, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit7.thread, %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit7
  %i.aq = phi ptr [ %i.ak, %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit7.thread ], [ %i.ao, %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit7 ] ; 3 uses
  %i.ar = phi ptr [ %i.aj, %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit7.thread ], [ %i.am, %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit7 ]
  %i.as = phi i64 [ %i.af, %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit7.thread ], [ %.pre21, %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit7 ] ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.at)
  %i.au = add nuw nsw i64 %i.as, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.au, i1 false)
  br label %_ZNSt11_Tuple_implILm2EJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEC2ISA_EEOT_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS8_.exit7
  store ptr %i.ab, ptr %6, align 8, !tbaa !44, !alias.scope !292
  %i.av = load i64, ptr %i.aa, align 8, !tbaa !60, !noalias !292
  store i64 %i.av, ptr %i.ao, align 8, !tbaa !60, !alias.scope !292
  br label %_ZNSt11_Tuple_implILm2EJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEC2ISA_EEOT_.exit.i.i.i.i

_ZNSt11_Tuple_implILm2EJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEC2ISA_EEOT_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.d
  %i.aw = phi ptr [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.aq, %bb.d ] ; 4 uses
  %i.ax = phi ptr [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.ar, %bb.d ]
  %i.ay = phi i64 [ %.pre21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.as, %bb.d ] ; 4 uses
  %i.az = phi ptr [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.aq, %bb.d ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !47, !alias.scope !292
  store ptr %i.aa, ptr %9, align 8, !tbaa !44, !noalias !292
  store i64 0, ptr %i.ax, align 8, !tbaa !47, !noalias !292
  store i8 0, ptr %i.aa, align 8, !tbaa !60, !noalias !292
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 7 uses
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !113, !alias.scope !292
  %i.bd = icmp eq ptr %i.w, %i.n
  br i1 %i.bd, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNSt11_Tuple_implILm2EJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEC2ISA_EEOT_.exit.i.i.i.i
  %i.be = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.bf, i1 false)
  br label %_ZNSt11_Tuple_implILm1EJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EEC2ISA_JSA_EvEEOT_DpOT0_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt11_Tuple_implILm2EJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEC2ISA_EEOT_.exit.i.i.i.i
  store ptr %i.w, ptr %i.bb, align 8, !tbaa !44, !alias.scope !292
  %i.bg = load i64, ptr %i.n, align 8, !tbaa !60, !noalias !292
  store i64 %i.bg, ptr %i.bc, align 8, !tbaa !60, !alias.scope !292
  br label %_ZNSt11_Tuple_implILm1EJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EEC2ISA_JSA_EvEEOT_DpOT0_.exit.i.i.i

_ZNSt11_Tuple_implILm1EJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EEC2ISA_JSA_EvEEOT_DpOT0_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.bh = phi ptr [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.bc, %bb.e ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %i.x, ptr %i.bi, align 8, !tbaa !47, !alias.scope !292
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 7 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !113, !alias.scope !292
  %i.bl = icmp eq ptr %i.j, %i.a
  br i1 %i.bl, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt11_Tuple_implILm1EJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EEC2ISA_JSA_EvEEOT_DpOT0_.exit.i.i.i
  %i.bm = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.bm)
  %i.bn = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.bn, i1 false)
  br label %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt11_Tuple_implILm1EJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EEC2ISA_JSA_EvEEOT_DpOT0_.exit.i.i.i
  store ptr %i.j, ptr %i.bj, align 8, !tbaa !44, !alias.scope !292
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !60, !noalias !292
  store i64 %i.bo, ptr %i.bk, align 8, !tbaa !60, !alias.scope !292
  br label %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit13

_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit13: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bp = phi ptr [ %i.bk, %bb.f ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 %i.k, ptr %i.bq, align 8, !tbaa !47, !alias.scope !292
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit13
  %i.br = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit13, %bb.g
  %.sroa.0.0.i = phi i64 [ %i.br, %bb.g ], [ 0, %_ZN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit13 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bt = zext i1 %1 to i8
  store ptr %2, ptr %0, align 8, !tbaa !48
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !35
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !86
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 3, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !35
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.bt, ptr %i.bv, align 8, !tbaa !88
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !113
  %i.by = icmp eq ptr %i.az, %i.aw
  br i1 %i.by, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i14

bb.h:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.bz = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.bz)
  %i.ca = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bx, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.ca, i1 false)
  br label %_ZNSt11_Tuple_implILm2EJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEC2EOSB_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i14: ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  store ptr %i.az, ptr %i.bw, align 8, !tbaa !44
  %i.cb = load i64, ptr %i.aw, align 8, !tbaa !60
  store i64 %i.cb, ptr %i.bx, align 8, !tbaa !60
  br label %_ZNSt11_Tuple_implILm2EJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEC2EOSB_.exit.i.i.i.i

_ZNSt11_Tuple_implILm2EJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEC2EOSB_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i14, %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ay, ptr %i.cc, align 8, !tbaa !47
  store i8 0, ptr %i.aw, align 1, !tbaa !60
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !113
  %i.cf = icmp eq ptr %i.bh, %i.bc
  br i1 %i.cf, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i15

bb.i:                                             ; preds = %_ZNSt11_Tuple_implILm2EJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEC2EOSB_.exit.i.i.i.i
  %i.cg = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.cg)
  %i.ch = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ce, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.ch, i1 false)
  br label %_ZNSt11_Tuple_implILm1EJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EEC2EOSB_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i15: ; preds = %_ZNSt11_Tuple_implILm2EJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEC2EOSB_.exit.i.i.i.i
  store ptr %i.bh, ptr %i.cd, align 8, !tbaa !44
  %i.ci = load i64, ptr %i.bc, align 8, !tbaa !60
  store i64 %i.ci, ptr %i.ce, align 8, !tbaa !60
  br label %_ZNSt11_Tuple_implILm1EJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EEC2EOSB_.exit.i.i.i

_ZNSt11_Tuple_implILm1EJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EEC2EOSB_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i15, %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.x, ptr %i.cj, align 8, !tbaa !47
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !113
  %i.cm = icmp eq ptr %i.bp, %i.bk
  br i1 %i.cm, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16

bb.j:                                             ; preds = %_ZNSt11_Tuple_implILm1EJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EEC2EOSB_.exit.i.i.i
  %i.cn = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.cn)
  %i.co = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cl, ptr noundef nonnull align 8 dereferenceable(1) %i.bk, i64 %i.co, i1 false)
  br label %_ZNSt11_Tuple_implILm0EJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_SA_EED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16: ; preds = %_ZNSt11_Tuple_implILm1EJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EEC2EOSB_.exit.i.i.i
  store ptr %i.bp, ptr %i.ck, align 8, !tbaa !44
  %i.cp = load i64, ptr %i.bk, align 8, !tbaa !60
  store i64 %i.cp, ptr %i.cl, align 8, !tbaa !60
  br label %_ZNSt11_Tuple_implILm0EJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_SA_EED2Ev.exit

_ZNSt11_Tuple_implILm0EJN4llvm7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_SA_EED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.k, ptr %i.cq, align 8, !tbaa !47
  %.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cr = ptrtoint ptr %i.ck to i64
  %i.cs = ptrtoint ptr %i.cd to i64
  %i.ct = ptrtoint ptr %i.bw to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvlS2_S3_, ptr %i.bs, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.cr, ptr %.sroa.4.0..sroa_idx.i, align 8
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvlS2_S3_, ptr %.ptr.1.i.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.cs, ptr %.sroa.6.0..sroa_idx.i, align 8
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvlS2_S3_, ptr %.ptr.2.i.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.ct, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_St7variantIJjN4llvm11SmallVectorIhLj0EEEEESt4lessIS5_ESaIS6_IS7_SD_EEEESt10_Select1stISJ_ESF_SaISJ_EE8_M_eraseEPSt13_Rb_tree_nodeISJ_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_St7variantIJjN4llvm11SmallVectorIhLj0EEEEESt4lessIS5_ESaIS6_IS7_SD_EEEESt10_Select1stISJ_ESF_SaISJ_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISJ_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_St7variantIJjN4llvm11SmallVectorIhLj0EEEEESt4lessIS5_ESaIS6_IS7_SD_EEEESt10_Select1stISJ_ESF_SaISJ_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISJ_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !294
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_St7variantIJjN4llvm11SmallVectorIhLj0EEEEESt4lessIS5_ESaIS6_IS7_SD_EEEESt10_Select1stISJ_ESF_SaISJ_EE8_M_eraseEPSt13_Rb_tree_nodeISJ_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !295  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
end_hunk_0
