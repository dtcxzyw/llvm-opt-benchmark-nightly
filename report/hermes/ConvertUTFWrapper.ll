inline.NumInlined: 231
inline.NumDeleted: 120
begin_hunk_0_@_ZN4llvh24convertUTF8ToUTF16StringENS_9StringRefERNS_15SmallVectorImplItEE:bb.a

.sink.split.i17:                                  ; preds = %.lr.ph.preheader.i16, %bb.m, %bb.i
  %i.az = trunc i64 %i.al to i32                  ; 2 uses
  store i32 %i.az, ptr %i.o, align 8, !tbaa !33
  br label %_ZN4llvh15SmallVectorImplItE6resizeEm.exit20

_ZN4llvh15SmallVectorImplItE6resizeEm.exit20:     ; preds = %bb.j, %.sink.split.i17
  %i.ba = phi i32 [ %i.am, %bb.j ], [ %i.az, %.sink.split.i17 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !35
  %.not.i21 = icmp ult i32 %i.ba, %i.bc
  br i1 %.not.i21, label %_ZN4llvh23SmallVectorTemplateBaseItLb1EE9push_backERKt.exit23, label %bb.n, !prof !36

bb.n:                                             ; preds = %_ZN4llvh15SmallVectorImplItE6resizeEm.exit20
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.bd, i64 noundef 0, i64 noundef 2) #11
  %.pre.i22 = load i32, ptr %i.o, align 8, !tbaa !33
  br label %_ZN4llvh23SmallVectorTemplateBaseItLb1EE9push_backERKt.exit23

_ZN4llvh23SmallVectorTemplateBaseItLb1EE9push_backERKt.exit23: ; preds = %_ZN4llvh15SmallVectorImplItE6resizeEm.exit20, %bb.n
  %i.be = phi i32 [ %.pre.i22, %bb.n ], [ %i.ba, %_ZN4llvh15SmallVectorImplItE6resizeEm.exit20 ]
  %i.bf = load ptr, ptr %2, align 8, !tbaa !37
  %i.bg = zext i32 %i.be to i64
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.bg
  store i16 0, ptr %i.bh, align 1
  %i.bi = load i32, ptr %i.o, align 8, !tbaa !33
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvh15SmallVectorImplItE6resizeEm.exit, %_ZN4llvh23SmallVectorTemplateBaseItLb1EE9push_backERKt.exit23
  %storemerge = phi i32 [ %i.bi, %_ZN4llvh23SmallVectorTemplateBaseItLb1EE9push_backERKt.exit23 ], [ 0, %_ZN4llvh15SmallVectorImplItE6resizeEm.exit ]
  store i32 %storemerge, ptr %i.o, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN4llvh23SmallVectorTemplateBaseItLb1EE9push_backERKt.exit
  %.1 = phi i1 [ true, %_ZN4llvh23SmallVectorTemplateBaseItLb1EE9push_backERKt.exit ], [ %.not, %bb.o ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh17ConvertUTF8toWideENS_9StringRefERNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = add i64 %1, 1
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.c, i32 noundef signext 0) #11
  %i.d = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr %0, ptr %i.a, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr %i.d, ptr %i.b, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %1
  %i.g = call noundef i32 @_ZN4llvh18ConvertUTF8toUTF32EPPKhS1_PPjS3_NS_15ConversionFlagsE(ptr noundef nonnull %i.a, ptr noundef %i.e, ptr noundef nonnull %i.b, ptr noundef %i.f, i32 noundef 0) #11
  %i.h = icmp eq i32 %i.g, 0                      ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !42
  %i.j = load ptr, ptr %2, align 8, !tbaa !38
  store i32 0, ptr %i.j, align 4, !tbaa !43
  br label %_ZN4llvhL25ConvertUTF8toWideInternalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbNS_9StringRefERT_.exit

bb.c:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.k = load ptr, ptr %2, align 8, !tbaa !38
  %i.l = ptrtoint ptr %.val.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 2
  call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.o, i32 noundef signext 0) #11
  br label %_ZN4llvhL25ConvertUTF8toWideInternalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbNS_9StringRefERT_.exit

_ZN4llvhL25ConvertUTF8toWideInternalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbNS_9StringRefERT_.exit: ; preds = %bb.b, %bb.c
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh17ConvertUTF8toWideEPKcRNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %_ZN4llvh9StringRefC2EPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !42
  %i.d = load ptr, ptr %1, align 8, !tbaa !38
  store i32 0, ptr %i.d, align 4, !tbaa !43
  br label %_ZN4llvh17ConvertUTF8toWideENS_9StringRefERNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE.exit

