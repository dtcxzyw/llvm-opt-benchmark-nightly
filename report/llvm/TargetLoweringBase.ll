Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TargetLoweringBase?download=true
inline.NumInlined: 2991
inline.NumDeleted: 1105
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZNK4llvm18TargetLoweringBase22InstructionOpcodeToISDEj:switch.lookup
  %switch.gep = getelementptr i8, ptr %i.b, i64 -2
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  ret i32 %switch.ext
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 284) i32 @_ZNK4llvm18TargetLoweringBase16IntrinsicIDToISDEj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(518435) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  switch i32 %1, label %bb.p [
    i32 2, label %bb.q
    i32 15, label %bb.b
    i32 17, label %bb.c
    i32 72, label %bb.d
    i32 73, label %bb.e
    i32 97, label %bb.f
    i32 99, label %bb.g
    i32 98, label %bb.h
    i32 228, label %bb.i
    i32 230, label %bb.j
    i32 229, label %bb.k
    i32 349, label %bb.l
    i32 352, label %bb.m
    i32 375, label %bb.n
    i32 376, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  br label %bb.q

bb.k:                                             ; preds = %bb.a
  br label %bb.q

bb.l:                                             ; preds = %bb.a
  br label %bb.q

bb.m:                                             ; preds = %bb.a
  br label %bb.q

bb.n:                                             ; preds = %bb.a
  br label %bb.q

bb.o:                                             ; preds = %bb.a
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.p ], [ 272, %bb.o ], [ 267, %bb.b ], [ 269, %bb.c ], [ 265, %bb.d ], [ 271, %bb.e ], [ 281, %bb.f ], [ 282, %bb.g ], [ 283, %bb.h ], [ 278, %bb.i ], [ 279, %bb.j ], [ 280, %bb.k ], [ 264, %bb.l ], [ 270, %bb.m ], [ 266, %bb.n ], [ 268, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm18TargetLoweringBase34getDefaultSafeStackPointerLocationERNS_13IRBuilderBaseEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518435) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, i1 noundef zeroext %2) local_unnamed_addr #6 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 3 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 3 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 3 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 3 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !403
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !418
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !423  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 517498
  %i.h = load i16, ptr %i.g, align 2, !tbaa !425  ; 2 uses
  %i.i = icmp eq i16 %i.h, 0
  br i1 %i.i, label %bb.i, label %_ZN4llvm5RTLIB19RuntimeLibcallsInfo18getLibcallImplNameENS0_11LibcallImplE.exit

_ZN4llvm5RTLIB19RuntimeLibcallsInfo18getLibcallImplNameENS0_11LibcallImplE.exit: ; preds = %bb.a
  %i.j = zext i16 %i.h to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr @_ZN4llvm5RTLIB19RuntimeLibcallsInfo29RuntimeLibcallNameOffsetTableE, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !193
  %i.m = load ptr, ptr @_ZN4llvm5RTLIB19RuntimeLibcallsInfo27RuntimeLibcallImplNameTableE, align 8, !tbaa !426
  %i.n = zext i16 %i.l to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr @_ZN4llvm5RTLIB19RuntimeLibcallsInfo27RuntimeLibcallNameSizeTableE, i64 %i.j
  %i.q = load i8, ptr %i.p, align 1, !tbaa !191
  %i.r = zext i8 %i.q to i64                      ; 4 uses
  %i.s = tail call noundef ptr @_ZNK4llvm6Module13getNamedValueENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %i.f, ptr %i.o, i64 %i.r) #27 ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN4llvm16dyn_cast_or_nullINS_14GlobalVariableENS_11GlobalValueEEEDaPT0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm5RTLIB19RuntimeLibcallsInfo18getLibcallImplNameENS0_11LibcallImplE.exit
  %i.t = load i8, ptr %i.s, align 8, !tbaa !427
  %i.u = icmp eq i8 %i.t, 17
  %spec.select = select i1 %i.u, ptr %i.s, ptr null
  br label %_ZN4llvm16dyn_cast_or_nullINS_14GlobalVariableENS_11GlobalValueEEEDaPT0_.exit

