inline.NumInlined: 41
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_testinternalcapi_benchmark_locks_impl:bb.a

._crit_edge:                                      ; preds = %.lr.ph, %.preheader5
  %i.v = icmp eq i64 %5, 0
  br i1 %i.v, label %bb.g, label %bb.h

.lr.ph:                                           ; preds = %.preheader5, %.lr.ph
  %.0619 = phi i64 [ %i.ab, %.lr.ph ], [ 0, %.preheader5 ] ; 3 uses
  %i.w = getelementptr [40 x i8], ptr %i.n, i64 %.0619 ; 4 uses
  store ptr %8, ptr %i.w, align 8, !tbaa !47
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.y = srem i64 %.0619, %6
  %i.z = getelementptr [216 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.w, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !50
  %i.ab = add nuw nsw i64 %.0619, 1               ; 3 uses
  %i.ac = getelementptr i8, ptr %i.w, i64 16
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !51
  %i.ad = call i64 @PyThread_start_new_thread(ptr noundef nonnull @thread_benchmark_locks, ptr noundef nonnull %i.w) #6 ; 0 uses
  %exitcond.not = icmp eq i64 %i.ab, %0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52

bb.g:                                             ; preds = %._crit_edge
  %i.ae = mul i32 %3, 1000
  %i.af = call i32 @usleep(i32 noundef %i.ae) #6  ; 0 uses
  store atomic i32 1, ptr %8 seq_cst, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  br i1 %i.u, label %.lr.ph12, label %._crit_edge13.thread

._crit_edge13:                                    ; preds = %.lr.ph12
  %i.ag = call i32 @PyTime_PerfCounter(ptr noundef nonnull %i.b) #6
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %.loopexit, label %.lr.ph16

._crit_edge13.thread:                             ; preds = %bb.h
  %i.ai = call i32 @PyTime_PerfCounter(ptr noundef nonnull %i.b) #6
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %.loopexit, label %._crit_edge17

.lr.ph16:                                         ; preds = %._crit_edge13
  %i.ak = getelementptr i8, ptr %i.q, i64 8
  %i.al = getelementptr i8, ptr %i.q, i64 32
  %i.am = getelementptr i8, ptr %i.q, i64 24
  br label %bb.i

.lr.ph12:                                         ; preds = %bb.h, %.lr.ph12
  %.06010 = phi i64 [ %i.ap, %.lr.ph12 ], [ 0, %bb.h ] ; 2 uses
  %i.an = getelementptr [40 x i8], ptr %i.n, i64 %.06010
  %i.ao = getelementptr i8, ptr %i.an, i64 32
  call void @PyEvent_Wait(ptr noundef %i.ao) #6
  %i.ap = add nuw nsw i64 %.06010, 1              ; 2 uses
  %exitcond18.not = icmp eq i64 %i.ap, %0
  br i1 %exitcond18.not, label %._crit_edge13, label %.lr.ph12, !llvm.loop !53

bb.i:                                             ; preds = %.lr.ph16, %bb.n
  %.05715 = phi i64 [ 0, %.lr.ph16 ], [ %i.bc, %bb.n ] ; 4 uses
  %.05814 = phi i64 [ 0, %.lr.ph16 ], [ %i.bb, %bb.n ]
  %i.aq = getelementptr [40 x i8], ptr %i.n, i64 %.05715
  %i.ar = getelementptr i8, ptr %i.aq, i64 24     ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !54
  %i.at = call ptr @PyLong_FromSsize_t(i64 noundef %i.as) #6 ; 2 uses
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val.i = load ptr, ptr %i.ak, align 8, !tbaa !55
  %i.au = getelementptr i8, ptr %.val.i, i64 168
  %.val7.i = load i64, ptr %i.au, align 8, !tbaa !58
  %i.av = and i64 %.val7.i, 33554432
  %.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 44, ptr noundef nonnull @__PRETTY_FUNCTION__.PyList_SET_ITEM) #7
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aw = load i64, ptr %i.al, align 8, !tbaa !66
  %i.ax = icmp slt i64 %.05715, %i.aw
  br i1 %i.ax, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef 46, ptr noundef nonnull @__PRETTY_FUNCTION__.PyList_SET_ITEM) #7
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %i.am, align 8, !tbaa !70
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %.05715
  store ptr %i.at, ptr %i.az, align 8, !tbaa !24
  %i.ba = load i64, ptr %i.ar, align 8, !tbaa !54
  %i.bb = add i64 %i.ba, %.05814                  ; 2 uses
  %i.bc = add nuw nsw i64 %.05715, 1              ; 2 uses
  %exitcond19.not = icmp eq i64 %i.bc, %0
  br i1 %exitcond19.not, label %._crit_edge17.loopexit, label %bb.i, !llvm.loop !71

