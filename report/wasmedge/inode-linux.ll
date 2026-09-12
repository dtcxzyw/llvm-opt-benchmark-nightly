Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/inode-linux?download=true
inline.NumInlined: 1859
inline.NumDeleted: 936
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN8WasmEdge4Host4WASI5INode4openENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE15__wasi_oflags_t16__wasi_fdflags_tNS1_3VFS5FlagsE:bb.a
  br i1 %i.ab, label %bb.f, label %_ZN8WasmEdge4Host4WASI5INodeD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call ptr @__errno_location() #25
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !32
  %i.ae = tail call noundef zeroext i16 @_ZN8WasmEdge4Host4WASI6detail9fromErrNoEi(i32 noundef %i.ad) #24
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.ae, ptr %i.af, align 8, !tbaa !37
  br label %bb.g

_ZN8WasmEdge4Host4WASI5INodeD2Ev.exit:            ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.aa, ptr %i.ag, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = or i8 %i.ai, 1
  store i8 %i.aj, ptr %i.ah, align 4
  %.sroa.13.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 0, ptr %.sroa.13.8..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i8 0, i64 40, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %_ZN8WasmEdge4Host4WASI5INodeD2Ev.exit, %bb.f
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN8WasmEdge4Host4WASI5INodeD2Ev.exit ]
  store i8 %.sink, ptr %0, align 8, !tbaa !34
  ret void

bb.h:                                             ; preds = %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_19openFlagsE15__wasi_oflags_t16__wasi_fdflags_tNS1_3VFS5FlagsE.exit
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #23
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i16 @_ZN8WasmEdge4Host4WASI6detail9fromErrNoEi(i32 noundef %0) local_unnamed_addr #11 comdat {
switch.lookup:
  %i.a = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN8WasmEdge4Host4WASI6detail9fromErrNoEi, i64 %i.a
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  ret i16 %switch.ext
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, -65535) i32 @_ZNK8WasmEdge4Host4WASI5INode8fdAdviseEmm15__wasi_advice_t(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i64 noundef %1, i64 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
switch.lookup:
  %i.a = load i32, ptr %0, align 8, !tbaa !17
  %i.b = zext nneg i8 %3 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK8WasmEdge4Host4WASI5INode8fdAdviseEmm15__wasi_advice_t, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.c = tail call i32 @posix_fadvise(i32 noundef %i.a, i64 noundef %1, i64 noundef %2, i32 noundef %switch.ext) #24
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %switch.lookup
  %i.d = tail call ptr @__errno_location() #25
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32
  %i.f = tail call noundef zeroext i16 @_ZN8WasmEdge4Host4WASI6detail9fromErrNoEi(i32 noundef %i.e) #24
  %i.g = zext i16 %i.f to i32
  %i.h = shl nuw i32 %i.g, 16
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.05.0.insert.insert = phi i32 [ %i.h, %bb.a ], [ 1, %switch.lookup ]
  ret i32 %.sroa.05.0.insert.insert
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, -65535) i32 @_ZNK8WasmEdge4Host4WASI5INode10fdAllocateEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !17
  %i.b = invoke i32 @posix_fallocate(i32 noundef %i.a, i64 noundef %1, i64 noundef %2)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i16 @_ZN8WasmEdge4Host4WASI6detail9fromErrNoEi(i32 noundef %i.b) #24
  %i.d = zext i16 %i.c to i32
  %i.e = shl nuw i32 %i.d, 16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.05.0.insert.insert = phi i32 [ %i.e, %bb.c ], [ 1, %bb.b ]
  ret i32 %.sroa.05.0.insert.insert

bb.e:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #23
  unreachable
}

declare i32 @posix_fallocate(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, -65535) i32 @_ZNK8WasmEdge4Host4WASI5INode10fdDatasyncEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !17
  %i.b = invoke i32 @fdatasync(i32 noundef %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @__errno_location() #25
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32
  %i.e = tail call noundef zeroext i16 @_ZN8WasmEdge4Host4WASI6detail9fromErrNoEi(i32 noundef %i.d) #24
  %i.f = zext i16 %i.e to i32
  %i.g = shl nuw i32 %i.f, 16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.02.0.insert.insert = phi i32 [ %i.g, %bb.c ], [ 1, %bb.b ]
  ret i32 %.sroa.02.0.insert.insert

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #23
  unreachable
}

declare i32 @fdatasync(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, -65534) i32 @_ZNK8WasmEdge4Host4WASI5INode11fdFdstatGetER15__wasi_fdstat_t(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) initializes((8, 153)) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i8 0, i64 144, i1 false)
  store i8 1, ptr %i.b, align 8, !tbaa !31
  %i.c = load i32, ptr %0, align 8, !tbaa !17
  %i.d = tail call i32 @fstat(i32 noundef %i.c, ptr noundef nonnull %i.a) #24
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZNK8WasmEdge4Host4WASI5INode10updateStatEv.exit.thread, label %_ZNK8WasmEdge4Host4WASI5INode10updateStatEv.exit

_ZNK8WasmEdge4Host4WASI5INode10updateStatEv.exit: ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #25
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32
  %i.g = tail call noundef zeroext i16 @_ZN8WasmEdge4Host4WASI6detail9fromErrNoEi(i32 noundef %i.f) #24 ; 2 uses
  %.sroa.524.sroa.5.0.extract.shift = and i16 %i.g, -256
  br label %bb.f

_ZNK8WasmEdge4Host4WASI5INode10updateStatEv.exit.thread: ; preds = %bb.a
  %i.h = load i32, ptr %0, align 8, !tbaa !17
  %i.i = invoke i32 (i32, i32, ...) @fcntl(i32 noundef %i.h, i32 noundef 3)
          to label %bb.b unwind label %bb.g       ; 5 uses

bb.b:                                             ; preds = %_ZNK8WasmEdge4Host4WASI5INode10updateStatEv.exit.thread
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !43
  %i.m = lshr i32 %i.l, 12
  %i.n = and i32 %i.m, 15
  %switch.tableidx = add nsw i32 %i.n, -2         ; 2 uses
  %i.o = icmp ult i32 %switch.tableidx, 11
  br i1 %i.o, label %switch.lookup, label %_ZNK8WasmEdge4Host4WASI5INode14unsafeFiletypeEv.exit

switch.lookup:                                    ; preds = %bb.c
  %i.p = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK8WasmEdge4Host4WASI5INode15pathFilestatGetENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER17__wasi_filestat_t, i64 %i.p
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZNK8WasmEdge4Host4WASI5INode14unsafeFiletypeEv.exit

_ZNK8WasmEdge4Host4WASI5INode14unsafeFiletypeEv.exit: ; preds = %bb.c, %switch.lookup
  %.0.i.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.c ]
  store i8 %.0.i.i, ptr %1, align 8, !tbaa !191
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %2 = trunc i32 %i.i to i16
  %3 = lshr i16 %2, 10
  %spec.store.select = and i16 %3, 1
  %4 = trunc i32 %i.i to i16
  %5 = lshr i16 %4, 11
  %i.r = and i16 %5, 2
  %spec.select = or disjoint i16 %spec.store.select, %i.r
  %6 = trunc i32 %i.i to i16
  %7 = lshr i16 %6, 9
  %i.s = and i16 %7, 4
  %i.t = or disjoint i16 %spec.select, %i.s       ; 2 uses
  store i16 %i.t, ptr %i.q, align 2
  %i.u = and i32 %i.i, 1052672
  %.not17 = icmp eq i32 %i.u, 0
  br i1 %.not17, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNK8WasmEdge4Host4WASI5INode14unsafeFiletypeEv.exit
  %i.v = or disjoint i16 %i.t, 24
  store i16 %i.v, ptr %i.q, align 2, !tbaa !192
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.w = tail call ptr @__errno_location() #25
  %i.x = load i32, ptr %i.w, align 4, !tbaa !32
  %i.y = tail call noundef zeroext i16 @_ZN8WasmEdge4Host4WASI6detail9fromErrNoEi(i32 noundef %i.x) #24 ; 2 uses
  %.sroa.524.sroa.5.0.extract.shift26 = and i16 %i.y, -256
  br label %bb.f

