Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/BytecodeGenerator?download=true
inline.NumInlined: 2659
inline.NumDeleted: 1336
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6hermes3hbc25BytecodeFunctionGenerator22addDebugSourceLocationERKNS0_19DebugSourceLocationE:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.d, ptr noundef nonnull align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !496
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !497
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.m, ptr %i.c, align 8, !tbaa !497
  br label %_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE9push_backERKS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775776
  br i1 %i.q, label %bb.g, label %_ZNKSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.r = ashr exact i64 %i.p, 5                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 288230376151711743)
  %i.v = select i1 %i.t, i64 288230376151711743, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 5
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #23 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.y, ptr noundef nonnull align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !496
  br i1 %i.e, label %_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.x, %_ZNKSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.b, %_ZNKSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !496, !alias.scope !498
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !493

_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aa, %.lr.ph.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i23.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !98
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.ae) #21
  br label %_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !99
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !497
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.j, align 8, !tbaa !98
  br label %_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc25BytecodeFunctionGenerator12setJumpTableEOSt6vectorIjSaIjEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) initializes((184, 192)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 !guid !499 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !102
  store <2 x ptr> %i.e, ptr %i.a, align 8, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !101
  store ptr %i.g, ptr %i.c, align 8, !tbaa !101
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEEaSEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.j) #21
  br label %_ZNSt6vectorIjSaIjEEaSEOS1_.exit

