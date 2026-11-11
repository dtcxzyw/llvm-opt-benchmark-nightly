Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_big?download=true
inline.NumInlined: 548
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK3sat3big6in_delENS_7literalES1_:bb.a
  %i.c = zext i32 %spec.select to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNK6vectorIN3sat7literalELb0EjE8containsERKS1_.exit, label %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i

_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i:    ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31   ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  %.not8.not.i = icmp eq i32 %i.h, 0
  br i1 %.not8.not.i, label %_ZNK6vectorIN3sat7literalELb0EjE8containsERKS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i, %.lr.ph.i
  %.09.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.e, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i ] ; 2 uses
  %i.l = load i32, ptr %.09.i, align 4, !tbaa !78
  %i.m = icmp eq i32 %i.l, %spec.select6          ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.09.i, i64 4 ; 2 uses
  %.not.not.i = icmp eq ptr %i.n, %i.k
  %or.cond = select i1 %i.m, i1 true, i1 %.not.not.i
  br i1 %or.cond, label %_ZNK6vectorIN3sat7literalELb0EjE8containsERKS1_.exit, label %.lr.ph.i, !llvm.loop !2

_ZNK6vectorIN3sat7literalELb0EjE8containsERKS1_.exit: ; preds = %.lr.ph.i, %bb.a, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i
  %.not.lcssa.i = phi i1 [ false, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i ], [ false, %bb.a ], [ %i.m, %.lr.ph.i ]
  ret i1 %.not.lcssa.i
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat3big7add_delENS_7literalES1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 %1, i32 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %spec.select = tail call i32 @llvm.umin.i32(i32 %1, i32 %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = zext i32 %spec.select to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31   ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !31
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !33 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !31
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ %.pre2.i, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %.pre.i, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %spec.select6 = tail call i32 @llvm.umax.i32(i32 %1, i32 %2)
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o
  store i32 %spec.select6, ptr %i.p, align 4, !tbaa !31
  %i.q = add i32 %i.l, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !31
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN3sat3big9reduce_trERNS_6solverE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(4264) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.sat::justification", align 8 ; 8 uses
  %3 = alloca %"class.sat::watched", align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE5resetEv.exit.thread, label %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i

_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31   ; 2 uses
  %.not6.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not6.i.i.i.i.i, label %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE5resetEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i, %_ZSt8_DestroyI7svectorIN3sat7literalEjEEvPT_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi i32 [ %i.j, %_ZSt8_DestroyI7svectorIN3sat7literalEjEEvPT_.exit.i.i.i.i.i ], [ %i.d, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i ]
  %.047.i.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyI7svectorIN3sat7literalEjEEvPT_.exit.i.i.i.i.i ], [ %i.b, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i ] ; 2 uses
  %i.e = load ptr, ptr %.047.i.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7svectorIN3sat7literalEjEEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.f)
          to label %_ZSt8_DestroyI7svectorIN3sat7literalEjEEvPT_.exit.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #22
  unreachable

_ZSt8_DestroyI7svectorIN3sat7literalEjEEvPT_.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 8
  %i.j = add i32 %.08.i.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE16destroy_elementsEv.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZN6vectorI7svectorIN3sat7literalEjELb1EjE16destroy_elementsEv.exit.loopexit.i: ; preds = %_ZSt8_DestroyI7svectorIN3sat7literalEjEEvPT_.exit.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !27
  br label %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE5resetEv.exit

_ZN6vectorI7svectorIN3sat7literalEjELb1EjE5resetEv.exit: ; preds = %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i, %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE16destroy_elementsEv.exit.loopexit.i
  %i.k = phi ptr [ %.pre.i, %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE16destroy_elementsEv.exit.loopexit.i ], [ %i.b, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i ] ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -4
  store i32 0, ptr %i.l, align 4, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3264 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN6vectorIN3sat7watchedELb1EjE6shrinkEj.exit.thread, label %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.thread.i

_ZN6vectorI7svectorIN3sat7literalEjELb1EjE5resetEv.exit.thread: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3264 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !56   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN6vectorIN3sat7watchedELb1EjE6shrinkEj.exit.thread, label %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i

_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i: ; preds = %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE5resetEv.exit.thread
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !31   ; 2 uses
  %.not.i82 = icmp eq i32 %i.t, 0
  br i1 %.not.i82, label %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE7reserveEj.exit, label %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i81.preheader