bb.f:                                             ; preds = %_ZNK8WasmEdge4Host4WASI5INode14unsafeFiletypeEv.exit, %bb.d, %bb.e, %_ZNK8WasmEdge4Host4WASI5INode10updateStatEv.exit
  %.sroa.023.2 = phi i32 [ 0, %_ZNK8WasmEdge4Host4WASI5INode10updateStatEv.exit ], [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %_ZNK8WasmEdge4Host4WASI5INode14unsafeFiletypeEv.exit ]
  %.sroa.524.sroa.0.2 = phi i16 [ %i.g, %_ZNK8WasmEdge4Host4WASI5INode10updateStatEv.exit ], [ %i.y, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNK8WasmEdge4Host4WASI5INode14unsafeFiletypeEv.exit ]
  %.sroa.524.sroa.5.2 = phi i16 [ %.sroa.524.sroa.5.0.extract.shift, %_ZNK8WasmEdge4Host4WASI5INode10updateStatEv.exit ], [ %.sroa.524.sroa.5.0.extract.shift26, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNK8WasmEdge4Host4WASI5INode14unsafeFiletypeEv.exit ]
  %.sroa.524.sroa.0.0.insert.ext = and i16 %.sroa.524.sroa.0.2, 255
  %.sroa.524.sroa.0.0.insert.insert = or disjoint i16 %.sroa.524.sroa.5.2, %.sroa.524.sroa.0.0.insert.ext
  %.sroa.524.0.insert.ext = zext i16 %.sroa.524.sroa.0.0.insert.insert to i32
  %.sroa.524.0.insert.shift = shl nuw i32 %.sroa.524.0.insert.ext, 16
  %.sroa.023.0.insert.insert = or disjoint i32 %.sroa.524.0.insert.shift, %.sroa.023.2
  ret i32 %.sroa.023.0.insert.insert

bb.g:                                             ; preds = %_ZNK8WasmEdge4Host4WASI5INode10updateStatEv.exit.thread
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #23
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, -65535) i32 @_ZNK8WasmEdge4Host4WASI5INode10updateStatEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) initializes((8, 153)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i8 0, i64 144, i1 false)
  store i8 1, ptr %i.b, align 8, !tbaa !31
  %i.c = load i32, ptr %0, align 8, !tbaa !17
  %i.d = tail call i32 @fstat(i32 noundef %i.c, ptr noundef nonnull %i.a) #24
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
  %.sroa.01.0.insert.insert = phi i32 [ %i.i, %bb.b ], [ 1, %bb.a ]
  ret i32 %.sroa.01.0.insert.insert
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext range(i8 0, 8) i8 @_ZNK8WasmEdge4Host4WASI5INode14unsafeFiletypeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43
  %i.c = lshr i32 %i.b, 12
  %i.d = and i32 %i.c, 15
  %switch.tableidx = add nsw i32 %i.d, -2         ; 2 uses
  %i.e = icmp ult i32 %switch.tableidx, 11
  br i1 %i.e, label %switch.lookup, label %_ZN8WasmEdge4Host4WASI6detail12fromFileTypeEj.exit

switch.lookup:                                    ; preds = %bb.a
  %i.f = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK8WasmEdge4Host4WASI5INode15pathFilestatGetENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER17__wasi_filestat_t, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN8WasmEdge4Host4WASI6detail12fromFileTypeEj.exit

_ZN8WasmEdge4Host4WASI6detail12fromFileTypeEj.exit: ; preds = %bb.a, %switch.lookup
  %.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.a ]
  ret i8 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, -65535) i32 @_ZNK8WasmEdge4Host4WASI5INode16fdFdstatSetFlagsE16__wasi_fdflags_t(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i16 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i16 %1, 9
  %i.b = and i16 %i.a, 2048
  %i.c = shl i16 %1, 10
  %i.d = and i16 %i.c, 1024
  %.120 = or disjoint i16 %i.b, %i.d
  %i.e = shl i16 %1, 11
  %i.f = and i16 %i.e, 4096
  %.221 = or disjoint i16 %.120, %i.f
  %.2 = zext nneg i16 %.221 to i32                ; 2 uses
  %i.g = or i32 %.2, 1052672
  %i.h = and i16 %1, 24
  %i.i = icmp eq i16 %i.h, 0
  %.4 = select i1 %i.i, i32 %.2, i32 %i.g
  %i.j = load i32, ptr %0, align 8, !tbaa !17
  %i.k = invoke i32 (i32, i32, ...) @fcntl(i32 noundef %i.j, i32 noundef 4, i32 noundef %.4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__errno_location() #25
  %i.m = load i32, ptr %i.l, align 4, !tbaa !32
  %i.n = tail call noundef zeroext i16 @_ZN8WasmEdge4Host4WASI6detail9fromErrNoEi(i32 noundef %i.m) #24
  %i.o = zext i16 %i.n to i32
  %i.p = shl nuw i32 %i.o, 16
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %.sroa.018.0.insert.insert = phi i32 [ %i.p, %bb.c ], [ 1, %bb.b ]
  ret i32 %.sroa.018.0.insert.insert

bb.d:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #23
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, -65535) i32 @_ZNK8WasmEdge4Host4WASI5INode13fdFilestatGetER17__wasi_filestat_t(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) initializes((8, 153)) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i8 0, i64 144, i1 false)
  store i8 1, ptr %i.b, align 8, !tbaa !31
  %i.c = load i32, ptr %0, align 8, !tbaa !17
  %i.d = tail call i32 @fstat(i32 noundef %i.c, ptr noundef nonnull %i.a) #24
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZNK8WasmEdge4Host4WASI5INode10updateStatEv.exit.thread, label %_ZNK8WasmEdge4Host4WASI5INode10updateStatEv.exit

_ZNK8WasmEdge4Host4WASI5INode10updateStatEv.exit: ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #25
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32
  %i.g = tail call noundef zeroext i16 @_ZN8WasmEdge4Host4WASI6detail9fromErrNoEi(i32 noundef %i.f) #24
  %i.h = zext i16 %i.g to i32
  %i.i = shl nuw i32 %i.h, 16
  br label %bb.d

_ZNK8WasmEdge4Host4WASI5INode10updateStatEv.exit.thread: ; preds = %bb.a
  %i.j = load i32, ptr %0, align 8, !tbaa !17
  %switch.i = icmp ult i32 %i.j, 3                ; 3 uses
  %i.k = load i64, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %.sink = select i1 %switch.i, i64 0, i64 %i.k
  %i.n = select i1 %switch.i, i64 0, i64 %i.m
  store i64 %.sink, ptr %1, align 8, !tbaa !193
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !194
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !43
  %i.r = lshr i32 %i.q, 12
  %i.s = and i32 %i.r, 15
  %switch.tableidx = add nsw i32 %i.s, -2         ; 2 uses
  %i.t = icmp ult i32 %switch.tableidx, 11
  br i1 %i.t, label %switch.lookup, label %_ZNK8WasmEdge4Host4WASI5INode14unsafeFiletypeEv.exit

switch.lookup:                                    ; preds = %_ZNK8WasmEdge4Host4WASI5INode10updateStatEv.exit.thread
  %i.u = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK8WasmEdge4Host4WASI5INode15pathFilestatGetENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER17__wasi_filestat_t, i64 %i.u
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZNK8WasmEdge4Host4WASI5INode14unsafeFiletypeEv.exit

_ZNK8WasmEdge4Host4WASI5INode14unsafeFiletypeEv.exit: ; preds = %_ZNK8WasmEdge4Host4WASI5INode10updateStatEv.exit.thread, %switch.lookup
  %.0.i.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %_ZNK8WasmEdge4Host4WASI5INode10updateStatEv.exit.thread ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %.0.i.i, ptr %i.v, align 8, !tbaa !46
  br i1 %switch.i, label %.thread40, label %bb.b

.thread40:                                        ; preds = %_ZNK8WasmEdge4Host4WASI5INode14unsafeFiletypeEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  br label %bb.c

