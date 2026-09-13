Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ModuleMap?download=true
inline.NumInlined: 8041
inline.NumDeleted: 3349
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5clang15ModuleMapLoader22diagnosePrivateModulesENS_14SourceLocationE:bb.a
_ZN4llvmneENS_9StringRefES0_.exit.thread:         ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZN4llvmneENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.fe = load ptr, ptr %i.aa, align 8, !tbaa !632, !nonnull !206, !align !269
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %.sroa.02.0.copyload = load i32, ptr %i.ff, align 8, !tbaa !270
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %7, ptr noundef nonnull align 8 dereferenceable(15256) %i.fe, i32 %.sroa.02.0.copyload, i32 noundef 1381) #26
  %i.fg = load ptr, ptr %i.o, align 8, !tbaa !584 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !60
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !61
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %7, ptr %i.fh, i64 %i.fj)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.fk = load ptr, ptr %i.o, align 8, !tbaa !584 ; 3 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !60
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !61
  %i.fo = load ptr, ptr %5, align 8, !tbaa !286
  %i.fp = load i64, ptr %i.y, align 8, !tbaa !287
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %.sroa.0.0.copyload = load i32, ptr %i.fq, align 8, !tbaa !270 ; 2 uses
  %.sroa.2.0.insert.ext = zext i32 %.sroa.0.0.copyload to i64 ; 2 uses
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.2.0.insert.ext
  %.val.val = load ptr, ptr %i.aa, align 8, !tbaa !632
  call fastcc void @"_ZZN5clang15ModuleMapLoader22diagnosePrivateModulesENS_14SourceLocationEENK3$_0clEN4llvm9StringRefES4_PKNS_6ModuleENS_11SourceRangeE"(ptr %.val.val, i32 %.sroa.0.0.copyload, ptr %i.fl, i64 %i.fn, ptr %i.fo, i64 %i.fp, ptr noundef nonnull %i.ae, i64 %.sroa.0.0.insert.insert)
  br label %.thread

.thread:                                          ; preds = %bb.u, %bb.t, %bb.j, %bb.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.r, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZN4llvmneENS_9StringRefES0_.exit, %_ZN4llvmneENS_9StringRefES0_.exit.thread, %_ZN4llvm15SmallVectorImplIcE6appendERKS1_.exit
  %i.fr = load ptr, ptr %5, align 8, !tbaa !286   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.x
  br i1 %i.fs, label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %.thread
  call void @free(ptr noundef %i.fr) #26
  br label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit

_ZN4llvm11SmallVectorIcLj128EED2Ev.exit:          ; preds = %.thread, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ft = load ptr, ptr %4, align 8, !tbaa !286   ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.u
  br i1 %i.fu, label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit70, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit
  call void @free(ptr noundef %i.ft) #26
  br label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit70

_ZN4llvm11SmallVectorIcLj128EED2Ev.exit70:        ; preds = %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.pre121 = load ptr, ptr %2, align 8, !tbaa !286
  br label %_ZNK4llvm11SmallStringILj128EE9ends_withENS_9StringRefE.exit.thread99

_ZNK4llvm11SmallStringILj128EE9ends_withENS_9StringRefE.exit.thread99: ; preds = %_ZNK4llvm11SmallStringILj128EE11starts_withENS_9StringRefE.exit.thread98, %_ZNK4llvm11SmallStringILj128EE9ends_withENS_9StringRefE.exit, %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit70
  %i.fv = phi ptr [ %i.bg, %_ZNK4llvm11SmallStringILj128EE11starts_withENS_9StringRefE.exit.thread98 ], [ %i.bg, %_ZNK4llvm11SmallStringILj128EE9ends_withENS_9StringRefE.exit ], [ %.pre121, %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit70 ] ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.q
  br i1 %i.fw, label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit71, label %bb.x

bb.x:                                             ; preds = %_ZNK4llvm11SmallStringILj128EE9ends_withENS_9StringRefE.exit.thread99
  call void @free(ptr noundef %i.fv) #26
  br label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit71

_ZN4llvm11SmallVectorIcLj128EED2Ev.exit71:        ; preds = %_ZNK4llvm11SmallStringILj128EE9ends_withENS_9StringRefE.exit.thread99, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.y

