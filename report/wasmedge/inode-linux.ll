Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/inode-linux?download=true
inline.NumInlined: 1859
inline.NumDeleted: 936
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN8WasmEdge4Host4WASI5INode4openENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE15__wasi_oflags_t16__wasi_fdflags_tNS1_3VFS5FlagsE:bb.a
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
  %i.r = trunc i32 %i.i to i16
  %i.s = lshr i16 %i.r, 10
  %spec.store.select = and i16 %i.s, 1
  %i.t = trunc i32 %i.i to i16
  %i.u = lshr i16 %i.t, 11
  %i.v = and i16 %i.u, 2
  %spec.select = or disjoint i16 %spec.store.select, %i.v
  %i.w = trunc i32 %i.i to i16
  %i.x = lshr i16 %i.w, 9
  %i.y = and i16 %i.x, 4
  %i.z = or disjoint i16 %spec.select, %i.y       ; 2 uses
  store i16 %i.z, ptr %i.q, align 2, !tbaa !192
  %i.aa = and i32 %i.i, 1052672
  %.not17 = icmp eq i32 %i.aa, 0
  br i1 %.not17, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNK8WasmEdge4Host4WASI5INode14unsafeFiletypeEv.exit
  %i.ab = or disjoint i16 %i.z, 24
  store i16 %i.ab, ptr %i.q, align 2, !tbaa !192
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ac = tail call ptr @__errno_location() #25
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !32
  %i.ae = tail call noundef zeroext i16 @_ZN8WasmEdge4Host4WASI6detail9fromErrNoEi(i32 noundef %i.ad) #24 ; 2 uses
  %.sroa.524.sroa.5.0.extract.shift26 = and i16 %i.ae, -256
  br label %bb.f

bb.f:                                             ; preds = %_ZNK8WasmEdge4Host4WASI5INode14unsafeFiletypeEv.exit, %bb.d, %bb.e, %_ZNK8WasmEdge4Host4WASI5INode10updateStatEv.exit
  %.sroa.023.2 = phi i32 [ 0, %_ZNK8WasmEdge4Host4WASI5INode10updateStatEv.exit ], [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %_ZNK8WasmEdge4Host4WASI5INode14unsafeFiletypeEv.exit ]
  %.sroa.524.sroa.0.2 = phi i16 [ %i.g, %_ZNK8WasmEdge4Host4WASI5INode10updateStatEv.exit ], [ %i.ae, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNK8WasmEdge4Host4WASI5INode14unsafeFiletypeEv.exit ]
  %.sroa.524.sroa.5.2 = phi i16 [ %.sroa.524.sroa.5.0.extract.shift, %_ZNK8WasmEdge4Host4WASI5INode10updateStatEv.exit ], [ %.sroa.524.sroa.5.0.extract.shift26, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNK8WasmEdge4Host4WASI5INode14unsafeFiletypeEv.exit ]
  %.sroa.524.sroa.0.0.insert.ext = and i16 %.sroa.524.sroa.0.2, 255
  %.sroa.524.sroa.0.0.insert.insert = or disjoint i16 %.sroa.524.sroa.5.2, %.sroa.524.sroa.0.0.insert.ext
  %.sroa.524.0.insert.ext = zext i16 %.sroa.524.sroa.0.0.insert.insert to i32
  %.sroa.524.0.insert.shift = shl nuw i32 %.sroa.524.0.insert.ext, 16
  %.sroa.023.0.insert.insert = or disjoint i32 %.sroa.524.0.insert.shift, %.sroa.023.2
  ret i32 %.sroa.023.0.insert.insert

bb.g:                                             ; preds = %_ZNK8WasmEdge4Host4WASI5INode10updateStatEv.exit.thread
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #23
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
  %i.ah = mul nsw i64 %i.ae, 1000000000
  %i.ai = add nsw i64 %i.ah, %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_0
begin_hunk_1_@_ZNK8WasmEdge4Host4WASI5INode12sockRecvFromEN5cxx204spanINS4_IhLm18446744073709551615EEELm18446744073709551615EEE16__wasi_riflags_tP23__wasi_address_family_tS5_PtRjR16__wasi_roflags_t:bb.a
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
  %i.cc = trunc i32 %i.cb to i16
  %i.cd = lshr i16 %i.cc, 5
  %spec.store.select = and i16 %i.cd, 1
  store i16 %spec.store.select, ptr %8, align 2, !tbaa !274
  br label %bb.aa

bb.aa:                                            ; preds = %bb.g, %bb.y, %.thread79, %bb.z
  %.sroa.071.0.insert.insert = phi i32 [ %i.au, %.thread79 ], [ 1835008, %bb.y ], [ 1, %bb.z ], [ 3407872, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  ret i32 %.sroa.071.0.insert.insert

bb.ab:                                            ; preds = %.noexc62, %bb.i, %.noexc, %bb.h, %bb.d
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #23
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
  %i.e = load i32, ptr %.val, align 1, !noalias !277
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
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.i = load <2 x i64>, ptr %.sroa.11.2..val.sroa_idx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(82) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(82) %.sroa.14.2..val.sroa_idx, i64 82, i1 false)
  store i16 1, ptr %8, align 8
  store i16 %.sroa.6.2.copyload, ptr %.sroa.6.0..sroa_idx, align 2
  store i32 %.sroa.9.2.copyload, ptr %.sroa.9.0..sroa_idx, align 4
  store <2 x i64> %i.i, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.1332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %.sroa.1332.2.copyload, ptr %.sroa.1332.0..sroa_idx, align 8
  br label %_ZSt5visitIN8WasmEdge4Host4WASI11VarAddrSizeEJRSt7variantIJNS2_13SockEmptyAddrE16sockaddr_storage8sockaddr11sockaddr_in12sockaddr_in611sockaddr_unEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit.sink.split

_ZSt5visitIN8WasmEdge4Host4WASI11VarAddrSizeEJRSt7variantIJNS2_13SockEmptyAddrE16sockaddr_storage8sockaddr11sockaddr_in12sockaddr_in611sockaddr_unEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit.sink.split: ; preds = %bb.e, %bb.d, %bb.c
  %.sink = phi i8 [ 3, %bb.c ], [ 4, %bb.d ], [ 5, %bb.e ]
  %.024.ph = phi i32 [ 16, %bb.c ], [ 28, %bb.d ], [ 110, %bb.e ]
  store i8 %.sink, ptr %i.a, align 8
  br label %_ZSt5visitIN8WasmEdge4Host4WASI11VarAddrSizeEJRSt7variantIJNS2_13SockEmptyAddrE16sockaddr_storage8sockaddr11sockaddr_in12sockaddr_in611sockaddr_unEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit

_ZSt5visitIN8WasmEdge4Host4WASI11VarAddrSizeEJRSt7variantIJNS2_13SockEmptyAddrE16sockaddr_storage8sockaddr11sockaddr_in12sockaddr_in611sockaddr_unEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit: ; preds = %_ZSt5visitIN8WasmEdge4Host4WASI11VarAddrSizeEJRSt7variantIJNS2_13SockEmptyAddrE16sockaddr_storage8sockaddr11sockaddr_in12sockaddr_in611sockaddr_unEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit.sink.split, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %8, %_ZSt5visitIN8WasmEdge4Host4WASI11VarAddrSizeEJRSt7variantIJNS2_13SockEmptyAddrE16sockaddr_storage8sockaddr11sockaddr_in12sockaddr_in611sockaddr_unEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit.sink.split ]
  %.024 = phi i32 [ 0, %bb.a ], [ %.024.ph, %_ZSt5visitIN8WasmEdge4Host4WASI11VarAddrSizeEJRSt7variantIJNS2_13SockEmptyAddrE16sockaddr_storage8sockaddr11sockaddr_in12sockaddr_in611sockaddr_unEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %.not2668 = icmp eq i64 %2, 0
  br i1 %.not2668, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt5visitIN8WasmEdge4Host4WASI11VarAddrSizeEJRSt7variantIJNS2_13SockEmptyAddrE16sockaddr_storage8sockaddr11sockaddr_in12sockaddr_in611sockaddr_unEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit
  %i.k = add i64 %2, 1152921504606846975          ; 2 uses
  %i.l = and i64 %i.k, 1152921504606846975        ; 2 uses
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.m, 2305843009213693950
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.o = and i64 %i.k, 1
  %lcmp.mod.not.not = icmp eq i64 %i.o, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %._crit_edge

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.02270.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.02369.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.an, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod73 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod73)
  %i.p = load ptr, ptr %.02270.epil.init, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %.02369.epil.init ; 2 uses
  store ptr %i.p, ptr %i.q, align 16, !tbaa !59
  %i.r = getelementptr inbounds nuw i8, ptr %.02270.epil.init, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !61
  %i.u = add nuw nsw i64 %.02369.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZSt5visitIN8WasmEdge4Host4WASI11VarAddrSizeEJRSt7variantIJNS2_13SockEmptyAddrE16sockaddr_storage8sockaddr11sockaddr_in12sockaddr_in611sockaddr_unEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit
  %.023.lcssa = phi i64 [ 0, %_ZSt5visitIN8WasmEdge4Host4WASI11VarAddrSizeEJRSt7variantIJNS2_13SockEmptyAddrE16sockaddr_storage8sockaddr11sockaddr_in12sockaddr_in611sockaddr_unEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit ], [ %i.an, %._crit_edge.loopexit.unr-lcssa ], [ %i.u, %.lr.ph.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %i.j, ptr %10, align 8, !tbaa !89
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.024, ptr %i.v, align 8, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %9, ptr %i.w, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %.023.lcssa, ptr %i.x, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = load i32, ptr %0, align 8, !tbaa !17
  %i.aa = invoke i64 @sendmsg(i32 noundef %i.z, ptr noundef nonnull %10, i32 noundef 16384)
          to label %bb.f unwind label %bb.i       ; 2 uses

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.02270 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.ao, %.lr.ph ] ; 5 uses
  %.02369 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.an, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ab = load ptr, ptr %.02270, align 8, !tbaa !63
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %.02369 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 16, !tbaa !59
  %i.ad = getelementptr inbounds nuw i8, ptr %.02270, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !61
  %i.ag = getelementptr inbounds nuw i8, ptr %.02270, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !63
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %.02369 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.ah, ptr %i.aj, align 16, !tbaa !59
  %i.ak = getelementptr inbounds nuw i8, ptr %.02270, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i64 %i.al, ptr %i.am, align 8, !tbaa !61
  %i.an = add nuw nsw i64 %.02369, 2              ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.02270, i64 32 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.f:                                             ; preds = %._crit_edge
  %i.ap = icmp slt i64 %i.aa, 0
  br i1 %i.ap, label %.thread65, label %bb.g

.thread65:                                        ; preds = %bb.f
  %i.aq = tail call ptr @__errno_location() #25
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !32
  %i.as = call noundef zeroext i16 @_ZN8WasmEdge4Host4WASI6detail9fromErrNoEi(i32 noundef %i.ar) #24
  %i.at = zext i16 %i.as to i32
  %i.au = shl nuw i32 %i.at, 16
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = trunc i64 %i.aa to i32
  store i32 %i.av, ptr %7, align 4, !tbaa !32
  br label %bb.h

bb.h:                                             ; preds = %.thread65, %bb.g
  %.sroa.036.0.insert.insert = phi i32 [ %i.au, %.thread65 ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  ret i32 %.sroa.036.0.insert.insert

bb.i:                                             ; preds = %._crit_edge
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #23
  unreachable
}

