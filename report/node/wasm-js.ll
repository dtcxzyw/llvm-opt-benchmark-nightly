begin_hunk_0
inline.NumInlined: 4643
inline.NumDeleted: 1995
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN2v88internal6WasmJs18PrepareForSnapshotEPNS0_7IsolateE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit: ; preds = %_ZN2v88internal7Context27set_wasm_webassembly_objectENS0_6TaggedINS0_8JSObjectEEE.exit
  %i.dl = call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr nonnull %i.cu, ptr nonnull %i.dj, ptr noundef nonnull @_ZN2v88internal4wasm18WebAssemblyCompileERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.dm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.15, i64 8, i8 noundef zeroext 0) #21 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.v, label %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit166, !prof !9
end_hunk_1
begin_hunk_2_@_ZN2v88internal6WasmJs18PrepareForSnapshotEPNS0_7IsolateE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit166: ; preds = %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit
  %i.do = call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr nonnull %i.cu, ptr nonnull %i.dm, ptr noundef nonnull @_ZN2v88internal4wasm19WebAssemblyValidateERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.dp = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.16, i64 11, i8 noundef zeroext 0) #21 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.w, label %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit167, !prof !9
end_hunk_2
begin_hunk_3_@_ZN2v88internal6WasmJs18PrepareForSnapshotEPNS0_7IsolateE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit167: ; preds = %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit166
  %i.dr = call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr nonnull %i.cu, ptr nonnull %i.dp, ptr noundef nonnull @_ZN2v88internal4wasm22WebAssemblyInstantiateERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @_ZN2v88internal6WasmJs13InstallModuleEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE(ptr noundef nonnull %0, ptr nonnull %i.cu)
  %i.ds = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.17, i64 8, i8 noundef zeroext 0) #21 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
end_hunk_3
begin_hunk_4_@_ZN2v88internal6WasmJs18PrepareForSnapshotEPNS0_7IsolateE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_122InstallConstructorFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit167
  %i.du = call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr nonnull %i.cu, ptr nonnull %i.ds, ptr noundef nonnull @_ZN2v88internal4wasm19WebAssemblyInstanceERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext true, i32 noundef 2, i32 noundef 1) ; 2 uses
  %i.dv = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_116SetupConstructorEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS0_12InstanceTypeEiPKci(ptr noundef nonnull %0, ptr nonnull %i.du, i16 noundef zeroext 2151, i32 noundef 48, ptr noundef nonnull @.str.18, i32 noundef 0)
  %i.dw = load i64, ptr %.0.i, align 8            ; 4 uses
  %i.dx = load i64, ptr %i.du, align 8            ; 5 uses
end_hunk_4
begin_hunk_5_@_ZN2v88internal6WasmJs18PrepareForSnapshotEPNS0_7IsolateE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_122InstallConstructorFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEE.exit174: ; preds = %_ZN2v88internal7Context29set_wasm_instance_constructorENS0_6TaggedINS0_10JSFunctionEEE.exit
  %i.el = call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr nonnull %i.cu, ptr nonnull %i.ej, ptr noundef nonnull @_ZN2v88internal4wasm16WebAssemblyTableERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext true, i32 noundef 2, i32 noundef 1) ; 2 uses
  %i.em = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_116SetupConstructorEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS0_12InstanceTypeEiPKci(ptr noundef nonnull %0, ptr nonnull %i.el, i16 noundef zeroext 2156, i32 noundef 80, ptr noundef nonnull @.str.21, i32 noundef 0) ; 4 uses
  %i.en = load i64, ptr %.0.i, align 8            ; 4 uses
  %i.eo = load i64, ptr %i.el, align 8            ; 5 uses
end_hunk_5
begin_hunk_6_@_ZN2v88internal6WasmJs18PrepareForSnapshotEPNS0_7IsolateE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit181: ; preds = %_ZN2v88internal7Context26set_wasm_table_constructorENS0_6TaggedINS0_10JSFunctionEEE.exit
  %i.fc = call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr %i.em, ptr nonnull %i.fa, ptr noundef nonnull @_ZN2v88internal4wasm20WebAssemblyTableGrowERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.fd = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.24, i64 3, i8 noundef zeroext 0) #21 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.ak, label %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit182, !prof !9
