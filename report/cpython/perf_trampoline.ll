inline.NumInlined: 24
inline.NumDeleted: 12
begin_hunk_0_@_PyPerfTrampoline_SetCallbacks:bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2848), align 8, !tbaa !201
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @_PyPerfTrampoline_Fini()  ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = load <2 x ptr>, ptr %0, align 8, !tbaa !193
  store <2 x ptr> %i.d, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2824), align 8, !tbaa !193
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !209
  store ptr %i.f, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2840), align 8, !tbaa !208
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2848), align 8, !tbaa !201
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @_PyPerfTrampoline_Fini() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2800), align 8, !tbaa !206
  %.not = icmp eq i32 %i.a, 1
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !203
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !204  ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8568
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !205
  %i.h = icmp eq ptr %i.g, @py_trampoline_evaluator
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void @_PyInterpreterState_SetEvalFrameFunc(ptr noundef nonnull %i.e, ptr noundef null) #10
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2800), align 8, !tbaa !206
  %i.i = icmp eq i32 %.pre, 1
  br i1 %i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.b, %bb.c
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2840), align 8, !tbaa !208
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2848), align 8, !tbaa !201
  %i.l = tail call i32 %i.j(ptr noundef %i.k) #10 ; 0 uses
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2804), align 4, !tbaa !188
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2800), align 8, !tbaa !206
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2896), align 8, !tbaa !202
  %i.n = add i64 %i.m, -1                         ; 2 uses
  store i64 %i.n, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2896), align 8, !tbaa !202
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2816), align 8, !tbaa !195 ; 2 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2816), align 8, !tbaa !195
  %.not6.i.i = icmp eq ptr %i.p, null
  br i1 %.not6.i.i, label %free_code_arenas.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.p, %bb.e ] ; 4 uses
  %i.q = load ptr, ptr %.07.i.i, align 8, !tbaa !210
  %i.r = getelementptr i8, ptr %.07.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !211
  %i.t = tail call i32 @munmap(ptr noundef %i.q, i64 noundef %i.s) #10 ; 0 uses
  %i.u = getelementptr i8, ptr %.07.i.i, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !212  ; 2 uses
  tail call void @PyMem_RawFree(ptr noundef nonnull %.07.i.i) #10
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %free_code_arenas.exit.i, label %.lr.ph.i.i, !llvm.loop !213

free_code_arenas.exit.i:                          ; preds = %.lr.ph.i.i, %bb.e
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2904), align 8, !tbaa !215 ; 2 uses
  %i.x = icmp sgt i32 %i.w, -1
  br i1 %i.x, label %bb.f, label %perf_trampoline_reset_state.exit

bb.f:                                             ; preds = %free_code_arenas.exit.i
  %i.y = tail call i32 @PyCode_ClearWatcher(i32 noundef %i.w) #10 ; 0 uses
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2904), align 8, !tbaa !215
  br label %perf_trampoline_reset_state.exit