declare i64 @sendmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, -65535) i32 @_ZNK8WasmEdge4Host4WASI5INode12sockShutdownE16__wasi_sdflags_t(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i8 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %switch.selectcmp = icmp eq i8 %1, 2
  %switch.select = zext i1 %switch.selectcmp to i32
  %switch.selectcmp10 = icmp eq i8 %1, 3
  %switch.select11 = select i1 %switch.selectcmp10, i32 2, i32 %switch.select
  %i.a = load i32, ptr %0, align 8, !tbaa !17
  %i.b = tail call i32 @shutdown(i32 noundef %i.a, i32 noundef %switch.select11) #24
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #25
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32
  %i.f = tail call noundef zeroext i16 @_ZN8WasmEdge4Host4WASI6detail9fromErrNoEi(i32 noundef %i.e) #24
  %i.g = zext i16 %i.f to i32
  %i.h = shl nuw i32 %i.g, 16
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %.sroa.08.0.insert.insert = phi i32 [ %i.h, %bb.b ], [ 1, %bb.a ]
  ret i32 %.sroa.08.0.insert.insert
}

; Function Attrs: nounwind
declare i32 @shutdown(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, -65535) i32 @_ZNK8WasmEdge4Host4WASI5INode10sockGetOptE23__wasi_sock_opt_level_t20__wasi_sock_opt_so_tRN5cxx204spanIhLm18446744073709551615EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
switch.lookup:
end_hunk_1
begin_hunk_2_@_ZN8WasmEdge4Host4WASI13PollerContext12releaseTimerEONS1_6Poller5TimerE:bb.a
.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %.020.i.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.l, %bb.c ]
  %i.q = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !107 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not18.i.i.i.i, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !109  ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = urem i64 %i.t, %i.g
  %.not19.i.i.i.i = icmp eq i64 %i.u, %i.h
  br i1 %.not19.i.i.i.i, label %bb.d, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !0

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.e
  br label %.critedge.i.i, !llvm.loop !0

.critedge.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %i.d, ptr %2, align 8, !tbaa !113
  %i.v = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %.noexc5 unwind label %bb.i    ; 5 uses

.noexc5:                                          ; preds = %.critedge.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.v, align 8, !tbaa !107
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %i.c, ptr %i.x, align 8, !tbaa !120
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  store ptr %i.v, ptr %i.w, align 8, !tbaa !121
  %i.z = invoke ptr @_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISB_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 noundef %i.h, i64 noundef %i.e, ptr noundef nonnull %i.v, i64 noundef 1)
          to label %_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i unwind label %bb.f

_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.loopexit

bb.f:                                             ; preds = %.noexc5
  %i.aa = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr null
  call void @_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.body

.loopexit:                                        ; preds = %bb.d, %_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i, %bb.c
  %.sroa.023.0.i.i = phi ptr [ %i.z, %_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.l, %bb.c ], [ %i.q, %bb.d ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.023.0.i.i, i64 24 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !127 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.023.0.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !128
  %.not.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.af = load i32, ptr %1, align 4, !tbaa !32
  store i32 -1, ptr %1, align 4, !tbaa !32
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = and i8 %i.ai, 1
  %i.ak = load i8, ptr %i.ag, align 4
  %i.al = and i8 %i.ak, -2
  %i.am = or disjoint i8 %i.al, %i.aj
  store i8 %i.am, ptr %i.ag, align 4
  %i.an = load i8, ptr %i.ah, align 4
  %i.ao = or i8 %i.an, 1
  store i8 %i.ao, ptr %i.ah, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !126
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !126
  %i.ar = load ptr, ptr %i.ab, align 8, !tbaa !127
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store ptr %i.as, ptr %i.ab, align 8, !tbaa !127
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.h:                                             ; preds = %.loopexit
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.023.0.i.i, i64 16
  invoke void @_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr %i.ac, ptr noundef nonnull align 4 dereferenceable(12) %1)
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge.i.i
  %i.au = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.au, %bb.i ], [ %i.aa, %bb.f ] ; 2 uses
  %i.av = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.aw = extractvalue { ptr, i32 } %eh.lpad-body, 1
  %i.ax = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #24
  %i.ay = icmp eq i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.body
  %i.az = call ptr @__cxa_begin_catch(ptr %i.av) #24 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit unwind label %bb.k

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.j, %bb.g, %bb.h
  %i.ba = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #24 ; 0 uses
  ret void

bb.k:                                             ; preds = %bb.b, %bb.j
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #23
  unreachable

bb.l:                                             ; preds = %.body
  call void @__clang_call_terminate(ptr %i.av) #23
  unreachable
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #16

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nounwind
declare i32 @timerfd_create(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, -65535) i32 @_ZN8WasmEdge4Host4WASI6Poller5Timer7setTimeEmm22__wasi_subclockflags_t(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, i64 noundef %1, i64 %2, i16 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.itimerspec, align 8         ; 4 uses
  %5 = alloca %struct.itimerspec, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.a = load i32, ptr %0, align 4, !tbaa !17
  %i.b = call i32 @timerfd_settime(i32 noundef %i.a, i32 noundef 0, ptr noundef nonnull %4, ptr noundef null) #24
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #25
  store i32 0, ptr %i.d, align 4, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.e = and i16 %3, 1
  %spec.select = zext nneg i16 %i.e to i32
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %1, i64 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = udiv i64 %.sroa.speculated, 1000000000   ; 2 uses
  %.neg.i.i = mul i64 %i.g, -1000000000
  %i.h = add i64 %.neg.i.i, %.sroa.speculated
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i64 %i.g, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.h, ptr %i.i, align 8
  %i.j = load i32, ptr %0, align 4, !tbaa !17
  %i.k = call i32 @timerfd_settime(i32 noundef %i.j, i32 noundef %spec.select, ptr noundef nonnull %5, ptr noundef null) #24
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__errno_location() #25
  %i.n = load i32, ptr %i.m, align 4, !tbaa !32
  %i.o = call noundef zeroext i16 @_ZN8WasmEdge4Host4WASI6detail9fromErrNoEi(i32 noundef %i.n) #24
  %i.p = zext i16 %i.o to i32
  %i.q = shl nuw i32 %i.p, 16
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.d
  %.sroa.011.0.insert.insert = phi i32 [ %i.q, %bb.d ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret i32 %.sroa.011.0.insert.insert
}

; Function Attrs: nounwind
declare i32 @timerfd_settime(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4Host4WASI6PollerC2ERNS1_13PollerContextE(ptr noundef nonnull align 8 dereferenceable(216) initializes((0, 4), (8, 56)) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i32 @epoll_create1(i32 noundef 524288) #24
  store i32 %i.a, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = or i8 %i.c, 1
  store i8 %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !146
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  store ptr %i.h, ptr %i.g, align 8, !tbaa !147
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1, ptr %i.i, align 8, !tbaa !148
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.k, align 8, !tbaa !278
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.n, ptr %i.m, align 8, !tbaa !147
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 1, ptr %i.o, align 8, !tbaa !148
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.q, align 8, !tbaa !278
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.r, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: nounwind
declare i32 @epoll_create1(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 1, 3145729) i32 @_ZN8WasmEdge4Host4WASI6Poller7prepareEN5cxx204spanI14__wasi_event_tLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(216) initializes((16, 32)) %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.2.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = icmp ugt i64 %2, 230584300921369395
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #26
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !149
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !150  ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = sdiv exact i64 %i.i, 40
  %i.k = icmp ult i64 %i.j, %2
  br i1 %i.k, label %_ZNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE7reserveEm.exit

_ZNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !151
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.h                       ; 3 uses
  %i.p = mul nuw nsw i64 %2, 40
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #27
          to label %.noexc3 unwind label %bb.i    ; 4 uses

.noexc3:                                          ; preds = %_ZNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_M_allocateEm.exit.i
  %i.r = icmp sgt i64 %i.o, 0
  br i1 %i.r, label %bb.d, label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i

bb.d:                                             ; preds = %.noexc3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 8 %i.f, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i

_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %bb.d, %.noexc3
  %.not.i8.i = icmp eq ptr %i.f, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.i) #28
  br label %_ZNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.q, ptr %i.b, align 8, !tbaa !150
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store ptr %i.s, ptr %i.l, align 8, !tbaa !151
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %2
  store ptr %i.t, ptr %i.d, align 8, !tbaa !149
  br label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE7reserveEm.exit

_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE13_M_deallocateEPS4_m.exit.i, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE7reserveEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !152
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !153  ; 4 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = sdiv exact i64 %i.ab, 12
  %i.ad = icmp ult i64 %i.ac, %2
  br i1 %i.ad, label %_ZNSt12_Vector_baseI11epoll_eventSaIS0_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI11epoll_eventSaIS0_EE7reserveEm.exit

_ZNSt12_Vector_baseI11epoll_eventSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !154
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.aa                    ; 3 uses
  %i.ai = mul nuw nsw i64 %2, 12
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #27
          to label %.noexc6 unwind label %bb.i    ; 4 uses

.noexc6:                                          ; preds = %_ZNSt12_Vector_baseI11epoll_eventSaIS0_EE11_M_allocateEm.exit.i
  %i.ak = icmp sgt i64 %i.ah, 0
  br i1 %i.ak, label %bb.g, label %_ZNSt6vectorI11epoll_eventSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i

bb.g:                                             ; preds = %.noexc6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.y, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorI11epoll_eventSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i

_ZNSt6vectorI11epoll_eventSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %bb.g, %.noexc6
  %.not.i8.i4 = icmp eq ptr %i.y, null
  br i1 %.not.i8.i4, label %_ZNSt12_Vector_baseI11epoll_eventSaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI11epoll_eventSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ab) #28
  br label %_ZNSt12_Vector_baseI11epoll_eventSaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI11epoll_eventSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.h, %_ZNSt6vectorI11epoll_eventSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.aj, ptr %i.v, align 8, !tbaa !153
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store ptr %i.al, ptr %i.ae, align 8, !tbaa !154
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %2
  store ptr %i.am, ptr %i.w, align 8, !tbaa !152
  br label %_ZNSt6vectorI11epoll_eventSaIS0_EE7reserveEm.exit

bb.i:                                             ; preds = %_ZNSt12_Vector_baseI11epoll_eventSaIS0_EE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_M_allocateEm.exit.i, %bb.b, %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE7reserveEm.exit
  %i.an = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr null                          ; 2 uses
  %i.ao = extractvalue { ptr, i32 } %i.an, 0      ; 2 uses
  %i.ap = extractvalue { ptr, i32 } %i.an, 1
  %i.aq = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #24
  %i.ar = icmp eq i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.as = tail call ptr @__cxa_begin_catch(ptr %i.ao) #24 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorI11epoll_eventSaIS0_EE7reserveEm.exit unwind label %bb.k

_ZNSt6vectorI11epoll_eventSaIS0_EE7reserveEm.exit: ; preds = %bb.f, %_ZNSt12_Vector_baseI11epoll_eventSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.j
  %.sroa.010.0.insert.insert = phi i32 [ 3145728, %bb.j ], [ 1, %_ZNSt12_Vector_baseI11epoll_eventSaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ 1, %bb.f ]
  ret i32 %.sroa.010.0.insert.insert

bb.k:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #23
  unreachable

bb.l:                                             ; preds = %bb.i
  tail call void @__clang_call_terminate(ptr %i.ao) #23
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 768614336404564650
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !128
  %i.d = load ptr, ptr %0, align 8, !tbaa !155    ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_M_allocateEm.exit, label %bb.e

_ZNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !127  ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 12
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_M_allocateEm.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_M_allocateEm.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_M_allocateEm.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.p = load i32, ptr %.0911.i.i.i, align 4, !tbaa !32, !alias.scope !283, !noalias !282
  store i32 -1, ptr %.0911.i.i.i, align 4, !tbaa !32, !alias.scope !283, !noalias !282
  store i32 %i.p, ptr %.012.i.i.i, align 4, !tbaa !17, !alias.scope !282, !noalias !283
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 4 ; 2 uses
  %i.s = load i8, ptr %i.r, align 4, !alias.scope !283, !noalias !282 ; 2 uses
  %i.t = and i8 %i.s, 1
  %i.u = load i8, ptr %i.q, align 4, !alias.scope !282, !noalias !283
  %i.v = and i8 %i.u, -2
  %i.w = or disjoint i8 %i.v, %i.t
  store i8 %i.w, ptr %i.q, align 4, !alias.scope !282, !noalias !283
  %i.x = or i8 %i.s, 1
  store i8 %i.x, ptr %i.r, align 4, !alias.scope !283, !noalias !282
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !126, !alias.scope !283, !noalias !282
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !126, !alias.scope !282, !noalias !283
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12
  %.not.i.i.i = icmp eq ptr %i.ab, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !155
  br label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit

_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.loopexit, %_ZNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_M_allocateEm.exit
  %i.ad = phi ptr [ %.pre, %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.loopexit ], [ %i.d, %_ZNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.ad, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !128
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ah) #28
  br label %_ZNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !155
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ai, ptr %i.j, align 8, !tbaa !127
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %i.o, i64 %1
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !128
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4Host4WASI6Poller5clockE16__wasi_clockid_tmm22__wasi_subclockflags_tm(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i16 noundef zeroext %4, i64 noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cxx20::expected.85", align 4 ; 12 uses
  %7 = alloca %struct.epoll_event, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !151  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !150  ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 6 uses
  %i.h = sdiv exact i64 %i.g, 40                  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !156
  %i.k = icmp ult i64 %i.h, %i.j
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !149
  %.not.i = icmp eq ptr %i.c, %i.m
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !151  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %i.o, ptr %i.b, align 8, !tbaa !151
  br label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.p = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #26
          to label %.noexc unwind label %bb.al

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.h ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.h
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 230584300921369395)
  %i.t = select i1 %i.r, i64 230584300921369395, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = mul nuw nsw i64 %i.t, 40
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #27
          to label %.noexc42 unwind label %bb.al  ; 4 uses

.noexc42:                                         ; preds = %_ZNKSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.g ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, i8 0, i64 40, i1 false)
  %i.x = icmp sgt i64 %i.g, 0
  br i1 %i.x, label %bb.e, label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit15.i.i