_ZNSt6vectorIjSaIjEEaSEOS1_.exit:                 ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc25BytecodeFunctionGenerator24generateBytecodeFunctionENS_8Function14DefinitionKindENS_9ValueKindEbjjj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %2, i8 noundef zeroext %3, i1 noundef zeroext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 align 2 !guid !502 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.b = load i8, ptr %i.a, align 8, !tbaa !103, !range !104, !noundef !56
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes3hbc25BytecodeFunctionGenerator26bytecodeGenerationCompleteEv(ptr noundef nonnull align 8 dereferenceable(200) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.e = load i32, ptr %i.d, align 4, !tbaa !105
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load i32, ptr %i.f, align 8, !tbaa !503
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 169
  %i.i = load i8, ptr %i.h, align 1, !tbaa !504
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 170
  %i.k = load i8, ptr %i.j, align 2, !tbaa !505
  %switch.tableidx = add i32 %2, -1               ; 2 uses
  %i.l = icmp ult i32 %switch.tableidx, 3
  br i1 %i.l, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = and i8 %3, -3
  %i.n = icmp eq i8 %i.m, -127
  %i.o = select i1 %i.n, i8 1, i8 2
  br label %bb.e

switch.lookup:                                    ; preds = %bb.c
  %switch.cast = trunc nuw i32 %switch.tableidx to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 65792, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  br label %bb.e

bb.e:                                             ; preds = %switch.lookup, %bb.d
  %.sroa.12.0 = phi i8 [ %i.o, %bb.d ], [ %switch.masked, %switch.lookup ]
  %i.p = select i1 %4, i8 4, i8 0
  %i.q = or disjoint i8 %.sroa.12.0, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !82
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !84
  %.not = icmp eq ptr %i.t, %i.u
  %i.v = select i1 %.not, i8 0, i8 8
  %i.w = or disjoint i8 %i.q, %i.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  %i.x = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #23, !noalias !506 ; 19 uses
  %i.y = load <2 x ptr>, ptr %1, align 8, !tbaa !60, !noalias !506
  store <2 x ptr> %i.y, ptr %i.x, align 8, !tbaa !60, !noalias !506
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !80, !noalias !506
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !80, !noalias !506
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !noalias !506
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i32 0, ptr %i.ac, align 8, !tbaa !12, !noalias !506
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  store i32 %5, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !12, !noalias !506
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i32 %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !12, !noalias !506
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  store i32 %7, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !12, !noalias !506
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !12, !noalias !506
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  store i32 %i.g, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !12, !noalias !506
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store i32 %6, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !12, !noalias !506
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 52
  store i8 %i.i, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !106, !noalias !506
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 53
  store i8 %i.k, ptr %.sroa.11.0..sroa_idx, align 1, !tbaa !106, !noalias !506
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 54
  store i8 %i.w, ptr %.sroa.12.0..sroa_idx, align 2, !tbaa !106, !noalias !506
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store i32 -1, ptr %i.ad, align 8, !tbaa !508, !noalias !506
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 60
  store i32 -1, ptr %i.ae, align 4, !tbaa !509, !noalias !506
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store i32 -1, ptr %i.af, align 8, !tbaa !510, !noalias !506
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.ah = load <2 x ptr>, ptr %i.r, align 8, !tbaa !511, !noalias !506
  store <2 x ptr> %i.ah, ptr %i.ag, align 8, !tbaa !511, !noalias !506
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !83, !noalias !506
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !83, !noalias !506
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false), !noalias !506
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  store ptr null, ptr %i.al, align 8, !tbaa !513, !noalias !506
  store ptr %i.x, ptr %0, align 8, !tbaa !109, !alias.scope !506
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc25BytecodeFunctionGenerator26bytecodeGenerationCompleteEv(ptr noundef nonnull align 8 dereferenceable(200) initializes((164, 169)) %0) local_unnamed_addr #0 align 2 !guid !514 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 1, ptr %i.b, align 8, !tbaa !103
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110  ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !81     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %i.i, ptr %i.j, align 4, !tbaa !105
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !102  ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = add i64 %i.h, 3
  %i.q = and i64 %i.p, 4294967292                 ; 5 uses
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = add i64 %i.t, %i.q
  %i.v = and i64 %i.u, 4294967292                 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !80
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.g
  %i.aa = icmp ult i64 %i.z, %i.v
  br i1 %i.aa, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #23 ; 6 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !81    ; 4 uses
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %bb.c, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr align 1 %i.ac, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.c, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ac, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !80
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ak) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %bb.d, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.ab, ptr %0, align 8, !tbaa !81
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.h ; 2 uses
  store ptr %i.al, ptr %i.c, align 8, !tbaa !110
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  store ptr %i.am, ptr %i.w, align 8, !tbaa !80
  %.pre9 = ptrtoint ptr %i.ab to i64
  br label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt6vectorIhSaIhEE7reserveEm.exit:              ; preds = %bb.b, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i
  %.pre-phi10 = phi i64 [ %i.g, %bb.b ], [ %.pre9, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ] ; 3 uses
  %i.an = phi ptr [ %i.e, %bb.b ], [ %i.ab, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ] ; 4 uses
  %i.ao = phi ptr [ %i.d, %bb.b ], [ %i.al, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !106
  %i.ap = icmp ugt i64 %i.q, %i.h
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %i.aq = sub nuw nsw i64 %i.q, %i.h
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ao, i64 noundef %i.aq, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !60
  %.pre7 = load ptr, ptr %0, align 8, !tbaa !60   ; 2 uses
  %.pre13 = ptrtoint ptr %.pre7 to i64
  br label %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %i.ar = icmp ult i64 %i.q, %i.h
  br i1 %i.ar, label %bb.g, label %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.q ; 3 uses
  %.not.i.i = icmp eq ptr %i.ao, %i.as
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.as, ptr %i.c, align 8, !tbaa !110
  br label %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit

_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit:            ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.pre-phi14 = phi i64 [ %.pre13, %bb.e ], [ %.pre-phi10, %bb.f ], [ %.pre-phi10, %bb.g ], [ %.pre-phi10, %bb.h ]
  %i.at = phi ptr [ %.pre7, %bb.e ], [ %i.an, %bb.f ], [ %i.an, %bb.g ], [ %i.an, %bb.h ]
  %i.au = phi ptr [ %.pre, %bb.e ], [ %i.ao, %bb.f ], [ %i.ao, %bb.g ], [ %i.as, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !100 ; 2 uses
  %i.aw = and i64 %i.t, 4294967292
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ay, %.pre-phi14
  %i.ba = getelementptr inbounds i8, ptr %i.at, i64 %i.az
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ba, ptr noundef %i.av, ptr noundef %i.ax)
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes3hbc25BytecodeFunctionGenerator13getFunctionIDEPNS_8FunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !guid !515 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55, !nonnull !56, !align !57 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.d = load i32, ptr %i.c, align 8, !tbaa !153
  %i.e = icmp ne i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 956 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !231, !range !104, !noundef !56
  %i.h = zext i1 %i.e to i8
  %i.i = or i8 %i.g, %i.h
  store i8 %i.i, ptr %i.f, align 4, !tbaa !231
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i8, ptr %i.j, align 8, !tbaa !232
  %i.l = icmp eq i8 %i.k, -125
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 957 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !233, !range !104, !noundef !56
  %i.o = zext i1 %i.l to i8
  %i.p = or i8 %i.n, %i.o
  store i8 %i.p, ptr %i.m, align 1, !tbaa !233
  %i.q = tail call noundef i32 @_ZN6hermes3hbc15AllocationTableIPNS_8FunctionEE8allocateES3_(ptr noundef nonnull align 8 dereferenceable(964) %i.b, ptr noundef %1)
  ret i32 %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes3hbc23BytecodeModuleGenerator11addFunctionEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(964) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !guid !516 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.b = load i32, ptr %i.a, align 8, !tbaa !153
  %i.c = icmp ne i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 956 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !231, !range !104, !noundef !56
  %i.f = zext i1 %i.c to i8
  %i.g = or i8 %i.e, %i.f
  store i8 %i.g, ptr %i.d, align 4, !tbaa !231
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !232
  %i.j = icmp eq i8 %i.i, -125
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 957 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !233, !range !104, !noundef !56
  %i.m = zext i1 %i.j to i8
  %i.n = or i8 %i.l, %i.m
  store i8 %i.n, ptr %i.k, align 1, !tbaa !233
  %i.o = tail call noundef i32 @_ZN6hermes3hbc15AllocationTableIPNS_8FunctionEE8allocateES3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1)
  ret i32 %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes3hbc25BytecodeFunctionGenerator14getScopeDescIDEPNS_9ScopeDescE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !guid !517 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55, !nonnull !56, !align !57 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !234
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !242  ; 2 uses
  %.not2.i = icmp eq ptr %i.e, null
  br i1 %.not2.i, label %_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZNK6hermes8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(304) %i.e) #20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.h = load i32, ptr %i.g, align 8, !tbaa !298
  %.not1.i = icmp eq i32 %i.h, 2
  br i1 %.not1.i, label %_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !234
  br label %_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE.exit