_ZN4llvm16dyn_cast_or_nullINS_14GlobalVariableENS_11GlobalValueEEEDaPT0_.exit: ; preds = %bb.b, %_ZN4llvm5RTLIB19RuntimeLibcallsInfo18getLibcallImplNameENS0_11LibcallImplE.exit
  %.0.i.i = phi ptr [ %spec.select, %bb.b ], [ null, %_ZN4llvm5RTLIB19RuntimeLibcallsInfo18getLibcallImplNameENS0_11LibcallImplE.exit ] ; 4 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !486, !nonnull !22, !align !173
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 300
  %i.x = load i32, ptr %i.w, align 4, !tbaa !664
  %i.y = tail call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i32 noundef %i.x) #27 ; 2 uses
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_14GlobalVariableENS_11GlobalValueEEEDaPT0_.exit
  %i.z = select i1 %2, i32 3, i32 0
  %i.aa = tail call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 96, i32 1) #27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 5, ptr %i.ab, align 8, !tbaa !489
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.ac, align 1, !tbaa !490
  store ptr %i.o, ptr %3, align 8, !tbaa !191
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.r, ptr %i.ad, align 8, !tbaa !191
  call void @_ZN4llvm14GlobalVariableC1ERNS_6ModuleEPNS_4TypeEbNS_11GlobalValue12LinkageTypesEPNS_8ConstantERKNS_5TwineEPS0_NS5_15ThreadLocalModeESt8optionalIjEb(ptr noundef nonnull align 8 dereferenceable(89) %i.aa, ptr noundef nonnull align 8 dereferenceable(1288) %i.f, ptr noundef %i.y, i1 noundef zeroext false, i32 noundef 0, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr noundef null, i32 noundef %i.z, i64 0, i1 noundef zeroext false) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.i

bb.d:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_14GlobalVariableENS_11GlobalValueEEEDaPT0_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !665
  %.not31 = icmp eq ptr %i.af, %i.y
  br i1 %.not31, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 5, ptr %i.ag, align 8, !tbaa !489
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.ah, align 1, !tbaa !490
  store ptr %i.o, ptr %5, align 8, !tbaa !191
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.r, ptr %i.ai, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.ak, align 1, !tbaa !490
  store ptr @.str.41, ptr %6, align 8, !tbaa !191
  store i8 3, ptr %i.aj, align 8, !tbaa !489
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %4, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef nonnull align 8 dereferenceable(34) %6)
  call void @_ZN4llvm18report_fatal_errorERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(34) %4, i1 noundef zeroext true) #30
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.am = load i32, ptr %i.al, align 8
  %i.an = and i32 %i.am, 7168
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = xor i1 %2, %i.ao
  br i1 %i.ap, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 5, ptr %i.aq, align 8, !tbaa !489
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.ar, align 1, !tbaa !490
  store ptr %i.o, ptr %10, align 8, !tbaa !191
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.r, ptr %i.as, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.au, align 1, !tbaa !490
  store ptr @.str.42, ptr %11, align 8, !tbaa !191
  store i8 3, ptr %i.at, align 8, !tbaa !489
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %9, ptr noundef nonnull align 8 dereferenceable(34) %10, ptr noundef nonnull align 8 dereferenceable(34) %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %14 = select i1 %2, ptr @.str.43, ptr @.str.44  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.av, align 1, !tbaa !490
  %15 = load i8, ptr %14, align 1, !tbaa !191
  %.not.i = icmp eq i8 %15, 0
  br i1 %.not.i, label %_ZN4llvm5TwineC2EPKc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %14, ptr %12, align 8, !tbaa !191
  br label %_ZN4llvm5TwineC2EPKc.exit

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %bb.g, %bb.h
  %storemerge.i = phi i8 [ 3, %bb.h ], [ 1, %bb.g ]
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 %storemerge.i, ptr %i.aw, align 8, !tbaa !489
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %8, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr noundef nonnull align 8 dereferenceable(34) %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.ay, align 1, !tbaa !490
  store ptr @.str.45, ptr %13, align 8, !tbaa !191
  store i8 3, ptr %i.ax, align 8, !tbaa !489
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %7, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef nonnull align 8 dereferenceable(34) %13)
  call void @_ZN4llvm18report_fatal_errorERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(34) %7, i1 noundef zeroext true) #30
  unreachable