bb.e:                                             ; preds = %.noexc42
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.d, i64 %i.g, i1 false)
  br label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit15.i.i

_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit15.i.i: ; preds = %bb.e, %.noexc42
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.not.i16.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i16.i.i, label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit15.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #28
  br label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit15.i.i
  store ptr %i.v, ptr %i.a, align 8, !tbaa !150
  store ptr %i.y, ptr %i.b, align 8, !tbaa !151
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %i.t
  store ptr %i.z, ptr %i.l, align 8, !tbaa !149
  br label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit

_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.b
  %i.aa = phi ptr [ %i.w, %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.n, %bb.b ] ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 5 uses
  store i8 0, ptr %i.ab, align 8, !tbaa !162
  store i64 %5, ptr %i.aa, align 8, !tbaa !163
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 10
  store i8 0, ptr %i.ac, align 2, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !146
  call void @_ZN8WasmEdge4Host4WASI13PollerContext12acquireTimerE16__wasi_clockid_t(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.85") align 4 %6, ptr noundef nonnull align 8 dereferenceable(96) %i.ae, i32 noundef %1) #24
  %i.af = load i8, ptr %6, align 4, !tbaa !124, !range !18, !noundef !19
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.g, label %_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI6Poller5TimerE14__wasi_errno_tLb0ELb1EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !127 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !128
  %.not.i43 = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i43, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.ah, align 4, !tbaa !32
  store i32 -1, ptr %i.ah, align 4, !tbaa !32
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = and i8 %i.ap, 1
  %i.ar = load i8, ptr %i.an, align 4
  %i.as = and i8 %i.ar, -2
  %i.at = or disjoint i8 %i.as, %i.aq
  store i8 %i.at, ptr %i.an, align 4
  %i.au = load i8, ptr %i.ao, align 4
  %i.av = or i8 %i.au, 1
  store i8 %i.av, ptr %i.ao, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !126
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !126
  %i.az = load ptr, ptr %i.ai, align 8, !tbaa !127
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store ptr %i.ba, ptr %i.ai, align 8, !tbaa !127
  br label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

bb.i:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(12) %i.ah)
          to label %._ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit_crit_edge unwind label %bb.al

._ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit_crit_edge: ; preds = %bb.i
  %.pre = load i8, ptr %6, align 4, !tbaa !124, !range !18
  %i.bc = trunc nuw i8 %.pre to i1
  br label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %._ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit_crit_edge, %bb.h
  %i.bd = phi i1 [ %i.bc, %._ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit_crit_edge ], [ true, %bb.h ]
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bf = load i8, ptr %i.be, align 4
  %i.bg = trunc i8 %i.bf to i1
  %or.cond.i = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %or.cond.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !17 ; 2 uses
  %or.cond.i.i.i = icmp sgt i32 %i.bi, 2
  br i1 %or.cond.i.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bj = invoke i32 @close(i32 noundef %i.bi)
          to label %bb.m unwind label %bb.l       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #23
  unreachable

_ZN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI6Poller5TimerE14__wasi_errno_tLb0ELb1EED2Ev.exit: ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit
  store i8 1, ptr %i.ab, align 8, !tbaa !162
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bn = load i16, ptr %i.bm, align 4, !tbaa !284
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i16 %i.bn, ptr %i.bo, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.ak

bb.m:                                             ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !122
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -12 ; 7 uses
  %i.bt = call i32 @_ZN8WasmEdge4Host4WASI6Poller5Timer7setTimeEmm22__wasi_subclockflags_t(ptr noundef nonnull align 4 dereferenceable(12) %i.bs, i64 noundef %2, i64 poison, i16 noundef zeroext %4) #24 ; 2 uses
  %.sroa.551.0.extract.shift = lshr i32 %i.bt, 16
  %.sroa.551.0.extract.trunc = trunc nuw i32 %.sroa.551.0.extract.shift to i16
  %i.bu = trunc i32 %i.bt to i1
  br i1 %i.bu, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = load ptr, ptr %i.ad, align 8, !tbaa !146
  call void @_ZN8WasmEdge4Host4WASI13PollerContext12releaseTimerEONS1_6Poller5TimerE(ptr noundef nonnull align 8 dereferenceable(96) %i.bv, ptr noundef nonnull align 4 dereferenceable(12) %i.bs) #24
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !127 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -12 ; 2 uses
  store ptr %i.bx, ptr %i.bq, align 8, !tbaa !127
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 -8
  %i.bz = load i8, ptr %i.by, align 4
  %i.ca = trunc i8 %i.bz to i1
  br i1 %i.ca, label %bb.o, label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE8pop_backEv.exit

bb.o:                                             ; preds = %bb.n
  %i.cb = load i32, ptr %i.bx, align 4, !tbaa !17 ; 2 uses
  %or.cond.i.i = icmp sgt i32 %i.cb, 2
  br i1 %or.cond.i.i, label %bb.p, label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE8pop_backEv.exit

bb.p:                                             ; preds = %bb.o
  %i.cc = invoke i32 @close(i32 noundef %i.cb)
          to label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE8pop_backEv.exit unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #23
  unreachable

_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE8pop_backEv.exit: ; preds = %bb.n, %bb.o, %bb.p
  store i8 1, ptr %i.ab, align 8, !tbaa !162
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i16 %.sroa.551.0.extract.trunc, ptr %i.cf, align 8, !tbaa !165
  br label %bb.ak

.critedge:                                        ; preds = %bb.m
  %i.cg = load i32, ptr %i.bs, align 4, !tbaa !17 ; 4 uses
  %i.ch = load i32, ptr %0, align 8, !tbaa !17
  %i.ci = icmp ne i32 %i.cg, %i.ch
  call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ck = sext i32 %i.cg to i64                   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !148 ; 2 uses
  %i.cn = urem i64 %i.ck, %i.cm                   ; 3 uses
  %i.co = load ptr, ptr %i.cj, align 8, !tbaa !147
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cn
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i, label %.critedge.i.i, label %bb.r

bb.r:                                             ; preds = %.critedge
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !107 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !32
  %i.cu = icmp ne i32 %i.cg, %i.ct
  call void @llvm.assume(i1 %i.cu)
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !107 ; 2 uses
  %.not18.i.i.i.i52 = icmp eq ptr %i.cv, null
  br i1 %.not18.i.i.i.i52, label %.critedge.i.i, label %.lr.ph

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph
  %i.cw = icmp ne i32 %i.cg, %i.da
  call void @llvm.assume(i1 %i.cw)
  %i.cx = load ptr, ptr %i.cy, align 8, !tbaa !107 ; 2 uses
  %.not18.i.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not18.i.i.i.i, label %.critedge.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %.lr.ph.i.i.i.i
  %i.cy = phi ptr [ %i.cx, %.lr.ph.i.i.i.i ], [ %i.cv, %bb.r ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !32 ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = urem i64 %i.db, %i.cm
  %.not19.i.i.i.i = icmp eq i64 %i.dc, %i.cn
  br i1 %.not19.i.i.i.i, label %.lr.ph.i.i.i.i, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !2

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %.lr.ph
  br label %.critedge.i.i, !llvm.loop !2

.critedge.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %bb.r, %..loopexit_crit_edge21.i.i.i.i, %.critedge
  %i.dd = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc45 unwind label %bb.ah  ; 5 uses

.noexc45:                                         ; preds = %.critedge.i.i
  store ptr null, ptr %i.dd, align 8, !tbaa !107
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load i32, ptr %i.bs, align 4, !tbaa !32
  store i32 %i.df, ptr %i.de, align 8, !tbaa !168
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i8 0, i64 16, i1 false)
  %i.dh = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.cj, i64 noundef %i.cn, i64 noundef %i.ck, ptr noundef nonnull %i.dd, i64 noundef 1)
          to label %bb.s unwind label %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.i ; 6 uses

_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.i: ; preds = %.noexc45
  %i.di = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr null
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 32) #28
  br label %.body

bb.s:                                             ; preds = %.noexc45
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store ptr %i.aa, ptr %i.dj, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i32 8193, ptr %7, align 4, !tbaa !171
  %i.dk = load i32, ptr %i.bs, align 4, !tbaa !17 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !67
  %i.dm = load i32, ptr %0, align 8, !tbaa !17
  %i.dn = call i32 @epoll_ctl(i32 noundef %i.dm, i32 noundef 1, i32 noundef %i.dk, ptr noundef nonnull %7) #24
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %bb.t, label %bb.ai

bb.t:                                             ; preds = %bb.s
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dq = load i64, ptr %i.cl, align 8, !tbaa !148 ; 3 uses
  %i.dr = load i32, ptr %i.dp, align 8, !tbaa !32
  %i.ds = sext i32 %i.dr to i64
  %i.dt = urem i64 %i.ds, %i.dq                   ; 3 uses
  %i.du = load ptr, ptr %i.cj, align 8, !tbaa !147 ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dt ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !106 ; 4 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.0.i.i.i.i = phi ptr [ %i.dw, %bb.t ], [ %i.dx, %bb.u ] ; 4 uses
  %i.dx = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !107 ; 2 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.dx, %i.dh
  br i1 %.not.i.i.i.i46, label %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS9_10_Hash_nodeIS7_Lb0EEE.exit.i.i.i, label %bb.u, !llvm.loop !3

_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS9_10_Hash_nodeIS7_Lb0EEE.exit.i.i.i: ; preds = %bb.u
  %i.dy = icmp eq ptr %.0.i.i.i.i, %i.dw
  %i.dz = load ptr, ptr %i.dh, align 8, !tbaa !107 ; 4 uses
  %.not18.i.i.i.i47 = icmp eq ptr %i.dz, null     ; 2 uses
  br i1 %i.dy, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS9_10_Hash_nodeIS7_Lb0EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i47, label %._crit_edge.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !32
  %i.ec = sext i32 %i.eb to i64
  %i.ed = urem i64 %i.ec, %i.dq                   ; 2 uses
  %.not9.i.i.i.i.i = icmp eq i64 %i.ed, %i.dt
  br i1 %.not9.i.i.i.i.i, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ed
  store ptr %i.dw, ptr %i.ee, align 8, !tbaa !106
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.x, %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.dw
  br i1 %i.eg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i.i.i.i
  store ptr %i.dz, ptr %i.ef, align 8, !tbaa !172
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i.i.i
  store ptr null, ptr %i.dv, align 8, !tbaa !106
  br label %bb.ad

