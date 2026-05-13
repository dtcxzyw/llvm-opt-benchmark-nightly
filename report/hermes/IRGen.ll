inline.NumInlined: 322
inline.NumDeleted: 259
begin_hunk_0_@_ZN6hermes20generateIRFromESTreeEPNS_6ESTree4NodeEPNS_6ModuleERKSt6vectorIPNS0_11ProgramNodeESaIS7_EERKNS_10ScopeChainE:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  call void @_ZdlPv(ptr noundef %i.b) #10
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN6hermes5irgen11ESTreeIRGenD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.e, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !16
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #10, !inline_history !19
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #10, !inline_history !19
  br label %_ZN6hermes5irgen11ESTreeIRGenD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.e ], [ %i.r, %bb.f ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.g, label %_ZN6hermes5irgen11ESTreeIRGenD2Ev.exit, !prof !21

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #10
  br label %_ZN6hermes5irgen11ESTreeIRGenD2Ev.exit

_ZN6hermes5irgen11ESTreeIRGenD2Ev.exit:           ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22
  call void @_ZdlPv(ptr noundef %i.u) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN6hermes5irgen11ESTreeIRGenC1EPNS_6ESTree4NodeERKSt6vectorIPNS2_11ProgramNodeESaIS7_EEPNS_6ModuleERKNS_10ScopeChainE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN6hermes5irgen11ESTreeIRGen4doItEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes22generateIRForCJSModuleEPNS_6ESTree22FunctionExpressionNodeEjjN4llvh9StringRefEPNS_6ModuleEPNS_8FunctionERKSt6vectorIPNS0_11ProgramNodeESaISB_EE(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %"class.hermes::irgen::ESTreeIRGen", align 8 ; 7 uses
  %9 = alloca %"struct.hermes::ScopeChain", align 8 ; 8 uses
  %10 = alloca %"class.llvh::StringRef", align 8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6hermes5irgen11ESTreeIRGenC1EPNS_6ESTree4NodeERKSt6vectorIPNS2_11ProgramNodeESaIS7_EEPNS_6ModuleERKNS_10ScopeChainE(ptr noundef nonnull align 8 dereferenceable(200) %8, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %9) #10
  %i.a = load ptr, ptr %9, align 8, !tbaa !25     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !29 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #11
  br label %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !33

_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %9, align 8, !tbaa !25
  br label %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i

_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i: ; preds = %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exitthread-pre-split.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exitthread-pre-split.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i, label %_ZN6hermes10ScopeChainD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #11
  br label %_ZN6hermes10ScopeChainD2Ev.exit

_ZN6hermes10ScopeChainD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36
  store ptr %3, ptr %10, align 8, !tbaa !42
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !44
  call void @_ZN6hermes5irgen11ESTreeIRGen11doCJSModuleEPNS_8FunctionEPNS_3sem12FunctionInfoEjjN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(200) %8, ptr noundef %6, ptr noundef %i.r, i32 noundef %1, i32 noundef %2, ptr noundef nonnull byval(%"class.llvh::StringRef") align 8 %10) #10
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 176
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !7
  call void @_ZdlPv(ptr noundef %i.t) #10
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !11   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZN6hermes5irgen11ESTreeIRGenD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes10ScopeChainD2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.w, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !16
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #10, !inline_history !19
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #10, !inline_history !19
  br label %_ZN6hermes5irgen11ESTreeIRGenD2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i6 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.z, %bb.g ], [ %i.aj, %bb.h ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.i, label %_ZN6hermes5irgen11ESTreeIRGenD2Ev.exit, !prof !21

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #10
  br label %_ZN6hermes5irgen11ESTreeIRGenD2Ev.exit

_ZN6hermes5irgen11ESTreeIRGenD2Ev.exit:           ; preds = %_ZN6hermes10ScopeChainD2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !22
  call void @_ZdlPv(ptr noundef %i.am) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @_ZN6hermes5irgen11ESTreeIRGen11doCJSModuleEPNS_8FunctionEPNS_3sem12FunctionInfoEjjN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef byval(%"class.llvh::StringRef") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, ptr } @_ZN6hermes22generateLazyFunctionIREPNS_3hbc19LazyCompilationDataEPNS_6ModuleE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.hermes::SimpleDiagHandlerRAII", align 8 ; 5 uses
  %3 = alloca %"class.hermes::sem::SemContext", align 8 ; 15 uses
  %4 = alloca %"class.hermes::parser::JSParser", align 8 ; 6 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.hermes::irgen::ESTreeIRGen", align 8 ; 7 uses
  %8 = alloca %"class.std::vector", align 8       ; 6 uses
  %9 = alloca %"struct.hermes::ScopeChain", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49, !nonnull !110, !align !111
  call void @_ZN6hermes21SimpleDiagHandlerRAIIC1ERNS_18SourceErrorManagerE(ptr noundef nonnull align 8 dereferenceable(388) %2, ptr noundef nonnull align 8 dereferenceable(464) %i.d) #10
  %i.e = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #12 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !112  ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !113
  store i32 %i.h, ptr %i.e, align 8, !tbaa !113
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !120
  store i64 %i.k, ptr %i.i, align 8, !tbaa !120
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !121
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 0, ptr %i.n, align 8, !tbaa !122
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 0, ptr %i.o, align 4, !tbaa !123
  store ptr %i.g, ptr %i.m, align 8, !tbaa !124
  store ptr %i.e, ptr %i.f, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  store i64 8, ptr %i.p, align 8, !tbaa !125
  %i.q = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #12 ; 2 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !130
  %10 = load i64, ptr %i.p, align 8, !tbaa !125
  %11 = add i64 %10, -1
  %12 = lshr i64 %11, 1
  %13 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %12 ; 3 uses
  %i.r = call noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #12 ; 6 uses
  store ptr %i.r, ptr %13, align 8, !tbaa !131
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %13, ptr %i.t, align 8, !tbaa !132
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.r, ptr %i.u, align 8, !tbaa !133
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 320 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.v, ptr %i.w, align 8, !tbaa !134
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr %13, ptr %i.y, align 8, !tbaa !132
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.r, ptr %i.z, align 8, !tbaa !133
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %i.v, ptr %i.aa, align 8, !tbaa !134
  store ptr %i.r, ptr %i.s, align 8, !tbaa !135
  store ptr %i.r, ptr %i.x, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !137
  call void @_ZN6hermes6parser8JSParserC1ERNS_7ContextEjNS0_10ParserPassE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(656) %i.b, i32 noundef %i.ac, i32 noundef 1) #10
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !148, !range !149, !noundef !110
  %i.af = trunc nuw i8 %i.ae to i1
  call void @_ZN6hermes6parser8JSParser13setStrictModeEb(ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext %i.af) #10
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !150
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !151, !range !149, !noundef !110
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.am = load i8, ptr %i.al, align 2, !tbaa !152, !range !149, !noundef !110
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.02.0.copyload = load ptr, ptr %i.ao, align 8, !tbaa !42
  %i.ap = call { i64, i8 } @_ZN6hermes6parser8JSParser17parseLazyFunctionENS_6ESTree8NodeKindEbbN4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.ah, i1 noundef zeroext %i.ak, i1 noundef zeroext %i.an, ptr %.sroa.02.0.copyload) #10 ; 2 uses
  %i.aq = extractvalue { i64, i8 } %i.ap, 1
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.as = extractvalue { i64, i8 } %i.ap, 0
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.au = load i8, ptr %i.ad, align 4, !tbaa !148, !range !149, !noundef !110
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = call noundef zeroext i1 @_ZN6hermes3sem19validateFunctionASTERNS_7ContextERNS0_10SemContextEPNS_6ESTree4NodeEb(ptr noundef nonnull align 8 dereferenceable(656) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef %i.at, i1 noundef zeroext %i.av) #10
  br i1 %i.aw, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ay = call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #12 ; 20 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store i16 1023, ptr %i.az, align 2, !tbaa !153
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i16 7, ptr %i.ba, align 2, !tbaa !156
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !121
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i32 0, ptr %i.bd, align 8, !tbaa !122
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  store i32 2, ptr %i.be, align 4, !tbaa !123
  store i8 120, ptr %i.ay, align 8, !tbaa !157
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  store ptr %i.ax, ptr %i.bf, align 8, !tbaa !165
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !121
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  store i32 0, ptr %i.bi, align 8, !tbaa !122
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 60
  store i32 8, ptr %i.bj, align 4, !tbaa !123
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 152
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false)
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !121
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 160
  store i32 0, ptr %i.bn, align 8, !tbaa !122
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 164
  store i32 8, ptr %i.bo, align 4, !tbaa !123
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ay, i64 232
  store i8 0, ptr %i.bp, align 8, !tbaa !179
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !122 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !123
  %.not.i.i = icmp ult i32 %i.bs, %i.bu
  br i1 %.not.i.i, label %_ZN6hermes9ScopeDesc16createInnerScopeEv.exit, label %bb.d, !prof !180

