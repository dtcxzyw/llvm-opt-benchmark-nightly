inline.NumInlined: 2660
inline.NumDeleted: 1336
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN6hermes3hbc23BytecodeModuleGenerator28initializeSerializedLiteralsEOSt6vectorIhSaIhEES5_S5_ON4llvh8DenseMapIPKNS_11InstructionESt4pairIjjENS6_12DenseMapInfoISA_EENS6_6detail12DenseMapPairISA_SC_EEEE:bb.a
  %.not.i.i.i.i.i7 = icmp eq ptr %i.v, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i7, label %_ZNSt6vectorIhSaIhEEaSEOS1_.exit8, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEEaSEOS1_.exit6
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.ad) #21
  br label %_ZNSt6vectorIhSaIhEEaSEOS1_.exit8

_ZNSt6vectorIhSaIhEEaSEOS1_.exit8:                ; preds = %_ZNSt6vectorIhSaIhEEaSEOS1_.exit6, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !469
  tail call void @_ZdlPv(ptr noundef %i.af) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ae, i8 0, i64 20, i1 false)
  %i.ag = load ptr, ptr %4, align 8, !tbaa !470
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !470
  store ptr null, ptr %4, align 8, !tbaa !470
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !3
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !3
  store i32 0, ptr %i.ai, align 8, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 924 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.an = load i32, ptr %i.al, align 4, !tbaa !3
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !3
  store i32 %i.am, ptr %i.al, align 4, !tbaa !3
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = load i32, ptr %i.ao, align 8, !tbaa !3
  %i.ar = load i32, ptr %i.ap, align 8, !tbaa !3
  store i32 %i.ar, ptr %i.ao, align 8, !tbaa !3
  store i32 %i.aq, ptr %i.ap, align 8, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes19UniquingRegExpTable9addRegExpEPNS_14CompiledRegExpE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"struct.std::pair.315", align 8    ; 7 uses
  %3 = alloca %"struct.std::pair.315", align 8    ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !429, !noalias !471
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !427, !noalias !471
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !429, !noalias !471
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load i64, ptr %i.j, align 8, !tbaa !427, !noalias !471
  store ptr %i.e, ptr %2, align 8, !tbaa !44, !alias.scope !471
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.g, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !45, !alias.scope !471
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.i, ptr %i.l, align 8, !tbaa !44, !alias.scope !471
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !45, !alias.scope !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.m = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !474  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !475
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !476
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.not8 = icmp ne ptr %i.n, %i.s
  %.not.not = select i1 %i.m, i1 %.not8, i1 false
  br i1 %.not.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !477
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !480  ; 5 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !481    ; 4 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 6 uses
  %i.ab = ashr exact i64 %i.aa, 3                 ; 4 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !482
  %.not.i = icmp eq ptr %i.w, %i.ae
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %1, ptr %i.w, align 8, !tbaa !483
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.af, ptr %i.v, align 8, !tbaa !480
  br label %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ag, label %bb.f, label %_ZNKSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.ab ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ab
  %i.aj = call i64 @llvm.umin.i64(i64 %i.ah, i64 1152921504606846975)
  %i.ak = select i1 %i.ai, i64 1152921504606846975, i64 %i.aj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ak, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #23 ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.aa ; 3 uses
  store ptr %1, ptr %i.an, align 8, !tbaa !483
  %i.ao = icmp sgt i64 %i.aa, 0
  br i1 %i.ao, label %bb.g, label %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr align 8 %i.x, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.not.i17.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.aa) #21
  br label %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !481
  store ptr %i.ap, ptr %i.v, align 8, !tbaa !480
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.aq, ptr %i.ad, align 8, !tbaa !482
  br label %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.d, %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.ar = phi ptr [ %i.w, %bb.d ], [ %i.an, %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !483 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !429, !noalias !485
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !427, !noalias !485
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !429, !noalias !485
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !427, !noalias !485
  store ptr %i.au, ptr %3, align 8, !tbaa !44, !alias.scope !485
  %.sroa.45.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aw, ptr %.sroa.45.0..sroa_idx.i3, align 8, !tbaa !45, !alias.scope !485
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !44, !alias.scope !485
  %.sroa.4.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.ba, ptr %.sroa.4.0..sroa_idx.i4, align 8, !tbaa !45, !alias.scope !485
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bc = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !474 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %i.bc, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixEOS4_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE9push_backERKS2_.exit
  %i.be = call noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E20InsertIntoBucketImplIS4_EEPS9_RKS4_RKT_SD_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.bd) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !468
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !tbaa.struct !468
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store i32 0, ptr %i.bg, align 4, !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixEOS4_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixEOS4_.exit: ; preds = %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE9push_backERKS2_.exit, %bb.i
  %.0.i.i = phi ptr [ %i.be, %bb.i ], [ %i.bd, %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE9push_backERKS2_.exit ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  store i32 %i.ac, ptr %i.bh, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixEOS4_.exit, %bb.b
  %.0 = phi i32 [ %i.u, %bb.b ], [ %i.ac, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixEOS4_.exit ]
  ret i32 %.0
}