bb.b:                                             ; preds = %_ZNK8WasmEdge4Host4WASI5INode14unsafeFiletypeEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.y, ptr %i.z, align 8, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !51
end_hunk_0
begin_hunk_1_@_ZNK8WasmEdge4Host4WASI5INode14pathUnlinkFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

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
  %.05494.in = phi ptr [ %i.a, %.lr.ph ], [ %i.da, %bb.n ]
  %.05494 = load ptr, ptr %.05494.in, align 8, !tbaa !249 ; 8 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bj = load i32, ptr %.05494, align 8, !tbaa !240
  %.not.i73 = trunc i32 %i.bj to i16              ; 3 uses
  %.2.i = and i16 %.not.i73, 7
  %12 = lshr i16 %.not.i73, 7
  %i.bk = and i16 %12, 8
  %.3.i = or disjoint i16 %i.bk, %.2.i
  %i.bl = shl i16 %.not.i73, 1
  %i.bm = and i16 %i.bl, 112
  %.6.i74 = or disjoint i16 %.3.i, %i.bm
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !255 ; 7 uses
  store i16 %.6.i74, ptr %i.bn, align 4, !tbaa !236
  %i.bo = getelementptr inbounds nuw i8, ptr %.05494, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !244
  %switch.cast = trunc i32 %i.bp to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 66048, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  store i8 %switch.masked, ptr %i.bq, align 1, !tbaa !243
  %i.br = getelementptr inbounds nuw i8, ptr %.05494, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !246
  %i.bt = zext nneg i32 %i.bs to i64
  %switch.gep124 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8WasmEdge4Host4WASI5INode11getAddrinfoESt17basic_string_viewIcSt11char_traitsIcEES6_RK17__wasi_addrinfo_tjN5cxx204spanIPS7_Lm18446744073709551615EEENSB_IP17__wasi_sockaddr_tLm18446744073709551615EEENSB_IPcLm18446744073709551615EEESI_Rj.9, i64 %i.bt
  %switch.load125 = load i8, ptr %switch.gep124, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i8 %switch.load125, ptr %i.bu, align 4, !tbaa !245
  %i.bv = getelementptr inbounds nuw i8, ptr %.05494, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !242
  %i.bx = zext nneg i32 %i.bw to i64
  %switch.gep111 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8WasmEdge4Host4WASI5INode11getAddrinfoESt17basic_string_viewIcSt11char_traitsIcEES6_RK17__wasi_addrinfo_tjN5cxx204spanIPS7_Lm18446744073709551615EEENSB_IP17__wasi_sockaddr_tLm18446744073709551615EEENSB_IPcLm18446744073709551615EEESI_Rj.6, i64 %i.bx
  %switch.load112 = load i8, ptr %switch.gep111, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  store i8 %switch.load112, ptr %i.by, align 2, !tbaa !241
  %i.bz = getelementptr inbounds nuw i8, ptr %.05494, i64 16 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !248 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !247
  %i.cc = getelementptr inbounds nuw i8, ptr %.05494, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !256 ; 3 uses
  %.not = icmp eq ptr %i.cd, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %switch.lookup109
  %i.ce = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cd) #29 ; 2 uses
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !257
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !65
  %i.cj = add i64 %i.ce, 1
  %i.ck = and i64 %i.cj, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr nonnull align 1 %i.cd, i64 %i.ck, i1 false)
  %.pre = load i32, ptr %i.bz, align 8, !tbaa !248
  br label %bb.m

bb.l:                                             ; preds = %switch.lookup109
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  store i32 0, ptr %i.cl, align 4, !tbaa !257
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cm = phi i32 [ %i.ca, %bb.l ], [ %.pre, %bb.k ]
  %.not58 = icmp eq i32 %i.cm, 0
  br i1 %.not58, label %bb.n, label %switch.lookup113

switch.lookup113:                                 ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.05494, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !258 ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !260 ; 2 uses
  %i.cr = zext nneg i16 %i.cq to i64
  %switch.gep114 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8WasmEdge4Host4WASI5INode11getAddrinfoESt17basic_string_viewIcSt11char_traitsIcEES6_RK17__wasi_addrinfo_tjN5cxx204spanIPS7_Lm18446744073709551615EEENSB_IP17__wasi_sockaddr_tLm18446744073709551615EEENSB_IPcLm18446744073709551615EEESI_Rj.6, i64 %i.cr
  %switch.load115 = load i8, ptr %switch.gep114, align 1
  %i.cs = zext nneg i16 %i.cq to i64
  %switch.gep116 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8WasmEdge4Host4WASI5INode11getAddrinfoESt17basic_string_viewIcSt11char_traitsIcEES6_RK17__wasi_addrinfo_tjN5cxx204spanIPS7_Lm18446744073709551615EEENSB_IP17__wasi_sockaddr_tLm18446744073709551615EEENSB_IPcLm18446744073709551615EEESI_Rj.7, i64 %i.cs
  %switch.load117 = load i8, ptr %switch.gep116, align 1 ; 2 uses
  %switch.ext118 = zext i8 %switch.load117 to i64
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !262
  store i8 %switch.load115, ptr %i.ct, align 4, !tbaa !264
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !65
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cv, ptr noundef nonnull align 2 dereferenceable(1) %i.cw, i64 %switch.ext118, i1 false)
  %i.cx = zext i8 %switch.load117 to i32
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !262
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 %i.cx, ptr %i.cz, align 4, !tbaa !265
  br label %bb.n

bb.n:                                             ; preds = %switch.lookup113, %bb.m
  %i.da = getelementptr inbounds nuw i8, ptr %.05494, i64 40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.db = load i32, ptr %10, align 4, !tbaa !32
  %i.dc = zext i32 %i.db to i64
  %i.dd = icmp samesign ult i64 %indvars.iv.next, %i.dc
  br i1 %i.dd, label %switch.lookup109, label %._crit_edge.loopexit, !llvm.loop !227

_ZN8WasmEdge4Host4WASI6detail12fromEAIErrNoEi.exit: ; preds = %switch.lookup, %._crit_edge
  %.sroa.490.sroa.0.0 = phi i32 [ 1, %._crit_edge ], [ %switch.load108, %switch.lookup ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %.not.i.i = icmp eq ptr %.sroa.05.1.i64, null
  br i1 %.not.i.i, label %_ZNSt4pairIPKcSt10unique_ptrIA_cSt14default_deleteIS3_EEED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZN8WasmEdge4Host4WASI6detail12fromEAIErrNoEi.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.05.1.i64) #28
  br label %_ZNSt4pairIPKcSt10unique_ptrIA_cSt14default_deleteIS3_EEED2Ev.exit

_ZNSt4pairIPKcSt10unique_ptrIA_cSt14default_deleteIS3_EEED2Ev.exit: ; preds = %_ZN8WasmEdge4Host4WASI6detail12fromEAIErrNoEi.exit, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  %.not.i.i81 = icmp eq ptr %.sroa.05.1.i, null
  br i1 %.not.i.i81, label %_ZNSt4pairIPKcSt10unique_ptrIA_cSt14default_deleteIS3_EEED2Ev.exit84, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i82

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i82: ; preds = %_ZNSt4pairIPKcSt10unique_ptrIA_cSt14default_deleteIS3_EEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.05.1.i) #28
  br label %_ZNSt4pairIPKcSt10unique_ptrIA_cSt14default_deleteIS3_EEED2Ev.exit84

_ZNSt4pairIPKcSt10unique_ptrIA_cSt14default_deleteIS3_EEED2Ev.exit84: ; preds = %_ZNSt4pairIPKcSt10unique_ptrIA_cSt14default_deleteIS3_EEED2Ev.exit, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i82
  ret i32 %.sroa.490.sroa.0.0

bb.o:                                             ; preds = %_ZN8WasmEdge4Host4WASI12_GLOBAL__N_126createNullTerminatedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit67
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #23
  unreachable
}