_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.thread.i: ; preds = %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE5resetEv.exit
  %i.u = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !31   ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !31   ; 2 uses
  %i.y = icmp ugt i32 %i.v, %i.x
  br i1 %i.y, label %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i81.preheader, label %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE7reserveEj.exit

_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i81.preheader: ; preds = %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.thread.i
  %.ph = phi i32 [ %i.v, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.thread.i ], [ %i.t, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i ] ; 4 uses
  %.ph165 = phi ptr [ %i.m, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.thread.i ], [ %i.p, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i ] ; 2 uses
  %.ph166 = phi ptr [ %i.k, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i ]
  %.0.i16.i.i.ph = phi i32 [ %i.x, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i ] ; 2 uses
  br label %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i81

_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i81: ; preds = %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i81.preheader, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE8capacityEv.exit.thread.i.i
  %i.z = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE8capacityEv.exit.thread.i.i ], [ %.ph166, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i81.preheader ] ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE8capacityEv.exit.i.i

_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE8capacityEv.exit.i.i: ; preds = %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i81
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !31
  %i.ad = icmp ugt i32 %.ph, %i.ac
  br i1 %i.ad, label %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE8capacityEv.exit.thread.i.i, label %bb.d

_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE8capacityEv.exit.i.i, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i81
  tail call void @_ZN6vectorI7svectorIN3sat7literalEjELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pr.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !27
  br label %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i.i81, !llvm.loop !118

bb.d:                                             ; preds = %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE8capacityEv.exit.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 -4
  store i32 %.ph, ptr %i.ae, align 4, !tbaa !31
  %.not1218.i.i = icmp eq i32 %.0.i16.i.i.ph, %.ph
  br i1 %.not1218.i.i, label %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE7reserveEj.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %i.af = zext i32 %.ph to i64
  %i.ag = zext i32 %.0.i16.i.i.ph to i64          ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.z, i64 %i.ag
  %i.ai = sub nsw i64 %i.af, %i.ag
  %i.aj = shl nsw i64 %i.ai, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ah, i8 0, i64 %i.aj, i1 false), !tbaa !33
  br label %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE7reserveEj.exit

_ZN6vectorI7svectorIN3sat7literalEjELb1EjE7reserveEj.exit: ; preds = %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.thread.i, %bb.d, %.lr.ph.preheader.i.i
  %i.ak = phi ptr [ %i.p, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.i ], [ %i.m, %_ZNK6vectorI7svectorIN3sat7literalEjELb1EjE4sizeEv.exit.thread.i ], [ %.ph165, %bb.d ], [ %.ph165, %.lr.ph.preheader.i.i ] ; 2 uses
  %.pr = load ptr, ptr %i.ak, align 8, !tbaa !56  ; 4 uses
  %i.al = icmp eq ptr %.pr, null
  br i1 %i.al, label %_ZN6vectorIN3sat7watchedELb1EjE6shrinkEj.exit.thread, label %_ZN6vectorIS_IN3sat7watchedELb1EjELb1EjE3endEv.exit

_ZN6vectorIS_IN3sat7watchedELb1EjELb1EjE3endEv.exit: ; preds = %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE7reserveEj.exit
  %i.am = getelementptr inbounds i8, ptr %.pr, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !31 ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %.pr, i64 %i.ap
  %.not123 = icmp eq i32 %i.an, 0
  br i1 %.not123, label %_ZN6vectorIN3sat7watchedELb1EjE6shrinkEj.exit.thread, label %.lr.ph127

.lr.ph127:                                        ; preds = %_ZN6vectorIS_IN3sat7watchedELb1EjELb1EjE3endEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 3168
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 2376
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 2408
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 3272
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 3832
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 3280
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph127, %_ZN6vectorIN3sat7watchedELb1EjE6shrinkEj.exit
  %.0126 = phi i32 [ 0, %.lr.ph127 ], [ %4, %_ZN6vectorIN3sat7watchedELb1EjE6shrinkEj.exit ] ; 6 uses
  %.072125 = phi i32 [ 0, %.lr.ph127 ], [ %.173.lcssa158, %_ZN6vectorIN3sat7watchedELb1EjE6shrinkEj.exit ] ; 4 uses
  %.074124 = phi ptr [ %.pr, %.lr.ph127 ], [ %i.ew, %_ZN6vectorIN3sat7watchedELb1EjE6shrinkEj.exit ] ; 5 uses
  %i.bc = load i8, ptr %i.ar, align 8, !tbaa !246, !range !53, !noundef !46
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZN6vectorIN3sat7watchedELb1EjE6shrinkEj.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %4 = add nuw i32 %.0126, 1
  %i.be = load ptr, ptr %.074124, align 8, !tbaa !59 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZN6vectorIN3sat7watchedELb1EjE6shrinkEj.exit, label %_ZNK6vectorIN3sat7watchedELb1EjE4sizeEv.exit