bb.d:                                             ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 192
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull %i.bv, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i = load i32, ptr %i.br, align 8, !tbaa !122
  br label %_ZN6hermes9ScopeDesc16createInnerScopeEv.exit

_ZN6hermes9ScopeDesc16createInnerScopeEv.exit:    ; preds = %bb.c, %bb.d
  %i.bw = phi i32 [ %.pre.i.i, %bb.d ], [ %i.bs, %bb.c ] ; 2 uses
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !121
  %i.by = zext i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.by
  store ptr %i.ay, ptr %i.bz, align 8, !tbaa !181
  %i.ca = add i32 %i.bw, 1
  store i32 %i.ca, ptr %i.br, align 8, !tbaa !122
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.01.0.copyload = load ptr, ptr %i.cb, align 8, !tbaa !182
  %.sroa.0.0.copyload = load ptr, ptr %i.ao, align 8, !tbaa !42
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @_ZNK6hermes17SimpleDiagHandler14getErrorStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(360) %2) #10
  %i.cc = load ptr, ptr %6, align 8, !tbaa !183
  store ptr %i.cc, ptr %5, align 8, !tbaa !186
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !188
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !189
  %i.cg = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen22genSyntaxErrorFunctionEPNS_6ModuleEPNS_9ScopeDescENS_10IdentifierEN4llvh7SMRangeENS7_9StringRefE(ptr noundef nonnull %1, ptr noundef nonnull %i.ay, ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull byval(%"class.llvh::StringRef") align 8 %5) #10 ; 2 uses
  %i.ch = load ptr, ptr %6, align 8, !tbaa !183   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6hermes9ScopeDesc16createInnerScopeEv.exit
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !20
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6hermes9ScopeDesc16createInnerScopeEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.o

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6hermes5irgen11ESTreeIRGenC1EPNS_6ESTree4NodeERKSt6vectorIPNS2_11ProgramNodeESaIS7_EEPNS_6ModuleERKNS_10ScopeChainE(ptr noundef nonnull align 8 dereferenceable(200) %7, ptr noundef %i.at, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %9) #10
  %i.cm = load ptr, ptr %9, align 8, !tbaa !25    ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !28 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cm, %i.co
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cv, %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i ], [ %i.cm, %bb.e ] ; 3 uses
  %i.cp = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !29 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !32
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.cu) #11
  br label %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cv, %i.co
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !33