_ZN4llvh9StringRefC2EPKc.exit:                    ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13 ; 3 uses
  %i.f = add i64 %i.e, 1
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.f, i32 noundef signext 0) #11
  %i.g = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr %0, ptr %i.a, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr %i.g, ptr %i.b, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e
  %i.j = call noundef i32 @_ZN4llvh18ConvertUTF8toUTF32EPPKhS1_PPjS3_NS_15ConversionFlagsE(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef %i.i, i32 noundef 0) #11
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !42
  %i.m = load ptr, ptr %1, align 8, !tbaa !38
  store i32 0, ptr %i.m, align 4, !tbaa !43
  br label %_ZN4llvh17ConvertUTF8toWideENS_9StringRefERNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE.exit

bb.d:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit
  %.val.i.i.i = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.n = load ptr, ptr %1, align 8, !tbaa !38
  %i.o = ptrtoint ptr %.val.i.i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2
  call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.r, i32 noundef signext 0) #11
  br label %_ZN4llvh17ConvertUTF8toWideENS_9StringRefERNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE.exit

_ZN4llvh17ConvertUTF8toWideENS_9StringRefERNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE.exit: ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh17convertWideToUTF8ERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEERNS1_IcS2_IcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = load ptr, ptr %0, align 8, !tbaa !38     ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  %i.g = shl i64 %i.e, 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.g, i8 noundef signext 0) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.h = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = call noundef i32 @_ZN4llvh18ConvertUTF32toUTF8EPPKjS1_PPhS3_NS_15ConversionFlagsE(ptr noundef nonnull %i.a, ptr noundef %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, i32 noundef 0) #11
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.o = load ptr, ptr %1, align 8, !tbaa !26
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.r, i8 noundef signext 0) #11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.i, align 8, !tbaa !30
  %i.s = load ptr, ptr %1, align 8, !tbaa !26
  store i8 0, ptr %i.s, align 1, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i1 %i.m
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorItSaItEE15_M_range_insertIPKtEEvN9__gnu_cxx17__normal_iteratorIPtS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKtN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 1                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not46 = icmp ult i64 %i.k, %i.c
  br i1 %.not46, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 1                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIPKtlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 2                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !36

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.h, ptr nonnull align 2 %i.q, i64 %i.c, i1 false)
  %.pre61 = load ptr, ptr %i.g, align 8, !tbaa !17
  br label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 2
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load i16, ptr %i.q, align 2, !tbaa !15
  store i16 %i.u, ptr %i.h, align 2, !tbaa !15
  br label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = phi ptr [ %.pre61, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8, !tbaa !17
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 1                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !36

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ab, ptr align 2 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 2
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -2
  %i.ae = load i16, ptr %1, align 2, !tbaa !15
  store i16 %i.ae, ptr %i.ad, align 2, !tbaa !15
  br label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !36

bb.k:                                             ; preds = %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIPKtN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEET0_T_SA_S9_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit
  %i.af = icmp eq i64 %i.c, 2
  br i1 %i.af, label %bb.m, label %_ZSt4copyIPKtN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEET0_T_SA_S9_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load i16, ptr %2, align 2, !tbaa !15
  store i16 %i.ag, ptr %1, align 2, !tbaa !15
  br label %_ZSt4copyIPKtN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEET0_T_SA_S9_.exit

_ZSt9__advanceIPKtlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 2
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 2
  br i1 %i.al, label %bb.n, label %bb.o, !prof !36

bb.n:                                             ; preds = %_ZSt9__advanceIPKtlEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.h, ptr align 2 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !17
  br label %_ZSt22__uninitialized_copy_aIPKtPttET0_T_S4_S3_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIPKtlEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 2
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIPKtPttET0_T_S4_S3_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load i16, ptr %i.ai, align 2, !tbaa !15
  store i16 %i.an, ptr %i.h, align 2, !tbaa !15
  br label %_ZSt22__uninitialized_copy_aIPKtPttET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKtPttET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = phi ptr [ %.pre, %bb.n ], [ %i.h, %bb.o ], [ %i.h, %bb.p ]
  %i.ap = sub nuw nsw i64 %i.d, %i.n
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !17
  %i.ar = icmp sgt i64 %i.m, 2
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !36

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKtPttET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.aq, ptr align 2 %1, i64 %i.m, i1 false)
  %.pre60 = load ptr, ptr %i.g, align 8, !tbaa !17
  br label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit47

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKtPttET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit47

bb.s:                                             ; preds = %bb.r
  %i.as = load i16, ptr %1, align 2, !tbaa !15
  store i16 %i.as, ptr %i.aq, align 2, !tbaa !15
  br label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit47