declare i32 @getaddrinfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @freeaddrinfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4Host4WASI5INode8sockOpenE23__wasi_address_family_t18__wasi_sock_type_t(ptr dead_on_unwind noalias nofree writable sret(%"class.cxx20::expected") align 8 captures(none) initializes((0, 1), (8, 10)) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %switch.tableidx = add i8 %1, -1                ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 3
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 28, ptr %i.b, align 8, !tbaa !37
  br label %bb.g

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN8WasmEdge4Host4WASI5INode8sockOpenE23__wasi_address_family_t18__wasi_sock_type_t, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  switch i8 %2, label %bb.d [
    i8 1, label %bb.e
    i8 2, label %bb.c
  ]

bb.c:                                             ; preds = %switch.lookup
  br label %bb.e

bb.d:                                             ; preds = %switch.lookup
  store i8 0, ptr %0, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 28, ptr %i.d, align 8, !tbaa !37
  br label %bb.g

bb.e:                                             ; preds = %switch.lookup, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 2, %switch.lookup ]
  %i.e = tail call i32 @socket(i32 noundef %switch.ext, i32 noundef %.0, i32 noundef 0) #24 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.f, label %_ZN8WasmEdge4Host4WASI5INodeD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @__errno_location() #25
  %i.h = load i32, ptr %i.g, align 4, !tbaa !32
  %i.i = tail call noundef zeroext i16 @_ZN8WasmEdge4Host4WASI6detail9fromErrNoEi(i32 noundef %i.h) #24
  store i8 0, ptr %0, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.i, ptr %i.j, align 8, !tbaa !37
  br label %bb.g

_ZN8WasmEdge4Host4WASI5INodeD2Ev.exit:            ; preds = %bb.e
  store i8 1, ptr %0, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.e, ptr %i.k, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 4
  %.sroa.13.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 0, ptr %.sroa.13.8..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, i8 0, i64 40, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN8WasmEdge4Host4WASI5INodeD2Ev.exit, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, -65535) i32 @_ZN8WasmEdge4Host4WASI5INode8sockBindE23__wasi_address_family_tN5cxx204spanIKhLm18446744073709551615EEEt(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i8 noundef zeroext %1, ptr nofree readonly captures(none) %2, i64 %3, i16 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_1
begin_hunk_2_@_ZNK8WasmEdge4Host4WASI5INode12sockRecvFromEN5cxx204spanINS4_IhLm18446744073709551615EEELm18446744073709551615EEE16__wasi_riflags_tP23__wasi_address_family_tS5_PtRjR16__wasi_roflags_t:bb.a
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.p = load ptr, ptr %.04888, align 8, !tbaa !57
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %11, i64 %.04987 ; 2 uses
  store ptr %i.p, ptr %i.q, align 16, !tbaa !59
  %i.r = getelementptr inbounds nuw i8, ptr %.04888, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %.04888, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %11, i64 %.04987 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.v, ptr %i.x, align 16, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %.04888, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !60
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !61
  %i.ab = add nuw nsw i64 %.04987, 2              ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.04888, i64 32 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !60
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = icmp ne ptr %6, null
  %spec.select60 = or i1 %i.ag, %i.af
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %12, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  br i1 %spec.select60, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %.thread, %bb.c
  %.sink93 = phi ptr [ null, %bb.c ], [ %12, %.thread ], [ %12, %bb.b ]
  %.sink = phi i32 [ 0, %bb.c ], [ 128, %.thread ], [ 128, %bb.b ]
  %i.ah = phi i1 [ false, %bb.c ], [ true, %.thread ], [ true, %bb.b ]
  store ptr %.sink93, ptr %13, align 8, !tbaa !89
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.sink, ptr %i.ai, align 8, !tbaa !90
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %11, ptr %i.aj, align 8, !tbaa !91
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i64 %.049.lcssa, ptr %i.ak, align 8, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.al, i8 0, i64 20, i1 false)
  %i.an = load i32, ptr %0, align 8, !tbaa !17
  %i.ao = invoke i64 @recvmsg(i32 noundef %i.an, ptr noundef nonnull %13, i32 noundef %.147)
          to label %bb.e unwind label %bb.ab      ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %.thread79, label %bb.f

.thread79:                                        ; preds = %bb.e
  %i.aq = tail call ptr @__errno_location() #25
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !32
  %i.as = call noundef zeroext i16 @_ZN8WasmEdge4Host4WASI6detail9fromErrNoEi(i32 noundef %i.ar) #24
  %i.at = zext i16 %i.as to i32
  %i.au = shl nuw i32 %i.at, 16
  br label %bb.aa

bb.f:                                             ; preds = %bb.e
  %i.av = trunc i64 %i.ao to i32
  store i32 %i.av, ptr %7, align 4, !tbaa !32
  br i1 %i.ah, label %bb.g, label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.aw = load i16, ptr %12, align 8, !tbaa !94
  switch i16 %i.aw, label %bb.aa [
    i16 0, label %bb.h
    i16 2, label %bb.k
    i16 10, label %bb.q
    i16 1, label %bb.w
  ]

bb.h:                                             ; preds = %bb.g
  %i.ax = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %bb.ab    ; 5 uses

.noexc:                                           ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.az = load atomic i32, ptr %i.ay monotonic, align 4
  %i.ba = icmp slt i32 %i.az, 4                   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  %i.bc = invoke noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104) %i.bb)
          to label %.noexc61 unwind label %bb.ab  ; 2 uses

.noexc61:                                         ; preds = %.noexc
  %or.cond.i.i.i.i = or i1 %i.ba, %i.bc
  br i1 %or.cond.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc61
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !95
  invoke void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %10, ptr %i.be, i64 %i.bg, i32 noundef 3, ptr nonnull @.str, i64 26)
          to label %.noexc62 unwind label %bb.ab

.noexc62:                                         ; preds = %bb.i
  invoke void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %i.ax, ptr noundef nonnull align 8 dereferenceable(96) %9, i1 noundef zeroext %i.ba, i1 noundef zeroext %i.bc)
          to label %.noexc63 unwind label %bb.ab

.noexc63:                                         ; preds = %.noexc62
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.j

bb.j:                                             ; preds = %.noexc63, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.z

bb.k:                                             ; preds = %bb.g
  br i1 %.not56, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %4, align 1, !tbaa !96
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !60
  %i.bj = icmp ugt i64 %i.bi, 3
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr %5, align 8, !tbaa !57
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.bm = load i32, ptr %i.bl, align 4
  store i32 %i.bm, ptr %i.bk, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not58 = icmp eq ptr %6, null
  br i1 %.not58, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !79
  store i16 %i.bo, ptr %6, align 2, !tbaa !97
  br label %bb.z

bb.q:                                             ; preds = %bb.g
  br i1 %.not56, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 2, ptr %4, align 1, !tbaa !96
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !60
  %i.br = icmp ugt i64 %i.bq, 15
  br i1 %i.br, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bs = load ptr, ptr %5, align 8, !tbaa !57
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 16, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not57 = icmp eq ptr %6, null
  br i1 %.not57, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !83
  store i16 %i.bv, ptr %6, align 2, !tbaa !97
  br label %bb.z

bb.w:                                             ; preds = %bb.g
  br i1 %.not56, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 3, ptr %4, align 1, !tbaa !96
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !60
  %i.by = icmp ugt i64 %i.bx, 107
  br i1 %i.by, label %.thread82, label %bb.aa

.thread82:                                        ; preds = %bb.y
  %i.bz = load ptr, ptr %5, align 8, !tbaa !57
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(108) %i.bz, ptr noundef nonnull align 2 dereferenceable(108) %i.ca, i64 108, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %.thread82, %bb.u, %bb.v, %bb.o, %bb.p, %bb.j, %bb.f
  %i.cb = load i32, ptr %i.am, align 8, !tbaa !272
  %14 = trunc i32 %i.cb to i16
  %15 = lshr i16 %14, 5
  %spec.store.select = and i16 %15, 1
  store i16 %spec.store.select, ptr %8, align 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.g, %bb.y, %.thread79, %bb.z
  %.sroa.071.0.insert.insert = phi i32 [ %i.au, %.thread79 ], [ 1835008, %bb.y ], [ 1, %bb.z ], [ 3407872, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  ret i32 %.sroa.071.0.insert.insert

bb.ab:                                            ; preds = %.noexc62, %bb.i, %.noexc, %bb.h, %bb.d
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #23
  unreachable
}

