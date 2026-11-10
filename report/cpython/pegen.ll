Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/pegen?download=true
inline.NumInlined: 41
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_PyPegen_number_token:bb.a
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !83
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !50
  %i.bz = tail call ptr @_PyAST_Constant(ptr noundef nonnull %.016.i, ptr noundef null, i32 noundef %i.br, i32 noundef %i.bt, i32 noundef %i.bv, i32 noundef %i.bx, ptr noundef %i.by) #14
  br label %Py_DECREF.exit36

Py_DECREF.exit36:                                 ; preds = %bb.d, %bb.c, %bb.u, %bb.t, %bb.s, %bb.f, %bb.i, %bb.q, %bb.r, %bb.z, %Py_DECREF.exit
  %.2 = phi ptr [ null, %bb.u ], [ null, %bb.f ], [ %i.ab, %bb.i ], [ %i.bz, %bb.z ], [ null, %Py_DECREF.exit ], [ null, %bb.q ], [ null, %bb.r ], [ null, %bb.s ], [ null, %bb.t ], [ null, %bb.c ], [ null, %bb.d ]
  ret ptr %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @PyErr_GetRaisedException() local_unnamed_addr #3

declare ptr @_PyAST_Constant(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_Parser_New(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree readnone captures(none) %5, ptr noundef %6) local_unnamed_addr #1 !guid !168 {
bb.a:
  %i.a = tail call ptr @PyMem_Malloc(i64 noundef 176) #14 ; 25 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_NoMemory() #14
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = lshr i32 %2, 6
  %.lobit = and i32 %i.d, 1
  %i.e = getelementptr i8, ptr %0, i64 2840
  store i32 %.lobit, ptr %i.e, align 8, !tbaa !169
  store ptr %0, ptr %i.a, align 8, !tbaa !63
  %i.f = getelementptr i8, ptr %i.a, i64 40
  store ptr null, ptr %i.f, align 8, !tbaa !78
  %i.g = getelementptr i8, ptr %i.a, i64 56
  store i32 -1, ptr %i.g, align 8, !tbaa !77
  %i.h = getelementptr i8, ptr %i.a, i64 48
  store ptr null, ptr %i.h, align 8, !tbaa !90
  %i.i = tail call ptr @PyMem_Malloc(i64 noundef 8) #14 ; 2 uses
  %i.j = getelementptr i8, ptr %i.a, i64 8        ; 5 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !57
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @PyMem_Free(ptr noundef nonnull %i.a) #14
  %i.k = tail call ptr @PyErr_NoMemory() #14
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.l = tail call ptr @PyMem_Calloc(i64 noundef 1, i64 noundef 56) #14
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !57
  store ptr %i.l, ptr %i.m, align 8, !tbaa !58
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !57   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58
  %.not46 = icmp eq ptr %i.o, null
  br i1 %.not46, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @PyMem_Free(ptr noundef nonnull %i.n) #14
  tail call void @PyMem_Free(ptr noundef nonnull %i.a) #14
  %i.p = tail call ptr @PyErr_NoMemory() #14
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.a, i64 112
  %i.r = tail call ptr @PyMem_Malloc(i64 noundef 160) #14 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !69
  %i.s = getelementptr i8, ptr %i.a, i64 120
  store i64 10, ptr %i.s, align 8, !tbaa !68
  %i.t = getelementptr i8, ptr %i.a, i64 128
  store i64 0, ptr %i.t, align 8, !tbaa !67
  %.not48 = icmp eq ptr %i.r, null
  br i1 %.not48, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !58
  tail call void @PyMem_Free(ptr noundef %i.v) #14
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !57
  tail call void @PyMem_Free(ptr noundef %i.w) #14
  tail call void @PyMem_Free(ptr noundef nonnull %i.a) #14
  %i.x = tail call ptr @PyErr_NoMemory() #14
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr i8, ptr %i.a, i64 16
  store i32 0, ptr %i.y, align 8, !tbaa !55
  %i.z = getelementptr i8, ptr %i.a, i64 20
  store i32 0, ptr %i.z, align 4, !tbaa !75
  %i.aa = getelementptr i8, ptr %i.a, i64 24
  store i32 1, ptr %i.aa, align 8, !tbaa !76
  %i.ab = getelementptr i8, ptr %i.a, i64 64
  store ptr %4, ptr %i.ab, align 8, !tbaa !41
  %i.ac = getelementptr i8, ptr %i.a, i64 32
  store ptr %6, ptr %i.ac, align 8, !tbaa !50
  %i.ad = getelementptr i8, ptr %i.a, i64 60
  store i32 %1, ptr %i.ad, align 4, !tbaa !72
  %i.ae = getelementptr i8, ptr %i.a, i64 72
  store i32 0, ptr %i.ae, align 8, !tbaa !73
  %i.af = getelementptr i8, ptr %i.a, i64 80
  %i.ag = getelementptr i8, ptr %i.a, i64 100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.af, i8 0, i64 20, i1 false)
  store i32 %2, ptr %i.ag, align 4, !tbaa !74
  %i.ah = getelementptr i8, ptr %i.a, i64 104
  store i32 %3, ptr %i.ah, align 8, !tbaa !92
  %i.ai = getelementptr i8, ptr %i.a, i64 136
  %i.aj = getelementptr i8, ptr %i.a, i64 156
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.i ], [ %i.x, %bb.h ], [ %i.p, %bb.f ], [ %i.k, %bb.d ]
  ret ptr %.0
}

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #3

