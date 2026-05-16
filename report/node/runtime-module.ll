inline.NumInlined: 170
inline.NumDeleted: 115
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.v8::internal::detail::TaggedOperatorArrowRef.467" = type { %"class.v8::internal::Context" }
%"class.v8::internal::Context" = type { %"class.v8::internal::TorqueGeneratedContext" }
%"class.v8::internal::TorqueGeneratedContext" = type { %"class.v8::internal::HeapObject" }
%"class.v8::internal::HeapObject" = type { %"class.v8::internal::TaggedImpl" }
%"class.v8::internal::TaggedImpl" = type { i64 }
%"class.v8::internal::DirectHandle.477" = type { %"class.v8::internal::Handle.0" }
%"class.v8::internal::Handle.0" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::HandleBase" = type { ptr }
%"class.v8::internal::detail::TaggedOperatorArrowRef.475" = type { %"class.v8::internal::JSModuleNamespace" }
%"class.v8::internal::JSModuleNamespace" = type { %"class.v8::internal::TorqueGeneratedJSModuleNamespace" }
%"class.v8::internal::TorqueGeneratedJSModuleNamespace" = type { %"class.v8::internal::JSSpecialObject" }
%"class.v8::internal::JSSpecialObject" = type { %"class.v8::internal::TorqueGeneratedJSSpecialObject" }
%"class.v8::internal::TorqueGeneratedJSSpecialObject" = type { %"class.v8::internal::JSCustomElementsObject" }
%"class.v8::internal::JSCustomElementsObject" = type { %"class.v8::internal::TorqueGeneratedJSCustomElementsObject" }
%"class.v8::internal::TorqueGeneratedJSCustomElementsObject" = type { %"class.v8::internal::JSObject" }
%"class.v8::internal::JSObject" = type { %"class.v8::internal::TorqueGeneratedJSObject" }
%"class.v8::internal::TorqueGeneratedJSObject" = type { %"class.v8::internal::JSReceiver" }
%"class.v8::internal::JSReceiver" = type { %"class.v8::internal::TorqueGeneratedJSReceiver" }
%"class.v8::internal::TorqueGeneratedJSReceiver" = type { %"class.v8::internal::HeapObject" }

@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"static_cast<uint32_t>(index) <= static_cast<uint32_t>(length_)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"IsScript(maybe_script)\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal25Runtime_DynamicImportCallEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit5:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.a, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, !prof !5

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit5
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit5
  %i.h = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr
  %.not60 = icmp eq i32 %0, 1
  br i1 %.not60, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit, !prof !5

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.k = add i64 %i.h, -16
  %i.l = inttoptr i64 %i.k to ptr
  %.shift = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %3 = load i32, ptr %.shift, align 4
  %i.m = icmp eq i32 %0, 4
  %i.n = add i64 %i.h, -24
  %i.o = inttoptr i64 %i.n to ptr
  %.sroa.024.0 = select i1 %i.m, ptr %i.o, ptr null
  %i.p = load i64, ptr %1, align 8
  %i.q = add i64 %i.p, 31
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = add i64 %i.s, 39
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i64, ptr %i.u acquire, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit
  %.sroa.013.0.i = phi i64 [ %i.v, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit ], [ %i.aj, %bb.d ] ; 2 uses
  %i.w = add i64 %.sroa.013.0.i, 71
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %_ZNK2v88internal6Script20has_eval_from_sharedEv.exit.i, label %_ZN2v88internal6Script13GetEvalOriginEv.exit

_ZNK2v88internal6Script20has_eval_from_sharedEv.exit.i: ; preds = %bb.c
  %i.aa = add nsw i64 %i.y, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i64, ptr %i.ab monotonic, align 8
  %i.ad = add i64 %i.ac, 11
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i16, ptr %i.ae monotonic, align 2
  %i.ag = icmp eq i16 %i.af, 286
  br i1 %i.ag, label %bb.d, label %_ZN2v88internal6Script13GetEvalOriginEv.exit