bb.y:                                             ; preds = %.split, %_ZN5clangneINS_17DirectoryEntryRefES1_EEbRKNS_20CustomizableOptionalIT_EERKNS2_IT0_EE.exit, %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit71
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.092.0112, i64 8 ; 3 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !68 ; 2 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %.lr.ph.i.i, label %_ZN4llvm17StringMapIterBaseIPN5clang6ModuleELb1EEppEv.exit

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.ga = phi ptr [ %i.gb, %.lr.ph.i.i ], [ %i.fx, %bb.y ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 3 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !68 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %.lr.ph.i.i, label %_ZN4llvm17StringMapIterBaseIPN5clang6ModuleELb1EEppEv.exit, !llvm.loop !1161

_ZN4llvm17StringMapIterBaseIPN5clang6ModuleELb1EEppEv.exit: ; preds = %.lr.ph.i.i, %bb.y
  %i.ge = phi ptr [ %i.fy, %bb.y ], [ %i.gc, %.lr.ph.i.i ]
  %.sroa.092.1 = phi ptr [ %i.fx, %bb.y ], [ %i.gb, %.lr.ph.i.i ] ; 2 uses
  %i.gf = load ptr, ptr %i.a, align 8, !tbaa !631, !nonnull !206, !align !269 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 240
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !65
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 248
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !66
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gk
  %.not106 = icmp eq ptr %.sroa.092.1, %i.gl
  br i1 %.not106, label %._crit_edge, label %bb.c, !llvm.loop !1162
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN5clang15ModuleMapLoader22diagnosePrivateModulesENS_14SourceLocationEENK3$_0clEN4llvm9StringRefES4_PKNS_6ModuleENS_11SourceRangeE"(ptr %.0.val.8.val, i32 %.0.val.48.val.32.val, ptr %0, i64 %1, ptr %2, i64 %3, ptr nofree noundef readonly captures(none) %4, i64 %5) unnamed_addr #4 align 2 {
bb.a:
  %6 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %7 = alloca %"class.clang::FixItHint", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %6, ptr noundef nonnull align 8 dereferenceable(15256) %.0.val.8.val, i32 %.0.val.48.val.32.val, i32 noundef 1285) #26
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %6, ptr %0, i64 %1)
  %i.a = load ptr, ptr %4, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !61
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %6, ptr %i.a, i64 %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZN5clang9FixItHint17CreateReplacementENS_15CharSourceRangeEN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.clang::FixItHint") align 8 %7, i64 %5, i8 1, ptr %2, i64 %3)
  %i.d = load i32, ptr %7, align 8, !tbaa !542
  %i.e = icmp eq i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  %.not2.i.i.i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %.not2.i.i.i.i, label %_ZNK5clang17DiagnosticBuilderlsINS_9FixItHintEvEERKS0_OT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %6, align 8, !tbaa !277    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %bb.c

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !278
  %i.l = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.k) ; 2 uses
  store ptr %i.l, ptr %6, align 8, !tbaa !277
  br label %bb.c

bb.c:                                             ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, %bb.b
  %i.m = phi ptr [ %i.l, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.i, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 528
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(57) %7)
  br label %_ZNK5clang17DiagnosticBuilderlsINS_9FixItHintEvEERKS0_OT_.exit

_ZNK5clang17DiagnosticBuilderlsINS_9FixItHintEvEERKS0_OT_.exit: ; preds = %bb.a, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !60   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN5clang9FixItHintD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNK5clang17DiagnosticBuilderlsINS_9FixItHintEvEERKS0_OT_.exit
  %i.s = load i64, ptr %i.q, align 8, !tbaa !194
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #27
  br label %_ZN5clang9FixItHintD2Ev.exit

_ZN5clang9FixItHintD2Ev.exit:                     ; preds = %_ZNK5clang17DiagnosticBuilderlsINS_9FixItHintEvEERKS0_OT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang15ModuleMapLoader16handleModuleDeclERKNS_9modulemap10ModuleDeclE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(129) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %2 = alloca %"class.clang::ModuleRef", align 8  ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %3 = alloca %"class.clang::FileEntryRef", align 8 ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i8, align 1                       ; 7 uses
  %4 = alloca %"class.clang::ModuleRef", align 8  ; 10 uses
  %5 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 19 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.clang::ModuleRef", align 8  ; 7 uses
  %8 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %9 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %10 = alloca %"struct.llvm::detail::Visitor.705", align 8 ; 6 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !207    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !61   ; 3 uses
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread252

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !60
  %lhsc = load i8, ptr %i.k, align 1
  %i.l = icmp eq i8 %lhsc, 42
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread252

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  tail call void @_ZN5clang15ModuleMapLoader24handleInferredModuleDeclERKNS_9modulemap10ModuleDeclE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(129) %1)
  br label %.critedge125

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread252: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load i32, ptr %i.m, align 8, !tbaa !270
  store i32 %i.o, ptr %i.n, align 4, !tbaa !270
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 23 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !584  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !197  ; 2 uses
  %i.t = icmp ugt i32 %i.s, 1
  br i1 %i.t, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread252
  store ptr null, ptr %i.p, align 8, !tbaa !584
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %11 = add i32 %i.s, -1                          ; 2 uses
  %i.ac = zext i32 %11 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !631, !nonnull !206, !align !269 ; 2 uses
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !60  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 240 ; 2 uses
  %i.ag = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.ae, i64 %i.i) #26, !noalias !1181
  %i.ah = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.af, ptr %i.ae, i64 %i.i, i32 noundef %i.ag) #26, !noalias !1181 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, -1
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !65, !noalias !1181
  br i1 %i.ai, label %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit.peel.thread, label %_ZNK4llvm9StringMapIPN5clang6ModuleENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i.peel

