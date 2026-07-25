inline.NumInlined: 1644
inline.NumDeleted: 799
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZSt18__do_uninit_fill_nIPSt6vectorImSaImEEmS2_ET_S4_T0_RKT1_:bb.a
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, %bb.b
  %i.i = phi ptr [ null, %bb.b ], [ %i.h, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %.018, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !60
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !58
  %i.m = load ptr, ptr %2, align 8, !tbaa !147    ; 4 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !147
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.d, label %bb.e, !prof !99

bb.d:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.m, i64 %i.q, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc12
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.m, align 8, !tbaa !59
  store i64 %i.t, ptr %i.i, align 8, !tbaa !59
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !60
  %i.v = add i64 %.01117, -1                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.018, i64 24 ; 2 uses
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !218

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.x = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #35 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_(ptr noundef %0, ptr noundef nonnull %.018)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_rethrow() #36
          to label %bb.m unwind label %bb.j

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.w, %bb.g ]
  ret ptr %.0.lcssa

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.z

bb.l:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #39
  unreachable

bb.m:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN5folly6Getcpu15resolveVdsoFuncEv() local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = tail call ptr @dlopen(ptr noundef nonnull @.str.34, i32 noundef 5) #35 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @dlsym(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.35) #35 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @dlclose(ptr noundef nonnull %i.a) #35 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.c, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare ptr @dlopen(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @dlclose(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef i32 @_ZN5folly18SequentialThreadId3getEv() local_unnamed_addr #23 align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN5folly18SequentialThreadId3getEvE5local) ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !7    ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw add ptr @_ZZN5folly18SequentialThreadId3getEvE6global, i32 1 seq_cst, align 4
  %i.d = add i32 %i.c, 1                          ; 2 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  ret i32 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #13

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly15HashingThreadId3getEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN5folly18getCurrentThreadIDEv() ; 2 uses
  %i.b = xor i64 %i.a, -1
  %i.c = shl i64 %i.a, 18
  %i.d = add i64 %i.c, %i.b                       ; 2 uses
  %i.e = lshr i64 %i.d, 31
  %i.f = xor i64 %i.e, %i.d
  %i.g = mul i64 %i.f, 21                         ; 2 uses
  %i.h = lshr i64 %i.g, 11
  %i.i = xor i64 %i.h, %i.g
  %i.j = mul i64 %i.i, 65                         ; 2 uses
  %i.k = lshr i64 %i.j, 22
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  ret i32 %i.m
}

