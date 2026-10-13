Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/parser?download=true
inline.NumInlined: 5493
inline.NumDeleted: 1043
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN4pbrt17BasicSceneBuilder13CopyForImportEv
declare noundef ptr @_ZN4pbrt17BasicSceneBuilder13CopyForImportEv(ptr noundef nonnull align 64 dereferenceable(3544)) local_unnamed_addr #1

declare noundef i32 @_ZN4pbrt14RunningThreadsEv() local_unnamed_addr #1

declare void @_ZN4pbrt17BasicSceneBuilder13MergeImportedEPS0_(ptr noundef nonnull align 64 dereferenceable(3544), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt22FormattingParserTarget14TransformBeginENS_7FileLocE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(216) %0, ptr noundef byval(%"struct.pbrt::FileLoc") align 8 %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef nonnull %1, ptr noundef nonnull @.str.152)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !662)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !129, !noalias !662
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !41, !alias.scope !662
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.c, i8 noundef signext 32)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !41, !alias.scope !663
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !43, !alias.scope !663
  store i8 0, ptr %i.e, align 8, !tbaa !44, !alias.scope !663
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.153, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %2, align 8, !tbaa !45, !alias.scope !663 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.e, align 8, !tbaa !44, !alias.scope !663
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #36
  br label %.body

_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %2, align 8, !tbaa !45
  %i.m = load ptr, ptr @stdout, align 8, !tbaa !63
  %i.n = call i32 @fputs(ptr noundef %i.l, ptr noundef %i.m) ; 0 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.e
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.q = load i64, ptr %i.e, align 8, !tbaa !44
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %i.s = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.d
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.u = load i64, ptr %i.d, align 8, !tbaa !44
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.w = load i32, ptr %i.a, align 4, !tbaa !129
  %i.x = add nsw i32 %i.w, 4
  store i32 %i.x, ptr %i.a, align 4, !tbaa !129
  ret void

.body:                                            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.y = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %.body
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !44
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.g
}

declare void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt22FormattingParserTarget12TransformEndENS_7FileLocE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(216) %0, ptr noundef byval(%"struct.pbrt::FileLoc") align 8 %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !129
  %i.c = add nsw i32 %i.b, -4
  store i32 %i.c, ptr %i.a, align 4, !tbaa !129
  call void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef nonnull %1, ptr noundef nonnull @.str.154)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.d = load i32, ptr %i.a, align 4, !tbaa !129, !noalias !668
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !41, !alias.scope !668
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.e, i8 noundef signext 32)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !41, !alias.scope !669
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !43, !alias.scope !669
  store i8 0, ptr %i.g, align 8, !tbaa !44, !alias.scope !669
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.150, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !45, !alias.scope !669 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.g, align 8, !tbaa !44, !alias.scope !669
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #36
  br label %.body

_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !45
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !63
  %i.p = call i32 @fputs(ptr noundef %i.n, ptr noundef %i.o) ; 0 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.g
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.s = load i64, ptr %i.g, align 8, !tbaa !44
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %i.u = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.f
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.w = load i64, ptr %i.f, align 8, !tbaa !44
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret void

.body:                                            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.y = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.f
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %.body
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !44
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEE"(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 16), (80, 96)) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %1, ptr nofree captures(none) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.pstd::optional", align 8    ; 12 uses
  %i.d = alloca ptr, align 8                      ; 16 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %12 = alloca %class.anon.165, align 8           ; 8 uses
  %13 = alloca %"struct.pbrt::Token", align 8     ; 10 uses
  %14 = alloca %"class.pstd::optional", align 8   ; 6 uses
  %15 = alloca %"class.pstd::optional", align 8   ; 6 uses
  %i.f = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #35
  %i.g = ptrtoint ptr %i.f to i64
  store i64 %i.g, ptr %0, align 8, !tbaa !160
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !162
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4, !tbaa !47, !noalias !689
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67, !noalias !689
  %.not.i.i377 = icmp eq ptr %i.k, null
  br i1 %.not.i.i377, label %._crit_edge380, label %.lr.ph379

.lr.ph379:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 40
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

._crit_edge380:                                   ; preds = %bb.bo, %bb.a
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc unwind label %.loopexit.split-lp228

.noexc:                                           ; preds = %._crit_edge380
  unreachable