._crit_edge17.loopexit:                           ; preds = %bb.n
  %i.bd = sitofp i64 %i.bb to double
  %i.be = fmul nnan double %i.bd, 1.000000e+09
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge13.thread, %._crit_edge17.loopexit
  %.058.lcssa = phi double [ 0.000000e+00, %._crit_edge13.thread ], [ %i.be, %._crit_edge17.loopexit ]
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !72  ; 2 uses
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  %.not71 = icmp eq i64 %i.bf, %i.bg
  br i1 %.not71, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge17
  call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.11, i32 noundef 374, ptr noundef nonnull @__PRETTY_FUNCTION__._testinternalcapi_benchmark_locks_impl) #7
  unreachable

bb.p:                                             ; preds = %._crit_edge17
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %.058.lcssa, %i.bi
  %i.bk = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.22, double noundef %i.bj, ptr noundef nonnull %i.q, i64 noundef %i.bh) #6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %._crit_edge13.thread, %._crit_edge13, %bb.f, %bb.e, %bb.p, %bb.d, %bb.b
  %.062 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %i.n, %._crit_edge13 ], [ %i.n, %bb.p ], [ %i.n, %._crit_edge13.thread ], [ %i.n, %bb.i ]
  %.055 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %._crit_edge13 ], [ %i.bk, %bb.p ], [ null, %._crit_edge13.thread ], [ null, %bb.i ]
  %.054 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.e ], [ %i.q, %bb.f ], [ %i.q, %._crit_edge13 ], [ %i.q, %bb.p ], [ %i.q, %._crit_edge13.thread ], [ %i.q, %bb.i ] ; 4 uses
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !46
  call void @PyMem_Free(ptr noundef %i.bl) #6
  call void @PyMem_Free(ptr noundef %.062) #6
  %.not.i72 = icmp eq ptr %.054, null
  br i1 %.not.i72, label %Py_XDECREF.exit, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.bm = load i32, ptr %.054, align 8, !tbaa !26 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bm, -1
  br i1 %.not.i.i, label %bb.r, label %Py_XDECREF.exit

bb.r:                                             ; preds = %bb.q
  %i.bn = add nsw i32 %i.bm, -1                   ; 2 uses
  store i32 %i.bn, ptr %.054, align 8, !tbaa !26
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.s, label %Py_XDECREF.exit

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %.054) #6
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.s, %bb.r, %bb.q, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  ret ptr %.055
}

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

declare ptr @PyMem_Calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #1