bb.aa:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS9_10_Hash_nodeIS7_Lb0EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i47, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !32
  %i.ej = sext i32 %i.ei to i64
  %i.ek = urem i64 %i.ej, %i.dq                   ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.ek, %i.dt
  br i1 %.not17.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ek
  store ptr %.0.i.i.i.i, ptr %i.el, align 8, !tbaa !106
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.w
  %i.em = load ptr, ptr %i.dh, align 8, !tbaa !107
  store ptr %i.em, ptr %.0.i.i.i.i, align 8, !tbaa !107
end_hunk_2
begin_hunk_3_@_ZN8WasmEdge4Host4WASI6Poller5writeERKNS1_5INodeENS1_11TriggerTypeEm:bb.a
.critedge:                                        ; preds = %.critedge.sink.split, %bb.t, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ah

.body:                                            ; preds = %bb.s, %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.i
  %.pn.pn = phi { ptr, i32 } [ %i.bd, %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.i ], [ %i.ch, %bb.s ] ; 2 uses
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0      ; 2 uses
  %.144 = extractvalue { ptr, i32 } %.pn.pn, 1
  %i.dy = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #24
  %i.dz = icmp eq i32 %.144, %i.dy
  br i1 %i.dz, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %.body
  %i.ea = tail call ptr @__cxa_begin_catch(ptr %.1) #24 ; 0 uses
  store i8 1, ptr %i.ab, align 8, !tbaa !162
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i16 48, ptr %i.eb, align 8, !tbaa !165
  invoke void @__cxa_end_catch()
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.r, %.critedge, %bb.ag
  ret void

bb.ai:                                            ; preds = %_ZNKSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %bb.d, %bb.ag
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  tail call void @__clang_call_terminate(ptr %i.ed) #23
  unreachable

bb.aj:                                            ; preds = %.body
  tail call void @__clang_call_terminate(ptr %.1) #23
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4Host4WASI6Poller4waitEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_Prime_rehash_policy", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %.sroa.086.097 = load ptr, ptr %i.f, align 8, !tbaa !107 ; 2 uses
  %.not9098 = icmp eq ptr %.sroa.086.097, null
  br i1 %.not9098, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !151
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !150
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 40                  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !154  ; 4 uses
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !153  ; 5 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64                 ; 4 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 12                  ; 3 uses
  %i.aa = icmp ugt i64 %i.s, %i.z
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.ab = sub nuw nsw i64 %i.s, %i.z
  invoke void @_ZNSt6vectorI11epoll_eventSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.ab)
          to label %._ZNSt6vectorI11epoll_eventSaIS0_EE6resizeEm.exit_crit_edge unwind label %bb.al

._ZNSt6vectorI11epoll_eventSaIS0_EE6resizeEm.exit_crit_edge: ; preds = %bb.b
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !153 ; 2 uses
  %.pre118 = load ptr, ptr %i.t, align 8, !tbaa !154
  %.pre125 = ptrtoint ptr %.pre to i64
  br label %_ZNSt6vectorI11epoll_eventSaIS0_EE6resizeEm.exit

bb.c:                                             ; preds = %._crit_edge
  %i.ac = icmp ult i64 %i.s, %i.z
  br i1 %i.ac, label %bb.d, label %_ZNSt6vectorI11epoll_eventSaIS0_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %i.s ; 3 uses
  %.not.i.i = icmp eq ptr %i.u, %i.ad
  br i1 %.not.i.i, label %_ZNSt6vectorI11epoll_eventSaIS0_EE6resizeEm.exit, label %_ZSt8_DestroyIP11epoll_eventS0_EvT_S2_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP11epoll_eventS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !154
  br label %_ZNSt6vectorI11epoll_eventSaIS0_EE6resizeEm.exit

bb.e:                                             ; preds = %.lr.ph, %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit
  %.sroa.086.099 = phi ptr [ %.sroa.086.097, %.lr.ph ], [ %.sroa.086.0, %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.086.099, i64 8
  %i.af = load i64, ptr %i.g, align 8, !tbaa !173
  %.not.not.i.i = icmp eq i64 %i.af, 0
  %i.ag = load i32, ptr %i.ae, align 4            ; 5 uses
  br i1 %.not.not.i.i, label %.preheader164, label %bb.g

.preheader164:                                    ; preds = %bb.e, %bb.f
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.f ], [ %i.j, %bb.e ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !107 ; 3 uses
  %.not.i.i38 = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i38, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader164
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !32
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit, label %.preheader164, !llvm.loop !4

bb.g:                                             ; preds = %bb.e
  %i.ak = sext i32 %i.ag to i64
  %i.al = load i64, ptr %i.i, align 8, !tbaa !148 ; 2 uses
  %i.am = urem i64 %i.ak, %i.al                   ; 2 uses
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !147
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !106 ; 2 uses
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
  %i.bs = load ptr, ptr %i.l, align 8, !tbaa !287 ; 2 uses
  %i.bt = load ptr, ptr %i.m, align 8, !tbaa !287 ; 2 uses
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
  %i.do = trunc i32 %i.da to i16
  %i.dp = lshr i16 %i.do, 4
  %spec.store.select.i = and i16 %i.dp, 1
  store i16 %spec.store.select.i, ptr %i.dn, align 8, !tbaa !288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i32 0, ptr %i.d, align 4, !tbaa !32
  %i.dq = load i32, ptr %i.ce, align 4, !tbaa !67
  %i.dr = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.dq, i64 noundef 21531, ptr noundef nonnull %i.d) #24
  %i.ds = icmp eq i32 %i.dr, 0
  %i.dt = load i32, ptr %i.d, align 4
  %narrow.i = select i1 %i.ds, i32 1, i32 %i.dt
  %storemerge.i = sext i32 %narrow.i to i64
  store i64 %storemerge.i, ptr %i.dm, align 8, !tbaa !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %.pre120 = load i32, ptr %i.cd, align 4, !tbaa !171
  br label %"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit"

"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit": ; preds = %bb.u, %bb.v, %bb.t, %bb.s
  %i.du = phi i32 [ %.pre120, %bb.v ], [ %i.da, %bb.s ], [ %i.da, %bb.t ], [ %i.da, %bb.u ] ; 3 uses
  %i.dv = and i32 %i.du, 4
  %.not33 = icmp eq i32 %i.dv, 0
  br i1 %.not33, label %bb.w, label %"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit._ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit57_crit_edge"

"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit._ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit57_crit_edge": ; preds = %"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit"
  %.phi.trans.insert121 = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i46, i64 24
  %.pre122 = load ptr, ptr %.phi.trans.insert121, align 8, !tbaa !174
  br label %"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit57"

bb.w:                                             ; preds = %"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit"
  %i.dw = and i32 %i.du, 16
  %.not34 = icmp eq i32 %i.dw, 0
  %or.cond37 = or i1 %.not, %.not34
  br i1 %or.cond37, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i46, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !174 ; 2 uses
  %.not35 = icmp eq ptr %i.dy, null
  br i1 %.not35, label %bb.y, label %"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit57"

"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit57": ; preds = %"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit._ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit57_crit_edge", %bb.x
  %i.dz = phi ptr [ %.pre122, %"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit._ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit57_crit_edge" ], [ %i.dy, %bb.x ] ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  store i8 1, ptr %i.ea, align 8, !tbaa !162
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i16 0, ptr %i.eb, align 8, !tbaa !165
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.ee = trunc i32 %i.du to i16
  %i.ef = lshr i16 %i.ee, 4
  %spec.store.select1.i54 = and i16 %i.ef, 1
  store i16 %spec.store.select1.i54, ptr %i.ed, align 8, !tbaa !288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 4, ptr %i.b, align 4, !tbaa !32
  %i.eg = load i32, ptr %i.ce, align 4, !tbaa !67
  %i.eh = call i32 @getsockopt(i32 noundef %i.eg, i32 noundef 1, i32 noundef 7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #24
  %i.ei = icmp ne i32 %i.eh, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 0, ptr %i.c, align 4, !tbaa !32
  %i.ej = load i32, ptr %i.ce, align 4, !tbaa !67
  %i.ek = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.ej, i64 noundef 21521, ptr noundef nonnull %i.c) #24
  %i.el = icmp ne i32 %i.ek, 0
  %.1.i55 = select i1 %i.el, i1 true, i1 %i.ei
  %i.em = load i32, ptr %i.a, align 4
  %i.en = load i32, ptr %i.c, align 4
  %i.eo = sub nsw i32 %i.em, %i.en
  %i.ep = sext i32 %i.eo to i64
  %storemerge22.i56 = select i1 %.1.i55, i64 1, i64 %i.ep
  store i64 %storemerge22.i56, ptr %i.ec, align 8, !tbaa !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.y

bb.y:                                             ; preds = %"_ZZN8WasmEdge4Host4WASI6Poller4waitEvENK3$_0clERK11epoll_eventRNS2_13OptionalEventE.exit57", %bb.x, %bb.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge102, label %bb.m, !llvm.loop !285

._crit_edge107:                                   ; preds = %bb.ak, %._crit_edge102
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.er, i64 16, i1 false), !tbaa.struct !291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.er, ptr noundef nonnull align 8 dereferenceable(16) %i.es, i64 16, i1 false), !tbaa.struct !291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.es, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !291
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.et = load ptr, ptr %i.eq, align 8, !tbaa !147 ; 6 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  %i.ew = load ptr, ptr %i.e, align 8, !tbaa !147 ; 6 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex                ; 2 uses
  br i1 %i.ev, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %._crit_edge107
  br i1 %i.ey, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.ew, ptr %i.eq, align 8, !tbaa !147
  store ptr %i.ex, ptr %i.e, align 8, !tbaa !147
  br label %bb.ae

bb.ab:                                            ; preds = %._crit_edge107
  br i1 %i.ey, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.et, ptr %i.e, align 8, !tbaa !147
  store ptr %i.eu, ptr %i.eq, align 8, !tbaa !147
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  store ptr %i.ew, ptr %i.eq, align 8, !tbaa !292
  store ptr %i.et, ptr %i.e, align 8, !tbaa !292
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.z
  %i.ez = phi ptr [ %i.et, %bb.ad ], [ %i.et, %bb.ac ], [ %i.ex, %bb.aa ], [ %i.ew, %bb.z ]
  %i.fa = phi ptr [ %i.ew, %bb.ad ], [ %i.eu, %bb.ac ], [ %i.ew, %bb.aa ], [ %i.et, %bb.z ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.fd = load i64, ptr %i.fb, align 8, !tbaa !51
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !51 ; 2 uses
  store i64 %i.fe, ptr %i.fb, align 8, !tbaa !51
  store i64 %i.fd, ptr %i.fc, align 8, !tbaa !51
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !106 ; 2 uses
  %i.fh = load ptr, ptr %i.f, align 8, !tbaa !106 ; 3 uses
  store ptr %i.fh, ptr %i.ff, align 8, !tbaa !106
  store ptr %i.fg, ptr %i.f, align 8, !tbaa !106
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.fk = load i64, ptr %i.fi, align 8, !tbaa !51
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !51
  store i64 %i.fl, ptr %i.fi, align 8, !tbaa !51
  store i64 %i.fk, ptr %i.fj, align 8, !tbaa !51
  %i.fm = load ptr, ptr %i.eu, align 8, !tbaa !106
  %i.fn = load ptr, ptr %i.ex, align 8, !tbaa !106
  store ptr %i.fn, ptr %i.eu, align 8, !tbaa !106
  store ptr %i.fm, ptr %i.ex, align 8, !tbaa !106
  %.not.i.i.i.i58 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i58, label %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !32
  %i.fq = sext i32 %i.fp to i64
  %i.fr = urem i64 %i.fq, %i.fe
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fr
  store ptr %i.ff, ptr %i.fs, align 8, !tbaa !106
  %.pre123 = load ptr, ptr %i.f, align 8, !tbaa !172
  br label %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i

_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %i.ft = phi ptr [ %.pre123, %bb.af ], [ %i.fg, %bb.ae ] ; 2 uses
  %.not.i16.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not.i16.i.i.i, label %_ZSt4swapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEvRSt13unordered_mapIT_T0_T1_T2_T3_ESK_.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load i64, ptr %i.fc, align 8, !tbaa !148
  %i.fw = load i32, ptr %i.fu, align 4, !tbaa !32
  %i.fx = sext i32 %i.fw to i64
  %i.fy = urem i64 %i.fx, %i.fv
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fy
  store ptr %i.f, ptr %i.fz, align 8, !tbaa !106
  br label %_ZSt4swapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEvRSt13unordered_mapIT_T0_T1_T2_T3_ESK_.exit

_ZSt4swapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEvRSt13unordered_mapIT_T0_T1_T2_T3_ESK_.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i, %bb.ag
  %i.ga = load ptr, ptr %i.ff, align 8, !tbaa !172 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.ga, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt4swapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEvRSt13unordered_mapIT_T0_T1_T2_T3_ESK_.exit, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.gb, %.lr.ph.i.i.i ], [ %i.ga, %_ZSt4swapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEvRSt13unordered_mapIT_T0_T1_T2_T3_ESK_.exit ] ; 2 uses
  %i.gb = load ptr, ptr %.06.i.i.i, align 8, !tbaa !107 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 32) #28
  %.not.i.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE5clearEv.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !286