bb.i:                                             ; preds = %bb.c, %bb.f, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.0.i.i, %bb.f ], [ %i.aa, %bb.c ]
  ret ptr %.0
}

declare noundef ptr @_ZNK4llvm6Module13getNamedValueENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288), ptr, i64) local_unnamed_addr #7

declare void @_ZN4llvm14GlobalVariableC1ERNS_6ModuleEPNS_4TypeEbNS_11GlobalValue12LinkageTypesEPNS_8ConstantERKNS_5TwineEPS0_NS5_15ThreadLocalModeESt8optionalIjEb(ptr noundef nonnull align 8 dereferenceable(89), ptr noundef nonnull align 8 dereferenceable(1288), ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef, i32 noundef, i64, i1 noundef zeroext) unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZN4llvm18report_fatal_errorERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(34), i1 noundef zeroext) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Twine") align 8 %0, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(34) %2) local_unnamed_addr #1 comdat {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !489, !noalias !668 ; 3 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !489, !noalias !668 ; 3 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.g, align 8, !tbaa !489, !alias.scope !668
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.h, align 1, !tbaa !490, !alias.scope !668
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i8 %i.b, 1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !670
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i8 %i.e, 1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !670
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.l = load i8, ptr %i.k, align 1, !tbaa !490, !noalias !668
  %i.m = icmp eq i8 %i.l, 1                       ; 3 uses
  %.sroa.05.0.copyload.i = load ptr, ptr %1, align 8, !noalias !668
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.56.0.copyload.i = load i64, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !668
  %.014.i = select i1 %i.m, i8 %i.b, i8 2
  %.sroa.05.0.i = select i1 %i.m, ptr %.sroa.05.0.copyload.i, ptr %1
  %.sroa.56.0.i = select i1 %i.m, i64 %.sroa.56.0.copyload.i, i64 undef
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.o = load i8, ptr %i.n, align 1, !tbaa !490, !noalias !668
  %i.p = icmp eq i8 %i.o, 1                       ; 3 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %2, align 8, !noalias !668
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !668
  %.0.i = select i1 %i.p, i8 %i.e, i8 2
  %.sroa.04.0.i = select i1 %i.p, ptr %.sroa.04.0.copyload.i, ptr %2
  %.sroa.5.0.i = select i1 %i.p, i64 %.sroa.5.0.copyload.i, i64 undef
  store ptr %.sroa.05.0.i, ptr %0, align 8, !alias.scope !668
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.56.0.i, ptr %.sroa.23.0..sroa_idx.i.i, align 8, !tbaa !191, !alias.scope !668
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.04.0.i, ptr %i.q, align 8, !alias.scope !668
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.0.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !191, !alias.scope !668
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.014.i, ptr %i.r, align 8, !tbaa !489, !alias.scope !668
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.0.i, ptr %i.s, align 1, !tbaa !490, !alias.scope !668
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

_ZNK4llvm5Twine6concatERKS0_.exit:                ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm18TargetLoweringBase27getSafeStackPointerLocationERNS_13IRBuilderBaseERKNS_19LibcallLoweringInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3336) %2) unnamed_addr #6 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.577", align 8 ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 2440
  %i.b = load i16, ptr %i.a, align 8, !tbaa !425  ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4llvm5RTLIB19RuntimeLibcallsInfo18getLibcallImplNameENS0_11LibcallImplE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZNK4llvm18TargetLoweringBase34getDefaultSafeStackPointerLocationERNS_13IRBuilderBaseEb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i1 noundef zeroext true)
  br label %bb.d

