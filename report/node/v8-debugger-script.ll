inline.NumInlined: 287
inline.NumDeleted: 159
begin_hunk_0_@_ZNK12v8_inspector16V8DebuggerScript6sourceEmm:bb.a
_ZN2v811HandleScope12CreateHandleEPNS_7IsolateEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.y, %bb.b ], [ %i.u, %bb.a ] ; 3 uses
  %i.z = ptrtoint ptr %.0.i to i64
  %i.aa = add i64 %i.z, 8
  %i.ab = inttoptr i64 %i.aa to ptr
  store ptr %i.ab, ptr %i.t, align 8
  store i64 %i.q, ptr %.0.i, align 8
  %i.ac = tail call ptr @_ZNK2v85debug12ScriptSource14JavaScriptCodeEv(ptr noundef nonnull align 1 dereferenceable(1) %.0.i) #10 ; 4 uses
  %.not21 = icmp eq ptr %i.ac, null
  br i1 %.not21, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v811HandleScope12CreateHandleEPNS_7IsolateEm.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ae, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ag, align 8
  br label %bb.f

bb.d:                                             ; preds = %_ZN2v811HandleScope12CreateHandleEPNS_7IsolateEm.exit
  %i.ah = tail call noundef i32 @_ZNK2v86String6LengthEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ac) #10
  %i.ai = sext i32 %i.ah to i64
  %.not = icmp ult i64 %2, %i.ai
  br i1 %.not, label %_ZNSt10unique_ptrIA_DsSt14default_deleteIS0_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ak, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.am, align 8
  br label %bb.f

_ZNSt10unique_ptrIA_DsSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.d
  %i.an = tail call noundef i32 @_ZNK2v86String6LengthEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ac) #10
  %i.ao = sext i32 %i.an to i64
  %i.ap = sub i64 %i.ao, %2
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 %3) ; 4 uses
  %i.aq = shl nuw i64 %.sroa.speculated, 1
  %.inv = icmp sgt i64 %.sroa.speculated, -1
  %i.ar = select i1 %.inv, i64 %i.aq, i64 -1
  %i.as = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ar) #12 ; 3 uses
  %i.at = load ptr, ptr %i.a, align 8
  %i.au = trunc i64 %2 to i32
  %i.av = trunc i64 %.sroa.speculated to i32
  tail call void @_ZNK2v86String7WriteV2EPNS_7IsolateEjjPti(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, ptr noundef %i.at, i32 noundef %i.au, i32 noundef %i.av, ptr noundef nonnull %i.as, i32 noundef 0) #10
  tail call void @_ZN12v8_inspector8String16C1EPKDsm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.as, i64 noundef %.sroa.speculated) #10
  tail call void @_ZdaPv(ptr noundef nonnull %i.as) #13
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIA_DsSt14default_deleteIS0_EED2Ev.exit, %bb.e, %bb.c
  %i.aw = icmp eq ptr %i.b, null
  br i1 %i.aw, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %i.e, align 8
  store ptr %i.f, ptr %i.e, align 8
  store ptr %i.ax, ptr %i.g, align 8
  %i.ay = load i32, ptr %i.k, align 8
  %i.az = add nsw i32 %i.ay, -1
  store i32 %i.az, ptr %i.k, align 8
  %i.ba = load ptr, ptr %i.h, align 8
  %.not.i = icmp eq ptr %i.ba, %i.i
  br i1 %.not.i, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.h, !prof !10

bb.h:                                             ; preds = %bb.g
  store ptr %i.i, ptr %i.h, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %i.b) #10
  br label %_ZN2v811HandleScopeD2Ev.exit

_ZN2v811HandleScopeD2Ev.exit:                     ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @_ZNK2v85debug12ScriptSource14JavaScriptCodeEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef i32 @_ZNK2v86String6LengthEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

declare void @_ZNK2v86String7WriteV2EPNS_7IsolateEjjPti(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN12v8_inspector8String16C1EPKDsm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK12v8_inspector16V8DebuggerScript12wasmBytecodeEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.v8::Maybe") align 8 captures(none) initializes((0, 1), (8, 24)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::HandleScope", align 8   ; 6 uses
  %3 = alloca %"class.v8::MemorySpan", align 8    ; 4 uses
  %4 = alloca %"class.v8::Maybe", align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 560
  %i.e = inttoptr i64 %i.d to ptr                 ; 5 uses
  store ptr %i.b, ptr %2, align 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.o = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !11, !noundef !11
  %i.q = load i64, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = add i64 %i.r, 560
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %bb.b, label %_ZN2v811HandleScope12CreateHandleEPNS_7IsolateEm.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.y = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.o) #10
  br label %_ZN2v811HandleScope12CreateHandleEPNS_7IsolateEm.exit

