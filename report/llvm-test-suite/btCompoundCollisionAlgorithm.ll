Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btCompoundCollisionAlgorithm?download=true
inline.NumInlined: 383
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN28btCompoundCollisionAlgorithm26preallocateChildAlgorithmsEP17btCollisionObjectS1_:bb.a

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

declare void @_ZN30btActivatingCollisionAlgorithmD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN28btCompoundCollisionAlgorithm21removeChildAlgorithmsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.h)
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.n)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN28btCompoundCollisionAlgorithmD2Ev(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV28btCompoundCollisionAlgorithm, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZN28btCompoundCollisionAlgorithm21removeChildAlgorithmsEv.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.noexc4, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc4 ] ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %.noexc4, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.h)
          to label %.noexc unwind label %bb.e, !inline_history !56

.noexc:                                           ; preds = %bb.c
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.n)
          to label %.noexc4 unwind label %bb.e, !inline_history !56

.noexc4:                                          ; preds = %.noexc, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN28btCompoundCollisionAlgorithm21removeChildAlgorithmsEv.exit, label %bb.b

_ZN28btCompoundCollisionAlgorithm21removeChildAlgorithmsEv.exit: ; preds = %.noexc4, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i8, ptr %i.t, align 8, !range !43
  %i.v = trunc nuw i8 %i.u to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.v, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmED2Ev.exit

bb.d:                                             ; preds = %_ZN28btCompoundCollisionAlgorithm21removeChildAlgorithmsEv.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.s)
          to label %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmED2Ev.exit unwind label %bb.g

_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmED2Ev.exit: ; preds = %_ZN28btCompoundCollisionAlgorithm21removeChildAlgorithmsEv.exit, %bb.d
  tail call void @_ZN30btActivatingCollisionAlgorithmD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.e:                                             ; preds = %.noexc, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i6 = icmp ne ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i8, ptr %i.y, align 8, !range !43
  %i.aa = trunc nuw i8 %i.z to i1
  %or.cond.i.i7 = select i1 %.not.i.i.i6, i1 %i.aa, i1 false
  br i1 %or.cond.i.i7, label %bb.f, label %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmED2Ev.exit9

bb.f:                                             ; preds = %bb.e
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.x)
          to label %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmED2Ev.exit9 unwind label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmED2Ev.exit9

_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmED2Ev.exit9: ; preds = %bb.e, %bb.f, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.w, %bb.f ], [ %i.w, %bb.e ]
  invoke void @_ZN30btActivatingCollisionAlgorithmD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmED2Ev.exit9
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.f, %_ZN20btAlignedObjectArrayIP20btCollisionAlgorithmED2Ev.exit9
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #13
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN28btCompoundCollisionAlgorithmD0Ev(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN28btCompoundCollisionAlgorithmD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  resume { ptr, i32 } %i.a
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: uwtable
define dso_local void @_ZN28btCompoundCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %4) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.btCompoundLeafCallback, align 8 ; 13 uses
  %6 = alloca %class.btAlignedObjectArray.2, align 8 ; 8 uses
  %7 = alloca %class.btVector3, align 4           ; 5 uses
  %8 = alloca %class.btVector3, align 4           ; 5 uses
  %9 = alloca %class.btTransform, align 16        ; 9 uses
  %10 = alloca %struct.btDbvtAabbMm, align 4      ; 6 uses
  %11 = alloca %class.btTransform, align 16       ; 8 uses
  %12 = alloca %class.btVector3, align 4          ; 6 uses
  %13 = alloca %class.btVector3, align 4          ; 6 uses
  %14 = alloca %class.btVector3, align 4          ; 6 uses
  %15 = alloca %class.btVector3, align 4          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !25, !range !43, !noundef !44
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr %2, ptr %1           ; 18 uses
  %i.e = select i1 %i.c, ptr %1, ptr %2           ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = load i32, ptr %i.h, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.k = load i32, ptr %i.j, align 4, !tbaa !42
  %.not = icmp eq i32 %i.i, %i.k
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !18   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i, label %_ZN28btCompoundCollisionAlgorithm21removeChildAlgorithmsEv.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count.i = zext nneg i32 %i.m to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.s), !inline_history !56
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !55   ; 2 uses
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !46
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.y), !inline_history !56
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN28btCompoundCollisionAlgorithm21removeChildAlgorithmsEv.exit, label %bb.c