end_hunk_6
begin_hunk_7_@_ZN2v88internal6WasmJs18PrepareForSnapshotEPNS0_7IsolateE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit182: ; preds = %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit181
  %i.ff = call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr %i.em, ptr nonnull %i.fd, ptr noundef nonnull @_ZN2v88internal4wasm19WebAssemblyTableSetERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.fg = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.25, i64 3, i8 noundef zeroext 0) #21 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.al, label %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit183, !prof !9
end_hunk_7
begin_hunk_8_@_ZN2v88internal6WasmJs18PrepareForSnapshotEPNS0_7IsolateE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit183: ; preds = %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit182
  %i.fi = call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr %i.em, ptr nonnull %i.fg, ptr noundef nonnull @_ZN2v88internal4wasm19WebAssemblyTableGetERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext false, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.fj = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.26, i64 6, i8 noundef zeroext 0) #21 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %bb.am, label %_ZN2v88internal12_GLOBAL__N_122InstallConstructorFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEE.exit184, !prof !9
end_hunk_8
begin_hunk_9_@_ZN2v88internal6WasmJs18PrepareForSnapshotEPNS0_7IsolateE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_122InstallConstructorFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEE.exit184: ; preds = %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit183
  %i.fl = call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr nonnull %i.cu, ptr nonnull %i.fj, ptr noundef nonnull @_ZN2v88internal4wasm17WebAssemblyMemoryERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext true, i32 noundef 2, i32 noundef 1) ; 2 uses
  %i.fm = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_116SetupConstructorEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS0_12InstanceTypeEiPKci(ptr noundef nonnull %0, ptr nonnull %i.fl, i16 noundef zeroext 2153, i32 noundef 56, ptr noundef nonnull @.str.27, i32 noundef 0) ; 2 uses
  %i.fn = load i64, ptr %.0.i, align 8            ; 4 uses
  %i.fo = load i64, ptr %i.fl, align 8            ; 5 uses
end_hunk_9
begin_hunk_10_@_ZN2v88internal6WasmJs18PrepareForSnapshotEPNS0_7IsolateE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit191: ; preds = %_ZN2v88internal7Context27set_wasm_memory_constructorENS0_6TaggedINS0_10JSFunctionEEE.exit
  %i.gc = call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr %i.fm, ptr nonnull %i.ga, ptr noundef nonnull @_ZN2v88internal4wasm21WebAssemblyMemoryGrowERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) ; 0 uses
  call fastcc void @_ZN2v88internal12_GLOBAL__N_113InstallGetterEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEE(ptr noundef nonnull %0, ptr %i.fm, ptr noundef nonnull @.str.28, ptr noundef nonnull @_ZN2v88internal4wasm26WebAssemblyMemoryGetBufferERKNS_20FunctionCallbackInfoINS_5ValueEEE)
  %i.gd = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.29, i64 6, i8 noundef zeroext 0) #21 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
end_hunk_10
begin_hunk_11_@_ZN2v88internal6WasmJs18PrepareForSnapshotEPNS0_7IsolateE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_122InstallConstructorFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEE.exit192: ; preds = %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit191
  %i.gf = call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr nonnull %i.cu, ptr nonnull %i.gd, ptr noundef nonnull @_ZN2v88internal4wasm17WebAssemblyGlobalERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext true, i32 noundef 2, i32 noundef 1) ; 2 uses
  %i.gg = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_116SetupConstructorEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS0_12InstanceTypeEiPKci(ptr noundef nonnull %0, ptr nonnull %i.gf, i16 noundef zeroext 2150, i32 noundef 72, ptr noundef nonnull @.str.30, i32 noundef 0) ; 2 uses
  %i.gh = load i64, ptr %.0.i, align 8            ; 4 uses
  %i.gi = load i64, ptr %i.gf, align 8            ; 5 uses
end_hunk_11
begin_hunk_12_@_ZN2v88internal6WasmJs18PrepareForSnapshotEPNS0_7IsolateE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit199: ; preds = %_ZN2v88internal7Context27set_wasm_global_constructorENS0_6TaggedINS0_10JSFunctionEEE.exit
  %i.gw = call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr %i.gg, ptr nonnull %i.gu, ptr noundef nonnull @_ZN2v88internal4wasm24WebAssemblyGlobalValueOfERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.gx = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.32, i64 5, i8 noundef zeroext 0) #21 ; 4 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %bb.ba, label %_ZN2v812_GLOBAL__N_16v8_strEPNS_8internal7IsolateEPKc.exit.i, !prof !9
