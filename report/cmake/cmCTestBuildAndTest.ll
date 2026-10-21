Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCTestBuildAndTest?download=true
inline.NumInlined: 938
inline.NumDeleted: 413
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt10unique_ptrI20cmUVStreamReadHandleSt14default_deleteIS0_EED2Ev:bb.a
_ZNSt14_Function_baseD2Ev.exit2.i.i:              ; preds = %bb.e, %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteI20cmUVStreamReadHandleEclEPS0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #24
  br label %_ZNKSt14default_deleteI20cmUVStreamReadHandleEclEPS0_.exit

_ZNKSt14default_deleteI20cmUVStreamReadHandleEclEPS0_.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #24
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt14default_deleteI20cmUVStreamReadHandleEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN16cmUVProcessChainD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN23cmUVProcessChainBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !29
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !33   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !29
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !133  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !134  ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.x, %i.z
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN23cmUVProcessChainBuilder20ProcessConfigurationES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyIN23cmUVProcessChainBuilder20ProcessConfigurationEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.ap, %_ZSt8_DestroyIN23cmUVProcessChainBuilder20ProcessConfigurationEEvPT_.exit.i.i.i ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %i.aa = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !38 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i2, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.aa, %.lr.ph.i.i.i2 ] ; 3 uses
  %i.ad = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !29
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.ac
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i2
  %i.aj = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.aa, %.lr.ph.i.i.i2 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN23cmUVProcessChainBuilder20ProcessConfigurationEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !32
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #24
  br label %_ZSt8_DestroyIN23cmUVProcessChainBuilder20ProcessConfigurationEEvPT_.exit.i.i.i

_ZSt8_DestroyIN23cmUVProcessChainBuilder20ProcessConfigurationEEvPT_.exit.i.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.ap, %i.z
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPN23cmUVProcessChainBuilder20ProcessConfigurationES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !130

_ZSt8_DestroyIPN23cmUVProcessChainBuilder20ProcessConfigurationES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN23cmUVProcessChainBuilder20ProcessConfigurationEEvPT_.exit.i.i.i
  %.pr.i5 = load ptr, ptr %i.w, align 8, !tbaa !133
  br label %_ZSt8_DestroyIPN23cmUVProcessChainBuilder20ProcessConfigurationES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN23cmUVProcessChainBuilder20ProcessConfigurationES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN23cmUVProcessChainBuilder20ProcessConfigurationES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPN23cmUVProcessChainBuilder20ProcessConfigurationES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorIN23cmUVProcessChainBuilder20ProcessConfigurationESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN23cmUVProcessChainBuilder20ProcessConfigurationES1_EvT_S3_RSaIT0_E.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !135
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #24
  br label %_ZNSt6vectorIN23cmUVProcessChainBuilder20ProcessConfigurationESaIS1_EED2Ev.exit

