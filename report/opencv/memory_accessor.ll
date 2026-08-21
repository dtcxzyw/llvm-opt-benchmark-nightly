Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/memory_accessor?download=true
inline.NumInlined: 390
inline.NumDeleted: 244
begin_hunk_0_@_ZN3ade14MemoryAccessor10setNewViewERKNS_4util9DynMdViewILm6EvEE:bb.a
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.04.07.i.pre = load ptr, ptr %i.b, align 8, !tbaa !12
  br label %_ZN3ade14MemoryAccessor7onErrorEPKc.exit

_ZN3ade14MemoryAccessor7onErrorEPKc.exit:         ; preds = %bb.b, %_ZNKSt8functionIFvPKcEEclES1_.exit.i
  %.sroa.04.07.i = phi ptr [ %i.c, %bb.b ], [ %.sroa.04.07.i.pre, %_ZNKSt8functionIFvPKcEEclES1_.exit.i ] ; 2 uses
  %.not8.i = icmp eq ptr %.sroa.04.07.i, %i.b
  br i1 %.not8.i, label %_ZN3ade14MemoryAccessor17abandonAllHandlesEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN3ade14MemoryAccessor7onErrorEPKc.exit, %_ZN3ade14MemoryAccessor12SavedHandles7abandonEv.exit.i
  %.sroa.04.09.i = phi ptr [ %.sroa.04.0.i, %_ZN3ade14MemoryAccessor12SavedHandles7abandonEv.exit.i ], [ %.sroa.04.07.i, %_ZN3ade14MemoryAccessor7onErrorEPKc.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i, i64 24
  store ptr null, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  %.not7.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not7.i.i, label %_ZN3ade14MemoryAccessor12SavedHandles7abandonEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %.sroa.04.08.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.l, %.lr.ph.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.n
  br i1 %.not.i.i, label %_ZN3ade14MemoryAccessor12SavedHandles7abandonEv.exit.i, label %.lr.ph.i.i

_ZN3ade14MemoryAccessor12SavedHandles7abandonEv.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.sroa.04.0.i = load ptr, ptr %.sroa.04.09.i, align 8, !tbaa !12 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.04.0.i, %i.b
  br i1 %.not.i, label %_ZN3ade14MemoryAccessor17abandonAllHandlesEv.exit, label %.lr.ph.i

_ZN3ade14MemoryAccessor17abandonAllHandlesEv.exit: ; preds = %_ZN3ade14MemoryAccessor12SavedHandles7abandonEv.exit.i, %_ZN3ade14MemoryAccessor7onErrorEPKc.exit
  call void @_ZNSt7__cxx1110_List_baseIN3ade14MemoryAccessor12SavedHandlesESaIS3_EE8_M_clearEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.b, ptr %i.q, align 8, !tbaa !8
  store ptr %i.b, ptr %i.b, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.r, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %_ZN3ade14MemoryAccessor17abandonAllHandlesEv.exit, %bb.a
  %i.s = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26   ; 2 uses
  %.not9 = icmp eq ptr %i.s, %i.u
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !tbaa.struct !46
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.06.010 = phi ptr [ %i.s, %.lr.ph ], [ %i.ab, %bb.d ] ; 2 uses
  %i.x = load ptr, ptr %.sroa.06.010, align 8, !tbaa !32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %i.v, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.u
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN3ade14MemoryAccessor12SavedHandles7abandonEPNS_21IMemoryAccessListenerE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %.not10 = icmp eq ptr %i.e, %i.g
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.c
  ret void

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.sroa.07.011 = phi ptr [ %i.k, %bb.e ], [ %i.e, %bb.c ] ; 3 uses
  %i.h = load ptr, ptr %.sroa.07.011, align 8, !tbaa !39
  %i.i = icmp eq ptr %1, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 8
  store ptr null, ptr %i.j, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.k, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN3ade14MemoryAccessor12SavedHandles7abandonEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((8, 16)) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %.not7 = icmp eq ptr %i.c, %i.e
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.04.08 = phi ptr [ %i.g, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3ade14MemoryAccessor12SavedHandlesC2EPS0_RKNS_16MemoryDescriptorERKNS_4util9DynMdSpanILm6EEENS_16MemoryAccessTypeE(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 40)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3, i32 noundef %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !26, !noalias !49 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26, !noalias !49 ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNK3ade4util5Range13IterableRangeINS1_8ZipRangeIJNS1_9IotaRangeImLi1EEERSt6vectorIPNS_21IMemoryAccessListenerESaIS8_EEEEEE8iteratorneERKSE_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34, !noalias !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !noalias !54
  %i.m = invoke noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3, i32 noundef %4)
          to label %bb.c unwind label %bb.g, !inline_history !57

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !20   ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !20
  %.not.i.i.i.i.peel = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.peel, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.p)
          to label %bb.e unwind label %bb.f, !inline_history !58