declare i64 @recvmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, -65535) i32 @_ZNK8WasmEdge4Host4WASI5INode8sockSendEN5cxx204spanINS4_IKhLm18446744073709551615EEELm18446744073709551615EEEtRj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree readonly captures(address) %1, i64 %2, i16 noundef zeroext %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZSt5visitIN8WasmEdge4Host4WASI11VarAddrSizeEJRSt7variantIJNS2_13SockEmptyAddrE16sockaddr_storage8sockaddr11sockaddr_in12sockaddr_in611sockaddr_unEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit.i:
  %5 = alloca [1024 x %struct.iovec], align 16    ; 6 uses
  %6 = alloca %struct.msghdr, align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %.not2668.i = icmp eq i64 %2, 0
  br i1 %.not2668.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZSt5visitIN8WasmEdge4Host4WASI11VarAddrSizeEJRSt7variantIJNS2_13SockEmptyAddrE16sockaddr_storage8sockaddr11sockaddr_in12sockaddr_in611sockaddr_unEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit.i
  %i.a = add i64 %2, 1152921504606846975          ; 2 uses
  %i.b = and i64 %i.a, 1152921504606846975        ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 1                  ; 2 uses
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.c, 2305843009213693950
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.e = and i64 %i.a, 1
  %lcmp.mod.not.not = icmp eq i64 %i.e, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %._crit_edge.i

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.02270.i.epil.init = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.ae, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.02369.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ad, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod8 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.f = load ptr, ptr %.02270.i.epil.init, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.02369.i.epil.init ; 2 uses
  store ptr %i.f, ptr %i.g, align 16, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %.02270.i.epil.init, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !61
  %i.k = add nuw nsw i64 %.02369.i.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %_ZSt5visitIN8WasmEdge4Host4WASI11VarAddrSizeEJRSt7variantIJNS2_13SockEmptyAddrE16sockaddr_storage8sockaddr11sockaddr_in12sockaddr_in611sockaddr_unEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit.i
  %.023.lcssa.i = phi i64 [ 0, %_ZSt5visitIN8WasmEdge4Host4WASI11VarAddrSizeEJRSt7variantIJNS2_13SockEmptyAddrE16sockaddr_storage8sockaddr11sockaddr_in12sockaddr_in611sockaddr_unEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit.i ], [ %i.ad, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.k, %.lr.ph.i.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr null, ptr %6, align 8, !tbaa !89
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.l, align 8, !tbaa !90
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %5, ptr %i.m, align 8, !tbaa !91
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %.023.lcssa.i, ptr %i.n, align 8, !tbaa !92
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = load i32, ptr %0, align 8, !tbaa !17
  %i.q = invoke i64 @sendmsg(i32 noundef %i.p, ptr noundef nonnull %6, i32 noundef 16384)
          to label %bb.a unwind label %bb.c       ; 2 uses

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.02270.i = phi ptr [ %1, %.lr.ph.i.preheader.new ], [ %i.ae, %.lr.ph.i ] ; 5 uses
  %.02369.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ad, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.r = load ptr, ptr %.02270.i, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.02369.i ; 2 uses
  store ptr %i.r, ptr %i.s, align 16, !tbaa !59
  %i.t = getelementptr inbounds nuw i8, ptr %.02270.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !61
  %i.w = getelementptr inbounds nuw i8, ptr %.02270.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.02369.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.x, ptr %i.z, align 16, !tbaa !59
  %i.aa = getelementptr inbounds nuw i8, ptr %.02270.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !61
  %i.ad = add nuw nsw i64 %.02369.i, 2            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.02270.i, i64 32 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i

bb.a:                                             ; preds = %._crit_edge.i
  %i.af = icmp slt i64 %i.q, 0
  br i1 %i.af, label %.thread65.i, label %bb.b

.thread65.i:                                      ; preds = %bb.a
  %i.ag = tail call ptr @__errno_location() #25
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !32
  %i.ai = call noundef zeroext i16 @_ZN8WasmEdge4Host4WASI6detail9fromErrNoEi(i32 noundef %i.ah) #24
  %i.aj = zext i16 %i.ai to i32
  %i.ak = shl nuw i32 %i.aj, 16
  br label %_ZNK8WasmEdge4Host4WASI5INode10sockSendToEN5cxx204spanINS4_IKhLm18446744073709551615EEELm18446744073709551615EEEt23__wasi_address_family_tS6_tRj.exit

bb.b:                                             ; preds = %bb.a
  %i.al = trunc i64 %i.q to i32
  store i32 %i.al, ptr %4, align 4, !tbaa !32
  br label %_ZNK8WasmEdge4Host4WASI5INode10sockSendToEN5cxx204spanINS4_IKhLm18446744073709551615EEELm18446744073709551615EEEt23__wasi_address_family_tS6_tRj.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #23
  unreachable

_ZNK8WasmEdge4Host4WASI5INode10sockSendToEN5cxx204spanINS4_IKhLm18446744073709551615EEELm18446744073709551615EEEt23__wasi_address_family_tS6_tRj.exit: ; preds = %.thread65.i, %bb.b
  %.sroa.036.0.insert.insert.i = phi i32 [ %i.ak, %.thread65.i ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret i32 %.sroa.036.0.insert.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, -65535) i32 @_ZNK8WasmEdge4Host4WASI5INode10sockSendToEN5cxx204spanINS4_IKhLm18446744073709551615EEELm18446744073709551615EEEt23__wasi_address_family_tS6_tRj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree readonly captures(address) %1, i64 %2, i16 noundef zeroext %3, i8 noundef zeroext %4, ptr nofree noundef readonly byval(%"struct.cxx20::span.33") align 8 captures(none) %5, i16 noundef zeroext %6, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::variant", align 8      ; 19 uses
  %9 = alloca [1024 x %struct.iovec], align 16    ; 6 uses
  %10 = alloca %struct.msghdr, align 8            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !64   ; 4 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %_ZSt5visitIN8WasmEdge4Host4WASI11VarAddrSizeEJRSt7variantIJNS2_13SockEmptyAddrE16sockaddr_storage8sockaddr11sockaddr_in12sockaddr_in611sockaddr_unEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %5, align 8               ; 7 uses
  switch i8 %4, label %.unreachabledefault.i [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

.unreachabledefault.i:                            ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %6)
  %i.d = icmp ugt i64 %i.c, 3
  tail call void @llvm.assume(i1 %i.d)
  %i.e = load i32, ptr %.val, align 1, !noalias !275
  store i16 2, ptr %8, align 8
  %.sroa.6.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %8, i64 2
  store i16 %rev.i.i, ptr %.sroa.6.0..sroa_idx45, align 2
  %.sroa.9.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.e, ptr %.sroa.9.0..sroa_idx46, align 4
  %.sroa.11.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %.sroa.11.0..sroa_idx47, align 8
  br label %_ZSt5visitIN8WasmEdge4Host4WASI11VarAddrSizeEJRSt7variantIJNS2_13SockEmptyAddrE16sockaddr_storage8sockaddr11sockaddr_in12sockaddr_in611sockaddr_unEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit.sink.split

bb.d:                                             ; preds = %bb.b
  %rev.i20.i = tail call noundef i16 @llvm.bswap.i16(i16 %6)
  %i.f = icmp ugt i64 %i.c, 15
  tail call void @llvm.assume(i1 %i.f)
  %.sroa.6.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %8, i64 2
  %.sroa.9.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.sroa.11.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.g = load <2 x i64>, ptr %.val, align 1
  store i16 10, ptr %8, align 8
  store i16 %rev.i20.i, ptr %.sroa.6.0..sroa_idx59, align 2
  store i32 0, ptr %.sroa.9.0..sroa_idx60, align 4
  store <2 x i64> %i.g, ptr %.sroa.11.0..sroa_idx61, align 8
  %.sroa.1332.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 0, ptr %.sroa.1332.0..sroa_idx63, align 8
  br label %_ZSt5visitIN8WasmEdge4Host4WASI11VarAddrSizeEJRSt7variantIJNS2_13SockEmptyAddrE16sockaddr_storage8sockaddr11sockaddr_in12sockaddr_in611sockaddr_unEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit.sink.split

bb.e:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.c, 107
  tail call void @llvm.assume(i1 %i.h)
  %.sroa.6.2.copyload = load i16, ptr %.val, align 1
  %.sroa.9.2..val.sroa_idx = getelementptr inbounds nuw i8, ptr %.val, i64 2
  %.sroa.9.2.copyload = load i32, ptr %.sroa.9.2..val.sroa_idx, align 1
  %.sroa.11.2..val.sroa_idx = getelementptr inbounds nuw i8, ptr %.val, i64 6
  %.sroa.1332.2..val.sroa_idx = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %.sroa.1332.2.copyload = load i32, ptr %.sroa.1332.2..val.sroa_idx, align 1
  %.sroa.14.2..val.sroa_idx = getelementptr inbounds nuw i8, ptr %.val, i64 26
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 28
end_hunk_2
begin_hunk_3_@_ZN8WasmEdge4Host4WASI6Poller4waitEv:bb.a
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !107 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !32
  %i.at = icmp eq i32 %i.ag, %i.as
  br i1 %i.at, label %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %bb.j
  %i.au = icmp eq i32 %i.ag, %i.ax
  br i1 %i.au, label %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %bb.i
  %.020.i.i.i.i = phi ptr [ %i.av, %bb.i ], [ %i.aq, %bb.h ]
  %i.av = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !107 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !32 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = urem i64 %i.ay, %i.al
  %.not19.i.i.i.i = icmp eq i64 %i.az, %i.am
  br i1 %.not19.i.i.i.i, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !2

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.j
  br label %.loopexit, !llvm.loop !2

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.preheader164, %..loopexit_crit_edge21.i.i.i.i, %bb.g
  %i.ba = load i32, ptr %0, align 8, !tbaa !17
  %i.bb = tail call i32 @epoll_ctl(i32 noundef %i.ba, i32 noundef 2, i32 noundef %i.ag, ptr noundef nonnull %0) #24 ; 0 uses
  br label %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit

_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit: ; preds = %bb.i, %bb.f, %bb.h, %.loopexit
  %.sroa.086.0 = load ptr, ptr %.sroa.086.099, align 8, !tbaa !107 ; 2 uses
  %.not90 = icmp eq ptr %.sroa.086.0, null
  br i1 %.not90, label %._crit_edge, label %bb.e

_ZNSt6vectorI11epoll_eventSaIS0_EE6resizeEm.exit: ; preds = %._ZNSt6vectorI11epoll_eventSaIS0_EE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIP11epoll_eventS0_EvT_S2_RSaIT0_E.exit.i.i, %bb.d, %bb.c
  %.pre-phi = phi i64 [ %.pre125, %._ZNSt6vectorI11epoll_eventSaIS0_EE6resizeEm.exit_crit_edge ], [ %i.x, %_ZSt8_DestroyIP11epoll_eventS0_EvT_S2_RSaIT0_E.exit.i.i ], [ %i.x, %bb.d ], [ %i.x, %bb.c ]
  %i.bc = phi ptr [ %.pre118, %._ZNSt6vectorI11epoll_eventSaIS0_EE6resizeEm.exit_crit_edge ], [ %i.ad, %_ZSt8_DestroyIP11epoll_eventS0_EvT_S2_RSaIT0_E.exit.i.i ], [ %i.u, %bb.d ], [ %i.u, %bb.c ]
  %i.bd = phi ptr [ %.pre, %._ZNSt6vectorI11epoll_eventSaIS0_EE6resizeEm.exit_crit_edge ], [ %i.v, %_ZSt8_DestroyIP11epoll_eventS0_EvT_S2_RSaIT0_E.exit.i.i ], [ %i.v, %bb.d ], [ %i.v, %bb.c ]
  %i.be = load i32, ptr %0, align 8, !tbaa !17
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.bf, %.pre-phi
  %i.bh = sdiv exact i64 %i.bg, 12
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = invoke i32 @epoll_wait(i32 noundef %i.be, ptr noundef %i.bd, i32 noundef %i.bi, i32 noundef -1)
          to label %bb.k unwind label %bb.al      ; 3 uses

bb.k:                                             ; preds = %_ZNSt6vectorI11epoll_eventSaIS0_EE6resizeEm.exit
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.k
  %.not112 = icmp eq i32 %i.bj, 0
  br i1 %.not112, label %._crit_edge102, label %.lr.ph101

.lr.ph101:                                        ; preds = %.preheader
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 72
  %wide.trip.count = zext nneg i32 %i.bj to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bp = tail call ptr @__errno_location() #25
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !32
  %i.br = tail call noundef zeroext i16 @_ZN8WasmEdge4Host4WASI6detail9fromErrNoEi(i32 noundef %i.bq) #24
  %i.bs = load ptr, ptr %i.l, align 8, !tbaa !285 ; 2 uses
  %i.bt = load ptr, ptr %i.m, align 8, !tbaa !285 ; 2 uses
  %.not92108 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not92108, label %_ZNSt6vectorI11epoll_eventSaIS0_EE5clearEv.exit, label %.lr.ph111

.lr.ph111:                                        ; preds = %bb.l, %.lr.ph111
  %.sroa.080.0109 = phi ptr [ %i.bw, %.lr.ph111 ], [ %i.bs, %bb.l ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.080.0109, i64 32
  store i8 1, ptr %i.bu, align 8, !tbaa !162
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.080.0109, i64 8
  store i16 %i.br, ptr %i.bv, align 8, !tbaa !165
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.080.0109, i64 40 ; 2 uses
  %.not92 = icmp eq ptr %i.bw, %i.bt
  br i1 %.not92, label %_ZNSt6vectorI11epoll_eventSaIS0_EE5clearEv.exit, label %.lr.ph111

._crit_edge102:                                   ; preds = %bb.y, %.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !122 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !122 ; 2 uses
  %.not91103 = icmp eq ptr %i.by, %i.ca
  br i1 %.not91103, label %._crit_edge107, label %.lr.ph106

.lr.ph106:                                        ; preds = %._crit_edge102
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.ak

bb.m:                                             ; preds = %.lr.ph101, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph101 ], [ %indvars.iv.next, %bb.y ] ; 2 uses
  %i.cc = load ptr, ptr %i.k, align 8, !tbaa !153
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %i.cc, i64 %indvars.iv ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 4 uses
  %i.cf = load i64, ptr %i.bl, align 8, !tbaa !173
  %.not.not.i.i39 = icmp eq i64 %i.cf, 0
  %i.cg = load i32, ptr %i.ce, align 4            ; 4 uses
  br i1 %.not.not.i.i39, label %.preheader161, label %bb.o

.preheader161:                                    ; preds = %bb.m, %bb.n
  %.sroa.06.0.in.i.i47 = phi ptr [ %.sroa.06.0.i.i48, %bb.n ], [ %i.bo, %bb.m ]
  %.sroa.06.0.i.i48 = load ptr, ptr %.sroa.06.0.in.i.i47, align 8, !tbaa !107 ; 4 uses
  %.not.i.i49 = icmp eq ptr %.sroa.06.0.i.i48, null
  br i1 %.not.i.i49, label %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit50, label %bb.n

bb.n:                                             ; preds = %.preheader161
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i48, i64 8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !32
  %i.cj = icmp eq i32 %i.cg, %i.ci
  br i1 %i.cj, label %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit50, label %.preheader161, !llvm.loop !4

bb.o:                                             ; preds = %bb.m
  %i.ck = sext i32 %i.cg to i64
  %i.cl = load i64, ptr %i.bn, align 8, !tbaa !148 ; 2 uses
  %i.cm = urem i64 %i.ck, %i.cl                   ; 2 uses
  %i.cn = load ptr, ptr %i.bm, align 8, !tbaa !147
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i.i40 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i40, label %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit50, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !107 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !32
  %i.ct = icmp eq i32 %i.cg, %i.cs
  br i1 %i.ct, label %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit50, label %.lr.ph.i.i.i.i41

bb.q:                                             ; preds = %bb.r
  %i.cu = icmp eq i32 %i.cg, %i.cx
  br i1 %i.cu, label %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit50, label %.lr.ph.i.i.i.i41, !llvm.loop !2

.lr.ph.i.i.i.i41:                                 ; preds = %bb.p, %bb.q
  %.020.i.i.i.i42 = phi ptr [ %i.cv, %bb.q ], [ %i.cq, %bb.p ]
  %i.cv = load ptr, ptr %.020.i.i.i.i42, align 8, !tbaa !107 ; 4 uses
  %.not18.i.i.i.i43 = icmp eq ptr %i.cv, null
  br i1 %.not18.i.i.i.i43, label %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit50, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i41
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !32 ; 2 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = urem i64 %i.cy, %i.cl
  %.not19.i.i.i.i44 = icmp eq i64 %i.cz, %i.cm
  br i1 %.not19.i.i.i.i44, label %bb.q, label %..loopexit_crit_edge21.i.i.i.i45, !llvm.loop !2

..loopexit_crit_edge21.i.i.i.i45:                 ; preds = %bb.r
  br label %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit50, !llvm.loop !2

_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit50: ; preds = %.lr.ph.i.i.i.i41, %bb.q, %bb.n, %.preheader161, %..loopexit_crit_edge21.i.i.i.i45, %bb.p, %bb.o
  %.sroa.06.1.i.i46 = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i45 ], [ null, %.preheader161 ], [ %i.cq, %bb.p ], [ null, %bb.o ], [ %.sroa.06.0.i.i48, %bb.n ], [ %i.cv, %bb.q ], [ null, %.lr.ph.i.i.i.i41 ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.1.i.i46) ]
  %i.da = load i32, ptr %i.cd, align 4, !tbaa !171 ; 7 uses
  %i.db = and i32 %i.da, 5
  %.not = icmp ne i32 %i.db, 0
  %i.dc = and i32 %i.da, 1
  %.not30 = icmp eq i32 %i.dc, 0
  br i1 %.not30, label %bb.s, label %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit50._crit_edge

