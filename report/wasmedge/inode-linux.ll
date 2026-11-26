Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/inode-linux?download=true
inline.NumInlined: 1859
inline.NumDeleted: 936
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK8WasmEdge4Host4WASI5INode8pathOpenENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE15__wasi_oflags_t16__wasi_fdflags_tNS1_3VFS5FlagsE:bb.a
  %i.w = or i32 %.7.i, 1052672
  %i.x = and i16 %4, 24
  %i.y = icmp eq i16 %i.x, 0
  %.9.i = select i1 %i.y, i32 %.7.i, i32 %i.w
  %i.z = load i32, ptr %1, align 8, !tbaa !17
  %i.aa = load ptr, ptr %2, align 8, !tbaa !40
  %i.ab = invoke i32 (i32, ptr, i32, ...) @openat(i32 noundef %i.z, ptr noundef %i.aa, i32 noundef %.9.i, i32 noundef 420)
          to label %bb.e unwind label %bb.h       ; 2 uses

bb.e:                                             ; preds = %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_19openFlagsE15__wasi_oflags_t16__wasi_fdflags_tNS1_3VFS5FlagsE.exit
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %_ZN8WasmEdge4Host4WASI5INodeD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call ptr @__errno_location() #25
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !32
  %i.af = tail call noundef zeroext i16 @_ZN8WasmEdge4Host4WASI6detail9fromErrNoEi(i32 noundef %i.ae) #24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.af, ptr %i.ag, align 8, !tbaa !37
  br label %bb.g

_ZN8WasmEdge4Host4WASI5INodeD2Ev.exit:            ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ab, ptr %i.ah, align 8, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = or i8 %i.aj, 1
  store i8 %i.ak, ptr %i.ai, align 4
  %.sroa.13.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 0, ptr %.sroa.13.8..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.al, i8 0, i64 40, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %_ZN8WasmEdge4Host4WASI5INodeD2Ev.exit, %bb.f
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN8WasmEdge4Host4WASI5INodeD2Ev.exit ]
  store i8 %.sink, ptr %0, align 8, !tbaa !34
  ret void

bb.h:                                             ; preds = %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_19openFlagsE15__wasi_oflags_t16__wasi_fdflags_tNS1_3VFS5FlagsE.exit
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #23
  unreachable
}

declare i32 @openat(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, -65535) i32 @_ZNK8WasmEdge4Host4WASI5INode12pathReadlinkENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5cxx204spanIcLm18446744073709551615EEERj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofreeobj noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr %2, i64 %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !17
  %i.b = load ptr, ptr %1, align 8, !tbaa !40
  %i.c = tail call i64 @readlinkat(i32 noundef %i.a, ptr noundef %i.b, ptr noundef %2, i64 noundef %3) #24 ; 2 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #25
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32
  %i.g = tail call noundef zeroext i16 @_ZN8WasmEdge4Host4WASI6detail9fromErrNoEi(i32 noundef %i.f) #24
  %i.h = zext i16 %i.g to i32
  %i.i = shl nuw i32 %i.h, 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.c to i32
  store i32 %i.j, ptr %4, align 4, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.06.0.insert.insert = phi i32 [ 1, %bb.c ], [ %i.i, %bb.b ]
  ret i32 %.sroa.06.0.insert.insert
}

; Function Attrs: nounwind
declare i64 @readlinkat(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, -65535) i32 @_ZNK8WasmEdge4Host4WASI5INode19pathRemoveDirectoryENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofreeobj noundef readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !17
  %i.b = load ptr, ptr %1, align 8, !tbaa !40
  %i.c = tail call i32 @unlinkat(i32 noundef %i.a, ptr noundef %i.b, i32 noundef 512) #24
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #25
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32
  %i.g = tail call noundef zeroext i16 @_ZN8WasmEdge4Host4WASI6detail9fromErrNoEi(i32 noundef %i.f) #24
  %i.h = zext i16 %i.g to i32
  %i.i = shl nuw i32 %i.h, 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0.insert.insert = phi i32 [ %i.i, %bb.b ], [ 1, %bb.a ]
  ret i32 %.sroa.02.0.insert.insert
}