declare ptr @PyMem_Calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @_PyPegen_Parser_Free(ptr noundef %0) local_unnamed_addr #1 !guid !172 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %Py_XDECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i.i, label %bb.c, label %Py_XDECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !42
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_XDECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #14
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.f = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !76
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Py_XDECREF.exit
  %i.i = getelementptr i8, ptr %0, i64 8
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %Py_XDECREF.exit
  %i.j = getelementptr i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57
  tail call void @PyMem_Free(ptr noundef %i.k) #14
  %i.l = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !67
  %.not.i8 = icmp eq i64 %i.n, 0
  br i1 %.not.i8, label %growable_comment_array_deallocate.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %i.o = phi i64 [ %i.u, %.lr.ph.i ], [ 0, %._crit_edge ]
  %.06.i = phi i32 [ %i.t, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !69
  %i.q = getelementptr [16 x i8], ptr %i.p, i64 %i.o
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !71
  tail call void @PyMem_Free(ptr noundef %i.s) #14
  %i.t = add i32 %.06.i, 1                        ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = load i64, ptr %i.m, align 8, !tbaa !67
  %i.w = icmp ugt i64 %i.v, %i.u
  br i1 %i.w, label %.lr.ph.i, label %growable_comment_array_deallocate.exit, !llvm.loop !170

growable_comment_array_deallocate.exit:           ; preds = %.lr.ph.i, %._crit_edge
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !69
  tail call void @PyMem_Free(ptr noundef %i.x) #14
  tail call void @PyMem_Free(ptr noundef nonnull %0) #14
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !57
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !58
  tail call void @PyMem_Free(ptr noundef %i.aa) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load i32, ptr %i.f, align 8, !tbaa !76
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %bb.e, label %._crit_edge, !llvm.loop !171
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_run_parser(ptr noundef %0) local_unnamed_addr #1 !guid !177 {
bb.a:
  %i.a = tail call ptr @_PyPegen_parse(ptr noundef %0) #14 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 100
  %i.d = load i32, ptr %i.c, align 4, !tbaa !74
  %i.e = and i32 %i.d, 256
  %.not19 = icmp eq i32 %i.e, 0
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %0, align 8, !tbaa !63
  %i.f = getelementptr i8, ptr %.val, i64 64
  %.val.val = load i32, ptr %i.f, align 8, !tbaa !84
  switch i32 %.val.val, label %bb.d [
    i32 23, label %_is_end_of_source.exit.thread
    i32 11, label %_is_end_of_source.exit.thread
    i32 24, label %_is_end_of_source.exit.thread
  ]

_is_end_of_source.exit.thread:                    ; preds = %bb.c, %bb.c, %bb.c
  tail call void @PyErr_Clear() #14
  %i.g = tail call ptr (ptr, ptr, i32, ptr, ...) @_PyPegen_raise_error(ptr noundef nonnull %0, ptr noundef nonnull @_PyExc_IncompleteInputError, i32 noundef 0, ptr noundef nonnull @.str.12) #14
  br label %_PyPegen_set_syntax_error_metadata.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = tail call ptr @PyErr_Occurred() #14
  %.not21 = icmp eq ptr %i.h, null
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !43
  %i.j = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.i) #14
  %.not22 = icmp eq i32 %i.j, 0
  br i1 %.not22, label %_PyPegen_set_syntax_error_metadata.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57   ; 10 uses
  %i.m = getelementptr i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !75   ; 4 uses
  %i.o = add i32 %i.n, -1
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [8 x i8], ptr %i.l, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.s = getelementptr i8, ptr %0, i64 156        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.t = icmp sgt i32 %i.n, 0
  br i1 %i.t, label %.lr.ph.i, label %reset_parser_state_for_error_pass.exit

.lr.ph.i:                                         ; preds = %bb.f
  %wide.trip.count.i = zext nneg i32 %i.n to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.u = icmp ult i32 %i.n, 8
  br i1 %i.u, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.g ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.g ]
  %i.v = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !58
  %i.x = getelementptr i8, ptr %i.w, i64 40
  store ptr null, ptr %i.x, align 8, !tbaa !60
  %i.y = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !58
  %i.ab = getelementptr i8, ptr %i.aa, i64 40
  store ptr null, ptr %i.ab, align 8, !tbaa !60
  %i.ac = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !58
  %i.af = getelementptr i8, ptr %i.ae, i64 40
  store ptr null, ptr %i.af, align 8, !tbaa !60
  %i.ag = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !58
  %i.aj = getelementptr i8, ptr %i.ai, i64 40
  store ptr null, ptr %i.aj, align 8, !tbaa !60
  %i.ak = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.al = getelementptr i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !58
  %i.an = getelementptr i8, ptr %i.am, i64 40
  store ptr null, ptr %i.an, align 8, !tbaa !60
  %i.ao = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !58
  %i.ar = getelementptr i8, ptr %i.aq, i64 40
  store ptr null, ptr %i.ar, align 8, !tbaa !60
  %i.as = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.at = getelementptr i8, ptr %i.as, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !58
  %i.av = getelementptr i8, ptr %i.au, i64 40
  store ptr null, ptr %i.av, align 8, !tbaa !60
  %i.aw = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !58
  %i.az = getelementptr i8, ptr %i.ay, i64 40
  store ptr null, ptr %i.az, align 8, !tbaa !60
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %reset_parser_state_for_error_pass.exit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !173

reset_parser_state_for_error_pass.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %reset_parser_state_for_error_pass.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %reset_parser_state_for_error_pass.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %reset_parser_state_for_error_pass.exit.loopexit.unr-lcssa ]
  %lcmp.mod50 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.ba = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.i.epil
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !58
  %i.bc = getelementptr i8, ptr %i.bb, i64 40
  store ptr null, ptr %i.bc, align 8, !tbaa !60
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %reset_parser_state_for_error_pass.exit, label %bb.h, !llvm.loop !174

reset_parser_state_for_error_pass.exit:           ; preds = %reset_parser_state_for_error_pass.exit.loopexit.unr-lcssa, %bb.h, %bb.f
  %i.bd = getelementptr i8, ptr %0, i64 16
  store i32 0, ptr %i.bd, align 8, !tbaa !55
  %i.be = getelementptr i8, ptr %0, i64 148
  store i32 1, ptr %i.be, align 4, !tbaa !179
  %i.bf = load ptr, ptr %0, align 8, !tbaa !63
  %i.bg = getelementptr i8, ptr %i.bf, i64 2844
  store i32 1, ptr %i.bg, align 4, !tbaa !180
  %i.bh = tail call ptr @_PyPegen_parse(ptr noundef nonnull %0) #14 ; 0 uses
  tail call void @_Pypegen_set_syntax_error(ptr noundef nonnull %0, ptr noundef %i.r) #14
  %i.bi = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !43
  %i.bj = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.bi) #14
  %.not23 = icmp eq i32 %i.bj, 0
  br i1 %.not23, label %_PyPegen_set_syntax_error_metadata.exit, label %bb.i

