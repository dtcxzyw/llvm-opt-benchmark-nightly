Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/qsbr?download=true
inline.NumInlined: 27
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden i64 @_Py_qsbr_advance(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = atomicrmw add ptr %0, i64 2 seq_cst, align 8
  %i.b = add i64 %i.a, 2
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden i64 @_Py_qsbr_shared_next(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 8
  %i.b = add i64 %i.a, 2
  ret i64 %i.b
}

; Function Attrs: norecurse nounwind uwtable
define hidden zeroext i1 @_Py_qsbr_poll(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load atomic i64, ptr %i.c seq_cst, align 8
  %i.e = sub i64 %1, %i.d
  %i.f = icmp slt i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !11   ; 4 uses
  fence seq_cst
  %i.h = load atomic i64, ptr %i.g seq_cst, align 8 ; 3 uses
  %i.i = getelementptr i8, ptr %i.g, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 3 uses
  %i.k = getelementptr i8, ptr %i.g, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23   ; 5 uses
  %.not23.i = icmp eq i64 %i.l, 0
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.l, 1
  %2 = icmp eq i64 %i.l, 1
  br i1 %2, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.l, -2
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.025.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ad, %._crit_edge.i.loopexit.unr-lcssa ]
  %.01724.i.epil.init = phi i64 [ %i.h, %.lr.ph.i.preheader ], [ %.1.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod7 = trunc i64 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod7)
  %i.m = getelementptr [64 x i8], ptr %i.j, i64 %.025.i.epil.init
  %i.n = load atomic i64, ptr %i.m seq_cst, align 8 ; 3 uses
  %.not19.i.epil = icmp ne i64 %i.n, 0
  %i.o = sub i64 %i.n, %.01724.i.epil.init
  %i.p = icmp slt i64 %i.o, 0
  %or.cond.i.epil = select i1 %.not19.i.epil, i1 %i.p, i1 false
  %.1.i.epil = select i1 %or.cond.i.epil, i64 %i.n, i64 %.01724.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.b
  %.017.lcssa.i = phi i64 [ %i.h, %bb.b ], [ %.1.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %.1.i.epil, %.lr.ph.i.epil.preheader ] ; 3 uses
  %i.q = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  %i.r = load atomic i64, ptr %i.q seq_cst, align 8 ; 3 uses
  %i.s = sub i64 %i.r, %.017.lcssa.i
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.c, label %qsbr_poll_scan.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.025.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ad, %.lr.ph.i ] ; 3 uses
  %.01724.i = phi i64 [ %i.h, %.lr.ph.i.preheader.new ], [ %.1.i.1, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.u = getelementptr [64 x i8], ptr %i.j, i64 %.025.i
  %i.v = load atomic i64, ptr %i.u seq_cst, align 8 ; 3 uses
  %.not19.i = icmp ne i64 %i.v, 0
  %i.w = sub i64 %i.v, %.01724.i
  %i.x = icmp slt i64 %i.w, 0
  %or.cond.i = select i1 %.not19.i, i1 %i.x, i1 false
  %.1.i = select i1 %or.cond.i, i64 %i.v, i64 %.01724.i ; 2 uses
  %i.y = getelementptr [64 x i8], ptr %i.j, i64 %.025.i
  %i.z = getelementptr i8, ptr %i.y, i64 64
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8 ; 3 uses
  %.not19.i.1 = icmp ne i64 %i.aa, 0
  %i.ab = sub i64 %i.aa, %.1.i
  %i.ac = icmp slt i64 %i.ab, 0
  %or.cond.i.1 = select i1 %.not19.i.1, i1 %i.ac, i1 false
  %.1.i.1 = select i1 %or.cond.i.1, i64 %i.aa, i64 %.1.i ; 3 uses
  %i.ad = add nuw i64 %.025.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !24

bb.c:                                             ; preds = %._crit_edge.i
  %i.ae = cmpxchg ptr %i.q, i64 %i.r, i64 %.017.lcssa.i seq_cst seq_cst, align 8 ; 0 uses
  br label %qsbr_poll_scan.exit

qsbr_poll_scan.exit:                              ; preds = %._crit_edge.i, %bb.c
  %.022.i = phi i64 [ %i.r, %._crit_edge.i ], [ %.017.lcssa.i, %bb.c ]
  %i.af = sub i64 %1, %.022.i
  %i.ag = icmp slt i64 %i.af, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %qsbr_poll_scan.exit
  %.0 = phi i1 [ %i.ag, %qsbr_poll_scan.exit ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden void @_Py_qsbr_attach(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = load atomic i64, ptr %i.b acquire, align 8
  store atomic i64 %i.c, ptr %0 seq_cst, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden void @_Py_qsbr_detach(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  store atomic i64 0, ptr %0 release, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i64 -144115188075855872, 144115188075855872) i64 @_Py_qsbr_reserve(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 10872      ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 10912      ; 4 uses
  %i.c = cmpxchg ptr %i.b, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %_PyMutex_Lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Lock(ptr noundef %i.b) #9
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.a, %bb.b
  %i.e = getelementptr i8, ptr %0, i64 10920      ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %.thread

.thread:                                          ; preds = %_PyMutex_Lock.exit
  %i.h = getelementptr i8, ptr %i.f, i64 56       ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  store ptr %i.i, ptr %i.e, align 8, !tbaa !26
  store ptr null, ptr %i.h, align 8, !tbaa !27
  %i.j = getelementptr i8, ptr %i.f, i64 8
  store ptr %i.a, ptr %i.j, align 8, !tbaa !11
  %i.k = getelementptr i8, ptr %i.f, i64 49
  store i8 1, ptr %i.k, align 1, !tbaa !28
  br label %bb.q

bb.c:                                             ; preds = %_PyMutex_Lock.exit
  tail call void @_PyEval_StopTheWorld(ptr noundef nonnull %0) #9
  %i.l = getelementptr i8, ptr %0, i64 10904      ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !23
  %i.n = shl i64 %i.m, 1
  %spec.store.select.i = tail call i64 @llvm.smax.i64(i64 %i.n, i64 8) ; 3 uses
  %i.o = shl i64 %spec.store.select.i, 6
  %i.p = or disjoint i64 %i.o, 63
  %i.q = tail call ptr @PyMem_RawCalloc(i64 noundef 1, i64 noundef %i.p) #9 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.thread20, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = add i64 %i.s, 63
  %i.u = and i64 %i.t, -64
  %i.v = inttoptr i64 %i.u to ptr                 ; 4 uses
  %i.w = getelementptr i8, ptr %0, i64 10896      ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.y = getelementptr i8, ptr %0, i64 10888      ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %.lr.ph.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %i.l, align 8, !tbaa !23
  %i.ab = shl i64 %i.aa, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 64 %i.v, ptr nonnull align 8 %i.z, i64 %i.ab, i1 false)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.d
  store ptr %i.v, ptr %i.y, align 8, !tbaa !19
  store ptr %i.q, ptr %i.w, align 8, !tbaa !29
  store i64 %spec.store.select.i, ptr %i.l, align 8, !tbaa !23
  store ptr null, ptr %i.e, align 8, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.n, %.lr.ph.i.i
  %i.ac = phi ptr [ null, %.lr.ph.i.i ], [ %i.av, %bb.n ] ; 2 uses
  %.016.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.aw, %bb.n ] ; 3 uses
  %i.ad = getelementptr [64 x i8], ptr %i.v, i64 %.016.i.i ; 6 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !30 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.af, null
  br i1 %.not14.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr i8, ptr %i.af, i64 1024
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !31
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = getelementptr i8, ptr %i.ad, i64 49
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !28, !range !51, !noundef !52
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr i8, ptr %i.ad, i64 56
  store ptr %i.ac, ptr %i.ak, align 8, !tbaa !27
  store ptr %i.ad, ptr %i.e, align 8, !tbaa !26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = phi ptr [ %i.ad, %bb.i ], [ %i.ac, %bb.h ] ; 2 uses
  %i.am = getelementptr [64 x i8], ptr %i.v, i64 %.016.i.i ; 4 uses
  %i.an = getelementptr i8, ptr %i.am, i64 64     ; 3 uses
  %i.ao = getelementptr i8, ptr %i.am, i64 80
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !30 ; 2 uses
  %.not14.i.i.1 = icmp eq ptr %i.ap, null
  br i1 %.not14.i.i.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr i8, ptr %i.ap, i64 1024
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = getelementptr i8, ptr %i.am, i64 113
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !28, !range !51, !noundef !52
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr i8, ptr %i.am, i64 120
  store ptr %i.al, ptr %i.au, align 8, !tbaa !27
  store ptr %i.an, ptr %i.e, align 8, !tbaa !26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.av = phi ptr [ %i.an, %bb.m ], [ %i.al, %bb.l ]
  %i.aw = add nuw nsw i64 %.016.i.i, 2            ; 2 uses
  %.not.i.i.1 = icmp eq i64 %i.aw, %spec.store.select.i
  br i1 %.not.i.i.1, label %bb.o, label %bb.f, !llvm.loop !53

bb.o:                                             ; preds = %bb.n
  tail call void @PyMem_RawFree(ptr noundef %i.x) #9
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !26  ; 5 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.thread20, label %bb.p

.thread20:                                        ; preds = %bb.c, %bb.o
  tail call void @_PyEval_StartTheWorld(ptr noundef nonnull %0) #9
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr i8, ptr %i.ax, i64 56     ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !27
  store ptr %i.ba, ptr %i.e, align 8, !tbaa !26
  store ptr null, ptr %i.az, align 8, !tbaa !27
  %i.bb = getelementptr i8, ptr %i.ax, i64 8
  store ptr %i.a, ptr %i.bb, align 8, !tbaa !11
  %i.bc = getelementptr i8, ptr %i.ax, i64 49
  store i8 1, ptr %i.bc, align 1, !tbaa !28
  tail call void @_PyEval_StartTheWorld(ptr noundef nonnull %0) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread
  %.119 = phi ptr [ %i.f, %.thread ], [ %i.ax, %bb.p ]
  %i.bd = getelementptr i8, ptr %0, i64 10888
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !19
  %i.bf = ptrtoint ptr %.119 to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 6
  br label %bb.r

bb.r:                                             ; preds = %.thread20, %bb.q
  %.0 = phi i64 [ %i.bi, %bb.q ], [ -1, %.thread20 ]
  %i.bj = cmpxchg ptr %i.b, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.bk = extractvalue { i8, i1 } %i.bj, 1
  br i1 %i.bk, label %_PyMutex_Unlock.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @PyMutex_Unlock(ptr noundef %i.b) #9
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %bb.r, %bb.s
  ret i64 %.0
}

declare void @_PyEval_StopTheWorld(ptr noundef) local_unnamed_addr #3

declare void @_PyEval_StartTheWorld(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @_Py_qsbr_register(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 10912      ; 4 uses
  %i.b = cmpxchg ptr %i.a, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %_PyMutex_Lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Lock(ptr noundef %i.a) #9
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %1, i64 10888
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.f = getelementptr [64 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  store ptr %0, ptr %i.g, align 8, !tbaa !30
  %i.h = getelementptr i8, ptr %0, i64 1024
  store ptr %i.f, ptr %i.h, align 8, !tbaa !31
  %i.i = cmpxchg ptr %i.a, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %_PyMutex_Unlock.exit, label %bb.c

bb.c:                                             ; preds = %_PyMutex_Lock.exit
  tail call void @PyMutex_Unlock(ptr noundef %i.a) #9
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %_PyMutex_Lock.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_qsbr_unregister(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 10912    ; 4 uses
  %i.d = cmpxchg ptr %i.c, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %_PyMutex_Lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Lock(ptr noundef %i.c) #9
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.a, %bb.b
  %i.f = getelementptr i8, ptr %0, i64 1024       ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 4 uses
  store ptr null, ptr %i.f, align 8, !tbaa !31
  %i.h = getelementptr i8, ptr %i.g, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !30
  %i.i = getelementptr i8, ptr %i.g, i64 49
  store i8 0, ptr %i.i, align 1, !tbaa !28
  %i.j = getelementptr i8, ptr %i.b, i64 10920    ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = getelementptr i8, ptr %i.g, i64 56
  store ptr %i.k, ptr %i.l, align 8, !tbaa !27
  store ptr %i.g, ptr %i.j, align 8, !tbaa !26
  %i.m = cmpxchg ptr %i.c, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.n = extractvalue { i8, i1 } %i.m, 1
  br i1 %i.n, label %_PyMutex_Unlock.exit, label %bb.c

bb.c:                                             ; preds = %_PyMutex_Lock.exit
  tail call void @PyMutex_Unlock(ptr noundef %i.c) #9
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %_PyMutex_Lock.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_qsbr_fini(ptr nofree noundef captures(none) initializes((10888, 10896), (10904, 10912), (10920, 10928)) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 10896
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  tail call void @PyMem_RawFree(ptr noundef %i.b) #9
  %i.c = getelementptr i8, ptr %0, i64 10888
  %i.d = getelementptr i8, ptr %0, i64 10920
  store ptr null, ptr %i.d, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

declare void @PyMem_RawFree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_qsbr_after_fork(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1024
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 4 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11   ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 40
  store i8 0, ptr %i.e, align 1
  %i.f = getelementptr i8, ptr %i.d, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !23   ; 5 uses
  %.not18 = icmp eq i64 %i.g, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 3 uses
  %i.j = getelementptr i8, ptr %i.d, i64 48       ; 6 uses
  %xtraiter = and i64 %i.g, 1
  %i.k = icmp eq i64 %i.g, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.g, -2
  br label %bb.d

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.019.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod22 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.l = getelementptr [64 x i8], ptr %i.i, i64 %.019.epil.init ; 5 uses
  %.not17.epil = icmp eq ptr %i.l, %i.b
  br i1 %.not17.epil, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  %i.m = getelementptr i8, ptr %i.l, i64 49       ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !28, !range !51, !noundef !52
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.l, i64 16
  store ptr null, ptr %i.p, align 8, !tbaa !30
  store i8 0, ptr %i.m, align 1, !tbaa !28
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.r = getelementptr i8, ptr %i.l, i64 56
  store ptr %i.q, ptr %i.r, align 8, !tbaa !27
  store ptr %i.l, ptr %i.j, align 8, !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.b, %.epil.preheader, %bb.a
  ret void

bb.d:                                             ; preds = %bb.j, %.lr.ph.new
  %.019 = phi i64 [ 0, %.lr.ph.new ], [ %i.ah, %bb.j ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.j ]
  %i.s = getelementptr [64 x i8], ptr %i.i, i64 %.019 ; 5 uses
  %.not17 = icmp eq ptr %i.s, %i.b
  br i1 %.not17, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.s, i64 49       ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !28, !range !51, !noundef !52
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.s, i64 16
  store ptr null, ptr %i.w, align 8, !tbaa !30
  store i8 0, ptr %i.t, align 1, !tbaa !28
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.y = getelementptr i8, ptr %i.s, i64 56
  store ptr %i.x, ptr %i.y, align 8, !tbaa !27
  store ptr %i.s, ptr %i.j, align 8, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.z = getelementptr [64 x i8], ptr %i.i, i64 %.019 ; 4 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 64      ; 2 uses
  %.not17.1 = icmp eq ptr %i.aa, %i.b
  br i1 %.not17.1, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %i.z, i64 113     ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !28, !range !51, !noundef !52
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr i8, ptr %i.z, i64 80
  store ptr null, ptr %i.ae, align 8, !tbaa !30
  store i8 0, ptr %i.ab, align 1, !tbaa !28
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.ag = getelementptr i8, ptr %i.z, i64 120
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !27
  store ptr %i.aa, ptr %i.j, align 8, !tbaa !26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ah = add nuw i64 %.019, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !120
}

declare void @PyMutex_Lock(ptr noundef) local_unnamed_addr #3

declare ptr @PyMem_RawCalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare void @PyMutex_Unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !14, i64 8}
!12 = !{!"_qsbr_thread_state", !13, i64 0, !14, i64 8, !16, i64 16, !8, i64 24, !13, i64 32, !13, i64 40, !17, i64 48, !17, i64 49, !18, i64 56}
!13 = !{!"long", !9, i64 0}
!14 = !{!"p1 _ZTS12_qsbr_shared", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"p1 _ZTS3_ts", !15, i64 0}
!17 = !{!"_Bool", !9, i64 0}
!18 = !{!"p1 _ZTS18_qsbr_thread_state", !15, i64 0}
!19 = !{!20, !21, i64 16}
!20 = !{!"_qsbr_shared", !13, i64 0, !13, i64 8, !21, i64 16, !15, i64 24, !13, i64 32, !22, i64 40, !18, i64 48}
!21 = !{!"p1 _ZTS9_qsbr_pad", !15, i64 0}
!22 = !{!"PyMutex", !9, i64 0}
!23 = !{!20, !13, i64 32}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!20, !18, i64 48}
!27 = !{!12, !18, i64 56}
!28 = !{!12, !17, i64 49}
!29 = !{!20, !15, i64 24}
!30 = !{!12, !16, i64 16}
!31 = !{!32, !18, i64 1024}
!32 = !{!"_PyThreadStateImpl", !33, i64 0, !45, i64 848, !13, i64 936, !13, i64 944, !13, i64 952, !13, i64 960, !13, i64 968, !13, i64 976, !37, i64 984, !37, i64 992, !8, i64 1000, !49, i64 1008, !18, i64 1024, !49, i64 1032}
!33 = !{!"_ts", !16, i64 0, !16, i64 8, !34, i64 16, !13, i64 24, !35, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !36, i64 72, !36, i64 80, !36, i64 88, !15, i64 96, !15, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !38, i64 136, !37, i64 144, !8, i64 152, !37, i64 160, !13, i64 168, !13, i64 176, !37, i64 184, !13, i64 192, !8, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !13, i64 232, !13, i64 240, !39, i64 248, !40, i64 256, !40, i64 264, !42, i64 272, !37, i64 288, !43, i64 296, !13, i64 304, !37, i64 312, !37, i64 320, !44, i64 328}
!34 = !{!"p1 _ZTS3_is", !15, i64 0}
!35 = !{!"", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!36 = !{!"p1 _ZTS19_PyInterpreterFrame", !15, i64 0}
!37 = !{!"p1 _ZTS7_object", !15, i64 0}
!38 = !{!"p1 _ZTS14_err_stackitem", !15, i64 0}
!39 = !{!"p1 _ZTS12_stack_chunk", !15, i64 0}
!40 = !{!"p2 _ZTS7_object", !41, i64 0}
!41 = !{!"any p2 pointer", !15, i64 0}
!42 = !{!"_err_stackitem", !37, i64 0, !38, i64 8}
!43 = !{!"p1 _ZTS11_PyExitData", !15, i64 0}
!44 = !{!"", !8, i64 0, !9, i64 4}
!45 = !{!"_PyInterpreterFrame", !9, i64 0, !36, i64 8, !9, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !46, i64 48, !15, i64 56, !47, i64 64, !48, i64 72, !9, i64 74, !9, i64 75, !9, i64 80}
!46 = !{!"p1 _ZTS6_frame", !15, i64 0}
!47 = !{!"p1 _ZTS11_PyStackRef", !15, i64 0}
!48 = !{!"short", !9, i64 0}
!49 = !{!"llist_node", !50, i64 0, !50, i64 8}
!50 = !{!"p1 _ZTS10llist_node", !15, i64 0}
!51 = !{i8 0, i8 2}
!52 = !{}
!53 = distinct !{!53, !25}
!54 = !{!55, !21, i64 10888}
!55 = !{!"_is", !56, i64 0, !34, i64 7264, !13, i64 7272, !13, i64 7280, !8, i64 7288, !13, i64 7296, !8, i64 7304, !8, i64 7308, !8, i64 7312, !13, i64 7320, !59, i64 7328, !61, i64 7376, !16, i64 7384, !13, i64 7392, !62, i64 7400, !37, i64 7680, !37, i64 7688, !65, i64 7696, !69, i64 7832, !13, i64 8040, !70, i64 8048, !71, i64 8080, !13, i64 8536, !37, i64 8544, !37, i64 8552, !37, i64 8560, !15, i64 8568, !9, i64 8576, !9, i64 8640, !13, i64 8648, !9, i64 8656, !75, i64 10696, !37, i64 10744, !37, i64 10752, !37, i64 10760, !80, i64 10768, !81, i64 10832, !83, i64 10848, !20, i64 10872, !49, i64 10928, !22, i64 10944, !85, i64 10952, !37, i64 10960, !9, i64 10968, !9, i64 11032, !9, i64 11096, !9, i64 11160, !9, i64 11161, !86, i64 11168, !89, i64 11832, !93, i64 11888, !94, i64 11896, !96, i64 14336, !97, i64 79880, !99, i64 79896, !100, i64 79968, !101, i64 80000, !102, i64 80024, !103, i64 82008, !107, i64 223296, !9, i64 223328, !17, i64 223384, !17, i64 223385, !108, i64 223386, !109, i64 223400, !109, i64 223408, !109, i64 223416, !109, i64 223424, !13, i64 223432, !110, i64 223440, !15, i64 223448, !111, i64 223456, !84, i64 223472, !84, i64 223473, !13, i64 223480, !13, i64 223488, !9, i64 223496, !9, i64 224712, !9, i64 224776, !112, i64 224840, !114, i64 224928, !13, i64 225064, !32, i64 225072}
!56 = !{!"_ceval_state", !13, i64 0, !8, i64 8, !57, i64 16, !8, i64 24, !58, i64 32}
!57 = !{!"p1 _ZTS18_gil_runtime_state", !15, i64 0}
!58 = !{!"_pending_calls", !16, i64 0, !22, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !9, i64 24, !8, i64 7224, !8, i64 7228}
!59 = !{!"pythreads", !13, i64 0, !16, i64 8, !60, i64 16, !16, i64 24, !13, i64 32, !13, i64 40}
!60 = !{!"p1 _ZTS18_PyThreadStateImpl", !15, i64 0}
!61 = !{!"p1 _ZTS14pyruntimestate", !15, i64 0}
!62 = !{!"_gc_runtime_state", !8, i64 0, !8, i64 4, !63, i64 8, !9, i64 32, !63, i64 80, !9, i64 104, !8, i64 224, !36, i64 232, !37, i64 240, !37, i64 248, !13, i64 256, !13, i64 264, !8, i64 272, !8, i64 276}
!63 = !{!"gc_generation", !64, i64 0, !8, i64 16, !8, i64 20}
!64 = !{!"", !13, i64 0, !13, i64 8}
!65 = !{!"_import_state", !37, i64 0, !37, i64 8, !37, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !37, i64 40, !37, i64 48, !8, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !66, i64 88, !68, i64 112}
!66 = !{!"", !22, i64 0, !67, i64 8, !13, i64 16}
!67 = !{!"long long", !9, i64 0}
!68 = !{!"", !8, i64 0, !13, i64 8, !8, i64 16}
!69 = !{!"_gil_runtime_state", !13, i64 0, !16, i64 8, !8, i64 16, !13, i64 24, !9, i64 32, !9, i64 80, !9, i64 120, !9, i64 168}
!70 = !{!"codecs_state", !37, i64 0, !37, i64 8, !37, i64 16, !8, i64 24}
!71 = !{!"PyConfig", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !13, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !72, i64 64, !8, i64 72, !8, i64 76, !72, i64 80, !72, i64 88, !72, i64 96, !8, i64 104, !73, i64 112, !73, i64 128, !73, i64 144, !73, i64 160, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !72, i64 232, !72, i64 240, !72, i64 248, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !72, i64 288, !72, i64 296, !72, i64 304, !72, i64 312, !8, i64 320, !73, i64 328, !72, i64 344, !72, i64 352, !72, i64 360, !72, i64 368, !72, i64 376, !72, i64 384, !72, i64 392, !8, i64 400, !72, i64 408, !72, i64 416, !72, i64 424, !72, i64 432, !8, i64 440, !8, i64 444, !8, i64 448}
!72 = !{!"p1 int", !15, i64 0}
!73 = !{!"", !13, i64 0, !74, i64 8}
!74 = !{!"p2 int", !41, i64 0}
!75 = !{!"", !76, i64 0, !79, i64 24}
!76 = !{!"_xid_lookup_state", !77, i64 0}
!77 = !{!"", !8, i64 0, !8, i64 4, !22, i64 8, !78, i64 16}
!78 = !{!"p1 _ZTS12_xid_regitem", !15, i64 0}
!79 = !{!"xi_exceptions", !37, i64 0, !37, i64 8, !37, i64 16}
!80 = !{!"_warnings_runtime_state", !37, i64 0, !37, i64 8, !37, i64 16, !66, i64 24, !13, i64 48, !37, i64 56}
!81 = !{!"atexit_state", !82, i64 0, !37, i64 8}
!82 = !{!"p1 _ZTS15atexit_callback", !15, i64 0}
!83 = !{!"_stoptheworld_state", !22, i64 0, !17, i64 1, !17, i64 2, !17, i64 3, !84, i64 4, !13, i64 8, !16, i64 16}
!84 = !{!"", !9, i64 0}
!85 = !{!"p1 _ZTS15_obmalloc_state", !15, i64 0}
!86 = !{!"_py_object_state", !87, i64 0, !8, i64 656}
end_hunk_0