; Function Attrs: nounwind
declare i32 @unlinkat(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, -65535) i32 @_ZN8WasmEdge4Host4WASI5INode10pathRenameERKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_SA_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofreeobj noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %2, ptr nofreeobj noundef readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !17
  %i.b = load ptr, ptr %1, align 8, !tbaa !40
  %i.c = load i32, ptr %2, align 8, !tbaa !17
  %i.d = load ptr, ptr %3, align 8, !tbaa !40
  %i.e = tail call i32 @renameat(i32 noundef %i.a, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %i.d) #24
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__errno_location() #25
  %i.g = load i32, ptr %i.f, align 4, !tbaa !32
  %i.h = tail call noundef zeroext i16 @_ZN8WasmEdge4Host4WASI6detail9fromErrNoEi(i32 noundef %i.g) #24
  %i.i = zext i16 %i.h to i32
  %i.j = shl nuw i32 %i.i, 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.03.0.insert.insert = phi i32 [ %i.j, %bb.b ], [ 1, %bb.a ]
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: nounwind
declare i32 @renameat(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, -65535) i32 @_ZNK8WasmEdge4Host4WASI5INode11pathSymlinkENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofreeobj noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr nofreeobj noundef readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40
  %i.b = load i32, ptr %0, align 8, !tbaa !17
  %i.c = load ptr, ptr %2, align 8, !tbaa !40
  %i.d = tail call i32 @symlinkat(ptr noundef %i.a, i32 noundef %i.b, ptr noundef %i.c) #24
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #25
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32
  %i.g = tail call noundef zeroext i16 @_ZN8WasmEdge4Host4WASI6detail9fromErrNoEi(i32 noundef %i.f) #24
  %i.h = zext i16 %i.g to i32
  %i.i = shl nuw i32 %i.h, 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0.insert.insert = phi i32 [ %i.i, %bb.b ], [ 1, %bb.a ]
  ret i32 %.sroa.02.0.insert.insert
}

; Function Attrs: nounwind
declare i32 @symlinkat(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, -65535) i32 @_ZNK8WasmEdge4Host4WASI5INode14pathUnlinkFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofreeobj noundef readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !17
  %i.b = load ptr, ptr %1, align 8, !tbaa !40
  %i.c = tail call i32 @unlinkat(i32 noundef %i.a, ptr noundef %i.b, i32 noundef 0) #24
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #25
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32
  %i.g = tail call noundef zeroext i16 @_ZN8WasmEdge4Host4WASI6detail9fromErrNoEi(i32 noundef %i.f) #24
  %i.h = zext i16 %i.g to i32
  %i.i = shl nuw i32 %i.h, 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0.insert.insert = phi i32 [ %i.i, %bb.b ], [ 1, %bb.a ]
  ret i32 %.sroa.02.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 1, 5701633) i32 @_ZN8WasmEdge4Host4WASI5INode11getAddrinfoESt17basic_string_viewIcSt11char_traitsIcEES6_RK17__wasi_addrinfo_tjN5cxx204spanIPS7_Lm18446744073709551615EEENSB_IP17__wasi_sockaddr_tLm18446744073709551615EEENSB_IPcLm18446744073709551615EEESI_Rj(i64 %0, ptr %1, i64 %2, ptr %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %4, i32 noundef %5, ptr nofree noundef readonly byval(%"struct.cxx20::span.50") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"struct.cxx20::span.52") align 8 captures(none) %7, ptr nofree noundef readonly byval(%"struct.cxx20::span.54") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"struct.cxx20::span.54") align 8 captures(none) %9, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %10) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %struct.addrinfo, align 8          ; 9 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = icmp eq i64 %0, 0
  br i1 %i.b, label %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_126createNullTerminatedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %1, i32 noundef 0, i64 noundef %0) #24, !noalias !228 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e
  %.not.i = icmp eq i64 %i.f, -1
  %or.cond.i = select i1 %.not.i.i.i, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread.i, label %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_126createNullTerminatedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.g = add i64 %0, 1                            ; 2 uses
  %i.h = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #27
          to label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i unwind label %bb.e, !noalias !228 ; 9 uses

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 0, i64 %i.g, i1 false), !noalias !229
  %i.i = icmp sgt i64 %0, 1
  br i1 %i.i, label %bb.b, label %bb.c, !prof !66

