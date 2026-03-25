begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
; Function Attrs: mustprogress uwtable
define void @_ZN4YAML7Scanner15ScanPlainScalarEv(ptr noundef nonnull align 8 dereferenceable(480) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"struct.YAML::ScanScalarParams", align 8 ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"struct.YAML::Token", align 8      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
end_hunk_1
begin_hunk_2
  store i64 0, ptr %7, align 8, !tbaa !14
  store i8 0, ptr %6, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !133
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i8 0, ptr %8, align 8, !tbaa !138
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  store i32 0, ptr %10, align 4, !tbaa !139
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i8 0, ptr %11, align 8, !tbaa !140
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %9, i8 0, i64 7, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %12, i8 0, i64 13, i1 false)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %15 = load ptr, ptr %13, align 8, !tbaa !105
  %16 = load ptr, ptr %14, align 8, !tbaa !105
  %.not = icmp eq ptr %15, %16
  br i1 %.not, label %19, label %17

17:                                               ; preds = %1
  %18 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML3Exp19ScanScalarEndInFlowEv()
          to label %21 unwind label %97

19:                                               ; preds = %1
  %20 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML3Exp13ScanScalarEndEv()
          to label %21 unwind label %97

21:                                               ; preds = %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ]
  store ptr %22, ptr %3, align 8, !tbaa !133
  store i8 0, ptr %8, align 8, !tbaa !138
  %23 = load ptr, ptr %13, align 8, !tbaa !105
  %24 = load ptr, ptr %14, align 8, !tbaa !105
  %.not13 = icmp eq ptr %23, %24
  br i1 %.not13, label %25, label %29

25:                                               ; preds = %21
  %26 = invoke noundef i32 @_ZNK4YAML7Scanner12GetTopIndentEv(ptr noundef nonnull align 8 dereferenceable(480) %0)
          to label %27 unwind label %97

27:                                               ; preds = %25
  %28 = add nsw i32 %26, 1
  br label %29

29:                                               ; preds = %21, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %21 ]
  store i32 %30, ptr %9, align 4, !tbaa !141
  store i32 2, ptr %10, align 4, !tbaa !139
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %31, align 1, !tbaa !142
  store i8 1, ptr %11, align 8, !tbaa !140
  store i32 -1, ptr %12, align 4, !tbaa !143
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %32, align 8, !tbaa !144
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 2, ptr %33, align 4, !tbaa !145
  invoke void @_ZN4YAML7Scanner24InsertPotentialSimpleKeyEv(ptr noundef nonnull align 8 dereferenceable(480) %0)
          to label %34 unwind label %97

34:                                               ; preds = %29
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %35, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZN4YAML10ScanScalarB5cxx11ERNS_6StreamERNS_16ScanScalarParamsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(41) %3)
          to label %36 unwind label %99

36:                                               ; preds = %34
  %37 = load ptr, ptr %2, align 8, !tbaa !7       ; 6 uses
  %38 = icmp eq ptr %37, %6
  %39 = load ptr, ptr %4, align 8, !tbaa !7       ; 5 uses
  %40 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %41 = icmp eq ptr %39, %40                      ; 2 uses
  br i1 %38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %36
  br i1 %41, label %42, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %36
  br i1 %41, label %42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

42:                                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %44 = load i64, ptr %43, align 8, !tbaa !14     ; 3 uses
  %45 = icmp ult i64 %44, 16
  call void @llvm.assume(i1 %45)
  switch i64 %44, label %48 [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %46
  ]

46:                                               ; preds = %42
  %47 = load i8, ptr %39, align 1, !tbaa !15
  store i8 %47, ptr %37, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

48:                                               ; preds = %42
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %37, ptr align 1 %39, i64 %44, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %48, %46, %42
  %49 = load i64, ptr %43, align 8, !tbaa !14     ; 2 uses
  store i64 %49, ptr %7, align 8, !tbaa !14
  %50 = load ptr, ptr %2, align 8, !tbaa !7
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 %49
  store i8 0, ptr %51, align 1, !tbaa !15
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %39, ptr %2, align 8, !tbaa !7
  %52 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %53 = load <2 x i64>, ptr %52, align 8, !tbaa !15
  store <2 x i64> %53, ptr %7, align 8, !tbaa !15
  br label %58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %54 = load i64, ptr %6, align 8, !tbaa !15
  store ptr %39, ptr %2, align 8, !tbaa !7
  %55 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %56 = load <2 x i64>, ptr %55, align 8, !tbaa !15
  store <2 x i64> %56, ptr %7, align 8, !tbaa !15
  %.not.i = icmp eq ptr %37, null
  br i1 %.not.i, label %58, label %57