_ZNK6vectorIN3sat7watchedELb1EjE4sizeEv.exit:     ; preds = %bb.f
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !31 ; 2 uses
  %.not131 = icmp eq i32 %i.bh, 0
  br i1 %.not131, label %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIN3sat7watchedELb1EjE4sizeEv.exit
  %i.bi = xor i32 %.0126, 1                       ; 9 uses
  %i.bj = trunc i32 %i.bi to i1
  %i.bk = select i1 %i.bj, ptr @.str.10, ptr @.str.11 ; 2 uses
  %.mask.i87 = and i32 %i.bi, 1
  %i.bl = zext nneg i32 %.mask.i87 to i64         ; 2 uses
  %5 = lshr i32 %.0126, 1
  %6 = zext nneg i32 %5 to i64                    ; 3 uses
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %wide.trip.count = zext i32 %i.bh to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.ab
  %.pre = load ptr, ptr %.074124, align 8, !tbaa !59 ; 2 uses
  %.not.i84 = icmp eq ptr %.pre, null
  br i1 %.not.i84, label %_ZN6vectorIN3sat7watchedELb1EjE6shrinkEj.exit, label %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i

_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i:     ; preds = %_ZNK6vectorIN3sat7watchedELb1EjE4sizeEv.exit, %._crit_edge
  %.173.lcssa164 = phi i32 [ %.4, %._crit_edge ], [ %.072125, %_ZNK6vectorIN3sat7watchedELb1EjE4sizeEv.exit ]
  %.077.lcssa163 = phi i32 [ %.178, %._crit_edge ], [ 0, %_ZNK6vectorIN3sat7watchedELb1EjE4sizeEv.exit ]
  %i.bn = phi ptr [ %.pre, %._crit_edge ], [ %i.be, %_ZNK6vectorIN3sat7watchedELb1EjE4sizeEv.exit ]
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -4
  store i32 %.077.lcssa163, ptr %i.bo, align 4, !tbaa !31
  br label %_ZN6vectorIN3sat7watchedELb1EjE6shrinkEj.exit

bb.g:                                             ; preds = %.lr.ph, %bb.ab
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ab ] ; 2 uses
  %.173121 = phi i32 [ %.072125, %.lr.ph ], [ %.4, %bb.ab ] ; 2 uses
  %.077120 = phi i32 [ 0, %.lr.ph ], [ %.178, %bb.ab ] ; 3 uses
  %i.bp = load ptr, ptr %.074124, align 8, !tbaa !59 ; 2 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %indvars.iv ; 4 uses
  %i.br = load i8, ptr %i.as, align 8, !tbaa !76, !range !53, !noundef !46
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !61 ; 2 uses
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bv = and i32 %i.bu, 7
  %i.bw = icmp eq i32 %i.bv, 4
  br i1 %i.bw, label %bb.j, label %.critedge.thread

bb.i:                                             ; preds = %bb.g
  %i.bx = and i32 %i.bu, 3
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.j, label %.critedge.thread

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bz = load i64, ptr %i.bq, align 8, !tbaa !62 ; 2 uses
  %i.ca = trunc i64 %i.bz to i32                  ; 6 uses
  %i.cb = load ptr, ptr %i.at, align 8, !tbaa !33
  %i.cc = and i64 %i.bz, 4294967295
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cc
  %.sroa.0.0.copyload.i = load i32, ptr %i.cd, align 4, !tbaa !31 ; 2 uses
  %.not116 = icmp eq i32 %.0126, %.sroa.0.0.copyload.i
  %.not117 = icmp eq i32 %i.bi, %.sroa.0.0.copyload.i
  %or.cond = or i1 %.not116, %.not117
  br i1 %or.cond, label %.critedge.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %7 = call noundef zeroext i1 @_ZN3sat3big10safe_reachENS_7literalES1_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 %.0126, i32 %i.ca)
  br i1 %7, label %bb.l, label %.critedge.thread