declare noundef i32 @_ZN6hermes3hbc21UniquingFilenameTable11addFilenameEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(104), ptr, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc23BytecodeModuleGenerator12addCJSModuleEjj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(964) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !488  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !489
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0.insert.ext = zext i32 %1 to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %2 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.c, align 4
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !488
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.b, align 8, !tbaa !488
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !490  ; 8 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #23 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %.sroa.5.0.insert.ext6 = zext i32 %1 to i64
  %.sroa.5.0.insert.shift7 = shl nuw i64 %.sroa.5.0.insert.ext6, 32
  %.sroa.0.0.insert.ext2 = zext i32 %2 to i64
  %.sroa.0.0.insert.insert4 = or disjoint i64 %.sroa.5.0.insert.shift7, %.sroa.0.0.insert.ext2
  store i64 %.sroa.0.0.insert.insert4, ptr %i.t, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.u = ptrtoaddr ptr %i.s to i64
  %3 = ptrtoaddr ptr %i.c to i64
  %4 = ptrtoaddr ptr %i.h to i64
  %i.v = sub i64 %3, %4
  %i.w = add i64 %i.v, -8                         ; 2 uses
  %i.x = lshr i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 72
  %i.z = sub i64 %i.j, %i.u
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.s, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.h, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ad ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.h, i64 %i.ad ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.ae = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep13, align 4, !alias.scope !494, !noalias !491
  %wide.load14 = load <2 x i64>, ptr %i.ae, align 4, !alias.scope !494, !noalias !491
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !491, !noalias !494
  store <2 x i64> %wide.load14, ptr %i.af, align 4, !alias.scope !491, !noalias !494
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !496

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader16

.lr.ph.i.i.i.i.i.i.preheader16:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader16, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader16 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader16 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.ah = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !494, !noalias !491
  store i64 %i.ah, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !491, !noalias !494
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !499

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ab, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #21
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !490
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !488
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.al, ptr %i.d, align 8, !tbaa !489
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc23BytecodeModuleGenerator18addCJSModuleStaticEjj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(964) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !488  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !489
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0.insert.ext = zext i32 %2 to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %1 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.c, align 4
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !488
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.b, align 8, !tbaa !488
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !490  ; 8 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #23 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %.sroa.5.0.insert.ext6 = zext i32 %2 to i64
  %.sroa.5.0.insert.shift7 = shl nuw i64 %.sroa.5.0.insert.ext6, 32
  %.sroa.0.0.insert.ext2 = zext i32 %1 to i64
  %.sroa.0.0.insert.insert4 = or disjoint i64 %.sroa.5.0.insert.shift7, %.sroa.0.0.insert.ext2
  store i64 %.sroa.0.0.insert.insert4, ptr %i.t, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.u = ptrtoaddr ptr %i.s to i64
  %3 = ptrtoaddr ptr %i.c to i64
  %4 = ptrtoaddr ptr %i.h to i64
  %i.v = sub i64 %3, %4
  %i.w = add i64 %i.v, -8                         ; 2 uses
  %i.x = lshr i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 72
  %i.z = sub i64 %i.j, %i.u
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.s, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.h, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ad ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.h, i64 %i.ad ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  %i.ae = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep13, align 4, !alias.scope !503, !noalias !500
  %wide.load14 = load <2 x i64>, ptr %i.ae, align 4, !alias.scope !503, !noalias !500
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !500, !noalias !503
  store <2 x i64> %wide.load14, ptr %i.af, align 4, !alias.scope !500, !noalias !503
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !505

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader16