57:                                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %37, ptr %4, align 8, !tbaa !7
  store i64 %54, ptr %40, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

58:                                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %40, ptr %4, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %57, %58
  %59 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %37, %57 ], [ %40, %58 ]
  %60 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %60, align 8, !tbaa !14
  store i8 0, ptr %59, align 1, !tbaa !15
  %61 = load ptr, ptr %4, align 8, !tbaa !7       ; 2 uses
  %62 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %63 = icmp eq ptr %61, %62
  br i1 %63, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %61) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %64 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %65 = load i8, ptr %64, align 8, !tbaa !146, !range !129, !noundef !130
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 210
  store i8 %65, ptr %66, align 2, !tbaa !16
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 211
  store i8 0, ptr %67, align 1, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store i32 0, ptr %5, align 8, !tbaa !68
  %68 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 19, ptr %68, align 4, !tbaa !77
  %69 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.01.0.copyload.i, ptr %69, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.sroa.22.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !3
  %70 = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %71 = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  store ptr %71, ptr %70, align 8, !tbaa !13
  %72 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 0, ptr %72, align 8, !tbaa !14
  store i8 0, ptr %71, align 8, !tbaa !15
  %73 = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %73, i8 0, i64 28, i1 false)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %75 = load ptr, ptr %74, align 8, !tbaa !95     ; 2 uses
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %77 = load ptr, ptr %76, align 8, !tbaa !96
  %78 = getelementptr inbounds i8, ptr %77, i64 -88
  %.not.i.i = icmp eq ptr %75, %78
  br i1 %.not.i.i, label %82, label %79

79:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  invoke void @_ZN4YAML5TokenC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(84) %75, ptr noundef nonnull align 8 dereferenceable(84) %5)
          to label %.noexc unwind label %101

.noexc:                                           ; preds = %79
  %80 = load ptr, ptr %74, align 8, !tbaa !95
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 88
  store ptr %81, ptr %74, align 8, !tbaa !95
  br label %_ZNSt5queueIN4YAML5TokenESt5dequeIS1_SaIS1_EEE4pushERKS1_.exit

82:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_ZNSt5dequeIN4YAML5TokenESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %83, ptr noundef nonnull align 8 dereferenceable(84) %5)
          to label %_ZNSt5queueIN4YAML5TokenESt5dequeIS1_SaIS1_EEE4pushERKS1_.exit unwind label %101

_ZNSt5queueIN4YAML5TokenESt5dequeIS1_SaIS1_EEE4pushERKS1_.exit: ; preds = %.noexc, %82
  %84 = load ptr, ptr %73, align 8, !tbaa !97     ; 3 uses
  %85 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %86 = load ptr, ptr %85, align 8, !tbaa !92     ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %84, %86
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt5queueIN4YAML5TokenESt5dequeIS1_SaIS1_EEE4pushERKS1_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %90, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %84, %_ZNSt5queueIN4YAML5TokenESt5dequeIS1_SaIS1_EEE4pushERKS1_.exit ] ; 3 uses
  %87 = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !7 ; 2 uses
  %88 = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %87) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %90 = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %90, %86
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !98

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %73, align 8, !tbaa !97
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt5queueIN4YAML5TokenESt5dequeIS1_SaIS1_EEE4pushERKS1_.exit
  %91 = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %84, %_ZNSt5queueIN4YAML5TokenESt5dequeIS1_SaIS1_EEE4pushERKS1_.exit ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %91, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %92

92:                                               ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %91) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %92, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %93 = load ptr, ptr %70, align 8, !tbaa !7      ; 2 uses
  %94 = icmp eq ptr %93, %71
  br i1 %94, label %_ZN4YAML5TokenD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %93) #21
  br label %_ZN4YAML5TokenD2Ev.exit