bb.i:                                             ; preds = %reset_parser_state_for_error_pass.exit
  %i.bk = tail call ptr @PyErr_GetRaisedException() #14 ; 5 uses
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !43 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bk, i64 8
  %.val.i = load ptr, ptr %i.bm, align 8, !tbaa !88 ; 2 uses
  %.not.i43.i = icmp eq ptr %.val.i, %i.bl
  br i1 %.not.i43.i, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.j
  %i.bn = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i, ptr noundef %i.bl) #14
  %.not55.i = icmp eq i32 %i.bn, 0
  br i1 %.not55.i, label %bb.k, label %PyObject_TypeCheck.exit.thread.i

bb.k:                                             ; preds = %PyObject_TypeCheck.exit.i, %bb.i
  tail call void @PyErr_SetRaisedException(ptr noundef %i.bk) #14
  br label %_PyPegen_set_syntax_error_metadata.exit

PyObject_TypeCheck.exit.thread.i:                 ; preds = %PyObject_TypeCheck.exit.i, %bb.j
  %i.bo = load ptr, ptr %0, align 8, !tbaa !63    ; 4 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 2824
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !181 ; 2 uses
  %.not35.i = icmp eq ptr %i.bq, null
  br i1 %.not35.i, label %bb.l, label %.thread48.i

bb.l:                                             ; preds = %PyObject_TypeCheck.exit.thread.i
  %i.br = getelementptr i8, ptr %i.bo, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !93
  %.not37.i = icmp eq i32 %i.bs, 0
  br i1 %.not37.i, label %.thread52.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr i8, ptr %i.bo, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !94 ; 2 uses
  %.not39.i = icmp eq ptr %i.bu, null
  br i1 %.not39.i, label %.thread52.i, label %.thread48.i

.thread48.i:                                      ; preds = %bb.m, %PyObject_TypeCheck.exit.thread.i
  %.12851.i = phi ptr [ %i.bu, %bb.m ], [ %i.bq, %PyObject_TypeCheck.exit.thread.i ] ; 3 uses
  %i.bv = getelementptr i8, ptr %i.bo, i64 2760
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !182 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread48.i
  %i.by = tail call ptr @PyUnicode_FromString(ptr noundef nonnull %.12851.i) #14
  br label %bb.p

bb.o:                                             ; preds = %.thread48.i
  %i.bz = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.12851.i) #15
  %i.ca = tail call ptr @PyUnicode_Decode(ptr noundef nonnull %.12851.i, i64 noundef %i.bz, ptr noundef nonnull %i.bw, ptr noundef null) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i = phi ptr [ %i.by, %bb.n ], [ %i.ca, %bb.o ] ; 2 uses
  %.not40.i = icmp eq ptr %.0.i, null
  br i1 %.not40.i, label %.thread52.i, label %Py_INCREF.exit.i

.thread52.i:                                      ; preds = %bb.p, %bb.m, %bb.l
  tail call void @PyErr_Clear() #14
  %i.cb = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !42 ; 2 uses
  %i.cc = icmp ugt i32 %i.cb, -1073741825
  br i1 %i.cc, label %Py_INCREF.exit.i, label %bb.q

bb.q:                                             ; preds = %.thread52.i
  %i.cd = add nuw i32 %i.cb, 1
  store i32 %i.cd, ptr @_Py_NoneStruct, align 8, !tbaa !42
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.q, %.thread52.i, %bb.p
  %.1.i = phi ptr [ %.0.i, %bb.p ], [ @_Py_NoneStruct, %.thread52.i ], [ @_Py_NoneStruct, %bb.q ] ; 4 uses
  %i.ce = load i32, ptr %i.s, align 4, !tbaa !183
  %i.cf = getelementptr i8, ptr %0, i64 160
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !184
  %i.ch = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.18, i32 noundef %i.ce, i32 noundef %i.cg, ptr noundef nonnull %.1.i) #14 ; 2 uses
  %.not41.i = icmp eq ptr %i.ch, null
  br i1 %.not41.i, label %bb.r, label %bb.u

bb.r:                                             ; preds = %Py_INCREF.exit.i
  %i.ci = load i32, ptr %.1.i, align 8, !tbaa !42 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ci, -1
  br i1 %.not.i.i, label %bb.s, label %Py_DECREF.exit.i

bb.s:                                             ; preds = %bb.r
  %i.cj = add nsw i32 %i.ci, -1                   ; 2 uses
  store i32 %i.cj, ptr %.1.i, align 8, !tbaa !42
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.t, label %Py_DECREF.exit.i

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1.i) #14
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.t, %bb.s, %bb.r
  tail call void @PyErr_Clear() #14
  br label %_PyPegen_set_syntax_error_metadata.exit

bb.u:                                             ; preds = %Py_INCREF.exit.i
  %i.cl = getelementptr i8, ptr %i.bk, i64 136    ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !186 ; 4 uses
  %.not.i44.i = icmp eq ptr %i.cm, null
  br i1 %.not.i44.i, label %Py_XDECREF.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.cn, -1
  br i1 %.not.i.i.i, label %bb.w, label %Py_XDECREF.exit.i

bb.w:                                             ; preds = %bb.v
  %i.co = add nsw i32 %i.cn, -1                   ; 2 uses
  store i32 %i.co, ptr %i.cm, align 8, !tbaa !42
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.x, label %Py_XDECREF.exit.i