perf_trampoline_reset_state.exit:                 ; preds = %free_code_arenas.exit.i, %bb.f
  store i64 -1, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2808), align 8, !tbaa !194
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %perf_trampoline_reset_state.exit, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyPerfTrampoline_Init(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2904), align 8, !tbaa !215
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2904), align 8, !tbaa !215
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not = icmp eq i32 %0, 0
  %i.e = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !204  ; 3 uses
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2888), align 8, !tbaa !207
  tail call void @_PyInterpreterState_SetEvalFrameFunc(ptr noundef %i.f, ptr noundef %i.g) #10
  br label %free_code_arenas.exit.sink.split

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.f, i64 8568
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !205
  %.not7 = icmp eq ptr %i.i, @py_trampoline_evaluator
  br i1 %.not7, label %free_code_arenas.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @_PyInterpreterState_GetEvalFrameFunc(ptr noundef nonnull %i.f) #10
  store ptr %i.j, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2888), align 8, !tbaa !207
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !204
  tail call void @_PyInterpreterState_SetEvalFrameFunc(ptr noundef %i.k, ptr noundef nonnull @py_trampoline_evaluator) #10
  %i.l = tail call i64 @PyUnstable_Eval_RequestCodeExtraIndex(ptr noundef null) #10 ; 2 uses
  store i64 %i.l, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2808), align 8, !tbaa !194
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %free_code_arenas.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2848), align 8, !tbaa !201
  %i.o = icmp eq ptr %i.n, null
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2824), align 8 ; 2 uses
  %i.q = icmp ne ptr %i.p, null
  %or.cond = select i1 %i.o, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr %i.p() #10
  store ptr %i.r, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2848), align 8, !tbaa !201
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = tail call fastcc i32 @new_code_arena()
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %free_code_arenas.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = tail call i32 @PyCode_AddWatcher(ptr noundef nonnull @perf_trampoline_code_watcher) #10 ; 2 uses
  store i32 %i.u, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2904), align 8, !tbaa !215
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str) #10
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2816), align 8, !tbaa !195 ; 2 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2816), align 8, !tbaa !195
  %.not6.i = icmp eq ptr %i.w, null
  br i1 %.not6.i, label %free_code_arenas.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.07.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.w, %bb.k ] ; 4 uses
  %i.x = load ptr, ptr %.07.i, align 8, !tbaa !210
  %i.y = getelementptr i8, ptr %.07.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !211
  %i.aa = tail call i32 @munmap(ptr noundef %i.x, i64 noundef %i.z) #10 ; 0 uses
  %i.ab = getelementptr i8, ptr %.07.i, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !212 ; 2 uses
  tail call void @PyMem_RawFree(ptr noundef nonnull %.07.i) #10
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %free_code_arenas.exit, label %.lr.ph.i, !llvm.loop !213

bb.l:                                             ; preds = %bb.j
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2896), align 8, !tbaa !202
  br label %free_code_arenas.exit.sink.split

free_code_arenas.exit.sink.split:                 ; preds = %bb.l, %bb.d
  %.sink = phi i32 [ 0, %bb.d ], [ 1, %bb.l ]
  store i32 %.sink, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2800), align 8, !tbaa !206
  br label %free_code_arenas.exit

free_code_arenas.exit:                            ; preds = %.lr.ph.i, %free_code_arenas.exit.sink.split, %bb.k, %bb.e, %bb.i, %bb.f
  %.0 = phi i32 [ -1, %bb.i ], [ -1, %bb.f ], [ -1, %bb.k ], [ 0, %bb.e ], [ 0, %free_code_arenas.exit.sink.split ], [ -1, %.lr.ph.i ]
  ret i32 %.0
}

declare void @_PyInterpreterState_SetEvalFrameFunc(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @_PyInterpreterState_GetEvalFrameFunc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @new_code_arena() unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @mmap64(ptr noundef null, i64 noundef 65536, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #10 ; 11 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_OSError, align 8, !tbaa !216
  %i.d = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.c) #10 ; 0 uses
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.6) #10
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2800), align 8, !tbaa !206
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @_Py_GetConfig() #10
  %i.f = getelementptr i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !217
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_PyAnnotateMemoryMap.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = tail call i32 (i32, ...) @prctl(i32 noundef 1398164801, i32 noundef 0, i64 noundef %i.h, i64 noundef 65536, ptr noundef nonnull @.str.7) #10 ; 0 uses
  br label %_PyAnnotateMemoryMap.exit

_PyAnnotateMemoryMap.exit:                        ; preds = %bb.c, %bb.d
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2856), align 8, !tbaa !11
  %i.k = add i64 %i.j, sub (i64 ptrtoint (ptr @_Py_trampoline_func_end to i64), i64 ptrtoint (ptr @_Py_trampoline_func_start to i64)) ; 3 uses
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2864), align 8, !tbaa !187 ; 3 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %round_up.exit, label %bb.e