_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6hermes14ScopeChainItemEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %9, align 8, !tbaa !25
  br label %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i

_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i: ; preds = %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exitthread-pre-split.i.i, %bb.e
  %i.cw = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exitthread-pre-split.i.i ], [ %i.cm, %bb.e ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i1.i.i, label %_ZN6hermes10ScopeChainD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !35
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.db) #11
  br label %_ZN6hermes10ScopeChainD2Ev.exit

_ZN6hermes10ScopeChainD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPN6hermes14ScopeChainItemEEvT_S3_.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  %i.dc = load ptr, ptr %8, align 8, !tbaa !190   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN6hermes6ESTree11ProgramNodeESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes10ScopeChainD2Ev.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !193
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #11
  br label %_ZNSt6vectorIPN6hermes6ESTree11ProgramNodeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6hermes6ESTree11ProgramNodeESaIS3_EED2Ev.exit: ; preds = %_ZN6hermes10ScopeChainD2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  %i.di = call { ptr, ptr } @_ZN6hermes5irgen11ESTreeIRGen14doLazyFunctionEPNS_3hbc19LazyCompilationDataE(ptr noundef nonnull align 8 dereferenceable(200) %7, ptr noundef %0) #10 ; 2 uses
  %i.dj = extractvalue { ptr, ptr } %i.di, 0
  %i.dk = extractvalue { ptr, ptr } %i.di, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 176
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !7
  call void @_ZdlPv(ptr noundef %i.dm) #10
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !11 ; 8 uses
  %.not.i.i.i20 = icmp eq ptr %i.do, null
end_hunk_0
