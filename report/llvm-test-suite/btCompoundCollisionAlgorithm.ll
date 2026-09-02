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
  %16 = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.cz = load <2 x float>, ptr %i.cf, align 8, !tbaa !71, !noalias !115 ; 3 uses
  %i.da = load <2 x float>, ptr %i.cg, align 8, !tbaa !71, !noalias !115 ; 3 uses
  %i.db = load <2 x float>, ptr %i.ch, align 8, !tbaa !71, !noalias !115 ; 3 uses
  %i.dc = load <3 x float>, ptr %i.co, align 8, !tbaa !71, !noalias !116
  %i.dd = fneg <3 x float> %i.dc                  ; 4 uses
  %i.de = shufflevector <3 x float> %i.dd, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.df = fmul <2 x float> %i.da, %i.de
  %i.dg = shufflevector <3 x float> %i.dd, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.dg, <2 x float> %i.df)
  %i.di = shufflevector <3 x float> %i.dd, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.di, <2 x float> %i.dh)
  %17 = load float, ptr %16, align 4, !tbaa !71, !noalias !117 ; 2 uses
  %18 = insertelement <2 x float> poison, float %17, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = load <2 x float>, ptr %i.cy, align 4, !tbaa !71, !noalias !117 ; 4 uses
  %i.dk = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dl = fmul <2 x float> %i.da, %i.dk
  %i.dm = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.dm, <2 x float> %i.dl)
  %i.do = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %19, <2 x float> %i.dn)
  %i.dp = fadd <2 x float> %i.dj, %i.do
  %i.dq = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = shufflevector <2 x float> %i.de, <2 x float> %20, <2 x i32> <i32 0, i32 3>
  %i.ds = fmul <2 x float> %i.dr, %21
  %i.dt = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %22 = shufflevector <2 x float> %i.dg, <2 x float> %20, <2 x i32> <i32 0, i32 2>
  %i.dv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %22, <2 x float> %i.ds)
  %i.dw = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %23 = shufflevector <3 x float> %i.dd, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %24 = insertelement <2 x float> %23, float %17, i64 1
  %i.dy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %24, <2 x float> %i.dv) ; 2 uses
  %shift = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.dy, %shift
  %.sroa.3.12.vec.insert.i.i180 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  %i.dz = load <2 x float>, ptr %i.cp, align 4, !tbaa !71, !noalias !118 ; 2 uses
  %i.ea = load <2 x float>, ptr %i.cq, align 4, !tbaa !71, !noalias !118 ; 2 uses
  %i.eb = load <2 x float>, ptr %i.cr, align 4, !tbaa !71, !noalias !118 ; 2 uses
  %i.ec = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ee = shufflevector <2 x float> %i.ea, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ef = insertelement <4 x float> %i.ee, float 1.000000e+00, i64 3
  %i.eg = shufflevector <2 x float> %i.dz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eh = insertelement <4 x float> %i.eg, float 0.000000e+00, i64 3
  %i.ei = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ek = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.el = insertelement <4 x float> %i.ek, float 0.000000e+00, i64 3
  %i.em = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.en = shufflevector <4 x float> %i.em, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ep = load <2 x float>, ptr %i.ct, align 4, !tbaa !71, !noalias !118 ; 2 uses
  %i.eq = load float, ptr %i.cw, align 4, !tbaa !71, !noalias !118
  %i.er = load <2 x float>, ptr %i.cs, align 4, !tbaa !71, !noalias !118 ; 2 uses
  %i.es = load float, ptr %i.cv, align 4, !tbaa !71, !noalias !118
  %i.et = load <2 x float>, ptr %i.cu, align 4, !tbaa !71, !noalias !118 ; 2 uses
  %i.eu = load float, ptr %i.cx, align 4, !tbaa !71, !noalias !118
  %i.ev = shufflevector <2 x float> %i.ep, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ew = shufflevector <4 x float> %i.ef, <4 x float> %i.ev, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ex = fmul <4 x float> %i.ed, %i.ew
  %i.ey = shufflevector <2 x float> %i.er, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ez = shufflevector <4 x float> %i.eh, <4 x float> %i.ey, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ez, <4 x float> %i.ej, <4 x float> %i.ex)
  %i.fb = shufflevector <2 x float> %i.et, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fc = shufflevector <4 x float> %i.el, <4 x float> %i.fb, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fc, <4 x float> %i.en, <4 x float> %i.fa)
  %i.fe = shufflevector <4 x float> %i.ec, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ff = shufflevector <2 x float> %i.ea, <2 x float> %i.ep, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.fg = insertelement <4 x float> %i.ff, float 1.000000e+00, i64 3 ; 2 uses
  %i.fh = fmul <4 x float> %i.fe, %i.fg
  %i.fi = shufflevector <2 x float> %i.dz, <2 x float> %i.er, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.fj = insertelement <4 x float> %i.fi, float 0.000000e+00, i64 3 ; 2 uses
  %i.fk = shufflevector <4 x float> %i.ei, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fj, <4 x float> %i.fk, <4 x float> %i.fh)
  %i.fm = shufflevector <2 x float> %i.eb, <2 x float> %i.et, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.fn = insertelement <4 x float> %i.fm, float 0.000000e+00, i64 3 ; 2 uses
  %i.fo = shufflevector <4 x float> %i.em, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fn, <4 x float> %i.fo, <4 x float> %i.fl)
  store <4 x float> %i.fd, ptr %9, align 16
  store <4 x float> %i.fp, ptr %i.eo, align 16
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.fr = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.cm, i64 0
  %i.fs = shufflevector <4 x float> %i.fr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ft = insertelement <4 x float> %i.fg, float %i.eq, i64 2
  %i.fu = fmul <4 x float> %i.fs, %i.ft
  %i.fv = insertelement <4 x float> %i.fj, float %i.es, i64 2
  %i.fw = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.cl, i64 0
  %i.fx = shufflevector <4 x float> %i.fw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fv, <4 x float> %i.fx, <4 x float> %i.fu)
  %i.fz = insertelement <4 x float> %i.fn, float %i.eu, i64 2
  %i.ga = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.cn, i64 0
  %i.gb = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> %i.gb, <4 x float> %i.fy)
  store <4 x float> %i.gc, ptr %i.fq, align 16
  %i.gd = getelementptr inbounds nuw i8, ptr %9, i64 48
  store <2 x float> %i.dp, ptr %i.gd, align 16
  %.sroa.20.48..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i180, ptr %.sroa.20.48..sroa_idx, align 8, !tbaa !72
  %i.ge = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !34 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !9
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8
  invoke void %i.gi(ptr noundef nonnull align 8 dereferenceable(24) %i.gf, ptr noundef nonnull align 4 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !73
  %i.gj = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gj, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !73
  %i.gk = load ptr, ptr %i.ad, align 8, !tbaa !123
  invoke void @_ZN6btDbvt9collideTVEPK10btDbvtNodeRK12btDbvtAabbMmRNS_8ICollideE(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef %i.gk, ptr noundef nonnull align 4 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %.loopexit

bb.q:                                             ; preds = %bb.k, %bb.j
  %.pn80 = phi { ptr, i32 } [ %i.bn, %bb.k ], [ %i.bm, %bb.j ]
  %i.gl = load ptr, ptr %i.as, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i88 = icmp ne ptr %i.gl, null
  %i.gm = load i8, ptr %i.ar, align 8, !range !43
  %i.gn = trunc nuw i8 %i.gm to i1
  %or.cond.i.i89 = select i1 %.not.i.i.i88, i1 %i.gn, i1 false
  br i1 %or.cond.i.i89, label %bb.r, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev.exit91

bb.r:                                             ; preds = %bb.q
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.gl)
          to label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev.exit91 unwind label %bb.ac

_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev.exit91: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev.exit108

bb.s:                                             ; preds = %bb.n
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.gp, %bb.t ], [ %i.go, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev.exit108

bb.v:                                             ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev.exit
  %i.gq = load i32, ptr %i.av, align 4, !tbaa !18 ; 2 uses
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.lr.ph152, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev.exit112

.lr.ph152:                                        ; preds = %bb.v
  %i.gs = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %wide.trip.count = zext nneg i32 %i.gq to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph152, %bb.w
  %indvars.iv160 = phi i64 [ 0, %.lr.ph152 ], [ %indvars.iv.next161, %bb.w ] ; 3 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !51
  %i.gu = getelementptr inbounds nuw [88 x i8], ptr %i.gt, i64 %indvars.iv160
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 64
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !54
  %i.gx = trunc nuw nsw i64 %indvars.iv160 to i32
  call void @_ZN22btCompoundLeafCallback17ProcessChildShapeEP16btCollisionShapei(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %i.gw, i32 noundef %i.gx)
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.w

.loopexit:                                        ; preds = %bb.w, %bb.p
  %.pr = load i32, ptr %i.av, align 4, !tbaa !18  ; 2 uses
  %i.gy = icmp sgt i32 %.pr, 0
  br i1 %i.gy, label %.lr.ph155, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev.exit112

.lr.ph155:                                        ; preds = %.loopexit
  %i.gz = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ha = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.hb = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.hc = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.13.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.18.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.he = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.hf = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.hg = getelementptr inbounds nuw i8, ptr %11, i64 48
  %.sroa.4.0..sroa_idx.i104 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.hh = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.hi = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ho = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.hp = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.hq = getelementptr inbounds nuw i8, ptr %14, i64 4
  %wide.trip.count166 = zext nneg i32 %.pr to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph155, %bb.ab
  %indvars.iv163 = phi i64 [ 0, %.lr.ph155 ], [ %indvars.iv.next164, %bb.ab ] ; 6 uses
  %i.hr = load ptr, ptr %i.ag, align 8, !tbaa !17
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv163
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !46
  %.not71 = icmp eq ptr %i.ht, null
  br i1 %.not71, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hu = load ptr, ptr %i.gz, align 8, !tbaa !51
  %i.hv = getelementptr inbounds nuw [88 x i8], ptr %i.hu, i64 %indvars.iv163 ; 11 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 64
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !54 ; 2 uses
  %.sroa.14.32.copyload = load float, ptr %.sroa.14.32..sroa_idx, align 8 ; 2 uses
  %.sroa.18.48.copyload = load float, ptr %.sroa.18.48..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
end_hunk_0
begin_hunk_1_@_ZN6btDbvt9collideTVEPK10btDbvtNodeRK12btDbvtAabbMmRNS_8ICollideE:bb.a
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.e
  %i.bi = load ptr, ptr %i.aa, align 8, !tbaa !132
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !132
  %i.bj = icmp eq i32 %.sroa.3.0, %.sroa.23.6
  br i1 %i.bj, label %bb.k, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i31._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60_crit_edge

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i31._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60_crit_edge: ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i31
  %.pre = zext nneg i32 %.sroa.3.0 to i64
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60

bb.k:                                             ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i31
  %i.bk = shl nuw nsw i32 %.sroa.3.0, 1           ; 2 uses
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bm, i32 noundef 16)
          to label %.lr.ph.i.i.i53 unwind label %bb.m ; 8 uses