bb.e:                                             ; preds = %_PyAnnotateMemoryMap.exit
  %i.n = srem i64 %i.k, %i.l                      ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  %i.p = sub i64 %i.l, %i.n
  %i.q = select i1 %i.o, i64 0, i64 %i.p
  %.0.i = add i64 %i.q, %i.k
  br label %round_up.exit

round_up.exit:                                    ; preds = %_PyAnnotateMemoryMap.exit, %bb.e
  %.1.i41 = phi i64 [ %.0.i, %bb.e ], [ %i.k, %_PyAnnotateMemoryMap.exit ] ; 7 uses
  %i.r = udiv i64 65536, %.1.i41                  ; 3 uses
  %.not = icmp ugt i64 %.1.i41, 65536
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %round_up.exit
  %i.s = add nsw i64 %i.r, -1
  %xtraiter = and i64 %i.r, 3                     ; 3 uses
  %i.t = icmp ult i64 %i.s, 3
  br i1 %i.t, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.r, 131068
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03842.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod45 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod45)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.03842.epil = phi i64 [ %i.w, %.lr.ph.epil ], [ %.03842.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.u = mul nuw nsw i64 %.03842.epil, %.1.i41
  %i.v = getelementptr i8, ptr %i.a, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 8 @_Py_trampoline_func_start, i64 sub (i64 ptrtoint (ptr @_Py_trampoline_func_end to i64), i64 ptrtoint (ptr @_Py_trampoline_func_start to i64)), i1 false)
  %i.w = add nuw nsw i64 %.03842.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !218

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %round_up.exit
  %i.x = tail call i32 @mprotect(ptr noundef %i.a, i64 noundef 65536, i32 noundef 5) #10
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.f, label %bb.g

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03842 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ak, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.z = mul nuw nsw i64 %.03842, %.1.i41
  %i.aa = getelementptr i8, ptr %i.a, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr nonnull align 8 @_Py_trampoline_func_start, i64 sub (i64 ptrtoint (ptr @_Py_trampoline_func_end to i64), i64 ptrtoint (ptr @_Py_trampoline_func_start to i64)), i1 false)
  %i.ab = or disjoint i64 %.03842, 1
  %i.ac = mul nuw nsw i64 %i.ab, %.1.i41
  %i.ad = getelementptr i8, ptr %i.a, i64 %i.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr nonnull align 8 @_Py_trampoline_func_start, i64 sub (i64 ptrtoint (ptr @_Py_trampoline_func_end to i64), i64 ptrtoint (ptr @_Py_trampoline_func_start to i64)), i1 false)
  %i.ae = or disjoint i64 %.03842, 2
  %i.af = mul nuw nsw i64 %i.ae, %.1.i41
  %i.ag = getelementptr i8, ptr %i.a, i64 %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 8 @_Py_trampoline_func_start, i64 sub (i64 ptrtoint (ptr @_Py_trampoline_func_end to i64), i64 ptrtoint (ptr @_Py_trampoline_func_start to i64)), i1 false)
  %i.ah = or disjoint i64 %.03842, 3
  %i.ai = mul nuw nsw i64 %i.ah, %.1.i41
  %i.aj = getelementptr i8, ptr %i.a, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 8 @_Py_trampoline_func_start, i64 sub (i64 ptrtoint (ptr @_Py_trampoline_func_end to i64), i64 ptrtoint (ptr @_Py_trampoline_func_start to i64)), i1 false)
  %i.ak = add nuw nsw i64 %.03842, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !220

bb.f:                                             ; preds = %._crit_edge
  %i.al = load ptr, ptr @PyExc_OSError, align 8, !tbaa !216
  %i.am = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.al) #10 ; 0 uses
  br label %.sink.split