bb.e:                                             ; preds = %bb.c, %bb.d
  store i64 %i.o, ptr %0, align 8, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.d
  br i1 %i.v, label %_ZNK3ade4util5Range13IterableRangeINS1_8ZipRangeIJNS1_9IotaRangeImLi1EEERSt6vectorIPNS_21IMemoryAccessListenerESaIS8_EEEEEE8iteratorneERKSE_.exit, label %.peel.next

_ZNK3ade4util5Range13IterableRangeINS1_8ZipRangeIJNS1_9IotaRangeImLi1EEERSt6vectorIPNS_21IMemoryAccessListenerESaIS8_EEEEEE8iteratorneERKSE_.exit: ; preds = %bb.p, %bb.e, %bb.a
  ret void

bb.f:                                             ; preds = %bb.d
  %lpad.loopexit.split-lp69 = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %lpad.loopexit.split-lp69, 0
  tail call void @__clang_call_terminate(ptr %i.w) #17
  unreachable

bb.g:                                             ; preds = %bb.b
  %lpad.loopexit.split-lp64 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.peel.next:                                       ; preds = %bb.e, %bb.p
  %.sroa.0.049 = phi ptr [ %i.au, %bb.p ], [ %i.u, %bb.e ] ; 2 uses
  %.sroa.10.048 = phi i64 [ %6, %bb.p ], [ 1, %bb.e ]
  %i.x = load ptr, ptr %.sroa.0.049, align 8, !tbaa !32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !34, !noalias !59
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !59
  %i.ab = invoke noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3, i32 noundef %4)
          to label %bb.h unwind label %bb.l, !inline_history !57

bb.h:                                             ; preds = %.peel.next
  %i.ac = ptrtoint ptr %i.x to i64                ; 2 uses
  store i64 %i.ac, ptr %5, align 8, !tbaa !32, !alias.scope !59
  store ptr %i.ab, ptr %i.f, align 8, !tbaa !62, !alias.scope !59
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !64  ; 4 uses
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !66
  %.not.i28 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i28, label %bb.i, label %_ZNSt6vectorISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread: ; preds = %bb.h
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !20
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !20
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ai, ptr %i.g, align 8, !tbaa !64
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNSt6vectorISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit unwind label %bb.m

_ZNSt6vectorISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %bb.i
  %.pr = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %.not.i29 = icmp eq ptr %.pr, null
  br i1 %.not.i29, label %bb.p, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit
  %i.aj = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull %.pr)
          to label %bb.p unwind label %bb.k, !inline_history !58

bb.k:                                             ; preds = %bb.j
  %lpad.loopexit58 = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %lpad.loopexit58, 0
  call void @__clang_call_terminate(ptr %i.an) #17
  unreachable

bb.l:                                             ; preds = %.peel.next
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEED2Ev.exit32

bb.m:                                             ; preds = %bb.i
  %lpad.loopexit53 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !20  ; 2 uses
  %.not.i31 = icmp eq ptr %.pre, null
  br i1 %.not.i31, label %_ZNSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEED2Ev.exit32, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %.pre)
          to label %_ZNSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEED2Ev.exit32 unwind label %bb.o, !inline_history !58