_ZNSt6vectorIN23cmUVProcessChainBuilder20ProcessConfigurationESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN23cmUVProcessChainBuilder20ProcessConfigurationES1_EvT_S3_RSaIT0_E.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN19cmCTestBuildAndTest3RunEv(ptr noundef nonnull align 8 dereferenceable(464) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %1 = alloca [3 x %"struct.std::pair.568"], align 8 ; 12 uses
  %2 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.cmake, align 8               ; 14 uses
  %4 = alloca %class.cmCTestBuildAndTestCaptureRAII, align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::vector", align 8       ; 10 uses
  %8 = alloca %"class.std::vector", align 8       ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %10 = alloca %class.cmWorkingDirectory, align 8 ; 10 uses
  %11 = alloca %"class.std::unique_ptr.110", align 8 ; 4 uses
  %12 = alloca %class.cmMakefile, align 8         ; 7 uses
  %13 = alloca %class.cmStateSnapshot, align 8    ; 5 uses
  %14 = alloca %class.cmBuildArgs, align 8        ; 18 uses
  %15 = alloca %"class.std::vector", align 8      ; 12 uses
  %16 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 15 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::vector", align 8      ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::vector", align 8      ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %23 = alloca %"class.std::vector", align 8      ; 12 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %25 = alloca %"class.std::vector", align 8      ; 13 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !28
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.14, i64 noundef 106) ; 0 uses
  br label %bb.eh

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN5cmakeC1EN7cmState4RoleENS0_10TryCompileE(ptr noundef nonnull align 8 dereferenceable(2456) %3, i32 noundef 1, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZN30cmCTestBuildAndTestCaptureRAIIC2ER5cmake(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(2456) %3)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %0, align 8, !tbaa !26
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN7cmCTest13GetConfigTypeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.e unwind label %bb.ae

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !28
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.y

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.w = load i64, ptr %i.v, align 8, !tbaa !28
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.y, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.z, ptr %5, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !28
  store i8 0, ptr %i.z, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ab, ptr %6, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !28
  store i8 0, ptr %i.ab, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.ad = load ptr, ptr %0, align 8, !tbaa !26
  invoke void @_ZN18cmCTestTestHandler14FindExecutableEP7cmCTestRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS7_RSt6vectorIS7_SaIS7_EESE_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %5, align 8, !tbaa !33    ; 6 uses
  %i.af = icmp eq ptr %i.ae, %i.z
  %i.ag = load ptr, ptr %9, align 8, !tbaa !33    ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah                ; 2 uses
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.h
  br i1 %i.ai, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.h
  br i1 %i.ai, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !28 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  switch i64 %i.ak, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !29
  store i8 %i.am, ptr %i.ae, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.ag, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !28 ; 2 uses
  store i64 %i.an, ptr %i.aa, align 8, !tbaa !28
  %i.ao = load ptr, ptr %5, align 8, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i8 0, ptr %i.ap, align 1, !tbaa !29
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ag, ptr %5, align 8, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ar = load <2 x i64>, ptr %i.aq, align 8, !tbaa !29
  store <2 x i64> %i.ar, ptr %i.aa, align 8, !tbaa !29
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.as = load i64, ptr %i.z, align 8, !tbaa !29
  store ptr %i.ag, ptr %5, align 8, !tbaa !33
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.au = load <2 x i64>, ptr %i.at, align 8, !tbaa !29
  store <2 x i64> %i.au, ptr %i.aa, align 8, !tbaa !29
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ae, ptr %9, align 8, !tbaa !33
  store i64 %i.as, ptr %i.ah, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ah, ptr %9, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.av = phi ptr [ %i.ae, %bb.l ], [ %i.ah, %bb.m ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.aw, align 8, !tbaa !28
  store i8 0, ptr %i.av, align 1, !tbaa !29
  %i.ax = load ptr, ptr %9, align 8, !tbaa !33    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !29
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.bc = load i64, ptr %i.aa, align 8, !tbaa !28
  %i.bd = icmp eq i64 %i.bc, 0
  %i.be = load i64, ptr %i.ac, align 8
  %i.bf = icmp eq i64 %i.be, 0
  %or.cond = select i1 %i.bd, i1 true, i1 %i.bf
  br i1 %or.cond, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load ptr, ptr %0, align 8, !tbaa !26
  invoke void @_ZN7cmCTest13SetConfigTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.r unwind label %bb.q

bb.o:                                             ; preds = %bb.c
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.p:                                             ; preds = %bb.g
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.x

bb.q:                                             ; preds = %.noexc336, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc334, %bb.u, %bb.s, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.r, %bb.n
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.r:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.15, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.r
  %i.bl = load ptr, ptr %5, align 8, !tbaa !33
  %i.bm = load i64, ptr %i.aa, align 8, !tbaa !28
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bl, i64 noundef %i.bm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.q ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull @.str.16, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bp = load ptr, ptr %6, align 8, !tbaa !33
  %i.bq = load i64, ptr %i.ac, align 8, !tbaa !28
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef %i.bp, i64 noundef %i.bq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit102 unwind label %bb.q ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit102: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !60
  %i.bt = getelementptr i8, ptr %i.bs, i64 -24
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 240
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !75 ; 6 uses
  %.not.i.i.i332 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i332, label %bb.s, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN19cmCTestBuildAndTest3RunEv:bb.a

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  %i.om = load ptr, ptr %0, align 8, !tbaa !26
  invoke void @_ZN18cmCTestTestHandler14FindExecutableEP7cmCTestRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS7_RSt6vectorIS7_SaIS7_EESE_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef %i.om, ptr noundef nonnull align 8 dereferenceable(32) %i.mm, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %bb.cn unwind label %bb.cy

bb.cn:                                            ; preds = %bb.cm
  %i.on = load ptr, ptr %19, align 8, !tbaa !33   ; 6 uses
  %i.oo = icmp eq ptr %i.on, %i.mq
  %i.op = load ptr, ptr %24, align 8, !tbaa !33   ; 5 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.or = icmp eq ptr %i.op, %i.oq                ; 2 uses
  br i1 %i.oo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i202: ; preds = %bb.cn
  br i1 %i.or, label %bb.co, label %.thread.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i197: ; preds = %bb.cn
  br i1 %i.or, label %bb.co, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i198

bb.co:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i197, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i202
  %i.os = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !28 ; 3 uses
  %i.ou = icmp ult i64 %i.ot, 16
  call void @llvm.assume(i1 %i.ou)
  switch i64 %i.ot, label %bb.cq [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i200
    i64 1, label %bb.cp
  ]

bb.cp:                                            ; preds = %bb.co
  %i.ov = load i8, ptr %i.op, align 1, !tbaa !29
  store i8 %i.ov, ptr %i.on, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i200

bb.cq:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.on, ptr align 1 %i.op, i64 %i.ot, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i200: ; preds = %bb.cq, %bb.cp, %bb.co
  %i.ow = load i64, ptr %i.os, align 8, !tbaa !28 ; 2 uses
  store i64 %i.ow, ptr %i.mr, align 8, !tbaa !28
  %i.ox = load ptr, ptr %19, align 8, !tbaa !33
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.ow
  store i8 0, ptr %i.oy, align 1, !tbaa !29
  %.pre.i201 = load ptr, ptr %24, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit204

.thread.i203:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i202
  store ptr %i.op, ptr %19, align 8, !tbaa !33
  %i.oz = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.pa = load <2 x i64>, ptr %i.oz, align 8, !tbaa !29
  store <2 x i64> %i.pa, ptr %i.mr, align 8, !tbaa !29
  br label %bb.cs

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i198: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i197
  %i.pb = load i64, ptr %i.mq, align 8, !tbaa !29
  store ptr %i.op, ptr %19, align 8, !tbaa !33
  %i.pc = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.pd = load <2 x i64>, ptr %i.pc, align 8, !tbaa !29
  store <2 x i64> %i.pd, ptr %i.mr, align 8, !tbaa !29
  %.not.i199 = icmp eq ptr %i.on, null
  br i1 %.not.i199, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i198
  store ptr %i.on, ptr %24, align 8, !tbaa !33
  store i64 %i.pb, ptr %i.oq, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit204

bb.cs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i198, %.thread.i203
  store ptr %i.oq, ptr %24, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit204: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i200, %bb.cr, %bb.cs
  %i.pe = phi ptr [ %i.on, %bb.cr ], [ %i.oq, %bb.cs ], [ %.pre.i201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i200 ]
  %i.pf = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 0, ptr %i.pf, align 8, !tbaa !28
  store i8 0, ptr %i.pe, align 1, !tbaa !29
  %i.pg = load ptr, ptr %24, align 8, !tbaa !33   ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.pi = icmp eq ptr %i.pg, %i.ph
  br i1 %i.pi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit204
  %i.pj = load i64, ptr %i.ph, align 8, !tbaa !29
  %i.pk = add i64 %i.pj, 1
  call void @_ZdlPvm(ptr noundef %i.pg, i64 noundef %i.pk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  %i.pl = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools10FileExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.ct unwind label %.loopexit.split-lp398.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ct:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207
  br i1 %i.pl, label %bb.dc, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.pm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.20, i64 noundef 61)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209 unwind label %.loopexit.split-lp398.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209: ; preds = %bb.cu
  %i.pn = load ptr, ptr %i.mm, align 8, !tbaa !33
  %i.po = load i64, ptr %i.mn, align 8, !tbaa !28
  %i.pp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.pn, i64 noundef %i.po)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit211 unwind label %.loopexit.split-lp398.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit211: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209
  %i.pq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pp, ptr noundef nonnull @.str.21, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213 unwind label %.loopexit.split-lp398.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit211
  %i.pr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pp, ptr noundef nonnull @.str.22, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215 unwind label %.loopexit.split-lp398.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213
  %i.ps = load ptr, ptr %19, align 8, !tbaa !33
  %i.pt = load i64, ptr %i.mr, align 8, !tbaa !28
  %i.pu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pp, ptr noundef %i.ps, i64 noundef %i.pt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit217 unwind label %.loopexit.split-lp398.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit217: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 10, ptr %i.f, align 1, !tbaa !29
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !60
  %i.pw = getelementptr i8, ptr %i.pv, i64 -24
  %i.px = load i64, ptr %i.pw, align 8
  %i.py = getelementptr inbounds i8, ptr %i.pu, i64 %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !146
  %.not.i218 = icmp eq i64 %i.qa, 0
  br i1 %.not.i218, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit217
  %i.qb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pu, ptr noundef nonnull %i.f, i64 noundef 1)
          to label %bb.cx unwind label %.loopexit.split-lp398.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cw:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit217
  %i.qc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.pu, i8 noundef signext 10)
          to label %bb.cx unwind label %.loopexit.split-lp398.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cx:                                            ; preds = %bb.cv, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.qd = load ptr, ptr %23, align 8, !tbaa !35   ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !35 ; 2 uses
  %.not388418 = icmp eq ptr %i.qd, %i.qf
  br i1 %.not388418, label %.loopexit396, label %.lr.ph420