bb.g:                                             ; preds = %._crit_edge
  %i.an = tail call ptr @PyMem_RawCalloc(i64 noundef 1, i64 noundef 48) #10 ; 8 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = tail call ptr @PyErr_NoMemory() #10     ; 0 uses
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  store ptr %i.a, ptr %i.an, align 8, !tbaa !210
  %i.aq = getelementptr i8, ptr %i.an, i64 8
  store ptr %i.a, ptr %i.aq, align 8, !tbaa !199
  %i.ar = getelementptr i8, ptr %i.an, i64 16
  store i64 65536, ptr %i.ar, align 8, !tbaa !211
  %i.as = getelementptr i8, ptr %i.an, i64 24
  store i64 65536, ptr %i.as, align 8, !tbaa !198
  %i.at = getelementptr i8, ptr %i.an, i64 32
  store i64 sub (i64 ptrtoint (ptr @_Py_trampoline_func_end to i64), i64 ptrtoint (ptr @_Py_trampoline_func_start to i64)), ptr %i.at, align 8, !tbaa !196
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2816), align 8, !tbaa !195
  %i.av = getelementptr i8, ptr %i.an, i64 40
  store ptr %i.au, ptr %i.av, align 8, !tbaa !212
  store ptr %i.an, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2816), align 8, !tbaa !195
  br label %bb.j

.sink.split:                                      ; preds = %bb.h, %bb.f
  %.str.8.sink = phi ptr [ @.str.8, %bb.f ], [ @.str.9, %bb.h ]
  %0 = tail call i32 @munmap(ptr noundef %i.a, i64 noundef 65536) #10 ; 0 uses
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull %.str.8.sink) #10
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i, %bb.b
  %.2 = phi i32 [ -1, %bb.b ], [ 0, %bb.i ], [ -1, %.sink.split ]
  ret i32 %.2
}

declare i32 @PyCode_AddWatcher(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @perf_trampoline_code_watcher(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %.not = icmp ne i32 %0, 1
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2808), align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  %or.cond5 = select i1 %.not, i1 true, i1 %i.c
  br i1 %or.cond5, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !193
  %i.d = call i32 @PyUnstable_Code_GetExtra(ptr noundef %1, i64 noundef %i.b, ptr noundef nonnull %i.a) #10
  %i.e = icmp ne i32 %i.d, 0
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = icmp eq ptr %i.f, null
  %or.cond = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2896), align 8, !tbaa !202
  %i.i = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.i, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2896), align 8, !tbaa !202
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2816), align 8, !tbaa !195 ; 2 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2816), align 8, !tbaa !195
  %.not6.i.i = icmp eq ptr %i.k, null
  br i1 %.not6.i.i, label %free_code_arenas.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.q, %.lr.ph.i.i ], [ %i.k, %bb.d ] ; 4 uses
  %i.l = load ptr, ptr %.07.i.i, align 8, !tbaa !210
  %i.m = getelementptr i8, ptr %.07.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !211
  %i.o = call i32 @munmap(ptr noundef %i.l, i64 noundef %i.n) #10 ; 0 uses
  %i.p = getelementptr i8, ptr %.07.i.i, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !212  ; 2 uses
  call void @PyMem_RawFree(ptr noundef nonnull %.07.i.i) #10
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %free_code_arenas.exit.i, label %.lr.ph.i.i, !llvm.loop !213

free_code_arenas.exit.i:                          ; preds = %.lr.ph.i.i, %bb.d
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2904), align 8, !tbaa !215 ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.e, label %perf_trampoline_reset_state.exit

bb.e:                                             ; preds = %free_code_arenas.exit.i
  %i.t = call i32 @PyCode_ClearWatcher(i32 noundef %i.r) #10 ; 0 uses
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2904), align 8, !tbaa !215
  br label %perf_trampoline_reset_state.exit

perf_trampoline_reset_state.exit:                 ; preds = %free_code_arenas.exit.i, %bb.e
  store i64 -1, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2808), align 8, !tbaa !194
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %perf_trampoline_reset_state.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret i32 0
}