bb.d:                                             ; preds = %_ZNK2v88internal6Script20has_eval_from_sharedEv.exit.i
  %i.ah = add i64 %i.y, 39
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = add i64 %i.aj, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = icmp eq i16 %i.ap, 165
  br i1 %i.aq, label %bb.c, label %bb.e, !prof !6, !llvm.loop !7

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #4
  unreachable

_ZN2v88internal6Script13GetEvalOriginEv.exit:     ; preds = %bb.c, %_ZNK2v88internal6Script20has_eval_from_sharedEv.exit.i
  %i.ar = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.as = load ptr, ptr %i.c, align 8
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.f, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.f:                                             ; preds = %_ZN2v88internal6Script13GetEvalOriginEv.exit
  %i.au = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #5
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %_ZN2v88internal6Script13GetEvalOriginEv.exit, %bb.f
  %.0.i = phi ptr [ %i.au, %bb.f ], [ %i.ar, %_ZN2v88internal6Script13GetEvalOriginEv.exit ] ; 3 uses
  %i.av = ptrtoint ptr %.0.i to i64
  %i.aw = add i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  store ptr %i.ax, ptr %i.a, align 8
  store i64 %.sroa.013.0.i, ptr %.0.i, align 8
  %i.ay = tail call ptr @_ZN2v88internal7Isolate38RunHostImportModuleDynamicallyCallbackENS0_17MaybeDirectHandleINS0_6ScriptEEENS0_6HandleINS0_6ObjectEEENS_17ModuleImportPhaseENS2_IS6_EE(ptr noundef nonnull align 8 dereferenceable(64320) %2, ptr nonnull %.0.i, ptr %i.j, i32 noundef %3, ptr %.sroa.024.0) #5 ; 2 uses
  %.not61 = icmp eq ptr %i.ay, null
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 912
  %.sroa.036.0.in = select i1 %.not61, ptr %i.az, ptr %i.ay
  %.sroa.036.0 = load i64, ptr %.sroa.036.0.in, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.ba = load i32, ptr %i.e, align 8
  %i.bb = add nsw i32 %i.ba, -1
  store i32 %i.bb, ptr %i.e, align 8
  %i.bc = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.bc, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.g, !prof !6