_ZN2v811HandleScope12CreateHandleEPNS_7IsolateEm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.y, %bb.b ], [ %i.u, %bb.a ] ; 3 uses
  %i.z = ptrtoint ptr %.0.i to i64
  %i.aa = add i64 %i.z, 8
  %i.ab = inttoptr i64 %i.aa to ptr
  store ptr %i.ab, ptr %i.t, align 8
  store i64 %i.q, ptr %.0.i, align 8
  call void @_ZNK2v85debug12ScriptSource12WasmBytecodeEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::Maybe") align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %.0.i) #10
  %i.ac = load i8, ptr %4, align 8, !range !12, !noundef !11
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %_ZN2v811HandleScope12CreateHandleEPNS_7IsolateEm.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  store i8 1, ptr %0, align 8, !alias.scope !13
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %_ZN2v811HandleScope12CreateHandleEPNS_7IsolateEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ag = icmp eq ptr %i.b, null
  br i1 %i.ag, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.e, align 8
  store ptr %i.f, ptr %i.e, align 8
  store ptr %i.ah, ptr %i.g, align 8
  %i.ai = load i32, ptr %i.k, align 8
  %i.aj = add nsw i32 %i.ai, -1
  store i32 %i.aj, ptr %i.k, align 8
  %i.ak = load ptr, ptr %i.h, align 8
  %.not.i = icmp eq ptr %i.ak, %i.i
  br i1 %.not.i, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  store ptr %i.i, ptr %i.h, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.b) #10
  br label %_ZN2v811HandleScopeD2Ev.exit

_ZN2v811HandleScopeD2Ev.exit:                     ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

declare void @_ZNK2v85debug12ScriptSource12WasmBytecodeEv(ptr dead_on_unwind writable sret(%"class.v8::Maybe") align 8, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK12v8_inspector16V8DebuggerScript15getDebugSymbolsEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 288
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %5 = load ptr, ptr %4, align 8                  ; 2 uses
  %6 = load ptr, ptr %3, align 8                  ; 2 uses
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_ZNK12v8_inspector16V8DebuggerScript6scriptEv.exit, label %bb.a

bb.a:                                             ; preds = %2
  %i.a = load i64, ptr %6, align 8
  %i.b = ptrtoint ptr %5 to i64
  %i.c = add i64 %i.b, 560
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit.i, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %5) #10
  br label %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit.i

_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.e, %bb.a ] ; 3 uses
  %i.j = ptrtoint ptr %.0.i.i.i to i64
  %i.k = add i64 %i.j, 8
  %i.l = inttoptr i64 %i.k to ptr
  store ptr %i.l, ptr %i.d, align 8
  store i64 %i.a, ptr %.0.i.i.i, align 8
  br label %_ZNK12v8_inspector16V8DebuggerScript6scriptEv.exit

_ZNK12v8_inspector16V8DebuggerScript6scriptEv.exit: ; preds = %2, %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit.i
  %.sroa.02.0.i = phi ptr [ %.0.i.i.i, %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit.i ], [ null, %2 ] ; 2 uses
  %8 = tail call noundef zeroext i1 @_ZNK2v85debug6Script6IsWasmEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.02.0.i) #10
  br i1 %8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK12v8_inspector16V8DebuggerScript6scriptEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %_ZNK12v8_inspector16V8DebuggerScript6scriptEv.exit
  %i.m = tail call noundef ptr @_ZN2v85debug10WasmScript4CastEPNS0_6ScriptE(ptr noundef nonnull %.sroa.02.0.i) #10
  tail call void @_ZNK2v85debug10WasmScript15GetDebugSymbolsEv(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %i.m) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK12v8_inspector16V8DebuggerScript6scriptEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(304) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = add i64 %i.g, 560
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.c) #10
  br label %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit

_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.n, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.o = ptrtoint ptr %.0.i.i to i64
  %i.p = add i64 %i.o, 8
  %i.q = inttoptr i64 %i.p to ptr
  store ptr %i.q, ptr %i.i, align 8
  store i64 %i.f, ptr %.0.i.i, align 8
  br label %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEPS2_.exit

_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEPS2_.exit: ; preds = %bb.a, %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit
  %.sroa.02.0 = phi ptr [ %.0.i.i, %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit ], [ null, %bb.a ]
  ret ptr %.sroa.02.0
}

declare noundef zeroext i1 @_ZNK2v85debug6Script6IsWasmEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare noundef ptr @_ZN2v85debug10WasmScript4CastEPNS0_6ScriptE(ptr noundef) local_unnamed_addr #1

declare void @_ZNK2v85debug10WasmScript15GetDebugSymbolsEv(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK12v8_inspector16V8DebuggerScript11DisassembleEPN2v85debug20DisassemblyCollectorEPSt6vectorIiSaIiEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(304) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::HandleScope", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 560
  %i.e = inttoptr i64 %i.d to ptr                 ; 5 uses
  store ptr %i.b, ptr %3, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZNK12v8_inspector16V8DebuggerScript6scriptEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %i.p, align 8
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = add i64 %i.s, 560
  %i.u = inttoptr i64 %i.t to ptr                 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.c, label %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit.i, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.z = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.o) #10
  br label %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit.i

