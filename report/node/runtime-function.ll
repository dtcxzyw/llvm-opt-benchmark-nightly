inline.NumInlined: 255
inline.NumDeleted: 153
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.v8::internal::detail::TaggedOperatorArrowRef" = type { %"class.v8::internal::SharedFunctionInfo" }
%"class.v8::internal::SharedFunctionInfo" = type { %"class.v8::internal::TorqueGeneratedSharedFunctionInfo" }
%"class.v8::internal::TorqueGeneratedSharedFunctionInfo" = type { %"class.v8::internal::HeapObject" }
%"class.v8::internal::HeapObject" = type { %"class.v8::internal::TaggedImpl" }
%"class.v8::internal::TaggedImpl" = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"static_cast<uint32_t>(index) <= static_cast<uint32_t>(length_)\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal31Runtime_FunctionGetScriptSourceEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8                ; 2 uses
  %i.i = add i64 %i.h, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = add i64 %i.k, 11
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i16, ptr %i.m monotonic, align 2
  %i.o = add i16 %i.n, -2065
  %i.p = icmp ult i16 %i.o, 17
  br i1 %i.p, label %bb.a, label %.critedge.i

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.q = add i64 %i.h, 31
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = add i64 %i.s, 39
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i64, ptr %i.u acquire, align 8 ; 4 uses
  %i.w = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.c, align 8
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.b, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.z = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.z, %bb.b ], [ %i.w, %bb.a ] ; 2 uses
  %i.aa = ptrtoint ptr %.0.i to i64
  %i.ab = add i64 %i.aa, 8
  %i.ac = inttoptr i64 %i.ab to ptr
  store ptr %i.ac, ptr %i.a, align 8
  store i64 %i.v, ptr %.0.i, align 8
  %i.ad = trunc i64 %i.v to i1
  br i1 %i.ad, label %_ZN2v88internal8IsScriptENS0_6TaggedINS0_6ObjectEEE.exit, label %.critedge.i

_ZN2v88internal8IsScriptENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.ae = add nsw i64 %i.v, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2
  %i.ak = icmp eq i16 %i.aj, 165
  br i1 %i.ak, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %_ZN2v88internal8IsScriptENS0_6TaggedINS0_6ObjectEEE.exit
  %i.al = add i64 %i.v, 7
  %i.am = inttoptr i64 %i.al to ptr
  br label %_ZN2v88internalL41__RT_impl_Runtime_FunctionGetScriptSourceENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

.critedge.i:                                      ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %_ZN2v88internal8IsScriptENS0_6TaggedINS0_6ObjectEEE.exit, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 648
  br label %_ZN2v88internalL41__RT_impl_Runtime_FunctionGetScriptSourceENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL41__RT_impl_Runtime_FunctionGetScriptSourceENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %.critedge.i, %bb.c
  %.sroa.027.0.in = phi ptr [ %i.am, %bb.c ], [ %i.an, %.critedge.i ]
  %.sroa.027.0 = load i64, ptr %.sroa.027.0.in, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.ao = load i32, ptr %i.e, align 8
  %i.ap = add nsw i32 %i.ao, -1
  store i32 %i.ap, ptr %i.e, align 8
  %i.aq = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.d, !prof !6

