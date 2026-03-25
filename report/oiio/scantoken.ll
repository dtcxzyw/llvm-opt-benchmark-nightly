begin_hunk_0
inline.NumInlined: 870
inline.NumDeleted: 298
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
; Function Attrs: mustprogress uwtable
define void @_ZN4YAML7Scanner15ScanPlainScalarEv(ptr noundef nonnull align 8 dereferenceable(480) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"struct.YAML::ScanScalarParams", align 8 ; 16 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"struct.YAML::Token", align 8      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
end_hunk_1
begin_hunk_2
  store i64 0, ptr %7, align 8, !tbaa !14
  store i8 0, ptr %6, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %13, i8 0, i64 3, i1 false)
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %17 = load ptr, ptr %15, align 8, !tbaa !105
  %18 = load ptr, ptr %16, align 8, !tbaa !105
  %.not = icmp eq ptr %17, %18
  br i1 %.not, label %21, label %19

19:                                               ; preds = %1
  %20 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML3Exp19ScanScalarEndInFlowEv()
          to label %23 unwind label %99

21:                                               ; preds = %1
  %22 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML3Exp13ScanScalarEndEv()
          to label %23 unwind label %99

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %20, %19 ], [ %22, %21 ]
  store ptr %24, ptr %3, align 8, !tbaa !133
  store i8 0, ptr %8, align 8, !tbaa !138
  %25 = load ptr, ptr %15, align 8, !tbaa !105
  %26 = load ptr, ptr %16, align 8, !tbaa !105
  %.not13 = icmp eq ptr %25, %26
  br i1 %.not13, label %27, label %31

27:                                               ; preds = %23
  %28 = invoke noundef i32 @_ZNK4YAML7Scanner12GetTopIndentEv(ptr noundef nonnull align 8 dereferenceable(480) %0)
          to label %29 unwind label %99

29:                                               ; preds = %27
  %30 = add nsw i32 %28, 1
  br label %31

31:                                               ; preds = %23, %29
  %32 = phi i32 [ %30, %29 ], [ 0, %23 ]
  store i32 %32, ptr %9, align 4, !tbaa !139
  store i32 2, ptr %10, align 4, !tbaa !140
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %33, align 1, !tbaa !141
  store i8 1, ptr %11, align 8, !tbaa !142
  store i32 -1, ptr %12, align 4, !tbaa !143
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %34, align 8, !tbaa !144
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 2, ptr %35, align 4, !tbaa !145
  invoke void @_ZN4YAML7Scanner24InsertPotentialSimpleKeyEv(ptr noundef nonnull align 8 dereferenceable(480) %0)
          to label %36 unwind label %99

36:                                               ; preds = %31
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %37, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZN4YAML10ScanScalarB5cxx11ERNS_6StreamERNS_16ScanScalarParamsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(41) %3)
          to label %38 unwind label %101

38:                                               ; preds = %36
  %39 = load ptr, ptr %2, align 8, !tbaa !7       ; 6 uses
  %40 = icmp eq ptr %39, %6
  %41 = load ptr, ptr %4, align 8, !tbaa !7       ; 5 uses
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %43 = icmp eq ptr %41, %42                      ; 2 uses
  br i1 %40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %38
  br i1 %43, label %44, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %38
  br i1 %43, label %44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

44:                                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %45 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %46 = load i64, ptr %45, align 8, !tbaa !14     ; 3 uses
  %47 = icmp ult i64 %46, 16
  call void @llvm.assume(i1 %47)
  switch i64 %46, label %50 [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %48
  ]

48:                                               ; preds = %44
  %49 = load i8, ptr %41, align 1, !tbaa !15
  store i8 %49, ptr %39, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

50:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr align 1 %41, i64 %46, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %50, %48, %44
  %51 = load i64, ptr %45, align 8, !tbaa !14     ; 2 uses
  store i64 %51, ptr %7, align 8, !tbaa !14
  %52 = load ptr, ptr %2, align 8, !tbaa !7
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 %51
  store i8 0, ptr %53, align 1, !tbaa !15
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %41, ptr %2, align 8, !tbaa !7
  %54 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %55 = load <2 x i64>, ptr %54, align 8, !tbaa !15
  store <2 x i64> %55, ptr %7, align 8, !tbaa !15
  br label %60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %56 = load i64, ptr %6, align 8, !tbaa !15
  store ptr %41, ptr %2, align 8, !tbaa !7
  %57 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %58 = load <2 x i64>, ptr %57, align 8, !tbaa !15
  store <2 x i64> %58, ptr %7, align 8, !tbaa !15
  %.not.i = icmp eq ptr %39, null
  br i1 %.not.i, label %60, label %59