bb.b:                                             ; preds = %.lr.ph379, %bb.bo
  %.pre.pre.i.i = phi ptr [ null, %.lr.ph379 ], [ %i.oo, %bb.bo ] ; 5 uses
  %.pre.i177 = phi i64 [ 0, %.lr.ph379 ], [ %i.os, %bb.bo ] ; 17 uses
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !111, !noalias !689
  invoke void %i.w(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.c unwind label %.loopexit227, !inline_history !1

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.x = load i8, ptr %i.m, align 8, !tbaa !86, !range !112, !noundef !113
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit, label %.loopexit232

.loopexit227:                                     ; preds = %bb.b
  %lpad.loopexit229 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp228:                            ; preds = %._crit_edge380
  %lpad.loopexit.split-lp230 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit:        ; preds = %bb.c
  %.sroa.020.0.copyload = load i64, ptr %7, align 8, !tbaa !48 ; 2 uses
  %.sroa.221.0.copyload = load ptr, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !61 ; 2 uses
  %i.z = icmp ugt i64 %.sroa.020.0.copyload, 1
  br i1 %i.z, label %bb.d, label %_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit

bb.d:                                             ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit
  %i.aa = load i8, ptr %.sroa.221.0.copyload, align 1, !tbaa !44
  %i.ab = icmp eq i8 %i.aa, 34
  br i1 %i.ab, label %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit

_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.221.0.copyload, i64 %.sroa.020.0.copyload
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !44
  %i.af = icmp eq i8 %i.ae, 34
  br i1 %i.af, label %bb.g, label %_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit

_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit:        ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit, %bb.d, %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !86, !range !112, !noundef !113
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %"_ZZN4pbrt5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteIS3_EEENK3$_5clENS_5TokenE.exit"

bb.e:                                             ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit
  invoke void @_ZN4pbrt8LogFatalIJRA24_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 659, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(24) @.str.312) #34
          to label %.noexc73 unwind label %bb.f

.noexc73:                                         ; preds = %bb.e
  unreachable

"_ZZN4pbrt5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteIS3_EEENK3$_5clENS_5TokenE.exit": ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false)
  store i8 1, ptr %i.ag, align 8, !tbaa !86
  br label %.loopexit232

bb.f:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.g:                                             ; preds = %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  %i.ak = invoke noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #38
          to label %bb.h unwind label %bb.r       ; 20 uses

bb.h:                                             ; preds = %bb.g
  %i.al = load i8, ptr %i.m, align 8, !tbaa !86, !range !112, !noundef !113
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.305, i32 noundef 235, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(4) @.str.306) #34
          to label %.noexc74 unwind label %bb.s

.noexc74:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !43
  store i8 0, ptr %i.ao, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store i64 0, ptr %i.as, align 8, !tbaa !43
  store i8 0, ptr %i.ar, align 8, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %i.au = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #35
  %i.av = ptrtoint ptr %i.au to i64
  store i64 %i.av, ptr %i.at, align 8, !tbaa !160
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 120
  %i.ay = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #35
  %i.az = ptrtoint ptr %i.ay to i64
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !160
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 152
  %i.bc = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #35
  %i.bd = ptrtoint ptr %i.bc to i64
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !160
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 184
  %i.bg = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #35
  %i.bh = ptrtoint ptr %i.bg to i64
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !160
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 192
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ak, i64 224
  store ptr null, ptr %i.bj, align 8, !tbaa !691
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 232
  store i8 0, ptr %i.bk, align 8, !tbaa !692
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bi, i8 0, i64 25, i1 false)
  store ptr %i.ak, ptr %i.d, align 8, !tbaa !164
  %i.bl = load i8, ptr %i.m, align 8, !tbaa !86, !range !112, !noundef !113
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit77, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.305, i32 noundef 235, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(4) @.str.306) #34
          to label %.noexc76 unwind label %bb.t

.noexc76:                                         ; preds = %bb.k
  unreachable

_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit77:      ; preds = %bb.j
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 8, !tbaa !48 ; 4 uses
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !61 ; 4 uses
  %i.bn = icmp ugt i64 %.sroa.01.0.copyload.i, 1
  br i1 %i.bn, label %bb.l, label %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i

bb.l:                                             ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit77
  %i.bo = load i8, ptr %.sroa.22.0.copyload.i, align 1, !tbaa !44
  %i.bp = icmp eq i8 %i.bo, 34
  br i1 %i.bp, label %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i

_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i, i64 %.sroa.01.0.copyload.i
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !44
  %i.bt = icmp eq i8 %i.bs, 34
  br i1 %i.bt, label %bb.o, label %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i