end_hunk_12
begin_hunk_13_@_ZN2v88internal6WasmJs18PrepareForSnapshotEPNS0_7IsolateE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_122InstallConstructorFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEE.exit200: ; preds = %_ZN2v88internal12_GLOBAL__N_110CreateFuncEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEbNS_14SideEffectTypeENS4_INS0_20FunctionTemplateInfoEEE.exit
  %i.ht = call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr nonnull %i.cu, ptr nonnull %i.hr, ptr noundef nonnull @_ZN2v88internal4wasm14WebAssemblyTagERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext true, i32 noundef 2, i32 noundef 1) ; 2 uses
  %i.hu = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_116SetupConstructorEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS0_12InstanceTypeEiPKci(ptr noundef nonnull %0, ptr nonnull %i.ht, i16 noundef zeroext 2157, i32 noundef 56, ptr noundef nonnull @.str.34, i32 noundef 0) ; 0 uses
  %i.hv = load i64, ptr %.0.i, align 8            ; 4 uses
  %i.hw = load i64, ptr %i.ht, align 8            ; 5 uses
end_hunk_13
begin_hunk_14_@_ZN2v88internal6WasmJs18PrepareForSnapshotEPNS0_7IsolateE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_122InstallConstructorFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEE.exit213: ; preds = %_ZN2v88internal7Context15set_wasm_js_tagENS0_6TaggedINS0_8JSObjectEEE.exit
  %i.iz = call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr nonnull %i.cu, ptr nonnull %i.ix, ptr noundef nonnull @_ZN2v88internal4wasm20WebAssemblyExceptionERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext true, i32 noundef 2, i32 noundef 1) ; 4 uses
  call fastcc void @_ZN2v88internal12_GLOBAL__N_124SetDummyInstanceTemplateEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEE(ptr noundef nonnull %0, ptr nonnull %i.iz)
  %i.ja = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_116SetupConstructorEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS0_12InstanceTypeEiPKci(ptr noundef nonnull %0, ptr nonnull %i.iz, i16 noundef zeroext 2149, i32 noundef 40, ptr noundef nonnull @.str.37, i32 noundef 2) ; 2 uses
  %i.jb = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.38, i64 6, i8 noundef zeroext 0) #21 ; 2 uses
end_hunk_14
begin_hunk_15_@_ZN2v88internal6WasmJs18PrepareForSnapshotEPNS0_7IsolateE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit215: ; preds = %_ZN2v88internal12_GLOBAL__N_122InstallConstructorFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEE.exit213
  %i.jd = call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr %i.ja, ptr nonnull %i.jb, ptr noundef nonnull @_ZN2v88internal4wasm26WebAssemblyExceptionGetArgERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 2, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.je = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.39, i64 2, i8 noundef zeroext 0) #21 ; 2 uses
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %bb.bs, label %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit217, !prof !9
end_hunk_15
begin_hunk_16_@_ZN2v88internal6WasmJs18PrepareForSnapshotEPNS0_7IsolateE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit217: ; preds = %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit215
  %i.jg = call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr %i.ja, ptr nonnull %i.je, ptr noundef nonnull @_ZN2v88internal4wasm22WebAssemblyExceptionIsERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.jh = load i64, ptr %.0.i, align 8            ; 4 uses
  %i.ji = load i64, ptr %i.iz, align 8            ; 5 uses
  %i.jj = add i64 %i.jh, 1927                     ; 3 uses
end_hunk_16
begin_hunk_17_@_ZN2v88internal6WasmJs13InstallModuleEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_122InstallConstructorFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEE.exit: ; preds = %bb.k
  %i.br = call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr %1, ptr nonnull %i.bp, ptr noundef nonnull @_ZN2v88internal4wasm17WebAssemblyModuleERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext true, i32 noundef 2, i32 noundef 1)
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_122InstallConstructorFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEE.exit, %_ZN2v88internal6HandleINS0_10JSFunctionEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
end_hunk_17
begin_hunk_18_@_ZN2v88internal6WasmJs13InstallModuleEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit: ; preds = %_ZN2v88internal7Context27set_wasm_module_constructorENS0_6TaggedINS0_10JSFunctionEEE.exit
  %i.ci = call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr nonnull %.sroa.083.0, ptr nonnull %i.cg, ptr noundef nonnull @_ZN2v88internal4wasm24WebAssemblyModuleImportsERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext false, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.cj = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.19, i64 7, i8 noundef zeroext 0) #21 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.t, label %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit53, !prof !9