59:                                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %39, ptr %4, align 8, !tbaa !7
  store i64 %56, ptr %42, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

60:                                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %42, ptr %4, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %59, %60
  %61 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %39, %59 ], [ %42, %60 ]
  %62 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %62, align 8, !tbaa !14
  store i8 0, ptr %61, align 1, !tbaa !15
  %63 = load ptr, ptr %4, align 8, !tbaa !7       ; 2 uses
  %64 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %63) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %66 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %67 = load i8, ptr %66, align 8, !tbaa !146, !range !129, !noundef !130
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 210
  store i8 %67, ptr %68, align 2, !tbaa !16
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 211
  store i8 0, ptr %69, align 1, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store i32 0, ptr %5, align 8, !tbaa !68
  %70 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 19, ptr %70, align 4, !tbaa !77
  %71 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.01.0.copyload.i, ptr %71, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.sroa.22.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !3
  %72 = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %73 = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  store ptr %73, ptr %72, align 8, !tbaa !13
  %74 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 0, ptr %74, align 8, !tbaa !14
  store i8 0, ptr %73, align 8, !tbaa !15
  %75 = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %75, i8 0, i64 28, i1 false)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %77 = load ptr, ptr %76, align 8, !tbaa !95     ; 2 uses
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %79 = load ptr, ptr %78, align 8, !tbaa !96
  %80 = getelementptr inbounds i8, ptr %79, i64 -88
  %.not.i.i = icmp eq ptr %77, %80
  br i1 %.not.i.i, label %84, label %81

81:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  invoke void @_ZN4YAML5TokenC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(84) %77, ptr noundef nonnull align 8 dereferenceable(84) %5)
          to label %.noexc unwind label %103

.noexc:                                           ; preds = %81
  %82 = load ptr, ptr %76, align 8, !tbaa !95
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 88
  store ptr %83, ptr %76, align 8, !tbaa !95
  br label %_ZNSt5queueIN4YAML5TokenESt5dequeIS1_SaIS1_EEE4pushERKS1_.exit

84:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_ZNSt5dequeIN4YAML5TokenESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %85, ptr noundef nonnull align 8 dereferenceable(84) %5)
          to label %_ZNSt5queueIN4YAML5TokenESt5dequeIS1_SaIS1_EEE4pushERKS1_.exit unwind label %103

_ZNSt5queueIN4YAML5TokenESt5dequeIS1_SaIS1_EEE4pushERKS1_.exit: ; preds = %.noexc, %84
  %86 = load ptr, ptr %75, align 8, !tbaa !97     ; 3 uses
  %87 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %88 = load ptr, ptr %87, align 8, !tbaa !92     ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %86, %88
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt5queueIN4YAML5TokenESt5dequeIS1_SaIS1_EEE4pushERKS1_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %92, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %86, %_ZNSt5queueIN4YAML5TokenESt5dequeIS1_SaIS1_EEE4pushERKS1_.exit ] ; 3 uses
  %89 = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !7 ; 2 uses
  %90 = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %91 = icmp eq ptr %89, %90
  br i1 %91, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %89) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %92 = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %92, %88
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !98

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %75, align 8, !tbaa !97
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt5queueIN4YAML5TokenESt5dequeIS1_SaIS1_EEE4pushERKS1_.exit
  %93 = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %86, %_ZNSt5queueIN4YAML5TokenESt5dequeIS1_SaIS1_EEE4pushERKS1_.exit ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %93, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %94

94:                                               ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %93) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %94, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %95 = load ptr, ptr %72, align 8, !tbaa !7      ; 2 uses
  %96 = icmp eq ptr %95, %73
  br i1 %96, label %_ZN4YAML5TokenD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %95) #21
  br label %_ZN4YAML5TokenD2Ev.exit