bb.o:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #17
  unreachable

_ZNSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEED2Ev.exit32: ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %lpad.loopexit, %bb.l ], [ %lpad.loopexit53, %bb.m ], [ %lpad.loopexit53, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.q

bb.p:                                             ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %6 = add nuw i64 %.sroa.10.048, 1               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.049, i64 8 ; 2 uses
  %7 = icmp eq i64 %6, -1
  %i.av = icmp eq ptr %i.au, %i.d
  %narrow.i.i.i.i.i.i.i = select i1 %7, i1 true, i1 %i.av
  br i1 %narrow.i.i.i.i.i.i.i, label %_ZNK3ade4util5Range13IterableRangeINS1_8ZipRangeIJNS1_9IotaRangeImLi1EEERSt6vectorIPNS_21IMemoryAccessListenerESaIS8_EEEEEE8iteratorneERKSE_.exit, label %.peel.next, !llvm.loop !67

bb.q:                                             ; preds = %_ZNSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEED2Ev.exit32, %bb.g
  %.pn24.pn = phi { ptr, i32 } [ %.pn, %_ZNSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEED2Ev.exit32 ], [ %lpad.loopexit.split-lp64, %bb.g ]
  call void @_ZNSt6vectorISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #16
  call void @_ZNSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #16
  resume { ptr, i32 } %.pn24.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN3ade21IMemoryAccessListener19AccessHandleDeleterclEPv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.b)
          to label %_ZN3ade21IMemoryAccessListener19AccessHandleDeleterclEPv.exit unwind label %bb.c, !inline_history !58

_ZN3ade21IMemoryAccessListener19AccessHandleDeleterclEPv.exit: ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #17
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !69     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.l, %_ZSt8_DestroyISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %.05.i.i, align 8, !tbaa !39 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.e)
          to label %_ZSt8_DestroyISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEEEvPT_.exit.i.i unwind label %bb.c, !inline_history !58

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #17
  unreachable

_ZSt8_DestroyISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !70

_ZSt8_DestroyIPSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !69
  br label %_ZSt8_DestroyIPSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.m = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEES4_EvT_S6_RSaIT0_E.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #18
  br label %_ZNSt12_Vector_baseISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEES4_EvT_S6_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3ade14MemoryAccessor12SavedHandlesD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = load ptr, ptr %.05.i.i.i, align 8, !tbaa !39 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.f)
          to label %_ZSt8_DestroyISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEEEvPT_.exit.i.i.i unwind label %bb.c, !inline_history !58

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #17
  unreachable

_ZSt8_DestroyISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !70

_ZSt8_DestroyIPSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !69
  br label %_ZSt8_DestroyIPSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.n = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEES4_EvT_S6_RSaIT0_E.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #18
  br label %_ZNSt6vectorISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEESaIS4_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEES4_EvT_S6_RSaIT0_E.exit.i, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEESaIS4_EED2Ev.exit
  %i.v = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %i.u)
          to label %_ZNSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEED2Ev.exit unwind label %bb.f, !inline_history !58

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #17
  unreachable

_ZNSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEESaIS4_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1110_List_baseIN3ade14MemoryAccessor12SavedHandlesESaIS3_EE8_M_clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %.not8 = icmp eq ptr %i.a, %0
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN3ade14MemoryAccessor12SavedHandlesD2Ev.exit
  %.09 = phi ptr [ %i.b, %_ZN3ade14MemoryAccessor12SavedHandlesD2Ev.exit ], [ %i.a, %bb.a ] ; 7 uses
  %i.b = load ptr, ptr %.09, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.09, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %.09, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.09, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph, %_ZSt8_DestroyISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEEEvPT_.exit.i.i.i.i ], [ %i.e, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIvN3ade21IMemoryAccessListener19AccessHandleDeleterEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !39 ; 2 uses
end_hunk_0
