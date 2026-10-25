Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/wasifunc?download=true
inline.NumInlined: 4648
inline.NumDeleted: 1754
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8WasmEdge4Host20WasiFdPrestatDirName4bodyERKNS_7Runtime12CallingFrameEijj:bb.a
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %.sroa.0.0.i = select i1 %i.u, ptr %i.x, ptr null
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !381, !nonnull !86, !align !87
  %i.aa = tail call i32 @_ZNK8WasmEdge4Host4WASI7Environ16fdPrestatDirNameEiN5cxx204spanIhLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(344) %i.z, i32 noundef %3, ptr %.sroa.0.0.i, i64 %i.p) #23 ; 2 uses
  %i.ab = trunc i32 %i.aa to i1
  %.sroa.511.0.extract.shift = lshr i32 %i.aa, 16
  %spec.select = select i1 %i.ab, i32 0, i32 %.sroa.511.0.extract.shift
  br label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread: ; preds = %bb.g, %bb.f, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread17, %bb.a
  %.sink = phi i32 [ 21, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit ], [ 21, %bb.f ], [ %spec.select, %bb.g ], [ 21, %bb.a ], [ 21, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread17 ]
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.ac, align 4, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK8WasmEdge4Host4WASI7Environ16fdPrestatDirNameEiN5cxx204spanIhLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(344) %0, i32 noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %4 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNK8WasmEdge4Host4WASI7Environ13getNodeOrNullEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(344) %0, i32 noundef %1)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8, !tbaa !166    ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21   ; 13 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ult i64 %3, %i.e
  br i1 %i.g, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %iter.check, label %.critedge

