inline.NumInlined: 478
inline.NumDeleted: 202
begin_hunk_0_@_ZN4llvh3sys33commandLineFitsWithinSystemLimitsENS_9StringRefENS_8ArrayRefIPKcEE:bb.a
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvh15SmallVectorImplINS_9StringRefEE12emplace_backIJRPKcEEEvDpOT_.exit, %_ZN4llvh15SmallVectorImplINS_9StringRefEE7reserveEm.exit.._crit_edge_crit_edge
  %i.f = phi i32 [ %.pre15, %_ZN4llvh15SmallVectorImplINS_9StringRefEE7reserveEm.exit.._crit_edge_crit_edge ], [ %i.ai, %_ZN4llvh15SmallVectorImplINS_9StringRefEE12emplace_backIJRPKcEEEvDpOT_.exit ] ; 2 uses
  %i.g = phi ptr [ %.pre14, %_ZN4llvh15SmallVectorImplINS_9StringRefEE7reserveEm.exit.._crit_edge_crit_edge ], [ %i.ac, %_ZN4llvh15SmallVectorImplINS_9StringRefEE12emplace_backIJRPKcEEEvDpOT_.exit ] ; 2 uses
  %i.h = zext i32 %i.f to i64
  %i.i = load atomic i8, ptr @_ZGVZN4llvh3sys33commandLineFitsWithinSystemLimitsENS_9StringRefENS_8ArrayRefIS1_EEE6ArgMax acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.d, !prof !103

bb.b:                                             ; preds = %._crit_edge
  %i.k = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvh3sys33commandLineFitsWithinSystemLimitsENS_9StringRefENS_8ArrayRefIS1_EEE6ArgMax) #23
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call i64 @sysconf(i32 noundef 0) #23
  store i64 %i.l, ptr @_ZZN4llvh3sys33commandLineFitsWithinSystemLimitsENS_9StringRefENS_8ArrayRefIS1_EEE6ArgMax, align 8, !tbaa !30
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvh3sys33commandLineFitsWithinSystemLimitsENS_9StringRefENS_8ArrayRefIS1_EEE6ArgMax) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %i.m = load i64, ptr @_ZZN4llvh3sys33commandLineFitsWithinSystemLimitsENS_9StringRefENS_8ArrayRefIS1_EEE6ArgMax, align 8, !tbaa !30 ; 3 uses
  %i.n = icmp slt i64 %i.m, 131072
  %i.o = sdiv i64 %i.m, 2
  %.016.i = select i1 %i.n, i64 %i.o, i64 65536
  %i.p = icmp eq i64 %i.m, -1
  br i1 %i.p, label %_ZN4llvh3sys33commandLineFitsWithinSystemLimitsENS_9StringRefENS_8ArrayRefIS1_EE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.idx.i = shl nuw nsw i64 %i.h, 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i
  %.not2533.i = icmp eq i32 %i.f, 0
  br i1 %.not2533.i, label %_ZN4llvh3sys33commandLineFitsWithinSystemLimitsENS_9StringRefENS_8ArrayRefIS1_EE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.r = add i64 %1, 1
  br label %.lr.ph.i

bb.f:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.01535.i, i64 16 ; 2 uses
  %.not25.i = icmp eq ptr %i.s, %i.q
  br i1 %.not25.i, label %_ZN4llvh3sys33commandLineFitsWithinSystemLimitsENS_9StringRefENS_8ArrayRefIS1_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %.01535.i = phi ptr [ %i.s, %bb.f ], [ %i.g, %.lr.ph.preheader.i ] ; 2 uses
  %.01734.i = phi i64 [ %i.v, %bb.f ], [ %i.r, %.lr.ph.preheader.i ]
  %.sroa.4.0..015.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.01535.i, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..015.sroa_idx.i, align 8, !tbaa !30 ; 2 uses
  %i.t = icmp ugt i64 %.sroa.4.0.copyload.i, 131071
  br i1 %i.t, label %_ZN4llvh3sys33commandLineFitsWithinSystemLimitsENS_9StringRefENS_8ArrayRefIS1_EE.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.u = add i64 %.01734.i, 1
  %i.v = add i64 %i.u, %.sroa.4.0.copyload.i      ; 2 uses
  %.not32.i = icmp ugt i64 %i.v, %.016.i
  br i1 %.not32.i, label %_ZN4llvh3sys33commandLineFitsWithinSystemLimitsENS_9StringRefENS_8ArrayRefIS1_EE.exit, label %bb.f