_ZNK4llvm9StringMapIPN5clang6ModuleENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i.peel: ; preds = %bb.b
  %i.ak = sext i32 %i.ah to i64                   ; 2 uses
  %.phi.trans.insert.i.i.peel = getelementptr inbounds nuw i8, ptr %i.ad, i64 248
  %.pre.i.i.peel = load i32, ptr %.phi.trans.insert.i.i.peel, align 8, !tbaa !66, !noalias !1181
  %.pre6.i.i.peel = zext i32 %.pre.i.i.peel to i64
  %i.al = icmp eq i64 %i.ak, %.pre6.i.i.peel
  br i1 %i.al, label %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit.peel.thread, label %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit.peel

_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit.peel.thread: ; preds = %_ZNK4llvm9StringMapIPN5clang6ModuleENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i.peel, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.d

_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit.peel:   ; preds = %_ZNK4llvm9StringMapIPN5clang6ModuleENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i.peel
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !68, !noalias !1181
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !73, !noalias !1181 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.not120.peel = icmp eq ptr %i.ap, null
  br i1 %.not120.peel, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit.peel
  store ptr %i.ap, ptr %i.p, align 8, !tbaa !584
  br label %bb.g

bb.d:                                             ; preds = %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit.peel.thread, %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !632, !nonnull !206, !align !269
  %i.ar = load ptr, ptr %1, align 8, !tbaa !207
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %.sroa.052.0.copyload.peel = load i32, ptr %i.as, align 8, !tbaa !270
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %5, ptr noundef nonnull align 8 dereferenceable(15256) %i.aq, i32 %.sroa.052.0.copyload.peel, i32 noundef 1089) #26
  %i.at = load ptr, ptr %1, align 8, !tbaa !207   ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !60
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !61
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %5, ptr %i.au, i64 %i.aw)
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !584
  %i.ay = icmp ne ptr %i.ax, null
  %i.az = load ptr, ptr %5, align 8, !tbaa !277   ; 2 uses
  %.not.i.i.i.peel = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.peel, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.peel, label %_ZNK5clang17DiagnosticBuilderlsIbvEERKS0_OT_.exit.peel

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.peel: ; preds = %bb.d
  %i.ba = load ptr, ptr %i.y, align 8, !tbaa !278
  %i.bb = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ba) ; 2 uses
  store ptr %i.bb, ptr %5, align 8, !tbaa !277
  br label %_ZNK5clang17DiagnosticBuilderlsIbvEERKS0_OT_.exit.peel

_ZNK5clang17DiagnosticBuilderlsIbvEERKS0_OT_.exit.peel: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.peel, %bb.d
  %i.bc = phi ptr [ %i.bb, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.peel ], [ %i.az, %bb.d ] ; 2 uses
  %i.bd = zext i1 %i.ay to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.bf = load i8, ptr %i.bc, align 8, !tbaa !644
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bg
  store i8 2, ptr %i.bh, align 1, !tbaa !194
  %i.bi = load ptr, ptr %5, align 8, !tbaa !277   ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i8, ptr %i.bi, align 8, !tbaa !644 ; 2 uses
  %i.bl = add i8 %i.bk, 1
  store i8 %i.bl, ptr %i.bi, align 8, !tbaa !644
  %i.bm = zext i8 %i.bk to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bm
  store i64 %i.bd, ptr %i.bn, align 8, !tbaa !403
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.bo = load ptr, ptr %i.p, align 8, !tbaa !584 ; 2 uses
  %.not121.peel = icmp eq ptr %i.bo, null
  br i1 %.not121.peel, label %._crit_edge.i.i.peel, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang17DiagnosticBuilderlsIbvEERKS0_OT_.exit.peel
  %i.bp = call noundef ptr @_ZNK5clang6Module17getTopLevelModuleEv(ptr noundef nonnull align 8 dereferenceable(1928) %i.bo) #26
  call void @_ZNK5clang6Module17getFullModuleNameB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(1928) %i.bp, i1 noundef zeroext false) #26
  %.pre = load ptr, ptr %6, align 8, !tbaa !60
  %.pre284.a = load i64, ptr %i.aa, align 8, !tbaa !61
  br label %bb.f