.lr.ph.i.i.i.i.i.i.preheader16:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader16, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader16 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader16 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  %i.ah = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !503, !noalias !500
  store i64 %i.ah, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !500, !noalias !503
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !506

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ab, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #21
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !490
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !488
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.al, ptr %i.d, align 8, !tbaa !489
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc23BytecodeModuleGenerator17addFunctionSourceEjj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(964) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !488  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !489
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0.insert.ext = zext i32 %2 to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %1 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.c, align 4
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !488
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.b, align 8, !tbaa !488
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !490  ; 8 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #23 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %.sroa.5.0.insert.ext6 = zext i32 %2 to i64
  %.sroa.5.0.insert.shift7 = shl nuw i64 %.sroa.5.0.insert.ext6, 32
  %.sroa.0.0.insert.ext2 = zext i32 %1 to i64
  %.sroa.0.0.insert.insert4 = or disjoint i64 %.sroa.5.0.insert.shift7, %.sroa.0.0.insert.ext2
  store i64 %.sroa.0.0.insert.insert4, ptr %i.t, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.u = ptrtoaddr ptr %i.s to i64
  %3 = ptrtoaddr ptr %i.c to i64
  %4 = ptrtoaddr ptr %i.h to i64
  %i.v = sub i64 %3, %4
  %i.w = add i64 %i.v, -8                         ; 2 uses
  %i.x = lshr i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 72
  %i.z = sub i64 %i.j, %i.u
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.s, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.h, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ad ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.h, i64 %i.ad ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.ae = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep13, align 4, !alias.scope !510, !noalias !507
  %wide.load14 = load <2 x i64>, ptr %i.ae, align 4, !alias.scope !510, !noalias !507
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !507, !noalias !510
  store <2 x i64> %wide.load14, ptr %i.af, align 4, !alias.scope !507, !noalias !510
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !512

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader16