_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i: ; preds = %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, %bb.l, %_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit77
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  invoke fastcc void @_ZN4pbrtL8toStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable align 8 %6, i64 %.sroa.01.0.copyload.i, ptr %.sroa.22.0.copyload.i)
          to label %.noexc78 unwind label %bb.t

.noexc78:                                         ; preds = %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i
  invoke void @_ZN4pbrt9ErrorExitIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.302, ptr noundef nonnull align 8 dereferenceable(32) %6) #34
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc78
  unreachable

bb.n:                                             ; preds = %.noexc78
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !44
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %.body

bb.o:                                             ; preds = %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i, i64 1 ; 6 uses
  %i.cb = add i64 %.sroa.01.0.copyload.i, -2      ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cb ; 9 uses
  %.not1.i = icmp samesign eq i64 %i.cb, 0
  br i1 %.not1.i, label %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E_clESS_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.critedge2.i
  %.02.i = phi ptr [ %i.ce, %.critedge2.i ], [ %i.ca, %bb.o ] ; 3 uses
  %i.cd = load i8, ptr %.02.i, align 1, !tbaa !44
  switch i8 %i.cd, label %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E_clESS_.exit" [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.02.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.ce, %i.cc
  br i1 %.not.i, label %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit80, label %.lr.ph.i, !llvm.loop !672

end_hunk_0
begin_hunk_1_@"_ZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEE":bb.a
  store i64 %spec.select.i, ptr %i.ik, align 8, !tbaa !57
  store ptr %i.iv, ptr %i.iy, align 8, !tbaa !60
  br label %bb.ba

bb.az:                                            ; preds = %bb.az, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.az ] ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iv, i64 %indvars.iv.i.i
  %i.jg = load ptr, ptr %i.ix, align 8, !tbaa !60
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %indvars.iv.i.i
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !44
  store i8 %i.ji, ptr %i.jf, align 1, !tbaa !44
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.jj = load i64, ptr %i.im, align 8, !tbaa !58 ; 2 uses
  %i.jk = icmp ugt i64 %i.jj, %indvars.iv.next.i.i
  br i1 %i.jk, label %bb.az, label %._crit_edge.i.i, !llvm.loop !0