end_hunk_18
begin_hunk_19_@_ZN2v88internal6WasmJs13InstallModuleEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit53: ; preds = %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit
  %i.cl = call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr nonnull %.sroa.083.0, ptr nonnull %i.cj, ptr noundef nonnull @_ZN2v88internal4wasm24WebAssemblyModuleExportsERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext false, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.cm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.44, i64 14, i8 noundef zeroext 0) #21 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.u, label %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit54, !prof !9
end_hunk_19
begin_hunk_20_@_ZN2v88internal6WasmJs13InstallModuleEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit54: ; preds = %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit53
  %i.co = call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr nonnull %.sroa.083.0, ptr nonnull %i.cm, ptr noundef nonnull @_ZN2v88internal4wasm31WebAssemblyModuleCustomSectionsERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 2, i1 noundef zeroext false, i32 noundef 0, i32 noundef 1) ; 0 uses
  ret void
}

end_hunk_20
begin_hunk_21_@_ZN2v88internal12_GLOBAL__N_113InstallGetterEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEE:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6192
  %i.e = tail call ptr @_ZN2v88internal4Name14ToFunctionNameEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6StringEEE(ptr noundef nonnull %0, ptr nonnull %i.b, ptr nonnull %i.d) #21 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %4, label %_ZN2v88internal20FunctionTemplateInfo17SetParentTemplateEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_9UndefinedES1_EEEEE.exit.i, !prof !9

4:                                                ; preds = %_ZN2v812_GLOBAL__N_16v8_strEPNS_8internal7IsolateEPKc.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.67) #24
  unreachable

_ZN2v88internal20FunctionTemplateInfo17SetParentTemplateEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_9UndefinedES1_EEEEE.exit.i: ; preds = %_ZN2v812_GLOBAL__N_16v8_strEPNS_8internal7IsolateEPKc.exit
  %5 = tail call ptr @_ZN2v816FunctionTemplate3NewEPNS_7IsolateEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEENS_5LocalIS4_EENSA_INS_9SignatureEEEiNS_19ConstructorBehaviorENS_14SideEffectTypeEPKNS_9CFunctionEttt(ptr noundef nonnull %0, ptr noundef %3, ptr null, ptr null, i32 noundef 0, i32 noundef 0, i32 noundef range(i32 0, 2) 1, ptr noundef null, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0) #21
  %6 = tail call ptr @_ZN2v88internal10ApiNatives19InstantiateFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_20FunctionTemplateInfoEEENS0_17MaybeDirectHandleINS0_4NameEEE(ptr noundef nonnull %0, ptr %5, ptr nonnull %i.e) #21 ; 2 uses
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_110GetterNameEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE.exit, !prof !9

bb.c:                                             ; preds = %_ZN2v88internal20FunctionTemplateInfo17SetParentTemplateEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_9UndefinedES1_EEEEE.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.67) #24
  unreachable

_ZN2v88internal12_GLOBAL__N_110GetterNameEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE.exit: ; preds = %_ZN2v88internal20FunctionTemplateInfo17SetParentTemplateEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_9UndefinedES1_EEEEE.exit.i
  tail call void @_ZN2v86Object19SetAccessorPropertyENS_5LocalINS_4NameEEENS1_INS_8FunctionEEES5_NS_17PropertyAttributeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %i.b, ptr nonnull %6, ptr null, i32 noundef 0) #21
  ret void
}

end_hunk_21
begin_hunk_22_@_ZN2v88internal6WasmJs7InstallEPNS0_7IsolateE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit: ; preds = %bb.l
  %i.bw = call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr nonnull %.0.i.i, ptr nonnull %i.bu, ptr noundef nonnull @_ZN2v812_GLOBAL__N_127WebAssemblyCompileStreamingERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.bx = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.46, i64 20, i8 noundef zeroext 0) #21 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.n, label %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit59, !prof !9
end_hunk_22
begin_hunk_23_@_ZN2v88internal6WasmJs7InstallEPNS0_7IsolateE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit59: ; preds = %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit
  %i.bz = call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr nonnull %.0.i.i, ptr nonnull %i.bx, ptr noundef nonnull @_ZN2v812_GLOBAL__N_131WebAssemblyInstantiateStreamingERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit59, %bb.k