.lr.ph.i.i.i.i.i.i.preheader16:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader16, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader16 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader16 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.ah = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !510, !noalias !507
  store i64 %i.ah, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !507, !noalias !510
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !513

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ab, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #21
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !490
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !488
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.al, ptr %i.d, align 8, !tbaa !489
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc23BytecodeModuleGenerator8generateEv(ptr dead_on_unwind noalias nofree writable sret(%"class.std::unique_ptr.177") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(964) initializes((958, 959)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %4 = alloca %"class.std::vector.185", align 16  ; 7 uses
  %5 = alloca %"class.std::vector.15", align 16   ; 7 uses
  %6 = alloca %"class.std::vector.196", align 16  ; 7 uses
  %7 = alloca %"class.std::vector", align 16      ; 7 uses
  %8 = alloca %"class.std::vector.201", align 16  ; 7 uses
  %9 = alloca %"class.std::vector", align 16      ; 7 uses
  %10 = alloca %"class.hermes::hbc::DebugInfoGenerator", align 8 ; 9 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  %11 = alloca %"class.std::unique_ptr.208", align 8 ; 9 uses
  %12 = alloca %"class.std::unique_ptr.208", align 8 ; 3 uses
  %13 = alloca %"class.std::unique_ptr", align 8  ; 3 uses
  %14 = alloca %"class.hermes::hbc::DebugInfo", align 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 958
  store i8 0, ptr %i.d, align 2, !tbaa !514
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 4 uses
  call void @_ZNK6hermes3hbc18StringLiteralTable14getStringKindsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.185") align 8 %4, ptr noundef nonnull align 8 dereferenceable(200) %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZNK6hermes3hbc18StringLiteralTable19getIdentifierHashesEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %5, ptr noundef nonnull align 8 dereferenceable(200) %i.e) #20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 957
  %i.g = load i8, ptr %i.f, align 1, !tbaa !327, !range !185, !noundef !40
  %i.h = shl nuw nsw i8 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 944
  %i.j = load i8, ptr %i.i, align 8, !tbaa !515, !range !185, !noundef !40
  %i.k = or disjoint i8 %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 792 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !516
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !516
  %i.p = icmp eq ptr %i.m, %i.o
  %i.q = select i1 %i.p, i8 0, i8 2
  %i.r = or disjoint i8 %i.k, %i.q
  %i.s = call noalias noundef nonnull dereferenceable(520) ptr @_Znwm(i64 noundef 520) #23 ; 44 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.v = load i32, ptr %i.u, align 8, !tbaa !517
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i8 0, ptr %i.w, align 8, !tbaa !518, !noalias !519
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !524, !noalias !519
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 353
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 840 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 888 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 816 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.at = load <2 x ptr>, ptr %i.e, align 8, !tbaa !525, !noalias !519
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.e, i8 0, i64 24, i1 false), !noalias !519
  store i8 0, ptr %i.z, align 1, !tbaa !526, !noalias !527
  %i.au = load ptr, ptr %i.ab, align 8, !tbaa !152, !noalias !527
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.ax = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !44, !noalias !527
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false), !noalias !527
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZNK6hermes6bigint19UniquingBigIntTable12getEntryListEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.196") align 8 %6, ptr noundef nonnull align 8 dereferenceable(104) %i.ac) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @_ZNK6hermes6bigint19UniquingBigIntTable15getDigitsBufferEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %7, ptr noundef nonnull align 8 dereferenceable(104) %i.ac) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @_ZNK6hermes19UniquingRegExpTable12getEntryListEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.201") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %i.ad) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @_ZNK6hermes19UniquingRegExpTable17getBytecodeBufferEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %i.ad) #20
  %i.ay = load i32, ptr %i.ae, align 8, !tbaa !532
  %i.az = load i32, ptr %i.ai, align 8, !tbaa !533
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(513) %i.s, i8 0, i64 24, i1 false)
  store i32 %i.ay, ptr %i.al, align 8, !tbaa !534
  %i.ba = load <2 x ptr>, ptr %4, align 16, !tbaa !563
  store <2 x ptr> %i.ba, ptr %i.am, align 8, !tbaa !563
  %i.bb = load ptr, ptr %i.ao, align 16, !tbaa !564
  store ptr %i.bb, ptr %i.an, align 8, !tbaa !564
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.bc = load <2 x ptr>, ptr %5, align 16, !tbaa !183
  store <2 x ptr> %i.bc, ptr %i.ap, align 8, !tbaa !183
  %i.bd = load ptr, ptr %i.ar, align 16, !tbaa !182
  store ptr %i.bd, ptr %i.aq, align 8, !tbaa !182
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.at, ptr %i.as, align 8, !tbaa !525
  store ptr %i.y, ptr %i.av, align 8, !tbaa !524
  store <2 x ptr> %i.ax, ptr %i.aw, align 8, !tbaa !44
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  store ptr %i.au, ptr %i.be, align 8, !tbaa !152
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.bg = load <2 x ptr>, ptr %6, align 16, !tbaa !565
  store <2 x ptr> %i.bg, ptr %i.bf, align 8, !tbaa !565
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 16, !tbaa !566
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !566
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.bl = load <2 x ptr>, ptr %7, align 16, !tbaa !44
  store <2 x ptr> %i.bl, ptr %i.bk, align 8, !tbaa !44
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 16, !tbaa !152
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 176
  %i.bq = load <2 x ptr>, ptr %9, align 16, !tbaa !44
  store <2 x ptr> %i.bq, ptr %i.bp, align 8, !tbaa !44
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 16, !tbaa !152
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !152
end_hunk_0
begin_hunk_1_@_ZN4llvh8DenseMapISt4pairINS_9StringRefES2_EjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE4growEj:_ZN4llvh8DenseMapISt4pairINS_9StringRefES2_EjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE15allocateBucketsEj.exit
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.prol, i64 40 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !759

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.06.i.i.unr = phi ptr [ %i.u, %.lr.ph.i.i.preheader ], [ %i.at, %.lr.ph.i.i.prol ]
  %i.au = icmp ult i64 %i.aq, 120
  br i1 %i.au, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 17 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i.i, align 8
  %.sroa.4.0..0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i, align 8
  %.sroa.5.0..0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %.sroa.5.0..0.sroa_idx.i.i, align 8
  %.sroa.6.0..0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  store i64 0, ptr %.sroa.6.0..0.sroa_idx.i.i, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  store ptr inttoptr (i64 -1 to ptr), ptr %i.av, align 8
  %.sroa.4.0..0.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 48
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.1, align 8
  %.sroa.5.0..0.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56
  store ptr inttoptr (i64 -1 to ptr), ptr %.sroa.5.0..0.sroa_idx.i.i.1, align 8
  %.sroa.6.0..0.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 64
  store i64 0, ptr %.sroa.6.0..0.sroa_idx.i.i.1, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 80
  store ptr inttoptr (i64 -1 to ptr), ptr %i.aw, align 8
  %.sroa.4.0..0.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 88
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.2, align 8
  %.sroa.5.0..0.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 96
  store ptr inttoptr (i64 -1 to ptr), ptr %.sroa.5.0..0.sroa_idx.i.i.2, align 8
  %.sroa.6.0..0.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 104
  store i64 0, ptr %.sroa.6.0..0.sroa_idx.i.i.2, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 120
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ax, align 8
  %.sroa.4.0..0.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 128
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.3, align 8
  %.sroa.5.0..0.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 136
  store ptr inttoptr (i64 -1 to ptr), ptr %.sroa.5.0..0.sroa_idx.i.i.3, align 8
  %.sroa.6.0..0.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 144
  store i64 0, ptr %.sroa.6.0..0.sroa_idx.i.i.3, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 160 ; 2 uses
  %.not.i.i.3 = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i.i.3, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !758

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not39.i = icmp eq i32 %i.c, 0
  br i1 %.not39.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E18moveFromOldBucketsEPS9_SC_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i, %bb.c
  %.040.i = phi ptr [ %i.bm, %bb.c ], [ %i.d, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i ] ; 8 uses
  %.sroa.05.0.copyload.i.i = load ptr, ptr %.040.i, align 8, !tbaa !44
  %magicptr.i = ptrtoint ptr %.sroa.05.0.copyload.i.i to i64
  switch i64 %magicptr.i, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefES2_EE7isEqualERKS3_S6_.exit33.thread.i [
    i64 -1, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefES2_EE7isEqualERKS3_S6_.exit.i
    i64 -2, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefES2_EE7isEqualERKS3_S6_.exit33.i
  ]