bb.cy:                                            ; preds = %bb.cm
  %i.qg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %.loopexit.split-lp398

.lr.ph420:                                        ; preds = %bb.cx, %bb.db
  %.sroa.0364.0419 = phi ptr [ %i.qt, %bb.db ], [ %i.qd, %bb.cx ] ; 3 uses
  %i.qh = load ptr, ptr %.sroa.0364.0419, align 8, !tbaa !33
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0364.0419, i64 8
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !28
  %i.qk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.qh, i64 noundef %i.qj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit224 unwind label %.loopexit.split-lp398.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit224: ; preds = %.lr.ph420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 10, ptr %i.e, align 1, !tbaa !29
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !60
  %i.qm = getelementptr i8, ptr %i.ql, i64 -24
  %i.qn = load i64, ptr %i.qm, align 8
  %i.qo = getelementptr inbounds i8, ptr %i.qk, i64 %i.qn
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !146
  %.not.i225 = icmp eq i64 %i.qq, 0
  br i1 %.not.i225, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit224
  %i.qr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qk, ptr noundef nonnull %i.e, i64 noundef 1)
          to label %bb.db unwind label %.loopexit.split-lp398.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.da:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit224
  %i.qs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.qk, i8 noundef signext 10)
          to label %bb.db unwind label %.loopexit.split-lp398.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.db:                                            ; preds = %bb.cz, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.0364.0419, i64 32 ; 2 uses
  %.not388.a = icmp eq ptr %i.qt, %i.qf
  br i1 %.not388.a, label %.loopexit396, label %.lr.ph420