end_hunk_23
begin_hunk_24_@_ZN2v88internal6WasmJs21InstallTypeReflectionEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_INS0_8JSObjectEEE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_122InstallConstructorFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEE.exit: ; preds = %bb.o
  %i.fz = tail call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr %2, ptr nonnull %i.fx, ptr noundef nonnull @_ZN2v812_GLOBAL__N_119WebAssemblyFunctionERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext true, i32 noundef 2, i32 noundef 1) ; 4 uses
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_124SetDummyInstanceTemplateEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEE(ptr noundef nonnull %0, ptr nonnull %i.fz)
  tail call void @_ZN2v88internal10JSFunction19EnsureHasInitialMapEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %0, ptr nonnull %i.fz) #21
  %i.ga = load i64, ptr %i.fz, align 8
end_hunk_24
begin_hunk_25_@_ZN2v88internal6WasmJs20InstallMemoryControlEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_INS0_8JSObjectEEE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_122InstallConstructorFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEE.exit: ; preds = %bb.a
  %i.c = tail call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr %2, ptr nonnull %i.a, ptr noundef nonnull @_ZN2v88internal4wasm30WebAssemblyMemoryMapDescriptorERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext true, i32 noundef 2, i32 noundef 1) ; 3 uses
  %i.d = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_116SetupConstructorEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS0_12InstanceTypeEiPKci(ptr noundef nonnull %0, ptr nonnull %i.c, i16 noundef zeroext 2152, i32 noundef 48, ptr noundef nonnull @.str.56, i32 noundef 0) ; 0 uses
  %i.e = load i64, ptr %1, align 8                ; 4 uses
  %i.f = load i64, ptr %i.c, align 8              ; 5 uses
end_hunk_25
begin_hunk_26_@_ZN2v88internal6WasmJs20InstallMemoryControlEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_INS0_8JSObjectEEE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit: ; preds = %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ay = tail call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr nonnull %.0.i.i, ptr nonnull %i.aw, ptr noundef nonnull @_ZN2v88internal4wasm33WebAssemblyMemoryMapDescriptorMapERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 2, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.az = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.58, i64 5, i8 noundef zeroext 0) #21 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.k, label %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit18, !prof !9
end_hunk_26
begin_hunk_27_@_ZN2v88internal6WasmJs20InstallMemoryControlEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_INS0_8JSObjectEEE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit18: ; preds = %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit
  %i.bb = tail call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr nonnull %.0.i.i, ptr nonnull %i.az, ptr noundef nonnull @_ZN2v88internal4wasm35WebAssemblyMemoryMapDescriptorUnmapERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) ; 0 uses
  ret void
}

end_hunk_27
begin_hunk_28_@_ZN2v88internal6WasmJs24InstallCustomDescriptorsEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_INS0_8JSObjectEEE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_122InstallConstructorFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEE.exit: ; preds = %bb.c
  %i.g = tail call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr %2, ptr nonnull %i.e, ptr noundef nonnull @_ZN2v812_GLOBAL__N_132WebAssemblyDescriptorOptionsImplERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext true, i32 noundef 2, i32 noundef 1) ; 2 uses
  %i.h = load i64, ptr %1, align 8                ; 4 uses
  %i.i = load i64, ptr %i.g, align 8              ; 5 uses
  %i.j = add i64 %i.h, 2023                       ; 3 uses
end_hunk_28
begin_hunk_29_@_ZN2v88internal6WasmJs27InstallJSPromiseIntegrationEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_INS0_8JSObjectEEE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_122InstallConstructorFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEE.exit: ; preds = %bb.i
  %i.s = tail call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr %2, ptr nonnull %i.q, ptr noundef nonnull @_ZN2v812_GLOBAL__N_125WebAssemblySuspendingImplERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext true, i32 noundef 2, i32 noundef 1) ; 2 uses
  %i.t = load i64, ptr %1, align 8                ; 4 uses
  %i.u = load i64, ptr %i.s, align 8              ; 5 uses
  %i.v = add i64 %i.t, 1983                       ; 3 uses