_ZN4llvh3sys33commandLineFitsWithinSystemLimitsENS_9StringRefENS_8ArrayRefIS1_EE.exit: ; preds = %bb.f, %.lr.ph.i, %bb.g, %bb.d, %bb.e
  %.4.i = phi i1 [ true, %bb.d ], [ true, %bb.e ], [ false, %.lr.ph.i ], [ false, %bb.g ], [ true, %bb.f ]
  %i.w = load ptr, ptr %4, align 8, !tbaa !39     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.a
  br i1 %i.x, label %_ZN4llvh11SmallVectorINS_9StringRefELj8EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvh3sys33commandLineFitsWithinSystemLimitsENS_9StringRefENS_8ArrayRefIS1_EE.exit
  call void @free(ptr noundef %i.w) #23
  br label %_ZN4llvh11SmallVectorINS_9StringRefELj8EED2Ev.exit

_ZN4llvh11SmallVectorINS_9StringRefELj8EED2Ev.exit: ; preds = %_ZN4llvh3sys33commandLineFitsWithinSystemLimitsENS_9StringRefENS_8ArrayRefIS1_EE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i1 %.4.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvh15SmallVectorImplINS_9StringRefEE12emplace_backIJRPKcEEEvDpOT_.exit
  %i.y = phi i32 [ %i.ai, %_ZN4llvh15SmallVectorImplINS_9StringRefEE12emplace_backIJRPKcEEEvDpOT_.exit ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.013 = phi ptr [ %i.aj, %_ZN4llvh15SmallVectorImplINS_9StringRefEE12emplace_backIJRPKcEEEvDpOT_.exit ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.z = load ptr, ptr %.013, align 8, !tbaa !92  ; 3 uses
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !42
  %.not.i8 = icmp ult i32 %i.y, %i.aa
  br i1 %.not.i8, label %bb.j, label %bb.i, !prof !104

bb.i:                                             ; preds = %.lr.ph
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 16) #23
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !41
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph
  %i.ab = phi i32 [ %.pre.i, %bb.i ], [ %i.y, %.lr.ph ] ; 2 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  store ptr %i.z, ptr %i.ae, align 8, !tbaa !27
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZN4llvh15SmallVectorImplINS_9StringRefEE12emplace_backIJRPKcEEEvDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #27
  br label %_ZN4llvh15SmallVectorImplINS_9StringRefEE12emplace_backIJRPKcEEEvDpOT_.exit

_ZN4llvh15SmallVectorImplINS_9StringRefEE12emplace_backIJRPKcEEEvDpOT_.exit: ; preds = %bb.j, %bb.k
  %i.ag = phi i64 [ %i.af, %bb.k ], [ 0, %bb.j ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !29
  %i.ai = add i32 %i.ab, 1                        ; 3 uses
  store i32 %i.ai, ptr %i.b, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %.013, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aj, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys33commandLineFitsWithinSystemLimitsENS_9StringRefENS_8ArrayRefIS1_EE(ptr readnone captures(none) %0, i64 %1, ptr readonly captures(address) %2, i64 %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4llvh3sys33commandLineFitsWithinSystemLimitsENS_9StringRefENS_8ArrayRefIS1_EEE6ArgMax acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !103

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvh3sys33commandLineFitsWithinSystemLimitsENS_9StringRefENS_8ArrayRefIS1_EEE6ArgMax) #23
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @sysconf(i32 noundef 0) #23
  store i64 %i.d, ptr @_ZZN4llvh3sys33commandLineFitsWithinSystemLimitsENS_9StringRefENS_8ArrayRefIS1_EEE6ArgMax, align 8, !tbaa !30
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvh3sys33commandLineFitsWithinSystemLimitsENS_9StringRefENS_8ArrayRefIS1_EEE6ArgMax) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load i64, ptr @_ZZN4llvh3sys33commandLineFitsWithinSystemLimitsENS_9StringRefENS_8ArrayRefIS1_EEE6ArgMax, align 8, !tbaa !30 ; 3 uses
  %i.f = icmp slt i64 %i.e, 131072
  %i.g = sdiv i64 %i.e, 2
  %.016 = select i1 %i.f, i64 %i.g, i64 65536
  %i.h = icmp eq i64 %i.e, -1
  br i1 %i.h, label %.critedge27, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.idx = shl nuw nsw i64 %3, 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not2533 = icmp eq i64 %3, 0
  br i1 %.not2533, label %.critedge27, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.j = add i64 %1, 1
  br label %.lr.ph

bb.f:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %.01535, i64 16 ; 2 uses
  %.not25 = icmp eq ptr %i.k, %i.i
  br i1 %.not25, label %.critedge27, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.01535 = phi ptr [ %i.k, %bb.f ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.01734 = phi i64 [ %i.n, %bb.f ], [ %i.j, %.lr.ph.preheader ]
  %.sroa.4.0..015.sroa_idx = getelementptr inbounds nuw i8, ptr %.01535, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..015.sroa_idx, align 8, !tbaa !30 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.4.0.copyload, 131071
  br i1 %i.l, label %.critedge27, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.m = add i64 %.01734, 1
  %i.n = add i64 %i.m, %.sroa.4.0.copyload        ; 2 uses
  %.not32 = icmp ugt i64 %i.n, %.016
  br i1 %.not32, label %.critedge27, label %bb.f

.critedge27:                                      ; preds = %bb.g, %bb.f, %.lr.ph, %bb.e, %bb.d
  %.4 = phi i1 [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ false, %bb.g ], [ false, %.lr.ph ]
  ret i1 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4llvh3sys11ProcessInfoC2Ev(ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(12) initializes((0, 4), (8, 12)) %0) unnamed_addr #2 align 2 {
bb.a:
  store i32 0, ptr %0, align 4, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys17findProgramByNameB5cxx11ENS_9StringRefENS_8ArrayRefIS1_EE(ptr dead_on_unwind noalias writable sret(%"class.llvh::ErrorOr") align 8 %0, ptr %1, i64 %2, ptr readonly captures(address) %3, i64 %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.llvh::SmallVector.7", align 8 ; 9 uses
  %8 = alloca %"class.llvh::SmallString", align 8 ; 14 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 4 uses
  %11 = alloca %"class.llvh::Twine", align 8      ; 4 uses
  %12 = alloca %"class.llvh::Twine", align 8      ; 4 uses
  %13 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr %1, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.c, align 8
  %.not45 = icmp eq i64 %2, 0
  br i1 %.not45, label %_ZNK4llvh9StringRef4findEcm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @memchr(ptr noundef %1, i32 noundef 47, i64 noundef %2) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZNK4llvh9StringRef4findEcm.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %.not.i.i = icmp eq ptr %1, null
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  br i1 %.not.i.i, label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread, label %bb.d

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !21, !alias.scope !111
  store i8 0, ptr %i.e, align 8, !tbaa !16, !alias.scope !111
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8
  %i.i = and i8 %i.h, -2
  store i8 %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  store ptr %i.e, ptr %6, align 8, !tbaa !17, !alias.scope !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !111
  store i64 %2, ptr %i.b, align 8, !tbaa !30, !noalias !111
  %i.l = icmp ugt i64 %2, 15
  br i1 %i.l, label %._crit_edge.i.i.i.i.thread, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i.thread:                       ; preds = %bb.d
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #23 ; 2 uses
  store ptr %i.m, ptr %6, align 8, !tbaa !31, !alias.scope !111
  %i.n = load i64, ptr %i.b, align 8, !tbaa !30, !noalias !111
  store i64 %i.n, ptr %i.e, align 8, !tbaa !16, !alias.scope !111
  br label %bb.f

._crit_edge.i.i.i.i:                              ; preds = %bb.d
  %cond44 = icmp eq i64 %2, 1
  br i1 %cond44, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.o = load i8, ptr %1, align 1, !tbaa !16
  store i8 %i.o, ptr %i.e, align 8, !tbaa !16
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.thread, %._crit_edge.i.i.i.i
  %i.p = phi ptr [ %i.m, %._crit_edge.i.i.i.i.thread ], [ %i.e, %._crit_edge.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %bb.e, %bb.f
  %i.q = load i64, ptr %i.b, align 8, !tbaa !30, !noalias !111 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !21, !alias.scope !111
  %i.s = load ptr, ptr %6, align 8, !tbaa !31, !alias.scope !111
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !111
  %.pre = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8
  %i.w = and i8 %i.v, -2
  store i8 %i.w, ptr %i.u, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.z = icmp eq ptr %.pre, %i.y
  br i1 %i.z, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %i.aa = phi ptr [ %i.k, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread ], [ %i.y, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ] ; 2 uses
  %i.ab = phi ptr [ %i.j, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread ], [ %i.x, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !21 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  store ptr %.pre, ptr %0, align 8, !tbaa !31
  %i.ag = load i64, ptr %i.y, align 8, !tbaa !16
  store i64 %i.ag, ptr %i.x, align 8, !tbaa !16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre48 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ah = phi ptr [ %i.aa, %bb.g ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ai = phi i64 [ %i.ad, %bb.g ], [ %.pre48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !21
  store i8 0, ptr %i.ah, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.x

_ZNK4llvh9StringRef4findEcm.exit.thread:          ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.ak, ptr %7, align 8, !tbaa !39
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.al, align 8, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 16, ptr %i.am, align 4, !tbaa !42
  %i.an = icmp eq i64 %4, 0
  br i1 %i.an, label %bb.h, label %.thread72

.thread72:                                        ; preds = %_ZNK4llvh9StringRef4findEcm.exit.thread
  %.idx75 = shl nuw nsw i64 %4, 4
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 %.idx75
  br label %.lr.ph

bb.h:                                             ; preds = %_ZNK4llvh9StringRef4findEcm.exit.thread
  %i.ap = call ptr @getenv(ptr noundef nonnull @.str) #23 ; 3 uses
  %.not13 = icmp eq ptr %i.ap, null
  br i1 %.not13, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ap) #27
  call void @_ZN4llvh11SplitStringENS_9StringRefERNS_15SmallVectorImplIS0_EES0_(ptr nonnull %i.ap, i64 %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr nonnull @.str.1, i64 1) #23
  %i.ar = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.as = load i32, ptr %i.al, align 8, !tbaa !41 ; 2 uses
  %i.at = zext i32 %i.as to i64
  %.idx = shl nuw nsw i64 %i.at, 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx
  %.not1446 = icmp eq i32 %i.as, 0
  br i1 %.not1446, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread72, %bb.i
  %i.av = phi ptr [ %i.ao, %.thread72 ], [ %i.au, %bb.i ]
  %.sroa.036.077 = phi ptr [ %3, %.thread72 ], [ %i.ar, %bb.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 17
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 17
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %.thread
  %.047 = phi ptr [ %.sroa.036.077, %.lr.ph ], [ %i.cx, %.thread ] ; 3 uses
  %.sroa.028.0.copyload = load ptr, ptr %.047, align 8, !tbaa !92
  %.sroa.429.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.047, i64 8
  %.sroa.429.0.copyload = load i64, ptr %.sroa.429.0..0.sroa_idx, align 8, !tbaa !30 ; 5 uses
  %i.bl = icmp eq i64 %.sroa.429.0.copyload, 0
  br i1 %i.bl, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %i.aw, ptr %8, align 8, !tbaa !39
  store i32 0, ptr %i.ax, align 8, !tbaa !41
  store i32 128, ptr %i.ay, align 4, !tbaa !42
  %i.bm = icmp ugt i64 %.sroa.429.0.copyload, 128
  br i1 %i.bm, label %.thread.i, label %_ZN4llvh11SmallStringILj128EEC2ENS_9StringRefE.exit

.thread.i:                                        ; preds = %bb.k
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef nonnull %i.aw, i64 noundef %.sroa.429.0.copyload, i64 noundef 1) #23
  %.pre7.pre.i.i.i = load i32, ptr %i.ax, align 8, !tbaa !41
  %i.bn = zext i32 %.pre7.pre.i.i.i to i64
  %.pre49 = load ptr, ptr %8, align 8, !tbaa !39
  br label %_ZN4llvh11SmallStringILj128EEC2ENS_9StringRefE.exit

_ZN4llvh11SmallStringILj128EEC2ENS_9StringRefE.exit: ; preds = %.thread.i, %bb.k
  %i.bo = phi ptr [ %.pre49, %.thread.i ], [ %i.aw, %bb.k ]
  %.pre7.i.i4.i = phi i64 [ %i.bn, %.thread.i ], [ 0, %bb.k ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.pre7.i.i4.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %.sroa.028.0.copyload, i64 %.sroa.429.0.copyload, i1 false)
  %.pre.i.i.i = load i32, ptr %i.ax, align 8, !tbaa !41
  %i.bq = trunc i64 %.sroa.429.0.copyload to i32
  %i.br = add i32 %.pre.i.i.i, %i.bq
  store i32 %i.br, ptr %i.ax, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store i8 5, ptr %i.az, align 8, !tbaa !12
  store i8 1, ptr %i.ba, align 1, !tbaa !15
  store ptr %5, ptr %9, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store i16 257, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store i16 257, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store i16 257, ptr %i.bd, align 8
  call void @_ZN4llvh3sys4path6appendERNS_15SmallVectorImplIcEERKNS_5TwineES7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(18) %9, ptr noundef nonnull align 8 dereferenceable(18) %10, ptr noundef nonnull align 8 dereferenceable(18) %11, ptr noundef nonnull align 8 dereferenceable(18) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.bs = load i32, ptr %i.ax, align 8, !tbaa !41 ; 2 uses
  %i.bt = load i32, ptr %i.ay, align 4, !tbaa !42
  %.not.i.i17 = icmp ult i32 %i.bs, %i.bt
end_hunk_0