.loopexit.split-lp398.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.da, %bb.cz, %.lr.ph420, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %bb.cu, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit211, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215, %bb.cv, %bb.cw
  %lpad.loopexit.split-lp582 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp398

bb.dc:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 4 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit236 unwind label %.loopexit.split-lp392.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit236: ; preds = %bb.dc
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !35 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !35 ; 2 uses
  %.not389421 = icmp eq ptr %i.qw, %i.qy
  br i1 %.not389421, label %._crit_edge, label %.lr.ph423

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit243, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #22
  store i32 0, ptr %i.k, align 4, !tbaa !53
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !28
  %i.rc = icmp eq i64 %i.rb, 0
  br i1 %i.rc, label %bb.dl, label %bb.dh

.lr.ph423:                                        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit236, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit243
  %.sroa.0360.0422 = phi ptr [ %i.ru, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit243 ], [ %i.qw, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit236 ] ; 4 uses
  %i.rd = load ptr, ptr %26, align 8, !tbaa !31   ; 8 uses
  %i.re = load ptr, ptr %i.qu, align 8, !tbaa !32
  %.not.i237 = icmp eq ptr %i.rd, %i.re
  br i1 %.not.i237, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %.lr.ph423
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rd, i64 16 ; 3 uses
  store ptr %i.rf, ptr %i.rd, align 8, !tbaa !27
  %i.rg = load ptr, ptr %.sroa.0360.0422, align 8, !tbaa !33 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.0360.0422, i64 8
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i64 %i.ri, ptr %i.d, align 8, !tbaa !34
  %i.rj = icmp ugt i64 %i.ri, 15
  br i1 %i.rj, label %.noexc.i.i240, label %._crit_edge.i.i.i238

.noexc.i.i240:                                    ; preds = %bb.dd
  %i.rk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.rd, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc241 unwind label %.loopexit.split-lp392.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc241:                                        ; preds = %.noexc.i.i240
  store ptr %i.rk, ptr %i.rd, align 8, !tbaa !33
  %i.rl = load i64, ptr %i.d, align 8, !tbaa !34
  store i64 %i.rl, ptr %i.rf, align 8, !tbaa !29
  br label %._crit_edge.i.i.i238

._crit_edge.i.i.i238:                             ; preds = %.noexc241, %bb.dd
  %i.rm = phi ptr [ %i.rk, %.noexc241 ], [ %i.rf, %bb.dd ] ; 2 uses
  switch i64 %i.ri, label %bb.df [
    i64 1, label %bb.de
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i239
  ]

bb.de:                                            ; preds = %._crit_edge.i.i.i238
  %i.rn = load i8, ptr %i.rg, align 1, !tbaa !29
  store i8 %i.rn, ptr %i.rm, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i239

bb.df:                                            ; preds = %._crit_edge.i.i.i238
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rm, ptr align 1 %i.rg, i64 %i.ri, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i239

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i239: ; preds = %bb.df, %bb.de, %._crit_edge.i.i.i238
  %i.ro = load i64, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  store i64 %i.ro, ptr %i.rp, align 8, !tbaa !28
  %i.rq = load ptr, ptr %i.rd, align 8, !tbaa !33
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.ro
  store i8 0, ptr %i.rr, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.rs = load ptr, ptr %26, align 8, !tbaa !31
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 32
  store ptr %i.rt, ptr %26, align 8, !tbaa !31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit243