_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE5clearEv.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre124 = load ptr, ptr %i.eq, align 8, !tbaa !147
  br label %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE5clearEv.exit

_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE5clearEv.exit: ; preds = %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE5clearEv.exit.loopexit, %_ZSt4swapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEvRSt13unordered_mapIT_T0_T1_T2_T3_ESK_.exit
  %i.gc = phi ptr [ %.pre124, %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE5clearEv.exit.loopexit ], [ %i.fa, %_ZSt4swapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEEvRSt13unordered_mapIT_T0_T1_T2_T3_ESK_.exit ]
  %i.gd = load i64, ptr %i.fb, align 8, !tbaa !148
  %i.ge = shl i64 %i.gd, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gc, i8 0, i64 %i.ge, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, i8 0, i64 16, i1 false)
  %i.gf = load ptr, ptr %i.bx, align 8, !tbaa !155 ; 3 uses
  %i.gg = load ptr, ptr %i.bz, align 8, !tbaa !127 ; 2 uses
  %.not.i.i59 = icmp eq ptr %i.gg, %i.gf
  br i1 %.not.i.i59, label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE5clearEv.exit, label %.lr.ph.i.i.i.i60

.lr.ph.i.i.i.i60:                                 ; preds = %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE5clearEv.exit, %_ZSt8_DestroyIN8WasmEdge4Host4WASI6Poller5TimerEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.go, %_ZSt8_DestroyIN8WasmEdge4Host4WASI6Poller5TimerEEvPT_.exit.i.i.i.i ], [ %i.gf, %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 4
  %i.gi = load i8, ptr %i.gh, align 4
  %i.gj = trunc i8 %i.gi to i1
  br i1 %i.gj, label %bb.ah, label %_ZSt8_DestroyIN8WasmEdge4Host4WASI6Poller5TimerEEvPT_.exit.i.i.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i60
  %i.gk = load i32, ptr %.05.i.i.i.i, align 4, !tbaa !17 ; 2 uses
  %or.cond.i.i.i.i.i.i = icmp sgt i32 %i.gk, 2
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ai, label %_ZSt8_DestroyIN8WasmEdge4Host4WASI6Poller5TimerEEvPT_.exit.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.gl = invoke i32 @close(i32 noundef %i.gk)
          to label %_ZSt8_DestroyIN8WasmEdge4Host4WASI6Poller5TimerEEvPT_.exit.i.i.i.i unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #23
  unreachable

_ZSt8_DestroyIN8WasmEdge4Host4WASI6Poller5TimerEEvPT_.exit.i.i.i.i: ; preds = %bb.ai, %bb.ah, %.lr.ph.i.i.i.i60
  %i.go = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i61 = icmp eq ptr %i.go, %i.gg
  br i1 %.not.i.i.i.i61, label %_ZSt8_DestroyIPN8WasmEdge4Host4WASI6Poller5TimerES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i60, !llvm.loop !5

_ZSt8_DestroyIPN8WasmEdge4Host4WASI6Poller5TimerES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN8WasmEdge4Host4WASI6Poller5TimerEEvPT_.exit.i.i.i.i
  store ptr %i.gf, ptr %i.bz, align 8, !tbaa !127
  br label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE5clearEv.exit

_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE5clearEv.exit: ; preds = %_ZNSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE5clearEv.exit, %_ZSt8_DestroyIPN8WasmEdge4Host4WASI6Poller5TimerES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.gp = load ptr, ptr %i.k, align 8, !tbaa !153 ; 2 uses
  %i.gq = load ptr, ptr %i.t, align 8, !tbaa !154
  %.not.i.i62 = icmp eq ptr %i.gq, %i.gp
  br i1 %.not.i.i62, label %_ZNSt6vectorI11epoll_eventSaIS0_EE5clearEv.exit, label %_ZSt8_DestroyIP11epoll_eventS0_EvT_S2_RSaIT0_E.exit.i.i63

_ZSt8_DestroyIP11epoll_eventS0_EvT_S2_RSaIT0_E.exit.i.i63: ; preds = %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE5clearEv.exit
  store ptr %i.gp, ptr %i.t, align 8, !tbaa !154
  br label %_ZNSt6vectorI11epoll_eventSaIS0_EE5clearEv.exit

bb.ak:                                            ; preds = %.lr.ph106, %bb.ak
  %.sroa.064.0104 = phi ptr [ %i.by, %.lr.ph106 ], [ %i.gv, %bb.ak ] ; 3 uses
  %i.gr = load i32, ptr %0, align 8, !tbaa !17
  %i.gs = load i32, ptr %.sroa.064.0104, align 4, !tbaa !17
  %i.gt = call i32 @epoll_ctl(i32 noundef %i.gr, i32 noundef 2, i32 noundef %i.gs, ptr noundef nonnull %0) #24 ; 0 uses
  %i.gu = load ptr, ptr %i.cb, align 8, !tbaa !146
  call void @_ZN8WasmEdge4Host4WASI13PollerContext12releaseTimerEONS1_6Poller5TimerE(ptr noundef nonnull align 8 dereferenceable(96) %i.gu, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.064.0104) #24
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.064.0104, i64 12 ; 2 uses
  %.not91 = icmp eq ptr %i.gv, %i.ca
  br i1 %.not91, label %._crit_edge107, label %bb.ak

_ZNSt6vectorI11epoll_eventSaIS0_EE5clearEv.exit:  ; preds = %.lr.ph111, %bb.l, %_ZSt8_DestroyIP11epoll_eventS0_EvT_S2_RSaIT0_E.exit.i.i63, %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE5clearEv.exit
  ret void

bb.al:                                            ; preds = %bb.b, %_ZNSt6vectorI11epoll_eventSaIS0_EE6resizeEm.exit
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  tail call void @__clang_call_terminate(ptr %i.gx) #23
  unreachable
}

declare i32 @epoll_wait(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN8WasmEdge4Host4WASI6Poller5resetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(216) initializes((16, 32)) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !150  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE5clearEv.exit, label %_ZSt8_DestroyIPN8WasmEdge4Host4WASI6Poller13OptionalEventES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN8WasmEdge4Host4WASI6Poller13OptionalEventES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.c, ptr %i.d, align 8, !tbaa !151
  br label %_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE5clearEv.exit

_ZNSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN8WasmEdge4Host4WASI6Poller13OptionalEventES4_EvT_S6_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN8WasmEdge4Host4WASI6Poller2okEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !17
  %i.b = icmp sgt i32 %i.a, -1
  ret i1 %i.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #17

declare noundef ptr @_ZN6spdlog18default_logger_rawEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog6logger4log_IJRiEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.fmt::v11::basic_memory_buffer", align 8 ; 12 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %8 = alloca %"struct.spdlog::details::log_msg", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  %i.c = icmp sge i32 %2, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = tail call noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104) %i.d) ; 2 uses
  %or.cond = or i1 %i.c, %i.e
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE4growERNS0_6detail6bufferIcEEm, ptr %i.g, align 8, !tbaa !293
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !176
  store i64 250, ptr %i.f, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.j = load i32, ptr %5, align 4, !tbaa !32
  %.sroa.01.0.insert.ext.i = zext i32 %i.j to i128
  store i128 %.sroa.01.0.insert.ext.i, ptr %7, align 16
  invoke void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr %3, i64 %4, i64 1, ptr nonnull %7, ptr null)
          to label %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit unwind label %bb.g

_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !95
  %i.o = load ptr, ptr %6, align 8, !tbaa !176
  %i.p = load i64, ptr %i.h, align 8, !tbaa !178
  invoke void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %1, ptr %i.l, i64 %i.n, i32 noundef %2, ptr %i.o, i64 %i.p)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  invoke void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(96) %8, i1 noundef zeroext %i.c, i1 noundef zeroext %i.e)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.q = load ptr, ptr %6, align 8, !tbaa !176    ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.i
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.f, align 8, !tbaa !177
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.r) #28
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit
  ret void

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.i

bb.h:                                             ; preds = %bb.c, %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.s, %bb.g ]
  %i.u = load ptr, ptr %6, align 8, !tbaa !176    ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.u, %i.i
  br i1 %.not.i.i15, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load i64, ptr %i.f, align 8, !tbaa !177
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.v) #28
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  resume { ptr, i32 } %.pn
}

declare noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

declare void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef byval(%"struct.spdlog::source_loc") align 8, ptr, i64, i32 noundef, ptr, i64) unnamed_addr #1

declare void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(96), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE4growERNS0_6detail6bufferIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !177  ; 3 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @llvm.umax.i64(i64 %1, i64 9223372036854775807)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0 = phi i64 [ %1, %bb.a ], [ %i.g, %bb.c ]    ; 2 uses
  %i.h = icmp slt i64 %.0, 0
  br i1 %i.h, label %bb.e, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit, !prof !294

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit:     ; preds = %bb.b, %bb.d
  %.035 = phi i64 [ %.0, %bb.d ], [ %i.d, %bb.b ] ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !176    ; 3 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.035) #27 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !178  ; 2 uses
  %i.m = icmp ule i64 %i.l, %.035
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.i, i64 %i.l, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !176
  store i64 %.035, ptr %i.a, align 8, !tbaa !177
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.i, %i.n
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.b) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #18

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

declare void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #19

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISB_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !179
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !295
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

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

_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !104
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !105    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !106  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !107
  store ptr %i.w, ptr %3, align 8, !tbaa !107
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !106
  store ptr %3, ptr %i.x, align 8, !tbaa !107
  br label %_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSD_10_Hash_nodeISB_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !180
  store ptr %i.z, ptr %3, align 8, !tbaa !107
  store ptr %3, ptr %i.y, align 8, !tbaa !180
  %i.aa = load ptr, ptr %3, align 8, !tbaa !107   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !104
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !109
  %i.ae = zext i32 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !106
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !106
  br label %_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSD_10_Hash_nodeISB_Lb0EEE.exit