bb.l:                                             ; preds = %bb.k
  %8 = add i32 %.173121, 1
  %spec.select.i.a = call i32 @llvm.umin.i32(i32 %i.bi, i32 %i.ca)
  %9 = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.ce = zext i32 %spec.select.i.a to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ce ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !33 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 -4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !31 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %i.cg, i64 -8
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !31
  %i.cm = icmp eq i32 %i.cj, %i.cl
  br i1 %i.cm, label %bb.n, label %_ZN3sat3big7add_delENS_7literalES1_.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
  %.pre.i.i = load ptr, ptr %i.cf, align 8, !tbaa !33 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !31
  br label %_ZN3sat3big7add_delENS_7literalES1_.exit

_ZN3sat3big7add_delENS_7literalES1_.exit:         ; preds = %bb.m, %bb.n
  %i.cn = phi i32 [ %.pre2.i.i, %bb.n ], [ %i.cj, %bb.m ] ; 2 uses
  %i.co = phi ptr [ %.pre.i.i, %bb.n ], [ %i.cg, %bb.m ] ; 2 uses
  %spec.select6.i = call i32 @llvm.umax.i32(i32 %i.bi, i32 %i.ca)
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -4
  %i.cq = zext i32 %i.cn to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cq
  store i32 %spec.select6.i, ptr %i.cr, align 4, !tbaa !31
  %i.cs = add i32 %i.cn, 1
  store i32 %i.cs, ptr %i.cp, align 4, !tbaa !31
  %i.ct = load i8, ptr %i.au, align 8, !tbaa !247, !range !53, !noundef !46
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN3sat3big7add_delENS_7literalES1_.exit
  call void @_ZN3sat4drat3delENS_7literalES1_(ptr noundef nonnull align 8 dereferenceable(664) %i.av, i32 %i.bi, i32 %i.ca)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN3sat3big7add_delENS_7literalES1_.exit
  %i.cv = load ptr, ptr %i.ax, align 8, !tbaa !248 ; 2 uses
  %.not.i86.a = icmp eq ptr %i.cv, null
  br i1 %.not.i86.a, label %_ZN6vectorISt4pairIjN3sat7literalEELb0EjE5resetEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -4
  store i32 0, ptr %i.cw, align 4, !tbaa !31
  br label %_ZN6vectorISt4pairIjN3sat7literalEELb0EjE5resetEv.exit

_ZN6vectorISt4pairIjN3sat7literalEELb0EjE5resetEv.exit: ; preds = %bb.p, %bb.q
  call void @_ZN3sat15model_converter7add_ateENS_7literalES1_(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, i32 %i.bi, i32 %i.ca)
  %i.cx = xor i32 %i.ca, 1                        ; 2 uses
  %i.cy = call noundef ptr @_ZN3sat17find_binary_watchER6vectorINS_7watchedELb1EjENS_7literalE(ptr noundef nonnull align 8 dereferenceable(8) %.074124, i32 %i.cx)
  %.not80 = icmp eq ptr %i.cy, null
  br i1 %.not80, label %bb.z, label %bb.r

bb.r:                                             ; preds = %_ZN6vectorISt4pairIjN3sat7literalEELb0EjE5resetEv.exit
  %i.cz = call noundef i32 @_Z19get_verbosity_levelv()
  %i.da = icmp ugt i32 %i.cz, 19
  br i1 %i.da, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.db = call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.db, label %_ZN3satlsERSoNS_7literalE.exit, label %_ZN3satlsERSoNS_7literalE.exit88

_ZN3satlsERSoNS_7literalE.exit:                   ; preds = %bb.s
  call void @_Z12verbose_lockv()
  %i.dc = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 4 uses
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @.str.2, i64 noundef 8) ; 0 uses
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull %i.bk, i64 noundef %i.bl) ; 0 uses
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, i64 noundef %6) ; 0 uses
  %i.dg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  call void @_Z14verbose_unlockv()
  br label %bb.t