bb.b:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %1, i64 %0, i1 false), !noalias !228
  br label %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_126createNullTerminatedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.c:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i
  %i.j = icmp eq i64 %0, 1
  br i1 %i.j, label %bb.d, label %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_126createNullTerminatedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %1, align 1, !tbaa !67, !noalias !228
  store i8 %i.k, ptr %i.h, align 1, !tbaa !67, !noalias !228
  br label %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_126createNullTerminatedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.e:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #23, !noalias !228
  unreachable

_ZN8WasmEdge4Host4WASI12_GLOBAL__N_126createNullTerminatedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ null, %bb.a ], [ %1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i ], [ %i.h, %bb.d ], [ %i.h, %bb.c ], [ %i.h, %bb.b ]
  %.sroa.05.1.i = phi ptr [ null, %bb.a ], [ null, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i ], [ %i.h, %bb.d ], [ %i.h, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.n = icmp eq i64 %2, 0
  br i1 %i.n, label %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_126createNullTerminatedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit67, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i59

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i59: ; preds = %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_126createNullTerminatedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.o = tail call ptr @memchr(ptr noundef %3, i32 noundef 0, i64 noundef %2) #24, !noalias !230 ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.o, null
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %3 to i64
  %i.r = sub i64 %i.p, %i.q
  %.not.i61 = icmp eq i64 %i.r, -1
  %or.cond.i62 = select i1 %.not.i.i.i60, i1 true, i1 %.not.i61
  br i1 %or.cond.i62, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread.i65, label %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_126createNullTerminatedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit67

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread.i65: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i59
  %i.s = add i64 %2, 1                            ; 2 uses
  %i.t = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #27
          to label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i66 unwind label %bb.i, !noalias !230 ; 9 uses

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i66: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread.i65
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.t, i8 0, i64 %i.s, i1 false), !noalias !231
  %i.u = icmp sgt i64 %2, 1
  br i1 %i.u, label %bb.f, label %bb.g, !prof !66

bb.f:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i66
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %3, i64 %2, i1 false), !noalias !230
  br label %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_126createNullTerminatedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit67

bb.g:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i66
  %i.v = icmp eq i64 %2, 1
  br i1 %i.v, label %bb.h, label %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_126createNullTerminatedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit67

bb.h:                                             ; preds = %bb.g
  %i.w = load i8, ptr %3, align 1, !tbaa !67, !noalias !230
  store i8 %i.w, ptr %i.t, align 1, !tbaa !67, !noalias !230
  br label %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_126createNullTerminatedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit67

bb.i:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread.i65
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #23, !noalias !230
  unreachable