_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.z, %bb.c ], [ %i.v, %bb.b ] ; 3 uses
  %i.aa = ptrtoint ptr %.0.i.i.i to i64
  %i.ab = add i64 %i.aa, 8
  %i.ac = inttoptr i64 %i.ab to ptr
  store ptr %i.ac, ptr %i.u, align 8
  store i64 %i.r, ptr %.0.i.i.i, align 8
  br label %_ZNK12v8_inspector16V8DebuggerScript6scriptEv.exit

_ZNK12v8_inspector16V8DebuggerScript6scriptEv.exit: ; preds = %bb.a, %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit.i
  %.sroa.02.0.i = phi ptr [ %.0.i.i.i, %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit.i ], [ null, %bb.a ]
  %i.ad = tail call noundef ptr @_ZN2v85debug10WasmScript4CastEPNS0_6ScriptE(ptr noundef %.sroa.02.0.i) #10
  tail call void @_ZN2v85debug10WasmScript11DisassembleEPNS0_20DisassemblyCollectorEPSt6vectorIiSaIiEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, ptr noundef %1, ptr noundef %2) #10
  %i.ae = icmp eq ptr %i.b, null
  br i1 %i.ae, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.d, !prof !8

bb.d:                                             ; preds = %_ZNK12v8_inspector16V8DebuggerScript6scriptEv.exit
  %i.af = load ptr, ptr %i.e, align 8
  store ptr %i.f, ptr %i.e, align 8
  store ptr %i.af, ptr %i.g, align 8
  %i.ag = load i32, ptr %i.k, align 8
  %i.ah = add nsw i32 %i.ag, -1
  store i32 %i.ah, ptr %i.k, align 8
  %i.ai = load ptr, ptr %i.h, align 8
  %.not.i = icmp eq ptr %i.ai, %i.i
  br i1 %.not.i, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.d
  store ptr %i.i, ptr %i.h, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %i.b) #10
  br label %_ZN2v811HandleScopeD2Ev.exit

_ZN2v811HandleScopeD2Ev.exit:                     ; preds = %_ZNK12v8_inspector16V8DebuggerScript6scriptEv.exit, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

declare void @_ZN2v85debug10WasmScript11DisassembleEPNS0_20DisassemblyCollectorEPSt6vectorIiSaIiEE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK12v8_inspector16V8DebuggerScript10codeOffsetEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(304) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.e = load i64, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = add i64 %i.f, 560
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit.i, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.c) #10
  br label %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit.i

_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.m, %bb.b ], [ %i.i, %bb.a ] ; 3 uses
  %i.n = ptrtoint ptr %.0.i.i.i to i64
  %i.o = add i64 %i.n, 8
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.h, align 8
  store i64 %i.e, ptr %.0.i.i.i, align 8
  %i.q = tail call noundef zeroext i1 @_ZNK2v85debug6Script6IsWasmEv(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i.i) #10
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit.i
  %i.r = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZNK12v8_inspector16V8DebuggerScript6scriptEv.exit4, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.s, align 8
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = add i64 %i.v, 560
  %i.x = inttoptr i64 %i.w to ptr                 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit.i1, !prof !8

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.r) #10
  br label %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit.i1

_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit.i1: ; preds = %bb.e, %bb.d
  %.0.i.i.i2 = phi ptr [ %i.ac, %bb.e ], [ %i.y, %bb.d ] ; 3 uses
  %i.ad = ptrtoint ptr %.0.i.i.i2 to i64
  %i.ae = add i64 %i.ad, 8
  %i.af = inttoptr i64 %i.ae to ptr
  store ptr %i.af, ptr %i.x, align 8
  store i64 %i.u, ptr %.0.i.i.i2, align 8
  br label %_ZNK12v8_inspector16V8DebuggerScript6scriptEv.exit4

_ZNK12v8_inspector16V8DebuggerScript6scriptEv.exit4: ; preds = %bb.c, %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit.i1
  %.sroa.02.0.i3 = phi ptr [ %.0.i.i.i2, %_ZN2v89LocalBaseINS_5debug6ScriptEE3NewEPNS_7IsolateEm.exit.i1 ], [ null, %bb.c ]
  %i.ag = tail call noundef ptr @_ZN2v85debug10WasmScript4CastEPNS0_6ScriptE(ptr noundef %.sroa.02.0.i3) #10
  %i.ah = tail call noundef i32 @_ZNK2v85debug10WasmScript10CodeOffsetEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ag) #10
  br label %bb.f

end_hunk_0