_ZN3satlsERSoNS_7literalE.exit88:                 ; preds = %bb.s
  %i.dh = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 4 uses
  %i.di = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.2, i64 noundef 8) ; 0 uses
  %i.dj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull %i.bk, i64 noundef %i.bl) ; 0 uses
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i64 noundef %6) ; 0 uses
  %i.dl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %_ZN3satlsERSoNS_7literalE.exit, %_ZN3satlsERSoNS_7literalE.exit88, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i32 0, ptr %2, align 8
  store i64 0, ptr %.sroa.22.0..sroa_idx.i, align 8
  store i32 0, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.dm = load ptr, ptr %i.ay, align 8, !tbaa !249
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.bm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !251
  switch i32 %i.do, label %_ZN3sat6solver11assign_unitENS_7literalE.exit [
    i32 -1, label %bb.u
    i32 0, label %bb.v
    i32 1, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  call void @_ZN3sat6solver12set_conflictENS_13justificationENS_7literalE(ptr noundef nonnull align 8 dereferenceable(4264) %1, ptr noundef nonnull byval(%"class.sat::justification") align 8 %2, i32 %.0126)
  br label %_ZN3sat6solver11assign_unitENS_7literalE.exit

bb.v:                                             ; preds = %bb.t
  call void @_ZN3sat6solver11assign_coreENS_7literalENS_13justificationE(ptr noundef nonnull align 8 dereferenceable(4264) %1, i32 %i.bi, ptr noundef nonnull byval(%"class.sat::justification") align 8 %2)
  br label %_ZN3sat6solver11assign_unitENS_7literalE.exit

bb.w:                                             ; preds = %bb.t
  %i.dp = load i8, ptr %i.az, align 8, !range !53
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %_ZN3sat6solver11assign_unitENS_7literalE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dr = load ptr, ptr %i.ba, align 8, !tbaa !30
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dr, i64 %6 ; 3 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !252
  %.not.i.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i.i, label %_ZN3sat6solver11assign_unitENS_7literalE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.ds, align 8, !tbaa !31
  %.sroa.5.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sroa_idx10.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.2.0..sroa_idx.i, i64 16, i1 false)
  br label %_ZN3sat6solver11assign_unitENS_7literalE.exit

_ZN3sat6solver11assign_unitENS_7literalE.exit:    ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.z

bb.z:                                             ; preds = %_ZN3sat6solver11assign_unitENS_7literalE.exit, %_ZN6vectorISt4pairIjN3sat7literalEELb0EjE5resetEv.exit
  %i.du = load ptr, ptr %i.ak, align 8, !tbaa !56
  %i.dv = zext i32 %i.cx to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !61
  %i.dz = and i32 %i.dy, 4
  store i64 %i.bm, ptr %3, align 8, !tbaa !62
  store i32 %i.dz, ptr %i.bb, align 8, !tbaa !61
  %i.ea = load ptr, ptr %i.dw, align 8, !tbaa !59 ; 4 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i89, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ec = getelementptr inbounds i8, ptr %i.ea, i64 -4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !31
  %i.ee = zext i32 %i.ed to i64
  br label %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i89

_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i89:   ; preds = %bb.aa, %bb.z
  %.0.i.i.i = phi i64 [ %i.ee, %bb.aa ], [ 0, %bb.z ]
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %.0.i.i.i
  %i.eg = call noundef ptr @_ZSt9__find_ifIPN3sat7watchedEN9__gnu_cxx5__ops16_Iter_equals_valIKS1_EEET_S8_S8_T0_St26random_access_iterator_tag(ptr noundef %i.ea, ptr noundef %i.ef, ptr nonnull align 8 dereferenceable(12) %3) ; 4 uses
  %i.eh = load ptr, ptr %i.dw, align 8, !tbaa !59 ; 5 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit5.i, label %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit5.thread.i

_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit5.i:    ; preds = %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i89
  %.not.i91 = icmp eq ptr %i.eg, null
  br i1 %.not.i91, label %.critedge, label %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i.i

_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit5.thread.i: ; preds = %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i89
  %i.ej = getelementptr inbounds i8, ptr %i.eh, i64 -4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !31
  %i.el = zext i32 %i.ek to i64                   ; 2 uses
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %i.el
  %.not7.i = icmp eq ptr %i.eg, %i.em
  br i1 %.not7.i, label %.critedge, label %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i.i

_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i.i:   ; preds = %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit5.thread.i, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit5.i
  %.0.i.i.i.i = phi i64 [ 0, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit5.i ], [ %i.el, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit5.thread.i ]
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %.0.i.i.i.i ; 2 uses
  %.0910.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %.not11.i.i = icmp eq ptr %.0910.i.i, %i.en
  br i1 %.not11.i.i, label %_ZN6vectorIN3sat7watchedELb1EjE5eraseEPS1_.exit.i, label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i.i, %.lr.ph.i.i.a
  %.0913.i.i = phi ptr [ %.09.i.i, %.lr.ph.i.i.a ], [ %.0910.i.i, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i.i ] ; 2 uses
  %.012.i.i = phi ptr [ %i.eo, %.lr.ph.i.i.a ], [ %i.eg, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.012.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.0913.i.i, i64 12, i1 false), !tbaa.struct !253
  %i.eo = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 16
  %.09.i.i = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 16 ; 2 uses
  %.not.i.i.a = icmp eq ptr %.09.i.i, %i.en
  br i1 %.not.i.i.a, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.a, !llvm.loop !119

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.a
  %.pre.i.i90 = load ptr, ptr %i.dw, align 8, !tbaa !59
  br label %_ZN6vectorIN3sat7watchedELb1EjE5eraseEPS1_.exit.i