bb.x:                                             ; preds = %bb.w
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cm) #14
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  store ptr %i.ch, ptr %i.cl, align 8, !tbaa !186
  tail call void @PyErr_SetRaisedException(ptr noundef nonnull %i.bk) #14
  br label %_PyPegen_set_syntax_error_metadata.exit

bb.y:                                             ; preds = %bb.a
  %i.cq = getelementptr i8, ptr %0, i64 60
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !72
  %i.cs = icmp eq i32 %i.cr, 256
  br i1 %i.cs, label %bb.z, label %_PyPegen_set_syntax_error_metadata.exit

bb.z:                                             ; preds = %bb.y
  %.val24 = load ptr, ptr %0, align 8, !tbaa !63  ; 2 uses
  %i.ct = getelementptr i8, ptr %.val24, i64 8
  %.val24.val = load ptr, ptr %i.ct, align 8, !tbaa !187 ; 2 uses
  %i.cu = load i8, ptr %.val24.val, align 1, !tbaa !42
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.z
  %.121.i = phi ptr [ %.val24.val, %bb.z ], [ %.121.i.be, %.loopexit.i.backedge ] ; 2 uses
  %.1.i26 = phi i8 [ %i.cu, %bb.z ], [ %.1.i26.be, %.loopexit.i.backedge ] ; 2 uses
  switch i8 %.1.i26, label %bad_single_statement.exit [
    i8 32, label %.critedge.i
    i8 12, label %.critedge.i
    i8 10, label %.critedge.i
    i8 9, label %.critedge.i
    i8 0, label %_PyPegen_set_syntax_error_metadata.exit
    i8 35, label %.preheader.i
  ]

.critedge.i:                                      ; preds = %.loopexit.i, %.loopexit.i, %.loopexit.i, %.loopexit.i
  %i.cv = getelementptr i8, ptr %.121.i, i64 1    ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !42
  br label %.loopexit.i.backedge

.loopexit.i.backedge:                             ; preds = %.preheader.i, %.preheader.i, %.critedge.i
  %.121.i.be = phi ptr [ %i.cv, %.critedge.i ], [ %.222.i, %.preheader.i ], [ %.222.i, %.preheader.i ]
  %.1.i26.be = phi i8 [ %i.cw, %.critedge.i ], [ %.2.i, %.preheader.i ], [ %.2.i, %.preheader.i ]
  br label %.loopexit.i, !llvm.loop !175

.preheader.i:                                     ; preds = %.loopexit.i, %bb.aa
  %.222.i = phi ptr [ %i.cx, %bb.aa ], [ %.121.i, %.loopexit.i ] ; 3 uses
  %.2.i = phi i8 [ %i.cy, %bb.aa ], [ %.1.i26, %.loopexit.i ] ; 3 uses
  switch i8 %.2.i, label %bb.aa [
    i8 10, label %.loopexit.i.backedge
    i8 0, label %.loopexit.i.backedge
  ]

bb.aa:                                            ; preds = %.preheader.i
  %i.cx = getelementptr i8, ptr %.222.i, i64 1    ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !42
  br label %.preheader.i, !llvm.loop !176

bad_single_statement.exit:                        ; preds = %.loopexit.i
  %i.cz = getelementptr i8, ptr %.val24, i64 64
  store i32 27, ptr %i.cz, align 8, !tbaa !84
  %i.da = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !43
  %i.db = tail call ptr (ptr, ptr, i32, ptr, ...) @_PyPegen_raise_error(ptr noundef nonnull %0, ptr noundef %i.da, i32 noundef 0, ptr noundef nonnull @.str.13) #14
  br label %_PyPegen_set_syntax_error_metadata.exit

_PyPegen_set_syntax_error_metadata.exit:          ; preds = %.loopexit.i, %Py_XDECREF.exit.i, %Py_DECREF.exit.i, %bb.k, %bb.y, %reset_parser_state_for_error_pass.exit, %bb.e, %bad_single_statement.exit, %_is_end_of_source.exit.thread
  %.0 = phi ptr [ %i.g, %_is_end_of_source.exit.thread ], [ null, %bb.e ], [ null, %reset_parser_state_for_error_pass.exit ], [ %i.db, %bad_single_statement.exit ], [ %i.a, %bb.y ], [ null, %Py_XDECREF.exit.i ], [ null, %bb.k ], [ null, %Py_DECREF.exit.i ], [ %i.a, %.loopexit.i ]
  ret ptr %.0
}

declare ptr @_PyPegen_parse(ptr noundef) local_unnamed_addr #3

declare void @PyErr_Clear() local_unnamed_addr #3

declare ptr @PyErr_Occurred() local_unnamed_addr #3

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #3

declare void @_Pypegen_set_syntax_error(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_run_parser_from_file_pointer(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #1 !guid !188 {
bb.a:
  %i.a = tail call ptr @_PyTokenizer_FromFile(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef %5) #14 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #14
  %.not49 = icmp eq ptr %i.c, null
  br i1 %.not49, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_PyPegen_raise_tokenizer_init_error(ptr noundef %2) #14
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !189
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne ptr %4, null
  %or.cond = or i1 %i.g, %i.f
  %i.h = icmp ne ptr %5, null
  %or.cond3 = or i1 %i.h, %or.cond
  br i1 %or.cond3, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef %2, ptr noundef nonnull @.str.14) #14
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr i8, ptr %i.a, i64 24
  store i32 1, ptr %i.k, align 8, !tbaa !93
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = load i32, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.m = icmp ugt i32 %i.l, -1073741825
  br i1 %i.m, label %_Py_NewRef.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = add nuw i32 %i.l, 1
  store i32 %i.n, ptr %2, align 8, !tbaa !42
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.g, %bb.h
  %i.o = getelementptr i8, ptr %i.a, i64 2336
  store ptr %2, ptr %i.o, align 8, !tbaa !95
  %i.p = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.15) #14 ; 2 uses
  %i.q = getelementptr i8, ptr %i.a, i64 2344
  store ptr %i.p, ptr %i.q, align 8, !tbaa !96
  %i.r = icmp eq ptr %i.p, null
  br i1 %i.r, label %Py_XDECREF.exit, label %bb.i