_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit50._crit_edge: ; preds = %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit50
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i46, i64 16
  %.pre119 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !169
  br label %bb.u

bb.s:                                             ; preds = %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit50
  %i.dd = and i32 %i.da, 20
  %or.cond.not = icmp eq i32 %i.dd, 16
  br i1 %or.cond.not, label %bb.t, label %"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit"

bb.t:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i46, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !169 ; 2 uses
  %.not32 = icmp eq ptr %i.df, null
  br i1 %.not32, label %"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit", label %bb.u

bb.u:                                             ; preds = %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit50._crit_edge, %bb.t
  %i.dg = phi ptr [ %.pre119, %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit50._crit_edge ], [ %i.df, %bb.t ] ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 10
  %i.di = load i8, ptr %i.dh, align 2, !tbaa !164
  %i.dj = icmp eq i8 %i.di, 0
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store i8 1, ptr %i.dk, align 8, !tbaa !162
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i16 0, ptr %i.dl, align 8, !tbaa !165
  br i1 %i.dj, label %"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %2 = trunc i32 %i.da to i16
  %3 = lshr i16 %2, 4
  %spec.store.select.i = and i16 %3, 1
  store i16 %spec.store.select.i, ptr %i.dn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i32 0, ptr %i.d, align 4, !tbaa !32
  %i.do = load i32, ptr %i.ce, align 4, !tbaa !67
  %i.dp = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.do, i64 noundef 21531, ptr noundef nonnull %i.d) #24
  %i.dq = icmp eq i32 %i.dp, 0
  %i.dr = load i32, ptr %i.d, align 4
  %narrow.i = select i1 %i.dq, i32 1, i32 %i.dr
  %storemerge.i = sext i32 %narrow.i to i64
  store i64 %storemerge.i, ptr %i.dm, align 8, !tbaa !286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %.pre120 = load i32, ptr %i.cd, align 4, !tbaa !171
  br label %"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit"