declare noundef i64 @_ZN5folly18getCurrentThreadIDEv() local_unnamed_addr #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @_ZN5folly6detail18AccessSpreaderBase16degenerateGetcpuEPjS2_Pv(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #24 align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not5 = icmp eq ptr %1, null
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %1, align 4, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly14AccessSpreaderISt6atomicE10initializeERNS2_11GlobalStateE(ptr noundef nonnull align 8 dereferenceable(65800) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v(), !inline_history !219 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !67
  %.fr.i = freeze i64 %i.b                        ; 10 uses
  %invariant.umin.i = tail call i64 @llvm.umin.i64(i64 %.fr.i, i64 256) ; 4 uses
  %i.c = icmp ult i64 %.fr.i, 256
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  br i1 %i.c, label %.split.us.i, label %.lr.ph.us62.i

.split.us.i:                                      ; preds = %bb.a
  %.not.i = icmp ne i64 %.fr.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %xtraiter = and i64 %invariant.umin.i, 1
  %i.e = icmp eq i64 %.fr.i, 1
  %unroll_iter = and i64 %invariant.umin.i, 254
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod11 = trunc i64 %invariant.umin.i to i1
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %.split.us.i, %..preheader_crit_edge.us.us.preheader.i.a
  %storemerge54.us.us.i = phi i64 [ %4, %..preheader_crit_edge.us.us.preheader.i.a ], [ 0, %.split.us.i ] ; 3 uses
  %i.f = getelementptr inbounds nuw [256 x i8], ptr %0, i64 %storemerge54.us.us.i ; 9 uses
  %.sroa.speculated42.us.us.i = tail call i64 @llvm.umax.i64(i64 %storemerge54.us.us.i, i64 1) ; 3 uses
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.us.us.i.new

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %bb.c
  %lcmp.mod14.not = icmp eq i64 %xtraiter13, 0
  br i1 %lcmp.mod14.not, label %._crit_edge.us.us.i.a, label %.epil.preheader12

.epil.preheader12:                                ; preds = %._crit_edge.us.us.i.unr-lcssa, %.lr.ph51.us.us.i
  %.02750.us.us.i.epil.init = phi i64 [ 0, %.lr.ph51.us.us.i ], [ %i.y, %._crit_edge.us.us.i.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter13, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader12
  %.02750.us.us.i.epil.a = phi i64 [ %.02750.us.us.i.epil.init, %.epil.preheader12 ], [ %i.i, %bb.b ] ; 3 uses
  %epil.iter.a = phi i64 [ 0, %.epil.preheader12 ], [ %epil.iter.next.a, %bb.b ]
  %i.g = getelementptr i8, ptr %i.ad, i64 %.02750.us.us.i.epil.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.02750.us.us.i.epil.a
  %1 = load atomic i8, ptr %i.h monotonic, align 1
  store atomic i8 %1, ptr %i.g monotonic, align 1
  %i.i = add nuw i64 %.02750.us.us.i.epil.a, 1
  %epil.iter.next.a = add i64 %epil.iter.a, 1     ; 2 uses
  %epil.iter.cmp.not.a = icmp eq i64 %epil.iter.next.a, %xtraiter13
  br i1 %epil.iter.cmp.not.a, label %._crit_edge.us.us.i.a, label %bb.b, !llvm.loop !220

._crit_edge.us.us.i.a:                            ; preds = %bb.b, %._crit_edge.us.us.i.unr-lcssa
  %2 = add nuw nsw i64 %.sroa.speculated.us.us.i, %storemerge3252.us.us.i ; 2 uses
  %3 = icmp ult i64 %2, 256
  br i1 %3, label %.lr.ph51.us.us.i, label %..preheader_crit_edge.us.us.preheader.i.a, !llvm.loop !221

..preheader_crit_edge.us.us.preheader.i.a:        ; preds = %._crit_edge.us.us.i.a
  %4 = add nuw nsw i64 %storemerge54.us.us.i, 1   ; 2 uses
  %exitcond72.not.i = icmp eq i64 %4, 257
  br i1 %exitcond72.not.i, label %_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE.exit, label %.lr.ph.us.us.i, !llvm.loop !222

bb.c:                                             ; preds = %bb.c, %.lr.ph51.us.us.i.new
  %.02750.us.us.i = phi i64 [ 0, %.lr.ph51.us.us.i.new ], [ %i.y, %bb.c ] ; 6 uses
  %niter17 = phi i64 [ 0, %.lr.ph51.us.us.i.new ], [ %niter17.next.3, %bb.c ]
  %i.j = getelementptr i8, ptr %i.ad, i64 %.02750.us.us.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.02750.us.us.i
  %i.l = load atomic i8, ptr %i.k monotonic, align 4
  store atomic i8 %i.l, ptr %i.j monotonic, align 1
  %i.m = or disjoint i64 %.02750.us.us.i, 1       ; 2 uses
  %i.n = getelementptr i8, ptr %i.ad, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.m
  %i.p = load atomic i8, ptr %i.o monotonic, align 1
  store atomic i8 %i.p, ptr %i.n monotonic, align 1
  %i.q = or disjoint i64 %.02750.us.us.i, 2       ; 2 uses
  %i.r = getelementptr i8, ptr %i.ad, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.q
  %i.t = load atomic i8, ptr %i.s monotonic, align 2
  store atomic i8 %i.t, ptr %i.r monotonic, align 1
  %i.u = or disjoint i64 %.02750.us.us.i, 3       ; 2 uses
  %i.v = getelementptr i8, ptr %i.ad, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.u
  %i.x = load atomic i8, ptr %i.w monotonic, align 1
  store atomic i8 %i.x, ptr %i.v monotonic, align 1
  %i.y = add nuw i64 %.02750.us.us.i, 4           ; 2 uses
  %niter17.next.3 = add i64 %niter17, 4           ; 2 uses
  %niter17.ncmp.3 = icmp eq i64 %niter17.next.3, %unroll_iter16
  br i1 %niter17.ncmp.3, label %._crit_edge.us.us.i.unr-lcssa, label %bb.c, !llvm.loop !223

.lr.ph.us.us.i.new:                               ; preds = %.lr.ph.us.us.i, %.lr.ph.us.us.i.new
  %.02849.us.us.i = phi i64 [ %i.ab, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ]
  %5 = load ptr, ptr %i.d, align 8, !tbaa !55
  %6 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.02849.us.us.i
  %7 = load i64, ptr %6, align 8, !tbaa !59
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %.02849.us.us.i
  %8 = mul i64 %7, %.sroa.speculated42.us.us.i
  %9 = udiv i64 %8, %.fr.i
  %10 = trunc i64 %9 to i8
  store atomic i8 %10, ptr %i.z monotonic, align 2
  %11 = or disjoint i64 %.02849.us.us.i, 1        ; 2 uses
  %12 = load ptr, ptr %i.d, align 8, !tbaa !55
  %13 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %11
  %14 = load i64, ptr %13, align 8, !tbaa !59
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 %11
  %15 = mul i64 %14, %.sroa.speculated42.us.us.i
  %16 = udiv i64 %15, %.fr.i
  %17 = trunc i64 %16 to i8
  store atomic i8 %17, ptr %i.aa monotonic, align 1
  %i.ab = add nuw nsw i64 %.02849.us.us.i, 2      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph51.us.us.i.preheader.unr-lcssa, label %.lr.ph.us.us.i.new, !llvm.loop !224

.lr.ph51.us.us.i.preheader.unr-lcssa:             ; preds = %.lr.ph.us.us.i.new
  br i1 %lcmp.mod.not, label %.lr.ph51.us.us.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph51.us.us.i.preheader.unr-lcssa, %.lr.ph.us.us.i
  %.02849.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.i ], [ %i.ab, %.lr.ph51.us.us.i.preheader.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %18 = load ptr, ptr %i.d, align 8, !tbaa !55
  %19 = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %.02849.us.us.i.epil.init
  %20 = load i64, ptr %19, align 8, !tbaa !59
  %21 = getelementptr inbounds nuw i8, ptr %i.f, i64 %.02849.us.us.i.epil.init
  %22 = mul i64 %20, %.sroa.speculated42.us.us.i
  %23 = udiv i64 %22, %.fr.i
  %24 = trunc i64 %23 to i8
  store atomic i8 %24, ptr %21 monotonic, align 1
  br label %.lr.ph51.us.us.i.preheader

.lr.ph51.us.us.i.preheader:                       ; preds = %.lr.ph51.us.us.i.preheader.unr-lcssa, %.epil.preheader
  br label %.lr.ph51.us.us.i

.lr.ph51.us.us.i:                                 ; preds = %.lr.ph51.us.us.i.preheader, %._crit_edge.us.us.i.a
  %storemerge3252.us.us.i = phi i64 [ %2, %._crit_edge.us.us.i.a ], [ %.fr.i, %.lr.ph51.us.us.i.preheader ] ; 4 uses
  %i.ac = sub nuw nsw i64 256, %storemerge3252.us.us.i
  %.sroa.speculated.us.us.i = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %storemerge3252.us.us.i) ; 4 uses
  %i.ad = getelementptr i8, ptr %i.f, i64 %storemerge3252.us.us.i ; 5 uses
  %i.ae = add nsw i64 %.sroa.speculated.us.us.i, -1
  %xtraiter13 = and i64 %.sroa.speculated.us.us.i, 3 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 3
  br i1 %i.af, label %.epil.preheader12, label %.lr.ph51.us.us.i.new

.lr.ph51.us.us.i.new:                             ; preds = %.lr.ph51.us.us.i
  %unroll_iter16 = and i64 %.sroa.speculated.us.us.i, 508
  br label %bb.c

.lr.ph.us62.i:                                    ; preds = %bb.a, %..preheader48_crit_edge.us63.preheader.i
  %storemerge54.us57.i = phi i64 [ %i.ax, %..preheader48_crit_edge.us63.preheader.i ], [ 0, %bb.a ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [256 x i8], ptr %0, i64 %storemerge54.us57.i ; 2 uses
  %.sroa.speculated42.us58.i = tail call i64 @llvm.umax.i64(i64 %storemerge54.us57.i, i64 1) ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.us62.i
  %.02849.us60.i = phi i64 [ 0, %.lr.ph.us62.i ], [ %i.aw, %bb.d ] ; 4 uses
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.02849.us60.i
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !59
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.02849.us60.i
  %i.al = mul i64 %i.aj, %.sroa.speculated42.us58.i
  %i.am = udiv i64 %i.al, %.fr.i
  %i.an = trunc i64 %i.am to i8
  store atomic i8 %i.an, ptr %i.ak monotonic, align 2
  %i.ao = or disjoint i64 %.02849.us60.i, 1       ; 2 uses
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !59
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.at = mul i64 %i.ar, %.sroa.speculated42.us58.i
  %i.au = udiv i64 %i.at, %.fr.i
  %i.av = trunc i64 %i.au to i8
  store atomic i8 %i.av, ptr %i.as monotonic, align 1
  %i.aw = add nuw nsw i64 %.02849.us60.i, 2       ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.aw, %invariant.umin.i
  br i1 %exitcond.not.i.1, label %..preheader48_crit_edge.us63.preheader.i, label %bb.d, !llvm.loop !224

..preheader48_crit_edge.us63.preheader.i:         ; preds = %bb.d
  %i.ax = add nuw nsw i64 %storemerge54.us57.i, 1 ; 2 uses
  %exitcond69.not.i = icmp eq i64 %i.ax, 257
  br i1 %exitcond69.not.i, label %_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE.exit, label %.lr.ph.us62.i, !llvm.loop !222

_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE.exit: ; preds = %..preheader48_crit_edge.us63.preheader.i, %..preheader_crit_edge.us.us.preheader.i.a
  %i.ay = tail call ptr @dlopen(ptr noundef nonnull @.str.34, i32 noundef 5) #35 ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE.exit
  %i.ba = tail call ptr @dlsym(ptr noundef nonnull %i.ay, ptr noundef nonnull @.str.35) #35 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.f, label %_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv.exit

bb.f:                                             ; preds = %bb.e
  %i.bc = tail call i32 @dlclose(ptr noundef nonnull %i.ay) #35 ; 0 uses
  br label %_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv.exit

_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv.exit: ; preds = %_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE.exit, %bb.e, %bb.f
  %.0.i.i = phi ptr [ null, %_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE.exit ], [ null, %bb.f ], [ %i.ba, %bb.e ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 65792
  %.not.i1 = icmp eq ptr %.0.i.i, null
  %i.be = select i1 %.not.i1, ptr @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv, ptr %.0.i.i
  %i.bf = atomicrmw xchg ptr %i.bd, ptr %i.be acq_rel, align 8 ; 0 uses
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(65800) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(80) ptr %2() ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !67
  %.fr = freeze i64 %i.b                          ; 10 uses
  %invariant.umin = tail call i64 @llvm.umin.i64(i64 %.fr, i64 256) ; 4 uses
  %i.c = icmp ult i64 %.fr, 256
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  br i1 %i.c, label %.split.us, label %.lr.ph.us62

.split.us:                                        ; preds = %bb.a
  %.not = icmp ne i64 %.fr, 0
  tail call void @llvm.assume(i1 %.not)
  %xtraiter = and i64 %invariant.umin, 1
  %i.e = icmp eq i64 %.fr, 1
  %unroll_iter = and i64 %invariant.umin, 254
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod82 = trunc i64 %invariant.umin to i1
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.split.us, %..preheader_crit_edge.us.us.preheader.a
  %storemerge54.us.us = phi i64 [ %6, %..preheader_crit_edge.us.us.preheader.a ], [ 0, %.split.us ] ; 3 uses
  %i.f = getelementptr inbounds nuw [256 x i8], ptr %0, i64 %storemerge54.us.us ; 9 uses
  %.sroa.speculated42.us.us = tail call i64 @llvm.umax.i64(i64 %storemerge54.us.us, i64 1) ; 3 uses
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.us.us.new

._crit_edge.us.us.unr-lcssa:                      ; preds = %bb.c
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %._crit_edge.us.us.a, label %.epil.preheader83

.epil.preheader83:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.lr.ph51.us.us
  %.02750.us.us.epil.init = phi i64 [ 0, %.lr.ph51.us.us ], [ %i.y, %._crit_edge.us.us.unr-lcssa ]
  %lcmp.mod86 = icmp ne i64 %xtraiter84, 0
  tail call void @llvm.assume(i1 %lcmp.mod86)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader83
  %.02750.us.us.epil.a = phi i64 [ %.02750.us.us.epil.init, %.epil.preheader83 ], [ %i.i, %bb.b ] ; 3 uses
  %epil.iter.a = phi i64 [ 0, %.epil.preheader83 ], [ %epil.iter.next.a, %bb.b ]
  %i.g = getelementptr i8, ptr %i.ad, i64 %.02750.us.us.epil.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.02750.us.us.epil.a
  %3 = load atomic i8, ptr %i.h monotonic, align 1
  store atomic i8 %3, ptr %i.g monotonic, align 1
  %i.i = add nuw i64 %.02750.us.us.epil.a, 1
  %epil.iter.next.a = add i64 %epil.iter.a, 1     ; 2 uses
  %epil.iter.cmp.not.a = icmp eq i64 %epil.iter.next.a, %xtraiter84
  br i1 %epil.iter.cmp.not.a, label %._crit_edge.us.us.a, label %bb.b, !llvm.loop !225

._crit_edge.us.us.a:                              ; preds = %bb.b, %._crit_edge.us.us.unr-lcssa
  %4 = add nuw nsw i64 %.sroa.speculated.us.us, %storemerge3252.us.us ; 2 uses
  %5 = icmp ult i64 %4, 256
  br i1 %5, label %.lr.ph51.us.us, label %..preheader_crit_edge.us.us.preheader.a, !llvm.loop !221

..preheader_crit_edge.us.us.preheader.a:          ; preds = %._crit_edge.us.us.a
  %6 = add nuw nsw i64 %storemerge54.us.us, 1     ; 2 uses
  %exitcond72.not = icmp eq i64 %6, 257
  br i1 %exitcond72.not, label %.split56.us, label %.lr.ph.us.us, !llvm.loop !222

bb.c:                                             ; preds = %bb.c, %.lr.ph51.us.us.new
  %.02750.us.us = phi i64 [ 0, %.lr.ph51.us.us.new ], [ %i.y, %bb.c ] ; 6 uses
  %niter88 = phi i64 [ 0, %.lr.ph51.us.us.new ], [ %niter88.next.3, %bb.c ]
  %i.j = getelementptr i8, ptr %i.ad, i64 %.02750.us.us
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.02750.us.us
  %i.l = load atomic i8, ptr %i.k monotonic, align 4
  store atomic i8 %i.l, ptr %i.j monotonic, align 1
  %i.m = or disjoint i64 %.02750.us.us, 1         ; 2 uses
  %i.n = getelementptr i8, ptr %i.ad, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.m
  %i.p = load atomic i8, ptr %i.o monotonic, align 1
  store atomic i8 %i.p, ptr %i.n monotonic, align 1
  %i.q = or disjoint i64 %.02750.us.us, 2         ; 2 uses
  %i.r = getelementptr i8, ptr %i.ad, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.q
  %i.t = load atomic i8, ptr %i.s monotonic, align 2
  store atomic i8 %i.t, ptr %i.r monotonic, align 1
  %i.u = or disjoint i64 %.02750.us.us, 3         ; 2 uses
  %i.v = getelementptr i8, ptr %i.ad, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.u
  %i.x = load atomic i8, ptr %i.w monotonic, align 1
  store atomic i8 %i.x, ptr %i.v monotonic, align 1
  %i.y = add nuw i64 %.02750.us.us, 4             ; 2 uses
  %niter88.next.3 = add i64 %niter88, 4           ; 2 uses
  %niter88.ncmp.3 = icmp eq i64 %niter88.next.3, %unroll_iter87
  br i1 %niter88.ncmp.3, label %._crit_edge.us.us.unr-lcssa, label %bb.c, !llvm.loop !223

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %.02849.us.us = phi i64 [ %i.ab, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %7 = load ptr, ptr %i.d, align 8, !tbaa !55
  %8 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.02849.us.us
  %9 = load i64, ptr %8, align 8, !tbaa !59
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %.02849.us.us
  %10 = mul i64 %9, %.sroa.speculated42.us.us
  %11 = udiv i64 %10, %.fr
  %12 = trunc i64 %11 to i8
  store atomic i8 %12, ptr %i.z monotonic, align 2
  %13 = or disjoint i64 %.02849.us.us, 1          ; 2 uses
  %14 = load ptr, ptr %i.d, align 8, !tbaa !55
  %15 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %13
  %16 = load i64, ptr %15, align 8, !tbaa !59
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 %13
  %17 = mul i64 %16, %.sroa.speculated42.us.us
  %18 = udiv i64 %17, %.fr
  %19 = trunc i64 %18 to i8
  store atomic i8 %19, ptr %i.aa monotonic, align 1
  %i.ab = add nuw nsw i64 %.02849.us.us, 2        ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph51.us.us.preheader.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !224

.lr.ph51.us.us.preheader.unr-lcssa:               ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod.not, label %.lr.ph51.us.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph51.us.us.preheader.unr-lcssa, %.lr.ph.us.us
  %.02849.us.us.epil.init = phi i64 [ 0, %.lr.ph.us.us ], [ %i.ab, %.lr.ph51.us.us.preheader.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %20 = load ptr, ptr %i.d, align 8, !tbaa !55
  %21 = getelementptr inbounds nuw [8 x i8], ptr %20, i64 %.02849.us.us.epil.init
  %22 = load i64, ptr %21, align 8, !tbaa !59
  %23 = getelementptr inbounds nuw i8, ptr %i.f, i64 %.02849.us.us.epil.init
  %24 = mul i64 %22, %.sroa.speculated42.us.us
  %25 = udiv i64 %24, %.fr
  %26 = trunc i64 %25 to i8
  store atomic i8 %26, ptr %23 monotonic, align 1
  br label %.lr.ph51.us.us.preheader

.lr.ph51.us.us.preheader:                         ; preds = %.lr.ph51.us.us.preheader.unr-lcssa, %.epil.preheader
  br label %.lr.ph51.us.us

.lr.ph51.us.us:                                   ; preds = %.lr.ph51.us.us.preheader, %._crit_edge.us.us.a
  %storemerge3252.us.us = phi i64 [ %4, %._crit_edge.us.us.a ], [ %.fr, %.lr.ph51.us.us.preheader ] ; 4 uses
  %i.ac = sub nuw nsw i64 256, %storemerge3252.us.us
  %.sroa.speculated.us.us = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %storemerge3252.us.us) ; 4 uses
  %i.ad = getelementptr i8, ptr %i.f, i64 %storemerge3252.us.us ; 5 uses
  %i.ae = add nsw i64 %.sroa.speculated.us.us, -1
  %xtraiter84 = and i64 %.sroa.speculated.us.us, 3 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 3
  br i1 %i.af, label %.epil.preheader83, label %.lr.ph51.us.us.new

.lr.ph51.us.us.new:                               ; preds = %.lr.ph51.us.us
  %unroll_iter87 = and i64 %.sroa.speculated.us.us, 508
  br label %bb.c

.lr.ph.us62:                                      ; preds = %bb.a, %..preheader48_crit_edge.us63.preheader
  %storemerge54.us57 = phi i64 [ %i.ax, %..preheader48_crit_edge.us63.preheader ], [ 0, %bb.a ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [256 x i8], ptr %0, i64 %storemerge54.us57 ; 2 uses
  %.sroa.speculated42.us58 = tail call i64 @llvm.umax.i64(i64 %storemerge54.us57, i64 1) ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.us62
  %.02849.us60 = phi i64 [ 0, %.lr.ph.us62 ], [ %i.aw, %bb.d ] ; 4 uses
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.02849.us60
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !59
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.02849.us60
  %i.al = mul i64 %i.aj, %.sroa.speculated42.us58
  %i.am = udiv i64 %i.al, %.fr
  %i.an = trunc i64 %i.am to i8
  store atomic i8 %i.an, ptr %i.ak monotonic, align 2
  %i.ao = or disjoint i64 %.02849.us60, 1         ; 2 uses
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !59
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.at = mul i64 %i.ar, %.sroa.speculated42.us58
  %i.au = udiv i64 %i.at, %.fr
  %i.av = trunc i64 %i.au to i8
  store atomic i8 %i.av, ptr %i.as monotonic, align 1
  %i.aw = add nuw nsw i64 %.02849.us60, 2         ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.aw, %invariant.umin
  br i1 %exitcond.not.1, label %..preheader48_crit_edge.us63.preheader, label %bb.d, !llvm.loop !224

..preheader48_crit_edge.us63.preheader:           ; preds = %bb.d
  %i.ax = add nuw nsw i64 %storemerge54.us57, 1   ; 2 uses
  %exitcond69.not = icmp eq i64 %i.ax, 257
  br i1 %exitcond69.not, label %.split56.us, label %.lr.ph.us62, !llvm.loop !222

.split56.us:                                      ; preds = %..preheader48_crit_edge.us63.preheader, %..preheader_crit_edge.us.us.preheader.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 65792
  %i.az = tail call noundef ptr %1()
  %i.ba = atomicrmw xchg ptr %i.ay, ptr %i.az acq_rel, align 8 ; 0 uses
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN5folly18SequentialThreadId3getEvE5local) ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !7    ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly18SequentialThreadId3getEv.exit, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw add ptr @_ZZN5folly18SequentialThreadId3getEvE6global, i32 1 seq_cst, align 4
  %i.d = add i32 %i.c, 1                          ; 2 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !7
  br label %_ZN5folly18SequentialThreadId3getEv.exit

_ZN5folly18SequentialThreadId3getEv.exit:         ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5folly18SequentialThreadId3getEv.exit
  store i32 %i.e, ptr %0, align 4, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5folly18SequentialThreadId3getEv.exit
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.e, ptr %1, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly17LLCAccessSpreader3getEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5folly17LLCAccessSpreader3getEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !226

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly17LLCAccessSpreader3getEvE8instance) #35
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5folly17LLCAccessSpreaderC1ENS0_10PrivateTagE(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5folly17LLCAccessSpreader3getEvE8instance)
          to label %_ZN5folly14IndestructibleINS_17LLCAccessSpreaderEEC2INS1_10PrivateTagETnPNSt9enable_ifIXsr3std16is_constructibleIS1_OT_EE5valueEvE4typeELPv0ETnPNS5_IXntsr3std7is_sameIS2_NS_12remove_cvrefIS6_E4typeEEE5valueEvE4typeELSB_0ETnPNS5_IXntsr3std14is_convertibleIS7_S1_EE5valueEvE4typeELSB_0EEES7_.exit unwind label %bb.e

_ZN5folly14IndestructibleINS_17LLCAccessSpreaderEEC2INS1_10PrivateTagETnPNSt9enable_ifIXsr3std16is_constructibleIS1_OT_EE5valueEvE4typeELPv0ETnPNS5_IXntsr3std7is_sameIS2_NS_12remove_cvrefIS6_E4typeEEE5valueEvE4typeELSB_0ETnPNS5_IXntsr3std14is_convertibleIS7_S1_EE5valueEvE4typeELSB_0EEES7_.exit: ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly17LLCAccessSpreader3getEvE8instance) #35
  br label %bb.d

bb.d:                                             ; preds = %_ZN5folly14IndestructibleINS_17LLCAccessSpreaderEEC2INS1_10PrivateTagETnPNSt9enable_ifIXsr3std16is_constructibleIS1_OT_EE5valueEvE4typeELPv0ETnPNS5_IXntsr3std7is_sameIS2_NS_12remove_cvrefIS6_E4typeEEE5valueEvE4typeELSB_0ETnPNS5_IXntsr3std14is_convertibleIS7_S1_EE5valueEvE4typeELSB_0EEES7_.exit, %bb.b, %bb.a
  ret ptr @_ZZN5folly17LLCAccessSpreader3getEvE8instance

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5folly17LLCAccessSpreader3getEvE8instance) #35
  resume { ptr, i32 } %i.d
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #25

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #25

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define void @_ZN5folly17LLCAccessSpreaderC2ENS0_10PrivateTagE(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8), (16, 40)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.folly::CacheLocality", align 8 ; 16 uses
  %2 = alloca %"class.std::unordered_map", align 8 ; 16 uses
  %3 = alloca %struct.cpu_set_t, align 8          ; 5 uses
  %4 = alloca %"class.google::ErrnoLogMessage", align 8 ; 7 uses
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = tail call ptr @dlopen(ptr noundef nonnull @.str.34, i32 noundef 5) #35 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN5folly6Getcpu15resolveVdsoFuncEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @dlsym(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.35) #35 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %_ZN5folly6Getcpu15resolveVdsoFuncEv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @dlclose(ptr noundef nonnull %i.c) #35 ; 0 uses
  br label %_ZN5folly6Getcpu15resolveVdsoFuncEv.exit

_ZN5folly6Getcpu15resolveVdsoFuncEv.exit:         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.not = icmp eq ptr %.0.i, null
  %i.h = select i1 %.not, ptr @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv, ptr %.0.i
  store ptr %i.h, ptr %0, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  invoke void @_ZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"struct.folly::CacheLocality") align 8 %1, i64 1, ptr nonnull @.str.22)
          to label %_ZN5folly13CacheLocality13readFromSysfsEv.exit unwind label %bb.o