bb.i:                                             ; preds = %_Py_NewRef.exit
  %.not.i = icmp eq ptr %6, null
  br i1 %.not.i, label %compute_parser_flags.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load i32, ptr %6, align 4, !tbaa !98     ; 4 uses
  %i.t = lshr i32 %i.s, 8
  %spec.select.i = and i32 %i.t, 2
  %i.u = lshr i32 %i.s, 7
  %i.v = and i32 %i.u, 16
  %.1.i = or disjoint i32 %spec.select.i, %i.v
  %i.w = lshr i32 %i.s, 17
  %i.x = and i32 %i.w, 32
  %.2.i = or disjoint i32 %.1.i, %i.x
  %i.y = lshr i32 %i.s, 6
  %i.z = and i32 %i.y, 320
  %.4.i = or disjoint i32 %.2.i, %i.z
  br label %compute_parser_flags.exit

compute_parser_flags.exit:                        ; preds = %bb.i, %bb.j
  %.012.i = phi i32 [ %.4.i, %bb.j ], [ 0, %bb.i ]
  %i.aa = tail call ptr @_PyPegen_Parser_New(ptr noundef nonnull %i.a, i32 noundef %1, i32 noundef %.012.i, i32 noundef 15, ptr noundef %7, ptr poison, ptr noundef %9) ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %Py_XDECREF.exit, label %bb.k

bb.k:                                             ; preds = %compute_parser_flags.exit
  %i.ac = tail call ptr @_PyPegen_run_parser(ptr noundef nonnull %i.aa) ; 4 uses
  tail call void @_PyPegen_Parser_Free(ptr noundef nonnull %i.aa)
  %i.ad = getelementptr i8, ptr %i.a, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !93
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %Py_XDECREF.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr i8, ptr %i.a, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !94 ; 2 uses
  %i.ah = icmp ne ptr %i.ag, null
  %i.ai = icmp ne ptr %i.ac, null
  %or.cond5 = select i1 %i.ah, i1 %i.ai, i1 false
  %i.aj = icmp ne ptr %8, null
  %or.cond7 = and i1 %i.aj, %or.cond5
  br i1 %or.cond7, label %bb.m, label %Py_XDECREF.exit

bb.m:                                             ; preds = %bb.l
  %i.ak = tail call ptr @PyUnicode_FromString(ptr noundef nonnull %i.ag) #14 ; 2 uses
  store ptr %i.ak, ptr %8, align 8, !tbaa !43
  %i.al = tail call i32 @_PyArena_AddPyObject(ptr noundef %9, ptr noundef %i.ak) #14
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.n, label %Py_XDECREF.exit

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %8, align 8, !tbaa !42    ; 2 uses
  %.not.i.i = icmp sgt i32 %i.an, -1
  br i1 %.not.i.i, label %bb.o, label %Py_XDECREF.exit

bb.o:                                             ; preds = %bb.n
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %8, align 8, !tbaa !42
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.p, label %Py_XDECREF.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %8) #14
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.p, %bb.o, %bb.n, %bb.k, %bb.l, %bb.m, %compute_parser_flags.exit, %_Py_NewRef.exit
  %.043 = phi ptr [ null, %_Py_NewRef.exit ], [ null, %compute_parser_flags.exit ], [ %i.ac, %bb.k ], [ %i.ac, %bb.m ], [ %i.ac, %bb.l ], [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.p ]
  tail call void @_PyTokenizer_Free(ptr noundef nonnull %i.a) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %Py_XDECREF.exit, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %.043, %Py_XDECREF.exit ], [ null, %bb.b ]
  ret ptr %.0
}

declare ptr @_PyTokenizer_FromFile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_PyPegen_raise_tokenizer_init_error(ptr noundef) local_unnamed_addr #3