._crit_edge.i.i.peel:                             ; preds = %_ZNK5clang17DiagnosticBuilderlsIbvEERKS0_OT_.exit.peel
  store ptr %i.z, ptr %6, align 8, !tbaa !416
  store i64 0, ptr %i.aa, align 8, !tbaa !61
  store i8 0, ptr %i.z, align 8, !tbaa !194
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.peel, %bb.e
  %i.bq = phi i64 [ 0, %._crit_edge.i.i.peel ], [ %.pre284.a, %bb.e ]
  %i.br = phi ptr [ %i.z, %._crit_edge.i.i.peel ], [ %.pre, %bb.e ]
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %5, ptr %i.br, i64 %i.bq)
  %i.bs = load ptr, ptr %6, align 8, !tbaa !60    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.z
  br i1 %i.bt, label %.critedge123.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %bb.f
  %i.bu = load i64, ptr %i.z, align 8, !tbaa !194
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #27
  br label %.critedge123.peel

.critedge123.peel:                                ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  store i8 1, ptr %i.ab, align 2, !tbaa !583
  br label %bb.g

bb.g:                                             ; preds = %.critedge123.peel, %bb.c
  %.2255.peel = phi ptr [ %i.ap, %bb.c ], [ null, %.critedge123.peel ] ; 3 uses
  %.not.peel = icmp eq i32 %11, 1
  br i1 %.not.peel, label %._crit_edge.a, label %.peel.next

._crit_edge.a:                                    ; preds = %bb.q, %bb.g
  %.not105 = icmp eq ptr %.2255.peel, null
  br i1 %.not105, label %.critedge, label %bb.r

.peel.next:                                       ; preds = %bb.g, %bb.q
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 1, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.bw = load ptr, ptr %i.u, align 8, !tbaa !631, !nonnull !206, !align !269 ; 2 uses
  %i.bx = load ptr, ptr %1, align 8, !tbaa !207
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %indvars.iv ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !60 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !61 ; 3 uses
  %i.cc = load ptr, ptr %i.p, align 8, !tbaa !584 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  %.not.i = icmp eq ptr %i.cc, null
  br i1 %.not.i, label %bb.h, label %_ZNK5clang9ModuleMap21lookupModuleQualifiedEN4llvm9StringRefEPNS_6ModuleE.exit

bb.h:                                             ; preds = %.peel.next
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 240 ; 2 uses
  %i.ce = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.bz, i64 %i.cb) #26, !noalias !1182
  %i.cf = call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.cd, ptr %i.bz, i64 %i.cb, i32 noundef %i.ce) #26, !noalias !1182 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, -1
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !65, !noalias !1182
  br i1 %i.cg, label %.thread, label %_ZNK4llvm9StringMapIPN5clang6ModuleENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i

_ZNK4llvm9StringMapIPN5clang6ModuleENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i: ; preds = %bb.h
  %i.ci = sext i32 %i.cf to i64                   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 248
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !66, !noalias !1182
  %.pre6.i.i = zext i32 %.pre.i.i to i64
  %i.cj = icmp eq i64 %i.ci, %.pre6.i.i
  br i1 %i.cj, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm9StringMapIPN5clang6ModuleENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.ci
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !68, !noalias !1182
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !73, !noalias !1182
  br label %.thread

.thread:                                          ; preds = %bb.i, %_ZNK4llvm9StringMapIPN5clang6ModuleENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i, %bb.h
  %.0.i.i = phi ptr [ %i.cn, %bb.i ], [ null, %_ZNK4llvm9StringMapIPN5clang6ModuleENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i ], [ null, %bb.h ]
  store ptr %.0.i.i, ptr %4, align 8, !tbaa !203, !alias.scope !1182
  br label %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exitthread-pre-split

_ZNK5clang9ModuleMap21lookupModuleQualifiedEN4llvm9StringRefEPNS_6ModuleE.exit: ; preds = %.peel.next
  call void @_ZNK5clang6Module13findSubmoduleEN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ModuleRef") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1928) %i.cc, ptr %i.bz, i64 %i.cb) #26
  %.0.copyload.i.i.i.i.pre = load i64, ptr %i.v, align 8 ; 2 uses
  %i.co = and i64 %.0.copyload.i.i.i.i.pre, 4
  %.not5.i = icmp eq i64 %i.co, 0
  br i1 %.not5.i, label %bb.j, label %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exitthread-pre-split