_ZN28btCompoundCollisionAlgorithm21removeChildAlgorithmsEv.exit: ; preds = %bb.e, %bb.b
  tail call void @_ZN28btCompoundCollisionAlgorithm26preallocateChildAlgorithmsEP17btCollisionObjectS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZN28btCompoundCollisionAlgorithm21removeChildAlgorithmsEv.exit, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !50 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV22btCompoundLeafCallback, i64 16), ptr %5, align 8, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.d, ptr %i.ak, align 8, !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.e, ptr %i.al, align 8, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.af, ptr %i.am, align 8, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %3, ptr %i.an, align 8, !tbaa !101
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %4, ptr %i.ao, align 8, !tbaa !65
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ah, ptr %i.ap, align 8, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.aj, ptr %i.aq, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  store i8 1, ptr %i.ar, align 8, !tbaa !105
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr null, ptr %i.as, align 8, !tbaa !106
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  store i32 0, ptr %i.at, align 4, !tbaa !107
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.au, align 8, !tbaa !108
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !18 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph148, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev.exit

.lr.ph148:                                        ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 144
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph148, %bb.m
  %i.ba = phi i32 [ %i.aw, %.lr.ph148 ], [ %i.cc, %bb.m ]
  %indvars.iv157 = phi i64 [ 0, %.lr.ph148 ], [ %indvars.iv.next158, %bb.m ] ; 2 uses
  %i.bb = load ptr, ptr %i.ag, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv157
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !46 ; 3 uses
  %.not78 = icmp eq ptr %i.bd, null
  br i1 %.not78, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(25) %6)
          to label %.preheader unwind label %bb.j

.preheader:                                       ; preds = %bb.h
  %i.bh = load i32, ptr %i.at, align 4, !tbaa !107 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %.preheader
  %i.bj = load ptr, ptr %i.as, align 8, !tbaa !106 ; 2 uses
  %.not.i.i = icmp ne ptr %i.bj, null
  %i.bk = load i8, ptr %i.ar, align 8, !range !43
  %i.bl = trunc nuw i8 %i.bk to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.bl, i1 false
  br i1 %or.cond.i, label %bb.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE5clearEv.exit

bb.i:                                             ; preds = %._crit_edge
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bj)
          to label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE5clearEv.exit unwind label %bb.j

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE5clearEv.exit: ; preds = %bb.i, %._crit_edge
  store i8 1, ptr %i.ar, align 8, !tbaa !105
  store ptr null, ptr %i.as, align 8, !tbaa !106
  store i32 0, ptr %i.at, align 4, !tbaa !107
  store i32 0, ptr %i.au, align 8, !tbaa !108
  %.pre168 = load i32, ptr %i.av, align 4, !tbaa !18
  br label %bb.m

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.k:                                             ; preds = %.sink.split.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.bo = phi i32 [ %i.bz, %bb.l ], [ %i.bh, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %.preheader ] ; 2 uses
  %i.bp = load ptr, ptr %i.as, align 8, !tbaa !106
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !109 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 728
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !112
  %.not79 = icmp eq i32 %i.bt, 0
  br i1 %.not79, label %bb.l, label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph
  store ptr %i.br, ptr %i.ay, align 8, !tbaa !113
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 712
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !114
  %i.bw = load ptr, ptr %i.az, align 8, !tbaa !70
  %.not1.i = icmp eq ptr %i.bv, %i.bw             ; 2 uses
  %..i = select i1 %.not1.i, i64 16, i64 80
  %.5.i = select i1 %.not1.i, i64 80, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 %..i
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 %.5.i
  invoke void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(744) %i.br, ptr noundef nonnull align 4 dereferenceable(64) %i.bx, ptr noundef nonnull align 4 dereferenceable(64) %i.by)
          to label %_ZN16btManifoldResult20refreshContactPointsEv.exit unwind label %bb.k