declare i32 @PyUnicode_CompareWithASCIIString(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #3

declare void @_PyTokenizer_Free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_run_parser_from_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 !guid !190 {
bb.a:
  %i.a = icmp eq i32 %1, 257
  %i.b = zext i1 %i.a to i32                      ; 2 uses
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %3, align 4, !tbaa !98
  %i.d = and i32 %i.c, 2048
  %.not32 = icmp eq i32 %i.d, 0
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @_PyTokenizer_FromUTF8(ptr noundef %0, i32 noundef %i.b, i32 noundef 0) #14
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call ptr @_PyTokenizer_FromString(ptr noundef %0, i32 noundef %i.b, i32 noundef 0) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.028 = phi ptr [ %i.e, %bb.c ], [ %i.f, %bb.d ] ; 5 uses
  %i.g = icmp eq ptr %.028, null
  br i1 %i.g, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.h = tail call ptr @PyErr_Occurred() #14
  %.not34 = icmp eq ptr %i.h, null
  br i1 %.not34, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_PyPegen_raise_tokenizer_init_error(ptr noundef %2) #14
  br label %bb.p

bb.h:                                             ; preds = %bb.e
  %i.i = load i32, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.j = icmp ugt i32 %i.i, -1073741825
  br i1 %i.j, label %_Py_NewRef.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = add nuw i32 %i.i, 1
  store i32 %i.k, ptr %2, align 8, !tbaa !42
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.h, %bb.i
  %i.l = getelementptr i8, ptr %.028, i64 2336
  store ptr %2, ptr %i.l, align 8, !tbaa !95
  %.not.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i, label %_Py_XNewRef.exit, label %bb.j

bb.j:                                             ; preds = %_Py_NewRef.exit
  %i.m = load i32, ptr %5, align 8, !tbaa !42     ; 2 uses
  %i.n = icmp ugt i32 %i.m, -1073741825
  br i1 %i.n, label %_Py_XNewRef.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = add nuw i32 %i.m, 1
  store i32 %i.o, ptr %5, align 8, !tbaa !42
  br label %_Py_XNewRef.exit

_Py_XNewRef.exit:                                 ; preds = %_Py_NewRef.exit, %bb.j, %bb.k
  %i.p = getelementptr i8, ptr %.028, i64 2344
  store ptr %5, ptr %i.p, align 8, !tbaa !96
  br i1 %.not, label %compute_parser_flags.exit.thread, label %bb.l

bb.l:                                             ; preds = %_Py_XNewRef.exit
  %i.q = load i32, ptr %3, align 4, !tbaa !98     ; 5 uses
  %i.r = lshr i32 %i.q, 8
  %spec.select.i = and i32 %i.r, 2
  %i.s = lshr i32 %i.q, 7
  %i.t = and i32 %i.s, 16
  %.1.i = or disjoint i32 %spec.select.i, %i.t
  %i.u = lshr i32 %i.q, 17
  %i.v = and i32 %i.u, 32
  %.2.i = or disjoint i32 %.1.i, %i.v
  %i.w = lshr i32 %i.q, 6
  %i.x = and i32 %i.w, 320
  %.4.i = or disjoint i32 %.2.i, %i.x             ; 2 uses
  %i.y = and i32 %i.q, 1024
  %.not33 = icmp eq i32 %i.y, 0
  br i1 %.not33, label %compute_parser_flags.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr i8, ptr %3, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !191
  br label %compute_parser_flags.exit.thread

compute_parser_flags.exit.thread:                 ; preds = %_Py_XNewRef.exit, %bb.l, %bb.m
  %.012.i36 = phi i32 [ %.4.i, %bb.m ], [ %.4.i, %bb.l ], [ 0, %_Py_XNewRef.exit ]
  %i.ab = phi i32 [ %i.aa, %bb.m ], [ 15, %bb.l ], [ 15, %_Py_XNewRef.exit ]
  %i.ac = tail call ptr @_PyPegen_Parser_New(ptr noundef nonnull %.028, i32 noundef %1, i32 noundef %.012.i36, i32 noundef %i.ab, ptr noundef null, ptr poison, ptr noundef %4) ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.o, label %bb.n

bb.n:                                             ; preds = %compute_parser_flags.exit.thread
  %i.ae = tail call ptr @_PyPegen_run_parser(ptr noundef nonnull %i.ac)
  tail call void @_PyPegen_Parser_Free(ptr noundef nonnull %i.ac)
  br label %bb.o

bb.o:                                             ; preds = %compute_parser_flags.exit.thread, %bb.n
  %.0 = phi ptr [ null, %compute_parser_flags.exit.thread ], [ %i.ae, %bb.n ]
  tail call void @_PyTokenizer_Free(ptr noundef nonnull %.028) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %bb.g, %bb.o
  %.029 = phi ptr [ %.0, %bb.o ], [ null, %bb.g ], [ null, %bb.f ]
  ret ptr %.029
}

declare ptr @_PyTokenizer_FromUTF8(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @_PyTokenizer_FromString(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #3

declare ptr @PyMem_Realloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @_Pypegen_raise_decode_error(ptr noundef) local_unnamed_addr #3

declare i32 @_Pypegen_tokenizer_error(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #8

declare ptr @_PyPegen_raise_error_known_location(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #8

declare ptr @PyImport_ImportModuleAttrString(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #9

declare ptr @_PyAST_Name(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @parsenumber_raw(ptr noundef nonnull %0) unnamed_addr #1 !guid !192 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = tail call ptr @__errno_location() #16    ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !10
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  %i.d = getelementptr i8, ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -1       ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !91
  %i.f = load i8, ptr %i.e, align 1, !tbaa !42
  %i.g = load i8, ptr %0, align 1, !tbaa !42
  %i.h = icmp eq i8 %i.g, 48
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = call i64 @PyOS_strtoul(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 0) #14 ; 3 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.b, align 4, !tbaa !10
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = call ptr @PyLong_FromString(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #14
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.n = call i64 @PyOS_strtol(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 0) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.0 = phi i64 [ %i.i, %bb.c ], [ %i.i, %bb.b ], [ %i.n, %bb.e ]
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.p = load i8, ptr %i.o, align 1, !tbaa !42
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.b, align 4, !tbaa !10
  %.not19 = icmp eq i32 %i.r, 0
  br i1 %.not19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call ptr @PyLong_FromString(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #14
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.t = call ptr @PyLong_FromLong(i64 noundef %.0) #14
  br label %bb.q

bb.j:                                             ; preds = %bb.f
  switch i8 %i.f, label %bb.n [
    i8 106, label %bb.k
    i8 74, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.u = call double @PyOS_string_to_double(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef null) #14 ; 2 uses
  %i.v = fcmp oeq double %i.u, -1.000000e+00
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = call ptr @PyErr_Occurred() #14
  %.not18 = icmp eq ptr %i.w, null
  br i1 %.not18, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.x = call ptr @PyComplex_FromCComplex(double 0.000000e+00, double %i.u) #14
  br label %bb.q

bb.n:                                             ; preds = %bb.j
  %i.y = call double @PyOS_string_to_double(ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #14 ; 2 uses
  %i.z = fcmp oeq double %i.y, -1.000000e+00
  br i1 %i.z, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aa = call ptr @PyErr_Occurred() #14
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ab = call ptr @PyFloat_FromDouble(double noundef %i.y) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.l, %bb.p, %bb.m, %bb.i, %bb.h, %bb.d
  %.015 = phi ptr [ %i.m, %bb.d ], [ %i.s, %bb.h ], [ %i.t, %bb.i ], [ %i.ab, %bb.p ], [ %i.x, %bb.m ], [ null, %bb.l ], [ null, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %.015
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

declare i64 @PyOS_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @PyLong_FromString(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @PyOS_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #3

declare double @PyOS_string_to_double(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyComplex_FromCComplex(double, double) local_unnamed_addr #3

declare ptr @PyFloat_FromDouble(double noundef) local_unnamed_addr #3

declare void @PyErr_SetRaisedException(ptr noundef) local_unnamed_addr #3

declare ptr @PyUnicode_Decode(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #3

declare i32 @PyType_IsSubtype(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{i64 1017392044435687037}
!12 = !{i64 354556840521718863}
!13 = !{i64 -1783404442259464281}
!14 = !{i64 5288070391403304161}
!15 = !{i64 5664338218060577491}
!16 = !{i64 -5970068725075043156}
!17 = !{i64 -6161423005141360079}
!18 = !{i64 3581158456100245560}
!19 = !{i64 6448974857623079905}
!20 = !{i64 2512686640197155340}
!21 = !{i64 -4366644333448313021}
!22 = !{i64 -467692100497472767}
!23 = !{i64 -8678533847418123351}
!24 = !{i64 -7048485907572958624}
!25 = !{i64 -2816680760065732104}
!26 = !{i64 2653589855143267784}
!27 = !{i64 1902620523396423224}
!28 = !{i64 4361505375910758237}
!29 = !{i64 -4847208807890589168}
!30 = !{!"any pointer", !8, i64 0}
!31 = !{!"p1 _ZTS9tok_state", !30, i64 0}
!32 = !{!"any p2 pointer", !30, i64 0}
!33 = !{!"p1 _ZTS6_arena", !30, i64 0}
!34 = !{!"p2 omnipotent char", !32, i64 0}
!35 = !{!"p1 int", !30, i64 0}
!36 = !{!"p1 _ZTS7_object", !30, i64 0}
!37 = !{!"long", !8, i64 0}
!38 = !{!"", !30, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!40 = !{!"", !31, i64 0, !32, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !33, i64 32, !32, i64 40, !34, i64 48, !9, i64 56, !9, i64 60, !35, i64 64, !9, i64 72, !36, i64 80, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !38, i64 112, !30, i64 136, !9, i64 144, !9, i64 148, !9, i64 152, !39, i64 156}
!41 = !{!40, !35, i64 64}
!42 = !{!8, !8, i64 0}
!43 = !{!36, !36, i64 0}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"p1 _ZTS11_typeobject", !30, i64 0}
!46 = !{!"_object", !8, i64 0, !45, i64 8}
!47 = !{!"_PyUnicodeObject_state", !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0}
!48 = !{!"", !46, i64 0, !37, i64 16, !37, i64 24, !47, i64 32}
!49 = !{!48, !37, i64 16}
!50 = !{!40, !33, i64 32}
!51 = !{!"p1 _ZTS5_memo", !30, i64 0}
!52 = !{!"_memo", !9, i64 0, !30, i64 8, !9, i64 16, !51, i64 24}
!53 = !{!52, !9, i64 0}
!54 = !{!52, !30, i64 8}
!55 = !{!40, !9, i64 16}
!56 = !{!52, !9, i64 16}
!57 = !{!40, !32, i64 8}
!58 = !{!30, !30, i64 0}
!59 = !{!"", !9, i64 0, !36, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !51, i64 40, !36, i64 48}
!60 = !{!59, !51, i64 40}
!61 = !{!52, !51, i64 24}
!62 = !{!51, !51, i64 0}
!63 = !{!40, !31, i64 0}
!64 = !{!"p1 omnipotent char", !30, i64 0}
!65 = !{!"p1 _ZTS8_IO_FILE", !30, i64 0}
!66 = !{!"tok_state", !64, i64 0, !64, i64 8, !64, i64 16, !9, i64 24, !64, i64 32, !64, i64 40, !64, i64 48, !64, i64 56, !9, i64 64, !65, i64 72, !9, i64 80, !9, i64 84, !8, i64 88, !9, i64 488, !9, i64 492, !64, i64 496, !64, i64 504, !9, i64 512, !9, i64 516, !9, i64 520, !9, i64 524, !9, i64 528, !8, i64 532, !8, i64 732, !8, i64 1532, !36, i64 2336, !36, i64 2344, !8, i64 2352, !9, i64 2752, !9, i64 2756, !64, i64 2760, !9, i64 2768, !64, i64 2776, !64, i64 2784, !36, i64 2792, !36, i64 2800, !36, i64 2808, !64, i64 2816, !64, i64 2824, !64, i64 2832, !9, i64 2840, !9, i64 2844, !30, i64 2848, !9, i64 2856, !8, i64 2864, !9, i64 18464, !9, i64 18468, !9, i64 18472, !9, i64 18476}
!67 = !{!38, !37, i64 16}
!68 = !{!38, !37, i64 8}
!69 = !{!38, !30, i64 0}
!70 = !{!"", !9, i64 0, !64, i64 8}
!71 = !{!70, !64, i64 8}
!72 = !{!40, !9, i64 60}
!73 = !{!40, !9, i64 72}
!74 = !{!40, !9, i64 100}
!75 = !{!40, !9, i64 20}
!76 = !{!40, !9, i64 24}
!77 = !{!40, !9, i64 56}
!78 = !{!40, !32, i64 40}
!79 = !{!59, !9, i64 0}
!80 = !{!59, !36, i64 8}
!81 = !{!59, !9, i64 24}
!82 = !{!59, !9, i64 28}
!83 = !{!59, !9, i64 32}
!84 = !{!66, !9, i64 64}
!85 = !{!40, !9, i64 96}
!86 = !{!59, !9, i64 20}
!87 = !{!40, !36, i64 80}
!88 = !{!46, !45, i64 8}
!89 = !{!"p1 _ZTS3_is", !30, i64 0}
!90 = !{!40, !34, i64 48}
!91 = !{!64, !64, i64 0}
!92 = !{!40, !9, i64 104}
!93 = !{!66, !9, i64 24}
!94 = !{!66, !64, i64 32}
!95 = !{!66, !36, i64 2336}
!96 = !{!66, !36, i64 2344}
!97 = !{!"", !9, i64 0, !9, i64 4}
!98 = !{!97, !9, i64 0}
!99 = !{i64 -466763544556713352}
!100 = distinct !{!100, !44}
!101 = !{i64 -3644802003618423991}
!102 = !{i64 -2381067655653375712}
!103 = !{i64 -8832962050807529297}
!104 = !{i64 -6300334534363845158}
!105 = distinct !{!105, !44}
!106 = !{i64 281395937625718949}
!107 = distinct !{!107, !44}
!108 = distinct !{!108, !44}
!109 = !{i64 2390965197726934253}
!110 = !{!"token", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !64, i64 24, !64, i64 32, !36, i64 40}
!111 = !{!110, !9, i64 16}
!112 = !{!110, !9, i64 8}
!113 = !{!110, !64, i64 24}
!114 = !{!66, !9, i64 512}
!115 = !{!70, !9, i64 0}
!116 = !{!66, !9, i64 84}
!117 = !{!66, !9, i64 492}
!118 = !{!"", !64, i64 0, !9, i64 8}
!119 = !{!118, !9, i64 8}
!120 = !{!118, !64, i64 0}
!121 = !{!110, !64, i64 32}
!122 = !{!59, !36, i64 48}
!123 = !{!110, !36, i64 40}
!124 = !{!40, !9, i64 88}
!125 = !{!40, !9, i64 92}
!126 = !{!110, !9, i64 12}
!127 = distinct !{!127, !44}
!128 = !{i64 2885502875513251161}
!129 = !{i64 4283178370776125226}
!130 = !{i64 -2370639237541743755}
!131 = !{i64 776031973683010753}
!132 = !{i64 -5883937197478967401}
!133 = !{i64 6373728438058143829}
!134 = !{i64 7367675214311999671}
!135 = !{i64 -672045018418513601}
!136 = !{i64 -7078882265087906891}
!137 = !{i64 3832710804326157030}
!138 = !{i64 895017172765236296}
!139 = !{i64 -622814329168330143}
!140 = !{i64 7297382810946906987}
!141 = !{i64 -1287775675431472306}
!142 = !{!"PyVarObject", !46, i64 0, !37, i64 16}
!143 = !{!"p1 _ZTS11PyMethodDef", !30, i64 0}
!144 = !{!"p1 _ZTS11PyMemberDef", !30, i64 0}
!145 = !{!"p1 _ZTS11PyGetSetDef", !30, i64 0}
!146 = !{!"short", !8, i64 0}
!147 = !{!"_typeobject", !142, i64 0, !64, i64 24, !37, i64 32, !37, i64 40, !30, i64 48, !37, i64 56, !30, i64 64, !30, i64 72, !30, i64 80, !30, i64 88, !30, i64 96, !30, i64 104, !30, i64 112, !30, i64 120, !30, i64 128, !30, i64 136, !30, i64 144, !30, i64 152, !30, i64 160, !37, i64 168, !64, i64 176, !30, i64 184, !30, i64 192, !30, i64 200, !37, i64 208, !30, i64 216, !30, i64 224, !143, i64 232, !144, i64 240, !145, i64 248, !45, i64 256, !36, i64 264, !30, i64 272, !30, i64 280, !37, i64 288, !30, i64 296, !30, i64 304, !30, i64 312, !30, i64 320, !30, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !30, i64 360, !36, i64 368, !30, i64 376, !9, i64 384, !30, i64 392, !30, i64 400, !8, i64 408, !146, i64 410}
!148 = !{!147, !37, i64 168}
!149 = !{!89, !89, i64 0}
!150 = !{i64 -6663820378134859216}
!151 = distinct !{!151, !44}
!152 = !{i64 974120611113364823}
!153 = !{!37, !37, i64 0}
!154 = distinct !{!154, !44}
!155 = !{i64 -7216215798209524568}
!156 = !{!"p1 _ZTS3_ts", !30, i64 0}
!157 = !{!156, !156, i64 0}
!158 = !{!"", !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0}
!159 = !{!"p1 _ZTS19_PyInterpreterFrame", !30, i64 0}
!160 = !{!"p1 _ZTS14_err_stackitem", !30, i64 0}
!161 = !{!"p1 _ZTS12_stack_chunk", !30, i64 0}
!162 = !{!"p2 _ZTS7_object", !32, i64 0}
!163 = !{!"_err_stackitem", !36, i64 0, !160, i64 8}
!164 = !{!"p1 _ZTS11_PyExitData", !30, i64 0}
!165 = !{!"", !9, i64 0, !8, i64 4}
!166 = !{!"_ts", !156, i64 0, !156, i64 8, !89, i64 16, !37, i64 24, !158, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !159, i64 72, !159, i64 80, !159, i64 88, !30, i64 96, !30, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !160, i64 136, !36, i64 144, !9, i64 152, !36, i64 160, !37, i64 168, !37, i64 176, !36, i64 184, !37, i64 192, !9, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !37, i64 232, !37, i64 240, !161, i64 248, !162, i64 256, !162, i64 264, !163, i64 272, !36, i64 288, !164, i64 296, !37, i64 304, !36, i64 312, !36, i64 320, !165, i64 328}
!167 = !{!166, !36, i64 128}
!168 = !{i64 7070041071647951612}
!169 = !{!66, !9, i64 2840}
!170 = distinct !{!170, !44}
!171 = distinct !{!171, !44}
!172 = !{i64 7852282500829356107}
!173 = distinct !{!173, !44}
!174 = distinct !{!174, !178}
!175 = distinct !{!175, !44}
!176 = distinct !{!176, !44}
!177 = !{i64 -291205067691115691}
!178 = !{!"llvm.loop.unroll.disable"}
!179 = !{!40, !9, i64 148}
!180 = !{!66, !9, i64 2844}
!181 = !{!66, !64, i64 2824}
!182 = !{!66, !64, i64 2760}
!183 = !{!40, !9, i64 156}
!184 = !{!40, !9, i64 160}
!185 = !{!"", !46, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !8, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136}
!186 = !{!185, !36, i64 136}
!187 = !{!66, !64, i64 8}
!188 = !{i64 -9137027190150413152}
!189 = !{!66, !65, i64 72}
!190 = !{i64 6310428685954525947}
!191 = !{!97, !9, i64 4}
!192 = !{i64 3344939239457265948}
end_hunk_0