bb.j:                                             ; preds = %_ZNK5clang9ModuleMap21lookupModuleQualifiedEN4llvm9StringRefEPNS_6ModuleE.exit
  %i.cp = and i64 %.0.copyload.i.i.i.i.pre, -8    ; 2 uses
  %i.cq = inttoptr i64 %i.cp to ptr               ; 2 uses
  %.not.i140 = icmp eq i64 %i.cp, 0
  br i1 %.not.i140, label %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exitthread-pre-split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cr = load i64, ptr %i.w, align 8, !tbaa !271 ; 2 uses
  %.not1.i = icmp eq i64 %i.cr, 0
  br i1 %.not1.i, label %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exitthread-pre-split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !273
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = call noundef ptr %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, i32 noundef %i.cs) #26, !inline_history !0
  br label %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit

_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exitthread-pre-split: ; preds = %.thread, %bb.k, %bb.j, %_ZNK5clang9ModuleMap21lookupModuleQualifiedEN4llvm9StringRefEPNS_6ModuleE.exit
  %.pr = load ptr, ptr %4, align 8, !tbaa !203
  br label %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit

_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit:        ; preds = %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exitthread-pre-split, %bb.l
  %i.cw = phi ptr [ %.pr, %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exitthread-pre-split ], [ %i.cv, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.not120 = icmp eq ptr %i.cw, null
  br i1 %.not120, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit
  store ptr %i.cw, ptr %i.p, align 8, !tbaa !584
  br label %bb.q

bb.n:                                             ; preds = %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.cx = load ptr, ptr %i.x, align 8, !tbaa !632, !nonnull !206, !align !269
  %i.cy = load ptr, ptr %1, align 8, !tbaa !207
  %i.cz = getelementptr inbounds nuw [40 x i8], ptr %i.cy, i64 %indvars.iv
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %.sroa.052.0.copyload = load i32, ptr %i.da, align 8, !tbaa !270
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %5, ptr noundef nonnull align 8 dereferenceable(15256) %i.cx, i32 %.sroa.052.0.copyload, i32 noundef 1089) #26
  %i.db = load ptr, ptr %1, align 8, !tbaa !207
  %i.dc = getelementptr inbounds nuw [40 x i8], ptr %i.db, i64 %indvars.iv ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !60
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !61
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %5, ptr %i.dd, i64 %i.df)
  %i.dg = load ptr, ptr %i.p, align 8, !tbaa !584
  %i.dh = icmp ne ptr %i.dg, null
  %i.di = load ptr, ptr %5, align 8, !tbaa !277   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17DiagnosticBuilderlsIbvEERKS0_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %bb.n
  %i.dj = load ptr, ptr %i.y, align 8, !tbaa !278
  %i.dk = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.dj) ; 2 uses
  store ptr %i.dk, ptr %5, align 8, !tbaa !277
  br label %_ZNK5clang17DiagnosticBuilderlsIbvEERKS0_OT_.exit

_ZNK5clang17DiagnosticBuilderlsIbvEERKS0_OT_.exit: ; preds = %bb.n, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.dl = phi ptr [ %i.dk, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.di, %bb.n ] ; 2 uses
  %i.dm = zext i1 %i.dh to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.do = load i8, ptr %i.dl, align 8, !tbaa !644
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dp
  store i8 2, ptr %i.dq, align 1, !tbaa !194
  %i.dr = load ptr, ptr %5, align 8, !tbaa !277   ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load i8, ptr %i.dr, align 8, !tbaa !644 ; 2 uses
  %i.du = add i8 %i.dt, 1
  store i8 %i.du, ptr %i.dr, align 8, !tbaa !644
  %i.dv = zext i8 %i.dt to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dv
  store i64 %i.dm, ptr %i.dw, align 8, !tbaa !403
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.dx = load ptr, ptr %i.p, align 8, !tbaa !584 ; 2 uses
  %.not121 = icmp eq ptr %i.dx, null
  br i1 %.not121, label %._crit_edge.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNK5clang17DiagnosticBuilderlsIbvEERKS0_OT_.exit
  %i.dy = call noundef ptr @_ZNK5clang6Module17getTopLevelModuleEv(ptr noundef nonnull align 8 dereferenceable(1928) %i.dx) #26
  call void @_ZNK5clang6Module17getFullModuleNameB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(1928) %i.dy, i1 noundef zeroext false) #26
  %.pre286.a = load ptr, ptr %6, align 8, !tbaa !60
  %.pre287.a = load i64, ptr %i.aa, align 8, !tbaa !61
  br label %bb.p