_ZN8WasmEdge4Host4WASI12_GLOBAL__N_126createNullTerminatedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit67: ; preds = %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_126createNullTerminatedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i59, %bb.f, %bb.g, %bb.h
  %.0.i63 = phi ptr [ null, %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_126createNullTerminatedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %3, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i59 ], [ %i.t, %bb.h ], [ %i.t, %bb.g ], [ %i.t, %bb.f ]
  %.sroa.05.1.i64 = phi ptr [ null, %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_126createNullTerminatedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ null, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i59 ], [ %i.t, %bb.h ], [ %i.t, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.z = load i16, ptr %4, align 4, !tbaa !236    ; 3 uses
  %.222.i = and i16 %i.z, 7
  %i.aa = shl i16 %i.z, 7
  %i.ab = and i16 %i.aa, 1024
  %.323.i = or disjoint i16 %i.ab, %.222.i
  %i.ac = lshr i16 %i.z, 1
  %i.ad = and i16 %i.ac, 56
  %.626.i = or disjoint i16 %.323.i, %i.ad
  %.6.i = zext nneg i16 %.626.i to i32
  store i32 %.6.i, ptr %11, align 8, !tbaa !240
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !241
  %i.ag = zext nneg i8 %i.af to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN8WasmEdge4Host4WASI5INode11getAddrinfoESt17basic_string_viewIcSt11char_traitsIcEES6_RK17__wasi_addrinfo_tjN5cxx204spanIPS7_Lm18446744073709551615EEENSB_IP17__wasi_sockaddr_tLm18446744073709551615EEENSB_IPcLm18446744073709551615EEESI_Rj, i64 %i.ag
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %switch.ext, ptr %i.ah, align 4, !tbaa !242
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !243
  %i.ak = zext nneg i8 %i.aj to i64
  %switch.gep120 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK8WasmEdge4Host4WASI5INode10sockGetOptE23__wasi_sock_opt_level_t20__wasi_sock_opt_so_tRN5cxx204spanIhLm18446744073709551615EEE.10, i64 %i.ak
  %switch.load121 = load i8, ptr %switch.gep120, align 1
  %switch.ext122 = zext i8 %switch.load121 to i32
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %switch.ext122, ptr %i.al, align 8, !tbaa !244
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.an = load i8, ptr %i.am, align 4, !tbaa !245
  %i.ao = zext nneg i8 %i.an to i64
  %switch.gep104 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8WasmEdge4Host4WASI5INode11getAddrinfoESt17basic_string_viewIcSt11char_traitsIcEES6_RK17__wasi_addrinfo_tjN5cxx204spanIPS7_Lm18446744073709551615EEENSB_IP17__wasi_sockaddr_tLm18446744073709551615EEENSB_IPcLm18446744073709551615EEESI_Rj.3, i64 %i.ao
  %switch.load105 = load i8, ptr %switch.gep104, align 1
  %switch.ext106 = zext i8 %switch.load105 to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 %switch.ext106, ptr %i.ap, align 4, !tbaa !246
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !247
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !248
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !249
  %i.au = invoke i32 @getaddrinfo(ptr noundef %.0.i, ptr noundef %.0.i63, ptr noundef nonnull %11, ptr noundef nonnull %i.a)
          to label %bb.j unwind label %bb.o       ; 2 uses

bb.j:                                             ; preds = %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_126createNullTerminatedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit67
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %switch.lookup, label %.critedge

switch.lookup:                                    ; preds = %bb.j
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr [4 x i8], ptr @switch.table._ZN8WasmEdge4Host4WASI5INode11getAddrinfoESt17basic_string_viewIcSt11char_traitsIcEES6_RK17__wasi_addrinfo_tjN5cxx204spanIPS7_Lm18446744073709551615EEENSB_IP17__wasi_sockaddr_tLm18446744073709551615EEENSB_IPcLm18446744073709551615EEESI_Rj.4, i64 %i.aw
  %switch.gep107 = getelementptr i8, ptr %i.ax, i64 44
  %switch.load108 = load i32, ptr %switch.gep107, align 4
  br label %_ZN8WasmEdge4Host4WASI6detail12fromEAIErrNoEi.exit

.critedge:                                        ; preds = %bb.j
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !249 ; 3 uses
  %.not5.i = icmp eq ptr %i.ay, null
  br i1 %.not5.i, label %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_131calculateAddrinfoLinkedListSizeEP8addrinfo.exit.thread, label %.lr.ph.i

_ZN8WasmEdge4Host4WASI12_GLOBAL__N_131calculateAddrinfoLinkedListSizeEP8addrinfo.exit.thread: ; preds = %.critedge
  store i32 0, ptr %10, align 4, !tbaa !32
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %.07.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %i.ay, %.critedge ]
  %.046.i = phi i32 [ %i.az, %.lr.ph.i ], [ 0, %.critedge ]
  %i.az = add i32 %.046.i, 1                      ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !250 ; 2 uses
  %.not.i72 = icmp eq ptr %i.bb, null
  br i1 %.not.i72, label %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_131calculateAddrinfoLinkedListSizeEP8addrinfo.exit, label %.lr.ph.i, !llvm.loop !226

