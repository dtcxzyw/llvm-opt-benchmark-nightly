inline.NumInlined: 6142
inline.NumDeleted: 2639
begin_hunk_0
@.str.1139 = private unnamed_addr constant [27 x i8] c"wasm.ValidateFunctionsTask\00", align 1
@__func__._ZN2v88internal4wasm12_GLOBAL__N_121ValidateFunctionsTask3RunEPNS_11JobDelegateE = private unnamed_addr constant [4 x i8] c"Run\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @_ZN2v88internal4wasmL26kCompilationPriorityStringE], section "llvm.metadata"
@switch.table._ZN2v88internal4wasm19WasmSectionIterator4nextEv.12 = private unnamed_addr constant [24 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.12, ptr @.str.13, ptr @_ZN2v88internal4wasmL11kNameStringE, ptr @_ZN2v88internal4wasmL23kSourceMappingURLStringE, ptr @_ZN2v88internal4wasmL16kDebugInfoStringE, ptr @_ZN2v88internal4wasmL24kExternalDebugInfoStringE, ptr @_ZN2v88internal4wasmL14kBuildIdStringE, ptr @_ZN2v88internal4wasmL16kInstTraceStringE, ptr @_ZN2v88internal4wasmL18kBranchHintsStringE, ptr @_ZN2v88internal4wasmL26kCompilationPriorityStringE, ptr @_ZN2v88internal4wasmL18kDescriptorsStringE], align 8
@switch.table._ZN2v88internal4wasm17ModuleDecoderImpl17CheckSectionOrderENS1_11SectionCodeE = private unnamed_addr constant [11 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.9, ptr @.str.11], align 8
@switch.table._ZN2v88internal4wasm17ModuleDecoderImpl17CheckSectionOrderENS1_11SectionCodeE.13 = private unnamed_addr constant [14 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.12, ptr @.str.13], align 8
@switch.table._ZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEv.15 = private unnamed_addr constant [5 x ptr] [ptr @.str.221, ptr @.str.207, ptr @.str.210, ptr @.str.222, ptr @.str.223], align 8
@switch.table._ZN2v88internal4wasm17ModuleDecoderImpl28consume_base_type_definitionEbb = private unnamed_addr constant [4 x ptr] [ptr @.str.132, ptr @.str.131, ptr @.str.130, ptr @.str.129], align 8

@_ZN2v88internal4wasm13ModuleDecoderC1ENS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE = hidden unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN2v88internal4wasm13ModuleDecoderC2ENS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE
@_ZN2v88internal4wasm13ModuleDecoderD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2v88internal4wasm13ModuleDecoderD2Ev
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm11SectionNameENS1_11SectionCodeE:bb.a

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal4wasm19WasmSectionIterator4nextEv.12, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm19WasmSectionIterator4nextEv:bb.a

switch.lookup:                                    ; preds = %bb.h
  %i.an = zext nneg i8 %.0.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal4wasm19WasmSectionIterator4nextEv.12, i64 %i.an
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN2v88internal4wasm11SectionNameENS1_11SectionCodeE.exit

end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm19WasmSectionIterator4nextEv:bb.a

switch.lookup46:                                  ; preds = %bb.o
  %i.cq = zext nneg i8 %.0.i.i to i64
  %switch.gep47 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal4wasm19WasmSectionIterator4nextEv.12, i64 %i.cq
  %switch.load48 = load ptr, ptr %switch.gep47, align 8
  br label %_ZN2v88internal4wasm11SectionNameENS1_11SectionCodeE.exit22

end_hunk_3
begin_hunk_4_@_ZN2v88internal4wasm17ModuleDecoderImpl19DecodeImportSectionEv:bb.a

switch.lookup:                                    ; preds = %bb.j
  %i.ci = zext nneg i8 %.0.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEv.15, i64 %i.ci
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit

end_hunk_4
begin_hunk_5_@_ZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEv:bb.a

switch.lookup:                                    ; preds = %bb.n
  %i.cw = zext nneg i8 %i.cu to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEv.15, i64 %i.cw
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit

end_hunk_5
begin_hunk_6_@_ZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEv:bb.a

switch.lookup148:                                 ; preds = %_ZN2v88internal4wasm19TruncatedUserStringILi50EEC2EPKhm.exit
  %i.ht = zext nneg i8 %i.hr to i64
  %switch.gep149 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal4wasm17ModuleDecoderImpl19DecodeExportSectionEv.15, i64 %i.ht
  %switch.load150 = load ptr, ptr %switch.gep149, align 8
  br label %_ZN2v88internal4wasm16ExternalKindNameENS1_20ImportExportKindCodeE.exit51

end_hunk_6