_ZN4llvm5RTLIB19RuntimeLibcallsInfo18getLibcallImplNameENS0_11LibcallImplE.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !403
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !418
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !423  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !486, !nonnull !22, !align !173
  %i.l = tail call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef 0) #27
  %i.m = zext i16 %i.b to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr @_ZN4llvm5RTLIB19RuntimeLibcallsInfo29RuntimeLibcallNameOffsetTableE, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !193
  %i.p = load ptr, ptr @_ZN4llvm5RTLIB19RuntimeLibcallsInfo27RuntimeLibcallImplNameTableE, align 8, !tbaa !426
  %i.q = zext i16 %i.o to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr @_ZN4llvm5RTLIB19RuntimeLibcallsInfo27RuntimeLibcallNameSizeTableE, i64 %i.m
  %i.t = load i8, ptr %i.s, align 1, !tbaa !191
  %i.u = zext i8 %i.t to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.v, ptr %3, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.w, align 8, !tbaa !369
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !368
  %i.y = call noundef ptr @_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb(ptr noundef %i.l, ptr nonnull %i.v, i64 0, i1 noundef zeroext false) #27
  %i.z = call { ptr, ptr } @_ZN4llvm6Module19getOrInsertFunctionENS_9StringRefEPNS_12FunctionTypeENS_13AttributeListE(ptr noundef nonnull align 8 dereferenceable(1288) %i.j, ptr %i.r, i64 %i.u, ptr noundef %i.y, ptr null) #27 ; 2 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.v
  br i1 %i.ab, label %_ZN4llvm6Module19getOrInsertFunctionIJEEENS_14FunctionCalleeENS_9StringRefEPNS_4TypeEDpT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm5RTLIB19RuntimeLibcallsInfo18getLibcallImplNameENS0_11LibcallImplE.exit
  call void @free(ptr noundef %i.aa) #27
  br label %_ZN4llvm6Module19getOrInsertFunctionIJEEENS_14FunctionCalleeENS_9StringRefEPNS_4TypeEDpT_.exit

_ZN4llvm6Module19getOrInsertFunctionIJEEENS_14FunctionCalleeENS_9StringRefEPNS_4TypeEDpT_.exit: ; preds = %_ZN4llvm5RTLIB19RuntimeLibcallsInfo18getLibcallImplNameENS0_11LibcallImplE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.ac = extractvalue { ptr, ptr } %i.z, 0
  %i.ad = extractvalue { ptr, ptr } %i.z, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i16 257, ptr %i.ae, align 8
  %i.af = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %i.ac, ptr noundef %i.ad, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm6Module19getOrInsertFunctionIJEEENS_14FunctionCalleeENS_9StringRefEPNS_4TypeEDpT_.exit, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.af, %_ZN4llvm6Module19getOrInsertFunctionIJEEENS_14FunctionCalleeENS_9StringRefEPNS_4TypeEDpT_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm18TargetLoweringBase21isLegalAddressingModeERKNS_10DataLayoutERKNS0_8AddrModeEPNS_4TypeEjPNS_11InstructionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr nofree readnone captures(none) %3, i32 %4, ptr nofree readnone captures(none) %5) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !673
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !674  ; 3 uses
  %i.e = add i64 %i.d, 65535
  %or.cond = icmp ult i64 %i.e, 131070
  %i.f = load ptr, ptr %2, align 8
  %.not11 = icmp eq ptr %i.f, null
  %or.cond18 = select i1 %or.cond, i1 %.not11, i1 false
  br i1 %or.cond18, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !675
  switch i64 %i.h, label %bb.g [
    i64 0, label %bb.f
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !676, !range !21, !noundef !22
  %i.k = trunc nuw i8 %i.j to i1
  %.not13 = icmp ne i64 %i.d, 0
end_hunk_0