bb.g:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #5
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.g, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  ret i64 %.sroa.036.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal26Runtime_GetModuleNamespaceEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.467", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.shift = getelementptr inbounds nuw i8, ptr %1, i64 4
  %4 = load i32, ptr %.shift, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i2 = load i64, ptr %i.h, align 8
  store i64 %.sroa.0.0.copyload.i2, ptr %3, align 8
  %i.i = call i64 @_ZNK2v88internal7Context6moduleEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #5
  %i.j = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.m, %bb.b ], [ %i.j, %bb.a ] ; 3 uses
  %i.n = ptrtoint ptr %.0.i.i to i64
  %i.o = add i64 %i.n, 8
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.a, align 8
  store i64 %i.i, ptr %.0.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.q = call ptr @_ZN2v88internal16SourceTextModule18GetModuleNamespaceEPNS0_7IsolateENS0_12DirectHandleIS1_EEi(ptr noundef nonnull %2, ptr nonnull %.0.i.i, i32 noundef %4) #5
  %i.r = load i64, ptr %i.q, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.s = load i32, ptr %i.e, align 8
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.e, align 8
  %i.u = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #5
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.d, %bb.c
  ret i64 %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal27Runtime_GetImportMetaObjectEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.467", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %3, align 8
  %i.i = call i64 @_ZNK2v88internal7Context6moduleEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #5
  %i.j = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.b, label %_ZN2v88internal6HandleINS0_16SourceTextModuleEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #5
  br label %_ZN2v88internal6HandleINS0_16SourceTextModuleEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_16SourceTextModuleEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.m, %bb.b ], [ %i.j, %bb.a ] ; 3 uses
  %i.n = ptrtoint ptr %.0.i.i to i64
  %i.o = add i64 %i.n, 8
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.a, align 8
  store i64 %i.i, ptr %.0.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.q = call ptr @_ZN2v88internal16SourceTextModule13GetImportMetaEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %2, ptr nonnull %.0.i.i) #5 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 912
  %.sroa.012.0.in = select i1 %i.r, ptr %i.s, ptr %i.q
  %.sroa.012.0 = load i64, ptr %.sroa.012.0.in, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.t = load i32, ptr %i.e, align 8
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.e, align 8
  %i.v = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.c, !prof !6

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_16SourceTextModuleEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #5
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.c, %_ZN2v88internal6HandleINS0_16SourceTextModuleEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  ret i64 %.sroa.012.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal32Runtime_GetModuleNamespaceExportEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.477"], align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.475", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.475", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6StringEEENS0_6HandleIT_EEi.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6StringEEENS0_6HandleIT_EEi.exit: ; preds = %bb.a
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.k = load i64, ptr %1, align 8
  store i64 %i.k, ptr %4, align 8
  %i.l = call noundef zeroext i1 @_ZN2v88internal17JSModuleNamespace9HasExportEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %2, ptr %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6StringEEENS0_6HandleIT_EEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  store ptr %i.j, ptr %3, align 8
  %i.m = call ptr @_ZN2v88internal7Factory17NewReferenceErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 221, ptr nonnull %3, i64 1) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.n = load i64, ptr %i.m, align 8
  %i.o = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.n, ptr noundef null) #5
  br label %_ZN2v88internalL42__RT_impl_Runtime_GetModuleNamespaceExportENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6StringEEENS0_6HandleIT_EEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.p = load i64, ptr %1, align 8
  store i64 %i.p, ptr %5, align 8
  %i.q = call ptr @_ZN2v88internal17JSModuleNamespace9GetExportEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %2, ptr %i.j) #5 ; 2 uses
  %.not44 = icmp eq ptr %i.q, null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br i1 %.not44, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.s = load i64, ptr %i.r, align 8
  br label %_ZN2v88internalL42__RT_impl_Runtime_GetModuleNamespaceExportENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.f:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.q, align 8
  br label %_ZN2v88internalL42__RT_impl_Runtime_GetModuleNamespaceExportENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL42__RT_impl_Runtime_GetModuleNamespaceExportENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %bb.c, %bb.f, %bb.e
  %.sroa.023.1 = phi i64 [ %i.o, %bb.c ], [ %i.t, %bb.f ], [ %i.s, %bb.e ]
  store ptr %i.b, ptr %i.a, align 8
  %i.u = load i32, ptr %i.e, align 8
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.e, align 8
  %i.w = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.w, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.g, !prof !6

bb.g:                                             ; preds = %_ZN2v88internalL42__RT_impl_Runtime_GetModuleNamespaceExportENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #5
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.g, %_ZN2v88internalL42__RT_impl_Runtime_GetModuleNamespaceExportENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  ret i64 %.sroa.023.1
}

declare ptr @_ZN2v88internal7Isolate38RunHostImportModuleDynamicallyCallbackENS0_17MaybeDirectHandleINS0_6ScriptEEENS0_6HandleINS0_6ObjectEEENS_17ModuleImportPhaseENS2_IS6_EE(ptr noundef nonnull align 8 dereferenceable(64320), ptr, ptr, i32 noundef, ptr) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare i64 @_ZNK2v88internal7Context6moduleEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN2v88internal16SourceTextModule18GetModuleNamespaceEPNS0_7IsolateENS0_12DirectHandleIS1_EEi(ptr noundef, ptr, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal16SourceTextModule13GetImportMetaEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal17JSModuleNamespace9HasExportEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr) local_unnamed_addr #2

declare i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320), i64, ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal17JSModuleNamespace9GetExportEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory17NewReferenceErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #2

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
end_hunk_0