_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSD_10_Hash_nodeISB_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !295
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !295
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121  ; 5 uses
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
  %i.aa = load i32, ptr %.0911.i.i.i, align 4, !tbaa !32, !alias.scope !305, !noalias !304
  store i32 -1, ptr %.0911.i.i.i, align 4, !tbaa !32, !alias.scope !305, !noalias !304
  store i32 %i.aa, ptr %.012.i.i.i, align 4, !tbaa !17, !alias.scope !304, !noalias !305
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 4 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 4, !alias.scope !305, !noalias !304 ; 2 uses
  %i.ae = and i8 %i.ad, 1
  %i.af = load i8, ptr %i.ab, align 4, !alias.scope !304, !noalias !305
  %i.ag = and i8 %i.af, -2
  %i.ah = or disjoint i8 %i.ag, %i.ae
  store i8 %i.ah, ptr %i.ab, align 4, !alias.scope !304, !noalias !305
  %i.ai = or i8 %i.ad, 1
  store i8 %i.ai, ptr %i.ac, align 4, !alias.scope !305, !noalias !304
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !126, !alias.scope !305, !noalias !304
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !126, !alias.scope !304, !noalias !305
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
  %i.ap = load i32, ptr %.0911.i.i.i19, align 4, !tbaa !32, !alias.scope !307, !noalias !306
  store i32 -1, ptr %.0911.i.i.i19, align 4, !tbaa !32, !alias.scope !307, !noalias !306
  store i32 %i.ap, ptr %.012.i.i.i18, align 4, !tbaa !17, !alias.scope !306, !noalias !307
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 4 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 4, !alias.scope !307, !noalias !306 ; 2 uses
  %i.at = and i8 %i.as, 1
  %i.au = load i8, ptr %i.aq, align 4, !alias.scope !306, !noalias !307
  %i.av = and i8 %i.au, -2
  %i.aw = or disjoint i8 %i.av, %i.at
  store i8 %i.aw, ptr %i.aq, align 4, !alias.scope !306, !noalias !307
  %i.ax = or i8 %i.as, 1
  store i8 %i.ax, ptr %i.ar, align 4, !alias.scope !307, !noalias !306
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !126, !alias.scope !307, !noalias !306
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !126, !alias.scope !306, !noalias !307
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
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !181

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #27 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !172  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !172
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !107 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !32
  %i.l = sext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !106  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !172
  store ptr %i.p, ptr %.02530, align 8, !tbaa !107
  store ptr %.02530, ptr %i.g, align 8, !tbaa !172
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
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !308

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !147    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !148
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #28
  br label %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !148
  store ptr %.0.i, ptr %0, align 8, !tbaa !147
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !173
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.e = load i32, ptr %1, align 4, !tbaa !32     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !32
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !32
  %i.k = icmp eq i32 %i.e, %i.j
  br i1 %i.k, label %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit, label %.lr.ph, !llvm.loop !310

.lr.ph:                                           ; preds = %.preheader.i, %bb.c
  %.016.i35 = phi ptr [ %i.l, %bb.c ], [ %i.d, %.preheader.i ] ; 2 uses
  %i.l = load ptr, ptr %.016.i35, align 8, !tbaa !107 ; 4 uses
  %.not14.i = icmp eq ptr %i.l, null
  br i1 %.not14.i, label %.critedge, label %bb.c, !llvm.loop !310

_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit: ; preds = %bb.c, %.preheader.i
  %i.m = phi ptr [ %i.d, %.preheader.i ], [ %i.l, %bb.c ]
  %.01115.i.lcssa = phi ptr [ %i.c, %.preheader.i ], [ %.016.i35, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !148  ; 2 uses
  %i.p = sext i32 %i.e to i64
  %i.q = urem i64 %i.p, %i.o                      ; 2 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !147   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.q
  %.pre40 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !106
  br label %_ZNKSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit

bb.d:                                             ; preds = %bb.a
  %i.r = load i32, ptr %1, align 4, !tbaa !32     ; 3 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !148  ; 4 uses
  %i.v = urem i64 %i.s, %i.u                      ; 5 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !147    ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !106  ; 7 uses
  %.not.i24 = icmp eq ptr %i.y, null
  br i1 %.not.i24, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !107  ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32
  %i.ac = icmp eq i32 %i.r, %i.ab
  br i1 %i.ac, label %_ZNKSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread, label %.lr.ph.i

_ZNKSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v ; 2 uses
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !107 ; 2 uses
  %.not18.i2655 = icmp eq ptr %i.ae, null
  br i1 %.not18.i2655, label %._crit_edge.i.i, label %bb.i

bb.f:                                             ; preds = %bb.g
  %i.af = icmp eq i32 %i.r, %i.ai
  br i1 %i.af, label %_ZNKSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit, label %.lr.ph.i, !llvm.loop !2

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.020.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ] ; 2 uses
  %i.ag = load ptr, ptr %.020.i, align 8, !tbaa !107 ; 4 uses
  %.not18.i = icmp eq ptr %i.ag, null
  br i1 %.not18.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !32 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = urem i64 %i.aj, %i.u
  %.not19.i = icmp eq i64 %i.ak, %i.v
  br i1 %.not19.i, label %bb.f, label %..loopexit_crit_edge21.i, !llvm.loop !2

..loopexit_crit_edge21.i:                         ; preds = %bb.g
  br label %.critedge, !llvm.loop !2

_ZNKSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit: ; preds = %bb.f, %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit
  %i.al = phi i64 [ %i.o, %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.u, %bb.f ] ; 2 uses
  %i.am = phi ptr [ %.pre40, %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.y, %bb.f ] ; 3 uses
  %i.an = phi ptr [ %.pre, %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.w, %bb.f ] ; 3 uses
  %.020 = phi ptr [ %.01115.i.lcssa, %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %.020.i, %bb.f ] ; 7 uses
  %.119 = phi ptr [ %i.m, %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.ag, %bb.f ] ; 6 uses
  %.017 = phi i64 [ %i.q, %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.v, %bb.f ] ; 3 uses
  %i.ao = icmp eq ptr %.020, %i.am
  %i.ap = load ptr, ptr %.119, align 8, !tbaa !107 ; 3 uses
  %.not18.i26 = icmp eq ptr %i.ap, null           ; 2 uses
  br i1 %i.ao, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNKSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.017 ; 2 uses
  br i1 %.not18.i26, label %._crit_edge.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread, %bb.h
  %i.ar = phi i64 [ %i.u, %_ZNKSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.al, %bb.h ]
  %i.as = phi ptr [ %i.y, %_ZNKSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.am, %bb.h ] ; 2 uses
  %i.at = phi ptr [ %i.w, %_ZNKSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.an, %bb.h ]
  %.0205769 = phi ptr [ %i.y, %_ZNKSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.020, %bb.h ] ; 2 uses
  %.1195967 = phi ptr [ %i.z, %_ZNKSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.119, %bb.h ] ; 2 uses
  %.0176066 = phi i64 [ %i.v, %_ZNKSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.017, %bb.h ]
  %i.au = phi ptr [ %i.ad, %_ZNKSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.aq, %bb.h ]
  %i.av = phi ptr [ %i.ae, %_ZNKSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.ap, %bb.h ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !32
  %i.ay = sext i32 %i.ax to i64
  %i.az = urem i64 %i.ay, %i.ar                   ; 2 uses
  %.not9.i.i = icmp eq i64 %i.az, %.0176066
  br i1 %.not9.i.i, label %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS9_15_Hash_node_baseEPNS9_10_Hash_nodeIS7_Lb0EEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.az
  store ptr %i.as, ptr %i.ba, align 8, !tbaa !106
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNKSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread, %bb.j, %bb.h
  %i.bb = phi ptr [ %i.y, %_ZNKSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.as, %bb.j ], [ %i.am, %bb.h ]
  %.0205770 = phi ptr [ %i.y, %_ZNKSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.0205769, %bb.j ], [ %.020, %bb.h ]
  %.1195968 = phi ptr [ %i.z, %_ZNKSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.1195967, %bb.j ], [ %.119, %bb.h ]
  %i.bc = phi ptr [ %i.ad, %_ZNKSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.au, %bb.j ], [ %i.aq, %bb.h ]
  %i.bd = phi ptr [ null, %_ZNKSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.av, %bb.j ], [ null, %bb.h ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.bb
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !172
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  store ptr null, ptr %i.bc, align 8, !tbaa !106
  br label %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS9_15_Hash_node_baseEPNS9_10_Hash_nodeIS7_Lb0EEE.exit

bb.m:                                             ; preds = %_ZNKSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit
  br i1 %.not18.i26, label %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS9_15_Hash_node_baseEPNS9_10_Hash_nodeIS7_Lb0EEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !32
  %i.bi = sext i32 %i.bh to i64
  %i.bj = urem i64 %i.bi, %i.al                   ; 2 uses
  %.not17.i = icmp eq i64 %i.bj, %.017
  br i1 %.not17.i, label %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS9_15_Hash_node_baseEPNS9_10_Hash_nodeIS7_Lb0EEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bj
  store ptr %.020, ptr %i.bk, align 8, !tbaa !106
  br label %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS9_15_Hash_node_baseEPNS9_10_Hash_nodeIS7_Lb0EEE.exit

_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS9_15_Hash_node_baseEPNS9_10_Hash_nodeIS7_Lb0EEE.exit: ; preds = %bb.i, %bb.l, %bb.m, %bb.n, %bb.o
  %.11958 = phi ptr [ %.1195967, %bb.i ], [ %.1195968, %bb.l ], [ %.119, %bb.m ], [ %.119, %bb.n ], [ %.119, %bb.o ] ; 2 uses
  %.02056 = phi ptr [ %.0205769, %bb.i ], [ %.0205770, %bb.l ], [ %.020, %bb.m ], [ %.020, %bb.n ], [ %.020, %bb.o ]
  %i.bl = load ptr, ptr %.11958, align 8, !tbaa !107
  store ptr %i.bl, ptr %.02056, align 8, !tbaa !107
  tail call void @_ZdlPvm(ptr noundef nonnull %.11958, i64 noundef 32) #28
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !173
  %i.bn = add i64 %i.bm, -1
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !173
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i, %.lr.ph, %..loopexit_crit_edge21.i, %bb.d, %bb.b, %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS9_15_Hash_node_baseEPNS9_10_Hash_nodeIS7_Lb0EEE.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS9_15_Hash_node_baseEPNS9_10_Hash_nodeIS7_Lb0EEE.exit ], [ 0, %.lr.ph ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %..loopexit_crit_edge21.i ], [ 0, %.lr.ph.i ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI11epoll_eventSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !153    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !152
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 12                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 768614336404564650, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.b, i8 0, i64 12, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIP11epoll_eventmS0_ET_S2_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.q, 12
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.06.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(12) %i.b, i64 12, i1 false), !tbaa.struct !312
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIP11epoll_eventmS0_ET_S2_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !311

_ZSt27__uninitialized_default_n_aIP11epoll_eventmS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !154
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.u = icmp ult i64 %i.n, %1
  br i1 %i.u, label %bb.f, label %_ZNKSt6vectorI11epoll_eventSaIS0_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #26
  unreachable

_ZNKSt6vectorI11epoll_eventSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.v = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 768614336404564650) ; 2 uses
  %i.x = mul nuw nsw i64 %i.w, 12
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #27 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.f ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.z, i8 0, i64 12, i1 false)
  %i.aa = add nsw i64 %1, -1                      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZSt27__uninitialized_default_n_aIP11epoll_eventmS0_ET_S2_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorI11epoll_eventSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 12 ; 2 uses
  %.idx.i.i.i.i.i30 = mul nuw nsw i64 %i.aa, 12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i.i.i30
  br label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31, %bb.g
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i31 ], [ %i.ac, %bb.g ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.06.i.i.i.i.i.i.i32, ptr noundef nonnull align 1 dereferenceable(12) %i.z, i64 12, i1 false), !tbaa.struct !312
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZSt27__uninitialized_default_n_aIP11epoll_eventmS0_ET_S2_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !311

_ZSt27__uninitialized_default_n_aIP11epoll_eventmS0_ET_S2_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31, %_ZNKSt6vectorI11epoll_eventSaIS0_EE12_M_check_lenEmPKc.exit
  %i.af = icmp sgt i64 %i.f, 0
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorI11epoll_eventSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP11epoll_eventmS0_ET_S2_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorI11epoll_eventSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