.lr.ph.i.i.i53:                                   ; preds = %bb.k
  %wide.trip.count.i.i.i54 = zext nneg i32 %.sroa.3.0 to i64 ; 6 uses
  %min.iters.check = icmp samesign ult i32 %.sroa.3.0, 4
  %i.bo = ptrtoaddr ptr %i.bn to i64
  %i.bp = sub i64 %i.bg, %i.bo
  %diff.check = icmp ugt i64 %i.bp, -32
  %or.cond128 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond128, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i53
  %n.vec = and i64 %wide.trip.count.i.i.i54, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load = load <2 x ptr>, ptr %i.br, align 8, !tbaa !132
  %wide.load112 = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !132
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <2 x ptr> %wide.load, ptr %i.bq, align 8, !tbaa !132
  store <2 x ptr> %wide.load112, ptr %i.bt, align 8, !tbaa !132
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i54
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i53, %middle.block
  %indvars.iv.i.i.i55.ph = phi i64 [ 0, %.lr.ph.i.i.i53 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter129 = and i64 %wide.trip.count.i.i.i54, 3 ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod130.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i55.prol = phi i64 [ %indvars.iv.next.i.i.i56.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i55.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter131 = phi i64 [ %prol.iter131.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i.i.i55.prol
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i.i.i55.prol
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !132
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !132
  %indvars.iv.next.i.i.i56.prol = add nuw nsw i64 %indvars.iv.i.i.i55.prol, 1 ; 2 uses
  %prol.iter131.next = add i64 %prol.iter131, 1   ; 2 uses
  %prol.iter131.cmp.not = icmp eq i64 %prol.iter131.next, %xtraiter129
  br i1 %prol.iter131.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !130

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i55.unr = phi i64 [ %indvars.iv.i.i.i55.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i56.prol, %scalar.ph.prol ]
  %i.by = sub nsw i64 %indvars.iv.i.i.i55.ph, %wide.trip.count.i.i.i54
  %i.bz = icmp ugt i64 %i.by, -4
  br i1 %i.bz, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i55 = phi i64 [ %indvars.iv.next.i.i.i56.3, %scalar.ph ], [ %indvars.iv.i.i.i55.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i.i.i55
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i.i.i55
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !132
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !132
  %indvars.iv.next.i.i.i56 = add nuw nsw i64 %indvars.iv.i.i.i55, 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.i56
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !132
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !132
  %indvars.iv.next.i.i.i56.1 = add nuw nsw i64 %indvars.iv.i.i.i55, 2 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.i56.1
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i56.1
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !132
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !132
  %indvars.iv.next.i.i.i56.2 = add nuw nsw i64 %indvars.iv.i.i.i55, 3 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.i56.2
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i56.2
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !132
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !132
  %indvars.iv.next.i.i.i56.3 = add nuw nsw i64 %indvars.iv.i.i.i55, 4 ; 2 uses
  %exitcond.not.i.i.i57.3 = icmp eq i64 %indvars.iv.next.i.i.i56.3, %wide.trip.count.i.i.i54
  br i1 %exitcond.not.i.i.i57.3, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49, label %scalar.ph, !llvm.loop !131

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bf)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60 unwind label %bb.m

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60: ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i31._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60_crit_edge, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49
  %.pre-phi = phi i64 [ %.pre, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i31._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60_crit_edge ], [ %wide.trip.count.i.i.i54, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49 ]
  %i.cm = phi ptr [ %i.bf, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i31._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60_crit_edge ], [ %i.bn, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49 ] ; 2 uses
  %.sroa.23.7 = phi i32 [ %.sroa.23.6, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i31._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60_crit_edge ], [ %i.bk, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49 ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.pre-phi
  %i.co = load ptr, ptr %i.y, align 8, !tbaa !132
  store ptr %i.co, ptr %i.cn, align 8, !tbaa !132
  %i.cp = add nuw nsw i32 %.sroa.3.0, 1
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.l:                                             ; preds = %bb.g
  %i.cq = load ptr, ptr %3, align 8, !tbaa !9
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  invoke void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.g)
          to label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread unwind label %bb.m

_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread:      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60, %bb.l, %_Z9IntersectRK12btDbvtAabbMmS1_.exit
  %i.ct = phi ptr [ %i.cm, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60 ], [ %i.b, %bb.l ], [ %i.b, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %i.b, %bb.f ], [ %i.b, %bb.e ], [ %i.b, %bb.d ], [ %i.b, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %.sroa.23.1 = phi i32 [ %.sroa.23.7, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60 ], [ %.sroa.23.0, %bb.l ], [ %.sroa.23.0, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %.sroa.23.0, %bb.f ], [ %.sroa.23.0, %bb.e ], [ %.sroa.23.0, %bb.d ], [ %.sroa.23.0, %bb.c ], [ %.sroa.23.0, %bb.b ]
  %.sroa.3.1 = phi i32 [ %i.cp, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60 ], [ %i.d, %bb.l ], [ %i.d, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %i.d, %bb.f ], [ %i.d, %bb.e ], [ %i.d, %bb.d ], [ %i.d, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.cu = icmp sgt i32 %.sroa.3.1, 0
  br i1 %i.cu, label %bb.b, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit

_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit: ; preds = %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ct)
  br label %bb.n

bb.m:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49, %bb.k, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i30, %bb.j, %bb.l
  %i.cv = phi ptr [ %i.bf, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49 ], [ %i.bf, %bb.k ], [ %i.b, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i30 ], [ %i.b, %bb.j ], [ %i.b, %bb.l ]
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cv)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit65 unwind label %bb.o

_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit65: ; preds = %bb.m
  resume { ptr, i32 } %i.cw

bb.n:                                             ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit, %bb.a
  ret void

bb.o:                                             ; preds = %bb.m
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  tail call void @__clang_call_terminate(ptr %i.cy) #13
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN22btCompoundLeafCallback17ProcessChildShapeEP16btCollisionShapei(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %class.btTransform, align 4         ; 7 uses
  %4 = alloca %class.btTransform, align 16        ; 10 uses
  %5 = alloca %class.btVector3, align 4           ; 7 uses
  %6 = alloca %class.btVector3, align 4           ; 7 uses
  %7 = alloca %class.btVector3, align 4           ; 7 uses
  %8 = alloca %class.btVector3, align 4           ; 7 uses
  %9 = alloca %class.btVector3, align 16          ; 4 uses
  %10 = alloca %class.btVector3, align 16         ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.f = load <4 x float>, ptr %i.e, align 8      ; 5 uses
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.h = load <4 x float>, ptr %i.g, align 8      ; 5 uses
  %.sroa.10.16.copyload = load float, ptr %.sroa.10.16..sroa_idx, align 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.j = load <4 x float>, ptr %i.i, align 8      ; 5 uses
  %.sroa.15.32.copyload = load float, ptr %.sroa.15.32..sroa_idx, align 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.20.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.l = load <4 x float>, ptr %i.k, align 8      ; 3 uses
  %.sroa.20.48.copyload = load float, ptr %.sroa.20.48..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 16, i1 false), !tbaa.struct !73
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !73
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !73
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !73
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !51
  %i.v = sext i32 %2 to i64                       ; 4 uses
  %i.w = getelementptr inbounds [88 x i8], ptr %i.u, i64 %i.v ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.af = extractelement <4 x float> %i.j, i64 0
  %i.ag = extractelement <4 x float> %i.j, i64 2
  %11 = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %12 = getelementptr inbounds nuw i8, ptr %i.w, i64 52
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.ai = load float, ptr %12, align 4, !tbaa !71, !noalias !137 ; 2 uses
  %13 = load float, ptr %11, align 4, !tbaa !71, !noalias !137 ; 2 uses
  %i.aj = load float, ptr %i.ah, align 4, !tbaa !71, !noalias !137 ; 2 uses
  %14 = insertelement <2 x float> poison, float %.sroa.5.0.copyload, i64 0
  %15 = insertelement <2 x float> %14, float %.sroa.10.16.copyload, i64 1
  %16 = insertelement <2 x float> poison, float %i.ai, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %18 = fmul <2 x float> %15, %17
  %19 = shufflevector <4 x float> %i.f, <4 x float> %i.h, <2 x i32> <i32 0, i32 4>
  %20 = insertelement <2 x float> poison, float %13, i64 0
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %22 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %21, <2 x float> %18)
  %23 = shufflevector <4 x float> %i.f, <4 x float> %i.h, <2 x i32> <i32 2, i32 6>
  %24 = insertelement <2 x float> poison, float %i.aj, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> %25, <2 x float> %22)
  %27 = shufflevector <4 x float> %i.l, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %28 = insertelement <2 x float> %27, float %.sroa.20.48.copyload, i64 1
  %29 = fadd <2 x float> %28, %26
  %i.ak = fmul float %.sroa.15.32.copyload, %i.ai
  %i.al = tail call float @llvm.fmuladd.f32(float %i.af, float %13, float %i.ak)
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float %i.aj, float %i.al)
  %i.an = extractelement <4 x float> %i.l, i64 2
  %i.ao = fadd float %i.an, %i.am
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ao, i64 0
  %i.ap = load <2 x float>, ptr %i.w, align 4, !tbaa !71, !noalias !138 ; 2 uses
  %i.aq = load <2 x float>, ptr %i.x, align 4, !tbaa !71, !noalias !138 ; 2 uses
  %i.ar = load <2 x float>, ptr %i.y, align 4, !tbaa !71, !noalias !138 ; 2 uses
  %i.as = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.5.0.copyload, i64 0
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.au = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.av = insertelement <4 x float> %i.au, float 1.000000e+00, i64 3
  %i.aw = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ax = insertelement <4 x float> %i.aw, float 0.000000e+00, i64 3
  %i.ay = shufflevector <4 x float> %i.f, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.az = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ba = insertelement <4 x float> %i.az, float 0.000000e+00, i64 3
  %i.bb = shufflevector <4 x float> %i.f, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bd = load <2 x float>, ptr %i.aa, align 4, !tbaa !71, !noalias !138 ; 2 uses
  %i.be = load float, ptr %i.ad, align 4, !tbaa !71, !noalias !138
  %i.bf = load <2 x float>, ptr %i.z, align 4, !tbaa !71, !noalias !138 ; 2 uses
  %i.bg = load float, ptr %i.ac, align 4, !tbaa !71, !noalias !138
  %i.bh = load <2 x float>, ptr %i.ab, align 4, !tbaa !71, !noalias !138 ; 2 uses
  %i.bi = load float, ptr %i.ae, align 4, !tbaa !71, !noalias !138
  %i.bj = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bk = shufflevector <4 x float> %i.av, <4 x float> %i.bj, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bl = fmul <4 x float> %i.at, %i.bk
  %i.bm = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bn = shufflevector <4 x float> %i.ax, <4 x float> %i.bm, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> %i.ay, <4 x float> %i.bl)
  %i.bp = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bq = shufflevector <4 x float> %i.ba, <4 x float> %i.bp, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.br = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> %i.bb, <4 x float> %i.bo)
  %i.bs = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.10.16.copyload, i64 0
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bu = shufflevector <2 x float> %i.aq, <2 x float> %i.bd, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.bv = insertelement <4 x float> %i.bu, float 1.000000e+00, i64 3 ; 2 uses
  %i.bw = fmul <4 x float> %i.bt, %i.bv
  %i.bx = shufflevector <2 x float> %i.ap, <2 x float> %i.bf, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.by = insertelement <4 x float> %i.bx, float 0.000000e+00, i64 3 ; 2 uses
  %i.bz = shufflevector <4 x float> %i.h, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.ca = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.by, <4 x float> %i.bz, <4 x float> %i.bw)
  %i.cb = shufflevector <2 x float> %i.ar, <2 x float> %i.bh, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cc = insertelement <4 x float> %i.cb, float 0.000000e+00, i64 3 ; 2 uses
  %i.cd = shufflevector <4 x float> %i.h, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.cd, <4 x float> %i.ca)
  store <4 x float> %i.br, ptr %4, align 16, !alias.scope !137
  store <4 x float> %i.ce, ptr %i.bc, align 16, !alias.scope !137
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.cg = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.15.32.copyload, i64 0
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ci = insertelement <4 x float> %i.bv, float %i.be, i64 2
  %i.cj = fmul <4 x float> %i.ch, %i.ci
  %i.ck = insertelement <4 x float> %i.by, float %i.bg, i64 2
  %i.cl = shufflevector <4 x float> %i.j, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ck, <4 x float> %i.cl, <4 x float> %i.cj)
  %i.cn = insertelement <4 x float> %i.cc, float %i.bi, i64 2
  %i.co = shufflevector <4 x float> %i.j, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> %i.co, <4 x float> %i.cm)
  store <4 x float> %i.cp, ptr %i.cf, align 16, !alias.scope !137
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  store <2 x float> %29, ptr %i.cq, align 16, !alias.scope !137
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !72, !alias.scope !137
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.cr = load ptr, ptr %1, align 8, !tbaa !9
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !63 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 200
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !34 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !9
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 4 dereferenceable(64) %i.cy, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8)
  %i.dc = load float, ptr %5, align 4, !tbaa !71
  %i.dd = load float, ptr %8, align 4, !tbaa !71
  %i.de = fcmp ule float %i.dc, %i.dd
  %i.df = load float, ptr %6, align 4
  %i.dg = load float, ptr %7, align 4
  %i.dh = fcmp uge float %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dj = load float, ptr %i.di, align 4, !tbaa !71
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !71
  %i.dm = fcmp ule float %i.dj, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dq = load float, ptr %i.dp, align 4
  %i.dr = fcmp uge float %i.do, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !71
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.dv = load float, ptr %i.du, align 4, !tbaa !71
  %i.dw = fcmp ule float %i.dt, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.dy = load float, ptr %i.dx, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ea = load float, ptr %i.dz, align 4
  %i.eb = fcmp uge float %i.dy, %i.ea
  %i.ec = select i1 %i.dw, i1 %i.eb, i1 false
  %i.ed = select i1 %i.ec, i1 %i.dm, i1 false
  %i.ee = select i1 %i.ed, i1 %i.dr, i1 false
  %i.ef = select i1 %i.ee, i1 %i.de, i1 false
  %i.eg = select i1 %i.ef, i1 %i.dh, i1 false
  br i1 %i.eg, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !62  ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ei, ptr noundef nonnull align 16 dereferenceable(64) %4, i64 16, i1 false), !tbaa.struct !73
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull align 16 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !73
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 16 dereferenceable(16) %i.cf, i64 16, i1 false), !tbaa.struct !73
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 16 dereferenceable(16) %i.cq, i64 16, i1 false), !tbaa.struct !73
  %i.em = load ptr, ptr %i.a, align 8, !tbaa !62  ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.en, ptr noundef nonnull align 16 dereferenceable(64) %4, i64 16, i1 false), !tbaa.struct !73
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, ptr noundef nonnull align 16 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !73
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, ptr noundef nonnull align 16 dereferenceable(16) %i.cf, i64 16, i1 false), !tbaa.struct !73
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noundef nonnull align 16 dereferenceable(16) %i.cq, i64 16, i1 false), !tbaa.struct !73
  %i.er = load ptr, ptr %i.a, align 8, !tbaa !62  ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 200 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !34
  store ptr %1, ptr %i.es, align 8, !tbaa !34
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !66
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %i.v
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !46
  %.not = icmp eq ptr %i.ex, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !64 ; 2 uses
  %i.fa = load ptr, ptr %i.cu, align 8, !tbaa !63
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !67
  %i.fd = load ptr, ptr %i.ez, align 8, !tbaa !9
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = call noundef ptr %i.ff(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull %i.er, ptr noundef %i.fa, ptr noundef %i.fc)
  %i.fh = load ptr, ptr %i.eu, align 8, !tbaa !66
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %i.v
  store ptr %i.fg, ptr %i.fi, align 8, !tbaa !46
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !62
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.fj = phi ptr [ %.pre, %bb.c ], [ %i.er, %bb.b ]
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !65 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 144
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !70
  %i.fo = icmp eq ptr %i.fn, %i.fj
  %i.fp = load ptr, ptr %i.fl, align 8, !tbaa !9
  %. = select i1 %i.fo, i64 16, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(176) %i.fl, i32 noundef -1, i32 noundef %2)
  %i.fs = load ptr, ptr %i.eu, align 8, !tbaa !66
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.v
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !46 ; 2 uses
  %i.fv = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.fw = load ptr, ptr %i.cu, align 8, !tbaa !63
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !74, !nonnull !44, !align !75
  %i.fz = load ptr, ptr %i.fk, align 8, !tbaa !65
  %i.ga = load ptr, ptr %i.fu, align 8, !tbaa !9
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, ptr noundef %i.fv, ptr noundef %i.fw, ptr noundef nonnull align 8 dereferenceable(56) %i.fy, ptr noundef %i.fz)
  %i.gd = load ptr, ptr %i.fx, align 8, !tbaa !74, !nonnull !44, !align !75
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !79 ; 3 uses
  %.not11 = icmp eq ptr %i.gf, null
  br i1 %.not11, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !9
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 96
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = call noundef i32 %i.gi(ptr noundef nonnull align 8 dereferenceable(8) %i.gf)
  %i.gk = and i32 %i.gj, 2
  %.not12 = icmp eq i32 %i.gk, 0
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.gl = load ptr, ptr %i.fx, align 8, !tbaa !74, !nonnull !44, !align !75
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %9, align 16, !tbaa !71
  call void @_ZN12btIDebugDraw8drawAabbERK9btVector3S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.gn, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.go = load ptr, ptr %i.fx, align 8, !tbaa !74, !nonnull !44, !align !75
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %10, align 16, !tbaa !71
  call void @_ZN12btIDebugDraw8drawAabbERK9btVector3S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.gq, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.gr = load ptr, ptr %i.a, align 8, !tbaa !62  ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 200
  store ptr %i.et, ptr %i.gs, align 8, !tbaa !34
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store <4 x float> %i.f, ptr %i.gt, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  store <4 x float> %i.h, ptr %i.gu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  store <4 x float> %i.j, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 56
  store <4 x float> %i.l, ptr %i.gw, align 8
  %i.gx = load ptr, ptr %i.a, align 8, !tbaa !62  ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gy, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !73
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, ptr noundef nonnull align 4 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !73
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ha, ptr noundef nonnull align 4 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !73
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hb, ptr noundef nonnull align 4 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !73
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN6btDbvt8ICollideD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define dso_local noundef float @_ZN28btCompoundCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %4) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !25, !range !43, !noundef !44
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr %2, ptr %1           ; 11 uses
end_hunk_1