bb.dg:                                            ; preds = %.lr.ph423
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr %i.rd, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0360.0422)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit243 unwind label %.loopexit.split-lp392.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit243: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i239, %bb.dg
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.0360.0422, i64 32 ; 2 uses
  %.not389 = icmp eq ptr %i.ru, %i.qy
  br i1 %.not389, label %._crit_edge, label %.lr.ph423

.loopexit.split-lp392.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dg, %.noexc.i.i240, %bb.dc
  %lpad.loopexit.split-lp579 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp392

bb.dh:                                            ; preds = %._crit_edge
  %i.rv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.23, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit245 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit245: ; preds = %bb.dh
  %i.rw = load ptr, ptr %i.qz, align 8, !tbaa !33
  %i.rx = load i64, ptr %i.ra, align 8, !tbaa !28
  %i.ry = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.rw, i64 noundef %i.rx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit247 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit247: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit245
  %i.rz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.ry, i8 noundef signext 10)
          to label %bb.di unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.di:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit247
  %i.sa = invoke noundef zeroext i1 @_ZN18cmWorkingDirectory12SetDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.qz)
          to label %bb.dj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dj:                                            ; preds = %bb.di
  br i1 %i.sa, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.sb = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !33
  %i.sd = load i64, ptr %i.fc, align 8, !tbaa !28
  br label %.invoke

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit278, %bb.dk
  %i.se = phi ptr [ %i.sc, %bb.dk ], [ %i.uj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit278 ]
  %i.sf = phi i64 [ %i.sd, %bb.dk ], [ %i.ul, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit278 ]
  %i.sg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.se, i64 noundef %i.sf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit249.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit249.invoke: ; preds = %.invoke
  %i.sh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.sg, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.dl:                                            ; preds = %bb.dj, %._crit_edge
  %i.si = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.24, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit251 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit251: ; preds = %bb.dl
  %i.sj = load ptr, ptr %19, align 8, !tbaa !33
  %i.sk = load i64, ptr %i.mr, align 8, !tbaa !28
  %i.sl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.sj, i64 noundef %i.sk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit253 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit253: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 34, ptr %i.c, align 1, !tbaa !29
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !60
  %i.sn = getelementptr i8, ptr %i.sm, i64 -24
  %i.so = load i64, ptr %i.sn, align 8
  %i.sp = getelementptr inbounds i8, ptr %i.sl, i64 %i.so
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !146
  %.not.i254 = icmp eq i64 %i.sr, 0
  br i1 %.not.i254, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit253
  %i.ss = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.sl, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.do unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.dn:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit253
  %i.st = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.sl, i8 noundef signext 34)
          to label %bb.do unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.do:                                            ; preds = %bb.dm, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.su = load ptr, ptr %i.qv, align 8, !tbaa !35 ; 2 uses
  %i.sv = load ptr, ptr %i.qx, align 8, !tbaa !35 ; 2 uses
  %.not390424 = icmp eq ptr %i.su, %i.sv
  br i1 %.not390424, label %._crit_edge428, label %.lr.ph427

._crit_edge428:                                   ; preds = %bb.dt, %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !29
  %i.sw = load ptr, ptr @_ZSt4cout, align 8, !tbaa !60
  %i.sx = getelementptr i8, ptr %i.sw, i64 -24
  %i.sy = load i64, ptr %i.sx, align 8
  %i.sz = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.sy
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !146
  %.not.i259 = icmp eq i64 %i.tb, 0
  br i1 %.not.i259, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %._crit_edge428
  %i.tc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.du unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.dq:                                            ; preds = %._crit_edge428
  %i.td = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 10)
          to label %bb.du unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph427:                                        ; preds = %bb.do, %bb.dt
  %.sroa.0356.0425 = phi ptr [ %i.tr, %bb.dt ], [ %i.su, %bb.do ] ; 3 uses
  %i.te = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.25, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265: ; preds = %.lr.ph427
  %i.tf = load ptr, ptr %.sroa.0356.0425, align 8, !tbaa !33
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.0356.0425, i64 8
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !28
  %i.ti = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.tf, i64 noundef %i.th)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit267 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit267: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 34, ptr %i.a, align 1, !tbaa !29
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !60
  %i.tk = getelementptr i8, ptr %i.tj, i64 -24
  %i.tl = load i64, ptr %i.tk, align 8
  %i.tm = getelementptr inbounds i8, ptr %i.ti, i64 %i.tl
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !146
  %.not.i268 = icmp eq i64 %i.to, 0
  br i1 %.not.i268, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit267
  %i.tp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ti, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.dt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ds:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit267
  %i.tq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ti, i8 noundef signext 34)
          to label %bb.dt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.dt:                                            ; preds = %bb.dr, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.0356.0425, i64 32 ; 2 uses
  %.not390 = icmp eq ptr %i.tr, %i.sv
  br i1 %.not390, label %._crit_edge428, label %.lr.ph427