bb.ba:                                            ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i, %bb.ax, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146.thread
  %i.jl = phi i64 [ %.pre.i148, %_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i ], [ %i.il, %bb.ax ], [ %i.in, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146.thread ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.pre482, i64 192
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !60
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jl
  store i8 1, ptr %i.jo, align 1, !tbaa !44
  %i.jp = load i64, ptr %i.im, align 8, !tbaa !58
  %i.jq = add i64 %i.jp, 1
  store i64 %i.jq, ptr %i.im, align 8, !tbaa !58
  br label %bb.bk

bb.bb:                                            ; preds = %bb.ay, %_ZN4pstd3pmr21polymorphic_allocatorIhE15allocate_objectIhEEPT_m.exit.i.i
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %.body174

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152: ; preds = %.lr.ph
  %i.js = load ptr, ptr %.0376, align 8, !tbaa !45 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 1
  %i.ju = xor i32 %i.jt, 1936482662
  %i.jv = getelementptr i8, ptr %i.js, i64 4
  %i.jw = load i8, ptr %i.jv, align 1
  %i.jx = zext i8 %i.jw to i32
  %i.jy = xor i32 %i.jx, 101
  %i.jz = or i32 %i.ju, %i.jy
  %i.ka = icmp ne i32 %i.jz, 0
  %i.kb = zext i1 %i.ka to i32
  %i.kc = icmp eq i32 %i.kb, 0
  %.pre483 = load ptr, ptr %i.d, align 8, !tbaa !164 ; 7 uses
  br i1 %i.kc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread216

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152
  %i.kd = getelementptr inbounds nuw i8, ptr %.pre483, i64 184 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.pre483, i64 200 ; 3 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !57 ; 5 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.pre483, i64 208 ; 6 uses
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !58 ; 2 uses
  %i.ki = icmp eq i64 %i.kf, %i.kh
  br i1 %i.ki, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread
  %i.kj = icmp eq i64 %i.kf, 0
  %i.kk = shl i64 %i.kf, 1
  %spec.select.i153 = select i1 %i.kj, i64 4, i64 %i.kk ; 3 uses
  %.not.i.i154 = icmp ult i64 %i.kf, %spec.select.i153
  br i1 %.not.i.i154, label %_ZN4pstd3pmr21polymorphic_allocatorIhE15allocate_objectIhEEPT_m.exit.i.i155, label %bb.bf

_ZN4pstd3pmr21polymorphic_allocatorIhE15allocate_objectIhEEPT_m.exit.i.i155: ; preds = %bb.bc
  %i.kl = load ptr, ptr %i.kd, align 8, !tbaa !59 ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !30
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8
  %i.kp = invoke noundef ptr %i.ko(ptr noundef nonnull align 8 dereferenceable(8) %i.kl, i64 noundef %spec.select.i153, i64 noundef 1)
          to label %.noexc166 unwind label %bb.bg, !inline_history !680 ; 2 uses

.noexc166:                                        ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIhE15allocate_objectIhEEPT_m.exit.i.i155
  %i.kq = load i64, ptr %i.kg, align 8, !tbaa !58
  %.not13.i.i156 = icmp eq i64 %i.kq, 0
  br i1 %.not13.i.i156, label %._crit_edge.i.i160, label %.lr.ph.i.i157

.lr.ph.i.i157:                                    ; preds = %.noexc166
  %i.kr = getelementptr inbounds nuw i8, ptr %.pre483, i64 192
  br label %bb.be

._crit_edge.i.i160:                               ; preds = %bb.be, %.noexc166
  %.pre3.i161 = phi i64 [ 0, %.noexc166 ], [ %i.ld, %bb.be ]
  %i.ks = getelementptr inbounds nuw i8, ptr %.pre483, i64 192 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !60 ; 2 uses
  %.not.i.i.i.i.i162 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i.i.i162, label %_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i164, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge.i.i160
  %i.ku = load i64, ptr %i.ke, align 8, !tbaa !57
  %i.kv = load ptr, ptr %i.kd, align 8, !tbaa !59 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !30
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 24
  %i.ky = load ptr, ptr %i.kx, align 8
  invoke void %i.ky(ptr noundef nonnull align 8 dereferenceable(8) %i.kv, ptr noundef nonnull %i.kt, i64 noundef %i.ku, i64 noundef 1)
          to label %.noexc167 unwind label %bb.bg, !inline_history !680

.noexc167:                                        ; preds = %bb.bd
  %.pre.pre.i163 = load i64, ptr %i.kg, align 8, !tbaa !58
  br label %_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i164

_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i164: ; preds = %.noexc167, %._crit_edge.i.i160
  %.pre.i165 = phi i64 [ %.pre.pre.i163, %.noexc167 ], [ %.pre3.i161, %._crit_edge.i.i160 ]
  store i64 %spec.select.i153, ptr %i.ke, align 8, !tbaa !57
  store ptr %i.kp, ptr %i.ks, align 8, !tbaa !60
  br label %bb.bf

bb.be:                                            ; preds = %bb.be, %.lr.ph.i.i157
  %indvars.iv.i.i158 = phi i64 [ 0, %.lr.ph.i.i157 ], [ %indvars.iv.next.i.i159, %bb.be ] ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv.i.i158
  %i.la = load ptr, ptr %i.kr, align 8, !tbaa !60
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 %indvars.iv.i.i158
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !44
  store i8 %i.lc, ptr %i.kz, align 1, !tbaa !44
  %indvars.iv.next.i.i159 = add nuw nsw i64 %indvars.iv.i.i158, 1 ; 2 uses
  %i.ld = load i64, ptr %i.kg, align 8, !tbaa !58 ; 2 uses
  %i.le = icmp ugt i64 %i.ld, %indvars.iv.next.i.i159
  br i1 %i.le, label %bb.be, label %._crit_edge.i.i160, !llvm.loop !0

bb.bf:                                            ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i164, %bb.bc, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread
  %i.lf = phi i64 [ %.pre.i165, %_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i164 ], [ %i.kf, %bb.bc ], [ %i.kh, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread ]
  %i.lg = getelementptr inbounds nuw i8, ptr %.pre483, i64 192
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !60
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lf
  store i8 0, ptr %i.li, align 1, !tbaa !44
  %i.lj = load i64, ptr %i.kg, align 8, !tbaa !58
  %i.lk = add i64 %i.lj, 1
  store i64 %i.lk, ptr %i.kg, align 8, !tbaa !58
  br label %bb.bk

bb.bg:                                            ; preds = %bb.bd, %_ZN4pstd3pmr21polymorphic_allocatorIhE15allocate_objectIhEEPT_m.exit.i.i155
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %.body174

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread216: ; preds = %.lr.ph._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread216_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152
  %i.lm = phi ptr [ %.pre481, %.lr.ph._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread216_crit_edge ], [ %.pre482, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146 ], [ %.pre483, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr %i.s, ptr %5, align 8, !tbaa !41, !alias.scope !696
  store i64 0, ptr %i.t, align 8, !tbaa !43, !alias.scope !696
  store i8 0, ptr %i.s, align 8, !tbaa !44, !alias.scope !696
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef nonnull @.str.334, ptr noundef nonnull align 8 dereferenceable(32) %.0376)
          to label %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i unwind label %bb.bh

bb.bh:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread216
  %i.ln = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lo = load ptr, ptr %5, align 8, !tbaa !45, !alias.scope !696 ; 2 uses
  %i.lp = icmp eq ptr %i.lo, %i.s
  br i1 %i.lp, label %.body174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i169: ; preds = %bb.bh
  %i.lq = load i64, ptr %i.s, align 8, !tbaa !44, !alias.scope !696
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.lr) #36
  br label %.body174