bb.d:                                             ; preds = %_ZN2v88internalL41__RT_impl_Runtime_FunctionGetScriptSourceENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.d, %_ZN2v88internalL41__RT_impl_Runtime_FunctionGetScriptSourceENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  ret i64 %.sroa.027.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i64 0, -4294967295) i64 @_ZN2v88internal27Runtime_FunctionGetScriptIdEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8                ; 2 uses
  %i.i = add i64 %i.h, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = add i64 %i.k, 11
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i16, ptr %i.m monotonic, align 2
  %i.o = add i16 %i.n, -2065
  %i.p = icmp ult i16 %i.o, 17
  br i1 %i.p, label %bb.a, label %_ZN2v88internalL37__RT_impl_Runtime_FunctionGetScriptIdENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.q = add i64 %i.h, 31
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = add i64 %i.s, 39
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i64, ptr %i.u acquire, align 8 ; 4 uses
  %i.w = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.c, align 8
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.b, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.z = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.z, %bb.b ], [ %i.w, %bb.a ] ; 2 uses
  %i.aa = ptrtoint ptr %.0.i to i64
  %i.ab = add i64 %i.aa, 8
  %i.ac = inttoptr i64 %i.ab to ptr
  store ptr %i.ac, ptr %i.a, align 8
  store i64 %i.v, ptr %.0.i, align 8
  %i.ad = trunc i64 %i.v to i1
  br i1 %i.ad, label %_ZN2v88internal8IsScriptENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internalL37__RT_impl_Runtime_FunctionGetScriptIdENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internal8IsScriptENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.ae = add nsw i64 %i.v, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2
  %i.ak = icmp eq i16 %i.aj, 165
  br i1 %i.ak, label %bb.c, label %_ZN2v88internalL37__RT_impl_Runtime_FunctionGetScriptIdENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.c:                                             ; preds = %_ZN2v88internal8IsScriptENS0_6TaggedINS0_6ObjectEEE.exit
  %i.al = add i64 %i.v, 63
  %i.am = inttoptr i64 %i.al to ptr
  %3 = load i64, ptr %i.am, align 8
  %4 = and i64 %3, -4294967296
  br label %_ZN2v88internalL37__RT_impl_Runtime_FunctionGetScriptIdENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL37__RT_impl_Runtime_FunctionGetScriptIdENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %bb.c, %_ZN2v88internal8IsScriptENS0_6TaggedINS0_6ObjectEEE.exit, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %.sroa.026.0 = phi i64 [ %4, %bb.c ], [ -4294967296, %_ZN2v88internal8IsScriptENS0_6TaggedINS0_6ObjectEEE.exit ], [ -4294967296, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit ], [ -4294967296, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ]
  store ptr %i.b, ptr %i.a, align 8
  %i.an = load i32, ptr %i.e, align 8
  %i.ao = add nsw i32 %i.an, -1
  store i32 %i.ao, ptr %i.e, align 8
  %i.ap = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.ap, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.d, !prof !6

bb.d:                                             ; preds = %_ZN2v88internalL37__RT_impl_Runtime_FunctionGetScriptIdENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.d, %_ZN2v88internalL37__RT_impl_Runtime_FunctionGetScriptIdENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  ret i64 %.sroa.026.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal29Runtime_FunctionGetSourceCodeEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i64, ptr %1, align 8                ; 2 uses
  %i.i = add i64 %i.h, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = add i64 %i.k, 11
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i16, ptr %i.m monotonic, align 2
  %i.o = add i16 %i.n, -2065
  %i.p = icmp ult i16 %i.o, 17
  br i1 %i.p, label %bb.a, label %_ZN2v88internalL39__RT_impl_Runtime_FunctionGetSourceCodeENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.q = add i64 %i.h, 31
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = icmp eq ptr %i.b, %i.d
  br i1 %i.t, label %bb.b, label %_ZN2v88internalL39__RT_impl_Runtime_FunctionGetSourceCodeENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.u = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internalL39__RT_impl_Runtime_FunctionGetSourceCodeENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL39__RT_impl_Runtime_FunctionGetSourceCodeENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 648
  %.sroa.016.040 = load i64, ptr %i.v, align 8
  store ptr %i.b, ptr %i.a, align 8
  store i32 %i.f, ptr %i.e, align 8
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internalL39__RT_impl_Runtime_FunctionGetSourceCodeENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.u, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.w = ptrtoint ptr %.0.i.i to i64
  %i.x = add i64 %i.w, 8
  %i.y = inttoptr i64 %i.x to ptr
  store ptr %i.y, ptr %i.a, align 8
  store i64 %i.s, ptr %.0.i.i, align 8
  %i.z = tail call ptr @_ZN2v88internal18SharedFunctionInfo13GetSourceCodeEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %2, ptr nonnull %.0.i.i) #8
  %.pre = load i32, ptr %i.e, align 8
  %.pre36 = load ptr, ptr %i.c, align 8
  %i.aa = add nsw i32 %.pre, -1
  %i.ab = icmp eq ptr %.pre36, %i.d
  %.sroa.016.0 = load i64, ptr %i.z, align 8      ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  store i32 %i.aa, ptr %i.e, align 8
  br i1 %i.ab, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %_ZN2v88internalL39__RT_impl_Runtime_FunctionGetSourceCodeENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #8
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %_ZN2v88internalL39__RT_impl_Runtime_FunctionGetSourceCodeENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread, %bb.c, %_ZN2v88internalL39__RT_impl_Runtime_FunctionGetSourceCodeENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  %.sroa.016.041 = phi i64 [ %.sroa.016.040, %_ZN2v88internalL39__RT_impl_Runtime_FunctionGetSourceCodeENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit.thread ], [ %.sroa.016.0, %bb.c ], [ %.sroa.016.0, %_ZN2v88internalL39__RT_impl_Runtime_FunctionGetSourceCodeENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit ]
  ret i64 %.sroa.016.041
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i64 -9223372036854775808, 9223372032559808513) i64 @_ZN2v88internal39Runtime_FunctionGetScriptSourcePositionEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.b = add i64 %i.a, 31
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  store i64 %i.d, ptr %3, align 8
  %i.e = call noundef i32 @_ZNK2v88internal18SharedFunctionInfo13StartPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 32
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef i64 @_ZN2v88internal29Runtime_FunctionIsAPIFunctionEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 31
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 15
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %_ZNK2v88internal18SharedFunctionInfo13IsApiFunctionEv.exit, label %_ZNK2v88internal18SharedFunctionInfo13IsApiFunctionEv.exit.thread