declare void @PyErr_FormatUnraisable(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @PyUnstable_PerfTrampoline_SetPersistAfterFork(i32 noundef returned %0) local_unnamed_addr #5 {
bb.a:
  %i.a = sext i32 %0 to i64
  store i64 %i.a, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2880), align 8, !tbaa !221
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define hidden void @_PyPerfTrampoline_AfterFork_Child(ptr dead_on_unwind noalias writable sret(%struct.PyStatus) align 8 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2880), align 8, !tbaa !221
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2804), align 4, !tbaa !188
  %.not4 = icmp eq i32 %i.c, 1
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @PyStatus_Error(ptr dead_on_unwind writable sret(%struct.PyStatus) align 8 %0, ptr noundef nonnull @.str.1) #10
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @_PyPerfTrampoline_Fini()  ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.e = tail call i32 @getppid() #10
  %i.f = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.2, i32 noundef %i.e) #10 ; 0 uses
  %i.g = call i32 @PyUnstable_CopyPerfMapFile(ptr noundef nonnull %i.a) #10
  %.not5.not = icmp eq i32 %i.g, 0
  br i1 %.not5.not, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @PyStatus_Error(ptr dead_on_unwind writable sret(%struct.PyStatus) align 8 %0, ptr noundef nonnull @.str.3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !203
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !204
  %i.l = getelementptr i8, ptr %i.k, i64 8568
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !205
  %.not6 = icmp eq ptr %i.m, @py_trampoline_evaluator
  %i.n = tail call i32 @_PyPerfTrampoline_Fini()  ; 0 uses
  br i1 %.not6, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2816), align 8, !tbaa !195 ; 2 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2816), align 8, !tbaa !195
  %.not6.i.i = icmp eq ptr %i.o, null
  br i1 %.not6.i.i, label %free_code_arenas.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.o, %bb.g ] ; 4 uses
  %i.p = load ptr, ptr %.07.i.i, align 8, !tbaa !210
  %i.q = getelementptr i8, ptr %.07.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !211
  %i.s = tail call i32 @munmap(ptr noundef %i.p, i64 noundef %i.r) #10 ; 0 uses
  %i.t = getelementptr i8, ptr %.07.i.i, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !212  ; 2 uses
  tail call void @PyMem_RawFree(ptr noundef nonnull %.07.i.i) #10
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %free_code_arenas.exit.i, label %.lr.ph.i.i, !llvm.loop !213

free_code_arenas.exit.i:                          ; preds = %.lr.ph.i.i, %bb.g
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2904), align 8, !tbaa !215 ; 2 uses
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %bb.h, label %perf_trampoline_reset_state.exit

bb.h:                                             ; preds = %free_code_arenas.exit.i
  %i.x = tail call i32 @PyCode_ClearWatcher(i32 noundef %i.v) #10 ; 0 uses
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2904), align 8, !tbaa !215
  br label %perf_trampoline_reset_state.exit

perf_trampoline_reset_state.exit:                 ; preds = %free_code_arenas.exit.i, %bb.h
  store i64 -1, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2808), align 8, !tbaa !194
  %i.y = tail call i32 @_PyPerfTrampoline_Init(i32 noundef 1) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.f, %perf_trampoline_reset_state.exit
  call void @PyStatus_Ok(ptr dead_on_unwind writable sret(%struct.PyStatus) align 8 %0) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i, %bb.c
  ret void
}

declare void @PyStatus_Error(ptr dead_on_unwind writable sret(%struct.PyStatus) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getppid() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

declare i32 @PyUnstable_CopyPerfMapFile(ptr noundef) local_unnamed_addr #4

declare void @PyStatus_Ok(ptr dead_on_unwind writable sret(%struct.PyStatus) align 8) local_unnamed_addr #4

declare i32 @PyUnstable_PerfMapState_Init() local_unnamed_addr #4

declare ptr @PyUnicode_AsUTF8(ptr noundef) local_unnamed_addr #4

declare ptr @PyMem_RawMalloc(i64 noundef) local_unnamed_addr #4

declare i32 @PyUnstable_WritePerfMapEntry(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @PyMem_RawFree(ptr noundef) local_unnamed_addr #4

declare void @PyUnstable_PerfMapState_Fini() local_unnamed_addr #4

declare i32 @PyUnstable_Code_GetExtra(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @PyUnstable_Code_SetExtra(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #8

end_hunk_0