_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefES2_EE7isEqualERKS3_S6_.exit.i: ; preds = %.lr.ph.i6
  %i.az = getelementptr inbounds nuw i8, ptr %.040.i, i64 16
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.az, align 8, !tbaa !44
  %i.ba = icmp eq ptr %.sroa.01.0.copyload.i.i, inttoptr (i64 -1 to ptr)
  br i1 %i.ba, label %bb.c, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefES2_EE7isEqualERKS3_S6_.exit33.thread.i

_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefES2_EE7isEqualERKS3_S6_.exit33.i: ; preds = %.lr.ph.i6
  %i.bb = getelementptr inbounds nuw i8, ptr %.040.i, i64 16
  %.sroa.01.0.copyload.i22.i = load ptr, ptr %i.bb, align 8, !tbaa !44
  %i.bc = icmp eq ptr %.sroa.01.0.copyload.i22.i, inttoptr (i64 -2 to ptr)
  br i1 %i.bc, label %bb.c, label %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefES2_EE7isEqualERKS3_S6_.exit33.thread.i

_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefES2_EE7isEqualERKS3_S6_.exit33.thread.i: ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefES2_EE7isEqualERKS3_S6_.exit33.i, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefES2_EE7isEqualERKS3_S6_.exit.i, %.lr.ph.i6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bd = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %.040.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !474 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %.040.i, i64 16, i1 false), !tbaa.struct !468
  %i.bf = getelementptr inbounds nuw i8, ptr %.040.i, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false), !tbaa.struct !468
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.040.i, i64 32
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !3
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !3
  %i.bk = load i32, ptr %i.al, align 8, !tbaa !755
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.al, align 8, !tbaa !755
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefES2_EE7isEqualERKS3_S6_.exit33.thread.i, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefES2_EE7isEqualERKS3_S6_.exit33.i, %_ZN4llvh12DenseMapInfoISt4pairINS_9StringRefES2_EE7isEqualERKS3_S6_.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.040.i, i64 40 ; 2 uses
  %.not.i7 = icmp eq ptr %i.bm, %i.ak
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E18moveFromOldBucketsEPS9_SC_.exit, label %.lr.ph.i6, !llvm.loop !760

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E18moveFromOldBucketsEPS9_SC_.exit: ; preds = %bb.c, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.d) #20
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E18moveFromOldBucketsEPS9_SC_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !761  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !762    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE15_M_erase_at_endEPS6_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE15_M_erase_at_endEPS6_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.k
  br i1 %.not.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE15_M_erase_at_endEPS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = load ptr, ptr %.05.i.i.i, align 8, !tbaa !202 ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !636  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN6hermes3hbc19LazyCompilationDataESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNKSt14default_deleteIN6hermes3hbc19LazyCompilationDataEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.n)
  br label %_ZNSt10unique_ptrIN6hermes3hbc19LazyCompilationDataESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6hermes3hbc19LazyCompilationDataESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !156  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes3hbc23HBCExceptionHandlerInfoESaIS2_EED2Ev.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6hermes3hbc19LazyCompilationDataESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !155
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #21
  br label %_ZNSt6vectorIN6hermes3hbc23HBCExceptionHandlerInfoESaIS2_EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorIN6hermes3hbc23HBCExceptionHandlerInfoESaIS2_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %_ZNSt10unique_ptrIN6hermes3hbc19LazyCompilationDataESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i.i
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !153  ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6hermes3hbc16BytecodeFunctionEEclEPS2_.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6hermes3hbc23HBCExceptionHandlerInfoESaIS2_EED2Ev.exit.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !152
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #21
  br label %_ZNKSt14default_deleteIN6hermes3hbc16BytecodeFunctionEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6hermes3hbc16BytecodeFunctionEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.h, %_ZNSt6vectorIN6hermes3hbc23HBCExceptionHandlerInfoESaIS2_EED2Ev.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 104) #21
  br label %_ZSt8_DestroyISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6hermes3hbc16BytecodeFunctionEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EEEvT_S8_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !763