"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit": ; preds = %bb.u, %bb.v, %bb.t, %bb.s
  %i.ds = phi i32 [ %.pre120, %bb.v ], [ %i.da, %bb.s ], [ %i.da, %bb.t ], [ %i.da, %bb.u ] ; 3 uses
  %i.dt = and i32 %i.ds, 4
  %.not33 = icmp eq i32 %i.dt, 0
  br i1 %.not33, label %bb.w, label %"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit._ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit57_crit_edge"

"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit._ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit57_crit_edge": ; preds = %"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit"
  %.phi.trans.insert121 = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i46, i64 24
  %.pre122 = load ptr, ptr %.phi.trans.insert121, align 8, !tbaa !174
  br label %"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit57"

bb.w:                                             ; preds = %"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit"
  %i.du = and i32 %i.ds, 16
  %.not34 = icmp eq i32 %i.du, 0
  %or.cond37 = or i1 %.not, %.not34
  br i1 %or.cond37, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i46, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !174 ; 2 uses
  %.not35 = icmp eq ptr %i.dw, null
  br i1 %.not35, label %bb.y, label %"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit57"

"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit57": ; preds = %"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit._ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit57_crit_edge", %bb.x
  %i.dx = phi ptr [ %.pre122, %"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit._ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit57_crit_edge" ], [ %i.dw, %bb.x ] ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  store i8 1, ptr %i.dy, align 8, !tbaa !162
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i16 0, ptr %i.dz, align 8, !tbaa !165
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %4 = trunc i32 %i.ds to i16
  %5 = lshr i16 %4, 4
  %spec.store.select1.i54 = and i16 %5, 1
  store i16 %spec.store.select1.i54, ptr %i.eb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 4, ptr %i.b, align 4, !tbaa !32
  %i.ec = load i32, ptr %i.ce, align 4, !tbaa !67
  %i.ed = call i32 @getsockopt(i32 noundef %i.ec, i32 noundef 1, i32 noundef 7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #24
  %i.ee = icmp ne i32 %i.ed, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 0, ptr %i.c, align 4, !tbaa !32
  %i.ef = load i32, ptr %i.ce, align 4, !tbaa !67
  %i.eg = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.ef, i64 noundef 21521, ptr noundef nonnull %i.c) #24
  %i.eh = icmp ne i32 %i.eg, 0
  %.1.i55 = select i1 %i.eh, i1 true, i1 %i.ee
  %i.ei = load i32, ptr %i.a, align 4
  %i.ej = load i32, ptr %i.c, align 4
  %i.ek = sub nsw i32 %i.ei, %i.ej
  %i.el = sext i32 %i.ek to i64
  %storemerge22.i56 = select i1 %.1.i55, i64 1, i64 %i.el
  store i64 %storemerge22.i56, ptr %i.ea, align 8, !tbaa !286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.y

bb.y:                                             ; preds = %"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit57", %bb.x, %bb.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge102, label %bb.m, !llvm.loop !283

._crit_edge107:                                   ; preds = %bb.ak, %._crit_edge102
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.en, i64 16, i1 false), !tbaa.struct !288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 16, i1 false), !tbaa.struct !288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !288
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.ep = load ptr, ptr %i.em, align 8, !tbaa !147 ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  %i.es = load ptr, ptr %i.e, align 8, !tbaa !147 ; 6 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.eu = icmp eq ptr %i.es, %i.et                ; 2 uses
  br i1 %i.er, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %._crit_edge107
  br i1 %i.eu, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.es, ptr %i.em, align 8, !tbaa !147
  store ptr %i.et, ptr %i.e, align 8, !tbaa !147
  br label %bb.ae