_ZN4YAML5TokenD2Ev.exit:                          ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %97 = load ptr, ptr %2, align 8, !tbaa !7       ; 2 uses
  %98 = icmp eq ptr %97, %6
  br i1 %98, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZN4YAML5TokenD2Ev.exit
  call void @_ZdlPv(ptr noundef %97) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZN4YAML5TokenD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

99:                                               ; preds = %31, %27, %21, %19
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %105

101:                                              ; preds = %36
  %102 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %105

103:                                              ; preds = %84, %81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %104 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4YAML5TokenD2Ev(ptr noundef nonnull align 8 dead_on_return(84) dereferenceable(84) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %105

105:                                              ; preds = %101, %103, %99
  %.pn.pn = phi { ptr, i32 } [ %100, %99 ], [ %104, %103 ], [ %102, %101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %106 = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %107 = icmp eq ptr %106, %6
  br i1 %107, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %105
  call void @_ZdlPv(ptr noundef %106) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn.pn
}
end_hunk_2
begin_hunk_3
  store i8 0, ptr %14, align 8, !tbaa !138
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  store i32 0, ptr %16, align 4, !tbaa !140
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i8 0, ptr %17, align 8, !tbaa !142
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %15, i8 0, i64 7, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %18, i8 0, i64 13, i1 false)
end_hunk_3
begin_hunk_4
  store i8 1, ptr %14, align 8, !tbaa !138
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 %43, ptr %44, align 2, !tbaa !147
  store i32 0, ptr %15, align 4, !tbaa !139
  store i32 2, ptr %16, align 4, !tbaa !140
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %45, align 1, !tbaa !141
  store i8 0, ptr %17, align 8, !tbaa !142
  store i32 0, ptr %18, align 4, !tbaa !143
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 2, ptr %46, align 8, !tbaa !144
end_hunk_4
begin_hunk_5
  store i8 0, ptr %21, align 8, !tbaa !138
  %22 = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 4 uses
  %23 = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store i8 0, ptr %23, align 8, !tbaa !142
  %24 = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 3 uses
  %25 = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %25, i8 0, i64 3, i1 false)
  %26 = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %26, i8 0, i64 9, i1 false)
  store i32 1, ptr %22, align 4, !tbaa !139
  %27 = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i8 1, ptr %27, align 8, !tbaa !148
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_5
begin_hunk_6
  %31 = getelementptr inbounds nuw i8, ptr %9, i64 20
  %32 = icmp eq i8 %29, 62
  %33 = zext i1 %32 to i32
  store i32 %33, ptr %31, align 4, !tbaa !140
  store i32 0, ptr %24, align 4, !tbaa !143
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML3Exp5ChompEv()
          to label %35 unwind label %.loopexit.split-lp.loopexit.split-lp
end_hunk_6
begin_hunk_7

85:                                               ; preds = %72
  %86 = add nsw i32 %48, -48
  store i32 %86, ptr %22, align 4, !tbaa !139
  store i8 0, ptr %27, align 8, !tbaa !148
  br label %87

end_hunk_7
begin_hunk_8
          to label %172 unwind label %.loopexit.split-lp.loopexit.split-lp

172:                                              ; preds = %170
  %173 = load i32, ptr %22, align 4, !tbaa !139
  %174 = add nsw i32 %173, %171
  store i32 %174, ptr %22, align 4, !tbaa !139
  br label %175

175:                                              ; preds = %172, %168
  %176 = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 0, ptr %176, align 1, !tbaa !141
  store i8 0, ptr %23, align 8, !tbaa !142
  %177 = getelementptr inbounds nuw i8, ptr %9, i64 36
  store i32 2, ptr %177, align 4, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
end_hunk_8
begin_hunk_9
!136 = !{!"_ZTSN4YAML5CHOMPE", !5, i64 0}
!137 = !{!"_ZTSN4YAML6ACTIONE", !5, i64 0}
!138 = !{!134, !37, i64 8}
!139 = !{!134, !4, i64 12}
!140 = !{!134, !135, i64 20}
!141 = !{!134, !37, i64 17}
!142 = !{!134, !37, i64 24}
!143 = !{!134, !136, i64 28}
!144 = !{!134, !137, i64 32}
!145 = !{!134, !137, i64 36}
end_hunk_9