_ZN5folly13CacheLocality13readFromSysfsEv.exit:   ; preds = %_ZN5folly6Getcpu15resolveVdsoFuncEv.exit
  %i.i = load i64, ptr %1, align 8, !tbaa !67     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60   ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3                   ; 3 uses
  %i.q = icmp ugt i64 %i.i, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5folly13CacheLocality13readFromSysfsEv.exit
  %i.r = sub nuw i64 %i.i, %i.p
  invoke void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.r)
          to label %_ZNSt6vectorImSaImEE6resizeEm.exit unwind label %bb.p

bb.e:                                             ; preds = %_ZN5folly13CacheLocality13readFromSysfsEv.exit
  %i.s = icmp ult i64 %i.i, %i.p
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.t
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.f
  store ptr %i.t, ptr %i.j, align 8, !tbaa !60
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !229
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 1, ptr %i.v, align 8, !tbaa !237
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 8, !tbaa !238
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.z = call i32 @sched_getaffinity(i32 noundef 0, i64 noundef 128, ptr noundef nonnull %3) #35
  %.not25.not = icmp eq i32 %i.z, 0
  br i1 %.not25.not, label %.critedge32, label %bb.g, !prof !99

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 ptrtoint (ptr @_ZN6google10LogMessage9SendToLogEv to i64), ptr %i.a, align 8, !tbaa !42
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !42
  invoke void @_ZN6google15ErrnoLogMessageC1EPKciilMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str.36, i32 noundef 525, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.a)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.37, i64 noundef 65)
          to label %.critedge unwind label %bb.r  ; 0 uses