_ZNK2v88internal18SharedFunctionInfo13IsApiFunctionEv.exit: ; preds = %bb.a
  %i.i = add nsw i64 %i.g, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = add i64 %i.k, 11
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i16, ptr %i.m monotonic, align 2
  %.fr = freeze i16 %i.n
  %i.o = icmp eq i16 %.fr, 248
  %spec.select = select i1 %i.o, i64 672, i64 680
  br label %_ZNK2v88internal18SharedFunctionInfo13IsApiFunctionEv.exit.thread

_ZNK2v88internal18SharedFunctionInfo13IsApiFunctionEv.exit.thread: ; preds = %bb.a, %_ZNK2v88internal18SharedFunctionInfo13IsApiFunctionEv.exit
  %i.p = phi i64 [ %spec.select, %_ZNK2v88internal18SharedFunctionInfo13IsApiFunctionEv.exit ], [ 680, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %.in.in = ptrtoint ptr %i.q to i64
  %.in = add i64 %.in.in, -55464
  %i.r = inttoptr i64 %.in to ptr
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  %.sroa.03.0.i = load i64, ptr %.sroa.03.0.in.i, align 8
  ret i64 %.sroa.03.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal12Runtime_CallEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = add i32 %0, -2                           ; 4 uses
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit4, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit4: ; preds = %bb.a
  %i.i = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.j = add i64 %i.i, -8
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = sext i32 %i.h to i64                     ; 2 uses
  %i.m = icmp slt i32 %0, 2
  br i1 %i.m, label %bb.c, label %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_6ObjectEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit4
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #9
  unreachable

_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_6ObjectEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit4
  %.not.i.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internalL22__RT_impl_Runtime_CallENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.preheader

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.preheader: ; preds = %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_6ObjectEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i
  %i.n = shl nuw nsw i64 %i.l, 3                  ; 3 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #10 ; 7 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.l
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.o, i8 0, i64 %i.n, i1 false)
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.o, i64 %i.n
  %i.q = ptrtoint ptr %scevgep.i.i.i.i.i.i to i64 ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.h, 4
  br i1 %min.iters.check, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.preheader55, label %vector.ph

vector.ph:                                        ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.s = shl <2 x i64> %vec.ind, splat (i64 3)
  %step.add = shl <2 x i64> %vec.ind, splat (i64 3)
  %i.t = add <2 x i64> %i.s, splat (i64 16)
  %i.u = add <2 x i64> %step.add, splat (i64 32)
  %i.v = and <2 x i64> %i.t, splat (i64 4294967288)
  %i.w = and <2 x i64> %i.u, splat (i64 4294967288)
  %i.x = sub <2 x i64> %broadcast.splat, %i.v
end_hunk_0