_ZN16btManifoldResult20refreshContactPointsEv.exit: ; preds = %.sink.split.i
  store ptr null, ptr %i.ay, align 8, !tbaa !113
  %.pre = load i32, ptr %i.at, align 4, !tbaa !107
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZN16btManifoldResult20refreshContactPointsEv.exit
  %i.bz = phi i32 [ %i.bo, %.lr.ph ], [ %.pre, %_ZN16btManifoldResult20refreshContactPointsEv.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = icmp slt i64 %indvars.iv.next, %i.ca
  br i1 %i.cb, label %.lr.ph, label %._crit_edge

bb.m:                                             ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE5clearEv.exit, %bb.g
  %i.cc = phi i32 [ %.pre168, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE5clearEv.exit ], [ %i.ba, %bb.g ] ; 2 uses
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next158, %i.cd
  br i1 %i.ce, label %bb.g, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev.exit

_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev.exit: ; preds = %bb.m, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %.not69 = icmp eq ptr %i.ad, null
  br i1 %.not69, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.cl = load float, ptr %i.ci, align 8, !tbaa !71, !noalias !115 ; 2 uses
  %i.cm = load float, ptr %i.cj, align 8, !tbaa !71, !noalias !115 ; 2 uses
  %i.cn = load float, ptr %i.ck, align 8, !tbaa !71, !noalias !115 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.da = load <2 x float>, ptr %i.cf, align 8, !tbaa !71, !noalias !115 ; 3 uses
  %i.db = load <2 x float>, ptr %i.cg, align 8, !tbaa !71, !noalias !115 ; 3 uses
  %i.dc = load <2 x float>, ptr %i.ch, align 8, !tbaa !71, !noalias !115 ; 3 uses
  %16 = load <3 x float>, ptr %i.co, align 8, !tbaa !71, !noalias !116
  %17 = fneg <3 x float> %16                      ; 4 uses
  %18 = shufflevector <3 x float> %17, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dd = fmul <2 x float> %i.db, %18
  %i.de = shufflevector <3 x float> %17, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.df = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.de, <2 x float> %i.dd)
  %19 = shufflevector <3 x float> %17, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %19, <2 x float> %i.df)
  %i.dh = load float, ptr %i.cz, align 4, !tbaa !71, !noalias !117 ; 2 uses
  %i.di = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = load <2 x float>, ptr %i.cy, align 4, !tbaa !71, !noalias !117 ; 4 uses
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dm = fmul <2 x float> %i.db, %i.dl
  %i.dn = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.dn, <2 x float> %i.dm)
  %i.dp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.dj, <2 x float> %i.do)
  %i.dq = fadd <2 x float> %i.dg, %i.dp
  %i.dr = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = shufflevector <2 x float> %18, <2 x float> %i.dk, <2 x i32> <i32 0, i32 3>
  %i.dt = fmul <2 x float> %i.ds, %20
  %i.du = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = shufflevector <2 x float> %i.de, <2 x float> %i.dk, <2 x i32> <i32 0, i32 2>
  %i.dw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %21, <2 x float> %i.dt)
  %i.dx = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %22 = shufflevector <3 x float> %17, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.dz = insertelement <2 x float> %22, float %i.dh, i64 1
  %i.ea = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.dz, <2 x float> %i.dw) ; 2 uses
  %shift = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ea, %shift
  %.sroa.3.12.vec.insert.i.i180 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  %i.eb = load <2 x float>, ptr %i.cp, align 4, !tbaa !71, !noalias !118 ; 2 uses
  %i.ec = load <2 x float>, ptr %i.cq, align 4, !tbaa !71, !noalias !118 ; 2 uses
  %i.ed = load <2 x float>, ptr %i.cr, align 4, !tbaa !71, !noalias !118 ; 2 uses
  %i.ee = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.eg = shufflevector <2 x float> %i.ec, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eh = insertelement <4 x float> %i.eg, float 1.000000e+00, i64 3
  %i.ei = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ej = insertelement <4 x float> %i.ei, float 0.000000e+00, i64 3
  %i.ek = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.em = shufflevector <2 x float> %i.ed, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.en = insertelement <4 x float> %i.em, float 0.000000e+00, i64 3
  %i.eo = shufflevector <2 x float> %i.dc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.er = load <2 x float>, ptr %i.ct, align 4, !tbaa !71, !noalias !118 ; 2 uses
  %i.es = load float, ptr %i.cw, align 4, !tbaa !71, !noalias !118
  %i.et = load <2 x float>, ptr %i.cs, align 4, !tbaa !71, !noalias !118 ; 2 uses
  %i.eu = load float, ptr %i.cv, align 4, !tbaa !71, !noalias !118
  %i.ev = load <2 x float>, ptr %i.cu, align 4, !tbaa !71, !noalias !118 ; 2 uses
  %i.ew = load float, ptr %i.cx, align 4, !tbaa !71, !noalias !118
  %i.ex = shufflevector <2 x float> %i.er, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ey = shufflevector <4 x float> %i.eh, <4 x float> %i.ex, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ez = fmul <4 x float> %i.ef, %i.ey
  %i.fa = shufflevector <2 x float> %i.et, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fb = shufflevector <4 x float> %i.ej, <4 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.el, <4 x float> %i.ez)
  %i.fd = shufflevector <2 x float> %i.ev, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fe = shufflevector <4 x float> %i.en, <4 x float> %i.fd, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ff = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fe, <4 x float> %i.ep, <4 x float> %i.fc)
  %i.fg = shufflevector <4 x float> %i.ee, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fh = shufflevector <2 x float> %i.ec, <2 x float> %i.er, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.fi = insertelement <4 x float> %i.fh, float 1.000000e+00, i64 3 ; 2 uses
  %i.fj = fmul <4 x float> %i.fg, %i.fi
  %i.fk = shufflevector <2 x float> %i.eb, <2 x float> %i.et, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.fl = insertelement <4 x float> %i.fk, float 0.000000e+00, i64 3 ; 2 uses
  %i.fm = shufflevector <4 x float> %i.ek, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fl, <4 x float> %i.fm, <4 x float> %i.fj)
  %i.fo = shufflevector <2 x float> %i.ed, <2 x float> %i.ev, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.fp = insertelement <4 x float> %i.fo, float 0.000000e+00, i64 3 ; 2 uses
  %i.fq = shufflevector <4 x float> %i.eo, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fp, <4 x float> %i.fq, <4 x float> %i.fn)
  store <4 x float> %i.ff, ptr %9, align 16
  store <4 x float> %i.fr, ptr %i.eq, align 16
  %i.fs = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ft = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.cm, i64 0
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fv = insertelement <4 x float> %i.fi, float %i.es, i64 2
  %i.fw = fmul <4 x float> %i.fu, %i.fv
  %i.fx = insertelement <4 x float> %i.fl, float %i.eu, i64 2
  %i.fy = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.cl, i64 0
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ga = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fx, <4 x float> %i.fz, <4 x float> %i.fw)
  %i.gb = insertelement <4 x float> %i.fp, float %i.ew, i64 2
  %i.gc = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.cn, i64 0
  %i.gd = shufflevector <4 x float> %i.gc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ge = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gb, <4 x float> %i.gd, <4 x float> %i.ga)
  store <4 x float> %i.ge, ptr %i.fs, align 16
  %i.gf = getelementptr inbounds nuw i8, ptr %9, i64 48
  store <2 x float> %i.dq, ptr %i.gf, align 16
  %.sroa.20.48..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i180, ptr %.sroa.20.48..sroa_idx, align 8, !tbaa !72
  %i.gg = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !34 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !9
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  invoke void %i.gk(ptr noundef nonnull align 8 dereferenceable(24) %i.gh, ptr noundef nonnull align 4 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !73
  %i.gl = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gl, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !73
  %i.gm = load ptr, ptr %i.ad, align 8, !tbaa !123
  invoke void @_ZN6btDbvt9collideTVEPK10btDbvtNodeRK12btDbvtAabbMmRNS_8ICollideE(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef %i.gm, ptr noundef nonnull align 4 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %.loopexit

bb.q:                                             ; preds = %bb.k, %bb.j
  %.pn80 = phi { ptr, i32 } [ %i.bn, %bb.k ], [ %i.bm, %bb.j ]
  %i.gn = load ptr, ptr %i.as, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i88 = icmp ne ptr %i.gn, null
  %i.go = load i8, ptr %i.ar, align 8, !range !43
  %i.gp = trunc nuw i8 %i.go to i1
  %or.cond.i.i89 = select i1 %.not.i.i.i88, i1 %i.gp, i1 false
  br i1 %or.cond.i.i89, label %bb.r, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev.exit91

bb.r:                                             ; preds = %bb.q
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.gn)
          to label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev.exit91 unwind label %bb.ac

_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev.exit91: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev.exit108

bb.s:                                             ; preds = %bb.n
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.gr, %bb.t ], [ %i.gq, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev.exit108

bb.v:                                             ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev.exit
  %i.gs = load i32, ptr %i.av, align 4, !tbaa !18 ; 2 uses
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %.lr.ph152, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev.exit112

.lr.ph152:                                        ; preds = %bb.v
  %i.gu = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %wide.trip.count = zext nneg i32 %i.gs to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph152, %bb.w
  %indvars.iv160 = phi i64 [ 0, %.lr.ph152 ], [ %indvars.iv.next161, %bb.w ] ; 3 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !51
  %i.gw = getelementptr inbounds nuw [88 x i8], ptr %i.gv, i64 %indvars.iv160
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 64
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !54
  %i.gz = trunc nuw nsw i64 %indvars.iv160 to i32
  call void @_ZN22btCompoundLeafCallback17ProcessChildShapeEP16btCollisionShapei(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %i.gy, i32 noundef %i.gz)
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.w

.loopexit:                                        ; preds = %bb.w, %bb.p
  %.pr = load i32, ptr %i.av, align 4, !tbaa !18  ; 2 uses
  %i.ha = icmp sgt i32 %.pr, 0
  br i1 %i.ha, label %.lr.ph155, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev.exit112

.lr.ph155:                                        ; preds = %.loopexit
  %i.hb = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.hc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.he = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.13.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.hf = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.18.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.hg = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.hh = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.hi = getelementptr inbounds nuw i8, ptr %11, i64 48
  %.sroa.4.0..sroa_idx.i104 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.hj = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.hk = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.hq = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.hr = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.hs = getelementptr inbounds nuw i8, ptr %14, i64 4
  %wide.trip.count166 = zext nneg i32 %.pr to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph155, %bb.ab
  %indvars.iv163 = phi i64 [ 0, %.lr.ph155 ], [ %indvars.iv.next164, %bb.ab ] ; 6 uses
  %i.ht = load ptr, ptr %i.ag, align 8, !tbaa !17
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv163
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !46
  %.not71 = icmp eq ptr %i.hv, null
  br i1 %.not71, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hw = load ptr, ptr %i.hb, align 8, !tbaa !51
  %i.hx = getelementptr inbounds nuw [88 x i8], ptr %i.hw, i64 %indvars.iv163 ; 13 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 64
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !54 ; 2 uses
  %.sroa.14.32.copyload = load float, ptr %.sroa.14.32..sroa_idx, align 8 ; 2 uses
  %.sroa.18.48.copyload = load float, ptr %.sroa.18.48..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
end_hunk_0