_ZN6vectorIN3sat7watchedELb1EjE5eraseEPS1_.exit.i: ; preds = %._crit_edge.loopexit.i.i, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i.i
  %i.ep = phi ptr [ %.pre.i.i90, %._crit_edge.loopexit.i.i ], [ %i.eh, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i.i ]
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -4 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !31
  %i.es = add i32 %i.er, -1
  store i32 %i.es, ptr %i.eq, align 4, !tbaa !31
  br label %.critedge

.critedge:                                        ; preds = %_ZN6vectorIN3sat7watchedELb1EjE5eraseEPS1_.exit.i, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit5.thread.i, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ab

.critedge.thread:                                 ; preds = %bb.j, %bb.k, %bb.i, %bb.h
  %i.et = add i32 %.077120, 1
  %i.eu = zext i32 %.077120 to i64
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.eu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ev, ptr noundef nonnull align 8 dereferenceable(12) %i.bq, i64 12, i1 false), !tbaa.struct !253
  br label %bb.ab

bb.ab:                                            ; preds = %.critedge, %.critedge.thread
  %.178 = phi i32 [ %i.et, %.critedge.thread ], [ %.077120, %.critedge ] ; 2 uses
  %.4 = phi i32 [ %.173121, %.critedge.thread ], [ %8, %.critedge ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !120

_ZN6vectorIN3sat7watchedELb1EjE6shrinkEj.exit:    ; preds = %bb.f, %._crit_edge, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i
  %.173.lcssa158 = phi i32 [ %.173.lcssa164, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i ], [ %.4, %._crit_edge ], [ %.072125, %bb.f ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.074124, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ew, %i.aq
  br i1 %.not, label %_ZN6vectorIN3sat7watchedELb1EjE6shrinkEj.exit.thread, label %bb.e

_ZN6vectorIN3sat7watchedELb1EjE6shrinkEj.exit.thread: ; preds = %_ZN6vectorIN3sat7watchedELb1EjE6shrinkEj.exit, %bb.e, %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE5resetEv.exit.thread, %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE5resetEv.exit, %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE7reserveEj.exit, %_ZN6vectorIS_IN3sat7watchedELb1EjELb1EjE3endEv.exit
  %.072.lcssa = phi i32 [ 0, %_ZN6vectorIS_IN3sat7watchedELb1EjELb1EjE3endEv.exit ], [ 0, %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE5resetEv.exit ], [ 0, %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE5resetEv.exit.thread ], [ 0, %_ZN6vectorI7svectorIN3sat7literalEjELb1EjE7reserveEj.exit ], [ %.173.lcssa158, %_ZN6vectorIN3sat7watchedELb1EjE6shrinkEj.exit ], [ %.072125, %bb.e ]
  %i.ex = call noundef zeroext i1 @_ZN3sat6solver9propagateEb(ptr noundef nonnull align 8 dereferenceable(4264) %1, i1 noundef zeroext false) ; 0 uses
  ret i32 %.072.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN3sat3big10safe_reachENS_7literalES1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 %1, i32 %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 4 uses
  %i.c = zext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !31
  %i.f = zext i32 %2 to i64                       ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31   ; 2 uses
  %i.i = icmp slt i32 %i.e, %i.h
  br i1 %i.i, label %_ZNK3sat3big7reachesENS_7literalES1_.exit, label %_ZNK3sat3big7reachesENS_7literalES1_.exit.thread

_ZNK3sat3big7reachesENS_7literalES1_.exit:        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81   ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.f
  %i.m = load i32, ptr %i.l, align 4, !tbaa !31   ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.c
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31
  %i.p = icmp slt i32 %i.m, %i.o
  br i1 %i.p, label %_ZNK3sat3big6in_delENS_7literalES1_.exit.preheader, label %_ZNK3sat3big7reachesENS_7literalES1_.exit.thread

_ZNK3sat3big6in_delENS_7literalES1_.exit.preheader: ; preds = %_ZNK3sat3big7reachesENS_7literalES1_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load ptr, ptr %i.s, align 8
  br label %_ZNK3sat3big6in_delENS_7literalES1_.exit

_ZNK3sat3big6in_delENS_7literalES1_.exit:         ; preds = %_ZNK3sat3big6in_delENS_7literalES1_.exit.preheader, %.loopexit
  %.sroa.016.0 = phi i32 [ %.sroa.010.0.lcssa.i, %.loopexit ], [ %1, %_ZNK3sat3big6in_delENS_7literalES1_.exit.preheader ] ; 3 uses
  %.not = icmp eq i32 %.sroa.016.0, %2            ; 3 uses
  br i1 %.not, label %_ZNK3sat3big7reachesENS_7literalES1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK3sat3big6in_delENS_7literalES1_.exit
  %i.u = zext i32 %.sroa.016.0 to i64             ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !31   ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.u
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !33   ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK3sat3big4nextENS_7literalES1_.exit, label %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i

_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i:    ; preds = %bb.b
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !31 ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ad
  %.not23.i = icmp eq i32 %i.ab, 0
  br i1 %.not23.i, label %_ZNK3sat3big4nextENS_7literalES1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.u
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %_ZNK3sat3big7reachesENS_7literalES1_.exit.thread.i, %.lr.ph.i
  %.sroa.010.026.i = phi i32 [ -2, %.lr.ph.i ], [ %.sroa.010.1.i, %_ZNK3sat3big7reachesENS_7literalES1_.exit.thread.i ] ; 5 uses
  %.025.i = phi i32 [ %i.w, %.lr.ph.i ], [ %.1.i, %_ZNK3sat3big7reachesENS_7literalES1_.exit.thread.i ] ; 7 uses
  %.01224.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.at, %_ZNK3sat3big7reachesENS_7literalES1_.exit.thread.i ] ; 2 uses
  %i.ah = load i32, ptr %.01224.i, align 4, !tbaa !31 ; 3 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !31 ; 5 uses
  %i.al = icmp slt i32 %i.ag, %i.ak
  br i1 %i.al, label %_ZNK3sat3big7reachesENS_7literalES1_.exit.i, label %_ZNK3sat3big7reachesENS_7literalES1_.exit.thread.i

_ZNK3sat3big7reachesENS_7literalES1_.exit.i:      ; preds = %bb.c
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ai
  %i.an = load i32, ptr %i.am, align 4, !tbaa !31 ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.w
  br i1 %i.ao, label %bb.d, label %_ZNK3sat3big7reachesENS_7literalES1_.exit.thread.i

bb.d:                                             ; preds = %_ZNK3sat3big7reachesENS_7literalES1_.exit.i
  %i.ap = icmp eq i32 %i.ah, %2
  br i1 %i.ap, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = icmp slt i32 %i.ak, %i.h
  br i1 %i.aq, label %_ZNK3sat3big7reachesENS_7literalES1_.exit13.i, label %_ZNK3sat3big7reachesENS_7literalES1_.exit.thread.i

_ZNK3sat3big7reachesENS_7literalES1_.exit13.i:    ; preds = %bb.e
  %i.ar = icmp slt i32 %i.m, %i.an
  %i.as = icmp slt i32 %i.ak, %.025.i
  %or.cond.i = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond.i, label %bb.g, label %_ZNK3sat3big7reachesENS_7literalES1_.exit.thread.i

bb.f:                                             ; preds = %bb.d
  %.old.i = icmp slt i32 %i.ak, %.025.i
  br i1 %.old.i, label %bb.g, label %_ZNK3sat3big7reachesENS_7literalES1_.exit.thread.i

bb.g:                                             ; preds = %bb.f, %_ZNK3sat3big7reachesENS_7literalES1_.exit13.i
  br label %_ZNK3sat3big7reachesENS_7literalES1_.exit.thread.i

_ZNK3sat3big7reachesENS_7literalES1_.exit.thread.i: ; preds = %bb.g, %bb.f, %_ZNK3sat3big7reachesENS_7literalES1_.exit13.i, %bb.e, %_ZNK3sat3big7reachesENS_7literalES1_.exit.i, %bb.c
  %.1.i = phi i32 [ %i.ak, %bb.g ], [ %.025.i, %bb.f ], [ %.025.i, %_ZNK3sat3big7reachesENS_7literalES1_.exit13.i ], [ %.025.i, %_ZNK3sat3big7reachesENS_7literalES1_.exit.i ], [ %.025.i, %bb.c ], [ %.025.i, %bb.e ]
  %.sroa.010.1.i = phi i32 [ %i.ah, %bb.g ], [ %.sroa.010.026.i, %bb.f ], [ %.sroa.010.026.i, %_ZNK3sat3big7reachesENS_7literalES1_.exit13.i ], [ %.sroa.010.026.i, %_ZNK3sat3big7reachesENS_7literalES1_.exit.i ], [ %.sroa.010.026.i, %bb.c ], [ %.sroa.010.026.i, %bb.e ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01224.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.at, %i.ae
  br i1 %.not.i, label %_ZNK3sat3big4nextENS_7literalES1_.exit, label %bb.c

_ZNK3sat3big4nextENS_7literalES1_.exit:           ; preds = %_ZNK3sat3big7reachesENS_7literalES1_.exit.thread.i, %bb.b, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i
  %.sroa.010.0.lcssa.i = phi i32 [ -2, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i ], [ -2, %bb.b ], [ %.sroa.010.1.i, %_ZNK3sat3big7reachesENS_7literalES1_.exit.thread.i ] ; 4 uses
  %i.au = xor i32 %.sroa.016.0, 1                 ; 2 uses
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %.sroa.010.0.lcssa.i)
  %spec.select6.i = tail call i32 @llvm.umax.i32(i32 %i.au, i32 %.sroa.010.0.lcssa.i)
  %i.av = zext i32 %spec.select.i to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33 ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.loopexit, label %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i.i

_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i.i:  ; preds = %_ZNK3sat3big4nextENS_7literalES1_.exit
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !31 ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bc
  %.not8.not.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not8.not.i.i, label %.loopexit, label %.lr.ph.i.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.be, %i.bd
  br i1 %.not.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i.i, %bb.h
  %.09.i.i = phi ptr [ %i.be, %bb.h ], [ %i.ax, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i.i ] ; 2 uses
  %i.bf = load i32, ptr %.09.i.i, align 4, !tbaa !78
  %i.bg = icmp eq i32 %i.bf, %spec.select6.i
  br i1 %i.bg, label %_ZNK3sat3big7reachesENS_7literalES1_.exit.thread, label %bb.h

.loopexit:                                        ; preds = %bb.h, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i.i, %_ZNK3sat3big4nextENS_7literalES1_.exit
  %i.bh = xor i32 %.sroa.010.0.lcssa.i, %2
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %_ZNK3sat3big7reachesENS_7literalES1_.exit.thread, label %_ZNK3sat3big6in_delENS_7literalES1_.exit

_ZNK3sat3big7reachesENS_7literalES1_.exit.thread: ; preds = %.loopexit, %_ZNK3sat3big6in_delENS_7literalES1_.exit, %.lr.ph.i.i, %bb.a, %_ZNK3sat3big7reachesENS_7literalES1_.exit
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZNK3sat3big7reachesENS_7literalES1_.exit ], [ false, %.lr.ph.i.i ], [ %.not, %_ZNK3sat3big6in_delENS_7literalES1_.exit ], [ %.not, %.loopexit ]
  ret i1 %.2
}

declare void @_ZN3sat4drat3delENS_7literalES1_(ptr noundef nonnull align 8 dereferenceable(664), i32, i32) local_unnamed_addr #3

declare noundef ptr @_ZN3sat17find_binary_watchER6vectorINS_7watchedELb1EjENS_7literalE(ptr noundef nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #3

declare noundef i32 @_Z19get_verbosity_levelv() local_unnamed_addr #3

declare noundef zeroext i1 @_Z11is_threadedv() local_unnamed_addr #3

declare void @_Z12verbose_lockv() local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() local_unnamed_addr #3

declare void @_Z14verbose_unlockv() local_unnamed_addr #3

declare noundef zeroext i1 @_ZN3sat6solver9propagateEb(ptr noundef nonnull align 8 dereferenceable(4264), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @_ZNK3sat3big4nextENS_7literalES1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 %1, i32 %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 3 uses
  %i.c = zext i32 %1 to i64                       ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !31   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33   ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %._crit_edge, label %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit

_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit:      ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !31   ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n
  %.not23 = icmp eq i32 %i.l, 0
  br i1 %.not23, label %._crit_edge, label %.lr.ph
end_hunk_0