_ZSt8_DestroyIPSt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EEEvT_S8_.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  store ptr %i.k, ptr %i.a, align 8, !tbaa !761
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE15_M_erase_at_endEPS6_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE15_M_erase_at_endEPS6_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EEEvT_S8_.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !761  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !762    ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !764
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EEmS6_ET_S8_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EEmS6_ET_S8_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !765
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !761
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #22
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #23 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !765
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %2 = ptrtoaddr ptr %i.b to i64
  %3 = ptrtoaddr ptr %i.c to i64
  %i.x = sub i64 %2, %3
  %i.y = add i64 %i.x, -8                         ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader37, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = add i64 %i.d, -8
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ae
  %scevgep33 = getelementptr i8, ptr %i.c, i64 %i.ae
  %bound0 = icmp ult ptr %i.u, %scevgep33
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader37, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ai ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.c, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  %i.aj = getelementptr i8, ptr %next.gep34, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep34, align 8, !tbaa !202, !alias.scope !772, !noalias !767
  %wide.load35 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !202, !alias.scope !772, !noalias !767
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !202, !alias.scope !775, !noalias !772
  store <2 x i64> %wide.load35, ptr %i.ak, align 8, !tbaa !202, !alias.scope !775, !noalias !772
  %i.al = getelementptr i8, ptr %next.gep34, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep34, align 8, !tbaa !202, !alias.scope !772, !noalias !767
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !202, !alias.scope !772, !noalias !767
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !777

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader37

.lr.ph.i.i.i.preheader37:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader37, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader37 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader37 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  %i.an = load i64, ptr %.0911.i.i.i, align 8, !tbaa !202, !alias.scope !770, !noalias !767
  store i64 %i.an, ptr %.012.i.i.i, align 8, !tbaa !202, !alias.scope !767, !noalias !770
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !202, !alias.scope !770, !noalias !767
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !778

_ZNSt6vectorISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.not.i30 = icmp eq ptr %i.c, null
  br i1 %.not.i30, label %_ZNSt12_Vector_baseISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.aq = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aq) #21
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !762
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !761
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.as, ptr %i.h, align 8, !tbaa !764
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EEmS6_ET_S8_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt10unique_ptrIN6hermes3hbc16BytecodeFunctionESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !646
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !779
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !193
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !646
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !779
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNKSt14default_deleteIN6hermes3hbc19LazyCompilationDataEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !638  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIKN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 8, !tbaa !643
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !645
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !646
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #20, !inline_history !780
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !646
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #20, !inline_history !780
  br label %_ZNSt12__shared_ptrIKN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !193
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.h, label %_ZNSt12__shared_ptrIKN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !434

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #20
  br label %_ZNSt12__shared_ptrIKN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIKN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !638  ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i, label %_ZN6hermes3hbc19LazyCompilationDataD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIKN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.u, align 8, !tbaa !643
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !645
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !646
end_hunk_1
