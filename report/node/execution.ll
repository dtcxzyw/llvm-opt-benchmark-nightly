inline.NumInlined: 964
inline.NumDeleted: 524
begin_hunk_0_@_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE:bb.a
  %5 = alloca %"struct.v8::internal::(anonymous namespace)::InvokeParams", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false), !alias.scope !5
  store ptr %1, ptr %5, align 8, !alias.scope !5
  %i.a = load i64, ptr %2, align 8, !noalias !5   ; 3 uses
  %i.b = trunc i64 %i.a to i1
end_hunk_0
begin_hunk_1_@_ZN2v88internal9Execution4CallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EE:bb.a

_ZN2v88internal12_GLOBAL__N_112InvokeParams12SetUpForCallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES7_NS_4base6VectorIKS7_EE.exit: ; preds = %bb.a, %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZN2v88internal6HandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i
  %.sroa.010.0.i.i = phi ptr [ %.0.i.i.i.i, %_ZN2v88internal6HandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i ], [ %2, %bb.a ], [ %2, %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.i.i ]
  store ptr %.sroa.010.0.i.i, ptr %6, align 8, !alias.scope !5
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.v, align 8, !alias.scope !5
end_hunk_1
begin_hunk_2_@_ZN2v88internal9Execution10CallScriptEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS4_INS0_6ObjectEEES8_:bb.a
  store ptr %3, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false), !alias.scope !40
  store ptr %1, ptr %5, align 8, !alias.scope !40
  %i.a = load i64, ptr %2, align 8, !noalias !40  ; 3 uses
  %i.b = trunc i64 %i.a to i1
end_hunk_2
begin_hunk_3_@_ZN2v88internal9Execution10CallScriptEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS4_INS0_6ObjectEEES8_:bb.a

_ZN2v88internal12_GLOBAL__N_112InvokeParams12SetUpForCallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES7_NS_4base6VectorIKS7_EE.exit: ; preds = %bb.a, %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZN2v88internal6HandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i
  %.sroa.010.0.i.i = phi ptr [ %.0.i.i.i.i, %_ZN2v88internal6HandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i ], [ %2, %bb.a ], [ %2, %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.i.i ]
  store ptr %.sroa.010.0.i.i, ptr %6, align 8, !alias.scope !40
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %4, ptr %i.v, align 8, !alias.scope !40
end_hunk_3
begin_hunk_4_@_ZN2v88internal9Execution11CallBuiltinEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS4_INS0_6ObjectEEENS_4base6VectorIKS8_EE:bb.a
  store i8 1, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false), !alias.scope !43
  store ptr %1, ptr %5, align 8, !alias.scope !43
  %i.e = load i64, ptr %2, align 8, !noalias !43  ; 3 uses
  %i.f = trunc i64 %i.e to i1
end_hunk_4
begin_hunk_5_@_ZN2v88internal9Execution11CallBuiltinEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS4_INS0_6ObjectEEENS_4base6VectorIKS8_EE:bb.a

_ZN2v88internal12_GLOBAL__N_112InvokeParams12SetUpForCallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES7_NS_4base6VectorIKS7_EE.exit: ; preds = %bb.a, %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZN2v88internal6HandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i
  %.sroa.010.0.i.i = phi ptr [ %.0.i.i.i.i, %_ZN2v88internal6HandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i ], [ %2, %bb.a ], [ %2, %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.i.i ]
  store ptr %.sroa.010.0.i.i, ptr %6, align 8, !alias.scope !43
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.z, align 8, !alias.scope !43
end_hunk_5
begin_hunk_6_@_ZN2v88internal9Execution13TryCallScriptEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS4_INS0_6ObjectEEENS4_INS0_10FixedArrayEEE:bb.a
  store ptr %3, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false), !alias.scope !52
  store ptr %1, ptr %5, align 8, !alias.scope !52
  %i.a = load i64, ptr %2, align 8, !noalias !52  ; 3 uses
  %i.b = trunc i64 %i.a to i1
end_hunk_6
begin_hunk_7_@_ZN2v88internal9Execution13TryCallScriptEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS4_INS0_6ObjectEEENS4_INS0_10FixedArrayEEE:bb.a

_ZN2v88internal12_GLOBAL__N_112InvokeParams15SetUpForTryCallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES7_NS_4base6VectorIKS7_EENS0_9Execution15MessageHandlingEPNS0_17MaybeDirectHandleIS6_EE.exit: ; preds = %bb.a, %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZN2v88internal6HandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i
  %.sroa.010.0.i.i = phi ptr [ %.0.i.i.i.i, %_ZN2v88internal6HandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i ], [ %2, %bb.a ], [ %2, %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.i.i ]
  store ptr %.sroa.010.0.i.i, ptr %6, align 8, !alias.scope !52
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %4, ptr %i.v, align 8, !alias.scope !52
end_hunk_7
begin_hunk_8_@_ZN2v88internal9Execution7TryCallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EENS1_15MessageHandlingEPNS0_17MaybeDirectHandleIS5_EE:bb.a
  %7 = alloca %"struct.v8::internal::(anonymous namespace)::InvokeParams", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false), !alias.scope !55
  store ptr %1, ptr %7, align 8, !alias.scope !55
  %i.a = load i64, ptr %2, align 8, !noalias !55  ; 3 uses
  %i.b = trunc i64 %i.a to i1
end_hunk_8
begin_hunk_9_@_ZN2v88internal9Execution7TryCallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_NS_4base6VectorIKS6_EENS1_15MessageHandlingEPNS0_17MaybeDirectHandleIS5_EE:bb.a

_ZN2v88internal12_GLOBAL__N_112InvokeParams15SetUpForTryCallEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES7_NS_4base6VectorIKS7_EENS0_9Execution15MessageHandlingEPNS0_17MaybeDirectHandleIS6_EE.exit: ; preds = %bb.a, %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZN2v88internal6HandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i
  %.sroa.010.0.i.i = phi ptr [ %.0.i.i.i.i, %_ZN2v88internal6HandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i.i ], [ %2, %bb.a ], [ %2, %_ZN2v88internal16IsJSGlobalObjectENS0_6TaggedINS0_6ObjectEEE.exit.i.i ]
  store ptr %.sroa.010.0.i.i, ptr %8, align 8, !alias.scope !55
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %3, ptr %i.v, align 8, !alias.scope !55
end_hunk_9