_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit47: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = phi ptr [ %.pre60, %bb.q ], [ %i.aq, %bb.r ], [ %i.aq, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8, !tbaa !17
  %i.av = icmp sgt i64 %i.m, 2
  br i1 %i.av, label %bb.t, label %bb.u, !prof !36

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit47
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIPKtN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEET0_T_SA_S9_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit47
  %i.aw = icmp eq i64 %i.m, 2
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIPKtN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEET0_T_SA_S9_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load i16, ptr %2, align 2, !tbaa !15
  store i16 %i.ax, ptr %1, align 2, !tbaa !15
  br label %_ZSt4copyIPKtN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEET0_T_SA_S9_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8, !tbaa !31    ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 1                 ; 4 uses
  %i.bc = sub nsw i64 4611686018427387903, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 4611686018427387903)
  %i.bh = select i1 %i.bf, i64 4611686018427387903, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #15
  br label %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit

_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 2
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !36

bb.z:                                             ; preds = %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.bk, ptr align 2 %i.ay, i64 %i.bm, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 2
  br i1 %i.bo, label %bb.ab, label %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load i16, ptr %i.ay, align 2, !tbaa !15
  store i16 %i.bp, ptr %i.bk, align 2, !tbaa !15
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 2
  br i1 %i.br, label %bb.ac, label %bb.ad, !prof !36

bb.ac:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.bq, ptr align 2 %2, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKtPttET0_T_S4_S3_RSaIT1_E.exit49

bb.ad:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit
  %i.bs = icmp eq i64 %i.c, 2
  br i1 %i.bs, label %bb.ae, label %_ZSt22__uninitialized_copy_aIPKtPttET0_T_S4_S3_RSaIT1_E.exit49

bb.ae:                                            ; preds = %bb.ad
  %i.bt = load i16, ptr %2, align 2, !tbaa !15
  store i16 %i.bt, ptr %i.bq, align 2, !tbaa !15
  br label %_ZSt22__uninitialized_copy_aIPKtPttET0_T_S4_S3_RSaIT1_E.exit49

_ZSt22__uninitialized_copy_aIPKtPttET0_T_S4_S3_RSaIT1_E.exit49: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 2
  br i1 %i.bw, label %bb.af, label %bb.ag, !prof !36

bb.af:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKtPttET0_T_S4_S3_RSaIT1_E.exit49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bu, ptr align 2 %1, i64 %i.bv, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit50

bb.ag:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKtPttET0_T_S4_S3_RSaIT1_E.exit49
  %i.bx = icmp eq i64 %i.bv, 2
  br i1 %i.bx, label %bb.ah, label %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit50

bb.ah:                                            ; preds = %bb.ag
  %i.by = load i16, ptr %1, align 2, !tbaa !15
  store i16 %i.by, ptr %i.bu, align 2, !tbaa !15
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit50

_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit50: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i51 = icmp eq ptr %i.ay, null
  br i1 %.not.i51, label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit50
  %4 = load ptr, ptr %i.e, align 8, !tbaa !32
  %5 = ptrtoint ptr %4 to i64
  %i.ca = sub i64 %5, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.ca) #12
  br label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit

_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit50, %bb.ai
  store ptr %i.bk, ptr %0, align 8, !tbaa !31
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !17
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cb, ptr %i.e, align 8, !tbaa !32
  br label %_ZSt4copyIPKtN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKtN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEET0_T_SA_S9_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i32 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 omnipotent char", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 short", !9, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 int", !9, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !5, i64 0}
!17 = !{!18, !11, i64 8}
!18 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!19 = distinct !{!19, !20, !21, !22}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = !{!"branch_weights", i32 4, i32 12}
!24 = distinct !{!24, !20, !21, !22}
!25 = distinct !{!25, !20, !22, !21}
!26 = !{!27, !8, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0, !29, i64 8, !5, i64 16}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !8, i64 0}
!29 = !{!"long", !5, i64 0}
!30 = !{!27, !29, i64 8}
!31 = !{!18, !11, i64 0}
!32 = !{!18, !11, i64 16}
!33 = !{!34, !4, i64 8}
!34 = !{!"_ZTSN4llvh15SmallVectorBaseE", !9, i64 0, !4, i64 8, !4, i64 12}
!35 = !{!34, !4, i64 12}
!36 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!37 = !{!34, !9, i64 0}
!38 = !{!39, !41, i64 0}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !40, i64 0, !29, i64 8, !5, i64 16}
!40 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !41, i64 0}
!41 = !{!"p1 wchar_t", !9, i64 0}
!42 = !{!39, !29, i64 8}
!43 = !{!44, !44, i64 0}
!44 = !{!"wchar_t", !5, i64 0}
end_hunk_0