_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.j = call noundef zeroext i1 @_ZN4llvh9SetVectorIPN6hermes9ScopeDescESt6vectorIS3_SaIS3_EENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEEE6insertERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !234
  %i.m = call noundef i32 @_ZN6hermes3hbc15AllocationTableIPNS_9ScopeDescEE8allocateES3_(ptr noundef nonnull align 8 dereferenceable(104) %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE(ptr noundef nonnull align 8 dereferenceable(964) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !guid !518 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !234
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !242  ; 2 uses
  %.not2 = icmp eq ptr %i.c, null
  br i1 %.not2, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZNK6hermes8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(304) %i.c) #20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.f = load i32, ptr %i.e, align 8, !tbaa !298
  %.not1 = icmp eq i32 %i.f, 2
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !234
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = call noundef zeroext i1 @_ZN4llvh9SetVectorIPN6hermes9ScopeDescESt6vectorIS3_SaIS3_EENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEEE6insertERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !234
  %i.k = call noundef i32 @_ZN6hermes3hbc15AllocationTableIPNS_9ScopeDescEE8allocateES3_(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef %i.j)
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6hermes3hbc25BytecodeFunctionGenerator10shrinkJumpEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !guid !519 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60   ; 2 uses
  %.not11.i.i = icmp eq ptr %i.d, %i.g
  br i1 %.not11.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.h, %i.e                       ; 3 uses
  %i.j = icmp sgt i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.d, !prof !94

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.c, ptr nonnull align 1 %i.d, i64 %i.i, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.i, 1
  br i1 %i.k, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i8, ptr %i.d, align 1, !tbaa !106
  store i8 %i.l, ptr %i.c, align 1, !tbaa !106
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !60   ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.e
  %i.p = getelementptr inbounds i8, ptr %i.c, i64 %i.o ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.p
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEE5eraseEN9__gnu_cxx17__normal_iteratorIPKhS1_EES6_.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i
  store ptr %i.p, ptr %i.f, align 8, !tbaa !110
  br label %_ZNSt6vectorIhSaIhEE5eraseEN9__gnu_cxx17__normal_iteratorIPKhS1_EES6_.exit

_ZNSt6vectorIhSaIhEE5eraseEN9__gnu_cxx17__normal_iteratorIPKhS1_EES6_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i, %bb.f
  %i.q = add i32 %1, -1
  %i.r = zext i32 %i.q to i64
  %i.s = load ptr, ptr %0, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !106
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr i8, ptr @switch.table._ZN6hermes3hbc25BytecodeFunctionGenerator10shrinkJumpEj, i64 %i.v
  %switch.gep = getelementptr i8, ptr %i.w, i64 113
  %switch.load = load i8, ptr %switch.gep, align 1
  store i8 %switch.load, ptr %i.t, align 1, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6hermes3hbc25BytecodeFunctionGenerator16updateJumpTargetEjii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 !guid !522 {
bb.a:
  %.not8 = icmp eq i32 %3, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %3, 3                       ; 2 uses
end_hunk_0