._crit_edge.i.i:                                  ; preds = %_ZNK5clang17DiagnosticBuilderlsIbvEERKS0_OT_.exit
  store ptr %i.z, ptr %6, align 8, !tbaa !416
  store i64 0, ptr %i.aa, align 8, !tbaa !61
  store i8 0, ptr %i.z, align 8, !tbaa !194
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i, %bb.o
  %i.dz = phi i64 [ 0, %._crit_edge.i.i ], [ %.pre287.a, %bb.o ]
  %i.ea = phi ptr [ %i.z, %._crit_edge.i.i ], [ %.pre286.a, %bb.o ]
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %5, ptr %i.ea, i64 %i.dz)
  %i.eb = load ptr, ptr %6, align 8, !tbaa !60    ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.z
  br i1 %i.ec, label %.critedge123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.ed = load i64, ptr %i.z, align 8, !tbaa !194
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #27
  br label %.critedge123

.critedge123:                                     ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  store i8 1, ptr %i.ab, align 2, !tbaa !583
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %.critedge123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.ac
  br i1 %.not, label %._crit_edge.a, label %.peel.next, !llvm.loop !1166

bb.r:                                             ; preds = %._crit_edge.a
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %.2255.peel, i64 32
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !542 ; 2 uses
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %_ZNK5clang9ModuleMap28getContainingModuleMapFileIDEPKNS_6ModuleE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ej = load ptr, ptr %i.u, align 8, !tbaa !631, !nonnull !206, !align !269
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !301, !nonnull !206, !align !269 ; 4 uses
  %i.el = and i32 %i.eh, 2147483647               ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 484
  %i.en = load i32, ptr %i.em, align 4, !tbaa !543
  %.not.i.i.i141 = icmp uge i32 %i.el, %i.en
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 488
  %i.ep = load i32, ptr %i.eo, align 8
  %i.eq = icmp ult i32 %i.el, %i.ep
  %or.cond.i.i.i = select i1 %.not.i.i.i141, i1 %i.eq, i1 false
  br i1 %or.cond.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 480
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.er, align 8, !tbaa !270
  br label %_ZNK5clang9ModuleMap28getContainingModuleMapFileIDEPKNS_6ModuleE.exit

bb.u:                                             ; preds = %bb.s
  %i.es = call i32 @_ZNK5clang13SourceManager13getFileIDSlowEj(ptr noundef nonnull align 8 dereferenceable(776) %i.ek, i32 noundef %i.el) #26
  br label %_ZNK5clang9ModuleMap28getContainingModuleMapFileIDEPKNS_6ModuleE.exit

_ZNK5clang9ModuleMap28getContainingModuleMapFileIDEPKNS_6ModuleE.exit: ; preds = %bb.r, %bb.t, %bb.u
  %.sroa.0.0.i = phi i32 [ 0, %bb.r ], [ %.sroa.0.0.copyload.i.i.i, %bb.t ], [ %i.es, %bb.u ]
  %i.et = load i32, ptr %i.ef, align 8, !tbaa !553 ; 5 uses
  %.not267 = icmp eq i32 %i.et, %.sroa.0.0.i
  br i1 %.not267, label %.critedge, label %bb.v

bb.v:                                             ; preds = %_ZNK5clang9ModuleMap28getContainingModuleMapFileIDEPKNS_6ModuleE.exit
  %i.eu = load ptr, ptr %i.u, align 8, !tbaa !631, !nonnull !206, !align !269
  %i.ev = load ptr, ptr %0, align 8, !tbaa !645, !nonnull !206, !align !269 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  store i8 0, ptr %i.f, align 1, !tbaa !204
  %i.ew = add i32 %i.et, 1
  %or.cond.i.i.i.i.i = icmp ult i32 %i.ew, 2
  br i1 %or.cond.i.i.i.i.i, label %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ex = icmp slt i32 %i.et, 0
  br i1 %i.ex, label %bb.x, label %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.ey = sub nuw nsw i32 -2, %i.et               ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 328
  %i.fa = lshr i32 %i.ey, 6
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = load ptr, ptr %i.ez, align 8, !tbaa !207
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fb
  %i.fe = and i32 %i.ey, 63
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !403
  %i.fg = zext nneg i32 %i.fe to i64
  %i.fh = shl nuw i64 1, %i.fg
  %i.fi = and i64 %i.ff, %i.fh
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.fi, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ev, i64 272
  %i.fk = zext nneg i32 %i.ey to i64
  %i.fl = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4llvm11PagedVectorIN5clang6SrcMgr9SLocEntryELm32EEixEm(ptr noundef nonnull align 8 dereferenceable(32) %i.fj, i64 noundef %i.fk)
  br label %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread10.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.fm = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5clang13SourceManager13loadSLocEntryEjPb(ptr noundef nonnull align 8 dereferenceable(776) %i.ev, i32 noundef %i.ey, ptr noundef nonnull %i.f) #26
  %.pre.i.i.i.i = load i8, ptr %i.f, align 1, !tbaa !204, !range !205
  %i.fn = trunc nuw i8 %.pre.i.i.i.i to i1
  br i1 %i.fn, label %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread.i.i.i, label %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread10.i.i.i