_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread216
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lm, i64 64
  %i.lt = load ptr, ptr %5, align 8, !tbaa !45
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef nonnull %i.ls, ptr noundef %i.lt)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.lu = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.s
  br i1 %i.lv, label %_ZN4pbrt5ErrorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171: ; preds = %bb.bi
  %i.lw = load i64, ptr %i.s, align 8, !tbaa !44
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.lx) #36
  br label %_ZN4pbrt5ErrorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_.exit

bb.bj:                                            ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.ly = landingpad { ptr, i32 }
          cleanup
  %i.lz = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.ma = icmp eq ptr %i.lz, %i.s
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.bj
  %i.mb = load i64, ptr %i.s, align 8, !tbaa !44
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.mc) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %.body174

_ZN4pbrt5ErrorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_.exit: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN4pbrt5ErrorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_.exit, %bb.bf, %bb.ba
  %i.md = getelementptr inbounds nuw i8, ptr %.0376, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.md, %i.hn
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit142.thread214: ; preds = %bb.av, %_ZN4pstd6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS6_EEE5clearEv.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit142, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit140
  %.not.i.i176 = icmp eq ptr %.pre.pre.i.i, null  ; 3 uses
  %i.me = load i64, ptr %i.i, align 8             ; 2 uses
  %i.mf = select i1 %.not.i.i176, i64 8, i64 %i.me
  %i.mg = icmp eq i64 %.pre.i177, %i.mf
  br i1 %i.mg, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit142.thread214
  %i.mh = shl nuw i64 %.pre.i177, 1
  %.not.i3.i = icmp sgt i64 %.pre.i177, 0
  br i1 %.not.i3.i, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.mi = shl i64 %.pre.i177, 4                   ; 2 uses
  %i.mj = icmp eq i64 %i.mi, 0
  br i1 %i.mj, label %iter.check, label %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i

_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i: ; preds = %bb.bm
  %i.mk = load ptr, ptr %0, align 8, !tbaa !166   ; 2 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !30
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %i.mn = load ptr, ptr %i.mm, align 8
  %i.mo = invoke noundef ptr %i.mn(ptr noundef nonnull align 8 dereferenceable(8) %i.mk, i64 noundef %i.mi, i64 noundef 8)
          to label %iter.check unwind label %.loopexit.split-lp223, !inline_history !683