_ZN8WasmEdge4Host4WASI12_GLOBAL__N_131calculateAddrinfoLinkedListSizeEP8addrinfo.exit: ; preds = %.lr.ph.i
  %i.bc = call i32 @llvm.umin.i32(i32 %i.az, i32 %5) ; 2 uses
  store i32 %i.bc, ptr %10, align 4, !tbaa !32
  %.not95 = icmp eq i32 %i.bc, 0
  br i1 %.not95, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_131calculateAddrinfoLinkedListSizeEP8addrinfo.exit
  %i.bd = load ptr, ptr %6, align 8, !tbaa !253
  %i.be = load ptr, ptr %9, align 8
  %i.bf = load ptr, ptr %7, align 8
  %i.bg = load ptr, ptr %8, align 8
  br label %switch.lookup109

._crit_edge.loopexit:                             ; preds = %bb.n
  %.pre97 = load ptr, ptr %i.a, align 8, !tbaa !249
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_131calculateAddrinfoLinkedListSizeEP8addrinfo.exit.thread, %._crit_edge.loopexit, %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_131calculateAddrinfoLinkedListSizeEP8addrinfo.exit
  %i.bh = phi ptr [ %.pre97, %._crit_edge.loopexit ], [ %i.ay, %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_131calculateAddrinfoLinkedListSizeEP8addrinfo.exit ], [ null, %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_131calculateAddrinfoLinkedListSizeEP8addrinfo.exit.thread ]
  call void @freeaddrinfo(ptr noundef %i.bh) #24
  br label %_ZN8WasmEdge4Host4WASI6detail12fromEAIErrNoEi.exit

switch.lookup109:                                 ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 5 uses
  %.05494.in = phi ptr [ %i.a, %.lr.ph ], [ %i.db, %bb.n ]
  %.05494 = load ptr, ptr %.05494.in, align 8, !tbaa !249 ; 8 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bj = load i32, ptr %.05494, align 8, !tbaa !240
  %.not.i73 = trunc i32 %i.bj to i16              ; 3 uses
  %.2.i = and i16 %.not.i73, 7
  %i.bk = lshr i16 %.not.i73, 7
  %i.bl = and i16 %i.bk, 8
  %.3.i = or disjoint i16 %i.bl, %.2.i
  %i.bm = shl i16 %.not.i73, 1
  %i.bn = and i16 %i.bm, 112
  %.6.i74 = or disjoint i16 %.3.i, %i.bn
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !255 ; 7 uses
  store i16 %.6.i74, ptr %i.bo, align 4, !tbaa !236
  %i.bp = getelementptr inbounds nuw i8, ptr %.05494, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !244
  %switch.cast = trunc i32 %i.bq to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 66048, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  store i8 %switch.masked, ptr %i.br, align 1, !tbaa !243
  %i.bs = getelementptr inbounds nuw i8, ptr %.05494, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !246
  %i.bu = zext nneg i32 %i.bt to i64
  %switch.gep124 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8WasmEdge4Host4WASI5INode11getAddrinfoESt17basic_string_viewIcSt11char_traitsIcEES6_RK17__wasi_addrinfo_tjN5cxx204spanIPS7_Lm18446744073709551615EEENSB_IP17__wasi_sockaddr_tLm18446744073709551615EEENSB_IPcLm18446744073709551615EEESI_Rj.9, i64 %i.bu
  %switch.load125 = load i8, ptr %switch.gep124, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i8 %switch.load125, ptr %i.bv, align 4, !tbaa !245
  %i.bw = getelementptr inbounds nuw i8, ptr %.05494, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !242
  %i.by = zext nneg i32 %i.bx to i64
  %switch.gep111 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8WasmEdge4Host4WASI5INode11getAddrinfoESt17basic_string_viewIcSt11char_traitsIcEES6_RK17__wasi_addrinfo_tjN5cxx204spanIPS7_Lm18446744073709551615EEENSB_IP17__wasi_sockaddr_tLm18446744073709551615EEENSB_IPcLm18446744073709551615EEESI_Rj.6, i64 %i.by
  %switch.load112 = load i8, ptr %switch.gep111, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  store i8 %switch.load112, ptr %i.bz, align 2, !tbaa !241
  %i.ca = getelementptr inbounds nuw i8, ptr %.05494, i64 16 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !248 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !247
  %i.cd = getelementptr inbounds nuw i8, ptr %.05494, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !256 ; 3 uses
  %.not = icmp eq ptr %i.ce, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %switch.lookup109
  %i.cf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ce) #29 ; 2 uses
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !257
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !65
  %i.ck = add i64 %i.cf, 1
  %i.cl = and i64 %i.ck, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr nonnull align 1 %i.ce, i64 %i.cl, i1 false)
  %.pre = load i32, ptr %i.ca, align 8, !tbaa !248
  br label %bb.m