declare i32 @PyTime_PerfCounter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @thread_benchmark_locks(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 14 uses
  %i.b = getelementptr i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !40
  %.fr134 = freeze i32 %i.c                       ; 4 uses
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !41
  %.fr135 = freeze i32 %i.e                       ; 4 uses
  %i.f = getelementptr i8, ptr %i.a, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !42
  %.fr = freeze i32 %i.g                          ; 4 uses
  %i.h = getelementptr i8, ptr %i.a, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !44   ; 6 uses
  %i.j = icmp sgt i64 %i.i, 0                     ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 8
  %i.l = getelementptr i8, ptr %i.a, i64 16       ; 5 uses
  %i.m = getelementptr i8, ptr %i.a, i64 32
  %i.n = getelementptr i8, ptr %i.a, i64 40
  %i.o = icmp sgt i32 %.fr, 0
  %i.p = icmp sgt i32 %.fr134, 0
  %i.q = icmp sgt i32 %.fr135, 0                  ; 2 uses
  %i.r = sext i32 %.fr to i64                     ; 9 uses
  br i1 %i.o, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %i.s = getelementptr i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !51
  %xtraiter = and i32 %.fr134, 7                  ; 3 uses
  %i.u = icmp ult i32 %.fr134, 8
  %unroll_iter = and i32 %.fr134, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod228 = icmp ne i32 %xtraiter, 0
  %xtraiter229 = and i32 %.fr135, 7               ; 3 uses
  %i.v = icmp ult i32 %.fr135, 8
  %unroll_iter234 = and i32 %.fr135, 2147483640
  %lcmp.mod231.not = icmp eq i32 %xtraiter229, 0
  %lcmp.mod233 = icmp ne i32 %xtraiter229, 0
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %._crit_edge.us67.a
  %.049.us = phi i64 [ %.150.us, %._crit_edge.us67.a ], [ %i.t, %.split.us.preheader ] ; 2 uses
  %.044.us = phi i64 [ %2, %._crit_edge.us67.a ], [ 0, %.split.us.preheader ] ; 4 uses
  %.041.us = phi double [ %.3.lcssa.us, %._crit_edge.us67.a ], [ 1.000000e+00, %.split.us.preheader ] ; 2 uses
  %.040.us = phi double [ %.1.lcssa.us, %._crit_edge.us67.a ], [ 0.000000e+00, %.split.us.preheader ] ; 3 uses
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split.us
  %i.w = load atomic i32, ptr %i.a monotonic, align 8
  %.not.us = icmp eq i32 %i.w, 0
  br i1 %.not.us, label %bb.d, label %.split70.us

bb.c:                                             ; preds = %.split.us
  %.not47.us = icmp slt i64 %.044.us, %i.i
  br i1 %.not47.us, label %bb.d, label %.split70.us

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.y = load i32, ptr %i.l, align 8, !tbaa !43
  %.not48.us = icmp eq i32 %i.y, 0
  br i1 %.not48.us, label %.lr.ph56.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = add i64 %.049.us, -7046029254386353131   ; 3 uses
  %i.aa = lshr i64 %i.z, 30
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, -4658895280553007687     ; 2 uses
  %i.ad = lshr i64 %i.ac, 27
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, -7723592293110705685     ; 2 uses
  %i.ag = lshr i64 %i.af, 31
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = load i64, ptr %i.m, align 8, !tbaa !45
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = mul nuw i64 %i.ak, %i.ai
  %i.am = lshr i64 %i.al, 32
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.ao = getelementptr [216 x i8], ptr %i.an, i64 %i.am
  br label %.lr.ph56.us

.lr.ph56.us:                                      ; preds = %bb.e, %bb.d
  %.150.us = phi i64 [ %.049.us, %bb.d ], [ %i.z, %bb.e ]
  %.043.us = phi ptr [ %i.x, %bb.d ], [ %i.ao, %bb.e ] ; 2 uses
  %i.ap = getelementptr i8, ptr %.043.us, i64 200 ; 8 uses
  %i.aq = getelementptr i8, ptr %.043.us, i64 208 ; 2 uses
  br i1 %i.p, label %.lr.ph56.split.us.us, label %.lr.ph56.split.us66

._crit_edge.us67.loopexit.unr-lcssa.a:            ; preds = %.lr.ph.us
  br i1 %lcmp.mod231.not, label %._crit_edge.us67.a, label %.lr.ph.us.epil.preheader.a

.lr.ph.us.epil.preheader.a:                       ; preds = %._crit_edge.us67.loopexit.unr-lcssa.a, %.lr.ph.us.preheader
  %.159.us.epil.init = phi double [ %.040.us, %.lr.ph.us.preheader ], [ %i.ay, %._crit_edge.us67.loopexit.unr-lcssa.a ]
  %.358.us.epil.init = phi double [ %.us-phi.us, %.lr.ph.us.preheader ], [ %i.ay, %._crit_edge.us67.loopexit.unr-lcssa.a ]
  tail call void @llvm.assume(i1 %lcmp.mod233)
  br label %.lr.ph.us.epil.a

.lr.ph.us.epil.a:                                 ; preds = %.lr.ph.us.epil.a, %.lr.ph.us.epil.preheader.a
  %.159.us.epil = phi double [ %1, %.lr.ph.us.epil.a ], [ %.159.us.epil.init, %.lr.ph.us.epil.preheader.a ]
  %.358.us.epil = phi double [ %1, %.lr.ph.us.epil.a ], [ %.358.us.epil.init, %.lr.ph.us.epil.preheader.a ]
  %epil.iter230 = phi i32 [ %epil.iter230.next, %.lr.ph.us.epil.a ], [ 0, %.lr.ph.us.epil.preheader.a ]
  %1 = fadd double %.358.us.epil, %.159.us.epil   ; 4 uses
  %epil.iter230.next = add i32 %epil.iter230, 1   ; 2 uses
  %epil.iter230.cmp.not = icmp eq i32 %epil.iter230.next, %xtraiter229
  br i1 %epil.iter230.cmp.not, label %._crit_edge.us67.a, label %.lr.ph.us.epil.a, !llvm.loop !73

._crit_edge.us67.a:                               ; preds = %._crit_edge.us67.loopexit.unr-lcssa.a, %.lr.ph.us.epil.a, %..preheader_crit_edge.us
  %.3.lcssa.us = phi double [ %.us-phi.us, %..preheader_crit_edge.us ], [ %i.ay, %._crit_edge.us67.loopexit.unr-lcssa.a ], [ %1, %.lr.ph.us.epil.a ]
  %.1.lcssa.us = phi double [ %.040.us, %..preheader_crit_edge.us ], [ %i.ay, %._crit_edge.us67.loopexit.unr-lcssa.a ], [ %1, %.lr.ph.us.epil.a ]
  %2 = add i64 %.044.us, %i.r
  br label %.split.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.159.us = phi double [ %i.ay, %.lr.ph.us ], [ %.040.us, %.lr.ph.us.preheader ]
  %.358.us = phi double [ %i.ay, %.lr.ph.us ], [ %.us-phi.us, %.lr.ph.us.preheader ]
  %niter235 = phi i32 [ %niter235.next.7, %.lr.ph.us ], [ 0, %.lr.ph.us.preheader ]
  %i.ar = fadd double %.358.us, %.159.us          ; 2 uses
  %i.as = fadd double %i.ar, %i.ar                ; 2 uses
  %i.at = fadd double %i.as, %i.as                ; 2 uses
  %i.au = fadd double %i.at, %i.at                ; 2 uses
  %i.av = fadd double %i.au, %i.au                ; 2 uses
  %i.aw = fadd double %i.av, %i.av                ; 2 uses
  %i.ax = fadd double %i.aw, %i.aw                ; 2 uses
  %i.ay = fadd double %i.ax, %i.ax                ; 6 uses
  %niter235.next.7 = add nuw nsw i32 %niter235, 8 ; 2 uses
  %niter235.ncmp.7 = icmp eq i32 %niter235.next.7, %unroll_iter234
  br i1 %niter235.ncmp.7, label %._crit_edge.us67.loopexit.unr-lcssa.a, label %.lr.ph.us, !llvm.loop !75

.lr.ph56.split.us66:                              ; preds = %.lr.ph56.us, %_PyMutex_Unlock.exit.us64
  %.03954.us62 = phi i32 [ %8, %_PyMutex_Unlock.exit.us64 ], [ 0, %.lr.ph56.us ]
  %3 = cmpxchg ptr %i.ap, i8 0, i8 1 seq_cst seq_cst, align 1
  %4 = extractvalue { i8, i1 } %3, 1
  br i1 %4, label %_PyMutex_Lock.exit.us63, label %bb.f

bb.f:                                             ; preds = %.lr.ph56.split.us66
  tail call void @PyMutex_Lock(ptr noundef %i.ap) #6
  br label %_PyMutex_Lock.exit.us63

_PyMutex_Lock.exit.us63:                          ; preds = %bb.f, %.lr.ph56.split.us66
  %5 = cmpxchg ptr %i.ap, i8 1, i8 0 seq_cst seq_cst, align 1
  %6 = extractvalue { i8, i1 } %5, 1
  br i1 %6, label %_PyMutex_Unlock.exit.us64, label %7

7:                                                ; preds = %_PyMutex_Lock.exit.us63
  tail call void @PyMutex_Unlock(ptr noundef %i.ap) #6
  br label %_PyMutex_Unlock.exit.us64

_PyMutex_Unlock.exit.us64:                        ; preds = %7, %_PyMutex_Lock.exit.us63
  %8 = add nuw nsw i32 %.03954.us62, 1            ; 2 uses
  %exitcond161.not = icmp eq i32 %8, %.fr
  br i1 %exitcond161.not, label %..preheader_crit_edge.us, label %.lr.ph56.split.us66, !llvm.loop !76

..preheader_crit_edge.us:                         ; preds = %_PyMutex_Unlock.exit.us64, %_PyMutex_Unlock.exit.us.us
  %.us-phi.us = phi double [ %.lcssa, %_PyMutex_Unlock.exit.us.us ], [ %.041.us, %_PyMutex_Unlock.exit.us64 ] ; 3 uses
  br i1 %i.q, label %.lr.ph.us.preheader, label %._crit_edge.us67.a

.lr.ph.us.preheader:                              ; preds = %..preheader_crit_edge.us
  br i1 %i.v, label %.lr.ph.us.epil.preheader.a, label %.lr.ph.us

.lr.ph56.split.us.us:                             ; preds = %.lr.ph56.us, %_PyMutex_Unlock.exit.us.us
  %.03954.us.us = phi i32 [ %10, %_PyMutex_Unlock.exit.us.us ], [ 0, %.lr.ph56.us ]
  %.14253.us.us = phi double [ %.lcssa, %_PyMutex_Unlock.exit.us.us ], [ %.041.us, %.lr.ph56.us ] ; 2 uses
  %i.az = cmpxchg ptr %i.ap, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.ba = extractvalue { i8, i1 } %i.az, 1
  br i1 %i.ba, label %_PyMutex_Lock.exit.us.us, label %bb.g

bb.g:                                             ; preds = %.lr.ph56.split.us.us
  tail call void @PyMutex_Lock(ptr noundef %i.ap) #6
  br label %_PyMutex_Lock.exit.us.us

_PyMutex_Lock.exit.us.us:                         ; preds = %bb.g, %.lr.ph56.split.us.us
  %.promoted.us.us = load double, ptr %i.aq, align 8, !tbaa !77 ; 2 uses
  br i1 %i.u, label %.epil.preheader, label %_PyMutex_Lock.exit.us.us.new

9:                                                ; preds = %._crit_edge.us.us
  tail call void @PyMutex_Unlock(ptr noundef %i.ap) #6
  br label %_PyMutex_Unlock.exit.us.us

_PyMutex_Unlock.exit.us.us:                       ; preds = %._crit_edge.us.us, %9
  %10 = add nuw nsw i32 %.03954.us.us, 1          ; 2 uses
  %exitcond163.not = icmp eq i32 %10, %.fr
  br i1 %exitcond163.not, label %..preheader_crit_edge.us, label %.lr.ph56.split.us.us, !llvm.loop !76

_PyMutex_Lock.exit.us.us.new:                     ; preds = %_PyMutex_Lock.exit.us.us, %_PyMutex_Lock.exit.us.us.new
  %i.bb = phi double [ %i.bj, %_PyMutex_Lock.exit.us.us.new ], [ %.promoted.us.us, %_PyMutex_Lock.exit.us.us ]
  %.251.us.us = phi double [ %i.bj, %_PyMutex_Lock.exit.us.us.new ], [ %.14253.us.us, %_PyMutex_Lock.exit.us.us ]
  %niter = phi i32 [ %niter.next.7, %_PyMutex_Lock.exit.us.us.new ], [ 0, %_PyMutex_Lock.exit.us.us ]
  %i.bc = fadd double %.251.us.us, %i.bb          ; 2 uses
  %i.bd = fadd double %i.bc, %i.bc                ; 2 uses
  %i.be = fadd double %i.bd, %i.bd                ; 2 uses
  %i.bf = fadd double %i.be, %i.be                ; 2 uses
  %i.bg = fadd double %i.bf, %i.bf                ; 2 uses
  %i.bh = fadd double %i.bg, %i.bg                ; 2 uses
  %i.bi = fadd double %i.bh, %i.bh                ; 2 uses
  %i.bj = fadd double %i.bi, %i.bi                ; 5 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us.us.unr-lcssa, label %_PyMutex_Lock.exit.us.us.new, !llvm.loop !80

._crit_edge.us.us.unr-lcssa:                      ; preds = %_PyMutex_Lock.exit.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.unr-lcssa, %_PyMutex_Lock.exit.us.us
  %.epil.init = phi double [ %.promoted.us.us, %_PyMutex_Lock.exit.us.us ], [ %i.bj, %._crit_edge.us.us.unr-lcssa ]
  %.251.us.us.epil.init = phi double [ %.14253.us.us, %_PyMutex_Lock.exit.us.us ], [ %i.bj, %._crit_edge.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod228)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.bk = phi double [ %.epil.init, %.epil.preheader ], [ %i.bl, %bb.h ]
  %.251.us.us.epil = phi double [ %.251.us.us.epil.init, %.epil.preheader ], [ %i.bl, %bb.h ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bl = fadd double %.251.us.us.epil, %i.bk     ; 3 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us, label %bb.h, !llvm.loop !81

._crit_edge.us.us:                                ; preds = %bb.h, %._crit_edge.us.us.unr-lcssa
  %.lcssa = phi double [ %i.bj, %._crit_edge.us.us.unr-lcssa ], [ %i.bl, %bb.h ] ; 3 uses
  store double %.lcssa, ptr %i.aq, align 8, !tbaa !77
  %i.bm = cmpxchg ptr %i.ap, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.bn = extractvalue { i8, i1 } %i.bm, 1
  br i1 %i.bn, label %_PyMutex_Unlock.exit.us.us, label %9

.split:                                           ; preds = %bb.a
  br i1 %i.q, label %.split.split.us, label %.split.split

.split.split.us:                                  ; preds = %.split
  br i1 %i.j, label %.split.split.us.split.us, label %.split.split.us.split

.split.split.us.split.us:                         ; preds = %.split.split.us
  %i.bo = load i32, ptr %i.l, align 8, !tbaa !43
  %.not48.us79.us = icmp eq i32 %i.bo, 0
  br i1 %.not48.us79.us, label %._crit_edge.us.us110.us, label %._crit_edge.us.us110

._crit_edge.us.us110.us:                          ; preds = %.split.split.us.split.us, %._crit_edge.us.us110.us
  %.044.us74.us130.us = phi i64 [ %i.bp, %._crit_edge.us.us110.us ], [ 0, %.split.split.us.split.us ]
  %i.bp = add i64 %.044.us74.us130.us, %i.r       ; 3 uses
  %.not47.us78.us.us = icmp slt i64 %i.bp, %i.i
  br i1 %.not47.us78.us.us, label %._crit_edge.us.us110.us, label %.split70.us

._crit_edge.us.us110:                             ; preds = %.split.split.us.split.us, %._crit_edge.us.us110
  %.044.us74.us130 = phi i64 [ %i.bq, %._crit_edge.us.us110 ], [ 0, %.split.split.us.split.us ]
  %i.bq = add i64 %.044.us74.us130, %i.r          ; 3 uses
  %.not47.us78.us = icmp slt i64 %i.bq, %i.i
  br i1 %.not47.us78.us, label %._crit_edge.us.us110, label %.split70.us

.split.split.us.split:                            ; preds = %.split.split.us
  %i.br = load atomic i32, ptr %i.a monotonic, align 8
  %.not.us77113 = icmp eq i32 %i.br, 0
  br i1 %.not.us77113, label %.lr.ph118, label %.split70.us

.lr.ph118:                                        ; preds = %.split.split.us.split
  %i.bs = load i32, ptr %i.l, align 8, !tbaa !43
  %.not48.us79 = icmp eq i32 %i.bs, 0
  br i1 %.not48.us79, label %._crit_edge.us.us125, label %._crit_edge.us

._crit_edge.us.us125:                             ; preds = %.lr.ph118, %._crit_edge.us.us125
  %.044.us74115.us = phi i64 [ %i.bt, %._crit_edge.us.us125 ], [ 0, %.lr.ph118 ]
  %i.bt = add i64 %.044.us74115.us, %i.r          ; 2 uses
  %i.bu = load atomic i32, ptr %i.a monotonic, align 8
  %.not.us77.us = icmp eq i32 %i.bu, 0
  br i1 %.not.us77.us, label %._crit_edge.us.us125, label %.split70.us

._crit_edge.us:                                   ; preds = %.lr.ph118, %._crit_edge.us
  %.044.us74115 = phi i64 [ %i.bv, %._crit_edge.us ], [ 0, %.lr.ph118 ]
  %i.bv = add i64 %.044.us74115, %i.r             ; 2 uses
  %i.bw = load atomic i32, ptr %i.a monotonic, align 8
  %.not.us77 = icmp eq i32 %i.bw, 0
  br i1 %.not.us77, label %._crit_edge.us, label %.split70.us

.split.split:                                     ; preds = %.split
  br i1 %i.j, label %.split.split.split.us, label %.split.split.split

.split.split.split.us:                            ; preds = %.split.split
  %i.bx = load i32, ptr %i.l, align 8, !tbaa !43
  %.not48.us94 = icmp eq i32 %i.bx, 0
  br i1 %.not48.us94, label %.preheader.us95.us, label %.preheader.us95

.preheader.us95.us:                               ; preds = %.split.split.split.us, %.preheader.us95.us
  %.044.us92108.us = phi i64 [ %i.by, %.preheader.us95.us ], [ 0, %.split.split.split.us ]
  %i.by = add i64 %.044.us92108.us, %i.r          ; 3 uses
  %.not47.us93.us = icmp slt i64 %i.by, %i.i
  br i1 %.not47.us93.us, label %.preheader.us95.us, label %.split70.us

.preheader.us95:                                  ; preds = %.split.split.split.us, %.preheader.us95
  %.044.us92108 = phi i64 [ %i.bz, %.preheader.us95 ], [ 0, %.split.split.split.us ]
  %i.bz = add i64 %.044.us92108, %i.r             ; 3 uses
  %.not47.us93 = icmp slt i64 %i.bz, %i.i
  br i1 %.not47.us93, label %.preheader.us95, label %.split70.us

.split.split.split:                               ; preds = %.split.split
  %i.ca = load atomic i32, ptr %i.a monotonic, align 8
  %.not99 = icmp eq i32 %i.ca, 0
  br i1 %.not99, label %.lr.ph, label %.split70.us

.lr.ph:                                           ; preds = %.split.split.split
  %i.cb = load i32, ptr %i.l, align 8, !tbaa !43
  %.not48 = icmp eq i32 %i.cb, 0
  br i1 %.not48, label %.preheader.us102, label %.preheader

.preheader.us102:                                 ; preds = %.lr.ph, %.preheader.us102
  %.044101.us = phi i64 [ %i.cc, %.preheader.us102 ], [ 0, %.lr.ph ]
  %i.cc = add i64 %.044101.us, %i.r               ; 2 uses
  %i.cd = load atomic i32, ptr %i.a monotonic, align 8
  %.not.us104 = icmp eq i32 %i.cd, 0
  br i1 %.not.us104, label %.preheader.us102, label %.split70.us

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %.044101 = phi i64 [ %i.ce, %.preheader ], [ 0, %.lr.ph ]
  %i.ce = add i64 %.044101, %i.r                  ; 2 uses
  %i.cf = load atomic i32, ptr %i.a monotonic, align 8
  %.not = icmp eq i32 %i.cf, 0
  br i1 %.not, label %.preheader, label %.split70.us

.split70.us:                                      ; preds = %.preheader, %.preheader.us102, %.preheader.us95, %.preheader.us95.us, %._crit_edge.us, %._crit_edge.us.us125, %._crit_edge.us.us110, %._crit_edge.us.us110.us, %bb.b, %bb.c, %.split.split.us.split, %.split.split.split
  %.us-phi71 = phi i64 [ %i.cc, %.preheader.us102 ], [ %.044.us, %bb.b ], [ %i.bv, %._crit_edge.us ], [ %i.bq, %._crit_edge.us.us110 ], [ %i.bp, %._crit_edge.us.us110.us ], [ 0, %.split.split.us.split ], [ %i.bt, %._crit_edge.us.us125 ], [ %i.bz, %.preheader.us95 ], [ %i.by, %.preheader.us95.us ], [ 0, %.split.split.split ], [ %.044.us, %bb.c ], [ %i.ce, %.preheader ]
  %i.cg = getelementptr i8, ptr %0, i64 24
  store i64 %.us-phi71, ptr %i.cg, align 8, !tbaa !54
  %i.ch = getelementptr i8, ptr %0, i64 32
  tail call void @_PyEvent_Notify(ptr noundef %i.ch) #6
  ret void
}

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #1

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #1

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @init_maybe_fail(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !6
  %i.b = add i32 %i.a, 1                          ; 3 uses
  store i32 %i.b, ptr %0, align 4, !tbaa !6
  %i.c = icmp slt i32 %i.b, 5
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.b, 5
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.11, i32 noundef 409, ptr noundef nonnull @__PRETTY_FUNCTION__.init_maybe_fail) #7
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

declare i32 @_PyOnceFlag_CallOnceSlow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_PyRWMutex_Lock(ptr noundef) local_unnamed_addr #1

declare void @_PyRWMutex_Unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @rdlock_thread(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 4 uses
  tail call void @_PyRWMutex_RLock(ptr noundef %i.a) #6
  %i.b = getelementptr i8, ptr %0, i64 16
  tail call void @PyEvent_Wait(ptr noundef %i.b) #6
  tail call void @_PyRWMutex_RUnlock(ptr noundef %i.a) #6
  tail call void @_PyRWMutex_RLock(ptr noundef %i.a) #6
  %i.c = getelementptr i8, ptr %0, i64 18
  tail call void @PyEvent_Wait(ptr noundef %i.c) #6
  tail call void @_PyRWMutex_RUnlock(ptr noundef %i.a) #6
  %i.d = atomicrmw add ptr %0, i64 -1 seq_cst, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 19
  tail call void @_PyEvent_Notify(ptr noundef %i.f) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @wrlock_thread(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  tail call void @_PyRWMutex_Lock(ptr noundef %i.a) #6
  %i.b = getelementptr i8, ptr %0, i64 17
  tail call void @PyEvent_Wait(ptr noundef %i.b) #6
  tail call void @_PyRWMutex_Unlock(ptr noundef %i.a) #6
  %i.c = atomicrmw add ptr %0, i64 -1 seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 19
  tail call void @_PyEvent_Notify(ptr noundef %i.e) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_PyRWMutex_RLock(ptr noundef) local_unnamed_addr #1

declare void @_PyRWMutex_RUnlock(ptr noundef) local_unnamed_addr #1

declare i32 @_PyRecursiveMutex_IsLockedByCurrentThread(ptr noundef) local_unnamed_addr #1

declare void @_PyRecursiveMutex_Lock(ptr noundef) local_unnamed_addr #1

declare i64 @PyThread_get_thread_ident_ex() local_unnamed_addr #1

declare void @_PyRecursiveMutex_Unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !8, i64 0}
!11 = !{!"PyMutex", !8, i64 0}
!12 = !{!13, !8, i64 0}
!13 = !{!"test_lock2_data", !11, i64 0, !14, i64 1, !7, i64 4}
!14 = !{!"", !8, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !19, i64 0}
!18 = !{!"thread_data_counter", !19, i64 0, !14, i64 8}
!19 = !{!"p1 _ZTS17test_data_counter", !20, i64 0}
!20 = !{!"any pointer", !8, i64 0}
!21 = !{!22, !23, i64 8}
!22 = !{!"test_data_counter", !11, i64 0, !23, i64 8}
!23 = !{!"long", !8, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTS7_object", !20, i64 0}
!26 = !{!8, !8, i64 0}
!27 = !{!28, !23, i64 8}
!28 = !{!"test_rwlock_data", !23, i64 0, !29, i64 8, !14, i64 16, !14, i64 17, !14, i64 18, !14, i64 19}
!29 = !{!"", !23, i64 0}
!30 = distinct !{!30, !16}
!31 = !{!32, !33, i64 8}
!32 = !{!"", !11, i64 0, !33, i64 8, !23, i64 16}
!33 = !{!"long long", !8, i64 0}
!34 = !{!32, !23, i64 16}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !16}
!37 = !{!38, !7, i64 0}
!38 = !{!"bench_config", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !23, i64 24, !23, i64 32, !39, i64 40}
!39 = !{!"p1 _ZTS10bench_lock", !20, i64 0}
!40 = !{!38, !7, i64 4}
!41 = !{!38, !7, i64 8}
!42 = !{!38, !7, i64 12}
!43 = !{!38, !7, i64 16}
!44 = !{!38, !23, i64 24}
!45 = !{!38, !23, i64 32}
!46 = !{!38, !39, i64 40}
!47 = !{!48, !49, i64 0}
!48 = !{!"bench_thread_data", !49, i64 0, !39, i64 8, !23, i64 16, !23, i64 24, !14, i64 32}
!49 = !{!"p1 _ZTS12bench_config", !20, i64 0}
!50 = !{!48, !39, i64 8}
!51 = !{!48, !23, i64 16}
!52 = distinct !{!52, !16}
!53 = distinct !{!53, !16}
!54 = !{!48, !23, i64 24}
!55 = !{!56, !57, i64 8}
!56 = !{!"_object", !8, i64 0, !57, i64 8}
!57 = !{!"p1 _ZTS11_typeobject", !20, i64 0}
!58 = !{!59, !23, i64 168}
!59 = !{!"_typeobject", !60, i64 0, !61, i64 24, !23, i64 32, !23, i64 40, !20, i64 48, !23, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !20, i64 88, !20, i64 96, !20, i64 104, !20, i64 112, !20, i64 120, !20, i64 128, !20, i64 136, !20, i64 144, !20, i64 152, !20, i64 160, !23, i64 168, !61, i64 176, !20, i64 184, !20, i64 192, !20, i64 200, !23, i64 208, !20, i64 216, !20, i64 224, !62, i64 232, !63, i64 240, !64, i64 248, !57, i64 256, !25, i64 264, !20, i64 272, !20, i64 280, !23, i64 288, !20, i64 296, !20, i64 304, !20, i64 312, !20, i64 320, !20, i64 328, !25, i64 336, !25, i64 344, !25, i64 352, !20, i64 360, !25, i64 368, !20, i64 376, !7, i64 384, !20, i64 392, !20, i64 400, !8, i64 408, !65, i64 410}
!60 = !{!"PyVarObject", !56, i64 0, !23, i64 16}
!61 = !{!"p1 omnipotent char", !20, i64 0}
!62 = !{!"p1 _ZTS11PyMethodDef", !20, i64 0}
!63 = !{!"p1 _ZTS11PyMemberDef", !20, i64 0}
!64 = !{!"p1 _ZTS11PyGetSetDef", !20, i64 0}
!65 = !{!"short", !8, i64 0}
!66 = !{!67, !23, i64 32}
!67 = !{!"", !60, i64 0, !68, i64 24, !23, i64 32}
!68 = !{!"p2 _ZTS7_object", !69, i64 0}
!69 = !{!"any p2 pointer", !20, i64 0}
!70 = !{!67, !68, i64 24}
!71 = distinct !{!71, !16}
!72 = !{!23, !23, i64 0}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = distinct !{!75, !16}
!76 = distinct !{!76, !16}
!77 = !{!78, !79, i64 208}
!78 = !{!"bench_lock", !8, i64 0, !11, i64 200, !79, i64 208}
!79 = !{!"double", !8, i64 0}
!80 = distinct !{!80, !16}
!81 = distinct !{!81, !74}
end_hunk_0