_ZNSt6vectorI11epoll_eventSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIP11epoll_eventmS0_ET_S2_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseI11epoll_eventSaIS0_EE13_M_deallocateEPS0_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI11epoll_eventSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.ag = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ag) #28
  br label %_ZNSt12_Vector_baseI11epoll_eventSaIS0_EE13_M_deallocateEPS0_m.exit38

_ZNSt12_Vector_baseI11epoll_eventSaIS0_EE13_M_deallocateEPS0_m.exit38: ; preds = %_ZNSt6vectorI11epoll_eventSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %bb.i
  store ptr %i.y, ptr %0, align 8, !tbaa !153
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %1
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !154
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ai, ptr %i.h, align 8, !tbaa !152
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP11epoll_eventmS0_ET_S2_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseI11epoll_eventSaIS0_EE13_M_deallocateEPS0_m.exit38, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind memory(none) }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind }
attributes #25 = { nounwind willreturn memory(none) }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #28 = { builtin nounwind }
attributes #29 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !71}
!1 = distinct !{!1, !71}
!2 = distinct !{!2, !71}
!3 = distinct !{!3, !71}
!4 = distinct !{!4, !71}
!5 = distinct !{!5, !71}
!6 = !{i32 1, !"long-double-type", !"x86_fp80"}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"bool", !11, i64 0}
!16 = !{!"_ZTSN8WasmEdge4Host4WASI8FdHolderE", !12, i64 0, !15, i64 4}
!17 = !{!16, !12, i64 0}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!"any pointer", !11, i64 0}
!21 = !{!"p1 _ZTS11__dirstream", !20, i64 0}
!22 = !{!"long", !11, i64 0}
!23 = !{!"p1 omnipotent char", !20, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!25 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !24, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !25, i64 0}
!27 = !{!"_ZTSSt6vectorIhSaIhEE", !26, i64 0}
!28 = !{!"_ZTSN8WasmEdge4Host4WASI9DirHolderE", !21, i64 0, !22, i64 8, !27, i64 16}
!29 = !{!28, !21, i64 0}
!30 = !{!"_ZTSSt22_Optional_payload_baseI4statE", !11, i64 0, !15, i64 144}
!31 = !{!30, !15, i64 144}
!32 = !{!12, !12, i64 0}
!33 = !{!"_ZTSN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI5INodeE14__wasi_errno_tLb0ELb1EEE", !15, i64 0, !11, i64 8}
!34 = !{!33, !15, i64 0}
!35 = !{!"_ZTS14__wasi_errno_t", !11, i64 0}
!36 = !{!"_ZTSN5cxx2010unexpectedI14__wasi_errno_tEE", !35, i64 0}
!37 = !{!36, !35, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !38, i64 0, !22, i64 8, !11, i64 16}
!40 = !{!39, !23, i64 0}
!41 = !{!"_ZTS8timespec", !22, i64 0, !22, i64 8}
!42 = !{!"_ZTS4stat", !22, i64 0, !22, i64 8, !22, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !41, i64 72, !41, i64 88, !41, i64 104, !11, i64 120}
!43 = !{!42, !12, i64 24}
!44 = !{!"_ZTS17__wasi_filetype_t", !11, i64 0}
!45 = !{!"_ZTS17__wasi_filestat_t", !22, i64 0, !22, i64 8, !44, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56}
!46 = !{!45, !44, i64 16}
!47 = !{!42, !22, i64 16}
!48 = !{!45, !22, i64 24}
!49 = !{!42, !22, i64 48}
!50 = !{!45, !22, i64 32}
!51 = !{!22, !22, i64 0}
!52 = !{!45, !22, i64 40}
!53 = !{!45, !22, i64 48}
!54 = !{!45, !22, i64 56}
!55 = !{!41, !22, i64 8}
!56 = !{!"_ZTSN5cxx206detail12span_storageIhLm18446744073709551615EEE", !23, i64 0, !22, i64 8}
!57 = !{!56, !23, i64 0}
!58 = !{!"_ZTS5iovec", !20, i64 0, !22, i64 8}
!59 = !{!58, !20, i64 0}
!60 = !{!56, !22, i64 8}
!61 = !{!58, !22, i64 8}
!62 = !{!"_ZTSN5cxx206detail12span_storageIKhLm18446744073709551615EEE", !23, i64 0, !22, i64 8}
!63 = !{!62, !23, i64 0}
!64 = !{!62, !22, i64 8}
!65 = !{!23, !23, i64 0}
!66 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!67 = !{!11, !11, i64 0}
!68 = !{!24, !23, i64 0}
!69 = !{!24, !23, i64 8}
!70 = !{!"short", !11, i64 0}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"_ZTS23__wasi_address_family_t", !11, i64 0}
!73 = !{!"any p2 pointer", !20, i64 0}
!74 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb1EJN8WasmEdge4Host4WASI13SockEmptyAddrE16sockaddr_storage8sockaddr11sockaddr_in12sockaddr_in611sockaddr_unEEE", !11, i64 0, !11, i64 128}
!75 = !{!74, !11, i64 128}
!76 = !{!"_ZTS7in_addr", !12, i64 0}
!77 = !{!"_ZTS11sockaddr_in", !70, i64 0, !70, i64 2, !76, i64 4, !11, i64 8}
!78 = !{!77, !70, i64 0}
!79 = !{!77, !70, i64 2}
!80 = !{!"_ZTS8in6_addr", !11, i64 0}
!81 = !{!"_ZTS12sockaddr_in6", !70, i64 0, !70, i64 2, !12, i64 4, !80, i64 8, !12, i64 24}
!82 = !{!81, !70, i64 0}
!83 = !{!81, !70, i64 2}
!84 = !{!81, !12, i64 4}
!85 = !{!"_ZTS11sockaddr_un", !70, i64 0, !11, i64 2}
!86 = !{!85, !70, i64 0}
!87 = !{!"p1 _ZTS5iovec", !20, i64 0}
!88 = !{!"_ZTS6msghdr", !20, i64 0, !12, i64 8, !87, i64 16, !22, i64 24, !20, i64 32, !22, i64 40, !12, i64 48}
!89 = !{!88, !20, i64 0}
!90 = !{!88, !12, i64 8}
!91 = !{!88, !87, i64 16}
!92 = !{!88, !22, i64 24}
!93 = !{!"_ZTS16sockaddr_storage", !70, i64 0, !11, i64 2, !22, i64 120}
!94 = !{!93, !70, i64 0}
!95 = !{!39, !22, i64 8}
!96 = !{!72, !72, i64 0}
!97 = !{!70, !70, i64 0}
!98 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !73, i64 0}
!99 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !20, i64 0}
!100 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !99, i64 0}
!101 = !{!"float", !11, i64 0}
!102 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !101, i64 0, !22, i64 8}
!103 = !{!"_ZTSSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE", !98, i64 0, !22, i64 8, !100, i64 16, !22, i64 24, !102, i64 32, !99, i64 48}
!104 = !{!103, !22, i64 8}
!105 = !{!103, !98, i64 0}
!106 = !{!99, !99, i64 0}
!107 = !{!100, !99, i64 0}
!108 = !{!"_ZTS16__wasi_clockid_t", !11, i64 0}
!109 = !{!108, !108, i64 0}
!110 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIK16__wasi_clockid_tSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaISA_EEELb0EEEEEE", !20, i64 0}
!111 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIK16__wasi_clockid_tSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS9_EEELb0EEE", !20, i64 0}
!112 = !{!"_ZTSNSt10_HashtableI16__wasi_clockid_tSt4pairIKS0_St6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS8_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeE", !110, i64 0, !111, i64 8}
!113 = !{!112, !110, i64 0}
!114 = !{!"p1 _ZTSN8WasmEdge4Host4WASI6Poller5TimerE", !20, i64 0}
!115 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE17_Vector_impl_dataE", !114, i64 0, !114, i64 8, !114, i64 16}
!116 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE12_Vector_implE", !115, i64 0}
!117 = !{!"_ZTSSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE", !116, i64 0}
!118 = !{!"_ZTSSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS4_EE", !117, i64 0}
!119 = !{!"_ZTSSt4pairIK16__wasi_clockid_tSt6vectorIN8WasmEdge4Host4WASI6Poller5TimerESaIS7_EEE", !108, i64 0, !118, i64 8}
!120 = !{!119, !108, i64 0}
!121 = !{!112, !111, i64 8}
!122 = !{!114, !114, i64 0}
!123 = !{!"_ZTSN5cxx206detail21expected_storage_baseIN8WasmEdge4Host4WASI6Poller5TimerE14__wasi_errno_tLb0ELb1EEE", !15, i64 0, !11, i64 4}
!124 = !{!123, !15, i64 0}
!125 = !{!"_ZTSN8WasmEdge4Host4WASI6Poller5TimerE", !16, i64 0, !108, i64 8}
!126 = !{!125, !108, i64 8}
!127 = !{!115, !114, i64 8}
!128 = !{!115, !114, i64 16}
!129 = !{!"p1 _ZTSN8WasmEdge4Host4WASI13PollerContextE", !20, i64 0}
!130 = !{!"p1 _ZTS14__wasi_event_t", !20, i64 0}
!131 = !{!"_ZTSN5cxx206detail12span_storageI14__wasi_event_tLm18446744073709551615EEE", !130, i64 0, !22, i64 8}
!132 = !{!"_ZTSN5cxx204spanI14__wasi_event_tLm18446744073709551615EEE", !131, i64 0}
!133 = !{!"p1 _ZTSN8WasmEdge4Host4WASI6Poller13OptionalEventE", !20, i64 0}
!134 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE17_Vector_impl_dataE", !133, i64 0, !133, i64 8, !133, i64 16}
!135 = !{!"_ZTSNSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE12_Vector_implE", !134, i64 0}
!136 = !{!"_ZTSSt12_Vector_baseIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE", !135, i64 0}
!137 = !{!"_ZTSSt6vectorIN8WasmEdge4Host4WASI6Poller13OptionalEventESaIS4_EE", !136, i64 0}
!138 = !{!"_ZTSSt10_HashtableIiSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE", !98, i64 0, !22, i64 8, !100, i64 16, !22, i64 24, !102, i64 32, !99, i64 48}
!139 = !{!"_ZTSSt13unordered_mapIiN8WasmEdge4Host4WASI6Poller6FdDataESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE", !138, i64 0}
!140 = !{!"p1 _ZTS11epoll_event", !20, i64 0}
!141 = !{!"_ZTSNSt12_Vector_baseI11epoll_eventSaIS0_EE17_Vector_impl_dataE", !140, i64 0, !140, i64 8, !140, i64 16}
!142 = !{!"_ZTSNSt12_Vector_baseI11epoll_eventSaIS0_EE12_Vector_implE", !141, i64 0}
!143 = !{!"_ZTSSt12_Vector_baseI11epoll_eventSaIS0_EE", !142, i64 0}
!144 = !{!"_ZTSSt6vectorI11epoll_eventSaIS0_EE", !143, i64 0}
!145 = !{!"_ZTSN8WasmEdge4Host4WASI6PollerE", !16, i64 0, !129, i64 8, !132, i64 16, !137, i64 32, !139, i64 56, !139, i64 112, !118, i64 168, !144, i64 192}
!146 = !{!145, !129, i64 8}
!147 = !{!138, !98, i64 0}
!148 = !{!138, !22, i64 8}
!149 = !{!134, !133, i64 16}
!150 = !{!134, !133, i64 0}
!151 = !{!134, !133, i64 8}
!152 = !{!141, !140, i64 16}
!153 = !{!141, !140, i64 0}
!154 = !{!141, !140, i64 8}
!155 = !{!115, !114, i64 0}
!156 = !{!131, !22, i64 8}
!157 = !{!"_ZTS18__wasi_eventtype_t", !11, i64 0}
!158 = !{!"_ZTS21__wasi_eventrwflags_t", !11, i64 0}
!159 = !{!"_ZTS27__wasi_event_fd_readwrite_t", !22, i64 0, !158, i64 8}
!160 = !{!"_ZTS14__wasi_event_t", !22, i64 0, !35, i64 8, !157, i64 10, !159, i64 16}
!161 = !{!"_ZTSN8WasmEdge4Host4WASI6Poller13OptionalEventE", !160, i64 0, !15, i64 32}
!162 = !{!161, !15, i64 32}
!163 = !{!160, !22, i64 0}
!164 = !{!160, !157, i64 10}
!165 = !{!160, !35, i64 8}
!166 = !{!"_ZTSN8WasmEdge4Host4WASI6Poller6FdDataE", !133, i64 0, !133, i64 8}
!167 = !{!"_ZTSSt4pairIKiN8WasmEdge4Host4WASI6Poller6FdDataEE", !12, i64 0, !166, i64 8}
!168 = !{!167, !12, i64 0}
!169 = !{!167, !133, i64 8}
!170 = !{!"_ZTS11epoll_event", !12, i64 0, !11, i64 4}
!171 = !{!170, !12, i64 0}
!172 = !{!138, !99, i64 16}
!173 = !{!138, !22, i64 24}
!174 = !{!167, !133, i64 16}
!175 = !{!"_ZTSN3fmt3v116detail6bufferIcEE", !23, i64 0, !22, i64 8, !22, i64 16, !20, i64 24}
!176 = !{!175, !23, i64 0}
!177 = !{!175, !22, i64 16}
!178 = !{!175, !22, i64 8}
!179 = !{!102, !22, i64 8}
!180 = !{!103, !99, i64 16}
!181 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!182 = !{!"_ZTSSt22_Optional_payload_baseIPvE", !11, i64 0, !15, i64 8}
!183 = !{!182, !15, i64 8}
!184 = !{!20, !20, i64 0}
!185 = distinct !{!185, i1 false, !"_ZN8WasmEdge4Host4WASI12_GLOBAL__N_113createStdNodeEi"}
!186 = distinct !{!186, !185, !"_ZN8WasmEdge4Host4WASI12_GLOBAL__N_113createStdNodeEi: argument 0"}
!187 = !{!186}
!188 = !{!"_ZTS16__wasi_fdflags_t", !11, i64 0}
!189 = !{!"_ZTS15__wasi_rights_t", !11, i64 0}
!190 = !{!"_ZTS15__wasi_fdstat_t", !44, i64 0, !188, i64 2, !189, i64 8, !189, i64 16}
!191 = !{!190, !44, i64 0}
!192 = !{!188, !188, i64 0}
!193 = !{!45, !22, i64 0}
!194 = !{!45, !22, i64 8}
!195 = distinct !{!195, !71, !214, !215}
!196 = distinct !{!196, !71, !214, !215}
!197 = distinct !{!197, !71, !214}
!198 = distinct !{!198, !71}
!199 = !{!"_ZTSSt17_Optional_payloadI4statLb1ELb1ELb1EE", !30, i64 0}
!200 = !{!"_ZTSSt14_Optional_baseI4statLb1ELb1EE", !199, i64 0}
!201 = !{!"_ZTSSt8optionalI4statE", !200, i64 0}
!202 = !{!"_ZTSN8WasmEdge4Host4WASI5INodeE", !16, i64 0, !201, i64 8, !28, i64 160}
!203 = !{!202, !22, i64 168}
!204 = !{!202, !21, i64 160}
!205 = !{!"_ZTS6dirent", !22, i64 0, !22, i64 8, !70, i64 16, !11, i64 18, !11, i64 19}
!206 = !{!205, !22, i64 8}
!207 = !{!"_ZTS15__wasi_dirent_t", !22, i64 0, !22, i64 8, !12, i64 16, !44, i64 20}
!208 = !{!207, !22, i64 0}
!209 = !{!205, !22, i64 0}
!210 = !{!207, !22, i64 8}
!211 = !{!205, !11, i64 18}
!212 = !{!207, !44, i64 20}
!213 = !{!207, !12, i64 16}
!214 = !{!"llvm.loop.isvectorized", i32 1}
!215 = !{!"llvm.loop.unroll.runtime.disable"}
!216 = !{!"branch_weights", i32 4, i32 28}
!217 = !{!24, !23, i64 16}
!218 = distinct !{!218, i1 false, !"_ZN8WasmEdge4Host4WASI12_GLOBAL__N_126createNullTerminatedStringESt17basic_string_viewIcSt11char_traitsIcEE"}
!219 = distinct !{!219, !218, !"_ZN8WasmEdge4Host4WASI12_GLOBAL__N_126createNullTerminatedStringESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!220 = distinct !{!220, i1 false, !"_ZSt11make_uniqueIA_cENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!221 = distinct !{!221, !220, !"_ZSt11make_uniqueIA_cENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!222 = distinct !{!222, i1 false, !"_ZN8WasmEdge4Host4WASI12_GLOBAL__N_126createNullTerminatedStringESt17basic_string_viewIcSt11char_traitsIcEE"}
!223 = distinct !{!223, !222, !"_ZN8WasmEdge4Host4WASI12_GLOBAL__N_126createNullTerminatedStringESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!224 = distinct !{!224, i1 false, !"_ZSt11make_uniqueIA_cENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!225 = distinct !{!225, !224, !"_ZSt11make_uniqueIA_cENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!226 = distinct !{!226, !71}
!227 = distinct !{!227, !71}
!228 = !{!219}
!229 = !{!221, !219}
!230 = !{!223}
!231 = !{!225, !223}
!232 = !{!"_ZTS16__wasi_aiflags_t", !11, i64 0}
!233 = !{!"_ZTS18__wasi_sock_type_t", !11, i64 0}
!234 = !{!"_ZTS17__wasi_protocol_t", !11, i64 0}
!235 = !{!"_ZTS17__wasi_addrinfo_t", !232, i64 0, !72, i64 2, !233, i64 3, !234, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24}
!236 = !{!235, !232, i64 0}
!237 = !{!"p1 _ZTS8sockaddr", !20, i64 0}
!238 = !{!"p1 _ZTS8addrinfo", !20, i64 0}
!239 = !{!"_ZTS8addrinfo", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !237, i64 24, !23, i64 32, !238, i64 40}
!240 = !{!239, !12, i64 0}
!241 = !{!235, !72, i64 2}
!242 = !{!239, !12, i64 4}
!243 = !{!235, !233, i64 3}
!244 = !{!239, !12, i64 8}
!245 = !{!235, !234, i64 4}
!246 = !{!239, !12, i64 12}
!247 = !{!235, !12, i64 8}
!248 = !{!239, !12, i64 16}
!249 = !{!238, !238, i64 0}
!250 = !{!239, !238, i64 40}
!251 = !{!"p2 _ZTS17__wasi_addrinfo_t", !73, i64 0}
!252 = !{!"_ZTSN5cxx206detail12span_storageIP17__wasi_addrinfo_tLm18446744073709551615EEE", !251, i64 0, !22, i64 8}
!253 = !{!252, !251, i64 0}
!254 = !{!"p1 _ZTS17__wasi_addrinfo_t", !20, i64 0}
!255 = !{!254, !254, i64 0}
!256 = !{!239, !23, i64 32}
!257 = !{!235, !12, i64 20}
!258 = !{!239, !237, i64 24}
!259 = !{!"_ZTS8sockaddr", !70, i64 0, !11, i64 2}
!260 = !{!259, !70, i64 0}
!261 = !{!"p1 _ZTS17__wasi_sockaddr_t", !20, i64 0}
!262 = !{!261, !261, i64 0}
!263 = !{!"_ZTS17__wasi_sockaddr_t", !72, i64 0, !12, i64 4, !12, i64 8}
!264 = !{!263, !72, i64 0}
!265 = !{!263, !12, i64 4}
!266 = distinct !{!266, i1 false, !"_ZN8WasmEdge4Host4WASIL23sockAddressAssignHelperE23__wasi_address_family_tRKN5cxx204spanIKhLm18446744073709551615EEEt"}
!267 = distinct !{!267, !266, !"_ZN8WasmEdge4Host4WASIL23sockAddressAssignHelperE23__wasi_address_family_tRKN5cxx204spanIKhLm18446744073709551615EEEt: argument 0"}
!268 = !{!267}
!269 = distinct !{!269, i1 false, !"_ZN8WasmEdge4Host4WASIL23sockAddressAssignHelperE23__wasi_address_family_tRKN5cxx204spanIKhLm18446744073709551615EEEt"}
!270 = distinct !{!270, !269, !"_ZN8WasmEdge4Host4WASIL23sockAddressAssignHelperE23__wasi_address_family_tRKN5cxx204spanIKhLm18446744073709551615EEEt: argument 0"}
!271 = !{!270}
!272 = !{!88, !12, i64 48}
!273 = !{!"_ZTS16__wasi_roflags_t", !11, i64 0}
!274 = !{!273, !273, i64 0}
!275 = distinct !{!275, i1 false, !"_ZN8WasmEdge4Host4WASIL23sockAddressAssignHelperE23__wasi_address_family_tRKN5cxx204spanIKhLm18446744073709551615EEEt"}
!276 = distinct !{!276, !275, !"_ZN8WasmEdge4Host4WASIL23sockAddressAssignHelperE23__wasi_address_family_tRKN5cxx204spanIKhLm18446744073709551615EEEt: argument 0"}
!277 = !{!276}
!278 = !{!102, !101, i64 0}
!279 = distinct !{!279, i1 false, !"_ZSt19__relocate_object_aIN8WasmEdge4Host4WASI6Poller5TimerES4_SaIS4_EEvPT_PT0_RT1_"}
!280 = distinct !{!280, !279, !"_ZSt19__relocate_object_aIN8WasmEdge4Host4WASI6Poller5TimerES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!281 = distinct !{!281, !279, !"_ZSt19__relocate_object_aIN8WasmEdge4Host4WASI6Poller5TimerES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!282 = !{!280}
!283 = !{!281}
!284 = !{!35, !35, i64 0}
!285 = distinct !{!285, !71}
!286 = distinct !{!286, !71}
!287 = !{!133, !133, i64 0}
!288 = !{!158, !158, i64 0}
!289 = !{!160, !22, i64 16}
!290 = !{!101, !101, i64 0}
!291 = !{i64 0, i64 4, !290, i64 8, i64 8, !51}
!292 = !{!98, !98, i64 0}
!293 = !{!175, !20, i64 24}
!294 = !{!"branch_weights", !"expected", i32 1430940, i32 2146052708}
!295 = !{!103, !22, i64 24}
!296 = distinct !{!296, !71}
!297 = !{!103, !99, i64 48}
!298 = distinct !{!298, i1 false, !"_ZSt19__relocate_object_aIN8WasmEdge4Host4WASI6Poller5TimerES4_SaIS4_EEvPT_PT0_RT1_"}
!299 = distinct !{!299, !298, !"_ZSt19__relocate_object_aIN8WasmEdge4Host4WASI6Poller5TimerES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!300 = distinct !{!300, !298, !"_ZSt19__relocate_object_aIN8WasmEdge4Host4WASI6Poller5TimerES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!301 = distinct !{!301, i1 false, !"_ZSt19__relocate_object_aIN8WasmEdge4Host4WASI6Poller5TimerES4_SaIS4_EEvPT_PT0_RT1_"}
!302 = distinct !{!302, !301, !"_ZSt19__relocate_object_aIN8WasmEdge4Host4WASI6Poller5TimerES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!303 = distinct !{!303, !301, !"_ZSt19__relocate_object_aIN8WasmEdge4Host4WASI6Poller5TimerES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!304 = !{!299}
!305 = !{!300}
!306 = !{!302}
!307 = !{!303}
!308 = distinct !{!308, !71}
!309 = !{!138, !99, i64 48}
!310 = distinct !{!310, !71}
!311 = distinct !{!311, !71}
!312 = !{i64 0, i64 4, !32, i64 4, i64 8, !67}
end_hunk_3
