Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/iterator-helpers-tq-csa?download=true
inline.NumInlined: 7370
inline.NumDeleted: 793
begin_hunk_0_@_ZN2v88internal34IteratorFlatMapHelperNextAssembler37GenerateIteratorFlatMapHelperNextImplEv:bb.a
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i1628

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i1628: ; preds = %bb.uk, %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit1626
  %i.eou = load ptr, ptr %i.d, align 8            ; 3 uses
  %i.eov = getelementptr inbounds nuw i8, ptr %176, i64 16
  %i.eow = load ptr, ptr %i.eov, align 8          ; 2 uses
  %.not4.i.i.i.i1629 = icmp eq ptr %i.eou, %i.eow
  br i1 %.not4.i.i.i.i1629, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i1637, label %.lr.ph.i.i.i.i1630

.lr.ph.i.i.i.i1630:                               ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i1628, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i1633
  %.05.i.i.i.i1631 = phi ptr [ %i.epd, %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i1633 ], [ %i.eou, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i1628 ] ; 3 uses
  %i.eox = load ptr, ptr %.05.i.i.i.i1631, align 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i1632 = icmp eq ptr %i.eox, null
  br i1 %.not.i.i.i.i.i.i.i.i.i1632, label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i1633, label %bb.ul

bb.ul:                                            ; preds = %.lr.ph.i.i.i.i1630
  %i.eoy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1631, i64 16
  %i.eoz = load ptr, ptr %i.eoy, align 8
  %i.epa = ptrtoint ptr %i.eoz to i64
  %i.epb = ptrtoint ptr %i.eox to i64
  %i.epc = sub i64 %i.epa, %i.epb
  call void @_ZdlPvm(ptr noundef nonnull %i.eox, i64 noundef %i.epc) #11
  br label %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i1633

_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i1633: ; preds = %bb.ul, %.lr.ph.i.i.i.i1630
  %i.epd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1631, i64 24 ; 2 uses
  %.not.i.i.i1.i1634 = icmp eq ptr %i.epd, %i.eow
  br i1 %.not.i.i.i1.i1634, label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i1635, label %.lr.ph.i.i.i.i1630, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i1635: ; preds = %_ZSt8_DestroyISt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvPT_.exit.i.i.i.i1633
  %.pr.i.i1636 = load ptr, ptr %i.d, align 8
  br label %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i1637

_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i1637: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i1635, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i1628
  %i.epe = phi ptr [ %.pr.i.i1636, %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exitthread-pre-split.i.i1635 ], [ %i.eou, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.i1628 ] ; 3 uses
  %.not.i.i1.i.i1638 = icmp eq ptr %i.epe, null
  br i1 %.not.i.i1.i.i1638, label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit1639, label %bb.um

bb.um:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i1637
  %i.epf = getelementptr inbounds nuw i8, ptr %176, i64 24
  %i.epg = load ptr, ptr %i.epf, align 8
  %i.eph = ptrtoint ptr %i.epg to i64
  %i.epi = ptrtoint ptr %i.epe to i64
  %i.epj = sub i64 %i.eph, %i.epi
  call void @_ZdlPvm(ptr noundef nonnull %i.epe, i64 noundef %i.epj) #11
  br label %_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit1639

_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBaseD2Ev.exit1639: ; preds = %_ZSt8_DestroyIPSt6vectorIPN2v88internal8compiler4NodeESaIS5_EEEvT_S9_.exit.i.i1637, %bb.um
  call void @llvm.lifetime.end.p0(ptr nonnull %176) #10
  call void @_ZN2v88internal8compiler13CodeAssemblerD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %175) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %175) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler13CodeAssembler6BranchIJEJNS0_10JSReceiverENS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedES4_EEEEEEvNS0_5TNodeINS0_5BoolTEEEPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEESt6vectorIPNS1_4NodeESaISP_EEPNSI_IJDpT0_EEESR_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef dead_on_return %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.std::vector.0", align 16    ; 6 uses
  %7 = alloca %"class.std::vector.0", align 16    ; 6 uses
  %8 = alloca %"class.v8::internal::TNode.139", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load <2 x ptr>, ptr %3, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store <2 x ptr> %i.c, ptr %7, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.d, align 16
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull %7) #10
  %i.e = load ptr, ptr %7, align 16               ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 16
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.g, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.i) #11
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load <2 x ptr>, ptr %5, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store <2 x ptr> %i.l, ptr %6, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.m, align 16
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull %6) #10
  %i.n = load ptr, ptr %6, align 16               ; 3 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i5, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit7, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit
  %i.o = load ptr, ptr %i.m, align 16
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.r) #11
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit7

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit7: ; preds = %bb.c, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.s = load ptr, ptr %1, align 8
  store ptr %i.s, ptr %8, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @_ZN2v88internal8compiler13CodeAssembler6BranchENS0_5TNodeINS0_9IntegralTEEEPNS1_18CodeAssemblerLabelES7_NS0_10BranchHintE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull dead_on_return %8, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i8 noundef zeroext 0) #10
  ret void
}