bb.ab:                                            ; preds = %._crit_edge107
  br i1 %i.eu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.ep, ptr %i.e, align 8, !tbaa !147
  store ptr %i.eq, ptr %i.em, align 8, !tbaa !147
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  store ptr %i.es, ptr %i.em, align 8, !tbaa !289
  store ptr %i.ep, ptr %i.e, align 8, !tbaa !289
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.z
  %i.ev = phi ptr [ %i.ep, %bb.ad ], [ %i.ep, %bb.ac ], [ %i.et, %bb.aa ], [ %i.es, %bb.z ]
  %i.ew = phi ptr [ %i.es, %bb.ad ], [ %i.eq, %bb.ac ], [ %i.es, %bb.aa ], [ %i.ep, %bb.z ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !51
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !51 ; 2 uses
  store i64 %i.fa, ptr %i.ex, align 8, !tbaa !51
  store i64 %i.ez, ptr %i.ey, align 8, !tbaa !51
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !106 ; 2 uses
  %i.fd = load ptr, ptr %i.f, align 8, !tbaa !106 ; 3 uses
  store ptr %i.fd, ptr %i.fb, align 8, !tbaa !106
  store ptr %i.fc, ptr %i.f, align 8, !tbaa !106
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !51
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !51
  store i64 %i.fh, ptr %i.fe, align 8, !tbaa !51
  store i64 %i.fg, ptr %i.ff, align 8, !tbaa !51
  %i.fi = load ptr, ptr %i.eq, align 8, !tbaa !106
  %i.fj = load ptr, ptr %i.et, align 8, !tbaa !106
  store ptr %i.fj, ptr %i.eq, align 8, !tbaa !106
  store ptr %i.fi, ptr %i.et, align 8, !tbaa !106
  %.not.i.i.i.i58 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i58, label %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !32
  %i.fm = sext i32 %i.fl to i64
  %i.fn = urem i64 %i.fm, %i.fa
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.fn
  store ptr %i.fb, ptr %i.fo, align 8, !tbaa !106
  %.pre123 = load ptr, ptr %i.f, align 8, !tbaa !172
  br label %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i

_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %i.fp = phi ptr [ %.pre123, %bb.af ], [ %i.fc, %bb.ae ] ; 2 uses
  %.not.i16.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i16.i.i.i, label %_ZSt4swapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEvRSt13unordered_mapIT_T0_T1_T2_T3_ESK_.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load i64, ptr %i.ey, align 8, !tbaa !148
  %i.fs = load i32, ptr %i.fq, align 4, !tbaa !32
  %i.ft = sext i32 %i.fs to i64
  %i.fu = urem i64 %i.ft, %i.fr
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.fu
  store ptr %i.f, ptr %i.fv, align 8, !tbaa !106
  br label %_ZSt4swapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEvRSt13unordered_mapIT_T0_T1_T2_T3_ESK_.exit

_ZSt4swapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEvRSt13unordered_mapIT_T0_T1_T2_T3_ESK_.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i, %bb.ag
  %i.fw = load ptr, ptr %i.fb, align 8, !tbaa !172 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt4swapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEvRSt13unordered_mapIT_T0_T1_T2_T3_ESK_.exit, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.fx, %.lr.ph.i.i.i ], [ %i.fw, %_ZSt4swapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEvRSt13unordered_mapIT_T0_T1_T2_T3_ESK_.exit ] ; 2 uses
  %i.fx = load ptr, ptr %.06.i.i.i, align 8, !tbaa !107 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 32) #28
  %.not.i.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE5clearEv.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !284

_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE5clearEv.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre124 = load ptr, ptr %i.em, align 8, !tbaa !147
  br label %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE5clearEv.exit

_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE5clearEv.exit: ; preds = %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE5clearEv.exit.loopexit, %_ZSt4swapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEvRSt13unordered_mapIT_T0_T1_T2_T3_ESK_.exit
  %i.fy = phi ptr [ %.pre124, %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE5clearEv.exit.loopexit ], [ %i.ew, %_ZSt4swapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEvRSt13unordered_mapIT_T0_T1_T2_T3_ESK_.exit ]
  %i.fz = load i64, ptr %i.ex, align 8, !tbaa !148
  %i.ga = shl i64 %i.fz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fy, i8 0, i64 %i.ga, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i8 0, i64 16, i1 false)
  %i.gb = load ptr, ptr %i.bx, align 8, !tbaa !155 ; 3 uses
  %i.gc = load ptr, ptr %i.bz, align 8, !tbaa !127 ; 2 uses
  %.not.i.i59 = icmp eq ptr %i.gc, %i.gb
  br i1 %.not.i.i59, label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE5clearEv.exit, label %.lr.ph.i.i.i.i60

.lr.ph.i.i.i.i60:                                 ; preds = %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE5clearEv.exit, %_ZSt8_DestroyIN8WasmEdge4Host4WASI6Poller5TimerEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.gk, %_ZSt8_DestroyIN8WasmEdge4Host4WASI6Poller5TimerEEvPT_.exit.i.i.i.i ], [ %i.gb, %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 4
  %i.ge = load i8, ptr %i.gd, align 4
  %i.gf = trunc i8 %i.ge to i1
  br i1 %i.gf, label %bb.ah, label %_ZSt8_DestroyIN8WasmEdge4Host4WASI6Poller5TimerEEvPT_.exit.i.i.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i60
  %i.gg = load i32, ptr %.05.i.i.i.i, align 4, !tbaa !17 ; 2 uses
  %or.cond.i.i.i.i.i.i = icmp sgt i32 %i.gg, 2
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ai, label %_ZSt8_DestroyIN8WasmEdge4Host4WASI6Poller5TimerEEvPT_.exit.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.gh = invoke i32 @close(i32 noundef %i.gg)
          to label %_ZSt8_DestroyIN8WasmEdge4Host4WASI6Poller5TimerEEvPT_.exit.i.i.i.i unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  call void @__clang_call_terminate(ptr %i.gj) #23
  unreachable

_ZSt8_DestroyIN8WasmEdge4Host4WASI6Poller5TimerEEvPT_.exit.i.i.i.i: ; preds = %bb.ai, %bb.ah, %.lr.ph.i.i.i.i60
  %i.gk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i61 = icmp eq ptr %i.gk, %i.gc
  br i1 %.not.i.i.i.i61, label %_ZSt8_DestroyIPN8WasmEdge4Host4WASI6Poller5TimerES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i60, !llvm.loop !5

_ZSt8_DestroyIPN8WasmEdge4Host4WASI6Poller5TimerES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN8WasmEdge4Host4WASI6Poller5TimerEEvPT_.exit.i.i.i.i
  store ptr %i.gb, ptr %i.bz, align 8, !tbaa !127
  br label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE5clearEv.exit

_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE5clearEv.exit: ; preds = %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE5clearEv.exit, %_ZSt8_DestroyIPN8WasmEdge4Host4WASI6Poller5TimerES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.gl = load ptr, ptr %i.k, align 8, !tbaa !153 ; 2 uses
  %i.gm = load ptr, ptr %i.t, align 8, !tbaa !154
  %.not.i.i62 = icmp eq ptr %i.gm, %i.gl
  br i1 %.not.i.i62, label %_ZNSt6vectorI11epoll_eventSaIS0_EE5clearEv.exit, label %_ZSt8_DestroyIP11epoll_eventS0_EvT_S2_RSaIT0_E.exit.i.i63

_ZSt8_DestroyIP11epoll_eventS0_EvT_S2_RSaIT0_E.exit.i.i63: ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE5clearEv.exit
  store ptr %i.gl, ptr %i.t, align 8, !tbaa !154
  br label %_ZNSt6vectorI11epoll_eventSaIS0_EE5clearEv.exit

bb.ak:                                            ; preds = %.lr.ph106, %bb.ak
  %.sroa.064.0104 = phi ptr [ %i.by, %.lr.ph106 ], [ %i.gr, %bb.ak ] ; 3 uses
  %i.gn = load i32, ptr %0, align 8, !tbaa !17
  %i.go = load i32, ptr %.sroa.064.0104, align 4, !tbaa !17
  %i.gp = call i32 @epoll_ctl(i32 noundef %i.gn, i32 noundef 2, i32 noundef %i.go, ptr noundef nonnull %0) #24 ; 0 uses
  %i.gq = load ptr, ptr %i.cb, align 8, !tbaa !146
  call void @_ZN8WasmEdge4Host4WASI13PollerContext12releaseTimerEONS1_6Poller5TimerE(ptr noundef nonnull align 8 dereferenceable(96) %i.gq, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.064.0104) #24
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.064.0104, i64 12 ; 2 uses
  %.not91 = icmp eq ptr %i.gr, %i.ca
  br i1 %.not91, label %._crit_edge107, label %bb.ak
end_hunk_3