_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread.i.i.i: ; preds = %bb.z, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  br label %_ZNK5clang13SourceManager20getFileEntryRefForIDENS_6FileIDE.exit

_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread10.i.i.i: ; preds = %bb.z, %bb.y
  %.ph.i.i.i = phi ptr [ %i.fl, %bb.y ], [ %i.fm, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  br label %bb.aa

_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.i.i.i: ; preds = %bb.w
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ev, i64 192
  %i.fp = zext nneg i32 %i.et to i64
  %i.fq = load ptr, ptr %i.fo, align 8, !tbaa !207 ; 2 uses
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.fq, i64 %i.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %.not.i.i.i142 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i142, label %_ZNK5clang13SourceManager20getFileEntryRefForIDENS_6FileIDE.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.i.i.i, %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread10.i.i.i
  %i.fs = phi ptr [ %.ph.i.i.i, %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread10.i.i.i ], [ %i.fr, %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.i.i.i ] ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8
  %i.fu = icmp sgt i32 %i.ft, -1
  br i1 %i.fu, label %bb.ab, label %_ZNK5clang13SourceManager20getFileEntryRefForIDENS_6FileIDE.exit

bb.ab:                                            ; preds = %bb.aa
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.fv, align 8
  %i.fw = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.fx = inttoptr i64 %i.fw to ptr
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load i64, ptr %i.fy, align 8
  %i.ga = inttoptr i64 %i.fz to ptr
  br label %_ZNK5clang13SourceManager20getFileEntryRefForIDENS_6FileIDE.exit

_ZNK5clang13SourceManager20getFileEntryRefForIDENS_6FileIDE.exit: ; preds = %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread.i.i.i, %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.i.i.i, %bb.aa, %bb.ab
  %.sroa.0.1.i = phi ptr [ %i.ga, %bb.ab ], [ null, %bb.aa ], [ null, %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread.i.i.i ], [ null, %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.sroa.0.1.i, ptr %3, align 8
  store ptr %.2255.peel, ptr %i.e, align 8, !tbaa !73
  %i.gb = getelementptr inbounds nuw i8, ptr %i.eu, i64 576
  %i.gc = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6ModuleENS_8DenseSetINS2_12FileEntryRefENS_12DenseMapInfoIS7_vEEEENS8_IS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SB_SE_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.gb, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.gc, 0
  %i.gd = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %i.ge = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang12FileEntryRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, ptr noundef nonnull align 8 dereferenceable(8) %3), !noalias !1184 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge.a, %_ZNK5clang9ModuleMap28getContainingModuleMapFileIDEPKNS_6ModuleE.exit, %_ZNK5clang13SourceManager20getFileEntryRefForIDENS_6FileIDE.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread252
  %i.gf = load ptr, ptr %1, align 8, !tbaa !207
  %i.gg = load i32, ptr %i.r, align 8, !tbaa !197
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [40 x i8], ptr %i.gf, i64 %i.gh ; 3 uses
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 -40
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !60 ; 10 uses
  %i.gl = getelementptr inbounds i8, ptr %i.gi, i64 -32
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !61 ; 12 uses
  %i.gn = getelementptr inbounds i8, ptr %i.gi, i64 -8
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !270 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !631, !nonnull !206, !align !269 ; 2 uses
  %i.gr = load ptr, ptr %i.p, align 8, !tbaa !584 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  %.not.i143 = icmp eq ptr %i.gr, null
  br i1 %.not.i143, label %bb.ac, label %_ZNK5clang9ModuleMap21lookupModuleQualifiedEN4llvm9StringRefEPNS_6ModuleE.exit150

bb.ac:                                            ; preds = %.critedge
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 240 ; 2 uses
  %i.gt = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.gk, i64 %i.gm) #26, !noalias !1185
  %i.gu = call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.gs, ptr %i.gk, i64 %i.gm, i32 noundef %i.gt) #26, !noalias !1185 ; 2 uses
  %i.gv = icmp eq i32 %i.gu, -1
  %i.gw = load ptr, ptr %i.gs, align 8, !tbaa !65, !noalias !1185
  br i1 %i.gv, label %.thread347, label %_ZNK4llvm9StringMapIPN5clang6ModuleENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i144

_ZNK4llvm9StringMapIPN5clang6ModuleENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i144: ; preds = %bb.ac
  %i.gx = sext i32 %i.gu to i64                   ; 2 uses
  %.phi.trans.insert.i.i145 = getelementptr inbounds nuw i8, ptr %i.gq, i64 248
  %.pre.i.i146 = load i32, ptr %.phi.trans.insert.i.i145, align 8, !tbaa !66, !noalias !1185
  %.pre6.i.i147 = zext i32 %.pre.i.i146 to i64
  %i.gy = icmp eq i64 %i.gx, %.pre6.i.i147
  br i1 %i.gy, label %.thread347, label %bb.ad