iter.check:                                       ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i, %bb.bm
  %.0.i.i.i.i14.i = phi ptr [ null, %bb.bm ], [ %i.mo, %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i ] ; 14 uses
  %i.mp = select i1 %.not.i.i176, ptr %i.v, ptr %.pre.pre.i.i ; 12 uses
  %min.iters.check = icmp ult i64 %.pre.i177, 4
  %i.mq = ptrtoaddr ptr %i.mp to i64
  %.0.i.i.i.i14.i715 = ptrtoaddr ptr %.0.i.i.i.i14.i to i64
  %i.mr = sub i64 %i.mq, %.0.i.i.i.i14.i715
  %diff.check = icmp ugt i64 %i.mr, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check716 = icmp ult i64 %.pre.i177, 16
  br i1 %min.iters.check716, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ms = and i64 %.pre.i177, 12
  %n.vec = and i64 %.pre.i177, 9223372036854775792 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %index ; 4 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %index ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 32
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 96
  %wide.load = load <4 x ptr>, ptr %i.mu, align 8, !tbaa !164
  %wide.load717.a = load <4 x ptr>, ptr %i.mv, align 8, !tbaa !164
  %wide.load718 = load <4 x ptr>, ptr %i.mw, align 8, !tbaa !164
  %wide.load719 = load <4 x ptr>, ptr %i.mx, align 8, !tbaa !164
  %i.my = getelementptr inbounds nuw i8, ptr %i.mt, i64 32
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mt, i64 64
  %i.na = getelementptr inbounds nuw i8, ptr %i.mt, i64 96
  store <4 x ptr> %wide.load, ptr %i.mt, align 8, !tbaa !164
  store <4 x ptr> %wide.load717.a, ptr %i.my, align 8, !tbaa !164
  store <4 x ptr> %wide.load718, ptr %i.mz, align 8, !tbaa !164
  store <4 x ptr> %wide.load719, ptr %i.na, align 8, !tbaa !164
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.nb = icmp eq i64 %index.next, %n.vec
  br i1 %i.nb, label %middle.block, label %vector.body, !llvm.loop !684

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre.i177, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i181, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ms, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !130

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec720 = and i64 %.pre.i177, 9223372036854775804 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index721 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next723, %vec.epilog.vector.body ] ; 3 uses
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %index721
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %index721
  %wide.load722 = load <4 x ptr>, ptr %i.nd, align 8, !tbaa !164
  store <4 x ptr> %wide.load722, ptr %i.nc, align 8, !tbaa !164
  %index.next723 = add nuw i64 %index721, 4       ; 2 uses
  %i.ne = icmp eq i64 %index.next723, %n.vec720
  br i1 %i.ne, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !685

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n724 = icmp eq i64 %.pre.i177, %n.vec720
  br i1 %cmp.n724, label %._crit_edge.i.i181, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i179.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec720, %vec.epilog.middle.block ] ; 4 uses
  %i.nf = sub nsw i64 %.pre.i177, %indvars.iv.i.i179.ph
  %xtraiter = and i64 %i.nf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i179.prol = phi i64 [ %indvars.iv.next.i.i180.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i179.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.i.i179.prol
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %indvars.iv.i.i179.prol
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !164
  store ptr %i.ni, ptr %i.ng, align 8, !tbaa !164
  %indvars.iv.next.i.i180.prol = add nuw nsw i64 %indvars.iv.i.i179.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !686

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i179.unr = phi i64 [ %indvars.iv.i.i179.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i180.prol, %vec.epilog.scalar.ph.prol ]
  %i.nj = sub nsw i64 %indvars.iv.i.i179.ph, %.pre.i177
  %i.nk = icmp ugt i64 %i.nj, -8
  br i1 %i.nk, label %._crit_edge.i.i181, label %vec.epilog.scalar.ph

._crit_edge.i.i181:                               ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  br i1 %.not.i.i176, label %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge.i.i181
  %i.nl = shl i64 %i.me, 3
  %i.nm = load ptr, ptr %0, align 8, !tbaa !166   ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !30
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 24
  %i.np = load ptr, ptr %i.no, align 8
  invoke void %i.np(ptr noundef nonnull align 8 dereferenceable(8) %i.nm, ptr noundef nonnull %.pre.pre.i.i, i64 noundef %i.nl, i64 noundef 8)
          to label %.noexc184 unwind label %.loopexit.split-lp223, !inline_history !683

.noexc184:                                        ; preds = %bb.bn
  %.pre5.pre.i = load i64, ptr %i.u, align 8, !tbaa !161
  br label %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i.i

_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i.i: ; preds = %.noexc184, %._crit_edge.i.i181
  %.pre5.i = phi i64 [ %.pre5.pre.i, %.noexc184 ], [ %.pre.i177, %._crit_edge.i.i181 ]
  store i64 %i.mh, ptr %i.i, align 8, !tbaa !165
  store ptr %.0.i.i.i.i14.i, ptr %i.h, align 8, !tbaa !162
  br label %bb.bo

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i179 = phi i64 [ %indvars.iv.next.i.i180.7, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i179.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.i.i179
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %indvars.iv.i.i179
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !164
  store ptr %i.ns, ptr %i.nq, align 8, !tbaa !164
  %indvars.iv.next.i.i180 = add nuw nsw i64 %indvars.iv.i.i179, 1 ; 2 uses
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.next.i.i180
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %indvars.iv.next.i.i180
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !164
  store ptr %i.nv, ptr %i.nt, align 8, !tbaa !164
  %indvars.iv.next.i.i180.1 = add nuw nsw i64 %indvars.iv.i.i179, 2 ; 2 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.next.i.i180.1
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %indvars.iv.next.i.i180.1
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !164
  store ptr %i.ny, ptr %i.nw, align 8, !tbaa !164
  %indvars.iv.next.i.i180.2 = add nuw nsw i64 %indvars.iv.i.i179, 3 ; 2 uses
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.next.i.i180.2
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %indvars.iv.next.i.i180.2
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !164
  store ptr %i.ob, ptr %i.nz, align 8, !tbaa !164
  %indvars.iv.next.i.i180.3 = add nuw nsw i64 %indvars.iv.i.i179, 4 ; 2 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.next.i.i180.3
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %indvars.iv.next.i.i180.3
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !164
  store ptr %i.oe, ptr %i.oc, align 8, !tbaa !164
  %indvars.iv.next.i.i180.4 = add nuw nsw i64 %indvars.iv.i.i179, 5 ; 2 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.next.i.i180.4
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %indvars.iv.next.i.i180.4
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !164
  store ptr %i.oh, ptr %i.of, align 8, !tbaa !164
  %indvars.iv.next.i.i180.5 = add nuw nsw i64 %indvars.iv.i.i179, 6 ; 2 uses
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.next.i.i180.5
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %indvars.iv.next.i.i180.5
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !164
  store ptr %i.ok, ptr %i.oi, align 8, !tbaa !164
  %indvars.iv.next.i.i180.6 = add nuw nsw i64 %indvars.iv.i.i179, 7 ; 2 uses
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.next.i.i180.6
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %indvars.iv.next.i.i180.6
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !164
  store ptr %i.on, ptr %i.ol, align 8, !tbaa !164
  %indvars.iv.next.i.i180.7 = add nuw nsw i64 %indvars.iv.i.i179, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i180.7, %.pre.i177
  br i1 %exitcond.not.i.i.7, label %._crit_edge.i.i181, label %vec.epilog.scalar.ph, !llvm.loop !687

bb.bo:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit142.thread214, %bb.bl, %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i.i
  %i.oo = phi ptr [ %.0.i.i.i.i14.i, %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i.i ], [ %.pre.pre.i.i, %bb.bl ], [ %.pre.pre.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit142.thread214 ] ; 3 uses
  %16 = phi i64 [ %.pre5.i, %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i.i ], [ %.pre.i177, %bb.bl ], [ %.pre.i177, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit142.thread214 ] ; 2 uses
  %.not.i4.i = icmp eq ptr %i.oo, null
  %i.op = select i1 %.not.i4.i, ptr %i.v, ptr %i.oo
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %16
  %i.or = load ptr, ptr %i.d, align 8, !tbaa !164
  store ptr %i.or, ptr %i.oq, align 8, !tbaa !164
  %i.os = add i64 %16, 1                          ; 2 uses
  store i64 %i.os, ptr %i.u, align 8, !tbaa !161
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4, !tbaa !47, !noalias !689
  %i.ot = load ptr, ptr %i.j, align 8, !tbaa !67, !noalias !689
  %.not.i.i = icmp eq ptr %i.ot, null
  br i1 %.not.i.i, label %._crit_edge380, label %bb.b, !llvm.loop !688

.body174:                                         ; preds = %bb.bh, %.loopexit222, %.loopexit.split-lp223, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i169, %bb.bb, %bb.bg, %bb.as, %bb.aq
  %.pn51.pn = phi { ptr, i32 } [ %.pn, %bb.aq ], [ %i.ln, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i169 ], [ %.pn49, %bb.as ], [ %i.jr, %bb.bb ], [ %i.ll, %bb.bg ], [ %lpad.loopexit.split-lp225, %.loopexit.split-lp223 ], [ %i.ly, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %lpad.loopexit224, %.loopexit222 ], [ %i.ln, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.t, %bb.y, %bb.ag, %.body174, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s, %bb.r
  %.pn59.pn.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.r ], [ %i.ch, %bb.s ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ci, %bb.t ], [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.gl, %bb.ag ], [ %i.dr, %bb.y ], [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ %i.fd, %bb.ac ], [ %.pn51.pn, %.body174 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit227, %.loopexit.split-lp228, %bb.f, %.body
  %.pn59.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.f ], [ %.pn59.pn.pn.pn, %.body ], [ %lpad.loopexit229, %.loopexit227 ], [ %lpad.loopexit.split-lp230, %.loopexit.split-lp228 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #35
  resume { ptr, i32 } %.pn59.pn.pn.pn.pn.pn

.loopexit232:                                     ; preds = %bb.c, %"_ZZN4pbrt5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteIS3_EEENK3$_5clENS_5TokenE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.a, align 8, !tbaa !161
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !162  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i64, ptr %i.d, align 8, !tbaa !165
  %i.f = shl i64 %i.e, 3
  %i.g = load ptr, ptr %0, align 8, !tbaa !166    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.c, i64 noundef %i.f, i64 noundef 8)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit unwind label %bb.c, !inline_history !2

_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt8AsyncJobIiE4WaitEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_lock", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #35 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNK4pbrt8AsyncJobIiE7IsReadyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #34
  unreachable

_ZNK4pbrt8AsyncJobIiE7IsReadyEv.exit:             ; preds = %bb.b
  %i.d = load i8, ptr %i.b, align 8, !tbaa !151, !range !112, !noundef !113
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #35 ; 0 uses
  br i1 %i.e, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNK4pbrt8AsyncJobIiE7IsReadyEv.exit
  %i.g = tail call noundef zeroext i1 @_ZN4pbrt14DoParallelWorkEv()
  br i1 %i.g, label %bb.b, label %.critedge, !llvm.loop !697

.critedge:                                        ; preds = %_ZNK4pbrt8AsyncJobIiE7IsReadyEv.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  store ptr %i.a, ptr %1, align 8, !tbaa !156
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #35 ; 2 uses
  %.not.i.i.i2 = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i2, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.e

bb.e:                                             ; preds = %.critedge
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.i) #34
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %.critedge
  store i8 1, ptr %i.h, align 8, !tbaa !157
  %i.j = load i8, ptr %i.b, align 8, !tbaa !151, !range !112, !noundef !113
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZNSt18condition_variable4waitIZN4pbrt8AsyncJobIiE4WaitEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.noexc
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(9) %1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.lr.ph.i
  %i.m = load i8, ptr %i.b, align 8, !tbaa !151, !range !112, !noundef !113
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZNSt18condition_variable4waitIZN4pbrt8AsyncJobIiE4WaitEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit, label %.lr.ph.i, !llvm.loop !698

bb.f:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load i8, ptr %i.h, align 8, !tbaa !157, !range !112, !noundef !113
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %1, align 8, !tbaa !156    ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #35 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  resume { ptr, i32 } %i.o

_ZNSt18condition_variable4waitIZN4pbrt8AsyncJobIiE4WaitEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit: ; preds = %.noexc
  %.pre = load i8, ptr %i.h, align 8, !tbaa !157, !range !112
  %i.t = trunc nuw i8 %.pre to i1
  br i1 %i.t, label %_ZNSt18condition_variable4waitIZN4pbrt8AsyncJobIiE4WaitEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.thread, label %_ZNSt11unique_lockISt5mutexED2Ev.exit4

_ZNSt18condition_variable4waitIZN4pbrt8AsyncJobIiE4WaitEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.thread: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %_ZNSt18condition_variable4waitIZN4pbrt8AsyncJobIiE4WaitEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit
  %i.u = load ptr, ptr %1, align 8, !tbaa !156    ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.u, null
  br i1 %.not.i.i3, label %_ZNSt11unique_lockISt5mutexED2Ev.exit4, label %bb.i

bb.i:                                             ; preds = %_ZNSt18condition_variable4waitIZN4pbrt8AsyncJobIiE4WaitEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.thread
  %i.v = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #35 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit4

_ZNSt11unique_lockISt5mutexED2Ev.exit4:           ; preds = %_ZNSt18condition_variable4waitIZN4pbrt8AsyncJobIiE4WaitEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit, %_ZNSt18condition_variable4waitIZN4pbrt8AsyncJobIiE4WaitEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.thread, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !96     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.e, %_ZSt8_DestroyISt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !74 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN4pbrt9TokenizerEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4pbrt9TokenizerEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZN4pbrt9TokenizerD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.d) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 152) #36
  br label %_ZSt8_DestroyISt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4pbrt9TokenizerEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !96
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit
end_hunk_1