iter.check:                                       ; preds = %bb.e
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !23   ; 6 uses
  %min.iters.check = icmp ult i64 %i.e, 4
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.a
  %diff.check = icmp ugt i64 %i.k, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check19 = icmp ult i64 %i.e, 32
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %i.e, 28
  %n.vec = and i64 %i.e, 9223372036854775776      ; 5 uses
  %i.m = and i64 %i.e, 31
  %i.n = getelementptr i8, ptr %2, i64 %n.vec
  %i.o = getelementptr i8, ptr %i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.i, i64 %index ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep20, align 1, !tbaa !22
  %wide.load21 = load <16 x i8>, ptr %i.p, align 1, !tbaa !22
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !22
  store <16 x i8> %wide.load21, ptr %i.q, align 1, !tbaa !22
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !382

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.critedge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !198

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %i.e, 9223372036854775804    ; 4 uses
  %i.s = and i64 %i.e, 3
  %i.t = getelementptr i8, ptr %2, i64 %n.vec22
  %i.u = getelementptr i8, ptr %i.i, i64 %n.vec22
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next27, %vec.epilog.vector.body ] ; 3 uses
  %next.gep24 = getelementptr i8, ptr %2, i64 %index23
  %next.gep25 = getelementptr i8, ptr %i.i, i64 %index23
  %wide.load26 = load <4 x i8>, ptr %next.gep25, align 1, !tbaa !22
  store <4 x i8> %wide.load26, ptr %next.gep24, align 1, !tbaa !22
  %index.next27 = add nuw i64 %index23, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next27, %n.vec22
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !383

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n28 = icmp eq i64 %i.e, %n.vec22
  br i1 %cmp.n28, label %.critedge, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.ph = phi i64 [ %i.e, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i.ph = phi ptr [ %2, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.w = load i8, ptr %.0910.i.i.i.i.i.i.i, align 1, !tbaa !22
  store i8 %i.w, ptr %.0811.i.i.i.i.i.i.i, align 1, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 1
  %i.z = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.aa = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i.i, label %.critedge, !llvm.loop !384

.critedge:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.610.sroa.0.0 = phi i32 [ 2424832, %bb.d ], [ 524288, %bb.b ], [ 1835008, %bb.c ], [ 1, %bb.e ], [ 1, %middle.block ], [ 1, %vec.epilog.middle.block ], [ 1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !167 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ad, align 8, !tbaa !187
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !188
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #23, !inline_history !0
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !30
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #23, !inline_history !0
  br label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !104
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.ag, %bb.i ], [ %i.aq, %bb.j ]
  %i.ar = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ar, label %bb.k, label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !189

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #23
  br label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i32 %.sroa.610.sroa.0.0

bb.l:                                             ; preds = %bb.a
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4Host16WasiFdPrestatGet4bodyERKNS_7Runtime12CallingFrameEij(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  %i.a = and i32 %4, 3
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread.a

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread.a, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.e = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #23, !noalias !388
  switch i32 %i.e, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i [
    i32 11, label %bb.d
    i32 35, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #26
          to label %.noexc.i.i unwind label %bb.f, !noalias !388

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 488
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43, !noalias !388
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !44, !noalias !388 ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.not, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread18, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread18: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.j = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #23, !noalias !388 ; 0 uses
  br label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread.a

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #25, !noalias !388
  unreachable

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !46, !noalias !388 ; 3 uses
  %i.n = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #23, !noalias !388 ; 0 uses
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread.a, label %bb.g

bb.g:                                             ; preds = %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  %i.p = zext i32 %4 to i64                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !49
  %i.s = shl i64 %i.r, 16
  %i.t = add nuw nsw i64 %i.p, 8
  %i.u = icmp ugt i64 %i.t, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.p ; 2 uses
  %i.y = icmp eq ptr %i.w, null
  %i.z = select i1 %i.u, i1 true, i1 %i.y
  br i1 %i.z, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread.a, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !391, !nonnull !86, !align !87
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNK8WasmEdge4Host4WASI7Environ13getNodeOrNullEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(344) %i.ab, i32 noundef %3)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %5, align 8, !tbaa !166   ; 2 uses
  %.not.i12 = icmp eq ptr %i.ac, null
  br i1 %.not.i12, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 240
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !21 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.x, align 4, !tbaa !394
  %i.ag = trunc i64 %i.ae to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !22
  br label %.thread.i

.thread.i:                                        ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.59.sroa.0.1.i = phi i32 [ 1, %bb.k ], [ 524288, %bb.i ], [ 1835008, %bb.j ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !167 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %_ZNK8WasmEdge4Host4WASI7Environ12fdPrestatGetEiR16__wasi_prestat_t.exit, label %bb.l

bb.l:                                             ; preds = %.thread.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ak, align 8, !tbaa !187
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !188
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !30
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #23, !inline_history !387
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !30
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #23, !inline_history !387
  br label %_ZNK8WasmEdge4Host4WASI7Environ12fdPrestatGetEiR16__wasi_prestat_t.exit

bb.n:                                             ; preds = %bb.l
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !104
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i = phi i32 [ %i.an, %bb.o ], [ %i.ax, %bb.p ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.q, label %_ZNK8WasmEdge4Host4WASI7Environ12fdPrestatGetEiR16__wasi_prestat_t.exit, !prof !189

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #23
  br label %_ZNK8WasmEdge4Host4WASI7Environ12fdPrestatGetEiR16__wasi_prestat_t.exit

bb.r:                                             ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #25
  unreachable

_ZNK8WasmEdge4Host4WASI7Environ12fdPrestatGetEiR16__wasi_prestat_t.exit: ; preds = %.thread.i, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %6 = trunc i32 %.sroa.59.sroa.0.1.i to i1
  %.sroa.513.0.extract.shift = lshr exact i32 %.sroa.59.sroa.0.1.i, 16
  %spec.select = select i1 %6, i32 0, i32 %.sroa.513.0.extract.shift
  br label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread.a

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread.a: ; preds = %_ZNK8WasmEdge4Host4WASI7Environ12fdPrestatGetEiR16__wasi_prestat_t.exit, %bb.g, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread18, %bb.b, %bb.a
  %.sroa.513.0.extract.shift.sink = phi i32 [ %spec.select, %_ZNK8WasmEdge4Host4WASI7Environ12fdPrestatGetEiR16__wasi_prestat_t.exit ], [ 4, %bb.a ], [ 21, %bb.g ], [ 21, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit ], [ 21, %bb.b ], [ 21, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread18 ]
  store i8 1, ptr %0, align 4, !tbaa !35
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.513.0.extract.shift.sink, ptr %7, align 4, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4Host12WasiFdPwrite4bodyERKNS_7Runtime12CallingFrameEijjmj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.WasmEdge::Host::(anonymous namespace)::StaticVector.273", align 8 ; 8 uses
  %i.a = and i32 %4, 3
  %.not80 = icmp eq i32 %i.a, 0
  br i1 %.not80, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.b, align 4, !tbaa !22
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %7, 3
  %.not81 = icmp eq i32 %i.c, 0
  br i1 %.not81, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.d, align 4, !tbaa !22
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39   ; 4 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %i.h = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.g) #23, !noalias !397
  switch i32 %i.h, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i [
    i32 11, label %bb.g
    i32 35, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #26
          to label %.noexc.i.i unwind label %bb.i, !noalias !397

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i: ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 480
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 488
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43, !noalias !397
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !44, !noalias !397 ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.not, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread72, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread72: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.m = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.g) #23, !noalias !397 ; 0 uses
  br label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #25, !noalias !397
  unreachable

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !46, !noalias !397 ; 4 uses
  %i.q = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.g) #23, !noalias !397 ; 0 uses
  %i.r = icmp eq ptr %i.p, null
  br i1 %i.r, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.j

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread: ; preds = %bb.e, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread72, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.s, align 4, !tbaa !22
  br label %bb.s

bb.j:                                             ; preds = %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  %i.t = icmp ugt i32 %5, 1024
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 28, ptr %i.u, align 4, !tbaa !22
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  %i.v = zext i32 %4 to i64                       ; 2 uses
  %i.w = shl nuw nsw i32 %5, 3
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !49
  %i.aa = shl i64 %i.z, 16                        ; 4 uses
  %i.ab = add nuw nsw i64 %i.x, %i.v
  %i.ac = icmp ugt i64 %i.ab, %i.aa
  br i1 %i.ac, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI15__wasi_ciovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit, label %bb.n

_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI15__wasi_ciovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit: ; preds = %bb.l
  %.not82 = icmp eq i32 %5, 0
  br i1 %.not82, label %.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI15__wasi_ciovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.ad, align 4, !tbaa !22
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !61 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.v ; 2 uses
  %i.ah = zext i32 %7 to i64                      ; 2 uses
  %.not83 = icmp ule i64 %i.aa, %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah ; 2 uses
  %i.aj = icmp eq ptr %i.af, null
  %i.ak = select i1 %.not83, i1 true, i1 %i.aj
  br i1 %i.ak, label %bb.o, label %bb.p

.thread:                                          ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI15__wasi_ciovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %i.al = zext i32 %7 to i64                      ; 2 uses
  %.not8399 = icmp samesign ule i64 %i.aa, %i.al
  %i.am = icmp eq ptr %.pre, null
  %i.an = select i1 %.not8399, i1 true, i1 %i.am
  br i1 %i.an, label %bb.o, label %.thread102

.thread102:                                       ; preds = %.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.al
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store i64 0, ptr %8, align 8, !tbaa !209
  br label %.critedge

bb.o:                                             ; preds = %.thread, %bb.n
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.ap, align 4, !tbaa !22
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store i64 0, ptr %8, align 8, !tbaa !209
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.x
  %.not85 = icmp eq i32 %5, 0
  br i1 %.not85, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.r
  %.087 = phi ptr [ %i.ag, %.lr.ph ], [ %i.bg, %bb.r ] ; 3 uses
  %.04186 = phi i32 [ 0, %.lr.ph ], [ %i.bc, %bb.r ] ; 2 uses
  %i.as = phi i64 [ 0, %.lr.ph ], [ %i.bf, %bb.r ] ; 3 uses
  %i.at = xor i32 %.04186, -1
  %i.au = getelementptr inbounds nuw i8, ptr %.087, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !211 ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.av, i32 %i.at) ; 2 uses
  %i.aw = load i32, ptr %.087, align 4, !tbaa !212
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = zext i32 %spec.select to i64            ; 2 uses
  %i.az = add nuw nsw i64 %i.ay, %i.ax
  %i.ba = icmp ule i64 %i.az, %i.aa               ; 2 uses
  %.not8496 = icmp eq i32 %spec.select, 0
  %.not84 = or i1 %i.ba, %.not8496
  br i1 %.not84, label %bb.r, label %.critedge45

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ax
  %.sroa.0.0.i50 = select i1 %i.ba, ptr %i.bb, ptr null
  %i.bc = tail call i32 @llvm.uadd.sat.i32(i32 %i.av, i32 %.04186)
  %i.bd = icmp samesign ult i64 %i.as, 1024
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  store ptr %.sroa.0.0.i50, ptr %i.be, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.ay, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bf = add nuw nsw i64 %i.as, 1                ; 3 uses
  store i64 %i.bf, ptr %8, align 8, !tbaa !209
  %i.bg = getelementptr inbounds nuw i8, ptr %.087, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bg, %i.aq
  br i1 %.not, label %.critedge, label %bb.q

.critedge:                                        ; preds = %bb.r, %.thread102, %bb.p
  %i.bh = phi ptr [ %i.ao, %.thread102 ], [ %i.ai, %bb.p ], [ %i.ai, %bb.r ]
  %.val.i = phi i64 [ 0, %.thread102 ], [ 0, %bb.p ], [ %i.bf, %bb.r ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !400, !nonnull !86, !align !87
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bl = call i32 @_ZNK8WasmEdge4Host4WASI7Environ8fdPwriteEiN5cxx204spanINS4_IKhLm18446744073709551615EEELm18446744073709551615EEEmRj(ptr noundef nonnull align 8 dereferenceable(344) %i.bj, i32 noundef %3, ptr nonnull %i.bk, i64 %.val.i, i64 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %i.bh) #23 ; 2 uses
  %i.bm = trunc i32 %i.bl to i1
  %.sroa.555.0.extract.shift = lshr i32 %i.bl, 16
  %spec.select107 = select i1 %i.bm, i32 0, i32 %.sroa.555.0.extract.shift
end_hunk_0