_ZN4YAML5TokenD2Ev.exit:                          ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %95 = load ptr, ptr %2, align 8, !tbaa !7       ; 2 uses
  %96 = icmp eq ptr %95, %6
  br i1 %96, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZN4YAML5TokenD2Ev.exit
  call void @_ZdlPv(ptr noundef %95) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZN4YAML5TokenD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

97:                                               ; preds = %29, %25, %19, %17
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %103

99:                                               ; preds = %34
  %100 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %103

101:                                              ; preds = %82, %79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %102 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4YAML5TokenD2Ev(ptr noundef nonnull align 8 dead_on_return(84) dereferenceable(84) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %103

103:                                              ; preds = %99, %101, %97
  %.pn.pn = phi { ptr, i32 } [ %98, %97 ], [ %102, %101 ], [ %100, %99 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %104 = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %105 = icmp eq ptr %104, %6
  br i1 %105, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %103
  call void @_ZdlPv(ptr noundef %104) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn.pn
}
end_hunk_2
begin_hunk_3
  store i8 0, ptr %14, align 8, !tbaa !138
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  store i32 0, ptr %16, align 4, !tbaa !139
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i8 0, ptr %17, align 8, !tbaa !140
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %15, i8 0, i64 7, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %18, i8 0, i64 13, i1 false)
end_hunk_3
begin_hunk_4
  store i8 1, ptr %14, align 8, !tbaa !138
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 %43, ptr %44, align 2, !tbaa !147
  store i32 0, ptr %15, align 4, !tbaa !141
  store i32 2, ptr %16, align 4, !tbaa !139
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %45, align 1, !tbaa !142
  store i8 0, ptr %17, align 8, !tbaa !140
  store i32 0, ptr %18, align 4, !tbaa !143
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 2, ptr %46, align 8, !tbaa !144
end_hunk_4
begin_hunk_5
  store i8 0, ptr %21, align 8, !tbaa !138
  %22 = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 4 uses
  %23 = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store i8 0, ptr %23, align 8, !tbaa !140
  %24 = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 3 uses
  %25 = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %25, i8 0, i64 3, i1 false)
  %26 = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %26, i8 0, i64 9, i1 false)
  store i32 1, ptr %22, align 4, !tbaa !141
  %27 = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i8 1, ptr %27, align 8, !tbaa !148
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_5
begin_hunk_6
  %31 = getelementptr inbounds nuw i8, ptr %9, i64 20
  %32 = icmp eq i8 %29, 62
  %33 = zext i1 %32 to i32
  store i32 %33, ptr %31, align 4, !tbaa !139
  store i32 0, ptr %24, align 4, !tbaa !143
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML3Exp5ChompEv()
          to label %35 unwind label %.loopexit.split-lp.loopexit.split-lp
end_hunk_6
begin_hunk_7

85:                                               ; preds = %72
  %86 = add nsw i32 %48, -48
  store i32 %86, ptr %22, align 4, !tbaa !141
  store i8 0, ptr %27, align 8, !tbaa !148
  br label %87

end_hunk_7
begin_hunk_8
          to label %172 unwind label %.loopexit.split-lp.loopexit.split-lp

172:                                              ; preds = %170
  %173 = load i32, ptr %22, align 4, !tbaa !141
  %174 = add nsw i32 %173, %171
  store i32 %174, ptr %22, align 4, !tbaa !141
  br label %175

175:                                              ; preds = %172, %168
  %176 = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 0, ptr %176, align 1, !tbaa !142
  store i8 0, ptr %23, align 8, !tbaa !140
  %177 = getelementptr inbounds nuw i8, ptr %9, i64 36
  store i32 2, ptr %177, align 4, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
end_hunk_8
begin_hunk_9
!136 = !{!"_ZTSN4YAML5CHOMPE", !5, i64 0}
!137 = !{!"_ZTSN4YAML6ACTIONE", !5, i64 0}
!138 = !{!134, !37, i64 8}
!139 = !{!134, !135, i64 20}
!140 = !{!134, !37, i64 24}
!141 = !{!134, !4, i64 12}
!142 = !{!134, !37, i64 17}
!143 = !{!134, !136, i64 28}
!144 = !{!134, !137, i64 32}
!145 = !{!134, !137, i64 36}
end_hunk_9