bb.l:                                             ; preds = %switch.lookup109
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  store i32 0, ptr %i.cm, align 4, !tbaa !257
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cn = phi i32 [ %i.cb, %bb.l ], [ %.pre, %bb.k ]
  %.not58 = icmp eq i32 %i.cn, 0
  br i1 %.not58, label %bb.n, label %switch.lookup113

switch.lookup113:                                 ; preds = %bb.m
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.05494, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !258 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev:bb.a
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !127  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN8WasmEdge4Host4WASI6Poller5TimerES4_EvT_S6_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyIN8WasmEdge4Host4WASI6Poller5TimerEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyIN8WasmEdge4Host4WASI6Poller5TimerEEvPT_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 4
  %i.h = load i8, ptr %i.g, align 4
  %i.i = trunc i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %_ZSt8_DestroyIN8WasmEdge4Host4WASI6Poller5TimerEEvPT_.exit.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.j = load i32, ptr %.05.i.i.i.i.i, align 4, !tbaa !17 ; 2 uses
  %or.cond.i.i.i.i.i.i.i = icmp sgt i32 %i.j, 2
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.d, label %_ZSt8_DestroyIN8WasmEdge4Host4WASI6Poller5TimerEEvPT_.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = invoke i32 @close(i32 noundef %i.j)
          to label %_ZSt8_DestroyIN8WasmEdge4Host4WASI6Poller5TimerEEvPT_.exit.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #23
  unreachable

_ZSt8_DestroyIN8WasmEdge4Host4WASI6Poller5TimerEEvPT_.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN8WasmEdge4Host4WASI6Poller5TimerES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN8WasmEdge4Host4WASI6Poller5TimerES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN8WasmEdge4Host4WASI6Poller5TimerEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !155
  br label %_ZSt8_DestroyIPN8WasmEdge4Host4WASI6Poller5TimerES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN8WasmEdge4Host4WASI6Poller5TimerES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN8WasmEdge4Host4WASI6Poller5TimerES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.o = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN8WasmEdge4Host4WASI6Poller5TimerES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIK16__wasi_clockid_tSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaISA_EEELb0EEEEE18_M_deallocate_nodeEPSE_.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN8WasmEdge4Host4WASI6Poller5TimerES4_EvT_S6_RSaIT0_E.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !128
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #28
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIK16__wasi_clockid_tSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaISA_EEELb0EEEEE18_M_deallocate_nodeEPSE_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIK16__wasi_clockid_tSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaISA_EEELb0EEEEE18_M_deallocate_nodeEPSE_.exit: ; preds = %_ZSt8_DestroyIPN8WasmEdge4Host4WASI6Poller5TimerES4_EvT_S6_RSaIT0_E.exit.i.i.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #28
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIK16__wasi_clockid_tSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaISA_EEELb0EEEEE18_M_deallocate_nodeEPSE_.exit, %bb.a
  ret void
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !181

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !297
  br label %_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIK16__wasi_clockid_tSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaISA_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !181

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIK16__wasi_clockid_tSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaISA_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #27 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIK16__wasi_clockid_tSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaISA_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIK16__wasi_clockid_tSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaISA_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !180  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !180
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !107 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !109
  %i.l = zext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !106  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !180
  store ptr %i.p, ptr %.02530, align 8, !tbaa !107
  store ptr %.02530, ptr %i.g, align 8, !tbaa !180
  store ptr %i.g, ptr %i.n, align 8, !tbaa !106
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !107
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !106
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !107
  store ptr %i.s, ptr %.02530, align 8, !tbaa !107
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !106
  store ptr %.02530, ptr %i.t, align 8, !tbaa !107
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !296

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !105    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !104
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #28
  br label %_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !104
  store ptr %.0.i, ptr %0, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !155    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #26
  unreachable

_ZNKSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 12                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 768614336404564650)
  %i.l = select i1 %i.j, i64 768614336404564650, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 12
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load i32, ptr %2, align 4, !tbaa !32
  store i32 -1, ptr %2, align 4, !tbaa !32
  store i32 %i.r, ptr %i.q, align 4, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.u = load i8, ptr %i.t, align 4               ; 2 uses
  %i.v = and i8 %i.u, 1
  store i8 %i.v, ptr %i.s, align 4
  %i.w = or i8 %i.u, 1
  store i8 %i.w, ptr %i.t, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !126
  store i32 %i.z, ptr %i.x, align 4, !tbaa !126
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.aa = load i32, ptr %.0911.i.i.i, align 4, !tbaa !32, !alias.scope !305
  store i32 -1, ptr %.0911.i.i.i, align 4, !tbaa !32, !alias.scope !305
  store i32 %i.aa, ptr %.012.i.i.i, align 4, !tbaa !17, !alias.scope !304
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 4 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 4, !alias.scope !305 ; 2 uses
  %i.ae = and i8 %i.ad, 1
  %i.af = load i8, ptr %i.ab, align 4, !alias.scope !304
  %i.ag = and i8 %i.af, -2
  %i.ah = or disjoint i8 %i.ag, %i.ae
  store i8 %i.ah, ptr %i.ab, align 4, !alias.scope !304
  %i.ai = or i8 %i.ad, 1
  store i8 %i.ai, ptr %i.ac, align 4, !alias.scope !305
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !126, !alias.scope !305
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !126, !alias.scope !304
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.an, %.lr.ph.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 12 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bc, %.lr.ph.i.i.i17 ], [ %i.ao, %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  %.0911.i.i.i19 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.ap = load i32, ptr %.0911.i.i.i19, align 4, !tbaa !32, !alias.scope !307
  store i32 -1, ptr %.0911.i.i.i19, align 4, !tbaa !32, !alias.scope !307
  store i32 %i.ap, ptr %.012.i.i.i18, align 4, !tbaa !17, !alias.scope !306
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 4 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 4, !alias.scope !307 ; 2 uses
  %i.at = and i8 %i.as, 1
  %i.au = load i8, ptr %i.aq, align 4, !alias.scope !306
  %i.av = and i8 %i.au, -2
  %i.aw = or disjoint i8 %i.av, %i.at
  store i8 %i.aw, ptr %i.aq, align 4, !alias.scope !306
  %i.ax = or i8 %i.as, 1
  store i8 %i.ax, ptr %i.ar, align 4, !alias.scope !307
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !126, !alias.scope !307
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !126, !alias.scope !306
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 12 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 12 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bb, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !1

_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ao, %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.bc, %.lr.ph.i.i.i17 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !128
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bg) #28
  br label %_ZNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !155
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !127
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !128
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !179
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !148
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !173
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #24 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !179
  invoke void @__cxa_rethrow() #26
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #23
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !148
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !147    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !106  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !107
  store ptr %i.w, ptr %3, align 8, !tbaa !107
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !106
  store ptr %3, ptr %i.x, align 8, !tbaa !107
  br label %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !172
  store ptr %i.z, ptr %3, align 8, !tbaa !107
  store ptr %3, ptr %i.y, align 8, !tbaa !172
  %i.aa = load ptr, ptr %3, align 8, !tbaa !107   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !148
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !32
  %i.ae = sext i32 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !106
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !106
  br label %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb0EEE.exit

_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !173
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !173
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !181

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !309
  br label %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
end_hunk_1