bb.ad:                                            ; preds = %_ZNK4llvm9StringMapIPN5clang6ModuleENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i144
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.gx
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !68, !noalias !1185
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !73, !noalias !1185
  br label %.thread347

.thread347:                                       ; preds = %bb.ad, %_ZNK4llvm9StringMapIPN5clang6ModuleENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i144, %bb.ac
  %.0.i.i149 = phi ptr [ %i.hc, %bb.ad ], [ null, %_ZNK4llvm9StringMapIPN5clang6ModuleENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i144 ], [ null, %bb.ac ]
  store ptr %.0.i.i149, ptr %7, align 8, !tbaa !203, !alias.scope !1185
  br label %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit156thread-pre-split

_ZNK5clang9ModuleMap21lookupModuleQualifiedEN4llvm9StringRefEPNS_6ModuleE.exit150: ; preds = %.critedge
  call void @_ZNK5clang6Module13findSubmoduleEN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ModuleRef") align 8 %7, ptr noundef nonnull align 8 dereferenceable(1928) %i.gr, ptr %i.gk, i64 %i.gm) #26
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.0.copyload.i.i.i.i151.pre = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  %i.hd = and i64 %.0.copyload.i.i.i.i151.pre, 4
  %.not5.i152 = icmp eq i64 %i.hd, 0
  br i1 %.not5.i152, label %bb.ae, label %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit156thread-pre-split

bb.ae:                                            ; preds = %_ZNK5clang9ModuleMap21lookupModuleQualifiedEN4llvm9StringRefEPNS_6ModuleE.exit150
  %i.he = and i64 %.0.copyload.i.i.i.i151.pre, -8 ; 2 uses
  %i.hf = inttoptr i64 %i.he to ptr               ; 2 uses
  %.not.i153 = icmp eq i64 %i.he, 0
  br i1 %.not.i153, label %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit156thread-pre-split, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !271 ; 2 uses
  %.not1.i154 = icmp eq i64 %i.hh, 0
  br i1 %.not1.i154, label %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit156thread-pre-split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hi = trunc i64 %i.hh to i32
  %i.hj = load ptr, ptr %i.hf, align 8, !tbaa !273
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = call noundef ptr %i.hk(ptr noundef nonnull align 8 dereferenceable(8) %i.hf, i32 noundef %i.hi) #26, !inline_history !0
  br label %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit156

_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit156thread-pre-split: ; preds = %.thread347, %bb.af, %bb.ae, %_ZNK5clang9ModuleMap21lookupModuleQualifiedEN4llvm9StringRefEPNS_6ModuleE.exit150
  %.pr257 = load ptr, ptr %7, align 8, !tbaa !203
  br label %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit156

_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit156:     ; preds = %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit156thread-pre-split, %bb.ag
  %i.hm = phi ptr [ %.pr257, %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit156thread-pre-split ], [ %i.hl, %bb.ag ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %.not106 = icmp eq ptr %i.hm, null
  br i1 %.not106, label %bb.ax, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5clang9ModuleRefcvPNS_6ModuleEEv.exit156
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 992 ; 2 uses
  %i.ho = load i16, ptr %i.hn, align 8
  %i.hp = and i16 %i.ho, 8
  %.not107 = icmp eq i16 %i.hp, 0
  br i1 %.not107, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hq = load ptr, ptr %i.gp, align 8, !tbaa !631, !nonnull !206, !align !269
  %i.hr = call ptr @_ZNK5clang9ModuleMap26getContainingModuleMapFileEPKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(720) %i.hq, ptr noundef nonnull %i.hm) ; 2 uses
  %i.hs = load ptr, ptr %0, align 8, !tbaa !645, !nonnull !206, !align !269 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.029.0.copyload = load i32, ptr %i.ht, align 8, !tbaa !270 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i8 0, ptr %i.d, align 1, !tbaa !204
  %i.hu = add i32 %.sroa.029.0.copyload, 1
  %or.cond.i.i.i.i.i157 = icmp ult i32 %i.hu, 2
  br i1 %or.cond.i.i.i.i.i157, label %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread.i.i.i166, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hv = icmp slt i32 %.sroa.029.0.copyload, 0
  br i1 %i.hv, label %bb.ak, label %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.i.i.i158

bb.ak:                                            ; preds = %bb.aj
  %i.hw = sub nuw nsw i32 -2, %.sroa.029.0.copyload ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 328
  %i.hy = lshr i32 %i.hw, 6
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = load ptr, ptr %i.hx, align 8, !tbaa !207
end_hunk_0