bb.du:                                            ; preds = %bb.dq, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.tt = load double, ptr %i.ts, align 8, !tbaa !155
  %i.tu = fcmp ogt double %i.tt, 0.000000e+00
  br i1 %i.tu, label %bb.dv, label %bb.dx

bb.dv:                                            ; preds = %bb.du
  %i.tv = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #22
  %i.tw = sub nsw i64 %i.tv, %i.ec
  %i.tx = load double, ptr %i.ts, align 8, !tbaa !156
  %i.ty = fmul double %i.tx, 1.000000e+09
  %i.tz = sitofp i64 %i.tw to double
  %i.ua = fsub double %i.ty, %i.tz
  %i.ub = fdiv double %i.ua, 1.000000e+09         ; 2 uses
  %i.uc = fcmp ule double %i.ub, 0.000000e+00
  br i1 %i.uc, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.ud = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.18, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.dx:                                            ; preds = %bb.dv, %bb.du
  %.sroa.0354.0 = phi double [ %i.ub, %bb.dv ], [ 0.000000e+00, %bb.du ]
  %i.ue = invoke noundef zeroext i1 @_ZN19cmCTestBuildAndTest7RunTestERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEPiNSt6chrono8durationIdSt5ratioILl1ELl1EEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull %i.k, double %.sroa.0354.0)
          to label %bb.dy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dy:                                            ; preds = %bb.dx
  %i.uf = load i32, ptr %i.k, align 4
  %i.ug = icmp eq i32 %i.uf, 0
  %or.cond.not = select i1 %i.ue, i1 %i.ug, i1 false
  br i1 %or.cond.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.uh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.26, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit278 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit278: ; preds = %bb.dz
  %i.ui = load ptr, ptr %25, align 8, !tbaa !38   ; 2 uses
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !33
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !28
  br label %.invoke

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph427, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265, %bb.dr, %bb.ds, %.invoke, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit249.invoke, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit247, %bb.di, %bb.dh, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit245, %bb.dl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit251, %bb.dm, %bb.dn, %bb.dp, %bb.dq, %bb.dz, %bb.dw, %bb.dx
  %lpad.loopexit.split-lp577 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  br label %.loopexit.split-lp392

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit249.invoke, %bb.dy, %bb.dw
  %.8 = phi i32 [ 1, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit249.invoke ], [ 1, %bb.dw ], [ 0, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  %i.um = load ptr, ptr %25, align 8, !tbaa !38   ; 3 uses
  %i.un = load ptr, ptr %26, align 8, !tbaa !31   ; 2 uses
  %.not4.i.i.i281 = icmp eq ptr %i.um, %i.un
  br i1 %.not4.i.i.i281, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i289, label %.lr.ph.i.i.i282

.lr.ph.i.i.i282:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i285
  %.05.i.i.i283 = phi ptr [ %i.ut, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i285 ], [ %i.um, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276 ] ; 3 uses
  %i.uo = load ptr, ptr %.05.i.i.i283, align 8, !tbaa !33 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.05.i.i.i283, i64 16 ; 2 uses
  %i.uq = icmp eq ptr %i.uo, %i.up
  br i1 %i.uq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i284: ; preds = %.lr.ph.i.i.i282
  %i.ur = load i64, ptr %i.up, align 8, !tbaa !29
  %i.us = add i64 %i.ur, 1
  call void @_ZdlPvm(ptr noundef %i.uo, i64 noundef %i.us) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i285

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i285: ; preds = %.lr.ph.i.i.i282, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i284
  %i.ut = getelementptr inbounds nuw i8, ptr %.05.i.i.i283, i64 32 ; 2 uses
  %.not.i.i.i286 = icmp eq ptr %i.ut, %i.un
  br i1 %.not.i.i.i286, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i287, label %.lr.ph.i.i.i282, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i287: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i285
  %.pr.i288 = load ptr, ptr %25, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i289

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i289: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i287, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276
  %i.uu = phi ptr [ %.pr.i288, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i287 ], [ %i.um, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276 ] ; 3 uses
  %.not.i.i1.i290 = icmp eq ptr %i.uu, null
  br i1 %.not.i.i1.i290, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit293, label %bb.ea

bb.ea:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i289
  %i.uv = load ptr, ptr %i.qu, align 8, !tbaa !32
  %i.uw = ptrtoint ptr %i.uv to i64
  %i.ux = ptrtoint ptr %i.uu to i64
  %i.uy = sub i64 %i.uw, %i.ux
  call void @_ZdlPvm(ptr noundef nonnull %i.uu, i64 noundef %i.uy) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit293

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit293: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i289, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %.loopexit396

.loopexit.split-lp392:                            ; preds = %.loopexit.split-lp392.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn89 = phi { ptr, i32 } [ %lpad.loopexit.split-lp577, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp579, %.loopexit.split-lp392.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %.loopexit.split-lp398

.loopexit396:                                     ; preds = %bb.db, %bb.cx, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit293
  %.9 = phi i32 [ %.8, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit293 ], [ 1, %bb.cx ], [ 1, %bb.db ]
  %i.uz = load ptr, ptr %23, align 8, !tbaa !38   ; 3 uses
  %i.va = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !31 ; 2 uses
  %.not4.i.i.i294 = icmp eq ptr %i.uz, %i.vb
  br i1 %.not4.i.i.i294, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i302, label %.lr.ph.i.i.i295

.lr.ph.i.i.i295:                                  ; preds = %.loopexit396, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i298
  %.05.i.i.i296 = phi ptr [ %i.vh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i298 ], [ %i.uz, %.loopexit396 ] ; 3 uses
  %i.vc = load ptr, ptr %.05.i.i.i296, align 8, !tbaa !33 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.05.i.i.i296, i64 16 ; 2 uses
  %i.ve = icmp eq ptr %i.vc, %i.vd
  br i1 %i.ve, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i298, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i297: ; preds = %.lr.ph.i.i.i295
  %i.vf = load i64, ptr %i.vd, align 8, !tbaa !29
  %i.vg = add i64 %i.vf, 1
  call void @_ZdlPvm(ptr noundef %i.vc, i64 noundef %i.vg) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i298

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i298: ; preds = %.lr.ph.i.i.i295, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i297
  %i.vh = getelementptr inbounds nuw i8, ptr %.05.i.i.i296, i64 32 ; 2 uses
  %.not.i.i.i299 = icmp eq ptr %i.vh, %i.vb
  br i1 %.not.i.i.i299, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i300, label %.lr.ph.i.i.i295, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i300: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i298
  %.pr.i301 = load ptr, ptr %23, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i302

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i302: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i300, %.loopexit396
  %i.vi = phi ptr [ %.pr.i301, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i300 ], [ %i.uz, %.loopexit396 ] ; 3 uses
  %.not.i.i1.i303 = icmp eq ptr %i.vi, null
  br i1 %.not.i.i1.i303, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit306, label %bb.eb

bb.eb:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i302
  %i.vj = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !32
  %i.vl = ptrtoint ptr %i.vk to i64
  %i.vm = ptrtoint ptr %i.vi to i64
  %i.vn = sub i64 %i.vl, %i.vm
  call void @_ZdlPvm(ptr noundef nonnull %i.vi, i64 noundef %i.vn) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit306

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit306: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i302, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.vo = load ptr, ptr %21, align 8, !tbaa !38   ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !31 ; 2 uses
  %.not4.i.i.i307 = icmp eq ptr %i.vo, %i.vq
  br i1 %.not4.i.i.i307, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i315, label %.lr.ph.i.i.i308

.lr.ph.i.i.i308:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit306, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i311
  %.05.i.i.i309 = phi ptr [ %i.vw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i311 ], [ %i.vo, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit306 ] ; 3 uses
  %i.vr = load ptr, ptr %.05.i.i.i309, align 8, !tbaa !33 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %.05.i.i.i309, i64 16 ; 2 uses
  %i.vt = icmp eq ptr %i.vr, %i.vs
  br i1 %i.vt, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i310

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i310: ; preds = %.lr.ph.i.i.i308
  %i.vu = load i64, ptr %i.vs, align 8, !tbaa !29
  %i.vv = add i64 %i.vu, 1
  call void @_ZdlPvm(ptr noundef %i.vr, i64 noundef %i.vv) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i311

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i311: ; preds = %.lr.ph.i.i.i308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i310
  %i.vw = getelementptr inbounds nuw i8, ptr %.05.i.i.i309, i64 32 ; 2 uses
  %.not.i.i.i312 = icmp eq ptr %i.vw, %i.vq
  br i1 %.not.i.i.i312, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i313, label %.lr.ph.i.i.i308, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i313: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i311
  %.pr.i314 = load ptr, ptr %21, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i315

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i315: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i313, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit306
  %i.vx = phi ptr [ %.pr.i314, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i313 ], [ %i.vo, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit306 ] ; 3 uses
  %.not.i.i1.i316 = icmp eq ptr %i.vx, null
  br i1 %.not.i.i1.i316, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit319, label %bb.ec

bb.ec:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i315
  %i.vy = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !32
  %i.wa = ptrtoint ptr %i.vz to i64
  %i.wb = ptrtoint ptr %i.vx to i64
  %i.wc = sub i64 %i.wa, %i.wb
  call void @_ZdlPvm(ptr noundef nonnull %i.vx, i64 noundef %i.wc) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit319

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit319: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i315, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.wd = load ptr, ptr %20, align 8, !tbaa !33   ; 2 uses
  %i.we = icmp eq ptr %i.wd, %i.ms
  br i1 %i.we, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit319
  %i.wf = load i64, ptr %i.ms, align 8, !tbaa !29
  %i.wg = add i64 %i.wf, 1
  call void @_ZdlPvm(ptr noundef %i.wd, i64 noundef %i.wg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit319, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.wh = load ptr, ptr %19, align 8, !tbaa !33   ; 2 uses
  %i.wi = icmp eq ptr %i.wh, %i.mq
  br i1 %i.wi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322
  %i.wj = load i64, ptr %i.mq, align 8, !tbaa !29
  %i.wk = add i64 %i.wj, 1
  call void @_ZdlPvm(ptr noundef %i.wh, i64 noundef %i.wk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %.critedge

.loopexit.split-lp398:                            ; preds = %.loopexit.split-lp398.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp392, %bb.cy
  %.pn89.pn = phi { ptr, i32 } [ %.pn89, %.loopexit.split-lp392 ], [ %i.qg, %bb.cy ], [ %lpad.loopexit.split-lp582, %.loopexit.split-lp398.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.ed

bb.ed:                                            ; preds = %.loopexit.split-lp398, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196
  %.pn89.pn.pn = phi { ptr, i32 } [ %.pn89.pn, %.loopexit.split-lp398 ], [ %.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.wl = load ptr, ptr %20, align 8, !tbaa !33   ; 2 uses
  %i.wm = icmp eq ptr %i.wl, %i.ms
  br i1 %i.wm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %bb.ed
  %i.wn = load i64, ptr %i.ms, align 8, !tbaa !29
  %i.wo = add i64 %i.wn, 1
  call void @_ZdlPvm(ptr noundef %i.wl, i64 noundef %i.wo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.wp = load ptr, ptr %19, align 8, !tbaa !33   ; 2 uses
  %i.wq = icmp eq ptr %i.wp, %i.mq
  br i1 %i.wq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328
  %i.wr = load i64, ptr %i.mq, align 8, !tbaa !29
  %i.ws = add i64 %i.wr, 1
  call void @_ZdlPvm(ptr noundef %i.wp, i64 noundef %i.ws) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %_ZNSt10unique_ptrI17cmGlobalGeneratorSt14default_deleteIS0_EED2Ev.exit136

.critedge:                                        ; preds = %_ZN11cmBuildArgsD2Ev.exit, %bb.bg, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %.critedge100, %bb.ay, %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325
  %.10 = phi i32 [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ 1, %bb.ay ], [ %.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325 ], [ 0, %.critedge100 ], [ 1, %bb.au ], [ 1, %bb.bg ], [ 1, %_ZN11cmBuildArgsD2Ev.exit ]
  call void @_ZN18cmWorkingDirectoryD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @_ZN30cmCTestBuildAndTestCaptureRAIID2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN5cmakeD1Ev(ptr noundef nonnull align 8 dead_on_return(2456) dereferenceable(2456) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.eh

_ZNSt10unique_ptrI17cmGlobalGeneratorSt14default_deleteIS0_EED2Ev.exit136: ; preds = %.loopexit.split-lp404.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cc, %_ZNKSt14default_deleteI17cmGlobalGeneratorEclEPS0_.exit.i135, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, %bb.av
  %.pn93 = phi { ptr, i32 } [ %.pn73.pn.pn.pn, %bb.cc ], [ %.pn89.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331 ], [ %i.gj, %_ZNKSt14default_deleteI17cmGlobalGeneratorEclEPS0_.exit.i135 ], [ %.pn70, %bb.av ], [ %i.gj, %bb.ar ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp404.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN18cmWorkingDirectoryD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #22
  br label %bb.ee

bb.ee:                                            ; preds = %_ZNSt10unique_ptrI17cmGlobalGeneratorSt14default_deleteIS0_EED2Ev.exit136, %bb.ak
  %.pn93.pn = phi { ptr, i32 } [ %.pn93, %_ZNSt10unique_ptrI17cmGlobalGeneratorSt14default_deleteIS0_EED2Ev.exit136 ], [ %i.fp, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ae, %bb.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126
  %.pn93.pn.pn.pn = phi { ptr, i32 } [ %i.fb, %bb.ae ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %.pn93.pn, %bb.ee ]
  call void @_ZN30cmCTestBuildAndTestCaptureRAIID2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.o
  %.pn93.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn.pn, %bb.ef ], [ %i.bh, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN5cmakeD1Ev(ptr noundef nonnull align 8 dead_on_return(2456) dereferenceable(2456) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn93.pn.pn.pn.pn

end_hunk_1