end_hunk_29
begin_hunk_30_@_ZN2v88internal6WasmJs27InstallJSPromiseIntegrationEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_INS0_8JSObjectEEE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit: ; preds = %_ZN2v88internal7Context31set_wasm_suspending_constructorENS0_6TaggedINS0_10JSFunctionEEE.exit
  %i.aj = tail call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr %2, ptr nonnull %i.ah, ptr noundef nonnull @_ZN2v812_GLOBAL__N_120WebAssemblyPromisingERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 1, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 7472
  tail call void @_ZN2v88internal12InstallErrorEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS3_INS0_6StringEEEiNS0_7BuiltinEi(ptr noundef nonnull %0, ptr %2, ptr nonnull %i.ak, i32 noundef 291, i32 noundef 379, i32 noundef 1) #21
  br label %bb.q
end_hunk_30
begin_hunk_31_@_ZN2v88internal6WasmJs33InstallResizableBufferIntegrationEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_INS0_8JSObjectEEE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit: ; preds = %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ak = tail call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr nonnull %.0.i.i, ptr nonnull %i.ai, ptr noundef nonnull @_ZN2v88internal4wasm36WebAssemblyMemoryToFixedLengthBufferERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.al = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str.65, i64 17, i8 noundef zeroext 0) #21 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.e, label %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit11, !prof !9
end_hunk_31
begin_hunk_32_@_ZN2v88internal6WasmJs33InstallResizableBufferIntegrationEPNS0_7IsolateENS0_12DirectHandleINS0_13NativeContextEEENS4_INS0_8JSObjectEEE:bb.a
  unreachable

_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit11: ; preds = %_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE.exit
  %i.an = tail call fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef nonnull %0, ptr nonnull %.0.i.i, ptr nonnull %i.al, ptr noundef nonnull @_ZN2v88internal4wasm34WebAssemblyMemoryToResizableBufferERKNS_20FunctionCallbackInfoINS_5ValueEEE, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) ; 0 uses
  ret void
}

end_hunk_32
begin_hunk_33_@_ZN2v812_GLOBAL__N_132WebAssemblyDescriptorOptionsImplERKNS_20FunctionCallbackInfoINS_5ValueEEE:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc nonnull ptr @_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE(ptr noundef %0, ptr %1, ptr %2, ptr noundef %3, i32 noundef range(i32 0, 3) %4, i1 noundef zeroext %5, i32 noundef range(i32 0, 3) %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #0 {
  %9 = zext i1 %5 to i32
  %10 = tail call ptr @_ZN2v816FunctionTemplate3NewEPNS_7IsolateEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEENS_5LocalIS4_EENSA_INS_9SignatureEEEiNS_19ConstructorBehaviorENS_14SideEffectTypeEPKNS_9CFunctionEttt(ptr noundef %0, ptr noundef %3, ptr null, ptr null, i32 noundef 0, i32 noundef %9, i32 noundef range(i32 0, 2) %7, ptr noundef null, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0) #21 ; 2 uses
  br i1 %5, label %11, label %_ZN2v88internal20FunctionTemplateInfo17SetParentTemplateEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_9UndefinedES1_EEEEE.exit.i

11:                                               ; preds = %8
  tail call void @_ZN2v816FunctionTemplate17ReadOnlyPrototypeEv(ptr noundef nonnull align 1 dereferenceable(1) %10) #21
  br label %_ZN2v88internal20FunctionTemplateInfo17SetParentTemplateEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_9UndefinedES1_EEEEE.exit.i

_ZN2v88internal20FunctionTemplateInfo17SetParentTemplateEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_9UndefinedES1_EEEEE.exit.i: ; preds = %8, %11
  %12 = tail call ptr @_ZN2v88internal10ApiNatives19InstantiateFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_20FunctionTemplateInfoEEENS0_17MaybeDirectHandleINS0_4NameEEE(ptr noundef %0, ptr %10, ptr %2) #21 ; 4 uses
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %bb.a, !prof !9

14:                                               ; preds = %_ZN2v88internal20FunctionTemplateInfo17SetParentTemplateEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_9UndefinedES1_EEEEE.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.67) #24
  unreachable

bb.a:                                             ; preds = %_ZN2v88internal20FunctionTemplateInfo17SetParentTemplateEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_9UndefinedES1_EEEEE.exit.i
  %i.a = load i64, ptr %12, align 8
  %i.b = add i64 %i.a, 31
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
end_hunk_33
begin_hunk_34_@_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE:bb.a/@_ZN2v88internal12_GLOBAL__N_111InstallFuncEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEEibNS0_18PropertyAttributesENS_14SideEffectTypeE
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef %0, ptr nonnull %1, ptr %2, ptr nonnull %12, i32 noundef %6) #21
  ret ptr %12
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_34