declare void @_ZN2v88internal24GetIteratorFlattenable_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7ContextEEENS4_INS0_5UnionIJNS0_10JSReceiverENS0_6StringEEEEEE(ptr dead_on_unwind writable sret(%"struct.v8::internal::TorqueStructIteratorRecord") align 8, ptr noundef, ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins32Generate_IteratorPrototypeReduceEPNS0_8compiler18CodeAssemblerStateE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::IteratorPrototypeReduceAssembler", align 8 ; 7 uses
  %2 = alloca %"class.v8::internal::TNode.21", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @_ZN2v88internal17CodeStubAssemblerC2EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %0) #10
  call void @_ZN2v88internal8compiler18CodeAssemblerState26SetInitialDebugInformationEPKcS4_i(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str, i32 noundef 3929) #10
  %i.a = call noundef i32 @_ZN2v88internal8Builtins6KindOfENS0_7BuiltinE(i32 noundef 1024) #10
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN2v88internal8compiler13CodeAssembler21GetJSContextParameterEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.21") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  call void @_ZN2v88internal17CodeStubAssembler17PerformStackCheckENS0_5TNodeINS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull dead_on_return %2) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @_ZN2v88internal32IteratorPrototypeReduceAssembler35GenerateIteratorPrototypeReduceImplEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal32IteratorPrototypeReduceAssembler35GenerateIteratorPrototypeReduceImplEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::vector.150", align 8   ; 7 uses
  %2 = alloca %"class.v8::internal::TNode.18", align 8 ; 4 uses
  %3 = alloca [2 x %"class.v8::internal::TNode.18"], align 16 ; 4 uses
  %4 = alloca %"class.std::vector.150", align 8   ; 7 uses
  %5 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %6 = alloca %"class.std::vector.150", align 8   ; 7 uses
  %7 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %8 = alloca %"class.std::vector.150", align 8   ; 7 uses
  %9 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %10 = alloca %"class.std::vector.150", align 8  ; 7 uses
  %11 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %12 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %13 = alloca %"class.std::vector.150", align 8  ; 7 uses
  %14 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %15 = alloca %"class.std::vector.150", align 8  ; 7 uses
  %16 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %17 = alloca %"class.std::vector.150", align 8  ; 7 uses
  %18 = alloca %"class.v8::internal::TNode.21", align 8 ; 4 uses
  %19 = alloca %"class.v8::internal::TNode.23", align 8 ; 4 uses
  %20 = alloca %"class.v8::internal::TNode.23", align 8 ; 4 uses
  %21 = alloca %"class.v8::internal::TNode.23", align 8 ; 4 uses
  %22 = alloca %"class.v8::internal::TNode.23", align 8 ; 4 uses
  %23 = alloca %"class.v8::internal::TNode.23", align 8 ; 4 uses
  %24 = alloca %"class.std::vector.150", align 8  ; 7 uses
  %25 = alloca %"class.std::vector.150", align 8  ; 7 uses
  %26 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %27 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %28 = alloca %"class.v8::internal::TNode.21", align 8 ; 4 uses
  %29 = alloca %"class.std::optional.88", align 8 ; 5 uses
  %30 = alloca %"class.std::vector.150", align 8  ; 7 uses
  %31 = alloca %"class.std::vector.150", align 8  ; 7 uses
  %32 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %33 = alloca %"class.std::vector.150", align 8  ; 7 uses
  %34 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %35 = alloca %"class.std::vector.150", align 8  ; 6 uses
  %36 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %37 = alloca %"class.std::vector.150", align 8  ; 6 uses
  %38 = alloca %"class.std::vector.150", align 8  ; 6 uses
  %39 = alloca %"class.std::vector.0", align 8    ; 6 uses
  %40 = alloca %"class.std::vector.0", align 8    ; 6 uses
  %41 = alloca %"class.v8::internal::TNode.21", align 8 ; 4 uses
  %42 = alloca %"class.std::optional.88", align 8 ; 5 uses
  %43 = alloca %"class.std::vector.150", align 8  ; 6 uses
  %44 = alloca %"class.std::vector.150", align 8  ; 6 uses
  %45 = alloca %"class.v8::internal::TNode.18", align 8 ; 4 uses
  %46 = alloca [1 x %"class.v8::internal::TNode.18"], align 8 ; 4 uses
  %47 = alloca %"class.std::vector.150", align 8  ; 6 uses
  %48 = alloca %"class.std::vector.0", align 8    ; 6 uses
  %49 = alloca %"class.std::vector.0", align 8    ; 6 uses
  %50 = alloca %"class.std::vector.150", align 8  ; 6 uses
  %51 = alloca %"class.std::vector.150", align 8  ; 6 uses
  %52 = alloca %"class.std::vector.0", align 8    ; 6 uses
  %53 = alloca %"class.std::vector.0", align 8    ; 6 uses
  %54 = alloca %"class.std::vector.150", align 8  ; 6 uses
  %55 = alloca %"class.std::vector.0", align 8    ; 6 uses
  %56 = alloca %"class.v8::internal::TNode.18", align 8 ; 4 uses
  %57 = alloca [1 x %"class.v8::internal::TNode.18"], align 8 ; 4 uses
  %58 = alloca %"class.v8::internal::compiler::CodeAssembler", align 8 ; 110 uses
  %59 = alloca %"class.v8::internal::TNode.16", align 8 ; 4 uses
  %60 = alloca %"class.v8::internal::TNode.59", align 8 ; 2 uses
  %61 = alloca %"class.v8::internal::TNode.107", align 8 ; 2 uses
  %62 = alloca %"struct.v8::internal::TorqueStructArguments", align 16 ; 8 uses
  %63 = alloca %"class.v8::internal::TNode.107", align 8 ; 2 uses
  %64 = alloca %"class.v8::internal::TNode.16", align 8 ; 2 uses
  %65 = alloca %"class.v8::internal::CodeStubArguments", align 8 ; 7 uses
  %66 = alloca %"class.v8::internal::TNode.23", align 8 ; 4 uses
  %67 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %68 = alloca %"class.v8::internal::TNode.77", align 8 ; 2 uses
  %69 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %70 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %71 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %72 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %73 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %74 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %75 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %76 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %77 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %78 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %79 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel.108", align 8 ; 13 uses
  %80 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel.108", align 8 ; 13 uses
  %81 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel.108", align 8 ; 12 uses
  %82 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel.108", align 8 ; 12 uses
  %83 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel.108", align 8 ; 12 uses
  %84 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel.109", align 8 ; 12 uses
  %85 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel.98", align 8 ; 12 uses
  %86 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel.99", align 8 ; 12 uses
  %87 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel.110", align 8 ; 14 uses
  %88 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel.108", align 8 ; 12 uses
  %89 = alloca %"class.v8::internal::compiler::CodeAssemblerLabel", align 8 ; 7 uses
  %90 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %91 = alloca %"class.v8::internal::TNode.21", align 8 ; 2 uses
  %92 = alloca %"class.v8::internal::TNode.18", align 8 ; 2 uses
  %93 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %94 = alloca %"class.v8::internal::TNode.21", align 8 ; 2 uses
  %95 = alloca %"class.v8::internal::TNode.16", align 8 ; 2 uses
  %96 = alloca %"class.v8::internal::TNode.23", align 8 ; 2 uses
  %97 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %98 = alloca %"struct.v8::internal::TorqueStructArguments", align 16 ; 3 uses
  %99 = alloca %"class.v8::internal::TNode.16", align 8 ; 2 uses
  %100 = alloca %"class.v8::internal::compiler::CodeAssemblerLabel", align 8 ; 7 uses
  %101 = alloca %"class.v8::internal::TNode.60", align 8 ; 2 uses
  %102 = alloca %"class.v8::internal::TNode.21", align 8 ; 2 uses
  %103 = alloca %"class.v8::internal::TNode.18", align 8 ; 2 uses
  %104 = alloca %"class.v8::internal::TNode.21", align 8 ; 2 uses
  %105 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %106 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %107 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %108 = alloca %"struct.v8::internal::TorqueStructIteratorRecord", align 8 ; 5 uses
  %109 = alloca %"class.v8::internal::TNode.21", align 8 ; 2 uses
  %110 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %111 = alloca %"class.v8::internal::TNode.62", align 8 ; 2 uses
  %112 = alloca %"class.v8::internal::TNode.21", align 8 ; 2 uses
  %113 = alloca %"class.v8::internal::TNode.16", align 8 ; 2 uses
  %114 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %115 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %116 = alloca %"class.v8::internal::TNode.111", align 8 ; 2 uses
  %117 = alloca %"class.v8::internal::TNode.111", align 8 ; 2 uses
  %118 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %119 = alloca %"class.std::vector.0", align 8   ; 4 uses
  %120 = alloca %"class.std::vector.0", align 8   ; 4 uses
  %121 = alloca %"class.v8::internal::compiler::CodeAssemblerLabel", align 8 ; 7 uses
  %122 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %123 = alloca %"class.v8::internal::IteratorBuiltinsAssembler", align 8 ; 5 uses
  %124 = alloca %"struct.v8::internal::TorqueStructIteratorRecord", align 8 ; 5 uses
  %125 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %126 = alloca %"class.v8::internal::TNode.21", align 8 ; 2 uses
  %127 = alloca %"class.v8::internal::TNode.23", align 8 ; 2 uses
  %128 = alloca %"class.v8::internal::IteratorBuiltinsAssembler", align 8 ; 5 uses
  %129 = alloca %"class.v8::internal::TNode.21", align 8 ; 2 uses
  %130 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %131 = alloca %"class.std::optional.88", align 8 ; 3 uses
  %132 = alloca %"class.v8::internal::TNode.64", align 8 ; 2 uses
  %133 = alloca %"class.v8::internal::TNode.16", align 8 ; 2 uses
  %134 = alloca %"class.v8::internal::TNode.23", align 8 ; 2 uses
  %135 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %136 = alloca %"struct.v8::internal::TorqueStructArguments", align 16 ; 3 uses
  %137 = alloca %"class.v8::internal::TNode.16", align 8 ; 2 uses
  %138 = alloca %"class.v8::internal::TNode.64", align 8 ; 2 uses
  %139 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %140 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %141 = alloca %"class.std::vector.0", align 8   ; 5 uses
  %142 = alloca %"class.std::vector.0", align 8   ; 5 uses
  %143 = alloca %"class.v8::internal::compiler::CodeAssemblerLabel", align 8 ; 7 uses
  %144 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %145 = alloca %"class.v8::internal::IteratorBuiltinsAssembler", align 8 ; 5 uses
  %146 = alloca %"struct.v8::internal::TorqueStructIteratorRecord", align 8 ; 5 uses
  %147 = alloca %"class.v8::internal::TNode.23", align 8 ; 2 uses
  %148 = alloca %"class.v8::internal::TNode.23", align 8 ; 2 uses
  %149 = alloca %"class.v8::internal::IteratorBuiltinsAssembler", align 8 ; 5 uses
  %150 = alloca %"class.v8::internal::TNode.21", align 8 ; 2 uses
  %151 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %152 = alloca %"class.std::optional.88", align 8 ; 3 uses
  %153 = alloca %"class.v8::internal::TNode.13", align 8 ; 2 uses
  %154 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel.49", align 8 ; 12 uses
  %155 = alloca %"class.v8::internal::compiler::ScopedExceptionHandler", align 8 ; 4 uses
  %156 = alloca %"class.v8::internal::TNode.23", align 8 ; 2 uses
  %157 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %158 = alloca %"class.v8::internal::compiler::CodeAssemblerLabel", align 8 ; 6 uses
  %159 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel.49", align 8 ; 12 uses
  %160 = alloca %"class.v8::internal::compiler::ScopedExceptionHandler", align 8 ; 4 uses
  %161 = alloca %"class.v8::internal::TNode.64", align 8 ; 2 uses
  %162 = alloca %"class.v8::internal::compiler::CodeAssemblerLabel", align 8 ; 6 uses
  %163 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel.49", align 8 ; 12 uses
  %164 = alloca %"class.v8::internal::compiler::ScopedExceptionHandler", align 8 ; 4 uses
  %165 = alloca %"class.v8::internal::TNode.64", align 8 ; 2 uses
  %166 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %167 = alloca %"class.v8::internal::TNode.64", align 8 ; 2 uses
  %168 = alloca %"class.v8::internal::TNode.64", align 8 ; 2 uses
  %169 = alloca %"class.v8::internal::compiler::CodeAssemblerLabel", align 8 ; 6 uses
  %170 = alloca %"class.v8::internal::TNode.58", align 8 ; 2 uses
  %171 = alloca %"class.v8::internal::TNode.58", align 8 ; 2 uses
  %172 = alloca %"class.v8::internal::TNode.58", align 8 ; 2 uses
  %173 = alloca %"class.v8::internal::TNode.21", align 8 ; 2 uses
  %174 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %175 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %176 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %177 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 37 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #10
  store ptr %i.a, ptr %58, align 8
  %i.b = tail call noundef ptr @_ZN2v88internal8compiler13CodeAssembler16UntypedParameterEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1) #10, !noalias !1831
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #10
  store ptr %i.b, ptr %60, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler19ChangeInt32ToIntPtrENS0_5TNodeINS0_7Word32TEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.16") align 8 %59, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull dead_on_return %60) #10
  call void @_ZN2v88internal8compiler13CodeAssembler16LoadFramePointerEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.107") align 8 %61, ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  %i.c = load ptr, ptr %61, align 8, !noalias !1832
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #10
  store ptr %i.c, ptr %63, align 8
  %i.d = load ptr, ptr %59, align 8
  store ptr %i.d, ptr %64, align 8
  call void @_ZN2v88internal17CodeStubAssembler17GetFrameArgumentsENS0_5TNodeINS0_7RawPtrTEEENS2_INS0_7IntPtrTEEENS1_22FrameArgumentsArgcTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::TorqueStructArguments") align 8 %62, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %63, ptr noundef nonnull dead_on_return %64, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #10
  %i.e = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %62, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  store ptr %0, ptr %65, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %65, i64 8
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %65, i64 16
  %i.j = load <2 x ptr>, ptr %62, align 16
  %i.k = shufflevector <2 x ptr> %i.j, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.k, ptr %i.i, align 8
  %i.l = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler16UntypedParameterEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 2) #10, !noalias !1833 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #10
  call void @_ZNK2v88internal17CodeStubArguments11GetReceiverEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.23") align 8 %66, ptr noundef nonnull align 8 dereferenceable(32) %65) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %67, ptr noundef %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %69, ptr noundef %i.a) #10
  call void @_ZN2v88internal8compiler13CodeAssembler11SmiConstantEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.77") align 8 %68, ptr noundef nonnull align 8 dereferenceable(8) %69, i32 noundef 149) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %56)
  store ptr %i.l, ptr %56, align 8, !noalias !1834
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #10, !noalias !1834
  %i.m = load ptr, ptr %68, align 8, !noalias !1834
  store ptr %i.m, ptr %57, align 8, !noalias !1834
  %i.n = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler15CallRuntimeImplENS0_7Runtime10FunctionIdENS0_5TNodeINS0_6ObjectEEESt16initializer_listIS7_E(ptr noundef nonnull align 8 dereferenceable(8) %67, i32 noundef 194, ptr noundef nonnull dead_on_return %56, ptr nonnull %57, i64 1) #10, !noalias !1834 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #10, !noalias !1834
  call void @llvm.lifetime.end.p0(ptr nonnull %56)
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %69) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #10
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %67) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #10
  store ptr %i.a, ptr %70, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %70, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.p, ptr noundef nonnull %58, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #10
  %i.q = load ptr, ptr %58, align 8
  store ptr %i.q, ptr %71, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %71, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.s, ptr noundef nonnull %58, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #10
  %i.t = load ptr, ptr %58, align 8
  store ptr %i.t, ptr %72, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %72, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %72, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.v, ptr noundef nonnull %58, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #10
  %i.w = load ptr, ptr %58, align 8
  store ptr %i.w, ptr %73, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %73, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.y, ptr noundef nonnull %58, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #10
  %i.z = load ptr, ptr %58, align 8
  store ptr %i.z, ptr %74, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %74, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %74, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.ab, ptr noundef nonnull %58, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #10
  %i.ac = load ptr, ptr %58, align 8
  store ptr %i.ac, ptr %75, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %75, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.ae, ptr noundef nonnull %58, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #10
  %i.af = load ptr, ptr %58, align 8
  store ptr %i.af, ptr %76, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %76, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.ah, ptr noundef nonnull %58, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #10
  %i.ai = load ptr, ptr %58, align 8
  store ptr %i.ai, ptr %77, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %77, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %77, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.ak, ptr noundef nonnull %58, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #10
  %i.al = load ptr, ptr %58, align 8
  store ptr %i.al, ptr %78, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %78, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %78, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.am, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.an, ptr noundef nonnull %58, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #10
  %i.ao = load ptr, ptr %58, align 8
  store ptr %i.ao, ptr %79, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 3 uses
  %i.aq = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 3 uses
  store ptr %i.aq, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aq, i8 0, i64 72, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %79, i64 24 ; 2 uses
  store ptr %i.ar, ptr %i.at, align 8
  store ptr %i.ar, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %79, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %79, i64 56 ; 5 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.av, ptr noundef nonnull %58, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #10
  %i.aw = load ptr, ptr %58, align 8
  store ptr %i.aw, ptr %80, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %80, i64 8 ; 3 uses
  %i.ay = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 3 uses
  store ptr %i.ay, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ay, i8 0, i64 72, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %80, i64 24 ; 2 uses
  store ptr %i.az, ptr %i.bb, align 8
  store ptr %i.az, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %80, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %80, i64 56 ; 5 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.bd, ptr noundef nonnull %58, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #10
  %i.be = load ptr, ptr %58, align 8
  store ptr %i.be, ptr %81, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %81, i64 8 ; 3 uses
  %i.bg = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 3 uses
  store ptr %i.bg, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bg, i8 0, i64 72, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %81, i64 24 ; 2 uses
  store ptr %i.bh, ptr %i.bj, align 8
  store ptr %i.bh, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %81, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %81, i64 56 ; 3 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.bl, ptr noundef nonnull %58, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #10
  %i.bm = load ptr, ptr %58, align 8
  store ptr %i.bm, ptr %82, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %82, i64 8 ; 3 uses
  %i.bo = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 3 uses
  store ptr %i.bo, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bo, i8 0, i64 72, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %82, i64 24 ; 2 uses
  store ptr %i.bp, ptr %i.br, align 8
  store ptr %i.bp, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %82, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %82, i64 56 ; 4 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.bt, ptr noundef nonnull %58, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #10
  %i.bu = load ptr, ptr %58, align 8
  store ptr %i.bu, ptr %83, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %83, i64 8 ; 3 uses
  %i.bw = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 3 uses
  store ptr %i.bw, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bw, i8 0, i64 72, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %83, i64 24 ; 2 uses
  store ptr %i.bx, ptr %i.bz, align 8
  store ptr %i.bx, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %83, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i8 0, i64 24, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %83, i64 56 ; 4 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.cb, ptr noundef nonnull %58, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #10
  %i.cc = load ptr, ptr %58, align 8
  store ptr %i.cc, ptr %84, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %84, i64 8 ; 3 uses
  %i.ce = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #12 ; 3 uses
  store ptr %i.ce, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ce, i8 0, i64 96, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %84, i64 16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %84, i64 24 ; 2 uses
  store ptr %i.cf, ptr %i.ch, align 8
  store ptr %i.cf, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %84, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i8 0, i64 24, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %84, i64 56 ; 4 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.cj, ptr noundef nonnull %58, i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #10
  %i.ck = load ptr, ptr %58, align 8
  store ptr %i.ck, ptr %85, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %85, i64 8 ; 3 uses
  %i.cm = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 3 uses
  store ptr %i.cm, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cm, i8 0, i64 72, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %85, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %85, i64 24 ; 2 uses
  store ptr %i.cn, ptr %i.cp, align 8
  store ptr %i.cn, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %85, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i8 0, i64 24, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %85, i64 56 ; 4 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.cr, ptr noundef nonnull %58, i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #10
  %i.cs = load ptr, ptr %58, align 8
  store ptr %i.cs, ptr %86, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %86, i64 8 ; 3 uses
  %i.cu = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #12 ; 3 uses
  store ptr %i.cu, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cu, i8 0, i64 48, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %86, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %86, i64 24 ; 2 uses
  store ptr %i.cv, ptr %i.cx, align 8
  store ptr %i.cv, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %86, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i8 0, i64 24, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %86, i64 56 ; 4 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.cz, ptr noundef nonnull %58, i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #10
  %i.da = load ptr, ptr %58, align 8
  store ptr %i.da, ptr %87, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %87, i64 8 ; 3 uses
  %i.dc = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #12 ; 3 uses
  store ptr %i.dc, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dc, i8 0, i64 96, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %87, i64 16 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %87, i64 24 ; 2 uses
  store ptr %i.dd, ptr %i.df, align 8
  store ptr %i.dd, ptr %i.de, align 8
end_hunk_0