.critedge:                                        ; preds = %bb.i
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %.critedge32

.critedge32:                                      ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit, %.critedge
  %i.ac = load i64, ptr %1, align 8, !tbaa !67    ; 2 uses
  %.not46 = icmp eq i64 %i.ac, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.t

._crit_edge:                                      ; preds = %.critedge34, %.critedge32
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !239
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !240
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !241 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ai, null
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!20 = !{!"_ZTSNSt8ios_base6_WordsE", !19, i64 0, !15, i64 8}
!21 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !19, i64 0}
!22 = !{!"_ZTSSt6locale", !23, i64 0}
!23 = !{!"p1 _ZTSNSt6locale5_ImplE", !19, i64 0}
!24 = !{!25, !26, i64 8}
!25 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!26 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0}
!27 = !{!25, !26, i64 0}
!28 = !{!29, !33, i64 240}
!29 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !14, i64 0, !30, i64 216, !9, i64 224, !31, i64 225, !32, i64 232, !33, i64 240, !34, i64 248, !35, i64 256}
!30 = !{!"p1 _ZTSSo", !19, i64 0}
!31 = !{!"bool", !9, i64 0}
!32 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !19, i64 0}
!33 = !{!"p1 _ZTSSt5ctypeIcE", !19, i64 0}
!34 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!35 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!36 = !{!37, !9, i64 56}
!37 = !{!"_ZTSSt5ctypeIcE", !38, i64 0, !39, i64 16, !31, i64 24, !40, i64 32, !40, i64 40, !41, i64 48, !9, i64 56, !9, i64 57, !9, i64 313, !9, i64 569}
!38 = !{!"_ZTSNSt6locale5facetE", !8, i64 8}
!39 = !{!"p1 _ZTS15__locale_struct", !19, i64 0}
!40 = !{!"p1 int", !19, i64 0}
!41 = !{!"p1 short", !19, i64 0}
!42 = !{!9, !9, i64 0}
!43 = distinct !{null}
!44 = !{!45, !46, i64 0}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !46, i64 0}
!46 = !{!"p1 omnipotent char", !19, i64 0}
!47 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!48 = !{!49, !46, i64 0}
!49 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !45, i64 0, !15, i64 8, !9, i64 16}
!50 = !{!49, !15, i64 8}
!51 = !{!25, !26, i64 16}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = distinct !{!54, !53}
!55 = !{!56, !57, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!57 = !{!"p1 long", !19, i64 0}
!58 = !{!56, !57, i64 16}
!59 = !{!15, !15, i64 0}
!60 = !{!56, !57, i64 8}
!61 = !{!62, !63, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!63 = !{!"p1 _ZTSSt6vectorImSaImEE", !19, i64 0}
!64 = !{!62, !63, i64 8}
!65 = !{!62, !63, i64 16}
!66 = distinct !{!66, !53}
!67 = !{!68, !15, i64 0}
!68 = !{!"_ZTSN5folly13CacheLocalityE", !15, i64 0, !69, i64 8, !69, i64 32, !72, i64 56}
!69 = !{!"_ZTSSt6vectorImSaImEE", !70, i64 0}
!70 = !{!"_ZTSSt12_Vector_baseImSaImEE", !71, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !56, i64 0}
!72 = !{!"_ZTSSt6vectorIS_ImSaImEESaIS1_EE", !73, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseISt6vectorImSaImEESaIS2_EE", !74, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE12_Vector_implE", !62, i64 0}
!75 = distinct !{!75, !53}
!76 = distinct !{!76, !53}
!77 = distinct !{!77, !53}
!78 = distinct !{!78, !53, !79, !80}
!79 = !{!"llvm.loop.isvectorized", i32 1}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = !{!"branch_weights", i32 4, i32 12}
!82 = distinct !{!82, !53, !79, !80}
!83 = distinct !{!83, !53, !80, !79}
!84 = distinct !{!84, !53}
!85 = distinct !{!85, !53}
!86 = distinct !{!86, !53}
!87 = distinct !{!87, !88}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = !{!63, !63, i64 0}
!90 = distinct !{!90, !53}
!91 = distinct !{!91, !53}
!92 = distinct !{!92, !53}
!93 = distinct !{!93, !53}
!94 = distinct !{!94, !53}
!95 = distinct !{!95, !53}
!96 = distinct !{!96, !53}
!97 = distinct !{!97, !53}
!98 = distinct !{!98, !53}
!99 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!100 = distinct !{!100, !53}
!101 = !{!102, !102, i64 0}
!102 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !19, i64 0}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN3fmt3v116formatIJPcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSA_: argument 0"}
!105 = distinct !{!105, !"_ZN3fmt3v116formatIJPcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSA_"}
!106 = distinct !{!106, !53}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN3fmt3v116formatIZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_1clEvE18FMT_COMPILE_STRINGJRmETnNSt9enable_ifIXsr18is_compiled_stringIT_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringINSC_9char_typeES5_ISH_ESaISH_EEERKSC_DpOT0_: argument 0"}
!109 = distinct !{!109, !"_ZN3fmt3v116formatIZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_1clEvE18FMT_COMPILE_STRINGJRmETnNSt9enable_ifIXsr18is_compiled_stringIT_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringINSC_9char_typeES5_ISH_ESaISH_EEERKSC_DpOT0_"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!112 = distinct !{!112, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!115 = distinct !{!115, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_2clEiRKNSt7__cxx1112basic_stringIcS3_SaIcEEE: argument 0"}
!118 = distinct !{!118, !"_ZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_2clEiRKNSt7__cxx1112basic_stringIcS3_SaIcEEE"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZN3fmt3v116formatIJRSt17basic_string_viewIcSt11char_traitsIcEEPcEEENSt7__cxx1112basic_stringIcS4_SaIcEEENS0_7fstringIJDpT_EE1tEDpOSD_: argument 0"}
!121 = distinct !{!121, !"_ZN3fmt3v116formatIJRSt17basic_string_viewIcSt11char_traitsIcEEPcEEENSt7__cxx1112basic_stringIcS4_SaIcEEENS0_7fstringIJDpT_EE1tEDpOSD_"}
!122 = distinct !{!122, !53}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!125 = distinct !{!125, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!128 = distinct !{!128, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_2clEiRKNSt7__cxx1112basic_stringIcS3_SaIcEEE: argument 0"}
!131 = distinct !{!131, !"_ZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_2clEiRKNSt7__cxx1112basic_stringIcS3_SaIcEEE"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZN3fmt3v116formatIJRSt17basic_string_viewIcSt11char_traitsIcEEPcEEENSt7__cxx1112basic_stringIcS4_SaIcEEENS0_7fstringIJDpT_EE1tEDpOSD_: argument 0"}
!134 = distinct !{!134, !"_ZN3fmt3v116formatIJRSt17basic_string_viewIcSt11char_traitsIcEEPcEEENSt7__cxx1112basic_stringIcS4_SaIcEEENS0_7fstringIJDpT_EE1tEDpOSD_"}
!135 = !{!46, !46, i64 0}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!138 = distinct !{!138, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!139 = distinct !{!139, !53}
!140 = distinct !{!140, !53}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZN3fmt3v116formatIJRSt17basic_string_viewIcSt11char_traitsIcEEPcEEENSt7__cxx1112basic_stringIcS4_SaIcEEENS0_7fstringIJDpT_EE1tEDpOSD_: argument 0"}
!143 = distinct !{!143, !"_ZN3fmt3v116formatIJRSt17basic_string_viewIcSt11char_traitsIcEEPcEEENSt7__cxx1112basic_stringIcS4_SaIcEEENS0_7fstringIJDpT_EE1tEDpOSD_"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!146 = distinct !{!146, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!147 = !{!57, !57, i64 0}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!150 = distinct !{!150, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_"}
!151 = !{!152}
!152 = distinct !{!152, !150, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!153 = distinct !{!153, !53}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!156 = distinct !{!156, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_"}
!157 = !{!158}
!158 = distinct !{!158, !156, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!159 = !{!26, !26, i64 0}
!160 = !{!161, !163}
!161 = distinct !{!161, !162, !"_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6rbeginEv: argument 0"}
!162 = distinct !{!162, !"_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6rbeginEv"}
!163 = distinct !{!163, !164, !"_ZN5folly12_GLOBAL__N_121parseProcCpuinfoLinesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE: argument 0"}
!164 = distinct !{!164, !"_ZN5folly12_GLOBAL__N_121parseProcCpuinfoLinesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE"}
!165 = !{!166, !163}
!166 = distinct !{!166, !167, !"_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4rendEv: argument 0"}
!167 = distinct !{!167, !"_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4rendEv"}
!168 = !{!163}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!171 = distinct !{!171, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!172 = distinct !{!172, !53}
!173 = !{!174, !15, i64 0}
!174 = !{!"_ZTSSt10_Head_baseILm2EmLb0EE", !15, i64 0}
!175 = !{!176, !15, i64 0}
!176 = !{!"_ZTSSt10_Head_baseILm1EmLb0EE", !15, i64 0}
!177 = !{!178, !15, i64 0}
!178 = !{!"_ZTSSt10_Head_baseILm0EmLb0EE", !15, i64 0}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZSt19__relocate_object_aISt5tupleIJmmmEES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!181 = distinct !{!181, !"_ZSt19__relocate_object_aISt5tupleIJmmmEES1_SaIS1_EEvPT_PT0_RT1_"}
!182 = !{!183}
!183 = distinct !{!183, !181, !"_ZSt19__relocate_object_aISt5tupleIJmmmEES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!184 = distinct !{!184, !53, !79, !80}
!185 = distinct !{!185, !53, !79}
!186 = distinct !{!186, !53}
!187 = !{!"branch_weights", !"expected", i32 2146409907, i32 1073741}
!188 = !{!"branch_weights", !"expected", i32 2146409906, i32 1073742}
!189 = distinct !{!189, !53, !190}
!190 = !{!"llvm.loop.peeled.count", i32 1}
!191 = distinct !{!191, !53}
!192 = distinct !{!192, !53}
!193 = distinct !{!193, !53}
!194 = distinct !{!194, !53}
!195 = distinct !{!195, !53}
!196 = distinct !{!196, !53}
!197 = distinct !{!197, !53}
!198 = distinct !{!198, !53}
!199 = distinct !{!199, !53}
!200 = distinct !{!200, !53}
!201 = distinct !{!201, !53}
!202 = distinct !{!202, !53}
!203 = distinct !{!203, !53, !79, !80}
!204 = distinct !{!204, !53, !80, !79}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!207 = distinct !{!207, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!208 = !{!209}
!209 = distinct !{!209, !207, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!210 = !{!206, !209}
!211 = distinct !{!211, !53}
!212 = !{!213}
!213 = distinct !{!213, !214, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!214 = distinct !{!214, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!215 = !{!216}
!216 = distinct !{!216, !214, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!217 = !{!213, !216}
!218 = distinct !{!218, !53}
!219 = !{ptr @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE}
!220 = distinct !{!220, !88}
!221 = distinct !{!221, !53}
!222 = distinct !{!222, !53}
!223 = distinct !{!223, !53}
!224 = distinct !{!224, !53}
!225 = distinct !{!225, !88}
!226 = !{!"branch_weights", i32 1, i32 1048575}
!227 = !{!228, !19, i64 0}
!228 = !{!"_ZTSN5folly17LLCAccessSpreaderE", !19, i64 0, !15, i64 8, !69, i64 16}
!229 = !{!230, !231, i64 0}
!230 = !{!"_ZTSSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !231, i64 0, !15, i64 8, !233, i64 16, !15, i64 24, !235, i64 32, !234, i64 48}
!231 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !232, i64 0}
!232 = !{!"any p2 pointer", !19, i64 0}
!233 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !234, i64 0}
!234 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !19, i64 0}
!235 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !236, i64 0, !15, i64 8}
!236 = !{!"float", !9, i64 0}
!237 = !{!230, !15, i64 8}
!238 = !{!235, !236, i64 0}
!239 = !{!230, !15, i64 24}
!240 = !{!228, !15, i64 8}
!241 = !{!230, !234, i64 16}
!242 = !{!233, !234, i64 0}
!243 = distinct !{!243, !53}
!244 = !{!234, !234, i64 0}
!245 = distinct !{!245, !53}
!246 = !{!247, !15, i64 0}
!247 = !{!"_ZTSSt4pairIKmmE", !15, i64 0, !15, i64 8}
!248 = !{!247, !15, i64 8}
!249 = distinct !{!249, !53}
!250 = !{!235, !15, i64 8}
!251 = !{!230, !234, i64 48}
!252 = distinct !{!252, !53}
!253 = !{!"branch_weights", i32 1023, i32 1}
!254 = !{!255, !15, i64 0}
!255 = !{!"_ZTSZNK5folly17LLCAccessSpreader7currentEvE11ThreadCache", !15, i64 0, !15, i64 8}
!256 = !{!255, !15, i64 8}
!257 = !{!258, !15, i64 64}
!258 = !{!"_ZTSN5folly12_GLOBAL__N_115SimpleAllocatorE", !259, i64 0, !46, i64 40, !46, i64 48, !19, i64 56, !15, i64 64, !261, i64 72}
!259 = !{!"_ZTSSt5mutex", !260, i64 0}
!260 = !{!"_ZTSSt12__mutex_base", !9, i64 0}
!261 = !{!"_ZTSSt6vectorIPvSaIS0_EE", !262, i64 0}
!262 = !{!"_ZTSSt12_Vector_baseIPvSaIS0_EE", !263, i64 0}
!263 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE12_Vector_implE", !264, i64 0}
!264 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE17_Vector_impl_dataE", !232, i64 0, !232, i64 8, !232, i64 16}
!265 = !{!258, !19, i64 56}
!266 = !{!19, !19, i64 0}
!267 = !{!258, !46, i64 40}
!268 = !{!258, !46, i64 48}
!269 = !{!264, !232, i64 8}
!270 = !{!264, !232, i64 16}
!271 = !{!264, !232, i64 0}
!272 = !{!273, !273, i64 0}
!273 = !{!"p1 _ZTSN5folly12_GLOBAL__N_115SimpleAllocatorE", !19, i64 0}
!274 = !{!275, !15, i64 0}
!275 = !{!"_ZTSN5folly18CoreAllocatorGuardE", !15, i64 0, !15, i64 8}
!276 = !{!275, !15, i64 8}
!277 = !{!278, !278, i64 0}
!278 = !{!"p1 _ZTSN5folly18CoreAllocatorGuardE", !19, i64 0}
!279 = distinct !{null, null, null}
end_hunk_1
